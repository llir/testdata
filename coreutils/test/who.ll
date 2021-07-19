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
@need_boottime = internal unnamed_addr global i1 false, align 1, !dbg !291
@need_deadprocs = internal unnamed_addr global i1 false, align 1, !dbg !292
@need_login = internal unnamed_addr global i1 false, align 1, !dbg !293
@need_initspawn = internal unnamed_addr global i1 false, align 1, !dbg !294
@need_runlevel = internal unnamed_addr global i1 false, align 1, !dbg !295
@need_clockchange = internal unnamed_addr global i1 false, align 1, !dbg !296
@need_users = internal unnamed_addr global i1 false, align 1, !dbg !297
@include_mesg = internal unnamed_addr global i1 false, align 1, !dbg !298
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !299
@.str.19 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@do_lookup = internal unnamed_addr global i1 false, align 1, !dbg !300
@short_output = internal unnamed_addr global i1 false, align 1, !dbg !301
@short_list = internal unnamed_addr global i1 false, align 1, !dbg !302
@my_line_only = internal unnamed_addr global i1 false, align 1, !dbg !303
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !304
@include_exit = internal unnamed_addr global i1 false, align 1, !dbg !305
@.str.22 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !67
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !71
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
@idle_string.now = internal global i64 -9223372036854775808, align 8, !dbg !217
@.str.80 = private unnamed_addr constant [30 x i8] c"seconds_idle / (60 * 60) < 24\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"src/who.c\00", align 1
@__PRETTY_FUNCTION__.idle_string = private unnamed_addr constant [40 x i8] c"const char *idle_string(time_t, time_t)\00", align 1
@idle_string.idle_hhmm = internal global [6 x i8] zeroinitializer, align 1, !dbg !228
@.str.82 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" old \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"  .  \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  ?\00", align 1
@print_user.hostlen = internal unnamed_addr global i64 0, align 8, !dbg !213
@print_user.hoststr = internal unnamed_addr global i8* null, align 8, !dbg !106
@.str.77 = private unnamed_addr constant [8 x i8] c"(%s:%s)\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !233
@print_runlevel.runlevline = internal unnamed_addr global i8* null, align 8, !dbg !260
@.str.84 = private unnamed_addr constant [10 x i8] c"run-level\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@print_runlevel.comment = internal unnamed_addr global i8* null, align 8, !dbg !270
@.str.86 = private unnamed_addr constant [6 x i8] c"last=\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"system boot\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"clock change\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@print_deadprocs.exitstr = internal unnamed_addr global i8* null, align 8, !dbg !272
@.str.92 = private unnamed_addr constant [6 x i8] c"term=\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"exit=\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%s%d %s%d\00", align 1
@print_line.mesg = internal global [3 x i8] c" x\00", align 1, !dbg !74
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i64 0, i64 0), align 8, !dbg !306
@.str.95 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !312
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !317
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !354
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !359
@.str.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !361
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !367
@.str.114 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.115 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.116 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.120, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.123, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.125, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.126, i32 0, i32 0), i8* null], align 16, !dbg !373
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !400
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !406
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !416
@.str.11.127 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.128 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.129 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.130 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.131 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.132 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.133 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !420
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !427
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !418
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !429
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !435
@.str.1.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.192 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !898 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !902, metadata !DIExpression()), !dbg !903
  %3 = icmp eq i32 %0, 0, !dbg !904
  br i1 %3, label %9, label %4, !dbg !906

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !907, !tbaa !909
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !907
  %7 = load i8*, i8** @program_name, align 8, !dbg !907, !tbaa !909
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !907
  br label %75, !dbg !907

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !913
  %11 = load i8*, i8** @program_name, align 8, !dbg !913, !tbaa !909
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !913
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !915
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !909
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !915
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !916
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !916, !tbaa !909
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !916
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !917
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !917, !tbaa !909
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !917
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !918
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !909
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !918
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !919
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !919, !tbaa !909
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !919
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.7, i64 0, i64 0), i32 5) #28, !dbg !920
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !920, !tbaa !909
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !920
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #28, !dbg !921
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !921, !tbaa !909
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !921
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #28, !dbg !922
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !922, !tbaa !909
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !922
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.10, i64 0, i64 0), i32 5) #28, !dbg !923
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #28, !dbg !923
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), metadata !924, metadata !DIExpression()) #28, !dbg !941
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !943
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #28, !dbg !943
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !930, metadata !DIExpression()) #28, !dbg !944
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !944
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), metadata !937, metadata !DIExpression()) #28, !dbg !941
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !938, metadata !DIExpression()) #28, !dbg !941
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !945
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !938, metadata !DIExpression()) #28, !dbg !941
  br label %41, !dbg !946

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !938, metadata !DIExpression()) #28, !dbg !941
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %42) #29, !dbg !947
  %45 = icmp eq i32 %44, 0, !dbg !947
  br i1 %45, label %51, label %46, !dbg !946

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !948
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !938, metadata !DIExpression()) #28, !dbg !941
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !949
  %49 = load i8*, i8** %48, align 8, !dbg !949, !tbaa !950
  %50 = icmp eq i8* %49, null, !dbg !952
  br i1 %50, label %51, label %41, !dbg !953, !llvm.loop !954

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %43, %41 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !956
  %54 = load i8*, i8** %53, align 8, !dbg !956, !tbaa !958
  %55 = icmp eq i8* %54, null, !dbg !959
  %56 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %54, !dbg !960
  call void @llvm.dbg.value(metadata i8* %56, metadata !937, metadata !DIExpression()) #28, !dbg !941
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #28, !dbg !961
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #28, !dbg !961
  %59 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !962
  call void @llvm.dbg.value(metadata i8* %59, metadata !940, metadata !DIExpression()) #28, !dbg !941
  %60 = icmp eq i8* %59, null, !dbg !963
  br i1 %60, label %68, label %61, !dbg !965

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #29, !dbg !966
  %63 = icmp eq i32 %62, 0, !dbg !966
  br i1 %63, label %68, label %64, !dbg !967

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i32 5) #28, !dbg !968
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !968, !tbaa !909
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #28, !dbg !968
  br label %68, !dbg !970

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 5) #28, !dbg !971
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #28, !dbg !971
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #28, !dbg !972
  %72 = icmp eq i8* %56, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !972
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !972
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #28, !dbg !972
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #28, !dbg !973
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #30, !dbg !974
  unreachable, !dbg !974
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !975 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !979 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1029 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1033 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1038, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i8** %1, metadata !1039, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i8 1, metadata !1041, metadata !DIExpression()), !dbg !1042
  %3 = load i8*, i8** %1, align 8, !dbg !1043, !tbaa !909
  tail call void @set_program_name(i8* %3) #28, !dbg !1044
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1045
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #28, !dbg !1046
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #28, !dbg !1047
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !1048
  br label %8, !dbg !1049

8:                                                ; preds = %29, %2
  %9 = phi i8 [ 1, %2 ], [ %31, %29 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %9, metadata !1041, metadata !DIExpression()), !dbg !1042
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #28, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %10, metadata !1040, metadata !DIExpression()), !dbg !1042
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
  ], !dbg !1049

11:                                               ; preds = %8
  store i1 true, i1* @need_boottime, align 1, !dbg !1052
  store i1 true, i1* @need_deadprocs, align 1, !dbg !1055
  store i1 true, i1* @need_login, align 1, !dbg !1056
  store i1 true, i1* @need_initspawn, align 1, !dbg !1057
  store i1 true, i1* @need_runlevel, align 1, !dbg !1058
  store i1 true, i1* @need_clockchange, align 1, !dbg !1059
  store i1 true, i1* @need_users, align 1, !dbg !1060
  store i1 true, i1* @include_mesg, align 1, !dbg !1061
  store i1 true, i1* @include_idle, align 1, !dbg !1062
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1063

12:                                               ; preds = %8
  store i1 true, i1* @need_deadprocs, align 1, !dbg !1064
  store i1 true, i1* @include_idle, align 1, !dbg !1065
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1066

13:                                               ; preds = %8
  br label %29, !dbg !1067

14:                                               ; preds = %8
  store i1 true, i1* @need_login, align 1, !dbg !1068
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1069

15:                                               ; preds = %8
  br label %29, !dbg !1070

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1071

17:                                               ; preds = %8
  br label %29, !dbg !1072

18:                                               ; preds = %8
  store i1 true, i1* @need_runlevel, align 1, !dbg !1073
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1074

19:                                               ; preds = %8
  br label %29, !dbg !1075

20:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1076

21:                                               ; preds = %8, %8
  br label %29, !dbg !1077

22:                                               ; preds = %8
  store i1 true, i1* @need_users, align 1, !dbg !1078
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %29, !dbg !1079

23:                                               ; preds = %8
  br label %29, !dbg !1080

24:                                               ; preds = %8
  tail call void @usage(i32 0) #31, !dbg !1081
  unreachable, !dbg !1081

25:                                               ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !909
  %27 = load i8*, i8** @Version, align 8, !dbg !1082, !tbaa !909
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #28, !dbg !1082
  tail call void @exit(i32 0) #30, !dbg !1082
  unreachable, !dbg !1082

28:                                               ; preds = %8
  tail call void @usage(i32 1) #31, !dbg !1083
  unreachable, !dbg !1083

29:                                               ; preds = %8, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %30 = phi i1* [ @do_lookup, %23 ], [ @include_idle, %22 ], [ @include_mesg, %21 ], [ @need_clockchange, %20 ], [ @short_output, %19 ], [ @include_idle, %18 ], [ @short_list, %17 ], [ @need_initspawn, %16 ], [ @my_line_only, %15 ], [ @include_idle, %14 ], [ @include_heading, %13 ], [ @include_exit, %12 ], [ @include_exit, %11 ], [ @need_boottime, %8 ]
  %31 = phi i8 [ %9, %23 ], [ 0, %22 ], [ %9, %21 ], [ 0, %20 ], [ %9, %19 ], [ 0, %18 ], [ %9, %17 ], [ 0, %16 ], [ %9, %15 ], [ 0, %14 ], [ %9, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %8 ], !dbg !1042
  store i1 true, i1* %30, align 1, !dbg !1084
  call void @llvm.dbg.value(metadata i8 %31, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %8, !dbg !1049, !llvm.loop !1085

32:                                               ; preds = %8
  %33 = and i8 %9, 1, !dbg !1087
  %34 = icmp eq i8 %33, 0, !dbg !1087
  br i1 %34, label %36, label %35, !dbg !1089

35:                                               ; preds = %32
  store i1 true, i1* @need_users, align 1, !dbg !1090
  store i1 true, i1* @short_output, align 1, !dbg !1092
  br label %36, !dbg !1093

36:                                               ; preds = %35, %32
  %37 = load i1, i1* @include_exit, align 1, !dbg !1094
  br i1 %37, label %38, label %39, !dbg !1096

38:                                               ; preds = %36
  store i1 false, i1* @short_output, align 1, !dbg !1097
  br label %39, !dbg !1099

39:                                               ; preds = %38, %36
  %40 = tail call zeroext i1 @hard_locale(i32 2) #28, !dbg !1100
  %41 = select i1 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), !dbg !1102
  %42 = select i1 %40, i32 16, i32 12, !dbg !1102
  store i8* %41, i8** @time_format, align 8, !dbg !1103, !tbaa !909
  store i32 %42, i32* @time_format_width, align 4, !dbg !1103, !tbaa !1104
  %43 = load i32, i32* @optind, align 4, !dbg !1106, !tbaa !1104
  %44 = sub nsw i32 %0, %43, !dbg !1107
  switch i32 %44, label %51 [
    i32 2, label %45
    i32 -1, label %46
    i32 0, label %46
    i32 1, label %47
  ], !dbg !1108

45:                                               ; preds = %39
  store i1 true, i1* @my_line_only, align 1, !dbg !1109
  br label %46, !dbg !1111

46:                                               ; preds = %39, %39, %45
  tail call fastcc void @who(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 1), !dbg !1112
  br label %59, !dbg !1113

47:                                               ; preds = %39
  %48 = sext i32 %43 to i64, !dbg !1114
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !1114
  %50 = load i8*, i8** %49, align 8, !dbg !1114, !tbaa !909
  tail call fastcc void @who(i8* %50, i32 0), !dbg !1115
  br label %59, !dbg !1116

51:                                               ; preds = %39
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #28, !dbg !1117
  %53 = load i32, i32* @optind, align 4, !dbg !1118, !tbaa !1104
  %54 = add nsw i32 %53, 2, !dbg !1119
  %55 = sext i32 %54 to i64, !dbg !1120
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1120
  %57 = load i8*, i8** %56, align 8, !dbg !1120, !tbaa !909
  %58 = tail call i8* @quote(i8* %57) #28, !dbg !1121
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %58) #28, !dbg !1122
  tail call void @usage(i32 1) #31, !dbg !1123
  unreachable, !dbg !1123

59:                                               ; preds = %47, %46
  ret i32 0, !dbg !1124
}

; Function Attrs: nounwind
declare !dbg !1125 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1128 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1131 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1138 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @who(i8* %0, i32 %1) unnamed_addr #8 !dbg !1144 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca [7 x i8], align 1
  %12 = alloca [38 x i8], align 16
  %13 = alloca [12 x i8], align 1
  %14 = alloca [257 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1148, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %1, metadata !1149, metadata !DIExpression()), !dbg !1153
  %17 = bitcast i64* %15 to i8*, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #28, !dbg !1154
  %18 = bitcast %struct.utmpx** %16 to i8*, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #28, !dbg !1155
  call void @llvm.dbg.value(metadata i64* %15, metadata !1150, metadata !DIExpression(DW_OP_deref)), !dbg !1153
  call void @llvm.dbg.value(metadata %struct.utmpx** %16, metadata !1151, metadata !DIExpression(DW_OP_deref)), !dbg !1153
  %19 = call i32 @read_utmp(i8* %0, i64* nonnull %15, %struct.utmpx** nonnull %16, i32 %1) #28, !dbg !1156
  %20 = icmp eq i32 %19, 0, !dbg !1158
  br i1 %20, label %25, label %21, !dbg !1159

21:                                               ; preds = %2
  %22 = tail call i32* @__errno_location() #32, !dbg !1160
  %23 = load i32, i32* %22, align 4, !dbg !1160, !tbaa !1104
  %24 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #28, !dbg !1160
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* %24) #28, !dbg !1160
  unreachable, !dbg !1160

25:                                               ; preds = %2
  %26 = load i1, i1* @short_list, align 1, !dbg !1161
  %27 = load i64, i64* %15, align 8, !dbg !1163, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %27, metadata !1150, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i64 %27, metadata !1150, metadata !DIExpression()), !dbg !1153
  br i1 %26, label %28, label %58, !dbg !1166

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i64 %27, metadata !1167, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1172, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, metadata !1173, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), metadata !1174, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %27, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1179
  %29 = icmp eq i64 %27, 0, !dbg !1181
  br i1 %29, label %54, label %30, !dbg !1181

30:                                               ; preds = %28
  %31 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !dbg !1182, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.utmpx* %31, metadata !1172, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.utmpx* %31, metadata !1151, metadata !DIExpression()), !dbg !1153
  br label %32, !dbg !1181

32:                                               ; preds = %30, %49
  %33 = phi i64 [ %37, %49 ], [ %27, %30 ]
  %34 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %30 ]
  %35 = phi i64 [ %50, %49 ], [ 0, %30 ]
  %36 = phi %struct.utmpx* [ %52, %49 ], [ %31, %30 ]
  %37 = add i64 %33, -1, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %34, metadata !1174, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %35, metadata !1173, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.utmpx* %36, metadata !1172, metadata !DIExpression()) #28, !dbg !1179
  %38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 4, i64 0, !dbg !1184
  %39 = load i8, i8* %38, align 4, !dbg !1184, !tbaa !1185
  %40 = icmp eq i8 %39, 0, !dbg !1184
  br i1 %40, label %49, label %41, !dbg !1184

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 0, i32 0, !dbg !1184
  %43 = load i16, i16* %42, align 4, !dbg !1184, !tbaa !1186
  %44 = icmp eq i16 %43, 7, !dbg !1184
  br i1 %44, label %45, label %49, !dbg !1191

45:                                               ; preds = %41
  %46 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %36) #28, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %46, metadata !1175, metadata !DIExpression()) #28, !dbg !1193
  %47 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i8* %34, i8* %46) #28, !dbg !1194
  call void @free(i8* %46) #28, !dbg !1195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), metadata !1174, metadata !DIExpression()) #28, !dbg !1179
  %48 = add i64 %35, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %48, metadata !1173, metadata !DIExpression()) #28, !dbg !1179
  br label %49, !dbg !1197

49:                                               ; preds = %45, %41, %32
  %50 = phi i64 [ %48, %45 ], [ %35, %41 ], [ %35, %32 ], !dbg !1179
  %51 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %45 ], [ %34, %41 ], [ %34, %32 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8* %51, metadata !1174, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %50, metadata !1173, metadata !DIExpression()) #28, !dbg !1179
  %52 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i64 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %37, metadata !1167, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.utmpx* %52, metadata !1172, metadata !DIExpression()) #28, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %37, metadata !1167, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1179
  %53 = icmp eq i64 %37, 0, !dbg !1181
  br i1 %53, label %54, label %32, !dbg !1181, !llvm.loop !1199

54:                                               ; preds = %49, %28
  %55 = phi i64 [ 0, %28 ], [ %50, %49 ], !dbg !1179
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 5) #28, !dbg !1201
  %57 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i64 %55) #28, !dbg !1201
  br label %508, !dbg !1202

58:                                               ; preds = %25
  %59 = load %struct.utmpx*, %struct.utmpx** %16, align 8, !dbg !1203, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.utmpx* %59, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !278, metadata !DIExpression()) #28, !dbg !1204
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1223, metadata !DIExpression()) #28, !dbg !1228
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !1230, metadata !DIExpression()) #28, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %27, metadata !1218, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.utmpx* %59, metadata !1219, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1221, metadata !DIExpression()) #28, !dbg !1237
  %60 = load i1, i1* @include_heading, align 1, !dbg !1238
  br i1 %60, label %61, label %69, !dbg !1240

61:                                               ; preds = %58
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 5) #28, !dbg !1241
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 5) #28, !dbg !1244
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #28, !dbg !1245
  %65 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 5) #28, !dbg !1246
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i32 5) #28, !dbg !1247
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #28, !dbg !1248
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 5) #28, !dbg !1249
  call fastcc void @print_line(i32 -1, i8* %62, i8 signext 32, i32 -1, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67, i8* %68) #28, !dbg !1250
  br label %69, !dbg !1251

69:                                               ; preds = %61, %58
  %70 = load i1, i1* @my_line_only, align 1, !dbg !1252
  br i1 %70, label %71, label %79, !dbg !1254

71:                                               ; preds = %69
  %72 = call i8* @ttyname(i32 0) #28, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %72, metadata !1220, metadata !DIExpression()) #28, !dbg !1237
  %73 = icmp eq i8* %72, null, !dbg !1257
  br i1 %73, label %508, label %74, !dbg !1259

74:                                               ; preds = %71
  %75 = call i32 @strncmp(i8* nonnull %72, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 5) #29, !dbg !1260
  %76 = icmp eq i32 %75, 0, !dbg !1262
  %77 = getelementptr inbounds i8, i8* %72, i64 5
  %78 = select i1 %76, i8* %77, i8* %72, !dbg !1263
  br label %79, !dbg !1263

79:                                               ; preds = %74, %69
  %80 = phi i8* [ undef, %69 ], [ %78, %74 ]
  call void @llvm.dbg.value(metadata i8* %80, metadata !1220, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !1221, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.utmpx* %59, metadata !1219, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %27, metadata !1218, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1237
  %81 = icmp eq i64 %27, 0, !dbg !1264
  br i1 %81, label %508, label %82, !dbg !1264

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i64 %27, metadata !1218, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1237
  %83 = bitcast %struct.stat* %10 to i8*
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %85 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0
  %86 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %87 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 5
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 11, i32 0
  %90 = getelementptr inbounds [257 x i8], [257 x i8]* %14, i64 0, i64 0
  %91 = bitcast i64* %9 to i8*
  %92 = bitcast i64* %3 to i8*
  %93 = bitcast i64* %4 to i8*
  %94 = bitcast i64* %5 to i8*
  %95 = bitcast i64* %6 to i8*
  %96 = bitcast i64* %7 to i8*
  %97 = bitcast i64* %8 to i8*
  br label %98, !dbg !1264

98:                                               ; preds = %504, %82
  %99 = phi i64 [ %27, %82 ], [ %102, %504 ]
  %100 = phi i64 [ -9223372036854775808, %82 ], [ %505, %504 ]
  %101 = phi %struct.utmpx* [ %59, %82 ], [ %506, %504 ]
  %102 = add i64 %99, -1, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %100, metadata !1221, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1219, metadata !DIExpression()) #28, !dbg !1237
  %103 = load i1, i1* @my_line_only, align 1, !dbg !1266
  br i1 %103, label %104, label %108, !dbg !1267

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1268
  %106 = call i32 @strncmp(i8* nonnull dereferenceable(1) %80, i8* nonnull %105, i64 32) #29, !dbg !1268
  %107 = icmp eq i32 %106, 0, !dbg !1268
  br i1 %107, label %108, label %496, !dbg !1269

108:                                              ; preds = %104, %98
  %109 = load i1, i1* @need_users, align 1, !dbg !1270
  br i1 %109, label %110, label %278, !dbg !1271

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 4, i64 0, !dbg !1272
  %112 = load i8, i8* %111, align 4, !dbg !1272, !tbaa !1185
  %113 = icmp eq i8 %112, 0, !dbg !1272
  br i1 %113, label %278, label %114, !dbg !1272

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1272
  %116 = load i16, i16* %115, align 4, !dbg !1272, !tbaa !1186
  %117 = icmp eq i16 %116, 7, !dbg !1272
  br i1 %117, label %118, label %278, !dbg !1273

118:                                              ; preds = %114
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !152, metadata !DIExpression()) #28, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %100, metadata !153, metadata !DIExpression()) #28, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %83) #28, !dbg !1276
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !154, metadata !DIExpression()) #28, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %84) #28, !dbg !1278
  call void @llvm.dbg.declare(metadata [7 x i8]* %11, metadata !192, metadata !DIExpression()) #28, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %85) #28, !dbg !1280
  call void @llvm.dbg.declare(metadata [38 x i8]* %12, metadata !196, metadata !DIExpression()) #28, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %85, metadata !200, metadata !DIExpression()) #28, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1282
  call void @llvm.dbg.declare(metadata [12 x i8]* %13, metadata !201, metadata !DIExpression()) #28, !dbg !1282
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1282
  %120 = load i32, i32* %119, align 4, !dbg !1282, !tbaa !1283
  %121 = sext i32 %120 to i64, !dbg !1282
  %122 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %121) #28, !dbg !1282
  %123 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1284
  %124 = load i8, i8* %123, align 4, !dbg !1284, !tbaa !1185
  %125 = icmp eq i8 %124, 47, !dbg !1284
  br i1 %125, label %128, label %126, !dbg !1286

126:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %85, metadata !1287, metadata !DIExpression()) #28, !dbg !1296
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), metadata !1295, metadata !DIExpression()) #28, !dbg !1296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(6) %85, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 6, i1 false) #28, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %87, metadata !200, metadata !DIExpression()) #28, !dbg !1274
  call void @llvm.experimental.noalias.scope.decl(metadata !1299) #28, !dbg !1302
  call void @llvm.experimental.noalias.scope.decl(metadata !1303) #28, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %87, metadata !1305, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %123, metadata !1310, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata i64 32, metadata !1311, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1312, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)) #28, !dbg !1313
  %127 = icmp eq i8 %124, 0, !dbg !1315
  br i1 %127, label %141, label %128, !dbg !1316

128:                                              ; preds = %118, %126
  %129 = phi i8* [ %87, %126 ], [ %85, %118 ]
  %130 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 32, !dbg !1317
  br label %131, !dbg !1315

131:                                              ; preds = %138, %128
  %132 = phi i8* [ %135, %138 ], [ %123, %128 ]
  %133 = phi i8* [ %136, %138 ], [ %129, %128 ]
  %134 = phi i8 [ %139, %138 ], [ %124, %128 ]
  call void @llvm.dbg.value(metadata i8* %132, metadata !1310, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %133, metadata !1305, metadata !DIExpression()) #28, !dbg !1313
  %135 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %135, metadata !1310, metadata !DIExpression()) #28, !dbg !1313
  %136 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %136, metadata !1305, metadata !DIExpression()) #28, !dbg !1313
  store i8 %134, i8* %133, align 1, !dbg !1320, !tbaa !1185, !alias.scope !1299, !noalias !1303
  %137 = icmp ult i8* %135, %130, !dbg !1321
  br i1 %137, label %138, label %141, !dbg !1315, !llvm.loop !1322

138:                                              ; preds = %131
  %139 = load i8, i8* %135, align 1, !dbg !1323, !tbaa !1185, !alias.scope !1303, !noalias !1299
  call void @llvm.dbg.value(metadata i8* %136, metadata !1305, metadata !DIExpression()) #28, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %135, metadata !1310, metadata !DIExpression()) #28, !dbg !1313
  %140 = icmp eq i8 %139, 0, !dbg !1315
  br i1 %140, label %141, label %131, !dbg !1316

141:                                              ; preds = %138, %131, %126
  %142 = phi i8* [ %87, %126 ], [ %136, %131 ], [ %136, %138 ]
  store i8 0, i8* %142, align 1, !dbg !1324, !tbaa !1185, !alias.scope !1299, !noalias !1303
  %143 = call i32 @stat(i8* nonnull %85, %struct.stat* nonnull %10) #28, !dbg !1325
  %144 = icmp eq i32 %143, 0, !dbg !1327
  br i1 %144, label %145, label %184, !dbg !1328

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %struct.stat* %10, metadata !1329, metadata !DIExpression()) #28, !dbg !1336
  %146 = load i32, i32* %88, align 8, !dbg !1339, !tbaa !1340
  %147 = and i32 %146, 16, !dbg !1343
  %148 = icmp eq i32 %147, 0, !dbg !1344
  %149 = select i1 %148, i8 45, i8 43, !dbg !1345
  call void @llvm.dbg.value(metadata i8 %149, metadata !191, metadata !DIExpression()) #28, !dbg !1274
  %150 = load i64, i64* %89, align 8, !dbg !1346, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %150, metadata !190, metadata !DIExpression()) #28, !dbg !1274
  %151 = icmp eq i64 %150, 0, !dbg !1348
  br i1 %151, label %184, label %152, !dbg !1350

152:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i64 %150, metadata !223, metadata !DIExpression()) #28, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %100, metadata !224, metadata !DIExpression()) #28, !dbg !1351
  %153 = load i64, i64* @idle_string.now, align 8, !dbg !1353, !tbaa !1164
  %154 = icmp eq i64 %153, -9223372036854775808, !dbg !1355
  br i1 %154, label %155, label %157, !dbg !1356

155:                                              ; preds = %152
  %156 = call i64 @time(i64* nonnull @idle_string.now) #28, !dbg !1357
  br label %157, !dbg !1357

157:                                              ; preds = %155, %152
  %158 = icmp sgt i64 %150, %100, !dbg !1358
  br i1 %158, label %159, label %179, !dbg !1359

159:                                              ; preds = %157
  %160 = load i64, i64* @idle_string.now, align 8, !dbg !1360, !tbaa !1164
  %161 = add nsw i64 %160, -86400, !dbg !1361
  %162 = icmp sge i64 %161, %150, !dbg !1362
  %163 = icmp slt i64 %160, %150
  %164 = or i1 %163, %162, !dbg !1363
  br i1 %164, label %179, label %165, !dbg !1363

165:                                              ; preds = %159
  %166 = sub nsw i64 %160, %150, !dbg !1364
  %167 = trunc i64 %166 to i32, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %167, metadata !225, metadata !DIExpression()) #28, !dbg !1366
  %168 = icmp slt i32 %167, 60, !dbg !1367
  br i1 %168, label %181, label %169, !dbg !1369

169:                                              ; preds = %165
  %170 = icmp slt i32 %167, 86400, !dbg !1370
  br i1 %170, label %172, label %171, !dbg !1374

171:                                              ; preds = %169
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.idle_string, i64 0, i64 0)) #30, !dbg !1370
  unreachable, !dbg !1370

172:                                              ; preds = %169
  %173 = udiv i32 %167, 3600, !dbg !1370
  %174 = urem i32 %167, 3600, !dbg !1375
  %175 = trunc i32 %174 to i16, !dbg !1375
  %176 = udiv i16 %175, 60, !dbg !1375
  %177 = zext i16 %176 to i32, !dbg !1375
  %178 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), i32 1, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 %173, i32 %177) #28, !dbg !1375
  br label %181, !dbg !1376

179:                                              ; preds = %159, %157
  %180 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 5) #28, !dbg !1377
  br label %181, !dbg !1378

181:                                              ; preds = %179, %172, %165
  %182 = phi i8* [ %180, %179 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @idle_string.idle_hhmm, i64 0, i64 0), %172 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), %165 ], !dbg !1351
  %183 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 6, i8* %182) #28, !dbg !1379
  br label %187, !dbg !1379

184:                                              ; preds = %145, %141
  %185 = phi i8 [ %149, %145 ], [ 63, %141 ]
  %186 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %84, i32 1, i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #28, !dbg !1380
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i8 [ %185, %184 ], [ %149, %181 ]
  %189 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 5, i64 0, !dbg !1381
  %190 = load i8, i8* %189, align 4, !dbg !1381, !tbaa !1185
  %191 = icmp eq i8 %190, 0, !dbg !1381
  br i1 %191, label %251, label %192, !dbg !1382

192:                                              ; preds = %187
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %90) #28, !dbg !1383
  call void @llvm.dbg.declare(metadata [257 x i8]* %14, metadata !205, metadata !DIExpression()) #28, !dbg !1384
  call void @llvm.dbg.value(metadata i8* null, metadata !211, metadata !DIExpression()) #28, !dbg !1385
  call void @llvm.dbg.value(metadata i8* null, metadata !212, metadata !DIExpression()) #28, !dbg !1385
  call void @llvm.experimental.noalias.scope.decl(metadata !1386) #28, !dbg !1389
  call void @llvm.experimental.noalias.scope.decl(metadata !1390) #28, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %90, metadata !1305, metadata !DIExpression()) #28, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %189, metadata !1310, metadata !DIExpression()) #28, !dbg !1392
  call void @llvm.dbg.value(metadata i64 256, metadata !1311, metadata !DIExpression()) #28, !dbg !1392
  %193 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 5, i64 256, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %193, metadata !1312, metadata !DIExpression()) #28, !dbg !1392
  br label %194, !dbg !1395

194:                                              ; preds = %201, %192
  %195 = phi i8* [ %189, %192 ], [ %198, %201 ]
  %196 = phi i8* [ %90, %192 ], [ %199, %201 ]
  %197 = phi i8 [ %190, %192 ], [ %202, %201 ]
  call void @llvm.dbg.value(metadata i8* %195, metadata !1310, metadata !DIExpression()) #28, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %196, metadata !1305, metadata !DIExpression()) #28, !dbg !1392
  %198 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %198, metadata !1310, metadata !DIExpression()) #28, !dbg !1392
  %199 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %199, metadata !1305, metadata !DIExpression()) #28, !dbg !1392
  store i8 %197, i8* %196, align 1, !dbg !1398, !tbaa !1185, !alias.scope !1386, !noalias !1390
  %200 = icmp ult i8* %198, %193, !dbg !1399
  br i1 %200, label %201, label %204, !dbg !1400, !llvm.loop !1401

201:                                              ; preds = %194
  %202 = load i8, i8* %198, align 1, !dbg !1402, !tbaa !1185, !alias.scope !1390, !noalias !1386
  call void @llvm.dbg.value(metadata i8* %199, metadata !1305, metadata !DIExpression()) #28, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %198, metadata !1310, metadata !DIExpression()) #28, !dbg !1392
  %203 = icmp eq i8 %202, 0, !dbg !1400
  br i1 %203, label %204, label %194, !dbg !1395

204:                                              ; preds = %201, %194
  store i8 0, i8* %199, align 1, !dbg !1403, !tbaa !1185, !alias.scope !1386, !noalias !1390
  %205 = call i8* @strchr(i8* nonnull %90, i32 58) #29, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %205, metadata !212, metadata !DIExpression()) #28, !dbg !1385
  %206 = icmp eq i8* %205, null, !dbg !1405
  br i1 %206, label %209, label %207, !dbg !1407

207:                                              ; preds = %204
  %208 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %208, metadata !212, metadata !DIExpression()) #28, !dbg !1385
  store i8 0, i8* %205, align 1, !dbg !1409, !tbaa !1185
  br label %209, !dbg !1410

209:                                              ; preds = %207, %204
  %210 = phi i8* [ %208, %207 ], [ null, %204 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %210, metadata !212, metadata !DIExpression()) #28, !dbg !1385
  %211 = load i8, i8* %90, align 16, !dbg !1411, !tbaa !1185
  %212 = icmp eq i8 %211, 0, !dbg !1411
  br i1 %212, label %217, label %213, !dbg !1413

213:                                              ; preds = %209
  %214 = load i1, i1* @do_lookup, align 1, !dbg !1414
  br i1 %214, label %215, label %217, !dbg !1415

215:                                              ; preds = %213
  %216 = call noalias i8* @canon_host(i8* nonnull %90) #28, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %216, metadata !211, metadata !DIExpression()) #28, !dbg !1385
  br label %217, !dbg !1418

217:                                              ; preds = %215, %213, %209
  %218 = phi i8* [ %216, %215 ], [ null, %213 ], [ null, %209 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %218, metadata !211, metadata !DIExpression()) #28, !dbg !1385
  %219 = icmp eq i8* %218, null, !dbg !1419
  %220 = select i1 %219, i8* %90, i8* %218, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %220, metadata !211, metadata !DIExpression()) #28, !dbg !1385
  %221 = icmp eq i8* %210, null, !dbg !1422
  %222 = load i64, i64* @print_user.hostlen, align 8, !dbg !1424, !tbaa !1164
  %223 = call i64 @strlen(i8* nonnull dereferenceable(1) %220) #29, !dbg !1424
  br i1 %221, label %237, label %224, !dbg !1425

224:                                              ; preds = %217
  %225 = call i64 @strlen(i8* nonnull %210) #29, !dbg !1426
  %226 = add i64 %223, 4, !dbg !1429
  %227 = add i64 %226, %225, !dbg !1430
  %228 = icmp ult i64 %222, %227, !dbg !1431
  br i1 %228, label %231, label %229, !dbg !1432

229:                                              ; preds = %224
  %230 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1433, !tbaa !909
  br label %234, !dbg !1432

231:                                              ; preds = %224
  store i64 %227, i64* @print_user.hostlen, align 8, !dbg !1434, !tbaa !1164
  %232 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1436, !tbaa !909
  call void @free(i8* %232) #28, !dbg !1437
  %233 = call noalias i8* @xmalloc(i64 %227) #28, !dbg !1438
  store i8* %233, i8** @print_user.hoststr, align 8, !dbg !1439, !tbaa !909
  br label %234, !dbg !1440

234:                                              ; preds = %231, %229
  %235 = phi i8* [ %230, %229 ], [ %233, %231 ], !dbg !1433
  %236 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %235, i32 1, i64 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8* %220, i8* nonnull %210) #28, !dbg !1433
  br label %248, !dbg !1441

237:                                              ; preds = %217
  %238 = add i64 %223, 3, !dbg !1442
  %239 = icmp ult i64 %222, %238, !dbg !1445
  br i1 %239, label %242, label %240, !dbg !1446

240:                                              ; preds = %237
  %241 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1447, !tbaa !909
  br label %245, !dbg !1446

242:                                              ; preds = %237
  store i64 %238, i64* @print_user.hostlen, align 8, !dbg !1448, !tbaa !1164
  %243 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1450, !tbaa !909
  call void @free(i8* %243) #28, !dbg !1451
  %244 = call noalias i8* @xmalloc(i64 %238) #28, !dbg !1452
  store i8* %244, i8** @print_user.hoststr, align 8, !dbg !1453, !tbaa !909
  br label %245, !dbg !1454

245:                                              ; preds = %242, %240
  %246 = phi i8* [ %241, %240 ], [ %244, %242 ], !dbg !1447
  %247 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %246, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* %220) #28, !dbg !1447
  br label %248

248:                                              ; preds = %245, %234
  br i1 %219, label %250, label %249, !dbg !1455

249:                                              ; preds = %248
  call void @free(i8* %220) #28, !dbg !1456
  br label %250, !dbg !1456

250:                                              ; preds = %249, %248
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %90) #28, !dbg !1458
  br label %261, !dbg !1459

251:                                              ; preds = %187
  %252 = load i64, i64* @print_user.hostlen, align 8, !dbg !1460, !tbaa !1164
  %253 = icmp eq i64 %252, 0, !dbg !1463
  br i1 %253, label %256, label %254, !dbg !1464

254:                                              ; preds = %251
  %255 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1465, !tbaa !909
  br label %259, !dbg !1464

256:                                              ; preds = %251
  store i64 1, i64* @print_user.hostlen, align 8, !dbg !1466, !tbaa !1164
  %257 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1468, !tbaa !909
  call void @free(i8* %257) #28, !dbg !1469
  %258 = call noalias i8* @xmalloc(i64 1) #28, !dbg !1470
  store i8* %258, i8** @print_user.hoststr, align 8, !dbg !1471, !tbaa !909
  br label %259, !dbg !1472

259:                                              ; preds = %256, %254
  %260 = phi i8* [ %255, %254 ], [ %258, %256 ], !dbg !1465
  store i8 0, i8* %260, align 1, !dbg !1473, !tbaa !1185
  br label %261

261:                                              ; preds = %259, %250
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #28, !dbg !1476
  %262 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1477
  %263 = load i32, i32* %262, align 4, !dbg !1477, !tbaa !1478
  %264 = sext i32 %263 to i64, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %264, metadata !240, metadata !DIExpression()) #28, !dbg !1474
  store i64 %264, i64* %9, align 8, !dbg !1479, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %9, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1474
  %265 = call %struct.tm* @localtime(i64* nonnull %9) #28, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.tm* %265, metadata !241, metadata !DIExpression()) #28, !dbg !1474
  %266 = icmp eq %struct.tm* %265, null, !dbg !1481
  br i1 %266, label %270, label %267, !dbg !1483

267:                                              ; preds = %261
  %268 = load i8*, i8** @time_format, align 8, !dbg !1484, !tbaa !909
  %269 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %268, %struct.tm* nonnull %265) #28, !dbg !1486
  br label %273, !dbg !1487

270:                                              ; preds = %261
  %271 = load i64, i64* %9, align 8, !dbg !1488, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %271, metadata !240, metadata !DIExpression()) #28, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %271, metadata !1489, metadata !DIExpression()) #28, !dbg !1495
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1495
  %272 = call i8* @imaxtostr(i64 %271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1497
  br label %273, !dbg !1498

273:                                              ; preds = %270, %267
  %274 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %267 ], [ %272, %270 ], !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #28, !dbg !1500
  %275 = load i8*, i8** @print_user.hoststr, align 8, !dbg !1501, !tbaa !909
  %276 = icmp eq i8* %275, null, !dbg !1501
  %277 = select i1 %276, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %275, !dbg !1501
  call fastcc void @print_line(i32 32, i8* nonnull %111, i8 signext %188, i32 32, i8* nonnull %123, i8* %274, i8* nonnull %84, i8* nonnull %86, i8* %277, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1502
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1503
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %85) #28, !dbg !1503
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %84) #28, !dbg !1503
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %83) #28, !dbg !1503
  br label %496, !dbg !1504

278:                                              ; preds = %114, %110, %108
  %279 = load i1, i1* @need_runlevel, align 1, !dbg !1505
  br i1 %279, label %280, label %332, !dbg !1506

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1507
  %282 = load i16, i16* %281, align 4, !dbg !1507, !tbaa !1186
  %283 = icmp eq i16 %282, 1, !dbg !1507
  br i1 %283, label %284, label %332, !dbg !1508

284:                                              ; preds = %280
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !266, metadata !DIExpression()) #28, !dbg !1509
  %285 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1511
  %286 = load i32, i32* %285, align 4, !dbg !1511, !tbaa !1283
  call void @llvm.dbg.value(metadata i32 %286, metadata !267, metadata !DIExpression(DW_OP_constu, 256, DW_OP_div, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %286, metadata !269, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1509
  %287 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1512, !tbaa !909
  %288 = icmp eq i8* %287, null, !dbg !1512
  br i1 %288, label %289, label %294, !dbg !1514

289:                                              ; preds = %284
  %290 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #28, !dbg !1515
  %291 = call i64 @strlen(i8* nonnull dereferenceable(1) %290) #29, !dbg !1516
  %292 = add i64 %291, 3, !dbg !1517
  %293 = call noalias i8* @xmalloc(i64 %292) #28, !dbg !1518
  store i8* %293, i8** @print_runlevel.runlevline, align 8, !dbg !1519, !tbaa !909
  br label %294, !dbg !1520

294:                                              ; preds = %289, %284
  %295 = phi i8* [ %293, %289 ], [ %287, %284 ], !dbg !1521
  %296 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 5) #28, !dbg !1521
  %297 = and i32 %286, 255, !dbg !1521
  %298 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %295, i32 1, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* %296, i32 %297) #28, !dbg !1521
  %299 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1522, !tbaa !909
  %300 = icmp eq i8* %299, null, !dbg !1522
  br i1 %300, label %301, label %306, !dbg !1524

301:                                              ; preds = %294
  %302 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #28, !dbg !1525
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %302) #29, !dbg !1526
  %304 = add i64 %303, 2, !dbg !1527
  %305 = call noalias i8* @xmalloc(i64 %304) #28, !dbg !1528
  store i8* %305, i8** @print_runlevel.comment, align 8, !dbg !1529, !tbaa !909
  br label %306, !dbg !1530

306:                                              ; preds = %301, %294
  %307 = phi i8* [ %305, %301 ], [ %299, %294 ], !dbg !1531
  %308 = sdiv i32 %286, 256, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %308, metadata !267, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1509
  %309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0), i32 5) #28, !dbg !1531
  %310 = and i32 %308, 255, !dbg !1531
  %311 = icmp eq i32 %310, 78, !dbg !1531
  %312 = select i1 %311, i32 83, i32 %310, !dbg !1531
  %313 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %307, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %309, i32 %312) #28, !dbg !1531
  %314 = load i8*, i8** @print_runlevel.runlevline, align 8, !dbg !1533, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1534
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97) #28, !dbg !1536
  %315 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1537
  %316 = load i32, i32* %315, align 4, !dbg !1537, !tbaa !1478
  %317 = sext i32 %316 to i64, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %317, metadata !240, metadata !DIExpression()) #28, !dbg !1534
  store i64 %317, i64* %8, align 8, !dbg !1538, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %8, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1534
  %318 = call %struct.tm* @localtime(i64* nonnull %8) #28, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.tm* %318, metadata !241, metadata !DIExpression()) #28, !dbg !1534
  %319 = icmp eq %struct.tm* %318, null, !dbg !1540
  br i1 %319, label %323, label %320, !dbg !1541

320:                                              ; preds = %306
  %321 = load i8*, i8** @time_format, align 8, !dbg !1542, !tbaa !909
  %322 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %321, %struct.tm* nonnull %318) #28, !dbg !1543
  br label %326, !dbg !1544

323:                                              ; preds = %306
  %324 = load i64, i64* %8, align 8, !dbg !1545, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %324, metadata !240, metadata !DIExpression()) #28, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %324, metadata !1489, metadata !DIExpression()) #28, !dbg !1546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1546
  %325 = call i8* @imaxtostr(i64 %324, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1548
  br label %326, !dbg !1549

326:                                              ; preds = %323, %320
  %327 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %320 ], [ %325, %323 ], !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97) #28, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %310, metadata !1552, metadata !DIExpression()) #28, !dbg !1558
  %328 = add nsw i32 %310, -32, !dbg !1560
  %329 = icmp ult i32 %328, 95, !dbg !1560
  %330 = load i8*, i8** @print_runlevel.comment, align 8, !dbg !1561
  %331 = select i1 %329, i8* %330, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1561
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %314, i8* %327, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %331, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1562
  br label %496, !dbg !1563

332:                                              ; preds = %280, %278
  %333 = load i1, i1* @need_boottime, align 1, !dbg !1564
  br i1 %333, label %334, label %353, !dbg !1565

334:                                              ; preds = %332
  %335 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1566
  %336 = load i16, i16* %335, align 4, !dbg !1566, !tbaa !1186
  %337 = icmp eq i16 %336, 2, !dbg !1566
  br i1 %337, label %338, label %353, !dbg !1567

338:                                              ; preds = %334
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1568, metadata !DIExpression()) #28, !dbg !1571
  %339 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i32 5) #28, !dbg !1573
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1574
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %96) #28, !dbg !1576
  %340 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1577
  %341 = load i32, i32* %340, align 4, !dbg !1577, !tbaa !1478
  %342 = sext i32 %341 to i64, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %342, metadata !240, metadata !DIExpression()) #28, !dbg !1574
  store i64 %342, i64* %7, align 8, !dbg !1578, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %7, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1574
  %343 = call %struct.tm* @localtime(i64* nonnull %7) #28, !dbg !1579
  call void @llvm.dbg.value(metadata %struct.tm* %343, metadata !241, metadata !DIExpression()) #28, !dbg !1574
  %344 = icmp eq %struct.tm* %343, null, !dbg !1580
  br i1 %344, label %348, label %345, !dbg !1581

345:                                              ; preds = %338
  %346 = load i8*, i8** @time_format, align 8, !dbg !1582, !tbaa !909
  %347 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %346, %struct.tm* nonnull %343) #28, !dbg !1583
  br label %351, !dbg !1584

348:                                              ; preds = %338
  %349 = load i64, i64* %7, align 8, !dbg !1585, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %349, metadata !240, metadata !DIExpression()) #28, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %349, metadata !1489, metadata !DIExpression()) #28, !dbg !1586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1586
  %350 = call i8* @imaxtostr(i64 %349, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1588
  br label %351, !dbg !1589

351:                                              ; preds = %348, %345
  %352 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %345 ], [ %350, %348 ], !dbg !1590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %96) #28, !dbg !1591
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %339, i8* %352, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1592
  br label %496, !dbg !1593

353:                                              ; preds = %334, %332
  %354 = load i1, i1* @need_clockchange, align 1, !dbg !1594
  br i1 %354, label %355, label %374, !dbg !1595

355:                                              ; preds = %353
  %356 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1596
  %357 = load i16, i16* %356, align 4, !dbg !1596, !tbaa !1186
  %358 = icmp eq i16 %357, 3, !dbg !1596
  br i1 %358, label %359, label %374, !dbg !1597

359:                                              ; preds = %355
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1598, metadata !DIExpression()) #28, !dbg !1601
  %360 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 5) #28, !dbg !1603
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1604
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %95) #28, !dbg !1606
  %361 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1607
  %362 = load i32, i32* %361, align 4, !dbg !1607, !tbaa !1478
  %363 = sext i32 %362 to i64, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %363, metadata !240, metadata !DIExpression()) #28, !dbg !1604
  store i64 %363, i64* %6, align 8, !dbg !1608, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %6, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1604
  %364 = call %struct.tm* @localtime(i64* nonnull %6) #28, !dbg !1609
  call void @llvm.dbg.value(metadata %struct.tm* %364, metadata !241, metadata !DIExpression()) #28, !dbg !1604
  %365 = icmp eq %struct.tm* %364, null, !dbg !1610
  br i1 %365, label %369, label %366, !dbg !1611

366:                                              ; preds = %359
  %367 = load i8*, i8** @time_format, align 8, !dbg !1612, !tbaa !909
  %368 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %367, %struct.tm* nonnull %364) #28, !dbg !1613
  br label %372, !dbg !1614

369:                                              ; preds = %359
  %370 = load i64, i64* %6, align 8, !dbg !1615, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %370, metadata !240, metadata !DIExpression()) #28, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %370, metadata !1489, metadata !DIExpression()) #28, !dbg !1616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1616
  %371 = call i8* @imaxtostr(i64 %370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1618
  br label %372, !dbg !1619

372:                                              ; preds = %369, %366
  %373 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %366 ], [ %371, %369 ], !dbg !1620
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %95) #28, !dbg !1621
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 -1, i8* %360, i8* %373, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1622
  br label %496, !dbg !1623

374:                                              ; preds = %355, %353
  %375 = load i1, i1* @need_initspawn, align 1, !dbg !1624
  br i1 %375, label %376, label %407, !dbg !1625

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1626
  %378 = load i16, i16* %377, align 4, !dbg !1626, !tbaa !1186
  %379 = icmp eq i16 %378, 5, !dbg !1626
  br i1 %379, label %380, label %407, !dbg !1627

380:                                              ; preds = %376
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1233, metadata !DIExpression()) #28, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1629, metadata !DIExpression()) #28, !dbg !1636
  call void @llvm.dbg.value(metadata i64 4, metadata !1634, metadata !DIExpression()) #28, !dbg !1636
  %381 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1638
  %382 = call i64 @strlen(i8* nonnull dereferenceable(1) %381) #29, !dbg !1639
  %383 = add i64 %382, 5, !dbg !1640
  %384 = call noalias i8* @xmalloc(i64 %383) #28, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %384, metadata !1635, metadata !DIExpression()) #28, !dbg !1636
  %385 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %384, metadata !1643, metadata !DIExpression()) #28, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %385, metadata !1646, metadata !DIExpression()) #28, !dbg !1647
  %386 = call i8* @strcpy(i8* nonnull dereferenceable(1) %384, i8* nonnull dereferenceable(1) %385), !dbg !1649
  %387 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1650
  call void @llvm.dbg.value(metadata i8* %384, metadata !1651, metadata !DIExpression()) #28, !dbg !1656
  call void @llvm.dbg.value(metadata i8* %387, metadata !1654, metadata !DIExpression()) #28, !dbg !1656
  call void @llvm.dbg.value(metadata i64 4, metadata !1655, metadata !DIExpression()) #28, !dbg !1656
  %388 = call i8* @strncat(i8* nonnull dereferenceable(1) %384, i8* nonnull dereferenceable(1) %387, i64 4), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %384, metadata !1234, metadata !DIExpression()) #28, !dbg !1628
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1235
  %389 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1235
  %390 = load i32, i32* %389, align 4, !dbg !1235, !tbaa !1283
  %391 = sext i32 %390 to i64, !dbg !1235
  %392 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %391) #28, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1659
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #28, !dbg !1661
  %393 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1662
  %394 = load i32, i32* %393, align 4, !dbg !1662, !tbaa !1478
  %395 = sext i32 %394 to i64, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %395, metadata !240, metadata !DIExpression()) #28, !dbg !1659
  store i64 %395, i64* %5, align 8, !dbg !1663, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %5, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1659
  %396 = call %struct.tm* @localtime(i64* nonnull %5) #28, !dbg !1664
  call void @llvm.dbg.value(metadata %struct.tm* %396, metadata !241, metadata !DIExpression()) #28, !dbg !1659
  %397 = icmp eq %struct.tm* %396, null, !dbg !1665
  br i1 %397, label %401, label %398, !dbg !1666

398:                                              ; preds = %380
  %399 = load i8*, i8** @time_format, align 8, !dbg !1667, !tbaa !909
  %400 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %399, %struct.tm* nonnull %396) #28, !dbg !1668
  br label %404, !dbg !1669

401:                                              ; preds = %380
  %402 = load i64, i64* %5, align 8, !dbg !1670, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %402, metadata !240, metadata !DIExpression()) #28, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %402, metadata !1489, metadata !DIExpression()) #28, !dbg !1671
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1671
  %403 = call i8* @imaxtostr(i64 %402, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1673
  br label %404, !dbg !1674

404:                                              ; preds = %401, %398
  %405 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %398 ], [ %403, %401 ], !dbg !1675
  %406 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1676
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #28, !dbg !1677
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %406, i8* %405, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %384, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1678
  call void @free(i8* %384) #28, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1680
  br label %496, !dbg !1681

407:                                              ; preds = %376, %374
  %408 = load i1, i1* @need_login, align 1, !dbg !1682
  br i1 %408, label %409, label %441, !dbg !1683

409:                                              ; preds = %407
  %410 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1684
  %411 = load i16, i16* %410, align 4, !dbg !1684, !tbaa !1186
  %412 = icmp eq i16 %411, 6, !dbg !1684
  br i1 %412, label %413, label %441, !dbg !1685

413:                                              ; preds = %409
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1226, metadata !DIExpression()) #28, !dbg !1686
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1629, metadata !DIExpression()) #28, !dbg !1687
  call void @llvm.dbg.value(metadata i64 4, metadata !1634, metadata !DIExpression()) #28, !dbg !1687
  %414 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1689
  %415 = call i64 @strlen(i8* nonnull dereferenceable(1) %414) #29, !dbg !1690
  %416 = add i64 %415, 5, !dbg !1691
  %417 = call noalias i8* @xmalloc(i64 %416) #28, !dbg !1692
  call void @llvm.dbg.value(metadata i8* %417, metadata !1635, metadata !DIExpression()) #28, !dbg !1687
  %418 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %417, metadata !1643, metadata !DIExpression()) #28, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %418, metadata !1646, metadata !DIExpression()) #28, !dbg !1694
  %419 = call i8* @strcpy(i8* nonnull dereferenceable(1) %417, i8* nonnull dereferenceable(1) %418), !dbg !1696
  %420 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1697
  call void @llvm.dbg.value(metadata i8* %417, metadata !1651, metadata !DIExpression()) #28, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %420, metadata !1654, metadata !DIExpression()) #28, !dbg !1698
  call void @llvm.dbg.value(metadata i64 4, metadata !1655, metadata !DIExpression()) #28, !dbg !1698
  %421 = call i8* @strncat(i8* nonnull dereferenceable(1) %417, i8* nonnull dereferenceable(1) %420, i64 4), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %417, metadata !1227, metadata !DIExpression()) #28, !dbg !1686
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1228
  %422 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1228
  %423 = load i32, i32* %422, align 4, !dbg !1228, !tbaa !1283
  %424 = sext i32 %423 to i64, !dbg !1228
  %425 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %424) #28, !dbg !1228
  %426 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32 5) #28, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1702
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93) #28, !dbg !1704
  %427 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1705
  %428 = load i32, i32* %427, align 4, !dbg !1705, !tbaa !1478
  %429 = sext i32 %428 to i64, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %429, metadata !240, metadata !DIExpression()) #28, !dbg !1702
  store i64 %429, i64* %4, align 8, !dbg !1706, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %4, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1702
  %430 = call %struct.tm* @localtime(i64* nonnull %4) #28, !dbg !1707
  call void @llvm.dbg.value(metadata %struct.tm* %430, metadata !241, metadata !DIExpression()) #28, !dbg !1702
  %431 = icmp eq %struct.tm* %430, null, !dbg !1708
  br i1 %431, label %435, label %432, !dbg !1709

432:                                              ; preds = %413
  %433 = load i8*, i8** @time_format, align 8, !dbg !1710, !tbaa !909
  %434 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %433, %struct.tm* nonnull %430) #28, !dbg !1711
  br label %438, !dbg !1712

435:                                              ; preds = %413
  %436 = load i64, i64* %4, align 8, !dbg !1713, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %436, metadata !240, metadata !DIExpression()) #28, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %436, metadata !1489, metadata !DIExpression()) #28, !dbg !1714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1714
  %437 = call i8* @imaxtostr(i64 %436, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1716
  br label %438, !dbg !1717

438:                                              ; preds = %435, %432
  %439 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %432 ], [ %437, %435 ], !dbg !1718
  %440 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93) #28, !dbg !1720
  call fastcc void @print_line(i32 -1, i8* %426, i8 signext 32, i32 32, i8* nonnull %440, i8* %439, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %417, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #28, !dbg !1721
  call void @free(i8* %417) #28, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1723
  br label %496, !dbg !1724

441:                                              ; preds = %409, %407
  %442 = load i1, i1* @need_deadprocs, align 1, !dbg !1725
  br i1 %442, label %443, label %496, !dbg !1726

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1727
  %445 = load i16, i16* %444, align 4, !dbg !1727, !tbaa !1186
  %446 = icmp eq i16 %445, 8, !dbg !1727
  br i1 %446, label %447, label %496, !dbg !1728

447:                                              ; preds = %443
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !276, metadata !DIExpression()) #28, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !1629, metadata !DIExpression()) #28, !dbg !1730
  call void @llvm.dbg.value(metadata i64 4, metadata !1634, metadata !DIExpression()) #28, !dbg !1730
  %448 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1732
  %449 = call i64 @strlen(i8* nonnull dereferenceable(1) %448) #29, !dbg !1733
  %450 = add i64 %449, 5, !dbg !1734
  %451 = call noalias i8* @xmalloc(i64 %450) #28, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %451, metadata !1635, metadata !DIExpression()) #28, !dbg !1730
  %452 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i32 5) #28, !dbg !1736
  call void @llvm.dbg.value(metadata i8* %451, metadata !1643, metadata !DIExpression()) #28, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %452, metadata !1646, metadata !DIExpression()) #28, !dbg !1737
  %453 = call i8* @strcpy(i8* nonnull dereferenceable(1) %451, i8* nonnull dereferenceable(1) %452), !dbg !1739
  %454 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 3, i64 0, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %451, metadata !1651, metadata !DIExpression()) #28, !dbg !1741
  call void @llvm.dbg.value(metadata i8* %454, metadata !1654, metadata !DIExpression()) #28, !dbg !1741
  call void @llvm.dbg.value(metadata i64 4, metadata !1655, metadata !DIExpression()) #28, !dbg !1741
  %455 = call i8* @strncat(i8* nonnull dereferenceable(1) %451, i8* nonnull dereferenceable(1) %454, i64 4), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %451, metadata !277, metadata !DIExpression()) #28, !dbg !1729
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1204
  %456 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 1, !dbg !1204
  %457 = load i32, i32* %456, align 4, !dbg !1204, !tbaa !1283
  %458 = sext i32 %457 to i64, !dbg !1204
  %459 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %86, i32 1, i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i64 %458) #28, !dbg !1204
  %460 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1744, !tbaa !909
  %461 = icmp eq i8* %460, null, !dbg !1744
  br i1 %461, label %462, label %470, !dbg !1746

462:                                              ; preds = %447
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #28, !dbg !1747
  %464 = call i64 @strlen(i8* nonnull dereferenceable(1) %463) #29, !dbg !1748
  %465 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #28, !dbg !1749
  %466 = call i64 @strlen(i8* nonnull dereferenceable(1) %465) #29, !dbg !1750
  %467 = add i64 %464, 14, !dbg !1751
  %468 = add i64 %467, %466, !dbg !1752
  %469 = call noalias i8* @xmalloc(i64 %468) #28, !dbg !1753
  store i8* %469, i8** @print_deadprocs.exitstr, align 8, !dbg !1754, !tbaa !909
  br label %470, !dbg !1755

470:                                              ; preds = %462, %447
  %471 = phi i8* [ %469, %462 ], [ %460, %447 ], !dbg !1756
  %472 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0), i32 5) #28, !dbg !1756
  %473 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 6, i32 0, !dbg !1756
  %474 = load i16, i16* %473, align 4, !dbg !1756, !tbaa !1757
  %475 = sext i16 %474 to i32, !dbg !1756
  %476 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i32 5) #28, !dbg !1756
  %477 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 6, i32 1, !dbg !1756
  %478 = load i16, i16* %477, align 2, !dbg !1756, !tbaa !1758
  %479 = sext i16 %478 to i32, !dbg !1756
  %480 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %471, i32 1, i64 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i8* %472, i32 %475, i8* %476, i32 %479) #28, !dbg !1756
  call void @llvm.dbg.value(metadata %struct.utmpx* %101, metadata !239, metadata !DIExpression()) #28, !dbg !1759
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #28, !dbg !1761
  %481 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1762
  %482 = load i32, i32* %481, align 4, !dbg !1762, !tbaa !1478
  %483 = sext i32 %482 to i64, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %483, metadata !240, metadata !DIExpression()) #28, !dbg !1759
  store i64 %483, i64* %3, align 8, !dbg !1763, !tbaa !1164
  call void @llvm.dbg.value(metadata i64* %3, metadata !240, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1759
  %484 = call %struct.tm* @localtime(i64* nonnull %3) #28, !dbg !1764
  call void @llvm.dbg.value(metadata %struct.tm* %484, metadata !241, metadata !DIExpression()) #28, !dbg !1759
  %485 = icmp eq %struct.tm* %484, null, !dbg !1765
  br i1 %485, label %489, label %486, !dbg !1766

486:                                              ; preds = %470
  %487 = load i8*, i8** @time_format, align 8, !dbg !1767, !tbaa !909
  %488 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %487, %struct.tm* nonnull %484) #28, !dbg !1768
  br label %492, !dbg !1769

489:                                              ; preds = %470
  %490 = load i64, i64* %3, align 8, !dbg !1770, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %490, metadata !240, metadata !DIExpression()) #28, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %490, metadata !1489, metadata !DIExpression()) #28, !dbg !1771
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1494, metadata !DIExpression()) #28, !dbg !1771
  %491 = call i8* @imaxtostr(i64 %490, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1773
  br label %492, !dbg !1774

492:                                              ; preds = %489, %486
  %493 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %486 ], [ %491, %489 ], !dbg !1775
  %494 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 2, i64 0, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #28, !dbg !1777
  %495 = load i8*, i8** @print_deadprocs.exitstr, align 8, !dbg !1778, !tbaa !909
  call fastcc void @print_line(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8 signext 32, i32 32, i8* nonnull %494, i8* %493, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %86, i8* %451, i8* %495) #28, !dbg !1779
  call void @free(i8* %451) #28, !dbg !1780
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %86) #28, !dbg !1781
  br label %496, !dbg !1782

496:                                              ; preds = %492, %443, %441, %438, %404, %372, %351, %326, %273, %104
  %497 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 0, !dbg !1783
  %498 = load i16, i16* %497, align 4, !dbg !1783, !tbaa !1186
  %499 = icmp eq i16 %498, 2, !dbg !1783
  br i1 %499, label %500, label %504, !dbg !1785

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 0, i32 8, i32 0, !dbg !1786
  %502 = load i32, i32* %501, align 4, !dbg !1786, !tbaa !1478
  %503 = sext i32 %502 to i64, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %503, metadata !1221, metadata !DIExpression()) #28, !dbg !1237
  br label %504, !dbg !1787

504:                                              ; preds = %500, %496
  %505 = phi i64 [ %503, %500 ], [ %100, %496 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %505, metadata !1221, metadata !DIExpression()) #28, !dbg !1237
  %506 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %101, i64 1, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.utmpx* %506, metadata !1219, metadata !DIExpression()) #28, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %102, metadata !1218, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1237
  %507 = icmp eq i64 %102, 0, !dbg !1264
  br i1 %507, label %508, label %98, !dbg !1264, !llvm.loop !1789

508:                                              ; preds = %504, %79, %71, %54
  %509 = bitcast %struct.utmpx** %16 to i8**, !dbg !1791
  %510 = load i8*, i8** %509, align 8, !dbg !1791, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @free(i8* %510) #28, !dbg !1792
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #28, !dbg !1793
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #28, !dbg !1793
  ret void, !dbg !1793
}

declare !dbg !1794 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_line(i32 %0, i8* %1, i8 signext %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) unnamed_addr #8 !dbg !76 {
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [13 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !80, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %1, metadata !81, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %2, metadata !82, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %3, metadata !83, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %4, metadata !84, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %5, metadata !85, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %6, metadata !86, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %7, metadata !87, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %8, metadata !88, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %9, metadata !89, metadata !DIExpression()), !dbg !1798
  %14 = bitcast i8** %11 to i8*, !dbg !1799
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #28, !dbg !1799
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !1800
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #28, !dbg !1800
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !91, metadata !DIExpression()), !dbg !1801
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0, !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %16) #28, !dbg !1802
  call void @llvm.dbg.declare(metadata [13 x i8]* %13, metadata !95, metadata !DIExpression()), !dbg !1803
  store i8 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 1), align 1, !dbg !1804, !tbaa !1185
  %17 = load i1, i1* @include_idle, align 1, !dbg !1805
  br i1 %17, label %18, label %25, !dbg !1807

18:                                               ; preds = %10
  %19 = load i1, i1* @short_output, align 1, !dbg !1808
  br i1 %19, label %25, label %20, !dbg !1809

20:                                               ; preds = %18
  %21 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %6) #29, !dbg !1810
  %22 = icmp ult i64 %21, 7, !dbg !1811
  br i1 %22, label %23, label %25, !dbg !1812

23:                                               ; preds = %20
  %24 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %15, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i8* %6) #28, !dbg !1813
  br label %26, !dbg !1813

25:                                               ; preds = %20, %18, %10
  store i8 0, i8* %15, align 1, !dbg !1814, !tbaa !1185
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i1, i1* @short_output, align 1, !dbg !1815
  br i1 %27, label %33, label %28, !dbg !1817

28:                                               ; preds = %26
  %29 = call i64 @strlen(i8* nonnull dereferenceable(1) %7) #29, !dbg !1818
  %30 = icmp ult i64 %29, 12, !dbg !1819
  br i1 %30, label %31, label %33, !dbg !1820

31:                                               ; preds = %28
  %32 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %16, i32 1, i64 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %7) #28, !dbg !1821
  br label %34, !dbg !1821

33:                                               ; preds = %28, %26
  store i8 0, i8* %16, align 1, !dbg !1822, !tbaa !1185
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i1, i1* @include_exit, align 1, !dbg !1823
  br i1 %35, label %36, label %41, !dbg !1823

36:                                               ; preds = %34
  %37 = call i64 @strlen(i8* nonnull dereferenceable(1) %9) #29, !dbg !1824
  %38 = icmp ult i64 %37, 12, !dbg !1824
  %39 = add i64 %37, 2
  %40 = select i1 %38, i64 14, i64 %39, !dbg !1824
  br label %41, !dbg !1823

41:                                               ; preds = %34, %36
  %42 = phi i64 [ %40, %36 ], [ 1, %34 ], !dbg !1823
  %43 = call noalias i8* @xmalloc(i64 %42) #28, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %43, metadata !99, metadata !DIExpression()), !dbg !1798
  %44 = load i1, i1* @include_exit, align 1, !dbg !1826
  br i1 %44, label %45, label %47, !dbg !1828

45:                                               ; preds = %41
  %46 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %43, i32 1, i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* %9) #28, !dbg !1829
  br label %48, !dbg !1829

47:                                               ; preds = %41
  store i8 0, i8* %43, align 1, !dbg !1830, !tbaa !1185
  br label %48

48:                                               ; preds = %47, %45
  %49 = icmp eq i8* %1, null, !dbg !1831
  %50 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* %1, !dbg !1831
  %51 = load i1, i1* @include_mesg, align 1, !dbg !1831
  %52 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @print_line.mesg, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1831
  %53 = load i32, i32* @time_format_width, align 4, !dbg !1831, !tbaa !1104
  call void @llvm.dbg.value(metadata i8** %11, metadata !90, metadata !DIExpression(DW_OP_deref)), !dbg !1798
  %54 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %0, i8* %50, i8* %52, i32 %3, i8* %4, i32 %53, i8* %5, i8* nonnull %15, i8* nonnull %16, i8* %8, i8* %43) #28, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %54, metadata !100, metadata !DIExpression()), !dbg !1798
  %55 = icmp eq i32 %54, -1, !dbg !1832
  br i1 %55, label %56, label %57, !dbg !1834

56:                                               ; preds = %48
  call void @xalloc_die() #30, !dbg !1835
  unreachable, !dbg !1835

57:                                               ; preds = %48
  %58 = load i8*, i8** %11, align 8, !dbg !1836, !tbaa !909
  call void @llvm.dbg.value(metadata i8* %58, metadata !90, metadata !DIExpression()), !dbg !1798
  %59 = call i64 @strlen(i8* nonnull dereferenceable(1) %58) #29, !dbg !1837
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !1838
  call void @llvm.dbg.value(metadata i8* %60, metadata !101, metadata !DIExpression()), !dbg !1839
  br label %61, !dbg !1840

61:                                               ; preds = %61, %57
  %62 = phi i8* [ %60, %57 ], [ %63, %61 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8* %62, metadata !101, metadata !DIExpression()), !dbg !1839
  %63 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %63, metadata !101, metadata !DIExpression()), !dbg !1839
  %64 = load i8, i8* %63, align 1, !dbg !1842, !tbaa !1185
  %65 = icmp eq i8 %64, 32, !dbg !1843
  br i1 %65, label %61, label %66, !dbg !1840, !llvm.loop !1844

66:                                               ; preds = %61
  store i8 0, i8* %62, align 1, !dbg !1846, !tbaa !1185
  %67 = load i8*, i8** %11, align 8, !dbg !1847, !tbaa !909
  call void @llvm.dbg.value(metadata i8* %67, metadata !90, metadata !DIExpression()), !dbg !1798
  %68 = call i32 @puts(i8* nonnull dereferenceable(1) %67), !dbg !1848
  %69 = load i8*, i8** %11, align 8, !dbg !1849, !tbaa !909
  call void @llvm.dbg.value(metadata i8* %69, metadata !90, metadata !DIExpression()), !dbg !1798
  call void @free(i8* %69) #28, !dbg !1850
  call void @free(i8* %43) #28, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %16) #28, !dbg !1852
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #28, !dbg !1852
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #28, !dbg !1852
  ret void, !dbg !1852
}

; Function Attrs: nounwind
declare !dbg !1853 i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #11

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nofree nounwind
declare !dbg !1857 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1862 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1867 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1872 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncat(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #13

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1877 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8* %0) local_unnamed_addr #8 !dbg !1880 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1882, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %0, metadata !323, metadata !DIExpression()) #28, !dbg !1884
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !324, metadata !DIExpression()) #28, !dbg !1884
  call void @llvm.dbg.value(metadata i8* null, metadata !325, metadata !DIExpression()) #28, !dbg !1884
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #28, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !326, metadata !DIExpression()) #28, !dbg !1884
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1887, !tbaa !909
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1888, !tbaa !1889
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !326, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1884
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #28, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %4, metadata !353, metadata !DIExpression()) #28, !dbg !1884
  %5 = icmp eq i32 %4, 0, !dbg !1892
  br i1 %5, label %6, label %16, !dbg !1894

6:                                                ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1895, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !326, metadata !DIExpression()) #28, !dbg !1884
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1897
  %9 = load i8*, i8** %8, align 8, !dbg !1897, !tbaa !1898
  %10 = icmp eq i8* %9, null, !dbg !1895
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1895
  %12 = call noalias i8* @strdup(i8* %11) #28, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %12, metadata !325, metadata !DIExpression()) #28, !dbg !1884
  %13 = icmp eq i8* %12, null, !dbg !1900
  br i1 %13, label %14, label %15, !dbg !1902

14:                                               ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1903, !tbaa !1104
  br label %15, !dbg !1904

15:                                               ; preds = %14, %6
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !326, metadata !DIExpression()) #28, !dbg !1884
  call void @freeaddrinfo(%struct.addrinfo* nonnull %7) #28, !dbg !1905
  br label %17, !dbg !1906

16:                                               ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1907, !tbaa !1104
  br label %17, !dbg !1909

17:                                               ; preds = %15, %16
  %18 = phi i8* [ null, %16 ], [ %12, %15 ], !dbg !1884
  call void @llvm.dbg.value(metadata i8* %18, metadata !325, metadata !DIExpression()) #28, !dbg !1884
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #28, !dbg !1910
  ret i8* %18, !dbg !1911
}

declare !dbg !1912 i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1918 void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8* %0, i32* %1) local_unnamed_addr #8 !dbg !319 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !323, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32* %1, metadata !324, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8* null, metadata !325, metadata !DIExpression()), !dbg !1921
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !326, metadata !DIExpression()), !dbg !1921
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1923, !tbaa !909
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1924, !tbaa !1889
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !326, metadata !DIExpression(DW_OP_deref)), !dbg !1921
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #28, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %5, metadata !353, metadata !DIExpression()), !dbg !1921
  %6 = icmp eq i32 %5, 0, !dbg !1926
  br i1 %6, label %7, label %19, !dbg !1927

7:                                                ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1928, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !326, metadata !DIExpression()), !dbg !1921
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1929
  %10 = load i8*, i8** %9, align 8, !dbg !1929, !tbaa !1898
  %11 = icmp eq i8* %10, null, !dbg !1928
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1928
  %13 = call noalias i8* @strdup(i8* %12) #28, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %13, metadata !325, metadata !DIExpression()), !dbg !1921
  %14 = icmp eq i8* %13, null, !dbg !1931
  %15 = icmp ne i32* %1, null
  %16 = and i1 %15, %14, !dbg !1932
  br i1 %16, label %17, label %18, !dbg !1932

17:                                               ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1933, !tbaa !1104
  br label %18, !dbg !1934

18:                                               ; preds = %17, %7
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !326, metadata !DIExpression()), !dbg !1921
  call void @freeaddrinfo(%struct.addrinfo* nonnull %8) #28, !dbg !1935
  br label %22, !dbg !1936

19:                                               ; preds = %2
  %20 = icmp eq i32* %1, null, !dbg !1937
  br i1 %20, label %22, label %21, !dbg !1938

21:                                               ; preds = %19
  store i32 %5, i32* %1, align 4, !dbg !1939, !tbaa !1104
  br label %22, !dbg !1940

22:                                               ; preds = %19, %21, %18
  %23 = phi i8* [ null, %21 ], [ null, %19 ], [ %13, %18 ], !dbg !1921
  call void @llvm.dbg.value(metadata i8* %23, metadata !325, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1941
  ret i8* %23, !dbg !1942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #8 !dbg !1943 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1946, !tbaa !1104
  %2 = tail call i8* @gai_strerror(i32 %1) #28, !dbg !1947
  ret i8* %2, !dbg !1948
}

; Function Attrs: nounwind
declare !dbg !1949 i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #15 !dbg !1952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i8* %0, i8** @file_name, align 8, !dbg !1956, !tbaa !909
  ret void, !dbg !1957
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #15 !dbg !1958 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1962, metadata !DIExpression()), !dbg !1963
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1964, !tbaa !1965
  ret void, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1968 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1973, !tbaa !909
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1974
  %3 = icmp eq i32 %2, 0, !dbg !1975
  br i1 %3, label %22, label %4, !dbg !1976

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1977, !tbaa !1965, !range !1978
  %6 = icmp eq i8 %5, 0, !dbg !1977
  br i1 %6, label %11, label %7, !dbg !1979

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1980
  %9 = load i32, i32* %8, align 4, !dbg !1980, !tbaa !1104
  %10 = icmp eq i32 %9, 32, !dbg !1981
  br i1 %10, label %22, label %11, !dbg !1982

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i32 5) #28, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %12, metadata !1970, metadata !DIExpression()), !dbg !1984
  %13 = load i8*, i8** @file_name, align 8, !dbg !1985, !tbaa !909
  %14 = icmp eq i8* %13, null, !dbg !1985
  %15 = tail call i32* @__errno_location() #32, !dbg !1987
  %16 = load i32, i32* %15, align 4, !dbg !1987, !tbaa !1104
  br i1 %14, label %19, label %17, !dbg !1988

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1989
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1990
  br label %20, !dbg !1990

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.102, i64 0, i64 0), i8* %12) #28, !dbg !1991
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1992, !tbaa !1104
  tail call void @_exit(i32 %21) #30, !dbg !1993
  unreachable, !dbg !1993

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1994, !tbaa !909
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1996
  %25 = icmp eq i32 %24, 0, !dbg !1997
  br i1 %25, label %28, label %26, !dbg !1998

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1999, !tbaa !1104
  tail call void @_exit(i32 %27) #30, !dbg !2000
  unreachable, !dbg !2000

28:                                               ; preds = %22
  ret void, !dbg !2001
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2002 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2006
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2007
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !2007
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2005, metadata !DIExpression()), !dbg !2008
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !2009
  %5 = icmp eq i32 %4, 0, !dbg !2009
  br i1 %5, label %6, label %13, !dbg !2011

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2012
  %8 = load i16, i16* %7, align 16, !dbg !2012
  %9 = icmp eq i16 %8, 67, !dbg !2012
  br i1 %9, label %13, label %10, !dbg !2013

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0), i64 6), !dbg !2014
  %12 = icmp ne i32 %11, 0, !dbg !2015
  br label %13, !dbg !2013

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !2016
  ret i1 %14, !dbg !2016
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @imaxtostr(i64 %0, i8* %1) local_unnamed_addr #18 !dbg !2017 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %1, metadata !2023, metadata !DIExpression()), !dbg !2025
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %3, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i8 0, i8* %3, align 1, !dbg !2027, !tbaa !1185
  %4 = icmp slt i64 %0, 0, !dbg !2028
  br i1 %4, label %5, label %17, !dbg !2030

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8* %7, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %6, metadata !2022, metadata !DIExpression()), !dbg !2025
  %8 = srem i64 %6, 10, !dbg !2031
  %9 = trunc i64 %8 to i8, !dbg !2033
  %10 = sub nsw i8 48, %9, !dbg !2033
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2034
  call void @llvm.dbg.value(metadata i8* %11, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i8 %10, i8* %11, align 1, !dbg !2035, !tbaa !1185
  %12 = sdiv i64 %6, 10, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %12, metadata !2022, metadata !DIExpression()), !dbg !2025
  %13 = add i64 %6, 9, !dbg !2037
  %14 = icmp ult i64 %13, 19, !dbg !2037
  br i1 %14, label %15, label %5, !dbg !2038, !llvm.loop !2039

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2042
  call void @llvm.dbg.value(metadata i8* %16, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i8 45, i8* %16, align 1, !dbg !2043, !tbaa !1185
  br label %27, !dbg !2044

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8* %19, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %18, metadata !2022, metadata !DIExpression()), !dbg !2025
  %20 = srem i64 %18, 10, !dbg !2045
  %21 = trunc i64 %20 to i8, !dbg !2047
  %22 = add nsw i8 %21, 48, !dbg !2047
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2048
  call void @llvm.dbg.value(metadata i8* %23, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i8 %22, i8* %23, align 1, !dbg !2049, !tbaa !1185
  %24 = sdiv i64 %18, 10, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %24, metadata !2022, metadata !DIExpression()), !dbg !2025
  %25 = add i64 %18, 9, !dbg !2051
  %26 = icmp ult i64 %25, 19, !dbg !2051
  br i1 %26, label %27, label %17, !dbg !2052, !llvm.loop !2053

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2056
  call void @llvm.dbg.value(metadata i8* %28, metadata !2024, metadata !DIExpression()), !dbg !2025
  ret i8* %28, !dbg !2057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()), !dbg !2063
  %2 = icmp eq i8* %0, null, !dbg !2064
  br i1 %2, label %3, label %6, !dbg !2066

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2067, !tbaa !909
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.114, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !2069
  tail call void @abort() #30, !dbg !2070
  unreachable, !dbg !2070

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %7, metadata !2061, metadata !DIExpression()), !dbg !2063
  %8 = icmp eq i8* %7, null, !dbg !2072
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2073
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %10, metadata !2062, metadata !DIExpression()), !dbg !2063
  %11 = ptrtoint i8* %10 to i64, !dbg !2074
  %12 = ptrtoint i8* %0 to i64, !dbg !2074
  %13 = sub i64 %11, %12, !dbg !2074
  %14 = icmp sgt i64 %13, 6, !dbg !2076
  br i1 %14, label %15, label %24, !dbg !2077

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2078
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.115, i64 0, i64 0), i64 7) #29, !dbg !2079
  %18 = icmp eq i32 %17, 0, !dbg !2080
  br i1 %18, label %19, label %24, !dbg !2081

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2060, metadata !DIExpression()), !dbg !2063
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.116, i64 0, i64 0), i64 3) #29, !dbg !2082
  %21 = icmp eq i32 %20, 0, !dbg !2085
  br i1 %21, label %22, label %24, !dbg !2086

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2087
  call void @llvm.dbg.value(metadata i8* %23, metadata !2060, metadata !DIExpression()), !dbg !2063
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2089, !tbaa !909
  br label %24, !dbg !2090

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2060, metadata !DIExpression()), !dbg !2063
  store i8* %25, i8** @program_name, align 8, !dbg !2091, !tbaa !909
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2092, !tbaa !909
  ret void, !dbg !2093
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2094 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2099, metadata !DIExpression()), !dbg !2102
  %2 = tail call i32* @__errno_location() #32, !dbg !2103
  %3 = load i32, i32* %2, align 4, !dbg !2103, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %3, metadata !2100, metadata !DIExpression()), !dbg !2102
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2104
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2104
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2104
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !2105
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2105
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2101, metadata !DIExpression()), !dbg !2102
  store i32 %3, i32* %2, align 4, !dbg !2106, !tbaa !1104
  ret %struct.quoting_options* %8, !dbg !2107
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #20 !dbg !2108 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2114, metadata !DIExpression()), !dbg !2115
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2116
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2116
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2117
  %5 = load i32, i32* %4, align 8, !dbg !2117, !tbaa !2118
  ret i32 %5, !dbg !2120
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !2121 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %1, metadata !2126, metadata !DIExpression()), !dbg !2127
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2128
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2128
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2129
  store i32 %1, i32* %5, align 8, !dbg !2130, !tbaa !2118
  ret void, !dbg !2131
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #21 !dbg !2132 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2136, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %1, metadata !2137, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %2, metadata !2138, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %1, metadata !2139, metadata !DIExpression()), !dbg !2144
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2145
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2145
  %6 = lshr i8 %1, 5, !dbg !2146
  %7 = zext i8 %6 to i64, !dbg !2146
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2147
  call void @llvm.dbg.value(metadata i32* %8, metadata !2140, metadata !DIExpression()), !dbg !2144
  %9 = and i8 %1, 31, !dbg !2148
  %10 = zext i8 %9 to i32, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %10, metadata !2142, metadata !DIExpression()), !dbg !2144
  %11 = load i32, i32* %8, align 4, !dbg !2149, !tbaa !1104
  %12 = lshr i32 %11, %10, !dbg !2150
  %13 = and i32 %12, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %13, metadata !2143, metadata !DIExpression()), !dbg !2144
  %14 = and i32 %2, 1, !dbg !2152
  %15 = xor i32 %13, %14, !dbg !2153
  %16 = shl i32 %15, %10, !dbg !2154
  %17 = xor i32 %16, %11, !dbg !2155
  store i32 %17, i32* %8, align 4, !dbg !2155, !tbaa !1104
  ret i32 %13, !dbg !2156
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #21 !dbg !2157 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1, metadata !2162, metadata !DIExpression()), !dbg !2164
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2165
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2161, metadata !DIExpression()), !dbg !2164
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2168
  %6 = load i32, i32* %5, align 4, !dbg !2168, !tbaa !2169
  call void @llvm.dbg.value(metadata i32 %6, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i32 %1, i32* %5, align 4, !dbg !2170, !tbaa !2169
  ret i32 %6, !dbg !2171
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2172 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %1, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !2178, metadata !DIExpression()), !dbg !2179
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2180
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2176, metadata !DIExpression()), !dbg !2179
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2183
  store i32 10, i32* %6, align 8, !dbg !2184, !tbaa !2118
  %7 = icmp ne i8* %1, null, !dbg !2185
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2187
  br i1 %9, label %11, label %10, !dbg !2187

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !2188
  unreachable, !dbg !2188

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2189
  store i8* %1, i8** %12, align 8, !dbg !2190, !tbaa !2191
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2192
  store i8* %2, i8** %13, align 8, !dbg !2193, !tbaa !2194
  ret void, !dbg !2195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2196 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2200, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2201, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %2, metadata !2202, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %3, metadata !2203, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2204, metadata !DIExpression()), !dbg !2208
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2209
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2205, metadata !DIExpression()), !dbg !2208
  %8 = tail call i32* @__errno_location() #32, !dbg !2210
  %9 = load i32, i32* %8, align 4, !dbg !2210, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %9, metadata !2206, metadata !DIExpression()), !dbg !2208
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2211
  %11 = load i32, i32* %10, align 8, !dbg !2211, !tbaa !2118
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2212
  %13 = load i32, i32* %12, align 4, !dbg !2212, !tbaa !2169
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2213
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2214
  %16 = load i8*, i8** %15, align 8, !dbg !2214, !tbaa !2191
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2215
  %18 = load i8*, i8** %17, align 8, !dbg !2215, !tbaa !2194
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2216
  call void @llvm.dbg.value(metadata i64 %19, metadata !2207, metadata !DIExpression()), !dbg !2208
  store i32 %9, i32* %8, align 4, !dbg !2217, !tbaa !1104
  ret i64 %19, !dbg !2218
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2219 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2225, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %1, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %2, metadata !2227, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %3, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %4, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %5, metadata !2230, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32* %6, metadata !2231, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %7, metadata !2232, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %8, metadata !2233, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* null, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2239, metadata !DIExpression()), !dbg !2292
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !2293
  %14 = icmp eq i64 %13, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i1 %14, metadata !2240, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2292
  %15 = lshr i32 %5, 1, !dbg !2295
  %16 = trunc i32 %15 to i8, !dbg !2295
  %17 = and i8 %16, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i8 %17, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2244, metadata !DIExpression()), !dbg !2292
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2296

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2297
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2298
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2299
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2300
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2292
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2301
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2302
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2303
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %38, metadata !2244, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %37, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %36, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %35, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %34, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %33, metadata !2239, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %32, metadata !2238, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %31, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %30, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %29, metadata !2233, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %28, metadata !2232, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %27, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2286), !dbg !2304
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
  ], !dbg !2305

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 5, metadata !2229, metadata !DIExpression()), !dbg !2292
  br label %92, !dbg !2306

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 5, metadata !2229, metadata !DIExpression()), !dbg !2292
  %42 = and i8 %35, 1, !dbg !2308
  %43 = icmp eq i8 %42, 0, !dbg !2308
  br i1 %43, label %44, label %92, !dbg !2306

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2310
  br i1 %45, label %92, label %46, !dbg !2313

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2310, !tbaa !1185
  br label %92, !dbg !2310

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.127, i64 0, i64 0), i32 %27), !dbg !2314
  call void @llvm.dbg.value(metadata i8* %48, metadata !2232, metadata !DIExpression()), !dbg !2292
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), i32 %27), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %49, metadata !2233, metadata !DIExpression()), !dbg !2292
  br label %50, !dbg !2319

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2233, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %51, metadata !2232, metadata !DIExpression()), !dbg !2292
  %53 = and i8 %35, 1, !dbg !2320
  %54 = icmp eq i8 %53, 0, !dbg !2320
  br i1 %54, label %55, label %70, !dbg !2322

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2292
  %56 = load i8, i8* %51, align 1, !dbg !2323, !tbaa !1185
  %57 = icmp eq i8 %56, 0, !dbg !2326
  br i1 %57, label %70, label %58, !dbg !2326

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %61, metadata !2235, metadata !DIExpression()), !dbg !2292
  %62 = icmp ult i64 %61, %39, !dbg !2327
  br i1 %62, label %63, label %65, !dbg !2330

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2327
  store i8 %59, i8* %64, align 1, !dbg !2327, !tbaa !1185
  br label %65, !dbg !2327

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %66, metadata !2235, metadata !DIExpression()), !dbg !2292
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %67, metadata !2237, metadata !DIExpression()), !dbg !2292
  %68 = load i8, i8* %67, align 1, !dbg !2323, !tbaa !1185
  %69 = icmp eq i8 %68, 0, !dbg !2326
  br i1 %69, label %70, label %58, !dbg !2326, !llvm.loop !2332

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2334
  call void @llvm.dbg.value(metadata i64 %71, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2239, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %52, metadata !2237, metadata !DIExpression()), !dbg !2292
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %72, metadata !2238, metadata !DIExpression()), !dbg !2292
  br label %92, !dbg !2336

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2239, metadata !DIExpression()), !dbg !2292
  br label %74, !dbg !2337

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %75, metadata !2239, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2241, metadata !DIExpression()), !dbg !2292
  br label %76, !dbg !2338

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2300
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %78, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %77, metadata !2239, metadata !DIExpression()), !dbg !2292
  %79 = and i8 %78, 1, !dbg !2339
  %80 = icmp eq i8 %79, 0, !dbg !2339
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2341
  br label %82, !dbg !2341

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2292
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %84, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %83, metadata !2239, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 2, metadata !2229, metadata !DIExpression()), !dbg !2292
  %85 = and i8 %84, 1, !dbg !2342
  %86 = icmp eq i8 %85, 0, !dbg !2342
  br i1 %86, label %87, label %92, !dbg !2344

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2345
  br i1 %88, label %92, label %89, !dbg !2348

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2345, !tbaa !1185
  br label %92, !dbg !2345

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2241, metadata !DIExpression()), !dbg !2292
  br label %92, !dbg !2349

91:                                               ; preds = %26
  call void @abort() #30, !dbg !2350
  unreachable, !dbg !2350

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2334
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), %40 ], !dbg !2292
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2292
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2292
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %100, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %99, metadata !2239, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %98, metadata !2238, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %97, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %96, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %95, metadata !2233, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %94, metadata !2232, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %93, metadata !2229, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2234, metadata !DIExpression()), !dbg !2292
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
  br label %121, !dbg !2351

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2352
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2334
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2297
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2301
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2302
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2303
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %128, metadata !2244, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %127, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %126, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %125, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %124, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %123, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %122, metadata !2234, metadata !DIExpression()), !dbg !2292
  %130 = icmp eq i64 %125, -1, !dbg !2353
  br i1 %130, label %131, label %135, !dbg !2354

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2355
  %133 = load i8, i8* %132, align 1, !dbg !2355, !tbaa !1185
  %134 = icmp eq i8 %133, 0, !dbg !2356
  br i1 %134, label %587, label %137, !dbg !2357

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2358
  br i1 %136, label %587, label %137, !dbg !2357

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2359
  br i1 %106, label %138, label %153, !dbg !2360

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2362
  %140 = and i1 %107, %130, !dbg !2363
  br i1 %140, label %141, label %143, !dbg !2363

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %142, metadata !2228, metadata !DIExpression()), !dbg !2292
  br label %143, !dbg !2365

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2365
  call void @llvm.dbg.value(metadata i64 %144, metadata !2228, metadata !DIExpression()), !dbg !2292
  %145 = icmp ugt i64 %139, %144, !dbg !2366
  br i1 %145, label %153, label %146, !dbg !2367

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2368
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2369
  %149 = icmp ne i32 %148, 0, !dbg !2370
  %150 = or i1 %149, %109, !dbg !2371
  %151 = xor i1 %149, true, !dbg !2371
  %152 = zext i1 %151 to i8, !dbg !2371
  br i1 %150, label %153, label %646, !dbg !2371

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2359
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2359
  call void @llvm.dbg.value(metadata i8 %156, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %154, metadata !2228, metadata !DIExpression()), !dbg !2292
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2372
  %158 = load i8, i8* %157, align 1, !dbg !2372, !tbaa !1185
  call void @llvm.dbg.value(metadata i8 %158, metadata !2245, metadata !DIExpression()), !dbg !2359
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
  ], !dbg !2373

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2374

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2375

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2251, metadata !DIExpression()), !dbg !2359
  %162 = and i8 %126, 1, !dbg !2379
  %163 = icmp eq i8 %162, 0, !dbg !2379
  %164 = and i1 %110, %163, !dbg !2379
  br i1 %164, label %165, label %181, !dbg !2379

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2381
  br i1 %166, label %167, label %169, !dbg !2385

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2381
  store i8 39, i8* %168, align 1, !dbg !2381, !tbaa !1185
  br label %169, !dbg !2381

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %170, metadata !2235, metadata !DIExpression()), !dbg !2292
  %171 = icmp ult i64 %170, %129, !dbg !2386
  br i1 %171, label %172, label %174, !dbg !2389

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2386
  store i8 36, i8* %173, align 1, !dbg !2386, !tbaa !1185
  br label %174, !dbg !2386

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %175, metadata !2235, metadata !DIExpression()), !dbg !2292
  %176 = icmp ult i64 %175, %129, !dbg !2390
  br i1 %176, label %177, label %179, !dbg !2393

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2390
  store i8 39, i8* %178, align 1, !dbg !2390, !tbaa !1185
  br label %179, !dbg !2390

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %180, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %181, !dbg !2394

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2292
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %183, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %182, metadata !2235, metadata !DIExpression()), !dbg !2292
  %184 = icmp ult i64 %182, %129, !dbg !2395
  br i1 %184, label %185, label %187, !dbg !2398

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2395
  store i8 92, i8* %186, align 1, !dbg !2395, !tbaa !1185
  br label %187, !dbg !2395

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %188, metadata !2235, metadata !DIExpression()), !dbg !2292
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2399
  br i1 %191, label %192, label %473, !dbg !2399

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2401
  %194 = load i8, i8* %193, align 1, !dbg !2401, !tbaa !1185
  %195 = add i8 %194, -48, !dbg !2402
  %196 = icmp ult i8 %195, 10, !dbg !2402
  br i1 %196, label %197, label %473, !dbg !2402

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2403
  br i1 %198, label %199, label %201, !dbg !2407

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2403
  store i8 48, i8* %200, align 1, !dbg !2403, !tbaa !1185
  br label %201, !dbg !2403

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %202, metadata !2235, metadata !DIExpression()), !dbg !2292
  %203 = icmp ult i64 %202, %129, !dbg !2408
  br i1 %203, label %204, label %206, !dbg !2411

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2408
  store i8 48, i8* %205, align 1, !dbg !2408, !tbaa !1185
  br label %206, !dbg !2408

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %207, metadata !2235, metadata !DIExpression()), !dbg !2292
  br label %473, !dbg !2412

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2413

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2414

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2415

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2417
  br i1 %214, label %215, label %473, !dbg !2417

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2419
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2420
  %218 = load i8, i8* %217, align 1, !dbg !2420, !tbaa !1185
  %219 = icmp eq i8 %218, 63, !dbg !2421
  br i1 %219, label %220, label %473, !dbg !2422

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2423
  %222 = load i8, i8* %221, align 1, !dbg !2423, !tbaa !1185
  %223 = sext i8 %222 to i32, !dbg !2423
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
  ], !dbg !2424

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2425

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 undef, metadata !2234, metadata !DIExpression()), !dbg !2292
  %226 = icmp ult i64 %123, %129, !dbg !2427
  br i1 %226, label %227, label %229, !dbg !2430

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2427
  store i8 63, i8* %228, align 1, !dbg !2427, !tbaa !1185
  br label %229, !dbg !2427

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %230, metadata !2235, metadata !DIExpression()), !dbg !2292
  %231 = icmp ult i64 %230, %129, !dbg !2431
  br i1 %231, label %232, label %234, !dbg !2434

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2431
  store i8 34, i8* %233, align 1, !dbg !2431, !tbaa !1185
  br label %234, !dbg !2431

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %235, metadata !2235, metadata !DIExpression()), !dbg !2292
  %236 = icmp ult i64 %235, %129, !dbg !2435
  br i1 %236, label %237, label %239, !dbg !2438

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2435
  store i8 34, i8* %238, align 1, !dbg !2435, !tbaa !1185
  br label %239, !dbg !2435

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %240, metadata !2235, metadata !DIExpression()), !dbg !2292
  %241 = icmp ult i64 %240, %129, !dbg !2439
  br i1 %241, label %242, label %244, !dbg !2442

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2439
  store i8 63, i8* %243, align 1, !dbg !2439, !tbaa !1185
  br label %244, !dbg !2439

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %245, metadata !2235, metadata !DIExpression()), !dbg !2292
  br label %473, !dbg !2443

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2249, metadata !DIExpression()), !dbg !2359
  br label %256, !dbg !2444

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2249, metadata !DIExpression()), !dbg !2359
  br label %256, !dbg !2445

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2249, metadata !DIExpression()), !dbg !2359
  br label %254, !dbg !2446

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2249, metadata !DIExpression()), !dbg !2359
  br label %254, !dbg !2447

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2249, metadata !DIExpression()), !dbg !2359
  br label %256, !dbg !2448

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2249, metadata !DIExpression()), !dbg !2359
  br i1 %110, label %252, label %253, !dbg !2449

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2450

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2453

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2455
  call void @llvm.dbg.value(metadata i8 %255, metadata !2249, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.label(metadata !2287), !dbg !2456
  br i1 %111, label %256, label %631, !dbg !2457

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2455
  call void @llvm.dbg.value(metadata i8 %257, metadata !2249, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.label(metadata !2288), !dbg !2459
  br i1 %102, label %495, label %473, !dbg !2460

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2461

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2462, !tbaa !1185
  %261 = icmp eq i8 %260, 0, !dbg !2464
  br i1 %261, label %262, label %473, !dbg !2465

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2466
  br i1 %263, label %264, label %473, !dbg !2468

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2252, metadata !DIExpression()), !dbg !2359
  br label %265, !dbg !2469

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2359
  call void @llvm.dbg.value(metadata i8 %266, metadata !2252, metadata !DIExpression()), !dbg !2359
  br i1 %111, label %473, label %631, !dbg !2470

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2252, metadata !DIExpression()), !dbg !2359
  br i1 %110, label %268, label %473, !dbg !2472

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2473

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2476
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2478
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2478
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %274, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %273, metadata !2236, metadata !DIExpression()), !dbg !2292
  %275 = icmp ult i64 %123, %274, !dbg !2479
  br i1 %275, label %276, label %278, !dbg !2482

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2479
  store i8 39, i8* %277, align 1, !dbg !2479, !tbaa !1185
  br label %278, !dbg !2479

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %279, metadata !2235, metadata !DIExpression()), !dbg !2292
  %280 = icmp ult i64 %279, %274, !dbg !2483
  br i1 %280, label %281, label %283, !dbg !2486

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2483
  store i8 92, i8* %282, align 1, !dbg !2483, !tbaa !1185
  br label %283, !dbg !2483

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %284, metadata !2235, metadata !DIExpression()), !dbg !2292
  %285 = icmp ult i64 %284, %274, !dbg !2487
  br i1 %285, label %286, label %288, !dbg !2490

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2487
  store i8 39, i8* %287, align 1, !dbg !2487, !tbaa !1185
  br label %288, !dbg !2487

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %289, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %473, !dbg !2491

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2492

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2253, metadata !DIExpression()), !dbg !2493
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2494
  %293 = load i16*, i16** %292, align 8, !dbg !2494, !tbaa !909
  %294 = zext i8 %158 to i64, !dbg !2494
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2494
  %296 = load i16, i16* %295, align 2, !dbg !2494, !tbaa !2496
  %297 = lshr i16 %296, 14, !dbg !2497
  %298 = trunc i16 %297 to i8, !dbg !2497
  %299 = and i8 %298, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i8 %354, metadata !2256, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %355, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %306, metadata !2228, metadata !DIExpression()), !dbg !2292
  %300 = icmp eq i8 %299, 0, !dbg !2498
  call void @llvm.dbg.value(metadata i1 %357, metadata !2252, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2359
  br label %359, !dbg !2499

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2257, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8* %23, metadata !2502, metadata !DIExpression()) #28, !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !2507, metadata !DIExpression()) #28, !dbg !2509
  call void @llvm.dbg.value(metadata i64 8, metadata !2508, metadata !DIExpression()) #28, !dbg !2509
  store i64 0, i64* %10, align 8, !dbg !2511
  call void @llvm.dbg.value(metadata i64 0, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 1, metadata !2256, metadata !DIExpression()), !dbg !2493
  %302 = icmp eq i64 %154, -1, !dbg !2512
  br i1 %302, label %303, label %305, !dbg !2514

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %304, metadata !2228, metadata !DIExpression()), !dbg !2292
  br label %305, !dbg !2516

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2359
  call void @llvm.dbg.value(metadata i64 %306, metadata !2228, metadata !DIExpression()), !dbg !2292
  br label %307, !dbg !2517

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2518
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2519
  call void @llvm.dbg.value(metadata i8 %309, metadata !2256, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %308, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2520
  %310 = add i64 %308, %122, !dbg !2521
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2522
  %312 = sub i64 %306, %310, !dbg !2523
  call void @llvm.dbg.value(metadata i32* %12, metadata !2272, metadata !DIExpression(DW_OP_deref)), !dbg !2524
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %313, metadata !2275, metadata !DIExpression()), !dbg !2524
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2526

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2253, metadata !DIExpression()), !dbg !2493
  %315 = icmp ugt i64 %306, %310, !dbg !2527
  br i1 %315, label %316, label %341, !dbg !2529

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2530
  br label %318, !dbg !2530

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2253, metadata !DIExpression()), !dbg !2493
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2531
  %322 = load i8, i8* %321, align 1, !dbg !2531, !tbaa !1185
  %323 = icmp eq i8 %322, 0, !dbg !2529
  br i1 %323, label %341, label %324, !dbg !2530

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %325, metadata !2253, metadata !DIExpression()), !dbg !2493
  %326 = add i64 %325, %122, !dbg !2533
  %327 = icmp ult i64 %326, %306, !dbg !2527
  br i1 %327, label %318, label %341, !dbg !2529, !llvm.loop !2534

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2535
  call void @llvm.dbg.value(metadata i64 1, metadata !2276, metadata !DIExpression()), !dbg !2536
  br i1 %330, label %331, label %344, !dbg !2535

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2276, metadata !DIExpression()), !dbg !2536
  %333 = add i64 %332, %310, !dbg !2537
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2540
  %335 = load i8, i8* %334, align 1, !dbg !2540, !tbaa !1185
  %336 = sext i8 %335 to i32, !dbg !2540
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2541

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %338, metadata !2276, metadata !DIExpression()), !dbg !2536
  %339 = icmp eq i64 %338, %313, !dbg !2543
  br i1 %339, label %344, label %331, !dbg !2544, !llvm.loop !2545

340:                                              ; preds = %307
  br label %341, !dbg !2547

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2256, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 undef, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2547
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2548, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %345, metadata !2272, metadata !DIExpression()), !dbg !2524
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2550
  %347 = icmp eq i32 %346, 0, !dbg !2550
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2551
  call void @llvm.dbg.value(metadata i8 %348, metadata !2256, metadata !DIExpression()), !dbg !2493
  %349 = add i64 %313, %308, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %349, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2547
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !2553
  %351 = icmp eq i32 %350, 0, !dbg !2554
  br i1 %351, label %307, label %353, !dbg !2555, !llvm.loop !2556

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2256, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 undef, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2558
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2558
  call void @llvm.dbg.value(metadata i8 %354, metadata !2256, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %355, metadata !2253, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %306, metadata !2228, metadata !DIExpression()), !dbg !2292
  %356 = and i8 %354, 1, !dbg !2498
  %357 = icmp eq i8 %356, 0, !dbg !2498
  call void @llvm.dbg.value(metadata i1 %357, metadata !2252, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2359
  %358 = icmp ugt i64 %355, 1, !dbg !2559
  br i1 %358, label %367, label %359, !dbg !2499

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2560
  br i1 %364, label %367, label %365, !dbg !2560

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i8 %472, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %441, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %440, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %439, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %438, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %371, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %437, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %375, metadata !2234, metadata !DIExpression()), !dbg !2292
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %372, metadata !2283, metadata !DIExpression()), !dbg !2562
  %373 = and i1 %102, %368
  br label %374, !dbg !2563

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2352
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2292
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2301
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2359
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2359
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2564
  call void @llvm.dbg.value(metadata i8 %380, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %379, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %378, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %377, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %376, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %375, metadata !2234, metadata !DIExpression()), !dbg !2292
  br i1 %373, label %381, label %427, !dbg !2565

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2570

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2251, metadata !DIExpression()), !dbg !2359
  %383 = and i8 %377, 1, !dbg !2573
  %384 = icmp eq i8 %383, 0, !dbg !2573
  %385 = and i1 %110, %384, !dbg !2573
  br i1 %385, label %386, label %402, !dbg !2573

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2575
  br i1 %387, label %388, label %390, !dbg !2579

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2575
  store i8 39, i8* %389, align 1, !dbg !2575, !tbaa !1185
  br label %390, !dbg !2575

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %391, metadata !2235, metadata !DIExpression()), !dbg !2292
  %392 = icmp ult i64 %391, %129, !dbg !2580
  br i1 %392, label %393, label %395, !dbg !2583

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2580
  store i8 36, i8* %394, align 1, !dbg !2580, !tbaa !1185
  br label %395, !dbg !2580

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %396, metadata !2235, metadata !DIExpression()), !dbg !2292
  %397 = icmp ult i64 %396, %129, !dbg !2584
  br i1 %397, label %398, label %400, !dbg !2587

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2584
  store i8 39, i8* %399, align 1, !dbg !2584, !tbaa !1185
  br label %400, !dbg !2584

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %401, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %402, !dbg !2588

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2292
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %404, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %403, metadata !2235, metadata !DIExpression()), !dbg !2292
  %405 = icmp ult i64 %403, %129, !dbg !2589
  br i1 %405, label %406, label %408, !dbg !2592

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2589
  store i8 92, i8* %407, align 1, !dbg !2589, !tbaa !1185
  br label %408, !dbg !2589

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %409, metadata !2235, metadata !DIExpression()), !dbg !2292
  %410 = icmp ult i64 %409, %129, !dbg !2593
  br i1 %410, label %411, label %415, !dbg !2596

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2593
  %413 = or i8 %412, 48, !dbg !2593
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2593
  store i8 %413, i8* %414, align 1, !dbg !2593, !tbaa !1185
  br label %415, !dbg !2593

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %416, metadata !2235, metadata !DIExpression()), !dbg !2292
  %417 = icmp ult i64 %416, %129, !dbg !2597
  br i1 %417, label %418, label %423, !dbg !2600

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2597
  %420 = and i8 %419, 7, !dbg !2597
  %421 = or i8 %420, 48, !dbg !2597
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2597
  store i8 %421, i8* %422, align 1, !dbg !2597, !tbaa !1185
  br label %423, !dbg !2597

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %424, metadata !2235, metadata !DIExpression()), !dbg !2292
  %425 = and i8 %378, 7, !dbg !2601
  %426 = or i8 %425, 48, !dbg !2602
  call void @llvm.dbg.value(metadata i8 %426, metadata !2245, metadata !DIExpression()), !dbg !2359
  br label %436, !dbg !2603

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2604
  %429 = icmp eq i8 %428, 0, !dbg !2604
  br i1 %429, label %436, label %430, !dbg !2606

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2607
  br i1 %431, label %432, label %434, !dbg !2611

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2607
  store i8 92, i8* %433, align 1, !dbg !2607, !tbaa !1185
  br label %434, !dbg !2607

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %435, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2359
  br label %436, !dbg !2612

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2292
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2301
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2359
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2359
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2359
  call void @llvm.dbg.value(metadata i8 %441, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %440, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %439, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %438, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %437, metadata !2235, metadata !DIExpression()), !dbg !2292
  %442 = add i64 %375, 1, !dbg !2613
  %443 = icmp ugt i64 %372, %442, !dbg !2615
  br i1 %443, label %444, label %471, !dbg !2616

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2617
  %446 = icmp ne i8 %445, 0, !dbg !2617
  %447 = and i8 %441, 1, !dbg !2617
  %448 = icmp eq i8 %447, 0, !dbg !2617
  %449 = and i1 %446, %448, !dbg !2617
  br i1 %449, label %450, label %461, !dbg !2617

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2620
  br i1 %451, label %452, label %454, !dbg !2624

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2620
  store i8 39, i8* %453, align 1, !dbg !2620, !tbaa !1185
  br label %454, !dbg !2620

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %455, metadata !2235, metadata !DIExpression()), !dbg !2292
  %456 = icmp ult i64 %455, %129, !dbg !2625
  br i1 %456, label %457, label %459, !dbg !2628

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2625
  store i8 39, i8* %458, align 1, !dbg !2625, !tbaa !1185
  br label %459, !dbg !2625

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %460, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %461, !dbg !2629

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2630
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %463, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %462, metadata !2235, metadata !DIExpression()), !dbg !2292
  %464 = icmp ult i64 %462, %129, !dbg !2631
  br i1 %464, label %465, label %467, !dbg !2634

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2631
  store i8 %439, i8* %466, align 1, !dbg !2631, !tbaa !1185
  br label %467, !dbg !2631

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %468, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %442, metadata !2234, metadata !DIExpression()), !dbg !2292
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2635
  %470 = load i8, i8* %469, align 1, !dbg !2635, !tbaa !1185
  call void @llvm.dbg.value(metadata i8 %470, metadata !2245, metadata !DIExpression()), !dbg !2359
  br label %374, !dbg !2636, !llvm.loop !2637

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i8 %472, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %441, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %440, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %439, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %438, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %371, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %437, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %375, metadata !2234, metadata !DIExpression()), !dbg !2292
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2352
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2292
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2297
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2640
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2292
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2292
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2359
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2359
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2359
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %482, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %481, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %156, metadata !2250, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %480, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %479, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %478, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %477, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %476, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %475, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %474, metadata !2234, metadata !DIExpression()), !dbg !2292
  br i1 %116, label %494, label %484, !dbg !2641

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2643
  %486 = zext i8 %485 to i64, !dbg !2643
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2644
  %488 = load i32, i32* %487, align 4, !dbg !2644, !tbaa !1104
  %489 = and i8 %480, 31, !dbg !2645
  %490 = zext i8 %489 to i32, !dbg !2645
  %491 = shl nuw i32 1, %490, !dbg !2646
  %492 = and i32 %488, %491, !dbg !2646
  %493 = icmp eq i32 %492, 0, !dbg !2646
  br i1 %493, label %494, label %495, !dbg !2647

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2648

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2649
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2292
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2297
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2640
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2301
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2302
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2359
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2359
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %503, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %502, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %501, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %500, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %499, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %498, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %497, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %496, metadata !2234, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2289), !dbg !2650
  br i1 %109, label %505, label %635, !dbg !2651

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2251, metadata !DIExpression()), !dbg !2359
  %506 = and i8 %500, 1, !dbg !2653
  %507 = icmp eq i8 %506, 0, !dbg !2653
  %508 = and i1 %110, %507, !dbg !2653
  br i1 %508, label %509, label %525, !dbg !2653

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2655
  br i1 %510, label %511, label %513, !dbg !2659

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2655
  store i8 39, i8* %512, align 1, !dbg !2655, !tbaa !1185
  br label %513, !dbg !2655

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %514, metadata !2235, metadata !DIExpression()), !dbg !2292
  %515 = icmp ult i64 %514, %504, !dbg !2660
  br i1 %515, label %516, label %518, !dbg !2663

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2660
  store i8 36, i8* %517, align 1, !dbg !2660, !tbaa !1185
  br label %518, !dbg !2660

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %519, metadata !2235, metadata !DIExpression()), !dbg !2292
  %520 = icmp ult i64 %519, %504, !dbg !2664
  br i1 %520, label %521, label %523, !dbg !2667

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2664
  store i8 39, i8* %522, align 1, !dbg !2664, !tbaa !1185
  br label %523, !dbg !2664

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %524, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 1, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %525, !dbg !2668

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2359
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %527, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %526, metadata !2235, metadata !DIExpression()), !dbg !2292
  %528 = icmp ult i64 %526, %504, !dbg !2669
  br i1 %528, label %529, label %531, !dbg !2672

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2669
  store i8 92, i8* %530, align 1, !dbg !2669, !tbaa !1185
  br label %531, !dbg !2669

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %543, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %542, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %541, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %540, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %539, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %538, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %537, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %536, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %535, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %534, metadata !2234, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2290), !dbg !2673
  br label %560, !dbg !2674

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2649
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2292
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2297
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2640
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2301
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2302
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2677
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2359
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2359
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %542, metadata !2252, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %541, metadata !2251, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %540, metadata !2245, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %539, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %538, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %537, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %536, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %535, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %534, metadata !2234, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2290), !dbg !2673
  %544 = and i8 %538, 1, !dbg !2674
  %545 = icmp ne i8 %544, 0, !dbg !2674
  %546 = and i8 %541, 1, !dbg !2674
  %547 = icmp eq i8 %546, 0, !dbg !2674
  %548 = and i1 %545, %547, !dbg !2674
  br i1 %548, label %549, label %560, !dbg !2674

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2678
  br i1 %550, label %551, label %553, !dbg !2682

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2678
  store i8 39, i8* %552, align 1, !dbg !2678, !tbaa !1185
  br label %553, !dbg !2678

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %554, metadata !2235, metadata !DIExpression()), !dbg !2292
  %555 = icmp ult i64 %554, %543, !dbg !2683
  br i1 %555, label %556, label %558, !dbg !2686

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2683
  store i8 39, i8* %557, align 1, !dbg !2683, !tbaa !1185
  br label %558, !dbg !2683

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %559, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2292
  br label %560, !dbg !2687

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2359
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2292
  call void @llvm.dbg.value(metadata i8 %569, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %568, metadata !2235, metadata !DIExpression()), !dbg !2292
  %570 = icmp ult i64 %568, %561, !dbg !2688
  br i1 %570, label %571, label %573, !dbg !2691

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2688
  store i8 %563, i8* %572, align 1, !dbg !2688, !tbaa !1185
  br label %573, !dbg !2688

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %574, metadata !2235, metadata !DIExpression()), !dbg !2292
  %575 = icmp eq i8 %562, 0, !dbg !2692
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2694
  call void @llvm.dbg.value(metadata i8 %576, metadata !2244, metadata !DIExpression()), !dbg !2292
  br label %577, !dbg !2695

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2649
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2292
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2297
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2640
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2301
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2292
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2303
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %584, metadata !2244, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %583, metadata !2243, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %582, metadata !2242, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %581, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %580, metadata !2236, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %579, metadata !2235, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %578, metadata !2234, metadata !DIExpression()), !dbg !2292
  %586 = add i64 %578, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %586, metadata !2234, metadata !DIExpression()), !dbg !2292
  br label %121, !dbg !2697, !llvm.loop !2698

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2700
  %590 = and i1 %110, %589, !dbg !2702
  %591 = xor i1 %590, true, !dbg !2702
  %592 = or i1 %109, %591, !dbg !2702
  br i1 %592, label %593, label %635, !dbg !2702

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2703
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2703
  br i1 %597, label %598, label %607, !dbg !2703

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2705
  %600 = icmp eq i8 %599, 0, !dbg !2705
  br i1 %600, label %603, label %601, !dbg !2708

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2709
  br label %652, !dbg !2710

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2711
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2713
  br i1 %606, label %26, label %607, !dbg !2713

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2714
  %610 = and i1 %609, %608, !dbg !2716
  br i1 %610, label %611, label %626, !dbg !2716

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %123, metadata !2235, metadata !DIExpression()), !dbg !2292
  %612 = load i8, i8* %97, align 1, !dbg !2717, !tbaa !1185
  %613 = icmp eq i8 %612, 0, !dbg !2720
  br i1 %613, label %626, label %614, !dbg !2720

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2237, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %617, metadata !2235, metadata !DIExpression()), !dbg !2292
  %618 = icmp ult i64 %617, %129, !dbg !2721
  br i1 %618, label %619, label %621, !dbg !2724

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2721
  store i8 %615, i8* %620, align 1, !dbg !2721, !tbaa !1185
  br label %621, !dbg !2721

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %622, metadata !2235, metadata !DIExpression()), !dbg !2292
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %623, metadata !2237, metadata !DIExpression()), !dbg !2292
  %624 = load i8, i8* %623, align 1, !dbg !2717, !tbaa !1185
  %625 = icmp eq i8 %624, 0, !dbg !2720
  br i1 %625, label %626, label %614, !dbg !2720, !llvm.loop !2726

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2334
  call void @llvm.dbg.value(metadata i64 %627, metadata !2235, metadata !DIExpression()), !dbg !2292
  %628 = icmp ult i64 %627, %129, !dbg !2728
  br i1 %628, label %629, label %652, !dbg !2730

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2731
  store i8 0, i8* %630, align 1, !dbg !2732, !tbaa !1185
  br label %652, !dbg !2731

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %637, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2291), !dbg !2733
  %633 = icmp eq i8 %101, 0, !dbg !2734
  %634 = select i1 %633, i32 2, i32 4, !dbg !2734
  br label %642, !dbg !2734

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2226, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %637, metadata !2228, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.label(metadata !2291), !dbg !2733
  %639 = icmp eq i32 %93, 2, !dbg !2736
  %640 = icmp eq i8 %636, 0, !dbg !2734
  %641 = select i1 %640, i32 2, i32 4, !dbg !2734
  br i1 %639, label %642, label %646, !dbg !2734

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2734

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2229, metadata !DIExpression()), !dbg !2292
  %650 = and i32 %5, -3, !dbg !2737
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2738
  br label %652, !dbg !2739

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2740
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2741 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %1, metadata !2746, metadata !DIExpression()), !dbg !2749
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()), !dbg !2749
  %4 = icmp eq i8* %3, %0, !dbg !2751
  br i1 %4, label %5, label %72, !dbg !2753

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %6, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %6, metadata !2755, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* undef, metadata !2761, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 85, metadata !2762, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 84, metadata !2763, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 70, metadata !2764, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 45, metadata !2765, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 56, metadata !2766, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2767, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2771
  %7 = load i8, i8* %6, align 1, !dbg !2774, !tbaa !1185
  %8 = and i8 %7, -33, !dbg !2774
  %9 = sext i8 %8 to i32, !dbg !2774
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2774

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2776, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* undef, metadata !2781, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 84, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 70, metadata !2783, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 45, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 56, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2786, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2790
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2794
  %12 = load i8, i8* %11, align 1, !dbg !2794, !tbaa !1185
  %13 = and i8 %12, -33, !dbg !2794
  %14 = icmp eq i8 %13, 84, !dbg !2794
  br i1 %14, label %15, label %69, !dbg !2794

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2796, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* undef, metadata !2801, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 70, metadata !2802, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 45, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 56, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2813
  %17 = load i8, i8* %16, align 1, !dbg !2813, !tbaa !1185
  %18 = and i8 %17, -33, !dbg !2813
  %19 = icmp eq i8 %18, 70, !dbg !2813
  br i1 %19, label %20, label %69, !dbg !2813

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2815, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8* undef, metadata !2820, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 45, metadata !2821, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 56, metadata !2822, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2823, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2827
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2831
  %22 = load i8, i8* %21, align 1, !dbg !2831, !tbaa !1185
  %23 = icmp eq i8 %22, 45, !dbg !2831
  br i1 %23, label %24, label %69, !dbg !2833

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2834, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* undef, metadata !2839, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 56, metadata !2840, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2845
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2849
  %26 = load i8, i8* %25, align 1, !dbg !2849, !tbaa !1185
  %27 = icmp eq i8 %26, 56, !dbg !2849
  br i1 %27, label %28, label %69, !dbg !2851

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2852, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* undef, metadata !2857, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2862
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2866
  %30 = load i8, i8* %29, align 1, !dbg !2866, !tbaa !1185
  %31 = icmp eq i8 %30, 0, !dbg !2866
  br i1 %31, label %32, label %69, !dbg !2868

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2869, !tbaa !1185
  %34 = icmp eq i8 %33, 96, !dbg !2870
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.130, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.131, i64 0, i64 0), !dbg !2869
  br label %72, !dbg !2871

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2776, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* undef, metadata !2781, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 66, metadata !2782, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 49, metadata !2783, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 56, metadata !2784, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 48, metadata !2785, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 51, metadata !2786, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 48, metadata !2787, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2872
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2876
  %38 = load i8, i8* %37, align 1, !dbg !2876, !tbaa !1185
  %39 = and i8 %38, -33, !dbg !2876
  %40 = icmp eq i8 %39, 66, !dbg !2876
  br i1 %40, label %41, label %69, !dbg !2876

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2796, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* undef, metadata !2801, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 49, metadata !2802, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 56, metadata !2803, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 48, metadata !2804, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 51, metadata !2805, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 48, metadata !2806, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2877
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2879
  %43 = load i8, i8* %42, align 1, !dbg !2879, !tbaa !1185
  %44 = icmp eq i8 %43, 49, !dbg !2879
  br i1 %44, label %45, label %69, !dbg !2880

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2815, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* undef, metadata !2820, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 56, metadata !2821, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 48, metadata !2822, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 51, metadata !2823, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 48, metadata !2824, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2881
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2883
  %47 = load i8, i8* %46, align 1, !dbg !2883, !tbaa !1185
  %48 = icmp eq i8 %47, 56, !dbg !2883
  br i1 %48, label %49, label %69, !dbg !2884

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2834, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* undef, metadata !2839, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 48, metadata !2840, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 51, metadata !2841, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 48, metadata !2842, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2885
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2887
  %51 = load i8, i8* %50, align 1, !dbg !2887, !tbaa !1185
  %52 = icmp eq i8 %51, 48, !dbg !2887
  br i1 %52, label %53, label %69, !dbg !2888

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2852, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* undef, metadata !2857, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 51, metadata !2858, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 48, metadata !2859, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 0, metadata !2860, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2889
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2891
  %55 = load i8, i8* %54, align 1, !dbg !2891, !tbaa !1185
  %56 = icmp eq i8 %55, 51, !dbg !2891
  br i1 %56, label %57, label %69, !dbg !2892

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2893, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* undef, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 48, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2902
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2906
  %59 = load i8, i8* %58, align 1, !dbg !2906, !tbaa !1185
  %60 = icmp eq i8 %59, 48, !dbg !2906
  br i1 %60, label %61, label %69, !dbg !2908

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2909, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* undef, metadata !2914, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2917
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2921
  %63 = load i8, i8* %62, align 1, !dbg !2921, !tbaa !1185
  %64 = icmp eq i8 %63, 0, !dbg !2921
  br i1 %64, label %65, label %69, !dbg !2923

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2924, !tbaa !1185
  %67 = icmp eq i8 %66, 96, !dbg !2925
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.132, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.133, i64 0, i64 0), !dbg !2924
  br label %72, !dbg !2926

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2927
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.129, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.128, i64 0, i64 0), !dbg !2928
  br label %72, !dbg !2929

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2749
  ret i8* %73, !dbg !2930
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2931 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2935 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata i64* null, metadata !2955, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2956, metadata !DIExpression()) #28, !dbg !2962
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2964
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2957, metadata !DIExpression()) #28, !dbg !2962
  %6 = tail call i32* @__errno_location() #32, !dbg !2965
  %7 = load i32, i32* %6, align 4, !dbg !2965, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %7, metadata !2958, metadata !DIExpression()) #28, !dbg !2962
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2966
  %9 = load i32, i32* %8, align 4, !dbg !2966, !tbaa !2169
  %10 = or i32 %9, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %10, metadata !2959, metadata !DIExpression()) #28, !dbg !2962
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2968
  %12 = load i32, i32* %11, align 8, !dbg !2968, !tbaa !2118
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2969
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2970
  %15 = load i8*, i8** %14, align 8, !dbg !2970, !tbaa !2191
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2971
  %17 = load i8*, i8** %16, align 8, !dbg !2971, !tbaa !2194
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2972
  %19 = add i64 %18, 1, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %19, metadata !2960, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %19, metadata !2974, metadata !DIExpression()) #28, !dbg !2979
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %20, metadata !2961, metadata !DIExpression()) #28, !dbg !2962
  %21 = load i32, i32* %11, align 8, !dbg !2982, !tbaa !2118
  %22 = load i8*, i8** %14, align 8, !dbg !2983, !tbaa !2191
  %23 = load i8*, i8** %16, align 8, !dbg !2984, !tbaa !2194
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2985
  store i32 %7, i32* %6, align 4, !dbg !2986, !tbaa !1104
  ret i8* %20, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64* %2, metadata !2955, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2956, metadata !DIExpression()), !dbg !2988
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2989
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2957, metadata !DIExpression()), !dbg !2988
  %7 = tail call i32* @__errno_location() #32, !dbg !2990
  %8 = load i32, i32* %7, align 4, !dbg !2990, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %8, metadata !2958, metadata !DIExpression()), !dbg !2988
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2991
  %10 = load i32, i32* %9, align 4, !dbg !2991, !tbaa !2169
  %11 = icmp eq i64* %2, null, !dbg !2992
  %12 = zext i1 %11 to i32, !dbg !2992
  %13 = or i32 %10, %12, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %13, metadata !2959, metadata !DIExpression()), !dbg !2988
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2994
  %15 = load i32, i32* %14, align 8, !dbg !2994, !tbaa !2118
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2995
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2996
  %18 = load i8*, i8** %17, align 8, !dbg !2996, !tbaa !2191
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2997
  %20 = load i8*, i8** %19, align 8, !dbg !2997, !tbaa !2194
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2998
  %22 = add i64 %21, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %22, metadata !2960, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %22, metadata !2974, metadata !DIExpression()) #28, !dbg !3000
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %23, metadata !2961, metadata !DIExpression()), !dbg !2988
  %24 = load i32, i32* %14, align 8, !dbg !3003, !tbaa !2118
  %25 = load i8*, i8** %17, align 8, !dbg !3004, !tbaa !2191
  %26 = load i8*, i8** %19, align 8, !dbg !3005, !tbaa !2194
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3006
  store i32 %8, i32* %7, align 4, !dbg !3007, !tbaa !1104
  br i1 %11, label %29, label %28, !dbg !3008

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3009, !tbaa !1164
  br label %29, !dbg !3011

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3013 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3017, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 1, metadata !3016, metadata !DIExpression()), !dbg !3018
  %2 = load i32, i32* @nslots, align 4, !dbg !3019, !tbaa !1104
  %3 = icmp sgt i32 %2, 1, !dbg !3022
  br i1 %3, label %4, label %12, !dbg !3023

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3022
  br label %6, !dbg !3023

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3016, metadata !DIExpression()), !dbg !3018
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3024
  %9 = load i8*, i8** %8, align 8, !dbg !3024, !tbaa !3025
  tail call void @free(i8* %9) #28, !dbg !3027
  %10 = add nuw nsw i64 %7, 1, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %10, metadata !3016, metadata !DIExpression()), !dbg !3018
  %11 = icmp eq i64 %10, %5, !dbg !3022
  br i1 %11, label %12, label %6, !dbg !3023, !llvm.loop !3029

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3031
  %14 = load i8*, i8** %13, align 8, !dbg !3031, !tbaa !3025
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3033
  br i1 %15, label %17, label %16, !dbg !3034

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !3035
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3037, !tbaa !3038
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3039, !tbaa !3025
  br label %17, !dbg !3040

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3041
  br i1 %18, label %21, label %19, !dbg !3043

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3044
  tail call void @free(i8* %20) #28, !dbg !3046
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3047, !tbaa !909
  br label %21, !dbg !3048

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3049, !tbaa !1104
  ret void, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8* %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3056
  ret i8* %3, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3062, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* %1, metadata !3063, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !3064, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3065, metadata !DIExpression()), !dbg !3077
  %5 = tail call i32* @__errno_location() #32, !dbg !3078
  %6 = load i32, i32* %5, align 4, !dbg !3078, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %6, metadata !3066, metadata !DIExpression()), !dbg !3077
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3079, !tbaa !909
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3067, metadata !DIExpression()), !dbg !3077
  %8 = icmp slt i32 %0, 0, !dbg !3080
  br i1 %8, label %9, label %10, !dbg !3082

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3083
  unreachable, !dbg !3083

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3084, !tbaa !1104
  %12 = icmp sgt i32 %11, %0, !dbg !3085
  br i1 %12, label %34, label %13, !dbg !3086

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3087
  call void @llvm.dbg.value(metadata i1 %14, metadata !3068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3088
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3071, metadata !DIExpression()), !dbg !3088
  %15 = icmp eq i32 %0, 2147483647, !dbg !3089
  br i1 %15, label %16, label %17, !dbg !3091

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3092
  unreachable, !dbg !3092

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3093
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3093
  %20 = add nuw nsw i32 %0, 1, !dbg !3094
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3095
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !3096
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3067, metadata !DIExpression()), !dbg !3077
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3097, !tbaa !909
  br i1 %14, label %25, label %26, !dbg !3098

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3099, !tbaa.struct !3101
  br label %26, !dbg !3102

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3103, !tbaa !1104
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3104
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3105
  %31 = sub nsw i32 %20, %27, !dbg !3106
  %32 = sext i32 %31 to i64, !dbg !3107
  %33 = shl nsw i64 %32, 4, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %30, metadata !2502, metadata !DIExpression()) #28, !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !2507, metadata !DIExpression()) #28, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %33, metadata !2508, metadata !DIExpression()) #28, !dbg !3109
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !3111
  store i32 %20, i32* @nslots, align 4, !dbg !3112, !tbaa !1104
  br label %34, !dbg !3113

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3077
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3067, metadata !DIExpression()), !dbg !3077
  %36 = zext i32 %0 to i64, !dbg !3114
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3115
  %38 = load i64, i64* %37, align 8, !dbg !3115, !tbaa !3038
  call void @llvm.dbg.value(metadata i64 %38, metadata !3072, metadata !DIExpression()), !dbg !3116
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3117
  %40 = load i8*, i8** %39, align 8, !dbg !3117, !tbaa !3025
  call void @llvm.dbg.value(metadata i8* %40, metadata !3074, metadata !DIExpression()), !dbg !3116
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3118
  %42 = load i32, i32* %41, align 4, !dbg !3118, !tbaa !2169
  %43 = or i32 %42, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %43, metadata !3075, metadata !DIExpression()), !dbg !3116
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3120
  %45 = load i32, i32* %44, align 8, !dbg !3120, !tbaa !2118
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3121
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3122
  %48 = load i8*, i8** %47, align 8, !dbg !3122, !tbaa !2191
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3123
  %50 = load i8*, i8** %49, align 8, !dbg !3123, !tbaa !2194
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %51, metadata !3076, metadata !DIExpression()), !dbg !3116
  %52 = icmp ugt i64 %38, %51, !dbg !3125
  br i1 %52, label %63, label %53, !dbg !3127

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %54, metadata !3072, metadata !DIExpression()), !dbg !3116
  store i64 %54, i64* %37, align 8, !dbg !3130, !tbaa !3038
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3131
  br i1 %55, label %57, label %56, !dbg !3133

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !3134
  br label %57, !dbg !3134

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2974, metadata !DIExpression()) #28, !dbg !3135
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %58, metadata !3074, metadata !DIExpression()), !dbg !3116
  store i8* %58, i8** %39, align 8, !dbg !3138, !tbaa !3025
  %59 = load i32, i32* %44, align 8, !dbg !3139, !tbaa !2118
  %60 = load i8*, i8** %47, align 8, !dbg !3140, !tbaa !2191
  %61 = load i8*, i8** %49, align 8, !dbg !3141, !tbaa !2194
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3142
  br label %63, !dbg !3143

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3116
  call void @llvm.dbg.value(metadata i8* %64, metadata !3074, metadata !DIExpression()), !dbg !3116
  store i32 %6, i32* %5, align 4, !dbg !3144, !tbaa !1104
  ret i8* %64, !dbg !3145
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3146 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3154
  ret i8* %4, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()) #28, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()) #28, !dbg !3160
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !3162
  ret i8* %2, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3164 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 0, metadata !3150, metadata !DIExpression()) #28, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %0, metadata !3151, metadata !DIExpression()) #28, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()) #28, !dbg !3171
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !3173
  ret i8* %3, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3175 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %1, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3181, metadata !DIExpression()), !dbg !3183
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3184
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3182, metadata !DIExpression()), !dbg !3185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %1, metadata !3190, metadata !DIExpression()) #28, !dbg !3196
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3195, metadata !DIExpression()) #28, !dbg !3198
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3198, !alias.scope !3186
  %6 = icmp eq i32 %1, 10, !dbg !3199
  br i1 %6, label %7, label %8, !dbg !3201

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3202, !noalias !3186
  unreachable, !dbg !3202

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3203
  store i32 %1, i32* %9, align 8, !dbg !3204, !tbaa !2118, !alias.scope !3186
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3205
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3206
  ret i8* %10, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3208 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3212, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %1, metadata !3213, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8* %2, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 %3, metadata !3215, metadata !DIExpression()), !dbg !3217
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3218
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3216, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3220), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %1, metadata !3190, metadata !DIExpression()) #28, !dbg !3224
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3195, metadata !DIExpression()) #28, !dbg !3226
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !3226, !alias.scope !3220
  %7 = icmp eq i32 %1, 10, !dbg !3227
  br i1 %7, label %8, label %9, !dbg !3228

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3229, !noalias !3220
  unreachable, !dbg !3229

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3230
  store i32 %1, i32* %10, align 8, !dbg !3231, !tbaa !2118, !alias.scope !3220
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3233
  ret i8* %11, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3235 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 0, metadata !3179, metadata !DIExpression()) #28, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %0, metadata !3180, metadata !DIExpression()) #28, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %1, metadata !3181, metadata !DIExpression()) #28, !dbg !3242
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3244
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3182, metadata !DIExpression()) #28, !dbg !3245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246) #28, !dbg !3249
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()) #28, !dbg !3250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3195, metadata !DIExpression()) #28, !dbg !3252
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !3252, !alias.scope !3246
  %5 = icmp eq i32 %0, 10, !dbg !3253
  br i1 %5, label %6, label %7, !dbg !3254

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !3255, !noalias !3246
  unreachable, !dbg !3255

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3256
  store i32 %0, i32* %8, align 8, !dbg !3257, !tbaa !2118, !alias.scope !3246
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3258
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3259
  ret i8* %9, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3261 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3265, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %2, metadata !3267, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32 0, metadata !3212, metadata !DIExpression()) #28, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %0, metadata !3213, metadata !DIExpression()) #28, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %1, metadata !3214, metadata !DIExpression()) #28, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %2, metadata !3215, metadata !DIExpression()) #28, !dbg !3269
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3271
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3271
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3216, metadata !DIExpression()) #28, !dbg !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3273) #28, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()) #28, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3195, metadata !DIExpression()) #28, !dbg !3279
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3279, !alias.scope !3273
  %6 = icmp eq i32 %0, 10, !dbg !3280
  br i1 %6, label %7, label %8, !dbg !3281

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3282, !noalias !3273
  unreachable, !dbg !3282

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3283
  store i32 %0, i32* %9, align 8, !dbg !3284, !tbaa !2118, !alias.scope !3273
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !3285
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3286
  ret i8* %10, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3288 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8 %2, metadata !3294, metadata !DIExpression()), !dbg !3296
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3297
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3297
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3295, metadata !DIExpression()), !dbg !3298
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3299, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2136, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %2, metadata !2137, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 1, metadata !2138, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %2, metadata !2139, metadata !DIExpression()), !dbg !3301
  %6 = lshr i8 %2, 5, !dbg !3303
  %7 = zext i8 %6 to i64, !dbg !3303
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3304
  call void @llvm.dbg.value(metadata i32* %8, metadata !2140, metadata !DIExpression()), !dbg !3301
  %9 = and i8 %2, 31, !dbg !3305
  %10 = zext i8 %9 to i32, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %10, metadata !2142, metadata !DIExpression()), !dbg !3301
  %11 = load i32, i32* %8, align 4, !dbg !3306, !tbaa !1104
  %12 = lshr i32 %11, %10, !dbg !3307
  %13 = and i32 %12, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %13, metadata !2143, metadata !DIExpression()), !dbg !3301
  %14 = xor i32 %13, 1, !dbg !3309
  %15 = shl i32 %14, %10, !dbg !3310
  %16 = xor i32 %15, %11, !dbg !3311
  store i32 %16, i32* %8, align 4, !dbg !3311, !tbaa !1104
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3313
  ret i8* %17, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3315 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #28, !dbg !3322
  call void @llvm.dbg.value(metadata i64 -1, metadata !3293, metadata !DIExpression()) #28, !dbg !3322
  call void @llvm.dbg.value(metadata i8 %1, metadata !3294, metadata !DIExpression()) #28, !dbg !3322
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3324
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3295, metadata !DIExpression()) #28, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3326, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2136, metadata !DIExpression()) #28, !dbg !3327
  call void @llvm.dbg.value(metadata i8 %1, metadata !2137, metadata !DIExpression()) #28, !dbg !3327
  call void @llvm.dbg.value(metadata i32 1, metadata !2138, metadata !DIExpression()) #28, !dbg !3327
  call void @llvm.dbg.value(metadata i8 %1, metadata !2139, metadata !DIExpression()) #28, !dbg !3327
  %5 = lshr i8 %1, 5, !dbg !3329
  %6 = zext i8 %5 to i64, !dbg !3329
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3330
  call void @llvm.dbg.value(metadata i32* %7, metadata !2140, metadata !DIExpression()) #28, !dbg !3327
  %8 = and i8 %1, 31, !dbg !3331
  %9 = zext i8 %8 to i32, !dbg !3331
  call void @llvm.dbg.value(metadata i32 %9, metadata !2142, metadata !DIExpression()) #28, !dbg !3327
  %10 = load i32, i32* %7, align 4, !dbg !3332, !tbaa !1104
  %11 = lshr i32 %10, %9, !dbg !3333
  %12 = and i32 %11, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %12, metadata !2143, metadata !DIExpression()) #28, !dbg !3327
  %13 = xor i32 %12, 1, !dbg !3335
  %14 = shl i32 %13, %9, !dbg !3336
  %15 = xor i32 %14, %10, !dbg !3337
  store i32 %15, i32* %7, align 4, !dbg !3337, !tbaa !1104
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3338
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3339
  ret i8* %16, !dbg !3340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3341 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #28, !dbg !3345
  call void @llvm.dbg.value(metadata i8 58, metadata !3320, metadata !DIExpression()) #28, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #28, !dbg !3347
  call void @llvm.dbg.value(metadata i64 -1, metadata !3293, metadata !DIExpression()) #28, !dbg !3347
  call void @llvm.dbg.value(metadata i8 58, metadata !3294, metadata !DIExpression()) #28, !dbg !3347
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3295, metadata !DIExpression()) #28, !dbg !3350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3351, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2136, metadata !DIExpression()) #28, !dbg !3352
  call void @llvm.dbg.value(metadata i8 58, metadata !2137, metadata !DIExpression()) #28, !dbg !3352
  call void @llvm.dbg.value(metadata i32 1, metadata !2138, metadata !DIExpression()) #28, !dbg !3352
  call void @llvm.dbg.value(metadata i8 58, metadata !2139, metadata !DIExpression()) #28, !dbg !3352
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3354
  call void @llvm.dbg.value(metadata i32* %4, metadata !2140, metadata !DIExpression()) #28, !dbg !3352
  call void @llvm.dbg.value(metadata i32 26, metadata !2142, metadata !DIExpression()) #28, !dbg !3352
  %5 = load i32, i32* %4, align 4, !dbg !3355, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %5, metadata !2143, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3352
  %6 = or i32 %5, 67108864, !dbg !3356
  store i32 %6, i32* %4, align 4, !dbg !3356, !tbaa !1104
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3358
  ret i8* %7, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3360 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #28, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()) #28, !dbg !3365
  call void @llvm.dbg.value(metadata i8 58, metadata !3294, metadata !DIExpression()) #28, !dbg !3365
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3295, metadata !DIExpression()) #28, !dbg !3368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3369, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2136, metadata !DIExpression()) #28, !dbg !3370
  call void @llvm.dbg.value(metadata i8 58, metadata !2137, metadata !DIExpression()) #28, !dbg !3370
  call void @llvm.dbg.value(metadata i32 1, metadata !2138, metadata !DIExpression()) #28, !dbg !3370
  call void @llvm.dbg.value(metadata i8 58, metadata !2139, metadata !DIExpression()) #28, !dbg !3370
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3372
  call void @llvm.dbg.value(metadata i32* %5, metadata !2140, metadata !DIExpression()) #28, !dbg !3370
  call void @llvm.dbg.value(metadata i32 26, metadata !2142, metadata !DIExpression()) #28, !dbg !3370
  %6 = load i32, i32* %5, align 4, !dbg !3373, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %6, metadata !2143, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3370
  %7 = or i32 %6, 67108864, !dbg !3374
  store i32 %7, i32* %5, align 4, !dbg !3374, !tbaa !1104
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3376
  ret i8* %8, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3378 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3195, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %1, metadata !3381, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %2, metadata !3382, metadata !DIExpression()), !dbg !3386
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3387
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3383, metadata !DIExpression()), !dbg !3388
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3389
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390), !dbg !3389
  call void @llvm.dbg.value(metadata i32 %1, metadata !3190, metadata !DIExpression()) #28, !dbg !3393
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3393
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3384, !alias.scope !3390
  %8 = icmp eq i32 %1, 10, !dbg !3394
  br i1 %8, label %9, label %10, !dbg !3395

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3396, !noalias !3390
  unreachable, !dbg !3396

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3195, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3393
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3389
  store i32 %1, i32* %11, align 8, !dbg !3389, !tbaa.struct !3300
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3389
  %13 = bitcast i32* %12 to i8*, !dbg !3389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3389, !tbaa.struct !3397
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2136, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8 58, metadata !2137, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 1, metadata !2138, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8 58, metadata !2139, metadata !DIExpression()), !dbg !3398
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3400
  call void @llvm.dbg.value(metadata i32* %14, metadata !2140, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 26, metadata !2142, metadata !DIExpression()), !dbg !3398
  %15 = load i32, i32* %14, align 4, !dbg !3401, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %15, metadata !2143, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3398
  %16 = or i32 %15, 67108864, !dbg !3402
  store i32 %16, i32* %14, align 4, !dbg !3402, !tbaa !1104
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3404
  ret i8* %17, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3406 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %1, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %2, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %3, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()) #28, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()) #28, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()) #28, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()) #28, !dbg !3425
  call void @llvm.dbg.value(metadata i64 -1, metadata !3423, metadata !DIExpression()) #28, !dbg !3425
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3427
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3424, metadata !DIExpression()) #28, !dbg !3428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3429, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2176, metadata !DIExpression()) #28, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %1, metadata !2177, metadata !DIExpression()) #28, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %2, metadata !2178, metadata !DIExpression()) #28, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2176, metadata !DIExpression()) #28, !dbg !3430
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3432
  store i32 10, i32* %7, align 8, !dbg !3433, !tbaa !2118
  %8 = icmp ne i8* %1, null, !dbg !3434
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3435
  br i1 %10, label %12, label %11, !dbg !3435

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3436
  unreachable, !dbg !3436

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3437
  store i8* %1, i8** %13, align 8, !dbg !3438, !tbaa !2191
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3439
  store i8* %2, i8** %14, align 8, !dbg !3440, !tbaa !2194
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3442
  ret i8* %15, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3416 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %4, metadata !3423, metadata !DIExpression()), !dbg !3444
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3445
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3424, metadata !DIExpression()), !dbg !3446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3447, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2176, metadata !DIExpression()) #28, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !2177, metadata !DIExpression()) #28, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %2, metadata !2178, metadata !DIExpression()) #28, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2176, metadata !DIExpression()) #28, !dbg !3448
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3450
  store i32 10, i32* %8, align 8, !dbg !3451, !tbaa !2118
  %9 = icmp ne i8* %1, null, !dbg !3452
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3453
  br i1 %11, label %13, label %12, !dbg !3453

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3454
  unreachable, !dbg !3454

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3455
  store i8* %1, i8** %14, align 8, !dbg !3456, !tbaa !2191
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3457
  store i8* %2, i8** %15, align 8, !dbg !3458, !tbaa !2194
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3460
  ret i8* %16, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3462 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %2, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()) #28, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()) #28, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %1, metadata !3412, metadata !DIExpression()) #28, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()) #28, !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()) #28, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()) #28, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()) #28, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()) #28, !dbg !3472
  call void @llvm.dbg.value(metadata i64 -1, metadata !3423, metadata !DIExpression()) #28, !dbg !3472
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3474
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3424, metadata !DIExpression()) #28, !dbg !3475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3476, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2176, metadata !DIExpression()) #28, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %0, metadata !2177, metadata !DIExpression()) #28, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()) #28, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2176, metadata !DIExpression()) #28, !dbg !3477
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3479
  store i32 10, i32* %6, align 8, !dbg !3480, !tbaa !2118
  %7 = icmp ne i8* %0, null, !dbg !3481
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3482
  br i1 %9, label %11, label %10, !dbg !3482

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3483
  unreachable, !dbg !3483

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3484
  store i8* %0, i8** %12, align 8, !dbg !3485, !tbaa !2191
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3486
  store i8* %1, i8** %13, align 8, !dbg !3487, !tbaa !2194
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3489
  ret i8* %14, !dbg !3490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3491 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3495, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %1, metadata !3496, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %3, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()) #28, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %3, metadata !3423, metadata !DIExpression()) #28, !dbg !3500
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3502
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3502
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3424, metadata !DIExpression()) #28, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3504, !tbaa.struct !3300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2176, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !2177, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()) #28, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2176, metadata !DIExpression()) #28, !dbg !3505
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3507
  store i32 10, i32* %7, align 8, !dbg !3508, !tbaa !2118
  %8 = icmp ne i8* %0, null, !dbg !3509
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3510
  br i1 %10, label %12, label %11, !dbg !3510

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3511
  unreachable, !dbg !3511

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3512
  store i8* %0, i8** %13, align 8, !dbg !3513, !tbaa !2191
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3514
  store i8* %1, i8** %14, align 8, !dbg !3515, !tbaa !2194
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3516
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3517
  ret i8* %15, !dbg !3518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3519 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %2, metadata !3525, metadata !DIExpression()), !dbg !3526
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3527
  ret i8* %4, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3534, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32 0, metadata !3523, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #28, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3525, metadata !DIExpression()) #28, !dbg !3536
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3538
  ret i8* %3, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %0, metadata !3523, metadata !DIExpression()) #28, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()) #28, !dbg !3547
  call void @llvm.dbg.value(metadata i64 -1, metadata !3525, metadata !DIExpression()) #28, !dbg !3547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3549
  ret i8* %3, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()) #28, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()) #28, !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3523, metadata !DIExpression()) #28, !dbg !3559
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #28, !dbg !3559
  call void @llvm.dbg.value(metadata i64 -1, metadata !3525, metadata !DIExpression()) #28, !dbg !3559
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3561
  ret i8* %2, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3563 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %2, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 %0, metadata !3571, metadata !DIExpression()) #28, !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !3574, metadata !DIExpression()) #28, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %2, metadata !3575, metadata !DIExpression()) #28, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()) #28, !dbg !3586
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %4, metadata !3585, metadata !DIExpression()) #28, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %4, metadata !3576, metadata !DIExpression()) #28, !dbg !3580
  %5 = icmp eq i8* %4, null, !dbg !3589
  br i1 %5, label %6, label %9, !dbg !3590

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3591
  br i1 %7, label %19, label %8, !dbg !3594

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3595, !tbaa !1185
  br label %19, !dbg !3596

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %10, metadata !3577, metadata !DIExpression()) #28, !dbg !3598
  %11 = icmp ult i64 %10, %2, !dbg !3599
  br i1 %11, label %12, label %14, !dbg !3601

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %1, metadata !3604, metadata !DIExpression()) #28, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %4, metadata !3613, metadata !DIExpression()) #28, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %13, metadata !3614, metadata !DIExpression()) #28, !dbg !3615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !3617
  br label %19, !dbg !3618

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3619
  br i1 %15, label %19, label %16, !dbg !3622

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3604, metadata !DIExpression()) #28, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %4, metadata !3613, metadata !DIExpression()) #28, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %17, metadata !3614, metadata !DIExpression()) #28, !dbg !3625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !3627
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3628
  store i8 0, i8* %18, align 1, !dbg !3629, !tbaa !1185
  br label %19, !dbg !3630

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3631
  ret i32 %20, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3635, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()) #28, !dbg !3637
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()) #28, !dbg !3637
  ret i8* %2, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3641 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3681, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %1, metadata !3682, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %2, metadata !3683, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %3, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8** %4, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %5, metadata !3686, metadata !DIExpression()), !dbg !3687
  %7 = icmp eq i8* %1, null, !dbg !3688
  br i1 %7, label %10, label %8, !dbg !3690

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3691
  br label %12, !dbg !3691

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.143, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3692
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.144, i64 0, i64 0), i32 5) #28, !dbg !3693
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3693
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3694
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.146, i64 0, i64 0), i32 5) #28, !dbg !3695
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.147, i64 0, i64 0)) #28, !dbg !3695
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3696
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
  ], !dbg !3697

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.148, i64 0, i64 0), i32 5) #28, !dbg !3698
  %21 = load i8*, i8** %4, align 8, !dbg !3698, !tbaa !909
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3698
  br label %147, !dbg !3700

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.149, i64 0, i64 0), i32 5) #28, !dbg !3701
  %25 = load i8*, i8** %4, align 8, !dbg !3701, !tbaa !909
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3701
  %27 = load i8*, i8** %26, align 8, !dbg !3701, !tbaa !909
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3701
  br label %147, !dbg !3702

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.150, i64 0, i64 0), i32 5) #28, !dbg !3703
  %31 = load i8*, i8** %4, align 8, !dbg !3703, !tbaa !909
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3703
  %33 = load i8*, i8** %32, align 8, !dbg !3703, !tbaa !909
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3703
  %35 = load i8*, i8** %34, align 8, !dbg !3703, !tbaa !909
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3703
  br label %147, !dbg !3704

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.151, i64 0, i64 0), i32 5) #28, !dbg !3705
  %39 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !909
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3705
  %41 = load i8*, i8** %40, align 8, !dbg !3705, !tbaa !909
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3705
  %43 = load i8*, i8** %42, align 8, !dbg !3705, !tbaa !909
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3705
  %45 = load i8*, i8** %44, align 8, !dbg !3705, !tbaa !909
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3705
  br label %147, !dbg !3706

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.152, i64 0, i64 0), i32 5) #28, !dbg !3707
  %49 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !909
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %51 = load i8*, i8** %50, align 8, !dbg !3707, !tbaa !909
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3707
  %53 = load i8*, i8** %52, align 8, !dbg !3707, !tbaa !909
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3707
  %55 = load i8*, i8** %54, align 8, !dbg !3707, !tbaa !909
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3707
  %57 = load i8*, i8** %56, align 8, !dbg !3707, !tbaa !909
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3707
  br label %147, !dbg !3708

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.153, i64 0, i64 0), i32 5) #28, !dbg !3709
  %61 = load i8*, i8** %4, align 8, !dbg !3709, !tbaa !909
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3709
  %63 = load i8*, i8** %62, align 8, !dbg !3709, !tbaa !909
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3709
  %65 = load i8*, i8** %64, align 8, !dbg !3709, !tbaa !909
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3709
  %67 = load i8*, i8** %66, align 8, !dbg !3709, !tbaa !909
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3709
  %69 = load i8*, i8** %68, align 8, !dbg !3709, !tbaa !909
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3709
  %71 = load i8*, i8** %70, align 8, !dbg !3709, !tbaa !909
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3709
  br label %147, !dbg !3710

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.154, i64 0, i64 0), i32 5) #28, !dbg !3711
  %75 = load i8*, i8** %4, align 8, !dbg !3711, !tbaa !909
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3711
  %77 = load i8*, i8** %76, align 8, !dbg !3711, !tbaa !909
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3711
  %79 = load i8*, i8** %78, align 8, !dbg !3711, !tbaa !909
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3711
  %81 = load i8*, i8** %80, align 8, !dbg !3711, !tbaa !909
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3711
  %83 = load i8*, i8** %82, align 8, !dbg !3711, !tbaa !909
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3711
  %85 = load i8*, i8** %84, align 8, !dbg !3711, !tbaa !909
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3711
  %87 = load i8*, i8** %86, align 8, !dbg !3711, !tbaa !909
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3711
  br label %147, !dbg !3712

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.155, i64 0, i64 0), i32 5) #28, !dbg !3713
  %91 = load i8*, i8** %4, align 8, !dbg !3713, !tbaa !909
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3713
  %93 = load i8*, i8** %92, align 8, !dbg !3713, !tbaa !909
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3713
  %95 = load i8*, i8** %94, align 8, !dbg !3713, !tbaa !909
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3713
  %97 = load i8*, i8** %96, align 8, !dbg !3713, !tbaa !909
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3713
  %99 = load i8*, i8** %98, align 8, !dbg !3713, !tbaa !909
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3713
  %101 = load i8*, i8** %100, align 8, !dbg !3713, !tbaa !909
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3713
  %103 = load i8*, i8** %102, align 8, !dbg !3713, !tbaa !909
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3713
  %105 = load i8*, i8** %104, align 8, !dbg !3713, !tbaa !909
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3713
  br label %147, !dbg !3714

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.156, i64 0, i64 0), i32 5) #28, !dbg !3715
  %109 = load i8*, i8** %4, align 8, !dbg !3715, !tbaa !909
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3715
  %111 = load i8*, i8** %110, align 8, !dbg !3715, !tbaa !909
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3715
  %113 = load i8*, i8** %112, align 8, !dbg !3715, !tbaa !909
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3715
  %115 = load i8*, i8** %114, align 8, !dbg !3715, !tbaa !909
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3715
  %117 = load i8*, i8** %116, align 8, !dbg !3715, !tbaa !909
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3715
  %119 = load i8*, i8** %118, align 8, !dbg !3715, !tbaa !909
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3715
  %121 = load i8*, i8** %120, align 8, !dbg !3715, !tbaa !909
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3715
  %123 = load i8*, i8** %122, align 8, !dbg !3715, !tbaa !909
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3715
  %125 = load i8*, i8** %124, align 8, !dbg !3715, !tbaa !909
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3715
  br label %147, !dbg !3716

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.157, i64 0, i64 0), i32 5) #28, !dbg !3717
  %129 = load i8*, i8** %4, align 8, !dbg !3717, !tbaa !909
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3717
  %131 = load i8*, i8** %130, align 8, !dbg !3717, !tbaa !909
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3717
  %133 = load i8*, i8** %132, align 8, !dbg !3717, !tbaa !909
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3717
  %135 = load i8*, i8** %134, align 8, !dbg !3717, !tbaa !909
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3717
  %137 = load i8*, i8** %136, align 8, !dbg !3717, !tbaa !909
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3717
  %139 = load i8*, i8** %138, align 8, !dbg !3717, !tbaa !909
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3717
  %141 = load i8*, i8** %140, align 8, !dbg !3717, !tbaa !909
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3717
  %143 = load i8*, i8** %142, align 8, !dbg !3717, !tbaa !909
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3717
  %145 = load i8*, i8** %144, align 8, !dbg !3717, !tbaa !909
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3717
  br label %147, !dbg !3718

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3720 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3724, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* %1, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* %2, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* %3, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8** %4, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 0, metadata !3729, metadata !DIExpression()), !dbg !3730
  br label %6, !dbg !3731

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3733
  call void @llvm.dbg.value(metadata i64 %7, metadata !3729, metadata !DIExpression()), !dbg !3730
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3734
  %9 = load i8*, i8** %8, align 8, !dbg !3734, !tbaa !909
  %10 = icmp eq i8* %9, null, !dbg !3736
  %11 = add i64 %7, 1, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %11, metadata !3729, metadata !DIExpression()), !dbg !3730
  br i1 %10, label %12, label %6, !dbg !3736, !llvm.loop !3738

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3740
  ret void, !dbg !3741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3742 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3753, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %2, metadata !3755, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %3, metadata !3756, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3757, metadata !DIExpression()), !dbg !3761
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3762
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3762
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3759, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 0, metadata !3758, metadata !DIExpression()), !dbg !3761
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3758, metadata !DIExpression()), !dbg !3761
  %11 = load i32, i32* %8, align 8, !dbg !3764
  %12 = icmp ult i32 %11, 41, !dbg !3764
  br i1 %12, label %13, label %18, !dbg !3764

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3764
  %15 = zext i32 %11 to i64, !dbg !3764
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3764
  %17 = add nuw nsw i32 %11, 8, !dbg !3764
  store i32 %17, i32* %8, align 8, !dbg !3764
  br label %21, !dbg !3764

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3764
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3764
  store i8* %20, i8** %9, align 8, !dbg !3764
  br label %21, !dbg !3764

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3764
  %25 = load i8*, i8** %24, align 8, !dbg !3764
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3767
  store i8* %25, i8** %26, align 16, !dbg !3768, !tbaa !909
  %27 = icmp eq i8* %25, null, !dbg !3769
  br i1 %27, label %30, label %28, !dbg !3770

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 1, metadata !3758, metadata !DIExpression()), !dbg !3761
  %29 = icmp ult i32 %22, 41, !dbg !3764
  br i1 %29, label %35, label %32, !dbg !3764

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3771
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3773
  ret void, !dbg !3773

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3764
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3764
  store i8* %34, i8** %9, align 8, !dbg !3764
  br label %40, !dbg !3764

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3764
  %37 = zext i32 %22 to i64, !dbg !3764
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3764
  %39 = add nuw nsw i32 %22, 8, !dbg !3764
  store i32 %39, i32* %8, align 8, !dbg !3764
  br label %40, !dbg !3764

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3764
  %44 = load i8*, i8** %43, align 8, !dbg !3764
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3767
  store i8* %44, i8** %45, align 8, !dbg !3768, !tbaa !909
  %46 = icmp eq i8* %44, null, !dbg !3769
  br i1 %46, label %30, label %47, !dbg !3770

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 2, metadata !3758, metadata !DIExpression()), !dbg !3761
  %48 = icmp ult i32 %41, 41, !dbg !3764
  br i1 %48, label %52, label %49, !dbg !3764

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3764
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3764
  store i8* %51, i8** %9, align 8, !dbg !3764
  br label %57, !dbg !3764

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3764
  %54 = zext i32 %41 to i64, !dbg !3764
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3764
  %56 = add nuw nsw i32 %41, 8, !dbg !3764
  store i32 %56, i32* %8, align 8, !dbg !3764
  br label %57, !dbg !3764

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3764
  %61 = load i8*, i8** %60, align 8, !dbg !3764
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3767
  store i8* %61, i8** %62, align 16, !dbg !3768, !tbaa !909
  %63 = icmp eq i8* %61, null, !dbg !3769
  br i1 %63, label %30, label %64, !dbg !3770

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 3, metadata !3758, metadata !DIExpression()), !dbg !3761
  %65 = icmp ult i32 %58, 41, !dbg !3764
  br i1 %65, label %69, label %66, !dbg !3764

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3764
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3764
  store i8* %68, i8** %9, align 8, !dbg !3764
  br label %74, !dbg !3764

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3764
  %71 = zext i32 %58 to i64, !dbg !3764
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3764
  %73 = add nuw nsw i32 %58, 8, !dbg !3764
  store i32 %73, i32* %8, align 8, !dbg !3764
  br label %74, !dbg !3764

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3764
  %78 = load i8*, i8** %77, align 8, !dbg !3764
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3767
  store i8* %78, i8** %79, align 8, !dbg !3768, !tbaa !909
  %80 = icmp eq i8* %78, null, !dbg !3769
  br i1 %80, label %30, label %81, !dbg !3770

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 4, metadata !3758, metadata !DIExpression()), !dbg !3761
  %82 = icmp ult i32 %75, 41, !dbg !3764
  br i1 %82, label %86, label %83, !dbg !3764

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3764
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3764
  store i8* %85, i8** %9, align 8, !dbg !3764
  br label %91, !dbg !3764

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3764
  %88 = zext i32 %75 to i64, !dbg !3764
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3764
  %90 = add nuw nsw i32 %75, 8, !dbg !3764
  store i32 %90, i32* %8, align 8, !dbg !3764
  br label %91, !dbg !3764

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3764
  %95 = load i8*, i8** %94, align 8, !dbg !3764
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3767
  store i8* %95, i8** %96, align 16, !dbg !3768, !tbaa !909
  %97 = icmp eq i8* %95, null, !dbg !3769
  br i1 %97, label %30, label %98, !dbg !3770

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 5, metadata !3758, metadata !DIExpression()), !dbg !3761
  %99 = icmp ult i32 %92, 41, !dbg !3764
  br i1 %99, label %103, label %100, !dbg !3764

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3764
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3764
  store i8* %102, i8** %9, align 8, !dbg !3764
  br label %108, !dbg !3764

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3764
  %105 = zext i32 %92 to i64, !dbg !3764
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3764
  %107 = add nuw nsw i32 %92, 8, !dbg !3764
  store i32 %107, i32* %8, align 8, !dbg !3764
  br label %108, !dbg !3764

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3764
  %111 = load i8*, i8** %110, align 8, !dbg !3764
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3767
  store i8* %111, i8** %112, align 8, !dbg !3768, !tbaa !909
  %113 = icmp eq i8* %111, null, !dbg !3769
  br i1 %113, label %30, label %114, !dbg !3770

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3758, metadata !DIExpression()), !dbg !3761
  %115 = load i8*, i8** %9, align 8, !dbg !3764
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3764
  store i8* %116, i8** %9, align 8, !dbg !3764
  %117 = bitcast i8* %115 to i8**, !dbg !3764
  %118 = load i8*, i8** %117, align 8, !dbg !3764
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3767
  store i8* %118, i8** %119, align 16, !dbg !3768, !tbaa !909
  %120 = icmp eq i8* %118, null, !dbg !3769
  br i1 %120, label %30, label %121, !dbg !3770

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3758, metadata !DIExpression()), !dbg !3761
  %122 = load i8*, i8** %9, align 8, !dbg !3764
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3764
  store i8* %123, i8** %9, align 8, !dbg !3764
  %124 = bitcast i8* %122 to i8**, !dbg !3764
  %125 = load i8*, i8** %124, align 8, !dbg !3764
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3767
  store i8* %125, i8** %126, align 8, !dbg !3768, !tbaa !909
  %127 = icmp eq i8* %125, null, !dbg !3769
  br i1 %127, label %30, label %128, !dbg !3770

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3758, metadata !DIExpression()), !dbg !3761
  %129 = load i8*, i8** %9, align 8, !dbg !3764
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3764
  store i8* %130, i8** %9, align 8, !dbg !3764
  %131 = bitcast i8* %129 to i8**, !dbg !3764
  %132 = load i8*, i8** %131, align 8, !dbg !3764
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3767
  store i8* %132, i8** %133, align 16, !dbg !3768, !tbaa !909
  %134 = icmp eq i8* %132, null, !dbg !3769
  br i1 %134, label %30, label %135, !dbg !3770

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3758, metadata !DIExpression()), !dbg !3761
  %136 = load i8*, i8** %9, align 8, !dbg !3764
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3764
  store i8* %137, i8** %9, align 8, !dbg !3764
  %138 = bitcast i8* %136 to i8**, !dbg !3764
  %139 = load i8*, i8** %138, align 8, !dbg !3764
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3767
  store i8* %139, i8** %140, align 8, !dbg !3768, !tbaa !909
  %141 = icmp eq i8* %139, null, !dbg !3769
  %142 = select i1 %141, i64 9, i64 10, !dbg !3770
  br label %30, !dbg !3770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3774 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3778, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8* %1, metadata !3779, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8* %2, metadata !3780, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8* %3, metadata !3781, metadata !DIExpression()), !dbg !3788
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3789
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3789
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3782, metadata !DIExpression()), !dbg !3790
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3791
  call void @llvm.va_start(i8* nonnull %6), !dbg !3791
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3792
  call void @llvm.va_end(i8* nonnull %6), !dbg !3793
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3794
  ret void, !dbg !3794
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3795 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3796, !tbaa !909
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.145, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3796
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.160, i64 0, i64 0), i32 5) #28, !dbg !3797
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.161, i64 0, i64 0)) #28, !dbg !3797
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.162, i64 0, i64 0), i32 5) #28, !dbg !3798
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.163, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.164, i64 0, i64 0)) #28, !dbg !3798
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.165, i64 0, i64 0), i32 5) #28, !dbg !3799
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.166, i64 0, i64 0)) #28, !dbg !3799
  ret void, !dbg !3800
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3801 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3806, metadata !DIExpression()), !dbg !3807
  %3 = udiv i64 9223372036854775807, %1, !dbg !3808
  %4 = icmp ult i64 %3, %0, !dbg !3808
  br i1 %4, label %5, label %6, !dbg !3810

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3811
  unreachable, !dbg !3811

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %7, metadata !3813, metadata !DIExpression()) #28, !dbg !3819
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %8, metadata !3818, metadata !DIExpression()) #28, !dbg !3819
  %9 = icmp eq i8* %8, null, !dbg !3822
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3824
  br i1 %11, label %12, label %13, !dbg !3824

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3825
  unreachable, !dbg !3825

13:                                               ; preds = %6
  ret i8* %8, !dbg !3826
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3814 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()), !dbg !3827
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3828
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()), !dbg !3827
  %3 = icmp eq i8* %2, null, !dbg !3829
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3830
  br i1 %5, label %6, label %7, !dbg !3830

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3831
  unreachable, !dbg !3831

7:                                                ; preds = %1
  ret i8* %2, !dbg !3832
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3840
  %4 = udiv i64 9223372036854775807, %2, !dbg !3841
  %5 = icmp ult i64 %4, %1, !dbg !3841
  br i1 %5, label %6, label %7, !dbg !3843

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3844
  unreachable, !dbg !3844

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #28, !dbg !3852
  call void @llvm.dbg.value(metadata i64 %8, metadata !3851, metadata !DIExpression()) #28, !dbg !3852
  %9 = icmp eq i64 %8, 0, !dbg !3854
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3856
  br i1 %11, label %12, label %13, !dbg !3856

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3857
  br label %19, !dbg !3859

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %14, metadata !3846, metadata !DIExpression()) #28, !dbg !3852
  %15 = icmp eq i8* %14, null, !dbg !3861
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3863
  br i1 %17, label %18, label %19, !dbg !3863

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3864
  unreachable, !dbg !3864

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3852
  ret i8* %20, !dbg !3865
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3851, metadata !DIExpression()), !dbg !3866
  %3 = icmp eq i64 %1, 0, !dbg !3867
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3868
  br i1 %5, label %6, label %7, !dbg !3868

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3869
  br label %13, !dbg !3870

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %8, metadata !3846, metadata !DIExpression()), !dbg !3866
  %9 = icmp eq i8* %8, null, !dbg !3872
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3873
  br i1 %11, label %12, label %13, !dbg !3873

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3874
  unreachable, !dbg !3874

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3866
  ret i8* %14, !dbg !3875
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !470, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64* %1, metadata !471, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %2, metadata !472, metadata !DIExpression()), !dbg !3876
  %4 = load i64, i64* %1, align 8, !dbg !3877, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %4, metadata !473, metadata !DIExpression()), !dbg !3876
  %5 = icmp eq i8* %0, null, !dbg !3878
  br i1 %5, label %6, label %20, !dbg !3880

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3881
  br i1 %7, label %8, label %13, !dbg !3884

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %9, metadata !473, metadata !DIExpression()), !dbg !3876
  %10 = icmp ugt i64 %2, 128, !dbg !3887
  %11 = zext i1 %10 to i64, !dbg !3887
  %12 = add nuw nsw i64 %9, %11, !dbg !3888
  call void @llvm.dbg.value(metadata i64 %12, metadata !473, metadata !DIExpression()), !dbg !3876
  br label %13, !dbg !3889

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3876
  call void @llvm.dbg.value(metadata i64 %14, metadata !473, metadata !DIExpression()), !dbg !3876
  %15 = udiv i64 9223372036854775807, %2, !dbg !3890
  %16 = icmp ult i64 %15, %14, !dbg !3890
  br i1 %16, label %19, label %17, !dbg !3892

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !473, metadata !DIExpression()), !dbg !3876
  store i64 %14, i64* %1, align 8, !dbg !3893, !tbaa !1164
  %18 = mul i64 %14, %2, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #28, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %28, metadata !3851, metadata !DIExpression()) #28, !dbg !3895
  br label %31, !dbg !3897

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3898
  unreachable, !dbg !3898

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3899
  %22 = icmp ugt i64 %21, %4, !dbg !3902
  br i1 %22, label %24, label %23, !dbg !3903

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3904
  unreachable, !dbg !3904

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3905
  %26 = add nuw i64 %4, 1, !dbg !3906
  %27 = add i64 %26, %25, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %27, metadata !473, metadata !DIExpression()), !dbg !3876
  store i64 %27, i64* %1, align 8, !dbg !3893, !tbaa !1164
  %28 = mul i64 %27, %2, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #28, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %28, metadata !3851, metadata !DIExpression()) #28, !dbg !3895
  %29 = icmp eq i64 %28, 0, !dbg !3908
  br i1 %29, label %30, label %31, !dbg !3897

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3909
  br label %38, !dbg !3910

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %33, metadata !3846, metadata !DIExpression()) #28, !dbg !3895
  %34 = icmp eq i8* %33, null, !dbg !3912
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3913
  br i1 %36, label %37, label %38, !dbg !3913

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3914
  unreachable, !dbg !3914

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3895
  ret i8* %39, !dbg !3915
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3916 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()) #28, !dbg !3920
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()) #28, !dbg !3920
  %3 = icmp eq i8* %2, null, !dbg !3923
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3924
  br i1 %5, label %6, label %7, !dbg !3924

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3925
  unreachable, !dbg !3925

7:                                                ; preds = %1
  ret i8* %2, !dbg !3926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3931, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64* %1, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8* %0, metadata !470, metadata !DIExpression()) #28, !dbg !3934
  call void @llvm.dbg.value(metadata i64* %1, metadata !471, metadata !DIExpression()) #28, !dbg !3934
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()) #28, !dbg !3934
  %3 = load i64, i64* %1, align 8, !dbg !3936, !tbaa !1164
  call void @llvm.dbg.value(metadata i64 %3, metadata !473, metadata !DIExpression()) #28, !dbg !3934
  %4 = icmp eq i8* %0, null, !dbg !3937
  br i1 %4, label %5, label %10, !dbg !3938

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3939
  br i1 %6, label %17, label %7, !dbg !3940

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !473, metadata !DIExpression()) #28, !dbg !3934
  %8 = icmp slt i64 %3, 0, !dbg !3941
  br i1 %8, label %9, label %17, !dbg !3942

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3943
  unreachable, !dbg !3943

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3944
  br i1 %11, label %13, label %12, !dbg !3945

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3946
  unreachable, !dbg !3946

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3947
  %15 = add nuw nsw i64 %3, 1, !dbg !3948
  %16 = add nuw nsw i64 %15, %14, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %16, metadata !473, metadata !DIExpression()) #28, !dbg !3934
  call void @llvm.dbg.value(metadata i8* %0, metadata !3846, metadata !DIExpression()) #28, !dbg !3950
  call void @llvm.dbg.value(metadata i64 %16, metadata !3851, metadata !DIExpression()) #28, !dbg !3950
  br label %17, !dbg !3952

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3953
  store i64 %18, i64* %1, align 8, !dbg !3953, !tbaa !1164
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %19, metadata !3846, metadata !DIExpression()) #28, !dbg !3950
  %20 = icmp eq i8* %19, null, !dbg !3955
  br i1 %20, label %21, label %22, !dbg !3956

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3957
  unreachable, !dbg !3957

22:                                               ; preds = %17
  ret i8* %19, !dbg !3958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3959 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %0, metadata !3963, metadata !DIExpression()) #28, !dbg !3968
  call void @llvm.dbg.value(metadata i64 1, metadata !3966, metadata !DIExpression()) #28, !dbg !3968
  %2 = icmp slt i64 %0, 0, !dbg !3970
  br i1 %2, label %6, label %3, !dbg !3972

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %4, metadata !3967, metadata !DIExpression()) #28, !dbg !3968
  %5 = icmp eq i8* %4, null, !dbg !3974
  br i1 %5, label %6, label %7, !dbg !3975

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3976
  unreachable, !dbg !3976

7:                                                ; preds = %3
  ret i8* %4, !dbg !3977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3964 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3963, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3978
  %3 = udiv i64 9223372036854775807, %1, !dbg !3979
  %4 = icmp ult i64 %3, %0, !dbg !3979
  br i1 %4, label %8, label %5, !dbg !3980

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %6, metadata !3967, metadata !DIExpression()), !dbg !3978
  %7 = icmp eq i8* %6, null, !dbg !3982
  br i1 %7, label %8, label %9, !dbg !3983

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3984
  unreachable, !dbg !3984

9:                                                ; preds = %5
  ret i8* %6, !dbg !3985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()) #28, !dbg !3993
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()) #28, !dbg !3993
  %4 = icmp eq i8* %3, null, !dbg !3996
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3997
  br i1 %6, label %7, label %8, !dbg !3997

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3998
  unreachable, !dbg !3998

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3999, metadata !DIExpression()) #28, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #28, !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()) #28, !dbg !4004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !4006
  ret i8* %3, !dbg !4007
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4010, metadata !DIExpression()), !dbg !4011
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !4012
  %3 = add i64 %2, 1, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %0, metadata !3990, metadata !DIExpression()) #28, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %3, metadata !3991, metadata !DIExpression()) #28, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %3, metadata !3813, metadata !DIExpression()) #28, !dbg !4016
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %4, metadata !3818, metadata !DIExpression()) #28, !dbg !4016
  %5 = icmp eq i8* %4, null, !dbg !4019
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4020
  br i1 %7, label %8, label %9, !dbg !4020

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !4021
  unreachable, !dbg !4021

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3999, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %3, metadata !4003, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !4024
  ret i8* %4, !dbg !4025
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4026 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4027, !tbaa !1104
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.177, i64 0, i64 0), i32 5) #28, !dbg !4028
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* %2) #28, !dbg !4029
  tail call void @abort() #30, !dbg !4030
  unreachable, !dbg !4030
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !4031 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4033, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4039
  %3 = icmp eq i64 %0, 0, !dbg !4040
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4041
  br i1 %5, label %11, label %6, !dbg !4041

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4036, metadata !DIExpression()), !dbg !4042
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4043
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4043
  br i1 %8, label %9, label %11, !dbg !4045

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !4046
  store i32 12, i32* %10, align 4, !dbg !4048, !tbaa !1104
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4033, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %12, metadata !4034, metadata !DIExpression()), !dbg !4039
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !4049
  call void @llvm.dbg.value(metadata i8* %14, metadata !4035, metadata !DIExpression()), !dbg !4039
  br label %15, !dbg !4050

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4039
  ret i8* %16, !dbg !4051
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4052 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4068, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i8* %1, metadata !4069, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4071, metadata !DIExpression()), !dbg !4077
  %6 = bitcast i32* %5 to i8*, !dbg !4078
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4078
  %7 = icmp eq i32* %0, null, !dbg !4079
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4081
  call void @llvm.dbg.value(metadata i32* %8, metadata !4068, metadata !DIExpression()), !dbg !4077
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %9, metadata !4072, metadata !DIExpression()), !dbg !4077
  %10 = icmp ugt i64 %9, -3, !dbg !4083
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4084
  br i1 %12, label %13, label %18, !dbg !4084

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !4085
  br i1 %14, label %18, label %15, !dbg !4086

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4087, !tbaa !1185
  call void @llvm.dbg.value(metadata i8 %16, metadata !4074, metadata !DIExpression()), !dbg !4088
  %17 = zext i8 %16 to i32, !dbg !4089
  store i32 %17, i32* %8, align 4, !dbg !4090, !tbaa !1104
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4077
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4091
  ret i64 %19, !dbg !4091
}

; Function Attrs: nounwind
declare !dbg !4092 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !4096 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4124, metadata !DIExpression()), !dbg !4127
  %2 = tail call noalias i8* @xmalloc(i64 33) #28, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %2, metadata !4126, metadata !DIExpression()), !dbg !4127
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4129
  call void @llvm.dbg.value(metadata i8* %2, metadata !4130, metadata !DIExpression()) #28, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %3, metadata !4133, metadata !DIExpression()) #28, !dbg !4135
  call void @llvm.dbg.value(metadata i64 32, metadata !4134, metadata !DIExpression()) #28, !dbg !4135
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !4137
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4138
  store i8 0, i8* %5, align 1, !dbg !4139, !tbaa !1185
  %6 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !4140
  call void @llvm.dbg.value(metadata i8* undef, metadata !4125, metadata !DIExpression()), !dbg !4127
  %7 = icmp sgt i64 %6, 0, !dbg !4142
  br i1 %7, label %8, label %17, !dbg !4144

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %9, metadata !4125, metadata !DIExpression()), !dbg !4127
  br label %10, !dbg !4146

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4125, metadata !DIExpression()), !dbg !4127
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4147
  %13 = load i8, i8* %12, align 1, !dbg !4147, !tbaa !1185
  %14 = icmp eq i8 %13, 32, !dbg !4148
  br i1 %14, label %15, label %17, !dbg !4146

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !4125, metadata !DIExpression()), !dbg !4127
  store i8 0, i8* %12, align 1, !dbg !4149, !tbaa !1185
  %16 = icmp ult i8* %2, %12, !dbg !4142
  br i1 %16, label %10, label %17, !dbg !4144, !llvm.loop !4150

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !4152
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !4153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4159, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64* %1, metadata !4160, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4161, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 %3, metadata !4162, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 0, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 0, metadata !4164, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4165, metadata !DIExpression()), !dbg !4167
  %5 = tail call i32 @utmpxname(i8* %0) #28, !dbg !4168
  tail call void @setutxent() #28, !dbg !4169
  call void @llvm.dbg.value(metadata i64 0, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4165, metadata !DIExpression()), !dbg !4167
  %6 = tail call %struct.utmpx* @getutxent() #28, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4166, metadata !DIExpression()), !dbg !4167
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4171
  br i1 %7, label %76, label %8, !dbg !4172

8:                                                ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp ne i32 %11, 0
  br label %13, !dbg !4172

13:                                               ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %74, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %73, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %72, %70 ]
  %17 = phi i64 [ 0, %8 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4165, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4173, metadata !DIExpression()) #28, !dbg !4180
  call void @llvm.dbg.value(metadata i32 %3, metadata !4178, metadata !DIExpression()) #28, !dbg !4180
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4183
  %19 = load i8, i8* %18, align 4, !dbg !4183, !tbaa !1185
  %20 = icmp eq i8 %19, 0, !dbg !4183
  br i1 %20, label %25, label %21, !dbg !4183

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4183
  %23 = load i16, i16* %22, align 4, !dbg !4183, !tbaa !1186
  %24 = icmp eq i16 %23, 7, !dbg !4183
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !4180
  call void @llvm.dbg.value(metadata i1 %26, metadata !4179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !4180
  %27 = or i1 %10, %26, !dbg !4184
  br i1 %27, label %28, label %70, !dbg !4184

28:                                               ; preds = %25
  %29 = and i1 %12, %26, !dbg !4186
  br i1 %29, label %30, label %41, !dbg !4186

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4188
  %32 = load i32, i32* %31, align 4, !dbg !4188, !tbaa !1283
  %33 = icmp sgt i32 %32, 0, !dbg !4189
  br i1 %33, label %34, label %41, !dbg !4190

34:                                               ; preds = %30
  %35 = tail call i32 @kill(i32 %32, i32 0) #28, !dbg !4191
  %36 = icmp slt i32 %35, 0, !dbg !4192
  br i1 %36, label %37, label %41, !dbg !4193

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #32, !dbg !4194
  %39 = load i32, i32* %38, align 4, !dbg !4194, !tbaa !1104
  %40 = icmp eq i32 %39, 3, !dbg !4195
  br i1 %40, label %70, label %41, !dbg !4196

41:                                               ; preds = %37, %34, %30, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !4164, metadata !DIExpression()), !dbg !4167
  %42 = icmp eq i64 %15, %17, !dbg !4197
  br i1 %42, label %43, label %63, !dbg !4200

43:                                               ; preds = %41
  %44 = bitcast %struct.utmpx* %16 to i8*, !dbg !4201
  call void @llvm.dbg.value(metadata i8* %44, metadata !490, metadata !DIExpression()) #28, !dbg !4202
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #28, !dbg !4202
  call void @llvm.dbg.value(metadata i64 384, metadata !492, metadata !DIExpression()) #28, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %17, metadata !493, metadata !DIExpression()) #28, !dbg !4202
  %45 = icmp eq %struct.utmpx* %16, null, !dbg !4204
  br i1 %45, label %46, label %51, !dbg !4206

46:                                               ; preds = %43
  %47 = icmp eq i64 %15, 0, !dbg !4207
  br i1 %47, label %58, label %48, !dbg !4210

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 %17, metadata !493, metadata !DIExpression()) #28, !dbg !4202
  %49 = icmp ugt i64 %15, 24019198012642645, !dbg !4211
  br i1 %49, label %50, label %58, !dbg !4213

50:                                               ; preds = %48
  tail call void @xalloc_die() #30, !dbg !4214
  unreachable, !dbg !4214

51:                                               ; preds = %43
  %52 = icmp ult i64 %15, 16012798675095096, !dbg !4215
  br i1 %52, label %54, label %53, !dbg !4218

53:                                               ; preds = %51
  tail call void @xalloc_die() #30, !dbg !4219
  unreachable, !dbg !4219

54:                                               ; preds = %51
  %55 = lshr i64 %15, 1, !dbg !4220
  %56 = add nuw nsw i64 %15, 1, !dbg !4221
  %57 = add nuw nsw i64 %56, %55, !dbg !4222
  call void @llvm.dbg.value(metadata i64 %57, metadata !493, metadata !DIExpression()) #28, !dbg !4202
  br label %58

58:                                               ; preds = %46, %48, %54
  %59 = phi i64 [ %57, %54 ], [ %15, %48 ], [ 1, %46 ], !dbg !4202
  call void @llvm.dbg.value(metadata i64 %59, metadata !493, metadata !DIExpression()) #28, !dbg !4202
  %60 = mul nuw nsw i64 %59, 384, !dbg !4223
  %61 = tail call i8* @xrealloc(i8* %44, i64 %60) #28, !dbg !4224
  %62 = bitcast i8* %61 to %struct.utmpx*, !dbg !4225
  call void @llvm.dbg.value(metadata %struct.utmpx* %62, metadata !4165, metadata !DIExpression()), !dbg !4167
  br label %63, !dbg !4226

63:                                               ; preds = %58, %41
  %64 = phi i64 [ %59, %58 ], [ %17, %41 ], !dbg !4167
  %65 = phi %struct.utmpx* [ %62, %58 ], [ %16, %41 ], !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %65, metadata !4165, metadata !DIExpression()), !dbg !4167
  %66 = add i64 %15, 1, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %66, metadata !4163, metadata !DIExpression()), !dbg !4167
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !4228
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !4229
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !4229
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %68, i8* nonnull align 4 dereferenceable(384) %69, i64 384, i1 false), !dbg !4229, !tbaa.struct !4230
  br label %70, !dbg !4231

70:                                               ; preds = %37, %25, %63
  %71 = phi i64 [ %64, %63 ], [ %17, %25 ], [ %17, %37 ], !dbg !4167
  %72 = phi %struct.utmpx* [ %65, %63 ], [ %16, %25 ], [ %16, %37 ], !dbg !4167
  %73 = phi i64 [ %66, %63 ], [ %15, %25 ], [ %15, %37 ], !dbg !4167
  call void @llvm.dbg.value(metadata i64 %73, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %72, metadata !4165, metadata !DIExpression()), !dbg !4167
  %74 = tail call %struct.utmpx* @getutxent() #28, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.utmpx* %74, metadata !4166, metadata !DIExpression()), !dbg !4167
  %75 = icmp eq %struct.utmpx* %74, null, !dbg !4171
  br i1 %75, label %76, label %13, !dbg !4172, !llvm.loop !4232

76:                                               ; preds = %70, %4
  %77 = phi %struct.utmpx* [ null, %4 ], [ %72, %70 ], !dbg !4167
  %78 = phi i64 [ 0, %4 ], [ %73, %70 ], !dbg !4167
  tail call void @endutxent() #28, !dbg !4234
  store i64 %78, i64* %1, align 8, !dbg !4235, !tbaa !1164
  store %struct.utmpx* %77, %struct.utmpx** %2, align 8, !dbg !4236, !tbaa !909
  ret i32 0, !dbg !4237
}

declare !dbg !4238 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !4240 void @setutxent() local_unnamed_addr #3

declare !dbg !4241 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !4245 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !4249 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4250 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4288, metadata !DIExpression()), !dbg !4293
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !4294
  call void @llvm.dbg.value(metadata i1 undef, metadata !4289, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4293
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4295, metadata !DIExpression()), !dbg !4299
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4301
  %4 = load i32, i32* %3, align 8, !dbg !4301, !tbaa !4302
  %5 = and i32 %4, 32, !dbg !4304
  %6 = icmp eq i32 %5, 0, !dbg !4304
  call void @llvm.dbg.value(metadata i1 %6, metadata !4291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4293
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !4305
  %8 = icmp eq i32 %7, 0, !dbg !4306
  call void @llvm.dbg.value(metadata i1 %8, metadata !4292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4293
  br i1 %6, label %9, label %19, !dbg !4307

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %10, metadata !4289, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4293
  %11 = or i1 %10, %8, !dbg !4310
  %12 = xor i1 %8, true, !dbg !4310
  %13 = sext i1 %12 to i32, !dbg !4310
  br i1 %11, label %22, label %14, !dbg !4310

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4311
  %16 = load i32, i32* %15, align 4, !dbg !4311, !tbaa !1104
  %17 = icmp ne i32 %16, 9, !dbg !4312
  %18 = sext i1 %17 to i32, !dbg !4313
  br label %22, !dbg !4313

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4314

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4316
  store i32 0, i32* %21, align 4, !dbg !4318, !tbaa !1104
  br label %22, !dbg !4316

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4293
  ret i32 %23, !dbg !4319
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4320 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  %2 = icmp eq i8* %1, null, !dbg !4325
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.191, i64 0, i64 0), i8* %1, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %3, metadata !4322, metadata !DIExpression()), !dbg !4324
  %4 = load i8, i8* %3, align 1, !dbg !4328, !tbaa !1185
  %5 = icmp eq i8 %4, 0, !dbg !4332
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.192, i64 0, i64 0), i8* %3, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %6, metadata !4322, metadata !DIExpression()), !dbg !4324
  ret i8* %6, !dbg !4334
}

; Function Attrs: nounwind
declare !dbg !4335 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4336 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4374, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i32 0, metadata !4375, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i32 0, metadata !4377, metadata !DIExpression()), !dbg !4378
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4379
  call void @llvm.dbg.value(metadata i32 %2, metadata !4376, metadata !DIExpression()), !dbg !4378
  %3 = icmp slt i32 %2, 0, !dbg !4380
  br i1 %3, label %4, label %6, !dbg !4382

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4383
  br label %24, !dbg !4384

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4385
  %8 = icmp eq i32 %7, 0, !dbg !4385
  br i1 %8, label %13, label %9, !dbg !4387

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4388
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !4389
  %12 = icmp eq i64 %11, -1, !dbg !4390
  br i1 %12, label %16, label %13, !dbg !4391

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !4392
  %15 = icmp eq i32 %14, 0, !dbg !4392
  br i1 %15, label %16, label %18, !dbg !4393

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4375, metadata !DIExpression()), !dbg !4378
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4394
  call void @llvm.dbg.value(metadata i32 %21, metadata !4377, metadata !DIExpression()), !dbg !4378
  br label %24, !dbg !4395

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4396
  %20 = load i32, i32* %19, align 4, !dbg !4396, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 %20, metadata !4375, metadata !DIExpression()), !dbg !4378
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4394
  call void @llvm.dbg.value(metadata i32 %21, metadata !4377, metadata !DIExpression()), !dbg !4378
  %22 = icmp eq i32 %20, 0, !dbg !4397
  br i1 %22, label %24, label %23, !dbg !4395

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4399, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 -1, metadata !4377, metadata !DIExpression()), !dbg !4378
  br label %24, !dbg !4401

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4378
  ret i32 %25, !dbg !4402
}

; Function Attrs: nofree nounwind
declare !dbg !4403 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4406 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4407 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4448, metadata !DIExpression()), !dbg !4449
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4450
  br i1 %2, label %6, label %3, !dbg !4452

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4453
  %5 = icmp eq i32 %4, 0, !dbg !4453
  br i1 %5, label %6, label %8, !dbg !4454

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4455
  br label %17, !dbg !4456

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4457, metadata !DIExpression()) #28, !dbg !4462
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4464
  %10 = load i32, i32* %9, align 8, !dbg !4464, !tbaa !4302
  %11 = and i32 %10, 256, !dbg !4466
  %12 = icmp eq i32 %11, 0, !dbg !4466
  br i1 %12, label %15, label %13, !dbg !4467

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !4468
  br label %15, !dbg !4468

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4469
  br label %17, !dbg !4470

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4449
  ret i32 %18, !dbg !4471
}

; Function Attrs: nofree nounwind
declare !dbg !4472 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4475 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4514, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %1, metadata !4515, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 %2, metadata !4516, metadata !DIExpression()), !dbg !4520
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4521
  %5 = load i8*, i8** %4, align 8, !dbg !4521, !tbaa !4522
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4523
  %7 = load i8*, i8** %6, align 8, !dbg !4523, !tbaa !4524
  %8 = icmp eq i8* %5, %7, !dbg !4525
  br i1 %8, label %9, label %28, !dbg !4526

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4527
  %11 = load i8*, i8** %10, align 8, !dbg !4527, !tbaa !4528
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4529
  %13 = load i8*, i8** %12, align 8, !dbg !4529, !tbaa !4530
  %14 = icmp eq i8* %11, %13, !dbg !4531
  br i1 %14, label %15, label %28, !dbg !4532

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4533
  %17 = load i8*, i8** %16, align 8, !dbg !4533, !tbaa !4534
  %18 = icmp eq i8* %17, null, !dbg !4535
  br i1 %18, label %19, label %28, !dbg !4536

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4537
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4538
  call void @llvm.dbg.value(metadata i64 %21, metadata !4517, metadata !DIExpression()), !dbg !4539
  %22 = icmp eq i64 %21, -1, !dbg !4540
  br i1 %22, label %30, label %23, !dbg !4542

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4543
  %25 = load i32, i32* %24, align 8, !dbg !4544, !tbaa !4302
  %26 = and i32 %25, -17, !dbg !4544
  store i32 %26, i32* %24, align 8, !dbg !4544, !tbaa !4302
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4545
  store i64 %21, i64* %27, align 8, !dbg !4546, !tbaa !4547
  br label %30, !dbg !4548

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4549
  br label %30, !dbg !4550

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4520
  ret i32 %31, !dbg !4551
}

; Function Attrs: nofree nounwind
declare !dbg !4552 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind }
attributes #20 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!2, !308, !314, !356, !363, !443, !445, !369, !375, !451, !454, !437, !460, !477, !479, !481, !484, !495, !497, !886, !888, !890}
!llvm.ident = !{!892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892, !892}
!llvm.module.flags = !{!893, !894, !895, !896, !897}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 162, type: !279, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/who.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 208, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !7, size: 32, elements: !13)
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
!25 = !{!26, !28, !29, !33, !34}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !30, line: 7, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 160, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !{!36, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !71, !0, !74, !106, !213, !217, !228, !233, !260, !270, !272}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "do_lookup", scope: !2, file: !3, line: 102, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "short_list", scope: !2, file: !3, line: 107, type: !38, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "short_output", scope: !2, file: !3, line: 110, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 115, type: !38, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 118, type: !38, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "include_mesg", scope: !2, file: !3, line: 122, type: !38, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "include_exit", scope: !2, file: !3, line: 125, type: !38, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "need_boottime", scope: !2, file: !3, line: 128, type: !38, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "need_deadprocs", scope: !2, file: !3, line: 131, type: !38, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "need_login", scope: !2, file: !3, line: 134, type: !38, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "need_initspawn", scope: !2, file: !3, line: 137, type: !38, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "need_clockchange", scope: !2, file: !3, line: 140, type: !38, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "need_runlevel", scope: !2, file: !3, line: 143, type: !38, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "need_users", scope: !2, file: !3, line: 146, type: !38, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "my_line_only", scope: !2, file: !3, line: 149, type: !38, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 153, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 154, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "mesg", scope: !76, file: !3, line: 249, type: !103, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 244, type: !77, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !73, !69, !70, !73, !69, !69, !69, !69, !69, !69}
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !95, !99, !100, !101}
!80 = !DILocalVariable(name: "userlen", arg: 1, scope: !76, file: !3, line: 244, type: !73)
!81 = !DILocalVariable(name: "user", arg: 2, scope: !76, file: !3, line: 244, type: !69)
!82 = !DILocalVariable(name: "state", arg: 3, scope: !76, file: !3, line: 244, type: !70)
!83 = !DILocalVariable(name: "linelen", arg: 4, scope: !76, file: !3, line: 245, type: !73)
!84 = !DILocalVariable(name: "line", arg: 5, scope: !76, file: !3, line: 245, type: !69)
!85 = !DILocalVariable(name: "time_str", arg: 6, scope: !76, file: !3, line: 246, type: !69)
!86 = !DILocalVariable(name: "idle", arg: 7, scope: !76, file: !3, line: 246, type: !69)
!87 = !DILocalVariable(name: "pid", arg: 8, scope: !76, file: !3, line: 246, type: !69)
!88 = !DILocalVariable(name: "comment", arg: 9, scope: !76, file: !3, line: 247, type: !69)
!89 = !DILocalVariable(name: "exitstr", arg: 10, scope: !76, file: !3, line: 247, type: !69)
!90 = !DILocalVariable(name: "buf", scope: !76, file: !3, line: 250, type: !26)
!91 = !DILocalVariable(name: "x_idle", scope: !76, file: !3, line: 251, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DILocalVariable(name: "x_pid", scope: !76, file: !3, line: 252, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 104, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 13)
!99 = !DILocalVariable(name: "x_exitstr", scope: !76, file: !3, line: 253, type: !26)
!100 = !DILocalVariable(name: "err", scope: !76, file: !3, line: 254, type: !73)
!101 = !DILocalVariable(name: "p", scope: !102, file: !3, line: 303, type: !26)
!102 = distinct !DILexicalBlock(scope: !76, file: !3, line: 301, column: 3)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "hoststr", scope: !108, file: !3, line: 339, type: !26, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !109, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !29}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !115, line: 55, size: 3072, elements: !116)
!115 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!116 = !{!117, !118, !120, !124, !128, !129, !133, !138, !140, !145, !147}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !114, file: !115, line: 57, baseType: !34, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !114, file: !115, line: 58, baseType: !119, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !32, line: 154, baseType: !73)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !114, file: !115, line: 59, baseType: !121, size: 256, offset: 64)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !114, file: !115, line: 61, baseType: !125, size: 32, offset: 320)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 4)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !114, file: !115, line: 63, baseType: !121, size: 256, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !114, file: !115, line: 65, baseType: !130, size: 2048, offset: 608)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !114, file: !115, line: 67, baseType: !134, size: 32, offset: 2656)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !115, line: 42, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !134, file: !115, line: 45, baseType: !34, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !134, file: !115, line: 46, baseType: !34, size: 16, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !114, file: !115, line: 74, baseType: !139, size: 32, offset: 2688)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !32, line: 41, baseType: !73)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !114, file: !115, line: 79, baseType: !141, size: 64, offset: 2720)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !115, line: 75, size: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !141, file: !115, line: 77, baseType: !139, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !141, file: !115, line: 78, baseType: !139, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !114, file: !115, line: 84, baseType: !146, size: 128, offset: 2784)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !126)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !114, file: !115, line: 85, baseType: !148, size: 160, offset: 2912)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 20)
!151 = !{!152, !153, !154, !190, !191, !192, !196, !200, !201, !205, !211, !212}
!152 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !108, file: !3, line: 333, type: !111)
!153 = !DILocalVariable(name: "boottime", arg: 2, scope: !108, file: !3, line: 333, type: !29)
!154 = !DILocalVariable(name: "stats", scope: !108, file: !3, line: 335, type: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !156, line: 26, size: 1152, elements: !157)
!156 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!157 = !{!158, !161, !163, !165, !167, !169, !171, !172, !173, !175, !177, !179, !186, !187, !188}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !155, file: !156, line: 28, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !32, line: 145, baseType: !160)
!160 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !155, file: !156, line: 33, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !32, line: 148, baseType: !160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !155, file: !156, line: 41, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !32, line: 151, baseType: !160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !155, file: !156, line: 42, baseType: !166, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !32, line: 150, baseType: !7)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !155, file: !156, line: 44, baseType: !168, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !32, line: 146, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !155, file: !156, line: 45, baseType: !170, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !32, line: 147, baseType: !7)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !155, file: !156, line: 47, baseType: !73, size: 32, offset: 288)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !155, file: !156, line: 49, baseType: !159, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !155, file: !156, line: 54, baseType: !174, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !33)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !155, file: !156, line: 58, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !32, line: 175, baseType: !33)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !155, file: !156, line: 60, baseType: !178, size: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !32, line: 180, baseType: !33)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !155, file: !156, line: 71, baseType: !180, size: 128, offset: 576)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !181, line: 10, size: 128, elements: !182)
!181 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !180, file: !181, line: 12, baseType: !31, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !180, file: !181, line: 16, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !32, line: 197, baseType: !33)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !155, file: !156, line: 72, baseType: !180, size: 128, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !155, file: !156, line: 73, baseType: !180, size: 128, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !155, file: !156, line: 86, baseType: !189, size: 192, offset: 960)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !104)
!190 = !DILocalVariable(name: "last_change", scope: !108, file: !3, line: 336, type: !29)
!191 = !DILocalVariable(name: "mesg", scope: !108, file: !3, line: 337, type: !27)
!192 = !DILocalVariable(name: "idlestr", scope: !108, file: !3, line: 338, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 56, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 7)
!196 = !DILocalVariable(name: "line", scope: !108, file: !3, line: 347, type: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 304, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 38)
!200 = !DILocalVariable(name: "p", scope: !108, file: !3, line: 348, type: !26)
!201 = !DILocalVariable(name: "pidstr", scope: !108, file: !3, line: 349, type: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 96, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 12)
!205 = !DILocalVariable(name: "ut_host", scope: !206, file: !3, line: 377, type: !208)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 376, column: 5)
!207 = distinct !DILexicalBlock(scope: !108, file: !3, line: 375, column: 7)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 257)
!211 = !DILocalVariable(name: "host", scope: !206, file: !3, line: 378, type: !26)
!212 = !DILocalVariable(name: "display", scope: !206, file: !3, line: 379, type: !26)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "hostlen", scope: !108, file: !3, line: 341, type: !215, isLocal: true, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !160)
!216 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "now", scope: !219, file: !3, line: 190, type: !29, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 188, type: !220, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!69, !29, !29}
!222 = !{!223, !224, !225}
!223 = !DILocalVariable(name: "when", arg: 1, scope: !219, file: !3, line: 188, type: !29)
!224 = !DILocalVariable(name: "boottime", arg: 2, scope: !219, file: !3, line: 188, type: !29)
!225 = !DILocalVariable(name: "seconds_idle", scope: !226, file: !3, line: 197, type: !73)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 196, column: 5)
!227 = distinct !DILexicalBlock(scope: !219, file: !3, line: 195, column: 7)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "idle_hhmm", scope: !219, file: !3, line: 202, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 6)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "buf", scope: !235, file: !3, line: 220, type: !257, isLocal: true, isDefinition: true)
!235 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 218, type: !236, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!69, !111}
!238 = !{!239, !240, !241}
!239 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !235, file: !3, line: 218, type: !111)
!240 = !DILocalVariable(name: "t", scope: !235, file: !3, line: 228, type: !29)
!241 = !DILocalVariable(name: "tmp", scope: !235, file: !3, line: 229, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !244, line: 7, size: 448, elements: !245)
!244 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !243, file: !244, line: 9, baseType: !73, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !243, file: !244, line: 10, baseType: !73, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !243, file: !244, line: 11, baseType: !73, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !243, file: !244, line: 12, baseType: !73, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !243, file: !244, line: 13, baseType: !73, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !243, file: !244, line: 14, baseType: !73, size: 32, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !243, file: !244, line: 15, baseType: !73, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !243, file: !244, line: 16, baseType: !73, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !243, file: !244, line: 17, baseType: !73, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !243, file: !244, line: 20, baseType: !33, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !243, file: !244, line: 21, baseType: !69, size: 64, offset: 384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 264, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 33)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "runlevline", scope: !262, file: !3, line: 516, type: !26, isLocal: true, isDefinition: true)
!262 = distinct !DISubprogram(name: "print_runlevel", scope: !3, file: !3, line: 514, type: !263, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !111}
!265 = !{!266, !267, !269}
!266 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !262, file: !3, line: 514, type: !111)
!267 = !DILocalVariable(name: "last", scope: !262, file: !3, line: 517, type: !268)
!268 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!269 = !DILocalVariable(name: "curr", scope: !262, file: !3, line: 518, type: !268)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "comment", scope: !262, file: !3, line: 516, type: !26, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "exitstr", scope: !274, file: !3, line: 461, type: !26, isLocal: true, isDefinition: true)
!274 = distinct !DISubprogram(name: "print_deadprocs", scope: !3, file: !3, line: 459, type: !263, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !274, file: !3, line: 459, type: !111)
!277 = !DILocalVariable(name: "comment", scope: !274, file: !3, line: 462, type: !26)
!278 = !DILocalVariable(name: "pidstr", scope: !274, file: !3, line: 463, type: !202)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4608, elements: !289)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !282, line: 50, size: 256, elements: !283)
!282 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!283 = !{!284, !285, !286, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !282, line: 52, baseType: !69, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !281, file: !282, line: 55, baseType: !73, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !281, file: !282, line: 56, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !282, line: 57, baseType: !73, size: 32, offset: 192)
!289 = !{!290}
!290 = !DISubrange(count: 18)
!291 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!292 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!293 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!294 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!295 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!296 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!297 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!298 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!299 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!300 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!301 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!302 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!303 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!304 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!305 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "Version", scope: !308, file: !309, line: 2, type: !69, isLocal: false, isDefinition: true)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !311, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = !{}
!311 = !{!306}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "last_cherror", scope: !314, file: !315, line: 28, type: !73, isLocal: true, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !316, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = !{!317, !312}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "hints", scope: !319, file: !315, line: 64, type: !328, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "canon_host_r", scope: !315, file: !315, line: 61, type: !320, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!26, !69, !287}
!322 = !{!323, !324, !325, !326, !353}
!323 = !DILocalVariable(name: "host", arg: 1, scope: !319, file: !315, line: 61, type: !69)
!324 = !DILocalVariable(name: "cherror", arg: 2, scope: !319, file: !315, line: 61, type: !287)
!325 = !DILocalVariable(name: "retval", scope: !319, file: !315, line: 63, type: !26)
!326 = !DILocalVariable(name: "res", scope: !319, file: !315, line: 65, type: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !329, line: 565, size: 384, elements: !330)
!329 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!330 = !{!331, !332, !333, !334, !335, !339, !351, !352}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !328, file: !329, line: 567, baseType: !73, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !328, file: !329, line: 568, baseType: !73, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !328, file: !329, line: 569, baseType: !73, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !328, file: !329, line: 570, baseType: !73, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !328, file: !329, line: 571, baseType: !336, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !337, line: 33, baseType: !338)
!337 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !32, line: 210, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !328, file: !329, line: 572, baseType: !340, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !337, line: 178, size: 128, elements: !342)
!342 = !{!343, !347}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !341, file: !337, line: 180, baseType: !344, size: 16)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !345, line: 28, baseType: !346)
!345 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "")
!346 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !341, file: !337, line: 181, baseType: !348, size: 112, offset: 16)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 112, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 14)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !328, file: !329, line: 573, baseType: !26, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !328, file: !329, line: 574, baseType: !327, size: 64, offset: 320)
!353 = !DILocalVariable(name: "status", scope: !319, file: !315, line: 66, type: !73)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "file_name", scope: !356, file: !357, line: 46, type: !69, isLocal: true, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !358, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!358 = !{!354, !359}
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !356, file: !357, line: 56, type: !38, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "exit_failure", scope: !363, file: !364, line: 24, type: !366, isLocal: false, isDefinition: true)
!363 = distinct !DICompileUnit(language: DW_LANG_C99, file: !364, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !365, splitDebugInlining: false, nameTableKind: None)
!364 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!365 = !{!361}
!366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "program_name", scope: !369, file: !370, line: 33, type: !69, isLocal: false, isDefinition: true)
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !371, globals: !372, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!371 = !{!28, !26}
!372 = !{!367}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !375, file: !376, line: 85, type: !431, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !377, retainedTypes: !398, globals: !399, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = !{!11, !378, !383}
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !7, size: 32, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 46, baseType: !7, size: 32, elements: !385)
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
!398 = !{!73, !346, !215, !26}
!399 = !{!373, !400, !406, !416, !418, !420, !427, !429}
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !375, file: !376, line: 101, type: !402, isLocal: false, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 320, elements: !404)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!404 = !{!405}
!405 = !DISubrange(count: 10)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !375, file: !376, line: 1052, type: !408, isLocal: false, isDefinition: true)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !376, line: 65, size: 448, elements: !409)
!409 = !{!410, !411, !412, !414, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !408, file: !376, line: 68, baseType: !11, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !376, line: 71, baseType: !73, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !408, file: !376, line: 75, baseType: !413, size: 256, offset: 64)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !93)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !408, file: !376, line: 78, baseType: !69, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !408, file: !376, line: 81, baseType: !69, size: 64, offset: 384)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !375, file: !376, line: 116, type: !408, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "slot0", scope: !375, file: !376, line: 842, type: !130, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "slotvec", scope: !375, file: !376, line: 845, type: !422, isLocal: true, isDefinition: true)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !376, line: 834, size: 128, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !423, file: !376, line: 836, baseType: !215, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !423, file: !376, line: 837, baseType: !26, size: 64, offset: 64)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "nslots", scope: !375, file: !376, line: 843, type: !73, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "slotvec0", scope: !375, file: !376, line: 844, type: !423, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 704, elements: !433)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!433 = !{!434}
!434 = !DISubrange(count: 11)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !437, file: !438, line: 26, type: !440, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!435}
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 376, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 47)
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !447, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/imaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !449, line: 101, baseType: !450)
!449 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !32, line: 72, baseType: !33)
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!453 = !{!28}
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !456, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!456 = !{!457}
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !455, line: 40, baseType: !7, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !462, retainedTypes: !476, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!462 = !{!463}
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !465, file: !464, line: 186, baseType: !7, size: 32, elements: !474)
!464 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!465 = distinct !DISubprogram(name: "x2nrealloc", scope: !464, file: !464, line: 174, type: !466, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !469)
!466 = !DISubroutineType(types: !467)
!467 = !{!28, !28, !468, !215}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!469 = !{!470, !471, !472, !473}
!470 = !DILocalVariable(name: "p", arg: 1, scope: !465, file: !464, line: 174, type: !28)
!471 = !DILocalVariable(name: "pn", arg: 2, scope: !465, file: !464, line: 174, type: !468)
!472 = !DILocalVariable(name: "s", arg: 3, scope: !465, file: !464, line: 174, type: !215)
!473 = !DILocalVariable(name: "n", scope: !465, file: !464, line: 176, type: !215)
!474 = !{!475}
!475 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!476 = !{!215, !26, !28}
!477 = distinct !DICompileUnit(language: DW_LANG_C99, file: !478, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, splitDebugInlining: false, nameTableKind: None)
!478 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!483 = !{!215}
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !486, retainedTypes: !494, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!486 = !{!5, !487}
!487 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !488, file: !464, line: 186, baseType: !7, size: 32, elements: !474)
!488 = distinct !DISubprogram(name: "x2nrealloc", scope: !464, file: !464, line: 174, type: !466, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DILocalVariable(name: "p", arg: 1, scope: !488, file: !464, line: 174, type: !28)
!491 = !DILocalVariable(name: "pn", arg: 2, scope: !488, file: !464, line: 174, type: !468)
!492 = !DILocalVariable(name: "s", arg: 3, scope: !488, file: !464, line: 174, type: !215)
!493 = !DILocalVariable(name: "n", scope: !488, file: !464, line: 176, type: !215)
!494 = !{!26, !28, !215}
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !499, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!500}
!500 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !501, line: 41, baseType: !7, size: 32, elements: !502)
!501 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!503 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!504 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!505 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!506 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!507 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!508 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!509 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!510 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!511 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!512 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!513 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!514 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!515 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!516 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!517 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!518 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!519 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!520 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!521 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!522 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!523 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!524 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!525 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!526 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!527 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!528 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!529 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!530 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!531 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!532 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!533 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!534 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!535 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!536 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!537 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!538 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!539 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!540 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!541 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!542 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!543 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!544 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!545 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!546 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!547 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!548 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!549 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!550 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!551 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!552 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!611 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!614 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!615 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!616 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!617 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!618 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!619 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!620 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!621 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!622 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!623 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!624 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!625 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!698 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!771 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!772 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!773 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!774 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!775 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!776 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!777 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!778 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!779 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!780 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!781 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!782 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!783 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!784 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!785 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!787 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!788 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!789 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!790 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!791 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!792 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!818 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!819 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!820 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!821 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!822 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!827 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!828 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!829 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!830 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!886 = distinct !DICompileUnit(language: DW_LANG_C99, file: !887, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, splitDebugInlining: false, nameTableKind: None)
!887 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!888 = distinct !DICompileUnit(language: DW_LANG_C99, file: !889, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!890 = distinct !DICompileUnit(language: DW_LANG_C99, file: !891, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!891 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!892 = !{!"clang version 12.0.1"}
!893 = !{i32 7, !"Dwarf Version", i32 4}
!894 = !{i32 2, !"Debug Info Version", i32 3}
!895 = !{i32 1, !"wchar_size", i32 4}
!896 = !{i32 7, !"PIC Level", i32 2}
!897 = !{i32 7, !"PIE Level", i32 2}
!898 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 638, type: !899, scopeLine: 639, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !73}
!901 = !{!902}
!902 = !DILocalVariable(name: "status", arg: 1, scope: !898, file: !3, line: 638, type: !73)
!903 = !DILocation(line: 0, scope: !898)
!904 = !DILocation(line: 640, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !3, line: 640, column: 7)
!906 = !DILocation(line: 640, column: 7, scope: !898)
!907 = !DILocation(line: 641, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 641, column: 5)
!909 = !{!910, !910, i64 0}
!910 = !{!"any pointer", !911, i64 0}
!911 = !{!"omnipotent char", !912, i64 0}
!912 = !{!"Simple C/C++ TBAA"}
!913 = !DILocation(line: 644, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !905, file: !3, line: 643, column: 5)
!915 = !DILocation(line: 645, column: 7, scope: !914)
!916 = !DILocation(line: 648, column: 7, scope: !914)
!917 = !DILocation(line: 655, column: 7, scope: !914)
!918 = !DILocation(line: 658, column: 7, scope: !914)
!919 = !DILocation(line: 663, column: 7, scope: !914)
!920 = !DILocation(line: 669, column: 7, scope: !914)
!921 = !DILocation(line: 675, column: 7, scope: !914)
!922 = !DILocation(line: 676, column: 7, scope: !914)
!923 = !DILocation(line: 677, column: 7, scope: !914)
!924 = !DILocalVariable(name: "program", arg: 1, scope: !925, file: !926, line: 634, type: !69)
!925 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !926, file: !926, line: 634, type: !927, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!926 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!927 = !DISubroutineType(types: !928)
!928 = !{null, !69}
!929 = !{!924, !930, !937, !938, !940}
!930 = !DILocalVariable(name: "infomap", scope: !925, file: !926, line: 636, type: !931)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 896, elements: !194)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !925, file: !926, line: 636, size: 128, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !933, file: !926, line: 636, baseType: !69, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !933, file: !926, line: 636, baseType: !69, size: 64, offset: 64)
!937 = !DILocalVariable(name: "node", scope: !925, file: !926, line: 646, type: !69)
!938 = !DILocalVariable(name: "map_prog", scope: !925, file: !926, line: 647, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!940 = !DILocalVariable(name: "lc_messages", scope: !925, file: !926, line: 659, type: !69)
!941 = !DILocation(line: 0, scope: !925, inlinedAt: !942)
!942 = distinct !DILocation(line: 682, column: 7, scope: !914)
!943 = !DILocation(line: 636, column: 3, scope: !925, inlinedAt: !942)
!944 = !DILocation(line: 636, column: 67, scope: !925, inlinedAt: !942)
!945 = !DILocation(line: 647, column: 36, scope: !925, inlinedAt: !942)
!946 = !DILocation(line: 649, column: 3, scope: !925, inlinedAt: !942)
!947 = !DILocation(line: 649, column: 33, scope: !925, inlinedAt: !942)
!948 = !DILocation(line: 650, column: 13, scope: !925, inlinedAt: !942)
!949 = !DILocation(line: 649, column: 20, scope: !925, inlinedAt: !942)
!950 = !{!951, !910, i64 0}
!951 = !{!"infomap", !910, i64 0, !910, i64 8}
!952 = !DILocation(line: 649, column: 10, scope: !925, inlinedAt: !942)
!953 = !DILocation(line: 649, column: 28, scope: !925, inlinedAt: !942)
!954 = distinct !{!954, !946, !948, !955}
!955 = !{!"llvm.loop.mustprogress"}
!956 = !DILocation(line: 652, column: 17, scope: !957, inlinedAt: !942)
!957 = distinct !DILexicalBlock(scope: !925, file: !926, line: 652, column: 7)
!958 = !{!951, !910, i64 8}
!959 = !DILocation(line: 652, column: 7, scope: !957, inlinedAt: !942)
!960 = !DILocation(line: 652, column: 7, scope: !925, inlinedAt: !942)
!961 = !DILocation(line: 655, column: 3, scope: !925, inlinedAt: !942)
!962 = !DILocation(line: 659, column: 29, scope: !925, inlinedAt: !942)
!963 = !DILocation(line: 660, column: 7, scope: !964, inlinedAt: !942)
!964 = distinct !DILexicalBlock(scope: !925, file: !926, line: 660, column: 7)
!965 = !DILocation(line: 660, column: 19, scope: !964, inlinedAt: !942)
!966 = !DILocation(line: 660, column: 22, scope: !964, inlinedAt: !942)
!967 = !DILocation(line: 660, column: 7, scope: !925, inlinedAt: !942)
!968 = !DILocation(line: 666, column: 7, scope: !969, inlinedAt: !942)
!969 = distinct !DILexicalBlock(scope: !964, file: !926, line: 661, column: 5)
!970 = !DILocation(line: 668, column: 5, scope: !969, inlinedAt: !942)
!971 = !DILocation(line: 669, column: 3, scope: !925, inlinedAt: !942)
!972 = !DILocation(line: 671, column: 3, scope: !925, inlinedAt: !942)
!973 = !DILocation(line: 673, column: 1, scope: !925, inlinedAt: !942)
!974 = !DILocation(line: 684, column: 3, scope: !898)
!975 = !DISubprogram(name: "dcgettext", scope: !976, file: !976, line: 51, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!976 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!977 = !DISubroutineType(types: !978)
!978 = !{!26, !69, !69, !73}
!979 = !DISubprogram(name: "fputs_unlocked", scope: !980, file: !980, line: 667, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!980 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!981 = !DISubroutineType(types: !982)
!982 = !{!73, !69, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !986)
!985 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1002, !1003, !1004, !1005, !1006, !1007, !1009, !1013, !1016, !1018, !1021, !1024, !1025, !1026, !1027, !1028}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !984, file: !985, line: 51, baseType: !73, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !984, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !984, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !984, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !984, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !984, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !984, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !984, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !984, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !984, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !984, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !984, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !984, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !985, line: 36, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !984, file: !985, line: 70, baseType: !983, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !984, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !984, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !984, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !984, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !984, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!1008 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !984, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 1)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !984, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !985, line: 43, baseType: null)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !984, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 153, baseType: !33)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !984, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !985, line: 37, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !984, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !985, line: 38, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !984, file: !985, line: 93, baseType: !983, size: 64, offset: 1344)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !984, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !984, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !984, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !984, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!1029 = !DISubprogram(name: "setlocale", scope: !1030, file: !1030, line: 122, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1030 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!26, !73, !69}
!1033 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 688, type: !1034, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!73, !73, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1037 = !{!1038, !1039, !1040, !1041}
!1038 = !DILocalVariable(name: "argc", arg: 1, scope: !1033, file: !3, line: 688, type: !73)
!1039 = !DILocalVariable(name: "argv", arg: 2, scope: !1033, file: !3, line: 688, type: !1036)
!1040 = !DILocalVariable(name: "optc", scope: !1033, file: !3, line: 690, type: !73)
!1041 = !DILocalVariable(name: "assumptions", scope: !1033, file: !3, line: 691, type: !38)
!1042 = !DILocation(line: 0, scope: !1033)
!1043 = !DILocation(line: 694, column: 21, scope: !1033)
!1044 = !DILocation(line: 694, column: 3, scope: !1033)
!1045 = !DILocation(line: 695, column: 3, scope: !1033)
!1046 = !DILocation(line: 696, column: 3, scope: !1033)
!1047 = !DILocation(line: 697, column: 3, scope: !1033)
!1048 = !DILocation(line: 699, column: 3, scope: !1033)
!1049 = !DILocation(line: 701, column: 3, scope: !1033)
!1050 = !DILocation(line: 691, column: 8, scope: !1033)
!1051 = !DILocation(line: 701, column: 18, scope: !1033)
!1052 = !DILocation(line: 707, column: 25, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 705, column: 9)
!1054 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 703, column: 5)
!1055 = !DILocation(line: 708, column: 26, scope: !1053)
!1056 = !DILocation(line: 709, column: 22, scope: !1053)
!1057 = !DILocation(line: 710, column: 26, scope: !1053)
!1058 = !DILocation(line: 711, column: 25, scope: !1053)
!1059 = !DILocation(line: 712, column: 28, scope: !1053)
!1060 = !DILocation(line: 713, column: 22, scope: !1053)
!1061 = !DILocation(line: 714, column: 24, scope: !1053)
!1062 = !DILocation(line: 715, column: 24, scope: !1053)
!1063 = !DILocation(line: 718, column: 11, scope: !1053)
!1064 = !DILocation(line: 726, column: 26, scope: !1053)
!1065 = !DILocation(line: 727, column: 24, scope: !1053)
!1066 = !DILocation(line: 730, column: 11, scope: !1053)
!1067 = !DILocation(line: 734, column: 11, scope: !1053)
!1068 = !DILocation(line: 737, column: 22, scope: !1053)
!1069 = !DILocation(line: 740, column: 11, scope: !1053)
!1070 = !DILocation(line: 744, column: 11, scope: !1053)
!1071 = !DILocation(line: 749, column: 11, scope: !1053)
!1072 = !DILocation(line: 753, column: 11, scope: !1053)
!1073 = !DILocation(line: 756, column: 25, scope: !1053)
!1074 = !DILocation(line: 759, column: 11, scope: !1053)
!1075 = !DILocation(line: 763, column: 11, scope: !1053)
!1076 = !DILocation(line: 768, column: 11, scope: !1053)
!1077 = !DILocation(line: 773, column: 11, scope: !1053)
!1078 = !DILocation(line: 776, column: 22, scope: !1053)
!1079 = !DILocation(line: 779, column: 11, scope: !1053)
!1080 = !DILocation(line: 783, column: 11, scope: !1053)
!1081 = !DILocation(line: 785, column: 9, scope: !1053)
!1082 = !DILocation(line: 787, column: 9, scope: !1053)
!1083 = !DILocation(line: 790, column: 11, scope: !1053)
!1084 = !DILocation(line: 0, scope: !1053)
!1085 = distinct !{!1085, !1049, !1086, !955}
!1086 = !DILocation(line: 792, column: 5, scope: !1033)
!1087 = !DILocation(line: 794, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 794, column: 7)
!1089 = !DILocation(line: 794, column: 7, scope: !1033)
!1090 = !DILocation(line: 796, column: 18, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 795, column: 5)
!1092 = !DILocation(line: 797, column: 20, scope: !1091)
!1093 = !DILocation(line: 798, column: 5, scope: !1091)
!1094 = !DILocation(line: 800, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 800, column: 7)
!1096 = !DILocation(line: 800, column: 7, scope: !1033)
!1097 = !DILocation(line: 802, column: 20, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 801, column: 5)
!1099 = !DILocation(line: 803, column: 5, scope: !1098)
!1100 = !DILocation(line: 805, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 805, column: 7)
!1102 = !DILocation(line: 805, column: 7, scope: !1033)
!1103 = !DILocation(line: 0, scope: !1101)
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"int", !911, i64 0}
!1106 = !DILocation(line: 816, column: 18, scope: !1033)
!1107 = !DILocation(line: 816, column: 16, scope: !1033)
!1108 = !DILocation(line: 816, column: 3, scope: !1033)
!1109 = !DILocation(line: 819, column: 20, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 817, column: 5)
!1111 = !DILocation(line: 820, column: 7, scope: !1110)
!1112 = !DILocation(line: 823, column: 7, scope: !1110)
!1113 = !DILocation(line: 824, column: 7, scope: !1110)
!1114 = !DILocation(line: 827, column: 12, scope: !1110)
!1115 = !DILocation(line: 827, column: 7, scope: !1110)
!1116 = !DILocation(line: 828, column: 7, scope: !1110)
!1117 = !DILocation(line: 831, column: 20, scope: !1110)
!1118 = !DILocation(line: 831, column: 55, scope: !1110)
!1119 = !DILocation(line: 831, column: 62, scope: !1110)
!1120 = !DILocation(line: 831, column: 50, scope: !1110)
!1121 = !DILocation(line: 831, column: 43, scope: !1110)
!1122 = !DILocation(line: 831, column: 7, scope: !1110)
!1123 = !DILocation(line: 832, column: 7, scope: !1110)
!1124 = !DILocation(line: 835, column: 3, scope: !1033)
!1125 = !DISubprogram(name: "bindtextdomain", scope: !976, file: !976, line: 86, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!26, !69, !69}
!1128 = !DISubprogram(name: "textdomain", scope: !976, file: !976, line: 82, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!26, !69}
!1131 = !DISubprogram(name: "atexit", scope: !1132, file: !1132, line: 595, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1132 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!73, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null}
!1138 = !DISubprogram(name: "getopt_long", scope: !282, file: !282, line: 66, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!73, !73, !1141, !69, !1143, !287}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1144 = distinct !DISubprogram(name: "who", scope: !3, file: !3, line: 621, type: !1145, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !69, !73}
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DILocalVariable(name: "filename", arg: 1, scope: !1144, file: !3, line: 621, type: !69)
!1149 = !DILocalVariable(name: "options", arg: 2, scope: !1144, file: !3, line: 621, type: !73)
!1150 = !DILocalVariable(name: "n_users", scope: !1144, file: !3, line: 623, type: !215)
!1151 = !DILocalVariable(name: "utmp_buf", scope: !1144, file: !3, line: 624, type: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1153 = !DILocation(line: 0, scope: !1144)
!1154 = !DILocation(line: 623, column: 3, scope: !1144)
!1155 = !DILocation(line: 624, column: 3, scope: !1144)
!1156 = !DILocation(line: 626, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 626, column: 7)
!1158 = !DILocation(line: 626, column: 58, scope: !1157)
!1159 = !DILocation(line: 626, column: 7, scope: !1144)
!1160 = !DILocation(line: 627, column: 5, scope: !1157)
!1161 = !DILocation(line: 629, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 629, column: 7)
!1163 = !DILocation(line: 0, scope: !1162)
!1164 = !{!1165, !1165, i64 0}
!1165 = !{!"long", !911, i64 0}
!1166 = !DILocation(line: 629, column: 7, scope: !1144)
!1167 = !DILocalVariable(name: "n", arg: 1, scope: !1168, file: !3, line: 537, type: !215)
!1168 = distinct !DISubprogram(name: "list_entries_who", scope: !3, file: !3, line: 537, type: !1169, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !215, !111}
!1171 = !{!1167, !1172, !1173, !1174, !1175}
!1172 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1168, file: !3, line: 537, type: !111)
!1173 = !DILocalVariable(name: "entries", scope: !1168, file: !3, line: 539, type: !160)
!1174 = !DILocalVariable(name: "separator", scope: !1168, file: !3, line: 540, type: !69)
!1175 = !DILocalVariable(name: "trimmed_name", scope: !1176, file: !3, line: 546, type: !26)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 545, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 544, column: 11)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 543, column: 5)
!1179 = !DILocation(line: 0, scope: !1168, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 630, column: 5, scope: !1162)
!1181 = !DILocation(line: 542, column: 3, scope: !1168, inlinedAt: !1180)
!1182 = !DILocation(line: 630, column: 32, scope: !1162)
!1183 = !DILocation(line: 542, column: 11, scope: !1168, inlinedAt: !1180)
!1184 = !DILocation(line: 544, column: 11, scope: !1177, inlinedAt: !1180)
!1185 = !{!911, !911, i64 0}
!1186 = !{!1187, !1188, i64 0}
!1187 = !{!"utmpx", !1188, i64 0, !1105, i64 4, !911, i64 8, !911, i64 40, !911, i64 44, !911, i64 76, !1189, i64 332, !1105, i64 336, !1190, i64 340, !911, i64 348, !911, i64 364}
!1188 = !{!"short", !911, i64 0}
!1189 = !{!"__exit_status", !1188, i64 0, !1188, i64 2}
!1190 = !{!"", !1105, i64 0, !1105, i64 4}
!1191 = !DILocation(line: 544, column: 11, scope: !1178, inlinedAt: !1180)
!1192 = !DILocation(line: 548, column: 26, scope: !1176, inlinedAt: !1180)
!1193 = !DILocation(line: 0, scope: !1176, inlinedAt: !1180)
!1194 = !DILocation(line: 550, column: 11, scope: !1176, inlinedAt: !1180)
!1195 = !DILocation(line: 551, column: 11, scope: !1176, inlinedAt: !1180)
!1196 = !DILocation(line: 553, column: 18, scope: !1176, inlinedAt: !1180)
!1197 = !DILocation(line: 554, column: 9, scope: !1176, inlinedAt: !1180)
!1198 = !DILocation(line: 555, column: 15, scope: !1178, inlinedAt: !1180)
!1199 = distinct !{!1199, !1181, !1200, !955}
!1200 = !DILocation(line: 556, column: 5, scope: !1168, inlinedAt: !1180)
!1201 = !DILocation(line: 557, column: 3, scope: !1168, inlinedAt: !1180)
!1202 = !DILocation(line: 630, column: 5, scope: !1162)
!1203 = !DILocation(line: 632, column: 28, scope: !1162)
!1204 = !DILocation(line: 463, column: 3, scope: !274, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 608, column: 13, scope: !1206, inlinedAt: !1222)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 607, column: 20)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 605, column: 20)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 603, column: 20)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 601, column: 20)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 596, column: 20)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 594, column: 20)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 592, column: 15)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 591, column: 9)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 588, column: 11)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 587, column: 5)
!1216 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 569, type: !1169, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DILocalVariable(name: "n", arg: 1, scope: !1216, file: !3, line: 569, type: !215)
!1219 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1216, file: !3, line: 569, type: !111)
!1220 = !DILocalVariable(name: "ttyname_b", scope: !1216, file: !3, line: 571, type: !26)
!1221 = !DILocalVariable(name: "boottime", scope: !1216, file: !3, line: 572, type: !29)
!1222 = distinct !DILocation(line: 632, column: 5, scope: !1162)
!1223 = !DILocalVariable(name: "pidstr", scope: !1224, file: !3, line: 485, type: !202)
!1224 = distinct !DISubprogram(name: "print_login", scope: !3, file: !3, line: 482, type: !263, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1225 = !{!1226, !1227, !1223}
!1226 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1224, file: !3, line: 482, type: !111)
!1227 = !DILocalVariable(name: "comment", scope: !1224, file: !3, line: 484, type: !26)
!1228 = !DILocation(line: 485, column: 3, scope: !1224, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 606, column: 13, scope: !1207, inlinedAt: !1222)
!1230 = !DILocalVariable(name: "pidstr", scope: !1231, file: !3, line: 498, type: !202)
!1231 = distinct !DISubprogram(name: "print_initspawn", scope: !3, file: !3, line: 495, type: !263, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{!1233, !1234, !1230}
!1233 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1231, file: !3, line: 495, type: !111)
!1234 = !DILocalVariable(name: "comment", scope: !1231, file: !3, line: 497, type: !26)
!1235 = !DILocation(line: 498, column: 3, scope: !1231, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 604, column: 13, scope: !1208, inlinedAt: !1222)
!1237 = !DILocation(line: 0, scope: !1216, inlinedAt: !1222)
!1238 = !DILocation(line: 574, column: 7, scope: !1239, inlinedAt: !1222)
!1239 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 574, column: 7)
!1240 = !DILocation(line: 574, column: 7, scope: !1216, inlinedAt: !1222)
!1241 = !DILocation(line: 563, column: 19, scope: !1242, inlinedAt: !1243)
!1242 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 561, type: !1136, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !310)
!1243 = distinct !DILocation(line: 575, column: 5, scope: !1239, inlinedAt: !1222)
!1244 = !DILocation(line: 563, column: 39, scope: !1242, inlinedAt: !1243)
!1245 = !DILocation(line: 563, column: 50, scope: !1242, inlinedAt: !1243)
!1246 = !DILocation(line: 563, column: 61, scope: !1242, inlinedAt: !1243)
!1247 = !DILocation(line: 564, column: 15, scope: !1242, inlinedAt: !1243)
!1248 = !DILocation(line: 564, column: 25, scope: !1242, inlinedAt: !1243)
!1249 = !DILocation(line: 564, column: 39, scope: !1242, inlinedAt: !1243)
!1250 = !DILocation(line: 563, column: 3, scope: !1242, inlinedAt: !1243)
!1251 = !DILocation(line: 575, column: 5, scope: !1239, inlinedAt: !1222)
!1252 = !DILocation(line: 577, column: 7, scope: !1253, inlinedAt: !1222)
!1253 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 577, column: 7)
!1254 = !DILocation(line: 577, column: 7, scope: !1216, inlinedAt: !1222)
!1255 = !DILocation(line: 579, column: 19, scope: !1256, inlinedAt: !1222)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 578, column: 5)
!1257 = !DILocation(line: 580, column: 12, scope: !1258, inlinedAt: !1222)
!1258 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 580, column: 11)
!1259 = !DILocation(line: 580, column: 11, scope: !1256, inlinedAt: !1222)
!1260 = !DILocation(line: 582, column: 11, scope: !1261, inlinedAt: !1222)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 582, column: 11)
!1262 = !DILocation(line: 582, column: 64, scope: !1261, inlinedAt: !1222)
!1263 = !DILocation(line: 582, column: 11, scope: !1256, inlinedAt: !1222)
!1264 = !DILocation(line: 586, column: 3, scope: !1216, inlinedAt: !1222)
!1265 = !DILocation(line: 586, column: 11, scope: !1216, inlinedAt: !1222)
!1266 = !DILocation(line: 588, column: 12, scope: !1214, inlinedAt: !1222)
!1267 = !DILocation(line: 589, column: 11, scope: !1214, inlinedAt: !1222)
!1268 = !DILocation(line: 589, column: 14, scope: !1214, inlinedAt: !1222)
!1269 = !DILocation(line: 588, column: 11, scope: !1215, inlinedAt: !1222)
!1270 = !DILocation(line: 592, column: 15, scope: !1212, inlinedAt: !1222)
!1271 = !DILocation(line: 592, column: 26, scope: !1212, inlinedAt: !1222)
!1272 = !DILocation(line: 592, column: 29, scope: !1212, inlinedAt: !1222)
!1273 = !DILocation(line: 592, column: 15, scope: !1213, inlinedAt: !1222)
!1274 = !DILocation(line: 0, scope: !108, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 593, column: 13, scope: !1212, inlinedAt: !1222)
!1276 = !DILocation(line: 335, column: 3, scope: !108, inlinedAt: !1275)
!1277 = !DILocation(line: 335, column: 15, scope: !108, inlinedAt: !1275)
!1278 = !DILocation(line: 338, column: 3, scope: !108, inlinedAt: !1275)
!1279 = !DILocation(line: 338, column: 8, scope: !108, inlinedAt: !1275)
!1280 = !DILocation(line: 347, column: 3, scope: !108, inlinedAt: !1275)
!1281 = !DILocation(line: 347, column: 8, scope: !108, inlinedAt: !1275)
!1282 = !DILocation(line: 349, column: 3, scope: !108, inlinedAt: !1275)
!1283 = !{!1187, !1105, i64 4}
!1284 = !DILocation(line: 354, column: 10, scope: !1285, inlinedAt: !1275)
!1285 = distinct !DILexicalBlock(scope: !108, file: !3, line: 354, column: 8)
!1286 = !DILocation(line: 354, column: 8, scope: !108, inlinedAt: !1275)
!1287 = !DILocalVariable(name: "__dest", arg: 1, scope: !1288, file: !1289, line: 84, type: !1292)
!1288 = distinct !DISubprogram(name: "stpcpy", scope: !1289, file: !1289, line: 84, type: !1290, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1289 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!26, !1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!1293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!1294 = !{!1287, !1295}
!1295 = !DILocalVariable(name: "__src", arg: 2, scope: !1288, file: !1289, line: 84, type: !1293)
!1296 = !DILocation(line: 0, scope: !1288, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 355, column: 9, scope: !1285, inlinedAt: !1275)
!1298 = !DILocation(line: 86, column: 10, scope: !1288, inlinedAt: !1297)
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"stzncpy: argument 0"}
!1301 = distinct !{!1301, !"stzncpy"}
!1302 = !DILocation(line: 356, column: 3, scope: !108, inlinedAt: !1275)
!1303 = !{!1304}
!1304 = distinct !{!1304, !1301, !"stzncpy: argument 1"}
!1305 = !DILocalVariable(name: "dest", arg: 1, scope: !1306, file: !926, line: 741, type: !1292)
!1306 = distinct !DISubprogram(name: "stzncpy", scope: !926, file: !926, line: 741, type: !1307, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!26, !1292, !1293, !215}
!1309 = !{!1305, !1310, !1311, !1312}
!1310 = !DILocalVariable(name: "src", arg: 2, scope: !1306, file: !926, line: 741, type: !1293)
!1311 = !DILocalVariable(name: "len", arg: 3, scope: !1306, file: !926, line: 741, type: !215)
!1312 = !DILocalVariable(name: "src_end", scope: !1306, file: !926, line: 743, type: !69)
!1313 = !DILocation(line: 0, scope: !1306, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 356, column: 3, scope: !108, inlinedAt: !1275)
!1315 = !DILocation(line: 744, column: 24, scope: !1306, inlinedAt: !1314)
!1316 = !DILocation(line: 744, column: 3, scope: !1306, inlinedAt: !1314)
!1317 = !DILocation(line: 743, column: 29, scope: !1306, inlinedAt: !1314)
!1318 = !DILocation(line: 745, column: 19, scope: !1306, inlinedAt: !1314)
!1319 = !DILocation(line: 745, column: 10, scope: !1306, inlinedAt: !1314)
!1320 = !DILocation(line: 745, column: 13, scope: !1306, inlinedAt: !1314)
!1321 = !DILocation(line: 744, column: 14, scope: !1306, inlinedAt: !1314)
!1322 = distinct !{!1322, !1316, !1318, !955}
!1323 = !DILocation(line: 744, column: 27, scope: !1306, inlinedAt: !1314)
!1324 = !DILocation(line: 746, column: 9, scope: !1306, inlinedAt: !1314)
!1325 = !DILocation(line: 358, column: 7, scope: !1326, inlinedAt: !1275)
!1326 = distinct !DILexicalBlock(scope: !108, file: !3, line: 358, column: 7)
!1327 = !DILocation(line: 358, column: 27, scope: !1326, inlinedAt: !1275)
!1328 = !DILocation(line: 358, column: 7, scope: !108, inlinedAt: !1275)
!1329 = !DILocalVariable(name: "pstat", arg: 1, scope: !1330, file: !3, line: 317, type: !1333)
!1330 = distinct !DISubprogram(name: "is_tty_writable", scope: !3, file: !3, line: 317, type: !1331, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!38, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1335 = !{!1329}
!1336 = !DILocation(line: 0, scope: !1330, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 360, column: 14, scope: !1338, inlinedAt: !1275)
!1338 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 359, column: 5)
!1339 = !DILocation(line: 327, column: 17, scope: !1330, inlinedAt: !1337)
!1340 = !{!1341, !1105, i64 24}
!1341 = !{!"stat", !1165, i64 0, !1165, i64 8, !1165, i64 16, !1105, i64 24, !1105, i64 28, !1105, i64 32, !1105, i64 36, !1165, i64 40, !1165, i64 48, !1165, i64 56, !1165, i64 64, !1342, i64 72, !1342, i64 88, !1342, i64 104, !911, i64 120}
!1342 = !{!"timespec", !1165, i64 0, !1165, i64 8}
!1343 = !DILocation(line: 327, column: 25, scope: !1330, inlinedAt: !1337)
!1344 = !DILocation(line: 327, column: 10, scope: !1330, inlinedAt: !1337)
!1345 = !DILocation(line: 360, column: 14, scope: !1338, inlinedAt: !1275)
!1346 = !DILocation(line: 361, column: 27, scope: !1338, inlinedAt: !1275)
!1347 = !{!1341, !1165, i64 72}
!1348 = !DILocation(line: 369, column: 7, scope: !1349, inlinedAt: !1275)
!1349 = distinct !DILexicalBlock(scope: !108, file: !3, line: 369, column: 7)
!1350 = !DILocation(line: 369, column: 7, scope: !108, inlinedAt: !1275)
!1351 = !DILocation(line: 0, scope: !219, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 370, column: 5, scope: !1349, inlinedAt: !1275)
!1353 = !DILocation(line: 192, column: 7, scope: !1354, inlinedAt: !1352)
!1354 = distinct !DILexicalBlock(scope: !219, file: !3, line: 192, column: 7)
!1355 = !DILocation(line: 192, column: 11, scope: !1354, inlinedAt: !1352)
!1356 = !DILocation(line: 192, column: 7, scope: !219, inlinedAt: !1352)
!1357 = !DILocation(line: 193, column: 5, scope: !1354, inlinedAt: !1352)
!1358 = !DILocation(line: 195, column: 16, scope: !227, inlinedAt: !1352)
!1359 = !DILocation(line: 195, column: 23, scope: !227, inlinedAt: !1352)
!1360 = !DILocation(line: 195, column: 26, scope: !227, inlinedAt: !1352)
!1361 = !DILocation(line: 195, column: 30, scope: !227, inlinedAt: !1352)
!1362 = !DILocation(line: 195, column: 45, scope: !227, inlinedAt: !1352)
!1363 = !DILocation(line: 195, column: 52, scope: !227, inlinedAt: !1352)
!1364 = !DILocation(line: 197, column: 30, scope: !226, inlinedAt: !1352)
!1365 = !DILocation(line: 197, column: 26, scope: !226, inlinedAt: !1352)
!1366 = !DILocation(line: 0, scope: !226, inlinedAt: !1352)
!1367 = !DILocation(line: 198, column: 24, scope: !1368, inlinedAt: !1352)
!1368 = distinct !DILexicalBlock(scope: !226, file: !3, line: 198, column: 11)
!1369 = !DILocation(line: 198, column: 11, scope: !226, inlinedAt: !1352)
!1370 = !DILocation(line: 205, column: 11, scope: !1371, inlinedAt: !1352)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 205, column: 11)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 205, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 201, column: 9)
!1374 = !DILocation(line: 205, column: 11, scope: !1372, inlinedAt: !1352)
!1375 = !DILocation(line: 206, column: 11, scope: !1373, inlinedAt: !1352)
!1376 = !DILocation(line: 209, column: 11, scope: !1373, inlinedAt: !1352)
!1377 = !DILocation(line: 213, column: 10, scope: !219, inlinedAt: !1352)
!1378 = !DILocation(line: 213, column: 3, scope: !219, inlinedAt: !1352)
!1379 = !DILocation(line: 370, column: 5, scope: !1349, inlinedAt: !1275)
!1380 = !DILocation(line: 372, column: 5, scope: !1349, inlinedAt: !1275)
!1381 = !DILocation(line: 375, column: 7, scope: !207, inlinedAt: !1275)
!1382 = !DILocation(line: 375, column: 7, scope: !108, inlinedAt: !1275)
!1383 = !DILocation(line: 377, column: 7, scope: !206, inlinedAt: !1275)
!1384 = !DILocation(line: 377, column: 12, scope: !206, inlinedAt: !1275)
!1385 = !DILocation(line: 0, scope: !206, inlinedAt: !1275)
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"stzncpy: argument 0"}
!1388 = distinct !{!1388, !"stzncpy"}
!1389 = !DILocation(line: 382, column: 7, scope: !206, inlinedAt: !1275)
!1390 = !{!1391}
!1391 = distinct !{!1391, !1388, !"stzncpy: argument 1"}
!1392 = !DILocation(line: 0, scope: !1306, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 382, column: 7, scope: !206, inlinedAt: !1275)
!1394 = !DILocation(line: 743, column: 29, scope: !1306, inlinedAt: !1393)
!1395 = !DILocation(line: 744, column: 3, scope: !1306, inlinedAt: !1393)
!1396 = !DILocation(line: 745, column: 19, scope: !1306, inlinedAt: !1393)
!1397 = !DILocation(line: 745, column: 10, scope: !1306, inlinedAt: !1393)
!1398 = !DILocation(line: 745, column: 13, scope: !1306, inlinedAt: !1393)
!1399 = !DILocation(line: 744, column: 14, scope: !1306, inlinedAt: !1393)
!1400 = !DILocation(line: 744, column: 24, scope: !1306, inlinedAt: !1393)
!1401 = distinct !{!1401, !1395, !1396, !955}
!1402 = !DILocation(line: 744, column: 27, scope: !1306, inlinedAt: !1393)
!1403 = !DILocation(line: 746, column: 9, scope: !1306, inlinedAt: !1393)
!1404 = !DILocation(line: 385, column: 17, scope: !206, inlinedAt: !1275)
!1405 = !DILocation(line: 386, column: 11, scope: !1406, inlinedAt: !1275)
!1406 = distinct !DILexicalBlock(scope: !206, file: !3, line: 386, column: 11)
!1407 = !DILocation(line: 386, column: 11, scope: !206, inlinedAt: !1275)
!1408 = !DILocation(line: 387, column: 17, scope: !1406, inlinedAt: !1275)
!1409 = !DILocation(line: 387, column: 20, scope: !1406, inlinedAt: !1275)
!1410 = !DILocation(line: 387, column: 9, scope: !1406, inlinedAt: !1275)
!1411 = !DILocation(line: 389, column: 11, scope: !1412, inlinedAt: !1275)
!1412 = distinct !DILexicalBlock(scope: !206, file: !3, line: 389, column: 11)
!1413 = !DILocation(line: 389, column: 20, scope: !1412, inlinedAt: !1275)
!1414 = !DILocation(line: 389, column: 23, scope: !1412, inlinedAt: !1275)
!1415 = !DILocation(line: 389, column: 11, scope: !206, inlinedAt: !1275)
!1416 = !DILocation(line: 392, column: 18, scope: !1417, inlinedAt: !1275)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 390, column: 9)
!1418 = !DILocation(line: 393, column: 9, scope: !1417, inlinedAt: !1275)
!1419 = !DILocation(line: 395, column: 13, scope: !1420, inlinedAt: !1275)
!1420 = distinct !DILexicalBlock(scope: !206, file: !3, line: 395, column: 11)
!1421 = !DILocation(line: 395, column: 11, scope: !206, inlinedAt: !1275)
!1422 = !DILocation(line: 398, column: 11, scope: !1423, inlinedAt: !1275)
!1423 = distinct !DILexicalBlock(scope: !206, file: !3, line: 398, column: 11)
!1424 = !DILocation(line: 0, scope: !1423, inlinedAt: !1275)
!1425 = !DILocation(line: 398, column: 11, scope: !206, inlinedAt: !1275)
!1426 = !DILocation(line: 400, column: 41, scope: !1427, inlinedAt: !1275)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 400, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 399, column: 9)
!1429 = !DILocation(line: 400, column: 39, scope: !1427, inlinedAt: !1275)
!1430 = !DILocation(line: 400, column: 58, scope: !1427, inlinedAt: !1275)
!1431 = !DILocation(line: 400, column: 23, scope: !1427, inlinedAt: !1275)
!1432 = !DILocation(line: 400, column: 15, scope: !1428, inlinedAt: !1275)
!1433 = !DILocation(line: 406, column: 11, scope: !1428, inlinedAt: !1275)
!1434 = !DILocation(line: 402, column: 23, scope: !1435, inlinedAt: !1275)
!1435 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 401, column: 13)
!1436 = !DILocation(line: 403, column: 21, scope: !1435, inlinedAt: !1275)
!1437 = !DILocation(line: 403, column: 15, scope: !1435, inlinedAt: !1275)
!1438 = !DILocation(line: 404, column: 25, scope: !1435, inlinedAt: !1275)
!1439 = !DILocation(line: 404, column: 23, scope: !1435, inlinedAt: !1275)
!1440 = !DILocation(line: 405, column: 13, scope: !1435, inlinedAt: !1275)
!1441 = !DILocation(line: 407, column: 9, scope: !1428, inlinedAt: !1275)
!1442 = !DILocation(line: 410, column: 39, scope: !1443, inlinedAt: !1275)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 410, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 409, column: 9)
!1445 = !DILocation(line: 410, column: 23, scope: !1443, inlinedAt: !1275)
!1446 = !DILocation(line: 410, column: 15, scope: !1444, inlinedAt: !1275)
!1447 = !DILocation(line: 416, column: 11, scope: !1444, inlinedAt: !1275)
!1448 = !DILocation(line: 412, column: 23, scope: !1449, inlinedAt: !1275)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 411, column: 13)
!1450 = !DILocation(line: 413, column: 21, scope: !1449, inlinedAt: !1275)
!1451 = !DILocation(line: 413, column: 15, scope: !1449, inlinedAt: !1275)
!1452 = !DILocation(line: 414, column: 25, scope: !1449, inlinedAt: !1275)
!1453 = !DILocation(line: 414, column: 23, scope: !1449, inlinedAt: !1275)
!1454 = !DILocation(line: 415, column: 13, scope: !1449, inlinedAt: !1275)
!1455 = !DILocation(line: 419, column: 11, scope: !206, inlinedAt: !1275)
!1456 = !DILocation(line: 420, column: 9, scope: !1457, inlinedAt: !1275)
!1457 = distinct !DILexicalBlock(scope: !206, file: !3, line: 419, column: 11)
!1458 = !DILocation(line: 421, column: 5, scope: !207, inlinedAt: !1275)
!1459 = !DILocation(line: 421, column: 5, scope: !206, inlinedAt: !1275)
!1460 = !DILocation(line: 424, column: 11, scope: !1461, inlinedAt: !1275)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 424, column: 11)
!1462 = distinct !DILexicalBlock(scope: !207, file: !3, line: 423, column: 5)
!1463 = !DILocation(line: 424, column: 19, scope: !1461, inlinedAt: !1275)
!1464 = !DILocation(line: 424, column: 11, scope: !1462, inlinedAt: !1275)
!1465 = !DILocation(line: 430, column: 8, scope: !1462, inlinedAt: !1275)
!1466 = !DILocation(line: 426, column: 19, scope: !1467, inlinedAt: !1275)
!1467 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 425, column: 9)
!1468 = !DILocation(line: 427, column: 17, scope: !1467, inlinedAt: !1275)
!1469 = !DILocation(line: 427, column: 11, scope: !1467, inlinedAt: !1275)
!1470 = !DILocation(line: 428, column: 21, scope: !1467, inlinedAt: !1275)
!1471 = !DILocation(line: 428, column: 19, scope: !1467, inlinedAt: !1275)
!1472 = !DILocation(line: 429, column: 9, scope: !1467, inlinedAt: !1275)
!1473 = !DILocation(line: 430, column: 16, scope: !1462, inlinedAt: !1275)
!1474 = !DILocation(line: 0, scope: !235, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 436, column: 15, scope: !108, inlinedAt: !1275)
!1476 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1475)
!1477 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1475)
!1478 = !{!1187, !1105, i64 340}
!1479 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1475)
!1480 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1475)
!1481 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1475)
!1482 = distinct !DILexicalBlock(scope: !235, file: !3, line: 231, column: 7)
!1483 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1475)
!1484 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1475)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 232, column: 5)
!1486 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1475)
!1487 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1475)
!1488 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1475)
!1489 = !DILocalVariable(name: "t", arg: 1, scope: !1490, file: !926, line: 690, type: !29)
!1490 = distinct !DISubprogram(name: "timetostr", scope: !926, file: !926, line: 690, type: !1491, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!26, !29, !26}
!1493 = !{!1489, !1494}
!1494 = !DILocalVariable(name: "buf", arg: 2, scope: !1490, file: !926, line: 690, type: !26)
!1495 = !DILocation(line: 0, scope: !1490, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1475)
!1497 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1496)
!1498 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1475)
!1499 = !DILocation(line: 0, scope: !1482, inlinedAt: !1475)
!1500 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1475)
!1501 = !DILocation(line: 437, column: 15, scope: !108, inlinedAt: !1275)
!1502 = !DILocation(line: 434, column: 3, scope: !108, inlinedAt: !1275)
!1503 = !DILocation(line: 438, column: 1, scope: !108, inlinedAt: !1275)
!1504 = !DILocation(line: 593, column: 13, scope: !1212, inlinedAt: !1222)
!1505 = !DILocation(line: 594, column: 20, scope: !1211, inlinedAt: !1222)
!1506 = !DILocation(line: 594, column: 34, scope: !1211, inlinedAt: !1222)
!1507 = !DILocation(line: 594, column: 37, scope: !1211, inlinedAt: !1222)
!1508 = !DILocation(line: 594, column: 20, scope: !1212, inlinedAt: !1222)
!1509 = !DILocation(line: 0, scope: !262, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 595, column: 13, scope: !1211, inlinedAt: !1222)
!1511 = !DILocation(line: 517, column: 24, scope: !262, inlinedAt: !1510)
!1512 = !DILocation(line: 520, column: 8, scope: !1513, inlinedAt: !1510)
!1513 = distinct !DILexicalBlock(scope: !262, file: !3, line: 520, column: 7)
!1514 = !DILocation(line: 520, column: 7, scope: !262, inlinedAt: !1510)
!1515 = !DILocation(line: 521, column: 35, scope: !1513, inlinedAt: !1510)
!1516 = !DILocation(line: 521, column: 27, scope: !1513, inlinedAt: !1510)
!1517 = !DILocation(line: 521, column: 51, scope: !1513, inlinedAt: !1510)
!1518 = !DILocation(line: 521, column: 18, scope: !1513, inlinedAt: !1510)
!1519 = !DILocation(line: 521, column: 16, scope: !1513, inlinedAt: !1510)
!1520 = !DILocation(line: 521, column: 5, scope: !1513, inlinedAt: !1510)
!1521 = !DILocation(line: 522, column: 3, scope: !262, inlinedAt: !1510)
!1522 = !DILocation(line: 524, column: 8, scope: !1523, inlinedAt: !1510)
!1523 = distinct !DILexicalBlock(scope: !262, file: !3, line: 524, column: 7)
!1524 = !DILocation(line: 524, column: 7, scope: !262, inlinedAt: !1510)
!1525 = !DILocation(line: 525, column: 32, scope: !1523, inlinedAt: !1510)
!1526 = !DILocation(line: 525, column: 24, scope: !1523, inlinedAt: !1510)
!1527 = !DILocation(line: 525, column: 44, scope: !1523, inlinedAt: !1510)
!1528 = !DILocation(line: 525, column: 15, scope: !1523, inlinedAt: !1510)
!1529 = !DILocation(line: 525, column: 13, scope: !1523, inlinedAt: !1510)
!1530 = !DILocation(line: 525, column: 5, scope: !1523, inlinedAt: !1510)
!1531 = !DILocation(line: 526, column: 3, scope: !262, inlinedAt: !1510)
!1532 = !DILocation(line: 517, column: 42, scope: !262, inlinedAt: !1510)
!1533 = !DILocation(line: 528, column: 32, scope: !262, inlinedAt: !1510)
!1534 = !DILocation(line: 0, scope: !235, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 528, column: 44, scope: !262, inlinedAt: !1510)
!1536 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1535)
!1537 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1535)
!1538 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1535)
!1539 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1535)
!1540 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1535)
!1541 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1535)
!1542 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1535)
!1543 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1535)
!1544 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1535)
!1545 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1535)
!1546 = !DILocation(line: 0, scope: !1490, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1535)
!1548 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1547)
!1549 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1535)
!1550 = !DILocation(line: 0, scope: !1482, inlinedAt: !1535)
!1551 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1535)
!1552 = !DILocalVariable(name: "c", arg: 1, scope: !1553, file: !1554, line: 272, type: !73)
!1553 = distinct !DISubprogram(name: "c_isprint", scope: !1554, file: !1554, line: 272, type: !1555, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1557)
!1554 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!38, !73}
!1557 = !{!1552}
!1558 = !DILocation(line: 0, scope: !1553, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 529, column: 23, scope: !262, inlinedAt: !1510)
!1560 = !DILocation(line: 274, column: 3, scope: !1553, inlinedAt: !1559)
!1561 = !DILocation(line: 529, column: 23, scope: !262, inlinedAt: !1510)
!1562 = !DILocation(line: 528, column: 3, scope: !262, inlinedAt: !1510)
!1563 = !DILocation(line: 595, column: 13, scope: !1211, inlinedAt: !1222)
!1564 = !DILocation(line: 596, column: 20, scope: !1210, inlinedAt: !1222)
!1565 = !DILocation(line: 596, column: 34, scope: !1210, inlinedAt: !1222)
!1566 = !DILocation(line: 596, column: 37, scope: !1210, inlinedAt: !1222)
!1567 = !DILocation(line: 596, column: 20, scope: !1211, inlinedAt: !1222)
!1568 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1569, file: !3, line: 441, type: !111)
!1569 = distinct !DISubprogram(name: "print_boottime", scope: !3, file: !3, line: 441, type: !263, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1570 = !{!1568}
!1571 = !DILocation(line: 0, scope: !1569, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 597, column: 13, scope: !1210, inlinedAt: !1222)
!1573 = !DILocation(line: 443, column: 32, scope: !1569, inlinedAt: !1572)
!1574 = !DILocation(line: 0, scope: !235, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 444, column: 15, scope: !1569, inlinedAt: !1572)
!1576 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1575)
!1577 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1575)
!1578 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1575)
!1579 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1575)
!1580 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1575)
!1581 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1575)
!1582 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1575)
!1583 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1575)
!1584 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1575)
!1585 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1575)
!1586 = !DILocation(line: 0, scope: !1490, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1575)
!1588 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1587)
!1589 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1575)
!1590 = !DILocation(line: 0, scope: !1482, inlinedAt: !1575)
!1591 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1575)
!1592 = !DILocation(line: 443, column: 3, scope: !1569, inlinedAt: !1572)
!1593 = !DILocation(line: 597, column: 13, scope: !1210, inlinedAt: !1222)
!1594 = !DILocation(line: 601, column: 20, scope: !1209, inlinedAt: !1222)
!1595 = !DILocation(line: 601, column: 37, scope: !1209, inlinedAt: !1222)
!1596 = !DILocation(line: 601, column: 40, scope: !1209, inlinedAt: !1222)
!1597 = !DILocation(line: 601, column: 20, scope: !1210, inlinedAt: !1222)
!1598 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1599, file: !3, line: 506, type: !111)
!1599 = distinct !DISubprogram(name: "print_clockchange", scope: !3, file: !3, line: 506, type: !263, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1600)
!1600 = !{!1598}
!1601 = !DILocation(line: 0, scope: !1599, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 602, column: 13, scope: !1209, inlinedAt: !1222)
!1603 = !DILocation(line: 509, column: 32, scope: !1599, inlinedAt: !1602)
!1604 = !DILocation(line: 0, scope: !235, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 510, column: 15, scope: !1599, inlinedAt: !1602)
!1606 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1605)
!1607 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1605)
!1608 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1605)
!1609 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1605)
!1610 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1605)
!1611 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1605)
!1612 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1605)
!1613 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1605)
!1614 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1605)
!1615 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1605)
!1616 = !DILocation(line: 0, scope: !1490, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1605)
!1618 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1617)
!1619 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1605)
!1620 = !DILocation(line: 0, scope: !1482, inlinedAt: !1605)
!1621 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1605)
!1622 = !DILocation(line: 509, column: 3, scope: !1599, inlinedAt: !1602)
!1623 = !DILocation(line: 602, column: 13, scope: !1209, inlinedAt: !1222)
!1624 = !DILocation(line: 603, column: 20, scope: !1208, inlinedAt: !1222)
!1625 = !DILocation(line: 603, column: 35, scope: !1208, inlinedAt: !1222)
!1626 = !DILocation(line: 603, column: 38, scope: !1208, inlinedAt: !1222)
!1627 = !DILocation(line: 603, column: 20, scope: !1209, inlinedAt: !1222)
!1628 = !DILocation(line: 0, scope: !1231, inlinedAt: !1236)
!1629 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1630, file: !3, line: 448, type: !111)
!1630 = distinct !DISubprogram(name: "make_id_equals_comment", scope: !3, file: !3, line: 448, type: !1631, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!26, !111}
!1633 = !{!1629, !1634, !1635}
!1634 = !DILocalVariable(name: "utmpsize", scope: !1630, file: !3, line: 450, type: !215)
!1635 = !DILocalVariable(name: "comment", scope: !1630, file: !3, line: 451, type: !26)
!1636 = !DILocation(line: 0, scope: !1630, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 497, column: 19, scope: !1231, inlinedAt: !1236)
!1638 = !DILocation(line: 451, column: 36, scope: !1630, inlinedAt: !1637)
!1639 = !DILocation(line: 451, column: 28, scope: !1630, inlinedAt: !1637)
!1640 = !DILocation(line: 451, column: 57, scope: !1630, inlinedAt: !1637)
!1641 = !DILocation(line: 451, column: 19, scope: !1630, inlinedAt: !1637)
!1642 = !DILocation(line: 453, column: 20, scope: !1630, inlinedAt: !1637)
!1643 = !DILocalVariable(name: "__dest", arg: 1, scope: !1644, file: !1289, line: 77, type: !1292)
!1644 = distinct !DISubprogram(name: "strcpy", scope: !1289, file: !1289, line: 77, type: !1290, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1643, !1646}
!1646 = !DILocalVariable(name: "__src", arg: 2, scope: !1644, file: !1289, line: 77, type: !1293)
!1647 = !DILocation(line: 0, scope: !1644, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 453, column: 3, scope: !1630, inlinedAt: !1637)
!1649 = !DILocation(line: 79, column: 10, scope: !1644, inlinedAt: !1648)
!1650 = !DILocation(line: 454, column: 21, scope: !1630, inlinedAt: !1637)
!1651 = !DILocalVariable(name: "__dest", arg: 1, scope: !1652, file: !1289, line: 132, type: !1292)
!1652 = distinct !DISubprogram(name: "strncat", scope: !1289, file: !1289, line: 132, type: !1307, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1653 = !{!1651, !1654, !1655}
!1654 = !DILocalVariable(name: "__src", arg: 2, scope: !1652, file: !1289, line: 132, type: !1293)
!1655 = !DILocalVariable(name: "__len", arg: 3, scope: !1652, file: !1289, line: 132, type: !215)
!1656 = !DILocation(line: 0, scope: !1652, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 454, column: 3, scope: !1630, inlinedAt: !1637)
!1658 = !DILocation(line: 135, column: 10, scope: !1652, inlinedAt: !1657)
!1659 = !DILocation(line: 0, scope: !235, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 501, column: 15, scope: !1231, inlinedAt: !1236)
!1661 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1660)
!1662 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1660)
!1663 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1660)
!1664 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1660)
!1665 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1660)
!1666 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1660)
!1667 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1660)
!1668 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1660)
!1669 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1660)
!1670 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1660)
!1671 = !DILocation(line: 0, scope: !1490, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1660)
!1673 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1672)
!1674 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1660)
!1675 = !DILocation(line: 0, scope: !1482, inlinedAt: !1660)
!1676 = !DILocation(line: 500, column: 54, scope: !1231, inlinedAt: !1236)
!1677 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1660)
!1678 = !DILocation(line: 500, column: 3, scope: !1231, inlinedAt: !1236)
!1679 = !DILocation(line: 502, column: 3, scope: !1231, inlinedAt: !1236)
!1680 = !DILocation(line: 503, column: 1, scope: !1231, inlinedAt: !1236)
!1681 = !DILocation(line: 604, column: 13, scope: !1208, inlinedAt: !1222)
!1682 = !DILocation(line: 605, column: 20, scope: !1207, inlinedAt: !1222)
!1683 = !DILocation(line: 605, column: 31, scope: !1207, inlinedAt: !1222)
!1684 = !DILocation(line: 605, column: 34, scope: !1207, inlinedAt: !1222)
!1685 = !DILocation(line: 605, column: 20, scope: !1208, inlinedAt: !1222)
!1686 = !DILocation(line: 0, scope: !1224, inlinedAt: !1229)
!1687 = !DILocation(line: 0, scope: !1630, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 484, column: 19, scope: !1224, inlinedAt: !1229)
!1689 = !DILocation(line: 451, column: 36, scope: !1630, inlinedAt: !1688)
!1690 = !DILocation(line: 451, column: 28, scope: !1630, inlinedAt: !1688)
!1691 = !DILocation(line: 451, column: 57, scope: !1630, inlinedAt: !1688)
!1692 = !DILocation(line: 451, column: 19, scope: !1630, inlinedAt: !1688)
!1693 = !DILocation(line: 453, column: 20, scope: !1630, inlinedAt: !1688)
!1694 = !DILocation(line: 0, scope: !1644, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 453, column: 3, scope: !1630, inlinedAt: !1688)
!1696 = !DILocation(line: 79, column: 10, scope: !1644, inlinedAt: !1695)
!1697 = !DILocation(line: 454, column: 21, scope: !1630, inlinedAt: !1688)
!1698 = !DILocation(line: 0, scope: !1652, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 454, column: 3, scope: !1630, inlinedAt: !1688)
!1700 = !DILocation(line: 135, column: 10, scope: !1652, inlinedAt: !1699)
!1701 = !DILocation(line: 489, column: 19, scope: !1224, inlinedAt: !1229)
!1702 = !DILocation(line: 0, scope: !235, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 490, column: 15, scope: !1224, inlinedAt: !1229)
!1704 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1703)
!1705 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1703)
!1706 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1703)
!1707 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1703)
!1708 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1703)
!1709 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1703)
!1710 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1703)
!1711 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1703)
!1712 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1703)
!1713 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1703)
!1714 = !DILocation(line: 0, scope: !1490, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1703)
!1716 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1715)
!1717 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1703)
!1718 = !DILocation(line: 0, scope: !1482, inlinedAt: !1703)
!1719 = !DILocation(line: 489, column: 62, scope: !1224, inlinedAt: !1229)
!1720 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1703)
!1721 = !DILocation(line: 489, column: 3, scope: !1224, inlinedAt: !1229)
!1722 = !DILocation(line: 491, column: 3, scope: !1224, inlinedAt: !1229)
!1723 = !DILocation(line: 492, column: 1, scope: !1224, inlinedAt: !1229)
!1724 = !DILocation(line: 606, column: 13, scope: !1207, inlinedAt: !1222)
!1725 = !DILocation(line: 607, column: 20, scope: !1206, inlinedAt: !1222)
!1726 = !DILocation(line: 607, column: 35, scope: !1206, inlinedAt: !1222)
!1727 = !DILocation(line: 607, column: 38, scope: !1206, inlinedAt: !1222)
!1728 = !DILocation(line: 607, column: 20, scope: !1207, inlinedAt: !1222)
!1729 = !DILocation(line: 0, scope: !274, inlinedAt: !1205)
!1730 = !DILocation(line: 0, scope: !1630, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 462, column: 19, scope: !274, inlinedAt: !1205)
!1732 = !DILocation(line: 451, column: 36, scope: !1630, inlinedAt: !1731)
!1733 = !DILocation(line: 451, column: 28, scope: !1630, inlinedAt: !1731)
!1734 = !DILocation(line: 451, column: 57, scope: !1630, inlinedAt: !1731)
!1735 = !DILocation(line: 451, column: 19, scope: !1630, inlinedAt: !1731)
!1736 = !DILocation(line: 453, column: 20, scope: !1630, inlinedAt: !1731)
!1737 = !DILocation(line: 0, scope: !1644, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 453, column: 3, scope: !1630, inlinedAt: !1731)
!1739 = !DILocation(line: 79, column: 10, scope: !1644, inlinedAt: !1738)
!1740 = !DILocation(line: 454, column: 21, scope: !1630, inlinedAt: !1731)
!1741 = !DILocation(line: 0, scope: !1652, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 454, column: 3, scope: !1630, inlinedAt: !1731)
!1743 = !DILocation(line: 135, column: 10, scope: !1652, inlinedAt: !1742)
!1744 = !DILocation(line: 465, column: 8, scope: !1745, inlinedAt: !1205)
!1745 = distinct !DILexicalBlock(scope: !274, file: !3, line: 465, column: 7)
!1746 = !DILocation(line: 465, column: 7, scope: !274, inlinedAt: !1205)
!1747 = !DILocation(line: 466, column: 32, scope: !1745, inlinedAt: !1205)
!1748 = !DILocation(line: 466, column: 24, scope: !1745, inlinedAt: !1205)
!1749 = !DILocation(line: 468, column: 34, scope: !1745, inlinedAt: !1205)
!1750 = !DILocation(line: 468, column: 26, scope: !1745, inlinedAt: !1205)
!1751 = !DILocation(line: 468, column: 24, scope: !1745, inlinedAt: !1205)
!1752 = !DILocation(line: 470, column: 24, scope: !1745, inlinedAt: !1205)
!1753 = !DILocation(line: 466, column: 15, scope: !1745, inlinedAt: !1205)
!1754 = !DILocation(line: 466, column: 13, scope: !1745, inlinedAt: !1205)
!1755 = !DILocation(line: 466, column: 5, scope: !1745, inlinedAt: !1205)
!1756 = !DILocation(line: 471, column: 3, scope: !274, inlinedAt: !1205)
!1757 = !{!1187, !1188, i64 332}
!1758 = !{!1187, !1188, i64 334}
!1759 = !DILocation(line: 0, scope: !235, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 477, column: 15, scope: !274, inlinedAt: !1205)
!1761 = !DILocation(line: 228, column: 3, scope: !235, inlinedAt: !1760)
!1762 = !DILocation(line: 228, column: 14, scope: !235, inlinedAt: !1760)
!1763 = !DILocation(line: 228, column: 10, scope: !235, inlinedAt: !1760)
!1764 = !DILocation(line: 229, column: 20, scope: !235, inlinedAt: !1760)
!1765 = !DILocation(line: 231, column: 7, scope: !1482, inlinedAt: !1760)
!1766 = !DILocation(line: 231, column: 7, scope: !235, inlinedAt: !1760)
!1767 = !DILocation(line: 233, column: 34, scope: !1485, inlinedAt: !1760)
!1768 = !DILocation(line: 233, column: 7, scope: !1485, inlinedAt: !1760)
!1769 = !DILocation(line: 234, column: 7, scope: !1485, inlinedAt: !1760)
!1770 = !DILocation(line: 237, column: 23, scope: !1482, inlinedAt: !1760)
!1771 = !DILocation(line: 0, scope: !1490, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 237, column: 12, scope: !1482, inlinedAt: !1760)
!1773 = !DILocation(line: 693, column: 13, scope: !1490, inlinedAt: !1772)
!1774 = !DILocation(line: 237, column: 5, scope: !1482, inlinedAt: !1760)
!1775 = !DILocation(line: 0, scope: !1482, inlinedAt: !1760)
!1776 = !DILocation(line: 476, column: 54, scope: !274, inlinedAt: !1205)
!1777 = !DILocation(line: 238, column: 1, scope: !235, inlinedAt: !1760)
!1778 = !DILocation(line: 477, column: 60, scope: !274, inlinedAt: !1205)
!1779 = !DILocation(line: 476, column: 3, scope: !274, inlinedAt: !1205)
!1780 = !DILocation(line: 478, column: 3, scope: !274, inlinedAt: !1205)
!1781 = !DILocation(line: 479, column: 1, scope: !274, inlinedAt: !1205)
!1782 = !DILocation(line: 608, column: 13, scope: !1206, inlinedAt: !1222)
!1783 = !DILocation(line: 611, column: 11, scope: !1784, inlinedAt: !1222)
!1784 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 611, column: 11)
!1785 = !DILocation(line: 611, column: 11, scope: !1215, inlinedAt: !1222)
!1786 = !DILocation(line: 612, column: 20, scope: !1784, inlinedAt: !1222)
!1787 = !DILocation(line: 612, column: 9, scope: !1784, inlinedAt: !1222)
!1788 = !DILocation(line: 614, column: 15, scope: !1215, inlinedAt: !1222)
!1789 = distinct !{!1789, !1264, !1790, !955}
!1790 = !DILocation(line: 615, column: 5, scope: !1216, inlinedAt: !1222)
!1791 = !DILocation(line: 634, column: 9, scope: !1144)
!1792 = !DILocation(line: 634, column: 3, scope: !1144)
!1793 = !DILocation(line: 635, column: 1, scope: !1144)
!1794 = !DISubprogram(name: "error", scope: !1795, file: !1795, line: 52, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1795 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !73, !73, !69, null}
!1798 = !DILocation(line: 0, scope: !76)
!1799 = !DILocation(line: 250, column: 3, scope: !76)
!1800 = !DILocation(line: 251, column: 3, scope: !76)
!1801 = !DILocation(line: 251, column: 8, scope: !76)
!1802 = !DILocation(line: 252, column: 3, scope: !76)
!1803 = !DILocation(line: 252, column: 8, scope: !76)
!1804 = !DILocation(line: 256, column: 11, scope: !76)
!1805 = !DILocation(line: 258, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !76, file: !3, line: 258, column: 7)
!1807 = !DILocation(line: 258, column: 20, scope: !1806)
!1808 = !DILocation(line: 258, column: 24, scope: !1806)
!1809 = !DILocation(line: 258, column: 37, scope: !1806)
!1810 = !DILocation(line: 258, column: 40, scope: !1806)
!1811 = !DILocation(line: 258, column: 54, scope: !1806)
!1812 = !DILocation(line: 258, column: 7, scope: !76)
!1813 = !DILocation(line: 259, column: 5, scope: !1806)
!1814 = !DILocation(line: 261, column: 13, scope: !1806)
!1815 = !DILocation(line: 263, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !76, file: !3, line: 263, column: 7)
!1817 = !DILocation(line: 263, column: 21, scope: !1816)
!1818 = !DILocation(line: 263, column: 24, scope: !1816)
!1819 = !DILocation(line: 263, column: 37, scope: !1816)
!1820 = !DILocation(line: 263, column: 7, scope: !76)
!1821 = !DILocation(line: 264, column: 5, scope: !1816)
!1822 = !DILocation(line: 266, column: 12, scope: !1816)
!1823 = !DILocation(line: 268, column: 24, scope: !76)
!1824 = !DILocation(line: 268, column: 43, scope: !76)
!1825 = !DILocation(line: 268, column: 15, scope: !76)
!1826 = !DILocation(line: 269, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !76, file: !3, line: 269, column: 7)
!1828 = !DILocation(line: 269, column: 7, scope: !76)
!1829 = !DILocation(line: 270, column: 5, scope: !1827)
!1830 = !DILocation(line: 272, column: 16, scope: !1827)
!1831 = !DILocation(line: 274, column: 9, scope: !76)
!1832 = !DILocation(line: 298, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !76, file: !3, line: 298, column: 7)
!1834 = !DILocation(line: 298, column: 7, scope: !76)
!1835 = !DILocation(line: 299, column: 5, scope: !1833)
!1836 = !DILocation(line: 303, column: 15, scope: !102)
!1837 = !DILocation(line: 303, column: 21, scope: !102)
!1838 = !DILocation(line: 303, column: 19, scope: !102)
!1839 = !DILocation(line: 0, scope: !102)
!1840 = !DILocation(line: 304, column: 5, scope: !102)
!1841 = !DILocation(line: 304, column: 13, scope: !102)
!1842 = !DILocation(line: 304, column: 12, scope: !102)
!1843 = !DILocation(line: 304, column: 17, scope: !102)
!1844 = distinct !{!1844, !1840, !1845, !955}
!1845 = !DILocation(line: 305, column: 18, scope: !102)
!1846 = !DILocation(line: 306, column: 14, scope: !102)
!1847 = !DILocation(line: 309, column: 9, scope: !76)
!1848 = !DILocation(line: 309, column: 3, scope: !76)
!1849 = !DILocation(line: 310, column: 9, scope: !76)
!1850 = !DILocation(line: 310, column: 3, scope: !76)
!1851 = !DILocation(line: 311, column: 3, scope: !76)
!1852 = !DILocation(line: 312, column: 1, scope: !76)
!1853 = !DISubprogram(name: "ttyname", scope: !1854, file: !1854, line: 782, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1854 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!26, !73}
!1857 = !DISubprogram(name: "stat", scope: !1858, file: !1858, line: 205, type: !1859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1858 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!73, !69, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1862 = !DISubprogram(name: "time", scope: !1863, file: !1863, line: 75, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1863 = !DIFile(filename: "/usr/include/time.h", directory: "")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!33, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1867 = !DISubprogram(name: "localtime", scope: !1863, file: !1863, line: 123, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!242, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1872 = !DISubprogram(name: "strftime", scope: !1863, file: !1863, line: 88, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!160, !26, !160, !69, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!1877 = !DISubprogram(name: "puts", scope: !980, file: !980, line: 637, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!73, !69}
!1880 = distinct !DISubprogram(name: "canon_host", scope: !315, file: !315, line: 33, type: !1129, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1881)
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "host", arg: 1, scope: !1880, file: !315, line: 33, type: !69)
!1883 = !DILocation(line: 0, scope: !1880)
!1884 = !DILocation(line: 0, scope: !319, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 35, column: 10, scope: !1880)
!1886 = !DILocation(line: 65, column: 3, scope: !319, inlinedAt: !1885)
!1887 = !DILocation(line: 65, column: 20, scope: !319, inlinedAt: !1885)
!1888 = !DILocation(line: 68, column: 18, scope: !319, inlinedAt: !1885)
!1889 = !{!1890, !1105, i64 0}
!1890 = !{!"addrinfo", !1105, i64 0, !1105, i64 4, !1105, i64 8, !1105, i64 12, !1105, i64 16, !910, i64 24, !910, i64 32, !910, i64 40}
!1891 = !DILocation(line: 69, column: 12, scope: !319, inlinedAt: !1885)
!1892 = !DILocation(line: 70, column: 8, scope: !1893, inlinedAt: !1885)
!1893 = distinct !DILexicalBlock(scope: !319, file: !315, line: 70, column: 7)
!1894 = !DILocation(line: 70, column: 7, scope: !319, inlinedAt: !1885)
!1895 = !DILocation(line: 75, column: 24, scope: !1896, inlinedAt: !1885)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !315, line: 71, column: 5)
!1897 = !DILocation(line: 75, column: 29, scope: !1896, inlinedAt: !1885)
!1898 = !{!1890, !910, i64 32}
!1899 = !DILocation(line: 75, column: 16, scope: !1896, inlinedAt: !1885)
!1900 = !DILocation(line: 76, column: 12, scope: !1901, inlinedAt: !1885)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !315, line: 76, column: 11)
!1902 = !DILocation(line: 76, column: 19, scope: !1901, inlinedAt: !1885)
!1903 = !DILocation(line: 77, column: 18, scope: !1901, inlinedAt: !1885)
!1904 = !DILocation(line: 77, column: 9, scope: !1901, inlinedAt: !1885)
!1905 = !DILocation(line: 78, column: 7, scope: !1896, inlinedAt: !1885)
!1906 = !DILocation(line: 79, column: 5, scope: !1896, inlinedAt: !1885)
!1907 = !DILocation(line: 81, column: 14, scope: !1908, inlinedAt: !1885)
!1908 = distinct !DILexicalBlock(scope: !1893, file: !315, line: 80, column: 12)
!1909 = !DILocation(line: 81, column: 5, scope: !1908, inlinedAt: !1885)
!1910 = !DILocation(line: 84, column: 1, scope: !319, inlinedAt: !1885)
!1911 = !DILocation(line: 35, column: 3, scope: !1880)
!1912 = !DISubprogram(name: "getaddrinfo", scope: !329, file: !329, line: 660, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!73, !69, !69, !1915, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1918 = !DISubprogram(name: "freeaddrinfo", scope: !329, file: !329, line: 666, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !327}
!1921 = !DILocation(line: 0, scope: !319)
!1922 = !DILocation(line: 65, column: 3, scope: !319)
!1923 = !DILocation(line: 65, column: 20, scope: !319)
!1924 = !DILocation(line: 68, column: 18, scope: !319)
!1925 = !DILocation(line: 69, column: 12, scope: !319)
!1926 = !DILocation(line: 70, column: 8, scope: !1893)
!1927 = !DILocation(line: 70, column: 7, scope: !319)
!1928 = !DILocation(line: 75, column: 24, scope: !1896)
!1929 = !DILocation(line: 75, column: 29, scope: !1896)
!1930 = !DILocation(line: 75, column: 16, scope: !1896)
!1931 = !DILocation(line: 76, column: 12, scope: !1901)
!1932 = !DILocation(line: 76, column: 19, scope: !1901)
!1933 = !DILocation(line: 77, column: 18, scope: !1901)
!1934 = !DILocation(line: 77, column: 9, scope: !1901)
!1935 = !DILocation(line: 78, column: 7, scope: !1896)
!1936 = !DILocation(line: 79, column: 5, scope: !1896)
!1937 = !DILocation(line: 80, column: 12, scope: !1908)
!1938 = !DILocation(line: 80, column: 12, scope: !1893)
!1939 = !DILocation(line: 81, column: 14, scope: !1908)
!1940 = !DILocation(line: 81, column: 5, scope: !1908)
!1941 = !DILocation(line: 84, column: 1, scope: !319)
!1942 = !DILocation(line: 83, column: 3, scope: !319)
!1943 = distinct !DISubprogram(name: "ch_strerror", scope: !315, file: !315, line: 88, type: !1944, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !310)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!69}
!1946 = !DILocation(line: 90, column: 24, scope: !1943)
!1947 = !DILocation(line: 90, column: 10, scope: !1943)
!1948 = !DILocation(line: 90, column: 3, scope: !1943)
!1949 = !DISubprogram(name: "gai_strerror", scope: !329, file: !329, line: 669, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!69, !73}
!1952 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !357, file: !357, line: 51, type: !927, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1953)
!1953 = !{!1954}
!1954 = !DILocalVariable(name: "file", arg: 1, scope: !1952, file: !357, line: 51, type: !69)
!1955 = !DILocation(line: 0, scope: !1952)
!1956 = !DILocation(line: 53, column: 13, scope: !1952)
!1957 = !DILocation(line: 54, column: 1, scope: !1952)
!1958 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !357, file: !357, line: 88, type: !1959, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !38}
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "ignore", arg: 1, scope: !1958, file: !357, line: 88, type: !38)
!1963 = !DILocation(line: 0, scope: !1958)
!1964 = !DILocation(line: 90, column: 16, scope: !1958)
!1965 = !{!1966, !1966, i64 0}
!1966 = !{!"_Bool", !911, i64 0}
!1967 = !DILocation(line: 91, column: 1, scope: !1958)
!1968 = distinct !DISubprogram(name: "close_stdout", scope: !357, file: !357, line: 117, type: !1136, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !1969)
!1969 = !{!1970}
!1970 = !DILocalVariable(name: "write_error", scope: !1971, file: !357, line: 122, type: !69)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !357, line: 121, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !357, line: 119, column: 7)
!1973 = !DILocation(line: 119, column: 21, scope: !1972)
!1974 = !DILocation(line: 119, column: 7, scope: !1972)
!1975 = !DILocation(line: 119, column: 29, scope: !1972)
!1976 = !DILocation(line: 120, column: 7, scope: !1972)
!1977 = !DILocation(line: 120, column: 12, scope: !1972)
!1978 = !{i8 0, i8 2}
!1979 = !DILocation(line: 120, column: 25, scope: !1972)
!1980 = !DILocation(line: 120, column: 28, scope: !1972)
!1981 = !DILocation(line: 120, column: 34, scope: !1972)
!1982 = !DILocation(line: 119, column: 7, scope: !1968)
!1983 = !DILocation(line: 122, column: 33, scope: !1971)
!1984 = !DILocation(line: 0, scope: !1971)
!1985 = !DILocation(line: 123, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1971, file: !357, line: 123, column: 11)
!1987 = !DILocation(line: 0, scope: !1986)
!1988 = !DILocation(line: 123, column: 11, scope: !1971)
!1989 = !DILocation(line: 124, column: 36, scope: !1986)
!1990 = !DILocation(line: 124, column: 9, scope: !1986)
!1991 = !DILocation(line: 127, column: 9, scope: !1986)
!1992 = !DILocation(line: 129, column: 14, scope: !1971)
!1993 = !DILocation(line: 129, column: 7, scope: !1971)
!1994 = !DILocation(line: 134, column: 42, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1968, file: !357, line: 134, column: 7)
!1996 = !DILocation(line: 134, column: 28, scope: !1995)
!1997 = !DILocation(line: 134, column: 50, scope: !1995)
!1998 = !DILocation(line: 134, column: 7, scope: !1968)
!1999 = !DILocation(line: 135, column: 12, scope: !1995)
!2000 = !DILocation(line: 135, column: 5, scope: !1995)
!2001 = !DILocation(line: 136, column: 1, scope: !1968)
!2002 = distinct !DISubprogram(name: "hard_locale", scope: !444, file: !444, line: 27, type: !1555, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2003)
!2003 = !{!2004, !2005}
!2004 = !DILocalVariable(name: "category", arg: 1, scope: !2002, file: !444, line: 27, type: !73)
!2005 = !DILocalVariable(name: "locale", scope: !2002, file: !444, line: 29, type: !208)
!2006 = !DILocation(line: 0, scope: !2002)
!2007 = !DILocation(line: 29, column: 3, scope: !2002)
!2008 = !DILocation(line: 29, column: 8, scope: !2002)
!2009 = !DILocation(line: 31, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !444, line: 31, column: 7)
!2011 = !DILocation(line: 31, column: 7, scope: !2002)
!2012 = !DILocation(line: 34, column: 12, scope: !2002)
!2013 = !DILocation(line: 34, column: 38, scope: !2002)
!2014 = !DILocation(line: 34, column: 41, scope: !2002)
!2015 = !DILocation(line: 34, column: 66, scope: !2002)
!2016 = !DILocation(line: 35, column: 1, scope: !2002)
!2017 = distinct !DISubprogram(name: "imaxtostr", scope: !2018, file: !2018, line: 36, type: !2019, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !2021)
!2018 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!26, !448, !26}
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "i", arg: 1, scope: !2017, file: !2018, line: 36, type: !448)
!2023 = !DILocalVariable(name: "buf", arg: 2, scope: !2017, file: !2018, line: 36, type: !26)
!2024 = !DILocalVariable(name: "p", scope: !2017, file: !2018, line: 38, type: !26)
!2025 = !DILocation(line: 0, scope: !2017)
!2026 = !DILocation(line: 38, column: 17, scope: !2017)
!2027 = !DILocation(line: 39, column: 6, scope: !2017)
!2028 = !DILocation(line: 41, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !2018, line: 41, column: 7)
!2030 = !DILocation(line: 41, column: 7, scope: !2017)
!2031 = !DILocation(line: 44, column: 24, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !2018, line: 42, column: 5)
!2033 = !DILocation(line: 44, column: 16, scope: !2032)
!2034 = !DILocation(line: 44, column: 10, scope: !2032)
!2035 = !DILocation(line: 44, column: 14, scope: !2032)
!2036 = !DILocation(line: 45, column: 17, scope: !2032)
!2037 = !DILocation(line: 45, column: 24, scope: !2032)
!2038 = !DILocation(line: 44, column: 9, scope: !2032)
!2039 = distinct !{!2039, !2040, !2041, !955}
!2040 = !DILocation(line: 43, column: 7, scope: !2032)
!2041 = !DILocation(line: 45, column: 28, scope: !2032)
!2042 = !DILocation(line: 47, column: 8, scope: !2032)
!2043 = !DILocation(line: 47, column: 12, scope: !2032)
!2044 = !DILocation(line: 48, column: 5, scope: !2032)
!2045 = !DILocation(line: 52, column: 24, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2029, file: !2018, line: 50, column: 5)
!2047 = !DILocation(line: 52, column: 16, scope: !2046)
!2048 = !DILocation(line: 52, column: 10, scope: !2046)
!2049 = !DILocation(line: 52, column: 14, scope: !2046)
!2050 = !DILocation(line: 53, column: 17, scope: !2046)
!2051 = !DILocation(line: 53, column: 24, scope: !2046)
!2052 = !DILocation(line: 52, column: 9, scope: !2046)
!2053 = distinct !{!2053, !2054, !2055, !955}
!2054 = !DILocation(line: 51, column: 7, scope: !2046)
!2055 = !DILocation(line: 53, column: 28, scope: !2046)
!2056 = !DILocation(line: 0, scope: !2029)
!2057 = !DILocation(line: 56, column: 3, scope: !2017)
!2058 = distinct !DISubprogram(name: "set_program_name", scope: !370, file: !370, line: 39, type: !927, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DILocalVariable(name: "argv0", arg: 1, scope: !2058, file: !370, line: 39, type: !69)
!2061 = !DILocalVariable(name: "slash", scope: !2058, file: !370, line: 46, type: !69)
!2062 = !DILocalVariable(name: "base", scope: !2058, file: !370, line: 47, type: !69)
!2063 = !DILocation(line: 0, scope: !2058)
!2064 = !DILocation(line: 51, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2058, file: !370, line: 51, column: 7)
!2066 = !DILocation(line: 51, column: 7, scope: !2058)
!2067 = !DILocation(line: 55, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !370, line: 52, column: 5)
!2069 = !DILocation(line: 54, column: 7, scope: !2068)
!2070 = !DILocation(line: 56, column: 7, scope: !2068)
!2071 = !DILocation(line: 59, column: 11, scope: !2058)
!2072 = !DILocation(line: 60, column: 17, scope: !2058)
!2073 = !DILocation(line: 60, column: 11, scope: !2058)
!2074 = !DILocation(line: 61, column: 12, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2058, file: !370, line: 61, column: 7)
!2076 = !DILocation(line: 61, column: 20, scope: !2075)
!2077 = !DILocation(line: 61, column: 25, scope: !2075)
!2078 = !DILocation(line: 61, column: 42, scope: !2075)
!2079 = !DILocation(line: 61, column: 28, scope: !2075)
!2080 = !DILocation(line: 61, column: 61, scope: !2075)
!2081 = !DILocation(line: 61, column: 7, scope: !2058)
!2082 = !DILocation(line: 64, column: 11, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !370, line: 64, column: 11)
!2084 = distinct !DILexicalBlock(scope: !2075, file: !370, line: 62, column: 5)
!2085 = !DILocation(line: 64, column: 36, scope: !2083)
!2086 = !DILocation(line: 64, column: 11, scope: !2084)
!2087 = !DILocation(line: 66, column: 24, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2083, file: !370, line: 65, column: 9)
!2089 = !DILocation(line: 70, column: 41, scope: !2088)
!2090 = !DILocation(line: 72, column: 9, scope: !2088)
!2091 = !DILocation(line: 84, column: 16, scope: !2058)
!2092 = !DILocation(line: 90, column: 27, scope: !2058)
!2093 = !DILocation(line: 92, column: 1, scope: !2058)
!2094 = distinct !DISubprogram(name: "clone_quoting_options", scope: !376, file: !376, line: 122, type: !2095, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2098)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "o", arg: 1, scope: !2094, file: !376, line: 122, type: !2097)
!2100 = !DILocalVariable(name: "e", scope: !2094, file: !376, line: 124, type: !73)
!2101 = !DILocalVariable(name: "p", scope: !2094, file: !376, line: 125, type: !2097)
!2102 = !DILocation(line: 0, scope: !2094)
!2103 = !DILocation(line: 124, column: 11, scope: !2094)
!2104 = !DILocation(line: 125, column: 40, scope: !2094)
!2105 = !DILocation(line: 125, column: 31, scope: !2094)
!2106 = !DILocation(line: 127, column: 9, scope: !2094)
!2107 = !DILocation(line: 128, column: 3, scope: !2094)
!2108 = distinct !DISubprogram(name: "get_quoting_style", scope: !376, file: !376, line: 133, type: !2109, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2113)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!11, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "o", arg: 1, scope: !2108, file: !376, line: 133, type: !2111)
!2115 = !DILocation(line: 0, scope: !2108)
!2116 = !DILocation(line: 135, column: 11, scope: !2108)
!2117 = !DILocation(line: 135, column: 46, scope: !2108)
!2118 = !{!2119, !911, i64 0}
!2119 = !{!"quoting_options", !911, i64 0, !1105, i64 4, !911, i64 8, !910, i64 40, !910, i64 48}
!2120 = !DILocation(line: 135, column: 3, scope: !2108)
!2121 = distinct !DISubprogram(name: "set_quoting_style", scope: !376, file: !376, line: 141, type: !2122, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2097, !11}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "o", arg: 1, scope: !2121, file: !376, line: 141, type: !2097)
!2126 = !DILocalVariable(name: "s", arg: 2, scope: !2121, file: !376, line: 141, type: !11)
!2127 = !DILocation(line: 0, scope: !2121)
!2128 = !DILocation(line: 143, column: 4, scope: !2121)
!2129 = !DILocation(line: 143, column: 39, scope: !2121)
!2130 = !DILocation(line: 143, column: 45, scope: !2121)
!2131 = !DILocation(line: 144, column: 1, scope: !2121)
!2132 = distinct !DISubprogram(name: "set_char_quoting", scope: !376, file: !376, line: 152, type: !2133, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!73, !2097, !27, !73}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2142, !2143}
!2136 = !DILocalVariable(name: "o", arg: 1, scope: !2132, file: !376, line: 152, type: !2097)
!2137 = !DILocalVariable(name: "c", arg: 2, scope: !2132, file: !376, line: 152, type: !27)
!2138 = !DILocalVariable(name: "i", arg: 3, scope: !2132, file: !376, line: 152, type: !73)
!2139 = !DILocalVariable(name: "uc", scope: !2132, file: !376, line: 154, type: !268)
!2140 = !DILocalVariable(name: "p", scope: !2132, file: !376, line: 155, type: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2142 = !DILocalVariable(name: "shift", scope: !2132, file: !376, line: 157, type: !73)
!2143 = !DILocalVariable(name: "r", scope: !2132, file: !376, line: 158, type: !73)
!2144 = !DILocation(line: 0, scope: !2132)
!2145 = !DILocation(line: 156, column: 6, scope: !2132)
!2146 = !DILocation(line: 156, column: 62, scope: !2132)
!2147 = !DILocation(line: 156, column: 57, scope: !2132)
!2148 = !DILocation(line: 157, column: 15, scope: !2132)
!2149 = !DILocation(line: 158, column: 12, scope: !2132)
!2150 = !DILocation(line: 158, column: 15, scope: !2132)
!2151 = !DILocation(line: 158, column: 25, scope: !2132)
!2152 = !DILocation(line: 159, column: 13, scope: !2132)
!2153 = !DILocation(line: 159, column: 18, scope: !2132)
!2154 = !DILocation(line: 159, column: 23, scope: !2132)
!2155 = !DILocation(line: 159, column: 6, scope: !2132)
!2156 = !DILocation(line: 160, column: 3, scope: !2132)
!2157 = distinct !DISubprogram(name: "set_quoting_flags", scope: !376, file: !376, line: 168, type: !2158, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!73, !2097, !73}
!2160 = !{!2161, !2162, !2163}
!2161 = !DILocalVariable(name: "o", arg: 1, scope: !2157, file: !376, line: 168, type: !2097)
!2162 = !DILocalVariable(name: "i", arg: 2, scope: !2157, file: !376, line: 168, type: !73)
!2163 = !DILocalVariable(name: "r", scope: !2157, file: !376, line: 170, type: !73)
!2164 = !DILocation(line: 0, scope: !2157)
!2165 = !DILocation(line: 171, column: 8, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2157, file: !376, line: 171, column: 7)
!2167 = !DILocation(line: 171, column: 7, scope: !2157)
!2168 = !DILocation(line: 173, column: 10, scope: !2157)
!2169 = !{!2119, !1105, i64 4}
!2170 = !DILocation(line: 174, column: 12, scope: !2157)
!2171 = !DILocation(line: 175, column: 3, scope: !2157)
!2172 = distinct !DISubprogram(name: "set_custom_quoting", scope: !376, file: !376, line: 179, type: !2173, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2097, !69, !69}
!2175 = !{!2176, !2177, !2178}
!2176 = !DILocalVariable(name: "o", arg: 1, scope: !2172, file: !376, line: 179, type: !2097)
!2177 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2172, file: !376, line: 180, type: !69)
!2178 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2172, file: !376, line: 180, type: !69)
!2179 = !DILocation(line: 0, scope: !2172)
!2180 = !DILocation(line: 182, column: 8, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2172, file: !376, line: 182, column: 7)
!2182 = !DILocation(line: 182, column: 7, scope: !2172)
!2183 = !DILocation(line: 184, column: 6, scope: !2172)
!2184 = !DILocation(line: 184, column: 12, scope: !2172)
!2185 = !DILocation(line: 185, column: 8, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2172, file: !376, line: 185, column: 7)
!2187 = !DILocation(line: 185, column: 19, scope: !2186)
!2188 = !DILocation(line: 186, column: 5, scope: !2186)
!2189 = !DILocation(line: 187, column: 6, scope: !2172)
!2190 = !DILocation(line: 187, column: 17, scope: !2172)
!2191 = !{!2119, !910, i64 40}
!2192 = !DILocation(line: 188, column: 6, scope: !2172)
!2193 = !DILocation(line: 188, column: 18, scope: !2172)
!2194 = !{!2119, !910, i64 48}
!2195 = !DILocation(line: 189, column: 1, scope: !2172)
!2196 = distinct !DISubprogram(name: "quotearg_buffer", scope: !376, file: !376, line: 784, type: !2197, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!215, !26, !215, !69, !215, !2111}
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2200 = !DILocalVariable(name: "buffer", arg: 1, scope: !2196, file: !376, line: 784, type: !26)
!2201 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2196, file: !376, line: 784, type: !215)
!2202 = !DILocalVariable(name: "arg", arg: 3, scope: !2196, file: !376, line: 785, type: !69)
!2203 = !DILocalVariable(name: "argsize", arg: 4, scope: !2196, file: !376, line: 785, type: !215)
!2204 = !DILocalVariable(name: "o", arg: 5, scope: !2196, file: !376, line: 786, type: !2111)
!2205 = !DILocalVariable(name: "p", scope: !2196, file: !376, line: 788, type: !2111)
!2206 = !DILocalVariable(name: "e", scope: !2196, file: !376, line: 789, type: !73)
!2207 = !DILocalVariable(name: "r", scope: !2196, file: !376, line: 790, type: !215)
!2208 = !DILocation(line: 0, scope: !2196)
!2209 = !DILocation(line: 788, column: 37, scope: !2196)
!2210 = !DILocation(line: 789, column: 11, scope: !2196)
!2211 = !DILocation(line: 791, column: 43, scope: !2196)
!2212 = !DILocation(line: 791, column: 53, scope: !2196)
!2213 = !DILocation(line: 791, column: 60, scope: !2196)
!2214 = !DILocation(line: 792, column: 43, scope: !2196)
!2215 = !DILocation(line: 792, column: 58, scope: !2196)
!2216 = !DILocation(line: 790, column: 14, scope: !2196)
!2217 = !DILocation(line: 793, column: 9, scope: !2196)
!2218 = !DILocation(line: 794, column: 3, scope: !2196)
!2219 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !376, file: !376, line: 256, type: !2220, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2224)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!215, !26, !215, !69, !215, !11, !73, !2222, !69, !69}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2249, !2250, !2251, !2252, !2253, !2256, !2257, !2272, !2275, !2276, !2283, !2286, !2287, !2288, !2289, !2290, !2291}
!2225 = !DILocalVariable(name: "buffer", arg: 1, scope: !2219, file: !376, line: 256, type: !26)
!2226 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2219, file: !376, line: 256, type: !215)
!2227 = !DILocalVariable(name: "arg", arg: 3, scope: !2219, file: !376, line: 257, type: !69)
!2228 = !DILocalVariable(name: "argsize", arg: 4, scope: !2219, file: !376, line: 257, type: !215)
!2229 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2219, file: !376, line: 258, type: !11)
!2230 = !DILocalVariable(name: "flags", arg: 6, scope: !2219, file: !376, line: 258, type: !73)
!2231 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2219, file: !376, line: 259, type: !2222)
!2232 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2219, file: !376, line: 260, type: !69)
!2233 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2219, file: !376, line: 261, type: !69)
!2234 = !DILocalVariable(name: "i", scope: !2219, file: !376, line: 263, type: !215)
!2235 = !DILocalVariable(name: "len", scope: !2219, file: !376, line: 264, type: !215)
!2236 = !DILocalVariable(name: "orig_buffersize", scope: !2219, file: !376, line: 265, type: !215)
!2237 = !DILocalVariable(name: "quote_string", scope: !2219, file: !376, line: 266, type: !69)
!2238 = !DILocalVariable(name: "quote_string_len", scope: !2219, file: !376, line: 267, type: !215)
!2239 = !DILocalVariable(name: "backslash_escapes", scope: !2219, file: !376, line: 268, type: !38)
!2240 = !DILocalVariable(name: "unibyte_locale", scope: !2219, file: !376, line: 269, type: !38)
!2241 = !DILocalVariable(name: "elide_outer_quotes", scope: !2219, file: !376, line: 270, type: !38)
!2242 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2219, file: !376, line: 271, type: !38)
!2243 = !DILocalVariable(name: "encountered_single_quote", scope: !2219, file: !376, line: 272, type: !38)
!2244 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2219, file: !376, line: 273, type: !38)
!2245 = !DILocalVariable(name: "c", scope: !2246, file: !376, line: 402, type: !268)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !376, line: 401, column: 5)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !376, line: 400, column: 3)
!2248 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 400, column: 3)
!2249 = !DILocalVariable(name: "esc", scope: !2246, file: !376, line: 403, type: !268)
!2250 = !DILocalVariable(name: "is_right_quote", scope: !2246, file: !376, line: 404, type: !38)
!2251 = !DILocalVariable(name: "escaping", scope: !2246, file: !376, line: 405, type: !38)
!2252 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2246, file: !376, line: 406, type: !38)
!2253 = !DILocalVariable(name: "m", scope: !2254, file: !376, line: 610, type: !215)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 608, column: 11)
!2255 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 426, column: 9)
!2256 = !DILocalVariable(name: "printable", scope: !2254, file: !376, line: 612, type: !38)
!2257 = !DILocalVariable(name: "mbstate", scope: !2258, file: !376, line: 621, type: !2260)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !376, line: 620, column: 15)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !376, line: 614, column: 17)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2261, line: 6, baseType: !2262)
!2261 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2263, line: 21, baseType: !2264)
!2263 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2263, line: 13, size: 64, elements: !2265)
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2264, file: !2263, line: 15, baseType: !73, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2264, file: !2263, line: 20, baseType: !2268, size: 32, offset: 32)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !2263, line: 16, size: 32, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2268, file: !2263, line: 18, baseType: !7, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2268, file: !2263, line: 19, baseType: !125, size: 32)
!2272 = !DILocalVariable(name: "w", scope: !2273, file: !376, line: 631, type: !2274)
!2273 = distinct !DILexicalBlock(scope: !2258, file: !376, line: 630, column: 19)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !216, line: 74, baseType: !73)
!2275 = !DILocalVariable(name: "bytes", scope: !2273, file: !376, line: 632, type: !215)
!2276 = !DILocalVariable(name: "j", scope: !2277, file: !376, line: 657, type: !215)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !376, line: 656, column: 27)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 654, column: 29)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !376, line: 649, column: 23)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !376, line: 641, column: 30)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !376, line: 636, column: 30)
!2282 = distinct !DILexicalBlock(scope: !2273, file: !376, line: 634, column: 25)
!2283 = !DILocalVariable(name: "ilim", scope: !2284, file: !376, line: 684, type: !215)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !376, line: 681, column: 15)
!2285 = distinct !DILexicalBlock(scope: !2254, file: !376, line: 680, column: 17)
!2286 = !DILabel(scope: !2219, name: "process_input", file: !376, line: 314)
!2287 = !DILabel(scope: !2255, name: "c_and_shell_escape", file: !376, line: 512)
!2288 = !DILabel(scope: !2255, name: "c_escape", file: !376, line: 517)
!2289 = !DILabel(scope: !2246, name: "store_escape", file: !376, line: 719)
!2290 = !DILabel(scope: !2246, name: "store_c", file: !376, line: 722)
!2291 = !DILabel(scope: !2219, name: "force_outer_quoting_style", file: !376, line: 763)
!2292 = !DILocation(line: 0, scope: !2219)
!2293 = !DILocation(line: 269, column: 25, scope: !2219)
!2294 = !DILocation(line: 269, column: 36, scope: !2219)
!2295 = !DILocation(line: 270, column: 8, scope: !2219)
!2296 = !DILocation(line: 273, column: 3, scope: !2219)
!2297 = !DILocation(line: 265, column: 10, scope: !2219)
!2298 = !DILocation(line: 266, column: 15, scope: !2219)
!2299 = !DILocation(line: 267, column: 10, scope: !2219)
!2300 = !DILocation(line: 268, column: 8, scope: !2219)
!2301 = !DILocation(line: 271, column: 8, scope: !2219)
!2302 = !DILocation(line: 272, column: 8, scope: !2219)
!2303 = !DILocation(line: 273, column: 8, scope: !2219)
!2304 = !DILocation(line: 314, column: 2, scope: !2219)
!2305 = !DILocation(line: 316, column: 3, scope: !2219)
!2306 = !DILocation(line: 323, column: 11, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 317, column: 5)
!2308 = !DILocation(line: 323, column: 12, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2307, file: !376, line: 323, column: 11)
!2310 = !DILocation(line: 324, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !376, line: 324, column: 9)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !376, line: 324, column: 9)
!2313 = !DILocation(line: 324, column: 9, scope: !2312)
!2314 = !DILocation(line: 362, column: 26, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !376, line: 340, column: 11)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !376, line: 339, column: 13)
!2317 = distinct !DILexicalBlock(scope: !2307, file: !376, line: 338, column: 7)
!2318 = !DILocation(line: 363, column: 27, scope: !2315)
!2319 = !DILocation(line: 364, column: 11, scope: !2315)
!2320 = !DILocation(line: 365, column: 14, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !376, line: 365, column: 13)
!2322 = !DILocation(line: 365, column: 13, scope: !2317)
!2323 = !DILocation(line: 366, column: 43, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !376, line: 366, column: 11)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !376, line: 366, column: 11)
!2326 = !DILocation(line: 366, column: 11, scope: !2325)
!2327 = !DILocation(line: 367, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !376, line: 367, column: 13)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !376, line: 367, column: 13)
!2330 = !DILocation(line: 367, column: 13, scope: !2329)
!2331 = !DILocation(line: 366, column: 70, scope: !2324)
!2332 = distinct !{!2332, !2326, !2333, !955}
!2333 = !DILocation(line: 367, column: 13, scope: !2325)
!2334 = !DILocation(line: 264, column: 10, scope: !2219)
!2335 = !DILocation(line: 370, column: 28, scope: !2317)
!2336 = !DILocation(line: 372, column: 7, scope: !2307)
!2337 = !DILocation(line: 376, column: 7, scope: !2307)
!2338 = !DILocation(line: 379, column: 7, scope: !2307)
!2339 = !DILocation(line: 381, column: 12, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2307, file: !376, line: 381, column: 11)
!2341 = !DILocation(line: 381, column: 11, scope: !2307)
!2342 = !DILocation(line: 386, column: 12, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2307, file: !376, line: 386, column: 11)
!2344 = !DILocation(line: 386, column: 11, scope: !2307)
!2345 = !DILocation(line: 387, column: 9, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !376, line: 387, column: 9)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !376, line: 387, column: 9)
!2348 = !DILocation(line: 387, column: 9, scope: !2347)
!2349 = !DILocation(line: 394, column: 7, scope: !2307)
!2350 = !DILocation(line: 397, column: 7, scope: !2307)
!2351 = !DILocation(line: 400, column: 8, scope: !2248)
!2352 = !DILocation(line: 0, scope: !2248)
!2353 = !DILocation(line: 400, column: 27, scope: !2247)
!2354 = !DILocation(line: 400, column: 19, scope: !2247)
!2355 = !DILocation(line: 400, column: 41, scope: !2247)
!2356 = !DILocation(line: 400, column: 48, scope: !2247)
!2357 = !DILocation(line: 400, column: 3, scope: !2248)
!2358 = !DILocation(line: 400, column: 60, scope: !2247)
!2359 = !DILocation(line: 0, scope: !2246)
!2360 = !DILocation(line: 409, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 408, column: 11)
!2362 = !DILocation(line: 411, column: 17, scope: !2361)
!2363 = !DILocation(line: 412, column: 39, scope: !2361)
!2364 = !DILocation(line: 416, column: 32, scope: !2361)
!2365 = !DILocation(line: 412, column: 19, scope: !2361)
!2366 = !DILocation(line: 412, column: 15, scope: !2361)
!2367 = !DILocation(line: 417, column: 11, scope: !2361)
!2368 = !DILocation(line: 417, column: 26, scope: !2361)
!2369 = !DILocation(line: 417, column: 14, scope: !2361)
!2370 = !DILocation(line: 417, column: 63, scope: !2361)
!2371 = !DILocation(line: 408, column: 11, scope: !2246)
!2372 = !DILocation(line: 424, column: 11, scope: !2246)
!2373 = !DILocation(line: 425, column: 7, scope: !2246)
!2374 = !DILocation(line: 428, column: 15, scope: !2255)
!2375 = !DILocation(line: 430, column: 15, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !376, line: 430, column: 15)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !376, line: 429, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 428, column: 15)
!2379 = !DILocation(line: 430, column: 15, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !376, line: 430, column: 15)
!2381 = !DILocation(line: 430, column: 15, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !376, line: 430, column: 15)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !376, line: 430, column: 15)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !376, line: 430, column: 15)
!2385 = !DILocation(line: 430, column: 15, scope: !2383)
!2386 = !DILocation(line: 430, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !376, line: 430, column: 15)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !376, line: 430, column: 15)
!2389 = !DILocation(line: 430, column: 15, scope: !2388)
!2390 = !DILocation(line: 430, column: 15, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !376, line: 430, column: 15)
!2392 = distinct !DILexicalBlock(scope: !2384, file: !376, line: 430, column: 15)
!2393 = !DILocation(line: 430, column: 15, scope: !2392)
!2394 = !DILocation(line: 430, column: 15, scope: !2384)
!2395 = !DILocation(line: 430, column: 15, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !376, line: 430, column: 15)
!2397 = distinct !DILexicalBlock(scope: !2376, file: !376, line: 430, column: 15)
!2398 = !DILocation(line: 430, column: 15, scope: !2397)
!2399 = !DILocation(line: 438, column: 19, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2377, file: !376, line: 437, column: 19)
!2401 = !DILocation(line: 438, column: 48, scope: !2400)
!2402 = !DILocation(line: 438, column: 59, scope: !2400)
!2403 = !DILocation(line: 440, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !376, line: 440, column: 19)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !376, line: 440, column: 19)
!2406 = distinct !DILexicalBlock(scope: !2400, file: !376, line: 439, column: 17)
!2407 = !DILocation(line: 440, column: 19, scope: !2405)
!2408 = !DILocation(line: 441, column: 19, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !376, line: 441, column: 19)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !376, line: 441, column: 19)
!2411 = !DILocation(line: 441, column: 19, scope: !2410)
!2412 = !DILocation(line: 442, column: 17, scope: !2406)
!2413 = !DILocation(line: 449, column: 20, scope: !2378)
!2414 = !DILocation(line: 454, column: 11, scope: !2255)
!2415 = !DILocation(line: 457, column: 19, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 455, column: 13)
!2417 = !DILocation(line: 463, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2416, file: !376, line: 462, column: 19)
!2419 = !DILocation(line: 463, column: 47, scope: !2418)
!2420 = !DILocation(line: 463, column: 41, scope: !2418)
!2421 = !DILocation(line: 463, column: 52, scope: !2418)
!2422 = !DILocation(line: 462, column: 19, scope: !2416)
!2423 = !DILocation(line: 464, column: 25, scope: !2418)
!2424 = !DILocation(line: 464, column: 17, scope: !2418)
!2425 = !DILocation(line: 471, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !376, line: 465, column: 19)
!2427 = !DILocation(line: 475, column: 21, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !376, line: 475, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !376, line: 475, column: 21)
!2430 = !DILocation(line: 475, column: 21, scope: !2429)
!2431 = !DILocation(line: 476, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !376, line: 476, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !376, line: 476, column: 21)
!2434 = !DILocation(line: 476, column: 21, scope: !2433)
!2435 = !DILocation(line: 477, column: 21, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !376, line: 477, column: 21)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !376, line: 477, column: 21)
!2438 = !DILocation(line: 477, column: 21, scope: !2437)
!2439 = !DILocation(line: 478, column: 21, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !376, line: 478, column: 21)
!2441 = distinct !DILexicalBlock(scope: !2426, file: !376, line: 478, column: 21)
!2442 = !DILocation(line: 478, column: 21, scope: !2441)
!2443 = !DILocation(line: 479, column: 21, scope: !2426)
!2444 = !DILocation(line: 492, column: 31, scope: !2255)
!2445 = !DILocation(line: 493, column: 31, scope: !2255)
!2446 = !DILocation(line: 495, column: 31, scope: !2255)
!2447 = !DILocation(line: 496, column: 31, scope: !2255)
!2448 = !DILocation(line: 497, column: 31, scope: !2255)
!2449 = !DILocation(line: 500, column: 15, scope: !2255)
!2450 = !DILocation(line: 502, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !376, line: 501, column: 13)
!2452 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 500, column: 15)
!2453 = !DILocation(line: 509, column: 33, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 509, column: 15)
!2455 = !DILocation(line: 0, scope: !2255)
!2456 = !DILocation(line: 512, column: 9, scope: !2255)
!2457 = !DILocation(line: 514, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 513, column: 15)
!2459 = !DILocation(line: 517, column: 9, scope: !2255)
!2460 = !DILocation(line: 518, column: 15, scope: !2255)
!2461 = !DILocation(line: 526, column: 15, scope: !2255)
!2462 = !DILocation(line: 526, column: 40, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 526, column: 15)
!2464 = !DILocation(line: 526, column: 47, scope: !2463)
!2465 = !DILocation(line: 526, column: 18, scope: !2463)
!2466 = !DILocation(line: 530, column: 17, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 530, column: 15)
!2468 = !DILocation(line: 530, column: 15, scope: !2255)
!2469 = !DILocation(line: 535, column: 11, scope: !2255)
!2470 = !DILocation(line: 549, column: 15, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 548, column: 15)
!2472 = !DILocation(line: 556, column: 15, scope: !2255)
!2473 = !DILocation(line: 558, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !376, line: 557, column: 13)
!2475 = distinct !DILexicalBlock(scope: !2255, file: !376, line: 556, column: 15)
!2476 = !DILocation(line: 561, column: 19, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !376, line: 561, column: 19)
!2478 = !DILocation(line: 561, column: 30, scope: !2477)
!2479 = !DILocation(line: 570, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !376, line: 570, column: 15)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !376, line: 570, column: 15)
!2482 = !DILocation(line: 570, column: 15, scope: !2481)
!2483 = !DILocation(line: 571, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !376, line: 571, column: 15)
!2485 = distinct !DILexicalBlock(scope: !2474, file: !376, line: 571, column: 15)
!2486 = !DILocation(line: 571, column: 15, scope: !2485)
!2487 = !DILocation(line: 572, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !376, line: 572, column: 15)
!2489 = distinct !DILexicalBlock(scope: !2474, file: !376, line: 572, column: 15)
!2490 = !DILocation(line: 572, column: 15, scope: !2489)
!2491 = !DILocation(line: 574, column: 13, scope: !2474)
!2492 = !DILocation(line: 614, column: 17, scope: !2254)
!2493 = !DILocation(line: 0, scope: !2254)
!2494 = !DILocation(line: 617, column: 29, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2259, file: !376, line: 615, column: 15)
!2496 = !{!1188, !1188, i64 0}
!2497 = !DILocation(line: 617, column: 27, scope: !2495)
!2498 = !DILocation(line: 678, column: 40, scope: !2254)
!2499 = !DILocation(line: 680, column: 23, scope: !2285)
!2500 = !DILocation(line: 621, column: 17, scope: !2258)
!2501 = !DILocation(line: 621, column: 27, scope: !2258)
!2502 = !DILocalVariable(name: "__dest", arg: 1, scope: !2503, file: !1289, line: 57, type: !28)
!2503 = distinct !DISubprogram(name: "memset", scope: !1289, file: !1289, line: 57, type: !2504, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!28, !28, !73, !215}
!2506 = !{!2502, !2507, !2508}
!2507 = !DILocalVariable(name: "__ch", arg: 2, scope: !2503, file: !1289, line: 57, type: !73)
!2508 = !DILocalVariable(name: "__len", arg: 3, scope: !2503, file: !1289, line: 57, type: !215)
!2509 = !DILocation(line: 0, scope: !2503, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 622, column: 17, scope: !2258)
!2511 = !DILocation(line: 59, column: 10, scope: !2503, inlinedAt: !2510)
!2512 = !DILocation(line: 626, column: 29, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2258, file: !376, line: 626, column: 21)
!2514 = !DILocation(line: 626, column: 21, scope: !2258)
!2515 = !DILocation(line: 627, column: 29, scope: !2513)
!2516 = !DILocation(line: 627, column: 19, scope: !2513)
!2517 = !DILocation(line: 629, column: 17, scope: !2258)
!2518 = !DILocation(line: 624, column: 19, scope: !2258)
!2519 = !DILocation(line: 625, column: 27, scope: !2258)
!2520 = !DILocation(line: 631, column: 21, scope: !2273)
!2521 = !DILocation(line: 632, column: 56, scope: !2273)
!2522 = !DILocation(line: 632, column: 50, scope: !2273)
!2523 = !DILocation(line: 633, column: 53, scope: !2273)
!2524 = !DILocation(line: 0, scope: !2273)
!2525 = !DILocation(line: 632, column: 36, scope: !2273)
!2526 = !DILocation(line: 634, column: 25, scope: !2273)
!2527 = !DILocation(line: 644, column: 38, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2280, file: !376, line: 642, column: 23)
!2529 = !DILocation(line: 644, column: 48, scope: !2528)
!2530 = !DILocation(line: 644, column: 25, scope: !2528)
!2531 = !DILocation(line: 644, column: 51, scope: !2528)
!2532 = !DILocation(line: 645, column: 28, scope: !2528)
!2533 = !DILocation(line: 644, column: 34, scope: !2528)
!2534 = distinct !{!2534, !2530, !2532, !955}
!2535 = !DILocation(line: 655, column: 29, scope: !2278)
!2536 = !DILocation(line: 0, scope: !2277)
!2537 = !DILocation(line: 659, column: 49, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !376, line: 658, column: 29)
!2539 = distinct !DILexicalBlock(scope: !2277, file: !376, line: 658, column: 29)
!2540 = !DILocation(line: 659, column: 39, scope: !2538)
!2541 = !DILocation(line: 659, column: 31, scope: !2538)
!2542 = !DILocation(line: 658, column: 53, scope: !2538)
!2543 = !DILocation(line: 658, column: 43, scope: !2538)
!2544 = !DILocation(line: 658, column: 29, scope: !2539)
!2545 = distinct !{!2545, !2544, !2546, !955}
!2546 = !DILocation(line: 667, column: 33, scope: !2539)
!2547 = !DILocation(line: 674, column: 19, scope: !2258)
!2548 = !DILocation(line: 670, column: 41, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 670, column: 29)
!2550 = !DILocation(line: 670, column: 31, scope: !2549)
!2551 = !DILocation(line: 670, column: 29, scope: !2279)
!2552 = !DILocation(line: 672, column: 27, scope: !2279)
!2553 = !DILocation(line: 675, column: 26, scope: !2258)
!2554 = !DILocation(line: 675, column: 24, scope: !2258)
!2555 = !DILocation(line: 674, column: 19, scope: !2273)
!2556 = distinct !{!2556, !2517, !2557, !955}
!2557 = !DILocation(line: 675, column: 44, scope: !2258)
!2558 = !DILocation(line: 676, column: 15, scope: !2259)
!2559 = !DILocation(line: 680, column: 19, scope: !2285)
!2560 = !DILocation(line: 680, column: 45, scope: !2285)
!2561 = !DILocation(line: 684, column: 33, scope: !2284)
!2562 = !DILocation(line: 0, scope: !2284)
!2563 = !DILocation(line: 686, column: 17, scope: !2284)
!2564 = !DILocation(line: 405, column: 12, scope: !2246)
!2565 = !DILocation(line: 688, column: 43, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !376, line: 688, column: 25)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !376, line: 687, column: 19)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !376, line: 686, column: 17)
!2569 = distinct !DILexicalBlock(scope: !2284, file: !376, line: 686, column: 17)
!2570 = !DILocation(line: 690, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !376, line: 690, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2566, file: !376, line: 689, column: 23)
!2573 = !DILocation(line: 690, column: 25, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !376, line: 690, column: 25)
!2575 = !DILocation(line: 690, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !376, line: 690, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !376, line: 690, column: 25)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !376, line: 690, column: 25)
!2579 = !DILocation(line: 690, column: 25, scope: !2577)
!2580 = !DILocation(line: 690, column: 25, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !376, line: 690, column: 25)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !376, line: 690, column: 25)
!2583 = !DILocation(line: 690, column: 25, scope: !2582)
!2584 = !DILocation(line: 690, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !376, line: 690, column: 25)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !376, line: 690, column: 25)
!2587 = !DILocation(line: 690, column: 25, scope: !2586)
!2588 = !DILocation(line: 690, column: 25, scope: !2578)
!2589 = !DILocation(line: 690, column: 25, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !376, line: 690, column: 25)
!2591 = distinct !DILexicalBlock(scope: !2571, file: !376, line: 690, column: 25)
!2592 = !DILocation(line: 690, column: 25, scope: !2591)
!2593 = !DILocation(line: 691, column: 25, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !376, line: 691, column: 25)
!2595 = distinct !DILexicalBlock(scope: !2572, file: !376, line: 691, column: 25)
!2596 = !DILocation(line: 691, column: 25, scope: !2595)
!2597 = !DILocation(line: 692, column: 25, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !376, line: 692, column: 25)
!2599 = distinct !DILexicalBlock(scope: !2572, file: !376, line: 692, column: 25)
!2600 = !DILocation(line: 692, column: 25, scope: !2599)
!2601 = !DILocation(line: 693, column: 38, scope: !2572)
!2602 = !DILocation(line: 693, column: 33, scope: !2572)
!2603 = !DILocation(line: 694, column: 23, scope: !2572)
!2604 = !DILocation(line: 695, column: 30, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2566, file: !376, line: 695, column: 30)
!2606 = !DILocation(line: 695, column: 30, scope: !2566)
!2607 = !DILocation(line: 697, column: 25, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !376, line: 697, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !376, line: 697, column: 25)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !376, line: 696, column: 23)
!2611 = !DILocation(line: 697, column: 25, scope: !2609)
!2612 = !DILocation(line: 699, column: 23, scope: !2610)
!2613 = !DILocation(line: 700, column: 35, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2567, file: !376, line: 700, column: 25)
!2615 = !DILocation(line: 700, column: 30, scope: !2614)
!2616 = !DILocation(line: 700, column: 25, scope: !2567)
!2617 = !DILocation(line: 702, column: 21, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !376, line: 702, column: 21)
!2619 = distinct !DILexicalBlock(scope: !2567, file: !376, line: 702, column: 21)
!2620 = !DILocation(line: 702, column: 21, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !376, line: 702, column: 21)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !376, line: 702, column: 21)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !376, line: 702, column: 21)
!2624 = !DILocation(line: 702, column: 21, scope: !2622)
!2625 = !DILocation(line: 702, column: 21, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !376, line: 702, column: 21)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !376, line: 702, column: 21)
!2628 = !DILocation(line: 702, column: 21, scope: !2627)
!2629 = !DILocation(line: 702, column: 21, scope: !2623)
!2630 = !DILocation(line: 0, scope: !2567)
!2631 = !DILocation(line: 703, column: 21, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !376, line: 703, column: 21)
!2633 = distinct !DILexicalBlock(scope: !2567, file: !376, line: 703, column: 21)
!2634 = !DILocation(line: 703, column: 21, scope: !2633)
!2635 = !DILocation(line: 704, column: 25, scope: !2567)
!2636 = !DILocation(line: 686, column: 17, scope: !2568)
!2637 = distinct !{!2637, !2638, !2639}
!2638 = !DILocation(line: 686, column: 17, scope: !2569)
!2639 = !DILocation(line: 705, column: 19, scope: !2569)
!2640 = !DILocation(line: 416, column: 30, scope: !2361)
!2641 = !DILocation(line: 712, column: 34, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 712, column: 11)
!2643 = !DILocation(line: 715, column: 35, scope: !2642)
!2644 = !DILocation(line: 715, column: 17, scope: !2642)
!2645 = !DILocation(line: 715, column: 47, scope: !2642)
!2646 = !DILocation(line: 715, column: 65, scope: !2642)
!2647 = !DILocation(line: 716, column: 11, scope: !2642)
!2648 = !DILocation(line: 712, column: 11, scope: !2246)
!2649 = !DILocation(line: 400, column: 10, scope: !2248)
!2650 = !DILocation(line: 719, column: 5, scope: !2246)
!2651 = !DILocation(line: 720, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 720, column: 7)
!2653 = !DILocation(line: 720, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2652, file: !376, line: 720, column: 7)
!2655 = !DILocation(line: 720, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !376, line: 720, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !376, line: 720, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !376, line: 720, column: 7)
!2659 = !DILocation(line: 720, column: 7, scope: !2657)
!2660 = !DILocation(line: 720, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !376, line: 720, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !376, line: 720, column: 7)
!2663 = !DILocation(line: 720, column: 7, scope: !2662)
!2664 = !DILocation(line: 720, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !376, line: 720, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !376, line: 720, column: 7)
!2667 = !DILocation(line: 720, column: 7, scope: !2666)
!2668 = !DILocation(line: 720, column: 7, scope: !2658)
!2669 = !DILocation(line: 720, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !376, line: 720, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2652, file: !376, line: 720, column: 7)
!2672 = !DILocation(line: 720, column: 7, scope: !2671)
!2673 = !DILocation(line: 722, column: 5, scope: !2246)
!2674 = !DILocation(line: 723, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !376, line: 723, column: 7)
!2676 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 723, column: 7)
!2677 = !DILocation(line: 424, column: 9, scope: !2246)
!2678 = !DILocation(line: 723, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !376, line: 723, column: 7)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !376, line: 723, column: 7)
!2681 = distinct !DILexicalBlock(scope: !2675, file: !376, line: 723, column: 7)
!2682 = !DILocation(line: 723, column: 7, scope: !2680)
!2683 = !DILocation(line: 723, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !376, line: 723, column: 7)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !376, line: 723, column: 7)
!2686 = !DILocation(line: 723, column: 7, scope: !2685)
!2687 = !DILocation(line: 723, column: 7, scope: !2681)
!2688 = !DILocation(line: 724, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !376, line: 724, column: 7)
!2690 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 724, column: 7)
!2691 = !DILocation(line: 724, column: 7, scope: !2690)
!2692 = !DILocation(line: 726, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 726, column: 11)
!2694 = !DILocation(line: 726, column: 11, scope: !2246)
!2695 = !DILocation(line: 728, column: 5, scope: !2247)
!2696 = !DILocation(line: 400, column: 75, scope: !2247)
!2697 = !DILocation(line: 400, column: 3, scope: !2247)
!2698 = distinct !{!2698, !2357, !2699, !955}
!2699 = !DILocation(line: 728, column: 5, scope: !2248)
!2700 = !DILocation(line: 730, column: 11, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 730, column: 7)
!2702 = !DILocation(line: 730, column: 16, scope: !2701)
!2703 = !DILocation(line: 738, column: 51, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 738, column: 7)
!2705 = !DILocation(line: 741, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !376, line: 741, column: 11)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !376, line: 740, column: 5)
!2708 = !DILocation(line: 741, column: 11, scope: !2707)
!2709 = !DILocation(line: 742, column: 16, scope: !2706)
!2710 = !DILocation(line: 742, column: 9, scope: !2706)
!2711 = !DILocation(line: 746, column: 18, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2706, file: !376, line: 746, column: 16)
!2713 = !DILocation(line: 746, column: 29, scope: !2712)
!2714 = !DILocation(line: 755, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 755, column: 7)
!2716 = !DILocation(line: 755, column: 20, scope: !2715)
!2717 = !DILocation(line: 756, column: 12, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !376, line: 756, column: 5)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !376, line: 756, column: 5)
!2720 = !DILocation(line: 756, column: 5, scope: !2719)
!2721 = !DILocation(line: 757, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !376, line: 757, column: 7)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !376, line: 757, column: 7)
!2724 = !DILocation(line: 757, column: 7, scope: !2723)
!2725 = !DILocation(line: 756, column: 39, scope: !2718)
!2726 = distinct !{!2726, !2720, !2727, !955}
!2727 = !DILocation(line: 757, column: 7, scope: !2719)
!2728 = !DILocation(line: 759, column: 11, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 759, column: 7)
!2730 = !DILocation(line: 759, column: 7, scope: !2219)
!2731 = !DILocation(line: 760, column: 5, scope: !2729)
!2732 = !DILocation(line: 760, column: 17, scope: !2729)
!2733 = !DILocation(line: 763, column: 2, scope: !2219)
!2734 = !DILocation(line: 766, column: 51, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2219, file: !376, line: 766, column: 7)
!2736 = !DILocation(line: 766, column: 21, scope: !2735)
!2737 = !DILocation(line: 770, column: 42, scope: !2219)
!2738 = !DILocation(line: 768, column: 10, scope: !2219)
!2739 = !DILocation(line: 768, column: 3, scope: !2219)
!2740 = !DILocation(line: 772, column: 1, scope: !2219)
!2741 = distinct !DISubprogram(name: "gettext_quote", scope: !376, file: !376, line: 207, type: !2742, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!69, !69, !11}
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DILocalVariable(name: "msgid", arg: 1, scope: !2741, file: !376, line: 207, type: !69)
!2746 = !DILocalVariable(name: "s", arg: 2, scope: !2741, file: !376, line: 207, type: !11)
!2747 = !DILocalVariable(name: "translation", scope: !2741, file: !376, line: 209, type: !69)
!2748 = !DILocalVariable(name: "locale_code", scope: !2741, file: !376, line: 210, type: !69)
!2749 = !DILocation(line: 0, scope: !2741)
!2750 = !DILocation(line: 209, column: 29, scope: !2741)
!2751 = !DILocation(line: 212, column: 19, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2741, file: !376, line: 212, column: 7)
!2753 = !DILocation(line: 212, column: 7, scope: !2741)
!2754 = !DILocation(line: 233, column: 17, scope: !2741)
!2755 = !DILocalVariable(name: "s1", arg: 1, scope: !2756, file: !2757, line: 160, type: !69)
!2756 = distinct !DISubprogram(name: "strcaseeq0", scope: !2757, file: !2757, line: 160, type: !2758, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2760)
!2757 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2760 = !{!2755, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770}
!2761 = !DILocalVariable(name: "s2", arg: 2, scope: !2756, file: !2757, line: 160, type: !69)
!2762 = !DILocalVariable(name: "s20", arg: 3, scope: !2756, file: !2757, line: 160, type: !27)
!2763 = !DILocalVariable(name: "s21", arg: 4, scope: !2756, file: !2757, line: 160, type: !27)
!2764 = !DILocalVariable(name: "s22", arg: 5, scope: !2756, file: !2757, line: 160, type: !27)
!2765 = !DILocalVariable(name: "s23", arg: 6, scope: !2756, file: !2757, line: 160, type: !27)
!2766 = !DILocalVariable(name: "s24", arg: 7, scope: !2756, file: !2757, line: 160, type: !27)
!2767 = !DILocalVariable(name: "s25", arg: 8, scope: !2756, file: !2757, line: 160, type: !27)
!2768 = !DILocalVariable(name: "s26", arg: 9, scope: !2756, file: !2757, line: 160, type: !27)
!2769 = !DILocalVariable(name: "s27", arg: 10, scope: !2756, file: !2757, line: 160, type: !27)
!2770 = !DILocalVariable(name: "s28", arg: 11, scope: !2756, file: !2757, line: 160, type: !27)
!2771 = !DILocation(line: 0, scope: !2756, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 234, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2741, file: !376, line: 234, column: 7)
!2774 = !DILocation(line: 162, column: 7, scope: !2775, inlinedAt: !2772)
!2775 = distinct !DILexicalBlock(scope: !2756, file: !2757, line: 162, column: 7)
!2776 = !DILocalVariable(name: "s1", arg: 1, scope: !2777, file: !2757, line: 146, type: !69)
!2777 = distinct !DISubprogram(name: "strcaseeq1", scope: !2757, file: !2757, line: 146, type: !2778, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27, !27}
!2780 = !{!2776, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2781 = !DILocalVariable(name: "s2", arg: 2, scope: !2777, file: !2757, line: 146, type: !69)
!2782 = !DILocalVariable(name: "s21", arg: 3, scope: !2777, file: !2757, line: 146, type: !27)
!2783 = !DILocalVariable(name: "s22", arg: 4, scope: !2777, file: !2757, line: 146, type: !27)
!2784 = !DILocalVariable(name: "s23", arg: 5, scope: !2777, file: !2757, line: 146, type: !27)
!2785 = !DILocalVariable(name: "s24", arg: 6, scope: !2777, file: !2757, line: 146, type: !27)
!2786 = !DILocalVariable(name: "s25", arg: 7, scope: !2777, file: !2757, line: 146, type: !27)
!2787 = !DILocalVariable(name: "s26", arg: 8, scope: !2777, file: !2757, line: 146, type: !27)
!2788 = !DILocalVariable(name: "s27", arg: 9, scope: !2777, file: !2757, line: 146, type: !27)
!2789 = !DILocalVariable(name: "s28", arg: 10, scope: !2777, file: !2757, line: 146, type: !27)
!2790 = !DILocation(line: 0, scope: !2777, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 167, column: 16, scope: !2792, inlinedAt: !2772)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !2757, line: 164, column: 11)
!2793 = distinct !DILexicalBlock(scope: !2775, file: !2757, line: 163, column: 5)
!2794 = !DILocation(line: 148, column: 7, scope: !2795, inlinedAt: !2791)
!2795 = distinct !DILexicalBlock(scope: !2777, file: !2757, line: 148, column: 7)
!2796 = !DILocalVariable(name: "s1", arg: 1, scope: !2797, file: !2757, line: 132, type: !69)
!2797 = distinct !DISubprogram(name: "strcaseeq2", scope: !2757, file: !2757, line: 132, type: !2798, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27, !27}
!2800 = !{!2796, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2801 = !DILocalVariable(name: "s2", arg: 2, scope: !2797, file: !2757, line: 132, type: !69)
!2802 = !DILocalVariable(name: "s22", arg: 3, scope: !2797, file: !2757, line: 132, type: !27)
!2803 = !DILocalVariable(name: "s23", arg: 4, scope: !2797, file: !2757, line: 132, type: !27)
!2804 = !DILocalVariable(name: "s24", arg: 5, scope: !2797, file: !2757, line: 132, type: !27)
!2805 = !DILocalVariable(name: "s25", arg: 6, scope: !2797, file: !2757, line: 132, type: !27)
!2806 = !DILocalVariable(name: "s26", arg: 7, scope: !2797, file: !2757, line: 132, type: !27)
!2807 = !DILocalVariable(name: "s27", arg: 8, scope: !2797, file: !2757, line: 132, type: !27)
!2808 = !DILocalVariable(name: "s28", arg: 9, scope: !2797, file: !2757, line: 132, type: !27)
!2809 = !DILocation(line: 0, scope: !2797, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 153, column: 16, scope: !2811, inlinedAt: !2791)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !2757, line: 150, column: 11)
!2812 = distinct !DILexicalBlock(scope: !2795, file: !2757, line: 149, column: 5)
!2813 = !DILocation(line: 134, column: 7, scope: !2814, inlinedAt: !2810)
!2814 = distinct !DILexicalBlock(scope: !2797, file: !2757, line: 134, column: 7)
!2815 = !DILocalVariable(name: "s1", arg: 1, scope: !2816, file: !2757, line: 118, type: !69)
!2816 = distinct !DISubprogram(name: "strcaseeq3", scope: !2757, file: !2757, line: 118, type: !2817, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!73, !69, !69, !27, !27, !27, !27, !27, !27}
!2819 = !{!2815, !2820, !2821, !2822, !2823, !2824, !2825, !2826}
!2820 = !DILocalVariable(name: "s2", arg: 2, scope: !2816, file: !2757, line: 118, type: !69)
!2821 = !DILocalVariable(name: "s23", arg: 3, scope: !2816, file: !2757, line: 118, type: !27)
!2822 = !DILocalVariable(name: "s24", arg: 4, scope: !2816, file: !2757, line: 118, type: !27)
!2823 = !DILocalVariable(name: "s25", arg: 5, scope: !2816, file: !2757, line: 118, type: !27)
!2824 = !DILocalVariable(name: "s26", arg: 6, scope: !2816, file: !2757, line: 118, type: !27)
!2825 = !DILocalVariable(name: "s27", arg: 7, scope: !2816, file: !2757, line: 118, type: !27)
!2826 = !DILocalVariable(name: "s28", arg: 8, scope: !2816, file: !2757, line: 118, type: !27)
!2827 = !DILocation(line: 0, scope: !2816, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 139, column: 16, scope: !2829, inlinedAt: !2810)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !2757, line: 136, column: 11)
!2830 = distinct !DILexicalBlock(scope: !2814, file: !2757, line: 135, column: 5)
!2831 = !DILocation(line: 120, column: 7, scope: !2832, inlinedAt: !2828)
!2832 = distinct !DILexicalBlock(scope: !2816, file: !2757, line: 120, column: 7)
!2833 = !DILocation(line: 120, column: 7, scope: !2816, inlinedAt: !2828)
!2834 = !DILocalVariable(name: "s1", arg: 1, scope: !2835, file: !2757, line: 104, type: !69)
!2835 = distinct !DISubprogram(name: "strcaseeq4", scope: !2757, file: !2757, line: 104, type: !2836, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!73, !69, !69, !27, !27, !27, !27, !27}
!2838 = !{!2834, !2839, !2840, !2841, !2842, !2843, !2844}
!2839 = !DILocalVariable(name: "s2", arg: 2, scope: !2835, file: !2757, line: 104, type: !69)
!2840 = !DILocalVariable(name: "s24", arg: 3, scope: !2835, file: !2757, line: 104, type: !27)
!2841 = !DILocalVariable(name: "s25", arg: 4, scope: !2835, file: !2757, line: 104, type: !27)
!2842 = !DILocalVariable(name: "s26", arg: 5, scope: !2835, file: !2757, line: 104, type: !27)
!2843 = !DILocalVariable(name: "s27", arg: 6, scope: !2835, file: !2757, line: 104, type: !27)
!2844 = !DILocalVariable(name: "s28", arg: 7, scope: !2835, file: !2757, line: 104, type: !27)
!2845 = !DILocation(line: 0, scope: !2835, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 125, column: 16, scope: !2847, inlinedAt: !2828)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !2757, line: 122, column: 11)
!2848 = distinct !DILexicalBlock(scope: !2832, file: !2757, line: 121, column: 5)
!2849 = !DILocation(line: 106, column: 7, scope: !2850, inlinedAt: !2846)
!2850 = distinct !DILexicalBlock(scope: !2835, file: !2757, line: 106, column: 7)
!2851 = !DILocation(line: 106, column: 7, scope: !2835, inlinedAt: !2846)
!2852 = !DILocalVariable(name: "s1", arg: 1, scope: !2853, file: !2757, line: 90, type: !69)
!2853 = distinct !DISubprogram(name: "strcaseeq5", scope: !2757, file: !2757, line: 90, type: !2854, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!73, !69, !69, !27, !27, !27, !27}
!2856 = !{!2852, !2857, !2858, !2859, !2860, !2861}
!2857 = !DILocalVariable(name: "s2", arg: 2, scope: !2853, file: !2757, line: 90, type: !69)
!2858 = !DILocalVariable(name: "s25", arg: 3, scope: !2853, file: !2757, line: 90, type: !27)
!2859 = !DILocalVariable(name: "s26", arg: 4, scope: !2853, file: !2757, line: 90, type: !27)
!2860 = !DILocalVariable(name: "s27", arg: 5, scope: !2853, file: !2757, line: 90, type: !27)
!2861 = !DILocalVariable(name: "s28", arg: 6, scope: !2853, file: !2757, line: 90, type: !27)
!2862 = !DILocation(line: 0, scope: !2853, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 111, column: 16, scope: !2864, inlinedAt: !2846)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !2757, line: 108, column: 11)
!2865 = distinct !DILexicalBlock(scope: !2850, file: !2757, line: 107, column: 5)
!2866 = !DILocation(line: 92, column: 7, scope: !2867, inlinedAt: !2863)
!2867 = distinct !DILexicalBlock(scope: !2853, file: !2757, line: 92, column: 7)
!2868 = !DILocation(line: 92, column: 7, scope: !2853, inlinedAt: !2863)
!2869 = !DILocation(line: 235, column: 12, scope: !2773)
!2870 = !DILocation(line: 235, column: 21, scope: !2773)
!2871 = !DILocation(line: 235, column: 5, scope: !2773)
!2872 = !DILocation(line: 0, scope: !2777, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 167, column: 16, scope: !2792, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 236, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2741, file: !376, line: 236, column: 7)
!2876 = !DILocation(line: 148, column: 7, scope: !2795, inlinedAt: !2873)
!2877 = !DILocation(line: 0, scope: !2797, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 153, column: 16, scope: !2811, inlinedAt: !2873)
!2879 = !DILocation(line: 134, column: 7, scope: !2814, inlinedAt: !2878)
!2880 = !DILocation(line: 134, column: 7, scope: !2797, inlinedAt: !2878)
!2881 = !DILocation(line: 0, scope: !2816, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 139, column: 16, scope: !2829, inlinedAt: !2878)
!2883 = !DILocation(line: 120, column: 7, scope: !2832, inlinedAt: !2882)
!2884 = !DILocation(line: 120, column: 7, scope: !2816, inlinedAt: !2882)
!2885 = !DILocation(line: 0, scope: !2835, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 125, column: 16, scope: !2847, inlinedAt: !2882)
!2887 = !DILocation(line: 106, column: 7, scope: !2850, inlinedAt: !2886)
!2888 = !DILocation(line: 106, column: 7, scope: !2835, inlinedAt: !2886)
!2889 = !DILocation(line: 0, scope: !2853, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 111, column: 16, scope: !2864, inlinedAt: !2886)
!2891 = !DILocation(line: 92, column: 7, scope: !2867, inlinedAt: !2890)
!2892 = !DILocation(line: 92, column: 7, scope: !2853, inlinedAt: !2890)
!2893 = !DILocalVariable(name: "s1", arg: 1, scope: !2894, file: !2757, line: 76, type: !69)
!2894 = distinct !DISubprogram(name: "strcaseeq6", scope: !2757, file: !2757, line: 76, type: !2895, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!73, !69, !69, !27, !27, !27}
!2897 = !{!2893, !2898, !2899, !2900, !2901}
!2898 = !DILocalVariable(name: "s2", arg: 2, scope: !2894, file: !2757, line: 76, type: !69)
!2899 = !DILocalVariable(name: "s26", arg: 3, scope: !2894, file: !2757, line: 76, type: !27)
!2900 = !DILocalVariable(name: "s27", arg: 4, scope: !2894, file: !2757, line: 76, type: !27)
!2901 = !DILocalVariable(name: "s28", arg: 5, scope: !2894, file: !2757, line: 76, type: !27)
!2902 = !DILocation(line: 0, scope: !2894, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 97, column: 16, scope: !2904, inlinedAt: !2890)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !2757, line: 94, column: 11)
!2905 = distinct !DILexicalBlock(scope: !2867, file: !2757, line: 93, column: 5)
!2906 = !DILocation(line: 78, column: 7, scope: !2907, inlinedAt: !2903)
!2907 = distinct !DILexicalBlock(scope: !2894, file: !2757, line: 78, column: 7)
!2908 = !DILocation(line: 78, column: 7, scope: !2894, inlinedAt: !2903)
!2909 = !DILocalVariable(name: "s1", arg: 1, scope: !2910, file: !2757, line: 62, type: !69)
!2910 = distinct !DISubprogram(name: "strcaseeq7", scope: !2757, file: !2757, line: 62, type: !2911, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!73, !69, !69, !27, !27}
!2913 = !{!2909, !2914, !2915, !2916}
!2914 = !DILocalVariable(name: "s2", arg: 2, scope: !2910, file: !2757, line: 62, type: !69)
!2915 = !DILocalVariable(name: "s27", arg: 3, scope: !2910, file: !2757, line: 62, type: !27)
!2916 = !DILocalVariable(name: "s28", arg: 4, scope: !2910, file: !2757, line: 62, type: !27)
!2917 = !DILocation(line: 0, scope: !2910, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 83, column: 16, scope: !2919, inlinedAt: !2903)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !2757, line: 80, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2907, file: !2757, line: 79, column: 5)
!2921 = !DILocation(line: 64, column: 7, scope: !2922, inlinedAt: !2918)
!2922 = distinct !DILexicalBlock(scope: !2910, file: !2757, line: 64, column: 7)
!2923 = !DILocation(line: 236, column: 7, scope: !2741)
!2924 = !DILocation(line: 237, column: 12, scope: !2875)
!2925 = !DILocation(line: 237, column: 21, scope: !2875)
!2926 = !DILocation(line: 237, column: 5, scope: !2875)
!2927 = !DILocation(line: 239, column: 13, scope: !2741)
!2928 = !DILocation(line: 239, column: 11, scope: !2741)
!2929 = !DILocation(line: 239, column: 3, scope: !2741)
!2930 = !DILocation(line: 240, column: 1, scope: !2741)
!2931 = !DISubprogram(name: "iswprint", scope: !2932, file: !2932, line: 120, type: !2933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!2932 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!73, !7}
!2935 = !DISubprogram(name: "mbsinit", scope: !2936, file: !2936, line: 292, type: !2937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!2936 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!73, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!2941 = distinct !DISubprogram(name: "quotearg_alloc", scope: !376, file: !376, line: 799, type: !2942, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!26, !69, !215, !2111}
!2944 = !{!2945, !2946, !2947}
!2945 = !DILocalVariable(name: "arg", arg: 1, scope: !2941, file: !376, line: 799, type: !69)
!2946 = !DILocalVariable(name: "argsize", arg: 2, scope: !2941, file: !376, line: 799, type: !215)
!2947 = !DILocalVariable(name: "o", arg: 3, scope: !2941, file: !376, line: 800, type: !2111)
!2948 = !DILocation(line: 0, scope: !2941)
!2949 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !376, line: 812, type: !69)
!2950 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !376, file: !376, line: 812, type: !2951, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!26, !69, !215, !468, !2111}
!2953 = !{!2949, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2954 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !376, line: 812, type: !215)
!2955 = !DILocalVariable(name: "size", arg: 3, scope: !2950, file: !376, line: 812, type: !468)
!2956 = !DILocalVariable(name: "o", arg: 4, scope: !2950, file: !376, line: 813, type: !2111)
!2957 = !DILocalVariable(name: "p", scope: !2950, file: !376, line: 815, type: !2111)
!2958 = !DILocalVariable(name: "e", scope: !2950, file: !376, line: 816, type: !73)
!2959 = !DILocalVariable(name: "flags", scope: !2950, file: !376, line: 818, type: !73)
!2960 = !DILocalVariable(name: "bufsize", scope: !2950, file: !376, line: 819, type: !215)
!2961 = !DILocalVariable(name: "buf", scope: !2950, file: !376, line: 823, type: !26)
!2962 = !DILocation(line: 0, scope: !2950, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 802, column: 10, scope: !2941)
!2964 = !DILocation(line: 815, column: 37, scope: !2950, inlinedAt: !2963)
!2965 = !DILocation(line: 816, column: 11, scope: !2950, inlinedAt: !2963)
!2966 = !DILocation(line: 818, column: 18, scope: !2950, inlinedAt: !2963)
!2967 = !DILocation(line: 818, column: 24, scope: !2950, inlinedAt: !2963)
!2968 = !DILocation(line: 819, column: 69, scope: !2950, inlinedAt: !2963)
!2969 = !DILocation(line: 820, column: 53, scope: !2950, inlinedAt: !2963)
!2970 = !DILocation(line: 821, column: 49, scope: !2950, inlinedAt: !2963)
!2971 = !DILocation(line: 822, column: 49, scope: !2950, inlinedAt: !2963)
!2972 = !DILocation(line: 819, column: 20, scope: !2950, inlinedAt: !2963)
!2973 = !DILocation(line: 822, column: 62, scope: !2950, inlinedAt: !2963)
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !464, line: 216, type: !215)
!2975 = distinct !DISubprogram(name: "xcharalloc", scope: !464, file: !464, line: 216, type: !2976, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!26, !215}
!2978 = !{!2974}
!2979 = !DILocation(line: 0, scope: !2975, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 823, column: 15, scope: !2950, inlinedAt: !2963)
!2981 = !DILocation(line: 218, column: 10, scope: !2975, inlinedAt: !2980)
!2982 = !DILocation(line: 824, column: 60, scope: !2950, inlinedAt: !2963)
!2983 = !DILocation(line: 826, column: 32, scope: !2950, inlinedAt: !2963)
!2984 = !DILocation(line: 826, column: 47, scope: !2950, inlinedAt: !2963)
!2985 = !DILocation(line: 824, column: 3, scope: !2950, inlinedAt: !2963)
!2986 = !DILocation(line: 827, column: 9, scope: !2950, inlinedAt: !2963)
!2987 = !DILocation(line: 802, column: 3, scope: !2941)
!2988 = !DILocation(line: 0, scope: !2950)
!2989 = !DILocation(line: 815, column: 37, scope: !2950)
!2990 = !DILocation(line: 816, column: 11, scope: !2950)
!2991 = !DILocation(line: 818, column: 18, scope: !2950)
!2992 = !DILocation(line: 818, column: 27, scope: !2950)
!2993 = !DILocation(line: 818, column: 24, scope: !2950)
!2994 = !DILocation(line: 819, column: 69, scope: !2950)
!2995 = !DILocation(line: 820, column: 53, scope: !2950)
!2996 = !DILocation(line: 821, column: 49, scope: !2950)
!2997 = !DILocation(line: 822, column: 49, scope: !2950)
!2998 = !DILocation(line: 819, column: 20, scope: !2950)
!2999 = !DILocation(line: 822, column: 62, scope: !2950)
!3000 = !DILocation(line: 0, scope: !2975, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 823, column: 15, scope: !2950)
!3002 = !DILocation(line: 218, column: 10, scope: !2975, inlinedAt: !3001)
!3003 = !DILocation(line: 824, column: 60, scope: !2950)
!3004 = !DILocation(line: 826, column: 32, scope: !2950)
!3005 = !DILocation(line: 826, column: 47, scope: !2950)
!3006 = !DILocation(line: 824, column: 3, scope: !2950)
!3007 = !DILocation(line: 827, column: 9, scope: !2950)
!3008 = !DILocation(line: 828, column: 7, scope: !2950)
!3009 = !DILocation(line: 829, column: 11, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2950, file: !376, line: 828, column: 7)
!3011 = !DILocation(line: 829, column: 5, scope: !3010)
!3012 = !DILocation(line: 830, column: 3, scope: !2950)
!3013 = distinct !DISubprogram(name: "quotearg_free", scope: !376, file: !376, line: 848, type: !1136, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3014)
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "sv", scope: !3013, file: !376, line: 850, type: !422)
!3016 = !DILocalVariable(name: "i", scope: !3013, file: !376, line: 851, type: !73)
!3017 = !DILocation(line: 850, column: 24, scope: !3013)
!3018 = !DILocation(line: 0, scope: !3013)
!3019 = !DILocation(line: 852, column: 19, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !376, line: 852, column: 3)
!3021 = distinct !DILexicalBlock(scope: !3013, file: !376, line: 852, column: 3)
!3022 = !DILocation(line: 852, column: 17, scope: !3020)
!3023 = !DILocation(line: 852, column: 3, scope: !3021)
!3024 = !DILocation(line: 853, column: 17, scope: !3020)
!3025 = !{!3026, !910, i64 8}
!3026 = !{!"slotvec", !1165, i64 0, !910, i64 8}
!3027 = !DILocation(line: 853, column: 5, scope: !3020)
!3028 = !DILocation(line: 852, column: 28, scope: !3020)
!3029 = distinct !{!3029, !3023, !3030, !955}
!3030 = !DILocation(line: 853, column: 20, scope: !3021)
!3031 = !DILocation(line: 854, column: 13, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3013, file: !376, line: 854, column: 7)
!3033 = !DILocation(line: 854, column: 17, scope: !3032)
!3034 = !DILocation(line: 854, column: 7, scope: !3013)
!3035 = !DILocation(line: 856, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !376, line: 855, column: 5)
!3037 = !DILocation(line: 857, column: 21, scope: !3036)
!3038 = !{!3026, !1165, i64 0}
!3039 = !DILocation(line: 858, column: 20, scope: !3036)
!3040 = !DILocation(line: 859, column: 5, scope: !3036)
!3041 = !DILocation(line: 860, column: 10, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3013, file: !376, line: 860, column: 7)
!3043 = !DILocation(line: 860, column: 7, scope: !3013)
!3044 = !DILocation(line: 862, column: 13, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !376, line: 861, column: 5)
!3046 = !DILocation(line: 862, column: 7, scope: !3045)
!3047 = !DILocation(line: 863, column: 15, scope: !3045)
!3048 = !DILocation(line: 864, column: 5, scope: !3045)
!3049 = !DILocation(line: 865, column: 10, scope: !3013)
!3050 = !DILocation(line: 866, column: 1, scope: !3013)
!3051 = distinct !DISubprogram(name: "quotearg_n", scope: !376, file: !376, line: 931, type: !1031, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3052)
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3051, file: !376, line: 931, type: !73)
!3054 = !DILocalVariable(name: "arg", arg: 2, scope: !3051, file: !376, line: 931, type: !69)
!3055 = !DILocation(line: 0, scope: !3051)
!3056 = !DILocation(line: 933, column: 10, scope: !3051)
!3057 = !DILocation(line: 933, column: 3, scope: !3051)
!3058 = distinct !DISubprogram(name: "quotearg_n_options", scope: !376, file: !376, line: 877, type: !3059, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!26, !73, !69, !215, !2111}
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067, !3068, !3071, !3072, !3074, !3075, !3076}
!3062 = !DILocalVariable(name: "n", arg: 1, scope: !3058, file: !376, line: 877, type: !73)
!3063 = !DILocalVariable(name: "arg", arg: 2, scope: !3058, file: !376, line: 877, type: !69)
!3064 = !DILocalVariable(name: "argsize", arg: 3, scope: !3058, file: !376, line: 877, type: !215)
!3065 = !DILocalVariable(name: "options", arg: 4, scope: !3058, file: !376, line: 878, type: !2111)
!3066 = !DILocalVariable(name: "e", scope: !3058, file: !376, line: 880, type: !73)
!3067 = !DILocalVariable(name: "sv", scope: !3058, file: !376, line: 882, type: !422)
!3068 = !DILocalVariable(name: "preallocated", scope: !3069, file: !376, line: 889, type: !38)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !376, line: 888, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3058, file: !376, line: 887, column: 7)
!3071 = !DILocalVariable(name: "nmax", scope: !3069, file: !376, line: 890, type: !73)
!3072 = !DILocalVariable(name: "size", scope: !3073, file: !376, line: 903, type: !215)
!3073 = distinct !DILexicalBlock(scope: !3058, file: !376, line: 902, column: 3)
!3074 = !DILocalVariable(name: "val", scope: !3073, file: !376, line: 904, type: !26)
!3075 = !DILocalVariable(name: "flags", scope: !3073, file: !376, line: 906, type: !73)
!3076 = !DILocalVariable(name: "qsize", scope: !3073, file: !376, line: 907, type: !215)
!3077 = !DILocation(line: 0, scope: !3058)
!3078 = !DILocation(line: 880, column: 11, scope: !3058)
!3079 = !DILocation(line: 882, column: 24, scope: !3058)
!3080 = !DILocation(line: 884, column: 9, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3058, file: !376, line: 884, column: 7)
!3082 = !DILocation(line: 884, column: 7, scope: !3058)
!3083 = !DILocation(line: 885, column: 5, scope: !3081)
!3084 = !DILocation(line: 887, column: 7, scope: !3070)
!3085 = !DILocation(line: 887, column: 14, scope: !3070)
!3086 = !DILocation(line: 887, column: 7, scope: !3058)
!3087 = !DILocation(line: 889, column: 31, scope: !3069)
!3088 = !DILocation(line: 0, scope: !3069)
!3089 = !DILocation(line: 892, column: 16, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3069, file: !376, line: 892, column: 11)
!3091 = !DILocation(line: 892, column: 11, scope: !3069)
!3092 = !DILocation(line: 893, column: 9, scope: !3090)
!3093 = !DILocation(line: 895, column: 32, scope: !3069)
!3094 = !DILocation(line: 895, column: 61, scope: !3069)
!3095 = !DILocation(line: 895, column: 66, scope: !3069)
!3096 = !DILocation(line: 895, column: 22, scope: !3069)
!3097 = !DILocation(line: 895, column: 15, scope: !3069)
!3098 = !DILocation(line: 896, column: 11, scope: !3069)
!3099 = !DILocation(line: 897, column: 15, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3069, file: !376, line: 896, column: 11)
!3101 = !{i64 0, i64 8, !1164, i64 8, i64 8, !909}
!3102 = !DILocation(line: 897, column: 9, scope: !3100)
!3103 = !DILocation(line: 898, column: 20, scope: !3069)
!3104 = !DILocation(line: 898, column: 18, scope: !3069)
!3105 = !DILocation(line: 898, column: 15, scope: !3069)
!3106 = !DILocation(line: 898, column: 38, scope: !3069)
!3107 = !DILocation(line: 898, column: 31, scope: !3069)
!3108 = !DILocation(line: 898, column: 48, scope: !3069)
!3109 = !DILocation(line: 0, scope: !2503, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 898, column: 7, scope: !3069)
!3111 = !DILocation(line: 59, column: 10, scope: !2503, inlinedAt: !3110)
!3112 = !DILocation(line: 899, column: 14, scope: !3069)
!3113 = !DILocation(line: 900, column: 5, scope: !3069)
!3114 = !DILocation(line: 903, column: 19, scope: !3073)
!3115 = !DILocation(line: 903, column: 25, scope: !3073)
!3116 = !DILocation(line: 0, scope: !3073)
!3117 = !DILocation(line: 904, column: 23, scope: !3073)
!3118 = !DILocation(line: 906, column: 26, scope: !3073)
!3119 = !DILocation(line: 906, column: 32, scope: !3073)
!3120 = !DILocation(line: 908, column: 55, scope: !3073)
!3121 = !DILocation(line: 909, column: 46, scope: !3073)
!3122 = !DILocation(line: 910, column: 55, scope: !3073)
!3123 = !DILocation(line: 911, column: 55, scope: !3073)
!3124 = !DILocation(line: 907, column: 20, scope: !3073)
!3125 = !DILocation(line: 913, column: 14, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3073, file: !376, line: 913, column: 9)
!3127 = !DILocation(line: 913, column: 9, scope: !3073)
!3128 = !DILocation(line: 915, column: 35, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !376, line: 914, column: 7)
!3130 = !DILocation(line: 915, column: 20, scope: !3129)
!3131 = !DILocation(line: 916, column: 17, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !376, line: 916, column: 13)
!3133 = !DILocation(line: 916, column: 13, scope: !3129)
!3134 = !DILocation(line: 917, column: 11, scope: !3132)
!3135 = !DILocation(line: 0, scope: !2975, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 918, column: 27, scope: !3129)
!3137 = !DILocation(line: 218, column: 10, scope: !2975, inlinedAt: !3136)
!3138 = !DILocation(line: 918, column: 19, scope: !3129)
!3139 = !DILocation(line: 919, column: 69, scope: !3129)
!3140 = !DILocation(line: 921, column: 44, scope: !3129)
!3141 = !DILocation(line: 922, column: 44, scope: !3129)
!3142 = !DILocation(line: 919, column: 9, scope: !3129)
!3143 = !DILocation(line: 923, column: 7, scope: !3129)
!3144 = !DILocation(line: 925, column: 11, scope: !3073)
!3145 = !DILocation(line: 926, column: 5, scope: !3073)
!3146 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !376, file: !376, line: 937, type: !3147, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!26, !73, !69, !215}
!3149 = !{!3150, !3151, !3152}
!3150 = !DILocalVariable(name: "n", arg: 1, scope: !3146, file: !376, line: 937, type: !73)
!3151 = !DILocalVariable(name: "arg", arg: 2, scope: !3146, file: !376, line: 937, type: !69)
!3152 = !DILocalVariable(name: "argsize", arg: 3, scope: !3146, file: !376, line: 937, type: !215)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocation(line: 939, column: 10, scope: !3146)
!3155 = !DILocation(line: 939, column: 3, scope: !3146)
!3156 = distinct !DISubprogram(name: "quotearg", scope: !376, file: !376, line: 943, type: !1129, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3157)
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3156, file: !376, line: 943, type: !69)
!3159 = !DILocation(line: 0, scope: !3156)
!3160 = !DILocation(line: 0, scope: !3051, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 945, column: 10, scope: !3156)
!3162 = !DILocation(line: 933, column: 10, scope: !3051, inlinedAt: !3161)
!3163 = !DILocation(line: 945, column: 3, scope: !3156)
!3164 = distinct !DISubprogram(name: "quotearg_mem", scope: !376, file: !376, line: 949, type: !3165, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!26, !69, !215}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "arg", arg: 1, scope: !3164, file: !376, line: 949, type: !69)
!3169 = !DILocalVariable(name: "argsize", arg: 2, scope: !3164, file: !376, line: 949, type: !215)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 0, scope: !3146, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 951, column: 10, scope: !3164)
!3173 = !DILocation(line: 939, column: 10, scope: !3146, inlinedAt: !3172)
!3174 = !DILocation(line: 951, column: 3, scope: !3164)
!3175 = distinct !DISubprogram(name: "quotearg_n_style", scope: !376, file: !376, line: 955, type: !3176, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!26, !73, !11, !69}
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !376, line: 955, type: !73)
!3180 = !DILocalVariable(name: "s", arg: 2, scope: !3175, file: !376, line: 955, type: !11)
!3181 = !DILocalVariable(name: "arg", arg: 3, scope: !3175, file: !376, line: 955, type: !69)
!3182 = !DILocalVariable(name: "o", scope: !3175, file: !376, line: 957, type: !2112)
!3183 = !DILocation(line: 0, scope: !3175)
!3184 = !DILocation(line: 957, column: 3, scope: !3175)
!3185 = !DILocation(line: 957, column: 32, scope: !3175)
!3186 = !{!3187}
!3187 = distinct !{!3187, !3188, !"quoting_options_from_style: argument 0"}
!3188 = distinct !{!3188, !"quoting_options_from_style"}
!3189 = !DILocation(line: 957, column: 36, scope: !3175)
!3190 = !DILocalVariable(name: "style", arg: 1, scope: !3191, file: !376, line: 193, type: !11)
!3191 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !376, file: !376, line: 193, type: !3192, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!408, !11}
!3194 = !{!3190, !3195}
!3195 = !DILocalVariable(name: "o", scope: !3191, file: !376, line: 195, type: !408)
!3196 = !DILocation(line: 0, scope: !3191, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 957, column: 36, scope: !3175)
!3198 = !DILocation(line: 195, column: 26, scope: !3191, inlinedAt: !3197)
!3199 = !DILocation(line: 196, column: 13, scope: !3200, inlinedAt: !3197)
!3200 = distinct !DILexicalBlock(scope: !3191, file: !376, line: 196, column: 7)
!3201 = !DILocation(line: 196, column: 7, scope: !3191, inlinedAt: !3197)
!3202 = !DILocation(line: 197, column: 5, scope: !3200, inlinedAt: !3197)
!3203 = !DILocation(line: 198, column: 5, scope: !3191, inlinedAt: !3197)
!3204 = !DILocation(line: 198, column: 11, scope: !3191, inlinedAt: !3197)
!3205 = !DILocation(line: 958, column: 10, scope: !3175)
!3206 = !DILocation(line: 959, column: 1, scope: !3175)
!3207 = !DILocation(line: 958, column: 3, scope: !3175)
!3208 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !376, file: !376, line: 962, type: !3209, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!26, !73, !11, !69, !215}
!3211 = !{!3212, !3213, !3214, !3215, !3216}
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !376, line: 962, type: !73)
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3208, file: !376, line: 962, type: !11)
!3214 = !DILocalVariable(name: "arg", arg: 3, scope: !3208, file: !376, line: 963, type: !69)
!3215 = !DILocalVariable(name: "argsize", arg: 4, scope: !3208, file: !376, line: 963, type: !215)
!3216 = !DILocalVariable(name: "o", scope: !3208, file: !376, line: 965, type: !2112)
!3217 = !DILocation(line: 0, scope: !3208)
!3218 = !DILocation(line: 965, column: 3, scope: !3208)
!3219 = !DILocation(line: 965, column: 32, scope: !3208)
!3220 = !{!3221}
!3221 = distinct !{!3221, !3222, !"quoting_options_from_style: argument 0"}
!3222 = distinct !{!3222, !"quoting_options_from_style"}
!3223 = !DILocation(line: 965, column: 36, scope: !3208)
!3224 = !DILocation(line: 0, scope: !3191, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 965, column: 36, scope: !3208)
!3226 = !DILocation(line: 195, column: 26, scope: !3191, inlinedAt: !3225)
!3227 = !DILocation(line: 196, column: 13, scope: !3200, inlinedAt: !3225)
!3228 = !DILocation(line: 196, column: 7, scope: !3191, inlinedAt: !3225)
!3229 = !DILocation(line: 197, column: 5, scope: !3200, inlinedAt: !3225)
!3230 = !DILocation(line: 198, column: 5, scope: !3191, inlinedAt: !3225)
!3231 = !DILocation(line: 198, column: 11, scope: !3191, inlinedAt: !3225)
!3232 = !DILocation(line: 966, column: 10, scope: !3208)
!3233 = !DILocation(line: 967, column: 1, scope: !3208)
!3234 = !DILocation(line: 966, column: 3, scope: !3208)
!3235 = distinct !DISubprogram(name: "quotearg_style", scope: !376, file: !376, line: 970, type: !3236, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!26, !11, !69}
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "s", arg: 1, scope: !3235, file: !376, line: 970, type: !11)
!3240 = !DILocalVariable(name: "arg", arg: 2, scope: !3235, file: !376, line: 970, type: !69)
!3241 = !DILocation(line: 0, scope: !3235)
!3242 = !DILocation(line: 0, scope: !3175, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 972, column: 10, scope: !3235)
!3244 = !DILocation(line: 957, column: 3, scope: !3175, inlinedAt: !3243)
!3245 = !DILocation(line: 957, column: 32, scope: !3175, inlinedAt: !3243)
!3246 = !{!3247}
!3247 = distinct !{!3247, !3248, !"quoting_options_from_style: argument 0"}
!3248 = distinct !{!3248, !"quoting_options_from_style"}
!3249 = !DILocation(line: 957, column: 36, scope: !3175, inlinedAt: !3243)
!3250 = !DILocation(line: 0, scope: !3191, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 957, column: 36, scope: !3175, inlinedAt: !3243)
!3252 = !DILocation(line: 195, column: 26, scope: !3191, inlinedAt: !3251)
!3253 = !DILocation(line: 196, column: 13, scope: !3200, inlinedAt: !3251)
!3254 = !DILocation(line: 196, column: 7, scope: !3191, inlinedAt: !3251)
!3255 = !DILocation(line: 197, column: 5, scope: !3200, inlinedAt: !3251)
!3256 = !DILocation(line: 198, column: 5, scope: !3191, inlinedAt: !3251)
!3257 = !DILocation(line: 198, column: 11, scope: !3191, inlinedAt: !3251)
!3258 = !DILocation(line: 958, column: 10, scope: !3175, inlinedAt: !3243)
!3259 = !DILocation(line: 959, column: 1, scope: !3175, inlinedAt: !3243)
!3260 = !DILocation(line: 972, column: 3, scope: !3235)
!3261 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !376, file: !376, line: 976, type: !3262, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!26, !11, !69, !215}
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "s", arg: 1, scope: !3261, file: !376, line: 976, type: !11)
!3266 = !DILocalVariable(name: "arg", arg: 2, scope: !3261, file: !376, line: 976, type: !69)
!3267 = !DILocalVariable(name: "argsize", arg: 3, scope: !3261, file: !376, line: 976, type: !215)
!3268 = !DILocation(line: 0, scope: !3261)
!3269 = !DILocation(line: 0, scope: !3208, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 978, column: 10, scope: !3261)
!3271 = !DILocation(line: 965, column: 3, scope: !3208, inlinedAt: !3270)
!3272 = !DILocation(line: 965, column: 32, scope: !3208, inlinedAt: !3270)
!3273 = !{!3274}
!3274 = distinct !{!3274, !3275, !"quoting_options_from_style: argument 0"}
!3275 = distinct !{!3275, !"quoting_options_from_style"}
!3276 = !DILocation(line: 965, column: 36, scope: !3208, inlinedAt: !3270)
!3277 = !DILocation(line: 0, scope: !3191, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 965, column: 36, scope: !3208, inlinedAt: !3270)
!3279 = !DILocation(line: 195, column: 26, scope: !3191, inlinedAt: !3278)
!3280 = !DILocation(line: 196, column: 13, scope: !3200, inlinedAt: !3278)
!3281 = !DILocation(line: 196, column: 7, scope: !3191, inlinedAt: !3278)
!3282 = !DILocation(line: 197, column: 5, scope: !3200, inlinedAt: !3278)
!3283 = !DILocation(line: 198, column: 5, scope: !3191, inlinedAt: !3278)
!3284 = !DILocation(line: 198, column: 11, scope: !3191, inlinedAt: !3278)
!3285 = !DILocation(line: 966, column: 10, scope: !3208, inlinedAt: !3270)
!3286 = !DILocation(line: 967, column: 1, scope: !3208, inlinedAt: !3270)
!3287 = !DILocation(line: 978, column: 3, scope: !3261)
!3288 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !376, file: !376, line: 982, type: !3289, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!26, !69, !215, !27}
!3291 = !{!3292, !3293, !3294, !3295}
!3292 = !DILocalVariable(name: "arg", arg: 1, scope: !3288, file: !376, line: 982, type: !69)
!3293 = !DILocalVariable(name: "argsize", arg: 2, scope: !3288, file: !376, line: 982, type: !215)
!3294 = !DILocalVariable(name: "ch", arg: 3, scope: !3288, file: !376, line: 982, type: !27)
!3295 = !DILocalVariable(name: "options", scope: !3288, file: !376, line: 984, type: !408)
!3296 = !DILocation(line: 0, scope: !3288)
!3297 = !DILocation(line: 984, column: 3, scope: !3288)
!3298 = !DILocation(line: 984, column: 26, scope: !3288)
!3299 = !DILocation(line: 985, column: 13, scope: !3288)
!3300 = !{i64 0, i64 4, !1185, i64 4, i64 4, !1104, i64 8, i64 32, !1185, i64 40, i64 8, !909, i64 48, i64 8, !909}
!3301 = !DILocation(line: 0, scope: !2132, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 986, column: 3, scope: !3288)
!3303 = !DILocation(line: 156, column: 62, scope: !2132, inlinedAt: !3302)
!3304 = !DILocation(line: 156, column: 57, scope: !2132, inlinedAt: !3302)
!3305 = !DILocation(line: 157, column: 15, scope: !2132, inlinedAt: !3302)
!3306 = !DILocation(line: 158, column: 12, scope: !2132, inlinedAt: !3302)
!3307 = !DILocation(line: 158, column: 15, scope: !2132, inlinedAt: !3302)
!3308 = !DILocation(line: 158, column: 25, scope: !2132, inlinedAt: !3302)
!3309 = !DILocation(line: 159, column: 18, scope: !2132, inlinedAt: !3302)
!3310 = !DILocation(line: 159, column: 23, scope: !2132, inlinedAt: !3302)
!3311 = !DILocation(line: 159, column: 6, scope: !2132, inlinedAt: !3302)
!3312 = !DILocation(line: 987, column: 10, scope: !3288)
!3313 = !DILocation(line: 988, column: 1, scope: !3288)
!3314 = !DILocation(line: 987, column: 3, scope: !3288)
!3315 = distinct !DISubprogram(name: "quotearg_char", scope: !376, file: !376, line: 991, type: !3316, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!26, !69, !27}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3315, file: !376, line: 991, type: !69)
!3320 = !DILocalVariable(name: "ch", arg: 2, scope: !3315, file: !376, line: 991, type: !27)
!3321 = !DILocation(line: 0, scope: !3315)
!3322 = !DILocation(line: 0, scope: !3288, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 993, column: 10, scope: !3315)
!3324 = !DILocation(line: 984, column: 3, scope: !3288, inlinedAt: !3323)
!3325 = !DILocation(line: 984, column: 26, scope: !3288, inlinedAt: !3323)
!3326 = !DILocation(line: 985, column: 13, scope: !3288, inlinedAt: !3323)
!3327 = !DILocation(line: 0, scope: !2132, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 986, column: 3, scope: !3288, inlinedAt: !3323)
!3329 = !DILocation(line: 156, column: 62, scope: !2132, inlinedAt: !3328)
!3330 = !DILocation(line: 156, column: 57, scope: !2132, inlinedAt: !3328)
!3331 = !DILocation(line: 157, column: 15, scope: !2132, inlinedAt: !3328)
!3332 = !DILocation(line: 158, column: 12, scope: !2132, inlinedAt: !3328)
!3333 = !DILocation(line: 158, column: 15, scope: !2132, inlinedAt: !3328)
!3334 = !DILocation(line: 158, column: 25, scope: !2132, inlinedAt: !3328)
!3335 = !DILocation(line: 159, column: 18, scope: !2132, inlinedAt: !3328)
!3336 = !DILocation(line: 159, column: 23, scope: !2132, inlinedAt: !3328)
!3337 = !DILocation(line: 159, column: 6, scope: !2132, inlinedAt: !3328)
!3338 = !DILocation(line: 987, column: 10, scope: !3288, inlinedAt: !3323)
!3339 = !DILocation(line: 988, column: 1, scope: !3288, inlinedAt: !3323)
!3340 = !DILocation(line: 993, column: 3, scope: !3315)
!3341 = distinct !DISubprogram(name: "quotearg_colon", scope: !376, file: !376, line: 997, type: !1129, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3341, file: !376, line: 997, type: !69)
!3344 = !DILocation(line: 0, scope: !3341)
!3345 = !DILocation(line: 0, scope: !3315, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 999, column: 10, scope: !3341)
!3347 = !DILocation(line: 0, scope: !3288, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 993, column: 10, scope: !3315, inlinedAt: !3346)
!3349 = !DILocation(line: 984, column: 3, scope: !3288, inlinedAt: !3348)
!3350 = !DILocation(line: 984, column: 26, scope: !3288, inlinedAt: !3348)
!3351 = !DILocation(line: 985, column: 13, scope: !3288, inlinedAt: !3348)
!3352 = !DILocation(line: 0, scope: !2132, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 986, column: 3, scope: !3288, inlinedAt: !3348)
!3354 = !DILocation(line: 156, column: 57, scope: !2132, inlinedAt: !3353)
!3355 = !DILocation(line: 158, column: 12, scope: !2132, inlinedAt: !3353)
!3356 = !DILocation(line: 159, column: 6, scope: !2132, inlinedAt: !3353)
!3357 = !DILocation(line: 987, column: 10, scope: !3288, inlinedAt: !3348)
!3358 = !DILocation(line: 988, column: 1, scope: !3288, inlinedAt: !3348)
!3359 = !DILocation(line: 999, column: 3, scope: !3341)
!3360 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !376, file: !376, line: 1003, type: !3165, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3361)
!3361 = !{!3362, !3363}
!3362 = !DILocalVariable(name: "arg", arg: 1, scope: !3360, file: !376, line: 1003, type: !69)
!3363 = !DILocalVariable(name: "argsize", arg: 2, scope: !3360, file: !376, line: 1003, type: !215)
!3364 = !DILocation(line: 0, scope: !3360)
!3365 = !DILocation(line: 0, scope: !3288, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1005, column: 10, scope: !3360)
!3367 = !DILocation(line: 984, column: 3, scope: !3288, inlinedAt: !3366)
!3368 = !DILocation(line: 984, column: 26, scope: !3288, inlinedAt: !3366)
!3369 = !DILocation(line: 985, column: 13, scope: !3288, inlinedAt: !3366)
!3370 = !DILocation(line: 0, scope: !2132, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 986, column: 3, scope: !3288, inlinedAt: !3366)
!3372 = !DILocation(line: 156, column: 57, scope: !2132, inlinedAt: !3371)
!3373 = !DILocation(line: 158, column: 12, scope: !2132, inlinedAt: !3371)
!3374 = !DILocation(line: 159, column: 6, scope: !2132, inlinedAt: !3371)
!3375 = !DILocation(line: 987, column: 10, scope: !3288, inlinedAt: !3366)
!3376 = !DILocation(line: 988, column: 1, scope: !3288, inlinedAt: !3366)
!3377 = !DILocation(line: 1005, column: 3, scope: !3360)
!3378 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !376, file: !376, line: 1009, type: !3176, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3379)
!3379 = !{!3380, !3381, !3382, !3383}
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3378, file: !376, line: 1009, type: !73)
!3381 = !DILocalVariable(name: "s", arg: 2, scope: !3378, file: !376, line: 1009, type: !11)
!3382 = !DILocalVariable(name: "arg", arg: 3, scope: !3378, file: !376, line: 1009, type: !69)
!3383 = !DILocalVariable(name: "options", scope: !3378, file: !376, line: 1011, type: !408)
!3384 = !DILocation(line: 195, column: 26, scope: !3191, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 1012, column: 13, scope: !3378)
!3386 = !DILocation(line: 0, scope: !3378)
!3387 = !DILocation(line: 1011, column: 3, scope: !3378)
!3388 = !DILocation(line: 1011, column: 26, scope: !3378)
!3389 = !DILocation(line: 1012, column: 13, scope: !3378)
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"quoting_options_from_style: argument 0"}
!3392 = distinct !{!3392, !"quoting_options_from_style"}
!3393 = !DILocation(line: 0, scope: !3191, inlinedAt: !3385)
!3394 = !DILocation(line: 196, column: 13, scope: !3200, inlinedAt: !3385)
!3395 = !DILocation(line: 196, column: 7, scope: !3191, inlinedAt: !3385)
!3396 = !DILocation(line: 197, column: 5, scope: !3200, inlinedAt: !3385)
!3397 = !{i64 0, i64 4, !1104, i64 4, i64 32, !1185, i64 36, i64 8, !909, i64 44, i64 8, !909}
!3398 = !DILocation(line: 0, scope: !2132, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1013, column: 3, scope: !3378)
!3400 = !DILocation(line: 156, column: 57, scope: !2132, inlinedAt: !3399)
!3401 = !DILocation(line: 158, column: 12, scope: !2132, inlinedAt: !3399)
!3402 = !DILocation(line: 159, column: 6, scope: !2132, inlinedAt: !3399)
!3403 = !DILocation(line: 1014, column: 10, scope: !3378)
!3404 = !DILocation(line: 1015, column: 1, scope: !3378)
!3405 = !DILocation(line: 1014, column: 3, scope: !3378)
!3406 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !376, file: !376, line: 1018, type: !3407, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!26, !73, !69, !69, !69}
!3409 = !{!3410, !3411, !3412, !3413}
!3410 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !376, line: 1018, type: !73)
!3411 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3406, file: !376, line: 1018, type: !69)
!3412 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3406, file: !376, line: 1019, type: !69)
!3413 = !DILocalVariable(name: "arg", arg: 4, scope: !3406, file: !376, line: 1019, type: !69)
!3414 = !DILocation(line: 0, scope: !3406)
!3415 = !DILocalVariable(name: "n", arg: 1, scope: !3416, file: !376, line: 1026, type: !73)
!3416 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !376, file: !376, line: 1026, type: !3417, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!26, !73, !69, !69, !69, !215}
!3419 = !{!3415, !3420, !3421, !3422, !3423, !3424}
!3420 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3416, file: !376, line: 1026, type: !69)
!3421 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3416, file: !376, line: 1027, type: !69)
!3422 = !DILocalVariable(name: "arg", arg: 4, scope: !3416, file: !376, line: 1028, type: !69)
!3423 = !DILocalVariable(name: "argsize", arg: 5, scope: !3416, file: !376, line: 1028, type: !215)
!3424 = !DILocalVariable(name: "o", scope: !3416, file: !376, line: 1030, type: !408)
!3425 = !DILocation(line: 0, scope: !3416, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 1021, column: 10, scope: !3406)
!3427 = !DILocation(line: 1030, column: 3, scope: !3416, inlinedAt: !3426)
!3428 = !DILocation(line: 1030, column: 26, scope: !3416, inlinedAt: !3426)
!3429 = !DILocation(line: 1030, column: 30, scope: !3416, inlinedAt: !3426)
!3430 = !DILocation(line: 0, scope: !2172, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1031, column: 3, scope: !3416, inlinedAt: !3426)
!3432 = !DILocation(line: 184, column: 6, scope: !2172, inlinedAt: !3431)
!3433 = !DILocation(line: 184, column: 12, scope: !2172, inlinedAt: !3431)
!3434 = !DILocation(line: 185, column: 8, scope: !2186, inlinedAt: !3431)
!3435 = !DILocation(line: 185, column: 19, scope: !2186, inlinedAt: !3431)
!3436 = !DILocation(line: 186, column: 5, scope: !2186, inlinedAt: !3431)
!3437 = !DILocation(line: 187, column: 6, scope: !2172, inlinedAt: !3431)
!3438 = !DILocation(line: 187, column: 17, scope: !2172, inlinedAt: !3431)
!3439 = !DILocation(line: 188, column: 6, scope: !2172, inlinedAt: !3431)
!3440 = !DILocation(line: 188, column: 18, scope: !2172, inlinedAt: !3431)
!3441 = !DILocation(line: 1032, column: 10, scope: !3416, inlinedAt: !3426)
!3442 = !DILocation(line: 1033, column: 1, scope: !3416, inlinedAt: !3426)
!3443 = !DILocation(line: 1021, column: 3, scope: !3406)
!3444 = !DILocation(line: 0, scope: !3416)
!3445 = !DILocation(line: 1030, column: 3, scope: !3416)
!3446 = !DILocation(line: 1030, column: 26, scope: !3416)
!3447 = !DILocation(line: 1030, column: 30, scope: !3416)
!3448 = !DILocation(line: 0, scope: !2172, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 1031, column: 3, scope: !3416)
!3450 = !DILocation(line: 184, column: 6, scope: !2172, inlinedAt: !3449)
!3451 = !DILocation(line: 184, column: 12, scope: !2172, inlinedAt: !3449)
!3452 = !DILocation(line: 185, column: 8, scope: !2186, inlinedAt: !3449)
!3453 = !DILocation(line: 185, column: 19, scope: !2186, inlinedAt: !3449)
!3454 = !DILocation(line: 186, column: 5, scope: !2186, inlinedAt: !3449)
!3455 = !DILocation(line: 187, column: 6, scope: !2172, inlinedAt: !3449)
!3456 = !DILocation(line: 187, column: 17, scope: !2172, inlinedAt: !3449)
!3457 = !DILocation(line: 188, column: 6, scope: !2172, inlinedAt: !3449)
!3458 = !DILocation(line: 188, column: 18, scope: !2172, inlinedAt: !3449)
!3459 = !DILocation(line: 1032, column: 10, scope: !3416)
!3460 = !DILocation(line: 1033, column: 1, scope: !3416)
!3461 = !DILocation(line: 1032, column: 3, scope: !3416)
!3462 = distinct !DISubprogram(name: "quotearg_custom", scope: !376, file: !376, line: 1036, type: !3463, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!26, !69, !69, !69}
!3465 = !{!3466, !3467, !3468}
!3466 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3462, file: !376, line: 1036, type: !69)
!3467 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3462, file: !376, line: 1036, type: !69)
!3468 = !DILocalVariable(name: "arg", arg: 3, scope: !3462, file: !376, line: 1037, type: !69)
!3469 = !DILocation(line: 0, scope: !3462)
!3470 = !DILocation(line: 0, scope: !3406, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 1039, column: 10, scope: !3462)
!3472 = !DILocation(line: 0, scope: !3416, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 1021, column: 10, scope: !3406, inlinedAt: !3471)
!3474 = !DILocation(line: 1030, column: 3, scope: !3416, inlinedAt: !3473)
!3475 = !DILocation(line: 1030, column: 26, scope: !3416, inlinedAt: !3473)
!3476 = !DILocation(line: 1030, column: 30, scope: !3416, inlinedAt: !3473)
!3477 = !DILocation(line: 0, scope: !2172, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1031, column: 3, scope: !3416, inlinedAt: !3473)
!3479 = !DILocation(line: 184, column: 6, scope: !2172, inlinedAt: !3478)
!3480 = !DILocation(line: 184, column: 12, scope: !2172, inlinedAt: !3478)
!3481 = !DILocation(line: 185, column: 8, scope: !2186, inlinedAt: !3478)
!3482 = !DILocation(line: 185, column: 19, scope: !2186, inlinedAt: !3478)
!3483 = !DILocation(line: 186, column: 5, scope: !2186, inlinedAt: !3478)
!3484 = !DILocation(line: 187, column: 6, scope: !2172, inlinedAt: !3478)
!3485 = !DILocation(line: 187, column: 17, scope: !2172, inlinedAt: !3478)
!3486 = !DILocation(line: 188, column: 6, scope: !2172, inlinedAt: !3478)
!3487 = !DILocation(line: 188, column: 18, scope: !2172, inlinedAt: !3478)
!3488 = !DILocation(line: 1032, column: 10, scope: !3416, inlinedAt: !3473)
!3489 = !DILocation(line: 1033, column: 1, scope: !3416, inlinedAt: !3473)
!3490 = !DILocation(line: 1039, column: 3, scope: !3462)
!3491 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !376, file: !376, line: 1043, type: !3492, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!26, !69, !69, !69, !215}
!3494 = !{!3495, !3496, !3497, !3498}
!3495 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3491, file: !376, line: 1043, type: !69)
!3496 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3491, file: !376, line: 1043, type: !69)
!3497 = !DILocalVariable(name: "arg", arg: 3, scope: !3491, file: !376, line: 1044, type: !69)
!3498 = !DILocalVariable(name: "argsize", arg: 4, scope: !3491, file: !376, line: 1044, type: !215)
!3499 = !DILocation(line: 0, scope: !3491)
!3500 = !DILocation(line: 0, scope: !3416, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1046, column: 10, scope: !3491)
!3502 = !DILocation(line: 1030, column: 3, scope: !3416, inlinedAt: !3501)
!3503 = !DILocation(line: 1030, column: 26, scope: !3416, inlinedAt: !3501)
!3504 = !DILocation(line: 1030, column: 30, scope: !3416, inlinedAt: !3501)
!3505 = !DILocation(line: 0, scope: !2172, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 1031, column: 3, scope: !3416, inlinedAt: !3501)
!3507 = !DILocation(line: 184, column: 6, scope: !2172, inlinedAt: !3506)
!3508 = !DILocation(line: 184, column: 12, scope: !2172, inlinedAt: !3506)
!3509 = !DILocation(line: 185, column: 8, scope: !2186, inlinedAt: !3506)
!3510 = !DILocation(line: 185, column: 19, scope: !2186, inlinedAt: !3506)
!3511 = !DILocation(line: 186, column: 5, scope: !2186, inlinedAt: !3506)
!3512 = !DILocation(line: 187, column: 6, scope: !2172, inlinedAt: !3506)
!3513 = !DILocation(line: 187, column: 17, scope: !2172, inlinedAt: !3506)
!3514 = !DILocation(line: 188, column: 6, scope: !2172, inlinedAt: !3506)
!3515 = !DILocation(line: 188, column: 18, scope: !2172, inlinedAt: !3506)
!3516 = !DILocation(line: 1032, column: 10, scope: !3416, inlinedAt: !3501)
!3517 = !DILocation(line: 1033, column: 1, scope: !3416, inlinedAt: !3501)
!3518 = !DILocation(line: 1046, column: 3, scope: !3491)
!3519 = distinct !DISubprogram(name: "quote_n_mem", scope: !376, file: !376, line: 1061, type: !3520, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!69, !73, !69, !215}
!3522 = !{!3523, !3524, !3525}
!3523 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !376, line: 1061, type: !73)
!3524 = !DILocalVariable(name: "arg", arg: 2, scope: !3519, file: !376, line: 1061, type: !69)
!3525 = !DILocalVariable(name: "argsize", arg: 3, scope: !3519, file: !376, line: 1061, type: !215)
!3526 = !DILocation(line: 0, scope: !3519)
!3527 = !DILocation(line: 1063, column: 10, scope: !3519)
!3528 = !DILocation(line: 1063, column: 3, scope: !3519)
!3529 = distinct !DISubprogram(name: "quote_mem", scope: !376, file: !376, line: 1067, type: !3530, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!69, !69, !215}
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "arg", arg: 1, scope: !3529, file: !376, line: 1067, type: !69)
!3534 = !DILocalVariable(name: "argsize", arg: 2, scope: !3529, file: !376, line: 1067, type: !215)
!3535 = !DILocation(line: 0, scope: !3529)
!3536 = !DILocation(line: 0, scope: !3519, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 1069, column: 10, scope: !3529)
!3538 = !DILocation(line: 1063, column: 10, scope: !3519, inlinedAt: !3537)
!3539 = !DILocation(line: 1069, column: 3, scope: !3529)
!3540 = distinct !DISubprogram(name: "quote_n", scope: !376, file: !376, line: 1073, type: !3541, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!69, !73, !69}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !376, line: 1073, type: !73)
!3545 = !DILocalVariable(name: "arg", arg: 2, scope: !3540, file: !376, line: 1073, type: !69)
!3546 = !DILocation(line: 0, scope: !3540)
!3547 = !DILocation(line: 0, scope: !3519, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1075, column: 10, scope: !3540)
!3549 = !DILocation(line: 1063, column: 10, scope: !3519, inlinedAt: !3548)
!3550 = !DILocation(line: 1075, column: 3, scope: !3540)
!3551 = distinct !DISubprogram(name: "quote", scope: !376, file: !376, line: 1079, type: !3552, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!69, !69}
!3554 = !{!3555}
!3555 = !DILocalVariable(name: "arg", arg: 1, scope: !3551, file: !376, line: 1079, type: !69)
!3556 = !DILocation(line: 0, scope: !3551)
!3557 = !DILocation(line: 0, scope: !3540, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 1081, column: 10, scope: !3551)
!3559 = !DILocation(line: 0, scope: !3519, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 1075, column: 10, scope: !3540, inlinedAt: !3558)
!3561 = !DILocation(line: 1063, column: 10, scope: !3519, inlinedAt: !3560)
!3562 = !DILocation(line: 1081, column: 3, scope: !3551)
!3563 = distinct !DISubprogram(name: "setlocale_null_r", scope: !452, file: !452, line: 269, type: !3564, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!73, !73, !26, !215}
!3566 = !{!3567, !3568, !3569}
!3567 = !DILocalVariable(name: "category", arg: 1, scope: !3563, file: !452, line: 269, type: !73)
!3568 = !DILocalVariable(name: "buf", arg: 2, scope: !3563, file: !452, line: 269, type: !26)
!3569 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3563, file: !452, line: 269, type: !215)
!3570 = !DILocation(line: 0, scope: !3563)
!3571 = !DILocalVariable(name: "category", arg: 1, scope: !3572, file: !452, line: 91, type: !73)
!3572 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !452, file: !452, line: 91, type: !3564, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3573)
!3573 = !{!3571, !3574, !3575, !3576, !3577}
!3574 = !DILocalVariable(name: "buf", arg: 2, scope: !3572, file: !452, line: 91, type: !26)
!3575 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3572, file: !452, line: 91, type: !215)
!3576 = !DILocalVariable(name: "result", scope: !3572, file: !452, line: 140, type: !69)
!3577 = !DILocalVariable(name: "length", scope: !3578, file: !452, line: 154, type: !215)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !452, line: 153, column: 5)
!3579 = distinct !DILexicalBlock(scope: !3572, file: !452, line: 142, column: 7)
!3580 = !DILocation(line: 0, scope: !3572, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 274, column: 10, scope: !3563)
!3582 = !DILocalVariable(name: "category", arg: 1, scope: !3583, file: !452, line: 60, type: !73)
!3583 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !452, file: !452, line: 60, type: !1950, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3584)
!3584 = !{!3582, !3585}
!3585 = !DILocalVariable(name: "result", scope: !3583, file: !452, line: 62, type: !69)
!3586 = !DILocation(line: 0, scope: !3583, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 140, column: 24, scope: !3572, inlinedAt: !3581)
!3588 = !DILocation(line: 62, column: 24, scope: !3583, inlinedAt: !3587)
!3589 = !DILocation(line: 142, column: 14, scope: !3579, inlinedAt: !3581)
!3590 = !DILocation(line: 142, column: 7, scope: !3572, inlinedAt: !3581)
!3591 = !DILocation(line: 145, column: 19, scope: !3592, inlinedAt: !3581)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !452, line: 145, column: 11)
!3593 = distinct !DILexicalBlock(scope: !3579, file: !452, line: 143, column: 5)
!3594 = !DILocation(line: 145, column: 11, scope: !3593, inlinedAt: !3581)
!3595 = !DILocation(line: 149, column: 16, scope: !3592, inlinedAt: !3581)
!3596 = !DILocation(line: 149, column: 9, scope: !3592, inlinedAt: !3581)
!3597 = !DILocation(line: 154, column: 23, scope: !3578, inlinedAt: !3581)
!3598 = !DILocation(line: 0, scope: !3578, inlinedAt: !3581)
!3599 = !DILocation(line: 155, column: 18, scope: !3600, inlinedAt: !3581)
!3600 = distinct !DILexicalBlock(scope: !3578, file: !452, line: 155, column: 11)
!3601 = !DILocation(line: 155, column: 11, scope: !3578, inlinedAt: !3581)
!3602 = !DILocation(line: 157, column: 39, scope: !3603, inlinedAt: !3581)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !452, line: 156, column: 9)
!3604 = !DILocalVariable(name: "__dest", arg: 1, scope: !3605, file: !1289, line: 26, type: !3608)
!3605 = distinct !DISubprogram(name: "memcpy", scope: !1289, file: !1289, line: 26, type: !3606, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3612)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!28, !3608, !3609, !215}
!3608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!3609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3610)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3612 = !{!3604, !3613, !3614}
!3613 = !DILocalVariable(name: "__src", arg: 2, scope: !3605, file: !1289, line: 26, type: !3609)
!3614 = !DILocalVariable(name: "__len", arg: 3, scope: !3605, file: !1289, line: 26, type: !215)
!3615 = !DILocation(line: 0, scope: !3605, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 157, column: 11, scope: !3603, inlinedAt: !3581)
!3617 = !DILocation(line: 29, column: 10, scope: !3605, inlinedAt: !3616)
!3618 = !DILocation(line: 158, column: 11, scope: !3603, inlinedAt: !3581)
!3619 = !DILocation(line: 162, column: 23, scope: !3620, inlinedAt: !3581)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !452, line: 162, column: 15)
!3621 = distinct !DILexicalBlock(scope: !3600, file: !452, line: 161, column: 9)
!3622 = !DILocation(line: 162, column: 15, scope: !3621, inlinedAt: !3581)
!3623 = !DILocation(line: 167, column: 44, scope: !3624, inlinedAt: !3581)
!3624 = distinct !DILexicalBlock(scope: !3620, file: !452, line: 163, column: 13)
!3625 = !DILocation(line: 0, scope: !3605, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 167, column: 15, scope: !3624, inlinedAt: !3581)
!3627 = !DILocation(line: 29, column: 10, scope: !3605, inlinedAt: !3626)
!3628 = !DILocation(line: 168, column: 15, scope: !3624, inlinedAt: !3581)
!3629 = !DILocation(line: 168, column: 32, scope: !3624, inlinedAt: !3581)
!3630 = !DILocation(line: 169, column: 13, scope: !3624, inlinedAt: !3581)
!3631 = !DILocation(line: 0, scope: !3579, inlinedAt: !3581)
!3632 = !DILocation(line: 274, column: 3, scope: !3563)
!3633 = distinct !DISubprogram(name: "setlocale_null", scope: !452, file: !452, line: 301, type: !1950, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3634)
!3634 = !{!3635}
!3635 = !DILocalVariable(name: "category", arg: 1, scope: !3633, file: !452, line: 301, type: !73)
!3636 = !DILocation(line: 0, scope: !3633)
!3637 = !DILocation(line: 0, scope: !3583, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 304, column: 10, scope: !3633)
!3639 = !DILocation(line: 62, column: 24, scope: !3583, inlinedAt: !3638)
!3640 = !DILocation(line: 304, column: 3, scope: !3633)
!3641 = distinct !DISubprogram(name: "version_etc_arn", scope: !455, file: !455, line: 61, type: !3642, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3680)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3644, !69, !69, !69, !3679, !215}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3646, line: 7, baseType: !3647)
!3646 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !985, line: 51, baseType: !73, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !985, line: 70, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3647, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3647, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3647, file: !985, line: 93, baseType: !3663, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3647, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686}
!3681 = !DILocalVariable(name: "stream", arg: 1, scope: !3641, file: !455, line: 61, type: !3644)
!3682 = !DILocalVariable(name: "command_name", arg: 2, scope: !3641, file: !455, line: 62, type: !69)
!3683 = !DILocalVariable(name: "package", arg: 3, scope: !3641, file: !455, line: 62, type: !69)
!3684 = !DILocalVariable(name: "version", arg: 4, scope: !3641, file: !455, line: 63, type: !69)
!3685 = !DILocalVariable(name: "authors", arg: 5, scope: !3641, file: !455, line: 64, type: !3679)
!3686 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3641, file: !455, line: 64, type: !215)
!3687 = !DILocation(line: 0, scope: !3641)
!3688 = !DILocation(line: 66, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3641, file: !455, line: 66, column: 7)
!3690 = !DILocation(line: 66, column: 7, scope: !3641)
!3691 = !DILocation(line: 67, column: 5, scope: !3689)
!3692 = !DILocation(line: 69, column: 5, scope: !3689)
!3693 = !DILocation(line: 83, column: 3, scope: !3641)
!3694 = !DILocation(line: 85, column: 3, scope: !3641)
!3695 = !DILocation(line: 88, column: 3, scope: !3641)
!3696 = !DILocation(line: 95, column: 3, scope: !3641)
!3697 = !DILocation(line: 97, column: 3, scope: !3641)
!3698 = !DILocation(line: 105, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3641, file: !455, line: 98, column: 5)
!3700 = !DILocation(line: 106, column: 7, scope: !3699)
!3701 = !DILocation(line: 109, column: 7, scope: !3699)
!3702 = !DILocation(line: 110, column: 7, scope: !3699)
!3703 = !DILocation(line: 113, column: 7, scope: !3699)
!3704 = !DILocation(line: 115, column: 7, scope: !3699)
!3705 = !DILocation(line: 120, column: 7, scope: !3699)
!3706 = !DILocation(line: 122, column: 7, scope: !3699)
!3707 = !DILocation(line: 127, column: 7, scope: !3699)
!3708 = !DILocation(line: 129, column: 7, scope: !3699)
!3709 = !DILocation(line: 134, column: 7, scope: !3699)
!3710 = !DILocation(line: 137, column: 7, scope: !3699)
!3711 = !DILocation(line: 142, column: 7, scope: !3699)
!3712 = !DILocation(line: 145, column: 7, scope: !3699)
!3713 = !DILocation(line: 150, column: 7, scope: !3699)
!3714 = !DILocation(line: 154, column: 7, scope: !3699)
!3715 = !DILocation(line: 159, column: 7, scope: !3699)
!3716 = !DILocation(line: 163, column: 7, scope: !3699)
!3717 = !DILocation(line: 170, column: 7, scope: !3699)
!3718 = !DILocation(line: 174, column: 7, scope: !3699)
!3719 = !DILocation(line: 176, column: 1, scope: !3641)
!3720 = distinct !DISubprogram(name: "version_etc_ar", scope: !455, file: !455, line: 183, type: !3721, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{null, !3644, !69, !69, !69, !3679}
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729}
!3724 = !DILocalVariable(name: "stream", arg: 1, scope: !3720, file: !455, line: 183, type: !3644)
!3725 = !DILocalVariable(name: "command_name", arg: 2, scope: !3720, file: !455, line: 184, type: !69)
!3726 = !DILocalVariable(name: "package", arg: 3, scope: !3720, file: !455, line: 184, type: !69)
!3727 = !DILocalVariable(name: "version", arg: 4, scope: !3720, file: !455, line: 185, type: !69)
!3728 = !DILocalVariable(name: "authors", arg: 5, scope: !3720, file: !455, line: 185, type: !3679)
!3729 = !DILocalVariable(name: "n_authors", scope: !3720, file: !455, line: 187, type: !215)
!3730 = !DILocation(line: 0, scope: !3720)
!3731 = !DILocation(line: 189, column: 8, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3720, file: !455, line: 189, column: 3)
!3733 = !DILocation(line: 0, scope: !3732)
!3734 = !DILocation(line: 189, column: 23, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !455, line: 189, column: 3)
!3736 = !DILocation(line: 189, column: 3, scope: !3732)
!3737 = !DILocation(line: 189, column: 52, scope: !3735)
!3738 = distinct !{!3738, !3736, !3739, !955}
!3739 = !DILocation(line: 190, column: 5, scope: !3732)
!3740 = !DILocation(line: 191, column: 3, scope: !3720)
!3741 = !DILocation(line: 192, column: 1, scope: !3720)
!3742 = distinct !DISubprogram(name: "version_etc_va", scope: !455, file: !455, line: 199, type: !3743, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3752)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3644, !69, !69, !69, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3746, file: !455, line: 192, baseType: !7, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3746, file: !455, line: 192, baseType: !7, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3746, file: !455, line: 192, baseType: !28, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3746, file: !455, line: 192, baseType: !28, size: 64, offset: 128)
!3752 = !{!3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3753 = !DILocalVariable(name: "stream", arg: 1, scope: !3742, file: !455, line: 199, type: !3644)
!3754 = !DILocalVariable(name: "command_name", arg: 2, scope: !3742, file: !455, line: 200, type: !69)
!3755 = !DILocalVariable(name: "package", arg: 3, scope: !3742, file: !455, line: 200, type: !69)
!3756 = !DILocalVariable(name: "version", arg: 4, scope: !3742, file: !455, line: 201, type: !69)
!3757 = !DILocalVariable(name: "authors", arg: 5, scope: !3742, file: !455, line: 201, type: !3745)
!3758 = !DILocalVariable(name: "n_authors", scope: !3742, file: !455, line: 203, type: !215)
!3759 = !DILocalVariable(name: "authtab", scope: !3742, file: !455, line: 204, type: !3760)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 640, elements: !404)
!3761 = !DILocation(line: 0, scope: !3742)
!3762 = !DILocation(line: 204, column: 3, scope: !3742)
!3763 = !DILocation(line: 204, column: 15, scope: !3742)
!3764 = !DILocation(line: 208, column: 35, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !455, line: 206, column: 3)
!3766 = distinct !DILexicalBlock(scope: !3742, file: !455, line: 206, column: 3)
!3767 = !DILocation(line: 208, column: 14, scope: !3765)
!3768 = !DILocation(line: 208, column: 33, scope: !3765)
!3769 = !DILocation(line: 208, column: 67, scope: !3765)
!3770 = !DILocation(line: 206, column: 3, scope: !3766)
!3771 = !DILocation(line: 0, scope: !3766)
!3772 = !DILocation(line: 211, column: 3, scope: !3742)
!3773 = !DILocation(line: 213, column: 1, scope: !3742)
!3774 = distinct !DISubprogram(name: "version_etc", scope: !455, file: !455, line: 230, type: !3775, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3644, !69, !69, !69, null}
!3777 = !{!3778, !3779, !3780, !3781, !3782}
!3778 = !DILocalVariable(name: "stream", arg: 1, scope: !3774, file: !455, line: 230, type: !3644)
!3779 = !DILocalVariable(name: "command_name", arg: 2, scope: !3774, file: !455, line: 231, type: !69)
!3780 = !DILocalVariable(name: "package", arg: 3, scope: !3774, file: !455, line: 231, type: !69)
!3781 = !DILocalVariable(name: "version", arg: 4, scope: !3774, file: !455, line: 232, type: !69)
!3782 = !DILocalVariable(name: "authors", scope: !3774, file: !455, line: 234, type: !3783)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !980, line: 52, baseType: !3784)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3785, line: 32, baseType: !3786)
!3785 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !455, baseType: !3787)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3746, size: 192, elements: !1011)
!3788 = !DILocation(line: 0, scope: !3774)
!3789 = !DILocation(line: 234, column: 3, scope: !3774)
!3790 = !DILocation(line: 234, column: 11, scope: !3774)
!3791 = !DILocation(line: 236, column: 3, scope: !3774)
!3792 = !DILocation(line: 237, column: 3, scope: !3774)
!3793 = !DILocation(line: 238, column: 3, scope: !3774)
!3794 = !DILocation(line: 239, column: 1, scope: !3774)
!3795 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !455, file: !455, line: 242, type: !1136, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !310)
!3796 = !DILocation(line: 244, column: 3, scope: !3795)
!3797 = !DILocation(line: 249, column: 3, scope: !3795)
!3798 = !DILocation(line: 255, column: 3, scope: !3795)
!3799 = !DILocation(line: 260, column: 3, scope: !3795)
!3800 = !DILocation(line: 262, column: 1, scope: !3795)
!3801 = distinct !DISubprogram(name: "xnmalloc", scope: !464, file: !464, line: 99, type: !3802, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!28, !215, !215}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "n", arg: 1, scope: !3801, file: !464, line: 99, type: !215)
!3806 = !DILocalVariable(name: "s", arg: 2, scope: !3801, file: !464, line: 99, type: !215)
!3807 = !DILocation(line: 0, scope: !3801)
!3808 = !DILocation(line: 101, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !464, line: 101, column: 7)
!3810 = !DILocation(line: 101, column: 7, scope: !3801)
!3811 = !DILocation(line: 102, column: 5, scope: !3809)
!3812 = !DILocation(line: 103, column: 21, scope: !3801)
!3813 = !DILocalVariable(name: "n", arg: 1, scope: !3814, file: !461, line: 39, type: !215)
!3814 = distinct !DISubprogram(name: "xmalloc", scope: !461, file: !461, line: 39, type: !3815, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!28, !215}
!3817 = !{!3813, !3818}
!3818 = !DILocalVariable(name: "p", scope: !3814, file: !461, line: 41, type: !28)
!3819 = !DILocation(line: 0, scope: !3814, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 103, column: 10, scope: !3801)
!3821 = !DILocation(line: 41, column: 13, scope: !3814, inlinedAt: !3820)
!3822 = !DILocation(line: 42, column: 8, scope: !3823, inlinedAt: !3820)
!3823 = distinct !DILexicalBlock(scope: !3814, file: !461, line: 42, column: 7)
!3824 = !DILocation(line: 42, column: 10, scope: !3823, inlinedAt: !3820)
!3825 = !DILocation(line: 43, column: 5, scope: !3823, inlinedAt: !3820)
!3826 = !DILocation(line: 103, column: 3, scope: !3801)
!3827 = !DILocation(line: 0, scope: !3814)
!3828 = !DILocation(line: 41, column: 13, scope: !3814)
!3829 = !DILocation(line: 42, column: 8, scope: !3823)
!3830 = !DILocation(line: 42, column: 10, scope: !3823)
!3831 = !DILocation(line: 43, column: 5, scope: !3823)
!3832 = !DILocation(line: 44, column: 3, scope: !3814)
!3833 = distinct !DISubprogram(name: "xnrealloc", scope: !464, file: !464, line: 112, type: !3834, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!28, !28, !215, !215}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !464, line: 112, type: !28)
!3838 = !DILocalVariable(name: "n", arg: 2, scope: !3833, file: !464, line: 112, type: !215)
!3839 = !DILocalVariable(name: "s", arg: 3, scope: !3833, file: !464, line: 112, type: !215)
!3840 = !DILocation(line: 0, scope: !3833)
!3841 = !DILocation(line: 114, column: 7, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3833, file: !464, line: 114, column: 7)
!3843 = !DILocation(line: 114, column: 7, scope: !3833)
!3844 = !DILocation(line: 115, column: 5, scope: !3842)
!3845 = !DILocation(line: 116, column: 25, scope: !3833)
!3846 = !DILocalVariable(name: "p", arg: 1, scope: !3847, file: !461, line: 51, type: !28)
!3847 = distinct !DISubprogram(name: "xrealloc", scope: !461, file: !461, line: 51, type: !3848, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!28, !28, !215}
!3850 = !{!3846, !3851}
!3851 = !DILocalVariable(name: "n", arg: 2, scope: !3847, file: !461, line: 51, type: !215)
!3852 = !DILocation(line: 0, scope: !3847, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 116, column: 10, scope: !3833)
!3854 = !DILocation(line: 53, column: 8, scope: !3855, inlinedAt: !3853)
!3855 = distinct !DILexicalBlock(scope: !3847, file: !461, line: 53, column: 7)
!3856 = !DILocation(line: 53, column: 10, scope: !3855, inlinedAt: !3853)
!3857 = !DILocation(line: 57, column: 7, scope: !3858, inlinedAt: !3853)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !461, line: 54, column: 5)
!3859 = !DILocation(line: 58, column: 7, scope: !3858, inlinedAt: !3853)
!3860 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3853)
!3861 = !DILocation(line: 62, column: 8, scope: !3862, inlinedAt: !3853)
!3862 = distinct !DILexicalBlock(scope: !3847, file: !461, line: 62, column: 7)
!3863 = !DILocation(line: 62, column: 10, scope: !3862, inlinedAt: !3853)
!3864 = !DILocation(line: 63, column: 5, scope: !3862, inlinedAt: !3853)
!3865 = !DILocation(line: 116, column: 3, scope: !3833)
!3866 = !DILocation(line: 0, scope: !3847)
!3867 = !DILocation(line: 53, column: 8, scope: !3855)
!3868 = !DILocation(line: 53, column: 10, scope: !3855)
!3869 = !DILocation(line: 57, column: 7, scope: !3858)
!3870 = !DILocation(line: 58, column: 7, scope: !3858)
!3871 = !DILocation(line: 61, column: 7, scope: !3847)
!3872 = !DILocation(line: 62, column: 8, scope: !3862)
!3873 = !DILocation(line: 62, column: 10, scope: !3862)
!3874 = !DILocation(line: 63, column: 5, scope: !3862)
!3875 = !DILocation(line: 65, column: 1, scope: !3847)
!3876 = !DILocation(line: 0, scope: !465)
!3877 = !DILocation(line: 176, column: 14, scope: !465)
!3878 = !DILocation(line: 178, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !465, file: !464, line: 178, column: 7)
!3880 = !DILocation(line: 178, column: 7, scope: !465)
!3881 = !DILocation(line: 180, column: 13, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !464, line: 180, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !464, line: 179, column: 5)
!3884 = !DILocation(line: 180, column: 11, scope: !3883)
!3885 = !DILocation(line: 188, column: 30, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !464, line: 181, column: 9)
!3887 = !DILocation(line: 189, column: 16, scope: !3886)
!3888 = !DILocation(line: 189, column: 13, scope: !3886)
!3889 = !DILocation(line: 190, column: 9, scope: !3886)
!3890 = !DILocation(line: 191, column: 11, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3883, file: !464, line: 191, column: 11)
!3892 = !DILocation(line: 191, column: 11, scope: !3883)
!3893 = !DILocation(line: 206, column: 7, scope: !465)
!3894 = !DILocation(line: 207, column: 25, scope: !465)
!3895 = !DILocation(line: 0, scope: !3847, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 207, column: 10, scope: !465)
!3897 = !DILocation(line: 53, column: 10, scope: !3855, inlinedAt: !3896)
!3898 = !DILocation(line: 192, column: 9, scope: !3891)
!3899 = !DILocation(line: 200, column: 69, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !464, line: 200, column: 11)
!3901 = distinct !DILexicalBlock(scope: !3879, file: !464, line: 195, column: 5)
!3902 = !DILocation(line: 201, column: 11, scope: !3900)
!3903 = !DILocation(line: 200, column: 11, scope: !3901)
!3904 = !DILocation(line: 202, column: 9, scope: !3900)
!3905 = !DILocation(line: 203, column: 14, scope: !3901)
!3906 = !DILocation(line: 203, column: 18, scope: !3901)
!3907 = !DILocation(line: 203, column: 9, scope: !3901)
!3908 = !DILocation(line: 53, column: 8, scope: !3855, inlinedAt: !3896)
!3909 = !DILocation(line: 57, column: 7, scope: !3858, inlinedAt: !3896)
!3910 = !DILocation(line: 58, column: 7, scope: !3858, inlinedAt: !3896)
!3911 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3896)
!3912 = !DILocation(line: 62, column: 8, scope: !3862, inlinedAt: !3896)
!3913 = !DILocation(line: 62, column: 10, scope: !3862, inlinedAt: !3896)
!3914 = !DILocation(line: 63, column: 5, scope: !3862, inlinedAt: !3896)
!3915 = !DILocation(line: 207, column: 3, scope: !465)
!3916 = distinct !DISubprogram(name: "xcharalloc", scope: !464, file: !464, line: 216, type: !2976, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3917)
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "n", arg: 1, scope: !3916, file: !464, line: 216, type: !215)
!3919 = !DILocation(line: 0, scope: !3916)
!3920 = !DILocation(line: 0, scope: !3814, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 218, column: 10, scope: !3916)
!3922 = !DILocation(line: 41, column: 13, scope: !3814, inlinedAt: !3921)
!3923 = !DILocation(line: 42, column: 8, scope: !3823, inlinedAt: !3921)
!3924 = !DILocation(line: 42, column: 10, scope: !3823, inlinedAt: !3921)
!3925 = !DILocation(line: 43, column: 5, scope: !3823, inlinedAt: !3921)
!3926 = !DILocation(line: 218, column: 3, scope: !3916)
!3927 = distinct !DISubprogram(name: "x2realloc", scope: !461, file: !461, line: 74, type: !3928, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!28, !28, !468}
!3930 = !{!3931, !3932}
!3931 = !DILocalVariable(name: "p", arg: 1, scope: !3927, file: !461, line: 74, type: !28)
!3932 = !DILocalVariable(name: "pn", arg: 2, scope: !3927, file: !461, line: 74, type: !468)
!3933 = !DILocation(line: 0, scope: !3927)
!3934 = !DILocation(line: 0, scope: !465, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 76, column: 10, scope: !3927)
!3936 = !DILocation(line: 176, column: 14, scope: !465, inlinedAt: !3935)
!3937 = !DILocation(line: 178, column: 9, scope: !3879, inlinedAt: !3935)
!3938 = !DILocation(line: 178, column: 7, scope: !465, inlinedAt: !3935)
!3939 = !DILocation(line: 180, column: 13, scope: !3882, inlinedAt: !3935)
!3940 = !DILocation(line: 180, column: 11, scope: !3883, inlinedAt: !3935)
!3941 = !DILocation(line: 191, column: 11, scope: !3891, inlinedAt: !3935)
!3942 = !DILocation(line: 191, column: 11, scope: !3883, inlinedAt: !3935)
!3943 = !DILocation(line: 192, column: 9, scope: !3891, inlinedAt: !3935)
!3944 = !DILocation(line: 201, column: 11, scope: !3900, inlinedAt: !3935)
!3945 = !DILocation(line: 200, column: 11, scope: !3901, inlinedAt: !3935)
!3946 = !DILocation(line: 202, column: 9, scope: !3900, inlinedAt: !3935)
!3947 = !DILocation(line: 203, column: 14, scope: !3901, inlinedAt: !3935)
!3948 = !DILocation(line: 203, column: 18, scope: !3901, inlinedAt: !3935)
!3949 = !DILocation(line: 203, column: 9, scope: !3901, inlinedAt: !3935)
!3950 = !DILocation(line: 0, scope: !3847, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 207, column: 10, scope: !465, inlinedAt: !3935)
!3952 = !DILocation(line: 53, column: 10, scope: !3855, inlinedAt: !3951)
!3953 = !DILocation(line: 206, column: 7, scope: !465, inlinedAt: !3935)
!3954 = !DILocation(line: 61, column: 7, scope: !3847, inlinedAt: !3951)
!3955 = !DILocation(line: 62, column: 8, scope: !3862, inlinedAt: !3951)
!3956 = !DILocation(line: 62, column: 10, scope: !3862, inlinedAt: !3951)
!3957 = !DILocation(line: 63, column: 5, scope: !3862, inlinedAt: !3951)
!3958 = !DILocation(line: 76, column: 3, scope: !3927)
!3959 = distinct !DISubprogram(name: "xzalloc", scope: !461, file: !461, line: 84, type: !3815, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "n", arg: 1, scope: !3959, file: !461, line: 84, type: !215)
!3962 = !DILocation(line: 0, scope: !3959)
!3963 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !461, line: 93, type: !215)
!3964 = distinct !DISubprogram(name: "xcalloc", scope: !461, file: !461, line: 93, type: !3802, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3965)
!3965 = !{!3963, !3966, !3967}
!3966 = !DILocalVariable(name: "s", arg: 2, scope: !3964, file: !461, line: 93, type: !215)
!3967 = !DILocalVariable(name: "p", scope: !3964, file: !461, line: 95, type: !28)
!3968 = !DILocation(line: 0, scope: !3964, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 86, column: 10, scope: !3959)
!3970 = !DILocation(line: 100, column: 7, scope: !3971, inlinedAt: !3969)
!3971 = distinct !DILexicalBlock(scope: !3964, file: !461, line: 100, column: 7)
!3972 = !DILocation(line: 101, column: 7, scope: !3971, inlinedAt: !3969)
!3973 = !DILocation(line: 101, column: 18, scope: !3971, inlinedAt: !3969)
!3974 = !DILocation(line: 101, column: 16, scope: !3971, inlinedAt: !3969)
!3975 = !DILocation(line: 100, column: 7, scope: !3964, inlinedAt: !3969)
!3976 = !DILocation(line: 102, column: 5, scope: !3971, inlinedAt: !3969)
!3977 = !DILocation(line: 86, column: 3, scope: !3959)
!3978 = !DILocation(line: 0, scope: !3964)
!3979 = !DILocation(line: 100, column: 7, scope: !3971)
!3980 = !DILocation(line: 101, column: 7, scope: !3971)
!3981 = !DILocation(line: 101, column: 18, scope: !3971)
!3982 = !DILocation(line: 101, column: 16, scope: !3971)
!3983 = !DILocation(line: 100, column: 7, scope: !3964)
!3984 = !DILocation(line: 102, column: 5, scope: !3971)
!3985 = !DILocation(line: 103, column: 3, scope: !3964)
!3986 = distinct !DISubprogram(name: "xmemdup", scope: !461, file: !461, line: 111, type: !3987, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!28, !3610, !215}
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "p", arg: 1, scope: !3986, file: !461, line: 111, type: !3610)
!3991 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !461, line: 111, type: !215)
!3992 = !DILocation(line: 0, scope: !3986)
!3993 = !DILocation(line: 0, scope: !3814, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 113, column: 18, scope: !3986)
!3995 = !DILocation(line: 41, column: 13, scope: !3814, inlinedAt: !3994)
!3996 = !DILocation(line: 42, column: 8, scope: !3823, inlinedAt: !3994)
!3997 = !DILocation(line: 42, column: 10, scope: !3823, inlinedAt: !3994)
!3998 = !DILocation(line: 43, column: 5, scope: !3823, inlinedAt: !3994)
!3999 = !DILocalVariable(name: "__dest", arg: 1, scope: !4000, file: !1289, line: 26, type: !3608)
!4000 = distinct !DISubprogram(name: "memcpy", scope: !1289, file: !1289, line: 26, type: !3606, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4001)
!4001 = !{!3999, !4002, !4003}
!4002 = !DILocalVariable(name: "__src", arg: 2, scope: !4000, file: !1289, line: 26, type: !3609)
!4003 = !DILocalVariable(name: "__len", arg: 3, scope: !4000, file: !1289, line: 26, type: !215)
!4004 = !DILocation(line: 0, scope: !4000, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 113, column: 10, scope: !3986)
!4006 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4005)
!4007 = !DILocation(line: 113, column: 3, scope: !3986)
!4008 = distinct !DISubprogram(name: "xstrdup", scope: !461, file: !461, line: 119, type: !1129, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4009)
!4009 = !{!4010}
!4010 = !DILocalVariable(name: "string", arg: 1, scope: !4008, file: !461, line: 119, type: !69)
!4011 = !DILocation(line: 0, scope: !4008)
!4012 = !DILocation(line: 121, column: 27, scope: !4008)
!4013 = !DILocation(line: 121, column: 43, scope: !4008)
!4014 = !DILocation(line: 0, scope: !3986, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 121, column: 10, scope: !4008)
!4016 = !DILocation(line: 0, scope: !3814, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 113, column: 18, scope: !3986, inlinedAt: !4015)
!4018 = !DILocation(line: 41, column: 13, scope: !3814, inlinedAt: !4017)
!4019 = !DILocation(line: 42, column: 8, scope: !3823, inlinedAt: !4017)
!4020 = !DILocation(line: 42, column: 10, scope: !3823, inlinedAt: !4017)
!4021 = !DILocation(line: 43, column: 5, scope: !3823, inlinedAt: !4017)
!4022 = !DILocation(line: 0, scope: !4000, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 113, column: 10, scope: !3986, inlinedAt: !4015)
!4024 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4023)
!4025 = !DILocation(line: 121, column: 3, scope: !4008)
!4026 = distinct !DISubprogram(name: "xalloc_die", scope: !478, file: !478, line: 32, type: !1136, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !310)
!4027 = !DILocation(line: 34, column: 10, scope: !4026)
!4028 = !DILocation(line: 34, column: 33, scope: !4026)
!4029 = !DILocation(line: 34, column: 3, scope: !4026)
!4030 = !DILocation(line: 40, column: 3, scope: !4026)
!4031 = distinct !DISubprogram(name: "rpl_calloc", scope: !480, file: !480, line: 42, type: !3802, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !4032)
!4032 = !{!4033, !4034, !4035, !4036}
!4033 = !DILocalVariable(name: "n", arg: 1, scope: !4031, file: !480, line: 42, type: !215)
!4034 = !DILocalVariable(name: "s", arg: 2, scope: !4031, file: !480, line: 42, type: !215)
!4035 = !DILocalVariable(name: "result", scope: !4031, file: !480, line: 44, type: !28)
!4036 = !DILocalVariable(name: "bytes", scope: !4037, file: !480, line: 56, type: !215)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !480, line: 53, column: 5)
!4038 = distinct !DILexicalBlock(scope: !4031, file: !480, line: 47, column: 7)
!4039 = !DILocation(line: 0, scope: !4031)
!4040 = !DILocation(line: 47, column: 9, scope: !4038)
!4041 = !DILocation(line: 47, column: 14, scope: !4038)
!4042 = !DILocation(line: 0, scope: !4037)
!4043 = !DILocation(line: 57, column: 21, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !480, line: 57, column: 11)
!4045 = !DILocation(line: 57, column: 11, scope: !4037)
!4046 = !DILocation(line: 59, column: 11, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !480, line: 58, column: 9)
!4048 = !DILocation(line: 59, column: 17, scope: !4047)
!4049 = !DILocation(line: 65, column: 12, scope: !4031)
!4050 = !DILocation(line: 72, column: 3, scope: !4031)
!4051 = !DILocation(line: 73, column: 1, scope: !4031)
!4052 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !482, file: !482, line: 86, type: !4053, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4067)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!215, !4055, !69, !215, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2261, line: 6, baseType: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2263, line: 21, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2263, line: 13, size: 64, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4059, file: !2263, line: 15, baseType: !73, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4059, file: !2263, line: 20, baseType: !4063, size: 32, offset: 32)
!4063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !2263, line: 16, size: 32, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4063, file: !2263, line: 18, baseType: !7, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4063, file: !2263, line: 19, baseType: !125, size: 32)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4068 = !DILocalVariable(name: "pwc", arg: 1, scope: !4052, file: !482, line: 86, type: !4055)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4052, file: !482, line: 86, type: !69)
!4070 = !DILocalVariable(name: "n", arg: 3, scope: !4052, file: !482, line: 86, type: !215)
!4071 = !DILocalVariable(name: "ps", arg: 4, scope: !4052, file: !482, line: 86, type: !4056)
!4072 = !DILocalVariable(name: "ret", scope: !4052, file: !482, line: 88, type: !215)
!4073 = !DILocalVariable(name: "wc", scope: !4052, file: !482, line: 89, type: !2274)
!4074 = !DILocalVariable(name: "uc", scope: !4075, file: !482, line: 156, type: !268)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !482, line: 155, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4052, file: !482, line: 154, column: 7)
!4077 = !DILocation(line: 0, scope: !4052)
!4078 = !DILocation(line: 89, column: 3, scope: !4052)
!4079 = !DILocation(line: 105, column: 9, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4052, file: !482, line: 105, column: 7)
!4081 = !DILocation(line: 105, column: 7, scope: !4052)
!4082 = !DILocation(line: 145, column: 9, scope: !4052)
!4083 = !DILocation(line: 154, column: 19, scope: !4076)
!4084 = !DILocation(line: 154, column: 26, scope: !4076)
!4085 = !DILocation(line: 154, column: 41, scope: !4076)
!4086 = !DILocation(line: 154, column: 7, scope: !4052)
!4087 = !DILocation(line: 156, column: 26, scope: !4075)
!4088 = !DILocation(line: 0, scope: !4075)
!4089 = !DILocation(line: 157, column: 14, scope: !4075)
!4090 = !DILocation(line: 157, column: 12, scope: !4075)
!4091 = !DILocation(line: 163, column: 1, scope: !4052)
!4092 = !DISubprogram(name: "mbrtowc", scope: !2936, file: !2936, line: 296, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!160, !287, !69, !160, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4096 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !485, file: !485, line: 49, type: !4097, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4123)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!26, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4101)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !6, line: 146, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !115, line: 55, size: 3072, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109, !4110, !4115, !4116, !4121, !4122}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4102, file: !115, line: 57, baseType: !34, size: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4102, file: !115, line: 58, baseType: !119, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4102, file: !115, line: 59, baseType: !121, size: 256, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4102, file: !115, line: 61, baseType: !125, size: 32, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4102, file: !115, line: 63, baseType: !121, size: 256, offset: 352)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4102, file: !115, line: 65, baseType: !130, size: 2048, offset: 608)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4102, file: !115, line: 67, baseType: !4111, size: 32, offset: 2656)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !115, line: 42, size: 32, elements: !4112)
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4111, file: !115, line: 45, baseType: !34, size: 16)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4111, file: !115, line: 46, baseType: !34, size: 16, offset: 16)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4102, file: !115, line: 74, baseType: !139, size: 32, offset: 2688)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4102, file: !115, line: 79, baseType: !4117, size: 64, offset: 2720)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4102, file: !115, line: 75, size: 64, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4117, file: !115, line: 77, baseType: !139, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4117, file: !115, line: 78, baseType: !139, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4102, file: !115, line: 84, baseType: !146, size: 128, offset: 2784)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4102, file: !115, line: 85, baseType: !148, size: 160, offset: 2912)
!4123 = !{!4124, !4125, !4126}
!4124 = !DILocalVariable(name: "ut", arg: 1, scope: !4096, file: !485, line: 49, type: !4099)
!4125 = !DILocalVariable(name: "p", scope: !4096, file: !485, line: 51, type: !26)
!4126 = !DILocalVariable(name: "trimmed_name", scope: !4096, file: !485, line: 51, type: !26)
!4127 = !DILocation(line: 0, scope: !4096)
!4128 = !DILocation(line: 53, column: 18, scope: !4096)
!4129 = !DILocation(line: 54, column: 26, scope: !4096)
!4130 = !DILocalVariable(name: "__dest", arg: 1, scope: !4131, file: !1289, line: 92, type: !1292)
!4131 = distinct !DISubprogram(name: "strncpy", scope: !1289, file: !1289, line: 92, type: !1307, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4132)
!4132 = !{!4130, !4133, !4134}
!4133 = !DILocalVariable(name: "__src", arg: 2, scope: !4131, file: !1289, line: 92, type: !1293)
!4134 = !DILocalVariable(name: "__len", arg: 3, scope: !4131, file: !1289, line: 92, type: !215)
!4135 = !DILocation(line: 0, scope: !4131, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 54, column: 3, scope: !4096)
!4137 = !DILocation(line: 95, column: 10, scope: !4131, inlinedAt: !4136)
!4138 = !DILocation(line: 58, column: 3, scope: !4096)
!4139 = !DILocation(line: 58, column: 39, scope: !4096)
!4140 = !DILocation(line: 59, column: 27, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4096, file: !485, line: 59, column: 3)
!4142 = !DILocation(line: 60, column: 21, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !485, line: 59, column: 3)
!4144 = !DILocation(line: 60, column: 25, scope: !4143)
!4145 = !DILocation(line: 59, column: 25, scope: !4141)
!4146 = !DILocation(line: 59, column: 3, scope: !4141)
!4147 = !DILocation(line: 60, column: 28, scope: !4143)
!4148 = !DILocation(line: 60, column: 34, scope: !4143)
!4149 = !DILocation(line: 61, column: 13, scope: !4143)
!4150 = distinct !{!4150, !4146, !4151, !955}
!4151 = !DILocation(line: 62, column: 5, scope: !4141)
!4152 = !DILocation(line: 63, column: 3, scope: !4096)
!4153 = distinct !DISubprogram(name: "read_utmp", scope: !485, file: !485, line: 92, type: !4154, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4158)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!73, !69, !468, !4156, !73}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4159 = !DILocalVariable(name: "file", arg: 1, scope: !4153, file: !485, line: 92, type: !69)
!4160 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4153, file: !485, line: 92, type: !468)
!4161 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4153, file: !485, line: 92, type: !4156)
!4162 = !DILocalVariable(name: "options", arg: 4, scope: !4153, file: !485, line: 93, type: !73)
!4163 = !DILocalVariable(name: "n_read", scope: !4153, file: !485, line: 95, type: !215)
!4164 = !DILocalVariable(name: "n_alloc", scope: !4153, file: !485, line: 96, type: !215)
!4165 = !DILocalVariable(name: "utmp", scope: !4153, file: !485, line: 97, type: !4157)
!4166 = !DILocalVariable(name: "u", scope: !4153, file: !485, line: 98, type: !4157)
!4167 = !DILocation(line: 0, scope: !4153)
!4168 = !DILocation(line: 104, column: 3, scope: !4153)
!4169 = !DILocation(line: 106, column: 3, scope: !4153)
!4170 = !DILocation(line: 108, column: 15, scope: !4153)
!4171 = !DILocation(line: 108, column: 32, scope: !4153)
!4172 = !DILocation(line: 108, column: 3, scope: !4153)
!4173 = !DILocalVariable(name: "u", arg: 1, scope: !4174, file: !485, line: 69, type: !4099)
!4174 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !485, file: !485, line: 69, type: !4175, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!38, !4099, !73}
!4177 = !{!4173, !4178, !4179}
!4178 = !DILocalVariable(name: "options", arg: 2, scope: !4174, file: !485, line: 69, type: !73)
!4179 = !DILocalVariable(name: "user_proc", scope: !4174, file: !485, line: 71, type: !38)
!4180 = !DILocation(line: 0, scope: !4174, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 109, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4153, file: !485, line: 109, column: 9)
!4183 = !DILocation(line: 71, column: 20, scope: !4174, inlinedAt: !4181)
!4184 = !DILocation(line: 72, column: 42, scope: !4185, inlinedAt: !4181)
!4185 = distinct !DILexicalBlock(scope: !4174, file: !485, line: 72, column: 7)
!4186 = !DILocation(line: 75, column: 7, scope: !4187, inlinedAt: !4181)
!4187 = distinct !DILexicalBlock(scope: !4174, file: !485, line: 74, column: 7)
!4188 = !DILocation(line: 76, column: 14, scope: !4187, inlinedAt: !4181)
!4189 = !DILocation(line: 76, column: 12, scope: !4187, inlinedAt: !4181)
!4190 = !DILocation(line: 77, column: 7, scope: !4187, inlinedAt: !4181)
!4191 = !DILocation(line: 77, column: 11, scope: !4187, inlinedAt: !4181)
!4192 = !DILocation(line: 77, column: 32, scope: !4187, inlinedAt: !4181)
!4193 = !DILocation(line: 77, column: 36, scope: !4187, inlinedAt: !4181)
!4194 = !DILocation(line: 77, column: 39, scope: !4187, inlinedAt: !4181)
!4195 = !DILocation(line: 77, column: 45, scope: !4187, inlinedAt: !4181)
!4196 = !DILocation(line: 74, column: 7, scope: !4174, inlinedAt: !4181)
!4197 = !DILocation(line: 111, column: 20, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !485, line: 111, column: 13)
!4199 = distinct !DILexicalBlock(scope: !4182, file: !485, line: 110, column: 7)
!4200 = !DILocation(line: 111, column: 13, scope: !4199)
!4201 = !DILocation(line: 112, column: 30, scope: !4198)
!4202 = !DILocation(line: 0, scope: !488, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 112, column: 18, scope: !4198)
!4204 = !DILocation(line: 178, column: 9, scope: !4205, inlinedAt: !4203)
!4205 = distinct !DILexicalBlock(scope: !488, file: !464, line: 178, column: 7)
!4206 = !DILocation(line: 178, column: 7, scope: !488, inlinedAt: !4203)
!4207 = !DILocation(line: 180, column: 13, scope: !4208, inlinedAt: !4203)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !464, line: 180, column: 11)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !464, line: 179, column: 5)
!4210 = !DILocation(line: 180, column: 11, scope: !4209, inlinedAt: !4203)
!4211 = !DILocation(line: 191, column: 11, scope: !4212, inlinedAt: !4203)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !464, line: 191, column: 11)
!4213 = !DILocation(line: 191, column: 11, scope: !4209, inlinedAt: !4203)
!4214 = !DILocation(line: 192, column: 9, scope: !4212, inlinedAt: !4203)
!4215 = !DILocation(line: 201, column: 11, scope: !4216, inlinedAt: !4203)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !464, line: 200, column: 11)
!4217 = distinct !DILexicalBlock(scope: !4205, file: !464, line: 195, column: 5)
!4218 = !DILocation(line: 200, column: 11, scope: !4217, inlinedAt: !4203)
!4219 = !DILocation(line: 202, column: 9, scope: !4216, inlinedAt: !4203)
!4220 = !DILocation(line: 203, column: 14, scope: !4217, inlinedAt: !4203)
!4221 = !DILocation(line: 203, column: 18, scope: !4217, inlinedAt: !4203)
!4222 = !DILocation(line: 203, column: 9, scope: !4217, inlinedAt: !4203)
!4223 = !DILocation(line: 207, column: 25, scope: !488, inlinedAt: !4203)
!4224 = !DILocation(line: 207, column: 10, scope: !488, inlinedAt: !4203)
!4225 = !DILocation(line: 112, column: 18, scope: !4198)
!4226 = !DILocation(line: 112, column: 11, scope: !4198)
!4227 = !DILocation(line: 114, column: 20, scope: !4199)
!4228 = !DILocation(line: 114, column: 9, scope: !4199)
!4229 = !DILocation(line: 114, column: 26, scope: !4199)
!4230 = !{i64 0, i64 2, !2496, i64 4, i64 4, !1104, i64 8, i64 32, !1185, i64 40, i64 4, !1185, i64 44, i64 32, !1185, i64 76, i64 256, !1185, i64 332, i64 2, !2496, i64 334, i64 2, !2496, i64 336, i64 4, !1104, i64 340, i64 4, !1104, i64 344, i64 4, !1104, i64 348, i64 16, !1185, i64 364, i64 20, !1185}
!4231 = !DILocation(line: 115, column: 7, scope: !4199)
!4232 = distinct !{!4232, !4172, !4233, !955}
!4233 = !DILocation(line: 115, column: 7, scope: !4153)
!4234 = !DILocation(line: 117, column: 3, scope: !4153)
!4235 = !DILocation(line: 119, column: 14, scope: !4153)
!4236 = !DILocation(line: 120, column: 13, scope: !4153)
!4237 = !DILocation(line: 122, column: 3, scope: !4153)
!4238 = !DISubprogram(name: "utmpxname", scope: !4239, file: !4239, line: 93, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4239 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!4240 = !DISubprogram(name: "setutxent", scope: !4239, file: !4239, line: 53, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4241 = !DISubprogram(name: "getutxent", scope: !4239, file: !4239, line: 65, type: !4242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!4244}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4245 = !DISubprogram(name: "kill", scope: !4246, file: !4246, line: 112, type: !4247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4246 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!73, !73, !73}
!4249 = !DISubprogram(name: "endutxent", scope: !4239, file: !4239, line: 59, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4250 = distinct !DISubprogram(name: "close_stream", scope: !496, file: !496, line: 56, type: !4251, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !4287)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!73, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3646, line: 7, baseType: !4255)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4255, file: !985, line: 51, baseType: !73, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4255, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4255, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4255, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4255, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4255, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4255, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4255, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4255, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4255, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4255, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4255, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4255, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4255, file: !985, line: 70, baseType: !4271, size: 64, offset: 832)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4255, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4255, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4255, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4255, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4255, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4255, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4255, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4255, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4255, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4255, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4255, file: !985, line: 93, baseType: !4271, size: 64, offset: 1344)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4255, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4255, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4255, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4255, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!4287 = !{!4288, !4289, !4291, !4292}
!4288 = !DILocalVariable(name: "stream", arg: 1, scope: !4250, file: !496, line: 56, type: !4253)
!4289 = !DILocalVariable(name: "some_pending", scope: !4250, file: !496, line: 58, type: !4290)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4291 = !DILocalVariable(name: "prev_fail", scope: !4250, file: !496, line: 59, type: !4290)
!4292 = !DILocalVariable(name: "fclose_fail", scope: !4250, file: !496, line: 60, type: !4290)
!4293 = !DILocation(line: 0, scope: !4250)
!4294 = !DILocation(line: 58, column: 30, scope: !4250)
!4295 = !DILocalVariable(name: "__stream", arg: 1, scope: !4296, file: !4297, line: 135, type: !4253)
!4296 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4297, file: !4297, line: 135, type: !4251, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !4298)
!4297 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4298 = !{!4295}
!4299 = !DILocation(line: 0, scope: !4296, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 59, column: 27, scope: !4250)
!4301 = !DILocation(line: 137, column: 10, scope: !4296, inlinedAt: !4300)
!4302 = !{!4303, !1105, i64 0}
!4303 = !{!"_IO_FILE", !1105, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !910, i64 32, !910, i64 40, !910, i64 48, !910, i64 56, !910, i64 64, !910, i64 72, !910, i64 80, !910, i64 88, !910, i64 96, !910, i64 104, !1105, i64 112, !1105, i64 116, !1165, i64 120, !1188, i64 128, !911, i64 130, !911, i64 131, !910, i64 136, !1165, i64 144, !910, i64 152, !910, i64 160, !910, i64 168, !910, i64 176, !1165, i64 184, !1105, i64 192, !911, i64 196}
!4304 = !DILocation(line: 59, column: 43, scope: !4250)
!4305 = !DILocation(line: 60, column: 29, scope: !4250)
!4306 = !DILocation(line: 60, column: 45, scope: !4250)
!4307 = !DILocation(line: 70, column: 17, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4250, file: !496, line: 70, column: 7)
!4309 = !DILocation(line: 58, column: 50, scope: !4250)
!4310 = !DILocation(line: 70, column: 33, scope: !4308)
!4311 = !DILocation(line: 70, column: 53, scope: !4308)
!4312 = !DILocation(line: 70, column: 59, scope: !4308)
!4313 = !DILocation(line: 70, column: 7, scope: !4250)
!4314 = !DILocation(line: 72, column: 11, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !496, line: 71, column: 5)
!4316 = !DILocation(line: 73, column: 9, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !496, line: 72, column: 11)
!4318 = !DILocation(line: 73, column: 15, scope: !4317)
!4319 = !DILocation(line: 78, column: 1, scope: !4250)
!4320 = distinct !DISubprogram(name: "locale_charset", scope: !498, file: !498, line: 831, type: !1944, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4321)
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "codeset", scope: !4320, file: !498, line: 833, type: !69)
!4323 = !DILocation(line: 847, column: 13, scope: !4320)
!4324 = !DILocation(line: 0, scope: !4320)
!4325 = !DILocation(line: 911, column: 15, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4320, file: !498, line: 911, column: 7)
!4327 = !DILocation(line: 911, column: 7, scope: !4320)
!4328 = !DILocation(line: 1070, column: 13, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !498, line: 1070, column: 13)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !498, line: 1060, column: 7)
!4331 = distinct !DILexicalBlock(scope: !4320, file: !498, line: 1019, column: 3)
!4332 = !DILocation(line: 1070, column: 24, scope: !4329)
!4333 = !DILocation(line: 1070, column: 13, scope: !4330)
!4334 = !DILocation(line: 1158, column: 3, scope: !4320)
!4335 = !DISubprogram(name: "nl_langinfo", scope: !501, file: !501, line: 661, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4336 = distinct !DISubprogram(name: "rpl_fclose", scope: !887, file: !887, line: 58, type: !4337, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4373)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!73, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3646, line: 7, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4341, file: !985, line: 51, baseType: !73, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4341, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4341, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4341, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4341, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4341, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4341, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4341, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4341, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4341, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4341, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4341, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4341, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4341, file: !985, line: 70, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4341, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4341, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4341, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4341, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4341, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4341, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4341, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4341, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4341, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4341, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4341, file: !985, line: 93, baseType: !4357, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4341, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4341, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4341, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4341, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!4373 = !{!4374, !4375, !4376, !4377}
!4374 = !DILocalVariable(name: "fp", arg: 1, scope: !4336, file: !887, line: 58, type: !4339)
!4375 = !DILocalVariable(name: "saved_errno", scope: !4336, file: !887, line: 60, type: !73)
!4376 = !DILocalVariable(name: "fd", scope: !4336, file: !887, line: 61, type: !73)
!4377 = !DILocalVariable(name: "result", scope: !4336, file: !887, line: 62, type: !73)
!4378 = !DILocation(line: 0, scope: !4336)
!4379 = !DILocation(line: 65, column: 8, scope: !4336)
!4380 = !DILocation(line: 66, column: 10, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4336, file: !887, line: 66, column: 7)
!4382 = !DILocation(line: 66, column: 7, scope: !4336)
!4383 = !DILocation(line: 67, column: 12, scope: !4381)
!4384 = !DILocation(line: 67, column: 5, scope: !4381)
!4385 = !DILocation(line: 72, column: 9, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4336, file: !887, line: 72, column: 7)
!4387 = !DILocation(line: 72, column: 23, scope: !4386)
!4388 = !DILocation(line: 72, column: 33, scope: !4386)
!4389 = !DILocation(line: 72, column: 26, scope: !4386)
!4390 = !DILocation(line: 72, column: 59, scope: !4386)
!4391 = !DILocation(line: 73, column: 7, scope: !4386)
!4392 = !DILocation(line: 73, column: 10, scope: !4386)
!4393 = !DILocation(line: 72, column: 7, scope: !4336)
!4394 = !DILocation(line: 100, column: 12, scope: !4336)
!4395 = !DILocation(line: 105, column: 7, scope: !4336)
!4396 = !DILocation(line: 74, column: 19, scope: !4386)
!4397 = !DILocation(line: 105, column: 19, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4336, file: !887, line: 105, column: 7)
!4399 = !DILocation(line: 107, column: 13, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4398, file: !887, line: 106, column: 5)
!4401 = !DILocation(line: 109, column: 5, scope: !4400)
!4402 = !DILocation(line: 112, column: 1, scope: !4336)
!4403 = !DISubprogram(name: "fileno", scope: !980, file: !980, line: 785, type: !4404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!73, !4357}
!4406 = !DISubprogram(name: "fclose", scope: !980, file: !980, line: 213, type: !4404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4407 = !DISubprogram(name: "lseek", scope: !1854, file: !1854, line: 334, type: !4408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!33, !73, !33, !73}
!4410 = distinct !DISubprogram(name: "rpl_fflush", scope: !889, file: !889, line: 129, type: !4411, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !4447)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!73, !4413}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3646, line: 7, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4415, file: !985, line: 51, baseType: !73, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4415, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4415, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4415, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4415, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4415, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4415, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4415, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4415, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4415, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4415, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4415, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4415, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4415, file: !985, line: 70, baseType: !4431, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4415, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4415, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4415, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4415, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4415, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4415, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4415, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4415, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4415, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4415, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4415, file: !985, line: 93, baseType: !4431, size: 64, offset: 1344)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4415, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4415, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4415, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4415, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "stream", arg: 1, scope: !4410, file: !889, line: 129, type: !4413)
!4449 = !DILocation(line: 0, scope: !4410)
!4450 = !DILocation(line: 150, column: 14, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4410, file: !889, line: 150, column: 7)
!4452 = !DILocation(line: 150, column: 22, scope: !4451)
!4453 = !DILocation(line: 150, column: 27, scope: !4451)
!4454 = !DILocation(line: 150, column: 7, scope: !4410)
!4455 = !DILocation(line: 151, column: 12, scope: !4451)
!4456 = !DILocation(line: 151, column: 5, scope: !4451)
!4457 = !DILocalVariable(name: "fp", arg: 1, scope: !4458, file: !889, line: 41, type: !4413)
!4458 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !889, file: !889, line: 41, type: !4459, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4413}
!4461 = !{!4457}
!4462 = !DILocation(line: 0, scope: !4458, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 156, column: 3, scope: !4410)
!4464 = !DILocation(line: 43, column: 11, scope: !4465, inlinedAt: !4463)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !889, line: 43, column: 7)
!4466 = !DILocation(line: 43, column: 18, scope: !4465, inlinedAt: !4463)
!4467 = !DILocation(line: 43, column: 7, scope: !4458, inlinedAt: !4463)
!4468 = !DILocation(line: 45, column: 5, scope: !4465, inlinedAt: !4463)
!4469 = !DILocation(line: 158, column: 10, scope: !4410)
!4470 = !DILocation(line: 158, column: 3, scope: !4410)
!4471 = !DILocation(line: 235, column: 1, scope: !4410)
!4472 = !DISubprogram(name: "fflush", scope: !980, file: !980, line: 218, type: !4473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!73, !4431}
!4475 = distinct !DISubprogram(name: "rpl_fseeko", scope: !891, file: !891, line: 28, type: !4476, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !4513)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!73, !4478, !4512, !73}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3646, line: 7, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !985, line: 49, size: 1728, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4480, file: !985, line: 51, baseType: !73, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4480, file: !985, line: 54, baseType: !26, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4480, file: !985, line: 55, baseType: !26, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4480, file: !985, line: 56, baseType: !26, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4480, file: !985, line: 57, baseType: !26, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4480, file: !985, line: 58, baseType: !26, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4480, file: !985, line: 59, baseType: !26, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4480, file: !985, line: 60, baseType: !26, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4480, file: !985, line: 61, baseType: !26, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4480, file: !985, line: 64, baseType: !26, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4480, file: !985, line: 65, baseType: !26, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4480, file: !985, line: 66, baseType: !26, size: 64, offset: 704)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4480, file: !985, line: 68, baseType: !1000, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4480, file: !985, line: 70, baseType: !4496, size: 64, offset: 832)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4480, file: !985, line: 72, baseType: !73, size: 32, offset: 896)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4480, file: !985, line: 73, baseType: !73, size: 32, offset: 928)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4480, file: !985, line: 74, baseType: !174, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4480, file: !985, line: 77, baseType: !346, size: 16, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4480, file: !985, line: 78, baseType: !1008, size: 8, offset: 1040)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4480, file: !985, line: 79, baseType: !1010, size: 8, offset: 1048)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4480, file: !985, line: 81, baseType: !1014, size: 64, offset: 1088)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4480, file: !985, line: 89, baseType: !1017, size: 64, offset: 1152)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4480, file: !985, line: 91, baseType: !1019, size: 64, offset: 1216)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4480, file: !985, line: 92, baseType: !1022, size: 64, offset: 1280)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4480, file: !985, line: 93, baseType: !4496, size: 64, offset: 1344)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4480, file: !985, line: 94, baseType: !28, size: 64, offset: 1408)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4480, file: !985, line: 95, baseType: !215, size: 64, offset: 1472)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4480, file: !985, line: 96, baseType: !73, size: 32, offset: 1536)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4480, file: !985, line: 98, baseType: !148, size: 160, offset: 1568)
!4512 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !980, line: 63, baseType: !174)
!4513 = !{!4514, !4515, !4516, !4517}
!4514 = !DILocalVariable(name: "fp", arg: 1, scope: !4475, file: !891, line: 28, type: !4478)
!4515 = !DILocalVariable(name: "offset", arg: 2, scope: !4475, file: !891, line: 28, type: !4512)
!4516 = !DILocalVariable(name: "whence", arg: 3, scope: !4475, file: !891, line: 28, type: !73)
!4517 = !DILocalVariable(name: "pos", scope: !4518, file: !891, line: 117, type: !4512)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !891, line: 113, column: 5)
!4519 = distinct !DILexicalBlock(scope: !4475, file: !891, line: 52, column: 7)
!4520 = !DILocation(line: 0, scope: !4475)
!4521 = !DILocation(line: 52, column: 11, scope: !4519)
!4522 = !{!4303, !910, i64 16}
!4523 = !DILocation(line: 52, column: 31, scope: !4519)
!4524 = !{!4303, !910, i64 8}
!4525 = !DILocation(line: 52, column: 24, scope: !4519)
!4526 = !DILocation(line: 53, column: 7, scope: !4519)
!4527 = !DILocation(line: 53, column: 14, scope: !4519)
!4528 = !{!4303, !910, i64 40}
!4529 = !DILocation(line: 53, column: 35, scope: !4519)
!4530 = !{!4303, !910, i64 32}
!4531 = !DILocation(line: 53, column: 28, scope: !4519)
!4532 = !DILocation(line: 54, column: 7, scope: !4519)
!4533 = !DILocation(line: 54, column: 14, scope: !4519)
!4534 = !{!4303, !910, i64 72}
!4535 = !DILocation(line: 54, column: 28, scope: !4519)
!4536 = !DILocation(line: 52, column: 7, scope: !4475)
!4537 = !DILocation(line: 117, column: 26, scope: !4518)
!4538 = !DILocation(line: 117, column: 19, scope: !4518)
!4539 = !DILocation(line: 0, scope: !4518)
!4540 = !DILocation(line: 118, column: 15, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4518, file: !891, line: 118, column: 11)
!4542 = !DILocation(line: 118, column: 11, scope: !4518)
!4543 = !DILocation(line: 129, column: 11, scope: !4518)
!4544 = !DILocation(line: 129, column: 18, scope: !4518)
!4545 = !DILocation(line: 130, column: 11, scope: !4518)
!4546 = !DILocation(line: 130, column: 19, scope: !4518)
!4547 = !{!4303, !1165, i64 144}
!4548 = !DILocation(line: 161, column: 7, scope: !4518)
!4549 = !DILocation(line: 163, column: 10, scope: !4475)
!4550 = !DILocation(line: 163, column: 3, scope: !4475)
!4551 = !DILocation(line: 164, column: 1, scope: !4475)
!4552 = !DISubprogram(name: "fseeko", scope: !980, file: !980, line: 712, type: !4553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !310)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!73, !4496, !33, !73}
