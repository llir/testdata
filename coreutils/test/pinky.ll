; ModuleID = 'coreutils-8.32/src/pinky.bc'
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
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [328 x i8] c"\0A  -l              produce long format output for the specified USERs\0A  -b              omit the user's home directory and shell in long format\0A  -h              omit the user's project file in long format\0A  -p              omit the user's plan file in long format\0A  -s              do short format output, this is the default\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [309 x i8] c"  -f              omit the line of column headings in short format\0A  -w              omit the user's full name in short format\0A  -i              omit the user's full name and remote host in short format\0A  -q              omit the user's full name, remote host and idle time\0A                  in short format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"\0AA lightweight 'finger' program;  print user information.\0AThe utmp file will be %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pinky\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sfwiqbhlp\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@do_short_format = internal unnamed_addr global i1 false, align 1, !dbg !177
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !178
@include_fullname = internal unnamed_addr global i1 false, align 1, !dbg !179
@include_where = internal unnamed_addr global i1 false, align 1, !dbg !180
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !181
@include_project = internal unnamed_addr global i1 false, align 1, !dbg !182
@include_plan = internal unnamed_addr global i1 false, align 1, !dbg !183
@include_home_and_shell = internal unnamed_addr global i1 false, align 1, !dbg !184
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [68 x i8] c"no username specified; at least one must be specified when using -l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !69
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !71
@.str.39 = private unnamed_addr constant [6 x i8] c"Login\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c" %-19s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" TTY\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c" %-6s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"When\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %-*s\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Login name: \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%-28s\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"In real life: \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"???\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Directory: \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%-29s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Shell: \00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"/.project\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Project: \00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"/.plan\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Plan:\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%-8.*s\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"        ???\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" %19s\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" %-19.19s\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" %c%-8.*s\00", align 1
@idle_string.now = internal global i64 0, align 8, !dbg !73
@idle_string.buf = internal global [22 x i8] zeroinitializer, align 16, !dbg !92
@.str.59 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !97
@.str.57 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !185
@.str.73 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !191
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !196
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !232
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !237
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !239
@.str.1.85 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !245
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.104, i32 0, i32 0), i8* null], align 16, !dbg !251
@.str.95 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.97 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.98 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.99 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.100 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.101 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.102 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.103 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.104 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !263
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !269
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !281
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.108 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.109 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.110 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.111 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !285
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !292
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !283
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !294
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.121 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.122 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.124 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.125 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.132 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.133 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.136 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.137 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.138 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.139 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.140 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.141 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.142 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !300
@.str.1.153 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.171 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !767 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !771, metadata !DIExpression()), !dbg !772
  %3 = icmp eq i32 %0, 0, !dbg !773
  br i1 %3, label %9, label %4, !dbg !775

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !776, !tbaa !778
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !776
  %7 = load i8*, i8** @program_name, align 8, !dbg !776, !tbaa !778
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !776
  br label %63, !dbg !776

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !782
  %11 = load i8*, i8** @program_name, align 8, !dbg !782, !tbaa !778
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !782
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !784
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !778
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !784
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !785
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !785, !tbaa !778
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !785
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !786
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !778
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !786
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !787
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !778
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !787
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !788
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !788
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), metadata !789, metadata !DIExpression()) #28, !dbg !808
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !810
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #28, !dbg !810
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !795, metadata !DIExpression()) #28, !dbg !811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %27, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !811
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), metadata !804, metadata !DIExpression()) #28, !dbg !808
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !805, metadata !DIExpression()) #28, !dbg !808
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !812
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !805, metadata !DIExpression()) #28, !dbg !808
  br label %29, !dbg !813

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !805, metadata !DIExpression()) #28, !dbg !808
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %30) #29, !dbg !814
  %33 = icmp eq i32 %32, 0, !dbg !814
  br i1 %33, label %39, label %34, !dbg !813

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !815
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !805, metadata !DIExpression()) #28, !dbg !808
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !816
  %37 = load i8*, i8** %36, align 8, !dbg !816, !tbaa !817
  %38 = icmp eq i8* %37, null, !dbg !819
  br i1 %38, label %39, label %29, !dbg !820, !llvm.loop !821

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %31, %29 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !823
  %42 = load i8*, i8** %41, align 8, !dbg !823, !tbaa !825
  %43 = icmp eq i8* %42, null, !dbg !826
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %42, !dbg !827
  call void @llvm.dbg.value(metadata i8* %44, metadata !804, metadata !DIExpression()) #28, !dbg !808
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #28, !dbg !828
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #28, !dbg !828
  %47 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !829
  call void @llvm.dbg.value(metadata i8* %47, metadata !807, metadata !DIExpression()) #28, !dbg !808
  %48 = icmp eq i8* %47, null, !dbg !830
  br i1 %48, label %56, label %49, !dbg !832

49:                                               ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #29, !dbg !833
  %51 = icmp eq i32 %50, 0, !dbg !833
  br i1 %51, label %56, label %52, !dbg !834

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i32 5) #28, !dbg !835
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !835, !tbaa !778
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #28, !dbg !835
  br label %56, !dbg !837

56:                                               ; preds = %39, %49, %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 5) #28, !dbg !838
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #28, !dbg !838
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #28, !dbg !839
  %60 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !839
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !839
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %44, i8* %61) #28, !dbg !839
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #28, !dbg !840
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 %0) #30, !dbg !841
  unreachable, !dbg !841
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !842 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !846 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !897 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !901 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !906, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8** %1, metadata !907, metadata !DIExpression()), !dbg !910
  %7 = load i8*, i8** %1, align 8, !dbg !911, !tbaa !778
  tail call void @set_program_name(i8* %7) #28, !dbg !912
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !913
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #28, !dbg !914
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !915
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !916
  br label %12, !dbg !917

12:                                               ; preds = %23, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #28, !dbg !918
  call void @llvm.dbg.value(metadata i32 %13, metadata !908, metadata !DIExpression()), !dbg !910
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 115, label %14
    i32 108, label %15
    i32 102, label %16
    i32 119, label %17
    i32 105, label %18
    i32 113, label %19
    i32 104, label %20
    i32 112, label %21
    i32 98, label %22
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !917

14:                                               ; preds = %12
  store i1 false, i1* @do_short_format, align 1, !dbg !919
  br label %23, !dbg !922

15:                                               ; preds = %12
  store i1 true, i1* @do_short_format, align 1, !dbg !923
  br label %23, !dbg !924

16:                                               ; preds = %12
  store i1 true, i1* @include_heading, align 1, !dbg !925
  br label %23, !dbg !926

17:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !927
  br label %23, !dbg !928

18:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !929
  store i1 true, i1* @include_where, align 1, !dbg !930
  br label %23, !dbg !931

19:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !932
  store i1 true, i1* @include_where, align 1, !dbg !933
  store i1 true, i1* @include_idle, align 1, !dbg !934
  br label %23, !dbg !935

20:                                               ; preds = %12
  store i1 true, i1* @include_project, align 1, !dbg !936
  br label %23, !dbg !937

21:                                               ; preds = %12
  store i1 true, i1* @include_plan, align 1, !dbg !938
  br label %23, !dbg !939

22:                                               ; preds = %12
  store i1 true, i1* @include_home_and_shell, align 1, !dbg !940
  br label %23, !dbg !941

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %12, !dbg !918, !llvm.loop !942

24:                                               ; preds = %12
  tail call void @usage(i32 0) #31, !dbg !944
  unreachable, !dbg !944

25:                                               ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !945, !tbaa !778
  %27 = load i8*, i8** @Version, align 8, !dbg !945, !tbaa !778
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #28, !dbg !945
  tail call void @exit(i32 0) #30, !dbg !945
  unreachable, !dbg !945

28:                                               ; preds = %12
  tail call void @usage(i32 1) #31, !dbg !946
  unreachable, !dbg !946

29:                                               ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !947, !tbaa !948
  %31 = sub nsw i32 %0, %30, !dbg !950
  call void @llvm.dbg.value(metadata i32 %31, metadata !909, metadata !DIExpression()), !dbg !910
  %32 = load i1, i1* @do_short_format, align 1, !dbg !951
  %33 = icmp eq i32 %31, 0
  %34 = and i1 %32, %33, !dbg !953
  br i1 %34, label %35, label %37, !dbg !953

35:                                               ; preds = %29
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !954
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #28, !dbg !956
  tail call void @usage(i32 1) #31, !dbg !957
  unreachable, !dbg !957

37:                                               ; preds = %29
  %38 = sext i32 %30 to i64, !dbg !958
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38, !dbg !958
  br i1 %32, label %122, label %40, !dbg !960

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), metadata !961, metadata !DIExpression()) #28, !dbg !974
  call void @llvm.dbg.value(metadata i32 %31, metadata !969, metadata !DIExpression()) #28, !dbg !974
  call void @llvm.dbg.value(metadata i8** %39, metadata !970, metadata !DIExpression()) #28, !dbg !974
  %41 = bitcast i64* %5 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #28, !dbg !976
  %42 = bitcast %struct.utmpx** %6 to i8*, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #28, !dbg !977
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !972, metadata !DIExpression()) #28, !dbg !974
  store %struct.utmpx* null, %struct.utmpx** %6, align 8, !dbg !978, !tbaa !778
  call void @llvm.dbg.value(metadata i64* %5, metadata !971, metadata !DIExpression(DW_OP_deref)) #28, !dbg !974
  call void @llvm.dbg.value(metadata %struct.utmpx** %6, metadata !972, metadata !DIExpression(DW_OP_deref)) #28, !dbg !974
  %43 = call i32 @read_utmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %5, %struct.utmpx** nonnull %6, i32 0) #28, !dbg !979
  %44 = icmp eq i32 %43, 0, !dbg !981
  br i1 %44, label %49, label %45, !dbg !982

45:                                               ; preds = %40
  %46 = tail call i32* @__errno_location() #32, !dbg !983
  %47 = load i32, i32* %46, align 4, !dbg !983, !tbaa !948
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %48) #28, !dbg !983
  unreachable, !dbg !983

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8, !dbg !984, !tbaa !985
  call void @llvm.dbg.value(metadata i64 %50, metadata !971, metadata !DIExpression()) #28, !dbg !974
  %51 = load %struct.utmpx*, %struct.utmpx** %6, align 8, !dbg !987, !tbaa !778
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !972, metadata !DIExpression()) #28, !dbg !974
  call void @llvm.dbg.value(metadata i64 %50, metadata !988, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !993, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %31, metadata !994, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata i8** %39, metadata !995, metadata !DIExpression()) #28, !dbg !1003
  %52 = call zeroext i1 @hard_locale(i32 2) #28, !dbg !1005
  %53 = select i1 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), !dbg !1007
  %54 = select i1 %52, i32 16, i32 12, !dbg !1007
  store i8* %53, i8** @time_format, align 8, !dbg !1008, !tbaa !778
  store i32 %54, i32* @time_format_width, align 4, !dbg !1008, !tbaa !948
  %55 = load i1, i1* @include_heading, align 1, !dbg !1009
  br i1 %55, label %89, label %56, !dbg !1011

56:                                               ; preds = %49
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5) #28, !dbg !1012
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %57) #28, !dbg !1012
  %59 = load i1, i1* @include_fullname, align 1, !dbg !1017
  br i1 %59, label %63, label %60, !dbg !1019

60:                                               ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 5) #28, !dbg !1020
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %61) #28, !dbg !1020
  br label %63, !dbg !1020

63:                                               ; preds = %60, %56
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 5) #28, !dbg !1021
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* %64) #28, !dbg !1021
  %66 = load i1, i1* @include_idle, align 1, !dbg !1022
  br i1 %66, label %70, label %67, !dbg !1024

67:                                               ; preds = %63
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 5) #28, !dbg !1025
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %68) #28, !dbg !1025
  br label %70, !dbg !1025

70:                                               ; preds = %67, %63
  %71 = load i32, i32* @time_format_width, align 4, !dbg !1026, !tbaa !948
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 5) #28, !dbg !1026
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %71, i8* %72) #28, !dbg !1026
  %74 = load i1, i1* @include_where, align 1, !dbg !1027
  br i1 %74, label %78, label %75, !dbg !1029

75:                                               ; preds = %70
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 5) #28, !dbg !1030
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %76) #28, !dbg !1030
  br label %78, !dbg !1030

78:                                               ; preds = %75, %70
  call void @llvm.dbg.value(metadata i32 10, metadata !1031, metadata !DIExpression()) #28, !dbg !1037
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1039, !tbaa !778
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5, !dbg !1039
  %81 = load i8*, i8** %80, align 8, !dbg !1039, !tbaa !1040
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6, !dbg !1039
  %83 = load i8*, i8** %82, align 8, !dbg !1039, !tbaa !1043
  %84 = icmp ult i8* %81, %83, !dbg !1039
  br i1 %84, label %87, label %85, !dbg !1039, !prof !1044

85:                                               ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* nonnull %79, i32 10) #28, !dbg !1039
  br label %89, !dbg !1039

87:                                               ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1039
  store i8* %88, i8** %80, align 8, !dbg !1039, !tbaa !1040
  store i8 10, i8* %81, align 1, !dbg !1039, !tbaa !1045
  br label %89, !dbg !1039

89:                                               ; preds = %87, %85, %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !988, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !993, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %50, metadata !988, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1003
  %90 = icmp eq i64 %50, 0, !dbg !1046
  br i1 %90, label %121, label %91, !dbg !1046

91:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %50, metadata !988, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1003
  %92 = icmp sgt i32 %31, 0
  %93 = zext i32 %31 to i64
  br label %94, !dbg !1046

94:                                               ; preds = %118, %91
  %95 = phi i64 [ %50, %91 ], [ %97, %118 ]
  %96 = phi %struct.utmpx* [ %51, %91 ], [ %119, %118 ]
  %97 = add i64 %95, -1, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.utmpx* %96, metadata !993, metadata !DIExpression()) #28, !dbg !1003
  %98 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 4, i64 0, !dbg !1048
  %99 = load i8, i8* %98, align 4, !dbg !1048, !tbaa !1045
  %100 = icmp eq i8 %99, 0, !dbg !1048
  br i1 %100, label %118, label %101, !dbg !1048

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 0, !dbg !1048
  %103 = load i16, i16* %102, align 4, !dbg !1048, !tbaa !1049
  %104 = icmp eq i16 %103, 7, !dbg !1048
  br i1 %104, label %105, label %118, !dbg !1053

105:                                              ; preds = %101
  br i1 %33, label %117, label %106, !dbg !1054

106:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()) #28, !dbg !1055
  br i1 %92, label %109, label %118, !dbg !1056

107:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 %115, metadata !996, metadata !DIExpression()) #28, !dbg !1055
  %108 = icmp eq i64 %115, %93, !dbg !1057
  br i1 %108, label %118, label %109, !dbg !1056, !llvm.loop !1059

109:                                              ; preds = %106, %107
  %110 = phi i64 [ %115, %107 ], [ 0, %106 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !996, metadata !DIExpression()) #28, !dbg !1055
  %111 = getelementptr inbounds i8*, i8** %39, i64 %110, !dbg !1061
  %112 = load i8*, i8** %111, align 8, !dbg !1061, !tbaa !778
  %113 = call i32 @strncmp(i8* nonnull %98, i8* nonnull dereferenceable(1) %112, i64 32) #29, !dbg !1061
  %114 = icmp eq i32 %113, 0, !dbg !1061
  %115 = add nuw nsw i64 %110, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %115, metadata !996, metadata !DIExpression()) #28, !dbg !1055
  br i1 %114, label %116, label %107, !dbg !1064

116:                                              ; preds = %109
  call fastcc void @print_entry(%struct.utmpx* %96) #28, !dbg !1065
  br label %118, !dbg !1067

117:                                              ; preds = %105
  call fastcc void @print_entry(%struct.utmpx* nonnull %96) #28, !dbg !1068
  br label %118

118:                                              ; preds = %107, %117, %116, %106, %101, %94
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 1, !dbg !1069
  call void @llvm.dbg.value(metadata %struct.utmpx* %119, metadata !993, metadata !DIExpression()) #28, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %97, metadata !988, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1003
  %120 = icmp eq i64 %97, 0, !dbg !1046
  br i1 %120, label %121, label %94, !dbg !1046, !llvm.loop !1070

121:                                              ; preds = %118, %89
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #28, !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #28, !dbg !1072
  br label %254, !dbg !1073

122:                                              ; preds = %37
  call void @llvm.dbg.value(metadata i32 %31, metadata !1074, metadata !DIExpression()) #28, !dbg !1082
  call void @llvm.dbg.value(metadata i8** %39, metadata !1079, metadata !DIExpression()) #28, !dbg !1082
  call void @llvm.dbg.value(metadata i32 0, metadata !1080, metadata !DIExpression()) #28, !dbg !1084
  %123 = icmp sgt i32 %31, 0, !dbg !1085
  br i1 %123, label %124, label %254, !dbg !1087

124:                                              ; preds = %122
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %127 = zext i32 %31 to i64, !dbg !1085
  br label %128, !dbg !1087

128:                                              ; preds = %251, %124
  %129 = phi i64 [ 0, %124 ], [ %252, %251 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1080, metadata !DIExpression()) #28, !dbg !1084
  %130 = getelementptr inbounds i8*, i8** %39, i64 %129, !dbg !1088
  %131 = load i8*, i8** %130, align 8, !dbg !1088, !tbaa !778
  call void @llvm.dbg.value(metadata i8* %131, metadata !1089, metadata !DIExpression()) #28, !dbg !1142
  %132 = tail call %struct.passwd* @getpwnam(i8* %131) #28, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.passwd* %132, metadata !1092, metadata !DIExpression()) #28, !dbg !1142
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i32 5) #28, !dbg !1145
  %134 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %133) #28, !dbg !1145
  %135 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %131) #28, !dbg !1146
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 5) #28, !dbg !1147
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %136) #28, !dbg !1147
  %138 = icmp eq %struct.passwd* %132, null, !dbg !1148
  br i1 %138, label %139, label %142, !dbg !1149

139:                                              ; preds = %128
  %140 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #28, !dbg !1150
  %141 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %140) #28, !dbg !1150
  br label %251, !dbg !1152

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 4, !dbg !1153
  %144 = load i8*, i8** %143, align 8, !dbg !1153, !tbaa !1154
  %145 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %144, i32 44) #29, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %145, metadata !1106, metadata !DIExpression()) #28, !dbg !1157
  %146 = icmp eq i8* %145, null, !dbg !1158
  br i1 %146, label %149, label %147, !dbg !1160

147:                                              ; preds = %142
  store i8 0, i8* %145, align 1, !dbg !1161, !tbaa !1045
  %148 = load i8*, i8** %143, align 8, !dbg !1162, !tbaa !1154
  br label %149, !dbg !1163

149:                                              ; preds = %147, %142
  %150 = phi i8* [ %148, %147 ], [ %144, %142 ], !dbg !1162
  %151 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 0, !dbg !1164
  %152 = load i8*, i8** %151, align 8, !dbg !1164, !tbaa !1165
  %153 = tail call fastcc i8* @create_fullname(i8* %150, i8* %152) #28, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %153, metadata !1109, metadata !DIExpression()) #28, !dbg !1157
  %154 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %153) #28, !dbg !1167
  tail call void @free(i8* %153) #28, !dbg !1168
  call void @llvm.dbg.value(metadata i32 10, metadata !1031, metadata !DIExpression()) #28, !dbg !1169
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !778
  %156 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 5, !dbg !1171
  %157 = load i8*, i8** %156, align 8, !dbg !1171, !tbaa !1040
  %158 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 6, !dbg !1171
  %159 = load i8*, i8** %158, align 8, !dbg !1171, !tbaa !1043
  %160 = icmp ult i8* %157, %159, !dbg !1171
  br i1 %160, label %163, label %161, !dbg !1171, !prof !1044

161:                                              ; preds = %149
  %162 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %155, i32 10) #28, !dbg !1171
  br label %165, !dbg !1171

163:                                              ; preds = %149
  %164 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1171
  store i8* %164, i8** %156, align 8, !dbg !1171, !tbaa !1040
  store i8 10, i8* %157, align 1, !dbg !1171, !tbaa !1045
  br label %165, !dbg !1171

165:                                              ; preds = %163, %161
  %166 = load i1, i1* @include_home_and_shell, align 1, !dbg !1172
  br i1 %166, label %188, label %167, !dbg !1174

167:                                              ; preds = %165
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 5) #28, !dbg !1175
  %169 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %168) #28, !dbg !1175
  %170 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1177
  %171 = load i8*, i8** %170, align 8, !dbg !1177, !tbaa !1178
  %172 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* %171) #28, !dbg !1177
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #28, !dbg !1179
  %174 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %173) #28, !dbg !1179
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 6, !dbg !1180
  %176 = load i8*, i8** %175, align 8, !dbg !1180, !tbaa !1181
  %177 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %176) #28, !dbg !1180
  call void @llvm.dbg.value(metadata i32 10, metadata !1031, metadata !DIExpression()) #28, !dbg !1182
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1184, !tbaa !778
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 5, !dbg !1184
  %180 = load i8*, i8** %179, align 8, !dbg !1184, !tbaa !1040
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 6, !dbg !1184
  %182 = load i8*, i8** %181, align 8, !dbg !1184, !tbaa !1043
  %183 = icmp ult i8* %180, %182, !dbg !1184
  br i1 %183, label %186, label %184, !dbg !1184, !prof !1044

184:                                              ; preds = %167
  %185 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %178, i32 10) #28, !dbg !1184
  br label %188, !dbg !1184

186:                                              ; preds = %167
  %187 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !1184
  store i8* %187, i8** %179, align 8, !dbg !1184, !tbaa !1040
  store i8 10, i8* %180, align 1, !dbg !1184, !tbaa !1045
  br label %188, !dbg !1184

188:                                              ; preds = %186, %184, %165
  %189 = load i1, i1* @include_project, align 1, !dbg !1185
  br i1 %189, label %214, label %190, !dbg !1186

190:                                              ; preds = %188
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %125) #28, !dbg !1187
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !1116, metadata !DIExpression()) #28, !dbg !1188
  %191 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1189
  %192 = load i8*, i8** %191, align 8, !dbg !1189, !tbaa !1178
  %193 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %192) #29, !dbg !1190
  %194 = add i64 %193, 10, !dbg !1191
  %195 = tail call noalias i8* @xmalloc(i64 %194) #28, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %195, metadata !1121, metadata !DIExpression()) #28, !dbg !1193
  %196 = load i8*, i8** %191, align 8, !dbg !1194, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %195, metadata !1195, metadata !DIExpression()) #28, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %196, metadata !1203, metadata !DIExpression()) #28, !dbg !1204
  %197 = call i8* @stpcpy(i8* %195, i8* %196), !dbg !1206
  call void @llvm.dbg.value(metadata i8* %197, metadata !1195, metadata !DIExpression()) #28, !dbg !1207
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), metadata !1203, metadata !DIExpression()) #28, !dbg !1207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(10) %197, i8* nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 10, i1 false) #28, !dbg !1209
  %198 = tail call %struct._IO_FILE* @fopen(i8* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #28, !dbg !1210
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %198, metadata !1110, metadata !DIExpression()) #28, !dbg !1193
  %199 = icmp eq %struct._IO_FILE* %198, null, !dbg !1211
  br i1 %199, label %213, label %200, !dbg !1212

200:                                              ; preds = %190
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 5) #28, !dbg !1213
  %202 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %201) #28, !dbg !1213
  %203 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %198) #28, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %203, metadata !1122, metadata !DIExpression()) #28, !dbg !1215
  %204 = icmp eq i64 %203, 0, !dbg !1216
  br i1 %204, label %211, label %205, !dbg !1217

205:                                              ; preds = %200, %205
  %206 = phi i64 [ %209, %205 ], [ %203, %200 ]
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1218, !tbaa !778
  %208 = call i64 @fwrite_unlocked(i8* nonnull %125, i64 1, i64 %206, %struct._IO_FILE* %207) #28, !dbg !1218
  %209 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %198) #28, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %209, metadata !1122, metadata !DIExpression()) #28, !dbg !1215
  %210 = icmp eq i64 %209, 0, !dbg !1216
  br i1 %210, label %211, label %205, !dbg !1217, !llvm.loop !1219

211:                                              ; preds = %205, %200
  %212 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %198) #28, !dbg !1220
  br label %213, !dbg !1221

213:                                              ; preds = %211, %190
  tail call void @free(i8* %195) #28, !dbg !1222
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %125) #28, !dbg !1223
  br label %214, !dbg !1224

214:                                              ; preds = %213, %188
  %215 = load i1, i1* @include_plan, align 1, !dbg !1225
  br i1 %215, label %240, label %216, !dbg !1226

216:                                              ; preds = %214
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %126) #28, !dbg !1227
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1132, metadata !DIExpression()) #28, !dbg !1228
  %217 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1229
  %218 = load i8*, i8** %217, align 8, !dbg !1229, !tbaa !1178
  %219 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %218) #29, !dbg !1230
  %220 = add i64 %219, 7, !dbg !1231
  %221 = tail call noalias i8* @xmalloc(i64 %220) #28, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %221, metadata !1134, metadata !DIExpression()) #28, !dbg !1233
  %222 = load i8*, i8** %217, align 8, !dbg !1234, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %221, metadata !1195, metadata !DIExpression()) #28, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %222, metadata !1203, metadata !DIExpression()) #28, !dbg !1235
  %223 = call i8* @stpcpy(i8* %221, i8* %222), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %223, metadata !1195, metadata !DIExpression()) #28, !dbg !1238
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), metadata !1203, metadata !DIExpression()) #28, !dbg !1238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(7) %223, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 7, i1 false) #28, !dbg !1240
  %224 = tail call %struct._IO_FILE* @fopen(i8* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #28, !dbg !1241
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %224, metadata !1129, metadata !DIExpression()) #28, !dbg !1233
  %225 = icmp eq %struct._IO_FILE* %224, null, !dbg !1242
  br i1 %225, label %239, label %226, !dbg !1243

226:                                              ; preds = %216
  %227 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 5) #28, !dbg !1244
  %228 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %227) #28, !dbg !1244
  %229 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %224) #28, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %229, metadata !1135, metadata !DIExpression()) #28, !dbg !1246
  %230 = icmp eq i64 %229, 0, !dbg !1247
  br i1 %230, label %237, label %231, !dbg !1248

231:                                              ; preds = %226, %231
  %232 = phi i64 [ %235, %231 ], [ %229, %226 ]
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1249, !tbaa !778
  %234 = call i64 @fwrite_unlocked(i8* nonnull %126, i64 1, i64 %232, %struct._IO_FILE* %233) #28, !dbg !1249
  %235 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %224) #28, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %235, metadata !1135, metadata !DIExpression()) #28, !dbg !1246
  %236 = icmp eq i64 %235, 0, !dbg !1247
  br i1 %236, label %237, label %231, !dbg !1248, !llvm.loop !1250

237:                                              ; preds = %231, %226
  %238 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %224) #28, !dbg !1251
  br label %239, !dbg !1252

239:                                              ; preds = %237, %216
  tail call void @free(i8* %221) #28, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %126) #28, !dbg !1254
  br label %240, !dbg !1255

240:                                              ; preds = %239, %214
  call void @llvm.dbg.value(metadata i32 10, metadata !1031, metadata !DIExpression()) #28, !dbg !1256
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1258, !tbaa !778
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %241, i64 0, i32 5, !dbg !1258
  %243 = load i8*, i8** %242, align 8, !dbg !1258, !tbaa !1040
  %244 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %241, i64 0, i32 6, !dbg !1258
  %245 = load i8*, i8** %244, align 8, !dbg !1258, !tbaa !1043
  %246 = icmp ult i8* %243, %245, !dbg !1258
  br i1 %246, label %249, label %247, !dbg !1258, !prof !1044

247:                                              ; preds = %240
  %248 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %241, i32 10) #28, !dbg !1258
  br label %251, !dbg !1258

249:                                              ; preds = %240
  %250 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1258
  store i8* %250, i8** %242, align 8, !dbg !1258, !tbaa !1040
  store i8 10, i8* %243, align 1, !dbg !1258, !tbaa !1045
  br label %251, !dbg !1258

251:                                              ; preds = %249, %247, %139
  %252 = add nuw nsw i64 %129, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %252, metadata !1080, metadata !DIExpression()) #28, !dbg !1084
  %253 = icmp eq i64 %252, %127, !dbg !1085
  br i1 %253, label %254, label %128, !dbg !1087, !llvm.loop !1260

254:                                              ; preds = %251, %122, %121
  ret i32 0, !dbg !1262
}

; Function Attrs: nounwind
declare !dbg !1263 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1266 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1269 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1274 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1278 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_entry(%struct.utmpx* %0) unnamed_addr #8 !dbg !1282 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [38 x i8], align 16
  %5 = alloca [33 x i8], align 16
  %6 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !1286, metadata !DIExpression()), !dbg !1342
  %7 = bitcast %struct.stat* %3 to i8*, !dbg !1343
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #28, !dbg !1343
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1287, metadata !DIExpression()), !dbg !1344
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 0, !dbg !1345
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %8) #28, !dbg !1345
  call void @llvm.dbg.declare(metadata [38 x i8]* %4, metadata !1321, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i8* %8, metadata !1325, metadata !DIExpression()), !dbg !1342
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 0, !dbg !1347
  %10 = load i8, i8* %9, align 4, !dbg !1347, !tbaa !1045
  %11 = icmp eq i8 %10, 47, !dbg !1347
  br i1 %11, label %14, label %12, !dbg !1349

12:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %8, metadata !1195, metadata !DIExpression()) #28, !dbg !1350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), metadata !1203, metadata !DIExpression()) #28, !dbg !1350
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 5, !dbg !1352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(6) %8, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6, i1 false), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %13, metadata !1325, metadata !DIExpression()), !dbg !1342
  br label %14, !dbg !1353

14:                                               ; preds = %12, %1
  %15 = phi i8* [ %8, %1 ], [ %13, %12 ], !dbg !1342
  call void @llvm.dbg.value(metadata i8* %15, metadata !1325, metadata !DIExpression()), !dbg !1342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354), !dbg !1357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %15, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %9, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 32, metadata !1366, metadata !DIExpression()), !dbg !1368
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 32, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %16, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %15, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %9, metadata !1365, metadata !DIExpression()), !dbg !1368
  %17 = icmp eq i8 %10, 0, !dbg !1371
  br i1 %17, label %28, label %18, !dbg !1372

18:                                               ; preds = %14, %25
  %19 = phi i8* [ %22, %25 ], [ %9, %14 ]
  %20 = phi i8* [ %23, %25 ], [ %15, %14 ]
  %21 = phi i8 [ %26, %25 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %20, metadata !1360, metadata !DIExpression()), !dbg !1368
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %22, metadata !1365, metadata !DIExpression()), !dbg !1368
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %23, metadata !1360, metadata !DIExpression()), !dbg !1368
  store i8 %21, i8* %20, align 1, !dbg !1375, !tbaa !1045, !alias.scope !1354, !noalias !1358
  %24 = icmp ult i8* %22, %16, !dbg !1376
  br i1 %24, label %25, label %28, !dbg !1371, !llvm.loop !1377

25:                                               ; preds = %18
  %26 = load i8, i8* %22, align 1, !dbg !1378, !tbaa !1045, !alias.scope !1358, !noalias !1354
  call void @llvm.dbg.value(metadata i8* %23, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %22, metadata !1365, metadata !DIExpression()), !dbg !1368
  %27 = icmp eq i8 %26, 0, !dbg !1371
  br i1 %27, label %28, label %18, !dbg !1372

28:                                               ; preds = %18, %25, %14
  %29 = phi i8* [ %15, %14 ], [ %23, %25 ], [ %23, %18 ]
  store i8 0, i8* %29, align 1, !dbg !1379, !tbaa !1045, !alias.scope !1354, !noalias !1358
  %30 = call i32 @stat(i8* nonnull %8, %struct.stat* nonnull %3) #28, !dbg !1380
  %31 = icmp eq i32 %30, 0, !dbg !1382
  br i1 %31, label %32, label %40, !dbg !1383

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1384
  %34 = load i32, i32* %33, align 8, !dbg !1384, !tbaa !1386
  %35 = and i32 %34, 16, !dbg !1389
  %36 = icmp eq i32 %35, 0, !dbg !1390
  %37 = select i1 %36, i32 42, i32 32, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %37, metadata !1320, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1342
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 11, i32 0, !dbg !1391
  %39 = load i64, i64* %38, align 8, !dbg !1391, !tbaa !1392
  call void @llvm.dbg.value(metadata i64 %39, metadata !1319, metadata !DIExpression()), !dbg !1342
  br label %40, !dbg !1393

40:                                               ; preds = %28, %32
  %41 = phi i32 [ %37, %32 ], [ 63, %28 ]
  %42 = phi i64 [ %39, %32 ], [ 0, %28 ], !dbg !1394
  call void @llvm.dbg.value(metadata i64 %42, metadata !1319, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i8 undef, metadata !1320, metadata !DIExpression()), !dbg !1342
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !1395
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 32, i8* nonnull %43) #28, !dbg !1395
  %45 = load i1, i1* @include_fullname, align 1, !dbg !1396
  br i1 %45, label %79, label %46, !dbg !1397

46:                                               ; preds = %40
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %47) #28, !dbg !1398
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !1329, metadata !DIExpression()), !dbg !1399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400), !dbg !1403
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404), !dbg !1403
  call void @llvm.dbg.value(metadata i8* %47, metadata !1360, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %43, metadata !1365, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 32, metadata !1366, metadata !DIExpression()), !dbg !1406
  %48 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 32, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %48, metadata !1367, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %47, metadata !1360, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %43, metadata !1365, metadata !DIExpression()), !dbg !1406
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi i8* [ %56, %54 ], [ %47, %46 ]
  %51 = phi i8* [ %55, %54 ], [ %43, %46 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1360, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %51, metadata !1365, metadata !DIExpression()), !dbg !1406
  %52 = load i8, i8* %51, align 1, !dbg !1409, !tbaa !1045, !alias.scope !1404, !noalias !1400
  %53 = icmp eq i8 %52, 0, !dbg !1410
  br i1 %53, label %58, label %54, !dbg !1411

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %55, metadata !1365, metadata !DIExpression()), !dbg !1406
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %56, metadata !1360, metadata !DIExpression()), !dbg !1406
  store i8 %52, i8* %50, align 1, !dbg !1414, !tbaa !1045, !alias.scope !1400, !noalias !1404
  %57 = icmp ult i8* %55, %48, !dbg !1415
  br i1 %57, label %49, label %58, !dbg !1410, !llvm.loop !1416

58:                                               ; preds = %49, %54
  %59 = phi i8* [ %56, %54 ], [ %50, %49 ]
  store i8 0, i8* %59, align 1, !dbg !1417, !tbaa !1045, !alias.scope !1400, !noalias !1404
  %60 = call %struct.passwd* @getpwnam(i8* nonnull %47), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.passwd* %60, metadata !1326, metadata !DIExpression()), !dbg !1419
  %61 = icmp eq %struct.passwd* %60, null, !dbg !1420
  br i1 %61, label %62, label %65, !dbg !1421

62:                                               ; preds = %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #28, !dbg !1422
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* %63) #28, !dbg !1422
  br label %78, !dbg !1422

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 4, !dbg !1423
  %67 = load i8*, i8** %66, align 8, !dbg !1423, !tbaa !1154
  %68 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %67, i32 44) #29, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %68, metadata !1330, metadata !DIExpression()), !dbg !1425
  %69 = icmp eq i8* %68, null, !dbg !1426
  br i1 %69, label %72, label %70, !dbg !1428

70:                                               ; preds = %65
  store i8 0, i8* %68, align 1, !dbg !1429, !tbaa !1045
  %71 = load i8*, i8** %66, align 8, !dbg !1430, !tbaa !1154
  br label %72, !dbg !1431

72:                                               ; preds = %70, %65
  %73 = phi i8* [ %71, %70 ], [ %67, %65 ], !dbg !1430
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 0, !dbg !1432
  %75 = load i8*, i8** %74, align 8, !dbg !1432, !tbaa !1165
  %76 = tail call fastcc i8* @create_fullname(i8* %73, i8* %75), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %76, metadata !1333, metadata !DIExpression()), !dbg !1425
  %77 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %76) #28, !dbg !1434
  tail call void @free(i8* %76) #28, !dbg !1435
  br label %78

78:                                               ; preds = %72, %62
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %47) #28, !dbg !1436
  br label %79, !dbg !1437

79:                                               ; preds = %78, %40
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 %41, i32 32, i8* nonnull %9) #28, !dbg !1438
  %81 = load i1, i1* @include_idle, align 1, !dbg !1439
  br i1 %81, label %113, label %82, !dbg !1441

82:                                               ; preds = %79
  %83 = icmp eq i64 %42, 0, !dbg !1442
  br i1 %83, label %110, label %84, !dbg !1445

84:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 %42, metadata !84, metadata !DIExpression()) #28, !dbg !1446
  %85 = load i64, i64* @idle_string.now, align 8, !dbg !1448, !tbaa !985
  %86 = icmp eq i64 %85, 0, !dbg !1450
  br i1 %86, label %87, label %90, !dbg !1451

87:                                               ; preds = %84
  %88 = tail call i64 @time(i64* nonnull @idle_string.now) #28, !dbg !1452
  %89 = load i64, i64* @idle_string.now, align 8, !dbg !1453, !tbaa !985
  br label %90, !dbg !1452

90:                                               ; preds = %87, %84
  %91 = phi i64 [ %89, %87 ], [ %85, %84 ], !dbg !1453
  %92 = sub nsw i64 %91, %42, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %92, metadata !85, metadata !DIExpression()) #28, !dbg !1446
  %93 = icmp slt i64 %92, 60, !dbg !1455
  br i1 %93, label %107, label %94, !dbg !1457

94:                                               ; preds = %90
  %95 = icmp slt i64 %92, 86400, !dbg !1458
  br i1 %95, label %96, label %104, !dbg !1459

96:                                               ; preds = %94
  %97 = trunc i64 %92 to i32, !dbg !1460
  %98 = udiv i32 %97, 3600, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %98, metadata !86, metadata !DIExpression()) #28, !dbg !1461
  %99 = urem i32 %97, 3600, !dbg !1462
  %100 = trunc i32 %99 to i16, !dbg !1463
  %101 = udiv i16 %100, 60, !dbg !1463
  %102 = zext i16 %101 to i32, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %102, metadata !89, metadata !DIExpression()) #28, !dbg !1461
  %103 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %98, i32 %102) #28, !dbg !1465
  br label %107, !dbg !1466

104:                                              ; preds = %94
  %105 = udiv i64 %92, 86400, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %105, metadata !90, metadata !DIExpression()) #28, !dbg !1468
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %105) #28, !dbg !1469
  br label %107

107:                                              ; preds = %90, %96, %104
  %108 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %90 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %104 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %96 ], !dbg !1446
  %109 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %108) #28, !dbg !1470
  br label %113, !dbg !1470

110:                                              ; preds = %82
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 5) #28, !dbg !1471
  %112 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %111) #28, !dbg !1471
  br label %113

113:                                              ; preds = %107, %110, %79
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !144, metadata !DIExpression()) #28, !dbg !1472
  %114 = bitcast i64* %2 to i8*, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #28, !dbg !1474
  %115 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 8, i32 0, !dbg !1475
  %116 = load i32, i32* %115, align 4, !dbg !1475, !tbaa !1476
  %117 = sext i32 %116 to i64, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %117, metadata !145, metadata !DIExpression()) #28, !dbg !1472
  store i64 %117, i64* %2, align 8, !dbg !1477, !tbaa !985
  call void @llvm.dbg.value(metadata i64* %2, metadata !145, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1472
  %118 = call %struct.tm* @localtime(i64* nonnull %2) #28, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.tm* %118, metadata !146, metadata !DIExpression()) #28, !dbg !1472
  %119 = icmp eq %struct.tm* %118, null, !dbg !1479
  br i1 %119, label %123, label %120, !dbg !1481

120:                                              ; preds = %113
  %121 = load i8*, i8** @time_format, align 8, !dbg !1482, !tbaa !778
  %122 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %121, %struct.tm* nonnull %118) #28, !dbg !1484
  br label %126, !dbg !1485

123:                                              ; preds = %113
  %124 = load i64, i64* %2, align 8, !dbg !1486, !tbaa !985
  call void @llvm.dbg.value(metadata i64 %124, metadata !145, metadata !DIExpression()) #28, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %124, metadata !1487, metadata !DIExpression()) #28, !dbg !1493
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1492, metadata !DIExpression()) #28, !dbg !1493
  %125 = call i8* @imaxtostr(i64 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #28, !dbg !1495
  br label %126, !dbg !1496

126:                                              ; preds = %120, %123
  %127 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %120 ], [ %125, %123 ], !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #28, !dbg !1498
  %128 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %127) #28, !dbg !1499
  %129 = load i1, i1* @include_where, align 1, !dbg !1500
  br i1 %129, label %170, label %130, !dbg !1501

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 0, !dbg !1502
  %132 = load i8, i8* %131, align 4, !dbg !1502, !tbaa !1045
  %133 = icmp eq i8 %132, 0, !dbg !1502
  br i1 %133, label %170, label %134, !dbg !1503

134:                                              ; preds = %130
  %135 = getelementptr inbounds [257 x i8], [257 x i8]* %6, i64 0, i64 0, !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %135) #28, !dbg !1504
  call void @llvm.dbg.declare(metadata [257 x i8]* %6, metadata !1334, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* null, metadata !1340, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8* null, metadata !1341, metadata !DIExpression()), !dbg !1506
  call void @llvm.experimental.noalias.scope.decl(metadata !1507), !dbg !1510
  call void @llvm.experimental.noalias.scope.decl(metadata !1511), !dbg !1510
  call void @llvm.dbg.value(metadata i8* %135, metadata !1360, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %131, metadata !1365, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 256, metadata !1366, metadata !DIExpression()), !dbg !1513
  %136 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 256, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %136, metadata !1367, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %135, metadata !1360, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %131, metadata !1365, metadata !DIExpression()), !dbg !1513
  br label %137, !dbg !1516

137:                                              ; preds = %134, %144
  %138 = phi i8* [ %131, %134 ], [ %141, %144 ]
  %139 = phi i8* [ %135, %134 ], [ %142, %144 ]
  %140 = phi i8 [ %132, %134 ], [ %145, %144 ]
  call void @llvm.dbg.value(metadata i8* %138, metadata !1365, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %139, metadata !1360, metadata !DIExpression()), !dbg !1513
  %141 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %141, metadata !1365, metadata !DIExpression()), !dbg !1513
  %142 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %142, metadata !1360, metadata !DIExpression()), !dbg !1513
  store i8 %140, i8* %139, align 1, !dbg !1519, !tbaa !1045, !alias.scope !1507, !noalias !1511
  %143 = icmp ult i8* %141, %136, !dbg !1520
  br i1 %143, label %144, label %147, !dbg !1521, !llvm.loop !1522

144:                                              ; preds = %137
  %145 = load i8, i8* %141, align 1, !dbg !1523, !tbaa !1045, !alias.scope !1511, !noalias !1507
  call void @llvm.dbg.value(metadata i8* %142, metadata !1360, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %141, metadata !1365, metadata !DIExpression()), !dbg !1513
  %146 = icmp eq i8 %145, 0, !dbg !1521
  br i1 %146, label %147, label %137, !dbg !1516

147:                                              ; preds = %137, %144
  store i8 0, i8* %142, align 1, !dbg !1524, !tbaa !1045, !alias.scope !1507, !noalias !1511
  %148 = call i8* @strchr(i8* nonnull %135, i32 58) #29, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %148, metadata !1341, metadata !DIExpression()), !dbg !1506
  %149 = icmp eq i8* %148, null, !dbg !1526
  br i1 %149, label %152, label %150, !dbg !1528

150:                                              ; preds = %147
  %151 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1529
  call void @llvm.dbg.value(metadata i8* %151, metadata !1341, metadata !DIExpression()), !dbg !1506
  store i8 0, i8* %148, align 1, !dbg !1530, !tbaa !1045
  br label %152, !dbg !1531

152:                                              ; preds = %150, %147
  %153 = phi i8* [ %151, %150 ], [ null, %147 ], !dbg !1506
  call void @llvm.dbg.value(metadata i8* %153, metadata !1341, metadata !DIExpression()), !dbg !1506
  %154 = load i8, i8* %135, align 16, !dbg !1532, !tbaa !1045
  %155 = icmp eq i8 %154, 0, !dbg !1532
  br i1 %155, label %158, label %156, !dbg !1534

156:                                              ; preds = %152
  %157 = call noalias i8* @canon_host(i8* nonnull %135) #28, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %157, metadata !1340, metadata !DIExpression()), !dbg !1506
  br label %158, !dbg !1536

158:                                              ; preds = %156, %152
  %159 = phi i8* [ %157, %156 ], [ null, %152 ], !dbg !1506
  call void @llvm.dbg.value(metadata i8* %159, metadata !1340, metadata !DIExpression()), !dbg !1506
  %160 = icmp eq i8* %159, null, !dbg !1537
  %161 = select i1 %160, i8* %135, i8* %159, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %161, metadata !1340, metadata !DIExpression()), !dbg !1506
  %162 = icmp eq i8* %153, null, !dbg !1540
  br i1 %162, label %165, label %163, !dbg !1542

163:                                              ; preds = %158
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %161, i8* nonnull %153) #28, !dbg !1543
  br label %167, !dbg !1543

165:                                              ; preds = %158
  %166 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %161) #28, !dbg !1544
  br label %167

167:                                              ; preds = %165, %163
  br i1 %160, label %169, label %168, !dbg !1545

168:                                              ; preds = %167
  call void @free(i8* %161) #28, !dbg !1546
  br label %169, !dbg !1546

169:                                              ; preds = %168, %167
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %135) #28, !dbg !1548
  br label %170, !dbg !1549

170:                                              ; preds = %169, %130, %126
  call void @llvm.dbg.value(metadata i32 10, metadata !1031, metadata !DIExpression()) #28, !dbg !1550
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1552, !tbaa !778
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5, !dbg !1552
  %173 = load i8*, i8** %172, align 8, !dbg !1552, !tbaa !1040
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6, !dbg !1552
  %175 = load i8*, i8** %174, align 8, !dbg !1552, !tbaa !1043
  %176 = icmp ult i8* %173, %175, !dbg !1552
  br i1 %176, label %179, label %177, !dbg !1552, !prof !1044

177:                                              ; preds = %170
  %178 = call i32 @__overflow(%struct._IO_FILE* nonnull %171, i32 10) #28, !dbg !1552
  br label %181, !dbg !1552

179:                                              ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !1552
  store i8* %180, i8** %172, align 8, !dbg !1552, !tbaa !1040
  store i8 10, i8* %173, align 1, !dbg !1552, !tbaa !1045
  br label %181, !dbg !1552

181:                                              ; preds = %177, %179
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %8) #28, !dbg !1553
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #28, !dbg !1553
  ret void, !dbg !1553
}

; Function Attrs: nofree nounwind
declare !dbg !1554 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @create_fullname(i8* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #8 !dbg !1557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1559, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1, metadata !1560, metadata !DIExpression()), !dbg !1576
  %3 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %14, metadata !1561, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %0, metadata !1578, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 0, metadata !1583, metadata !DIExpression()), !dbg !1584
  br label %4, !dbg !1586

4:                                                ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %11, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %10, %4 ], !dbg !1584
  call void @llvm.dbg.value(metadata i64 %6, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %5, metadata !1578, metadata !DIExpression()), !dbg !1584
  %7 = load i8, i8* %5, align 1, !dbg !1587, !tbaa !1045
  %8 = icmp eq i8 %7, 38, !dbg !1590
  %9 = zext i1 %8 to i64, !dbg !1591
  %10 = add i64 %6, %9, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %10, metadata !1583, metadata !DIExpression()), !dbg !1584
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %11, metadata !1578, metadata !DIExpression()), !dbg !1584
  %12 = icmp eq i8 %7, 0, !dbg !1593
  br i1 %12, label %13, label %4, !dbg !1593, !llvm.loop !1594

13:                                               ; preds = %4
  %14 = add i64 %3, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %10, metadata !1564, metadata !DIExpression()), !dbg !1576
  %15 = icmp eq i64 %10, 0, !dbg !1597
  br i1 %15, label %26, label %16, !dbg !1598

16:                                               ; preds = %13
  %17 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #29, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %17, metadata !1565, metadata !DIExpression()), !dbg !1600
  %18 = mul i64 %17, %10, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %18, metadata !1568, metadata !DIExpression()), !dbg !1600
  %19 = sub i64 %18, %10, !dbg !1602
  %20 = add i64 %19, %14, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %20, metadata !1561, metadata !DIExpression()), !dbg !1576
  %21 = udiv i64 9223372036854775807, %10, !dbg !1604
  %22 = icmp ult i64 %21, %17, !dbg !1604
  %23 = icmp ult i64 %20, %18
  %24 = or i1 %22, %23, !dbg !1606
  br i1 %24, label %25, label %26, !dbg !1606

25:                                               ; preds = %16
  tail call void @xalloc_die() #30, !dbg !1607
  unreachable, !dbg !1607

26:                                               ; preds = %16, %13
  %27 = phi i64 [ %14, %13 ], [ %20, %16 ], !dbg !1576
  call void @llvm.dbg.value(metadata i64 %27, metadata !1561, metadata !DIExpression()), !dbg !1576
  %28 = tail call noalias i8* @xmalloc(i64 %27) #28, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %28, metadata !1562, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %28, metadata !1563, metadata !DIExpression()), !dbg !1576
  %29 = getelementptr inbounds i8, i8* %1, i64 1
  br label %30, !dbg !1609

30:                                               ; preds = %66, %26
  %31 = phi i8* [ %28, %26 ], [ %67, %66 ], !dbg !1576
  %32 = phi i8* [ %0, %26 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !1559, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %31, metadata !1563, metadata !DIExpression()), !dbg !1576
  %33 = load i8, i8* %32, align 1, !dbg !1610, !tbaa !1045
  switch i8 %33, label %64 [
    i8 0, label %69
    i8 38, label %34
  ], !dbg !1609

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8* %1, metadata !1569, metadata !DIExpression()), !dbg !1611
  %35 = tail call i16** @__ctype_b_loc() #32, !dbg !1612
  %36 = load i16*, i16** %35, align 8, !dbg !1612, !tbaa !778
  %37 = load i8, i8* %1, align 1, !dbg !1612, !tbaa !1045
  %38 = zext i8 %37 to i64, !dbg !1612
  %39 = getelementptr inbounds i16, i16* %36, i64 %38, !dbg !1612
  %40 = load i16, i16* %39, align 2, !dbg !1612, !tbaa !1613
  %41 = and i16 %40, 512, !dbg !1612
  %42 = icmp eq i16 %41, 0, !dbg !1612
  br i1 %42, label %51, label %43, !dbg !1614

43:                                               ; preds = %34
  %44 = tail call i32** @__ctype_toupper_loc() #32, !dbg !1615
  %45 = load i32*, i32** %44, align 8, !dbg !1615, !tbaa !778
  call void @llvm.dbg.value(metadata i8* %29, metadata !1569, metadata !DIExpression()), !dbg !1611
  %46 = getelementptr inbounds i32, i32* %45, i64 %38, !dbg !1615
  %47 = load i32, i32* %46, align 4, !dbg !1615, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %47, metadata !1573, metadata !DIExpression()), !dbg !1617
  %48 = trunc i32 %47 to i8, !dbg !1618
  %49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %49, metadata !1563, metadata !DIExpression()), !dbg !1576
  store i8 %48, i8* %31, align 1, !dbg !1620, !tbaa !1045
  %50 = load i8, i8* %29, align 1, !dbg !1621, !tbaa !1045
  br label %51, !dbg !1622

51:                                               ; preds = %43, %34
  %52 = phi i8 [ %50, %43 ], [ %37, %34 ], !dbg !1621
  %53 = phi i8* [ %49, %43 ], [ %31, %34 ], !dbg !1576
  %54 = phi i8* [ %29, %43 ], [ %1, %34 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8* %54, metadata !1569, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %53, metadata !1563, metadata !DIExpression()), !dbg !1576
  %55 = icmp eq i8 %52, 0, !dbg !1623
  br i1 %55, label %66, label %56, !dbg !1623

56:                                               ; preds = %51, %56
  %57 = phi i8 [ %62, %56 ], [ %52, %51 ]
  %58 = phi i8* [ %60, %56 ], [ %54, %51 ]
  %59 = phi i8* [ %61, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata i8* %58, metadata !1569, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %59, metadata !1563, metadata !DIExpression()), !dbg !1576
  %60 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %60, metadata !1569, metadata !DIExpression()), !dbg !1611
  %61 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %61, metadata !1563, metadata !DIExpression()), !dbg !1576
  store i8 %57, i8* %59, align 1, !dbg !1626, !tbaa !1045
  %62 = load i8, i8* %60, align 1, !dbg !1621, !tbaa !1045
  %63 = icmp eq i8 %62, 0, !dbg !1623
  br i1 %63, label %66, label %56, !dbg !1623, !llvm.loop !1627

64:                                               ; preds = %30
  %65 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1628
  call void @llvm.dbg.value(metadata i8* %65, metadata !1563, metadata !DIExpression()), !dbg !1576
  store i8 %33, i8* %31, align 1, !dbg !1630, !tbaa !1045
  br label %66

66:                                               ; preds = %56, %51, %64
  %67 = phi i8* [ %65, %64 ], [ %53, %51 ], [ %61, %56 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8* %67, metadata !1563, metadata !DIExpression()), !dbg !1576
  %68 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %68, metadata !1559, metadata !DIExpression()), !dbg !1576
  br label %30, !dbg !1609, !llvm.loop !1633

69:                                               ; preds = %30
  store i8 0, i8* %31, align 1, !dbg !1635, !tbaa !1045
  ret i8* %28, !dbg !1636
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #11

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1637 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nofree nounwind
declare !dbg !1642 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1647 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1652 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1657 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8* %0) local_unnamed_addr #8 !dbg !1662 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8* %0, metadata !202, metadata !DIExpression()) #28, !dbg !1666
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !203, metadata !DIExpression()) #28, !dbg !1666
  call void @llvm.dbg.value(metadata i8* null, metadata !204, metadata !DIExpression()) #28, !dbg !1666
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !1668
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #28, !dbg !1668
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !205, metadata !DIExpression()) #28, !dbg !1666
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !1669, !tbaa !778
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1670, !tbaa !1671
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !205, metadata !DIExpression(DW_OP_deref)) #28, !dbg !1666
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #28, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %4, metadata !231, metadata !DIExpression()) #28, !dbg !1666
  %5 = icmp eq i32 %4, 0, !dbg !1674
  br i1 %5, label %6, label %16, !dbg !1676

6:                                                ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !1677, !tbaa !778
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !205, metadata !DIExpression()) #28, !dbg !1666
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !1679
  %9 = load i8*, i8** %8, align 8, !dbg !1679, !tbaa !1680
  %10 = icmp eq i8* %9, null, !dbg !1677
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !1677
  %12 = call noalias i8* @strdup(i8* %11) #28, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %12, metadata !204, metadata !DIExpression()) #28, !dbg !1666
  %13 = icmp eq i8* %12, null, !dbg !1682
  br i1 %13, label %14, label %15, !dbg !1684

14:                                               ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !1685, !tbaa !948
  br label %15, !dbg !1686

15:                                               ; preds = %14, %6
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !205, metadata !DIExpression()) #28, !dbg !1666
  call void @freeaddrinfo(%struct.addrinfo* nonnull %7) #28, !dbg !1687
  br label %17, !dbg !1688

16:                                               ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !1689, !tbaa !948
  br label %17, !dbg !1691

17:                                               ; preds = %15, %16
  %18 = phi i8* [ null, %16 ], [ %12, %15 ], !dbg !1666
  call void @llvm.dbg.value(metadata i8* %18, metadata !204, metadata !DIExpression()) #28, !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #28, !dbg !1692
  ret i8* %18, !dbg !1693
}

declare !dbg !1694 i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1700 void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8* %0, i32* %1) local_unnamed_addr #8 !dbg !198 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !202, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32* %1, metadata !203, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8* null, metadata !204, metadata !DIExpression()), !dbg !1703
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !1704
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !205, metadata !DIExpression()), !dbg !1703
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !1705, !tbaa !778
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !1706, !tbaa !1671
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !205, metadata !DIExpression(DW_OP_deref)), !dbg !1703
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #28, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %5, metadata !231, metadata !DIExpression()), !dbg !1703
  %6 = icmp eq i32 %5, 0, !dbg !1708
  br i1 %6, label %7, label %19, !dbg !1709

7:                                                ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !1710, !tbaa !778
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !205, metadata !DIExpression()), !dbg !1703
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !1711
  %10 = load i8*, i8** %9, align 8, !dbg !1711, !tbaa !1680
  %11 = icmp eq i8* %10, null, !dbg !1710
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !1710
  %13 = call noalias i8* @strdup(i8* %12) #28, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %13, metadata !204, metadata !DIExpression()), !dbg !1703
  %14 = icmp eq i8* %13, null, !dbg !1713
  %15 = icmp ne i32* %1, null
  %16 = and i1 %15, %14, !dbg !1714
  br i1 %16, label %17, label %18, !dbg !1714

17:                                               ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !1715, !tbaa !948
  br label %18, !dbg !1716

18:                                               ; preds = %17, %7
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !205, metadata !DIExpression()), !dbg !1703
  call void @freeaddrinfo(%struct.addrinfo* nonnull %8) #28, !dbg !1717
  br label %22, !dbg !1718

19:                                               ; preds = %2
  %20 = icmp eq i32* %1, null, !dbg !1719
  br i1 %20, label %22, label %21, !dbg !1720

21:                                               ; preds = %19
  store i32 %5, i32* %1, align 4, !dbg !1721, !tbaa !948
  br label %22, !dbg !1722

22:                                               ; preds = %19, %21, %18
  %23 = phi i8* [ null, %21 ], [ null, %19 ], [ %13, %18 ], !dbg !1703
  call void @llvm.dbg.value(metadata i8* %23, metadata !204, metadata !DIExpression()), !dbg !1703
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #28, !dbg !1723
  ret i8* %23, !dbg !1724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #8 !dbg !1725 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !1728, !tbaa !948
  %2 = tail call i8* @gai_strerror(i32 %1) #28, !dbg !1729
  ret i8* %2, !dbg !1730
}

; Function Attrs: nounwind
declare !dbg !1731 i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #15 !dbg !1734 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1736, metadata !DIExpression()), !dbg !1737
  store i8* %0, i8** @file_name, align 8, !dbg !1738, !tbaa !778
  ret void, !dbg !1739
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #15 !dbg !1740 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1744, metadata !DIExpression()), !dbg !1745
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1746, !tbaa !1747
  ret void, !dbg !1749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1750 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1755, !tbaa !778
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1756
  %3 = icmp eq i32 %2, 0, !dbg !1757
  br i1 %3, label %22, label %4, !dbg !1758

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1759, !tbaa !1747, !range !1760
  %6 = icmp eq i8 %5, 0, !dbg !1759
  br i1 %6, label %11, label %7, !dbg !1761

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1762
  %9 = load i32, i32* %8, align 4, !dbg !1762, !tbaa !948
  %10 = icmp eq i32 %9, 32, !dbg !1763
  br i1 %10, label %22, label %11, !dbg !1764

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 5) #28, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %12, metadata !1752, metadata !DIExpression()), !dbg !1766
  %13 = load i8*, i8** @file_name, align 8, !dbg !1767, !tbaa !778
  %14 = icmp eq i8* %13, null, !dbg !1767
  %15 = tail call i32* @__errno_location() #32, !dbg !1769
  %16 = load i32, i32* %15, align 4, !dbg !1769, !tbaa !948
  br i1 %14, label %19, label %17, !dbg !1770

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1771
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1772
  br label %20, !dbg !1772

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.80, i64 0, i64 0), i8* %12) #28, !dbg !1773
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1774, !tbaa !948
  tail call void @_exit(i32 %21) #30, !dbg !1775
  unreachable, !dbg !1775

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1776, !tbaa !778
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1778
  %25 = icmp eq i32 %24, 0, !dbg !1779
  br i1 %25, label %28, label %26, !dbg !1780

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1781, !tbaa !948
  tail call void @_exit(i32 %27) #30, !dbg !1782
  unreachable, !dbg !1782

28:                                               ; preds = %22
  ret void, !dbg !1783
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !1784 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1788, metadata !DIExpression()), !dbg !1790
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !1791
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !1791
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !1789, metadata !DIExpression()), !dbg !1792
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !1793
  %5 = icmp eq i32 %4, 0, !dbg !1793
  br i1 %5, label %6, label %13, !dbg !1795

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !1796
  %8 = load i16, i16* %7, align 16, !dbg !1796
  %9 = icmp eq i16 %8, 67, !dbg !1796
  br i1 %9, label %13, label %10, !dbg !1797

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i64 0, i64 0), i64 6), !dbg !1798
  %12 = icmp ne i32 %11, 0, !dbg !1799
  br label %13, !dbg !1797

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !1790
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !1800
  ret i1 %14, !dbg !1800
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @imaxtostr(i64 %0, i8* %1) local_unnamed_addr #18 !dbg !1801 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()), !dbg !1809
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1810
  call void @llvm.dbg.value(metadata i8* %3, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i8 0, i8* %3, align 1, !dbg !1811, !tbaa !1045
  %4 = icmp slt i64 %0, 0, !dbg !1812
  br i1 %4, label %5, label %17, !dbg !1814

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !1809
  call void @llvm.dbg.value(metadata i8* %7, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %6, metadata !1806, metadata !DIExpression()), !dbg !1809
  %8 = srem i64 %6, 10, !dbg !1815
  %9 = trunc i64 %8 to i8, !dbg !1817
  %10 = sub nsw i8 48, %9, !dbg !1817
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %11, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i8 %10, i8* %11, align 1, !dbg !1819, !tbaa !1045
  %12 = sdiv i64 %6, 10, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %12, metadata !1806, metadata !DIExpression()), !dbg !1809
  %13 = add i64 %6, 9, !dbg !1821
  %14 = icmp ult i64 %13, 19, !dbg !1821
  br i1 %14, label %15, label %5, !dbg !1822, !llvm.loop !1823

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !1826
  call void @llvm.dbg.value(metadata i8* %16, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i8 45, i8* %16, align 1, !dbg !1827, !tbaa !1045
  br label %27, !dbg !1828

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !1809
  call void @llvm.dbg.value(metadata i8* %19, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %18, metadata !1806, metadata !DIExpression()), !dbg !1809
  %20 = srem i64 %18, 10, !dbg !1829
  %21 = trunc i64 %20 to i8, !dbg !1831
  %22 = add nsw i8 %21, 48, !dbg !1831
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1832
  call void @llvm.dbg.value(metadata i8* %23, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i8 %22, i8* %23, align 1, !dbg !1833, !tbaa !1045
  %24 = sdiv i64 %18, 10, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %24, metadata !1806, metadata !DIExpression()), !dbg !1809
  %25 = add i64 %18, 9, !dbg !1835
  %26 = icmp ult i64 %25, 19, !dbg !1835
  br i1 %26, label %27, label %17, !dbg !1836, !llvm.loop !1837

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !1840
  call void @llvm.dbg.value(metadata i8* %28, metadata !1808, metadata !DIExpression()), !dbg !1809
  ret i8* %28, !dbg !1841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1844, metadata !DIExpression()), !dbg !1847
  %2 = icmp eq i8* %0, null, !dbg !1848
  br i1 %2, label %3, label %6, !dbg !1850

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1851, !tbaa !778
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1853
  tail call void @abort() #30, !dbg !1854
  unreachable, !dbg !1854

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %7, metadata !1845, metadata !DIExpression()), !dbg !1847
  %8 = icmp eq i8* %7, null, !dbg !1856
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1857
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %10, metadata !1846, metadata !DIExpression()), !dbg !1847
  %11 = ptrtoint i8* %10 to i64, !dbg !1858
  %12 = ptrtoint i8* %0 to i64, !dbg !1858
  %13 = sub i64 %11, %12, !dbg !1858
  %14 = icmp sgt i64 %13, 6, !dbg !1860
  br i1 %14, label %15, label %24, !dbg !1861

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1862
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #29, !dbg !1863
  %18 = icmp eq i32 %17, 0, !dbg !1864
  br i1 %18, label %19, label %24, !dbg !1865

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1844, metadata !DIExpression()), !dbg !1847
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #29, !dbg !1866
  %21 = icmp eq i32 %20, 0, !dbg !1869
  br i1 %21, label %22, label %24, !dbg !1870

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %23, metadata !1844, metadata !DIExpression()), !dbg !1847
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1873, !tbaa !778
  br label %24, !dbg !1874

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1844, metadata !DIExpression()), !dbg !1847
  store i8* %25, i8** @program_name, align 8, !dbg !1875, !tbaa !778
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1876, !tbaa !778
  ret void, !dbg !1877
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1878 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1883, metadata !DIExpression()), !dbg !1886
  %2 = tail call i32* @__errno_location() #32, !dbg !1887
  %3 = load i32, i32* %2, align 4, !dbg !1887, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %3, metadata !1884, metadata !DIExpression()), !dbg !1886
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1888
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1888
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1888
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1889
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1885, metadata !DIExpression()), !dbg !1886
  store i32 %3, i32* %2, align 4, !dbg !1890, !tbaa !948
  ret %struct.quoting_options* %8, !dbg !1891
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #20 !dbg !1892 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1898, metadata !DIExpression()), !dbg !1899
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1900
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1900
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1901
  %5 = load i32, i32* %4, align 8, !dbg !1901, !tbaa !1902
  ret i32 %5, !dbg !1904
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1905 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %1, metadata !1910, metadata !DIExpression()), !dbg !1911
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1912
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1912
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1913
  store i32 %1, i32* %5, align 8, !dbg !1914, !tbaa !1902
  ret void, !dbg !1915
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #21 !dbg !1916 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1920, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1921, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 %2, metadata !1922, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1923, metadata !DIExpression()), !dbg !1928
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1929
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1929
  %6 = lshr i8 %1, 5, !dbg !1930
  %7 = zext i8 %6 to i64, !dbg !1930
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1931
  call void @llvm.dbg.value(metadata i32* %8, metadata !1924, metadata !DIExpression()), !dbg !1928
  %9 = and i8 %1, 31, !dbg !1932
  %10 = zext i8 %9 to i32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %10, metadata !1926, metadata !DIExpression()), !dbg !1928
  %11 = load i32, i32* %8, align 4, !dbg !1933, !tbaa !948
  %12 = lshr i32 %11, %10, !dbg !1934
  %13 = and i32 %12, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %13, metadata !1927, metadata !DIExpression()), !dbg !1928
  %14 = and i32 %2, 1, !dbg !1936
  %15 = xor i32 %13, %14, !dbg !1937
  %16 = shl i32 %15, %10, !dbg !1938
  %17 = xor i32 %16, %11, !dbg !1939
  store i32 %17, i32* %8, align 4, !dbg !1939, !tbaa !948
  ret i32 %13, !dbg !1940
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #21 !dbg !1941 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %1, metadata !1946, metadata !DIExpression()), !dbg !1948
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1949
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1945, metadata !DIExpression()), !dbg !1948
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1952
  %6 = load i32, i32* %5, align 4, !dbg !1952, !tbaa !1953
  call void @llvm.dbg.value(metadata i32 %6, metadata !1947, metadata !DIExpression()), !dbg !1948
  store i32 %1, i32* %5, align 4, !dbg !1954, !tbaa !1953
  ret i32 %6, !dbg !1955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1956 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1960, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()), !dbg !1963
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1964
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()), !dbg !1963
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1967
  store i32 10, i32* %6, align 8, !dbg !1968, !tbaa !1902
  %7 = icmp ne i8* %1, null, !dbg !1969
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1971
  br i1 %9, label %11, label %10, !dbg !1971

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1972
  unreachable, !dbg !1972

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1973
  store i8* %1, i8** %12, align 8, !dbg !1974, !tbaa !1975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1976
  store i8* %2, i8** %13, align 8, !dbg !1977, !tbaa !1978
  ret void, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1984, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %1, metadata !1985, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %2, metadata !1986, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %3, metadata !1987, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1988, metadata !DIExpression()), !dbg !1992
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1993
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1989, metadata !DIExpression()), !dbg !1992
  %8 = tail call i32* @__errno_location() #32, !dbg !1994
  %9 = load i32, i32* %8, align 4, !dbg !1994, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %9, metadata !1990, metadata !DIExpression()), !dbg !1992
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1995
  %11 = load i32, i32* %10, align 8, !dbg !1995, !tbaa !1902
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1996
  %13 = load i32, i32* %12, align 4, !dbg !1996, !tbaa !1953
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1997
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1998
  %16 = load i8*, i8** %15, align 8, !dbg !1998, !tbaa !1975
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1999
  %18 = load i8*, i8** %17, align 8, !dbg !1999, !tbaa !1978
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2000
  call void @llvm.dbg.value(metadata i64 %19, metadata !1991, metadata !DIExpression()), !dbg !1992
  store i32 %9, i32* %8, align 4, !dbg !2001, !tbaa !948
  ret i64 %19, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2003 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2009, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %1, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %2, metadata !2011, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %3, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %4, metadata !2013, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %5, metadata !2014, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32* %6, metadata !2015, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %7, metadata !2016, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %8, metadata !2017, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* null, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2022, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2076
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !2077
  %14 = icmp eq i64 %13, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i1 %14, metadata !2024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2076
  %15 = lshr i32 %5, 1, !dbg !2079
  %16 = trunc i32 %15 to i8, !dbg !2079
  %17 = and i8 %16, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i8 %17, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2028, metadata !DIExpression()), !dbg !2076
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2080

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2081
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2082
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2083
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2084
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2076
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2085
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2086
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2087
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %38, metadata !2028, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %37, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %36, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %34, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %33, metadata !2023, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %32, metadata !2022, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %31, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %30, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %29, metadata !2017, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %28, metadata !2016, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %27, metadata !2013, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2070), !dbg !2088
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
  ], !dbg !2089

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 5, metadata !2013, metadata !DIExpression()), !dbg !2076
  br label %92, !dbg !2090

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 5, metadata !2013, metadata !DIExpression()), !dbg !2076
  %42 = and i8 %35, 1, !dbg !2092
  %43 = icmp eq i8 %42, 0, !dbg !2092
  br i1 %43, label %44, label %92, !dbg !2090

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2094
  br i1 %45, label %92, label %46, !dbg !2097

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2094, !tbaa !1045
  br label %92, !dbg !2094

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 %27), !dbg !2098
  call void @llvm.dbg.value(metadata i8* %48, metadata !2016, metadata !DIExpression()), !dbg !2076
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 %27), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %49, metadata !2017, metadata !DIExpression()), !dbg !2076
  br label %50, !dbg !2103

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2017, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %51, metadata !2016, metadata !DIExpression()), !dbg !2076
  %53 = and i8 %35, 1, !dbg !2104
  %54 = icmp eq i8 %53, 0, !dbg !2104
  br i1 %54, label %55, label %70, !dbg !2106

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2076
  %56 = load i8, i8* %51, align 1, !dbg !2107, !tbaa !1045
  %57 = icmp eq i8 %56, 0, !dbg !2110
  br i1 %57, label %70, label %58, !dbg !2110

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %61, metadata !2019, metadata !DIExpression()), !dbg !2076
  %62 = icmp ult i64 %61, %39, !dbg !2111
  br i1 %62, label %63, label %65, !dbg !2114

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2111
  store i8 %59, i8* %64, align 1, !dbg !2111, !tbaa !1045
  br label %65, !dbg !2111

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %66, metadata !2019, metadata !DIExpression()), !dbg !2076
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %67, metadata !2021, metadata !DIExpression()), !dbg !2076
  %68 = load i8, i8* %67, align 1, !dbg !2107, !tbaa !1045
  %69 = icmp eq i8 %68, 0, !dbg !2110
  br i1 %69, label %70, label %58, !dbg !2110, !llvm.loop !2116

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2118
  call void @llvm.dbg.value(metadata i64 %71, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %52, metadata !2021, metadata !DIExpression()), !dbg !2076
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %72, metadata !2022, metadata !DIExpression()), !dbg !2076
  br label %92, !dbg !2120

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2076
  br label %74, !dbg !2121

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %75, metadata !2023, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2025, metadata !DIExpression()), !dbg !2076
  br label %76, !dbg !2122

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2084
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %78, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %77, metadata !2023, metadata !DIExpression()), !dbg !2076
  %79 = and i8 %78, 1, !dbg !2123
  %80 = icmp eq i8 %79, 0, !dbg !2123
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2125
  br label %82, !dbg !2125

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2076
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %84, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %83, metadata !2023, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 2, metadata !2013, metadata !DIExpression()), !dbg !2076
  %85 = and i8 %84, 1, !dbg !2126
  %86 = icmp eq i8 %85, 0, !dbg !2126
  br i1 %86, label %87, label %92, !dbg !2128

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2129
  br i1 %88, label %92, label %89, !dbg !2132

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2129, !tbaa !1045
  br label %92, !dbg !2129

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2076
  br label %92, !dbg !2133

91:                                               ; preds = %26
  call void @abort() #30, !dbg !2134
  unreachable, !dbg !2134

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2118
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %40 ], !dbg !2076
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2076
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2076
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %100, metadata !2025, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %99, metadata !2023, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %98, metadata !2022, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %97, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %96, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %94, metadata !2016, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %93, metadata !2013, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 0, metadata !2018, metadata !DIExpression()), !dbg !2076
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
  br label %121, !dbg !2135

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2136
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2118
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2081
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2085
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2086
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2087
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %128, metadata !2028, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %127, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %126, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %125, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %124, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %123, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %122, metadata !2018, metadata !DIExpression()), !dbg !2076
  %130 = icmp eq i64 %125, -1, !dbg !2137
  br i1 %130, label %131, label %135, !dbg !2138

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2139
  %133 = load i8, i8* %132, align 1, !dbg !2139, !tbaa !1045
  %134 = icmp eq i8 %133, 0, !dbg !2140
  br i1 %134, label %587, label %137, !dbg !2141

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2142
  br i1 %136, label %587, label %137, !dbg !2141

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2143
  br i1 %106, label %138, label %153, !dbg !2144

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2146
  %140 = and i1 %107, %130, !dbg !2147
  br i1 %140, label %141, label %143, !dbg !2147

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %142, metadata !2012, metadata !DIExpression()), !dbg !2076
  br label %143, !dbg !2149

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2149
  call void @llvm.dbg.value(metadata i64 %144, metadata !2012, metadata !DIExpression()), !dbg !2076
  %145 = icmp ugt i64 %139, %144, !dbg !2150
  br i1 %145, label %153, label %146, !dbg !2151

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2152
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2153
  %149 = icmp ne i32 %148, 0, !dbg !2154
  %150 = or i1 %149, %109, !dbg !2155
  %151 = xor i1 %149, true, !dbg !2155
  %152 = zext i1 %151 to i8, !dbg !2155
  br i1 %150, label %153, label %646, !dbg !2155

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2143
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8 %156, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %154, metadata !2012, metadata !DIExpression()), !dbg !2076
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2156
  %158 = load i8, i8* %157, align 1, !dbg !2156, !tbaa !1045
  call void @llvm.dbg.value(metadata i8 %158, metadata !2029, metadata !DIExpression()), !dbg !2143
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
  ], !dbg !2157

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2158

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2159

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2143
  %162 = and i8 %126, 1, !dbg !2163
  %163 = icmp eq i8 %162, 0, !dbg !2163
  %164 = and i1 %110, %163, !dbg !2163
  br i1 %164, label %165, label %181, !dbg !2163

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2165
  br i1 %166, label %167, label %169, !dbg !2169

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2165
  store i8 39, i8* %168, align 1, !dbg !2165, !tbaa !1045
  br label %169, !dbg !2165

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %170, metadata !2019, metadata !DIExpression()), !dbg !2076
  %171 = icmp ult i64 %170, %129, !dbg !2170
  br i1 %171, label %172, label %174, !dbg !2173

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2170
  store i8 36, i8* %173, align 1, !dbg !2170, !tbaa !1045
  br label %174, !dbg !2170

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %175, metadata !2019, metadata !DIExpression()), !dbg !2076
  %176 = icmp ult i64 %175, %129, !dbg !2174
  br i1 %176, label %177, label %179, !dbg !2177

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2174
  store i8 39, i8* %178, align 1, !dbg !2174, !tbaa !1045
  br label %179, !dbg !2174

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %180, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %181, !dbg !2178

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2076
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %183, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %182, metadata !2019, metadata !DIExpression()), !dbg !2076
  %184 = icmp ult i64 %182, %129, !dbg !2179
  br i1 %184, label %185, label %187, !dbg !2182

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2179
  store i8 92, i8* %186, align 1, !dbg !2179, !tbaa !1045
  br label %187, !dbg !2179

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %188, metadata !2019, metadata !DIExpression()), !dbg !2076
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2183
  br i1 %191, label %192, label %473, !dbg !2183

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2185
  %194 = load i8, i8* %193, align 1, !dbg !2185, !tbaa !1045
  %195 = add i8 %194, -48, !dbg !2186
  %196 = icmp ult i8 %195, 10, !dbg !2186
  br i1 %196, label %197, label %473, !dbg !2186

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2187
  br i1 %198, label %199, label %201, !dbg !2191

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2187
  store i8 48, i8* %200, align 1, !dbg !2187, !tbaa !1045
  br label %201, !dbg !2187

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %202, metadata !2019, metadata !DIExpression()), !dbg !2076
  %203 = icmp ult i64 %202, %129, !dbg !2192
  br i1 %203, label %204, label %206, !dbg !2195

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2192
  store i8 48, i8* %205, align 1, !dbg !2192, !tbaa !1045
  br label %206, !dbg !2192

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %207, metadata !2019, metadata !DIExpression()), !dbg !2076
  br label %473, !dbg !2196

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2197

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2198

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2199

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2201
  br i1 %214, label %215, label %473, !dbg !2201

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2203
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2204
  %218 = load i8, i8* %217, align 1, !dbg !2204, !tbaa !1045
  %219 = icmp eq i8 %218, 63, !dbg !2205
  br i1 %219, label %220, label %473, !dbg !2206

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2207
  %222 = load i8, i8* %221, align 1, !dbg !2207, !tbaa !1045
  %223 = sext i8 %222 to i32, !dbg !2207
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
  ], !dbg !2208

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2209

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 undef, metadata !2018, metadata !DIExpression()), !dbg !2076
  %226 = icmp ult i64 %123, %129, !dbg !2211
  br i1 %226, label %227, label %229, !dbg !2214

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2211
  store i8 63, i8* %228, align 1, !dbg !2211, !tbaa !1045
  br label %229, !dbg !2211

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %230, metadata !2019, metadata !DIExpression()), !dbg !2076
  %231 = icmp ult i64 %230, %129, !dbg !2215
  br i1 %231, label %232, label %234, !dbg !2218

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2215
  store i8 34, i8* %233, align 1, !dbg !2215, !tbaa !1045
  br label %234, !dbg !2215

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %235, metadata !2019, metadata !DIExpression()), !dbg !2076
  %236 = icmp ult i64 %235, %129, !dbg !2219
  br i1 %236, label %237, label %239, !dbg !2222

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2219
  store i8 34, i8* %238, align 1, !dbg !2219, !tbaa !1045
  br label %239, !dbg !2219

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %240, metadata !2019, metadata !DIExpression()), !dbg !2076
  %241 = icmp ult i64 %240, %129, !dbg !2223
  br i1 %241, label %242, label %244, !dbg !2226

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2223
  store i8 63, i8* %243, align 1, !dbg !2223, !tbaa !1045
  br label %244, !dbg !2223

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %245, metadata !2019, metadata !DIExpression()), !dbg !2076
  br label %473, !dbg !2227

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2033, metadata !DIExpression()), !dbg !2143
  br label %256, !dbg !2228

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2033, metadata !DIExpression()), !dbg !2143
  br label %256, !dbg !2229

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2033, metadata !DIExpression()), !dbg !2143
  br label %254, !dbg !2230

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2033, metadata !DIExpression()), !dbg !2143
  br label %254, !dbg !2231

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2033, metadata !DIExpression()), !dbg !2143
  br label %256, !dbg !2232

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2033, metadata !DIExpression()), !dbg !2143
  br i1 %110, label %252, label %253, !dbg !2233

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2234

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2237

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2239
  call void @llvm.dbg.value(metadata i8 %255, metadata !2033, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.label(metadata !2071), !dbg !2240
  br i1 %111, label %256, label %631, !dbg !2241

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2239
  call void @llvm.dbg.value(metadata i8 %257, metadata !2033, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.label(metadata !2072), !dbg !2243
  br i1 %102, label %495, label %473, !dbg !2244

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2245

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2246, !tbaa !1045
  %261 = icmp eq i8 %260, 0, !dbg !2248
  br i1 %261, label %262, label %473, !dbg !2249

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2250
  br i1 %263, label %264, label %473, !dbg !2252

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2143
  br label %265, !dbg !2253

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8 %266, metadata !2036, metadata !DIExpression()), !dbg !2143
  br i1 %111, label %473, label %631, !dbg !2254

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2143
  br i1 %110, label %268, label %473, !dbg !2256

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2257

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2260
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2262
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2262
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %274, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %273, metadata !2020, metadata !DIExpression()), !dbg !2076
  %275 = icmp ult i64 %123, %274, !dbg !2263
  br i1 %275, label %276, label %278, !dbg !2266

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2263
  store i8 39, i8* %277, align 1, !dbg !2263, !tbaa !1045
  br label %278, !dbg !2263

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %279, metadata !2019, metadata !DIExpression()), !dbg !2076
  %280 = icmp ult i64 %279, %274, !dbg !2267
  br i1 %280, label %281, label %283, !dbg !2270

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2267
  store i8 92, i8* %282, align 1, !dbg !2267, !tbaa !1045
  br label %283, !dbg !2267

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %284, metadata !2019, metadata !DIExpression()), !dbg !2076
  %285 = icmp ult i64 %284, %274, !dbg !2271
  br i1 %285, label %286, label %288, !dbg !2274

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2271
  store i8 39, i8* %287, align 1, !dbg !2271, !tbaa !1045
  br label %288, !dbg !2271

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %289, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %473, !dbg !2275

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2276

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2037, metadata !DIExpression()), !dbg !2277
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2278
  %293 = load i16*, i16** %292, align 8, !dbg !2278, !tbaa !778
  %294 = zext i8 %158 to i64, !dbg !2278
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2278
  %296 = load i16, i16* %295, align 2, !dbg !2278, !tbaa !1613
  %297 = lshr i16 %296, 14, !dbg !2280
  %298 = trunc i16 %297 to i8, !dbg !2280
  %299 = and i8 %298, 1, !dbg !2280
  call void @llvm.dbg.value(metadata i8 %354, metadata !2040, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %355, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2076
  %300 = icmp eq i8 %299, 0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %357, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2143
  br label %359, !dbg !2282

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2283
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2041, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %23, metadata !2285, metadata !DIExpression()) #28, !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()) #28, !dbg !2292
  call void @llvm.dbg.value(metadata i64 8, metadata !2291, metadata !DIExpression()) #28, !dbg !2292
  store i64 0, i64* %10, align 8, !dbg !2294
  call void @llvm.dbg.value(metadata i64 0, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2277
  %302 = icmp eq i64 %154, -1, !dbg !2295
  br i1 %302, label %303, label %305, !dbg !2297

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %304, metadata !2012, metadata !DIExpression()), !dbg !2076
  br label %305, !dbg !2299

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2143
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2076
  br label %307, !dbg !2300

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2301
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %309, metadata !2040, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %308, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2303
  %310 = add i64 %308, %122, !dbg !2304
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2305
  %312 = sub i64 %306, %310, !dbg !2306
  call void @llvm.dbg.value(metadata i32* %12, metadata !2056, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2059, metadata !DIExpression()), !dbg !2307
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2309

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2037, metadata !DIExpression()), !dbg !2277
  %315 = icmp ugt i64 %306, %310, !dbg !2310
  br i1 %315, label %316, label %341, !dbg !2312

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2313
  br label %318, !dbg !2313

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2037, metadata !DIExpression()), !dbg !2277
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2314
  %322 = load i8, i8* %321, align 1, !dbg !2314, !tbaa !1045
  %323 = icmp eq i8 %322, 0, !dbg !2312
  br i1 %323, label %341, label %324, !dbg !2313

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %325, metadata !2037, metadata !DIExpression()), !dbg !2277
  %326 = add i64 %325, %122, !dbg !2316
  %327 = icmp ult i64 %326, %306, !dbg !2310
  br i1 %327, label %318, label %341, !dbg !2312, !llvm.loop !2317

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2318
  call void @llvm.dbg.value(metadata i64 1, metadata !2060, metadata !DIExpression()), !dbg !2319
  br i1 %330, label %331, label %344, !dbg !2318

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2060, metadata !DIExpression()), !dbg !2319
  %333 = add i64 %332, %310, !dbg !2320
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2323
  %335 = load i8, i8* %334, align 1, !dbg !2323, !tbaa !1045
  %336 = sext i8 %335 to i32, !dbg !2323
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2324

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %338, metadata !2060, metadata !DIExpression()), !dbg !2319
  %339 = icmp eq i64 %338, %313, !dbg !2326
  br i1 %339, label %344, label %331, !dbg !2327, !llvm.loop !2328

340:                                              ; preds = %307
  br label %341, !dbg !2330

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2040, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 undef, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2330
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2331, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %345, metadata !2056, metadata !DIExpression()), !dbg !2307
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2333
  %347 = icmp eq i32 %346, 0, !dbg !2333
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2334
  call void @llvm.dbg.value(metadata i8 %348, metadata !2040, metadata !DIExpression()), !dbg !2277
  %349 = add i64 %313, %308, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %349, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2330
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !2336
  %351 = icmp eq i32 %350, 0, !dbg !2337
  br i1 %351, label %307, label %353, !dbg !2338, !llvm.loop !2339

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2040, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 undef, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2341
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2341
  call void @llvm.dbg.value(metadata i8 %354, metadata !2040, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %355, metadata !2037, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2076
  %356 = and i8 %354, 1, !dbg !2281
  %357 = icmp eq i8 %356, 0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %357, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2143
  %358 = icmp ugt i64 %355, 1, !dbg !2342
  br i1 %358, label %367, label %359, !dbg !2282

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2343
  br i1 %364, label %367, label %365, !dbg !2343

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i8 %472, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %371, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2076
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %372, metadata !2067, metadata !DIExpression()), !dbg !2345
  %373 = and i1 %102, %368
  br label %374, !dbg !2346

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2136
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2076
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2085
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2143
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2143
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2347
  call void @llvm.dbg.value(metadata i8 %380, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %379, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %378, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %377, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %376, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2076
  br i1 %373, label %381, label %427, !dbg !2348

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2353

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2143
  %383 = and i8 %377, 1, !dbg !2356
  %384 = icmp eq i8 %383, 0, !dbg !2356
  %385 = and i1 %110, %384, !dbg !2356
  br i1 %385, label %386, label %402, !dbg !2356

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2358
  br i1 %387, label %388, label %390, !dbg !2362

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2358
  store i8 39, i8* %389, align 1, !dbg !2358, !tbaa !1045
  br label %390, !dbg !2358

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %391, metadata !2019, metadata !DIExpression()), !dbg !2076
  %392 = icmp ult i64 %391, %129, !dbg !2363
  br i1 %392, label %393, label %395, !dbg !2366

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2363
  store i8 36, i8* %394, align 1, !dbg !2363, !tbaa !1045
  br label %395, !dbg !2363

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %396, metadata !2019, metadata !DIExpression()), !dbg !2076
  %397 = icmp ult i64 %396, %129, !dbg !2367
  br i1 %397, label %398, label %400, !dbg !2370

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2367
  store i8 39, i8* %399, align 1, !dbg !2367, !tbaa !1045
  br label %400, !dbg !2367

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %401, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %402, !dbg !2371

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2076
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %404, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %403, metadata !2019, metadata !DIExpression()), !dbg !2076
  %405 = icmp ult i64 %403, %129, !dbg !2372
  br i1 %405, label %406, label %408, !dbg !2375

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2372
  store i8 92, i8* %407, align 1, !dbg !2372, !tbaa !1045
  br label %408, !dbg !2372

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %409, metadata !2019, metadata !DIExpression()), !dbg !2076
  %410 = icmp ult i64 %409, %129, !dbg !2376
  br i1 %410, label %411, label %415, !dbg !2379

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2376
  %413 = or i8 %412, 48, !dbg !2376
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2376
  store i8 %413, i8* %414, align 1, !dbg !2376, !tbaa !1045
  br label %415, !dbg !2376

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %416, metadata !2019, metadata !DIExpression()), !dbg !2076
  %417 = icmp ult i64 %416, %129, !dbg !2380
  br i1 %417, label %418, label %423, !dbg !2383

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2380
  %420 = and i8 %419, 7, !dbg !2380
  %421 = or i8 %420, 48, !dbg !2380
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2380
  store i8 %421, i8* %422, align 1, !dbg !2380, !tbaa !1045
  br label %423, !dbg !2380

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %424, metadata !2019, metadata !DIExpression()), !dbg !2076
  %425 = and i8 %378, 7, !dbg !2384
  %426 = or i8 %425, 48, !dbg !2385
  call void @llvm.dbg.value(metadata i8 %426, metadata !2029, metadata !DIExpression()), !dbg !2143
  br label %436, !dbg !2386

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2387
  %429 = icmp eq i8 %428, 0, !dbg !2387
  br i1 %429, label %436, label %430, !dbg !2389

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2390
  br i1 %431, label %432, label %434, !dbg !2394

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2390
  store i8 92, i8* %433, align 1, !dbg !2390, !tbaa !1045
  br label %434, !dbg !2390

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %435, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2143
  br label %436, !dbg !2395

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2076
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2085
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2143
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2143
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2143
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2076
  %442 = add i64 %375, 1, !dbg !2396
  %443 = icmp ugt i64 %372, %442, !dbg !2398
  br i1 %443, label %444, label %471, !dbg !2399

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2400
  %446 = icmp ne i8 %445, 0, !dbg !2400
  %447 = and i8 %441, 1, !dbg !2400
  %448 = icmp eq i8 %447, 0, !dbg !2400
  %449 = and i1 %446, %448, !dbg !2400
  br i1 %449, label %450, label %461, !dbg !2400

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2403
  br i1 %451, label %452, label %454, !dbg !2407

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2403
  store i8 39, i8* %453, align 1, !dbg !2403, !tbaa !1045
  br label %454, !dbg !2403

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %455, metadata !2019, metadata !DIExpression()), !dbg !2076
  %456 = icmp ult i64 %455, %129, !dbg !2408
  br i1 %456, label %457, label %459, !dbg !2411

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2408
  store i8 39, i8* %458, align 1, !dbg !2408, !tbaa !1045
  br label %459, !dbg !2408

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %460, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %461, !dbg !2412

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2413
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %463, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %462, metadata !2019, metadata !DIExpression()), !dbg !2076
  %464 = icmp ult i64 %462, %129, !dbg !2414
  br i1 %464, label %465, label %467, !dbg !2417

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2414
  store i8 %439, i8* %466, align 1, !dbg !2414, !tbaa !1045
  br label %467, !dbg !2414

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %468, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %442, metadata !2018, metadata !DIExpression()), !dbg !2076
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2418
  %470 = load i8, i8* %469, align 1, !dbg !2418, !tbaa !1045
  call void @llvm.dbg.value(metadata i8 %470, metadata !2029, metadata !DIExpression()), !dbg !2143
  br label %374, !dbg !2419, !llvm.loop !2420

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i8 %472, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %371, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2076
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2136
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2076
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2081
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2423
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2076
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2076
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2143
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2143
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2143
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %482, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %481, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %156, metadata !2034, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %480, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %479, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %478, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %477, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %476, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %475, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %474, metadata !2018, metadata !DIExpression()), !dbg !2076
  br i1 %116, label %494, label %484, !dbg !2424

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2426
  %486 = zext i8 %485 to i64, !dbg !2426
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2427
  %488 = load i32, i32* %487, align 4, !dbg !2427, !tbaa !948
  %489 = and i8 %480, 31, !dbg !2428
  %490 = zext i8 %489 to i32, !dbg !2428
  %491 = shl nuw i32 1, %490, !dbg !2429
  %492 = and i32 %488, %491, !dbg !2429
  %493 = icmp eq i32 %492, 0, !dbg !2429
  br i1 %493, label %494, label %495, !dbg !2430

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2431

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2432
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2076
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2081
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2423
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2085
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2086
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2143
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2143
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %503, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %502, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %501, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %500, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %499, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %498, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %497, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %496, metadata !2018, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2073), !dbg !2433
  br i1 %109, label %505, label %635, !dbg !2434

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2143
  %506 = and i8 %500, 1, !dbg !2436
  %507 = icmp eq i8 %506, 0, !dbg !2436
  %508 = and i1 %110, %507, !dbg !2436
  br i1 %508, label %509, label %525, !dbg !2436

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2438
  br i1 %510, label %511, label %513, !dbg !2442

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2438
  store i8 39, i8* %512, align 1, !dbg !2438, !tbaa !1045
  br label %513, !dbg !2438

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %514, metadata !2019, metadata !DIExpression()), !dbg !2076
  %515 = icmp ult i64 %514, %504, !dbg !2443
  br i1 %515, label %516, label %518, !dbg !2446

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2443
  store i8 36, i8* %517, align 1, !dbg !2443, !tbaa !1045
  br label %518, !dbg !2443

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %519, metadata !2019, metadata !DIExpression()), !dbg !2076
  %520 = icmp ult i64 %519, %504, !dbg !2447
  br i1 %520, label %521, label %523, !dbg !2450

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2447
  store i8 39, i8* %522, align 1, !dbg !2447, !tbaa !1045
  br label %523, !dbg !2447

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %524, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %525, !dbg !2451

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2143
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %527, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %526, metadata !2019, metadata !DIExpression()), !dbg !2076
  %528 = icmp ult i64 %526, %504, !dbg !2452
  br i1 %528, label %529, label %531, !dbg !2455

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2452
  store i8 92, i8* %530, align 1, !dbg !2452, !tbaa !1045
  br label %531, !dbg !2452

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %543, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %542, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %541, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %540, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %539, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %538, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %537, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %536, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %535, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %534, metadata !2018, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2074), !dbg !2456
  br label %560, !dbg !2457

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2432
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2076
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2081
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2423
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2085
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2086
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2460
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2143
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2143
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %542, metadata !2036, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %541, metadata !2035, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %540, metadata !2029, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %539, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %538, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %537, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %536, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %535, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %534, metadata !2018, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2074), !dbg !2456
  %544 = and i8 %538, 1, !dbg !2457
  %545 = icmp ne i8 %544, 0, !dbg !2457
  %546 = and i8 %541, 1, !dbg !2457
  %547 = icmp eq i8 %546, 0, !dbg !2457
  %548 = and i1 %545, %547, !dbg !2457
  br i1 %548, label %549, label %560, !dbg !2457

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2461
  br i1 %550, label %551, label %553, !dbg !2465

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2461
  store i8 39, i8* %552, align 1, !dbg !2461, !tbaa !1045
  br label %553, !dbg !2461

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %554, metadata !2019, metadata !DIExpression()), !dbg !2076
  %555 = icmp ult i64 %554, %543, !dbg !2466
  br i1 %555, label %556, label %558, !dbg !2469

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2466
  store i8 39, i8* %557, align 1, !dbg !2466, !tbaa !1045
  br label %558, !dbg !2466

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %559, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2076
  br label %560, !dbg !2470

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2143
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %569, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %568, metadata !2019, metadata !DIExpression()), !dbg !2076
  %570 = icmp ult i64 %568, %561, !dbg !2471
  br i1 %570, label %571, label %573, !dbg !2474

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2471
  store i8 %563, i8* %572, align 1, !dbg !2471, !tbaa !1045
  br label %573, !dbg !2471

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %574, metadata !2019, metadata !DIExpression()), !dbg !2076
  %575 = icmp eq i8 %562, 0, !dbg !2475
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2477
  call void @llvm.dbg.value(metadata i8 %576, metadata !2028, metadata !DIExpression()), !dbg !2076
  br label %577, !dbg !2478

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2432
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2076
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2081
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2423
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2085
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2076
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2087
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %584, metadata !2028, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %583, metadata !2027, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 %582, metadata !2026, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %581, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %580, metadata !2020, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %579, metadata !2019, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %578, metadata !2018, metadata !DIExpression()), !dbg !2076
  %586 = add i64 %578, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %586, metadata !2018, metadata !DIExpression()), !dbg !2076
  br label %121, !dbg !2480, !llvm.loop !2481

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2483
  %590 = and i1 %110, %589, !dbg !2485
  %591 = xor i1 %590, true, !dbg !2485
  %592 = or i1 %109, %591, !dbg !2485
  br i1 %592, label %593, label %635, !dbg !2485

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2486
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2486
  br i1 %597, label %598, label %607, !dbg !2486

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2488
  %600 = icmp eq i8 %599, 0, !dbg !2488
  br i1 %600, label %603, label %601, !dbg !2491

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2492
  br label %652, !dbg !2493

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2494
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2496
  br i1 %606, label %26, label %607, !dbg !2496

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2497
  %610 = and i1 %609, %608, !dbg !2499
  br i1 %610, label %611, label %626, !dbg !2499

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %123, metadata !2019, metadata !DIExpression()), !dbg !2076
  %612 = load i8, i8* %97, align 1, !dbg !2500, !tbaa !1045
  %613 = icmp eq i8 %612, 0, !dbg !2503
  br i1 %613, label %626, label %614, !dbg !2503

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2021, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %617, metadata !2019, metadata !DIExpression()), !dbg !2076
  %618 = icmp ult i64 %617, %129, !dbg !2504
  br i1 %618, label %619, label %621, !dbg !2507

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2504
  store i8 %615, i8* %620, align 1, !dbg !2504, !tbaa !1045
  br label %621, !dbg !2504

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %622, metadata !2019, metadata !DIExpression()), !dbg !2076
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %623, metadata !2021, metadata !DIExpression()), !dbg !2076
  %624 = load i8, i8* %623, align 1, !dbg !2500, !tbaa !1045
  %625 = icmp eq i8 %624, 0, !dbg !2503
  br i1 %625, label %626, label %614, !dbg !2503, !llvm.loop !2509

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2118
  call void @llvm.dbg.value(metadata i64 %627, metadata !2019, metadata !DIExpression()), !dbg !2076
  %628 = icmp ult i64 %627, %129, !dbg !2511
  br i1 %628, label %629, label %652, !dbg !2513

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2514
  store i8 0, i8* %630, align 1, !dbg !2515, !tbaa !1045
  br label %652, !dbg !2514

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %637, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2075), !dbg !2516
  %633 = icmp eq i8 %101, 0, !dbg !2517
  %634 = select i1 %633, i32 2, i32 4, !dbg !2517
  br label %642, !dbg !2517

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2010, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %637, metadata !2012, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.label(metadata !2075), !dbg !2516
  %639 = icmp eq i32 %93, 2, !dbg !2519
  %640 = icmp eq i8 %636, 0, !dbg !2517
  %641 = select i1 %640, i32 2, i32 4, !dbg !2517
  br i1 %639, label %642, label %646, !dbg !2517

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2517

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2013, metadata !DIExpression()), !dbg !2076
  %650 = and i32 %5, -3, !dbg !2520
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2521
  br label %652, !dbg !2522

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2523
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2528, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2529, metadata !DIExpression()), !dbg !2532
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %3, metadata !2530, metadata !DIExpression()), !dbg !2532
  %4 = icmp eq i8* %3, %0, !dbg !2534
  br i1 %4, label %5, label %72, !dbg !2536

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %6, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %6, metadata !2538, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* undef, metadata !2544, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 85, metadata !2545, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 84, metadata !2546, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 70, metadata !2547, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 45, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 56, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2554
  %7 = load i8, i8* %6, align 1, !dbg !2557, !tbaa !1045
  %8 = and i8 %7, -33, !dbg !2557
  %9 = sext i8 %8 to i32, !dbg !2557
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2557

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2559, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* undef, metadata !2564, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 84, metadata !2565, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 70, metadata !2566, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 45, metadata !2567, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 56, metadata !2568, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2573
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2577
  %12 = load i8, i8* %11, align 1, !dbg !2577, !tbaa !1045
  %13 = and i8 %12, -33, !dbg !2577
  %14 = icmp eq i8 %13, 84, !dbg !2577
  br i1 %14, label %15, label %69, !dbg !2577

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2579, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8* undef, metadata !2584, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 70, metadata !2585, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 45, metadata !2586, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 56, metadata !2587, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2592
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2596
  %17 = load i8, i8* %16, align 1, !dbg !2596, !tbaa !1045
  %18 = and i8 %17, -33, !dbg !2596
  %19 = icmp eq i8 %18, 70, !dbg !2596
  br i1 %19, label %20, label %69, !dbg !2596

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2598, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* undef, metadata !2603, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 45, metadata !2604, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 56, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2609, metadata !DIExpression()), !dbg !2610
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2614
  %22 = load i8, i8* %21, align 1, !dbg !2614, !tbaa !1045
  %23 = icmp eq i8 %22, 45, !dbg !2614
  br i1 %23, label %24, label %69, !dbg !2616

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2617, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* undef, metadata !2622, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 56, metadata !2623, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2628
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2632
  %26 = load i8, i8* %25, align 1, !dbg !2632, !tbaa !1045
  %27 = icmp eq i8 %26, 56, !dbg !2632
  br i1 %27, label %28, label %69, !dbg !2634

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2635, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* undef, metadata !2640, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2645
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2649
  %30 = load i8, i8* %29, align 1, !dbg !2649, !tbaa !1045
  %31 = icmp eq i8 %30, 0, !dbg !2649
  br i1 %31, label %32, label %69, !dbg !2651

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2652, !tbaa !1045
  %34 = icmp eq i8 %33, 96, !dbg !2653
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.109, i64 0, i64 0), !dbg !2652
  br label %72, !dbg !2654

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2559, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* undef, metadata !2564, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 66, metadata !2565, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 49, metadata !2566, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 56, metadata !2567, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 48, metadata !2568, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 51, metadata !2569, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 48, metadata !2570, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2655
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2659
  %38 = load i8, i8* %37, align 1, !dbg !2659, !tbaa !1045
  %39 = and i8 %38, -33, !dbg !2659
  %40 = icmp eq i8 %39, 66, !dbg !2659
  br i1 %40, label %41, label %69, !dbg !2659

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2579, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* undef, metadata !2584, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 49, metadata !2585, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 56, metadata !2586, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 48, metadata !2587, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 51, metadata !2588, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 48, metadata !2589, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2660
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2662
  %43 = load i8, i8* %42, align 1, !dbg !2662, !tbaa !1045
  %44 = icmp eq i8 %43, 49, !dbg !2662
  br i1 %44, label %45, label %69, !dbg !2663

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2598, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* undef, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 56, metadata !2604, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 48, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 51, metadata !2606, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 48, metadata !2607, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2609, metadata !DIExpression()), !dbg !2664
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2666
  %47 = load i8, i8* %46, align 1, !dbg !2666, !tbaa !1045
  %48 = icmp eq i8 %47, 56, !dbg !2666
  br i1 %48, label %49, label %69, !dbg !2667

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2617, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* undef, metadata !2622, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 51, metadata !2624, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 48, metadata !2625, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 0, metadata !2626, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2668
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2670
  %51 = load i8, i8* %50, align 1, !dbg !2670, !tbaa !1045
  %52 = icmp eq i8 %51, 48, !dbg !2670
  br i1 %52, label %53, label %69, !dbg !2671

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2635, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* undef, metadata !2640, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 51, metadata !2641, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 48, metadata !2642, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2672
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2674
  %55 = load i8, i8* %54, align 1, !dbg !2674, !tbaa !1045
  %56 = icmp eq i8 %55, 51, !dbg !2674
  br i1 %56, label %57, label %69, !dbg !2675

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2676, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* undef, metadata !2681, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 48, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 0, metadata !2684, metadata !DIExpression()), !dbg !2685
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2689
  %59 = load i8, i8* %58, align 1, !dbg !2689, !tbaa !1045
  %60 = icmp eq i8 %59, 48, !dbg !2689
  br i1 %60, label %61, label %69, !dbg !2691

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2692, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* undef, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2704
  %63 = load i8, i8* %62, align 1, !dbg !2704, !tbaa !1045
  %64 = icmp eq i8 %63, 0, !dbg !2704
  br i1 %64, label %65, label %69, !dbg !2706

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2707, !tbaa !1045
  %67 = icmp eq i8 %66, 96, !dbg !2708
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.111, i64 0, i64 0), !dbg !2707
  br label %72, !dbg !2709

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2710
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !2711
  br label %72, !dbg !2712

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2532
  ret i8* %73, !dbg !2713
}

; Function Attrs: nounwind
declare !dbg !2714 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2718 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()) #28, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()) #28, !dbg !2745
  call void @llvm.dbg.value(metadata i64* null, metadata !2738, metadata !DIExpression()) #28, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2739, metadata !DIExpression()) #28, !dbg !2745
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2747
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2747
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2740, metadata !DIExpression()) #28, !dbg !2745
  %6 = tail call i32* @__errno_location() #32, !dbg !2748
  %7 = load i32, i32* %6, align 4, !dbg !2748, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %7, metadata !2741, metadata !DIExpression()) #28, !dbg !2745
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2749
  %9 = load i32, i32* %8, align 4, !dbg !2749, !tbaa !1953
  %10 = or i32 %9, 1, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %10, metadata !2742, metadata !DIExpression()) #28, !dbg !2745
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2751
  %12 = load i32, i32* %11, align 8, !dbg !2751, !tbaa !1902
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2752
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2753
  %15 = load i8*, i8** %14, align 8, !dbg !2753, !tbaa !1975
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2754
  %17 = load i8*, i8** %16, align 8, !dbg !2754, !tbaa !1978
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2755
  %19 = add i64 %18, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %19, metadata !2743, metadata !DIExpression()) #28, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %19, metadata !2757, metadata !DIExpression()) #28, !dbg !2762
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %20, metadata !2744, metadata !DIExpression()) #28, !dbg !2745
  %21 = load i32, i32* %11, align 8, !dbg !2765, !tbaa !1902
  %22 = load i8*, i8** %14, align 8, !dbg !2766, !tbaa !1975
  %23 = load i8*, i8** %16, align 8, !dbg !2767, !tbaa !1978
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2768
  store i32 %7, i32* %6, align 4, !dbg !2769, !tbaa !948
  ret i8* %20, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2733 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64* %2, metadata !2738, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2739, metadata !DIExpression()), !dbg !2771
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2772
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2740, metadata !DIExpression()), !dbg !2771
  %7 = tail call i32* @__errno_location() #32, !dbg !2773
  %8 = load i32, i32* %7, align 4, !dbg !2773, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %8, metadata !2741, metadata !DIExpression()), !dbg !2771
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2774
  %10 = load i32, i32* %9, align 4, !dbg !2774, !tbaa !1953
  %11 = icmp eq i64* %2, null, !dbg !2775
  %12 = zext i1 %11 to i32, !dbg !2775
  %13 = or i32 %10, %12, !dbg !2776
  call void @llvm.dbg.value(metadata i32 %13, metadata !2742, metadata !DIExpression()), !dbg !2771
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2777
  %15 = load i32, i32* %14, align 8, !dbg !2777, !tbaa !1902
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2778
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2779
  %18 = load i8*, i8** %17, align 8, !dbg !2779, !tbaa !1975
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2780
  %20 = load i8*, i8** %19, align 8, !dbg !2780, !tbaa !1978
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2781
  %22 = add i64 %21, 1, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %22, metadata !2743, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %22, metadata !2757, metadata !DIExpression()) #28, !dbg !2783
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %23, metadata !2744, metadata !DIExpression()), !dbg !2771
  %24 = load i32, i32* %14, align 8, !dbg !2786, !tbaa !1902
  %25 = load i8*, i8** %17, align 8, !dbg !2787, !tbaa !1975
  %26 = load i8*, i8** %19, align 8, !dbg !2788, !tbaa !1978
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2789
  store i32 %8, i32* %7, align 4, !dbg !2790, !tbaa !948
  br i1 %11, label %29, label %28, !dbg !2791

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2792, !tbaa !985
  br label %29, !dbg !2794

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2796 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2800, !tbaa !778
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 1, metadata !2799, metadata !DIExpression()), !dbg !2801
  %2 = load i32, i32* @nslots, align 4, !dbg !2802, !tbaa !948
  %3 = icmp sgt i32 %2, 1, !dbg !2805
  br i1 %3, label %4, label %12, !dbg !2806

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2805
  br label %6, !dbg !2806

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2799, metadata !DIExpression()), !dbg !2801
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2807
  %9 = load i8*, i8** %8, align 8, !dbg !2807, !tbaa !2808
  tail call void @free(i8* %9) #28, !dbg !2810
  %10 = add nuw nsw i64 %7, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %10, metadata !2799, metadata !DIExpression()), !dbg !2801
  %11 = icmp eq i64 %10, %5, !dbg !2805
  br i1 %11, label %12, label %6, !dbg !2806, !llvm.loop !2812

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2814
  %14 = load i8*, i8** %13, align 8, !dbg !2814, !tbaa !2808
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2816
  br i1 %15, label %17, label %16, !dbg !2817

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2818
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2820, !tbaa !2821
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2822, !tbaa !2808
  br label %17, !dbg !2823

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2824
  br i1 %18, label %21, label %19, !dbg !2826

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2827
  tail call void @free(i8* %20) #28, !dbg !2829
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2830, !tbaa !778
  br label %21, !dbg !2831

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2832, !tbaa !948
  ret void, !dbg !2833
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2838
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2839
  ret i8* %3, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* %1, metadata !2846, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2848, metadata !DIExpression()), !dbg !2860
  %5 = tail call i32* @__errno_location() #32, !dbg !2861
  %6 = load i32, i32* %5, align 4, !dbg !2861, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %6, metadata !2849, metadata !DIExpression()), !dbg !2860
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2862, !tbaa !778
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2850, metadata !DIExpression()), !dbg !2860
  %8 = icmp slt i32 %0, 0, !dbg !2863
  br i1 %8, label %9, label %10, !dbg !2865

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2866
  unreachable, !dbg !2866

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2867, !tbaa !948
  %12 = icmp sgt i32 %11, %0, !dbg !2868
  br i1 %12, label %34, label %13, !dbg !2869

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2870
  call void @llvm.dbg.value(metadata i1 %14, metadata !2851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2871
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2854, metadata !DIExpression()), !dbg !2871
  %15 = icmp eq i32 %0, 2147483647, !dbg !2872
  br i1 %15, label %16, label %17, !dbg !2874

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2875
  unreachable, !dbg !2875

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2876
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2876
  %20 = add nuw nsw i32 %0, 1, !dbg !2877
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2878
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2879
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2850, metadata !DIExpression()), !dbg !2860
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2880, !tbaa !778
  br i1 %14, label %25, label %26, !dbg !2881

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2882, !tbaa.struct !2884
  br label %26, !dbg !2885

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2886, !tbaa !948
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2887
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2888
  %31 = sub nsw i32 %20, %27, !dbg !2889
  %32 = sext i32 %31 to i64, !dbg !2890
  %33 = shl nsw i64 %32, 4, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %30, metadata !2285, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %33, metadata !2291, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2894
  store i32 %20, i32* @nslots, align 4, !dbg !2895, !tbaa !948
  br label %34, !dbg !2896

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2860
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2850, metadata !DIExpression()), !dbg !2860
  %36 = zext i32 %0 to i64, !dbg !2897
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2898
  %38 = load i64, i64* %37, align 8, !dbg !2898, !tbaa !2821
  call void @llvm.dbg.value(metadata i64 %38, metadata !2855, metadata !DIExpression()), !dbg !2899
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2900
  %40 = load i8*, i8** %39, align 8, !dbg !2900, !tbaa !2808
  call void @llvm.dbg.value(metadata i8* %40, metadata !2857, metadata !DIExpression()), !dbg !2899
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2901
  %42 = load i32, i32* %41, align 4, !dbg !2901, !tbaa !1953
  %43 = or i32 %42, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %43, metadata !2858, metadata !DIExpression()), !dbg !2899
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2903
  %45 = load i32, i32* %44, align 8, !dbg !2903, !tbaa !1902
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2904
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2905
  %48 = load i8*, i8** %47, align 8, !dbg !2905, !tbaa !1975
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2906
  %50 = load i8*, i8** %49, align 8, !dbg !2906, !tbaa !1978
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %51, metadata !2859, metadata !DIExpression()), !dbg !2899
  %52 = icmp ugt i64 %38, %51, !dbg !2908
  br i1 %52, label %63, label %53, !dbg !2910

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %54, metadata !2855, metadata !DIExpression()), !dbg !2899
  store i64 %54, i64* %37, align 8, !dbg !2913, !tbaa !2821
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2914
  br i1 %55, label %57, label %56, !dbg !2916

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2917
  br label %57, !dbg !2917

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2757, metadata !DIExpression()) #28, !dbg !2918
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %58, metadata !2857, metadata !DIExpression()), !dbg !2899
  store i8* %58, i8** %39, align 8, !dbg !2921, !tbaa !2808
  %59 = load i32, i32* %44, align 8, !dbg !2922, !tbaa !1902
  %60 = load i8*, i8** %47, align 8, !dbg !2923, !tbaa !1975
  %61 = load i8*, i8** %49, align 8, !dbg !2924, !tbaa !1978
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2925
  br label %63, !dbg !2926

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2899
  call void @llvm.dbg.value(metadata i8* %64, metadata !2857, metadata !DIExpression()), !dbg !2899
  store i32 %6, i32* %5, align 4, !dbg !2927, !tbaa !948
  ret i8* %64, !dbg !2928
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %2, metadata !2935, metadata !DIExpression()), !dbg !2936
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2937
  ret i8* %4, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2939 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression()) #28, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #28, !dbg !2943
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2945
  ret i8* %2, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()) #28, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()) #28, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()) #28, !dbg !2954
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2956
  ret i8* %3, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2958 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %1, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %2, metadata !2964, metadata !DIExpression()), !dbg !2966
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2967
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2965, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %1, metadata !2973, metadata !DIExpression()) #28, !dbg !2979
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2978, metadata !DIExpression()) #28, !dbg !2981
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2981, !alias.scope !2969
  %6 = icmp eq i32 %1, 10, !dbg !2982
  br i1 %6, label %7, label %8, !dbg !2984

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2985, !noalias !2969
  unreachable, !dbg !2985

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2986
  store i32 %1, i32* %9, align 8, !dbg !2987, !tbaa !1902, !alias.scope !2969
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2988
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2989
  ret i8* %10, !dbg !2990
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2991 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 %1, metadata !2996, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %2, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %3, metadata !2998, metadata !DIExpression()), !dbg !3000
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3001
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3001
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2999, metadata !DIExpression()), !dbg !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %1, metadata !2973, metadata !DIExpression()) #28, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2978, metadata !DIExpression()) #28, !dbg !3009
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !3009, !alias.scope !3003
  %7 = icmp eq i32 %1, 10, !dbg !3010
  br i1 %7, label %8, label %9, !dbg !3011

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3012, !noalias !3003
  unreachable, !dbg !3012

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3013
  store i32 %1, i32* %10, align 8, !dbg !3014, !tbaa !1902, !alias.scope !3003
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3016
  ret i8* %11, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3018 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8* %1, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()) #28, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()) #28, !dbg !3025
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()) #28, !dbg !3025
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3027
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2965, metadata !DIExpression()) #28, !dbg !3028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029) #28, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %0, metadata !2973, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2978, metadata !DIExpression()) #28, !dbg !3035
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !3035, !alias.scope !3029
  %5 = icmp eq i32 %0, 10, !dbg !3036
  br i1 %5, label %6, label %7, !dbg !3037

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !3038, !noalias !3029
  unreachable, !dbg !3038

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3039
  store i32 %0, i32* %8, align 8, !dbg !3040, !tbaa !1902, !alias.scope !3029
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3042
  ret i8* %9, !dbg !3043
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3044 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %1, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2995, metadata !DIExpression()) #28, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()) #28, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !2997, metadata !DIExpression()) #28, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()) #28, !dbg !3052
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3054
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3054
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2999, metadata !DIExpression()) #28, !dbg !3055
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056) #28, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %0, metadata !2973, metadata !DIExpression()) #28, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2978, metadata !DIExpression()) #28, !dbg !3062
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3062, !alias.scope !3056
  %6 = icmp eq i32 %0, 10, !dbg !3063
  br i1 %6, label %7, label %8, !dbg !3064

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3065, !noalias !3056
  unreachable, !dbg !3065

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3066
  store i32 %0, i32* %9, align 8, !dbg !3067, !tbaa !1902, !alias.scope !3056
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !3068
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3069
  ret i8* %10, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3071 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %2, metadata !3077, metadata !DIExpression()), !dbg !3079
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3078, metadata !DIExpression()), !dbg !3081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3082, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1920, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8 %2, metadata !1921, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 1, metadata !1922, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8 %2, metadata !1923, metadata !DIExpression()), !dbg !3084
  %6 = lshr i8 %2, 5, !dbg !3086
  %7 = zext i8 %6 to i64, !dbg !3086
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3087
  call void @llvm.dbg.value(metadata i32* %8, metadata !1924, metadata !DIExpression()), !dbg !3084
  %9 = and i8 %2, 31, !dbg !3088
  %10 = zext i8 %9 to i32, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %10, metadata !1926, metadata !DIExpression()), !dbg !3084
  %11 = load i32, i32* %8, align 4, !dbg !3089, !tbaa !948
  %12 = lshr i32 %11, %10, !dbg !3090
  %13 = and i32 %12, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %13, metadata !1927, metadata !DIExpression()), !dbg !3084
  %14 = xor i32 %13, 1, !dbg !3092
  %15 = shl i32 %14, %10, !dbg !3093
  %16 = xor i32 %15, %11, !dbg !3094
  store i32 %16, i32* %8, align 4, !dbg !3094, !tbaa !948
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3095
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3096
  ret i8* %17, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3098 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #28, !dbg !3105
  call void @llvm.dbg.value(metadata i64 -1, metadata !3076, metadata !DIExpression()) #28, !dbg !3105
  call void @llvm.dbg.value(metadata i8 %1, metadata !3077, metadata !DIExpression()) #28, !dbg !3105
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3078, metadata !DIExpression()) #28, !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3109, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1920, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i8 %1, metadata !1921, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i32 1, metadata !1922, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i8 %1, metadata !1923, metadata !DIExpression()) #28, !dbg !3110
  %5 = lshr i8 %1, 5, !dbg !3112
  %6 = zext i8 %5 to i64, !dbg !3112
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %7, metadata !1924, metadata !DIExpression()) #28, !dbg !3110
  %8 = and i8 %1, 31, !dbg !3114
  %9 = zext i8 %8 to i32, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %9, metadata !1926, metadata !DIExpression()) #28, !dbg !3110
  %10 = load i32, i32* %7, align 4, !dbg !3115, !tbaa !948
  %11 = lshr i32 %10, %9, !dbg !3116
  %12 = and i32 %11, 1, !dbg !3117
  call void @llvm.dbg.value(metadata i32 %12, metadata !1927, metadata !DIExpression()) #28, !dbg !3110
  %13 = xor i32 %12, 1, !dbg !3118
  %14 = shl i32 %13, %9, !dbg !3119
  %15 = xor i32 %14, %10, !dbg !3120
  store i32 %15, i32* %7, align 4, !dbg !3120, !tbaa !948
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3122
  ret i8* %16, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3124 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #28, !dbg !3128
  call void @llvm.dbg.value(metadata i8 58, metadata !3103, metadata !DIExpression()) #28, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #28, !dbg !3130
  call void @llvm.dbg.value(metadata i64 -1, metadata !3076, metadata !DIExpression()) #28, !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !3077, metadata !DIExpression()) #28, !dbg !3130
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3132
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3078, metadata !DIExpression()) #28, !dbg !3133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3134, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1920, metadata !DIExpression()) #28, !dbg !3135
  call void @llvm.dbg.value(metadata i8 58, metadata !1921, metadata !DIExpression()) #28, !dbg !3135
  call void @llvm.dbg.value(metadata i32 1, metadata !1922, metadata !DIExpression()) #28, !dbg !3135
  call void @llvm.dbg.value(metadata i8 58, metadata !1923, metadata !DIExpression()) #28, !dbg !3135
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3137
  call void @llvm.dbg.value(metadata i32* %4, metadata !1924, metadata !DIExpression()) #28, !dbg !3135
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()) #28, !dbg !3135
  %5 = load i32, i32* %4, align 4, !dbg !3138, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %5, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3135
  %6 = or i32 %5, 67108864, !dbg !3139
  store i32 %6, i32* %4, align 4, !dbg !3139, !tbaa !948
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3141
  ret i8* %7, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3143 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #28, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #28, !dbg !3148
  call void @llvm.dbg.value(metadata i8 58, metadata !3077, metadata !DIExpression()) #28, !dbg !3148
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3150
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3078, metadata !DIExpression()) #28, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3152, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1920, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i8 58, metadata !1921, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i32 1, metadata !1922, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i8 58, metadata !1923, metadata !DIExpression()) #28, !dbg !3153
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3155
  call void @llvm.dbg.value(metadata i32* %5, metadata !1924, metadata !DIExpression()) #28, !dbg !3153
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()) #28, !dbg !3153
  %6 = load i32, i32* %5, align 4, !dbg !3156, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %6, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3153
  %7 = or i32 %6, 67108864, !dbg !3157
  store i32 %7, i32* %5, align 4, !dbg !3157, !tbaa !948
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3158
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3159
  ret i8* %8, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3161 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2978, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %1, metadata !3164, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %2, metadata !3165, metadata !DIExpression()), !dbg !3169
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3170
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3166, metadata !DIExpression()), !dbg !3171
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3173), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %1, metadata !2973, metadata !DIExpression()) #28, !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !2978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3176
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3167, !alias.scope !3173
  %8 = icmp eq i32 %1, 10, !dbg !3177
  br i1 %8, label %9, label %10, !dbg !3178

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3179, !noalias !3173
  unreachable, !dbg !3179

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3176
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3172
  store i32 %1, i32* %11, align 8, !dbg !3172, !tbaa.struct !3083
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3172
  %13 = bitcast i32* %12 to i8*, !dbg !3172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3172, !tbaa.struct !3180
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1920, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 58, metadata !1921, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 1, metadata !1922, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 58, metadata !1923, metadata !DIExpression()), !dbg !3181
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3183
  call void @llvm.dbg.value(metadata i32* %14, metadata !1924, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()), !dbg !3181
  %15 = load i32, i32* %14, align 4, !dbg !3184, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %15, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3181
  %16 = or i32 %15, 67108864, !dbg !3185
  store i32 %16, i32* %14, align 4, !dbg !3185, !tbaa !948
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3186
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3187
  ret i8* %17, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3189 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3193, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8* %1, metadata !3194, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8* %2, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8* %3, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()) #28, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()) #28, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()) #28, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %3, metadata !3205, metadata !DIExpression()) #28, !dbg !3208
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #28, !dbg !3208
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3207, metadata !DIExpression()) #28, !dbg !3211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3212, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #28, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #28, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #28, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #28, !dbg !3213
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3215
  store i32 10, i32* %7, align 8, !dbg !3216, !tbaa !1902
  %8 = icmp ne i8* %1, null, !dbg !3217
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3218
  br i1 %10, label %12, label %11, !dbg !3218

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3219
  unreachable, !dbg !3219

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3220
  store i8* %1, i8** %13, align 8, !dbg !3221, !tbaa !1975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3222
  store i8* %2, i8** %14, align 8, !dbg !3223, !tbaa !1978
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3225
  ret i8* %15, !dbg !3226
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3199 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %3, metadata !3205, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %4, metadata !3206, metadata !DIExpression()), !dbg !3227
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3228
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3207, metadata !DIExpression()), !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3230, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #28, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #28, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #28, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #28, !dbg !3231
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3233
  store i32 10, i32* %8, align 8, !dbg !3234, !tbaa !1902
  %9 = icmp ne i8* %1, null, !dbg !3235
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3236
  br i1 %11, label %13, label %12, !dbg !3236

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3237
  unreachable, !dbg !3237

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3238
  store i8* %1, i8** %14, align 8, !dbg !3239, !tbaa !1975
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3240
  store i8* %2, i8** %15, align 8, !dbg !3241, !tbaa !1978
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3243
  ret i8* %16, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3245 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !3250, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %2, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 0, metadata !3193, metadata !DIExpression()) #28, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %0, metadata !3194, metadata !DIExpression()) #28, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()) #28, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()) #28, !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()) #28, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3203, metadata !DIExpression()) #28, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()) #28, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %2, metadata !3205, metadata !DIExpression()) #28, !dbg !3255
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #28, !dbg !3255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3207, metadata !DIExpression()) #28, !dbg !3258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3259, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #28, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #28, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #28, !dbg !3260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #28, !dbg !3260
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3262
  store i32 10, i32* %6, align 8, !dbg !3263, !tbaa !1902
  %7 = icmp ne i8* %0, null, !dbg !3264
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3265
  br i1 %9, label %11, label %10, !dbg !3265

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3266
  unreachable, !dbg !3266

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3267
  store i8* %0, i8** %12, align 8, !dbg !3268, !tbaa !1975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3269
  store i8* %1, i8** %13, align 8, !dbg !3270, !tbaa !1978
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3272
  ret i8* %14, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3274 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3278, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %2, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %3, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()) #28, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %0, metadata !3203, metadata !DIExpression()) #28, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()) #28, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %2, metadata !3205, metadata !DIExpression()) #28, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %3, metadata !3206, metadata !DIExpression()) #28, !dbg !3283
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3207, metadata !DIExpression()) #28, !dbg !3286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3287, !tbaa.struct !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #28, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #28, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #28, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #28, !dbg !3288
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3290
  store i32 10, i32* %7, align 8, !dbg !3291, !tbaa !1902
  %8 = icmp ne i8* %0, null, !dbg !3292
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3293
  br i1 %10, label %12, label %11, !dbg !3293

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3294
  unreachable, !dbg !3294

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3295
  store i8* %0, i8** %13, align 8, !dbg !3296, !tbaa !1975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3297
  store i8* %1, i8** %14, align 8, !dbg !3298, !tbaa !1978
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3300
  ret i8* %15, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3310
  ret i8* %4, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()) #28, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()) #28, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()) #28, !dbg !3319
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3321
  ret i8* %3, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3323 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()) #28, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()) #28, !dbg !3330
  call void @llvm.dbg.value(metadata i64 -1, metadata !3308, metadata !DIExpression()) #28, !dbg !3330
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3332
  ret i8* %3, !dbg !3333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3334 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3327, metadata !DIExpression()) #28, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %0, metadata !3328, metadata !DIExpression()) #28, !dbg !3340
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()) #28, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()) #28, !dbg !3342
  call void @llvm.dbg.value(metadata i64 -1, metadata !3308, metadata !DIExpression()) #28, !dbg !3342
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3344
  ret i8* %2, !dbg !3345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %1, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %2, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()) #28, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()) #28, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3358, metadata !DIExpression()) #28, !dbg !3363
  call void @llvm.dbg.value(metadata i32 %0, metadata !3365, metadata !DIExpression()) #28, !dbg !3369
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %4, metadata !3368, metadata !DIExpression()) #28, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %4, metadata !3359, metadata !DIExpression()) #28, !dbg !3363
  %5 = icmp eq i8* %4, null, !dbg !3372
  br i1 %5, label %6, label %9, !dbg !3373

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3374
  br i1 %7, label %19, label %8, !dbg !3377

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3378, !tbaa !1045
  br label %19, !dbg !3379

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %10, metadata !3360, metadata !DIExpression()) #28, !dbg !3381
  %11 = icmp ult i64 %10, %2, !dbg !3382
  br i1 %11, label %12, label %14, !dbg !3384

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i8* %1, metadata !3387, metadata !DIExpression()) #28, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %4, metadata !3394, metadata !DIExpression()) #28, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %13, metadata !3395, metadata !DIExpression()) #28, !dbg !3396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !3398
  br label %19, !dbg !3399

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3400
  br i1 %15, label %19, label %16, !dbg !3403

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3387, metadata !DIExpression()) #28, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %4, metadata !3394, metadata !DIExpression()) #28, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %17, metadata !3395, metadata !DIExpression()) #28, !dbg !3406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !3408
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3409
  store i8 0, i8* %18, align 1, !dbg !3410, !tbaa !1045
  br label %19, !dbg !3411

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3412
  ret i32 %20, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %0, metadata !3365, metadata !DIExpression()) #28, !dbg !3418
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3368, metadata !DIExpression()) #28, !dbg !3418
  ret i8* %2, !dbg !3421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3422 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3461, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3462, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %2, metadata !3463, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %3, metadata !3464, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8** %4, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %5, metadata !3466, metadata !DIExpression()), !dbg !3467
  %7 = icmp eq i8* %1, null, !dbg !3468
  br i1 %7, label %10, label %8, !dbg !3470

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3471
  br label %12, !dbg !3471

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3472
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #28, !dbg !3473
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3473
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3474
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #28, !dbg !3475
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.123, i64 0, i64 0)) #28, !dbg !3475
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3476
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
  ], !dbg !3477

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #28, !dbg !3478
  %21 = load i8*, i8** %4, align 8, !dbg !3478, !tbaa !778
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3478
  br label %147, !dbg !3480

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #28, !dbg !3481
  %25 = load i8*, i8** %4, align 8, !dbg !3481, !tbaa !778
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3481
  %27 = load i8*, i8** %26, align 8, !dbg !3481, !tbaa !778
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3481
  br label %147, !dbg !3482

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #28, !dbg !3483
  %31 = load i8*, i8** %4, align 8, !dbg !3483, !tbaa !778
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3483
  %33 = load i8*, i8** %32, align 8, !dbg !3483, !tbaa !778
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3483
  %35 = load i8*, i8** %34, align 8, !dbg !3483, !tbaa !778
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3483
  br label %147, !dbg !3484

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #28, !dbg !3485
  %39 = load i8*, i8** %4, align 8, !dbg !3485, !tbaa !778
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3485
  %41 = load i8*, i8** %40, align 8, !dbg !3485, !tbaa !778
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3485
  %43 = load i8*, i8** %42, align 8, !dbg !3485, !tbaa !778
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3485
  %45 = load i8*, i8** %44, align 8, !dbg !3485, !tbaa !778
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3485
  br label %147, !dbg !3486

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #28, !dbg !3487
  %49 = load i8*, i8** %4, align 8, !dbg !3487, !tbaa !778
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3487
  %51 = load i8*, i8** %50, align 8, !dbg !3487, !tbaa !778
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3487
  %53 = load i8*, i8** %52, align 8, !dbg !3487, !tbaa !778
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3487
  %55 = load i8*, i8** %54, align 8, !dbg !3487, !tbaa !778
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3487
  %57 = load i8*, i8** %56, align 8, !dbg !3487, !tbaa !778
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3487
  br label %147, !dbg !3488

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #28, !dbg !3489
  %61 = load i8*, i8** %4, align 8, !dbg !3489, !tbaa !778
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3489
  %63 = load i8*, i8** %62, align 8, !dbg !3489, !tbaa !778
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3489
  %65 = load i8*, i8** %64, align 8, !dbg !3489, !tbaa !778
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3489
  %67 = load i8*, i8** %66, align 8, !dbg !3489, !tbaa !778
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3489
  %69 = load i8*, i8** %68, align 8, !dbg !3489, !tbaa !778
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3489
  %71 = load i8*, i8** %70, align 8, !dbg !3489, !tbaa !778
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3489
  br label %147, !dbg !3490

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #28, !dbg !3491
  %75 = load i8*, i8** %4, align 8, !dbg !3491, !tbaa !778
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3491
  %77 = load i8*, i8** %76, align 8, !dbg !3491, !tbaa !778
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3491
  %79 = load i8*, i8** %78, align 8, !dbg !3491, !tbaa !778
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3491
  %81 = load i8*, i8** %80, align 8, !dbg !3491, !tbaa !778
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3491
  %83 = load i8*, i8** %82, align 8, !dbg !3491, !tbaa !778
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3491
  %85 = load i8*, i8** %84, align 8, !dbg !3491, !tbaa !778
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3491
  %87 = load i8*, i8** %86, align 8, !dbg !3491, !tbaa !778
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3491
  br label %147, !dbg !3492

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #28, !dbg !3493
  %91 = load i8*, i8** %4, align 8, !dbg !3493, !tbaa !778
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3493
  %93 = load i8*, i8** %92, align 8, !dbg !3493, !tbaa !778
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3493
  %95 = load i8*, i8** %94, align 8, !dbg !3493, !tbaa !778
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3493
  %97 = load i8*, i8** %96, align 8, !dbg !3493, !tbaa !778
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3493
  %99 = load i8*, i8** %98, align 8, !dbg !3493, !tbaa !778
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3493
  %101 = load i8*, i8** %100, align 8, !dbg !3493, !tbaa !778
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3493
  %103 = load i8*, i8** %102, align 8, !dbg !3493, !tbaa !778
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3493
  %105 = load i8*, i8** %104, align 8, !dbg !3493, !tbaa !778
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3493
  br label %147, !dbg !3494

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.132, i64 0, i64 0), i32 5) #28, !dbg !3495
  %109 = load i8*, i8** %4, align 8, !dbg !3495, !tbaa !778
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3495
  %111 = load i8*, i8** %110, align 8, !dbg !3495, !tbaa !778
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3495
  %113 = load i8*, i8** %112, align 8, !dbg !3495, !tbaa !778
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3495
  %115 = load i8*, i8** %114, align 8, !dbg !3495, !tbaa !778
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3495
  %117 = load i8*, i8** %116, align 8, !dbg !3495, !tbaa !778
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3495
  %119 = load i8*, i8** %118, align 8, !dbg !3495, !tbaa !778
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3495
  %121 = load i8*, i8** %120, align 8, !dbg !3495, !tbaa !778
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3495
  %123 = load i8*, i8** %122, align 8, !dbg !3495, !tbaa !778
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3495
  %125 = load i8*, i8** %124, align 8, !dbg !3495, !tbaa !778
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3495
  br label %147, !dbg !3496

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.133, i64 0, i64 0), i32 5) #28, !dbg !3497
  %129 = load i8*, i8** %4, align 8, !dbg !3497, !tbaa !778
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3497
  %131 = load i8*, i8** %130, align 8, !dbg !3497, !tbaa !778
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3497
  %133 = load i8*, i8** %132, align 8, !dbg !3497, !tbaa !778
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3497
  %135 = load i8*, i8** %134, align 8, !dbg !3497, !tbaa !778
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3497
  %137 = load i8*, i8** %136, align 8, !dbg !3497, !tbaa !778
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3497
  %139 = load i8*, i8** %138, align 8, !dbg !3497, !tbaa !778
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3497
  %141 = load i8*, i8** %140, align 8, !dbg !3497, !tbaa !778
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3497
  %143 = load i8*, i8** %142, align 8, !dbg !3497, !tbaa !778
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3497
  %145 = load i8*, i8** %144, align 8, !dbg !3497, !tbaa !778
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3497
  br label %147, !dbg !3498

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3499
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3500 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3504, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %1, metadata !3505, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %2, metadata !3506, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %3, metadata !3507, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8** %4, metadata !3508, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 0, metadata !3509, metadata !DIExpression()), !dbg !3510
  br label %6, !dbg !3511

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3513
  call void @llvm.dbg.value(metadata i64 %7, metadata !3509, metadata !DIExpression()), !dbg !3510
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3514
  %9 = load i8*, i8** %8, align 8, !dbg !3514, !tbaa !778
  %10 = icmp eq i8* %9, null, !dbg !3516
  %11 = add i64 %7, 1, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %11, metadata !3509, metadata !DIExpression()), !dbg !3510
  br i1 %10, label %12, label %6, !dbg !3516, !llvm.loop !3518

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3520
  ret void, !dbg !3521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3522 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3533, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3534, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %2, metadata !3535, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %3, metadata !3536, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3537, metadata !DIExpression()), !dbg !3541
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3542
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3542
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3539, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 0, metadata !3538, metadata !DIExpression()), !dbg !3541
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3538, metadata !DIExpression()), !dbg !3541
  %11 = load i32, i32* %8, align 8, !dbg !3544
  %12 = icmp ult i32 %11, 41, !dbg !3544
  br i1 %12, label %13, label %18, !dbg !3544

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3544
  %15 = zext i32 %11 to i64, !dbg !3544
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3544
  %17 = add nuw nsw i32 %11, 8, !dbg !3544
  store i32 %17, i32* %8, align 8, !dbg !3544
  br label %21, !dbg !3544

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3544
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3544
  store i8* %20, i8** %9, align 8, !dbg !3544
  br label %21, !dbg !3544

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3544
  %25 = load i8*, i8** %24, align 8, !dbg !3544
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3547
  store i8* %25, i8** %26, align 16, !dbg !3548, !tbaa !778
  %27 = icmp eq i8* %25, null, !dbg !3549
  br i1 %27, label %30, label %28, !dbg !3550

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 1, metadata !3538, metadata !DIExpression()), !dbg !3541
  %29 = icmp ult i32 %22, 41, !dbg !3544
  br i1 %29, label %35, label %32, !dbg !3544

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3551
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3552
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3553
  ret void, !dbg !3553

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3544
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3544
  store i8* %34, i8** %9, align 8, !dbg !3544
  br label %40, !dbg !3544

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3544
  %37 = zext i32 %22 to i64, !dbg !3544
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3544
  %39 = add nuw nsw i32 %22, 8, !dbg !3544
  store i32 %39, i32* %8, align 8, !dbg !3544
  br label %40, !dbg !3544

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3544
  %44 = load i8*, i8** %43, align 8, !dbg !3544
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3547
  store i8* %44, i8** %45, align 8, !dbg !3548, !tbaa !778
  %46 = icmp eq i8* %44, null, !dbg !3549
  br i1 %46, label %30, label %47, !dbg !3550

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 2, metadata !3538, metadata !DIExpression()), !dbg !3541
  %48 = icmp ult i32 %41, 41, !dbg !3544
  br i1 %48, label %52, label %49, !dbg !3544

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3544
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3544
  store i8* %51, i8** %9, align 8, !dbg !3544
  br label %57, !dbg !3544

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3544
  %54 = zext i32 %41 to i64, !dbg !3544
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3544
  %56 = add nuw nsw i32 %41, 8, !dbg !3544
  store i32 %56, i32* %8, align 8, !dbg !3544
  br label %57, !dbg !3544

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3544
  %61 = load i8*, i8** %60, align 8, !dbg !3544
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3547
  store i8* %61, i8** %62, align 16, !dbg !3548, !tbaa !778
  %63 = icmp eq i8* %61, null, !dbg !3549
  br i1 %63, label %30, label %64, !dbg !3550

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 3, metadata !3538, metadata !DIExpression()), !dbg !3541
  %65 = icmp ult i32 %58, 41, !dbg !3544
  br i1 %65, label %69, label %66, !dbg !3544

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3544
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3544
  store i8* %68, i8** %9, align 8, !dbg !3544
  br label %74, !dbg !3544

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3544
  %71 = zext i32 %58 to i64, !dbg !3544
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3544
  %73 = add nuw nsw i32 %58, 8, !dbg !3544
  store i32 %73, i32* %8, align 8, !dbg !3544
  br label %74, !dbg !3544

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3544
  %78 = load i8*, i8** %77, align 8, !dbg !3544
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3547
  store i8* %78, i8** %79, align 8, !dbg !3548, !tbaa !778
  %80 = icmp eq i8* %78, null, !dbg !3549
  br i1 %80, label %30, label %81, !dbg !3550

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 4, metadata !3538, metadata !DIExpression()), !dbg !3541
  %82 = icmp ult i32 %75, 41, !dbg !3544
  br i1 %82, label %86, label %83, !dbg !3544

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3544
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3544
  store i8* %85, i8** %9, align 8, !dbg !3544
  br label %91, !dbg !3544

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3544
  %88 = zext i32 %75 to i64, !dbg !3544
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3544
  %90 = add nuw nsw i32 %75, 8, !dbg !3544
  store i32 %90, i32* %8, align 8, !dbg !3544
  br label %91, !dbg !3544

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3544
  %95 = load i8*, i8** %94, align 8, !dbg !3544
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3547
  store i8* %95, i8** %96, align 16, !dbg !3548, !tbaa !778
  %97 = icmp eq i8* %95, null, !dbg !3549
  br i1 %97, label %30, label %98, !dbg !3550

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 5, metadata !3538, metadata !DIExpression()), !dbg !3541
  %99 = icmp ult i32 %92, 41, !dbg !3544
  br i1 %99, label %103, label %100, !dbg !3544

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3544
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3544
  store i8* %102, i8** %9, align 8, !dbg !3544
  br label %108, !dbg !3544

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3544
  %105 = zext i32 %92 to i64, !dbg !3544
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3544
  %107 = add nuw nsw i32 %92, 8, !dbg !3544
  store i32 %107, i32* %8, align 8, !dbg !3544
  br label %108, !dbg !3544

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3544
  %111 = load i8*, i8** %110, align 8, !dbg !3544
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3547
  store i8* %111, i8** %112, align 8, !dbg !3548, !tbaa !778
  %113 = icmp eq i8* %111, null, !dbg !3549
  br i1 %113, label %30, label %114, !dbg !3550

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3538, metadata !DIExpression()), !dbg !3541
  %115 = load i8*, i8** %9, align 8, !dbg !3544
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3544
  store i8* %116, i8** %9, align 8, !dbg !3544
  %117 = bitcast i8* %115 to i8**, !dbg !3544
  %118 = load i8*, i8** %117, align 8, !dbg !3544
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3547
  store i8* %118, i8** %119, align 16, !dbg !3548, !tbaa !778
  %120 = icmp eq i8* %118, null, !dbg !3549
  br i1 %120, label %30, label %121, !dbg !3550

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3538, metadata !DIExpression()), !dbg !3541
  %122 = load i8*, i8** %9, align 8, !dbg !3544
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3544
  store i8* %123, i8** %9, align 8, !dbg !3544
  %124 = bitcast i8* %122 to i8**, !dbg !3544
  %125 = load i8*, i8** %124, align 8, !dbg !3544
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3547
  store i8* %125, i8** %126, align 8, !dbg !3548, !tbaa !778
  %127 = icmp eq i8* %125, null, !dbg !3549
  br i1 %127, label %30, label %128, !dbg !3550

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3538, metadata !DIExpression()), !dbg !3541
  %129 = load i8*, i8** %9, align 8, !dbg !3544
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3544
  store i8* %130, i8** %9, align 8, !dbg !3544
  %131 = bitcast i8* %129 to i8**, !dbg !3544
  %132 = load i8*, i8** %131, align 8, !dbg !3544
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3547
  store i8* %132, i8** %133, align 16, !dbg !3548, !tbaa !778
  %134 = icmp eq i8* %132, null, !dbg !3549
  br i1 %134, label %30, label %135, !dbg !3550

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3538, metadata !DIExpression()), !dbg !3541
  %136 = load i8*, i8** %9, align 8, !dbg !3544
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3544
  store i8* %137, i8** %9, align 8, !dbg !3544
  %138 = bitcast i8* %136 to i8**, !dbg !3544
  %139 = load i8*, i8** %138, align 8, !dbg !3544
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3547
  store i8* %139, i8** %140, align 8, !dbg !3548, !tbaa !778
  %141 = icmp eq i8* %139, null, !dbg !3549
  %142 = select i1 %141, i64 9, i64 10, !dbg !3550
  br label %30, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3554 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3558, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %1, metadata !3559, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %2, metadata !3560, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %3, metadata !3561, metadata !DIExpression()), !dbg !3568
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3569
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3562, metadata !DIExpression()), !dbg !3570
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3571
  call void @llvm.va_start(i8* nonnull %6), !dbg !3571
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3572
  call void @llvm.va_end(i8* nonnull %6), !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3574
  ret void, !dbg !3574
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3575 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3576, !tbaa !778
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3576
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #28, !dbg !3577
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.137, i64 0, i64 0)) #28, !dbg !3577
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.138, i64 0, i64 0), i32 5) #28, !dbg !3578
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.139, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.140, i64 0, i64 0)) #28, !dbg !3578
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.141, i64 0, i64 0), i32 5) #28, !dbg !3579
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.142, i64 0, i64 0)) #28, !dbg !3579
  ret void, !dbg !3580
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3581 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3586, metadata !DIExpression()), !dbg !3587
  %3 = udiv i64 9223372036854775807, %1, !dbg !3588
  %4 = icmp ult i64 %3, %0, !dbg !3588
  br i1 %4, label %5, label %6, !dbg !3590

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3591
  unreachable, !dbg !3591

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %7, metadata !3593, metadata !DIExpression()) #28, !dbg !3599
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %8, metadata !3598, metadata !DIExpression()) #28, !dbg !3599
  %9 = icmp eq i8* %8, null, !dbg !3602
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3604
  br i1 %11, label %12, label %13, !dbg !3604

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3605
  unreachable, !dbg !3605

13:                                               ; preds = %6
  ret i8* %8, !dbg !3606
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3594 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3593, metadata !DIExpression()), !dbg !3607
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3598, metadata !DIExpression()), !dbg !3607
  %3 = icmp eq i8* %2, null, !dbg !3609
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3610
  br i1 %5, label %6, label %7, !dbg !3610

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3611
  unreachable, !dbg !3611

7:                                                ; preds = %1
  ret i8* %2, !dbg !3612
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %1, metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %2, metadata !3619, metadata !DIExpression()), !dbg !3620
  %4 = udiv i64 9223372036854775807, %2, !dbg !3621
  %5 = icmp ult i64 %4, %1, !dbg !3621
  br i1 %5, label %6, label %7, !dbg !3623

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3624
  unreachable, !dbg !3624

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()) #28, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %8, metadata !3631, metadata !DIExpression()) #28, !dbg !3632
  %9 = icmp eq i64 %8, 0, !dbg !3634
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3636
  br i1 %11, label %12, label %13, !dbg !3636

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3637
  br label %19, !dbg !3639

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %14, metadata !3626, metadata !DIExpression()) #28, !dbg !3632
  %15 = icmp eq i8* %14, null, !dbg !3641
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3643
  br i1 %17, label %18, label %19, !dbg !3643

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3644
  unreachable, !dbg !3644

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3632
  ret i8* %20, !dbg !3645
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3646
  %3 = icmp eq i64 %1, 0, !dbg !3647
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3648
  br i1 %5, label %6, label %7, !dbg !3648

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3649
  br label %13, !dbg !3650

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %8, metadata !3626, metadata !DIExpression()), !dbg !3646
  %9 = icmp eq i8* %8, null, !dbg !3652
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3653
  br i1 %11, label %12, label %13, !dbg !3653

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3654
  unreachable, !dbg !3654

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3646
  ret i8* %14, !dbg !3655
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !330 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !335, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64* %1, metadata !336, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %2, metadata !337, metadata !DIExpression()), !dbg !3656
  %4 = load i64, i64* %1, align 8, !dbg !3657, !tbaa !985
  call void @llvm.dbg.value(metadata i64 %4, metadata !338, metadata !DIExpression()), !dbg !3656
  %5 = icmp eq i8* %0, null, !dbg !3658
  br i1 %5, label %6, label %20, !dbg !3660

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3661
  br i1 %7, label %8, label %13, !dbg !3664

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %9, metadata !338, metadata !DIExpression()), !dbg !3656
  %10 = icmp ugt i64 %2, 128, !dbg !3667
  %11 = zext i1 %10 to i64, !dbg !3667
  %12 = add nuw nsw i64 %9, %11, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %12, metadata !338, metadata !DIExpression()), !dbg !3656
  br label %13, !dbg !3669

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3656
  call void @llvm.dbg.value(metadata i64 %14, metadata !338, metadata !DIExpression()), !dbg !3656
  %15 = udiv i64 9223372036854775807, %2, !dbg !3670
  %16 = icmp ult i64 %15, %14, !dbg !3670
  br i1 %16, label %19, label %17, !dbg !3672

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !338, metadata !DIExpression()), !dbg !3656
  store i64 %14, i64* %1, align 8, !dbg !3673, !tbaa !985
  %18 = mul i64 %14, %2, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()) #28, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %28, metadata !3631, metadata !DIExpression()) #28, !dbg !3675
  br label %31, !dbg !3677

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3678
  unreachable, !dbg !3678

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3679
  %22 = icmp ugt i64 %21, %4, !dbg !3682
  br i1 %22, label %24, label %23, !dbg !3683

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3684
  unreachable, !dbg !3684

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3685
  %26 = add nuw i64 %4, 1, !dbg !3686
  %27 = add i64 %26, %25, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %27, metadata !338, metadata !DIExpression()), !dbg !3656
  store i64 %27, i64* %1, align 8, !dbg !3673, !tbaa !985
  %28 = mul i64 %27, %2, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()) #28, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %28, metadata !3631, metadata !DIExpression()) #28, !dbg !3675
  %29 = icmp eq i64 %28, 0, !dbg !3688
  br i1 %29, label %30, label %31, !dbg !3677

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3689
  br label %38, !dbg !3690

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3691
  call void @llvm.dbg.value(metadata i8* %33, metadata !3626, metadata !DIExpression()) #28, !dbg !3675
  %34 = icmp eq i8* %33, null, !dbg !3692
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3693
  br i1 %36, label %37, label %38, !dbg !3693

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3694
  unreachable, !dbg !3694

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3675
  ret i8* %39, !dbg !3695
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3696 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %0, metadata !3593, metadata !DIExpression()) #28, !dbg !3700
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !3598, metadata !DIExpression()) #28, !dbg !3700
  %3 = icmp eq i8* %2, null, !dbg !3703
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3704
  br i1 %5, label %6, label %7, !dbg !3704

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3705
  unreachable, !dbg !3705

7:                                                ; preds = %1
  ret i8* %2, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3711, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64* %1, metadata !3712, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8* %0, metadata !335, metadata !DIExpression()) #28, !dbg !3714
  call void @llvm.dbg.value(metadata i64* %1, metadata !336, metadata !DIExpression()) #28, !dbg !3714
  call void @llvm.dbg.value(metadata i64 1, metadata !337, metadata !DIExpression()) #28, !dbg !3714
  %3 = load i64, i64* %1, align 8, !dbg !3716, !tbaa !985
  call void @llvm.dbg.value(metadata i64 %3, metadata !338, metadata !DIExpression()) #28, !dbg !3714
  %4 = icmp eq i8* %0, null, !dbg !3717
  br i1 %4, label %5, label %10, !dbg !3718

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3719
  br i1 %6, label %17, label %7, !dbg !3720

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !338, metadata !DIExpression()) #28, !dbg !3714
  %8 = icmp slt i64 %3, 0, !dbg !3721
  br i1 %8, label %9, label %17, !dbg !3722

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3723
  unreachable, !dbg !3723

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3724
  br i1 %11, label %13, label %12, !dbg !3725

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3726
  unreachable, !dbg !3726

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3727
  %15 = add nuw nsw i64 %3, 1, !dbg !3728
  %16 = add nuw nsw i64 %15, %14, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %16, metadata !338, metadata !DIExpression()) #28, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()) #28, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %16, metadata !3631, metadata !DIExpression()) #28, !dbg !3730
  br label %17, !dbg !3732

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3733
  store i64 %18, i64* %1, align 8, !dbg !3733, !tbaa !985
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %19, metadata !3626, metadata !DIExpression()) #28, !dbg !3730
  %20 = icmp eq i8* %19, null, !dbg !3735
  br i1 %20, label %21, label %22, !dbg !3736

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3737
  unreachable, !dbg !3737

22:                                               ; preds = %17
  ret i8* %19, !dbg !3738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3739 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3741, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %0, metadata !3743, metadata !DIExpression()) #28, !dbg !3748
  call void @llvm.dbg.value(metadata i64 1, metadata !3746, metadata !DIExpression()) #28, !dbg !3748
  %2 = icmp slt i64 %0, 0, !dbg !3750
  br i1 %2, label %6, label %3, !dbg !3752

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %4, metadata !3747, metadata !DIExpression()) #28, !dbg !3748
  %5 = icmp eq i8* %4, null, !dbg !3754
  br i1 %5, label %6, label %7, !dbg !3755

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3756
  unreachable, !dbg !3756

7:                                                ; preds = %3
  ret i8* %4, !dbg !3757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3743, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %1, metadata !3746, metadata !DIExpression()), !dbg !3758
  %3 = udiv i64 9223372036854775807, %1, !dbg !3759
  %4 = icmp ult i64 %3, %0, !dbg !3759
  br i1 %4, label %8, label %5, !dbg !3760

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3761
  call void @llvm.dbg.value(metadata i8* %6, metadata !3747, metadata !DIExpression()), !dbg !3758
  %7 = icmp eq i8* %6, null, !dbg !3762
  br i1 %7, label %8, label %9, !dbg !3763

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3764
  unreachable, !dbg !3764

9:                                                ; preds = %5
  ret i8* %6, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3766 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()) #28, !dbg !3773
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3775
  call void @llvm.dbg.value(metadata i8* %3, metadata !3598, metadata !DIExpression()) #28, !dbg !3773
  %4 = icmp eq i8* %3, null, !dbg !3776
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3777
  br i1 %6, label %7, label %8, !dbg !3777

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3778
  unreachable, !dbg !3778

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3779, metadata !DIExpression()) #28, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()) #28, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()) #28, !dbg !3784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !3786
  ret i8* %3, !dbg !3787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3788 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3790, metadata !DIExpression()), !dbg !3791
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3792
  %3 = add i64 %2, 1, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()) #28, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %3, metadata !3771, metadata !DIExpression()) #28, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %3, metadata !3593, metadata !DIExpression()) #28, !dbg !3796
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !3798
  call void @llvm.dbg.value(metadata i8* %4, metadata !3598, metadata !DIExpression()) #28, !dbg !3796
  %5 = icmp eq i8* %4, null, !dbg !3799
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3800
  br i1 %7, label %8, label %9, !dbg !3800

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3801
  unreachable, !dbg !3801

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3779, metadata !DIExpression()) #28, !dbg !3802
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()) #28, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %3, metadata !3783, metadata !DIExpression()) #28, !dbg !3802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !3804
  ret i8* %4, !dbg !3805
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3806 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3807, !tbaa !948
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.153, i64 0, i64 0), i32 5) #28, !dbg !3808
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), i8* %2) #28, !dbg !3809
  tail call void @abort() #30, !dbg !3810
  unreachable, !dbg !3810
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3811 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()), !dbg !3819
  %3 = icmp eq i64 %0, 0, !dbg !3820
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3821
  br i1 %5, label %11, label %6, !dbg !3821

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3816, metadata !DIExpression()), !dbg !3822
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3823
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3823
  br i1 %8, label %9, label %11, !dbg !3825

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !3826
  store i32 12, i32* %10, align 4, !dbg !3828, !tbaa !948
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %12, metadata !3814, metadata !DIExpression()), !dbg !3819
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %14, metadata !3815, metadata !DIExpression()), !dbg !3819
  br label %15, !dbg !3830

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3819
  ret i8* %16, !dbg !3831
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3832 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3870, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()), !dbg !3874
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %2, metadata !3872, metadata !DIExpression()), !dbg !3874
  %3 = icmp slt i32 %2, 0, !dbg !3876
  br i1 %3, label %4, label %6, !dbg !3878

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3879
  br label %24, !dbg !3880

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3881
  %8 = icmp eq i32 %7, 0, !dbg !3881
  br i1 %8, label %13, label %9, !dbg !3883

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3884
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !3885
  %12 = icmp eq i64 %11, -1, !dbg !3886
  br i1 %12, label %16, label %13, !dbg !3887

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !3888
  %15 = icmp eq i32 %14, 0, !dbg !3888
  br i1 %15, label %16, label %18, !dbg !3889

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3871, metadata !DIExpression()), !dbg !3874
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3890
  call void @llvm.dbg.value(metadata i32 %21, metadata !3873, metadata !DIExpression()), !dbg !3874
  br label %24, !dbg !3891

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !3892
  %20 = load i32, i32* %19, align 4, !dbg !3892, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %20, metadata !3871, metadata !DIExpression()), !dbg !3874
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3890
  call void @llvm.dbg.value(metadata i32 %21, metadata !3873, metadata !DIExpression()), !dbg !3874
  %22 = icmp eq i32 %20, 0, !dbg !3893
  br i1 %22, label %24, label %23, !dbg !3891

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3895, !tbaa !948
  call void @llvm.dbg.value(metadata i32 -1, metadata !3873, metadata !DIExpression()), !dbg !3874
  br label %24, !dbg !3897

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3874
  ret i32 %25, !dbg !3898
}

; Function Attrs: nofree nounwind
declare !dbg !3899 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3902 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3903 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3907 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3945, metadata !DIExpression()), !dbg !3946
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3947
  br i1 %2, label %6, label %3, !dbg !3949

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3950
  %5 = icmp eq i32 %4, 0, !dbg !3950
  br i1 %5, label %6, label %8, !dbg !3951

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3952
  br label %17, !dbg !3953

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3954, metadata !DIExpression()) #28, !dbg !3959
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3961
  %10 = load i32, i32* %9, align 8, !dbg !3961, !tbaa !3963
  %11 = and i32 %10, 256, !dbg !3964
  %12 = icmp eq i32 %11, 0, !dbg !3964
  br i1 %12, label %15, label %13, !dbg !3965

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !3966
  br label %15, !dbg !3966

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3967
  br label %17, !dbg !3968

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3946
  ret i32 %18, !dbg !3969
}

; Function Attrs: nofree nounwind
declare !dbg !3970 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3973 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4012, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %2, metadata !4014, metadata !DIExpression()), !dbg !4018
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4019
  %5 = load i8*, i8** %4, align 8, !dbg !4019, !tbaa !4020
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4021
  %7 = load i8*, i8** %6, align 8, !dbg !4021, !tbaa !4022
  %8 = icmp eq i8* %5, %7, !dbg !4023
  br i1 %8, label %9, label %28, !dbg !4024

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4025
  %11 = load i8*, i8** %10, align 8, !dbg !4025, !tbaa !1040
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4026
  %13 = load i8*, i8** %12, align 8, !dbg !4026, !tbaa !4027
  %14 = icmp eq i8* %11, %13, !dbg !4028
  br i1 %14, label %15, label %28, !dbg !4029

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4030
  %17 = load i8*, i8** %16, align 8, !dbg !4030, !tbaa !4031
  %18 = icmp eq i8* %17, null, !dbg !4032
  br i1 %18, label %19, label %28, !dbg !4033

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4034
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %21, metadata !4015, metadata !DIExpression()), !dbg !4036
  %22 = icmp eq i64 %21, -1, !dbg !4037
  br i1 %22, label %30, label %23, !dbg !4039

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4040
  %25 = load i32, i32* %24, align 8, !dbg !4041, !tbaa !3963
  %26 = and i32 %25, -17, !dbg !4041
  store i32 %26, i32* %24, align 8, !dbg !4041, !tbaa !3963
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4042
  store i64 %21, i64* %27, align 8, !dbg !4043, !tbaa !4044
  br label %30, !dbg !4045

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4046
  br label %30, !dbg !4047

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4018
  ret i32 %31, !dbg !4048
}

; Function Attrs: nofree nounwind
declare !dbg !4049 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
  %16 = load i8, i8* %1, align 1, !dbg !4087, !tbaa !1045
  call void @llvm.dbg.value(metadata i8 %16, metadata !4074, metadata !DIExpression()), !dbg !4088
  %17 = zext i8 %16 to i32, !dbg !4089
  store i32 %17, i32* %8, align 4, !dbg !4090, !tbaa !948
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
  store i8 0, i8* %5, align 1, !dbg !4139, !tbaa !1045
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
  %13 = load i8, i8* %12, align 1, !dbg !4147, !tbaa !1045
  %14 = icmp eq i8 %13, 32, !dbg !4148
  br i1 %14, label %15, label %17, !dbg !4146

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !4125, metadata !DIExpression()), !dbg !4127
  store i8 0, i8* %12, align 1, !dbg !4149, !tbaa !1045
  %16 = icmp ult i8* %2, %12, !dbg !4142
  br i1 %16, label %10, label %17, !dbg !4144, !llvm.loop !4150

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !4152
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #11

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
  %19 = load i8, i8* %18, align 4, !dbg !4183, !tbaa !1045
  %20 = icmp eq i8 %19, 0, !dbg !4183
  br i1 %20, label %25, label %21, !dbg !4183

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4183
  %23 = load i16, i16* %22, align 4, !dbg !4183, !tbaa !1049
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
  %32 = load i32, i32* %31, align 4, !dbg !4188, !tbaa !4189
  %33 = icmp sgt i32 %32, 0, !dbg !4190
  br i1 %33, label %34, label %41, !dbg !4191

34:                                               ; preds = %30
  %35 = tail call i32 @kill(i32 %32, i32 0) #28, !dbg !4192
  %36 = icmp slt i32 %35, 0, !dbg !4193
  br i1 %36, label %37, label %41, !dbg !4194

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #32, !dbg !4195
  %39 = load i32, i32* %38, align 4, !dbg !4195, !tbaa !948
  %40 = icmp eq i32 %39, 3, !dbg !4196
  br i1 %40, label %70, label %41, !dbg !4197

41:                                               ; preds = %37, %34, %30, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !4164, metadata !DIExpression()), !dbg !4167
  %42 = icmp eq i64 %15, %17, !dbg !4198
  br i1 %42, label %43, label %63, !dbg !4201

43:                                               ; preds = %41
  %44 = bitcast %struct.utmpx* %16 to i8*, !dbg !4202
  call void @llvm.dbg.value(metadata i8* %44, metadata !365, metadata !DIExpression()) #28, !dbg !4203
  call void @llvm.dbg.value(metadata i64* undef, metadata !366, metadata !DIExpression()) #28, !dbg !4203
  call void @llvm.dbg.value(metadata i64 384, metadata !367, metadata !DIExpression()) #28, !dbg !4203
  call void @llvm.dbg.value(metadata i64 %17, metadata !368, metadata !DIExpression()) #28, !dbg !4203
  %45 = icmp eq %struct.utmpx* %16, null, !dbg !4205
  br i1 %45, label %46, label %51, !dbg !4207

46:                                               ; preds = %43
  %47 = icmp eq i64 %15, 0, !dbg !4208
  br i1 %47, label %58, label %48, !dbg !4211

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 %17, metadata !368, metadata !DIExpression()) #28, !dbg !4203
  %49 = icmp ugt i64 %15, 24019198012642645, !dbg !4212
  br i1 %49, label %50, label %58, !dbg !4214

50:                                               ; preds = %48
  tail call void @xalloc_die() #30, !dbg !4215
  unreachable, !dbg !4215

51:                                               ; preds = %43
  %52 = icmp ult i64 %15, 16012798675095096, !dbg !4216
  br i1 %52, label %54, label %53, !dbg !4219

53:                                               ; preds = %51
  tail call void @xalloc_die() #30, !dbg !4220
  unreachable, !dbg !4220

54:                                               ; preds = %51
  %55 = lshr i64 %15, 1, !dbg !4221
  %56 = add nuw nsw i64 %15, 1, !dbg !4222
  %57 = add nuw nsw i64 %56, %55, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %57, metadata !368, metadata !DIExpression()) #28, !dbg !4203
  br label %58

58:                                               ; preds = %46, %48, %54
  %59 = phi i64 [ %57, %54 ], [ %15, %48 ], [ 1, %46 ], !dbg !4203
  call void @llvm.dbg.value(metadata i64 %59, metadata !368, metadata !DIExpression()) #28, !dbg !4203
  %60 = mul nuw nsw i64 %59, 384, !dbg !4224
  %61 = tail call i8* @xrealloc(i8* %44, i64 %60) #28, !dbg !4225
  %62 = bitcast i8* %61 to %struct.utmpx*, !dbg !4226
  call void @llvm.dbg.value(metadata %struct.utmpx* %62, metadata !4165, metadata !DIExpression()), !dbg !4167
  br label %63, !dbg !4227

63:                                               ; preds = %58, %41
  %64 = phi i64 [ %59, %58 ], [ %17, %41 ], !dbg !4167
  %65 = phi %struct.utmpx* [ %62, %58 ], [ %16, %41 ], !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %65, metadata !4165, metadata !DIExpression()), !dbg !4167
  %66 = add i64 %15, 1, !dbg !4228
  call void @llvm.dbg.value(metadata i64 %66, metadata !4163, metadata !DIExpression()), !dbg !4167
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !4229
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !4230
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !4230
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %68, i8* nonnull align 4 dereferenceable(384) %69, i64 384, i1 false), !dbg !4230, !tbaa.struct !4231
  br label %70, !dbg !4232

70:                                               ; preds = %37, %25, %63
  %71 = phi i64 [ %64, %63 ], [ %17, %25 ], [ %17, %37 ], !dbg !4167
  %72 = phi %struct.utmpx* [ %65, %63 ], [ %16, %25 ], [ %16, %37 ], !dbg !4167
  %73 = phi i64 [ %66, %63 ], [ %15, %25 ], [ %15, %37 ], !dbg !4167
  call void @llvm.dbg.value(metadata i64 %73, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %struct.utmpx* %72, metadata !4165, metadata !DIExpression()), !dbg !4167
  %74 = tail call %struct.utmpx* @getutxent() #28, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.utmpx* %74, metadata !4166, metadata !DIExpression()), !dbg !4167
  %75 = icmp eq %struct.utmpx* %74, null, !dbg !4171
  br i1 %75, label %76, label %13, !dbg !4172, !llvm.loop !4233

76:                                               ; preds = %70, %4
  %77 = phi %struct.utmpx* [ null, %4 ], [ %72, %70 ], !dbg !4167
  %78 = phi i64 [ 0, %4 ], [ %73, %70 ], !dbg !4167
  tail call void @endutxent() #28, !dbg !4235
  store i64 %78, i64* %1, align 8, !dbg !4236, !tbaa !985
  store %struct.utmpx* %77, %struct.utmpx** %2, align 8, !dbg !4237, !tbaa !778
  ret i32 0, !dbg !4238
}

declare !dbg !4239 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !4243 void @setutxent() local_unnamed_addr #3

declare !dbg !4244 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !4248 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !4252 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4253 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4291, metadata !DIExpression()), !dbg !4296
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !4297
  call void @llvm.dbg.value(metadata i1 undef, metadata !4292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4298, metadata !DIExpression()), !dbg !4301
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4303
  %4 = load i32, i32* %3, align 8, !dbg !4303, !tbaa !3963
  %5 = and i32 %4, 32, !dbg !4304
  %6 = icmp eq i32 %5, 0, !dbg !4304
  call void @llvm.dbg.value(metadata i1 %6, metadata !4294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !4305
  %8 = icmp eq i32 %7, 0, !dbg !4306
  call void @llvm.dbg.value(metadata i1 %8, metadata !4295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  br i1 %6, label %9, label %19, !dbg !4307

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %10, metadata !4292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4296
  %11 = or i1 %10, %8, !dbg !4310
  %12 = xor i1 %8, true, !dbg !4310
  %13 = sext i1 %12 to i32, !dbg !4310
  br i1 %11, label %22, label %14, !dbg !4310

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4311
  %16 = load i32, i32* %15, align 4, !dbg !4311, !tbaa !948
  %17 = icmp ne i32 %16, 9, !dbg !4312
  %18 = sext i1 %17 to i32, !dbg !4313
  br label %22, !dbg !4313

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4314

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4316
  store i32 0, i32* %21, align 4, !dbg !4318, !tbaa !948
  br label %22, !dbg !4316

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4296
  ret i32 %23, !dbg !4319
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4320 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  %2 = icmp eq i8* %1, null, !dbg !4325
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.171, i64 0, i64 0), i8* %1, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %3, metadata !4322, metadata !DIExpression()), !dbg !4324
  %4 = load i8, i8* %3, align 1, !dbg !4328, !tbaa !1045
  %5 = icmp eq i8 %4, 0, !dbg !4332
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i64 0, i64 0), i8* %3, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %6, metadata !4322, metadata !DIExpression()), !dbg !4324
  ret i8* %6, !dbg !4334
}

; Function Attrs: nounwind
declare !dbg !4335 i8* @nl_langinfo(i32) local_unnamed_addr #2

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
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #13 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !187, !193, !234, !241, !308, !310, !247, !253, !316, !319, !302, !325, !342, !344, !346, !348, !350, !352, !355, !370, !372}
!llvm.ident = !{!761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761, !761}
!llvm.module.flags = !{!762, !763, !764, !765, !766}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pinky.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 148, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23}
!23 = !DIEnumerator(name: "UT_USER_SIZE", value: 32, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 46, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!27 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!39 = !{!40, !42, !43, !44, !45, !48, !49}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!51 = !{!0, !52, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !92, !97}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "do_short_format", scope: !2, file: !3, line: 63, type: !54, isLocal: true, isDefinition: true)
!54 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 47, type: !54, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "include_fullname", scope: !2, file: !3, line: 50, type: !54, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "include_where", scope: !2, file: !3, line: 67, type: !54, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 44, type: !54, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "include_project", scope: !2, file: !3, line: 53, type: !54, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "include_plan", scope: !2, file: !3, line: 56, type: !54, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "include_home_and_shell", scope: !2, file: !3, line: 60, type: !54, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 72, type: !49, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 73, type: !44, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "now", scope: !75, file: !3, line: 149, type: !78, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 147, type: !76, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!76 = !DISubroutineType(types: !77)
!77 = !{!49, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 160, baseType: !82)
!81 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!82 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!83 = !{!84, !85, !86, !89, !90}
!84 = !DILocalVariable(name: "when", arg: 1, scope: !75, file: !3, line: 147, type: !78)
!85 = !DILocalVariable(name: "seconds_idle", scope: !75, file: !3, line: 151, type: !78)
!86 = !DILocalVariable(name: "hours", scope: !87, file: !3, line: 161, type: !44)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 160, column: 5)
!88 = distinct !DILexicalBlock(scope: !75, file: !3, line: 159, column: 7)
!89 = !DILocalVariable(name: "minutes", scope: !87, file: !3, line: 162, type: !44)
!90 = !DILocalVariable(name: "days", scope: !91, file: !3, line: 167, type: !47)
!91 = distinct !DILexicalBlock(scope: !88, file: !3, line: 166, column: 5)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "buf", scope: !75, file: !3, line: 150, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 176, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 22)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "buf", scope: !99, file: !3, line: 177, type: !162, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 175, type: !100, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!100 = !DISubroutineType(types: !101)
!101 = !{!49, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !106, line: 55, size: 3072, elements: !107)
!106 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!107 = !{!108, !110, !112, !116, !120, !121, !125, !130, !132, !137, !139}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !105, file: !106, line: 57, baseType: !109, size: 16)
!109 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !105, file: !106, line: 58, baseType: !111, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !81, line: 154, baseType: !44)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !105, file: !106, line: 59, baseType: !113, size: 256, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !105, file: !106, line: 61, baseType: !117, size: 32, offset: 320)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !105, file: !106, line: 63, baseType: !113, size: 256, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !105, file: !106, line: 65, baseType: !122, size: 2048, offset: 608)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !105, file: !106, line: 67, baseType: !126, size: 32, offset: 2656)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !106, line: 42, size: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !126, file: !106, line: 45, baseType: !109, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !126, file: !106, line: 46, baseType: !109, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !105, file: !106, line: 74, baseType: !131, size: 32, offset: 2688)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !81, line: 41, baseType: !44)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !105, file: !106, line: 79, baseType: !133, size: 64, offset: 2720)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !106, line: 75, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !133, file: !106, line: 77, baseType: !131, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !133, file: !106, line: 78, baseType: !131, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !105, file: !106, line: 84, baseType: !138, size: 128, offset: 2784)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !118)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !105, file: !106, line: 85, baseType: !140, size: 160, offset: 2912)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !99, file: !3, line: 175, type: !102)
!145 = !DILocalVariable(name: "t", scope: !99, file: !3, line: 185, type: !78)
!146 = !DILocalVariable(name: "tmp", scope: !99, file: !3, line: 186, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !149, line: 7, size: 448, elements: !150)
!149 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !148, file: !149, line: 9, baseType: !44, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !148, file: !149, line: 10, baseType: !44, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !148, file: !149, line: 11, baseType: !44, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !148, file: !149, line: 12, baseType: !44, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !148, file: !149, line: 13, baseType: !44, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !148, file: !149, line: 14, baseType: !44, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !148, file: !149, line: 15, baseType: !44, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !148, file: !149, line: 16, baseType: !44, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !148, file: !149, line: 17, baseType: !44, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !148, file: !149, line: 20, baseType: !82, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !148, file: !149, line: 21, baseType: !49, size: 64, offset: 384)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 264, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 33)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 768, elements: !175)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !168, line: 50, size: 256, elements: !169)
!168 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!169 = !{!170, !171, !172, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 52, baseType: !49, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !167, file: !168, line: 55, baseType: !44, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !167, file: !168, line: 56, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !168, line: 57, baseType: !44, size: 32, offset: 192)
!175 = !{!176}
!176 = !DISubrange(count: 3)
!177 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!178 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!179 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!180 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!181 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!182 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!183 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!184 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !49, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "last_cherror", scope: !193, file: !194, line: 28, type: !44, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!196, !191}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "hints", scope: !198, file: !194, line: 64, type: !207, isLocal: true, isDefinition: true)
!198 = distinct !DISubprogram(name: "canon_host_r", scope: !194, file: !194, line: 61, type: !199, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!40, !49, !173}
!201 = !{!202, !203, !204, !205, !231}
!202 = !DILocalVariable(name: "host", arg: 1, scope: !198, file: !194, line: 61, type: !49)
!203 = !DILocalVariable(name: "cherror", arg: 2, scope: !198, file: !194, line: 61, type: !173)
!204 = !DILocalVariable(name: "retval", scope: !198, file: !194, line: 63, type: !40)
!205 = !DILocalVariable(name: "res", scope: !198, file: !194, line: 65, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !208, line: 565, size: 384, elements: !209)
!208 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!209 = !{!210, !211, !212, !213, !214, !218, !229, !230}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !207, file: !208, line: 567, baseType: !44, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !207, file: !208, line: 568, baseType: !44, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !207, file: !208, line: 569, baseType: !44, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !207, file: !208, line: 570, baseType: !44, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !207, file: !208, line: 571, baseType: !215, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !216, line: 33, baseType: !217)
!216 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !81, line: 210, baseType: !7)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !207, file: !208, line: 572, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !216, line: 178, size: 128, elements: !221)
!221 = !{!222, !225}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !220, file: !216, line: 180, baseType: !223, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !224, line: 28, baseType: !48)
!224 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !220, file: !216, line: 181, baseType: !226, size: 112, offset: 16)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 112, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 14)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !207, file: !208, line: 573, baseType: !40, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !207, file: !208, line: 574, baseType: !206, size: 64, offset: 320)
!231 = !DILocalVariable(name: "status", scope: !198, file: !194, line: 66, type: !44)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "file_name", scope: !234, file: !235, line: 46, type: !49, isLocal: true, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !236, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!236 = !{!232, !237}
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !234, file: !235, line: 56, type: !54, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "exit_failure", scope: !241, file: !242, line: 24, type: !244, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !243, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!243 = !{!239}
!244 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "program_name", scope: !247, file: !248, line: 33, type: !49, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !249, globals: !250, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !{!42, !40}
!250 = !{!245}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !253, file: !254, line: 85, type: !296, isLocal: false, isDefinition: true)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255, retainedTypes: !261, globals: !262, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!5, !256, !24}
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!259 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!260 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!261 = !{!44, !48, !45, !40}
!262 = !{!251, !263, !269, !281, !283, !285, !292, !294}
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !253, file: !254, line: 101, type: !265, isLocal: false, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 320, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!267 = !{!268}
!268 = !DISubrange(count: 10)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !253, file: !254, line: 1052, type: !271, isLocal: false, isDefinition: true)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !254, line: 65, size: 448, elements: !272)
!272 = !{!273, !274, !275, !279, !280}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !271, file: !254, line: 68, baseType: !5, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !254, line: 71, baseType: !44, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !271, file: !254, line: 75, baseType: !276, size: 256, offset: 64)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !271, file: !254, line: 78, baseType: !49, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !271, file: !254, line: 81, baseType: !49, size: 64, offset: 384)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !253, file: !254, line: 116, type: !271, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "slot0", scope: !253, file: !254, line: 842, type: !122, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "slotvec", scope: !253, file: !254, line: 845, type: !287, isLocal: true, isDefinition: true)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !254, line: 834, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !288, file: !254, line: 836, baseType: !45, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !288, file: !254, line: 837, baseType: !40, size: 64, offset: 64)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "nslots", scope: !253, file: !254, line: 843, type: !44, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "slotvec0", scope: !253, file: !254, line: 844, type: !288, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 704, elements: !298)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!298 = !{!299}
!299 = !DISubrange(count: 11)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !302, file: !303, line: 26, type: !305, isLocal: false, isDefinition: true)
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !304, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!304 = !{!300}
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 376, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 47)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !312, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/imaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !314, line: 101, baseType: !315)
!314 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !81, line: 72, baseType: !82)
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!318 = !{!42}
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !321, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!321 = !{!322}
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 40, baseType: !7, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !341, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!327 = !{!328}
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !330, file: !329, line: 186, baseType: !7, size: 32, elements: !339)
!329 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = distinct !DISubprogram(name: "x2nrealloc", scope: !329, file: !329, line: 174, type: !331, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !334)
!331 = !DISubroutineType(types: !332)
!332 = !{!42, !42, !333, !45}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!334 = !{!335, !336, !337, !338}
!335 = !DILocalVariable(name: "p", arg: 1, scope: !330, file: !329, line: 174, type: !42)
!336 = !DILocalVariable(name: "pn", arg: 2, scope: !330, file: !329, line: 174, type: !333)
!337 = !DILocalVariable(name: "s", arg: 3, scope: !330, file: !329, line: 174, type: !45)
!338 = !DILocalVariable(name: "n", scope: !330, file: !329, line: 176, type: !45)
!339 = !{!340}
!340 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!341 = !{!45, !40, !42}
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!345 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!346 = distinct !DICompileUnit(language: DW_LANG_C99, file: !347, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!347 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !354, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !{!45}
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, retainedTypes: !369, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!357 = !{!358, !362}
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 208, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361}
!360 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!361 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !363, file: !329, line: 186, baseType: !7, size: 32, elements: !339)
!363 = distinct !DISubprogram(name: "x2nrealloc", scope: !329, file: !329, line: 174, type: !331, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !364)
!364 = !{!365, !366, !367, !368}
!365 = !DILocalVariable(name: "p", arg: 1, scope: !363, file: !329, line: 174, type: !42)
!366 = !DILocalVariable(name: "pn", arg: 2, scope: !363, file: !329, line: 174, type: !333)
!367 = !DILocalVariable(name: "s", arg: 3, scope: !363, file: !329, line: 174, type: !45)
!368 = !DILocalVariable(name: "n", scope: !363, file: !329, line: 176, type: !45)
!369 = !{!40, !42, !45}
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !374, retainedTypes: !318, splitDebugInlining: false, nameTableKind: None)
!373 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!374 = !{!375}
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !376, line: 41, baseType: !7, size: 32, elements: !377)
!376 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!378 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!379 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!380 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!381 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!382 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!383 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!384 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!385 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!386 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!387 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!388 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!389 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!390 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!391 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!392 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!393 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!394 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!395 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!396 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!397 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!398 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!399 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!400 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!401 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!402 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!403 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!404 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!405 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!406 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!407 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!408 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!409 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!410 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!411 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!412 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!413 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!414 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!415 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!416 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!417 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!418 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!419 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!420 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!421 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!422 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!423 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!424 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!425 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!426 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!427 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!486 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!489 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!490 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!491 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!492 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!493 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!494 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!495 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!496 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!497 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!498 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!499 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!500 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!573 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!646 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!647 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!648 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!649 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!650 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!651 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!652 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!653 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!654 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!655 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!656 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!657 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!658 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!659 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!660 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!662 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!663 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!664 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!665 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!666 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!667 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!693 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!694 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!695 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!696 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!697 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!702 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!703 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!704 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!705 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!761 = !{!"clang version 12.0.1"}
!762 = !{i32 7, !"Dwarf Version", i32 4}
!763 = !{i32 2, !"Debug Info Version", i32 3}
!764 = !{i32 1, !"wchar_size", i32 4}
!765 = !{i32 7, !"PIC Level", i32 2}
!766 = !{i32 7, !"PIE Level", i32 2}
!767 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 483, type: !768, scopeLine: 484, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !44}
!770 = !{!771}
!771 = !DILocalVariable(name: "status", arg: 1, scope: !767, file: !3, line: 483, type: !44)
!772 = !DILocation(line: 0, scope: !767)
!773 = !DILocation(line: 485, column: 14, scope: !774)
!774 = distinct !DILexicalBlock(scope: !767, file: !3, line: 485, column: 7)
!775 = !DILocation(line: 485, column: 7, scope: !767)
!776 = !DILocation(line: 486, column: 5, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 486, column: 5)
!778 = !{!779, !779, i64 0}
!779 = !{!"any pointer", !780, i64 0}
!780 = !{!"omnipotent char", !781, i64 0}
!781 = !{!"Simple C/C++ TBAA"}
!782 = !DILocation(line: 489, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !774, file: !3, line: 488, column: 5)
!784 = !DILocation(line: 490, column: 7, scope: !783)
!785 = !DILocation(line: 498, column: 7, scope: !783)
!786 = !DILocation(line: 505, column: 7, scope: !783)
!787 = !DILocation(line: 506, column: 7, scope: !783)
!788 = !DILocation(line: 507, column: 7, scope: !783)
!789 = !DILocalVariable(name: "program", arg: 1, scope: !790, file: !791, line: 634, type: !49)
!790 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !791, file: !791, line: 634, type: !792, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!791 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!792 = !DISubroutineType(types: !793)
!793 = !{null, !49}
!794 = !{!789, !795, !804, !805, !807}
!795 = !DILocalVariable(name: "infomap", scope: !790, file: !791, line: 636, type: !796)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 896, elements: !802)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !790, file: !791, line: 636, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !798, file: !791, line: 636, baseType: !49, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !798, file: !791, line: 636, baseType: !49, size: 64, offset: 64)
!802 = !{!803}
!803 = !DISubrange(count: 7)
!804 = !DILocalVariable(name: "node", scope: !790, file: !791, line: 646, type: !49)
!805 = !DILocalVariable(name: "map_prog", scope: !790, file: !791, line: 647, type: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!807 = !DILocalVariable(name: "lc_messages", scope: !790, file: !791, line: 659, type: !49)
!808 = !DILocation(line: 0, scope: !790, inlinedAt: !809)
!809 = distinct !DILocation(line: 512, column: 7, scope: !783)
!810 = !DILocation(line: 636, column: 3, scope: !790, inlinedAt: !809)
!811 = !DILocation(line: 636, column: 67, scope: !790, inlinedAt: !809)
!812 = !DILocation(line: 647, column: 36, scope: !790, inlinedAt: !809)
!813 = !DILocation(line: 649, column: 3, scope: !790, inlinedAt: !809)
!814 = !DILocation(line: 649, column: 33, scope: !790, inlinedAt: !809)
!815 = !DILocation(line: 650, column: 13, scope: !790, inlinedAt: !809)
!816 = !DILocation(line: 649, column: 20, scope: !790, inlinedAt: !809)
!817 = !{!818, !779, i64 0}
!818 = !{!"infomap", !779, i64 0, !779, i64 8}
!819 = !DILocation(line: 649, column: 10, scope: !790, inlinedAt: !809)
!820 = !DILocation(line: 649, column: 28, scope: !790, inlinedAt: !809)
!821 = distinct !{!821, !813, !815, !822}
!822 = !{!"llvm.loop.mustprogress"}
!823 = !DILocation(line: 652, column: 17, scope: !824, inlinedAt: !809)
!824 = distinct !DILexicalBlock(scope: !790, file: !791, line: 652, column: 7)
!825 = !{!818, !779, i64 8}
!826 = !DILocation(line: 652, column: 7, scope: !824, inlinedAt: !809)
!827 = !DILocation(line: 652, column: 7, scope: !790, inlinedAt: !809)
!828 = !DILocation(line: 655, column: 3, scope: !790, inlinedAt: !809)
!829 = !DILocation(line: 659, column: 29, scope: !790, inlinedAt: !809)
!830 = !DILocation(line: 660, column: 7, scope: !831, inlinedAt: !809)
!831 = distinct !DILexicalBlock(scope: !790, file: !791, line: 660, column: 7)
!832 = !DILocation(line: 660, column: 19, scope: !831, inlinedAt: !809)
!833 = !DILocation(line: 660, column: 22, scope: !831, inlinedAt: !809)
!834 = !DILocation(line: 660, column: 7, scope: !790, inlinedAt: !809)
!835 = !DILocation(line: 666, column: 7, scope: !836, inlinedAt: !809)
!836 = distinct !DILexicalBlock(scope: !831, file: !791, line: 661, column: 5)
!837 = !DILocation(line: 668, column: 5, scope: !836, inlinedAt: !809)
!838 = !DILocation(line: 669, column: 3, scope: !790, inlinedAt: !809)
!839 = !DILocation(line: 671, column: 3, scope: !790, inlinedAt: !809)
!840 = !DILocation(line: 673, column: 1, scope: !790, inlinedAt: !809)
!841 = !DILocation(line: 514, column: 3, scope: !767)
!842 = !DISubprogram(name: "dcgettext", scope: !843, file: !843, line: 51, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!843 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!844 = !DISubroutineType(types: !845)
!845 = !{!40, !49, !49, !44}
!846 = !DISubprogram(name: "fputs_unlocked", scope: !847, file: !847, line: 667, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!847 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!848 = !DISubroutineType(types: !849)
!849 = !{!44, !49, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !853)
!852 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !869, !870, !871, !872, !874, !875, !877, !881, !884, !886, !889, !892, !893, !894, !895, !896}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !851, file: !852, line: 51, baseType: !44, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !851, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !851, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !851, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !851, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !851, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !851, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !851, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !851, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !851, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !851, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !851, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !851, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !852, line: 36, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !851, file: !852, line: 70, baseType: !850, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !851, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !851, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !851, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 152, baseType: !82)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !851, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !851, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!876 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !851, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 1)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !851, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !852, line: 43, baseType: null)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !851, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 153, baseType: !82)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !851, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !852, line: 37, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !851, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !852, line: 38, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !851, file: !852, line: 93, baseType: !850, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !851, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !851, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !851, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !851, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!897 = !DISubprogram(name: "setlocale", scope: !898, file: !898, line: 122, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!898 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!899 = !DISubroutineType(types: !900)
!900 = !{!40, !44, !49}
!901 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 518, type: !902, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!902 = !DISubroutineType(types: !903)
!903 = !{!44, !44, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!905 = !{!906, !907, !908, !909}
!906 = !DILocalVariable(name: "argc", arg: 1, scope: !901, file: !3, line: 518, type: !44)
!907 = !DILocalVariable(name: "argv", arg: 2, scope: !901, file: !3, line: 518, type: !904)
!908 = !DILocalVariable(name: "optc", scope: !901, file: !3, line: 520, type: !44)
!909 = !DILocalVariable(name: "n_users", scope: !901, file: !3, line: 521, type: !44)
!910 = !DILocation(line: 0, scope: !901)
!911 = !DILocation(line: 524, column: 21, scope: !901)
!912 = !DILocation(line: 524, column: 3, scope: !901)
!913 = !DILocation(line: 525, column: 3, scope: !901)
!914 = !DILocation(line: 526, column: 3, scope: !901)
!915 = !DILocation(line: 527, column: 3, scope: !901)
!916 = !DILocation(line: 529, column: 3, scope: !901)
!917 = !DILocation(line: 531, column: 3, scope: !901)
!918 = !DILocation(line: 531, column: 18, scope: !901)
!919 = !DILocation(line: 536, column: 27, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 534, column: 9)
!921 = distinct !DILexicalBlock(scope: !901, file: !3, line: 532, column: 5)
!922 = !DILocation(line: 537, column: 11, scope: !920)
!923 = !DILocation(line: 540, column: 27, scope: !920)
!924 = !DILocation(line: 541, column: 11, scope: !920)
!925 = !DILocation(line: 544, column: 27, scope: !920)
!926 = !DILocation(line: 545, column: 11, scope: !920)
!927 = !DILocation(line: 548, column: 28, scope: !920)
!928 = !DILocation(line: 549, column: 11, scope: !920)
!929 = !DILocation(line: 552, column: 28, scope: !920)
!930 = !DILocation(line: 554, column: 25, scope: !920)
!931 = !DILocation(line: 556, column: 11, scope: !920)
!932 = !DILocation(line: 559, column: 28, scope: !920)
!933 = !DILocation(line: 561, column: 25, scope: !920)
!934 = !DILocation(line: 563, column: 24, scope: !920)
!935 = !DILocation(line: 564, column: 11, scope: !920)
!936 = !DILocation(line: 567, column: 27, scope: !920)
!937 = !DILocation(line: 568, column: 11, scope: !920)
!938 = !DILocation(line: 571, column: 24, scope: !920)
!939 = !DILocation(line: 572, column: 11, scope: !920)
!940 = !DILocation(line: 575, column: 34, scope: !920)
!941 = !DILocation(line: 576, column: 11, scope: !920)
!942 = distinct !{!942, !917, !943, !822}
!943 = !DILocation(line: 585, column: 5, scope: !901)
!944 = !DILocation(line: 578, column: 9, scope: !920)
!945 = !DILocation(line: 580, column: 9, scope: !920)
!946 = !DILocation(line: 583, column: 11, scope: !920)
!947 = !DILocation(line: 587, column: 20, scope: !901)
!948 = !{!949, !949, i64 0}
!949 = !{!"int", !780, i64 0}
!950 = !DILocation(line: 587, column: 18, scope: !901)
!951 = !DILocation(line: 589, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !901, file: !3, line: 589, column: 7)
!953 = !DILocation(line: 589, column: 24, scope: !952)
!954 = !DILocation(line: 591, column: 20, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 590, column: 5)
!956 = !DILocation(line: 591, column: 7, scope: !955)
!957 = !DILocation(line: 593, column: 7, scope: !955)
!958 = !DILocation(line: 0, scope: !959)
!959 = distinct !DILexicalBlock(scope: !901, file: !3, line: 596, column: 7)
!960 = !DILocation(line: 596, column: 7, scope: !901)
!961 = !DILocalVariable(name: "filename", arg: 1, scope: !962, file: !3, line: 461, type: !49)
!962 = distinct !DISubprogram(name: "short_pinky", scope: !3, file: !3, line: 461, type: !963, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !49, !965, !966}
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!968 = !{!961, !969, !970, !971, !972}
!969 = !DILocalVariable(name: "argc_names", arg: 2, scope: !962, file: !3, line: 462, type: !965)
!970 = !DILocalVariable(name: "argv_names", arg: 3, scope: !962, file: !3, line: 462, type: !966)
!971 = !DILocalVariable(name: "n_users", scope: !962, file: !3, line: 464, type: !45)
!972 = !DILocalVariable(name: "utmp_buf", scope: !962, file: !3, line: 465, type: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!974 = !DILocation(line: 0, scope: !962, inlinedAt: !975)
!975 = distinct !DILocation(line: 597, column: 5, scope: !959)
!976 = !DILocation(line: 464, column: 3, scope: !962, inlinedAt: !975)
!977 = !DILocation(line: 465, column: 3, scope: !962, inlinedAt: !975)
!978 = !DILocation(line: 465, column: 16, scope: !962, inlinedAt: !975)
!979 = !DILocation(line: 467, column: 7, scope: !980, inlinedAt: !975)
!980 = distinct !DILexicalBlock(scope: !962, file: !3, line: 467, column: 7)
!981 = !DILocation(line: 467, column: 52, scope: !980, inlinedAt: !975)
!982 = !DILocation(line: 467, column: 7, scope: !962, inlinedAt: !975)
!983 = !DILocation(line: 468, column: 5, scope: !980, inlinedAt: !975)
!984 = !DILocation(line: 470, column: 17, scope: !962, inlinedAt: !975)
!985 = !{!986, !986, i64 0}
!986 = !{!"long", !780, i64 0}
!987 = !DILocation(line: 470, column: 26, scope: !962, inlinedAt: !975)
!988 = !DILocalVariable(name: "n", arg: 1, scope: !989, file: !3, line: 421, type: !45)
!989 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 421, type: !990, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !45, !102, !965, !966}
!992 = !{!988, !993, !994, !995, !996}
!993 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !989, file: !3, line: 421, type: !102)
!994 = !DILocalVariable(name: "argc_names", arg: 3, scope: !989, file: !3, line: 422, type: !965)
!995 = !DILocalVariable(name: "argv_names", arg: 4, scope: !989, file: !3, line: 422, type: !966)
!996 = !DILocalVariable(name: "i", scope: !997, file: !3, line: 444, type: !44)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 444, column: 15)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 443, column: 13)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 442, column: 15)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 441, column: 9)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 440, column: 11)
!1002 = distinct !DILexicalBlock(scope: !989, file: !3, line: 439, column: 5)
!1003 = !DILocation(line: 0, scope: !989, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 470, column: 3, scope: !962, inlinedAt: !975)
!1005 = !DILocation(line: 424, column: 7, scope: !1006, inlinedAt: !1004)
!1006 = distinct !DILexicalBlock(scope: !989, file: !3, line: 424, column: 7)
!1007 = !DILocation(line: 424, column: 7, scope: !989, inlinedAt: !1004)
!1008 = !DILocation(line: 0, scope: !1006, inlinedAt: !1004)
!1009 = !DILocation(line: 435, column: 7, scope: !1010, inlinedAt: !1004)
!1010 = distinct !DILexicalBlock(scope: !989, file: !3, line: 435, column: 7)
!1011 = !DILocation(line: 435, column: 7, scope: !989, inlinedAt: !1004)
!1012 = !DILocation(line: 404, column: 3, scope: !1013, inlinedAt: !1016)
!1013 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 402, type: !1014, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null}
!1016 = distinct !DILocation(line: 436, column: 5, scope: !1010, inlinedAt: !1004)
!1017 = !DILocation(line: 405, column: 7, scope: !1018, inlinedAt: !1016)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 405, column: 7)
!1019 = !DILocation(line: 405, column: 7, scope: !1013, inlinedAt: !1016)
!1020 = !DILocation(line: 406, column: 5, scope: !1018, inlinedAt: !1016)
!1021 = !DILocation(line: 407, column: 3, scope: !1013, inlinedAt: !1016)
!1022 = !DILocation(line: 408, column: 7, scope: !1023, inlinedAt: !1016)
!1023 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 408, column: 7)
!1024 = !DILocation(line: 408, column: 7, scope: !1013, inlinedAt: !1016)
!1025 = !DILocation(line: 409, column: 5, scope: !1023, inlinedAt: !1016)
!1026 = !DILocation(line: 410, column: 3, scope: !1013, inlinedAt: !1016)
!1027 = !DILocation(line: 412, column: 7, scope: !1028, inlinedAt: !1016)
!1028 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 412, column: 7)
!1029 = !DILocation(line: 412, column: 7, scope: !1013, inlinedAt: !1016)
!1030 = !DILocation(line: 413, column: 5, scope: !1028, inlinedAt: !1016)
!1031 = !DILocalVariable(name: "__c", arg: 1, scope: !1032, file: !1033, line: 108, type: !44)
!1032 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1033, file: !1033, line: 108, type: !1034, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1033 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!44, !44}
!1036 = !{!1031}
!1037 = !DILocation(line: 0, scope: !1032, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 415, column: 3, scope: !1013, inlinedAt: !1016)
!1039 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1038)
!1040 = !{!1041, !779, i64 40}
!1041 = !{!"_IO_FILE", !949, i64 0, !779, i64 8, !779, i64 16, !779, i64 24, !779, i64 32, !779, i64 40, !779, i64 48, !779, i64 56, !779, i64 64, !779, i64 72, !779, i64 80, !779, i64 88, !779, i64 96, !779, i64 104, !949, i64 112, !949, i64 116, !986, i64 120, !1042, i64 128, !780, i64 130, !780, i64 131, !779, i64 136, !986, i64 144, !779, i64 152, !779, i64 160, !779, i64 168, !779, i64 176, !986, i64 184, !949, i64 192, !780, i64 196}
!1042 = !{!"short", !780, i64 0}
!1043 = !{!1041, !779, i64 48}
!1044 = !{!"branch_weights", i32 2000, i32 1}
!1045 = !{!780, !780, i64 0}
!1046 = !DILocation(line: 438, column: 3, scope: !989, inlinedAt: !1004)
!1047 = !DILocation(line: 438, column: 11, scope: !989, inlinedAt: !1004)
!1048 = !DILocation(line: 440, column: 11, scope: !1001, inlinedAt: !1004)
!1049 = !{!1050, !1042, i64 0}
!1050 = !{!"utmpx", !1042, i64 0, !949, i64 4, !780, i64 8, !780, i64 40, !780, i64 44, !780, i64 76, !1051, i64 332, !949, i64 336, !1052, i64 340, !780, i64 348, !780, i64 364}
!1051 = !{!"__exit_status", !1042, i64 0, !1042, i64 2}
!1052 = !{!"", !949, i64 0, !949, i64 4}
!1053 = !DILocation(line: 440, column: 11, scope: !1002, inlinedAt: !1004)
!1054 = !DILocation(line: 442, column: 15, scope: !1000, inlinedAt: !1004)
!1055 = !DILocation(line: 0, scope: !997, inlinedAt: !1004)
!1056 = !DILocation(line: 444, column: 15, scope: !997, inlinedAt: !1004)
!1057 = !DILocation(line: 444, column: 33, scope: !1058, inlinedAt: !1004)
!1058 = distinct !DILexicalBlock(scope: !997, file: !3, line: 444, column: 15)
!1059 = distinct !{!1059, !1056, !1060, !822}
!1060 = !DILocation(line: 449, column: 19, scope: !997, inlinedAt: !1004)
!1061 = !DILocation(line: 445, column: 21, scope: !1062, inlinedAt: !1004)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 445, column: 21)
!1063 = !DILocation(line: 444, column: 48, scope: !1058, inlinedAt: !1004)
!1064 = !DILocation(line: 445, column: 21, scope: !1058, inlinedAt: !1004)
!1065 = !DILocation(line: 447, column: 21, scope: !1066, inlinedAt: !1004)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 446, column: 19)
!1067 = !DILocation(line: 448, column: 21, scope: !1066, inlinedAt: !1004)
!1068 = !DILocation(line: 452, column: 13, scope: !999, inlinedAt: !1004)
!1069 = !DILocation(line: 454, column: 15, scope: !1002, inlinedAt: !1004)
!1070 = distinct !{!1070, !1046, !1071, !822}
!1071 = !DILocation(line: 455, column: 5, scope: !989, inlinedAt: !1004)
!1072 = !DILocation(line: 473, column: 1, scope: !962, inlinedAt: !975)
!1073 = !DILocation(line: 597, column: 5, scope: !959)
!1074 = !DILocalVariable(name: "argc_names", arg: 1, scope: !1075, file: !3, line: 476, type: !965)
!1075 = distinct !DISubprogram(name: "long_pinky", scope: !3, file: !3, line: 476, type: !1076, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !965, !966}
!1078 = !{!1074, !1079, !1080}
!1079 = !DILocalVariable(name: "argv_names", arg: 2, scope: !1075, file: !3, line: 476, type: !966)
!1080 = !DILocalVariable(name: "i", scope: !1081, file: !3, line: 478, type: !44)
!1081 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 478, column: 3)
!1082 = !DILocation(line: 0, scope: !1075, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 599, column: 5, scope: !959)
!1084 = !DILocation(line: 0, scope: !1081, inlinedAt: !1083)
!1085 = !DILocation(line: 478, column: 21, scope: !1086, inlinedAt: !1083)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 478, column: 3)
!1087 = !DILocation(line: 478, column: 3, scope: !1081, inlinedAt: !1083)
!1088 = !DILocation(line: 479, column: 23, scope: !1086, inlinedAt: !1083)
!1089 = !DILocalVariable(name: "name", arg: 1, scope: !1090, file: !3, line: 307, type: !49)
!1090 = distinct !DISubprogram(name: "print_long_entry", scope: !3, file: !3, line: 307, type: !792, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1091 = !{!1089, !1092, !1106, !1109, !1110, !1116, !1120, !1121, !1122, !1125, !1127, !1128, !1129, !1132, !1133, !1134, !1135, !1138, !1140, !1141}
!1092 = !DILocalVariable(name: "pw", scope: !1090, file: !3, line: 309, type: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1095, line: 49, size: 384, elements: !1096)
!1095 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!1096 = !{!1097, !1098, !1099, !1101, !1103, !1104, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1094, file: !1095, line: 51, baseType: !40, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1094, file: !1095, line: 52, baseType: !40, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1094, file: !1095, line: 54, baseType: !1100, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !81, line: 146, baseType: !7)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1094, file: !1095, line: 55, baseType: !1102, size: 32, offset: 160)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !81, line: 147, baseType: !7)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1094, file: !1095, line: 56, baseType: !40, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1094, file: !1095, line: 57, baseType: !40, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1094, file: !1095, line: 58, baseType: !40, size: 64, offset: 320)
!1106 = !DILocalVariable(name: "comma", scope: !1107, file: !3, line: 325, type: !967)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 324, column: 5)
!1108 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 317, column: 7)
!1109 = !DILocalVariable(name: "result", scope: !1107, file: !3, line: 326, type: !40)
!1110 = !DILocalVariable(name: "stream", scope: !1111, file: !3, line: 349, type: !1113)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 348, column: 5)
!1112 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 347, column: 7)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !851)
!1115 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1116 = !DILocalVariable(name: "buf", scope: !1111, file: !3, line: 350, type: !1117)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 1024)
!1120 = !DILocalVariable(name: "baseproject", scope: !1111, file: !3, line: 351, type: !297)
!1121 = !DILocalVariable(name: "project", scope: !1111, file: !3, line: 352, type: !967)
!1122 = !DILocalVariable(name: "bytes", scope: !1123, file: !3, line: 359, type: !45)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 358, column: 9)
!1124 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 357, column: 11)
!1125 = !DILocalVariable(name: "__ptr", scope: !1126, file: !3, line: 364, type: !49)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 364, column: 13)
!1127 = !DILocalVariable(name: "__stream", scope: !1126, file: !3, line: 364, type: !1113)
!1128 = !DILocalVariable(name: "__cnt", scope: !1126, file: !3, line: 364, type: !45)
!1129 = !DILocalVariable(name: "stream", scope: !1130, file: !3, line: 373, type: !1113)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 372, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 371, column: 7)
!1132 = !DILocalVariable(name: "buf", scope: !1130, file: !3, line: 374, type: !1117)
!1133 = !DILocalVariable(name: "baseplan", scope: !1130, file: !3, line: 375, type: !297)
!1134 = !DILocalVariable(name: "plan", scope: !1130, file: !3, line: 376, type: !967)
!1135 = !DILocalVariable(name: "bytes", scope: !1136, file: !3, line: 383, type: !45)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 382, column: 9)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 381, column: 11)
!1138 = !DILocalVariable(name: "__ptr", scope: !1139, file: !3, line: 388, type: !49)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 388, column: 13)
!1140 = !DILocalVariable(name: "__stream", scope: !1139, file: !3, line: 388, type: !1113)
!1141 = !DILocalVariable(name: "__cnt", scope: !1139, file: !3, line: 388, type: !45)
!1142 = !DILocation(line: 0, scope: !1090, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 479, column: 5, scope: !1086, inlinedAt: !1083)
!1144 = !DILocation(line: 311, column: 8, scope: !1090, inlinedAt: !1143)
!1145 = !DILocation(line: 313, column: 3, scope: !1090, inlinedAt: !1143)
!1146 = !DILocation(line: 314, column: 3, scope: !1090, inlinedAt: !1143)
!1147 = !DILocation(line: 316, column: 3, scope: !1090, inlinedAt: !1143)
!1148 = !DILocation(line: 317, column: 10, scope: !1108, inlinedAt: !1143)
!1149 = !DILocation(line: 317, column: 7, scope: !1090, inlinedAt: !1143)
!1150 = !DILocation(line: 320, column: 7, scope: !1151, inlinedAt: !1143)
!1151 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 318, column: 5)
!1152 = !DILocation(line: 321, column: 7, scope: !1151, inlinedAt: !1143)
!1153 = !DILocation(line: 325, column: 39, scope: !1107, inlinedAt: !1143)
!1154 = !{!1155, !779, i64 24}
!1155 = !{!"passwd", !779, i64 0, !779, i64 8, !949, i64 16, !949, i64 20, !779, i64 24, !779, i64 32, !779, i64 40}
!1156 = !DILocation(line: 325, column: 27, scope: !1107, inlinedAt: !1143)
!1157 = !DILocation(line: 0, scope: !1107, inlinedAt: !1143)
!1158 = !DILocation(line: 328, column: 11, scope: !1159, inlinedAt: !1143)
!1159 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 328, column: 11)
!1160 = !DILocation(line: 328, column: 11, scope: !1107, inlinedAt: !1143)
!1161 = !DILocation(line: 329, column: 16, scope: !1159, inlinedAt: !1143)
!1162 = !DILocation(line: 331, column: 37, scope: !1107, inlinedAt: !1143)
!1163 = !DILocation(line: 329, column: 9, scope: !1159, inlinedAt: !1143)
!1164 = !DILocation(line: 331, column: 51, scope: !1107, inlinedAt: !1143)
!1165 = !{!1155, !779, i64 0}
!1166 = !DILocation(line: 331, column: 16, scope: !1107, inlinedAt: !1143)
!1167 = !DILocation(line: 332, column: 7, scope: !1107, inlinedAt: !1143)
!1168 = !DILocation(line: 333, column: 7, scope: !1107, inlinedAt: !1143)
!1169 = !DILocation(line: 0, scope: !1032, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 336, column: 3, scope: !1090, inlinedAt: !1143)
!1171 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1170)
!1172 = !DILocation(line: 338, column: 7, scope: !1173, inlinedAt: !1143)
!1173 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 338, column: 7)
!1174 = !DILocation(line: 338, column: 7, scope: !1090, inlinedAt: !1143)
!1175 = !DILocation(line: 340, column: 7, scope: !1176, inlinedAt: !1143)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 339, column: 5)
!1177 = !DILocation(line: 341, column: 7, scope: !1176, inlinedAt: !1143)
!1178 = !{!1155, !779, i64 32}
!1179 = !DILocation(line: 342, column: 7, scope: !1176, inlinedAt: !1143)
!1180 = !DILocation(line: 343, column: 7, scope: !1176, inlinedAt: !1143)
!1181 = !{!1155, !779, i64 40}
!1182 = !DILocation(line: 0, scope: !1032, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 344, column: 7, scope: !1176, inlinedAt: !1143)
!1184 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1183)
!1185 = !DILocation(line: 347, column: 7, scope: !1112, inlinedAt: !1143)
!1186 = !DILocation(line: 347, column: 7, scope: !1090, inlinedAt: !1143)
!1187 = !DILocation(line: 350, column: 7, scope: !1111, inlinedAt: !1143)
!1188 = !DILocation(line: 350, column: 12, scope: !1111, inlinedAt: !1143)
!1189 = !DILocation(line: 353, column: 30, scope: !1111, inlinedAt: !1143)
!1190 = !DILocation(line: 353, column: 18, scope: !1111, inlinedAt: !1143)
!1191 = !DILocation(line: 353, column: 61, scope: !1111, inlinedAt: !1143)
!1192 = !DILocation(line: 353, column: 9, scope: !1111, inlinedAt: !1143)
!1193 = !DILocation(line: 0, scope: !1111, inlinedAt: !1143)
!1194 = !DILocation(line: 354, column: 36, scope: !1111, inlinedAt: !1143)
!1195 = !DILocalVariable(name: "__dest", arg: 1, scope: !1196, file: !1197, line: 84, type: !1200)
!1196 = distinct !DISubprogram(name: "stpcpy", scope: !1197, file: !1197, line: 84, type: !1198, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1197 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!40, !1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!1202 = !{!1195, !1203}
!1203 = !DILocalVariable(name: "__src", arg: 2, scope: !1196, file: !1197, line: 84, type: !1201)
!1204 = !DILocation(line: 0, scope: !1196, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 354, column: 15, scope: !1111, inlinedAt: !1143)
!1206 = !DILocation(line: 86, column: 10, scope: !1196, inlinedAt: !1205)
!1207 = !DILocation(line: 0, scope: !1196, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 354, column: 7, scope: !1111, inlinedAt: !1143)
!1209 = !DILocation(line: 86, column: 10, scope: !1196, inlinedAt: !1208)
!1210 = !DILocation(line: 356, column: 16, scope: !1111, inlinedAt: !1143)
!1211 = !DILocation(line: 357, column: 11, scope: !1124, inlinedAt: !1143)
!1212 = !DILocation(line: 357, column: 11, scope: !1111, inlinedAt: !1143)
!1213 = !DILocation(line: 361, column: 11, scope: !1123, inlinedAt: !1143)
!1214 = !DILocation(line: 363, column: 27, scope: !1123, inlinedAt: !1143)
!1215 = !DILocation(line: 0, scope: !1123, inlinedAt: !1143)
!1216 = !DILocation(line: 363, column: 65, scope: !1123, inlinedAt: !1143)
!1217 = !DILocation(line: 363, column: 11, scope: !1123, inlinedAt: !1143)
!1218 = !DILocation(line: 364, column: 13, scope: !1123, inlinedAt: !1143)
!1219 = distinct !{!1219, !1217, !1218, !822}
!1220 = !DILocation(line: 365, column: 11, scope: !1123, inlinedAt: !1143)
!1221 = !DILocation(line: 366, column: 9, scope: !1123, inlinedAt: !1143)
!1222 = !DILocation(line: 368, column: 7, scope: !1111, inlinedAt: !1143)
!1223 = !DILocation(line: 369, column: 5, scope: !1112, inlinedAt: !1143)
!1224 = !DILocation(line: 369, column: 5, scope: !1111, inlinedAt: !1143)
!1225 = !DILocation(line: 371, column: 7, scope: !1131, inlinedAt: !1143)
!1226 = !DILocation(line: 371, column: 7, scope: !1090, inlinedAt: !1143)
!1227 = !DILocation(line: 374, column: 7, scope: !1130, inlinedAt: !1143)
!1228 = !DILocation(line: 374, column: 12, scope: !1130, inlinedAt: !1143)
!1229 = !DILocation(line: 377, column: 30, scope: !1130, inlinedAt: !1143)
!1230 = !DILocation(line: 377, column: 18, scope: !1130, inlinedAt: !1143)
!1231 = !DILocation(line: 377, column: 58, scope: !1130, inlinedAt: !1143)
!1232 = !DILocation(line: 377, column: 9, scope: !1130, inlinedAt: !1143)
!1233 = !DILocation(line: 0, scope: !1130, inlinedAt: !1143)
!1234 = !DILocation(line: 378, column: 33, scope: !1130, inlinedAt: !1143)
!1235 = !DILocation(line: 0, scope: !1196, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 378, column: 15, scope: !1130, inlinedAt: !1143)
!1237 = !DILocation(line: 86, column: 10, scope: !1196, inlinedAt: !1236)
!1238 = !DILocation(line: 0, scope: !1196, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 378, column: 7, scope: !1130, inlinedAt: !1143)
!1240 = !DILocation(line: 86, column: 10, scope: !1196, inlinedAt: !1239)
!1241 = !DILocation(line: 380, column: 16, scope: !1130, inlinedAt: !1143)
!1242 = !DILocation(line: 381, column: 11, scope: !1137, inlinedAt: !1143)
!1243 = !DILocation(line: 381, column: 11, scope: !1130, inlinedAt: !1143)
!1244 = !DILocation(line: 385, column: 11, scope: !1136, inlinedAt: !1143)
!1245 = !DILocation(line: 387, column: 27, scope: !1136, inlinedAt: !1143)
!1246 = !DILocation(line: 0, scope: !1136, inlinedAt: !1143)
!1247 = !DILocation(line: 387, column: 65, scope: !1136, inlinedAt: !1143)
!1248 = !DILocation(line: 387, column: 11, scope: !1136, inlinedAt: !1143)
!1249 = !DILocation(line: 388, column: 13, scope: !1136, inlinedAt: !1143)
!1250 = distinct !{!1250, !1248, !1249, !822}
!1251 = !DILocation(line: 389, column: 11, scope: !1136, inlinedAt: !1143)
!1252 = !DILocation(line: 390, column: 9, scope: !1136, inlinedAt: !1143)
!1253 = !DILocation(line: 392, column: 7, scope: !1130, inlinedAt: !1143)
!1254 = !DILocation(line: 393, column: 5, scope: !1131, inlinedAt: !1143)
!1255 = !DILocation(line: 393, column: 5, scope: !1130, inlinedAt: !1143)
!1256 = !DILocation(line: 0, scope: !1032, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 395, column: 3, scope: !1090, inlinedAt: !1143)
!1258 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1257)
!1259 = !DILocation(line: 478, column: 36, scope: !1086, inlinedAt: !1083)
!1260 = distinct !{!1260, !1087, !1261, !822}
!1261 = !DILocation(line: 479, column: 36, scope: !1081, inlinedAt: !1083)
!1262 = !DILocation(line: 601, column: 3, scope: !901)
!1263 = !DISubprogram(name: "bindtextdomain", scope: !843, file: !843, line: 86, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!40, !49, !49}
!1266 = !DISubprogram(name: "textdomain", scope: !843, file: !843, line: 82, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!40, !49}
!1269 = !DISubprogram(name: "atexit", scope: !1270, file: !1270, line: 595, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1270 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!44, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1274 = !DISubprogram(name: "getopt_long", scope: !168, file: !168, line: 66, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!44, !44, !966, !49, !1277, !173}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1278 = !DISubprogram(name: "error", scope: !1279, file: !1279, line: 52, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1279 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !44, !44, !49, null}
!1282 = distinct !DISubprogram(name: "print_entry", scope: !3, file: !3, line: 200, type: !1283, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !102}
!1285 = !{!1286, !1287, !1319, !1320, !1321, !1325, !1326, !1329, !1330, !1333, !1334, !1340, !1341}
!1286 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1282, file: !3, line: 200, type: !102)
!1287 = !DILocalVariable(name: "stats", scope: !1282, file: !3, line: 202, type: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1289, line: 26, size: 1152, elements: !1290)
!1289 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1290 = !{!1291, !1293, !1295, !1297, !1299, !1300, !1301, !1302, !1303, !1304, !1306, !1308, !1315, !1316, !1317}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1288, file: !1289, line: 28, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !81, line: 145, baseType: !47)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1288, file: !1289, line: 33, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !81, line: 148, baseType: !47)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1288, file: !1289, line: 41, baseType: !1296, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !81, line: 151, baseType: !47)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1288, file: !1289, line: 42, baseType: !1298, size: 32, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !81, line: 150, baseType: !7)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1288, file: !1289, line: 44, baseType: !1100, size: 32, offset: 224)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1288, file: !1289, line: 45, baseType: !1102, size: 32, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1288, file: !1289, line: 47, baseType: !44, size: 32, offset: 288)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1288, file: !1289, line: 49, baseType: !1292, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1288, file: !1289, line: 54, baseType: !873, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1288, file: !1289, line: 58, baseType: !1305, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !81, line: 175, baseType: !82)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1288, file: !1289, line: 60, baseType: !1307, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !81, line: 180, baseType: !82)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1288, file: !1289, line: 71, baseType: !1309, size: 128, offset: 576)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1310, line: 10, size: 128, elements: !1311)
!1310 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1309, file: !1310, line: 12, baseType: !80, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1309, file: !1310, line: 16, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 197, baseType: !82)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1288, file: !1289, line: 72, baseType: !1309, size: 128, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1288, file: !1289, line: 73, baseType: !1309, size: 128, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1288, file: !1289, line: 86, baseType: !1318, size: 192, offset: 960)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 192, elements: !175)
!1319 = !DILocalVariable(name: "last_change", scope: !1282, file: !3, line: 203, type: !78)
!1320 = !DILocalVariable(name: "mesg", scope: !1282, file: !3, line: 204, type: !41)
!1321 = !DILocalVariable(name: "line", scope: !1282, file: !3, line: 209, type: !1322)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 304, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 38)
!1325 = !DILocalVariable(name: "p", scope: !1282, file: !3, line: 210, type: !40)
!1326 = !DILocalVariable(name: "pw", scope: !1327, file: !3, line: 234, type: !1093)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 233, column: 5)
!1328 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 232, column: 7)
!1329 = !DILocalVariable(name: "name", scope: !1327, file: !3, line: 235, type: !162)
!1330 = !DILocalVariable(name: "comma", scope: !1331, file: !3, line: 244, type: !967)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 243, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 239, column: 11)
!1333 = !DILocalVariable(name: "result", scope: !1331, file: !3, line: 245, type: !40)
!1334 = !DILocalVariable(name: "ut_host", scope: !1335, file: !3, line: 273, type: !1337)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 272, column: 5)
!1336 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 271, column: 7)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2056, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 257)
!1340 = !DILocalVariable(name: "host", scope: !1335, file: !3, line: 274, type: !40)
!1341 = !DILocalVariable(name: "display", scope: !1335, file: !3, line: 275, type: !40)
!1342 = !DILocation(line: 0, scope: !1282)
!1343 = !DILocation(line: 202, column: 3, scope: !1282)
!1344 = !DILocation(line: 202, column: 15, scope: !1282)
!1345 = !DILocation(line: 209, column: 3, scope: !1282)
!1346 = !DILocation(line: 209, column: 8, scope: !1282)
!1347 = !DILocation(line: 215, column: 10, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 215, column: 8)
!1349 = !DILocation(line: 215, column: 8, scope: !1282)
!1350 = !DILocation(line: 0, scope: !1196, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 216, column: 9, scope: !1348)
!1352 = !DILocation(line: 86, column: 10, scope: !1196, inlinedAt: !1351)
!1353 = !DILocation(line: 216, column: 5, scope: !1348)
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"stzncpy: argument 0"}
!1356 = distinct !{!1356, !"stzncpy"}
!1357 = !DILocation(line: 217, column: 3, scope: !1282)
!1358 = !{!1359}
!1359 = distinct !{!1359, !1356, !"stzncpy: argument 1"}
!1360 = !DILocalVariable(name: "dest", arg: 1, scope: !1361, file: !791, line: 741, type: !1200)
!1361 = distinct !DISubprogram(name: "stzncpy", scope: !791, file: !791, line: 741, type: !1362, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!40, !1200, !1201, !45}
!1364 = !{!1360, !1365, !1366, !1367}
!1365 = !DILocalVariable(name: "src", arg: 2, scope: !1361, file: !791, line: 741, type: !1201)
!1366 = !DILocalVariable(name: "len", arg: 3, scope: !1361, file: !791, line: 741, type: !45)
!1367 = !DILocalVariable(name: "src_end", scope: !1361, file: !791, line: 743, type: !49)
!1368 = !DILocation(line: 0, scope: !1361, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 217, column: 3, scope: !1282)
!1370 = !DILocation(line: 743, column: 29, scope: !1361, inlinedAt: !1369)
!1371 = !DILocation(line: 744, column: 24, scope: !1361, inlinedAt: !1369)
!1372 = !DILocation(line: 744, column: 3, scope: !1361, inlinedAt: !1369)
!1373 = !DILocation(line: 745, column: 19, scope: !1361, inlinedAt: !1369)
!1374 = !DILocation(line: 745, column: 10, scope: !1361, inlinedAt: !1369)
!1375 = !DILocation(line: 745, column: 13, scope: !1361, inlinedAt: !1369)
!1376 = !DILocation(line: 744, column: 14, scope: !1361, inlinedAt: !1369)
!1377 = distinct !{!1377, !1372, !1373, !822}
!1378 = !DILocation(line: 744, column: 27, scope: !1361, inlinedAt: !1369)
!1379 = !DILocation(line: 746, column: 9, scope: !1361, inlinedAt: !1369)
!1380 = !DILocation(line: 219, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 219, column: 7)
!1382 = !DILocation(line: 219, column: 27, scope: !1381)
!1383 = !DILocation(line: 219, column: 7, scope: !1282)
!1384 = !DILocation(line: 221, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 220, column: 5)
!1386 = !{!1387, !949, i64 24}
!1387 = !{!"stat", !986, i64 0, !986, i64 8, !986, i64 16, !949, i64 24, !949, i64 28, !949, i64 32, !949, i64 36, !986, i64 40, !986, i64 48, !986, i64 56, !986, i64 64, !1388, i64 72, !1388, i64 88, !1388, i64 104, !780, i64 120}
!1388 = !{!"timespec", !986, i64 0, !986, i64 8}
!1389 = !DILocation(line: 221, column: 29, scope: !1385)
!1390 = !DILocation(line: 221, column: 14, scope: !1385)
!1391 = !DILocation(line: 222, column: 27, scope: !1385)
!1392 = !{!1387, !986, i64 72}
!1393 = !DILocation(line: 223, column: 5, scope: !1385)
!1394 = !DILocation(line: 0, scope: !1381)
!1395 = !DILocation(line: 230, column: 3, scope: !1282)
!1396 = !DILocation(line: 232, column: 7, scope: !1328)
!1397 = !DILocation(line: 232, column: 7, scope: !1282)
!1398 = !DILocation(line: 235, column: 7, scope: !1327)
!1399 = !DILocation(line: 235, column: 12, scope: !1327)
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"stzncpy: argument 0"}
!1402 = distinct !{!1402, !"stzncpy"}
!1403 = !DILocation(line: 237, column: 7, scope: !1327)
!1404 = !{!1405}
!1405 = distinct !{!1405, !1402, !"stzncpy: argument 1"}
!1406 = !DILocation(line: 0, scope: !1361, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 237, column: 7, scope: !1327)
!1408 = !DILocation(line: 743, column: 29, scope: !1361, inlinedAt: !1407)
!1409 = !DILocation(line: 744, column: 27, scope: !1361, inlinedAt: !1407)
!1410 = !DILocation(line: 744, column: 24, scope: !1361, inlinedAt: !1407)
!1411 = !DILocation(line: 744, column: 3, scope: !1361, inlinedAt: !1407)
!1412 = !DILocation(line: 745, column: 19, scope: !1361, inlinedAt: !1407)
!1413 = !DILocation(line: 745, column: 10, scope: !1361, inlinedAt: !1407)
!1414 = !DILocation(line: 745, column: 13, scope: !1361, inlinedAt: !1407)
!1415 = !DILocation(line: 744, column: 14, scope: !1361, inlinedAt: !1407)
!1416 = distinct !{!1416, !1411, !1412, !822}
!1417 = !DILocation(line: 746, column: 9, scope: !1361, inlinedAt: !1407)
!1418 = !DILocation(line: 238, column: 12, scope: !1327)
!1419 = !DILocation(line: 0, scope: !1327)
!1420 = !DILocation(line: 239, column: 14, scope: !1332)
!1421 = !DILocation(line: 239, column: 11, scope: !1327)
!1422 = !DILocation(line: 241, column: 9, scope: !1332)
!1423 = !DILocation(line: 244, column: 43, scope: !1331)
!1424 = !DILocation(line: 244, column: 31, scope: !1331)
!1425 = !DILocation(line: 0, scope: !1331)
!1426 = !DILocation(line: 247, column: 15, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 247, column: 15)
!1428 = !DILocation(line: 247, column: 15, scope: !1331)
!1429 = !DILocation(line: 248, column: 20, scope: !1427)
!1430 = !DILocation(line: 250, column: 41, scope: !1331)
!1431 = !DILocation(line: 248, column: 13, scope: !1427)
!1432 = !DILocation(line: 250, column: 55, scope: !1331)
!1433 = !DILocation(line: 250, column: 20, scope: !1331)
!1434 = !DILocation(line: 251, column: 11, scope: !1331)
!1435 = !DILocation(line: 252, column: 11, scope: !1331)
!1436 = !DILocation(line: 254, column: 5, scope: !1328)
!1437 = !DILocation(line: 254, column: 5, scope: !1327)
!1438 = !DILocation(line: 256, column: 3, scope: !1282)
!1439 = !DILocation(line: 259, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 259, column: 7)
!1441 = !DILocation(line: 259, column: 7, scope: !1282)
!1442 = !DILocation(line: 261, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 261, column: 11)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 260, column: 5)
!1445 = !DILocation(line: 261, column: 11, scope: !1444)
!1446 = !DILocation(line: 0, scope: !75, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 262, column: 9, scope: !1443)
!1448 = !DILocation(line: 153, column: 7, scope: !1449, inlinedAt: !1447)
!1449 = distinct !DILexicalBlock(scope: !75, file: !3, line: 153, column: 7)
!1450 = !DILocation(line: 153, column: 11, scope: !1449, inlinedAt: !1447)
!1451 = !DILocation(line: 153, column: 7, scope: !75, inlinedAt: !1447)
!1452 = !DILocation(line: 154, column: 5, scope: !1449, inlinedAt: !1447)
!1453 = !DILocation(line: 156, column: 18, scope: !75, inlinedAt: !1447)
!1454 = !DILocation(line: 156, column: 22, scope: !75, inlinedAt: !1447)
!1455 = !DILocation(line: 157, column: 20, scope: !1456, inlinedAt: !1447)
!1456 = distinct !DILexicalBlock(scope: !75, file: !3, line: 157, column: 7)
!1457 = !DILocation(line: 157, column: 7, scope: !75, inlinedAt: !1447)
!1458 = !DILocation(line: 159, column: 20, scope: !88, inlinedAt: !1447)
!1459 = !DILocation(line: 159, column: 7, scope: !75, inlinedAt: !1447)
!1460 = !DILocation(line: 161, column: 32, scope: !87, inlinedAt: !1447)
!1461 = !DILocation(line: 0, scope: !87, inlinedAt: !1447)
!1462 = !DILocation(line: 162, column: 35, scope: !87, inlinedAt: !1447)
!1463 = !DILocation(line: 162, column: 48, scope: !87, inlinedAt: !1447)
!1464 = !DILocation(line: 162, column: 21, scope: !87, inlinedAt: !1447)
!1465 = !DILocation(line: 163, column: 7, scope: !87, inlinedAt: !1447)
!1466 = !DILocation(line: 164, column: 5, scope: !87, inlinedAt: !1447)
!1467 = !DILocation(line: 167, column: 45, scope: !91, inlinedAt: !1447)
!1468 = !DILocation(line: 0, scope: !91, inlinedAt: !1447)
!1469 = !DILocation(line: 168, column: 7, scope: !91, inlinedAt: !1447)
!1470 = !DILocation(line: 262, column: 9, scope: !1443)
!1471 = !DILocation(line: 265, column: 9, scope: !1443)
!1472 = !DILocation(line: 0, scope: !99, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 268, column: 3, scope: !1282)
!1474 = !DILocation(line: 185, column: 3, scope: !99, inlinedAt: !1473)
!1475 = !DILocation(line: 185, column: 14, scope: !99, inlinedAt: !1473)
!1476 = !{!1050, !949, i64 340}
!1477 = !DILocation(line: 185, column: 10, scope: !99, inlinedAt: !1473)
!1478 = !DILocation(line: 186, column: 20, scope: !99, inlinedAt: !1473)
!1479 = !DILocation(line: 188, column: 7, scope: !1480, inlinedAt: !1473)
!1480 = distinct !DILexicalBlock(scope: !99, file: !3, line: 188, column: 7)
!1481 = !DILocation(line: 188, column: 7, scope: !99, inlinedAt: !1473)
!1482 = !DILocation(line: 190, column: 34, scope: !1483, inlinedAt: !1473)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 189, column: 5)
!1484 = !DILocation(line: 190, column: 7, scope: !1483, inlinedAt: !1473)
!1485 = !DILocation(line: 191, column: 7, scope: !1483, inlinedAt: !1473)
!1486 = !DILocation(line: 194, column: 23, scope: !1480, inlinedAt: !1473)
!1487 = !DILocalVariable(name: "t", arg: 1, scope: !1488, file: !791, line: 690, type: !78)
!1488 = distinct !DISubprogram(name: "timetostr", scope: !791, file: !791, line: 690, type: !1489, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!40, !78, !40}
!1491 = !{!1487, !1492}
!1492 = !DILocalVariable(name: "buf", arg: 2, scope: !1488, file: !791, line: 690, type: !40)
!1493 = !DILocation(line: 0, scope: !1488, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 194, column: 12, scope: !1480, inlinedAt: !1473)
!1495 = !DILocation(line: 693, column: 13, scope: !1488, inlinedAt: !1494)
!1496 = !DILocation(line: 194, column: 5, scope: !1480, inlinedAt: !1473)
!1497 = !DILocation(line: 0, scope: !1480, inlinedAt: !1473)
!1498 = !DILocation(line: 195, column: 1, scope: !99, inlinedAt: !1473)
!1499 = !DILocation(line: 268, column: 3, scope: !1282)
!1500 = !DILocation(line: 271, column: 7, scope: !1336)
!1501 = !DILocation(line: 271, column: 21, scope: !1336)
!1502 = !DILocation(line: 271, column: 24, scope: !1336)
!1503 = !DILocation(line: 271, column: 7, scope: !1282)
!1504 = !DILocation(line: 273, column: 7, scope: !1335)
!1505 = !DILocation(line: 273, column: 12, scope: !1335)
!1506 = !DILocation(line: 0, scope: !1335)
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"stzncpy: argument 0"}
!1509 = distinct !{!1509, !"stzncpy"}
!1510 = !DILocation(line: 278, column: 7, scope: !1335)
!1511 = !{!1512}
!1512 = distinct !{!1512, !1509, !"stzncpy: argument 1"}
!1513 = !DILocation(line: 0, scope: !1361, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 278, column: 7, scope: !1335)
!1515 = !DILocation(line: 743, column: 29, scope: !1361, inlinedAt: !1514)
!1516 = !DILocation(line: 744, column: 3, scope: !1361, inlinedAt: !1514)
!1517 = !DILocation(line: 745, column: 19, scope: !1361, inlinedAt: !1514)
!1518 = !DILocation(line: 745, column: 10, scope: !1361, inlinedAt: !1514)
!1519 = !DILocation(line: 745, column: 13, scope: !1361, inlinedAt: !1514)
!1520 = !DILocation(line: 744, column: 14, scope: !1361, inlinedAt: !1514)
!1521 = !DILocation(line: 744, column: 24, scope: !1361, inlinedAt: !1514)
!1522 = distinct !{!1522, !1516, !1517, !822}
!1523 = !DILocation(line: 744, column: 27, scope: !1361, inlinedAt: !1514)
!1524 = !DILocation(line: 746, column: 9, scope: !1361, inlinedAt: !1514)
!1525 = !DILocation(line: 281, column: 17, scope: !1335)
!1526 = !DILocation(line: 282, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 282, column: 11)
!1528 = !DILocation(line: 282, column: 11, scope: !1335)
!1529 = !DILocation(line: 283, column: 17, scope: !1527)
!1530 = !DILocation(line: 283, column: 20, scope: !1527)
!1531 = !DILocation(line: 283, column: 9, scope: !1527)
!1532 = !DILocation(line: 285, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 285, column: 11)
!1534 = !DILocation(line: 285, column: 11, scope: !1335)
!1535 = !DILocation(line: 287, column: 16, scope: !1533)
!1536 = !DILocation(line: 287, column: 9, scope: !1533)
!1537 = !DILocation(line: 288, column: 14, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 288, column: 12)
!1539 = !DILocation(line: 288, column: 12, scope: !1335)
!1540 = !DILocation(line: 291, column: 11, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 291, column: 11)
!1542 = !DILocation(line: 291, column: 11, scope: !1335)
!1543 = !DILocation(line: 292, column: 9, scope: !1541)
!1544 = !DILocation(line: 294, column: 9, scope: !1541)
!1545 = !DILocation(line: 296, column: 11, scope: !1335)
!1546 = !DILocation(line: 297, column: 9, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 296, column: 11)
!1548 = !DILocation(line: 298, column: 5, scope: !1336)
!1549 = !DILocation(line: 298, column: 5, scope: !1335)
!1550 = !DILocation(line: 0, scope: !1032, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 301, column: 3, scope: !1282)
!1552 = !DILocation(line: 110, column: 10, scope: !1032, inlinedAt: !1551)
!1553 = !DILocation(line: 302, column: 1, scope: !1282)
!1554 = !DISubprogram(name: "getpwnam", scope: !1095, file: !1095, line: 116, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1093, !49}
!1557 = distinct !DISubprogram(name: "create_fullname", scope: !3, file: !3, line: 103, type: !1264, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1568, !1569, !1573}
!1559 = !DILocalVariable(name: "gecos_name", arg: 1, scope: !1557, file: !3, line: 103, type: !49)
!1560 = !DILocalVariable(name: "user_name", arg: 2, scope: !1557, file: !3, line: 103, type: !49)
!1561 = !DILocalVariable(name: "rsize", scope: !1557, file: !3, line: 105, type: !45)
!1562 = !DILocalVariable(name: "result", scope: !1557, file: !3, line: 106, type: !40)
!1563 = !DILocalVariable(name: "r", scope: !1557, file: !3, line: 107, type: !40)
!1564 = !DILocalVariable(name: "ampersands", scope: !1557, file: !3, line: 108, type: !45)
!1565 = !DILocalVariable(name: "ulen", scope: !1566, file: !3, line: 112, type: !45)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 111, column: 5)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 110, column: 7)
!1568 = !DILocalVariable(name: "product", scope: !1566, file: !3, line: 113, type: !45)
!1569 = !DILocalVariable(name: "uname", scope: !1570, file: !3, line: 125, type: !49)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 124, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 123, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 122, column: 5)
!1573 = !DILocalVariable(name: "__res", scope: !1574, file: !3, line: 127, type: !44)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 127, column: 20)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 126, column: 15)
!1576 = !DILocation(line: 0, scope: !1557)
!1577 = !DILocation(line: 105, column: 18, scope: !1557)
!1578 = !DILocalVariable(name: "str", arg: 1, scope: !1579, file: !3, line: 85, type: !49)
!1579 = distinct !DISubprogram(name: "count_ampersands", scope: !3, file: !3, line: 85, type: !1580, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!45, !49}
!1582 = !{!1578, !1583}
!1583 = !DILocalVariable(name: "count", scope: !1579, file: !3, line: 87, type: !45)
!1584 = !DILocation(line: 0, scope: !1579, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 108, column: 23, scope: !1557)
!1586 = !DILocation(line: 88, column: 3, scope: !1579, inlinedAt: !1585)
!1587 = !DILocation(line: 90, column: 11, scope: !1588, inlinedAt: !1585)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 90, column: 11)
!1589 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 89, column: 5)
!1590 = !DILocation(line: 90, column: 16, scope: !1588, inlinedAt: !1585)
!1591 = !DILocation(line: 90, column: 11, scope: !1589, inlinedAt: !1585)
!1592 = !DILocation(line: 92, column: 18, scope: !1579, inlinedAt: !1585)
!1593 = !DILocation(line: 92, column: 5, scope: !1589, inlinedAt: !1585)
!1594 = distinct !{!1594, !1586, !1595, !822}
!1595 = !DILocation(line: 92, column: 20, scope: !1579, inlinedAt: !1585)
!1596 = !DILocation(line: 105, column: 38, scope: !1557)
!1597 = !DILocation(line: 110, column: 18, scope: !1567)
!1598 = !DILocation(line: 110, column: 7, scope: !1557)
!1599 = !DILocation(line: 112, column: 21, scope: !1566)
!1600 = !DILocation(line: 0, scope: !1566)
!1601 = !DILocation(line: 113, column: 35, scope: !1566)
!1602 = !DILocation(line: 114, column: 24, scope: !1566)
!1603 = !DILocation(line: 114, column: 13, scope: !1566)
!1604 = !DILocation(line: 115, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 115, column: 11)
!1606 = !DILocation(line: 115, column: 47, scope: !1605)
!1607 = !DILocation(line: 116, column: 9, scope: !1605)
!1608 = !DILocation(line: 119, column: 16, scope: !1557)
!1609 = !DILocation(line: 121, column: 3, scope: !1557)
!1610 = !DILocation(line: 121, column: 10, scope: !1557)
!1611 = !DILocation(line: 0, scope: !1570)
!1612 = !DILocation(line: 126, column: 15, scope: !1575)
!1613 = !{!1042, !1042, i64 0}
!1614 = !DILocation(line: 126, column: 15, scope: !1570)
!1615 = !DILocation(line: 127, column: 20, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 127, column: 20)
!1617 = !DILocation(line: 0, scope: !1574)
!1618 = !DILocation(line: 127, column: 20, scope: !1575)
!1619 = !DILocation(line: 127, column: 15, scope: !1575)
!1620 = !DILocation(line: 127, column: 18, scope: !1575)
!1621 = !DILocation(line: 128, column: 18, scope: !1570)
!1622 = !DILocation(line: 127, column: 13, scope: !1575)
!1623 = !DILocation(line: 128, column: 11, scope: !1570)
!1624 = !DILocation(line: 129, column: 26, scope: !1570)
!1625 = !DILocation(line: 129, column: 15, scope: !1570)
!1626 = !DILocation(line: 129, column: 18, scope: !1570)
!1627 = distinct !{!1627, !1623, !1624, !822}
!1628 = !DILocation(line: 133, column: 13, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 132, column: 9)
!1630 = !DILocation(line: 133, column: 16, scope: !1629)
!1631 = !DILocation(line: 0, scope: !1571)
!1632 = !DILocation(line: 136, column: 17, scope: !1572)
!1633 = distinct !{!1633, !1609, !1634, !822}
!1634 = !DILocation(line: 137, column: 5, scope: !1557)
!1635 = !DILocation(line: 138, column: 6, scope: !1557)
!1636 = !DILocation(line: 140, column: 3, scope: !1557)
!1637 = !DISubprogram(name: "fwrite_unlocked", scope: !847, file: !847, line: 680, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!47, !1640, !47, !47, !850}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1642 = !DISubprogram(name: "stat", scope: !1643, file: !1643, line: 205, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1643 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!44, !49, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1647 = !DISubprogram(name: "time", scope: !1648, file: !1648, line: 75, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1648 = !DIFile(filename: "/usr/include/time.h", directory: "")
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!82, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1652 = !DISubprogram(name: "localtime", scope: !1648, file: !1648, line: 123, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!147, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1657 = !DISubprogram(name: "strftime", scope: !1648, file: !1648, line: 88, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!47, !40, !47, !49, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1662 = distinct !DISubprogram(name: "canon_host", scope: !194, file: !194, line: 33, type: !1267, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1663)
!1663 = !{!1664}
!1664 = !DILocalVariable(name: "host", arg: 1, scope: !1662, file: !194, line: 33, type: !49)
!1665 = !DILocation(line: 0, scope: !1662)
!1666 = !DILocation(line: 0, scope: !198, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 35, column: 10, scope: !1662)
!1668 = !DILocation(line: 65, column: 3, scope: !198, inlinedAt: !1667)
!1669 = !DILocation(line: 65, column: 20, scope: !198, inlinedAt: !1667)
!1670 = !DILocation(line: 68, column: 18, scope: !198, inlinedAt: !1667)
!1671 = !{!1672, !949, i64 0}
!1672 = !{!"addrinfo", !949, i64 0, !949, i64 4, !949, i64 8, !949, i64 12, !949, i64 16, !779, i64 24, !779, i64 32, !779, i64 40}
!1673 = !DILocation(line: 69, column: 12, scope: !198, inlinedAt: !1667)
!1674 = !DILocation(line: 70, column: 8, scope: !1675, inlinedAt: !1667)
!1675 = distinct !DILexicalBlock(scope: !198, file: !194, line: 70, column: 7)
!1676 = !DILocation(line: 70, column: 7, scope: !198, inlinedAt: !1667)
!1677 = !DILocation(line: 75, column: 24, scope: !1678, inlinedAt: !1667)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !194, line: 71, column: 5)
!1679 = !DILocation(line: 75, column: 29, scope: !1678, inlinedAt: !1667)
!1680 = !{!1672, !779, i64 32}
!1681 = !DILocation(line: 75, column: 16, scope: !1678, inlinedAt: !1667)
!1682 = !DILocation(line: 76, column: 12, scope: !1683, inlinedAt: !1667)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !194, line: 76, column: 11)
!1684 = !DILocation(line: 76, column: 19, scope: !1683, inlinedAt: !1667)
!1685 = !DILocation(line: 77, column: 18, scope: !1683, inlinedAt: !1667)
!1686 = !DILocation(line: 77, column: 9, scope: !1683, inlinedAt: !1667)
!1687 = !DILocation(line: 78, column: 7, scope: !1678, inlinedAt: !1667)
!1688 = !DILocation(line: 79, column: 5, scope: !1678, inlinedAt: !1667)
!1689 = !DILocation(line: 81, column: 14, scope: !1690, inlinedAt: !1667)
!1690 = distinct !DILexicalBlock(scope: !1675, file: !194, line: 80, column: 12)
!1691 = !DILocation(line: 81, column: 5, scope: !1690, inlinedAt: !1667)
!1692 = !DILocation(line: 84, column: 1, scope: !198, inlinedAt: !1667)
!1693 = !DILocation(line: 35, column: 3, scope: !1662)
!1694 = !DISubprogram(name: "getaddrinfo", scope: !208, file: !208, line: 660, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!44, !49, !49, !1697, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1700 = !DISubprogram(name: "freeaddrinfo", scope: !208, file: !208, line: 666, type: !1701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !206}
!1703 = !DILocation(line: 0, scope: !198)
!1704 = !DILocation(line: 65, column: 3, scope: !198)
!1705 = !DILocation(line: 65, column: 20, scope: !198)
!1706 = !DILocation(line: 68, column: 18, scope: !198)
!1707 = !DILocation(line: 69, column: 12, scope: !198)
!1708 = !DILocation(line: 70, column: 8, scope: !1675)
!1709 = !DILocation(line: 70, column: 7, scope: !198)
!1710 = !DILocation(line: 75, column: 24, scope: !1678)
!1711 = !DILocation(line: 75, column: 29, scope: !1678)
!1712 = !DILocation(line: 75, column: 16, scope: !1678)
!1713 = !DILocation(line: 76, column: 12, scope: !1683)
!1714 = !DILocation(line: 76, column: 19, scope: !1683)
!1715 = !DILocation(line: 77, column: 18, scope: !1683)
!1716 = !DILocation(line: 77, column: 9, scope: !1683)
!1717 = !DILocation(line: 78, column: 7, scope: !1678)
!1718 = !DILocation(line: 79, column: 5, scope: !1678)
!1719 = !DILocation(line: 80, column: 12, scope: !1690)
!1720 = !DILocation(line: 80, column: 12, scope: !1675)
!1721 = !DILocation(line: 81, column: 14, scope: !1690)
!1722 = !DILocation(line: 81, column: 5, scope: !1690)
!1723 = !DILocation(line: 84, column: 1, scope: !198)
!1724 = !DILocation(line: 83, column: 3, scope: !198)
!1725 = distinct !DISubprogram(name: "ch_strerror", scope: !194, file: !194, line: 88, type: !1726, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !189)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!49}
!1728 = !DILocation(line: 90, column: 24, scope: !1725)
!1729 = !DILocation(line: 90, column: 10, scope: !1725)
!1730 = !DILocation(line: 90, column: 3, scope: !1725)
!1731 = !DISubprogram(name: "gai_strerror", scope: !208, file: !208, line: 669, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!49, !44}
!1734 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !235, file: !235, line: 51, type: !792, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1735)
!1735 = !{!1736}
!1736 = !DILocalVariable(name: "file", arg: 1, scope: !1734, file: !235, line: 51, type: !49)
!1737 = !DILocation(line: 0, scope: !1734)
!1738 = !DILocation(line: 53, column: 13, scope: !1734)
!1739 = !DILocation(line: 54, column: 1, scope: !1734)
!1740 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !235, file: !235, line: 88, type: !1741, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !54}
!1743 = !{!1744}
!1744 = !DILocalVariable(name: "ignore", arg: 1, scope: !1740, file: !235, line: 88, type: !54)
!1745 = !DILocation(line: 0, scope: !1740)
!1746 = !DILocation(line: 90, column: 16, scope: !1740)
!1747 = !{!1748, !1748, i64 0}
!1748 = !{!"_Bool", !780, i64 0}
!1749 = !DILocation(line: 91, column: 1, scope: !1740)
!1750 = distinct !DISubprogram(name: "close_stdout", scope: !235, file: !235, line: 117, type: !1014, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1751)
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "write_error", scope: !1753, file: !235, line: 122, type: !49)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !235, line: 121, column: 5)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !235, line: 119, column: 7)
!1755 = !DILocation(line: 119, column: 21, scope: !1754)
!1756 = !DILocation(line: 119, column: 7, scope: !1754)
!1757 = !DILocation(line: 119, column: 29, scope: !1754)
!1758 = !DILocation(line: 120, column: 7, scope: !1754)
!1759 = !DILocation(line: 120, column: 12, scope: !1754)
!1760 = !{i8 0, i8 2}
!1761 = !DILocation(line: 120, column: 25, scope: !1754)
!1762 = !DILocation(line: 120, column: 28, scope: !1754)
!1763 = !DILocation(line: 120, column: 34, scope: !1754)
!1764 = !DILocation(line: 119, column: 7, scope: !1750)
!1765 = !DILocation(line: 122, column: 33, scope: !1753)
!1766 = !DILocation(line: 0, scope: !1753)
!1767 = !DILocation(line: 123, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !235, line: 123, column: 11)
!1769 = !DILocation(line: 0, scope: !1768)
!1770 = !DILocation(line: 123, column: 11, scope: !1753)
!1771 = !DILocation(line: 124, column: 36, scope: !1768)
!1772 = !DILocation(line: 124, column: 9, scope: !1768)
!1773 = !DILocation(line: 127, column: 9, scope: !1768)
!1774 = !DILocation(line: 129, column: 14, scope: !1753)
!1775 = !DILocation(line: 129, column: 7, scope: !1753)
!1776 = !DILocation(line: 134, column: 42, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1750, file: !235, line: 134, column: 7)
!1778 = !DILocation(line: 134, column: 28, scope: !1777)
!1779 = !DILocation(line: 134, column: 50, scope: !1777)
!1780 = !DILocation(line: 134, column: 7, scope: !1750)
!1781 = !DILocation(line: 135, column: 12, scope: !1777)
!1782 = !DILocation(line: 135, column: 5, scope: !1777)
!1783 = !DILocation(line: 136, column: 1, scope: !1750)
!1784 = distinct !DISubprogram(name: "hard_locale", scope: !309, file: !309, line: 27, type: !1785, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !308, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!54, !44}
!1787 = !{!1788, !1789}
!1788 = !DILocalVariable(name: "category", arg: 1, scope: !1784, file: !309, line: 27, type: !44)
!1789 = !DILocalVariable(name: "locale", scope: !1784, file: !309, line: 29, type: !1337)
!1790 = !DILocation(line: 0, scope: !1784)
!1791 = !DILocation(line: 29, column: 3, scope: !1784)
!1792 = !DILocation(line: 29, column: 8, scope: !1784)
!1793 = !DILocation(line: 31, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !309, line: 31, column: 7)
!1795 = !DILocation(line: 31, column: 7, scope: !1784)
!1796 = !DILocation(line: 34, column: 12, scope: !1784)
!1797 = !DILocation(line: 34, column: 38, scope: !1784)
!1798 = !DILocation(line: 34, column: 41, scope: !1784)
!1799 = !DILocation(line: 34, column: 66, scope: !1784)
!1800 = !DILocation(line: 35, column: 1, scope: !1784)
!1801 = distinct !DISubprogram(name: "imaxtostr", scope: !1802, file: !1802, line: 36, type: !1803, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !1805)
!1802 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!40, !313, !40}
!1805 = !{!1806, !1807, !1808}
!1806 = !DILocalVariable(name: "i", arg: 1, scope: !1801, file: !1802, line: 36, type: !313)
!1807 = !DILocalVariable(name: "buf", arg: 2, scope: !1801, file: !1802, line: 36, type: !40)
!1808 = !DILocalVariable(name: "p", scope: !1801, file: !1802, line: 38, type: !40)
!1809 = !DILocation(line: 0, scope: !1801)
!1810 = !DILocation(line: 38, column: 17, scope: !1801)
!1811 = !DILocation(line: 39, column: 6, scope: !1801)
!1812 = !DILocation(line: 41, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1801, file: !1802, line: 41, column: 7)
!1814 = !DILocation(line: 41, column: 7, scope: !1801)
!1815 = !DILocation(line: 44, column: 24, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !1802, line: 42, column: 5)
!1817 = !DILocation(line: 44, column: 16, scope: !1816)
!1818 = !DILocation(line: 44, column: 10, scope: !1816)
!1819 = !DILocation(line: 44, column: 14, scope: !1816)
!1820 = !DILocation(line: 45, column: 17, scope: !1816)
!1821 = !DILocation(line: 45, column: 24, scope: !1816)
!1822 = !DILocation(line: 44, column: 9, scope: !1816)
!1823 = distinct !{!1823, !1824, !1825, !822}
!1824 = !DILocation(line: 43, column: 7, scope: !1816)
!1825 = !DILocation(line: 45, column: 28, scope: !1816)
!1826 = !DILocation(line: 47, column: 8, scope: !1816)
!1827 = !DILocation(line: 47, column: 12, scope: !1816)
!1828 = !DILocation(line: 48, column: 5, scope: !1816)
!1829 = !DILocation(line: 52, column: 24, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1813, file: !1802, line: 50, column: 5)
!1831 = !DILocation(line: 52, column: 16, scope: !1830)
!1832 = !DILocation(line: 52, column: 10, scope: !1830)
!1833 = !DILocation(line: 52, column: 14, scope: !1830)
!1834 = !DILocation(line: 53, column: 17, scope: !1830)
!1835 = !DILocation(line: 53, column: 24, scope: !1830)
!1836 = !DILocation(line: 52, column: 9, scope: !1830)
!1837 = distinct !{!1837, !1838, !1839, !822}
!1838 = !DILocation(line: 51, column: 7, scope: !1830)
!1839 = !DILocation(line: 53, column: 28, scope: !1830)
!1840 = !DILocation(line: 0, scope: !1813)
!1841 = !DILocation(line: 56, column: 3, scope: !1801)
!1842 = distinct !DISubprogram(name: "set_program_name", scope: !248, file: !248, line: 39, type: !792, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "argv0", arg: 1, scope: !1842, file: !248, line: 39, type: !49)
!1845 = !DILocalVariable(name: "slash", scope: !1842, file: !248, line: 46, type: !49)
!1846 = !DILocalVariable(name: "base", scope: !1842, file: !248, line: 47, type: !49)
!1847 = !DILocation(line: 0, scope: !1842)
!1848 = !DILocation(line: 51, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1842, file: !248, line: 51, column: 7)
!1850 = !DILocation(line: 51, column: 7, scope: !1842)
!1851 = !DILocation(line: 55, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !248, line: 52, column: 5)
!1853 = !DILocation(line: 54, column: 7, scope: !1852)
!1854 = !DILocation(line: 56, column: 7, scope: !1852)
!1855 = !DILocation(line: 59, column: 11, scope: !1842)
!1856 = !DILocation(line: 60, column: 17, scope: !1842)
!1857 = !DILocation(line: 60, column: 11, scope: !1842)
!1858 = !DILocation(line: 61, column: 12, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1842, file: !248, line: 61, column: 7)
!1860 = !DILocation(line: 61, column: 20, scope: !1859)
!1861 = !DILocation(line: 61, column: 25, scope: !1859)
!1862 = !DILocation(line: 61, column: 42, scope: !1859)
!1863 = !DILocation(line: 61, column: 28, scope: !1859)
!1864 = !DILocation(line: 61, column: 61, scope: !1859)
!1865 = !DILocation(line: 61, column: 7, scope: !1842)
!1866 = !DILocation(line: 64, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !248, line: 64, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1859, file: !248, line: 62, column: 5)
!1869 = !DILocation(line: 64, column: 36, scope: !1867)
!1870 = !DILocation(line: 64, column: 11, scope: !1868)
!1871 = !DILocation(line: 66, column: 24, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !248, line: 65, column: 9)
!1873 = !DILocation(line: 70, column: 41, scope: !1872)
!1874 = !DILocation(line: 72, column: 9, scope: !1872)
!1875 = !DILocation(line: 84, column: 16, scope: !1842)
!1876 = !DILocation(line: 90, column: 27, scope: !1842)
!1877 = !DILocation(line: 92, column: 1, scope: !1842)
!1878 = distinct !DISubprogram(name: "clone_quoting_options", scope: !254, file: !254, line: 122, type: !1879, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1882)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1881, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1882 = !{!1883, !1884, !1885}
!1883 = !DILocalVariable(name: "o", arg: 1, scope: !1878, file: !254, line: 122, type: !1881)
!1884 = !DILocalVariable(name: "e", scope: !1878, file: !254, line: 124, type: !44)
!1885 = !DILocalVariable(name: "p", scope: !1878, file: !254, line: 125, type: !1881)
!1886 = !DILocation(line: 0, scope: !1878)
!1887 = !DILocation(line: 124, column: 11, scope: !1878)
!1888 = !DILocation(line: 125, column: 40, scope: !1878)
!1889 = !DILocation(line: 125, column: 31, scope: !1878)
!1890 = !DILocation(line: 127, column: 9, scope: !1878)
!1891 = !DILocation(line: 128, column: 3, scope: !1878)
!1892 = distinct !DISubprogram(name: "get_quoting_style", scope: !254, file: !254, line: 133, type: !1893, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1897)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!5, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1892, file: !254, line: 133, type: !1895)
!1899 = !DILocation(line: 0, scope: !1892)
!1900 = !DILocation(line: 135, column: 11, scope: !1892)
!1901 = !DILocation(line: 135, column: 46, scope: !1892)
!1902 = !{!1903, !780, i64 0}
!1903 = !{!"quoting_options", !780, i64 0, !949, i64 4, !780, i64 8, !779, i64 40, !779, i64 48}
!1904 = !DILocation(line: 135, column: 3, scope: !1892)
!1905 = distinct !DISubprogram(name: "set_quoting_style", scope: !254, file: !254, line: 141, type: !1906, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1881, !5}
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "o", arg: 1, scope: !1905, file: !254, line: 141, type: !1881)
!1910 = !DILocalVariable(name: "s", arg: 2, scope: !1905, file: !254, line: 141, type: !5)
!1911 = !DILocation(line: 0, scope: !1905)
!1912 = !DILocation(line: 143, column: 4, scope: !1905)
!1913 = !DILocation(line: 143, column: 39, scope: !1905)
!1914 = !DILocation(line: 143, column: 45, scope: !1905)
!1915 = !DILocation(line: 144, column: 1, scope: !1905)
!1916 = distinct !DISubprogram(name: "set_char_quoting", scope: !254, file: !254, line: 152, type: !1917, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!44, !1881, !41, !44}
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1926, !1927}
!1920 = !DILocalVariable(name: "o", arg: 1, scope: !1916, file: !254, line: 152, type: !1881)
!1921 = !DILocalVariable(name: "c", arg: 2, scope: !1916, file: !254, line: 152, type: !41)
!1922 = !DILocalVariable(name: "i", arg: 3, scope: !1916, file: !254, line: 152, type: !44)
!1923 = !DILocalVariable(name: "uc", scope: !1916, file: !254, line: 154, type: !43)
!1924 = !DILocalVariable(name: "p", scope: !1916, file: !254, line: 155, type: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1926 = !DILocalVariable(name: "shift", scope: !1916, file: !254, line: 157, type: !44)
!1927 = !DILocalVariable(name: "r", scope: !1916, file: !254, line: 158, type: !44)
!1928 = !DILocation(line: 0, scope: !1916)
!1929 = !DILocation(line: 156, column: 6, scope: !1916)
!1930 = !DILocation(line: 156, column: 62, scope: !1916)
!1931 = !DILocation(line: 156, column: 57, scope: !1916)
!1932 = !DILocation(line: 157, column: 15, scope: !1916)
!1933 = !DILocation(line: 158, column: 12, scope: !1916)
!1934 = !DILocation(line: 158, column: 15, scope: !1916)
!1935 = !DILocation(line: 158, column: 25, scope: !1916)
!1936 = !DILocation(line: 159, column: 13, scope: !1916)
!1937 = !DILocation(line: 159, column: 18, scope: !1916)
!1938 = !DILocation(line: 159, column: 23, scope: !1916)
!1939 = !DILocation(line: 159, column: 6, scope: !1916)
!1940 = !DILocation(line: 160, column: 3, scope: !1916)
!1941 = distinct !DISubprogram(name: "set_quoting_flags", scope: !254, file: !254, line: 168, type: !1942, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!44, !1881, !44}
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "o", arg: 1, scope: !1941, file: !254, line: 168, type: !1881)
!1946 = !DILocalVariable(name: "i", arg: 2, scope: !1941, file: !254, line: 168, type: !44)
!1947 = !DILocalVariable(name: "r", scope: !1941, file: !254, line: 170, type: !44)
!1948 = !DILocation(line: 0, scope: !1941)
!1949 = !DILocation(line: 171, column: 8, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !254, line: 171, column: 7)
!1951 = !DILocation(line: 171, column: 7, scope: !1941)
!1952 = !DILocation(line: 173, column: 10, scope: !1941)
!1953 = !{!1903, !949, i64 4}
!1954 = !DILocation(line: 174, column: 12, scope: !1941)
!1955 = !DILocation(line: 175, column: 3, scope: !1941)
!1956 = distinct !DISubprogram(name: "set_custom_quoting", scope: !254, file: !254, line: 179, type: !1957, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1881, !49, !49}
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "o", arg: 1, scope: !1956, file: !254, line: 179, type: !1881)
!1961 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1956, file: !254, line: 180, type: !49)
!1962 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1956, file: !254, line: 180, type: !49)
!1963 = !DILocation(line: 0, scope: !1956)
!1964 = !DILocation(line: 182, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !254, line: 182, column: 7)
!1966 = !DILocation(line: 182, column: 7, scope: !1956)
!1967 = !DILocation(line: 184, column: 6, scope: !1956)
!1968 = !DILocation(line: 184, column: 12, scope: !1956)
!1969 = !DILocation(line: 185, column: 8, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1956, file: !254, line: 185, column: 7)
!1971 = !DILocation(line: 185, column: 19, scope: !1970)
!1972 = !DILocation(line: 186, column: 5, scope: !1970)
!1973 = !DILocation(line: 187, column: 6, scope: !1956)
!1974 = !DILocation(line: 187, column: 17, scope: !1956)
!1975 = !{!1903, !779, i64 40}
!1976 = !DILocation(line: 188, column: 6, scope: !1956)
!1977 = !DILocation(line: 188, column: 18, scope: !1956)
!1978 = !{!1903, !779, i64 48}
!1979 = !DILocation(line: 189, column: 1, scope: !1956)
!1980 = distinct !DISubprogram(name: "quotearg_buffer", scope: !254, file: !254, line: 784, type: !1981, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!45, !40, !45, !49, !45, !1895}
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1984 = !DILocalVariable(name: "buffer", arg: 1, scope: !1980, file: !254, line: 784, type: !40)
!1985 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1980, file: !254, line: 784, type: !45)
!1986 = !DILocalVariable(name: "arg", arg: 3, scope: !1980, file: !254, line: 785, type: !49)
!1987 = !DILocalVariable(name: "argsize", arg: 4, scope: !1980, file: !254, line: 785, type: !45)
!1988 = !DILocalVariable(name: "o", arg: 5, scope: !1980, file: !254, line: 786, type: !1895)
!1989 = !DILocalVariable(name: "p", scope: !1980, file: !254, line: 788, type: !1895)
!1990 = !DILocalVariable(name: "e", scope: !1980, file: !254, line: 789, type: !44)
!1991 = !DILocalVariable(name: "r", scope: !1980, file: !254, line: 790, type: !45)
!1992 = !DILocation(line: 0, scope: !1980)
!1993 = !DILocation(line: 788, column: 37, scope: !1980)
!1994 = !DILocation(line: 789, column: 11, scope: !1980)
!1995 = !DILocation(line: 791, column: 43, scope: !1980)
!1996 = !DILocation(line: 791, column: 53, scope: !1980)
!1997 = !DILocation(line: 791, column: 60, scope: !1980)
!1998 = !DILocation(line: 792, column: 43, scope: !1980)
!1999 = !DILocation(line: 792, column: 58, scope: !1980)
!2000 = !DILocation(line: 790, column: 14, scope: !1980)
!2001 = !DILocation(line: 793, column: 9, scope: !1980)
!2002 = !DILocation(line: 794, column: 3, scope: !1980)
!2003 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !254, file: !254, line: 256, type: !2004, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2008)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!45, !40, !45, !49, !45, !5, !44, !2006, !49, !49}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2033, !2034, !2035, !2036, !2037, !2040, !2041, !2056, !2059, !2060, !2067, !2070, !2071, !2072, !2073, !2074, !2075}
!2009 = !DILocalVariable(name: "buffer", arg: 1, scope: !2003, file: !254, line: 256, type: !40)
!2010 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2003, file: !254, line: 256, type: !45)
!2011 = !DILocalVariable(name: "arg", arg: 3, scope: !2003, file: !254, line: 257, type: !49)
!2012 = !DILocalVariable(name: "argsize", arg: 4, scope: !2003, file: !254, line: 257, type: !45)
!2013 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2003, file: !254, line: 258, type: !5)
!2014 = !DILocalVariable(name: "flags", arg: 6, scope: !2003, file: !254, line: 258, type: !44)
!2015 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2003, file: !254, line: 259, type: !2006)
!2016 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2003, file: !254, line: 260, type: !49)
!2017 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2003, file: !254, line: 261, type: !49)
!2018 = !DILocalVariable(name: "i", scope: !2003, file: !254, line: 263, type: !45)
!2019 = !DILocalVariable(name: "len", scope: !2003, file: !254, line: 264, type: !45)
!2020 = !DILocalVariable(name: "orig_buffersize", scope: !2003, file: !254, line: 265, type: !45)
!2021 = !DILocalVariable(name: "quote_string", scope: !2003, file: !254, line: 266, type: !49)
!2022 = !DILocalVariable(name: "quote_string_len", scope: !2003, file: !254, line: 267, type: !45)
!2023 = !DILocalVariable(name: "backslash_escapes", scope: !2003, file: !254, line: 268, type: !54)
!2024 = !DILocalVariable(name: "unibyte_locale", scope: !2003, file: !254, line: 269, type: !54)
!2025 = !DILocalVariable(name: "elide_outer_quotes", scope: !2003, file: !254, line: 270, type: !54)
!2026 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2003, file: !254, line: 271, type: !54)
!2027 = !DILocalVariable(name: "encountered_single_quote", scope: !2003, file: !254, line: 272, type: !54)
!2028 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2003, file: !254, line: 273, type: !54)
!2029 = !DILocalVariable(name: "c", scope: !2030, file: !254, line: 402, type: !43)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !254, line: 401, column: 5)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !254, line: 400, column: 3)
!2032 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 400, column: 3)
!2033 = !DILocalVariable(name: "esc", scope: !2030, file: !254, line: 403, type: !43)
!2034 = !DILocalVariable(name: "is_right_quote", scope: !2030, file: !254, line: 404, type: !54)
!2035 = !DILocalVariable(name: "escaping", scope: !2030, file: !254, line: 405, type: !54)
!2036 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2030, file: !254, line: 406, type: !54)
!2037 = !DILocalVariable(name: "m", scope: !2038, file: !254, line: 610, type: !45)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 608, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 426, column: 9)
!2040 = !DILocalVariable(name: "printable", scope: !2038, file: !254, line: 612, type: !54)
!2041 = !DILocalVariable(name: "mbstate", scope: !2042, file: !254, line: 621, type: !2044)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !254, line: 620, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !254, line: 614, column: 17)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 6, baseType: !2046)
!2045 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2047, line: 21, baseType: !2048)
!2047 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2047, line: 13, size: 64, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2048, file: !2047, line: 15, baseType: !44, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2048, file: !2047, line: 20, baseType: !2052, size: 32, offset: 32)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2047, line: 16, size: 32, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2052, file: !2047, line: 18, baseType: !7, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2052, file: !2047, line: 19, baseType: !117, size: 32)
!2056 = !DILocalVariable(name: "w", scope: !2057, file: !254, line: 631, type: !2058)
!2057 = distinct !DILexicalBlock(scope: !2042, file: !254, line: 630, column: 19)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !46, line: 74, baseType: !44)
!2059 = !DILocalVariable(name: "bytes", scope: !2057, file: !254, line: 632, type: !45)
!2060 = !DILocalVariable(name: "j", scope: !2061, file: !254, line: 657, type: !45)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !254, line: 656, column: 27)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !254, line: 654, column: 29)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !254, line: 649, column: 23)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !254, line: 641, column: 30)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !254, line: 636, column: 30)
!2066 = distinct !DILexicalBlock(scope: !2057, file: !254, line: 634, column: 25)
!2067 = !DILocalVariable(name: "ilim", scope: !2068, file: !254, line: 684, type: !45)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !254, line: 681, column: 15)
!2069 = distinct !DILexicalBlock(scope: !2038, file: !254, line: 680, column: 17)
!2070 = !DILabel(scope: !2003, name: "process_input", file: !254, line: 314)
!2071 = !DILabel(scope: !2039, name: "c_and_shell_escape", file: !254, line: 512)
!2072 = !DILabel(scope: !2039, name: "c_escape", file: !254, line: 517)
!2073 = !DILabel(scope: !2030, name: "store_escape", file: !254, line: 719)
!2074 = !DILabel(scope: !2030, name: "store_c", file: !254, line: 722)
!2075 = !DILabel(scope: !2003, name: "force_outer_quoting_style", file: !254, line: 763)
!2076 = !DILocation(line: 0, scope: !2003)
!2077 = !DILocation(line: 269, column: 25, scope: !2003)
!2078 = !DILocation(line: 269, column: 36, scope: !2003)
!2079 = !DILocation(line: 270, column: 8, scope: !2003)
!2080 = !DILocation(line: 273, column: 3, scope: !2003)
!2081 = !DILocation(line: 265, column: 10, scope: !2003)
!2082 = !DILocation(line: 266, column: 15, scope: !2003)
!2083 = !DILocation(line: 267, column: 10, scope: !2003)
!2084 = !DILocation(line: 268, column: 8, scope: !2003)
!2085 = !DILocation(line: 271, column: 8, scope: !2003)
!2086 = !DILocation(line: 272, column: 8, scope: !2003)
!2087 = !DILocation(line: 273, column: 8, scope: !2003)
!2088 = !DILocation(line: 314, column: 2, scope: !2003)
!2089 = !DILocation(line: 316, column: 3, scope: !2003)
!2090 = !DILocation(line: 323, column: 11, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 317, column: 5)
!2092 = !DILocation(line: 323, column: 12, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !254, line: 323, column: 11)
!2094 = !DILocation(line: 324, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !254, line: 324, column: 9)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !254, line: 324, column: 9)
!2097 = !DILocation(line: 324, column: 9, scope: !2096)
!2098 = !DILocation(line: 362, column: 26, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !254, line: 340, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !254, line: 339, column: 13)
!2101 = distinct !DILexicalBlock(scope: !2091, file: !254, line: 338, column: 7)
!2102 = !DILocation(line: 363, column: 27, scope: !2099)
!2103 = !DILocation(line: 364, column: 11, scope: !2099)
!2104 = !DILocation(line: 365, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !254, line: 365, column: 13)
!2106 = !DILocation(line: 365, column: 13, scope: !2101)
!2107 = !DILocation(line: 366, column: 43, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !254, line: 366, column: 11)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !254, line: 366, column: 11)
!2110 = !DILocation(line: 366, column: 11, scope: !2109)
!2111 = !DILocation(line: 367, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !254, line: 367, column: 13)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !254, line: 367, column: 13)
!2114 = !DILocation(line: 367, column: 13, scope: !2113)
!2115 = !DILocation(line: 366, column: 70, scope: !2108)
!2116 = distinct !{!2116, !2110, !2117, !822}
!2117 = !DILocation(line: 367, column: 13, scope: !2109)
!2118 = !DILocation(line: 264, column: 10, scope: !2003)
!2119 = !DILocation(line: 370, column: 28, scope: !2101)
!2120 = !DILocation(line: 372, column: 7, scope: !2091)
!2121 = !DILocation(line: 376, column: 7, scope: !2091)
!2122 = !DILocation(line: 379, column: 7, scope: !2091)
!2123 = !DILocation(line: 381, column: 12, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2091, file: !254, line: 381, column: 11)
!2125 = !DILocation(line: 381, column: 11, scope: !2091)
!2126 = !DILocation(line: 386, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2091, file: !254, line: 386, column: 11)
!2128 = !DILocation(line: 386, column: 11, scope: !2091)
!2129 = !DILocation(line: 387, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !254, line: 387, column: 9)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !254, line: 387, column: 9)
!2132 = !DILocation(line: 387, column: 9, scope: !2131)
!2133 = !DILocation(line: 394, column: 7, scope: !2091)
!2134 = !DILocation(line: 397, column: 7, scope: !2091)
!2135 = !DILocation(line: 400, column: 8, scope: !2032)
!2136 = !DILocation(line: 0, scope: !2032)
!2137 = !DILocation(line: 400, column: 27, scope: !2031)
!2138 = !DILocation(line: 400, column: 19, scope: !2031)
!2139 = !DILocation(line: 400, column: 41, scope: !2031)
!2140 = !DILocation(line: 400, column: 48, scope: !2031)
!2141 = !DILocation(line: 400, column: 3, scope: !2032)
!2142 = !DILocation(line: 400, column: 60, scope: !2031)
!2143 = !DILocation(line: 0, scope: !2030)
!2144 = !DILocation(line: 409, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 408, column: 11)
!2146 = !DILocation(line: 411, column: 17, scope: !2145)
!2147 = !DILocation(line: 412, column: 39, scope: !2145)
!2148 = !DILocation(line: 416, column: 32, scope: !2145)
!2149 = !DILocation(line: 412, column: 19, scope: !2145)
!2150 = !DILocation(line: 412, column: 15, scope: !2145)
!2151 = !DILocation(line: 417, column: 11, scope: !2145)
!2152 = !DILocation(line: 417, column: 26, scope: !2145)
!2153 = !DILocation(line: 417, column: 14, scope: !2145)
!2154 = !DILocation(line: 417, column: 63, scope: !2145)
!2155 = !DILocation(line: 408, column: 11, scope: !2030)
!2156 = !DILocation(line: 424, column: 11, scope: !2030)
!2157 = !DILocation(line: 425, column: 7, scope: !2030)
!2158 = !DILocation(line: 428, column: 15, scope: !2039)
!2159 = !DILocation(line: 430, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !254, line: 430, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !254, line: 429, column: 13)
!2162 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 428, column: 15)
!2163 = !DILocation(line: 430, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !254, line: 430, column: 15)
!2165 = !DILocation(line: 430, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !254, line: 430, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !254, line: 430, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !254, line: 430, column: 15)
!2169 = !DILocation(line: 430, column: 15, scope: !2167)
!2170 = !DILocation(line: 430, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !254, line: 430, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !254, line: 430, column: 15)
!2173 = !DILocation(line: 430, column: 15, scope: !2172)
!2174 = !DILocation(line: 430, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !254, line: 430, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !254, line: 430, column: 15)
!2177 = !DILocation(line: 430, column: 15, scope: !2176)
!2178 = !DILocation(line: 430, column: 15, scope: !2168)
!2179 = !DILocation(line: 430, column: 15, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !254, line: 430, column: 15)
!2181 = distinct !DILexicalBlock(scope: !2160, file: !254, line: 430, column: 15)
!2182 = !DILocation(line: 430, column: 15, scope: !2181)
!2183 = !DILocation(line: 438, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2161, file: !254, line: 437, column: 19)
!2185 = !DILocation(line: 438, column: 48, scope: !2184)
!2186 = !DILocation(line: 438, column: 59, scope: !2184)
!2187 = !DILocation(line: 440, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !254, line: 440, column: 19)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !254, line: 440, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !254, line: 439, column: 17)
!2191 = !DILocation(line: 440, column: 19, scope: !2189)
!2192 = !DILocation(line: 441, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !254, line: 441, column: 19)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !254, line: 441, column: 19)
!2195 = !DILocation(line: 441, column: 19, scope: !2194)
!2196 = !DILocation(line: 442, column: 17, scope: !2190)
!2197 = !DILocation(line: 449, column: 20, scope: !2162)
!2198 = !DILocation(line: 454, column: 11, scope: !2039)
!2199 = !DILocation(line: 457, column: 19, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 455, column: 13)
!2201 = !DILocation(line: 463, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2200, file: !254, line: 462, column: 19)
!2203 = !DILocation(line: 463, column: 47, scope: !2202)
!2204 = !DILocation(line: 463, column: 41, scope: !2202)
!2205 = !DILocation(line: 463, column: 52, scope: !2202)
!2206 = !DILocation(line: 462, column: 19, scope: !2200)
!2207 = !DILocation(line: 464, column: 25, scope: !2202)
!2208 = !DILocation(line: 464, column: 17, scope: !2202)
!2209 = !DILocation(line: 471, column: 25, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !254, line: 465, column: 19)
!2211 = !DILocation(line: 475, column: 21, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !254, line: 475, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !254, line: 475, column: 21)
!2214 = !DILocation(line: 475, column: 21, scope: !2213)
!2215 = !DILocation(line: 476, column: 21, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !254, line: 476, column: 21)
!2217 = distinct !DILexicalBlock(scope: !2210, file: !254, line: 476, column: 21)
!2218 = !DILocation(line: 476, column: 21, scope: !2217)
!2219 = !DILocation(line: 477, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !254, line: 477, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2210, file: !254, line: 477, column: 21)
!2222 = !DILocation(line: 477, column: 21, scope: !2221)
!2223 = !DILocation(line: 478, column: 21, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !254, line: 478, column: 21)
!2225 = distinct !DILexicalBlock(scope: !2210, file: !254, line: 478, column: 21)
!2226 = !DILocation(line: 478, column: 21, scope: !2225)
!2227 = !DILocation(line: 479, column: 21, scope: !2210)
!2228 = !DILocation(line: 492, column: 31, scope: !2039)
!2229 = !DILocation(line: 493, column: 31, scope: !2039)
!2230 = !DILocation(line: 495, column: 31, scope: !2039)
!2231 = !DILocation(line: 496, column: 31, scope: !2039)
!2232 = !DILocation(line: 497, column: 31, scope: !2039)
!2233 = !DILocation(line: 500, column: 15, scope: !2039)
!2234 = !DILocation(line: 502, column: 19, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !254, line: 501, column: 13)
!2236 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 500, column: 15)
!2237 = !DILocation(line: 509, column: 33, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 509, column: 15)
!2239 = !DILocation(line: 0, scope: !2039)
!2240 = !DILocation(line: 512, column: 9, scope: !2039)
!2241 = !DILocation(line: 514, column: 15, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 513, column: 15)
!2243 = !DILocation(line: 517, column: 9, scope: !2039)
!2244 = !DILocation(line: 518, column: 15, scope: !2039)
!2245 = !DILocation(line: 526, column: 15, scope: !2039)
!2246 = !DILocation(line: 526, column: 40, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 526, column: 15)
!2248 = !DILocation(line: 526, column: 47, scope: !2247)
!2249 = !DILocation(line: 526, column: 18, scope: !2247)
!2250 = !DILocation(line: 530, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 530, column: 15)
!2252 = !DILocation(line: 530, column: 15, scope: !2039)
!2253 = !DILocation(line: 535, column: 11, scope: !2039)
!2254 = !DILocation(line: 549, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 548, column: 15)
!2256 = !DILocation(line: 556, column: 15, scope: !2039)
!2257 = !DILocation(line: 558, column: 19, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !254, line: 557, column: 13)
!2259 = distinct !DILexicalBlock(scope: !2039, file: !254, line: 556, column: 15)
!2260 = !DILocation(line: 561, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !254, line: 561, column: 19)
!2262 = !DILocation(line: 561, column: 30, scope: !2261)
!2263 = !DILocation(line: 570, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !254, line: 570, column: 15)
!2265 = distinct !DILexicalBlock(scope: !2258, file: !254, line: 570, column: 15)
!2266 = !DILocation(line: 570, column: 15, scope: !2265)
!2267 = !DILocation(line: 571, column: 15, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !254, line: 571, column: 15)
!2269 = distinct !DILexicalBlock(scope: !2258, file: !254, line: 571, column: 15)
!2270 = !DILocation(line: 571, column: 15, scope: !2269)
!2271 = !DILocation(line: 572, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !254, line: 572, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2258, file: !254, line: 572, column: 15)
!2274 = !DILocation(line: 572, column: 15, scope: !2273)
!2275 = !DILocation(line: 574, column: 13, scope: !2258)
!2276 = !DILocation(line: 614, column: 17, scope: !2038)
!2277 = !DILocation(line: 0, scope: !2038)
!2278 = !DILocation(line: 617, column: 29, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2043, file: !254, line: 615, column: 15)
!2280 = !DILocation(line: 617, column: 27, scope: !2279)
!2281 = !DILocation(line: 678, column: 40, scope: !2038)
!2282 = !DILocation(line: 680, column: 23, scope: !2069)
!2283 = !DILocation(line: 621, column: 17, scope: !2042)
!2284 = !DILocation(line: 621, column: 27, scope: !2042)
!2285 = !DILocalVariable(name: "__dest", arg: 1, scope: !2286, file: !1197, line: 57, type: !42)
!2286 = distinct !DISubprogram(name: "memset", scope: !1197, file: !1197, line: 57, type: !2287, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!42, !42, !44, !45}
!2289 = !{!2285, !2290, !2291}
!2290 = !DILocalVariable(name: "__ch", arg: 2, scope: !2286, file: !1197, line: 57, type: !44)
!2291 = !DILocalVariable(name: "__len", arg: 3, scope: !2286, file: !1197, line: 57, type: !45)
!2292 = !DILocation(line: 0, scope: !2286, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 622, column: 17, scope: !2042)
!2294 = !DILocation(line: 59, column: 10, scope: !2286, inlinedAt: !2293)
!2295 = !DILocation(line: 626, column: 29, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2042, file: !254, line: 626, column: 21)
!2297 = !DILocation(line: 626, column: 21, scope: !2042)
!2298 = !DILocation(line: 627, column: 29, scope: !2296)
!2299 = !DILocation(line: 627, column: 19, scope: !2296)
!2300 = !DILocation(line: 629, column: 17, scope: !2042)
!2301 = !DILocation(line: 624, column: 19, scope: !2042)
!2302 = !DILocation(line: 625, column: 27, scope: !2042)
!2303 = !DILocation(line: 631, column: 21, scope: !2057)
!2304 = !DILocation(line: 632, column: 56, scope: !2057)
!2305 = !DILocation(line: 632, column: 50, scope: !2057)
!2306 = !DILocation(line: 633, column: 53, scope: !2057)
!2307 = !DILocation(line: 0, scope: !2057)
!2308 = !DILocation(line: 632, column: 36, scope: !2057)
!2309 = !DILocation(line: 634, column: 25, scope: !2057)
!2310 = !DILocation(line: 644, column: 38, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2064, file: !254, line: 642, column: 23)
!2312 = !DILocation(line: 644, column: 48, scope: !2311)
!2313 = !DILocation(line: 644, column: 25, scope: !2311)
!2314 = !DILocation(line: 644, column: 51, scope: !2311)
!2315 = !DILocation(line: 645, column: 28, scope: !2311)
!2316 = !DILocation(line: 644, column: 34, scope: !2311)
!2317 = distinct !{!2317, !2313, !2315, !822}
!2318 = !DILocation(line: 655, column: 29, scope: !2062)
!2319 = !DILocation(line: 0, scope: !2061)
!2320 = !DILocation(line: 659, column: 49, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !254, line: 658, column: 29)
!2322 = distinct !DILexicalBlock(scope: !2061, file: !254, line: 658, column: 29)
!2323 = !DILocation(line: 659, column: 39, scope: !2321)
!2324 = !DILocation(line: 659, column: 31, scope: !2321)
!2325 = !DILocation(line: 658, column: 53, scope: !2321)
!2326 = !DILocation(line: 658, column: 43, scope: !2321)
!2327 = !DILocation(line: 658, column: 29, scope: !2322)
!2328 = distinct !{!2328, !2327, !2329, !822}
!2329 = !DILocation(line: 667, column: 33, scope: !2322)
!2330 = !DILocation(line: 674, column: 19, scope: !2042)
!2331 = !DILocation(line: 670, column: 41, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2063, file: !254, line: 670, column: 29)
!2333 = !DILocation(line: 670, column: 31, scope: !2332)
!2334 = !DILocation(line: 670, column: 29, scope: !2063)
!2335 = !DILocation(line: 672, column: 27, scope: !2063)
!2336 = !DILocation(line: 675, column: 26, scope: !2042)
!2337 = !DILocation(line: 675, column: 24, scope: !2042)
!2338 = !DILocation(line: 674, column: 19, scope: !2057)
!2339 = distinct !{!2339, !2300, !2340, !822}
!2340 = !DILocation(line: 675, column: 44, scope: !2042)
!2341 = !DILocation(line: 676, column: 15, scope: !2043)
!2342 = !DILocation(line: 680, column: 19, scope: !2069)
!2343 = !DILocation(line: 680, column: 45, scope: !2069)
!2344 = !DILocation(line: 684, column: 33, scope: !2068)
!2345 = !DILocation(line: 0, scope: !2068)
!2346 = !DILocation(line: 686, column: 17, scope: !2068)
!2347 = !DILocation(line: 405, column: 12, scope: !2030)
!2348 = !DILocation(line: 688, column: 43, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !254, line: 688, column: 25)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !254, line: 687, column: 19)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !254, line: 686, column: 17)
!2352 = distinct !DILexicalBlock(scope: !2068, file: !254, line: 686, column: 17)
!2353 = !DILocation(line: 690, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !254, line: 690, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !254, line: 689, column: 23)
!2356 = !DILocation(line: 690, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !254, line: 690, column: 25)
!2358 = !DILocation(line: 690, column: 25, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !254, line: 690, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !254, line: 690, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !254, line: 690, column: 25)
!2362 = !DILocation(line: 690, column: 25, scope: !2360)
!2363 = !DILocation(line: 690, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !254, line: 690, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !254, line: 690, column: 25)
!2366 = !DILocation(line: 690, column: 25, scope: !2365)
!2367 = !DILocation(line: 690, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !254, line: 690, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !254, line: 690, column: 25)
!2370 = !DILocation(line: 690, column: 25, scope: !2369)
!2371 = !DILocation(line: 690, column: 25, scope: !2361)
!2372 = !DILocation(line: 690, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !254, line: 690, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2354, file: !254, line: 690, column: 25)
!2375 = !DILocation(line: 690, column: 25, scope: !2374)
!2376 = !DILocation(line: 691, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !254, line: 691, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !254, line: 691, column: 25)
!2379 = !DILocation(line: 691, column: 25, scope: !2378)
!2380 = !DILocation(line: 692, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !254, line: 692, column: 25)
!2382 = distinct !DILexicalBlock(scope: !2355, file: !254, line: 692, column: 25)
!2383 = !DILocation(line: 692, column: 25, scope: !2382)
!2384 = !DILocation(line: 693, column: 38, scope: !2355)
!2385 = !DILocation(line: 693, column: 33, scope: !2355)
!2386 = !DILocation(line: 694, column: 23, scope: !2355)
!2387 = !DILocation(line: 695, column: 30, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2349, file: !254, line: 695, column: 30)
!2389 = !DILocation(line: 695, column: 30, scope: !2349)
!2390 = !DILocation(line: 697, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !254, line: 697, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !254, line: 697, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !254, line: 696, column: 23)
!2394 = !DILocation(line: 697, column: 25, scope: !2392)
!2395 = !DILocation(line: 699, column: 23, scope: !2393)
!2396 = !DILocation(line: 700, column: 35, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2350, file: !254, line: 700, column: 25)
!2398 = !DILocation(line: 700, column: 30, scope: !2397)
!2399 = !DILocation(line: 700, column: 25, scope: !2350)
!2400 = !DILocation(line: 702, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !254, line: 702, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2350, file: !254, line: 702, column: 21)
!2403 = !DILocation(line: 702, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !254, line: 702, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !254, line: 702, column: 21)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !254, line: 702, column: 21)
!2407 = !DILocation(line: 702, column: 21, scope: !2405)
!2408 = !DILocation(line: 702, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !254, line: 702, column: 21)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !254, line: 702, column: 21)
!2411 = !DILocation(line: 702, column: 21, scope: !2410)
!2412 = !DILocation(line: 702, column: 21, scope: !2406)
!2413 = !DILocation(line: 0, scope: !2350)
!2414 = !DILocation(line: 703, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !254, line: 703, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2350, file: !254, line: 703, column: 21)
!2417 = !DILocation(line: 703, column: 21, scope: !2416)
!2418 = !DILocation(line: 704, column: 25, scope: !2350)
!2419 = !DILocation(line: 686, column: 17, scope: !2351)
!2420 = distinct !{!2420, !2421, !2422}
!2421 = !DILocation(line: 686, column: 17, scope: !2352)
!2422 = !DILocation(line: 705, column: 19, scope: !2352)
!2423 = !DILocation(line: 416, column: 30, scope: !2145)
!2424 = !DILocation(line: 712, column: 34, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 712, column: 11)
!2426 = !DILocation(line: 715, column: 35, scope: !2425)
!2427 = !DILocation(line: 715, column: 17, scope: !2425)
!2428 = !DILocation(line: 715, column: 47, scope: !2425)
!2429 = !DILocation(line: 715, column: 65, scope: !2425)
!2430 = !DILocation(line: 716, column: 11, scope: !2425)
!2431 = !DILocation(line: 712, column: 11, scope: !2030)
!2432 = !DILocation(line: 400, column: 10, scope: !2032)
!2433 = !DILocation(line: 719, column: 5, scope: !2030)
!2434 = !DILocation(line: 720, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 720, column: 7)
!2436 = !DILocation(line: 720, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2435, file: !254, line: 720, column: 7)
!2438 = !DILocation(line: 720, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !254, line: 720, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !254, line: 720, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !254, line: 720, column: 7)
!2442 = !DILocation(line: 720, column: 7, scope: !2440)
!2443 = !DILocation(line: 720, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !254, line: 720, column: 7)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !254, line: 720, column: 7)
!2446 = !DILocation(line: 720, column: 7, scope: !2445)
!2447 = !DILocation(line: 720, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !254, line: 720, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !254, line: 720, column: 7)
!2450 = !DILocation(line: 720, column: 7, scope: !2449)
!2451 = !DILocation(line: 720, column: 7, scope: !2441)
!2452 = !DILocation(line: 720, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !254, line: 720, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2435, file: !254, line: 720, column: 7)
!2455 = !DILocation(line: 720, column: 7, scope: !2454)
!2456 = !DILocation(line: 722, column: 5, scope: !2030)
!2457 = !DILocation(line: 723, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !254, line: 723, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 723, column: 7)
!2460 = !DILocation(line: 424, column: 9, scope: !2030)
!2461 = !DILocation(line: 723, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !254, line: 723, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !254, line: 723, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2458, file: !254, line: 723, column: 7)
!2465 = !DILocation(line: 723, column: 7, scope: !2463)
!2466 = !DILocation(line: 723, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !254, line: 723, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !254, line: 723, column: 7)
!2469 = !DILocation(line: 723, column: 7, scope: !2468)
!2470 = !DILocation(line: 723, column: 7, scope: !2464)
!2471 = !DILocation(line: 724, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !254, line: 724, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 724, column: 7)
!2474 = !DILocation(line: 724, column: 7, scope: !2473)
!2475 = !DILocation(line: 726, column: 13, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2030, file: !254, line: 726, column: 11)
!2477 = !DILocation(line: 726, column: 11, scope: !2030)
!2478 = !DILocation(line: 728, column: 5, scope: !2031)
!2479 = !DILocation(line: 400, column: 75, scope: !2031)
!2480 = !DILocation(line: 400, column: 3, scope: !2031)
!2481 = distinct !{!2481, !2141, !2482, !822}
!2482 = !DILocation(line: 728, column: 5, scope: !2032)
!2483 = !DILocation(line: 730, column: 11, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 730, column: 7)
!2485 = !DILocation(line: 730, column: 16, scope: !2484)
!2486 = !DILocation(line: 738, column: 51, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 738, column: 7)
!2488 = !DILocation(line: 741, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !254, line: 741, column: 11)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !254, line: 740, column: 5)
!2491 = !DILocation(line: 741, column: 11, scope: !2490)
!2492 = !DILocation(line: 742, column: 16, scope: !2489)
!2493 = !DILocation(line: 742, column: 9, scope: !2489)
!2494 = !DILocation(line: 746, column: 18, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !254, line: 746, column: 16)
!2496 = !DILocation(line: 746, column: 29, scope: !2495)
!2497 = !DILocation(line: 755, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 755, column: 7)
!2499 = !DILocation(line: 755, column: 20, scope: !2498)
!2500 = !DILocation(line: 756, column: 12, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !254, line: 756, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !254, line: 756, column: 5)
!2503 = !DILocation(line: 756, column: 5, scope: !2502)
!2504 = !DILocation(line: 757, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !254, line: 757, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !254, line: 757, column: 7)
!2507 = !DILocation(line: 757, column: 7, scope: !2506)
!2508 = !DILocation(line: 756, column: 39, scope: !2501)
!2509 = distinct !{!2509, !2503, !2510, !822}
!2510 = !DILocation(line: 757, column: 7, scope: !2502)
!2511 = !DILocation(line: 759, column: 11, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 759, column: 7)
!2513 = !DILocation(line: 759, column: 7, scope: !2003)
!2514 = !DILocation(line: 760, column: 5, scope: !2512)
!2515 = !DILocation(line: 760, column: 17, scope: !2512)
!2516 = !DILocation(line: 763, column: 2, scope: !2003)
!2517 = !DILocation(line: 766, column: 51, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2003, file: !254, line: 766, column: 7)
!2519 = !DILocation(line: 766, column: 21, scope: !2518)
!2520 = !DILocation(line: 770, column: 42, scope: !2003)
!2521 = !DILocation(line: 768, column: 10, scope: !2003)
!2522 = !DILocation(line: 768, column: 3, scope: !2003)
!2523 = !DILocation(line: 772, column: 1, scope: !2003)
!2524 = distinct !DISubprogram(name: "gettext_quote", scope: !254, file: !254, line: 207, type: !2525, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!49, !49, !5}
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "msgid", arg: 1, scope: !2524, file: !254, line: 207, type: !49)
!2529 = !DILocalVariable(name: "s", arg: 2, scope: !2524, file: !254, line: 207, type: !5)
!2530 = !DILocalVariable(name: "translation", scope: !2524, file: !254, line: 209, type: !49)
!2531 = !DILocalVariable(name: "locale_code", scope: !2524, file: !254, line: 210, type: !49)
!2532 = !DILocation(line: 0, scope: !2524)
!2533 = !DILocation(line: 209, column: 29, scope: !2524)
!2534 = !DILocation(line: 212, column: 19, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2524, file: !254, line: 212, column: 7)
!2536 = !DILocation(line: 212, column: 7, scope: !2524)
!2537 = !DILocation(line: 233, column: 17, scope: !2524)
!2538 = !DILocalVariable(name: "s1", arg: 1, scope: !2539, file: !2540, line: 160, type: !49)
!2539 = distinct !DISubprogram(name: "strcaseeq0", scope: !2540, file: !2540, line: 160, type: !2541, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2543)
!2540 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!44, !49, !49, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2543 = !{!2538, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553}
!2544 = !DILocalVariable(name: "s2", arg: 2, scope: !2539, file: !2540, line: 160, type: !49)
!2545 = !DILocalVariable(name: "s20", arg: 3, scope: !2539, file: !2540, line: 160, type: !41)
!2546 = !DILocalVariable(name: "s21", arg: 4, scope: !2539, file: !2540, line: 160, type: !41)
!2547 = !DILocalVariable(name: "s22", arg: 5, scope: !2539, file: !2540, line: 160, type: !41)
!2548 = !DILocalVariable(name: "s23", arg: 6, scope: !2539, file: !2540, line: 160, type: !41)
!2549 = !DILocalVariable(name: "s24", arg: 7, scope: !2539, file: !2540, line: 160, type: !41)
!2550 = !DILocalVariable(name: "s25", arg: 8, scope: !2539, file: !2540, line: 160, type: !41)
!2551 = !DILocalVariable(name: "s26", arg: 9, scope: !2539, file: !2540, line: 160, type: !41)
!2552 = !DILocalVariable(name: "s27", arg: 10, scope: !2539, file: !2540, line: 160, type: !41)
!2553 = !DILocalVariable(name: "s28", arg: 11, scope: !2539, file: !2540, line: 160, type: !41)
!2554 = !DILocation(line: 0, scope: !2539, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 234, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2524, file: !254, line: 234, column: 7)
!2557 = !DILocation(line: 162, column: 7, scope: !2558, inlinedAt: !2555)
!2558 = distinct !DILexicalBlock(scope: !2539, file: !2540, line: 162, column: 7)
!2559 = !DILocalVariable(name: "s1", arg: 1, scope: !2560, file: !2540, line: 146, type: !49)
!2560 = distinct !DISubprogram(name: "strcaseeq1", scope: !2540, file: !2540, line: 146, type: !2561, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!44, !49, !49, !41, !41, !41, !41, !41, !41, !41, !41}
!2563 = !{!2559, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2564 = !DILocalVariable(name: "s2", arg: 2, scope: !2560, file: !2540, line: 146, type: !49)
!2565 = !DILocalVariable(name: "s21", arg: 3, scope: !2560, file: !2540, line: 146, type: !41)
!2566 = !DILocalVariable(name: "s22", arg: 4, scope: !2560, file: !2540, line: 146, type: !41)
!2567 = !DILocalVariable(name: "s23", arg: 5, scope: !2560, file: !2540, line: 146, type: !41)
!2568 = !DILocalVariable(name: "s24", arg: 6, scope: !2560, file: !2540, line: 146, type: !41)
!2569 = !DILocalVariable(name: "s25", arg: 7, scope: !2560, file: !2540, line: 146, type: !41)
!2570 = !DILocalVariable(name: "s26", arg: 8, scope: !2560, file: !2540, line: 146, type: !41)
!2571 = !DILocalVariable(name: "s27", arg: 9, scope: !2560, file: !2540, line: 146, type: !41)
!2572 = !DILocalVariable(name: "s28", arg: 10, scope: !2560, file: !2540, line: 146, type: !41)
!2573 = !DILocation(line: 0, scope: !2560, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 167, column: 16, scope: !2575, inlinedAt: !2555)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !2540, line: 164, column: 11)
!2576 = distinct !DILexicalBlock(scope: !2558, file: !2540, line: 163, column: 5)
!2577 = !DILocation(line: 148, column: 7, scope: !2578, inlinedAt: !2574)
!2578 = distinct !DILexicalBlock(scope: !2560, file: !2540, line: 148, column: 7)
!2579 = !DILocalVariable(name: "s1", arg: 1, scope: !2580, file: !2540, line: 132, type: !49)
!2580 = distinct !DISubprogram(name: "strcaseeq2", scope: !2540, file: !2540, line: 132, type: !2581, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!44, !49, !49, !41, !41, !41, !41, !41, !41, !41}
!2583 = !{!2579, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2584 = !DILocalVariable(name: "s2", arg: 2, scope: !2580, file: !2540, line: 132, type: !49)
!2585 = !DILocalVariable(name: "s22", arg: 3, scope: !2580, file: !2540, line: 132, type: !41)
!2586 = !DILocalVariable(name: "s23", arg: 4, scope: !2580, file: !2540, line: 132, type: !41)
!2587 = !DILocalVariable(name: "s24", arg: 5, scope: !2580, file: !2540, line: 132, type: !41)
!2588 = !DILocalVariable(name: "s25", arg: 6, scope: !2580, file: !2540, line: 132, type: !41)
!2589 = !DILocalVariable(name: "s26", arg: 7, scope: !2580, file: !2540, line: 132, type: !41)
!2590 = !DILocalVariable(name: "s27", arg: 8, scope: !2580, file: !2540, line: 132, type: !41)
!2591 = !DILocalVariable(name: "s28", arg: 9, scope: !2580, file: !2540, line: 132, type: !41)
!2592 = !DILocation(line: 0, scope: !2580, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 153, column: 16, scope: !2594, inlinedAt: !2574)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !2540, line: 150, column: 11)
!2595 = distinct !DILexicalBlock(scope: !2578, file: !2540, line: 149, column: 5)
!2596 = !DILocation(line: 134, column: 7, scope: !2597, inlinedAt: !2593)
!2597 = distinct !DILexicalBlock(scope: !2580, file: !2540, line: 134, column: 7)
!2598 = !DILocalVariable(name: "s1", arg: 1, scope: !2599, file: !2540, line: 118, type: !49)
!2599 = distinct !DISubprogram(name: "strcaseeq3", scope: !2540, file: !2540, line: 118, type: !2600, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!44, !49, !49, !41, !41, !41, !41, !41, !41}
!2602 = !{!2598, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2603 = !DILocalVariable(name: "s2", arg: 2, scope: !2599, file: !2540, line: 118, type: !49)
!2604 = !DILocalVariable(name: "s23", arg: 3, scope: !2599, file: !2540, line: 118, type: !41)
!2605 = !DILocalVariable(name: "s24", arg: 4, scope: !2599, file: !2540, line: 118, type: !41)
!2606 = !DILocalVariable(name: "s25", arg: 5, scope: !2599, file: !2540, line: 118, type: !41)
!2607 = !DILocalVariable(name: "s26", arg: 6, scope: !2599, file: !2540, line: 118, type: !41)
!2608 = !DILocalVariable(name: "s27", arg: 7, scope: !2599, file: !2540, line: 118, type: !41)
!2609 = !DILocalVariable(name: "s28", arg: 8, scope: !2599, file: !2540, line: 118, type: !41)
!2610 = !DILocation(line: 0, scope: !2599, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 139, column: 16, scope: !2612, inlinedAt: !2593)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !2540, line: 136, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2597, file: !2540, line: 135, column: 5)
!2614 = !DILocation(line: 120, column: 7, scope: !2615, inlinedAt: !2611)
!2615 = distinct !DILexicalBlock(scope: !2599, file: !2540, line: 120, column: 7)
!2616 = !DILocation(line: 120, column: 7, scope: !2599, inlinedAt: !2611)
!2617 = !DILocalVariable(name: "s1", arg: 1, scope: !2618, file: !2540, line: 104, type: !49)
!2618 = distinct !DISubprogram(name: "strcaseeq4", scope: !2540, file: !2540, line: 104, type: !2619, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!44, !49, !49, !41, !41, !41, !41, !41}
!2621 = !{!2617, !2622, !2623, !2624, !2625, !2626, !2627}
!2622 = !DILocalVariable(name: "s2", arg: 2, scope: !2618, file: !2540, line: 104, type: !49)
!2623 = !DILocalVariable(name: "s24", arg: 3, scope: !2618, file: !2540, line: 104, type: !41)
!2624 = !DILocalVariable(name: "s25", arg: 4, scope: !2618, file: !2540, line: 104, type: !41)
!2625 = !DILocalVariable(name: "s26", arg: 5, scope: !2618, file: !2540, line: 104, type: !41)
!2626 = !DILocalVariable(name: "s27", arg: 6, scope: !2618, file: !2540, line: 104, type: !41)
!2627 = !DILocalVariable(name: "s28", arg: 7, scope: !2618, file: !2540, line: 104, type: !41)
!2628 = !DILocation(line: 0, scope: !2618, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 125, column: 16, scope: !2630, inlinedAt: !2611)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !2540, line: 122, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2615, file: !2540, line: 121, column: 5)
!2632 = !DILocation(line: 106, column: 7, scope: !2633, inlinedAt: !2629)
!2633 = distinct !DILexicalBlock(scope: !2618, file: !2540, line: 106, column: 7)
!2634 = !DILocation(line: 106, column: 7, scope: !2618, inlinedAt: !2629)
!2635 = !DILocalVariable(name: "s1", arg: 1, scope: !2636, file: !2540, line: 90, type: !49)
!2636 = distinct !DISubprogram(name: "strcaseeq5", scope: !2540, file: !2540, line: 90, type: !2637, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!44, !49, !49, !41, !41, !41, !41}
!2639 = !{!2635, !2640, !2641, !2642, !2643, !2644}
!2640 = !DILocalVariable(name: "s2", arg: 2, scope: !2636, file: !2540, line: 90, type: !49)
!2641 = !DILocalVariable(name: "s25", arg: 3, scope: !2636, file: !2540, line: 90, type: !41)
!2642 = !DILocalVariable(name: "s26", arg: 4, scope: !2636, file: !2540, line: 90, type: !41)
!2643 = !DILocalVariable(name: "s27", arg: 5, scope: !2636, file: !2540, line: 90, type: !41)
!2644 = !DILocalVariable(name: "s28", arg: 6, scope: !2636, file: !2540, line: 90, type: !41)
!2645 = !DILocation(line: 0, scope: !2636, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 111, column: 16, scope: !2647, inlinedAt: !2629)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !2540, line: 108, column: 11)
!2648 = distinct !DILexicalBlock(scope: !2633, file: !2540, line: 107, column: 5)
!2649 = !DILocation(line: 92, column: 7, scope: !2650, inlinedAt: !2646)
!2650 = distinct !DILexicalBlock(scope: !2636, file: !2540, line: 92, column: 7)
!2651 = !DILocation(line: 92, column: 7, scope: !2636, inlinedAt: !2646)
!2652 = !DILocation(line: 235, column: 12, scope: !2556)
!2653 = !DILocation(line: 235, column: 21, scope: !2556)
!2654 = !DILocation(line: 235, column: 5, scope: !2556)
!2655 = !DILocation(line: 0, scope: !2560, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 167, column: 16, scope: !2575, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 236, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2524, file: !254, line: 236, column: 7)
!2659 = !DILocation(line: 148, column: 7, scope: !2578, inlinedAt: !2656)
!2660 = !DILocation(line: 0, scope: !2580, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 153, column: 16, scope: !2594, inlinedAt: !2656)
!2662 = !DILocation(line: 134, column: 7, scope: !2597, inlinedAt: !2661)
!2663 = !DILocation(line: 134, column: 7, scope: !2580, inlinedAt: !2661)
!2664 = !DILocation(line: 0, scope: !2599, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 139, column: 16, scope: !2612, inlinedAt: !2661)
!2666 = !DILocation(line: 120, column: 7, scope: !2615, inlinedAt: !2665)
!2667 = !DILocation(line: 120, column: 7, scope: !2599, inlinedAt: !2665)
!2668 = !DILocation(line: 0, scope: !2618, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 125, column: 16, scope: !2630, inlinedAt: !2665)
!2670 = !DILocation(line: 106, column: 7, scope: !2633, inlinedAt: !2669)
!2671 = !DILocation(line: 106, column: 7, scope: !2618, inlinedAt: !2669)
!2672 = !DILocation(line: 0, scope: !2636, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 111, column: 16, scope: !2647, inlinedAt: !2669)
!2674 = !DILocation(line: 92, column: 7, scope: !2650, inlinedAt: !2673)
!2675 = !DILocation(line: 92, column: 7, scope: !2636, inlinedAt: !2673)
!2676 = !DILocalVariable(name: "s1", arg: 1, scope: !2677, file: !2540, line: 76, type: !49)
!2677 = distinct !DISubprogram(name: "strcaseeq6", scope: !2540, file: !2540, line: 76, type: !2678, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!44, !49, !49, !41, !41, !41}
!2680 = !{!2676, !2681, !2682, !2683, !2684}
!2681 = !DILocalVariable(name: "s2", arg: 2, scope: !2677, file: !2540, line: 76, type: !49)
!2682 = !DILocalVariable(name: "s26", arg: 3, scope: !2677, file: !2540, line: 76, type: !41)
!2683 = !DILocalVariable(name: "s27", arg: 4, scope: !2677, file: !2540, line: 76, type: !41)
!2684 = !DILocalVariable(name: "s28", arg: 5, scope: !2677, file: !2540, line: 76, type: !41)
!2685 = !DILocation(line: 0, scope: !2677, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 97, column: 16, scope: !2687, inlinedAt: !2673)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !2540, line: 94, column: 11)
!2688 = distinct !DILexicalBlock(scope: !2650, file: !2540, line: 93, column: 5)
!2689 = !DILocation(line: 78, column: 7, scope: !2690, inlinedAt: !2686)
!2690 = distinct !DILexicalBlock(scope: !2677, file: !2540, line: 78, column: 7)
!2691 = !DILocation(line: 78, column: 7, scope: !2677, inlinedAt: !2686)
!2692 = !DILocalVariable(name: "s1", arg: 1, scope: !2693, file: !2540, line: 62, type: !49)
!2693 = distinct !DISubprogram(name: "strcaseeq7", scope: !2540, file: !2540, line: 62, type: !2694, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!44, !49, !49, !41, !41}
!2696 = !{!2692, !2697, !2698, !2699}
!2697 = !DILocalVariable(name: "s2", arg: 2, scope: !2693, file: !2540, line: 62, type: !49)
!2698 = !DILocalVariable(name: "s27", arg: 3, scope: !2693, file: !2540, line: 62, type: !41)
!2699 = !DILocalVariable(name: "s28", arg: 4, scope: !2693, file: !2540, line: 62, type: !41)
!2700 = !DILocation(line: 0, scope: !2693, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 83, column: 16, scope: !2702, inlinedAt: !2686)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !2540, line: 80, column: 11)
!2703 = distinct !DILexicalBlock(scope: !2690, file: !2540, line: 79, column: 5)
!2704 = !DILocation(line: 64, column: 7, scope: !2705, inlinedAt: !2701)
!2705 = distinct !DILexicalBlock(scope: !2693, file: !2540, line: 64, column: 7)
!2706 = !DILocation(line: 236, column: 7, scope: !2524)
!2707 = !DILocation(line: 237, column: 12, scope: !2658)
!2708 = !DILocation(line: 237, column: 21, scope: !2658)
!2709 = !DILocation(line: 237, column: 5, scope: !2658)
!2710 = !DILocation(line: 239, column: 13, scope: !2524)
!2711 = !DILocation(line: 239, column: 11, scope: !2524)
!2712 = !DILocation(line: 239, column: 3, scope: !2524)
!2713 = !DILocation(line: 240, column: 1, scope: !2524)
!2714 = !DISubprogram(name: "iswprint", scope: !2715, file: !2715, line: 120, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2715 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!44, !7}
!2718 = !DISubprogram(name: "mbsinit", scope: !2719, file: !2719, line: 292, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2719 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!44, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2724 = distinct !DISubprogram(name: "quotearg_alloc", scope: !254, file: !254, line: 799, type: !2725, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!40, !49, !45, !1895}
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !254, line: 799, type: !49)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !254, line: 799, type: !45)
!2730 = !DILocalVariable(name: "o", arg: 3, scope: !2724, file: !254, line: 800, type: !1895)
!2731 = !DILocation(line: 0, scope: !2724)
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2733, file: !254, line: 812, type: !49)
!2733 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !254, file: !254, line: 812, type: !2734, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!40, !49, !45, !333, !1895}
!2736 = !{!2732, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2737 = !DILocalVariable(name: "argsize", arg: 2, scope: !2733, file: !254, line: 812, type: !45)
!2738 = !DILocalVariable(name: "size", arg: 3, scope: !2733, file: !254, line: 812, type: !333)
!2739 = !DILocalVariable(name: "o", arg: 4, scope: !2733, file: !254, line: 813, type: !1895)
!2740 = !DILocalVariable(name: "p", scope: !2733, file: !254, line: 815, type: !1895)
!2741 = !DILocalVariable(name: "e", scope: !2733, file: !254, line: 816, type: !44)
!2742 = !DILocalVariable(name: "flags", scope: !2733, file: !254, line: 818, type: !44)
!2743 = !DILocalVariable(name: "bufsize", scope: !2733, file: !254, line: 819, type: !45)
!2744 = !DILocalVariable(name: "buf", scope: !2733, file: !254, line: 823, type: !40)
!2745 = !DILocation(line: 0, scope: !2733, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 802, column: 10, scope: !2724)
!2747 = !DILocation(line: 815, column: 37, scope: !2733, inlinedAt: !2746)
!2748 = !DILocation(line: 816, column: 11, scope: !2733, inlinedAt: !2746)
!2749 = !DILocation(line: 818, column: 18, scope: !2733, inlinedAt: !2746)
!2750 = !DILocation(line: 818, column: 24, scope: !2733, inlinedAt: !2746)
!2751 = !DILocation(line: 819, column: 69, scope: !2733, inlinedAt: !2746)
!2752 = !DILocation(line: 820, column: 53, scope: !2733, inlinedAt: !2746)
!2753 = !DILocation(line: 821, column: 49, scope: !2733, inlinedAt: !2746)
!2754 = !DILocation(line: 822, column: 49, scope: !2733, inlinedAt: !2746)
!2755 = !DILocation(line: 819, column: 20, scope: !2733, inlinedAt: !2746)
!2756 = !DILocation(line: 822, column: 62, scope: !2733, inlinedAt: !2746)
!2757 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !329, line: 216, type: !45)
!2758 = distinct !DISubprogram(name: "xcharalloc", scope: !329, file: !329, line: 216, type: !2759, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!40, !45}
!2761 = !{!2757}
!2762 = !DILocation(line: 0, scope: !2758, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 823, column: 15, scope: !2733, inlinedAt: !2746)
!2764 = !DILocation(line: 218, column: 10, scope: !2758, inlinedAt: !2763)
!2765 = !DILocation(line: 824, column: 60, scope: !2733, inlinedAt: !2746)
!2766 = !DILocation(line: 826, column: 32, scope: !2733, inlinedAt: !2746)
!2767 = !DILocation(line: 826, column: 47, scope: !2733, inlinedAt: !2746)
!2768 = !DILocation(line: 824, column: 3, scope: !2733, inlinedAt: !2746)
!2769 = !DILocation(line: 827, column: 9, scope: !2733, inlinedAt: !2746)
!2770 = !DILocation(line: 802, column: 3, scope: !2724)
!2771 = !DILocation(line: 0, scope: !2733)
!2772 = !DILocation(line: 815, column: 37, scope: !2733)
!2773 = !DILocation(line: 816, column: 11, scope: !2733)
!2774 = !DILocation(line: 818, column: 18, scope: !2733)
!2775 = !DILocation(line: 818, column: 27, scope: !2733)
!2776 = !DILocation(line: 818, column: 24, scope: !2733)
!2777 = !DILocation(line: 819, column: 69, scope: !2733)
!2778 = !DILocation(line: 820, column: 53, scope: !2733)
!2779 = !DILocation(line: 821, column: 49, scope: !2733)
!2780 = !DILocation(line: 822, column: 49, scope: !2733)
!2781 = !DILocation(line: 819, column: 20, scope: !2733)
!2782 = !DILocation(line: 822, column: 62, scope: !2733)
!2783 = !DILocation(line: 0, scope: !2758, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 823, column: 15, scope: !2733)
!2785 = !DILocation(line: 218, column: 10, scope: !2758, inlinedAt: !2784)
!2786 = !DILocation(line: 824, column: 60, scope: !2733)
!2787 = !DILocation(line: 826, column: 32, scope: !2733)
!2788 = !DILocation(line: 826, column: 47, scope: !2733)
!2789 = !DILocation(line: 824, column: 3, scope: !2733)
!2790 = !DILocation(line: 827, column: 9, scope: !2733)
!2791 = !DILocation(line: 828, column: 7, scope: !2733)
!2792 = !DILocation(line: 829, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2733, file: !254, line: 828, column: 7)
!2794 = !DILocation(line: 829, column: 5, scope: !2793)
!2795 = !DILocation(line: 830, column: 3, scope: !2733)
!2796 = distinct !DISubprogram(name: "quotearg_free", scope: !254, file: !254, line: 848, type: !1014, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2797)
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "sv", scope: !2796, file: !254, line: 850, type: !287)
!2799 = !DILocalVariable(name: "i", scope: !2796, file: !254, line: 851, type: !44)
!2800 = !DILocation(line: 850, column: 24, scope: !2796)
!2801 = !DILocation(line: 0, scope: !2796)
!2802 = !DILocation(line: 852, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !254, line: 852, column: 3)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !254, line: 852, column: 3)
!2805 = !DILocation(line: 852, column: 17, scope: !2803)
!2806 = !DILocation(line: 852, column: 3, scope: !2804)
!2807 = !DILocation(line: 853, column: 17, scope: !2803)
!2808 = !{!2809, !779, i64 8}
!2809 = !{!"slotvec", !986, i64 0, !779, i64 8}
!2810 = !DILocation(line: 853, column: 5, scope: !2803)
!2811 = !DILocation(line: 852, column: 28, scope: !2803)
!2812 = distinct !{!2812, !2806, !2813, !822}
!2813 = !DILocation(line: 853, column: 20, scope: !2804)
!2814 = !DILocation(line: 854, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2796, file: !254, line: 854, column: 7)
!2816 = !DILocation(line: 854, column: 17, scope: !2815)
!2817 = !DILocation(line: 854, column: 7, scope: !2796)
!2818 = !DILocation(line: 856, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !254, line: 855, column: 5)
!2820 = !DILocation(line: 857, column: 21, scope: !2819)
!2821 = !{!2809, !986, i64 0}
!2822 = !DILocation(line: 858, column: 20, scope: !2819)
!2823 = !DILocation(line: 859, column: 5, scope: !2819)
!2824 = !DILocation(line: 860, column: 10, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2796, file: !254, line: 860, column: 7)
!2826 = !DILocation(line: 860, column: 7, scope: !2796)
!2827 = !DILocation(line: 862, column: 13, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !254, line: 861, column: 5)
!2829 = !DILocation(line: 862, column: 7, scope: !2828)
!2830 = !DILocation(line: 863, column: 15, scope: !2828)
!2831 = !DILocation(line: 864, column: 5, scope: !2828)
!2832 = !DILocation(line: 865, column: 10, scope: !2796)
!2833 = !DILocation(line: 866, column: 1, scope: !2796)
!2834 = distinct !DISubprogram(name: "quotearg_n", scope: !254, file: !254, line: 931, type: !899, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2835)
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !254, line: 931, type: !44)
!2837 = !DILocalVariable(name: "arg", arg: 2, scope: !2834, file: !254, line: 931, type: !49)
!2838 = !DILocation(line: 0, scope: !2834)
!2839 = !DILocation(line: 933, column: 10, scope: !2834)
!2840 = !DILocation(line: 933, column: 3, scope: !2834)
!2841 = distinct !DISubprogram(name: "quotearg_n_options", scope: !254, file: !254, line: 877, type: !2842, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!40, !44, !49, !45, !1895}
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2854, !2855, !2857, !2858, !2859}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !254, line: 877, type: !44)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !254, line: 877, type: !49)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2841, file: !254, line: 877, type: !45)
!2848 = !DILocalVariable(name: "options", arg: 4, scope: !2841, file: !254, line: 878, type: !1895)
!2849 = !DILocalVariable(name: "e", scope: !2841, file: !254, line: 880, type: !44)
!2850 = !DILocalVariable(name: "sv", scope: !2841, file: !254, line: 882, type: !287)
!2851 = !DILocalVariable(name: "preallocated", scope: !2852, file: !254, line: 889, type: !54)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !254, line: 888, column: 5)
!2853 = distinct !DILexicalBlock(scope: !2841, file: !254, line: 887, column: 7)
!2854 = !DILocalVariable(name: "nmax", scope: !2852, file: !254, line: 890, type: !44)
!2855 = !DILocalVariable(name: "size", scope: !2856, file: !254, line: 903, type: !45)
!2856 = distinct !DILexicalBlock(scope: !2841, file: !254, line: 902, column: 3)
!2857 = !DILocalVariable(name: "val", scope: !2856, file: !254, line: 904, type: !40)
!2858 = !DILocalVariable(name: "flags", scope: !2856, file: !254, line: 906, type: !44)
!2859 = !DILocalVariable(name: "qsize", scope: !2856, file: !254, line: 907, type: !45)
!2860 = !DILocation(line: 0, scope: !2841)
!2861 = !DILocation(line: 880, column: 11, scope: !2841)
!2862 = !DILocation(line: 882, column: 24, scope: !2841)
!2863 = !DILocation(line: 884, column: 9, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2841, file: !254, line: 884, column: 7)
!2865 = !DILocation(line: 884, column: 7, scope: !2841)
!2866 = !DILocation(line: 885, column: 5, scope: !2864)
!2867 = !DILocation(line: 887, column: 7, scope: !2853)
!2868 = !DILocation(line: 887, column: 14, scope: !2853)
!2869 = !DILocation(line: 887, column: 7, scope: !2841)
!2870 = !DILocation(line: 889, column: 31, scope: !2852)
!2871 = !DILocation(line: 0, scope: !2852)
!2872 = !DILocation(line: 892, column: 16, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2852, file: !254, line: 892, column: 11)
!2874 = !DILocation(line: 892, column: 11, scope: !2852)
!2875 = !DILocation(line: 893, column: 9, scope: !2873)
!2876 = !DILocation(line: 895, column: 32, scope: !2852)
!2877 = !DILocation(line: 895, column: 61, scope: !2852)
!2878 = !DILocation(line: 895, column: 66, scope: !2852)
!2879 = !DILocation(line: 895, column: 22, scope: !2852)
!2880 = !DILocation(line: 895, column: 15, scope: !2852)
!2881 = !DILocation(line: 896, column: 11, scope: !2852)
!2882 = !DILocation(line: 897, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2852, file: !254, line: 896, column: 11)
!2884 = !{i64 0, i64 8, !985, i64 8, i64 8, !778}
!2885 = !DILocation(line: 897, column: 9, scope: !2883)
!2886 = !DILocation(line: 898, column: 20, scope: !2852)
!2887 = !DILocation(line: 898, column: 18, scope: !2852)
!2888 = !DILocation(line: 898, column: 15, scope: !2852)
!2889 = !DILocation(line: 898, column: 38, scope: !2852)
!2890 = !DILocation(line: 898, column: 31, scope: !2852)
!2891 = !DILocation(line: 898, column: 48, scope: !2852)
!2892 = !DILocation(line: 0, scope: !2286, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 898, column: 7, scope: !2852)
!2894 = !DILocation(line: 59, column: 10, scope: !2286, inlinedAt: !2893)
!2895 = !DILocation(line: 899, column: 14, scope: !2852)
!2896 = !DILocation(line: 900, column: 5, scope: !2852)
!2897 = !DILocation(line: 903, column: 19, scope: !2856)
!2898 = !DILocation(line: 903, column: 25, scope: !2856)
!2899 = !DILocation(line: 0, scope: !2856)
!2900 = !DILocation(line: 904, column: 23, scope: !2856)
!2901 = !DILocation(line: 906, column: 26, scope: !2856)
!2902 = !DILocation(line: 906, column: 32, scope: !2856)
!2903 = !DILocation(line: 908, column: 55, scope: !2856)
!2904 = !DILocation(line: 909, column: 46, scope: !2856)
!2905 = !DILocation(line: 910, column: 55, scope: !2856)
!2906 = !DILocation(line: 911, column: 55, scope: !2856)
!2907 = !DILocation(line: 907, column: 20, scope: !2856)
!2908 = !DILocation(line: 913, column: 14, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2856, file: !254, line: 913, column: 9)
!2910 = !DILocation(line: 913, column: 9, scope: !2856)
!2911 = !DILocation(line: 915, column: 35, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !254, line: 914, column: 7)
!2913 = !DILocation(line: 915, column: 20, scope: !2912)
!2914 = !DILocation(line: 916, column: 17, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !254, line: 916, column: 13)
!2916 = !DILocation(line: 916, column: 13, scope: !2912)
!2917 = !DILocation(line: 917, column: 11, scope: !2915)
!2918 = !DILocation(line: 0, scope: !2758, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 918, column: 27, scope: !2912)
!2920 = !DILocation(line: 218, column: 10, scope: !2758, inlinedAt: !2919)
!2921 = !DILocation(line: 918, column: 19, scope: !2912)
!2922 = !DILocation(line: 919, column: 69, scope: !2912)
!2923 = !DILocation(line: 921, column: 44, scope: !2912)
!2924 = !DILocation(line: 922, column: 44, scope: !2912)
!2925 = !DILocation(line: 919, column: 9, scope: !2912)
!2926 = !DILocation(line: 923, column: 7, scope: !2912)
!2927 = !DILocation(line: 925, column: 11, scope: !2856)
!2928 = !DILocation(line: 926, column: 5, scope: !2856)
!2929 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !254, file: !254, line: 937, type: !2930, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!40, !44, !49, !45}
!2932 = !{!2933, !2934, !2935}
!2933 = !DILocalVariable(name: "n", arg: 1, scope: !2929, file: !254, line: 937, type: !44)
!2934 = !DILocalVariable(name: "arg", arg: 2, scope: !2929, file: !254, line: 937, type: !49)
!2935 = !DILocalVariable(name: "argsize", arg: 3, scope: !2929, file: !254, line: 937, type: !45)
!2936 = !DILocation(line: 0, scope: !2929)
!2937 = !DILocation(line: 939, column: 10, scope: !2929)
!2938 = !DILocation(line: 939, column: 3, scope: !2929)
!2939 = distinct !DISubprogram(name: "quotearg", scope: !254, file: !254, line: 943, type: !1267, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2940)
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !254, line: 943, type: !49)
!2942 = !DILocation(line: 0, scope: !2939)
!2943 = !DILocation(line: 0, scope: !2834, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 945, column: 10, scope: !2939)
!2945 = !DILocation(line: 933, column: 10, scope: !2834, inlinedAt: !2944)
!2946 = !DILocation(line: 945, column: 3, scope: !2939)
!2947 = distinct !DISubprogram(name: "quotearg_mem", scope: !254, file: !254, line: 949, type: !2948, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!40, !49, !45}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "arg", arg: 1, scope: !2947, file: !254, line: 949, type: !49)
!2952 = !DILocalVariable(name: "argsize", arg: 2, scope: !2947, file: !254, line: 949, type: !45)
!2953 = !DILocation(line: 0, scope: !2947)
!2954 = !DILocation(line: 0, scope: !2929, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 951, column: 10, scope: !2947)
!2956 = !DILocation(line: 939, column: 10, scope: !2929, inlinedAt: !2955)
!2957 = !DILocation(line: 951, column: 3, scope: !2947)
!2958 = distinct !DISubprogram(name: "quotearg_n_style", scope: !254, file: !254, line: 955, type: !2959, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!40, !44, !5, !49}
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !254, line: 955, type: !44)
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2958, file: !254, line: 955, type: !5)
!2964 = !DILocalVariable(name: "arg", arg: 3, scope: !2958, file: !254, line: 955, type: !49)
!2965 = !DILocalVariable(name: "o", scope: !2958, file: !254, line: 957, type: !1896)
!2966 = !DILocation(line: 0, scope: !2958)
!2967 = !DILocation(line: 957, column: 3, scope: !2958)
!2968 = !DILocation(line: 957, column: 32, scope: !2958)
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"quoting_options_from_style: argument 0"}
!2971 = distinct !{!2971, !"quoting_options_from_style"}
!2972 = !DILocation(line: 957, column: 36, scope: !2958)
!2973 = !DILocalVariable(name: "style", arg: 1, scope: !2974, file: !254, line: 193, type: !5)
!2974 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !254, file: !254, line: 193, type: !2975, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!271, !5}
!2977 = !{!2973, !2978}
!2978 = !DILocalVariable(name: "o", scope: !2974, file: !254, line: 195, type: !271)
!2979 = !DILocation(line: 0, scope: !2974, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 957, column: 36, scope: !2958)
!2981 = !DILocation(line: 195, column: 26, scope: !2974, inlinedAt: !2980)
!2982 = !DILocation(line: 196, column: 13, scope: !2983, inlinedAt: !2980)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !254, line: 196, column: 7)
!2984 = !DILocation(line: 196, column: 7, scope: !2974, inlinedAt: !2980)
!2985 = !DILocation(line: 197, column: 5, scope: !2983, inlinedAt: !2980)
!2986 = !DILocation(line: 198, column: 5, scope: !2974, inlinedAt: !2980)
!2987 = !DILocation(line: 198, column: 11, scope: !2974, inlinedAt: !2980)
!2988 = !DILocation(line: 958, column: 10, scope: !2958)
!2989 = !DILocation(line: 959, column: 1, scope: !2958)
!2990 = !DILocation(line: 958, column: 3, scope: !2958)
!2991 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !254, file: !254, line: 962, type: !2992, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!40, !44, !5, !49, !45}
!2994 = !{!2995, !2996, !2997, !2998, !2999}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !254, line: 962, type: !44)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2991, file: !254, line: 962, type: !5)
!2997 = !DILocalVariable(name: "arg", arg: 3, scope: !2991, file: !254, line: 963, type: !49)
!2998 = !DILocalVariable(name: "argsize", arg: 4, scope: !2991, file: !254, line: 963, type: !45)
!2999 = !DILocalVariable(name: "o", scope: !2991, file: !254, line: 965, type: !1896)
!3000 = !DILocation(line: 0, scope: !2991)
!3001 = !DILocation(line: 965, column: 3, scope: !2991)
!3002 = !DILocation(line: 965, column: 32, scope: !2991)
!3003 = !{!3004}
!3004 = distinct !{!3004, !3005, !"quoting_options_from_style: argument 0"}
!3005 = distinct !{!3005, !"quoting_options_from_style"}
!3006 = !DILocation(line: 965, column: 36, scope: !2991)
!3007 = !DILocation(line: 0, scope: !2974, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 965, column: 36, scope: !2991)
!3009 = !DILocation(line: 195, column: 26, scope: !2974, inlinedAt: !3008)
!3010 = !DILocation(line: 196, column: 13, scope: !2983, inlinedAt: !3008)
!3011 = !DILocation(line: 196, column: 7, scope: !2974, inlinedAt: !3008)
!3012 = !DILocation(line: 197, column: 5, scope: !2983, inlinedAt: !3008)
!3013 = !DILocation(line: 198, column: 5, scope: !2974, inlinedAt: !3008)
!3014 = !DILocation(line: 198, column: 11, scope: !2974, inlinedAt: !3008)
!3015 = !DILocation(line: 966, column: 10, scope: !2991)
!3016 = !DILocation(line: 967, column: 1, scope: !2991)
!3017 = !DILocation(line: 966, column: 3, scope: !2991)
!3018 = distinct !DISubprogram(name: "quotearg_style", scope: !254, file: !254, line: 970, type: !3019, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!40, !5, !49}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "s", arg: 1, scope: !3018, file: !254, line: 970, type: !5)
!3023 = !DILocalVariable(name: "arg", arg: 2, scope: !3018, file: !254, line: 970, type: !49)
!3024 = !DILocation(line: 0, scope: !3018)
!3025 = !DILocation(line: 0, scope: !2958, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 972, column: 10, scope: !3018)
!3027 = !DILocation(line: 957, column: 3, scope: !2958, inlinedAt: !3026)
!3028 = !DILocation(line: 957, column: 32, scope: !2958, inlinedAt: !3026)
!3029 = !{!3030}
!3030 = distinct !{!3030, !3031, !"quoting_options_from_style: argument 0"}
!3031 = distinct !{!3031, !"quoting_options_from_style"}
!3032 = !DILocation(line: 957, column: 36, scope: !2958, inlinedAt: !3026)
!3033 = !DILocation(line: 0, scope: !2974, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 957, column: 36, scope: !2958, inlinedAt: !3026)
!3035 = !DILocation(line: 195, column: 26, scope: !2974, inlinedAt: !3034)
!3036 = !DILocation(line: 196, column: 13, scope: !2983, inlinedAt: !3034)
!3037 = !DILocation(line: 196, column: 7, scope: !2974, inlinedAt: !3034)
!3038 = !DILocation(line: 197, column: 5, scope: !2983, inlinedAt: !3034)
!3039 = !DILocation(line: 198, column: 5, scope: !2974, inlinedAt: !3034)
!3040 = !DILocation(line: 198, column: 11, scope: !2974, inlinedAt: !3034)
!3041 = !DILocation(line: 958, column: 10, scope: !2958, inlinedAt: !3026)
!3042 = !DILocation(line: 959, column: 1, scope: !2958, inlinedAt: !3026)
!3043 = !DILocation(line: 972, column: 3, scope: !3018)
!3044 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !254, file: !254, line: 976, type: !3045, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!40, !5, !49, !45}
!3047 = !{!3048, !3049, !3050}
!3048 = !DILocalVariable(name: "s", arg: 1, scope: !3044, file: !254, line: 976, type: !5)
!3049 = !DILocalVariable(name: "arg", arg: 2, scope: !3044, file: !254, line: 976, type: !49)
!3050 = !DILocalVariable(name: "argsize", arg: 3, scope: !3044, file: !254, line: 976, type: !45)
!3051 = !DILocation(line: 0, scope: !3044)
!3052 = !DILocation(line: 0, scope: !2991, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 978, column: 10, scope: !3044)
!3054 = !DILocation(line: 965, column: 3, scope: !2991, inlinedAt: !3053)
!3055 = !DILocation(line: 965, column: 32, scope: !2991, inlinedAt: !3053)
!3056 = !{!3057}
!3057 = distinct !{!3057, !3058, !"quoting_options_from_style: argument 0"}
!3058 = distinct !{!3058, !"quoting_options_from_style"}
!3059 = !DILocation(line: 965, column: 36, scope: !2991, inlinedAt: !3053)
!3060 = !DILocation(line: 0, scope: !2974, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 965, column: 36, scope: !2991, inlinedAt: !3053)
!3062 = !DILocation(line: 195, column: 26, scope: !2974, inlinedAt: !3061)
!3063 = !DILocation(line: 196, column: 13, scope: !2983, inlinedAt: !3061)
!3064 = !DILocation(line: 196, column: 7, scope: !2974, inlinedAt: !3061)
!3065 = !DILocation(line: 197, column: 5, scope: !2983, inlinedAt: !3061)
!3066 = !DILocation(line: 198, column: 5, scope: !2974, inlinedAt: !3061)
!3067 = !DILocation(line: 198, column: 11, scope: !2974, inlinedAt: !3061)
!3068 = !DILocation(line: 966, column: 10, scope: !2991, inlinedAt: !3053)
!3069 = !DILocation(line: 967, column: 1, scope: !2991, inlinedAt: !3053)
!3070 = !DILocation(line: 978, column: 3, scope: !3044)
!3071 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !254, file: !254, line: 982, type: !3072, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!40, !49, !45, !41}
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DILocalVariable(name: "arg", arg: 1, scope: !3071, file: !254, line: 982, type: !49)
!3076 = !DILocalVariable(name: "argsize", arg: 2, scope: !3071, file: !254, line: 982, type: !45)
!3077 = !DILocalVariable(name: "ch", arg: 3, scope: !3071, file: !254, line: 982, type: !41)
!3078 = !DILocalVariable(name: "options", scope: !3071, file: !254, line: 984, type: !271)
!3079 = !DILocation(line: 0, scope: !3071)
!3080 = !DILocation(line: 984, column: 3, scope: !3071)
!3081 = !DILocation(line: 984, column: 26, scope: !3071)
!3082 = !DILocation(line: 985, column: 13, scope: !3071)
!3083 = !{i64 0, i64 4, !1045, i64 4, i64 4, !948, i64 8, i64 32, !1045, i64 40, i64 8, !778, i64 48, i64 8, !778}
!3084 = !DILocation(line: 0, scope: !1916, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 986, column: 3, scope: !3071)
!3086 = !DILocation(line: 156, column: 62, scope: !1916, inlinedAt: !3085)
!3087 = !DILocation(line: 156, column: 57, scope: !1916, inlinedAt: !3085)
!3088 = !DILocation(line: 157, column: 15, scope: !1916, inlinedAt: !3085)
!3089 = !DILocation(line: 158, column: 12, scope: !1916, inlinedAt: !3085)
!3090 = !DILocation(line: 158, column: 15, scope: !1916, inlinedAt: !3085)
!3091 = !DILocation(line: 158, column: 25, scope: !1916, inlinedAt: !3085)
!3092 = !DILocation(line: 159, column: 18, scope: !1916, inlinedAt: !3085)
!3093 = !DILocation(line: 159, column: 23, scope: !1916, inlinedAt: !3085)
!3094 = !DILocation(line: 159, column: 6, scope: !1916, inlinedAt: !3085)
!3095 = !DILocation(line: 987, column: 10, scope: !3071)
!3096 = !DILocation(line: 988, column: 1, scope: !3071)
!3097 = !DILocation(line: 987, column: 3, scope: !3071)
!3098 = distinct !DISubprogram(name: "quotearg_char", scope: !254, file: !254, line: 991, type: !3099, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!40, !49, !41}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "arg", arg: 1, scope: !3098, file: !254, line: 991, type: !49)
!3103 = !DILocalVariable(name: "ch", arg: 2, scope: !3098, file: !254, line: 991, type: !41)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocation(line: 0, scope: !3071, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 993, column: 10, scope: !3098)
!3107 = !DILocation(line: 984, column: 3, scope: !3071, inlinedAt: !3106)
!3108 = !DILocation(line: 984, column: 26, scope: !3071, inlinedAt: !3106)
!3109 = !DILocation(line: 985, column: 13, scope: !3071, inlinedAt: !3106)
!3110 = !DILocation(line: 0, scope: !1916, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 986, column: 3, scope: !3071, inlinedAt: !3106)
!3112 = !DILocation(line: 156, column: 62, scope: !1916, inlinedAt: !3111)
!3113 = !DILocation(line: 156, column: 57, scope: !1916, inlinedAt: !3111)
!3114 = !DILocation(line: 157, column: 15, scope: !1916, inlinedAt: !3111)
!3115 = !DILocation(line: 158, column: 12, scope: !1916, inlinedAt: !3111)
!3116 = !DILocation(line: 158, column: 15, scope: !1916, inlinedAt: !3111)
!3117 = !DILocation(line: 158, column: 25, scope: !1916, inlinedAt: !3111)
!3118 = !DILocation(line: 159, column: 18, scope: !1916, inlinedAt: !3111)
!3119 = !DILocation(line: 159, column: 23, scope: !1916, inlinedAt: !3111)
!3120 = !DILocation(line: 159, column: 6, scope: !1916, inlinedAt: !3111)
!3121 = !DILocation(line: 987, column: 10, scope: !3071, inlinedAt: !3106)
!3122 = !DILocation(line: 988, column: 1, scope: !3071, inlinedAt: !3106)
!3123 = !DILocation(line: 993, column: 3, scope: !3098)
!3124 = distinct !DISubprogram(name: "quotearg_colon", scope: !254, file: !254, line: 997, type: !1267, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3125)
!3125 = !{!3126}
!3126 = !DILocalVariable(name: "arg", arg: 1, scope: !3124, file: !254, line: 997, type: !49)
!3127 = !DILocation(line: 0, scope: !3124)
!3128 = !DILocation(line: 0, scope: !3098, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 999, column: 10, scope: !3124)
!3130 = !DILocation(line: 0, scope: !3071, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 993, column: 10, scope: !3098, inlinedAt: !3129)
!3132 = !DILocation(line: 984, column: 3, scope: !3071, inlinedAt: !3131)
!3133 = !DILocation(line: 984, column: 26, scope: !3071, inlinedAt: !3131)
!3134 = !DILocation(line: 985, column: 13, scope: !3071, inlinedAt: !3131)
!3135 = !DILocation(line: 0, scope: !1916, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 986, column: 3, scope: !3071, inlinedAt: !3131)
!3137 = !DILocation(line: 156, column: 57, scope: !1916, inlinedAt: !3136)
!3138 = !DILocation(line: 158, column: 12, scope: !1916, inlinedAt: !3136)
!3139 = !DILocation(line: 159, column: 6, scope: !1916, inlinedAt: !3136)
!3140 = !DILocation(line: 987, column: 10, scope: !3071, inlinedAt: !3131)
!3141 = !DILocation(line: 988, column: 1, scope: !3071, inlinedAt: !3131)
!3142 = !DILocation(line: 999, column: 3, scope: !3124)
!3143 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !254, file: !254, line: 1003, type: !2948, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3144)
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3143, file: !254, line: 1003, type: !49)
!3146 = !DILocalVariable(name: "argsize", arg: 2, scope: !3143, file: !254, line: 1003, type: !45)
!3147 = !DILocation(line: 0, scope: !3143)
!3148 = !DILocation(line: 0, scope: !3071, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1005, column: 10, scope: !3143)
!3150 = !DILocation(line: 984, column: 3, scope: !3071, inlinedAt: !3149)
!3151 = !DILocation(line: 984, column: 26, scope: !3071, inlinedAt: !3149)
!3152 = !DILocation(line: 985, column: 13, scope: !3071, inlinedAt: !3149)
!3153 = !DILocation(line: 0, scope: !1916, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 986, column: 3, scope: !3071, inlinedAt: !3149)
!3155 = !DILocation(line: 156, column: 57, scope: !1916, inlinedAt: !3154)
!3156 = !DILocation(line: 158, column: 12, scope: !1916, inlinedAt: !3154)
!3157 = !DILocation(line: 159, column: 6, scope: !1916, inlinedAt: !3154)
!3158 = !DILocation(line: 987, column: 10, scope: !3071, inlinedAt: !3149)
!3159 = !DILocation(line: 988, column: 1, scope: !3071, inlinedAt: !3149)
!3160 = !DILocation(line: 1005, column: 3, scope: !3143)
!3161 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !254, file: !254, line: 1009, type: !2959, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3162)
!3162 = !{!3163, !3164, !3165, !3166}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3161, file: !254, line: 1009, type: !44)
!3164 = !DILocalVariable(name: "s", arg: 2, scope: !3161, file: !254, line: 1009, type: !5)
!3165 = !DILocalVariable(name: "arg", arg: 3, scope: !3161, file: !254, line: 1009, type: !49)
!3166 = !DILocalVariable(name: "options", scope: !3161, file: !254, line: 1011, type: !271)
!3167 = !DILocation(line: 195, column: 26, scope: !2974, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1012, column: 13, scope: !3161)
!3169 = !DILocation(line: 0, scope: !3161)
!3170 = !DILocation(line: 1011, column: 3, scope: !3161)
!3171 = !DILocation(line: 1011, column: 26, scope: !3161)
!3172 = !DILocation(line: 1012, column: 13, scope: !3161)
!3173 = !{!3174}
!3174 = distinct !{!3174, !3175, !"quoting_options_from_style: argument 0"}
!3175 = distinct !{!3175, !"quoting_options_from_style"}
!3176 = !DILocation(line: 0, scope: !2974, inlinedAt: !3168)
!3177 = !DILocation(line: 196, column: 13, scope: !2983, inlinedAt: !3168)
!3178 = !DILocation(line: 196, column: 7, scope: !2974, inlinedAt: !3168)
!3179 = !DILocation(line: 197, column: 5, scope: !2983, inlinedAt: !3168)
!3180 = !{i64 0, i64 4, !948, i64 4, i64 32, !1045, i64 36, i64 8, !778, i64 44, i64 8, !778}
!3181 = !DILocation(line: 0, scope: !1916, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1013, column: 3, scope: !3161)
!3183 = !DILocation(line: 156, column: 57, scope: !1916, inlinedAt: !3182)
!3184 = !DILocation(line: 158, column: 12, scope: !1916, inlinedAt: !3182)
!3185 = !DILocation(line: 159, column: 6, scope: !1916, inlinedAt: !3182)
!3186 = !DILocation(line: 1014, column: 10, scope: !3161)
!3187 = !DILocation(line: 1015, column: 1, scope: !3161)
!3188 = !DILocation(line: 1014, column: 3, scope: !3161)
!3189 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !254, file: !254, line: 1018, type: !3190, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!40, !44, !49, !49, !49}
!3192 = !{!3193, !3194, !3195, !3196}
!3193 = !DILocalVariable(name: "n", arg: 1, scope: !3189, file: !254, line: 1018, type: !44)
!3194 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3189, file: !254, line: 1018, type: !49)
!3195 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3189, file: !254, line: 1019, type: !49)
!3196 = !DILocalVariable(name: "arg", arg: 4, scope: !3189, file: !254, line: 1019, type: !49)
!3197 = !DILocation(line: 0, scope: !3189)
!3198 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !254, line: 1026, type: !44)
!3199 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !254, file: !254, line: 1026, type: !3200, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!40, !44, !49, !49, !49, !45}
!3202 = !{!3198, !3203, !3204, !3205, !3206, !3207}
!3203 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3199, file: !254, line: 1026, type: !49)
!3204 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3199, file: !254, line: 1027, type: !49)
!3205 = !DILocalVariable(name: "arg", arg: 4, scope: !3199, file: !254, line: 1028, type: !49)
!3206 = !DILocalVariable(name: "argsize", arg: 5, scope: !3199, file: !254, line: 1028, type: !45)
!3207 = !DILocalVariable(name: "o", scope: !3199, file: !254, line: 1030, type: !271)
!3208 = !DILocation(line: 0, scope: !3199, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 1021, column: 10, scope: !3189)
!3210 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3209)
!3211 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3209)
!3212 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3209)
!3213 = !DILocation(line: 0, scope: !1956, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3209)
!3215 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3214)
!3216 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3214)
!3217 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3214)
!3218 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3214)
!3219 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3214)
!3220 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3214)
!3221 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3214)
!3222 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3214)
!3223 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3214)
!3224 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3209)
!3225 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3209)
!3226 = !DILocation(line: 1021, column: 3, scope: !3189)
!3227 = !DILocation(line: 0, scope: !3199)
!3228 = !DILocation(line: 1030, column: 3, scope: !3199)
!3229 = !DILocation(line: 1030, column: 26, scope: !3199)
!3230 = !DILocation(line: 1030, column: 30, scope: !3199)
!3231 = !DILocation(line: 0, scope: !1956, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 1031, column: 3, scope: !3199)
!3233 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3232)
!3234 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3232)
!3235 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3232)
!3236 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3232)
!3237 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3232)
!3238 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3232)
!3239 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3232)
!3240 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3232)
!3241 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3232)
!3242 = !DILocation(line: 1032, column: 10, scope: !3199)
!3243 = !DILocation(line: 1033, column: 1, scope: !3199)
!3244 = !DILocation(line: 1032, column: 3, scope: !3199)
!3245 = distinct !DISubprogram(name: "quotearg_custom", scope: !254, file: !254, line: 1036, type: !3246, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!40, !49, !49, !49}
!3248 = !{!3249, !3250, !3251}
!3249 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3245, file: !254, line: 1036, type: !49)
!3250 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3245, file: !254, line: 1036, type: !49)
!3251 = !DILocalVariable(name: "arg", arg: 3, scope: !3245, file: !254, line: 1037, type: !49)
!3252 = !DILocation(line: 0, scope: !3245)
!3253 = !DILocation(line: 0, scope: !3189, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 1039, column: 10, scope: !3245)
!3255 = !DILocation(line: 0, scope: !3199, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1021, column: 10, scope: !3189, inlinedAt: !3254)
!3257 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3256)
!3258 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3256)
!3259 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3256)
!3260 = !DILocation(line: 0, scope: !1956, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3256)
!3262 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3261)
!3263 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3261)
!3264 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3261)
!3265 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3261)
!3266 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3261)
!3267 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3261)
!3268 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3261)
!3269 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3261)
!3270 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3261)
!3271 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3256)
!3272 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3256)
!3273 = !DILocation(line: 1039, column: 3, scope: !3245)
!3274 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !254, file: !254, line: 1043, type: !3275, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!40, !49, !49, !49, !45}
!3277 = !{!3278, !3279, !3280, !3281}
!3278 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3274, file: !254, line: 1043, type: !49)
!3279 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3274, file: !254, line: 1043, type: !49)
!3280 = !DILocalVariable(name: "arg", arg: 3, scope: !3274, file: !254, line: 1044, type: !49)
!3281 = !DILocalVariable(name: "argsize", arg: 4, scope: !3274, file: !254, line: 1044, type: !45)
!3282 = !DILocation(line: 0, scope: !3274)
!3283 = !DILocation(line: 0, scope: !3199, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1046, column: 10, scope: !3274)
!3285 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3284)
!3286 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3284)
!3287 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3284)
!3288 = !DILocation(line: 0, scope: !1956, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3284)
!3290 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3289)
!3291 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3289)
!3292 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3289)
!3293 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3289)
!3294 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3289)
!3295 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3289)
!3296 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3289)
!3297 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3289)
!3298 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3289)
!3299 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3284)
!3300 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3284)
!3301 = !DILocation(line: 1046, column: 3, scope: !3274)
!3302 = distinct !DISubprogram(name: "quote_n_mem", scope: !254, file: !254, line: 1061, type: !3303, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!49, !44, !49, !45}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !254, line: 1061, type: !44)
!3307 = !DILocalVariable(name: "arg", arg: 2, scope: !3302, file: !254, line: 1061, type: !49)
!3308 = !DILocalVariable(name: "argsize", arg: 3, scope: !3302, file: !254, line: 1061, type: !45)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 1063, column: 10, scope: !3302)
!3311 = !DILocation(line: 1063, column: 3, scope: !3302)
!3312 = distinct !DISubprogram(name: "quote_mem", scope: !254, file: !254, line: 1067, type: !3313, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!49, !49, !45}
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "arg", arg: 1, scope: !3312, file: !254, line: 1067, type: !49)
!3317 = !DILocalVariable(name: "argsize", arg: 2, scope: !3312, file: !254, line: 1067, type: !45)
!3318 = !DILocation(line: 0, scope: !3312)
!3319 = !DILocation(line: 0, scope: !3302, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 1069, column: 10, scope: !3312)
!3321 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3320)
!3322 = !DILocation(line: 1069, column: 3, scope: !3312)
!3323 = distinct !DISubprogram(name: "quote_n", scope: !254, file: !254, line: 1073, type: !3324, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!49, !44, !49}
!3326 = !{!3327, !3328}
!3327 = !DILocalVariable(name: "n", arg: 1, scope: !3323, file: !254, line: 1073, type: !44)
!3328 = !DILocalVariable(name: "arg", arg: 2, scope: !3323, file: !254, line: 1073, type: !49)
!3329 = !DILocation(line: 0, scope: !3323)
!3330 = !DILocation(line: 0, scope: !3302, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 1075, column: 10, scope: !3323)
!3332 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3331)
!3333 = !DILocation(line: 1075, column: 3, scope: !3323)
!3334 = distinct !DISubprogram(name: "quote", scope: !254, file: !254, line: 1079, type: !3335, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!49, !49}
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "arg", arg: 1, scope: !3334, file: !254, line: 1079, type: !49)
!3339 = !DILocation(line: 0, scope: !3334)
!3340 = !DILocation(line: 0, scope: !3323, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 1081, column: 10, scope: !3334)
!3342 = !DILocation(line: 0, scope: !3302, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1075, column: 10, scope: !3323, inlinedAt: !3341)
!3344 = !DILocation(line: 1063, column: 10, scope: !3302, inlinedAt: !3343)
!3345 = !DILocation(line: 1081, column: 3, scope: !3334)
!3346 = distinct !DISubprogram(name: "setlocale_null_r", scope: !317, file: !317, line: 269, type: !3347, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!44, !44, !40, !45}
!3349 = !{!3350, !3351, !3352}
!3350 = !DILocalVariable(name: "category", arg: 1, scope: !3346, file: !317, line: 269, type: !44)
!3351 = !DILocalVariable(name: "buf", arg: 2, scope: !3346, file: !317, line: 269, type: !40)
!3352 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3346, file: !317, line: 269, type: !45)
!3353 = !DILocation(line: 0, scope: !3346)
!3354 = !DILocalVariable(name: "category", arg: 1, scope: !3355, file: !317, line: 91, type: !44)
!3355 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !317, file: !317, line: 91, type: !3347, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3356)
!3356 = !{!3354, !3357, !3358, !3359, !3360}
!3357 = !DILocalVariable(name: "buf", arg: 2, scope: !3355, file: !317, line: 91, type: !40)
!3358 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3355, file: !317, line: 91, type: !45)
!3359 = !DILocalVariable(name: "result", scope: !3355, file: !317, line: 140, type: !49)
!3360 = !DILocalVariable(name: "length", scope: !3361, file: !317, line: 154, type: !45)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !317, line: 153, column: 5)
!3362 = distinct !DILexicalBlock(scope: !3355, file: !317, line: 142, column: 7)
!3363 = !DILocation(line: 0, scope: !3355, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 274, column: 10, scope: !3346)
!3365 = !DILocalVariable(name: "category", arg: 1, scope: !3366, file: !317, line: 60, type: !44)
!3366 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !317, file: !317, line: 60, type: !1732, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3367)
!3367 = !{!3365, !3368}
!3368 = !DILocalVariable(name: "result", scope: !3366, file: !317, line: 62, type: !49)
!3369 = !DILocation(line: 0, scope: !3366, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 140, column: 24, scope: !3355, inlinedAt: !3364)
!3371 = !DILocation(line: 62, column: 24, scope: !3366, inlinedAt: !3370)
!3372 = !DILocation(line: 142, column: 14, scope: !3362, inlinedAt: !3364)
!3373 = !DILocation(line: 142, column: 7, scope: !3355, inlinedAt: !3364)
!3374 = !DILocation(line: 145, column: 19, scope: !3375, inlinedAt: !3364)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !317, line: 145, column: 11)
!3376 = distinct !DILexicalBlock(scope: !3362, file: !317, line: 143, column: 5)
!3377 = !DILocation(line: 145, column: 11, scope: !3376, inlinedAt: !3364)
!3378 = !DILocation(line: 149, column: 16, scope: !3375, inlinedAt: !3364)
!3379 = !DILocation(line: 149, column: 9, scope: !3375, inlinedAt: !3364)
!3380 = !DILocation(line: 154, column: 23, scope: !3361, inlinedAt: !3364)
!3381 = !DILocation(line: 0, scope: !3361, inlinedAt: !3364)
!3382 = !DILocation(line: 155, column: 18, scope: !3383, inlinedAt: !3364)
!3383 = distinct !DILexicalBlock(scope: !3361, file: !317, line: 155, column: 11)
!3384 = !DILocation(line: 155, column: 11, scope: !3361, inlinedAt: !3364)
!3385 = !DILocation(line: 157, column: 39, scope: !3386, inlinedAt: !3364)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !317, line: 156, column: 9)
!3387 = !DILocalVariable(name: "__dest", arg: 1, scope: !3388, file: !1197, line: 26, type: !3391)
!3388 = distinct !DISubprogram(name: "memcpy", scope: !1197, file: !1197, line: 26, type: !3389, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3393)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!42, !3391, !3392, !45}
!3391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!3392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1640)
!3393 = !{!3387, !3394, !3395}
!3394 = !DILocalVariable(name: "__src", arg: 2, scope: !3388, file: !1197, line: 26, type: !3392)
!3395 = !DILocalVariable(name: "__len", arg: 3, scope: !3388, file: !1197, line: 26, type: !45)
!3396 = !DILocation(line: 0, scope: !3388, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 157, column: 11, scope: !3386, inlinedAt: !3364)
!3398 = !DILocation(line: 29, column: 10, scope: !3388, inlinedAt: !3397)
!3399 = !DILocation(line: 158, column: 11, scope: !3386, inlinedAt: !3364)
!3400 = !DILocation(line: 162, column: 23, scope: !3401, inlinedAt: !3364)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !317, line: 162, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3383, file: !317, line: 161, column: 9)
!3403 = !DILocation(line: 162, column: 15, scope: !3402, inlinedAt: !3364)
!3404 = !DILocation(line: 167, column: 44, scope: !3405, inlinedAt: !3364)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !317, line: 163, column: 13)
!3406 = !DILocation(line: 0, scope: !3388, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 167, column: 15, scope: !3405, inlinedAt: !3364)
!3408 = !DILocation(line: 29, column: 10, scope: !3388, inlinedAt: !3407)
!3409 = !DILocation(line: 168, column: 15, scope: !3405, inlinedAt: !3364)
!3410 = !DILocation(line: 168, column: 32, scope: !3405, inlinedAt: !3364)
!3411 = !DILocation(line: 169, column: 13, scope: !3405, inlinedAt: !3364)
!3412 = !DILocation(line: 0, scope: !3362, inlinedAt: !3364)
!3413 = !DILocation(line: 274, column: 3, scope: !3346)
!3414 = distinct !DISubprogram(name: "setlocale_null", scope: !317, file: !317, line: 301, type: !1732, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3415)
!3415 = !{!3416}
!3416 = !DILocalVariable(name: "category", arg: 1, scope: !3414, file: !317, line: 301, type: !44)
!3417 = !DILocation(line: 0, scope: !3414)
!3418 = !DILocation(line: 0, scope: !3366, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 304, column: 10, scope: !3414)
!3420 = !DILocation(line: 62, column: 24, scope: !3366, inlinedAt: !3419)
!3421 = !DILocation(line: 304, column: 3, scope: !3414)
!3422 = distinct !DISubprogram(name: "version_etc_arn", scope: !320, file: !320, line: 61, type: !3423, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3460)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3425, !49, !49, !49, !3459, !45}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3427, file: !852, line: 51, baseType: !44, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3427, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3427, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3427, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3427, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3427, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3427, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3427, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3427, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3427, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3427, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3427, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3427, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3427, file: !852, line: 70, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3427, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3427, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3427, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3427, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3427, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3427, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3427, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3427, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3427, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3427, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3427, file: !852, line: 93, baseType: !3443, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3427, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3427, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3427, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3427, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466}
!3461 = !DILocalVariable(name: "stream", arg: 1, scope: !3422, file: !320, line: 61, type: !3425)
!3462 = !DILocalVariable(name: "command_name", arg: 2, scope: !3422, file: !320, line: 62, type: !49)
!3463 = !DILocalVariable(name: "package", arg: 3, scope: !3422, file: !320, line: 62, type: !49)
!3464 = !DILocalVariable(name: "version", arg: 4, scope: !3422, file: !320, line: 63, type: !49)
!3465 = !DILocalVariable(name: "authors", arg: 5, scope: !3422, file: !320, line: 64, type: !3459)
!3466 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3422, file: !320, line: 64, type: !45)
!3467 = !DILocation(line: 0, scope: !3422)
!3468 = !DILocation(line: 66, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3422, file: !320, line: 66, column: 7)
!3470 = !DILocation(line: 66, column: 7, scope: !3422)
!3471 = !DILocation(line: 67, column: 5, scope: !3469)
!3472 = !DILocation(line: 69, column: 5, scope: !3469)
!3473 = !DILocation(line: 83, column: 3, scope: !3422)
!3474 = !DILocation(line: 85, column: 3, scope: !3422)
!3475 = !DILocation(line: 88, column: 3, scope: !3422)
!3476 = !DILocation(line: 95, column: 3, scope: !3422)
!3477 = !DILocation(line: 97, column: 3, scope: !3422)
!3478 = !DILocation(line: 105, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3422, file: !320, line: 98, column: 5)
!3480 = !DILocation(line: 106, column: 7, scope: !3479)
!3481 = !DILocation(line: 109, column: 7, scope: !3479)
!3482 = !DILocation(line: 110, column: 7, scope: !3479)
!3483 = !DILocation(line: 113, column: 7, scope: !3479)
!3484 = !DILocation(line: 115, column: 7, scope: !3479)
!3485 = !DILocation(line: 120, column: 7, scope: !3479)
!3486 = !DILocation(line: 122, column: 7, scope: !3479)
!3487 = !DILocation(line: 127, column: 7, scope: !3479)
!3488 = !DILocation(line: 129, column: 7, scope: !3479)
!3489 = !DILocation(line: 134, column: 7, scope: !3479)
!3490 = !DILocation(line: 137, column: 7, scope: !3479)
!3491 = !DILocation(line: 142, column: 7, scope: !3479)
!3492 = !DILocation(line: 145, column: 7, scope: !3479)
!3493 = !DILocation(line: 150, column: 7, scope: !3479)
!3494 = !DILocation(line: 154, column: 7, scope: !3479)
!3495 = !DILocation(line: 159, column: 7, scope: !3479)
!3496 = !DILocation(line: 163, column: 7, scope: !3479)
!3497 = !DILocation(line: 170, column: 7, scope: !3479)
!3498 = !DILocation(line: 174, column: 7, scope: !3479)
!3499 = !DILocation(line: 176, column: 1, scope: !3422)
!3500 = distinct !DISubprogram(name: "version_etc_ar", scope: !320, file: !320, line: 183, type: !3501, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3425, !49, !49, !49, !3459}
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509}
!3504 = !DILocalVariable(name: "stream", arg: 1, scope: !3500, file: !320, line: 183, type: !3425)
!3505 = !DILocalVariable(name: "command_name", arg: 2, scope: !3500, file: !320, line: 184, type: !49)
!3506 = !DILocalVariable(name: "package", arg: 3, scope: !3500, file: !320, line: 184, type: !49)
!3507 = !DILocalVariable(name: "version", arg: 4, scope: !3500, file: !320, line: 185, type: !49)
!3508 = !DILocalVariable(name: "authors", arg: 5, scope: !3500, file: !320, line: 185, type: !3459)
!3509 = !DILocalVariable(name: "n_authors", scope: !3500, file: !320, line: 187, type: !45)
!3510 = !DILocation(line: 0, scope: !3500)
!3511 = !DILocation(line: 189, column: 8, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3500, file: !320, line: 189, column: 3)
!3513 = !DILocation(line: 0, scope: !3512)
!3514 = !DILocation(line: 189, column: 23, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !320, line: 189, column: 3)
!3516 = !DILocation(line: 189, column: 3, scope: !3512)
!3517 = !DILocation(line: 189, column: 52, scope: !3515)
!3518 = distinct !{!3518, !3516, !3519, !822}
!3519 = !DILocation(line: 190, column: 5, scope: !3512)
!3520 = !DILocation(line: 191, column: 3, scope: !3500)
!3521 = !DILocation(line: 192, column: 1, scope: !3500)
!3522 = distinct !DISubprogram(name: "version_etc_va", scope: !320, file: !320, line: 199, type: !3523, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3532)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3425, !49, !49, !49, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3526, file: !320, line: 192, baseType: !7, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3526, file: !320, line: 192, baseType: !7, size: 32, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3526, file: !320, line: 192, baseType: !42, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3526, file: !320, line: 192, baseType: !42, size: 64, offset: 128)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3533 = !DILocalVariable(name: "stream", arg: 1, scope: !3522, file: !320, line: 199, type: !3425)
!3534 = !DILocalVariable(name: "command_name", arg: 2, scope: !3522, file: !320, line: 200, type: !49)
!3535 = !DILocalVariable(name: "package", arg: 3, scope: !3522, file: !320, line: 200, type: !49)
!3536 = !DILocalVariable(name: "version", arg: 4, scope: !3522, file: !320, line: 201, type: !49)
!3537 = !DILocalVariable(name: "authors", arg: 5, scope: !3522, file: !320, line: 201, type: !3525)
!3538 = !DILocalVariable(name: "n_authors", scope: !3522, file: !320, line: 203, type: !45)
!3539 = !DILocalVariable(name: "authtab", scope: !3522, file: !320, line: 204, type: !3540)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !267)
!3541 = !DILocation(line: 0, scope: !3522)
!3542 = !DILocation(line: 204, column: 3, scope: !3522)
!3543 = !DILocation(line: 204, column: 15, scope: !3522)
!3544 = !DILocation(line: 208, column: 35, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !320, line: 206, column: 3)
!3546 = distinct !DILexicalBlock(scope: !3522, file: !320, line: 206, column: 3)
!3547 = !DILocation(line: 208, column: 14, scope: !3545)
!3548 = !DILocation(line: 208, column: 33, scope: !3545)
!3549 = !DILocation(line: 208, column: 67, scope: !3545)
!3550 = !DILocation(line: 206, column: 3, scope: !3546)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 211, column: 3, scope: !3522)
!3553 = !DILocation(line: 213, column: 1, scope: !3522)
!3554 = distinct !DISubprogram(name: "version_etc", scope: !320, file: !320, line: 230, type: !3555, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !3425, !49, !49, !49, null}
!3557 = !{!3558, !3559, !3560, !3561, !3562}
!3558 = !DILocalVariable(name: "stream", arg: 1, scope: !3554, file: !320, line: 230, type: !3425)
!3559 = !DILocalVariable(name: "command_name", arg: 2, scope: !3554, file: !320, line: 231, type: !49)
!3560 = !DILocalVariable(name: "package", arg: 3, scope: !3554, file: !320, line: 231, type: !49)
!3561 = !DILocalVariable(name: "version", arg: 4, scope: !3554, file: !320, line: 232, type: !49)
!3562 = !DILocalVariable(name: "authors", scope: !3554, file: !320, line: 234, type: !3563)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !847, line: 52, baseType: !3564)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3565, line: 32, baseType: !3566)
!3565 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !320, baseType: !3567)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3526, size: 192, elements: !879)
!3568 = !DILocation(line: 0, scope: !3554)
!3569 = !DILocation(line: 234, column: 3, scope: !3554)
!3570 = !DILocation(line: 234, column: 11, scope: !3554)
!3571 = !DILocation(line: 236, column: 3, scope: !3554)
!3572 = !DILocation(line: 237, column: 3, scope: !3554)
!3573 = !DILocation(line: 238, column: 3, scope: !3554)
!3574 = !DILocation(line: 239, column: 1, scope: !3554)
!3575 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !320, file: !320, line: 242, type: !1014, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !189)
!3576 = !DILocation(line: 244, column: 3, scope: !3575)
!3577 = !DILocation(line: 249, column: 3, scope: !3575)
!3578 = !DILocation(line: 255, column: 3, scope: !3575)
!3579 = !DILocation(line: 260, column: 3, scope: !3575)
!3580 = !DILocation(line: 262, column: 1, scope: !3575)
!3581 = distinct !DISubprogram(name: "xnmalloc", scope: !329, file: !329, line: 99, type: !3582, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!42, !45, !45}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !329, line: 99, type: !45)
!3586 = !DILocalVariable(name: "s", arg: 2, scope: !3581, file: !329, line: 99, type: !45)
!3587 = !DILocation(line: 0, scope: !3581)
!3588 = !DILocation(line: 101, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3581, file: !329, line: 101, column: 7)
!3590 = !DILocation(line: 101, column: 7, scope: !3581)
!3591 = !DILocation(line: 102, column: 5, scope: !3589)
!3592 = !DILocation(line: 103, column: 21, scope: !3581)
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !326, line: 39, type: !45)
!3594 = distinct !DISubprogram(name: "xmalloc", scope: !326, file: !326, line: 39, type: !3595, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!42, !45}
!3597 = !{!3593, !3598}
!3598 = !DILocalVariable(name: "p", scope: !3594, file: !326, line: 41, type: !42)
!3599 = !DILocation(line: 0, scope: !3594, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 103, column: 10, scope: !3581)
!3601 = !DILocation(line: 41, column: 13, scope: !3594, inlinedAt: !3600)
!3602 = !DILocation(line: 42, column: 8, scope: !3603, inlinedAt: !3600)
!3603 = distinct !DILexicalBlock(scope: !3594, file: !326, line: 42, column: 7)
!3604 = !DILocation(line: 42, column: 10, scope: !3603, inlinedAt: !3600)
!3605 = !DILocation(line: 43, column: 5, scope: !3603, inlinedAt: !3600)
!3606 = !DILocation(line: 103, column: 3, scope: !3581)
!3607 = !DILocation(line: 0, scope: !3594)
!3608 = !DILocation(line: 41, column: 13, scope: !3594)
!3609 = !DILocation(line: 42, column: 8, scope: !3603)
!3610 = !DILocation(line: 42, column: 10, scope: !3603)
!3611 = !DILocation(line: 43, column: 5, scope: !3603)
!3612 = !DILocation(line: 44, column: 3, scope: !3594)
!3613 = distinct !DISubprogram(name: "xnrealloc", scope: !329, file: !329, line: 112, type: !3614, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!42, !42, !45, !45}
!3616 = !{!3617, !3618, !3619}
!3617 = !DILocalVariable(name: "p", arg: 1, scope: !3613, file: !329, line: 112, type: !42)
!3618 = !DILocalVariable(name: "n", arg: 2, scope: !3613, file: !329, line: 112, type: !45)
!3619 = !DILocalVariable(name: "s", arg: 3, scope: !3613, file: !329, line: 112, type: !45)
!3620 = !DILocation(line: 0, scope: !3613)
!3621 = !DILocation(line: 114, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3613, file: !329, line: 114, column: 7)
!3623 = !DILocation(line: 114, column: 7, scope: !3613)
!3624 = !DILocation(line: 115, column: 5, scope: !3622)
!3625 = !DILocation(line: 116, column: 25, scope: !3613)
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3627, file: !326, line: 51, type: !42)
!3627 = distinct !DISubprogram(name: "xrealloc", scope: !326, file: !326, line: 51, type: !3628, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!42, !42, !45}
!3630 = !{!3626, !3631}
!3631 = !DILocalVariable(name: "n", arg: 2, scope: !3627, file: !326, line: 51, type: !45)
!3632 = !DILocation(line: 0, scope: !3627, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 116, column: 10, scope: !3613)
!3634 = !DILocation(line: 53, column: 8, scope: !3635, inlinedAt: !3633)
!3635 = distinct !DILexicalBlock(scope: !3627, file: !326, line: 53, column: 7)
!3636 = !DILocation(line: 53, column: 10, scope: !3635, inlinedAt: !3633)
!3637 = !DILocation(line: 57, column: 7, scope: !3638, inlinedAt: !3633)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !326, line: 54, column: 5)
!3639 = !DILocation(line: 58, column: 7, scope: !3638, inlinedAt: !3633)
!3640 = !DILocation(line: 61, column: 7, scope: !3627, inlinedAt: !3633)
!3641 = !DILocation(line: 62, column: 8, scope: !3642, inlinedAt: !3633)
!3642 = distinct !DILexicalBlock(scope: !3627, file: !326, line: 62, column: 7)
!3643 = !DILocation(line: 62, column: 10, scope: !3642, inlinedAt: !3633)
!3644 = !DILocation(line: 63, column: 5, scope: !3642, inlinedAt: !3633)
!3645 = !DILocation(line: 116, column: 3, scope: !3613)
!3646 = !DILocation(line: 0, scope: !3627)
!3647 = !DILocation(line: 53, column: 8, scope: !3635)
!3648 = !DILocation(line: 53, column: 10, scope: !3635)
!3649 = !DILocation(line: 57, column: 7, scope: !3638)
!3650 = !DILocation(line: 58, column: 7, scope: !3638)
!3651 = !DILocation(line: 61, column: 7, scope: !3627)
!3652 = !DILocation(line: 62, column: 8, scope: !3642)
!3653 = !DILocation(line: 62, column: 10, scope: !3642)
!3654 = !DILocation(line: 63, column: 5, scope: !3642)
!3655 = !DILocation(line: 65, column: 1, scope: !3627)
!3656 = !DILocation(line: 0, scope: !330)
!3657 = !DILocation(line: 176, column: 14, scope: !330)
!3658 = !DILocation(line: 178, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !330, file: !329, line: 178, column: 7)
!3660 = !DILocation(line: 178, column: 7, scope: !330)
!3661 = !DILocation(line: 180, column: 13, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !329, line: 180, column: 11)
!3663 = distinct !DILexicalBlock(scope: !3659, file: !329, line: 179, column: 5)
!3664 = !DILocation(line: 180, column: 11, scope: !3663)
!3665 = !DILocation(line: 188, column: 30, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3662, file: !329, line: 181, column: 9)
!3667 = !DILocation(line: 189, column: 16, scope: !3666)
!3668 = !DILocation(line: 189, column: 13, scope: !3666)
!3669 = !DILocation(line: 190, column: 9, scope: !3666)
!3670 = !DILocation(line: 191, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3663, file: !329, line: 191, column: 11)
!3672 = !DILocation(line: 191, column: 11, scope: !3663)
!3673 = !DILocation(line: 206, column: 7, scope: !330)
!3674 = !DILocation(line: 207, column: 25, scope: !330)
!3675 = !DILocation(line: 0, scope: !3627, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 207, column: 10, scope: !330)
!3677 = !DILocation(line: 53, column: 10, scope: !3635, inlinedAt: !3676)
!3678 = !DILocation(line: 192, column: 9, scope: !3671)
!3679 = !DILocation(line: 200, column: 69, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !329, line: 200, column: 11)
!3681 = distinct !DILexicalBlock(scope: !3659, file: !329, line: 195, column: 5)
!3682 = !DILocation(line: 201, column: 11, scope: !3680)
!3683 = !DILocation(line: 200, column: 11, scope: !3681)
!3684 = !DILocation(line: 202, column: 9, scope: !3680)
!3685 = !DILocation(line: 203, column: 14, scope: !3681)
!3686 = !DILocation(line: 203, column: 18, scope: !3681)
!3687 = !DILocation(line: 203, column: 9, scope: !3681)
!3688 = !DILocation(line: 53, column: 8, scope: !3635, inlinedAt: !3676)
!3689 = !DILocation(line: 57, column: 7, scope: !3638, inlinedAt: !3676)
!3690 = !DILocation(line: 58, column: 7, scope: !3638, inlinedAt: !3676)
!3691 = !DILocation(line: 61, column: 7, scope: !3627, inlinedAt: !3676)
!3692 = !DILocation(line: 62, column: 8, scope: !3642, inlinedAt: !3676)
!3693 = !DILocation(line: 62, column: 10, scope: !3642, inlinedAt: !3676)
!3694 = !DILocation(line: 63, column: 5, scope: !3642, inlinedAt: !3676)
!3695 = !DILocation(line: 207, column: 3, scope: !330)
!3696 = distinct !DISubprogram(name: "xcharalloc", scope: !329, file: !329, line: 216, type: !2759, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3697)
!3697 = !{!3698}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3696, file: !329, line: 216, type: !45)
!3699 = !DILocation(line: 0, scope: !3696)
!3700 = !DILocation(line: 0, scope: !3594, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 218, column: 10, scope: !3696)
!3702 = !DILocation(line: 41, column: 13, scope: !3594, inlinedAt: !3701)
!3703 = !DILocation(line: 42, column: 8, scope: !3603, inlinedAt: !3701)
!3704 = !DILocation(line: 42, column: 10, scope: !3603, inlinedAt: !3701)
!3705 = !DILocation(line: 43, column: 5, scope: !3603, inlinedAt: !3701)
!3706 = !DILocation(line: 218, column: 3, scope: !3696)
!3707 = distinct !DISubprogram(name: "x2realloc", scope: !326, file: !326, line: 74, type: !3708, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!42, !42, !333}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "p", arg: 1, scope: !3707, file: !326, line: 74, type: !42)
!3712 = !DILocalVariable(name: "pn", arg: 2, scope: !3707, file: !326, line: 74, type: !333)
!3713 = !DILocation(line: 0, scope: !3707)
!3714 = !DILocation(line: 0, scope: !330, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 76, column: 10, scope: !3707)
!3716 = !DILocation(line: 176, column: 14, scope: !330, inlinedAt: !3715)
!3717 = !DILocation(line: 178, column: 9, scope: !3659, inlinedAt: !3715)
!3718 = !DILocation(line: 178, column: 7, scope: !330, inlinedAt: !3715)
!3719 = !DILocation(line: 180, column: 13, scope: !3662, inlinedAt: !3715)
!3720 = !DILocation(line: 180, column: 11, scope: !3663, inlinedAt: !3715)
!3721 = !DILocation(line: 191, column: 11, scope: !3671, inlinedAt: !3715)
!3722 = !DILocation(line: 191, column: 11, scope: !3663, inlinedAt: !3715)
!3723 = !DILocation(line: 192, column: 9, scope: !3671, inlinedAt: !3715)
!3724 = !DILocation(line: 201, column: 11, scope: !3680, inlinedAt: !3715)
!3725 = !DILocation(line: 200, column: 11, scope: !3681, inlinedAt: !3715)
!3726 = !DILocation(line: 202, column: 9, scope: !3680, inlinedAt: !3715)
!3727 = !DILocation(line: 203, column: 14, scope: !3681, inlinedAt: !3715)
!3728 = !DILocation(line: 203, column: 18, scope: !3681, inlinedAt: !3715)
!3729 = !DILocation(line: 203, column: 9, scope: !3681, inlinedAt: !3715)
!3730 = !DILocation(line: 0, scope: !3627, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 207, column: 10, scope: !330, inlinedAt: !3715)
!3732 = !DILocation(line: 53, column: 10, scope: !3635, inlinedAt: !3731)
!3733 = !DILocation(line: 206, column: 7, scope: !330, inlinedAt: !3715)
!3734 = !DILocation(line: 61, column: 7, scope: !3627, inlinedAt: !3731)
!3735 = !DILocation(line: 62, column: 8, scope: !3642, inlinedAt: !3731)
!3736 = !DILocation(line: 62, column: 10, scope: !3642, inlinedAt: !3731)
!3737 = !DILocation(line: 63, column: 5, scope: !3642, inlinedAt: !3731)
!3738 = !DILocation(line: 76, column: 3, scope: !3707)
!3739 = distinct !DISubprogram(name: "xzalloc", scope: !326, file: !326, line: 84, type: !3595, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3740)
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3739, file: !326, line: 84, type: !45)
!3742 = !DILocation(line: 0, scope: !3739)
!3743 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !326, line: 93, type: !45)
!3744 = distinct !DISubprogram(name: "xcalloc", scope: !326, file: !326, line: 93, type: !3582, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3745)
!3745 = !{!3743, !3746, !3747}
!3746 = !DILocalVariable(name: "s", arg: 2, scope: !3744, file: !326, line: 93, type: !45)
!3747 = !DILocalVariable(name: "p", scope: !3744, file: !326, line: 95, type: !42)
!3748 = !DILocation(line: 0, scope: !3744, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 86, column: 10, scope: !3739)
!3750 = !DILocation(line: 100, column: 7, scope: !3751, inlinedAt: !3749)
!3751 = distinct !DILexicalBlock(scope: !3744, file: !326, line: 100, column: 7)
!3752 = !DILocation(line: 101, column: 7, scope: !3751, inlinedAt: !3749)
!3753 = !DILocation(line: 101, column: 18, scope: !3751, inlinedAt: !3749)
!3754 = !DILocation(line: 101, column: 16, scope: !3751, inlinedAt: !3749)
!3755 = !DILocation(line: 100, column: 7, scope: !3744, inlinedAt: !3749)
!3756 = !DILocation(line: 102, column: 5, scope: !3751, inlinedAt: !3749)
!3757 = !DILocation(line: 86, column: 3, scope: !3739)
!3758 = !DILocation(line: 0, scope: !3744)
!3759 = !DILocation(line: 100, column: 7, scope: !3751)
!3760 = !DILocation(line: 101, column: 7, scope: !3751)
!3761 = !DILocation(line: 101, column: 18, scope: !3751)
!3762 = !DILocation(line: 101, column: 16, scope: !3751)
!3763 = !DILocation(line: 100, column: 7, scope: !3744)
!3764 = !DILocation(line: 102, column: 5, scope: !3751)
!3765 = !DILocation(line: 103, column: 3, scope: !3744)
!3766 = distinct !DISubprogram(name: "xmemdup", scope: !326, file: !326, line: 111, type: !3767, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!42, !1640, !45}
!3769 = !{!3770, !3771}
!3770 = !DILocalVariable(name: "p", arg: 1, scope: !3766, file: !326, line: 111, type: !1640)
!3771 = !DILocalVariable(name: "s", arg: 2, scope: !3766, file: !326, line: 111, type: !45)
!3772 = !DILocation(line: 0, scope: !3766)
!3773 = !DILocation(line: 0, scope: !3594, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 113, column: 18, scope: !3766)
!3775 = !DILocation(line: 41, column: 13, scope: !3594, inlinedAt: !3774)
!3776 = !DILocation(line: 42, column: 8, scope: !3603, inlinedAt: !3774)
!3777 = !DILocation(line: 42, column: 10, scope: !3603, inlinedAt: !3774)
!3778 = !DILocation(line: 43, column: 5, scope: !3603, inlinedAt: !3774)
!3779 = !DILocalVariable(name: "__dest", arg: 1, scope: !3780, file: !1197, line: 26, type: !3391)
!3780 = distinct !DISubprogram(name: "memcpy", scope: !1197, file: !1197, line: 26, type: !3389, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3781)
!3781 = !{!3779, !3782, !3783}
!3782 = !DILocalVariable(name: "__src", arg: 2, scope: !3780, file: !1197, line: 26, type: !3392)
!3783 = !DILocalVariable(name: "__len", arg: 3, scope: !3780, file: !1197, line: 26, type: !45)
!3784 = !DILocation(line: 0, scope: !3780, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 113, column: 10, scope: !3766)
!3786 = !DILocation(line: 29, column: 10, scope: !3780, inlinedAt: !3785)
!3787 = !DILocation(line: 113, column: 3, scope: !3766)
!3788 = distinct !DISubprogram(name: "xstrdup", scope: !326, file: !326, line: 119, type: !1267, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3789)
!3789 = !{!3790}
!3790 = !DILocalVariable(name: "string", arg: 1, scope: !3788, file: !326, line: 119, type: !49)
!3791 = !DILocation(line: 0, scope: !3788)
!3792 = !DILocation(line: 121, column: 27, scope: !3788)
!3793 = !DILocation(line: 121, column: 43, scope: !3788)
!3794 = !DILocation(line: 0, scope: !3766, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 121, column: 10, scope: !3788)
!3796 = !DILocation(line: 0, scope: !3594, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 113, column: 18, scope: !3766, inlinedAt: !3795)
!3798 = !DILocation(line: 41, column: 13, scope: !3594, inlinedAt: !3797)
!3799 = !DILocation(line: 42, column: 8, scope: !3603, inlinedAt: !3797)
!3800 = !DILocation(line: 42, column: 10, scope: !3603, inlinedAt: !3797)
!3801 = !DILocation(line: 43, column: 5, scope: !3603, inlinedAt: !3797)
!3802 = !DILocation(line: 0, scope: !3780, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 113, column: 10, scope: !3766, inlinedAt: !3795)
!3804 = !DILocation(line: 29, column: 10, scope: !3780, inlinedAt: !3803)
!3805 = !DILocation(line: 121, column: 3, scope: !3788)
!3806 = distinct !DISubprogram(name: "xalloc_die", scope: !343, file: !343, line: 32, type: !1014, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !189)
!3807 = !DILocation(line: 34, column: 10, scope: !3806)
!3808 = !DILocation(line: 34, column: 33, scope: !3806)
!3809 = !DILocation(line: 34, column: 3, scope: !3806)
!3810 = !DILocation(line: 40, column: 3, scope: !3806)
!3811 = distinct !DISubprogram(name: "rpl_calloc", scope: !345, file: !345, line: 42, type: !3582, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !3812)
!3812 = !{!3813, !3814, !3815, !3816}
!3813 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !345, line: 42, type: !45)
!3814 = !DILocalVariable(name: "s", arg: 2, scope: !3811, file: !345, line: 42, type: !45)
!3815 = !DILocalVariable(name: "result", scope: !3811, file: !345, line: 44, type: !42)
!3816 = !DILocalVariable(name: "bytes", scope: !3817, file: !345, line: 56, type: !45)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !345, line: 53, column: 5)
!3818 = distinct !DILexicalBlock(scope: !3811, file: !345, line: 47, column: 7)
!3819 = !DILocation(line: 0, scope: !3811)
!3820 = !DILocation(line: 47, column: 9, scope: !3818)
!3821 = !DILocation(line: 47, column: 14, scope: !3818)
!3822 = !DILocation(line: 0, scope: !3817)
!3823 = !DILocation(line: 57, column: 21, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3817, file: !345, line: 57, column: 11)
!3825 = !DILocation(line: 57, column: 11, scope: !3817)
!3826 = !DILocation(line: 59, column: 11, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !345, line: 58, column: 9)
!3828 = !DILocation(line: 59, column: 17, scope: !3827)
!3829 = !DILocation(line: 65, column: 12, scope: !3811)
!3830 = !DILocation(line: 72, column: 3, scope: !3811)
!3831 = !DILocation(line: 73, column: 1, scope: !3811)
!3832 = distinct !DISubprogram(name: "rpl_fclose", scope: !347, file: !347, line: 58, type: !3833, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !3869)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!44, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !3837)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3837, file: !852, line: 51, baseType: !44, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3837, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3837, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3837, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3837, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3837, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3837, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3837, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3837, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3837, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3837, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3837, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3837, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3837, file: !852, line: 70, baseType: !3853, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3837, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3837, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3837, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3837, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3837, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3837, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3837, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3837, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3837, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3837, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3837, file: !852, line: 93, baseType: !3853, size: 64, offset: 1344)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3837, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3837, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3837, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3837, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!3869 = !{!3870, !3871, !3872, !3873}
!3870 = !DILocalVariable(name: "fp", arg: 1, scope: !3832, file: !347, line: 58, type: !3835)
!3871 = !DILocalVariable(name: "saved_errno", scope: !3832, file: !347, line: 60, type: !44)
!3872 = !DILocalVariable(name: "fd", scope: !3832, file: !347, line: 61, type: !44)
!3873 = !DILocalVariable(name: "result", scope: !3832, file: !347, line: 62, type: !44)
!3874 = !DILocation(line: 0, scope: !3832)
!3875 = !DILocation(line: 65, column: 8, scope: !3832)
!3876 = !DILocation(line: 66, column: 10, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3832, file: !347, line: 66, column: 7)
!3878 = !DILocation(line: 66, column: 7, scope: !3832)
!3879 = !DILocation(line: 67, column: 12, scope: !3877)
!3880 = !DILocation(line: 67, column: 5, scope: !3877)
!3881 = !DILocation(line: 72, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3832, file: !347, line: 72, column: 7)
!3883 = !DILocation(line: 72, column: 23, scope: !3882)
!3884 = !DILocation(line: 72, column: 33, scope: !3882)
!3885 = !DILocation(line: 72, column: 26, scope: !3882)
!3886 = !DILocation(line: 72, column: 59, scope: !3882)
!3887 = !DILocation(line: 73, column: 7, scope: !3882)
!3888 = !DILocation(line: 73, column: 10, scope: !3882)
!3889 = !DILocation(line: 72, column: 7, scope: !3832)
!3890 = !DILocation(line: 100, column: 12, scope: !3832)
!3891 = !DILocation(line: 105, column: 7, scope: !3832)
!3892 = !DILocation(line: 74, column: 19, scope: !3882)
!3893 = !DILocation(line: 105, column: 19, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3832, file: !347, line: 105, column: 7)
!3895 = !DILocation(line: 107, column: 13, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3894, file: !347, line: 106, column: 5)
!3897 = !DILocation(line: 109, column: 5, scope: !3896)
!3898 = !DILocation(line: 112, column: 1, scope: !3832)
!3899 = !DISubprogram(name: "fileno", scope: !847, file: !847, line: 785, type: !3900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!44, !3853}
!3902 = !DISubprogram(name: "fclose", scope: !847, file: !847, line: 213, type: !3900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3903 = !DISubprogram(name: "lseek", scope: !3904, file: !3904, line: 334, type: !3905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3904 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!82, !44, !82, !44}
!3907 = distinct !DISubprogram(name: "rpl_fflush", scope: !349, file: !349, line: 129, type: !3908, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !3944)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!44, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3912, file: !852, line: 51, baseType: !44, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3912, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3912, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3912, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3912, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3912, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3912, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3912, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3912, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3912, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3912, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3912, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3912, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3912, file: !852, line: 70, baseType: !3928, size: 64, offset: 832)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3912, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3912, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3912, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3912, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3912, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3912, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3912, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3912, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3912, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3912, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3912, file: !852, line: 93, baseType: !3928, size: 64, offset: 1344)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3912, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3912, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3912, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3912, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!3944 = !{!3945}
!3945 = !DILocalVariable(name: "stream", arg: 1, scope: !3907, file: !349, line: 129, type: !3910)
!3946 = !DILocation(line: 0, scope: !3907)
!3947 = !DILocation(line: 150, column: 14, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3907, file: !349, line: 150, column: 7)
!3949 = !DILocation(line: 150, column: 22, scope: !3948)
!3950 = !DILocation(line: 150, column: 27, scope: !3948)
!3951 = !DILocation(line: 150, column: 7, scope: !3907)
!3952 = !DILocation(line: 151, column: 12, scope: !3948)
!3953 = !DILocation(line: 151, column: 5, scope: !3948)
!3954 = !DILocalVariable(name: "fp", arg: 1, scope: !3955, file: !349, line: 41, type: !3910)
!3955 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !349, file: !349, line: 41, type: !3956, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3910}
!3958 = !{!3954}
!3959 = !DILocation(line: 0, scope: !3955, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 156, column: 3, scope: !3907)
!3961 = !DILocation(line: 43, column: 11, scope: !3962, inlinedAt: !3960)
!3962 = distinct !DILexicalBlock(scope: !3955, file: !349, line: 43, column: 7)
!3963 = !{!1041, !949, i64 0}
!3964 = !DILocation(line: 43, column: 18, scope: !3962, inlinedAt: !3960)
!3965 = !DILocation(line: 43, column: 7, scope: !3955, inlinedAt: !3960)
!3966 = !DILocation(line: 45, column: 5, scope: !3962, inlinedAt: !3960)
!3967 = !DILocation(line: 158, column: 10, scope: !3907)
!3968 = !DILocation(line: 158, column: 3, scope: !3907)
!3969 = !DILocation(line: 235, column: 1, scope: !3907)
!3970 = !DISubprogram(name: "fflush", scope: !847, file: !847, line: 218, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!44, !3928}
!3973 = distinct !DISubprogram(name: "rpl_fseeko", scope: !351, file: !351, line: 28, type: !3974, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4011)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!44, !3976, !4010, !44}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !3978)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3978, file: !852, line: 51, baseType: !44, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3978, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3978, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3978, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3978, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3978, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3978, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3978, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3978, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3978, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3978, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3978, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3978, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3978, file: !852, line: 70, baseType: !3994, size: 64, offset: 832)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3978, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3978, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3978, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3978, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3978, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3978, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3978, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3978, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3978, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3978, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3978, file: !852, line: 93, baseType: !3994, size: 64, offset: 1344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3978, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3978, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3978, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3978, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !847, line: 63, baseType: !873)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DILocalVariable(name: "fp", arg: 1, scope: !3973, file: !351, line: 28, type: !3976)
!4013 = !DILocalVariable(name: "offset", arg: 2, scope: !3973, file: !351, line: 28, type: !4010)
!4014 = !DILocalVariable(name: "whence", arg: 3, scope: !3973, file: !351, line: 28, type: !44)
!4015 = !DILocalVariable(name: "pos", scope: !4016, file: !351, line: 117, type: !4010)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !351, line: 113, column: 5)
!4017 = distinct !DILexicalBlock(scope: !3973, file: !351, line: 52, column: 7)
!4018 = !DILocation(line: 0, scope: !3973)
!4019 = !DILocation(line: 52, column: 11, scope: !4017)
!4020 = !{!1041, !779, i64 16}
!4021 = !DILocation(line: 52, column: 31, scope: !4017)
!4022 = !{!1041, !779, i64 8}
!4023 = !DILocation(line: 52, column: 24, scope: !4017)
!4024 = !DILocation(line: 53, column: 7, scope: !4017)
!4025 = !DILocation(line: 53, column: 14, scope: !4017)
!4026 = !DILocation(line: 53, column: 35, scope: !4017)
!4027 = !{!1041, !779, i64 32}
!4028 = !DILocation(line: 53, column: 28, scope: !4017)
!4029 = !DILocation(line: 54, column: 7, scope: !4017)
!4030 = !DILocation(line: 54, column: 14, scope: !4017)
!4031 = !{!1041, !779, i64 72}
!4032 = !DILocation(line: 54, column: 28, scope: !4017)
!4033 = !DILocation(line: 52, column: 7, scope: !3973)
!4034 = !DILocation(line: 117, column: 26, scope: !4016)
!4035 = !DILocation(line: 117, column: 19, scope: !4016)
!4036 = !DILocation(line: 0, scope: !4016)
!4037 = !DILocation(line: 118, column: 15, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4016, file: !351, line: 118, column: 11)
!4039 = !DILocation(line: 118, column: 11, scope: !4016)
!4040 = !DILocation(line: 129, column: 11, scope: !4016)
!4041 = !DILocation(line: 129, column: 18, scope: !4016)
!4042 = !DILocation(line: 130, column: 11, scope: !4016)
!4043 = !DILocation(line: 130, column: 19, scope: !4016)
!4044 = !{!1041, !986, i64 144}
!4045 = !DILocation(line: 161, column: 7, scope: !4016)
!4046 = !DILocation(line: 163, column: 10, scope: !3973)
!4047 = !DILocation(line: 163, column: 3, scope: !3973)
!4048 = !DILocation(line: 164, column: 1, scope: !3973)
!4049 = !DISubprogram(name: "fseeko", scope: !847, file: !847, line: 712, type: !4050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!44, !3994, !82, !44}
!4052 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !353, file: !353, line: 86, type: !4053, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !4067)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!45, !4055, !49, !45, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 6, baseType: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2047, line: 21, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2047, line: 13, size: 64, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4059, file: !2047, line: 15, baseType: !44, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4059, file: !2047, line: 20, baseType: !4063, size: 32, offset: 32)
!4063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !2047, line: 16, size: 32, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4063, file: !2047, line: 18, baseType: !7, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4063, file: !2047, line: 19, baseType: !117, size: 32)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4068 = !DILocalVariable(name: "pwc", arg: 1, scope: !4052, file: !353, line: 86, type: !4055)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4052, file: !353, line: 86, type: !49)
!4070 = !DILocalVariable(name: "n", arg: 3, scope: !4052, file: !353, line: 86, type: !45)
!4071 = !DILocalVariable(name: "ps", arg: 4, scope: !4052, file: !353, line: 86, type: !4056)
!4072 = !DILocalVariable(name: "ret", scope: !4052, file: !353, line: 88, type: !45)
!4073 = !DILocalVariable(name: "wc", scope: !4052, file: !353, line: 89, type: !2058)
!4074 = !DILocalVariable(name: "uc", scope: !4075, file: !353, line: 156, type: !43)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !353, line: 155, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4052, file: !353, line: 154, column: 7)
!4077 = !DILocation(line: 0, scope: !4052)
!4078 = !DILocation(line: 89, column: 3, scope: !4052)
!4079 = !DILocation(line: 105, column: 9, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4052, file: !353, line: 105, column: 7)
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
!4092 = !DISubprogram(name: "mbrtowc", scope: !2719, file: !2719, line: 296, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!47, !173, !49, !47, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4096 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !356, file: !356, line: 49, type: !4097, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4123)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!40, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4101)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !106, line: 55, size: 3072, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109, !4110, !4115, !4116, !4121, !4122}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4102, file: !106, line: 57, baseType: !109, size: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4102, file: !106, line: 58, baseType: !111, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4102, file: !106, line: 59, baseType: !113, size: 256, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4102, file: !106, line: 61, baseType: !117, size: 32, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4102, file: !106, line: 63, baseType: !113, size: 256, offset: 352)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4102, file: !106, line: 65, baseType: !122, size: 2048, offset: 608)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4102, file: !106, line: 67, baseType: !4111, size: 32, offset: 2656)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !106, line: 42, size: 32, elements: !4112)
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4111, file: !106, line: 45, baseType: !109, size: 16)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4111, file: !106, line: 46, baseType: !109, size: 16, offset: 16)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4102, file: !106, line: 74, baseType: !131, size: 32, offset: 2688)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4102, file: !106, line: 79, baseType: !4117, size: 64, offset: 2720)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4102, file: !106, line: 75, size: 64, elements: !4118)
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4117, file: !106, line: 77, baseType: !131, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4117, file: !106, line: 78, baseType: !131, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4102, file: !106, line: 84, baseType: !138, size: 128, offset: 2784)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4102, file: !106, line: 85, baseType: !140, size: 160, offset: 2912)
!4123 = !{!4124, !4125, !4126}
!4124 = !DILocalVariable(name: "ut", arg: 1, scope: !4096, file: !356, line: 49, type: !4099)
!4125 = !DILocalVariable(name: "p", scope: !4096, file: !356, line: 51, type: !40)
!4126 = !DILocalVariable(name: "trimmed_name", scope: !4096, file: !356, line: 51, type: !40)
!4127 = !DILocation(line: 0, scope: !4096)
!4128 = !DILocation(line: 53, column: 18, scope: !4096)
!4129 = !DILocation(line: 54, column: 26, scope: !4096)
!4130 = !DILocalVariable(name: "__dest", arg: 1, scope: !4131, file: !1197, line: 92, type: !1200)
!4131 = distinct !DISubprogram(name: "strncpy", scope: !1197, file: !1197, line: 92, type: !1362, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4132)
!4132 = !{!4130, !4133, !4134}
!4133 = !DILocalVariable(name: "__src", arg: 2, scope: !4131, file: !1197, line: 92, type: !1201)
!4134 = !DILocalVariable(name: "__len", arg: 3, scope: !4131, file: !1197, line: 92, type: !45)
!4135 = !DILocation(line: 0, scope: !4131, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 54, column: 3, scope: !4096)
!4137 = !DILocation(line: 95, column: 10, scope: !4131, inlinedAt: !4136)
!4138 = !DILocation(line: 58, column: 3, scope: !4096)
!4139 = !DILocation(line: 58, column: 39, scope: !4096)
!4140 = !DILocation(line: 59, column: 27, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4096, file: !356, line: 59, column: 3)
!4142 = !DILocation(line: 60, column: 21, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !356, line: 59, column: 3)
!4144 = !DILocation(line: 60, column: 25, scope: !4143)
!4145 = !DILocation(line: 59, column: 25, scope: !4141)
!4146 = !DILocation(line: 59, column: 3, scope: !4141)
!4147 = !DILocation(line: 60, column: 28, scope: !4143)
!4148 = !DILocation(line: 60, column: 34, scope: !4143)
!4149 = !DILocation(line: 61, column: 13, scope: !4143)
!4150 = distinct !{!4150, !4146, !4151, !822}
!4151 = !DILocation(line: 62, column: 5, scope: !4141)
!4152 = !DILocation(line: 63, column: 3, scope: !4096)
!4153 = distinct !DISubprogram(name: "read_utmp", scope: !356, file: !356, line: 92, type: !4154, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4158)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!44, !49, !333, !4156, !44}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4158 = !{!4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4159 = !DILocalVariable(name: "file", arg: 1, scope: !4153, file: !356, line: 92, type: !49)
!4160 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4153, file: !356, line: 92, type: !333)
!4161 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4153, file: !356, line: 92, type: !4156)
!4162 = !DILocalVariable(name: "options", arg: 4, scope: !4153, file: !356, line: 93, type: !44)
!4163 = !DILocalVariable(name: "n_read", scope: !4153, file: !356, line: 95, type: !45)
!4164 = !DILocalVariable(name: "n_alloc", scope: !4153, file: !356, line: 96, type: !45)
!4165 = !DILocalVariable(name: "utmp", scope: !4153, file: !356, line: 97, type: !4157)
!4166 = !DILocalVariable(name: "u", scope: !4153, file: !356, line: 98, type: !4157)
!4167 = !DILocation(line: 0, scope: !4153)
!4168 = !DILocation(line: 104, column: 3, scope: !4153)
!4169 = !DILocation(line: 106, column: 3, scope: !4153)
!4170 = !DILocation(line: 108, column: 15, scope: !4153)
!4171 = !DILocation(line: 108, column: 32, scope: !4153)
!4172 = !DILocation(line: 108, column: 3, scope: !4153)
!4173 = !DILocalVariable(name: "u", arg: 1, scope: !4174, file: !356, line: 69, type: !4099)
!4174 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !356, file: !356, line: 69, type: !4175, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!54, !4099, !44}
!4177 = !{!4173, !4178, !4179}
!4178 = !DILocalVariable(name: "options", arg: 2, scope: !4174, file: !356, line: 69, type: !44)
!4179 = !DILocalVariable(name: "user_proc", scope: !4174, file: !356, line: 71, type: !54)
!4180 = !DILocation(line: 0, scope: !4174, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 109, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4153, file: !356, line: 109, column: 9)
!4183 = !DILocation(line: 71, column: 20, scope: !4174, inlinedAt: !4181)
!4184 = !DILocation(line: 72, column: 42, scope: !4185, inlinedAt: !4181)
!4185 = distinct !DILexicalBlock(scope: !4174, file: !356, line: 72, column: 7)
!4186 = !DILocation(line: 75, column: 7, scope: !4187, inlinedAt: !4181)
!4187 = distinct !DILexicalBlock(scope: !4174, file: !356, line: 74, column: 7)
!4188 = !DILocation(line: 76, column: 14, scope: !4187, inlinedAt: !4181)
!4189 = !{!1050, !949, i64 4}
!4190 = !DILocation(line: 76, column: 12, scope: !4187, inlinedAt: !4181)
!4191 = !DILocation(line: 77, column: 7, scope: !4187, inlinedAt: !4181)
!4192 = !DILocation(line: 77, column: 11, scope: !4187, inlinedAt: !4181)
!4193 = !DILocation(line: 77, column: 32, scope: !4187, inlinedAt: !4181)
!4194 = !DILocation(line: 77, column: 36, scope: !4187, inlinedAt: !4181)
!4195 = !DILocation(line: 77, column: 39, scope: !4187, inlinedAt: !4181)
!4196 = !DILocation(line: 77, column: 45, scope: !4187, inlinedAt: !4181)
!4197 = !DILocation(line: 74, column: 7, scope: !4174, inlinedAt: !4181)
!4198 = !DILocation(line: 111, column: 20, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !356, line: 111, column: 13)
!4200 = distinct !DILexicalBlock(scope: !4182, file: !356, line: 110, column: 7)
!4201 = !DILocation(line: 111, column: 13, scope: !4200)
!4202 = !DILocation(line: 112, column: 30, scope: !4199)
!4203 = !DILocation(line: 0, scope: !363, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 112, column: 18, scope: !4199)
!4205 = !DILocation(line: 178, column: 9, scope: !4206, inlinedAt: !4204)
!4206 = distinct !DILexicalBlock(scope: !363, file: !329, line: 178, column: 7)
!4207 = !DILocation(line: 178, column: 7, scope: !363, inlinedAt: !4204)
!4208 = !DILocation(line: 180, column: 13, scope: !4209, inlinedAt: !4204)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !329, line: 180, column: 11)
!4210 = distinct !DILexicalBlock(scope: !4206, file: !329, line: 179, column: 5)
!4211 = !DILocation(line: 180, column: 11, scope: !4210, inlinedAt: !4204)
!4212 = !DILocation(line: 191, column: 11, scope: !4213, inlinedAt: !4204)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !329, line: 191, column: 11)
!4214 = !DILocation(line: 191, column: 11, scope: !4210, inlinedAt: !4204)
!4215 = !DILocation(line: 192, column: 9, scope: !4213, inlinedAt: !4204)
!4216 = !DILocation(line: 201, column: 11, scope: !4217, inlinedAt: !4204)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !329, line: 200, column: 11)
!4218 = distinct !DILexicalBlock(scope: !4206, file: !329, line: 195, column: 5)
!4219 = !DILocation(line: 200, column: 11, scope: !4218, inlinedAt: !4204)
!4220 = !DILocation(line: 202, column: 9, scope: !4217, inlinedAt: !4204)
!4221 = !DILocation(line: 203, column: 14, scope: !4218, inlinedAt: !4204)
!4222 = !DILocation(line: 203, column: 18, scope: !4218, inlinedAt: !4204)
!4223 = !DILocation(line: 203, column: 9, scope: !4218, inlinedAt: !4204)
!4224 = !DILocation(line: 207, column: 25, scope: !363, inlinedAt: !4204)
!4225 = !DILocation(line: 207, column: 10, scope: !363, inlinedAt: !4204)
!4226 = !DILocation(line: 112, column: 18, scope: !4199)
!4227 = !DILocation(line: 112, column: 11, scope: !4199)
!4228 = !DILocation(line: 114, column: 20, scope: !4200)
!4229 = !DILocation(line: 114, column: 9, scope: !4200)
!4230 = !DILocation(line: 114, column: 26, scope: !4200)
!4231 = !{i64 0, i64 2, !1613, i64 4, i64 4, !948, i64 8, i64 32, !1045, i64 40, i64 4, !1045, i64 44, i64 32, !1045, i64 76, i64 256, !1045, i64 332, i64 2, !1613, i64 334, i64 2, !1613, i64 336, i64 4, !948, i64 340, i64 4, !948, i64 344, i64 4, !948, i64 348, i64 16, !1045, i64 364, i64 20, !1045}
!4232 = !DILocation(line: 115, column: 7, scope: !4200)
!4233 = distinct !{!4233, !4172, !4234, !822}
!4234 = !DILocation(line: 115, column: 7, scope: !4153)
!4235 = !DILocation(line: 117, column: 3, scope: !4153)
!4236 = !DILocation(line: 119, column: 14, scope: !4153)
!4237 = !DILocation(line: 120, column: 13, scope: !4153)
!4238 = !DILocation(line: 122, column: 3, scope: !4153)
!4239 = !DISubprogram(name: "utmpxname", scope: !4240, file: !4240, line: 93, type: !4241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4240 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!44, !49}
!4243 = !DISubprogram(name: "setutxent", scope: !4240, file: !4240, line: 53, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4244 = !DISubprogram(name: "getutxent", scope: !4240, file: !4240, line: 65, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4248 = !DISubprogram(name: "kill", scope: !4249, file: !4249, line: 112, type: !4250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4249 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!44, !44, !44}
!4252 = !DISubprogram(name: "endutxent", scope: !4240, file: !4240, line: 59, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4253 = distinct !DISubprogram(name: "close_stream", scope: !371, file: !371, line: 56, type: !4254, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !4290)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!44, !4256}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1115, line: 7, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !852, line: 49, size: 1728, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4258, file: !852, line: 51, baseType: !44, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4258, file: !852, line: 54, baseType: !40, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4258, file: !852, line: 55, baseType: !40, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4258, file: !852, line: 56, baseType: !40, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4258, file: !852, line: 57, baseType: !40, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4258, file: !852, line: 58, baseType: !40, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4258, file: !852, line: 59, baseType: !40, size: 64, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4258, file: !852, line: 60, baseType: !40, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4258, file: !852, line: 61, baseType: !40, size: 64, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4258, file: !852, line: 64, baseType: !40, size: 64, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4258, file: !852, line: 65, baseType: !40, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4258, file: !852, line: 66, baseType: !40, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4258, file: !852, line: 68, baseType: !867, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4258, file: !852, line: 70, baseType: !4274, size: 64, offset: 832)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4258, file: !852, line: 72, baseType: !44, size: 32, offset: 896)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4258, file: !852, line: 73, baseType: !44, size: 32, offset: 928)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4258, file: !852, line: 74, baseType: !873, size: 64, offset: 960)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4258, file: !852, line: 77, baseType: !48, size: 16, offset: 1024)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4258, file: !852, line: 78, baseType: !876, size: 8, offset: 1040)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4258, file: !852, line: 79, baseType: !878, size: 8, offset: 1048)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4258, file: !852, line: 81, baseType: !882, size: 64, offset: 1088)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4258, file: !852, line: 89, baseType: !885, size: 64, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4258, file: !852, line: 91, baseType: !887, size: 64, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4258, file: !852, line: 92, baseType: !890, size: 64, offset: 1280)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4258, file: !852, line: 93, baseType: !4274, size: 64, offset: 1344)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4258, file: !852, line: 94, baseType: !42, size: 64, offset: 1408)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4258, file: !852, line: 95, baseType: !45, size: 64, offset: 1472)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4258, file: !852, line: 96, baseType: !44, size: 32, offset: 1536)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4258, file: !852, line: 98, baseType: !140, size: 160, offset: 1568)
!4290 = !{!4291, !4292, !4294, !4295}
!4291 = !DILocalVariable(name: "stream", arg: 1, scope: !4253, file: !371, line: 56, type: !4256)
!4292 = !DILocalVariable(name: "some_pending", scope: !4253, file: !371, line: 58, type: !4293)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!4294 = !DILocalVariable(name: "prev_fail", scope: !4253, file: !371, line: 59, type: !4293)
!4295 = !DILocalVariable(name: "fclose_fail", scope: !4253, file: !371, line: 60, type: !4293)
!4296 = !DILocation(line: 0, scope: !4253)
!4297 = !DILocation(line: 58, column: 30, scope: !4253)
!4298 = !DILocalVariable(name: "__stream", arg: 1, scope: !4299, file: !1033, line: 135, type: !4256)
!4299 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1033, file: !1033, line: 135, type: !4254, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !4300)
!4300 = !{!4298}
!4301 = !DILocation(line: 0, scope: !4299, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 59, column: 27, scope: !4253)
!4303 = !DILocation(line: 137, column: 10, scope: !4299, inlinedAt: !4302)
!4304 = !DILocation(line: 59, column: 43, scope: !4253)
!4305 = !DILocation(line: 60, column: 29, scope: !4253)
!4306 = !DILocation(line: 60, column: 45, scope: !4253)
!4307 = !DILocation(line: 70, column: 17, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4253, file: !371, line: 70, column: 7)
!4309 = !DILocation(line: 58, column: 50, scope: !4253)
!4310 = !DILocation(line: 70, column: 33, scope: !4308)
!4311 = !DILocation(line: 70, column: 53, scope: !4308)
!4312 = !DILocation(line: 70, column: 59, scope: !4308)
!4313 = !DILocation(line: 70, column: 7, scope: !4253)
!4314 = !DILocation(line: 72, column: 11, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !371, line: 71, column: 5)
!4316 = !DILocation(line: 73, column: 9, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !371, line: 72, column: 11)
!4318 = !DILocation(line: 73, column: 15, scope: !4317)
!4319 = !DILocation(line: 78, column: 1, scope: !4253)
!4320 = distinct !DISubprogram(name: "locale_charset", scope: !373, file: !373, line: 831, type: !1726, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4321)
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "codeset", scope: !4320, file: !373, line: 833, type: !49)
!4323 = !DILocation(line: 847, column: 13, scope: !4320)
!4324 = !DILocation(line: 0, scope: !4320)
!4325 = !DILocation(line: 911, column: 15, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4320, file: !373, line: 911, column: 7)
!4327 = !DILocation(line: 911, column: 7, scope: !4320)
!4328 = !DILocation(line: 1070, column: 13, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !373, line: 1070, column: 13)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !373, line: 1060, column: 7)
!4331 = distinct !DILexicalBlock(scope: !4320, file: !373, line: 1019, column: 3)
!4332 = !DILocation(line: 1070, column: 24, scope: !4329)
!4333 = !DILocation(line: 1070, column: 13, scope: !4330)
!4334 = !DILocation(line: 1158, column: 3, scope: !4320)
!4335 = !DISubprogram(name: "nl_langinfo", scope: !376, file: !376, line: 661, type: !4336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!40, !44}
