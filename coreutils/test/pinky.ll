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
@do_short_format = internal unnamed_addr global i1 false, align 1, !dbg !335
@include_heading = internal unnamed_addr global i1 false, align 1, !dbg !336
@include_fullname = internal unnamed_addr global i1 false, align 1, !dbg !337
@include_where = internal unnamed_addr global i1 false, align 1, !dbg !338
@include_idle = internal unnamed_addr global i1 false, align 1, !dbg !339
@include_project = internal unnamed_addr global i1 false, align 1, !dbg !340
@include_plan = internal unnamed_addr global i1 false, align 1, !dbg !341
@include_home_and_shell = internal unnamed_addr global i1 false, align 1, !dbg !342
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [68 x i8] c"no username specified; at least one must be specified when using -l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8, !dbg !291
@time_format_width = internal unnamed_addr global i32 0, align 4, !dbg !293
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
@idle_string.now = internal global i64 0, align 8, !dbg !295
@idle_string.buf = internal global [22 x i8] zeroinitializer, align 16, !dbg !312
@.str.59 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%lud\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@time_string.buf = internal global [33 x i8] zeroinitializer, align 16, !dbg !317
@.str.57 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !343
@.str.73 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@last_cherror = internal unnamed_addr global i32 0, align 4, !dbg !348
@canon_host_r.hints = internal global %struct.addrinfo zeroinitializer, align 8, !dbg !394
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !403
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !446
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !448
@.str.1.85 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !454
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.104, i32 0, i32 0), i8* null], align 16, !dbg !495
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !563
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !569
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !571
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.108 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.109 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.110 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.111 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !575
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !582
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !573
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !584
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !590
@.str.1.153 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.171 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1311 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1316, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %0, metadata !1315, metadata !DIExpression()), !dbg !1337
  %3 = icmp eq i32 %0, 0, !dbg !1338
  br i1 %3, label %9, label %4, !dbg !1339

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340, !tbaa !1342
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1340
  %7 = load i8*, i8** @program_name, align 8, !dbg !1340, !tbaa !1342
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1340
  br label %63, !dbg !1340

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1346
  %11 = load i8*, i8** @program_name, align 8, !dbg !1346, !tbaa !1342
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #19, !dbg !1346
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([328 x i8], [328 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1347
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1347, !tbaa !1342
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1347
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1348
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !1342
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1348
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1349
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1349, !tbaa !1342
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1349
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1350
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1350, !tbaa !1342
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1350
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1351
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !1351
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), metadata !1320, metadata !DIExpression()) #19, !dbg !1352
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #19, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %27, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), metadata !1321, metadata !DIExpression()) #19, !dbg !1352
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1354
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  br label %29, !dbg !1355

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %30) #22, !dbg !1356
  %33 = icmp eq i32 %32, 0, !dbg !1356
  br i1 %33, label %39, label %34, !dbg !1355

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !1358
  %37 = load i8*, i8** %36, align 8, !dbg !1358, !tbaa !1359
  %38 = icmp eq i8* %37, null, !dbg !1361
  br i1 %38, label %39, label %29, !dbg !1362, !llvm.loop !1363

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %35, %34 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1322, metadata !DIExpression()) #19, !dbg !1352
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !1364
  %42 = load i8*, i8** %41, align 8, !dbg !1364, !tbaa !1366
  %43 = icmp eq i8* %42, null, !dbg !1367
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %42, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %44, metadata !1321, metadata !DIExpression()) #19, !dbg !1352
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #19, !dbg !1369
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #19, !dbg !1369
  %47 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %47, metadata !1329, metadata !DIExpression()) #19, !dbg !1352
  %48 = icmp eq i8* %47, null, !dbg !1371
  br i1 %48, label %56, label %49, !dbg !1373

49:                                               ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #22, !dbg !1374
  %51 = icmp eq i32 %50, 0, !dbg !1374
  br i1 %51, label %56, label %52, !dbg !1375

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i32 5) #19, !dbg !1376
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1376, !tbaa !1342
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #19, !dbg !1376
  br label %56, !dbg !1378

56:                                               ; preds = %39, %49, %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1379
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !1379
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #19, !dbg !1380
  %60 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !1380
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !1380
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %44, i8* %61) #19, !dbg !1380
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #19, !dbg !1381
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 %0) #23, !dbg !1382
  unreachable, !dbg !1382
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !40 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !50 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !115 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1383 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !1392, metadata !DIExpression()), !dbg !1432
  %4 = alloca [1024 x i8], align 16
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1419, metadata !DIExpression()), !dbg !1446
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1388, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8** %1, metadata !1389, metadata !DIExpression()), !dbg !1447
  %7 = load i8*, i8** %1, align 8, !dbg !1448, !tbaa !1342
  tail call void @set_program_name(i8* %7) #19, !dbg !1449
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1450
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1451
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1452
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1453
  br label %12, !dbg !1454

12:                                               ; preds = %23, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #19, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %13, metadata !1390, metadata !DIExpression()), !dbg !1447
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
  ], !dbg !1454

14:                                               ; preds = %12
  store i1 false, i1* @do_short_format, align 1, !dbg !1456
  br label %23, !dbg !1459

15:                                               ; preds = %12
  store i1 true, i1* @do_short_format, align 1, !dbg !1460
  br label %23, !dbg !1461

16:                                               ; preds = %12
  store i1 true, i1* @include_heading, align 1, !dbg !1462
  br label %23, !dbg !1463

17:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !1464
  br label %23, !dbg !1465

18:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !1466
  store i1 true, i1* @include_where, align 1, !dbg !1467
  br label %23, !dbg !1468

19:                                               ; preds = %12
  store i1 true, i1* @include_fullname, align 1, !dbg !1469
  store i1 true, i1* @include_where, align 1, !dbg !1470
  store i1 true, i1* @include_idle, align 1, !dbg !1471
  br label %23, !dbg !1472

20:                                               ; preds = %12
  store i1 true, i1* @include_project, align 1, !dbg !1473
  br label %23, !dbg !1474

21:                                               ; preds = %12
  store i1 true, i1* @include_plan, align 1, !dbg !1475
  br label %23, !dbg !1476

22:                                               ; preds = %12
  store i1 true, i1* @include_home_and_shell, align 1, !dbg !1477
  br label %23, !dbg !1478

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14
  br label %12, !dbg !1455, !llvm.loop !1479

24:                                               ; preds = %12
  tail call void @usage(i32 0) #24, !dbg !1481
  unreachable, !dbg !1481

25:                                               ; preds = %12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1482, !tbaa !1342
  %27 = load i8*, i8** @Version, align 8, !dbg !1482, !tbaa !1342
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #19, !dbg !1482
  tail call void @exit(i32 0) #23, !dbg !1482
  unreachable, !dbg !1482

28:                                               ; preds = %12
  tail call void @usage(i32 1) #24, !dbg !1483
  unreachable, !dbg !1483

29:                                               ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !1484, !tbaa !1485
  %31 = sub nsw i32 %0, %30, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %31, metadata !1391, metadata !DIExpression()), !dbg !1447
  %32 = load i1, i1* @do_short_format, align 1, !dbg !1488
  %33 = icmp eq i32 %31, 0, !dbg !1490
  %34 = and i1 %32, %33, !dbg !1491
  br i1 %34, label %35, label %37, !dbg !1491

35:                                               ; preds = %29
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 5) #19, !dbg !1492
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36) #19, !dbg !1494
  tail call void @usage(i32 1) #24, !dbg !1495
  unreachable, !dbg !1495

37:                                               ; preds = %29
  %38 = sext i32 %30 to i64, !dbg !1496
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38, !dbg !1496
  br i1 %32, label %122, label %40, !dbg !1497

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), metadata !1498, metadata !DIExpression()) #19, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %31, metadata !1503, metadata !DIExpression()) #19, !dbg !1508
  call void @llvm.dbg.value(metadata i8** %39, metadata !1504, metadata !DIExpression()) #19, !dbg !1508
  %41 = bitcast i64* %5 to i8*, !dbg !1510
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #19, !dbg !1510
  %42 = bitcast %struct.utmpx** %6 to i8*, !dbg !1511
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #19, !dbg !1511
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !1506, metadata !DIExpression()) #19, !dbg !1508
  store %struct.utmpx* null, %struct.utmpx** %6, align 8, !dbg !1512, !tbaa !1342
  call void @llvm.dbg.value(metadata i64* %5, metadata !1505, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1508
  call void @llvm.dbg.value(metadata %struct.utmpx** %6, metadata !1506, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1508
  %43 = call i32 @read_utmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* nonnull %5, %struct.utmpx** nonnull %6, i32 0) #19, !dbg !1513
  %44 = icmp eq i32 %43, 0, !dbg !1515
  br i1 %44, label %49, label %45, !dbg !1516

45:                                               ; preds = %40
  %46 = tail call i32* @__errno_location() #25, !dbg !1517
  %47 = load i32, i32* %46, align 4, !dbg !1517, !tbaa !1485
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !1517
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* %48) #19, !dbg !1517
  unreachable, !dbg !1517

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8, !dbg !1518, !tbaa !1519
  call void @llvm.dbg.value(metadata i64 %50, metadata !1505, metadata !DIExpression()) #19, !dbg !1508
  %51 = load %struct.utmpx*, %struct.utmpx** %6, align 8, !dbg !1521, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1506, metadata !DIExpression()) #19, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %50, metadata !1522, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1527, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %31, metadata !1528, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata i8** %39, metadata !1529, metadata !DIExpression()) #19, !dbg !1537
  %52 = call zeroext i1 @hard_locale(i32 2) #19, !dbg !1539
  %53 = select i1 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)
  %54 = select i1 %52, i32 16, i32 12
  store i8* %53, i8** @time_format, align 8, !dbg !1541, !tbaa !1342
  store i32 %54, i32* @time_format_width, align 4, !dbg !1541, !tbaa !1485
  %55 = load i1, i1* @include_heading, align 1, !dbg !1542
  br i1 %55, label %89, label %56, !dbg !1544

56:                                               ; preds = %49
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 5) #19, !dbg !1545
  %58 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* %57) #19, !dbg !1545
  %59 = load i1, i1* @include_fullname, align 1, !dbg !1548
  br i1 %59, label %63, label %60, !dbg !1550

60:                                               ; preds = %56
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 5) #19, !dbg !1551
  %62 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %61) #19, !dbg !1551
  br label %63, !dbg !1551

63:                                               ; preds = %60, %56
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 5) #19, !dbg !1552
  %65 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* %64) #19, !dbg !1552
  %66 = load i1, i1* @include_idle, align 1, !dbg !1553
  br i1 %66, label %70, label %67, !dbg !1555

67:                                               ; preds = %63
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 5) #19, !dbg !1556
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %68) #19, !dbg !1556
  br label %70, !dbg !1556

70:                                               ; preds = %67, %63
  %71 = load i32, i32* @time_format_width, align 4, !dbg !1557, !tbaa !1485
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 5) #19, !dbg !1557
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %71, i8* %72) #19, !dbg !1557
  %74 = load i1, i1* @include_where, align 1, !dbg !1558
  br i1 %74, label %78, label %75, !dbg !1560

75:                                               ; preds = %70
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 5) #19, !dbg !1561
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %76) #19, !dbg !1561
  br label %78, !dbg !1561

78:                                               ; preds = %75, %70
  call void @llvm.dbg.value(metadata i32 10, metadata !1562, metadata !DIExpression()) #19, !dbg !1568
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1570, !tbaa !1342
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5, !dbg !1570
  %81 = load i8*, i8** %80, align 8, !dbg !1570, !tbaa !1571
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6, !dbg !1570
  %83 = load i8*, i8** %82, align 8, !dbg !1570, !tbaa !1574
  %84 = icmp ult i8* %81, %83, !dbg !1570
  br i1 %84, label %87, label %85, !dbg !1570, !prof !1575, !misexpect !1576

85:                                               ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* %79, i32 10) #19, !dbg !1570
  br label %89, !dbg !1570

87:                                               ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1570
  store i8* %88, i8** %80, align 8, !dbg !1570, !tbaa !1571
  store i8 10, i8* %81, align 1, !dbg !1570, !tbaa !1577
  br label %89, !dbg !1570

89:                                               ; preds = %87, %85, %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !1522, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.utmpx* %51, metadata !1527, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %50, metadata !1522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1537
  %90 = icmp eq i64 %50, 0, !dbg !1578
  br i1 %90, label %121, label %91, !dbg !1578

91:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %50, metadata !1522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1537
  %92 = icmp sgt i32 %31, 0, !dbg !1579
  %93 = zext i32 %31 to i64, !dbg !1579
  br label %94, !dbg !1578

94:                                               ; preds = %118, %91
  %95 = phi i64 [ %50, %91 ], [ %97, %118 ]
  %96 = phi %struct.utmpx* [ %51, %91 ], [ %119, %118 ]
  %97 = add i64 %95, -1, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.utmpx* %96, metadata !1527, metadata !DIExpression()) #19, !dbg !1537
  %98 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 4, i64 0, !dbg !1582
  %99 = load i8, i8* %98, align 4, !dbg !1582, !tbaa !1577
  %100 = icmp eq i8 %99, 0, !dbg !1582
  br i1 %100, label %118, label %101, !dbg !1582

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 0, i32 0, !dbg !1582
  %103 = load i16, i16* %102, align 4, !dbg !1582, !tbaa !1583
  %104 = icmp eq i16 %103, 7, !dbg !1582
  br i1 %104, label %105, label %118, !dbg !1587

105:                                              ; preds = %101
  br i1 %33, label %117, label %106, !dbg !1588

106:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()) #19, !dbg !1589
  br i1 %92, label %109, label %118, !dbg !1590

107:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 %115, metadata !1530, metadata !DIExpression()) #19, !dbg !1589
  %108 = icmp eq i64 %115, %93, !dbg !1591
  br i1 %108, label %118, label %109, !dbg !1590, !llvm.loop !1592

109:                                              ; preds = %106, %107
  %110 = phi i64 [ %115, %107 ], [ 0, %106 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1530, metadata !DIExpression()) #19, !dbg !1589
  %111 = getelementptr inbounds i8*, i8** %39, i64 %110, !dbg !1594
  %112 = load i8*, i8** %111, align 8, !dbg !1594, !tbaa !1342
  %113 = call i32 @strncmp(i8* nonnull %98, i8* nonnull dereferenceable(1) %112, i64 32) #22, !dbg !1594
  %114 = icmp eq i32 %113, 0, !dbg !1594
  %115 = add nuw nsw i64 %110, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %115, metadata !1530, metadata !DIExpression()) #19, !dbg !1589
  br i1 %114, label %116, label %107, !dbg !1597

116:                                              ; preds = %109
  call fastcc void @print_entry(%struct.utmpx* %96) #19, !dbg !1598
  br label %118, !dbg !1600

117:                                              ; preds = %105
  call fastcc void @print_entry(%struct.utmpx* nonnull %96) #19, !dbg !1601
  br label %118

118:                                              ; preds = %107, %117, %116, %106, %101, %94
  %119 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %96, i64 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %97, metadata !1522, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.utmpx* %119, metadata !1527, metadata !DIExpression()) #19, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %97, metadata !1522, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #19, !dbg !1537
  %120 = icmp eq i64 %97, 0, !dbg !1578
  br i1 %120, label %121, label %94, !dbg !1578, !llvm.loop !1603

121:                                              ; preds = %118, %89
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #19, !dbg !1605
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #19, !dbg !1605
  br label %254, !dbg !1606

122:                                              ; preds = %37
  call void @llvm.dbg.value(metadata i32 %31, metadata !1441, metadata !DIExpression()) #19, !dbg !1607
  call void @llvm.dbg.value(metadata i8** %39, metadata !1442, metadata !DIExpression()) #19, !dbg !1607
  call void @llvm.dbg.value(metadata i32 0, metadata !1443, metadata !DIExpression()) #19, !dbg !1608
  %123 = icmp sgt i32 %31, 0, !dbg !1609
  br i1 %123, label %124, label %254, !dbg !1610

124:                                              ; preds = %122
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !1611
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1612
  %127 = zext i32 %31 to i64, !dbg !1609
  br label %128, !dbg !1610

128:                                              ; preds = %251, %124
  %129 = phi i64 [ 0, %124 ], [ %252, %251 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1443, metadata !DIExpression()) #19, !dbg !1608
  %130 = getelementptr inbounds i8*, i8** %39, i64 %129, !dbg !1613
  %131 = load i8*, i8** %130, align 8, !dbg !1613, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* %131, metadata !1397, metadata !DIExpression()) #19, !dbg !1614
  %132 = tail call %struct.passwd* @getpwnam(i8* %131) #19, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.passwd* %132, metadata !1398, metadata !DIExpression()) #19, !dbg !1614
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), i32 5) #19, !dbg !1616
  %134 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %133) #19, !dbg !1616
  %135 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %131) #19, !dbg !1617
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 5) #19, !dbg !1618
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %136) #19, !dbg !1618
  %138 = icmp eq %struct.passwd* %132, null, !dbg !1619
  br i1 %138, label %139, label %142, !dbg !1620

139:                                              ; preds = %128
  %140 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 5) #19, !dbg !1621
  %141 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %140) #19, !dbg !1621
  br label %251, !dbg !1623

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 4, !dbg !1624
  %144 = load i8*, i8** %143, align 8, !dbg !1624, !tbaa !1625
  %145 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %144, i32 44) #22, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %145, metadata !1399, metadata !DIExpression()) #19, !dbg !1628
  %146 = icmp eq i8* %145, null, !dbg !1629
  br i1 %146, label %149, label %147, !dbg !1631

147:                                              ; preds = %142
  store i8 0, i8* %145, align 1, !dbg !1632, !tbaa !1577
  %148 = load i8*, i8** %143, align 8, !dbg !1633, !tbaa !1625
  br label %149, !dbg !1634

149:                                              ; preds = %147, %142
  %150 = phi i8* [ %144, %142 ], [ %148, %147 ], !dbg !1633
  %151 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 0, !dbg !1635
  %152 = load i8*, i8** %151, align 8, !dbg !1635, !tbaa !1636
  %153 = tail call fastcc i8* @create_fullname(i8* %150, i8* %152) #19, !dbg !1637
  call void @llvm.dbg.value(metadata i8* %153, metadata !1402, metadata !DIExpression()) #19, !dbg !1628
  %154 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %153) #19, !dbg !1638
  tail call void @free(i8* %153) #19, !dbg !1639
  call void @llvm.dbg.value(metadata i32 10, metadata !1562, metadata !DIExpression()) #19, !dbg !1640
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1642, !tbaa !1342
  %156 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 5, !dbg !1642
  %157 = load i8*, i8** %156, align 8, !dbg !1642, !tbaa !1571
  %158 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %155, i64 0, i32 6, !dbg !1642
  %159 = load i8*, i8** %158, align 8, !dbg !1642, !tbaa !1574
  %160 = icmp ult i8* %157, %159, !dbg !1642
  br i1 %160, label %163, label %161, !dbg !1642, !prof !1575, !misexpect !1576

161:                                              ; preds = %149
  %162 = tail call i32 @__overflow(%struct._IO_FILE* %155, i32 10) #19, !dbg !1642
  br label %165, !dbg !1642

163:                                              ; preds = %149
  %164 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1642
  store i8* %164, i8** %156, align 8, !dbg !1642, !tbaa !1571
  store i8 10, i8* %157, align 1, !dbg !1642, !tbaa !1577
  br label %165, !dbg !1642

165:                                              ; preds = %163, %161
  %166 = load i1, i1* @include_home_and_shell, align 1, !dbg !1643
  br i1 %166, label %188, label %167, !dbg !1645

167:                                              ; preds = %165
  %168 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i32 5) #19, !dbg !1646
  %169 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %168) #19, !dbg !1646
  %170 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1648
  %171 = load i8*, i8** %170, align 8, !dbg !1648, !tbaa !1649
  %172 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* %171) #19, !dbg !1648
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 5) #19, !dbg !1650
  %174 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %173) #19, !dbg !1650
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 6, !dbg !1651
  %176 = load i8*, i8** %175, align 8, !dbg !1651, !tbaa !1652
  %177 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %176) #19, !dbg !1651
  call void @llvm.dbg.value(metadata i32 10, metadata !1562, metadata !DIExpression()) #19, !dbg !1653
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1655, !tbaa !1342
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 5, !dbg !1655
  %180 = load i8*, i8** %179, align 8, !dbg !1655, !tbaa !1571
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 6, !dbg !1655
  %182 = load i8*, i8** %181, align 8, !dbg !1655, !tbaa !1574
  %183 = icmp ult i8* %180, %182, !dbg !1655
  br i1 %183, label %186, label %184, !dbg !1655, !prof !1575, !misexpect !1576

184:                                              ; preds = %167
  %185 = tail call i32 @__overflow(%struct._IO_FILE* %178, i32 10) #19, !dbg !1655
  br label %188, !dbg !1655

186:                                              ; preds = %167
  %187 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !1655
  store i8* %187, i8** %179, align 8, !dbg !1655, !tbaa !1571
  store i8 10, i8* %180, align 1, !dbg !1655, !tbaa !1577
  br label %188, !dbg !1655

188:                                              ; preds = %186, %184, %165
  %189 = load i1, i1* @include_project, align 1, !dbg !1656
  br i1 %189, label %214, label %190, !dbg !1657

190:                                              ; preds = %188
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %125) #19, !dbg !1658
  %191 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1659
  %192 = load i8*, i8** %191, align 8, !dbg !1659, !tbaa !1649
  %193 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %192) #22, !dbg !1660
  %194 = add i64 %193, 10, !dbg !1661
  %195 = tail call noalias i8* @xmalloc(i64 %194) #19, !dbg !1662
  call void @llvm.dbg.value(metadata i8* %195, metadata !1408, metadata !DIExpression()) #19, !dbg !1611
  %196 = load i8*, i8** %191, align 8, !dbg !1663, !tbaa !1649
  call void @llvm.dbg.value(metadata i8* %195, metadata !1664, metadata !DIExpression()) #19, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %196, metadata !1672, metadata !DIExpression()) #19, !dbg !1673
  %197 = call i8* @stpcpy(i8* %195, i8* %196), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %197, metadata !1664, metadata !DIExpression()) #19, !dbg !1676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), metadata !1672, metadata !DIExpression()) #19, !dbg !1676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(10) %197, i8* nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 10, i1 false) #19, !dbg !1678
  %198 = tail call %struct._IO_FILE* @fopen(i8* nonnull %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #19, !dbg !1679
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %198, metadata !1403, metadata !DIExpression()) #19, !dbg !1611
  %199 = icmp eq %struct._IO_FILE* %198, null, !dbg !1680
  br i1 %199, label %213, label %200, !dbg !1681

200:                                              ; preds = %190
  %201 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i64 0, i64 0), i32 5) #19, !dbg !1682
  %202 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %201) #19, !dbg !1682
  %203 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %198) #19, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %203, metadata !1409, metadata !DIExpression()) #19, !dbg !1684
  %204 = icmp eq i64 %203, 0, !dbg !1685
  br i1 %204, label %211, label %205, !dbg !1686

205:                                              ; preds = %200, %205
  %206 = phi i64 [ %209, %205 ], [ %203, %200 ]
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1684, !tbaa !1342
  %208 = call i64 @fwrite_unlocked(i8* nonnull %125, i64 1, i64 %206, %struct._IO_FILE* %207) #19, !dbg !1687
  %209 = call i64 @fread_unlocked(i8* nonnull %125, i64 1, i64 1024, %struct._IO_FILE* nonnull %198) #19, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %209, metadata !1409, metadata !DIExpression()) #19, !dbg !1684
  %210 = icmp eq i64 %209, 0, !dbg !1685
  br i1 %210, label %211, label %205, !dbg !1686, !llvm.loop !1688

211:                                              ; preds = %205, %200
  %212 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %198) #19, !dbg !1689
  br label %213, !dbg !1690

213:                                              ; preds = %211, %190
  tail call void @free(i8* %195) #19, !dbg !1691
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %125) #19, !dbg !1692
  br label %214, !dbg !1693

214:                                              ; preds = %213, %188
  %215 = load i1, i1* @include_plan, align 1, !dbg !1694
  br i1 %215, label %240, label %216, !dbg !1695

216:                                              ; preds = %214
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %126) #19, !dbg !1696
  %217 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i64 0, i32 5, !dbg !1697
  %218 = load i8*, i8** %217, align 8, !dbg !1697, !tbaa !1649
  %219 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %218) #22, !dbg !1698
  %220 = add i64 %219, 7, !dbg !1699
  %221 = tail call noalias i8* @xmalloc(i64 %220) #19, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %221, metadata !1424, metadata !DIExpression()) #19, !dbg !1612
  %222 = load i8*, i8** %217, align 8, !dbg !1701, !tbaa !1649
  call void @llvm.dbg.value(metadata i8* %221, metadata !1664, metadata !DIExpression()) #19, !dbg !1702
  call void @llvm.dbg.value(metadata i8* %222, metadata !1672, metadata !DIExpression()) #19, !dbg !1702
  %223 = call i8* @stpcpy(i8* %221, i8* %222), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %223, metadata !1664, metadata !DIExpression()) #19, !dbg !1705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), metadata !1672, metadata !DIExpression()) #19, !dbg !1705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(7) %223, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 7, i1 false) #19, !dbg !1707
  %224 = tail call %struct._IO_FILE* @fopen(i8* nonnull %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)) #19, !dbg !1708
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %224, metadata !1416, metadata !DIExpression()) #19, !dbg !1612
  %225 = icmp eq %struct._IO_FILE* %224, null, !dbg !1709
  br i1 %225, label %239, label %226, !dbg !1710

226:                                              ; preds = %216
  %227 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 5) #19, !dbg !1711
  %228 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %227) #19, !dbg !1711
  %229 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %224) #19, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %229, metadata !1425, metadata !DIExpression()) #19, !dbg !1713
  %230 = icmp eq i64 %229, 0, !dbg !1714
  br i1 %230, label %237, label %231, !dbg !1715

231:                                              ; preds = %226, %231
  %232 = phi i64 [ %235, %231 ], [ %229, %226 ]
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1713, !tbaa !1342
  %234 = call i64 @fwrite_unlocked(i8* nonnull %126, i64 1, i64 %232, %struct._IO_FILE* %233) #19, !dbg !1716
  %235 = call i64 @fread_unlocked(i8* nonnull %126, i64 1, i64 1024, %struct._IO_FILE* nonnull %224) #19, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %235, metadata !1425, metadata !DIExpression()) #19, !dbg !1713
  %236 = icmp eq i64 %235, 0, !dbg !1714
  br i1 %236, label %237, label %231, !dbg !1715, !llvm.loop !1717

237:                                              ; preds = %231, %226
  %238 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %224) #19, !dbg !1718
  br label %239, !dbg !1719

239:                                              ; preds = %237, %216
  tail call void @free(i8* %221) #19, !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %126) #19, !dbg !1721
  br label %240, !dbg !1722

240:                                              ; preds = %239, %214
  call void @llvm.dbg.value(metadata i32 10, metadata !1562, metadata !DIExpression()) #19, !dbg !1723
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1725, !tbaa !1342
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %241, i64 0, i32 5, !dbg !1725
  %243 = load i8*, i8** %242, align 8, !dbg !1725, !tbaa !1571
  %244 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %241, i64 0, i32 6, !dbg !1725
  %245 = load i8*, i8** %244, align 8, !dbg !1725, !tbaa !1574
  %246 = icmp ult i8* %243, %245, !dbg !1725
  br i1 %246, label %249, label %247, !dbg !1725, !prof !1575, !misexpect !1576

247:                                              ; preds = %240
  %248 = tail call i32 @__overflow(%struct._IO_FILE* %241, i32 10) #19, !dbg !1725
  br label %251, !dbg !1725

249:                                              ; preds = %240
  %250 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1725
  store i8* %250, i8** %242, align 8, !dbg !1725, !tbaa !1571
  store i8 10, i8* %243, align 1, !dbg !1725, !tbaa !1577
  br label %251, !dbg !1725

251:                                              ; preds = %249, %247, %139
  %252 = add nuw nsw i64 %129, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %252, metadata !1443, metadata !DIExpression()) #19, !dbg !1608
  %253 = icmp eq i64 %252, %127, !dbg !1609
  br i1 %253, label %254, label %128, !dbg !1610, !llvm.loop !1727

254:                                              ; preds = %251, %122, %121
  ret i32 0, !dbg !1729
}

; Function Attrs: nounwind
declare !dbg !119 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !122 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !125 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !132 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !151 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_entry(%struct.utmpx* %0) unnamed_addr #8 !dbg !1730 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca [38 x i8], align 16
  %5 = alloca [33 x i8], align 16
  %6 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !1734, metadata !DIExpression()), !dbg !1790
  %7 = bitcast %struct.stat* %3 to i8*, !dbg !1791
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #19, !dbg !1791
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1735, metadata !DIExpression()), !dbg !1792
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 0, !dbg !1793
  call void @llvm.lifetime.start.p0i8(i64 38, i8* nonnull %8) #19, !dbg !1793
  call void @llvm.dbg.declare(metadata [38 x i8]* %4, metadata !1769, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %8, metadata !1773, metadata !DIExpression()), !dbg !1790
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 0, !dbg !1795
  %10 = load i8, i8* %9, align 4, !dbg !1795, !tbaa !1577
  %11 = icmp eq i8 %10, 47, !dbg !1795
  br i1 %11, label %14, label %12, !dbg !1797

12:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %8, metadata !1664, metadata !DIExpression()) #19, !dbg !1798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), metadata !1672, metadata !DIExpression()) #19, !dbg !1798
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %4, i64 0, i64 5, !dbg !1800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(6) %8, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6, i1 false), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %13, metadata !1773, metadata !DIExpression()), !dbg !1790
  br label %14, !dbg !1801

14:                                               ; preds = %12, %1
  %15 = phi i8* [ %8, %1 ], [ %13, %12 ], !dbg !1790
  call void @llvm.dbg.value(metadata i8* %15, metadata !1773, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* %15, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %9, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 32, metadata !1808, metadata !DIExpression()), !dbg !1810
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 2, i64 32, !dbg !1812
  call void @llvm.dbg.value(metadata i8* %16, metadata !1809, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %15, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %9, metadata !1807, metadata !DIExpression()), !dbg !1810
  %17 = icmp eq i8 %10, 0, !dbg !1813
  br i1 %17, label %28, label %18, !dbg !1814

18:                                               ; preds = %14, %25
  %19 = phi i8* [ %22, %25 ], [ %9, %14 ]
  %20 = phi i8* [ %23, %25 ], [ %15, %14 ]
  %21 = phi i8 [ %26, %25 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %20, metadata !1802, metadata !DIExpression()), !dbg !1810
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1815
  call void @llvm.dbg.value(metadata i8* %22, metadata !1807, metadata !DIExpression()), !dbg !1810
  %23 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %23, metadata !1802, metadata !DIExpression()), !dbg !1810
  store i8 %21, i8* %20, align 1, !dbg !1817, !tbaa !1577, !alias.scope !1818, !noalias !1821
  %24 = icmp ult i8* %22, %16, !dbg !1823
  br i1 %24, label %25, label %28, !dbg !1813, !llvm.loop !1824

25:                                               ; preds = %18
  %26 = load i8, i8* %22, align 1, !dbg !1825, !tbaa !1577, !alias.scope !1821, !noalias !1818
  call void @llvm.dbg.value(metadata i8* %23, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %22, metadata !1807, metadata !DIExpression()), !dbg !1810
  %27 = icmp eq i8 %26, 0, !dbg !1813
  br i1 %27, label %28, label %18, !dbg !1814

28:                                               ; preds = %18, %25, %14
  %29 = phi i8* [ %15, %14 ], [ %23, %25 ], [ %23, %18 ]
  call void @llvm.dbg.value(metadata i8* %29, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %29, metadata !1802, metadata !DIExpression()), !dbg !1810
  store i8 0, i8* %29, align 1, !dbg !1826, !tbaa !1577, !alias.scope !1818, !noalias !1821
  call void @llvm.dbg.value(metadata i8* %8, metadata !1827, metadata !DIExpression()) #19, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1834, metadata !DIExpression()) #19, !dbg !1835
  %30 = call i32 @__xstat(i32 1, i8* nonnull %8, %struct.stat* nonnull %3) #19, !dbg !1838
  %31 = icmp eq i32 %30, 0, !dbg !1839
  br i1 %31, label %32, label %40, !dbg !1840

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1841
  %34 = load i32, i32* %33, align 8, !dbg !1841, !tbaa !1843
  %35 = and i32 %34, 16, !dbg !1846
  %36 = icmp eq i32 %35, 0, !dbg !1847
  %37 = select i1 %36, i32 42, i32 32, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %37, metadata !1768, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1790
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 11, i32 0, !dbg !1848
  %39 = load i64, i64* %38, align 8, !dbg !1848, !tbaa !1849
  call void @llvm.dbg.value(metadata i64 %39, metadata !1767, metadata !DIExpression()), !dbg !1790
  br label %40, !dbg !1850

40:                                               ; preds = %28, %32
  %41 = phi i32 [ %37, %32 ], [ 63, %28 ]
  %42 = phi i64 [ %39, %32 ], [ 0, %28 ], !dbg !1851
  call void @llvm.dbg.value(metadata i64 %42, metadata !1767, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 undef, metadata !1768, metadata !DIExpression()), !dbg !1790
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !1852
  %44 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 32, i8* nonnull %43) #19, !dbg !1852
  %45 = load i1, i1* @include_fullname, align 1, !dbg !1853
  br i1 %45, label %79, label %46, !dbg !1854

46:                                               ; preds = %40
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !1855
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %47) #19, !dbg !1855
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !1777, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8* %47, metadata !1802, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %43, metadata !1807, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 32, metadata !1808, metadata !DIExpression()), !dbg !1857
  %48 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 32, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %48, metadata !1809, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %47, metadata !1802, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %43, metadata !1807, metadata !DIExpression()), !dbg !1857
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi i8* [ %56, %54 ], [ %47, %46 ]
  %51 = phi i8* [ %55, %54 ], [ %43, %46 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1802, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %51, metadata !1807, metadata !DIExpression()), !dbg !1857
  %52 = load i8, i8* %51, align 1, !dbg !1860, !tbaa !1577, !alias.scope !1861, !noalias !1864
  %53 = icmp eq i8 %52, 0, !dbg !1866
  br i1 %53, label %58, label %54, !dbg !1867

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %55, metadata !1807, metadata !DIExpression()), !dbg !1857
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %56, metadata !1802, metadata !DIExpression()), !dbg !1857
  store i8 %52, i8* %50, align 1, !dbg !1870, !tbaa !1577, !alias.scope !1864, !noalias !1861
  %57 = icmp ult i8* %55, %48, !dbg !1871
  br i1 %57, label %49, label %58, !dbg !1866, !llvm.loop !1872

58:                                               ; preds = %49, %54
  %59 = phi i8* [ %50, %49 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata i8* %59, metadata !1802, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %59, metadata !1802, metadata !DIExpression()), !dbg !1857
  store i8 0, i8* %59, align 1, !dbg !1873, !tbaa !1577, !alias.scope !1864, !noalias !1861
  %60 = call %struct.passwd* @getpwnam(i8* nonnull %47), !dbg !1874
  call void @llvm.dbg.value(metadata %struct.passwd* %60, metadata !1774, metadata !DIExpression()), !dbg !1875
  %61 = icmp eq %struct.passwd* %60, null, !dbg !1876
  br i1 %61, label %62, label %65, !dbg !1877

62:                                               ; preds = %58
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #19, !dbg !1878
  %64 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* %63) #19, !dbg !1878
  br label %78, !dbg !1878

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 4, !dbg !1879
  %67 = load i8*, i8** %66, align 8, !dbg !1879, !tbaa !1625
  %68 = call i8* @strchr(i8* nonnull dereferenceable(1) %67, i32 44) #22, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %68, metadata !1778, metadata !DIExpression()), !dbg !1881
  %69 = icmp eq i8* %68, null, !dbg !1882
  br i1 %69, label %72, label %70, !dbg !1884

70:                                               ; preds = %65
  store i8 0, i8* %68, align 1, !dbg !1885, !tbaa !1577
  %71 = load i8*, i8** %66, align 8, !dbg !1886, !tbaa !1625
  br label %72, !dbg !1887

72:                                               ; preds = %65, %70
  %73 = phi i8* [ %67, %65 ], [ %71, %70 ], !dbg !1886
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i64 0, i32 0, !dbg !1888
  %75 = load i8*, i8** %74, align 8, !dbg !1888, !tbaa !1636
  %76 = call fastcc i8* @create_fullname(i8* %73, i8* %75), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %76, metadata !1781, metadata !DIExpression()), !dbg !1881
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %76) #19, !dbg !1890
  call void @free(i8* %76) #19, !dbg !1891
  br label %78

78:                                               ; preds = %72, %62
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %47) #19, !dbg !1892
  br label %79, !dbg !1893

79:                                               ; preds = %40, %78
  %80 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i32 %41, i32 32, i8* nonnull %9) #19, !dbg !1894
  %81 = load i1, i1* @include_idle, align 1, !dbg !1895
  br i1 %81, label %113, label %82, !dbg !1897

82:                                               ; preds = %79
  %83 = icmp eq i64 %42, 0, !dbg !1898
  br i1 %83, label %110, label %84, !dbg !1901

84:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 %42, metadata !304, metadata !DIExpression()) #19, !dbg !1902
  %85 = load i64, i64* @idle_string.now, align 8, !dbg !1904, !tbaa !1519
  %86 = icmp eq i64 %85, 0, !dbg !1906
  br i1 %86, label %87, label %90, !dbg !1907

87:                                               ; preds = %84
  %88 = call i64 @time(i64* nonnull @idle_string.now) #19, !dbg !1908
  %89 = load i64, i64* @idle_string.now, align 8, !dbg !1909, !tbaa !1519
  br label %90, !dbg !1908

90:                                               ; preds = %87, %84
  %91 = phi i64 [ %89, %87 ], [ %85, %84 ], !dbg !1909
  %92 = sub nsw i64 %91, %42, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %92, metadata !305, metadata !DIExpression()) #19, !dbg !1902
  %93 = icmp slt i64 %92, 60, !dbg !1911
  br i1 %93, label %107, label %94, !dbg !1913

94:                                               ; preds = %90
  %95 = icmp slt i64 %92, 86400, !dbg !1914
  br i1 %95, label %96, label %104, !dbg !1915

96:                                               ; preds = %94
  %97 = trunc i64 %92 to i32, !dbg !1916
  %98 = udiv i32 %97, 3600, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %98, metadata !306, metadata !DIExpression()) #19, !dbg !1917
  %99 = urem i32 %97, 3600, !dbg !1918
  %100 = trunc i32 %99 to i16, !dbg !1919
  %101 = udiv i16 %100, 60, !dbg !1919
  %102 = zext i16 %101 to i32, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %102, metadata !309, metadata !DIExpression()) #19, !dbg !1917
  %103 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %98, i32 %102) #19, !dbg !1920
  br label %107, !dbg !1921

104:                                              ; preds = %94
  %105 = udiv i64 %92, 86400, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %105, metadata !310, metadata !DIExpression()) #19, !dbg !1923
  %106 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), i32 1, i64 22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 %105) #19, !dbg !1924
  br label %107

107:                                              ; preds = %90, %96, %104
  %108 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %90 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %104 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @idle_string.buf, i64 0, i64 0), %96 ], !dbg !1902
  %109 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %108) #19, !dbg !1925
  br label %113, !dbg !1925

110:                                              ; preds = %82
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 5) #19, !dbg !1926
  %112 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %111) #19, !dbg !1926
  br label %113

113:                                              ; preds = %79, %107, %110
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !326, metadata !DIExpression()) #19, !dbg !1927
  %114 = bitcast i64* %2 to i8*, !dbg !1929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #19, !dbg !1929
  %115 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 8, i32 0, !dbg !1930
  %116 = load i32, i32* %115, align 4, !dbg !1930, !tbaa !1931
  %117 = sext i32 %116 to i64, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %117, metadata !327, metadata !DIExpression()) #19, !dbg !1927
  store i64 %117, i64* %2, align 8, !dbg !1932, !tbaa !1519
  call void @llvm.dbg.value(metadata i64* %2, metadata !327, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1927
  %118 = call %struct.tm* @localtime(i64* nonnull %2) #19, !dbg !1933
  call void @llvm.dbg.value(metadata %struct.tm* %118, metadata !328, metadata !DIExpression()) #19, !dbg !1927
  %119 = icmp eq %struct.tm* %118, null, !dbg !1934
  br i1 %119, label %123, label %120, !dbg !1936

120:                                              ; preds = %113
  %121 = load i8*, i8** @time_format, align 8, !dbg !1937, !tbaa !1342
  %122 = call i64 @strftime(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), i64 33, i8* %121, %struct.tm* nonnull %118) #19, !dbg !1939
  br label %126, !dbg !1940

123:                                              ; preds = %113
  %124 = load i64, i64* %2, align 8, !dbg !1941, !tbaa !1519
  call void @llvm.dbg.value(metadata i64 %124, metadata !327, metadata !DIExpression()) #19, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %124, metadata !1942, metadata !DIExpression()) #19, !dbg !1948
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), metadata !1947, metadata !DIExpression()) #19, !dbg !1948
  %125 = call i8* @imaxtostr(i64 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0)) #19, !dbg !1950
  br label %126, !dbg !1951

126:                                              ; preds = %120, %123
  %127 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @time_string.buf, i64 0, i64 0), %120 ], [ %125, %123 ], !dbg !1952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #19, !dbg !1953
  %128 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %127) #19, !dbg !1954
  %129 = load i1, i1* @include_where, align 1, !dbg !1955
  br i1 %129, label %170, label %130, !dbg !1956

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 0, !dbg !1957
  %132 = load i8, i8* %131, align 4, !dbg !1957, !tbaa !1577
  %133 = icmp eq i8 %132, 0, !dbg !1957
  br i1 %133, label %170, label %134, !dbg !1958

134:                                              ; preds = %130
  %135 = getelementptr inbounds [257 x i8], [257 x i8]* %6, i64 0, i64 0, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %135) #19, !dbg !1959
  call void @llvm.dbg.declare(metadata [257 x i8]* %6, metadata !1782, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* null, metadata !1788, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* null, metadata !1789, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %135, metadata !1802, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %131, metadata !1807, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 256, metadata !1808, metadata !DIExpression()), !dbg !1962
  %136 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 5, i64 256, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %136, metadata !1809, metadata !DIExpression()), !dbg !1962
  br label %137, !dbg !1965

137:                                              ; preds = %134, %144
  %138 = phi i8* [ %131, %134 ], [ %141, %144 ]
  %139 = phi i8* [ %135, %134 ], [ %142, %144 ]
  %140 = phi i8 [ %132, %134 ], [ %145, %144 ]
  call void @llvm.dbg.value(metadata i8* %138, metadata !1807, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %139, metadata !1802, metadata !DIExpression()), !dbg !1962
  %141 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %141, metadata !1807, metadata !DIExpression()), !dbg !1962
  %142 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1967
  call void @llvm.dbg.value(metadata i8* %142, metadata !1802, metadata !DIExpression()), !dbg !1962
  store i8 %140, i8* %139, align 1, !dbg !1968, !tbaa !1577, !alias.scope !1969, !noalias !1972
  %143 = icmp ult i8* %141, %136, !dbg !1974
  br i1 %143, label %144, label %147, !dbg !1975, !llvm.loop !1976

144:                                              ; preds = %137
  %145 = load i8, i8* %141, align 1, !dbg !1977, !tbaa !1577, !alias.scope !1972, !noalias !1969
  call void @llvm.dbg.value(metadata i8* %142, metadata !1802, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %141, metadata !1807, metadata !DIExpression()), !dbg !1962
  %146 = icmp eq i8 %145, 0, !dbg !1975
  br i1 %146, label %147, label %137, !dbg !1965

147:                                              ; preds = %137, %144
  call void @llvm.dbg.value(metadata i8* %142, metadata !1802, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %142, metadata !1802, metadata !DIExpression()), !dbg !1962
  store i8 0, i8* %142, align 1, !dbg !1978, !tbaa !1577, !alias.scope !1969, !noalias !1972
  %148 = call i8* @strchr(i8* nonnull %135, i32 58) #22, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %148, metadata !1789, metadata !DIExpression()), !dbg !1961
  %149 = icmp eq i8* %148, null, !dbg !1980
  br i1 %149, label %152, label %150, !dbg !1982

150:                                              ; preds = %147
  %151 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %151, metadata !1789, metadata !DIExpression()), !dbg !1961
  store i8 0, i8* %148, align 1, !dbg !1984, !tbaa !1577
  br label %152, !dbg !1985

152:                                              ; preds = %147, %150
  %153 = phi i8* [ %151, %150 ], [ null, %147 ], !dbg !1961
  call void @llvm.dbg.value(metadata i8* %153, metadata !1789, metadata !DIExpression()), !dbg !1961
  %154 = load i8, i8* %135, align 16, !dbg !1986, !tbaa !1577
  %155 = icmp eq i8 %154, 0, !dbg !1986
  br i1 %155, label %158, label %156, !dbg !1988

156:                                              ; preds = %152
  %157 = call noalias i8* @canon_host(i8* nonnull %135) #19, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %157, metadata !1788, metadata !DIExpression()), !dbg !1961
  br label %158, !dbg !1990

158:                                              ; preds = %152, %156
  %159 = phi i8* [ %157, %156 ], [ null, %152 ], !dbg !1961
  call void @llvm.dbg.value(metadata i8* %159, metadata !1788, metadata !DIExpression()), !dbg !1961
  %160 = icmp eq i8* %159, null, !dbg !1991
  %161 = select i1 %160, i8* %135, i8* %159, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %161, metadata !1788, metadata !DIExpression()), !dbg !1961
  %162 = icmp eq i8* %153, null, !dbg !1994
  br i1 %162, label %165, label %163, !dbg !1996

163:                                              ; preds = %158
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %161, i8* nonnull %153) #19, !dbg !1997
  br label %167, !dbg !1997

165:                                              ; preds = %158
  %166 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %161) #19, !dbg !1998
  br label %167

167:                                              ; preds = %165, %163
  br i1 %160, label %169, label %168, !dbg !1999

168:                                              ; preds = %167
  call void @free(i8* %161) #19, !dbg !2000
  br label %169, !dbg !2000

169:                                              ; preds = %167, %168
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %135) #19, !dbg !2002
  br label %170, !dbg !2003

170:                                              ; preds = %130, %126, %169
  call void @llvm.dbg.value(metadata i32 10, metadata !1562, metadata !DIExpression()) #19, !dbg !2004
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2006, !tbaa !1342
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5, !dbg !2006
  %173 = load i8*, i8** %172, align 8, !dbg !2006, !tbaa !1571
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6, !dbg !2006
  %175 = load i8*, i8** %174, align 8, !dbg !2006, !tbaa !1574
  %176 = icmp ult i8* %173, %175, !dbg !2006
  br i1 %176, label %179, label %177, !dbg !2006, !prof !1575, !misexpect !1576

177:                                              ; preds = %170
  %178 = call i32 @__overflow(%struct._IO_FILE* %171, i32 10) #19, !dbg !2006
  br label %181, !dbg !2006

179:                                              ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !2006
  store i8* %180, i8** %172, align 8, !dbg !2006, !tbaa !1571
  store i8 10, i8* %173, align 1, !dbg !2006, !tbaa !1577
  br label %181, !dbg !2006

181:                                              ; preds = %177, %179
  call void @llvm.lifetime.end.p0i8(i64 38, i8* nonnull %8) #19, !dbg !2007
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #19, !dbg !2007
  ret void, !dbg !2007
}

; Function Attrs: nofree nounwind
declare !dbg !205 %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @create_fullname(i8* nocapture readonly %0, i8* nocapture readonly %1) unnamed_addr #8 !dbg !2008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %1, metadata !2011, metadata !DIExpression()), !dbg !2027
  %3 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %14, metadata !2012, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %0, metadata !2029, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2035
  br label %4, !dbg !2037

4:                                                ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %11, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %10, %4 ], !dbg !2035
  call void @llvm.dbg.value(metadata i64 %6, metadata !2034, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8* %5, metadata !2029, metadata !DIExpression()), !dbg !2035
  %7 = load i8, i8* %5, align 1, !dbg !2038, !tbaa !1577
  %8 = icmp eq i8 %7, 38, !dbg !2041
  %9 = zext i1 %8 to i64, !dbg !2042
  %10 = add i64 %6, %9, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %10, metadata !2034, metadata !DIExpression()), !dbg !2035
  %11 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %11, metadata !2029, metadata !DIExpression()), !dbg !2035
  %12 = icmp eq i8 %7, 0, !dbg !2044
  br i1 %12, label %13, label %4, !dbg !2044, !llvm.loop !2045

13:                                               ; preds = %4
  %14 = add i64 %3, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %10, metadata !2015, metadata !DIExpression()), !dbg !2027
  %15 = icmp eq i64 %10, 0, !dbg !2048
  br i1 %15, label %26, label %16, !dbg !2049

16:                                               ; preds = %13
  %17 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #22, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %17, metadata !2016, metadata !DIExpression()), !dbg !2051
  %18 = mul i64 %17, %10, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %18, metadata !2019, metadata !DIExpression()), !dbg !2051
  %19 = sub i64 %18, %10, !dbg !2053
  %20 = add i64 %19, %14, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %20, metadata !2012, metadata !DIExpression()), !dbg !2027
  %21 = udiv i64 9223372036854775807, %10, !dbg !2055
  %22 = icmp ult i64 %21, %17, !dbg !2055
  %23 = icmp ult i64 %20, %18, !dbg !2057
  %24 = or i1 %22, %23, !dbg !2058
  br i1 %24, label %25, label %26, !dbg !2058

25:                                               ; preds = %16
  tail call void @xalloc_die() #23, !dbg !2059
  unreachable, !dbg !2059

26:                                               ; preds = %16, %13
  %27 = phi i64 [ %14, %13 ], [ %20, %16 ], !dbg !2027
  call void @llvm.dbg.value(metadata i64 %27, metadata !2012, metadata !DIExpression()), !dbg !2027
  %28 = tail call noalias i8* @xmalloc(i64 %27) #19, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %28, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %28, metadata !2014, metadata !DIExpression()), !dbg !2027
  %29 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2061
  br label %30, !dbg !2063

30:                                               ; preds = %66, %26
  %31 = phi i8* [ %28, %26 ], [ %67, %66 ], !dbg !2027
  %32 = phi i8* [ %0, %26 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !2010, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  %33 = load i8, i8* %32, align 1, !dbg !2064, !tbaa !1577
  switch i8 %33, label %64 [
    i8 0, label %69
    i8 38, label %34
  ], !dbg !2063

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8* %1, metadata !2020, metadata !DIExpression()), !dbg !2065
  %35 = tail call i16** @__ctype_b_loc() #25, !dbg !2066
  %36 = load i16*, i16** %35, align 8, !dbg !2066, !tbaa !1342
  %37 = load i8, i8* %1, align 1, !dbg !2066, !tbaa !1577
  %38 = zext i8 %37 to i64, !dbg !2066
  %39 = getelementptr inbounds i16, i16* %36, i64 %38, !dbg !2066
  %40 = load i16, i16* %39, align 2, !dbg !2066, !tbaa !2067
  %41 = and i16 %40, 512, !dbg !2066
  %42 = icmp eq i16 %41, 0, !dbg !2066
  br i1 %42, label %51, label %43, !dbg !2068

43:                                               ; preds = %34
  %44 = tail call i32** @__ctype_toupper_loc() #25, !dbg !2069
  %45 = load i32*, i32** %44, align 8, !dbg !2069, !tbaa !1342
  call void @llvm.dbg.value(metadata i8* %29, metadata !2020, metadata !DIExpression()), !dbg !2065
  %46 = getelementptr inbounds i32, i32* %45, i64 %38, !dbg !2069
  %47 = load i32, i32* %46, align 4, !dbg !2069, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %47, metadata !2024, metadata !DIExpression()), !dbg !2070
  %48 = trunc i32 %47 to i8, !dbg !2071
  %49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %49, metadata !2014, metadata !DIExpression()), !dbg !2027
  store i8 %48, i8* %31, align 1, !dbg !2073, !tbaa !1577
  %50 = load i8, i8* %29, align 1, !dbg !2074, !tbaa !1577
  br label %51, !dbg !2075

51:                                               ; preds = %34, %43
  %52 = phi i8 [ %50, %43 ], [ %37, %34 ], !dbg !2074
  %53 = phi i8* [ %49, %43 ], [ %31, %34 ], !dbg !2027
  %54 = phi i8* [ %29, %43 ], [ %1, %34 ], !dbg !2065
  call void @llvm.dbg.value(metadata i8* %54, metadata !2020, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %53, metadata !2014, metadata !DIExpression()), !dbg !2027
  %55 = icmp eq i8 %52, 0, !dbg !2076
  br i1 %55, label %66, label %56, !dbg !2076

56:                                               ; preds = %51, %56
  %57 = phi i8 [ %62, %56 ], [ %52, %51 ]
  %58 = phi i8* [ %60, %56 ], [ %54, %51 ]
  %59 = phi i8* [ %61, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata i8* %58, metadata !2020, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %59, metadata !2014, metadata !DIExpression()), !dbg !2027
  %60 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %60, metadata !2020, metadata !DIExpression()), !dbg !2065
  %61 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !2078
  call void @llvm.dbg.value(metadata i8* %61, metadata !2014, metadata !DIExpression()), !dbg !2027
  store i8 %57, i8* %59, align 1, !dbg !2079, !tbaa !1577
  %62 = load i8, i8* %60, align 1, !dbg !2074, !tbaa !1577
  %63 = icmp eq i8 %62, 0, !dbg !2076
  br i1 %63, label %66, label %56, !dbg !2076, !llvm.loop !2080

64:                                               ; preds = %30
  %65 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !2081
  call void @llvm.dbg.value(metadata i8* %65, metadata !2014, metadata !DIExpression()), !dbg !2027
  store i8 %33, i8* %31, align 1, !dbg !2083, !tbaa !1577
  br label %66

66:                                               ; preds = %56, %51, %64
  %67 = phi i8* [ %65, %64 ], [ %53, %51 ], [ %61, %56 ], !dbg !2084
  call void @llvm.dbg.value(metadata i8* %67, metadata !2014, metadata !DIExpression()), !dbg !2027
  %68 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %68, metadata !2010, metadata !DIExpression()), !dbg !2027
  br label %30, !dbg !2063, !llvm.loop !2086

69:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %31, metadata !2014, metadata !DIExpression()), !dbg !2027
  store i8 0, i8* %31, align 1, !dbg !2088, !tbaa !1577
  ret i8* %28, !dbg !2089
}

; Function Attrs: nounwind
declare !dbg !221 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i8* @stpcpy(i8*, i8* nocapture readonly) #11

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !265 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !231 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !236 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !256 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host(i8* %0) local_unnamed_addr #8 !dbg !2090 {
  %2 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %0, metadata !398, metadata !DIExpression()) #19, !dbg !2094
  call void @llvm.dbg.value(metadata i32* @last_cherror, metadata !399, metadata !DIExpression()) #19, !dbg !2094
  call void @llvm.dbg.value(metadata i8* null, metadata !400, metadata !DIExpression()) #19, !dbg !2094
  %3 = bitcast %struct.addrinfo** %2 to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #19, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !401, metadata !DIExpression()) #19, !dbg !2094
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8, !dbg !2097, !tbaa !1342
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !2098, !tbaa !2099
  call void @llvm.dbg.value(metadata %struct.addrinfo** %2, metadata !401, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2094
  %4 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %2) #19, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %4, metadata !402, metadata !DIExpression()) #19, !dbg !2094
  %5 = icmp eq i32 %4, 0, !dbg !2102
  br i1 %5, label %6, label %17, !dbg !2104

6:                                                ; preds = %1
  %7 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !2105, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.addrinfo* %7, metadata !401, metadata !DIExpression()) #19, !dbg !2094
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i64 0, i32 6, !dbg !2107
  %9 = load i8*, i8** %8, align 8, !dbg !2107, !tbaa !2108
  %10 = icmp eq i8* %9, null, !dbg !2105
  %11 = select i1 %10, i8* %0, i8* %9, !dbg !2105
  %12 = call noalias i8* @strdup(i8* %11) #19, !dbg !2109
  call void @llvm.dbg.value(metadata i8* %12, metadata !400, metadata !DIExpression()) #19, !dbg !2094
  %13 = icmp eq i8* %12, null, !dbg !2110
  br i1 %13, label %14, label %15, !dbg !2112

14:                                               ; preds = %6
  store i32 -10, i32* @last_cherror, align 4, !dbg !2113, !tbaa !1485
  br label %15, !dbg !2114

15:                                               ; preds = %14, %6
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8, !dbg !2115, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.addrinfo* %16, metadata !401, metadata !DIExpression()) #19, !dbg !2094
  call void @freeaddrinfo(%struct.addrinfo* %16) #19, !dbg !2116
  br label %18, !dbg !2117

17:                                               ; preds = %1
  store i32 %4, i32* @last_cherror, align 4, !dbg !2118, !tbaa !1485
  br label %18, !dbg !2120

18:                                               ; preds = %15, %17
  %19 = phi i8* [ null, %17 ], [ %12, %15 ], !dbg !2094
  call void @llvm.dbg.value(metadata i8* %19, metadata !400, metadata !DIExpression()) #19, !dbg !2094
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #19, !dbg !2121
  ret i8* %19, !dbg !2122
}

declare !dbg !356 i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !387 void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @canon_host_r(i8* %0, i32* %1) local_unnamed_addr #8 !dbg !396 {
  %3 = alloca %struct.addrinfo*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !398, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32* %1, metadata !399, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* null, metadata !400, metadata !DIExpression()), !dbg !2123
  %4 = bitcast %struct.addrinfo** %3 to i8*, !dbg !2124
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19, !dbg !2124
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !401, metadata !DIExpression()), !dbg !2123
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !2125, !tbaa !1342
  store i32 2, i32* getelementptr inbounds (%struct.addrinfo, %struct.addrinfo* @canon_host_r.hints, i64 0, i32 0), align 8, !dbg !2126, !tbaa !2099
  call void @llvm.dbg.value(metadata %struct.addrinfo** %3, metadata !401, metadata !DIExpression(DW_OP_deref)), !dbg !2123
  %5 = call i32 @getaddrinfo(i8* %0, i8* null, %struct.addrinfo* nonnull @canon_host_r.hints, %struct.addrinfo** nonnull %3) #19, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %5, metadata !402, metadata !DIExpression()), !dbg !2123
  %6 = icmp eq i32 %5, 0, !dbg !2128
  br i1 %6, label %7, label %20, !dbg !2129

7:                                                ; preds = %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !2130, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.addrinfo* %8, metadata !401, metadata !DIExpression()), !dbg !2123
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i64 0, i32 6, !dbg !2131
  %10 = load i8*, i8** %9, align 8, !dbg !2131, !tbaa !2108
  %11 = icmp eq i8* %10, null, !dbg !2130
  %12 = select i1 %11, i8* %0, i8* %10, !dbg !2130
  %13 = call noalias i8* @strdup(i8* %12) #19, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %13, metadata !400, metadata !DIExpression()), !dbg !2123
  %14 = icmp eq i8* %13, null, !dbg !2133
  %15 = icmp ne i32* %1, null, !dbg !2134
  %16 = and i1 %15, %14, !dbg !2135
  br i1 %16, label %17, label %18, !dbg !2135

17:                                               ; preds = %7
  store i32 -10, i32* %1, align 4, !dbg !2136, !tbaa !1485
  br label %18, !dbg !2137

18:                                               ; preds = %7, %17
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8, !dbg !2138, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.addrinfo* %19, metadata !401, metadata !DIExpression()), !dbg !2123
  call void @freeaddrinfo(%struct.addrinfo* %19) #19, !dbg !2139
  br label %23, !dbg !2140

20:                                               ; preds = %2
  %21 = icmp eq i32* %1, null, !dbg !2141
  br i1 %21, label %23, label %22, !dbg !2142

22:                                               ; preds = %20
  store i32 %5, i32* %1, align 4, !dbg !2143, !tbaa !1485
  br label %23, !dbg !2144

23:                                               ; preds = %20, %22, %18
  %24 = phi i8* [ null, %22 ], [ null, %20 ], [ %13, %18 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8* %24, metadata !400, metadata !DIExpression()), !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19, !dbg !2145
  ret i8* %24, !dbg !2146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @ch_strerror() local_unnamed_addr #8 !dbg !2147 {
  %1 = load i32, i32* @last_cherror, align 4, !dbg !2148, !tbaa !1485
  %2 = tail call i8* @gai_strerror(i32 %1) #19, !dbg !2149
  ret i8* %2, !dbg !2150
}

; Function Attrs: nounwind
declare !dbg !390 i8* @gai_strerror(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i8* %0, i8** @file_name, align 8, !dbg !2155, !tbaa !1342
  ret void, !dbg !2156
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2157 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2161, metadata !DIExpression()), !dbg !2162
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2163, !tbaa !2164
  ret void, !dbg !2166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2167 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2172, !tbaa !1342
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2173
  %3 = icmp eq i32 %2, 0, !dbg !2174
  br i1 %3, label %22, label %4, !dbg !2175

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2176, !tbaa !2164, !range !2177
  %6 = icmp eq i8 %5, 0, !dbg !2176
  br i1 %6, label %11, label %7, !dbg !2178

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2179
  %9 = load i32, i32* %8, align 4, !dbg !2179, !tbaa !1485
  %10 = icmp eq i32 %9, 32, !dbg !2180
  br i1 %10, label %22, label %11, !dbg !2181

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 5) #19, !dbg !2182
  call void @llvm.dbg.value(metadata i8* %12, metadata !2169, metadata !DIExpression()), !dbg !2183
  %13 = load i8*, i8** @file_name, align 8, !dbg !2184, !tbaa !1342
  %14 = icmp eq i8* %13, null, !dbg !2184
  %15 = tail call i32* @__errno_location() #25, !dbg !2186
  %16 = load i32, i32* %15, align 4, !dbg !2186, !tbaa !1485
  br i1 %14, label %19, label %17, !dbg !2187

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2188
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2189
  br label %20, !dbg !2189

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.80, i64 0, i64 0), i8* %12) #19, !dbg !2190
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2191, !tbaa !1485
  tail call void @_exit(i32 %21) #23, !dbg !2192
  unreachable, !dbg !2192

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2193, !tbaa !1342
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2195
  %25 = icmp eq i32 %24, 0, !dbg !2196
  br i1 %25, label %28, label %26, !dbg !2197

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2198, !tbaa !1485
  tail call void @_exit(i32 %27) #23, !dbg !2199
  unreachable, !dbg !2199

28:                                               ; preds = %22
  ret void, !dbg !2200
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2201 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2203, metadata !DIExpression()), !dbg !2205
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !2206
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2204, metadata !DIExpression()), !dbg !2207
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !2208
  %5 = icmp eq i32 %4, 0, !dbg !2208
  br i1 %5, label %6, label %13, !dbg !2210

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2211
  %8 = load i16, i16* %7, align 16, !dbg !2211
  %9 = icmp eq i16 %8, 67, !dbg !2211
  br i1 %9, label %13, label %10, !dbg !2212

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i64 0, i64 0), i64 6), !dbg !2213
  %12 = icmp ne i32 %11, 0, !dbg !2214
  br label %13, !dbg !2212

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2205
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !2215
  ret i1 %14, !dbg !2215
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @imaxtostr(i64 %0, i8* %1) local_unnamed_addr #13 !dbg !2216 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2222, metadata !DIExpression()), !dbg !2224
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %3, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i8 0, i8* %3, align 1, !dbg !2226, !tbaa !1577
  %4 = icmp slt i64 %0, 0, !dbg !2227
  br i1 %4, label %5, label %17, !dbg !2229

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %6, metadata !2221, metadata !DIExpression()), !dbg !2224
  %8 = srem i64 %6, 10, !dbg !2230
  %9 = trunc i64 %8 to i8, !dbg !2232
  %10 = sub nsw i8 48, %9, !dbg !2232
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %11, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i8 %10, i8* %11, align 1, !dbg !2234, !tbaa !1577
  %12 = sdiv i64 %6, 10, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %12, metadata !2221, metadata !DIExpression()), !dbg !2224
  %13 = add i64 %6, 9, !dbg !2236
  %14 = icmp ugt i64 %13, 18, !dbg !2236
  br i1 %14, label %5, label %15, !dbg !2237, !llvm.loop !2238

15:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %16, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i8 45, i8* %16, align 1, !dbg !2242, !tbaa !1577
  br label %27, !dbg !2243

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2224
  call void @llvm.dbg.value(metadata i8* %19, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %18, metadata !2221, metadata !DIExpression()), !dbg !2224
  %20 = srem i64 %18, 10, !dbg !2244
  %21 = trunc i64 %20 to i8, !dbg !2246
  %22 = add nsw i8 %21, 48, !dbg !2246
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %23, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i8 %22, i8* %23, align 1, !dbg !2248, !tbaa !1577
  %24 = sdiv i64 %18, 10, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %24, metadata !2221, metadata !DIExpression()), !dbg !2224
  %25 = add i64 %18, 9, !dbg !2250
  %26 = icmp ugt i64 %25, 18, !dbg !2250
  br i1 %26, label %17, label %27, !dbg !2251, !llvm.loop !2252

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2255
  call void @llvm.dbg.value(metadata i8* %28, metadata !2223, metadata !DIExpression()), !dbg !2224
  ret i8* %28, !dbg !2256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2257 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()), !dbg !2262
  %2 = icmp eq i8* %0, null, !dbg !2263
  br i1 %2, label %3, label %6, !dbg !2265

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2266, !tbaa !1342
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2268
  tail call void @abort() #23, !dbg !2269
  unreachable, !dbg !2269

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2270
  call void @llvm.dbg.value(metadata i8* %7, metadata !2260, metadata !DIExpression()), !dbg !2262
  %8 = icmp eq i8* %7, null, !dbg !2271
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2272
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2272
  call void @llvm.dbg.value(metadata i8* %10, metadata !2261, metadata !DIExpression()), !dbg !2262
  %11 = ptrtoint i8* %10 to i64, !dbg !2273
  %12 = ptrtoint i8* %0 to i64, !dbg !2273
  %13 = sub i64 %11, %12, !dbg !2273
  %14 = icmp sgt i64 %13, 6, !dbg !2275
  br i1 %14, label %15, label %24, !dbg !2276

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2277
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #22, !dbg !2278
  %18 = icmp eq i32 %17, 0, !dbg !2279
  br i1 %18, label %19, label %24, !dbg !2280

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2259, metadata !DIExpression()), !dbg !2262
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #22, !dbg !2281
  %21 = icmp eq i32 %20, 0, !dbg !2284
  br i1 %21, label %22, label %24, !dbg !2285

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %23, metadata !2259, metadata !DIExpression()), !dbg !2262
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2288, !tbaa !1342
  br label %24, !dbg !2289

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2259, metadata !DIExpression()), !dbg !2262
  store i8* %25, i8** @program_name, align 8, !dbg !2290, !tbaa !1342
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2291, !tbaa !1342
  ret void, !dbg !2292
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2293 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2298, metadata !DIExpression()), !dbg !2301
  %2 = tail call i32* @__errno_location() #25, !dbg !2302
  %3 = load i32, i32* %2, align 4, !dbg !2302, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %3, metadata !2299, metadata !DIExpression()), !dbg !2301
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2303
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2303
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2303
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2304
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2300, metadata !DIExpression()), !dbg !2301
  store i32 %3, i32* %2, align 4, !dbg !2305, !tbaa !1485
  ret %struct.quoting_options* %8, !dbg !2306
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2307 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2311, metadata !DIExpression()), !dbg !2312
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2313
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2313
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2314
  %5 = load i32, i32* %4, align 8, !dbg !2314, !tbaa !2315
  ret i32 %5, !dbg !2317
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2318 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %1, metadata !2323, metadata !DIExpression()), !dbg !2324
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2325
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2325
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2326
  store i32 %1, i32* %5, align 8, !dbg !2327, !tbaa !2315
  ret void, !dbg !2328
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2329 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2333, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %1, metadata !2334, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %2, metadata !2335, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %1, metadata !2336, metadata !DIExpression()), !dbg !2341
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2342
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2342
  %6 = lshr i8 %1, 5, !dbg !2343
  %7 = zext i8 %6 to i64, !dbg !2343
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2344
  call void @llvm.dbg.value(metadata i32* %8, metadata !2337, metadata !DIExpression()), !dbg !2341
  %9 = and i8 %1, 31, !dbg !2345
  %10 = zext i8 %9 to i32, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %10, metadata !2339, metadata !DIExpression()), !dbg !2341
  %11 = load i32, i32* %8, align 4, !dbg !2346, !tbaa !1485
  %12 = lshr i32 %11, %10, !dbg !2347
  %13 = and i32 %12, 1, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %13, metadata !2340, metadata !DIExpression()), !dbg !2341
  %14 = and i32 %2, 1, !dbg !2349
  %15 = xor i32 %13, %14, !dbg !2350
  %16 = shl i32 %15, %10, !dbg !2351
  %17 = xor i32 %16, %11, !dbg !2352
  store i32 %17, i32* %8, align 4, !dbg !2352, !tbaa !1485
  ret i32 %13, !dbg !2353
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2354 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %1, metadata !2359, metadata !DIExpression()), !dbg !2361
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2362
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2358, metadata !DIExpression()), !dbg !2361
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2365
  %6 = load i32, i32* %5, align 4, !dbg !2365, !tbaa !2366
  call void @llvm.dbg.value(metadata i32 %6, metadata !2360, metadata !DIExpression()), !dbg !2361
  store i32 %1, i32* %5, align 4, !dbg !2367, !tbaa !2366
  ret i32 %6, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2369 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %2, metadata !2375, metadata !DIExpression()), !dbg !2376
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2377
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2373, metadata !DIExpression()), !dbg !2376
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2380
  store i32 10, i32* %6, align 8, !dbg !2381, !tbaa !2315
  %7 = icmp ne i8* %1, null, !dbg !2382
  %8 = icmp ne i8* %2, null, !dbg !2384
  %9 = and i1 %7, %8, !dbg !2385
  br i1 %9, label %11, label %10, !dbg !2385

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2386
  unreachable, !dbg !2386

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2387
  store i8* %1, i8** %12, align 8, !dbg !2388, !tbaa !2389
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2390
  store i8* %2, i8** %13, align 8, !dbg !2391, !tbaa !2392
  ret void, !dbg !2393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %1, metadata !2399, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %2, metadata !2400, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %3, metadata !2401, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2402, metadata !DIExpression()), !dbg !2406
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2407
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2403, metadata !DIExpression()), !dbg !2406
  %8 = tail call i32* @__errno_location() #25, !dbg !2408
  %9 = load i32, i32* %8, align 4, !dbg !2408, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %9, metadata !2404, metadata !DIExpression()), !dbg !2406
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2409
  %11 = load i32, i32* %10, align 8, !dbg !2409, !tbaa !2315
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2410
  %13 = load i32, i32* %12, align 4, !dbg !2410, !tbaa !2366
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2411
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2412
  %16 = load i8*, i8** %15, align 8, !dbg !2412, !tbaa !2389
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2413
  %18 = load i8*, i8** %17, align 8, !dbg !2413, !tbaa !2392
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %19, metadata !2405, metadata !DIExpression()), !dbg !2406
  store i32 %9, i32* %8, align 4, !dbg !2415, !tbaa !1485
  ret i64 %19, !dbg !2416
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2417 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %1, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %2, metadata !2425, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %3, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %4, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %5, metadata !2428, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32* %6, metadata !2429, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %7, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %8, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* null, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2436, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2437, metadata !DIExpression()), !dbg !2481
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !2482
  %14 = icmp eq i64 %13, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i1 %14, metadata !2438, metadata !DIExpression()), !dbg !2481
  %15 = lshr i32 %5, 1, !dbg !2484
  %16 = trunc i32 %15 to i8, !dbg !2484
  %17 = and i8 %16, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i8 %17, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2481
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2485
  %19 = and i32 %5, 4, !dbg !2487
  %20 = icmp eq i32 %19, 0, !dbg !2487
  %21 = and i32 %5, 1, !dbg !2490
  %22 = icmp eq i32 %21, 0, !dbg !2490
  %23 = bitcast i64* %10 to i8*, !dbg !2493
  %24 = bitcast i32* %12 to i8*, !dbg !2494
  %25 = icmp eq i32* %6, null, !dbg !2495
  br label %26, !dbg !2497

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2498
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2499
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2500
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2501
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2481
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2502
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2503
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2504
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %38, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %37, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %36, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %35, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %34, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %33, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %32, metadata !2436, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %31, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %30, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %29, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %28, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %27, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2475), !dbg !2505
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
  ], !dbg !2506

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %35, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 5, metadata !2427, metadata !DIExpression()), !dbg !2481
  br label %92, !dbg !2507

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 5, metadata !2427, metadata !DIExpression()), !dbg !2481
  %42 = and i8 %35, 1, !dbg !2509
  %43 = icmp eq i8 %42, 0, !dbg !2509
  br i1 %43, label %44, label %92, !dbg !2507

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2511
  br i1 %45, label %92, label %46, !dbg !2514

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2511, !tbaa !1577
  br label %92, !dbg !2511

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 %27), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %48, metadata !2430, metadata !DIExpression()), !dbg !2481
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 %27), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %49, metadata !2431, metadata !DIExpression()), !dbg !2481
  br label %50, !dbg !2520

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %51, metadata !2430, metadata !DIExpression()), !dbg !2481
  %53 = and i8 %35, 1, !dbg !2521
  %54 = icmp eq i8 %53, 0, !dbg !2521
  br i1 %54, label %55, label %70, !dbg !2523

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2433, metadata !DIExpression()), !dbg !2481
  %56 = load i8, i8* %51, align 1, !dbg !2524, !tbaa !1577
  %57 = icmp eq i8 %56, 0, !dbg !2527
  br i1 %57, label %70, label %58, !dbg !2527

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %61, metadata !2433, metadata !DIExpression()), !dbg !2481
  %62 = icmp ult i64 %61, %39, !dbg !2528
  br i1 %62, label %63, label %65, !dbg !2531

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2528
  store i8 %59, i8* %64, align 1, !dbg !2528, !tbaa !1577
  br label %65, !dbg !2528

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %66, metadata !2433, metadata !DIExpression()), !dbg !2481
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2532
  call void @llvm.dbg.value(metadata i8* %67, metadata !2435, metadata !DIExpression()), !dbg !2481
  %68 = load i8, i8* %67, align 1, !dbg !2524, !tbaa !1577
  %69 = icmp eq i8 %68, 0, !dbg !2527
  br i1 %69, label %70, label %58, !dbg !2527, !llvm.loop !2533

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2535
  call void @llvm.dbg.value(metadata i64 %71, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %52, metadata !2435, metadata !DIExpression()), !dbg !2481
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %72, metadata !2436, metadata !DIExpression()), !dbg !2481
  br label %92, !dbg !2537

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2437, metadata !DIExpression()), !dbg !2481
  br label %74, !dbg !2538

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %75, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2439, metadata !DIExpression()), !dbg !2481
  br label %76, !dbg !2539

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2501
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %78, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %77, metadata !2437, metadata !DIExpression()), !dbg !2481
  %79 = and i8 %78, 1, !dbg !2540
  %80 = icmp eq i8 %79, 0, !dbg !2540
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2542
  br label %82, !dbg !2542

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2481
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2484
  call void @llvm.dbg.value(metadata i8 %84, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %83, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  %85 = and i8 %84, 1, !dbg !2543
  %86 = icmp eq i8 %85, 0, !dbg !2543
  br i1 %86, label %87, label %92, !dbg !2545

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2546
  br i1 %88, label %92, label %89, !dbg !2549

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2546, !tbaa !1577
  br label %92, !dbg !2546

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2481
  br label %92, !dbg !2550

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2551
  unreachable, !dbg !2551

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2535
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %40 ], !dbg !2481
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2481
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2481
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %100, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %98, metadata !2436, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %96, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %93, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, metadata !2432, metadata !DIExpression()), !dbg !2481
  %101 = and i8 %99, 1, !dbg !2552
  %102 = icmp ne i8 %101, 0, !dbg !2552
  %103 = icmp ne i32 %93, 2, !dbg !2552
  %104 = and i1 %103, %102, !dbg !2552
  %105 = icmp ne i64 %98, 0, !dbg !2552
  %106 = and i1 %105, %104, !dbg !2552
  %107 = icmp ugt i64 %98, 1, !dbg !2552
  %108 = and i8 %100, 1, !dbg !2554
  %109 = icmp eq i8 %108, 0, !dbg !2554
  %110 = icmp eq i32 %93, 2, !dbg !2557
  %111 = or i1 %103, %109, !dbg !2559
  %112 = icmp ne i8 %108, 0, !dbg !2561
  %113 = and i1 %110, %112, !dbg !2561
  %114 = xor i1 %102, true, !dbg !2562
  %115 = xor i1 %104, true, !dbg !2495
  %116 = and i1 %109, %115, !dbg !2495
  %117 = or i1 %25, %116, !dbg !2495
  %118 = and i8 %99, %100, !dbg !2563
  %119 = and i8 %118, 1, !dbg !2563
  %120 = icmp ne i8 %119, 0, !dbg !2563
  %121 = and i1 %120, %105, !dbg !2563
  br label %122, !dbg !2565

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2566
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2535
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2498
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2502
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2503
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2504
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %126, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %123, metadata !2432, metadata !DIExpression()), !dbg !2481
  %131 = icmp eq i64 %126, -1, !dbg !2567
  br i1 %131, label %132, label %136, !dbg !2568

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2569
  %134 = load i8, i8* %133, align 1, !dbg !2569, !tbaa !1577
  %135 = icmp eq i8 %134, 0, !dbg !2570
  br i1 %135, label %581, label %138, !dbg !2571

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2572
  br i1 %137, label %581, label %138, !dbg !2571

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2573
  br i1 %106, label %139, label %154, !dbg !2574

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2575
  %141 = and i1 %107, %131, !dbg !2576
  br i1 %141, label %142, label %144, !dbg !2576

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %143, metadata !2426, metadata !DIExpression()), !dbg !2481
  br label %144, !dbg !2578

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2426, metadata !DIExpression()), !dbg !2481
  %146 = icmp ugt i64 %140, %145, !dbg !2579
  br i1 %146, label %154, label %147, !dbg !2580

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2581
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2582
  %150 = icmp ne i32 %149, 0, !dbg !2583
  %151 = or i1 %150, %109, !dbg !2584
  %152 = xor i1 %150, true, !dbg !2584
  %153 = zext i1 %152 to i8, !dbg !2584
  br i1 %151, label %154, label %639, !dbg !2584

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2573
  call void @llvm.dbg.value(metadata i8 %156, metadata !2448, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 %155, metadata !2426, metadata !DIExpression()), !dbg !2481
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2585
  %158 = load i8, i8* %157, align 1, !dbg !2585, !tbaa !1577
  call void @llvm.dbg.value(metadata i8 %158, metadata !2443, metadata !DIExpression()), !dbg !2573
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
  ], !dbg !2586

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2587

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2588

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2449, metadata !DIExpression()), !dbg !2573
  %162 = and i8 %127, 1, !dbg !2591
  %163 = icmp eq i8 %162, 0, !dbg !2591
  %164 = and i1 %110, %163, !dbg !2591
  br i1 %164, label %165, label %181, !dbg !2591

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2593
  br i1 %166, label %167, label %169, !dbg !2597

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2593
  store i8 39, i8* %168, align 1, !dbg !2593, !tbaa !1577
  br label %169, !dbg !2593

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %170, metadata !2433, metadata !DIExpression()), !dbg !2481
  %171 = icmp ult i64 %170, %130, !dbg !2598
  br i1 %171, label %172, label %174, !dbg !2601

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2598
  store i8 36, i8* %173, align 1, !dbg !2598, !tbaa !1577
  br label %174, !dbg !2598

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %175, metadata !2433, metadata !DIExpression()), !dbg !2481
  %176 = icmp ult i64 %175, %130, !dbg !2602
  br i1 %176, label %177, label %179, !dbg !2605

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2602
  store i8 39, i8* %178, align 1, !dbg !2602, !tbaa !1577
  br label %179, !dbg !2602

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %180, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %181, !dbg !2606

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2481
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %183, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %182, metadata !2433, metadata !DIExpression()), !dbg !2481
  %184 = icmp ult i64 %182, %130, !dbg !2607
  br i1 %184, label %185, label %187, !dbg !2610

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2607
  store i8 92, i8* %186, align 1, !dbg !2607, !tbaa !1577
  br label %187, !dbg !2607

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %188, metadata !2433, metadata !DIExpression()), !dbg !2481
  br i1 %103, label %189, label %463, !dbg !2611

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2613
  %191 = icmp ult i64 %190, %155, !dbg !2614
  br i1 %191, label %192, label %463, !dbg !2615

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2616
  %194 = load i8, i8* %193, align 1, !dbg !2616, !tbaa !1577
  %195 = add i8 %194, -48, !dbg !2617
  %196 = icmp ult i8 %195, 10, !dbg !2617
  br i1 %196, label %197, label %463, !dbg !2617

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2618
  br i1 %198, label %199, label %201, !dbg !2622

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2618
  store i8 48, i8* %200, align 1, !dbg !2618, !tbaa !1577
  br label %201, !dbg !2618

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %202, metadata !2433, metadata !DIExpression()), !dbg !2481
  %203 = icmp ult i64 %202, %130, !dbg !2623
  br i1 %203, label %204, label %206, !dbg !2626

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2623
  store i8 48, i8* %205, align 1, !dbg !2623, !tbaa !1577
  br label %206, !dbg !2623

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %207, metadata !2433, metadata !DIExpression()), !dbg !2481
  br label %463, !dbg !2627

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2628

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2629

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2630

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2631

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2632
  %214 = icmp ult i64 %213, %155, !dbg !2633
  br i1 %214, label %215, label %463, !dbg !2634

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2635
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2636
  %218 = load i8, i8* %217, align 1, !dbg !2636, !tbaa !1577
  %219 = icmp eq i8 %218, 63, !dbg !2637
  br i1 %219, label %220, label %463, !dbg !2638

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2639
  %222 = load i8, i8* %221, align 1, !dbg !2639, !tbaa !1577
  %223 = sext i8 %222 to i32, !dbg !2639
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
  ], !dbg !2640

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2641

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 %213, metadata !2432, metadata !DIExpression()), !dbg !2481
  %226 = icmp ult i64 %124, %130, !dbg !2643
  br i1 %226, label %227, label %229, !dbg !2646

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2643
  store i8 63, i8* %228, align 1, !dbg !2643, !tbaa !1577
  br label %229, !dbg !2643

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %230, metadata !2433, metadata !DIExpression()), !dbg !2481
  %231 = icmp ult i64 %230, %130, !dbg !2647
  br i1 %231, label %232, label %234, !dbg !2650

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2647
  store i8 34, i8* %233, align 1, !dbg !2647, !tbaa !1577
  br label %234, !dbg !2647

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %235, metadata !2433, metadata !DIExpression()), !dbg !2481
  %236 = icmp ult i64 %235, %130, !dbg !2651
  br i1 %236, label %237, label %239, !dbg !2654

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2651
  store i8 34, i8* %238, align 1, !dbg !2651, !tbaa !1577
  br label %239, !dbg !2651

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %240, metadata !2433, metadata !DIExpression()), !dbg !2481
  %241 = icmp ult i64 %240, %130, !dbg !2655
  br i1 %241, label %242, label %244, !dbg !2658

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2655
  store i8 63, i8* %243, align 1, !dbg !2655, !tbaa !1577
  br label %244, !dbg !2655

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %245, metadata !2433, metadata !DIExpression()), !dbg !2481
  br label %463, !dbg !2659

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2447, metadata !DIExpression()), !dbg !2573
  br label %256, !dbg !2660

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2447, metadata !DIExpression()), !dbg !2573
  br label %256, !dbg !2661

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2447, metadata !DIExpression()), !dbg !2573
  br label %254, !dbg !2662

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2447, metadata !DIExpression()), !dbg !2573
  br label %254, !dbg !2663

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2447, metadata !DIExpression()), !dbg !2573
  br label %256, !dbg !2664

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2447, metadata !DIExpression()), !dbg !2573
  br i1 %110, label %252, label %253, !dbg !2665

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2666

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2669

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2670
  call void @llvm.dbg.value(metadata i8 %255, metadata !2447, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.label(metadata !2476), !dbg !2671
  br i1 %111, label %256, label %625, !dbg !2672

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2670
  call void @llvm.dbg.value(metadata i8 %257, metadata !2447, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.label(metadata !2477), !dbg !2674
  br i1 %102, label %488, label %463, !dbg !2675

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2676

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2677, !tbaa !1577
  %261 = icmp eq i8 %260, 0, !dbg !2678
  br i1 %261, label %262, label %463, !dbg !2679

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2680
  br i1 %263, label %264, label %463, !dbg !2682

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2450, metadata !DIExpression()), !dbg !2573
  br label %265, !dbg !2683

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2573
  call void @llvm.dbg.value(metadata i8 %266, metadata !2450, metadata !DIExpression()), !dbg !2573
  br i1 %111, label %463, label %625, !dbg !2684

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2450, metadata !DIExpression()), !dbg !2573
  br i1 %110, label %268, label %463, !dbg !2685

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2686

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2688
  %271 = icmp ne i64 %125, 0, !dbg !2690
  %272 = or i1 %271, %270, !dbg !2691
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2691
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %274, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %273, metadata !2434, metadata !DIExpression()), !dbg !2481
  %275 = icmp ult i64 %124, %274, !dbg !2692
  br i1 %275, label %276, label %278, !dbg !2695

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2692
  store i8 39, i8* %277, align 1, !dbg !2692, !tbaa !1577
  br label %278, !dbg !2692

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %279, metadata !2433, metadata !DIExpression()), !dbg !2481
  %280 = icmp ult i64 %279, %274, !dbg !2696
  br i1 %280, label %281, label %283, !dbg !2699

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2696
  store i8 92, i8* %282, align 1, !dbg !2696, !tbaa !1577
  br label %283, !dbg !2696

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %284, metadata !2433, metadata !DIExpression()), !dbg !2481
  %285 = icmp ult i64 %284, %274, !dbg !2700
  br i1 %285, label %286, label %288, !dbg !2703

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2700
  store i8 39, i8* %287, align 1, !dbg !2700, !tbaa !1577
  br label %288, !dbg !2700

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %289, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %463, !dbg !2704

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2705

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2451, metadata !DIExpression()), !dbg !2706
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2707
  %293 = load i16*, i16** %292, align 8, !dbg !2707, !tbaa !1342
  %294 = zext i8 %158 to i64, !dbg !2707
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2707
  %296 = load i16, i16* %295, align 2, !dbg !2707, !tbaa !2067
  %297 = lshr i16 %296, 14, !dbg !2709
  %298 = trunc i16 %297 to i8, !dbg !2709
  %299 = and i8 %298, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i8 %299, metadata !2454, metadata !DIExpression()), !dbg !2706
  br label %355, !dbg !2710

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2455, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %23, metadata !2713, metadata !DIExpression()) #19, !dbg !2720
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()) #19, !dbg !2720
  call void @llvm.dbg.value(metadata i64 8, metadata !2719, metadata !DIExpression()) #19, !dbg !2720
  store i64 0, i64* %10, align 8, !dbg !2722
  call void @llvm.dbg.value(metadata i64 0, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 1, metadata !2454, metadata !DIExpression()), !dbg !2706
  %301 = icmp eq i64 %155, -1, !dbg !2723
  br i1 %301, label %302, label %304, !dbg !2725

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %303, metadata !2426, metadata !DIExpression()), !dbg !2481
  br label %304, !dbg !2727

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2573
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  br label %306, !dbg !2728

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2729
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2730
  call void @llvm.dbg.value(metadata i8 %308, metadata !2454, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2731
  %309 = add i64 %307, %123, !dbg !2732
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2733
  %311 = sub i64 %305, %309, !dbg !2734
  call void @llvm.dbg.value(metadata i32* %12, metadata !2461, metadata !DIExpression(DW_OP_deref)), !dbg !2494
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %312, metadata !2464, metadata !DIExpression()), !dbg !2494
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2736

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  %314 = icmp ugt i64 %305, %309, !dbg !2737
  br i1 %314, label %315, label %340, !dbg !2739

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2740
  br label %317, !dbg !2740

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2451, metadata !DIExpression()), !dbg !2706
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2741
  %321 = load i8, i8* %320, align 1, !dbg !2741, !tbaa !1577
  %322 = icmp eq i8 %321, 0, !dbg !2739
  br i1 %322, label %340, label %323, !dbg !2740

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %324, metadata !2451, metadata !DIExpression()), !dbg !2706
  %325 = add i64 %324, %123, !dbg !2743
  %326 = icmp ult i64 %325, %305, !dbg !2737
  br i1 %326, label %317, label %340, !dbg !2739, !llvm.loop !2744

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2745
  %329 = and i1 %113, %328, !dbg !2748
  call void @llvm.dbg.value(metadata i64 1, metadata !2465, metadata !DIExpression()), !dbg !2749
  br i1 %329, label %330, label %343, !dbg !2748

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2465, metadata !DIExpression()), !dbg !2749
  %332 = add i64 %331, %309, !dbg !2750
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2751
  %334 = load i8, i8* %333, align 1, !dbg !2751, !tbaa !1577
  %335 = sext i8 %334 to i32, !dbg !2751
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2752

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %337, metadata !2465, metadata !DIExpression()), !dbg !2749
  %338 = icmp eq i64 %337, %312, !dbg !2745
  br i1 %338, label %343, label %330, !dbg !2754, !llvm.loop !2755

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %308, metadata !2454, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %307, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %308, metadata !2454, metadata !DIExpression()), !dbg !2706
  br label %340, !dbg !2757

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2757
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2758, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %344, metadata !2461, metadata !DIExpression()), !dbg !2494
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !2760
  %346 = icmp eq i32 %345, 0, !dbg !2760
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2761
  call void @llvm.dbg.value(metadata i8 %347, metadata !2454, metadata !DIExpression()), !dbg !2706
  %348 = add i64 %312, %307, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %348, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %347, metadata !2454, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %348, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2757
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2763
  %350 = icmp eq i32 %349, 0, !dbg !2764
  br i1 %350, label %306, label %351, !dbg !2765, !llvm.loop !2766

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2768
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 2, metadata !2427, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %99, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %305, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2768
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2573
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2769
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2769
  call void @llvm.dbg.value(metadata i8 %358, metadata !2454, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %357, metadata !2451, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %356, metadata !2426, metadata !DIExpression()), !dbg !2481
  %359 = and i8 %358, 1, !dbg !2770
  %360 = icmp ne i8 %359, 0, !dbg !2770
  call void @llvm.dbg.value(metadata i8 %359, metadata !2450, metadata !DIExpression()), !dbg !2573
  %361 = icmp ult i64 %357, 2, !dbg !2771
  %362 = or i1 %360, %114, !dbg !2772
  %363 = and i1 %361, %362, !dbg !2773
  br i1 %363, label %463, label %364, !dbg !2773

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %365, metadata !2472, metadata !DIExpression()), !dbg !2775
  br label %366, !dbg !2776

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2566
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2481
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2502
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2573
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2573
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2777
  call void @llvm.dbg.value(metadata i8 %372, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %371, metadata !2448, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %370, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %369, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %368, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %367, metadata !2432, metadata !DIExpression()), !dbg !2481
  br i1 %362, label %419, label %373, !dbg !2778

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2783

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2449, metadata !DIExpression()), !dbg !2573
  %375 = and i8 %369, 1, !dbg !2786
  %376 = icmp eq i8 %375, 0, !dbg !2786
  %377 = and i1 %110, %376, !dbg !2786
  br i1 %377, label %378, label %394, !dbg !2786

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2788
  br i1 %379, label %380, label %382, !dbg !2792

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2788
  store i8 39, i8* %381, align 1, !dbg !2788, !tbaa !1577
  br label %382, !dbg !2788

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %383, metadata !2433, metadata !DIExpression()), !dbg !2481
  %384 = icmp ult i64 %383, %130, !dbg !2793
  br i1 %384, label %385, label %387, !dbg !2796

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2793
  store i8 36, i8* %386, align 1, !dbg !2793, !tbaa !1577
  br label %387, !dbg !2793

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %388, metadata !2433, metadata !DIExpression()), !dbg !2481
  %389 = icmp ult i64 %388, %130, !dbg !2797
  br i1 %389, label %390, label %392, !dbg !2800

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2797
  store i8 39, i8* %391, align 1, !dbg !2797, !tbaa !1577
  br label %392, !dbg !2797

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %393, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %394, !dbg !2801

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2481
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %396, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %395, metadata !2433, metadata !DIExpression()), !dbg !2481
  %397 = icmp ult i64 %395, %130, !dbg !2802
  br i1 %397, label %398, label %400, !dbg !2805

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2802
  store i8 92, i8* %399, align 1, !dbg !2802, !tbaa !1577
  br label %400, !dbg !2802

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %401, metadata !2433, metadata !DIExpression()), !dbg !2481
  %402 = icmp ult i64 %401, %130, !dbg !2806
  br i1 %402, label %403, label %407, !dbg !2809

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2806
  %405 = or i8 %404, 48, !dbg !2806
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2806
  store i8 %405, i8* %406, align 1, !dbg !2806, !tbaa !1577
  br label %407, !dbg !2806

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %408, metadata !2433, metadata !DIExpression()), !dbg !2481
  %409 = icmp ult i64 %408, %130, !dbg !2810
  br i1 %409, label %410, label %415, !dbg !2813

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2810
  %412 = and i8 %411, 7, !dbg !2810
  %413 = or i8 %412, 48, !dbg !2810
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2810
  store i8 %413, i8* %414, align 1, !dbg !2810, !tbaa !1577
  br label %415, !dbg !2810

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %416, metadata !2433, metadata !DIExpression()), !dbg !2481
  %417 = and i8 %370, 7, !dbg !2814
  %418 = or i8 %417, 48, !dbg !2815
  call void @llvm.dbg.value(metadata i8 %418, metadata !2443, metadata !DIExpression()), !dbg !2573
  br label %428, !dbg !2816

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2817
  %421 = icmp eq i8 %420, 0, !dbg !2817
  br i1 %421, label %428, label %422, !dbg !2819

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2820
  br i1 %423, label %424, label %426, !dbg !2824

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2820
  store i8 92, i8* %425, align 1, !dbg !2820, !tbaa !1577
  br label %426, !dbg !2820

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %427, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2573
  br label %428, !dbg !2825

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2481
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2502
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2573
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2573
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2573
  call void @llvm.dbg.value(metadata i8 %433, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %432, metadata !2448, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %431, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %430, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %429, metadata !2433, metadata !DIExpression()), !dbg !2481
  %434 = add i64 %367, 1, !dbg !2826
  %435 = icmp ugt i64 %365, %434, !dbg !2828
  br i1 %435, label %436, label %526, !dbg !2829

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2830
  %438 = icmp ne i8 %437, 0, !dbg !2830
  %439 = and i8 %433, 1, !dbg !2830
  %440 = icmp eq i8 %439, 0, !dbg !2830
  %441 = and i1 %438, %440, !dbg !2830
  br i1 %441, label %442, label %453, !dbg !2830

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2833
  br i1 %443, label %444, label %446, !dbg !2837

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2833
  store i8 39, i8* %445, align 1, !dbg !2833, !tbaa !1577
  br label %446, !dbg !2833

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %447, metadata !2433, metadata !DIExpression()), !dbg !2481
  %448 = icmp ult i64 %447, %130, !dbg !2838
  br i1 %448, label %449, label %451, !dbg !2841

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2838
  store i8 39, i8* %450, align 1, !dbg !2838, !tbaa !1577
  br label %451, !dbg !2838

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %452, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %453, !dbg !2842

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2843
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %455, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %454, metadata !2433, metadata !DIExpression()), !dbg !2481
  %456 = icmp ult i64 %454, %130, !dbg !2844
  br i1 %456, label %457, label %459, !dbg !2847

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2844
  store i8 %431, i8* %458, align 1, !dbg !2844, !tbaa !1577
  br label %459, !dbg !2844

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %460, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %434, metadata !2432, metadata !DIExpression()), !dbg !2481
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2848
  %462 = load i8, i8* %461, align 1, !dbg !2848, !tbaa !1577
  call void @llvm.dbg.value(metadata i8 %462, metadata !2443, metadata !DIExpression()), !dbg !2573
  br label %366, !dbg !2849, !llvm.loop !2850

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2566
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2481
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2498
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2853
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2481
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2481
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2573
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2573
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2573
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %472, metadata !2450, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %471, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %156, metadata !2448, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %470, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %469, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %468, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %467, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %466, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %465, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %464, metadata !2432, metadata !DIExpression()), !dbg !2481
  br i1 %117, label %486, label %474, !dbg !2854

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2855
  %476 = zext i8 %475 to i64, !dbg !2855
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2856
  %478 = load i32, i32* %477, align 4, !dbg !2856, !tbaa !1485
  %479 = and i8 %470, 31, !dbg !2857
  %480 = zext i8 %479 to i32, !dbg !2857
  %481 = shl nuw i32 1, %480, !dbg !2858
  %482 = and i32 %478, %481, !dbg !2858
  %483 = icmp eq i32 %482, 0, !dbg !2858
  %484 = icmp eq i8 %156, 0, !dbg !2859
  %485 = and i1 %484, %483, !dbg !2860
  br i1 %485, label %526, label %488, !dbg !2860

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2859
  br i1 %487, label %526, label %488, !dbg !2861

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2862
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2481
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2498
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2853
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2502
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2503
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2573
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2573
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %496, metadata !2450, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %495, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %494, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %493, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %492, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %491, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %490, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %489, metadata !2432, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2478), !dbg !2863
  br i1 %109, label %498, label %629, !dbg !2864

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2449, metadata !DIExpression()), !dbg !2573
  %499 = and i8 %493, 1, !dbg !2866
  %500 = icmp eq i8 %499, 0, !dbg !2866
  %501 = and i1 %110, %500, !dbg !2866
  br i1 %501, label %502, label %518, !dbg !2866

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2868
  br i1 %503, label %504, label %506, !dbg !2872

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2868
  store i8 39, i8* %505, align 1, !dbg !2868, !tbaa !1577
  br label %506, !dbg !2868

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %507, metadata !2433, metadata !DIExpression()), !dbg !2481
  %508 = icmp ult i64 %507, %497, !dbg !2873
  br i1 %508, label %509, label %511, !dbg !2876

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2873
  store i8 36, i8* %510, align 1, !dbg !2873, !tbaa !1577
  br label %511, !dbg !2873

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %512, metadata !2433, metadata !DIExpression()), !dbg !2481
  %513 = icmp ult i64 %512, %497, !dbg !2877
  br i1 %513, label %514, label %516, !dbg !2880

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2877
  store i8 39, i8* %515, align 1, !dbg !2877, !tbaa !1577
  br label %516, !dbg !2877

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %517, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %518, !dbg !2881

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2573
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %520, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %519, metadata !2433, metadata !DIExpression()), !dbg !2481
  %521 = icmp ult i64 %519, %497, !dbg !2882
  br i1 %521, label %522, label %524, !dbg !2885

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2882
  store i8 92, i8* %523, align 1, !dbg !2882, !tbaa !1577
  br label %524, !dbg !2882

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %525, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %536, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %535, metadata !2450, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %534, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %533, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %532, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %531, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %530, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %529, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %528, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %527, metadata !2432, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2479), !dbg !2886
  br label %553, !dbg !2887

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2862
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2481
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2498
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2853
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2502
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2503
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2890
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2573
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2573
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %535, metadata !2450, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %534, metadata !2449, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %533, metadata !2443, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %532, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %531, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %530, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %529, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %528, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %527, metadata !2432, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2479), !dbg !2886
  %537 = and i8 %531, 1, !dbg !2887
  %538 = icmp ne i8 %537, 0, !dbg !2887
  %539 = and i8 %534, 1, !dbg !2887
  %540 = icmp eq i8 %539, 0, !dbg !2887
  %541 = and i1 %538, %540, !dbg !2887
  br i1 %541, label %542, label %553, !dbg !2887

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2891
  br i1 %543, label %544, label %546, !dbg !2895

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2891
  store i8 39, i8* %545, align 1, !dbg !2891, !tbaa !1577
  br label %546, !dbg !2891

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %547, metadata !2433, metadata !DIExpression()), !dbg !2481
  %548 = icmp ult i64 %547, %536, !dbg !2896
  br i1 %548, label %549, label %551, !dbg !2899

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2896
  store i8 39, i8* %550, align 1, !dbg !2896, !tbaa !1577
  br label %551, !dbg !2896

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %552, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2481
  br label %553, !dbg !2900

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2573
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2481
  call void @llvm.dbg.value(metadata i8 %562, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %561, metadata !2433, metadata !DIExpression()), !dbg !2481
  %563 = icmp ult i64 %561, %554, !dbg !2901
  br i1 %563, label %564, label %566, !dbg !2904

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2901
  store i8 %556, i8* %565, align 1, !dbg !2901, !tbaa !1577
  br label %566, !dbg !2901

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %567, metadata !2433, metadata !DIExpression()), !dbg !2481
  %568 = and i8 %555, 1, !dbg !2905
  %569 = icmp eq i8 %568, 0, !dbg !2905
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2907
  call void @llvm.dbg.value(metadata i8 %570, metadata !2442, metadata !DIExpression()), !dbg !2481
  br label %571, !dbg !2908

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2862
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2481
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2498
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2853
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2502
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2481
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2504
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %578, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %577, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %576, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %575, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %574, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %573, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %572, metadata !2432, metadata !DIExpression()), !dbg !2481
  %580 = add i64 %572, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %580, metadata !2432, metadata !DIExpression()), !dbg !2481
  br label %122, !dbg !2910, !llvm.loop !2911

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %127, metadata !2440, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %128, metadata !2441, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %129, metadata !2442, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  %583 = icmp eq i64 %124, 0, !dbg !2913
  %584 = and i1 %110, %583, !dbg !2915
  %585 = xor i1 %584, true, !dbg !2915
  %586 = or i1 %109, %585, !dbg !2915
  br i1 %586, label %587, label %629, !dbg !2915

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2916
  %589 = xor i1 %588, true, !dbg !2916
  %590 = and i8 %128, 1, !dbg !2918
  %591 = icmp eq i8 %590, 0, !dbg !2918
  %592 = or i1 %591, %589, !dbg !2916
  br i1 %592, label %602, label %593, !dbg !2916

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2919
  %595 = icmp eq i8 %594, 0, !dbg !2919
  br i1 %595, label %598, label %596, !dbg !2922

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %94, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %95, metadata !2431, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %125, metadata !2434, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %582, metadata !2426, metadata !DIExpression()), !dbg !2481
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2923
  br label %645, !dbg !2924

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2925
  %600 = icmp ne i64 %125, 0, !dbg !2927
  %601 = and i1 %600, %599, !dbg !2928
  br i1 %601, label %26, label %602, !dbg !2928

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %130, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  %603 = icmp ne i8* %97, null, !dbg !2929
  %604 = and i1 %603, %109, !dbg !2931
  br i1 %604, label %605, label %620, !dbg !2931

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %124, metadata !2433, metadata !DIExpression()), !dbg !2481
  %606 = load i8, i8* %97, align 1, !dbg !2932, !tbaa !1577
  %607 = icmp eq i8 %606, 0, !dbg !2935
  br i1 %607, label %620, label %608, !dbg !2935

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %611, metadata !2433, metadata !DIExpression()), !dbg !2481
  %612 = icmp ult i64 %611, %130, !dbg !2936
  br i1 %612, label %613, label %615, !dbg !2939

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2936
  store i8 %609, i8* %614, align 1, !dbg !2936, !tbaa !1577
  br label %615, !dbg !2936

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %616, metadata !2433, metadata !DIExpression()), !dbg !2481
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %617, metadata !2435, metadata !DIExpression()), !dbg !2481
  %618 = load i8, i8* %617, align 1, !dbg !2932, !tbaa !1577
  %619 = icmp eq i8 %618, 0, !dbg !2935
  br i1 %619, label %620, label %608, !dbg !2935, !llvm.loop !2941

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2535
  call void @llvm.dbg.value(metadata i64 %621, metadata !2433, metadata !DIExpression()), !dbg !2481
  %622 = icmp ult i64 %621, %130, !dbg !2943
  br i1 %622, label %623, label %645, !dbg !2945

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2946
  store i8 0, i8* %624, align 1, !dbg !2947, !tbaa !1577
  br label %645, !dbg !2946

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %630, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2480), !dbg !2948
  %627 = icmp eq i8 %101, 0, !dbg !2949
  %628 = select i1 %627, i32 2, i32 4, !dbg !2949
  br label %635, !dbg !2949

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2424, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %630, metadata !2426, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.label(metadata !2480), !dbg !2948
  %632 = icmp eq i32 %93, 2, !dbg !2951
  %633 = icmp eq i8 %101, 0, !dbg !2949
  %634 = select i1 %633, i32 2, i32 4, !dbg !2949
  br i1 %632, label %635, label %639, !dbg !2949

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2949

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2427, metadata !DIExpression()), !dbg !2481
  %643 = and i32 %5, -3, !dbg !2952
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2953
  br label %645, !dbg !2954

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2955
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2956 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %1, metadata !2961, metadata !DIExpression()), !dbg !2964
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %3, metadata !2962, metadata !DIExpression()), !dbg !2964
  %4 = icmp eq i8* %3, %0, !dbg !2966
  br i1 %4, label %5, label %71, !dbg !2968

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %6, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %6, metadata !2970, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* undef, metadata !2976, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 85, metadata !2977, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 84, metadata !2978, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 70, metadata !2979, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 45, metadata !2980, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 56, metadata !2981, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2985, metadata !DIExpression()), !dbg !2986
  %7 = load i8, i8* %6, align 1, !dbg !2989, !tbaa !1577
  %8 = and i8 %7, -33, !dbg !2989
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2989

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2991, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* undef, metadata !2996, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 84, metadata !2997, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 70, metadata !2998, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 45, metadata !2999, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 56, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 0, metadata !3002, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 0, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 0, metadata !3004, metadata !DIExpression()), !dbg !3005
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3009
  %11 = load i8, i8* %10, align 1, !dbg !3009, !tbaa !1577
  %12 = and i8 %11, -33, !dbg !3009
  %13 = icmp eq i8 %12, 84, !dbg !3009
  br i1 %13, label %14, label %68, !dbg !3009

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3011, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8* undef, metadata !3016, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 70, metadata !3017, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 45, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 56, metadata !3019, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !3023, metadata !DIExpression()), !dbg !3024
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3028
  %16 = load i8, i8* %15, align 1, !dbg !3028, !tbaa !1577
  %17 = and i8 %16, -33, !dbg !3028
  %18 = icmp eq i8 %17, 70, !dbg !3028
  br i1 %18, label %19, label %68, !dbg !3028

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3030, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* undef, metadata !3035, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 45, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 56, metadata !3037, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3042
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3046
  %21 = load i8, i8* %20, align 1, !dbg !3046, !tbaa !1577
  %22 = icmp eq i8 %21, 45, !dbg !3046
  br i1 %22, label %23, label %68, !dbg !3048

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3049, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* undef, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 56, metadata !3055, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3058, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3060
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3064
  %25 = load i8, i8* %24, align 1, !dbg !3064, !tbaa !1577
  %26 = icmp eq i8 %25, 56, !dbg !3064
  br i1 %26, label %27, label %68, !dbg !3066

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3067, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* undef, metadata !3072, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3073, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3077
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3081
  %29 = load i8, i8* %28, align 1, !dbg !3081, !tbaa !1577
  %30 = icmp eq i8 %29, 0, !dbg !3081
  br i1 %30, label %31, label %68, !dbg !3083

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3084, !tbaa !1577
  %33 = icmp eq i8 %32, 96, !dbg !3085
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.109, i64 0, i64 0), !dbg !3084
  br label %71, !dbg !3086

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2991, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* undef, metadata !2996, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 66, metadata !2997, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 49, metadata !2998, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 56, metadata !2999, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 48, metadata !3000, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 51, metadata !3001, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 48, metadata !3002, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3003, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3004, metadata !DIExpression()), !dbg !3087
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3091
  %37 = load i8, i8* %36, align 1, !dbg !3091, !tbaa !1577
  %38 = and i8 %37, -33, !dbg !3091
  %39 = icmp eq i8 %38, 66, !dbg !3091
  br i1 %39, label %40, label %68, !dbg !3091

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3011, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8* undef, metadata !3016, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 49, metadata !3017, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 56, metadata !3018, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 48, metadata !3019, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 51, metadata !3020, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 48, metadata !3021, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 0, metadata !3022, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 0, metadata !3023, metadata !DIExpression()), !dbg !3092
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3094
  %42 = load i8, i8* %41, align 1, !dbg !3094, !tbaa !1577
  %43 = icmp eq i8 %42, 49, !dbg !3094
  br i1 %43, label %44, label %68, !dbg !3095

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3030, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* undef, metadata !3035, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 56, metadata !3036, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 48, metadata !3037, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 51, metadata !3038, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 48, metadata !3039, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3040, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3096
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3098
  %46 = load i8, i8* %45, align 1, !dbg !3098, !tbaa !1577
  %47 = icmp eq i8 %46, 56, !dbg !3098
  br i1 %47, label %48, label %68, !dbg !3099

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3049, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* undef, metadata !3054, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 48, metadata !3055, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 51, metadata !3056, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 48, metadata !3057, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3058, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3100
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3102
  %50 = load i8, i8* %49, align 1, !dbg !3102, !tbaa !1577
  %51 = icmp eq i8 %50, 48, !dbg !3102
  br i1 %51, label %52, label %68, !dbg !3103

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3067, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* undef, metadata !3072, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 51, metadata !3073, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 48, metadata !3074, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3104
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3106
  %54 = load i8, i8* %53, align 1, !dbg !3106, !tbaa !1577
  %55 = icmp eq i8 %54, 51, !dbg !3106
  br i1 %55, label %56, label %68, !dbg !3107

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3108, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* undef, metadata !3113, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 48, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3117
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3121
  %58 = load i8, i8* %57, align 1, !dbg !3121, !tbaa !1577
  %59 = icmp eq i8 %58, 48, !dbg !3121
  br i1 %59, label %60, label %68, !dbg !3123

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3124, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* undef, metadata !3129, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 0, metadata !3131, metadata !DIExpression()), !dbg !3132
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3136
  %62 = load i8, i8* %61, align 1, !dbg !3136, !tbaa !1577
  %63 = icmp eq i8 %62, 0, !dbg !3136
  br i1 %63, label %64, label %68, !dbg !3138

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3139, !tbaa !1577
  %66 = icmp eq i8 %65, 96, !dbg !3140
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.111, i64 0, i64 0), !dbg !3139
  br label %71, !dbg !3141

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3142
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !3143
  br label %71, !dbg !3144

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2964
  ret i8* %72, !dbg !3145
}

; Function Attrs: nounwind
declare !dbg !541 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !545 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #19, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()) #19, !dbg !3167
  call void @llvm.dbg.value(metadata i64* null, metadata !3160, metadata !DIExpression()) #19, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3161, metadata !DIExpression()) #19, !dbg !3167
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3169
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3162, metadata !DIExpression()) #19, !dbg !3167
  %6 = tail call i32* @__errno_location() #25, !dbg !3170
  %7 = load i32, i32* %6, align 4, !dbg !3170, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %7, metadata !3163, metadata !DIExpression()) #19, !dbg !3167
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3171
  %9 = load i32, i32* %8, align 4, !dbg !3171, !tbaa !2366
  %10 = or i32 %9, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %10, metadata !3164, metadata !DIExpression()) #19, !dbg !3167
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3173
  %12 = load i32, i32* %11, align 8, !dbg !3173, !tbaa !2315
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3174
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3175
  %15 = load i8*, i8** %14, align 8, !dbg !3175, !tbaa !2389
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3176
  %17 = load i8*, i8** %16, align 8, !dbg !3176, !tbaa !2392
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3177
  %19 = add i64 %18, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %19, metadata !3165, metadata !DIExpression()) #19, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %19, metadata !3179, metadata !DIExpression()) #19, !dbg !3184
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %20, metadata !3166, metadata !DIExpression()) #19, !dbg !3167
  %21 = load i32, i32* %11, align 8, !dbg !3187, !tbaa !2315
  %22 = load i8*, i8** %14, align 8, !dbg !3188, !tbaa !2389
  %23 = load i8*, i8** %16, align 8, !dbg !3189, !tbaa !2392
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3190
  store i32 %7, i32* %6, align 4, !dbg !3191, !tbaa !1485
  ret i8* %20, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64* %2, metadata !3160, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3161, metadata !DIExpression()), !dbg !3193
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3194
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3162, metadata !DIExpression()), !dbg !3193
  %7 = tail call i32* @__errno_location() #25, !dbg !3195
  %8 = load i32, i32* %7, align 4, !dbg !3195, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %8, metadata !3163, metadata !DIExpression()), !dbg !3193
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3196
  %10 = load i32, i32* %9, align 4, !dbg !3196, !tbaa !2366
  %11 = icmp ne i64* %2, null, !dbg !3197
  %12 = xor i1 %11, true, !dbg !3197
  %13 = zext i1 %12 to i32, !dbg !3197
  %14 = or i32 %10, %13, !dbg !3198
  call void @llvm.dbg.value(metadata i32 %14, metadata !3164, metadata !DIExpression()), !dbg !3193
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3199
  %16 = load i32, i32* %15, align 8, !dbg !3199, !tbaa !2315
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3200
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3201
  %19 = load i8*, i8** %18, align 8, !dbg !3201, !tbaa !2389
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3202
  %21 = load i8*, i8** %20, align 8, !dbg !3202, !tbaa !2392
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3203
  %23 = add i64 %22, 1, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %23, metadata !3165, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %23, metadata !3179, metadata !DIExpression()) #19, !dbg !3205
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %24, metadata !3166, metadata !DIExpression()), !dbg !3193
  %25 = load i32, i32* %15, align 8, !dbg !3208, !tbaa !2315
  %26 = load i8*, i8** %18, align 8, !dbg !3209, !tbaa !2389
  %27 = load i8*, i8** %20, align 8, !dbg !3210, !tbaa !2392
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3211
  store i32 %8, i32* %7, align 4, !dbg !3212, !tbaa !1485
  br i1 %11, label %29, label %30, !dbg !3213

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3214, !tbaa !1519
  br label %30, !dbg !3216

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3218 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3222, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3220, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 1, metadata !3221, metadata !DIExpression()), !dbg !3223
  %2 = load i32, i32* @nslots, align 4, !dbg !3224, !tbaa !1485
  %3 = icmp sgt i32 %2, 1, !dbg !3227
  br i1 %3, label %4, label %12, !dbg !3228

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3221, metadata !DIExpression()), !dbg !3223
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3229
  %7 = load i8*, i8** %6, align 8, !dbg !3229, !tbaa !3230
  tail call void @free(i8* %7) #19, !dbg !3232
  %8 = add nuw nsw i64 %5, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %8, metadata !3221, metadata !DIExpression()), !dbg !3223
  %9 = load i32, i32* @nslots, align 4, !dbg !3224, !tbaa !1485
  %10 = sext i32 %9 to i64, !dbg !3227
  %11 = icmp slt i64 %8, %10, !dbg !3227
  br i1 %11, label %4, label %12, !dbg !3228, !llvm.loop !3234

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3236
  %14 = load i8*, i8** %13, align 8, !dbg !3236, !tbaa !3230
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3238
  br i1 %15, label %17, label %16, !dbg !3239

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3240
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3242, !tbaa !3243
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3244, !tbaa !3230
  br label %17, !dbg !3245

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3246
  br i1 %18, label %21, label %19, !dbg !3248

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3249
  tail call void @free(i8* %20) #19, !dbg !3251
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3252, !tbaa !1342
  br label %21, !dbg !3253

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3254, !tbaa !1485
  ret void, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3260
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3261
  ret i8* %3, !dbg !3262
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3267, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3268, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %2, metadata !3269, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3270, metadata !DIExpression()), !dbg !3282
  %5 = tail call i32* @__errno_location() #25, !dbg !3283
  %6 = load i32, i32* %5, align 4, !dbg !3283, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %6, metadata !3271, metadata !DIExpression()), !dbg !3282
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3284, !tbaa !1342
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3272, metadata !DIExpression()), !dbg !3282
  %8 = icmp slt i32 %0, 0, !dbg !3285
  br i1 %8, label %9, label %10, !dbg !3287

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3288
  unreachable, !dbg !3288

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3289, !tbaa !1485
  %12 = icmp sgt i32 %11, %0, !dbg !3290
  br i1 %12, label %34, label %13, !dbg !3291

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3292
  call void @llvm.dbg.value(metadata i1 %14, metadata !3273, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3276, metadata !DIExpression()), !dbg !3293
  %15 = icmp eq i32 %0, 2147483647, !dbg !3294
  br i1 %15, label %16, label %17, !dbg !3296

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3297
  unreachable, !dbg !3297

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3298
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3298
  %20 = add nuw nsw i32 %0, 1, !dbg !3299
  %21 = sext i32 %20 to i64, !dbg !3300
  %22 = shl nuw nsw i64 %21, 4, !dbg !3301
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3302
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3272, metadata !DIExpression()), !dbg !3282
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3303, !tbaa !1342
  br i1 %14, label %25, label %26, !dbg !3304

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3305, !tbaa.struct !3307
  br label %26, !dbg !3308

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3309, !tbaa !1485
  %28 = sext i32 %27 to i64, !dbg !3310
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3310
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3311
  %31 = sub nsw i32 %20, %27, !dbg !3312
  %32 = sext i32 %31 to i64, !dbg !3313
  %33 = shl nsw i64 %32, 4, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %30, metadata !2713, metadata !DIExpression()) #19, !dbg !3315
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()) #19, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %33, metadata !2719, metadata !DIExpression()) #19, !dbg !3315
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3317
  store i32 %20, i32* @nslots, align 4, !dbg !3318, !tbaa !1485
  br label %34, !dbg !3319

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3282
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3272, metadata !DIExpression()), !dbg !3282
  %36 = zext i32 %0 to i64, !dbg !3320
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3321
  %38 = load i64, i64* %37, align 8, !dbg !3321, !tbaa !3243
  call void @llvm.dbg.value(metadata i64 %38, metadata !3277, metadata !DIExpression()), !dbg !3322
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3323
  %40 = load i8*, i8** %39, align 8, !dbg !3323, !tbaa !3230
  call void @llvm.dbg.value(metadata i8* %40, metadata !3279, metadata !DIExpression()), !dbg !3322
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3324
  %42 = load i32, i32* %41, align 4, !dbg !3324, !tbaa !2366
  %43 = or i32 %42, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %43, metadata !3280, metadata !DIExpression()), !dbg !3322
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3326
  %45 = load i32, i32* %44, align 8, !dbg !3326, !tbaa !2315
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3327
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3328
  %48 = load i8*, i8** %47, align 8, !dbg !3328, !tbaa !2389
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3329
  %50 = load i8*, i8** %49, align 8, !dbg !3329, !tbaa !2392
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %51, metadata !3281, metadata !DIExpression()), !dbg !3322
  %52 = icmp ugt i64 %38, %51, !dbg !3331
  br i1 %52, label %63, label %53, !dbg !3333

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %54, metadata !3277, metadata !DIExpression()), !dbg !3322
  store i64 %54, i64* %37, align 8, !dbg !3336, !tbaa !3243
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3337
  br i1 %55, label %57, label %56, !dbg !3339

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3340
  br label %57, !dbg !3340

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3179, metadata !DIExpression()) #19, !dbg !3341
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %58, metadata !3279, metadata !DIExpression()), !dbg !3322
  store i8* %58, i8** %39, align 8, !dbg !3344, !tbaa !3230
  %59 = load i32, i32* %44, align 8, !dbg !3345, !tbaa !2315
  %60 = load i8*, i8** %47, align 8, !dbg !3346, !tbaa !2389
  %61 = load i8*, i8** %49, align 8, !dbg !3347, !tbaa !2392
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3348
  br label %63, !dbg !3349

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3322
  call void @llvm.dbg.value(metadata i8* %64, metadata !3279, metadata !DIExpression()), !dbg !3322
  store i32 %6, i32* %5, align 4, !dbg !3350, !tbaa !1485
  ret i8* %64, !dbg !3351
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3352 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %2, metadata !3358, metadata !DIExpression()), !dbg !3359
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3360
  ret i8* %4, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3362 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 0, metadata !3258, metadata !DIExpression()) #19, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #19, !dbg !3366
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3368
  ret i8* %2, !dbg !3369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #19, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %0, metadata !3357, metadata !DIExpression()) #19, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()) #19, !dbg !3377
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3379
  ret i8* %3, !dbg !3380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3381 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %1, metadata !3384, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3385, metadata !DIExpression()), !dbg !3387
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3388
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #19, !dbg !3396
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3395, metadata !DIExpression()) #19, !dbg !3398
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3398, !alias.scope !3399
  %6 = icmp eq i32 %1, 10, !dbg !3402
  br i1 %6, label %7, label %8, !dbg !3404

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3405, !noalias !3399
  unreachable, !dbg !3405

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3406
  store i32 %1, i32* %9, align 8, !dbg !3407, !tbaa !2315, !alias.scope !3399
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3408
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3409
  ret i8* %10, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3411 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3417, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %3, metadata !3418, metadata !DIExpression()), !dbg !3420
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #19, !dbg !3423
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3395, metadata !DIExpression()) #19, !dbg !3425
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !3425, !alias.scope !3426
  %7 = icmp eq i32 %1, 10, !dbg !3429
  br i1 %7, label %8, label %9, !dbg !3430

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3431, !noalias !3426
  unreachable, !dbg !3431

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3432
  store i32 %1, i32* %10, align 8, !dbg !3433, !tbaa !2315, !alias.scope !3426
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3435
  ret i8* %11, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3437 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3395, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3386, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* %1, metadata !3442, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()) #19, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()) #19, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !3385, metadata !DIExpression()) #19, !dbg !3448
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()) #19, !dbg !3450
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !3443, !alias.scope !3451
  %5 = icmp eq i32 %0, 10, !dbg !3454
  br i1 %5, label %6, label %7, !dbg !3455

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3456, !noalias !3451
  unreachable, !dbg !3456

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3457
  store i32 %0, i32* %8, align 8, !dbg !3458, !tbaa !2315, !alias.scope !3451
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3460
  ret i8* %9, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3462 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3395, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3419, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %0, metadata !3466, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %2, metadata !3468, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()) #19, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()) #19, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()) #19, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()) #19, !dbg !3474
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()) #19, !dbg !3476
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3469, !alias.scope !3477
  %6 = icmp eq i32 %0, 10, !dbg !3480
  br i1 %6, label %7, label %8, !dbg !3481

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3482, !noalias !3477
  unreachable, !dbg !3482

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3483
  store i32 %0, i32* %9, align 8, !dbg !3484, !tbaa !2315, !alias.scope !3477
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3486
  ret i8* %10, !dbg !3487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3488 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 %2, metadata !3494, metadata !DIExpression()), !dbg !3496
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3495, metadata !DIExpression()), !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3499, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 %2, metadata !2334, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 1, metadata !2335, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 %2, metadata !2336, metadata !DIExpression()), !dbg !3501
  %6 = lshr i8 %2, 5, !dbg !3503
  %7 = zext i8 %6 to i64, !dbg !3503
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3504
  call void @llvm.dbg.value(metadata i32* %8, metadata !2337, metadata !DIExpression()), !dbg !3501
  %9 = and i8 %2, 31, !dbg !3505
  %10 = zext i8 %9 to i32, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %10, metadata !2339, metadata !DIExpression()), !dbg !3501
  %11 = load i32, i32* %8, align 4, !dbg !3506, !tbaa !1485
  %12 = lshr i32 %11, %10, !dbg !3507
  %13 = and i32 %12, 1, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %13, metadata !2340, metadata !DIExpression()), !dbg !3501
  %14 = xor i32 %13, 1, !dbg !3509
  %15 = shl i32 %14, %10, !dbg !3510
  %16 = xor i32 %15, %11, !dbg !3511
  store i32 %16, i32* %8, align 4, !dbg !3511, !tbaa !1485
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3513
  ret i8* %17, !dbg !3514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3515 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3495, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 %1, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #19, !dbg !3524
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #19, !dbg !3524
  call void @llvm.dbg.value(metadata i8 %1, metadata !3494, metadata !DIExpression()) #19, !dbg !3524
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3526, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i8 %1, metadata !2334, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i32 1, metadata !2335, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i8 %1, metadata !2336, metadata !DIExpression()) #19, !dbg !3527
  %5 = lshr i8 %1, 5, !dbg !3529
  %6 = zext i8 %5 to i64, !dbg !3529
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3530
  call void @llvm.dbg.value(metadata i32* %7, metadata !2337, metadata !DIExpression()) #19, !dbg !3527
  %8 = and i8 %1, 31, !dbg !3531
  %9 = zext i8 %8 to i32, !dbg !3531
  call void @llvm.dbg.value(metadata i32 %9, metadata !2339, metadata !DIExpression()) #19, !dbg !3527
  %10 = load i32, i32* %7, align 4, !dbg !3532, !tbaa !1485
  %11 = lshr i32 %10, %9, !dbg !3533
  %12 = and i32 %11, 1, !dbg !3534
  call void @llvm.dbg.value(metadata i32 %12, metadata !2340, metadata !DIExpression()) #19, !dbg !3527
  %13 = xor i32 %12, 1, !dbg !3535
  %14 = shl i32 %13, %9, !dbg !3536
  %15 = xor i32 %14, %10, !dbg !3537
  store i32 %15, i32* %7, align 4, !dbg !3537, !tbaa !1485
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3539
  ret i8* %16, !dbg !3540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3541 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3495, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()) #19, !dbg !3548
  call void @llvm.dbg.value(metadata i8 58, metadata !3520, metadata !DIExpression()) #19, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #19, !dbg !3549
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #19, !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !3494, metadata !DIExpression()) #19, !dbg !3549
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3550
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3551, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2333, metadata !DIExpression()) #19, !dbg !3552
  call void @llvm.dbg.value(metadata i8 58, metadata !2334, metadata !DIExpression()) #19, !dbg !3552
  call void @llvm.dbg.value(metadata i32 1, metadata !2335, metadata !DIExpression()) #19, !dbg !3552
  call void @llvm.dbg.value(metadata i8 58, metadata !2336, metadata !DIExpression()) #19, !dbg !3552
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3554
  call void @llvm.dbg.value(metadata i32* %4, metadata !2337, metadata !DIExpression()) #19, !dbg !3552
  call void @llvm.dbg.value(metadata i32 26, metadata !2339, metadata !DIExpression()) #19, !dbg !3552
  %5 = load i32, i32* %4, align 4, !dbg !3555, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %5, metadata !2340, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3552
  %6 = or i32 %5, 67108864, !dbg !3556
  store i32 %6, i32* %4, align 4, !dbg !3556, !tbaa !1485
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3558
  ret i8* %7, !dbg !3559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3560 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3495, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #19, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()) #19, !dbg !3567
  call void @llvm.dbg.value(metadata i8 58, metadata !3494, metadata !DIExpression()) #19, !dbg !3567
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3568
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3569, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2333, metadata !DIExpression()) #19, !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2334, metadata !DIExpression()) #19, !dbg !3570
  call void @llvm.dbg.value(metadata i32 1, metadata !2335, metadata !DIExpression()) #19, !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2336, metadata !DIExpression()) #19, !dbg !3570
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3572
  call void @llvm.dbg.value(metadata i32* %5, metadata !2337, metadata !DIExpression()) #19, !dbg !3570
  call void @llvm.dbg.value(metadata i32 26, metadata !2339, metadata !DIExpression()) #19, !dbg !3570
  %6 = load i32, i32* %5, align 4, !dbg !3573, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %6, metadata !2340, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3570
  %7 = or i32 %6, 67108864, !dbg !3574
  store i32 %7, i32* %5, align 4, !dbg !3574, !tbaa !1485
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3576
  ret i8* %8, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3578 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3395, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %1, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !3582, metadata !DIExpression()), !dbg !3586
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3587
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3583, metadata !DIExpression()), !dbg !3588
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #19, !dbg !3590
  call void @llvm.dbg.value(metadata i32 0, metadata !3395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3590
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3584, !alias.scope !3591
  %8 = icmp eq i32 %1, 10, !dbg !3594
  br i1 %8, label %9, label %10, !dbg !3595

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3596, !noalias !3591
  unreachable, !dbg !3596

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3590
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3589
  store i32 %1, i32* %11, align 8, !dbg !3589, !tbaa.struct !3500
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3589
  %13 = bitcast i32* %12 to i8*, !dbg !3589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3589, !tbaa.struct !3500
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8 58, metadata !2334, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !2335, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8 58, metadata !2336, metadata !DIExpression()), !dbg !3597
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3599
  call void @llvm.dbg.value(metadata i32* %14, metadata !2337, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 26, metadata !2339, metadata !DIExpression()), !dbg !3597
  %15 = load i32, i32* %14, align 4, !dbg !3600, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %15, metadata !2340, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3597
  %16 = or i32 %15, 67108864, !dbg !3601
  store i32 %16, i32* %14, align 4, !dbg !3601, !tbaa !1485
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3603
  ret i8* %17, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3605 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3613, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8* %2, metadata !3611, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i8* %3, metadata !3612, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #19, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()) #19, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %2, metadata !3620, metadata !DIExpression()) #19, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %3, metadata !3621, metadata !DIExpression()) #19, !dbg !3626
  call void @llvm.dbg.value(metadata i64 -1, metadata !3622, metadata !DIExpression()) #19, !dbg !3626
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3628, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2373, metadata !DIExpression()) #19, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()) #19, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2375, metadata !DIExpression()) #19, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2373, metadata !DIExpression()) #19, !dbg !3629
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3631
  store i32 10, i32* %7, align 8, !dbg !3632, !tbaa !2315
  %8 = icmp ne i8* %1, null, !dbg !3633
  %9 = icmp ne i8* %2, null, !dbg !3634
  %10 = and i1 %8, %9, !dbg !3635
  br i1 %10, label %12, label %11, !dbg !3635

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3636
  unreachable, !dbg !3636

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3637
  store i8* %1, i8** %13, align 8, !dbg !3638, !tbaa !2389
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3639
  store i8* %2, i8** %14, align 8, !dbg !3640, !tbaa !2392
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3642
  ret i8* %15, !dbg !3643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3614 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %2, metadata !3620, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %3, metadata !3621, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %4, metadata !3622, metadata !DIExpression()), !dbg !3644
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3645
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3613, metadata !DIExpression()), !dbg !3646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3647, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2373, metadata !DIExpression()) #19, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()) #19, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2375, metadata !DIExpression()) #19, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2373, metadata !DIExpression()) #19, !dbg !3648
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3650
  store i32 10, i32* %8, align 8, !dbg !3651, !tbaa !2315
  %9 = icmp ne i8* %1, null, !dbg !3652
  %10 = icmp ne i8* %2, null, !dbg !3653
  %11 = and i1 %9, %10, !dbg !3654
  br i1 %11, label %13, label %12, !dbg !3654

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3655
  unreachable, !dbg !3655

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3656
  store i8* %1, i8** %14, align 8, !dbg !3657, !tbaa !2389
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3658
  store i8* %2, i8** %15, align 8, !dbg !3659, !tbaa !2392
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3661
  ret i8* %16, !dbg !3662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3663 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3613, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %0, metadata !3667, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3669, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #19, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3610, metadata !DIExpression()) #19, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()) #19, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %2, metadata !3612, metadata !DIExpression()) #19, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #19, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #19, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()) #19, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()) #19, !dbg !3675
  call void @llvm.dbg.value(metadata i64 -1, metadata !3622, metadata !DIExpression()) #19, !dbg !3675
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3677, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2373, metadata !DIExpression()) #19, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()) #19, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !2375, metadata !DIExpression()) #19, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2373, metadata !DIExpression()) #19, !dbg !3678
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3680
  store i32 10, i32* %6, align 8, !dbg !3681, !tbaa !2315
  %7 = icmp ne i8* %0, null, !dbg !3682
  %8 = icmp ne i8* %1, null, !dbg !3683
  %9 = and i1 %7, %8, !dbg !3684
  br i1 %9, label %11, label %10, !dbg !3684

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3685
  unreachable, !dbg !3685

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3686
  store i8* %0, i8** %12, align 8, !dbg !3687, !tbaa !2389
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3688
  store i8* %1, i8** %13, align 8, !dbg !3689, !tbaa !2392
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3691
  ret i8* %14, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3693 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3613, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i8* %1, metadata !3698, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i8* %2, metadata !3699, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %3, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #19, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #19, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()) #19, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()) #19, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3622, metadata !DIExpression()) #19, !dbg !3704
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3705
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3706, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2373, metadata !DIExpression()) #19, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()) #19, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2375, metadata !DIExpression()) #19, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2373, metadata !DIExpression()) #19, !dbg !3707
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3709
  store i32 10, i32* %7, align 8, !dbg !3710, !tbaa !2315
  %8 = icmp ne i8* %0, null, !dbg !3711
  %9 = icmp ne i8* %1, null, !dbg !3712
  %10 = and i1 %8, %9, !dbg !3713
  br i1 %10, label %12, label %11, !dbg !3713

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3714
  unreachable, !dbg !3714

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3715
  store i8* %0, i8** %13, align 8, !dbg !3716, !tbaa !2389
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3717
  store i8* %1, i8** %14, align 8, !dbg !3718, !tbaa !2392
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3719
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3720
  ret i8* %15, !dbg !3721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %2, metadata !3728, metadata !DIExpression()), !dbg !3729
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3730
  ret i8* %4, !dbg !3731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()) #19, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #19, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()) #19, !dbg !3739
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3741
  ret i8* %3, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()) #19, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()) #19, !dbg !3750
  call void @llvm.dbg.value(metadata i64 -1, metadata !3728, metadata !DIExpression()) #19, !dbg !3750
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3752
  ret i8* %3, !dbg !3753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 0, metadata !3747, metadata !DIExpression()) #19, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %0, metadata !3748, metadata !DIExpression()) #19, !dbg !3760
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()) #19, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #19, !dbg !3762
  call void @llvm.dbg.value(metadata i64 -1, metadata !3728, metadata !DIExpression()) #19, !dbg !3762
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3764
  ret i8* %2, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3770, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i8* %1, metadata !3771, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %2, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()) #19, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %1, metadata !3777, metadata !DIExpression()) #19, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %2, metadata !3778, metadata !DIExpression()) #19, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()) #19, !dbg !3789
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %4, metadata !3788, metadata !DIExpression()) #19, !dbg !3789
  call void @llvm.dbg.value(metadata i8* %4, metadata !3779, metadata !DIExpression()) #19, !dbg !3783
  %5 = icmp eq i8* %4, null, !dbg !3792
  br i1 %5, label %6, label %9, !dbg !3793

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3794
  br i1 %7, label %19, label %8, !dbg !3797

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3798, !tbaa !1577
  br label %19, !dbg !3799

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %10, metadata !3780, metadata !DIExpression()) #19, !dbg !3801
  %11 = icmp ult i64 %10, %2, !dbg !3802
  br i1 %11, label %12, label %14, !dbg !3804

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %1, metadata !3807, metadata !DIExpression()) #19, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %4, metadata !3814, metadata !DIExpression()) #19, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %13, metadata !3815, metadata !DIExpression()) #19, !dbg !3816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3818
  br label %19, !dbg !3819

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3820
  br i1 %15, label %19, label %16, !dbg !3823

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %1, metadata !3807, metadata !DIExpression()) #19, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %4, metadata !3814, metadata !DIExpression()) #19, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %17, metadata !3815, metadata !DIExpression()) #19, !dbg !3826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3828
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3829
  store i8 0, i8* %18, align 1, !dbg !3830, !tbaa !1577
  br label %19, !dbg !3831

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3832
  ret i32 %20, !dbg !3833
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()) #19, !dbg !3838
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %2, metadata !3788, metadata !DIExpression()) #19, !dbg !3838
  ret i8* %2, !dbg !3841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3842 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3849, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %1, metadata !3850, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %2, metadata !3851, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %3, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i8** %4, metadata !3853, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %5, metadata !3854, metadata !DIExpression()), !dbg !3855
  %7 = icmp eq i8* %1, null, !dbg !3856
  br i1 %7, label %10, label %8, !dbg !3858

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !3859
  br label %12, !dbg !3859

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !3860
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #19, !dbg !3861
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !3861
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3862
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #19, !dbg !3863
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.123, i64 0, i64 0)) #19, !dbg !3863
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3864
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
  ], !dbg !3865

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #19, !dbg !3866
  %21 = load i8*, i8** %4, align 8, !dbg !3866, !tbaa !1342
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !3866
  br label %147, !dbg !3868

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #19, !dbg !3869
  %25 = load i8*, i8** %4, align 8, !dbg !3869, !tbaa !1342
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3869
  %27 = load i8*, i8** %26, align 8, !dbg !3869, !tbaa !1342
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !3869
  br label %147, !dbg !3870

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #19, !dbg !3871
  %31 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !1342
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3871
  %33 = load i8*, i8** %32, align 8, !dbg !3871, !tbaa !1342
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3871
  %35 = load i8*, i8** %34, align 8, !dbg !3871, !tbaa !1342
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !3871
  br label %147, !dbg !3872

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #19, !dbg !3873
  %39 = load i8*, i8** %4, align 8, !dbg !3873, !tbaa !1342
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3873
  %41 = load i8*, i8** %40, align 8, !dbg !3873, !tbaa !1342
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3873
  %43 = load i8*, i8** %42, align 8, !dbg !3873, !tbaa !1342
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3873
  %45 = load i8*, i8** %44, align 8, !dbg !3873, !tbaa !1342
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !3873
  br label %147, !dbg !3874

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #19, !dbg !3875
  %49 = load i8*, i8** %4, align 8, !dbg !3875, !tbaa !1342
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3875
  %51 = load i8*, i8** %50, align 8, !dbg !3875, !tbaa !1342
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3875
  %53 = load i8*, i8** %52, align 8, !dbg !3875, !tbaa !1342
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3875
  %55 = load i8*, i8** %54, align 8, !dbg !3875, !tbaa !1342
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3875
  %57 = load i8*, i8** %56, align 8, !dbg !3875, !tbaa !1342
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !3875
  br label %147, !dbg !3876

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #19, !dbg !3877
  %61 = load i8*, i8** %4, align 8, !dbg !3877, !tbaa !1342
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3877
  %63 = load i8*, i8** %62, align 8, !dbg !3877, !tbaa !1342
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3877
  %65 = load i8*, i8** %64, align 8, !dbg !3877, !tbaa !1342
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3877
  %67 = load i8*, i8** %66, align 8, !dbg !3877, !tbaa !1342
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3877
  %69 = load i8*, i8** %68, align 8, !dbg !3877, !tbaa !1342
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3877
  %71 = load i8*, i8** %70, align 8, !dbg !3877, !tbaa !1342
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !3877
  br label %147, !dbg !3878

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #19, !dbg !3879
  %75 = load i8*, i8** %4, align 8, !dbg !3879, !tbaa !1342
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3879
  %77 = load i8*, i8** %76, align 8, !dbg !3879, !tbaa !1342
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3879
  %79 = load i8*, i8** %78, align 8, !dbg !3879, !tbaa !1342
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3879
  %81 = load i8*, i8** %80, align 8, !dbg !3879, !tbaa !1342
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3879
  %83 = load i8*, i8** %82, align 8, !dbg !3879, !tbaa !1342
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3879
  %85 = load i8*, i8** %84, align 8, !dbg !3879, !tbaa !1342
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3879
  %87 = load i8*, i8** %86, align 8, !dbg !3879, !tbaa !1342
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !3879
  br label %147, !dbg !3880

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #19, !dbg !3881
  %91 = load i8*, i8** %4, align 8, !dbg !3881, !tbaa !1342
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3881
  %93 = load i8*, i8** %92, align 8, !dbg !3881, !tbaa !1342
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3881
  %95 = load i8*, i8** %94, align 8, !dbg !3881, !tbaa !1342
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3881
  %97 = load i8*, i8** %96, align 8, !dbg !3881, !tbaa !1342
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3881
  %99 = load i8*, i8** %98, align 8, !dbg !3881, !tbaa !1342
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3881
  %101 = load i8*, i8** %100, align 8, !dbg !3881, !tbaa !1342
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3881
  %103 = load i8*, i8** %102, align 8, !dbg !3881, !tbaa !1342
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3881
  %105 = load i8*, i8** %104, align 8, !dbg !3881, !tbaa !1342
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !3881
  br label %147, !dbg !3882

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.132, i64 0, i64 0), i32 5) #19, !dbg !3883
  %109 = load i8*, i8** %4, align 8, !dbg !3883, !tbaa !1342
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3883
  %111 = load i8*, i8** %110, align 8, !dbg !3883, !tbaa !1342
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3883
  %113 = load i8*, i8** %112, align 8, !dbg !3883, !tbaa !1342
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3883
  %115 = load i8*, i8** %114, align 8, !dbg !3883, !tbaa !1342
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3883
  %117 = load i8*, i8** %116, align 8, !dbg !3883, !tbaa !1342
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3883
  %119 = load i8*, i8** %118, align 8, !dbg !3883, !tbaa !1342
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3883
  %121 = load i8*, i8** %120, align 8, !dbg !3883, !tbaa !1342
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3883
  %123 = load i8*, i8** %122, align 8, !dbg !3883, !tbaa !1342
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3883
  %125 = load i8*, i8** %124, align 8, !dbg !3883, !tbaa !1342
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !3883
  br label %147, !dbg !3884

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.133, i64 0, i64 0), i32 5) #19, !dbg !3885
  %129 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !1342
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3885
  %131 = load i8*, i8** %130, align 8, !dbg !3885, !tbaa !1342
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3885
  %133 = load i8*, i8** %132, align 8, !dbg !3885, !tbaa !1342
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3885
  %135 = load i8*, i8** %134, align 8, !dbg !3885, !tbaa !1342
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3885
  %137 = load i8*, i8** %136, align 8, !dbg !3885, !tbaa !1342
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3885
  %139 = load i8*, i8** %138, align 8, !dbg !3885, !tbaa !1342
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3885
  %141 = load i8*, i8** %140, align 8, !dbg !3885, !tbaa !1342
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3885
  %143 = load i8*, i8** %142, align 8, !dbg !3885, !tbaa !1342
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3885
  %145 = load i8*, i8** %144, align 8, !dbg !3885, !tbaa !1342
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !3885
  br label %147, !dbg !3886

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3888 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3892, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3893, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %2, metadata !3894, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %3, metadata !3895, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8** %4, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 0, metadata !3897, metadata !DIExpression()), !dbg !3898
  br label %6, !dbg !3899

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3901
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3902
  %9 = load i8*, i8** %8, align 8, !dbg !3902, !tbaa !1342
  %10 = icmp eq i8* %9, null, !dbg !3904
  %11 = add i64 %7, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %11, metadata !3897, metadata !DIExpression()), !dbg !3898
  br i1 %10, label %12, label %6, !dbg !3904, !llvm.loop !3906

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %7, metadata !3897, metadata !DIExpression()), !dbg !3898
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3908
  ret void, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3910 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3921, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %1, metadata !3922, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %2, metadata !3923, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %3, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3925, metadata !DIExpression()), !dbg !3929
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3930
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3930
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3927, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 0, metadata !3926, metadata !DIExpression()), !dbg !3929
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3932
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3932
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3932
  %11 = load i32, i32* %8, align 8, !dbg !3935
  %12 = icmp ult i32 %11, 41, !dbg !3935
  br i1 %12, label %13, label %18, !dbg !3935

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3935
  %15 = zext i32 %11 to i64, !dbg !3935
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3935
  %17 = add nuw nsw i32 %11, 8, !dbg !3935
  store i32 %17, i32* %8, align 8, !dbg !3935
  br label %21, !dbg !3935

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3935
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3935
  store i8* %20, i8** %9, align 8, !dbg !3935
  br label %21, !dbg !3935

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3935
  %25 = load i8*, i8** %24, align 8, !dbg !3935
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3936
  store i8* %25, i8** %26, align 16, !dbg !3937, !tbaa !1342
  %27 = icmp eq i8* %25, null, !dbg !3938
  br i1 %27, label %30, label %28, !dbg !3939

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3926, metadata !DIExpression()), !dbg !3929
  %29 = icmp ult i32 %22, 41, !dbg !3935
  br i1 %29, label %35, label %32, !dbg !3935

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3940
  call void @llvm.dbg.value(metadata i64 %31, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %31, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3941
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3942
  ret void, !dbg !3942

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3935
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3935
  store i8* %34, i8** %9, align 8, !dbg !3935
  br label %40, !dbg !3935

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3935
  %37 = zext i32 %22 to i64, !dbg !3935
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3935
  %39 = add nuw nsw i32 %22, 8, !dbg !3935
  store i32 %39, i32* %8, align 8, !dbg !3935
  br label %40, !dbg !3935

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3935
  %44 = load i8*, i8** %43, align 8, !dbg !3935
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3936
  store i8* %44, i8** %45, align 8, !dbg !3937, !tbaa !1342
  %46 = icmp eq i8* %44, null, !dbg !3938
  br i1 %46, label %30, label %47, !dbg !3939

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3926, metadata !DIExpression()), !dbg !3929
  %48 = icmp ult i32 %41, 41, !dbg !3935
  br i1 %48, label %52, label %49, !dbg !3935

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3935
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3935
  store i8* %51, i8** %9, align 8, !dbg !3935
  br label %57, !dbg !3935

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3935
  %54 = zext i32 %41 to i64, !dbg !3935
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3935
  %56 = add nuw nsw i32 %41, 8, !dbg !3935
  store i32 %56, i32* %8, align 8, !dbg !3935
  br label %57, !dbg !3935

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3935
  %61 = load i8*, i8** %60, align 8, !dbg !3935
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3936
  store i8* %61, i8** %62, align 16, !dbg !3937, !tbaa !1342
  %63 = icmp eq i8* %61, null, !dbg !3938
  br i1 %63, label %30, label %64, !dbg !3939

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3926, metadata !DIExpression()), !dbg !3929
  %65 = icmp ult i32 %58, 41, !dbg !3935
  br i1 %65, label %69, label %66, !dbg !3935

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3935
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3935
  store i8* %68, i8** %9, align 8, !dbg !3935
  br label %74, !dbg !3935

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3935
  %71 = zext i32 %58 to i64, !dbg !3935
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3935
  %73 = add nuw nsw i32 %58, 8, !dbg !3935
  store i32 %73, i32* %8, align 8, !dbg !3935
  br label %74, !dbg !3935

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3935
  %78 = load i8*, i8** %77, align 8, !dbg !3935
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3936
  store i8* %78, i8** %79, align 8, !dbg !3937, !tbaa !1342
  %80 = icmp eq i8* %78, null, !dbg !3938
  br i1 %80, label %30, label %81, !dbg !3939

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3926, metadata !DIExpression()), !dbg !3929
  %82 = icmp ult i32 %75, 41, !dbg !3935
  br i1 %82, label %86, label %83, !dbg !3935

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3935
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3935
  store i8* %85, i8** %9, align 8, !dbg !3935
  br label %91, !dbg !3935

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3935
  %88 = zext i32 %75 to i64, !dbg !3935
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3935
  %90 = add nuw nsw i32 %75, 8, !dbg !3935
  store i32 %90, i32* %8, align 8, !dbg !3935
  br label %91, !dbg !3935

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3935
  %95 = load i8*, i8** %94, align 8, !dbg !3935
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3936
  store i8* %95, i8** %96, align 16, !dbg !3937, !tbaa !1342
  %97 = icmp eq i8* %95, null, !dbg !3938
  br i1 %97, label %30, label %98, !dbg !3939

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3926, metadata !DIExpression()), !dbg !3929
  %99 = icmp ult i32 %92, 41, !dbg !3935
  br i1 %99, label %103, label %100, !dbg !3935

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3935
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3935
  store i8* %102, i8** %9, align 8, !dbg !3935
  br label %108, !dbg !3935

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3935
  %105 = zext i32 %92 to i64, !dbg !3935
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3935
  %107 = add nuw nsw i32 %92, 8, !dbg !3935
  store i32 %107, i32* %8, align 8, !dbg !3935
  br label %108, !dbg !3935

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3935
  %111 = load i8*, i8** %110, align 8, !dbg !3935
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3936
  store i8* %111, i8** %112, align 8, !dbg !3937, !tbaa !1342
  %113 = icmp eq i8* %111, null, !dbg !3938
  br i1 %113, label %30, label %114, !dbg !3939

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3926, metadata !DIExpression()), !dbg !3929
  %115 = load i8*, i8** %9, align 8, !dbg !3935
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3935
  store i8* %116, i8** %9, align 8, !dbg !3935
  %117 = bitcast i8* %115 to i8**, !dbg !3935
  %118 = load i8*, i8** %117, align 8, !dbg !3935
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3936
  store i8* %118, i8** %119, align 16, !dbg !3937, !tbaa !1342
  %120 = icmp eq i8* %118, null, !dbg !3938
  br i1 %120, label %30, label %121, !dbg !3939

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3926, metadata !DIExpression()), !dbg !3929
  %122 = load i8*, i8** %9, align 8, !dbg !3935
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3935
  store i8* %123, i8** %9, align 8, !dbg !3935
  %124 = bitcast i8* %122 to i8**, !dbg !3935
  %125 = load i8*, i8** %124, align 8, !dbg !3935
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3936
  store i8* %125, i8** %126, align 8, !dbg !3937, !tbaa !1342
  %127 = icmp eq i8* %125, null, !dbg !3938
  br i1 %127, label %30, label %128, !dbg !3939

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3926, metadata !DIExpression()), !dbg !3929
  %129 = load i8*, i8** %9, align 8, !dbg !3935
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3935
  store i8* %130, i8** %9, align 8, !dbg !3935
  %131 = bitcast i8* %129 to i8**, !dbg !3935
  %132 = load i8*, i8** %131, align 8, !dbg !3935
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3936
  store i8* %132, i8** %133, align 16, !dbg !3937, !tbaa !1342
  %134 = icmp eq i8* %132, null, !dbg !3938
  br i1 %134, label %30, label %135, !dbg !3939

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3926, metadata !DIExpression()), !dbg !3929
  %136 = load i8*, i8** %9, align 8, !dbg !3935
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3935
  store i8* %137, i8** %9, align 8, !dbg !3935
  %138 = bitcast i8* %136 to i8**, !dbg !3935
  %139 = load i8*, i8** %138, align 8, !dbg !3935
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3936
  store i8* %139, i8** %140, align 8, !dbg !3937, !tbaa !1342
  %141 = icmp eq i8* %139, null, !dbg !3938
  %142 = select i1 %141, i64 9, i64 10, !dbg !3939
  br label %30, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3943 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3947, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %1, metadata !3948, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %2, metadata !3949, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %3, metadata !3950, metadata !DIExpression()), !dbg !3957
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3958
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3951, metadata !DIExpression()), !dbg !3959
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3960
  call void @llvm.va_start(i8* nonnull %6), !dbg !3960
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3961
  call void @llvm.va_end(i8* nonnull %6), !dbg !3962
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3963
  ret void, !dbg !3963
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3964 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3965, !tbaa !1342
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3965
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #19, !dbg !3966
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.137, i64 0, i64 0)) #19, !dbg !3966
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.138, i64 0, i64 0), i32 5) #19, !dbg !3967
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.139, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.140, i64 0, i64 0)) #19, !dbg !3967
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.141, i64 0, i64 0), i32 5) #19, !dbg !3968
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.142, i64 0, i64 0)) #19, !dbg !3968
  ret void, !dbg !3969
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3970 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %1, metadata !3975, metadata !DIExpression()), !dbg !3976
  %3 = udiv i64 9223372036854775807, %1, !dbg !3977
  %4 = icmp ult i64 %3, %0, !dbg !3977
  br i1 %4, label %5, label %6, !dbg !3979

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3980
  unreachable, !dbg !3980

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3981
  call void @llvm.dbg.value(metadata i64 %7, metadata !3982, metadata !DIExpression()) #19, !dbg !3988
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !3990
  call void @llvm.dbg.value(metadata i8* %8, metadata !3987, metadata !DIExpression()) #19, !dbg !3988
  %9 = icmp eq i8* %8, null, !dbg !3991
  %10 = icmp ne i64 %7, 0, !dbg !3993
  %11 = and i1 %10, %9, !dbg !3994
  br i1 %11, label %12, label %13, !dbg !3994

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3995
  unreachable, !dbg !3995

13:                                               ; preds = %6
  ret i8* %8, !dbg !3996
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3982, metadata !DIExpression()), !dbg !3997
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3998
  call void @llvm.dbg.value(metadata i8* %2, metadata !3987, metadata !DIExpression()), !dbg !3997
  %3 = icmp eq i8* %2, null, !dbg !3999
  %4 = icmp ne i64 %0, 0, !dbg !4000
  %5 = and i1 %4, %3, !dbg !4001
  br i1 %5, label %6, label %7, !dbg !4001

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4002
  unreachable, !dbg !4002

7:                                                ; preds = %1
  ret i8* %2, !dbg !4003
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %2, metadata !4010, metadata !DIExpression()), !dbg !4011
  %4 = udiv i64 9223372036854775807, %2, !dbg !4012
  %5 = icmp ult i64 %4, %1, !dbg !4012
  br i1 %5, label %6, label %7, !dbg !4014

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !4015
  unreachable, !dbg !4015

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #19, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %8, metadata !4022, metadata !DIExpression()) #19, !dbg !4023
  %9 = icmp eq i64 %8, 0, !dbg !4025
  %10 = icmp ne i8* %0, null, !dbg !4027
  %11 = and i1 %10, %9, !dbg !4028
  br i1 %11, label %12, label %13, !dbg !4028

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !4029
  br label %19, !dbg !4031

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !4032
  call void @llvm.dbg.value(metadata i8* %14, metadata !4017, metadata !DIExpression()) #19, !dbg !4023
  %15 = icmp eq i8* %14, null, !dbg !4033
  %16 = icmp ne i64 %8, 0, !dbg !4035
  %17 = and i1 %16, %15, !dbg !4036
  br i1 %17, label %18, label %19, !dbg !4036

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4037
  unreachable, !dbg !4037

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4023
  ret i8* %20, !dbg !4038
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %1, metadata !4022, metadata !DIExpression()), !dbg !4039
  %3 = icmp eq i64 %1, 0, !dbg !4040
  %4 = icmp ne i8* %0, null, !dbg !4041
  %5 = and i1 %4, %3, !dbg !4042
  br i1 %5, label %6, label %7, !dbg !4042

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !4043
  br label %13, !dbg !4044

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %8, metadata !4017, metadata !DIExpression()), !dbg !4039
  %9 = icmp eq i8* %8, null, !dbg !4046
  %10 = icmp ne i64 %1, 0, !dbg !4047
  %11 = and i1 %10, %9, !dbg !4048
  br i1 %11, label %12, label %13, !dbg !4048

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4049
  unreachable, !dbg !4049

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4039
  ret i8* %14, !dbg !4050
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64* %1, metadata !666, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %2, metadata !667, metadata !DIExpression()), !dbg !4051
  %4 = load i64, i64* %1, align 8, !dbg !4052, !tbaa !1519
  call void @llvm.dbg.value(metadata i64 %4, metadata !668, metadata !DIExpression()), !dbg !4051
  %5 = icmp eq i8* %0, null, !dbg !4053
  br i1 %5, label %6, label %20, !dbg !4055

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4056
  br i1 %7, label %8, label %13, !dbg !4059

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %9, metadata !668, metadata !DIExpression()), !dbg !4051
  %10 = icmp ugt i64 %2, 128, !dbg !4062
  %11 = zext i1 %10 to i64, !dbg !4062
  %12 = add nuw nsw i64 %9, %11, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %12, metadata !668, metadata !DIExpression()), !dbg !4051
  br label %13, !dbg !4064

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4051
  call void @llvm.dbg.value(metadata i64 %14, metadata !668, metadata !DIExpression()), !dbg !4051
  %15 = udiv i64 9223372036854775807, %2, !dbg !4065
  %16 = icmp ult i64 %15, %14, !dbg !4065
  br i1 %16, label %19, label %17, !dbg !4067

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !668, metadata !DIExpression()), !dbg !4051
  store i64 %14, i64* %1, align 8, !dbg !4068, !tbaa !1519
  %18 = mul i64 %14, %2, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #19, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %28, metadata !4022, metadata !DIExpression()) #19, !dbg !4070
  br label %31, !dbg !4072

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4073
  unreachable, !dbg !4073

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4074
  %22 = icmp ugt i64 %21, %4, !dbg !4077
  br i1 %22, label %24, label %23, !dbg !4078

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !4079
  unreachable, !dbg !4079

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4080
  %26 = add nuw i64 %4, 1, !dbg !4081
  %27 = add i64 %26, %25, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %27, metadata !668, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %27, metadata !668, metadata !DIExpression()), !dbg !4051
  store i64 %27, i64* %1, align 8, !dbg !4068, !tbaa !1519
  %28 = mul i64 %27, %2, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #19, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %28, metadata !4022, metadata !DIExpression()) #19, !dbg !4070
  %29 = icmp eq i64 %28, 0, !dbg !4083
  br i1 %29, label %30, label %31, !dbg !4072

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !4084
  br label %38, !dbg !4085

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %33, metadata !4017, metadata !DIExpression()) #19, !dbg !4070
  %34 = icmp eq i8* %33, null, !dbg !4087
  %35 = icmp ne i64 %32, 0, !dbg !4088
  %36 = and i1 %35, %34, !dbg !4089
  br i1 %36, label %37, label %38, !dbg !4089

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4090
  unreachable, !dbg !4090

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4070
  ret i8* %39, !dbg !4091
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4092 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %0, metadata !3982, metadata !DIExpression()) #19, !dbg !4096
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4098
  call void @llvm.dbg.value(metadata i8* %2, metadata !3987, metadata !DIExpression()) #19, !dbg !4096
  %3 = icmp eq i8* %2, null, !dbg !4099
  %4 = icmp ne i64 %0, 0, !dbg !4100
  %5 = and i1 %4, %3, !dbg !4101
  br i1 %5, label %6, label %7, !dbg !4101

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4102
  unreachable, !dbg !4102

7:                                                ; preds = %1
  ret i8* %2, !dbg !4103
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4104 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4108, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64* %1, metadata !4109, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()) #19, !dbg !4111
  call void @llvm.dbg.value(metadata i64* %1, metadata !666, metadata !DIExpression()) #19, !dbg !4111
  call void @llvm.dbg.value(metadata i64 1, metadata !667, metadata !DIExpression()) #19, !dbg !4111
  %3 = load i64, i64* %1, align 8, !dbg !4113, !tbaa !1519
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()) #19, !dbg !4111
  %4 = icmp eq i8* %0, null, !dbg !4114
  br i1 %4, label %5, label %12, !dbg !4115

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4116
  br i1 %6, label %9, label %7, !dbg !4117

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()) #19, !dbg !4111
  %8 = icmp slt i64 %3, 0, !dbg !4118
  br i1 %8, label %11, label %9, !dbg !4119

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()) #19, !dbg !4111
  store i64 %10, i64* %1, align 8, !dbg !4120, !tbaa !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #19, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %18, metadata !4022, metadata !DIExpression()) #19, !dbg !4121
  br label %21, !dbg !4123

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4124
  unreachable, !dbg !4124

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4125
  br i1 %13, label %15, label %14, !dbg !4126

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4127
  unreachable, !dbg !4127

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4128
  %17 = add nuw nsw i64 %3, 1, !dbg !4129
  %18 = add nuw nsw i64 %17, %16, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()) #19, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()) #19, !dbg !4111
  store i64 %18, i64* %1, align 8, !dbg !4120, !tbaa !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !4017, metadata !DIExpression()) #19, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %18, metadata !4022, metadata !DIExpression()) #19, !dbg !4121
  %19 = icmp eq i64 %18, 0, !dbg !4131
  br i1 %19, label %20, label %21, !dbg !4123

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4132
  br label %28, !dbg !4133

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4134
  call void @llvm.dbg.value(metadata i8* %23, metadata !4017, metadata !DIExpression()) #19, !dbg !4121
  %24 = icmp eq i8* %23, null, !dbg !4135
  %25 = icmp ne i64 %22, 0, !dbg !4136
  %26 = and i1 %25, %24, !dbg !4137
  br i1 %26, label %27, label %28, !dbg !4137

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4138
  unreachable, !dbg !4138

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4121
  ret i8* %29, !dbg !4139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4140 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()) #19, !dbg !4149
  call void @llvm.dbg.value(metadata i64 1, metadata !4147, metadata !DIExpression()) #19, !dbg !4149
  %2 = icmp slt i64 %0, 0, !dbg !4151
  br i1 %2, label %6, label %3, !dbg !4153

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %4, metadata !4148, metadata !DIExpression()) #19, !dbg !4149
  %5 = icmp eq i8* %4, null, !dbg !4155
  br i1 %5, label %6, label %7, !dbg !4156

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4157
  unreachable, !dbg !4157

7:                                                ; preds = %3
  ret i8* %4, !dbg !4158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4145 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %1, metadata !4147, metadata !DIExpression()), !dbg !4159
  %3 = udiv i64 9223372036854775807, %1, !dbg !4160
  %4 = icmp ult i64 %3, %0, !dbg !4160
  br i1 %4, label %8, label %5, !dbg !4161

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %6, metadata !4148, metadata !DIExpression()), !dbg !4159
  %7 = icmp eq i8* %6, null, !dbg !4163
  br i1 %7, label %8, label %9, !dbg !4164

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4165
  unreachable, !dbg !4165

9:                                                ; preds = %5
  ret i8* %6, !dbg !4166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()) #19, !dbg !4174
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %3, metadata !3987, metadata !DIExpression()) #19, !dbg !4174
  %4 = icmp eq i8* %3, null, !dbg !4177
  %5 = icmp ne i64 %1, 0, !dbg !4178
  %6 = and i1 %5, %4, !dbg !4179
  br i1 %6, label %7, label %8, !dbg !4179

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4180
  unreachable, !dbg !4180

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4181, metadata !DIExpression()) #19, !dbg !4186
  call void @llvm.dbg.value(metadata i8* %0, metadata !4184, metadata !DIExpression()) #19, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4185, metadata !DIExpression()) #19, !dbg !4186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4188
  ret i8* %3, !dbg !4189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4192, metadata !DIExpression()), !dbg !4193
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4194
  %3 = add i64 %2, 1, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #19, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %3, metadata !4172, metadata !DIExpression()) #19, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %3, metadata !3982, metadata !DIExpression()) #19, !dbg !4198
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %4, metadata !3987, metadata !DIExpression()) #19, !dbg !4198
  %5 = icmp eq i8* %4, null, !dbg !4201
  %6 = icmp ne i64 %3, 0, !dbg !4202
  %7 = and i1 %6, %5, !dbg !4203
  br i1 %7, label %8, label %9, !dbg !4203

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4204
  unreachable, !dbg !4204

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4181, metadata !DIExpression()) #19, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %0, metadata !4184, metadata !DIExpression()) #19, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %3, metadata !4185, metadata !DIExpression()) #19, !dbg !4205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4207
  ret i8* %4, !dbg !4208
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4209 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4210, !tbaa !1485
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.153, i64 0, i64 0), i32 5) #19, !dbg !4211
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), i8* %2) #19, !dbg !4212
  tail call void @abort() #23, !dbg !4213
  unreachable, !dbg !4213
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4217, metadata !DIExpression()), !dbg !4222
  %3 = icmp eq i64 %0, 0, !dbg !4223
  %4 = icmp eq i64 %1, 0, !dbg !4224
  %5 = or i1 %3, %4, !dbg !4225
  br i1 %5, label %11, label %6, !dbg !4225

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4219, metadata !DIExpression()), !dbg !4226
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4227
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4227
  br i1 %8, label %9, label %11, !dbg !4229

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4230
  store i32 12, i32* %10, align 4, !dbg !4232, !tbaa !1485
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4216, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %12, metadata !4217, metadata !DIExpression()), !dbg !4222
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %14, metadata !4218, metadata !DIExpression()), !dbg !4222
  br label %15, !dbg !4234

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4222
  ret i8* %16, !dbg !4235
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4236 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4242, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i32 0, metadata !4243, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i32 0, metadata !4245, metadata !DIExpression()), !dbg !4246
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4247
  call void @llvm.dbg.value(metadata i32 %2, metadata !4244, metadata !DIExpression()), !dbg !4246
  %3 = icmp slt i32 %2, 0, !dbg !4248
  br i1 %3, label %4, label %6, !dbg !4250

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4251
  br label %24, !dbg !4252

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4253
  %8 = icmp eq i32 %7, 0, !dbg !4253
  br i1 %8, label %13, label %9, !dbg !4255

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4256
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4257
  %12 = icmp eq i64 %11, -1, !dbg !4258
  br i1 %12, label %16, label %13, !dbg !4259

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4260
  %15 = icmp eq i32 %14, 0, !dbg !4260
  br i1 %15, label %16, label %18, !dbg !4261

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4243, metadata !DIExpression()), !dbg !4246
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4262
  call void @llvm.dbg.value(metadata i32 %21, metadata !4245, metadata !DIExpression()), !dbg !4246
  br label %24, !dbg !4263

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4264
  %20 = load i32, i32* %19, align 4, !dbg !4264, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %20, metadata !4243, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i32 %20, metadata !4243, metadata !DIExpression()), !dbg !4246
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4262
  call void @llvm.dbg.value(metadata i32 %21, metadata !4245, metadata !DIExpression()), !dbg !4246
  %22 = icmp eq i32 %20, 0, !dbg !4265
  br i1 %22, label %24, label %23, !dbg !4263

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4267, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 -1, metadata !4245, metadata !DIExpression()), !dbg !4246
  br label %24, !dbg !4269

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4246
  ret i32 %25, !dbg !4270
}

; Function Attrs: nofree nounwind
declare !dbg !686 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !721 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !722 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4271 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4277, metadata !DIExpression()), !dbg !4278
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4279
  br i1 %2, label %6, label %3, !dbg !4281

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4282
  %5 = icmp eq i32 %4, 0, !dbg !4282
  br i1 %5, label %6, label %8, !dbg !4283

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4284
  br label %17, !dbg !4285

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4286, metadata !DIExpression()) #19, !dbg !4291
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4293
  %10 = load i32, i32* %9, align 8, !dbg !4293, !tbaa !4295
  %11 = and i32 %10, 256, !dbg !4296
  %12 = icmp eq i32 %11, 0, !dbg !4296
  br i1 %12, label %15, label %13, !dbg !4297

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4298
  br label %15, !dbg !4298

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4299
  br label %17, !dbg !4300

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4278
  ret i32 %18, !dbg !4301
}

; Function Attrs: nofree nounwind
declare !dbg !730 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4302 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4309, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %2, metadata !4311, metadata !DIExpression()), !dbg !4315
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4316
  %5 = load i8*, i8** %4, align 8, !dbg !4316, !tbaa !4317
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4318
  %7 = load i8*, i8** %6, align 8, !dbg !4318, !tbaa !4319
  %8 = icmp eq i8* %5, %7, !dbg !4320
  br i1 %8, label %9, label %28, !dbg !4321

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4322
  %11 = load i8*, i8** %10, align 8, !dbg !4322, !tbaa !1571
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4323
  %13 = load i8*, i8** %12, align 8, !dbg !4323, !tbaa !4324
  %14 = icmp eq i8* %11, %13, !dbg !4325
  br i1 %14, label %15, label %28, !dbg !4326

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4327
  %17 = load i8*, i8** %16, align 8, !dbg !4327, !tbaa !4328
  %18 = icmp eq i8* %17, null, !dbg !4329
  br i1 %18, label %19, label %28, !dbg !4330

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4331
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %21, metadata !4312, metadata !DIExpression()), !dbg !4333
  %22 = icmp eq i64 %21, -1, !dbg !4334
  br i1 %22, label %30, label %23, !dbg !4336

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4337
  %25 = load i32, i32* %24, align 8, !dbg !4338, !tbaa !4295
  %26 = and i32 %25, -17, !dbg !4338
  store i32 %26, i32* %24, align 8, !dbg !4338, !tbaa !4295
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4339
  store i64 %21, i64* %27, align 8, !dbg !4340, !tbaa !4341
  br label %30, !dbg !4342

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4343
  br label %30, !dbg !4344

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4315
  ret i32 %31, !dbg !4345
}

; Function Attrs: nofree nounwind
declare !dbg !806 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4346 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4354, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %1, metadata !4355, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %2, metadata !4356, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4357, metadata !DIExpression()), !dbg !4363
  %6 = bitcast i32* %5 to i8*, !dbg !4364
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4364
  %7 = icmp eq i32* %0, null, !dbg !4365
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4367
  call void @llvm.dbg.value(metadata i32* %8, metadata !4354, metadata !DIExpression()), !dbg !4363
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %9, metadata !4358, metadata !DIExpression()), !dbg !4363
  %10 = icmp ugt i64 %9, -3, !dbg !4369
  %11 = icmp ne i64 %2, 0, !dbg !4370
  %12 = and i1 %11, %10, !dbg !4371
  br i1 %12, label %13, label %18, !dbg !4371

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !4372
  br i1 %14, label %18, label %15, !dbg !4373

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4374, !tbaa !1577
  call void @llvm.dbg.value(metadata i8 %16, metadata !4360, metadata !DIExpression()), !dbg !4375
  %17 = zext i8 %16 to i32, !dbg !4376
  store i32 %17, i32* %8, align 4, !dbg !4377, !tbaa !1485
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4378
  ret i64 %19, !dbg !4378
}

; Function Attrs: nounwind
declare !dbg !812 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !4379 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4386, metadata !DIExpression()), !dbg !4389
  %2 = tail call noalias i8* @xmalloc(i64 33) #19, !dbg !4390
  call void @llvm.dbg.value(metadata i8* %2, metadata !4388, metadata !DIExpression()), !dbg !4389
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %2, metadata !4392, metadata !DIExpression()) #19, !dbg !4397
  call void @llvm.dbg.value(metadata i8* %3, metadata !4395, metadata !DIExpression()) #19, !dbg !4397
  call void @llvm.dbg.value(metadata i64 32, metadata !4396, metadata !DIExpression()) #19, !dbg !4397
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !4399
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4400
  store i8 0, i8* %5, align 1, !dbg !4401, !tbaa !1577
  %6 = tail call i64 @strlen(i8* nonnull %2) #22, !dbg !4402
  call void @llvm.dbg.value(metadata i8* undef, metadata !4387, metadata !DIExpression()), !dbg !4389
  %7 = icmp sgt i64 %6, 0, !dbg !4404
  br i1 %7, label %8, label %17, !dbg !4406

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %9, metadata !4387, metadata !DIExpression()), !dbg !4389
  br label %10, !dbg !4408

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4387, metadata !DIExpression()), !dbg !4389
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4409
  %13 = load i8, i8* %12, align 1, !dbg !4409, !tbaa !1577
  %14 = icmp eq i8 %13, 32, !dbg !4410
  br i1 %14, label %15, label %17, !dbg !4408

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !4387, metadata !DIExpression()), !dbg !4389
  store i8 0, i8* %12, align 1, !dbg !4411, !tbaa !1577
  %16 = icmp ult i8* %2, %12, !dbg !4404
  br i1 %16, label %10, label %17, !dbg !4406, !llvm.loop !4412

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !4414
}

; Function Attrs: nofree nounwind
declare i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !4415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4421, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %1, metadata !4422, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4423, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %3, metadata !4424, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 0, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 0, metadata !4426, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4427, metadata !DIExpression()), !dbg !4429
  %5 = tail call i32 @utmpxname(i8* %0) #19, !dbg !4430
  tail call void @setutxent() #19, !dbg !4431
  call void @llvm.dbg.value(metadata i64 0, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4427, metadata !DIExpression()), !dbg !4429
  %6 = tail call %struct.utmpx* @getutxent() #19, !dbg !4432
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4428, metadata !DIExpression()), !dbg !4429
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4433
  br i1 %7, label %77, label %8, !dbg !4434

8:                                                ; preds = %4
  %9 = and i32 %3, 2, !dbg !4435
  %10 = icmp eq i32 %9, 0, !dbg !4435
  %11 = and i32 %3, 1, !dbg !4446
  %12 = icmp eq i32 %11, 0, !dbg !4446
  br label %13, !dbg !4434

13:                                               ; preds = %8, %71
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %71 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %71 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %71 ]
  %17 = phi i64 [ 0, %8 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4441, metadata !DIExpression()) #19, !dbg !4448
  call void @llvm.dbg.value(metadata i32 %3, metadata !4442, metadata !DIExpression()) #19, !dbg !4448
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4449
  %19 = load i8, i8* %18, align 4, !dbg !4449, !tbaa !1577
  %20 = icmp eq i8 %19, 0, !dbg !4449
  br i1 %20, label %25, label %21, !dbg !4449

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4449
  %23 = load i16, i16* %22, align 4, !dbg !4449, !tbaa !1583
  %24 = icmp eq i16 %23, 7, !dbg !4449
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !4448
  call void @llvm.dbg.value(metadata i1 %26, metadata !4443, metadata !DIExpression()) #19, !dbg !4448
  %27 = or i1 %10, %26, !dbg !4450
  br i1 %27, label %28, label %71, !dbg !4450

28:                                               ; preds = %25
  %29 = xor i1 %26, true, !dbg !4451
  %30 = or i1 %12, %29, !dbg !4451
  br i1 %30, label %42, label %31, !dbg !4451

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4452
  %33 = load i32, i32* %32, align 4, !dbg !4452, !tbaa !4453
  %34 = icmp sgt i32 %33, 0, !dbg !4454
  br i1 %34, label %35, label %42, !dbg !4455

35:                                               ; preds = %31
  %36 = tail call i32 @kill(i32 %33, i32 0) #19, !dbg !4456
  %37 = icmp slt i32 %36, 0, !dbg !4457
  br i1 %37, label %38, label %42, !dbg !4458

38:                                               ; preds = %35
  %39 = tail call i32* @__errno_location() #25, !dbg !4459
  %40 = load i32, i32* %39, align 4, !dbg !4459, !tbaa !1485
  %41 = icmp eq i32 %40, 3, !dbg !4460
  br i1 %41, label %71, label %42, !dbg !4461

42:                                               ; preds = %38, %35, %31, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !4426, metadata !DIExpression()), !dbg !4429
  %43 = icmp eq i64 %15, %17, !dbg !4462
  br i1 %43, label %44, label %64, !dbg !4465

44:                                               ; preds = %42
  %45 = bitcast %struct.utmpx* %16 to i8*, !dbg !4466
  call void @llvm.dbg.value(metadata i8* %45, metadata !834, metadata !DIExpression()) #19, !dbg !4467
  call void @llvm.dbg.value(metadata i64 384, metadata !836, metadata !DIExpression()) #19, !dbg !4467
  call void @llvm.dbg.value(metadata i64 %17, metadata !837, metadata !DIExpression()) #19, !dbg !4467
  %46 = icmp eq %struct.utmpx* %16, null, !dbg !4469
  br i1 %46, label %47, label %52, !dbg !4471

47:                                               ; preds = %44
  %48 = icmp eq i64 %15, 0, !dbg !4472
  br i1 %48, label %59, label %49, !dbg !4475

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %17, metadata !837, metadata !DIExpression()) #19, !dbg !4467
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !4476
  br i1 %50, label %51, label %59, !dbg !4478

51:                                               ; preds = %49
  tail call void @xalloc_die() #23, !dbg !4479
  unreachable, !dbg !4479

52:                                               ; preds = %44
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !4480
  br i1 %53, label %55, label %54, !dbg !4483

54:                                               ; preds = %52
  tail call void @xalloc_die() #23, !dbg !4484
  unreachable, !dbg !4484

55:                                               ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !4485
  %57 = add nuw nsw i64 %15, 1, !dbg !4486
  %58 = add nuw nsw i64 %57, %56, !dbg !4487
  call void @llvm.dbg.value(metadata i64 %58, metadata !837, metadata !DIExpression()) #19, !dbg !4467
  br label %59

59:                                               ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !4467
  call void @llvm.dbg.value(metadata i64 %60, metadata !837, metadata !DIExpression()) #19, !dbg !4467
  %61 = mul nuw nsw i64 %60, 384, !dbg !4488
  %62 = tail call i8* @xrealloc(i8* %45, i64 %61) #19, !dbg !4489
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !4490
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !4427, metadata !DIExpression()), !dbg !4429
  br label %64, !dbg !4491

64:                                               ; preds = %59, %42
  %65 = phi i64 [ %60, %59 ], [ %17, %42 ], !dbg !4429
  %66 = phi %struct.utmpx* [ %63, %59 ], [ %16, %42 ], !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* %66, metadata !4427, metadata !DIExpression()), !dbg !4429
  %67 = add i64 %15, 1, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %67, metadata !4425, metadata !DIExpression()), !dbg !4429
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %66, i64 %15, !dbg !4493
  %69 = bitcast %struct.utmpx* %68 to i8*, !dbg !4494
  %70 = bitcast %struct.utmpx* %14 to i8*, !dbg !4494
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %69, i8* nonnull align 4 dereferenceable(384) %70, i64 384, i1 false), !dbg !4494, !tbaa.struct !4495
  br label %71, !dbg !4496

71:                                               ; preds = %38, %25, %64
  %72 = phi i64 [ %65, %64 ], [ %17, %25 ], [ %17, %38 ], !dbg !4429
  %73 = phi %struct.utmpx* [ %66, %64 ], [ %16, %25 ], [ %16, %38 ], !dbg !4429
  %74 = phi i64 [ %67, %64 ], [ %15, %25 ], [ %15, %38 ], !dbg !4429
  call void @llvm.dbg.value(metadata i64 %74, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* %73, metadata !4427, metadata !DIExpression()), !dbg !4429
  %75 = tail call %struct.utmpx* @getutxent() #19, !dbg !4432
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !4428, metadata !DIExpression()), !dbg !4429
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !4433
  br i1 %76, label %77, label %13, !dbg !4434, !llvm.loop !4497

77:                                               ; preds = %71, %4
  %78 = phi %struct.utmpx* [ null, %4 ], [ %73, %71 ], !dbg !4429
  %79 = phi i64 [ 0, %4 ], [ %74, %71 ], !dbg !4429
  call void @llvm.dbg.value(metadata %struct.utmpx* %78, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %79, metadata !4425, metadata !DIExpression()), !dbg !4429
  tail call void @endutxent() #19, !dbg !4499
  store i64 %79, i64* %1, align 8, !dbg !4500, !tbaa !1519
  store %struct.utmpx* %78, %struct.utmpx** %2, align 8, !dbg !4501, !tbaa !1342
  ret i32 0, !dbg !4502
}

declare !dbg !839 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !843 void @setutxent() local_unnamed_addr #3

declare !dbg !844 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !870 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !869 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4503 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4509, metadata !DIExpression()), !dbg !4514
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !4515
  call void @llvm.dbg.value(metadata i1 undef, metadata !4510, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4516, metadata !DIExpression()), !dbg !4519
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4521
  %4 = load i32, i32* %3, align 8, !dbg !4521, !tbaa !4295
  %5 = and i32 %4, 32, !dbg !4521
  %6 = icmp eq i32 %5, 0, !dbg !4522
  call void @llvm.dbg.value(metadata i1 %6, metadata !4512, metadata !DIExpression()), !dbg !4514
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !4523
  %8 = icmp ne i32 %7, 0, !dbg !4524
  call void @llvm.dbg.value(metadata i1 %8, metadata !4513, metadata !DIExpression()), !dbg !4514
  br i1 %6, label %9, label %19, !dbg !4525

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4527
  call void @llvm.dbg.value(metadata i1 %10, metadata !4510, metadata !DIExpression()), !dbg !4514
  %11 = xor i1 %8, true, !dbg !4528
  %12 = or i1 %10, %11, !dbg !4528
  %13 = sext i1 %8 to i32, !dbg !4528
  br i1 %12, label %22, label %14, !dbg !4528

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4529
  %16 = load i32, i32* %15, align 4, !dbg !4529, !tbaa !1485
  %17 = icmp ne i32 %16, 9, !dbg !4530
  %18 = sext i1 %17 to i32, !dbg !4531
  br label %22, !dbg !4531

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4532

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4534
  store i32 0, i32* %21, align 4, !dbg !4536, !tbaa !1485
  br label %22, !dbg !4534

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4514
  ret i32 %23, !dbg !4537
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4538 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %1, metadata !4540, metadata !DIExpression()), !dbg !4542
  %2 = icmp eq i8* %1, null, !dbg !4543
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.171, i64 0, i64 0), i8* %1, !dbg !4545
  call void @llvm.dbg.value(metadata i8* %3, metadata !4540, metadata !DIExpression()), !dbg !4542
  %4 = load i8, i8* %3, align 1, !dbg !4546, !tbaa !1577
  %5 = icmp eq i8 %4, 0, !dbg !4550
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i64 0, i64 0), i8* %3, !dbg !4551
  call void @llvm.dbg.value(metadata i8* %6, metadata !4540, metadata !DIExpression()), !dbg !4542
  ret i8* %6, !dbg !4552
}

; Function Attrs: nounwind
declare !dbg !1302 i8* @nl_langinfo(i32) local_unnamed_addr #2

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
attributes #12 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !345, !350, !405, !450, !598, !605, !456, !497, !611, !614, !592, !656, !677, !680, !683, !727, !768, !809, !824, !874, !912}
!llvm.ident = !{!1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305, !1305}
!llvm.module.flags = !{!1306, !1307, !1308, !1309, !1310}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !332, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !274, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pinky.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!39 = !{!40, !50, !111, !115, !119, !122, !125, !132, !44, !101, !147, !151, !155, !196, !199, !204, !205, !221, !48, !224, !103, !226, !228, !81, !231, !236, !256, !261, !46, !265, !270}
!40 = !DISubprogram(name: "dcgettext", scope: !41, file: !41, line: 51, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!41 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !46, !46, !48}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{}
!50 = !DISubprogram(name: "fputs_unlocked", scope: !51, file: !51, line: 662, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!51 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!52 = !DISubroutineType(types: !53)
!53 = !{!48, !46, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !57)
!56 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !74, !75, !76, !80, !82, !84, !88, !91, !93, !96, !99, !100, !102, !106, !107}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 51, baseType: !48, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 36, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 70, baseType: !54, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !78, line: 152, baseType: !79)
!78 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!79 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 43, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !78, line: 153, baseType: !79)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !55, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !56, line: 37, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !55, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !56, line: 38, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !55, file: !56, line: 93, baseType: !54, size: 64, offset: 1344)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !55, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !DISubprogram(name: "set_program_name", scope: !112, file: !112, line: 37, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!112 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !46}
!115 = !DISubprogram(name: "setlocale", scope: !116, file: !116, line: 122, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!116 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!117 = !DISubroutineType(types: !118)
!118 = !{!44, !48, !46}
!119 = !DISubprogram(name: "bindtextdomain", scope: !41, file: !41, line: 86, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!120 = !DISubroutineType(types: !121)
!121 = !{!44, !46, !46}
!122 = !DISubprogram(name: "textdomain", scope: !41, file: !41, line: 82, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!123 = !DISubroutineType(types: !124)
!124 = !{!44, !46}
!125 = !DISubprogram(name: "atexit", scope: !126, file: !126, line: 595, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!126 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!127 = !DISubroutineType(types: !128)
!128 = !{!48, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null}
!132 = !DISubprogram(name: "getopt_long", scope: !133, file: !133, line: 66, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!133 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!48, !48, !136, !46, !138, !145}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !133, line: 50, size: 256, elements: !141)
!141 = !{!142, !143, !144, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !133, line: 52, baseType: !46, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !140, file: !133, line: 55, baseType: !48, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !140, file: !133, line: 56, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !133, line: 57, baseType: !48, size: 32, offset: 192)
!147 = !DISubprogram(name: "version_etc", scope: !148, file: !148, line: 69, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!148 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !DISubroutineType(types: !150)
!150 = !{null, !54, !46, !46, !46, null}
!151 = !DISubprogram(name: "error", scope: !152, file: !152, line: 52, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!152 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !48, !48, !46, null}
!155 = !DISubprogram(name: "read_utmp", scope: !21, file: !21, line: 215, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!156 = !DISubroutineType(types: !157)
!157 = !{!48, !46, !158, !159, !48}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !162, line: 55, size: 3072, elements: !163)
!162 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!163 = !{!164, !166, !168, !172, !176, !177, !181, !186, !188, !193, !195}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !161, file: !162, line: 57, baseType: !165, size: 16)
!165 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !161, file: !162, line: 58, baseType: !167, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !78, line: 154, baseType: !48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !161, file: !162, line: 59, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !161, file: !162, line: 61, baseType: !173, size: 32, offset: 320)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 4)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !161, file: !162, line: 63, baseType: !169, size: 256, offset: 352)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !161, file: !162, line: 65, baseType: !178, size: 2048, offset: 608)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !161, file: !162, line: 67, baseType: !182, size: 32, offset: 2656)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !162, line: 42, size: 32, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !182, file: !162, line: 45, baseType: !165, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !182, file: !162, line: 46, baseType: !165, size: 16, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !161, file: !162, line: 74, baseType: !187, size: 32, offset: 2688)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !78, line: 41, baseType: !48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !161, file: !162, line: 79, baseType: !189, size: 64, offset: 2720)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !162, line: 75, size: 64, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !189, file: !162, line: 77, baseType: !187, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !189, file: !162, line: 78, baseType: !187, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !161, file: !162, line: 84, baseType: !194, size: 128, offset: 2784)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !174)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !161, file: !162, line: 85, baseType: !108, size: 160, offset: 2912)
!196 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !48, !5, !46}
!199 = !DISubprogram(name: "hard_locale", scope: !200, file: !200, line: 26, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!200 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !48}
!203 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DISubprogram(name: "getpwnam", scope: !206, file: !206, line: 116, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!206 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !46}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !206, line: 49, size: 384, elements: !211)
!211 = !{!212, !213, !214, !216, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !210, file: !206, line: 51, baseType: !44, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !210, file: !206, line: 52, baseType: !44, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !210, file: !206, line: 54, baseType: !215, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !78, line: 146, baseType: !7)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !210, file: !206, line: 55, baseType: !217, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !78, line: 147, baseType: !7)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !210, file: !206, line: 56, baseType: !44, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !210, file: !206, line: 57, baseType: !44, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !210, file: !206, line: 58, baseType: !44, size: 64, offset: 320)
!221 = !DISubprogram(name: "free", scope: !126, file: !126, line: 565, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !101}
!224 = !DISubprogram(name: "canon_host", scope: !225, file: !225, line: 23, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!225 = !DIFile(filename: "./lib/canon-host.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !DISubprogram(name: "xalloc_die", scope: !227, file: !227, line: 51, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !49)
!227 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !DISubprogram(name: "xmalloc", scope: !227, file: !227, line: 53, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!229 = !DISubroutineType(types: !230)
!230 = !{!101, !105}
!231 = !DISubprogram(name: "time", scope: !232, file: !232, line: 75, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!232 = !DIFile(filename: "/usr/include/time.h", directory: "")
!233 = !DISubroutineType(types: !234)
!234 = !{!79, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!236 = !DISubprogram(name: "localtime", scope: !232, file: !232, line: 123, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !254}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !241, line: 7, size: 448, elements: !242)
!241 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !240, file: !241, line: 9, baseType: !48, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !240, file: !241, line: 10, baseType: !48, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !240, file: !241, line: 11, baseType: !48, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !240, file: !241, line: 12, baseType: !48, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !240, file: !241, line: 13, baseType: !48, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !240, file: !241, line: 14, baseType: !48, size: 32, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !240, file: !241, line: 15, baseType: !48, size: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !240, file: !241, line: 16, baseType: !48, size: 32, offset: 224)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !240, file: !241, line: 17, baseType: !48, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !240, file: !241, line: 20, baseType: !79, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !240, file: !241, line: 21, baseType: !46, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!256 = !DISubprogram(name: "strftime", scope: !232, file: !232, line: 88, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!257 = !DISubroutineType(types: !258)
!258 = !{!105, !44, !105, !46, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!261 = !DISubprogram(name: "imaxtostr", scope: !262, file: !262, line: 42, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!262 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = !DISubroutineType(types: !264)
!264 = !{!44, !79, !44}
!265 = !DISubprogram(name: "fwrite_unlocked", scope: !51, file: !51, line: 675, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!266 = !DISubroutineType(types: !267)
!267 = !{!105, !268, !105, !105, !54}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!270 = !DISubprogram(name: "rpl_fclose", scope: !271, file: !271, line: 672, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!271 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !DISubroutineType(types: !273)
!273 = !{!48, !54}
!274 = !{!0, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !312, !317}
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "do_short_format", scope: !2, file: !3, line: 63, type: !203, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "include_heading", scope: !2, file: !3, line: 47, type: !203, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "include_fullname", scope: !2, file: !3, line: 50, type: !203, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "include_where", scope: !2, file: !3, line: 67, type: !203, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "include_idle", scope: !2, file: !3, line: 44, type: !203, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "include_project", scope: !2, file: !3, line: 53, type: !203, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "include_plan", scope: !2, file: !3, line: 56, type: !203, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "include_home_and_shell", scope: !2, file: !3, line: 60, type: !203, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "time_format", scope: !2, file: !3, line: 72, type: !46, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "time_format_width", scope: !2, file: !3, line: 73, type: !48, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "now", scope: !297, file: !3, line: 149, type: !300, isLocal: true, isDefinition: true)
!297 = distinct !DISubprogram(name: "idle_string", scope: !3, file: !3, line: 147, type: !298, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!298 = !DISubroutineType(types: !299)
!299 = !{!46, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !301, line: 7, baseType: !302)
!301 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !78, line: 160, baseType: !79)
!303 = !{!304, !305, !306, !309, !310}
!304 = !DILocalVariable(name: "when", arg: 1, scope: !297, file: !3, line: 147, type: !300)
!305 = !DILocalVariable(name: "seconds_idle", scope: !297, file: !3, line: 151, type: !300)
!306 = !DILocalVariable(name: "hours", scope: !307, file: !3, line: 161, type: !48)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 160, column: 5)
!308 = distinct !DILexicalBlock(scope: !297, file: !3, line: 159, column: 7)
!309 = !DILocalVariable(name: "minutes", scope: !307, file: !3, line: 162, type: !48)
!310 = !DILocalVariable(name: "days", scope: !311, file: !3, line: 167, type: !105)
!311 = distinct !DILexicalBlock(scope: !308, file: !3, line: 166, column: 5)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "buf", scope: !297, file: !3, line: 150, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 22)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "buf", scope: !319, file: !3, line: 177, type: !329, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "time_string", scope: !3, file: !3, line: 175, type: !320, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!320 = !DISubroutineType(types: !321)
!321 = !{!46, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !161)
!325 = !{!326, !327, !328}
!326 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !319, file: !3, line: 175, type: !322)
!327 = !DILocalVariable(name: "t", scope: !319, file: !3, line: 185, type: !300)
!328 = !DILocalVariable(name: "tmp", scope: !319, file: !3, line: 186, type: !239)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 33)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 768, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 3)
!335 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!336 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!337 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!338 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!339 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!340 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!341 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!342 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "Version", scope: !345, file: !346, line: 2, type: !46, isLocal: false, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, globals: !347, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!347 = !{!343}
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "last_cherror", scope: !350, file: !351, line: 28, type: !48, isLocal: true, isDefinition: true)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !352, globals: !393, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/canon-host.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!352 = !{!353, !356, !387, !390}
!353 = !DISubprogram(name: "canon_host_r", scope: !225, file: !225, line: 24, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!354 = !DISubroutineType(types: !355)
!355 = !{!44, !46, !145}
!356 = !DISubprogram(name: "getaddrinfo", scope: !357, file: !357, line: 660, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!357 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!358 = !DISubroutineType(types: !359)
!359 = !{!48, !46, !46, !360, !386}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !357, line: 565, size: 384, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !372, !383, !384}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !362, file: !357, line: 567, baseType: !48, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !362, file: !357, line: 568, baseType: !48, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !362, file: !357, line: 569, baseType: !48, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !362, file: !357, line: 570, baseType: !48, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !362, file: !357, line: 571, baseType: !369, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !370, line: 33, baseType: !371)
!370 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !78, line: 209, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !362, file: !357, line: 572, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !370, line: 178, size: 128, elements: !375)
!375 = !{!376, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !374, file: !370, line: 180, baseType: !377, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !378, line: 28, baseType: !81)
!378 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !374, file: !370, line: 181, baseType: !380, size: 112, offset: 16)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 14)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !362, file: !357, line: 573, baseType: !44, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !362, file: !357, line: 574, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!387 = !DISubprogram(name: "freeaddrinfo", scope: !357, file: !357, line: 666, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !385}
!390 = !DISubprogram(name: "gai_strerror", scope: !357, file: !357, line: 669, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!391 = !DISubroutineType(types: !392)
!392 = !{!46, !48}
!393 = !{!394, !348}
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "hints", scope: !396, file: !351, line: 64, type: !362, isLocal: true, isDefinition: true)
!396 = distinct !DISubprogram(name: "canon_host_r", scope: !351, file: !351, line: 61, type: !354, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !397)
!397 = !{!398, !399, !400, !401, !402}
!398 = !DILocalVariable(name: "host", arg: 1, scope: !396, file: !351, line: 61, type: !46)
!399 = !DILocalVariable(name: "cherror", arg: 2, scope: !396, file: !351, line: 61, type: !145)
!400 = !DILocalVariable(name: "retval", scope: !396, file: !351, line: 63, type: !44)
!401 = !DILocalVariable(name: "res", scope: !396, file: !351, line: 65, type: !385)
!402 = !DILocalVariable(name: "status", scope: !396, file: !351, line: 66, type: !48)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "file_name", scope: !405, file: !406, line: 46, type: !46, isLocal: true, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !407, globals: !445, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!407 = !{!408, !40, !444, !151}
!408 = !DISubprogram(name: "close_stream", scope: !409, file: !409, line: 2, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!409 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!410 = !DISubroutineType(types: !411)
!411 = !{!48, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !413, file: !56, line: 51, baseType: !48, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !413, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !413, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !413, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !413, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !413, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !413, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !413, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !413, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !413, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !413, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !413, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !413, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !413, file: !56, line: 70, baseType: !412, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !413, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !413, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !413, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !413, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !413, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !413, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !413, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !413, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !413, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !413, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !413, file: !56, line: 93, baseType: !412, size: 64, offset: 1344)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !413, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !413, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !413, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !413, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!444 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!445 = !{!403, !446}
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !405, file: !406, line: 56, type: !203, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "exit_failure", scope: !450, file: !451, line: 24, type: !453, isLocal: false, isDefinition: true)
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, globals: !452, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!452 = !{!448}
!453 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "program_name", scope: !456, file: !457, line: 33, type: !46, isLocal: false, isDefinition: true)
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !458, globals: !494, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!458 = !{!101, !459, !44}
!459 = !DISubprogram(name: "fputs", scope: !51, file: !51, line: 626, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!460 = !DISubroutineType(types: !461)
!461 = !{!48, !46, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !463, file: !56, line: 51, baseType: !48, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !463, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !463, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !463, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !463, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !463, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !463, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !463, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !463, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !463, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !463, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !463, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !463, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !463, file: !56, line: 70, baseType: !462, size: 64, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !463, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !463, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !463, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !463, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !463, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !463, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !463, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !463, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !463, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !463, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !463, file: !56, line: 93, baseType: !462, size: 64, offset: 1344)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !463, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !463, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !463, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !463, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!494 = !{!454}
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !497, file: !498, line: 85, type: !586, isLocal: false, isDefinition: true)
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !499, retainedTypes: !505, globals: !562, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!5, !500, !24}
!500 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !501)
!501 = !{!502, !503, !504}
!502 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!503 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!504 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!505 = !{!506, !509, !221, !524, !48, !81, !527, !103, !541, !545, !40, !551, !555, !44, !228, !226, !559}
!506 = !DISubprogram(name: "xmemdup", scope: !227, file: !227, line: 62, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!507 = !DISubroutineType(types: !508)
!508 = !{!101, !268, !105}
!509 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!510 = !DISubroutineType(types: !511)
!511 = !{!44, !46, !105, !158, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !498, line: 65, size: 448, elements: !515)
!515 = !{!516, !517, !518, !522, !523}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !514, file: !498, line: 68, baseType: !5, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !498, line: 71, baseType: !48, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !514, file: !498, line: 75, baseType: !519, size: 256, offset: 64)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 8)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !514, file: !498, line: 78, baseType: !46, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !514, file: !498, line: 81, baseType: !46, size: 64, offset: 384)
!524 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!525 = !DISubroutineType(types: !526)
!526 = !{!44, !48, !46, !46, !46, !105}
!527 = !DISubprogram(name: "rpl_mbrtowc", scope: !528, file: !528, line: 717, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!528 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!529 = !DISubroutineType(types: !530)
!530 = !{!105, !145, !46, !105, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 13, size: 64, elements: !534)
!533 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !532, file: !533, line: 15, baseType: !48, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !532, file: !533, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !533, line: 18, baseType: !7, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !533, line: 19, baseType: !173, size: 32)
!541 = !DISubprogram(name: "iswprint", scope: !542, file: !542, line: 120, type: !543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!542 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!543 = !DISubroutineType(types: !544)
!544 = !{!48, !7}
!545 = !DISubprogram(name: "mbsinit", scope: !546, file: !546, line: 292, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!546 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!547 = !DISubroutineType(types: !548)
!548 = !{!48, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!551 = !DISubprogram(name: "locale_charset", scope: !552, file: !552, line: 35, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!552 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!553 = !DISubroutineType(types: !554)
!554 = !{!46}
!555 = !DISubprogram(name: "c_strcasecmp", scope: !556, file: !556, line: 42, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!556 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = !DISubroutineType(types: !558)
!558 = !{!48, !46, !46}
!559 = !DISubprogram(name: "xrealloc", scope: !227, file: !227, line: 59, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!560 = !DISubroutineType(types: !561)
!561 = !{!101, !101, !105}
!562 = !{!495, !563, !569, !571, !573, !575, !582, !584}
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !497, file: !498, line: 101, type: !565, isLocal: false, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 320, elements: !567)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!567 = !{!568}
!568 = !DISubrange(count: 10)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !497, file: !498, line: 1052, type: !514, isLocal: false, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !497, file: !498, line: 116, type: !514, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "slot0", scope: !497, file: !498, line: 842, type: !178, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "slotvec", scope: !497, file: !498, line: 845, type: !577, isLocal: true, isDefinition: true)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !498, line: 834, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !498, line: 836, baseType: !103, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !578, file: !498, line: 837, baseType: !44, size: 64, offset: 64)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "nslots", scope: !497, file: !498, line: 843, type: !48, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "slotvec0", scope: !497, file: !498, line: 844, type: !578, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 704, elements: !588)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!588 = !{!589}
!589 = !DISubrange(count: 11)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !592, file: !593, line: 26, type: !595, isLocal: false, isDefinition: true)
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, globals: !594, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!594 = !{!590}
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 376, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 47)
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !600, splitDebugInlining: false, nameTableKind: None)
!599 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!600 = !{!601}
!601 = !DISubprogram(name: "setlocale_null_r", scope: !602, file: !602, line: 64, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!602 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!603 = !DISubroutineType(types: !604)
!604 = !{!48, !48, !44, !105}
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !607, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/imaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !609, line: 101, baseType: !610)
!609 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !78, line: 72, baseType: !79)
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !613, splitDebugInlining: false, nameTableKind: None)
!612 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = !{!101, !115}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !620, splitDebugInlining: false, nameTableKind: None)
!615 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!616 = !{!617}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !615, line: 40, baseType: !7, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!620 = !{!40, !621, !101}
!621 = !DISubprogram(name: "fputs_unlocked", scope: !51, file: !51, line: 662, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!622 = !DISubroutineType(types: !623)
!623 = !{!48, !46, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !625, file: !56, line: 51, baseType: !48, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !625, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !625, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !625, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !625, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !625, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !625, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !625, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !625, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !625, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !625, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !625, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !625, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !625, file: !56, line: 70, baseType: !624, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !625, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !625, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !625, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !625, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !625, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !625, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !625, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !625, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !625, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !625, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !625, file: !56, line: 93, baseType: !624, size: 64, offset: 1344)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !625, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !625, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !625, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !625, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658, retainedTypes: !671, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!658 = !{!659}
!659 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !660, file: !227, line: 186, baseType: !7, size: 32, elements: !669)
!660 = distinct !DISubprogram(name: "x2nrealloc", scope: !227, file: !227, line: 174, type: !661, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!101, !101, !663, !103}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!664 = !{!665, !666, !667, !668}
!665 = !DILocalVariable(name: "p", arg: 1, scope: !660, file: !227, line: 174, type: !101)
!666 = !DILocalVariable(name: "pn", arg: 2, scope: !660, file: !227, line: 174, type: !663)
!667 = !DILocalVariable(name: "s", arg: 3, scope: !660, file: !227, line: 174, type: !103)
!668 = !DILocalVariable(name: "n", scope: !660, file: !227, line: 176, type: !103)
!669 = !{!670}
!670 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!671 = !{!103, !226, !228, !559, !44, !221, !101, !672, !675}
!672 = !DISubprogram(name: "xcalloc", scope: !227, file: !227, line: 57, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!673 = !DISubroutineType(types: !674)
!674 = !{!101, !105, !105}
!675 = !DISubprogram(name: "rpl_calloc", scope: !676, file: !676, line: 688, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!676 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !679, splitDebugInlining: false, nameTableKind: None)
!678 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!679 = !{!40, !151}
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !681, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !682, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!682 = !{!101}
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !685, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!685 = !{!686, !721, !722, !726}
!686 = !DISubprogram(name: "fileno", scope: !51, file: !51, line: 786, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!687 = !DISubroutineType(types: !688)
!688 = !{!48, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !690, file: !56, line: 51, baseType: !48, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !690, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !690, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !690, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !690, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !690, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !690, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !690, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !690, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !690, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !690, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !690, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !690, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !690, file: !56, line: 70, baseType: !689, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !690, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !690, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !690, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !690, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !690, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !690, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !690, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !690, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !690, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !690, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !690, file: !56, line: 93, baseType: !689, size: 64, offset: 1344)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !690, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !690, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !690, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !690, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!721 = !DISubprogram(name: "fclose", scope: !51, file: !51, line: 213, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!722 = !DISubprogram(name: "lseek", scope: !723, file: !723, line: 334, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!723 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!724 = !DISubroutineType(types: !725)
!725 = !{!79, !48, !79, !48}
!726 = !DISubprogram(name: "rpl_fflush", scope: !271, file: !271, line: 718, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!727 = distinct !DICompileUnit(language: DW_LANG_C99, file: !728, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!729 = !{!101, !730, !765}
!730 = !DISubprogram(name: "fflush", scope: !51, file: !51, line: 218, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!731 = !DISubroutineType(types: !732)
!732 = !{!48, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !734, file: !56, line: 51, baseType: !48, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !734, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !734, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !734, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !734, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !734, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !734, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !734, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !734, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !734, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !734, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !734, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !734, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !734, file: !56, line: 70, baseType: !733, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !734, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !734, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !734, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !734, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !734, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !734, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !734, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !734, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !734, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !734, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !734, file: !56, line: 93, baseType: !733, size: 64, offset: 1344)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !734, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !734, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !734, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !734, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!765 = !DISubprogram(name: "rpl_fseeko", scope: !271, file: !271, line: 1034, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!766 = !DISubroutineType(types: !767)
!767 = !{!48, !733, !79, !48}
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!770 = !{!101, !771, !722, !806}
!771 = !DISubprogram(name: "fileno", scope: !51, file: !51, line: 786, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!772 = !DISubroutineType(types: !773)
!773 = !{!48, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !775, file: !56, line: 51, baseType: !48, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !775, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !775, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !775, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !775, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !775, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !775, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !775, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !775, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !775, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !775, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !775, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !775, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !775, file: !56, line: 70, baseType: !774, size: 64, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !775, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !775, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !775, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !775, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !775, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !775, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !775, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !775, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !775, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !775, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !775, file: !56, line: 93, baseType: !774, size: 64, offset: 1344)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !775, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !775, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !775, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !775, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!806 = !DISubprogram(name: "fseeko", scope: !51, file: !51, line: 707, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!807 = !DISubroutineType(types: !808)
!808 = !{!48, !774, !79, !48}
!809 = distinct !DICompileUnit(language: DW_LANG_C99, file: !810, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !811, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!811 = !{!812, !103, !199}
!812 = !DISubprogram(name: "mbrtowc", scope: !546, file: !546, line: 296, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!813 = !DISubroutineType(types: !814)
!814 = !{!105, !145, !46, !105, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 13, size: 64, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !816, file: !533, line: 15, baseType: !48, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !816, file: !533, line: 20, baseType: !820, size: 32, offset: 32)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !533, line: 16, size: 32, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !820, file: !533, line: 18, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !820, file: !533, line: 19, baseType: !173, size: 32)
!824 = distinct !DICompileUnit(language: DW_LANG_C99, file: !825, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !826, retainedTypes: !838, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!826 = !{!827, !831}
!827 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 208, baseType: !7, size: 32, elements: !828)
!828 = !{!829, !830}
!829 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!830 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !832, file: !227, line: 186, baseType: !7, size: 32, elements: !669)
!832 = distinct !DISubprogram(name: "x2nrealloc", scope: !227, file: !227, line: 174, type: !661, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !833)
!833 = !{!834, !835, !836, !837}
!834 = !DILocalVariable(name: "p", arg: 1, scope: !832, file: !227, line: 174, type: !101)
!835 = !DILocalVariable(name: "pn", arg: 2, scope: !832, file: !227, line: 174, type: !663)
!836 = !DILocalVariable(name: "s", arg: 3, scope: !832, file: !227, line: 174, type: !103)
!837 = !DILocalVariable(name: "n", scope: !832, file: !227, line: 176, type: !103)
!838 = !{!228, !44, !839, !843, !844, !101, !869, !870, !103, !226, !559}
!839 = !DISubprogram(name: "utmpxname", scope: !840, file: !840, line: 93, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!840 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!841 = !DISubroutineType(types: !842)
!842 = !{!48, !46}
!843 = !DISubprogram(name: "setutxent", scope: !840, file: !840, line: 53, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!844 = !DISubprogram(name: "getutxent", scope: !840, file: !840, line: 65, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!845 = !DISubroutineType(types: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !162, line: 55, size: 3072, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !861, !862, !867, !868}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !848, file: !162, line: 57, baseType: !165, size: 16)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !848, file: !162, line: 58, baseType: !167, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !848, file: !162, line: 59, baseType: !169, size: 256, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !848, file: !162, line: 61, baseType: !173, size: 32, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !848, file: !162, line: 63, baseType: !169, size: 256, offset: 352)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !848, file: !162, line: 65, baseType: !178, size: 2048, offset: 608)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !848, file: !162, line: 67, baseType: !857, size: 32, offset: 2656)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !162, line: 42, size: 32, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !857, file: !162, line: 45, baseType: !165, size: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !857, file: !162, line: 46, baseType: !165, size: 16, offset: 16)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !848, file: !162, line: 74, baseType: !187, size: 32, offset: 2688)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !848, file: !162, line: 79, baseType: !863, size: 64, offset: 2720)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !162, line: 75, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !162, line: 77, baseType: !187, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !863, file: !162, line: 78, baseType: !187, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !848, file: !162, line: 84, baseType: !194, size: 128, offset: 2784)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !848, file: !162, line: 85, baseType: !108, size: 160, offset: 2912)
!869 = !DISubprogram(name: "endutxent", scope: !840, file: !840, line: 59, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!870 = !DISubprogram(name: "kill", scope: !871, file: !871, line: 112, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!871 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!872 = !DISubroutineType(types: !873)
!873 = !{!48, !48, !48}
!874 = distinct !DICompileUnit(language: DW_LANG_C99, file: !875, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !49, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!875 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!876 = !{!877}
!877 = !DISubprogram(name: "rpl_fclose", scope: !271, file: !271, line: 672, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!878 = !DISubroutineType(types: !879)
!879 = !{!48, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !882)
!882 = !{!883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !881, file: !56, line: 51, baseType: !48, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !881, file: !56, line: 54, baseType: !44, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !881, file: !56, line: 55, baseType: !44, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !881, file: !56, line: 56, baseType: !44, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !881, file: !56, line: 57, baseType: !44, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !881, file: !56, line: 58, baseType: !44, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !881, file: !56, line: 59, baseType: !44, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !881, file: !56, line: 60, baseType: !44, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !881, file: !56, line: 61, baseType: !44, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !881, file: !56, line: 64, baseType: !44, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !881, file: !56, line: 65, baseType: !44, size: 64, offset: 640)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !881, file: !56, line: 66, baseType: !44, size: 64, offset: 704)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !881, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !881, file: !56, line: 70, baseType: !880, size: 64, offset: 832)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !881, file: !56, line: 72, baseType: !48, size: 32, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !881, file: !56, line: 73, baseType: !48, size: 32, offset: 928)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !881, file: !56, line: 74, baseType: !77, size: 64, offset: 960)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !881, file: !56, line: 77, baseType: !81, size: 16, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !881, file: !56, line: 78, baseType: !83, size: 8, offset: 1040)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !881, file: !56, line: 79, baseType: !85, size: 8, offset: 1048)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !881, file: !56, line: 81, baseType: !89, size: 64, offset: 1088)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !881, file: !56, line: 89, baseType: !92, size: 64, offset: 1152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !881, file: !56, line: 91, baseType: !94, size: 64, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !881, file: !56, line: 92, baseType: !97, size: 64, offset: 1280)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !881, file: !56, line: 93, baseType: !880, size: 64, offset: 1344)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !881, file: !56, line: 94, baseType: !101, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !881, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !881, file: !56, line: 96, baseType: !48, size: 32, offset: 1536)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !881, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!912 = distinct !DICompileUnit(language: DW_LANG_C99, file: !913, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !914, retainedTypes: !1301, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!914 = !{!915}
!915 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !916, line: 41, baseType: !7, size: 32, elements: !917)
!916 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!918 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!919 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!920 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!921 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!922 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!923 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!924 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!925 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!926 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!927 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!928 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!929 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!930 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!931 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!932 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!933 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!934 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!935 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!936 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!937 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!938 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!939 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!940 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!941 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!942 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!943 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!944 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!945 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!946 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!947 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!948 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!949 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!950 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!951 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!952 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!953 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!954 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!955 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!956 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!957 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!958 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!959 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!960 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!961 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!962 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!963 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!964 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!965 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!966 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!967 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1026 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1029 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1030 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1031 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1032 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1033 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1034 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1035 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1036 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1037 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1038 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1039 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1040 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1113 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1186 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1187 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1188 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1189 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1190 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1191 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1192 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1193 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1194 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1195 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1196 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1197 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1198 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1199 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1200 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1202 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1203 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1204 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1205 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1206 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1207 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1233 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1234 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1235 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1236 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1237 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1242 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1243 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1244 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1245 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1284 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1285 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1286 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1287 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1288 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1297 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1298 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1301 = !{!1302, !101}
!1302 = !DISubprogram(name: "nl_langinfo", scope: !916, file: !916, line: 661, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !49)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!44, !48}
!1305 = !{!"clang version 10.0.0 "}
!1306 = !{i32 7, !"Dwarf Version", i32 4}
!1307 = !{i32 2, !"Debug Info Version", i32 3}
!1308 = !{i32 1, !"wchar_size", i32 4}
!1309 = !{i32 7, !"PIC Level", i32 2}
!1310 = !{i32 7, !"PIE Level", i32 2}
!1311 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 483, type: !1312, scopeLine: 484, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !48}
!1314 = !{!1315}
!1315 = !DILocalVariable(name: "status", arg: 1, scope: !1311, file: !3, line: 483, type: !48)
!1316 = !DILocalVariable(name: "infomap", scope: !1317, file: !1318, line: 636, type: !1330)
!1317 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1318, file: !1318, line: 634, type: !113, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1318 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1319 = !{!1320, !1316, !1321, !1322, !1329}
!1320 = !DILocalVariable(name: "program", arg: 1, scope: !1317, file: !1318, line: 634, type: !46)
!1321 = !DILocalVariable(name: "node", scope: !1317, file: !1318, line: 646, type: !46)
!1322 = !DILocalVariable(name: "map_prog", scope: !1317, file: !1318, line: 647, type: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1317, file: !1318, line: 636, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1325, file: !1318, line: 636, baseType: !46, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1325, file: !1318, line: 636, baseType: !46, size: 64, offset: 64)
!1329 = !DILocalVariable(name: "lc_messages", scope: !1317, file: !1318, line: 659, type: !46)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 896, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 7)
!1333 = !DILocation(line: 636, column: 67, scope: !1317, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 512, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 488, column: 5)
!1336 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 485, column: 7)
!1337 = !DILocation(line: 0, scope: !1311)
!1338 = !DILocation(line: 485, column: 14, scope: !1336)
!1339 = !DILocation(line: 485, column: 7, scope: !1311)
!1340 = !DILocation(line: 486, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 486, column: 5)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"any pointer", !1344, i64 0}
!1344 = !{!"omnipotent char", !1345, i64 0}
!1345 = !{!"Simple C/C++ TBAA"}
!1346 = !DILocation(line: 489, column: 7, scope: !1335)
!1347 = !DILocation(line: 490, column: 7, scope: !1335)
!1348 = !DILocation(line: 498, column: 7, scope: !1335)
!1349 = !DILocation(line: 505, column: 7, scope: !1335)
!1350 = !DILocation(line: 506, column: 7, scope: !1335)
!1351 = !DILocation(line: 507, column: 7, scope: !1335)
!1352 = !DILocation(line: 0, scope: !1317, inlinedAt: !1334)
!1353 = !DILocation(line: 636, column: 3, scope: !1317, inlinedAt: !1334)
!1354 = !DILocation(line: 647, column: 36, scope: !1317, inlinedAt: !1334)
!1355 = !DILocation(line: 649, column: 3, scope: !1317, inlinedAt: !1334)
!1356 = !DILocation(line: 649, column: 33, scope: !1317, inlinedAt: !1334)
!1357 = !DILocation(line: 650, column: 13, scope: !1317, inlinedAt: !1334)
!1358 = !DILocation(line: 649, column: 20, scope: !1317, inlinedAt: !1334)
!1359 = !{!1360, !1343, i64 0}
!1360 = !{!"infomap", !1343, i64 0, !1343, i64 8}
!1361 = !DILocation(line: 649, column: 10, scope: !1317, inlinedAt: !1334)
!1362 = !DILocation(line: 649, column: 28, scope: !1317, inlinedAt: !1334)
!1363 = distinct !{!1363, !1355, !1357}
!1364 = !DILocation(line: 652, column: 17, scope: !1365, inlinedAt: !1334)
!1365 = distinct !DILexicalBlock(scope: !1317, file: !1318, line: 652, column: 7)
!1366 = !{!1360, !1343, i64 8}
!1367 = !DILocation(line: 652, column: 7, scope: !1365, inlinedAt: !1334)
!1368 = !DILocation(line: 652, column: 7, scope: !1317, inlinedAt: !1334)
!1369 = !DILocation(line: 655, column: 3, scope: !1317, inlinedAt: !1334)
!1370 = !DILocation(line: 659, column: 29, scope: !1317, inlinedAt: !1334)
!1371 = !DILocation(line: 660, column: 7, scope: !1372, inlinedAt: !1334)
!1372 = distinct !DILexicalBlock(scope: !1317, file: !1318, line: 660, column: 7)
!1373 = !DILocation(line: 660, column: 19, scope: !1372, inlinedAt: !1334)
!1374 = !DILocation(line: 660, column: 22, scope: !1372, inlinedAt: !1334)
!1375 = !DILocation(line: 660, column: 7, scope: !1317, inlinedAt: !1334)
!1376 = !DILocation(line: 666, column: 7, scope: !1377, inlinedAt: !1334)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !1318, line: 661, column: 5)
!1378 = !DILocation(line: 668, column: 5, scope: !1377, inlinedAt: !1334)
!1379 = !DILocation(line: 669, column: 3, scope: !1317, inlinedAt: !1334)
!1380 = !DILocation(line: 671, column: 3, scope: !1317, inlinedAt: !1334)
!1381 = !DILocation(line: 673, column: 1, scope: !1317, inlinedAt: !1334)
!1382 = !DILocation(line: 514, column: 3, scope: !1311)
!1383 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 518, type: !1384, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!48, !48, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DILocalVariable(name: "argc", arg: 1, scope: !1383, file: !3, line: 518, type: !48)
!1389 = !DILocalVariable(name: "argv", arg: 2, scope: !1383, file: !3, line: 518, type: !1386)
!1390 = !DILocalVariable(name: "optc", scope: !1383, file: !3, line: 520, type: !48)
!1391 = !DILocalVariable(name: "n_users", scope: !1383, file: !3, line: 521, type: !48)
!1392 = !DILocalVariable(name: "buf", scope: !1393, file: !3, line: 350, type: !1420)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 348, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 347, column: 7)
!1395 = distinct !DISubprogram(name: "print_long_entry", scope: !3, file: !3, line: 307, type: !113, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1396 = !{!1397, !1398, !1399, !1402, !1403, !1392, !1407, !1408, !1409, !1412, !1414, !1415, !1416, !1419, !1423, !1424, !1425, !1428, !1430, !1431}
!1397 = !DILocalVariable(name: "name", arg: 1, scope: !1395, file: !3, line: 307, type: !46)
!1398 = !DILocalVariable(name: "pw", scope: !1395, file: !3, line: 309, type: !209)
!1399 = !DILocalVariable(name: "comma", scope: !1400, file: !3, line: 325, type: !137)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 324, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 317, column: 7)
!1402 = !DILocalVariable(name: "result", scope: !1400, file: !3, line: 326, type: !44)
!1403 = !DILocalVariable(name: "stream", scope: !1393, file: !3, line: 349, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !55)
!1406 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1407 = !DILocalVariable(name: "baseproject", scope: !1393, file: !3, line: 351, type: !587)
!1408 = !DILocalVariable(name: "project", scope: !1393, file: !3, line: 352, type: !137)
!1409 = !DILocalVariable(name: "bytes", scope: !1410, file: !3, line: 359, type: !103)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 358, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 357, column: 11)
!1412 = !DILocalVariable(name: "__ptr", scope: !1413, file: !3, line: 364, type: !46)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 364, column: 13)
!1414 = !DILocalVariable(name: "__stream", scope: !1413, file: !3, line: 364, type: !1404)
!1415 = !DILocalVariable(name: "__cnt", scope: !1413, file: !3, line: 364, type: !103)
!1416 = !DILocalVariable(name: "stream", scope: !1417, file: !3, line: 373, type: !1404)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 372, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 371, column: 7)
!1419 = !DILocalVariable(name: "buf", scope: !1417, file: !3, line: 374, type: !1420)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8192, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 1024)
!1423 = !DILocalVariable(name: "baseplan", scope: !1417, file: !3, line: 375, type: !587)
!1424 = !DILocalVariable(name: "plan", scope: !1417, file: !3, line: 376, type: !137)
!1425 = !DILocalVariable(name: "bytes", scope: !1426, file: !3, line: 383, type: !103)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 382, column: 9)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 381, column: 11)
!1428 = !DILocalVariable(name: "__ptr", scope: !1429, file: !3, line: 388, type: !46)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 388, column: 13)
!1430 = !DILocalVariable(name: "__stream", scope: !1429, file: !3, line: 388, type: !1404)
!1431 = !DILocalVariable(name: "__cnt", scope: !1429, file: !3, line: 388, type: !103)
!1432 = !DILocation(line: 350, column: 12, scope: !1393, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 479, column: 5, scope: !1434, inlinedAt: !1444)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 478, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 478, column: 3)
!1436 = distinct !DISubprogram(name: "long_pinky", scope: !3, file: !3, line: 476, type: !1437, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1440)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1439, !136}
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "argc_names", arg: 1, scope: !1436, file: !3, line: 476, type: !1439)
!1442 = !DILocalVariable(name: "argv_names", arg: 2, scope: !1436, file: !3, line: 476, type: !136)
!1443 = !DILocalVariable(name: "i", scope: !1435, file: !3, line: 478, type: !48)
!1444 = distinct !DILocation(line: 599, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 596, column: 7)
!1446 = !DILocation(line: 374, column: 12, scope: !1417, inlinedAt: !1433)
!1447 = !DILocation(line: 0, scope: !1383)
!1448 = !DILocation(line: 524, column: 21, scope: !1383)
!1449 = !DILocation(line: 524, column: 3, scope: !1383)
!1450 = !DILocation(line: 525, column: 3, scope: !1383)
!1451 = !DILocation(line: 526, column: 3, scope: !1383)
!1452 = !DILocation(line: 527, column: 3, scope: !1383)
!1453 = !DILocation(line: 529, column: 3, scope: !1383)
!1454 = !DILocation(line: 531, column: 3, scope: !1383)
!1455 = !DILocation(line: 531, column: 18, scope: !1383)
!1456 = !DILocation(line: 536, column: 27, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 534, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 532, column: 5)
!1459 = !DILocation(line: 537, column: 11, scope: !1457)
!1460 = !DILocation(line: 540, column: 27, scope: !1457)
!1461 = !DILocation(line: 541, column: 11, scope: !1457)
!1462 = !DILocation(line: 544, column: 27, scope: !1457)
!1463 = !DILocation(line: 545, column: 11, scope: !1457)
!1464 = !DILocation(line: 548, column: 28, scope: !1457)
!1465 = !DILocation(line: 549, column: 11, scope: !1457)
!1466 = !DILocation(line: 552, column: 28, scope: !1457)
!1467 = !DILocation(line: 554, column: 25, scope: !1457)
!1468 = !DILocation(line: 556, column: 11, scope: !1457)
!1469 = !DILocation(line: 559, column: 28, scope: !1457)
!1470 = !DILocation(line: 561, column: 25, scope: !1457)
!1471 = !DILocation(line: 563, column: 24, scope: !1457)
!1472 = !DILocation(line: 564, column: 11, scope: !1457)
!1473 = !DILocation(line: 567, column: 27, scope: !1457)
!1474 = !DILocation(line: 568, column: 11, scope: !1457)
!1475 = !DILocation(line: 571, column: 24, scope: !1457)
!1476 = !DILocation(line: 572, column: 11, scope: !1457)
!1477 = !DILocation(line: 575, column: 34, scope: !1457)
!1478 = !DILocation(line: 576, column: 11, scope: !1457)
!1479 = distinct !{!1479, !1454, !1480}
!1480 = !DILocation(line: 585, column: 5, scope: !1383)
!1481 = !DILocation(line: 578, column: 9, scope: !1457)
!1482 = !DILocation(line: 580, column: 9, scope: !1457)
!1483 = !DILocation(line: 583, column: 11, scope: !1457)
!1484 = !DILocation(line: 587, column: 20, scope: !1383)
!1485 = !{!1486, !1486, i64 0}
!1486 = !{!"int", !1344, i64 0}
!1487 = !DILocation(line: 587, column: 18, scope: !1383)
!1488 = !DILocation(line: 589, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 589, column: 7)
!1490 = !DILocation(line: 589, column: 35, scope: !1489)
!1491 = !DILocation(line: 589, column: 24, scope: !1489)
!1492 = !DILocation(line: 591, column: 20, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 590, column: 5)
!1494 = !DILocation(line: 591, column: 7, scope: !1493)
!1495 = !DILocation(line: 593, column: 7, scope: !1493)
!1496 = !DILocation(line: 0, scope: !1445)
!1497 = !DILocation(line: 596, column: 7, scope: !1383)
!1498 = !DILocalVariable(name: "filename", arg: 1, scope: !1499, file: !3, line: 461, type: !46)
!1499 = distinct !DISubprogram(name: "short_pinky", scope: !3, file: !3, line: 461, type: !1500, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !46, !1439, !136}
!1502 = !{!1498, !1503, !1504, !1505, !1506}
!1503 = !DILocalVariable(name: "argc_names", arg: 2, scope: !1499, file: !3, line: 462, type: !1439)
!1504 = !DILocalVariable(name: "argv_names", arg: 3, scope: !1499, file: !3, line: 462, type: !136)
!1505 = !DILocalVariable(name: "n_users", scope: !1499, file: !3, line: 464, type: !103)
!1506 = !DILocalVariable(name: "utmp_buf", scope: !1499, file: !3, line: 465, type: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!1508 = !DILocation(line: 0, scope: !1499, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 597, column: 5, scope: !1445)
!1510 = !DILocation(line: 464, column: 3, scope: !1499, inlinedAt: !1509)
!1511 = !DILocation(line: 465, column: 3, scope: !1499, inlinedAt: !1509)
!1512 = !DILocation(line: 465, column: 16, scope: !1499, inlinedAt: !1509)
!1513 = !DILocation(line: 467, column: 7, scope: !1514, inlinedAt: !1509)
!1514 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 467, column: 7)
!1515 = !DILocation(line: 467, column: 52, scope: !1514, inlinedAt: !1509)
!1516 = !DILocation(line: 467, column: 7, scope: !1499, inlinedAt: !1509)
!1517 = !DILocation(line: 468, column: 5, scope: !1514, inlinedAt: !1509)
!1518 = !DILocation(line: 470, column: 17, scope: !1499, inlinedAt: !1509)
!1519 = !{!1520, !1520, i64 0}
!1520 = !{!"long", !1344, i64 0}
!1521 = !DILocation(line: 470, column: 26, scope: !1499, inlinedAt: !1509)
!1522 = !DILocalVariable(name: "n", arg: 1, scope: !1523, file: !3, line: 421, type: !103)
!1523 = distinct !DISubprogram(name: "scan_entries", scope: !3, file: !3, line: 421, type: !1524, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !103, !322, !1439, !136}
!1526 = !{!1522, !1527, !1528, !1529, !1530}
!1527 = !DILocalVariable(name: "utmp_buf", arg: 2, scope: !1523, file: !3, line: 421, type: !322)
!1528 = !DILocalVariable(name: "argc_names", arg: 3, scope: !1523, file: !3, line: 422, type: !1439)
!1529 = !DILocalVariable(name: "argv_names", arg: 4, scope: !1523, file: !3, line: 422, type: !136)
!1530 = !DILocalVariable(name: "i", scope: !1531, file: !3, line: 444, type: !48)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 444, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 443, column: 13)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 442, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 441, column: 9)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 440, column: 11)
!1536 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 439, column: 5)
!1537 = !DILocation(line: 0, scope: !1523, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 470, column: 3, scope: !1499, inlinedAt: !1509)
!1539 = !DILocation(line: 424, column: 7, scope: !1540, inlinedAt: !1538)
!1540 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 424, column: 7)
!1541 = !DILocation(line: 0, scope: !1540, inlinedAt: !1538)
!1542 = !DILocation(line: 435, column: 7, scope: !1543, inlinedAt: !1538)
!1543 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 435, column: 7)
!1544 = !DILocation(line: 435, column: 7, scope: !1523, inlinedAt: !1538)
!1545 = !DILocation(line: 404, column: 3, scope: !1546, inlinedAt: !1547)
!1546 = distinct !DISubprogram(name: "print_heading", scope: !3, file: !3, line: 402, type: !130, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!1547 = distinct !DILocation(line: 436, column: 5, scope: !1543, inlinedAt: !1538)
!1548 = !DILocation(line: 405, column: 7, scope: !1549, inlinedAt: !1547)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 405, column: 7)
!1550 = !DILocation(line: 405, column: 7, scope: !1546, inlinedAt: !1547)
!1551 = !DILocation(line: 406, column: 5, scope: !1549, inlinedAt: !1547)
!1552 = !DILocation(line: 407, column: 3, scope: !1546, inlinedAt: !1547)
!1553 = !DILocation(line: 408, column: 7, scope: !1554, inlinedAt: !1547)
!1554 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 408, column: 7)
!1555 = !DILocation(line: 408, column: 7, scope: !1546, inlinedAt: !1547)
!1556 = !DILocation(line: 409, column: 5, scope: !1554, inlinedAt: !1547)
!1557 = !DILocation(line: 410, column: 3, scope: !1546, inlinedAt: !1547)
!1558 = !DILocation(line: 412, column: 7, scope: !1559, inlinedAt: !1547)
!1559 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 412, column: 7)
!1560 = !DILocation(line: 412, column: 7, scope: !1546, inlinedAt: !1547)
!1561 = !DILocation(line: 413, column: 5, scope: !1559, inlinedAt: !1547)
!1562 = !DILocalVariable(name: "__c", arg: 1, scope: !1563, file: !1564, line: 108, type: !48)
!1563 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1564, file: !1564, line: 108, type: !1565, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1567)
!1564 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!48, !48}
!1567 = !{!1562}
!1568 = !DILocation(line: 0, scope: !1563, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 415, column: 3, scope: !1546, inlinedAt: !1547)
!1570 = !DILocation(line: 110, column: 10, scope: !1563, inlinedAt: !1569)
!1571 = !{!1572, !1343, i64 40}
!1572 = !{!"_IO_FILE", !1486, i64 0, !1343, i64 8, !1343, i64 16, !1343, i64 24, !1343, i64 32, !1343, i64 40, !1343, i64 48, !1343, i64 56, !1343, i64 64, !1343, i64 72, !1343, i64 80, !1343, i64 88, !1343, i64 96, !1343, i64 104, !1486, i64 112, !1486, i64 116, !1520, i64 120, !1573, i64 128, !1344, i64 130, !1344, i64 131, !1343, i64 136, !1520, i64 144, !1343, i64 152, !1343, i64 160, !1343, i64 168, !1343, i64 176, !1520, i64 184, !1486, i64 192, !1344, i64 196}
!1573 = !{!"short", !1344, i64 0}
!1574 = !{!1572, !1343, i64 48}
!1575 = !{!"branch_weights", i32 2000, i32 1}
!1576 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1577 = !{!1344, !1344, i64 0}
!1578 = !DILocation(line: 438, column: 3, scope: !1523, inlinedAt: !1538)
!1579 = !DILocation(line: 0, scope: !1580, inlinedAt: !1538)
!1580 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 444, column: 15)
!1581 = !DILocation(line: 438, column: 11, scope: !1523, inlinedAt: !1538)
!1582 = !DILocation(line: 440, column: 11, scope: !1535, inlinedAt: !1538)
!1583 = !{!1584, !1573, i64 0}
!1584 = !{!"utmpx", !1573, i64 0, !1486, i64 4, !1344, i64 8, !1344, i64 40, !1344, i64 44, !1344, i64 76, !1585, i64 332, !1486, i64 336, !1586, i64 340, !1344, i64 348, !1344, i64 364}
!1585 = !{!"__exit_status", !1573, i64 0, !1573, i64 2}
!1586 = !{!"", !1486, i64 0, !1486, i64 4}
!1587 = !DILocation(line: 440, column: 11, scope: !1536, inlinedAt: !1538)
!1588 = !DILocation(line: 442, column: 15, scope: !1534, inlinedAt: !1538)
!1589 = !DILocation(line: 0, scope: !1531, inlinedAt: !1538)
!1590 = !DILocation(line: 444, column: 15, scope: !1531, inlinedAt: !1538)
!1591 = !DILocation(line: 444, column: 33, scope: !1580, inlinedAt: !1538)
!1592 = distinct !{!1592, !1590, !1593}
!1593 = !DILocation(line: 449, column: 19, scope: !1531, inlinedAt: !1538)
!1594 = !DILocation(line: 445, column: 21, scope: !1595, inlinedAt: !1538)
!1595 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 445, column: 21)
!1596 = !DILocation(line: 444, column: 48, scope: !1580, inlinedAt: !1538)
!1597 = !DILocation(line: 445, column: 21, scope: !1580, inlinedAt: !1538)
!1598 = !DILocation(line: 447, column: 21, scope: !1599, inlinedAt: !1538)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 446, column: 19)
!1600 = !DILocation(line: 448, column: 21, scope: !1599, inlinedAt: !1538)
!1601 = !DILocation(line: 452, column: 13, scope: !1533, inlinedAt: !1538)
!1602 = !DILocation(line: 454, column: 15, scope: !1536, inlinedAt: !1538)
!1603 = distinct !{!1603, !1578, !1604}
!1604 = !DILocation(line: 455, column: 5, scope: !1523, inlinedAt: !1538)
!1605 = !DILocation(line: 473, column: 1, scope: !1499, inlinedAt: !1509)
!1606 = !DILocation(line: 597, column: 5, scope: !1445)
!1607 = !DILocation(line: 0, scope: !1436, inlinedAt: !1444)
!1608 = !DILocation(line: 0, scope: !1435, inlinedAt: !1444)
!1609 = !DILocation(line: 478, column: 21, scope: !1434, inlinedAt: !1444)
!1610 = !DILocation(line: 478, column: 3, scope: !1435, inlinedAt: !1444)
!1611 = !DILocation(line: 0, scope: !1393, inlinedAt: !1433)
!1612 = !DILocation(line: 0, scope: !1417, inlinedAt: !1433)
!1613 = !DILocation(line: 479, column: 23, scope: !1434, inlinedAt: !1444)
!1614 = !DILocation(line: 0, scope: !1395, inlinedAt: !1433)
!1615 = !DILocation(line: 311, column: 8, scope: !1395, inlinedAt: !1433)
!1616 = !DILocation(line: 313, column: 3, scope: !1395, inlinedAt: !1433)
!1617 = !DILocation(line: 314, column: 3, scope: !1395, inlinedAt: !1433)
!1618 = !DILocation(line: 316, column: 3, scope: !1395, inlinedAt: !1433)
!1619 = !DILocation(line: 317, column: 10, scope: !1401, inlinedAt: !1433)
!1620 = !DILocation(line: 317, column: 7, scope: !1395, inlinedAt: !1433)
!1621 = !DILocation(line: 320, column: 7, scope: !1622, inlinedAt: !1433)
!1622 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 318, column: 5)
!1623 = !DILocation(line: 321, column: 7, scope: !1622, inlinedAt: !1433)
!1624 = !DILocation(line: 325, column: 39, scope: !1400, inlinedAt: !1433)
!1625 = !{!1626, !1343, i64 24}
!1626 = !{!"passwd", !1343, i64 0, !1343, i64 8, !1486, i64 16, !1486, i64 20, !1343, i64 24, !1343, i64 32, !1343, i64 40}
!1627 = !DILocation(line: 325, column: 27, scope: !1400, inlinedAt: !1433)
!1628 = !DILocation(line: 0, scope: !1400, inlinedAt: !1433)
!1629 = !DILocation(line: 328, column: 11, scope: !1630, inlinedAt: !1433)
!1630 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 328, column: 11)
!1631 = !DILocation(line: 328, column: 11, scope: !1400, inlinedAt: !1433)
!1632 = !DILocation(line: 329, column: 16, scope: !1630, inlinedAt: !1433)
!1633 = !DILocation(line: 331, column: 37, scope: !1400, inlinedAt: !1433)
!1634 = !DILocation(line: 329, column: 9, scope: !1630, inlinedAt: !1433)
!1635 = !DILocation(line: 331, column: 51, scope: !1400, inlinedAt: !1433)
!1636 = !{!1626, !1343, i64 0}
!1637 = !DILocation(line: 331, column: 16, scope: !1400, inlinedAt: !1433)
!1638 = !DILocation(line: 332, column: 7, scope: !1400, inlinedAt: !1433)
!1639 = !DILocation(line: 333, column: 7, scope: !1400, inlinedAt: !1433)
!1640 = !DILocation(line: 0, scope: !1563, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 336, column: 3, scope: !1395, inlinedAt: !1433)
!1642 = !DILocation(line: 110, column: 10, scope: !1563, inlinedAt: !1641)
!1643 = !DILocation(line: 338, column: 7, scope: !1644, inlinedAt: !1433)
!1644 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 338, column: 7)
!1645 = !DILocation(line: 338, column: 7, scope: !1395, inlinedAt: !1433)
!1646 = !DILocation(line: 340, column: 7, scope: !1647, inlinedAt: !1433)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 339, column: 5)
!1648 = !DILocation(line: 341, column: 7, scope: !1647, inlinedAt: !1433)
!1649 = !{!1626, !1343, i64 32}
!1650 = !DILocation(line: 342, column: 7, scope: !1647, inlinedAt: !1433)
!1651 = !DILocation(line: 343, column: 7, scope: !1647, inlinedAt: !1433)
!1652 = !{!1626, !1343, i64 40}
!1653 = !DILocation(line: 0, scope: !1563, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 344, column: 7, scope: !1647, inlinedAt: !1433)
!1655 = !DILocation(line: 110, column: 10, scope: !1563, inlinedAt: !1654)
!1656 = !DILocation(line: 347, column: 7, scope: !1394, inlinedAt: !1433)
!1657 = !DILocation(line: 347, column: 7, scope: !1395, inlinedAt: !1433)
!1658 = !DILocation(line: 350, column: 7, scope: !1393, inlinedAt: !1433)
!1659 = !DILocation(line: 353, column: 30, scope: !1393, inlinedAt: !1433)
!1660 = !DILocation(line: 353, column: 18, scope: !1393, inlinedAt: !1433)
!1661 = !DILocation(line: 353, column: 61, scope: !1393, inlinedAt: !1433)
!1662 = !DILocation(line: 353, column: 9, scope: !1393, inlinedAt: !1433)
!1663 = !DILocation(line: 354, column: 36, scope: !1393, inlinedAt: !1433)
!1664 = !DILocalVariable(name: "__dest", arg: 1, scope: !1665, file: !1666, line: 95, type: !1669)
!1665 = distinct !DISubprogram(name: "stpcpy", scope: !1666, file: !1666, line: 95, type: !1667, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1671)
!1666 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!44, !1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!1670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!1671 = !{!1664, !1672}
!1672 = !DILocalVariable(name: "__src", arg: 2, scope: !1665, file: !1666, line: 95, type: !1670)
!1673 = !DILocation(line: 0, scope: !1665, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 354, column: 15, scope: !1393, inlinedAt: !1433)
!1675 = !DILocation(line: 97, column: 10, scope: !1665, inlinedAt: !1674)
!1676 = !DILocation(line: 0, scope: !1665, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 354, column: 7, scope: !1393, inlinedAt: !1433)
!1678 = !DILocation(line: 97, column: 10, scope: !1665, inlinedAt: !1677)
!1679 = !DILocation(line: 356, column: 16, scope: !1393, inlinedAt: !1433)
!1680 = !DILocation(line: 357, column: 11, scope: !1411, inlinedAt: !1433)
!1681 = !DILocation(line: 357, column: 11, scope: !1393, inlinedAt: !1433)
!1682 = !DILocation(line: 361, column: 11, scope: !1410, inlinedAt: !1433)
!1683 = !DILocation(line: 363, column: 27, scope: !1410, inlinedAt: !1433)
!1684 = !DILocation(line: 0, scope: !1410, inlinedAt: !1433)
!1685 = !DILocation(line: 363, column: 65, scope: !1410, inlinedAt: !1433)
!1686 = !DILocation(line: 363, column: 11, scope: !1410, inlinedAt: !1433)
!1687 = !DILocation(line: 364, column: 13, scope: !1410, inlinedAt: !1433)
!1688 = distinct !{!1688, !1686, !1687}
!1689 = !DILocation(line: 365, column: 11, scope: !1410, inlinedAt: !1433)
!1690 = !DILocation(line: 366, column: 9, scope: !1410, inlinedAt: !1433)
!1691 = !DILocation(line: 368, column: 7, scope: !1393, inlinedAt: !1433)
!1692 = !DILocation(line: 369, column: 5, scope: !1394, inlinedAt: !1433)
!1693 = !DILocation(line: 369, column: 5, scope: !1393, inlinedAt: !1433)
!1694 = !DILocation(line: 371, column: 7, scope: !1418, inlinedAt: !1433)
!1695 = !DILocation(line: 371, column: 7, scope: !1395, inlinedAt: !1433)
!1696 = !DILocation(line: 374, column: 7, scope: !1417, inlinedAt: !1433)
!1697 = !DILocation(line: 377, column: 30, scope: !1417, inlinedAt: !1433)
!1698 = !DILocation(line: 377, column: 18, scope: !1417, inlinedAt: !1433)
!1699 = !DILocation(line: 377, column: 58, scope: !1417, inlinedAt: !1433)
!1700 = !DILocation(line: 377, column: 9, scope: !1417, inlinedAt: !1433)
!1701 = !DILocation(line: 378, column: 33, scope: !1417, inlinedAt: !1433)
!1702 = !DILocation(line: 0, scope: !1665, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 378, column: 15, scope: !1417, inlinedAt: !1433)
!1704 = !DILocation(line: 97, column: 10, scope: !1665, inlinedAt: !1703)
!1705 = !DILocation(line: 0, scope: !1665, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 378, column: 7, scope: !1417, inlinedAt: !1433)
!1707 = !DILocation(line: 97, column: 10, scope: !1665, inlinedAt: !1706)
!1708 = !DILocation(line: 380, column: 16, scope: !1417, inlinedAt: !1433)
!1709 = !DILocation(line: 381, column: 11, scope: !1427, inlinedAt: !1433)
!1710 = !DILocation(line: 381, column: 11, scope: !1417, inlinedAt: !1433)
!1711 = !DILocation(line: 385, column: 11, scope: !1426, inlinedAt: !1433)
!1712 = !DILocation(line: 387, column: 27, scope: !1426, inlinedAt: !1433)
!1713 = !DILocation(line: 0, scope: !1426, inlinedAt: !1433)
!1714 = !DILocation(line: 387, column: 65, scope: !1426, inlinedAt: !1433)
!1715 = !DILocation(line: 387, column: 11, scope: !1426, inlinedAt: !1433)
!1716 = !DILocation(line: 388, column: 13, scope: !1426, inlinedAt: !1433)
!1717 = distinct !{!1717, !1715, !1716}
!1718 = !DILocation(line: 389, column: 11, scope: !1426, inlinedAt: !1433)
!1719 = !DILocation(line: 390, column: 9, scope: !1426, inlinedAt: !1433)
!1720 = !DILocation(line: 392, column: 7, scope: !1417, inlinedAt: !1433)
!1721 = !DILocation(line: 393, column: 5, scope: !1418, inlinedAt: !1433)
!1722 = !DILocation(line: 393, column: 5, scope: !1417, inlinedAt: !1433)
!1723 = !DILocation(line: 0, scope: !1563, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 395, column: 3, scope: !1395, inlinedAt: !1433)
!1725 = !DILocation(line: 110, column: 10, scope: !1563, inlinedAt: !1724)
!1726 = !DILocation(line: 478, column: 36, scope: !1434, inlinedAt: !1444)
!1727 = distinct !{!1727, !1610, !1728}
!1728 = !DILocation(line: 479, column: 36, scope: !1435, inlinedAt: !1444)
!1729 = !DILocation(line: 601, column: 3, scope: !1383)
!1730 = distinct !DISubprogram(name: "print_entry", scope: !3, file: !3, line: 200, type: !1731, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !322}
!1733 = !{!1734, !1735, !1767, !1768, !1769, !1773, !1774, !1777, !1778, !1781, !1782, !1788, !1789}
!1734 = !DILocalVariable(name: "utmp_ent", arg: 1, scope: !1730, file: !3, line: 200, type: !322)
!1735 = !DILocalVariable(name: "stats", scope: !1730, file: !3, line: 202, type: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1737, line: 46, size: 1152, elements: !1738)
!1737 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1738 = !{!1739, !1741, !1743, !1745, !1747, !1748, !1749, !1750, !1751, !1752, !1754, !1756, !1763, !1764, !1765}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1736, file: !1737, line: 48, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !78, line: 145, baseType: !105)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1736, file: !1737, line: 53, baseType: !1742, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !78, line: 148, baseType: !105)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1736, file: !1737, line: 61, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !78, line: 151, baseType: !105)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1736, file: !1737, line: 62, baseType: !1746, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !78, line: 150, baseType: !7)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1736, file: !1737, line: 64, baseType: !215, size: 32, offset: 224)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1736, file: !1737, line: 65, baseType: !217, size: 32, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1736, file: !1737, line: 67, baseType: !48, size: 32, offset: 288)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1736, file: !1737, line: 69, baseType: !1740, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1736, file: !1737, line: 74, baseType: !77, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1736, file: !1737, line: 78, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !78, line: 174, baseType: !79)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1736, file: !1737, line: 80, baseType: !1755, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !78, line: 179, baseType: !79)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1736, file: !1737, line: 91, baseType: !1757, size: 128, offset: 576)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1758, line: 10, size: 128, elements: !1759)
!1758 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1757, file: !1758, line: 12, baseType: !302, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1757, file: !1758, line: 16, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !78, line: 196, baseType: !79)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1736, file: !1737, line: 92, baseType: !1757, size: 128, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1736, file: !1737, line: 93, baseType: !1757, size: 128, offset: 832)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1736, file: !1737, line: 106, baseType: !1766, size: 192, offset: 960)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1762, size: 192, elements: !333)
!1767 = !DILocalVariable(name: "last_change", scope: !1730, file: !3, line: 203, type: !300)
!1768 = !DILocalVariable(name: "mesg", scope: !1730, file: !3, line: 204, type: !45)
!1769 = !DILocalVariable(name: "line", scope: !1730, file: !3, line: 209, type: !1770)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 38)
!1773 = !DILocalVariable(name: "p", scope: !1730, file: !3, line: 210, type: !44)
!1774 = !DILocalVariable(name: "pw", scope: !1775, file: !3, line: 234, type: !209)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 233, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 232, column: 7)
!1777 = !DILocalVariable(name: "name", scope: !1775, file: !3, line: 235, type: !329)
!1778 = !DILocalVariable(name: "comma", scope: !1779, file: !3, line: 244, type: !137)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 243, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 239, column: 11)
!1781 = !DILocalVariable(name: "result", scope: !1779, file: !3, line: 245, type: !44)
!1782 = !DILocalVariable(name: "ut_host", scope: !1783, file: !3, line: 273, type: !1785)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 272, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 271, column: 7)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2056, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 257)
!1788 = !DILocalVariable(name: "host", scope: !1783, file: !3, line: 274, type: !44)
!1789 = !DILocalVariable(name: "display", scope: !1783, file: !3, line: 275, type: !44)
!1790 = !DILocation(line: 0, scope: !1730)
!1791 = !DILocation(line: 202, column: 3, scope: !1730)
!1792 = !DILocation(line: 202, column: 15, scope: !1730)
!1793 = !DILocation(line: 209, column: 3, scope: !1730)
!1794 = !DILocation(line: 209, column: 8, scope: !1730)
!1795 = !DILocation(line: 215, column: 10, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 215, column: 8)
!1797 = !DILocation(line: 215, column: 8, scope: !1730)
!1798 = !DILocation(line: 0, scope: !1665, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 216, column: 9, scope: !1796)
!1800 = !DILocation(line: 97, column: 10, scope: !1665, inlinedAt: !1799)
!1801 = !DILocation(line: 216, column: 5, scope: !1796)
!1802 = !DILocalVariable(name: "dest", arg: 1, scope: !1803, file: !1318, line: 741, type: !1669)
!1803 = distinct !DISubprogram(name: "stzncpy", scope: !1318, file: !1318, line: 741, type: !1804, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!44, !1669, !1670, !103}
!1806 = !{!1802, !1807, !1808, !1809}
!1807 = !DILocalVariable(name: "src", arg: 2, scope: !1803, file: !1318, line: 741, type: !1670)
!1808 = !DILocalVariable(name: "len", arg: 3, scope: !1803, file: !1318, line: 741, type: !103)
!1809 = !DILocalVariable(name: "src_end", scope: !1803, file: !1318, line: 743, type: !46)
!1810 = !DILocation(line: 0, scope: !1803, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 217, column: 3, scope: !1730)
!1812 = !DILocation(line: 743, column: 29, scope: !1803, inlinedAt: !1811)
!1813 = !DILocation(line: 744, column: 24, scope: !1803, inlinedAt: !1811)
!1814 = !DILocation(line: 744, column: 3, scope: !1803, inlinedAt: !1811)
!1815 = !DILocation(line: 745, column: 19, scope: !1803, inlinedAt: !1811)
!1816 = !DILocation(line: 745, column: 10, scope: !1803, inlinedAt: !1811)
!1817 = !DILocation(line: 745, column: 13, scope: !1803, inlinedAt: !1811)
!1818 = !{!1819}
!1819 = distinct !{!1819, !1820, !"stzncpy: argument 0"}
!1820 = distinct !{!1820, !"stzncpy"}
!1821 = !{!1822}
!1822 = distinct !{!1822, !1820, !"stzncpy: argument 1"}
!1823 = !DILocation(line: 744, column: 14, scope: !1803, inlinedAt: !1811)
!1824 = distinct !{!1824, !1814, !1815}
!1825 = !DILocation(line: 744, column: 27, scope: !1803, inlinedAt: !1811)
!1826 = !DILocation(line: 746, column: 9, scope: !1803, inlinedAt: !1811)
!1827 = !DILocalVariable(name: "__path", arg: 1, scope: !1828, file: !1829, line: 453, type: !46)
!1828 = distinct !DISubprogram(name: "stat", scope: !1829, file: !1829, line: 453, type: !1830, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1829 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!48, !46, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1833 = !{!1827, !1834}
!1834 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1828, file: !1829, line: 453, type: !1832)
!1835 = !DILocation(line: 0, scope: !1828, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 219, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 219, column: 7)
!1838 = !DILocation(line: 455, column: 10, scope: !1828, inlinedAt: !1836)
!1839 = !DILocation(line: 219, column: 27, scope: !1837)
!1840 = !DILocation(line: 219, column: 7, scope: !1730)
!1841 = !DILocation(line: 221, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 220, column: 5)
!1843 = !{!1844, !1486, i64 24}
!1844 = !{!"stat", !1520, i64 0, !1520, i64 8, !1520, i64 16, !1486, i64 24, !1486, i64 28, !1486, i64 32, !1486, i64 36, !1520, i64 40, !1520, i64 48, !1520, i64 56, !1520, i64 64, !1845, i64 72, !1845, i64 88, !1845, i64 104, !1344, i64 120}
!1845 = !{!"timespec", !1520, i64 0, !1520, i64 8}
!1846 = !DILocation(line: 221, column: 29, scope: !1842)
!1847 = !DILocation(line: 221, column: 14, scope: !1842)
!1848 = !DILocation(line: 222, column: 27, scope: !1842)
!1849 = !{!1844, !1520, i64 72}
!1850 = !DILocation(line: 223, column: 5, scope: !1842)
!1851 = !DILocation(line: 0, scope: !1837)
!1852 = !DILocation(line: 230, column: 3, scope: !1730)
!1853 = !DILocation(line: 232, column: 7, scope: !1776)
!1854 = !DILocation(line: 232, column: 7, scope: !1730)
!1855 = !DILocation(line: 235, column: 7, scope: !1775)
!1856 = !DILocation(line: 235, column: 12, scope: !1775)
!1857 = !DILocation(line: 0, scope: !1803, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 237, column: 7, scope: !1775)
!1859 = !DILocation(line: 743, column: 29, scope: !1803, inlinedAt: !1858)
!1860 = !DILocation(line: 744, column: 27, scope: !1803, inlinedAt: !1858)
!1861 = !{!1862}
!1862 = distinct !{!1862, !1863, !"stzncpy: argument 1"}
!1863 = distinct !{!1863, !"stzncpy"}
!1864 = !{!1865}
!1865 = distinct !{!1865, !1863, !"stzncpy: argument 0"}
!1866 = !DILocation(line: 744, column: 24, scope: !1803, inlinedAt: !1858)
!1867 = !DILocation(line: 744, column: 3, scope: !1803, inlinedAt: !1858)
!1868 = !DILocation(line: 745, column: 19, scope: !1803, inlinedAt: !1858)
!1869 = !DILocation(line: 745, column: 10, scope: !1803, inlinedAt: !1858)
!1870 = !DILocation(line: 745, column: 13, scope: !1803, inlinedAt: !1858)
!1871 = !DILocation(line: 744, column: 14, scope: !1803, inlinedAt: !1858)
!1872 = distinct !{!1872, !1867, !1868}
!1873 = !DILocation(line: 746, column: 9, scope: !1803, inlinedAt: !1858)
!1874 = !DILocation(line: 238, column: 12, scope: !1775)
!1875 = !DILocation(line: 0, scope: !1775)
!1876 = !DILocation(line: 239, column: 14, scope: !1780)
!1877 = !DILocation(line: 239, column: 11, scope: !1775)
!1878 = !DILocation(line: 241, column: 9, scope: !1780)
!1879 = !DILocation(line: 244, column: 43, scope: !1779)
!1880 = !DILocation(line: 244, column: 31, scope: !1779)
!1881 = !DILocation(line: 0, scope: !1779)
!1882 = !DILocation(line: 247, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 247, column: 15)
!1884 = !DILocation(line: 247, column: 15, scope: !1779)
!1885 = !DILocation(line: 248, column: 20, scope: !1883)
!1886 = !DILocation(line: 250, column: 41, scope: !1779)
!1887 = !DILocation(line: 248, column: 13, scope: !1883)
!1888 = !DILocation(line: 250, column: 55, scope: !1779)
!1889 = !DILocation(line: 250, column: 20, scope: !1779)
!1890 = !DILocation(line: 251, column: 11, scope: !1779)
!1891 = !DILocation(line: 252, column: 11, scope: !1779)
!1892 = !DILocation(line: 254, column: 5, scope: !1776)
!1893 = !DILocation(line: 254, column: 5, scope: !1775)
!1894 = !DILocation(line: 256, column: 3, scope: !1730)
!1895 = !DILocation(line: 259, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 259, column: 7)
!1897 = !DILocation(line: 259, column: 7, scope: !1730)
!1898 = !DILocation(line: 261, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 261, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 260, column: 5)
!1901 = !DILocation(line: 261, column: 11, scope: !1900)
!1902 = !DILocation(line: 0, scope: !297, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 262, column: 9, scope: !1899)
!1904 = !DILocation(line: 153, column: 7, scope: !1905, inlinedAt: !1903)
!1905 = distinct !DILexicalBlock(scope: !297, file: !3, line: 153, column: 7)
!1906 = !DILocation(line: 153, column: 11, scope: !1905, inlinedAt: !1903)
!1907 = !DILocation(line: 153, column: 7, scope: !297, inlinedAt: !1903)
!1908 = !DILocation(line: 154, column: 5, scope: !1905, inlinedAt: !1903)
!1909 = !DILocation(line: 156, column: 18, scope: !297, inlinedAt: !1903)
!1910 = !DILocation(line: 156, column: 22, scope: !297, inlinedAt: !1903)
!1911 = !DILocation(line: 157, column: 20, scope: !1912, inlinedAt: !1903)
!1912 = distinct !DILexicalBlock(scope: !297, file: !3, line: 157, column: 7)
!1913 = !DILocation(line: 157, column: 7, scope: !297, inlinedAt: !1903)
!1914 = !DILocation(line: 159, column: 20, scope: !308, inlinedAt: !1903)
!1915 = !DILocation(line: 159, column: 7, scope: !297, inlinedAt: !1903)
!1916 = !DILocation(line: 161, column: 32, scope: !307, inlinedAt: !1903)
!1917 = !DILocation(line: 0, scope: !307, inlinedAt: !1903)
!1918 = !DILocation(line: 162, column: 35, scope: !307, inlinedAt: !1903)
!1919 = !DILocation(line: 162, column: 48, scope: !307, inlinedAt: !1903)
!1920 = !DILocation(line: 163, column: 7, scope: !307, inlinedAt: !1903)
!1921 = !DILocation(line: 164, column: 5, scope: !307, inlinedAt: !1903)
!1922 = !DILocation(line: 167, column: 45, scope: !311, inlinedAt: !1903)
!1923 = !DILocation(line: 0, scope: !311, inlinedAt: !1903)
!1924 = !DILocation(line: 168, column: 7, scope: !311, inlinedAt: !1903)
!1925 = !DILocation(line: 262, column: 9, scope: !1899)
!1926 = !DILocation(line: 265, column: 9, scope: !1899)
!1927 = !DILocation(line: 0, scope: !319, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 268, column: 3, scope: !1730)
!1929 = !DILocation(line: 185, column: 3, scope: !319, inlinedAt: !1928)
!1930 = !DILocation(line: 185, column: 14, scope: !319, inlinedAt: !1928)
!1931 = !{!1584, !1486, i64 340}
!1932 = !DILocation(line: 185, column: 10, scope: !319, inlinedAt: !1928)
!1933 = !DILocation(line: 186, column: 20, scope: !319, inlinedAt: !1928)
!1934 = !DILocation(line: 188, column: 7, scope: !1935, inlinedAt: !1928)
!1935 = distinct !DILexicalBlock(scope: !319, file: !3, line: 188, column: 7)
!1936 = !DILocation(line: 188, column: 7, scope: !319, inlinedAt: !1928)
!1937 = !DILocation(line: 190, column: 34, scope: !1938, inlinedAt: !1928)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 189, column: 5)
!1939 = !DILocation(line: 190, column: 7, scope: !1938, inlinedAt: !1928)
!1940 = !DILocation(line: 191, column: 7, scope: !1938, inlinedAt: !1928)
!1941 = !DILocation(line: 194, column: 23, scope: !1935, inlinedAt: !1928)
!1942 = !DILocalVariable(name: "t", arg: 1, scope: !1943, file: !1318, line: 690, type: !300)
!1943 = distinct !DISubprogram(name: "timetostr", scope: !1318, file: !1318, line: 690, type: !1944, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!44, !300, !44}
!1946 = !{!1942, !1947}
!1947 = !DILocalVariable(name: "buf", arg: 2, scope: !1943, file: !1318, line: 690, type: !44)
!1948 = !DILocation(line: 0, scope: !1943, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 194, column: 12, scope: !1935, inlinedAt: !1928)
!1950 = !DILocation(line: 693, column: 13, scope: !1943, inlinedAt: !1949)
!1951 = !DILocation(line: 194, column: 5, scope: !1935, inlinedAt: !1928)
!1952 = !DILocation(line: 0, scope: !1935, inlinedAt: !1928)
!1953 = !DILocation(line: 195, column: 1, scope: !319, inlinedAt: !1928)
!1954 = !DILocation(line: 268, column: 3, scope: !1730)
!1955 = !DILocation(line: 271, column: 7, scope: !1784)
!1956 = !DILocation(line: 271, column: 21, scope: !1784)
!1957 = !DILocation(line: 271, column: 24, scope: !1784)
!1958 = !DILocation(line: 271, column: 7, scope: !1730)
!1959 = !DILocation(line: 273, column: 7, scope: !1783)
!1960 = !DILocation(line: 273, column: 12, scope: !1783)
!1961 = !DILocation(line: 0, scope: !1783)
!1962 = !DILocation(line: 0, scope: !1803, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 278, column: 7, scope: !1783)
!1964 = !DILocation(line: 743, column: 29, scope: !1803, inlinedAt: !1963)
!1965 = !DILocation(line: 744, column: 3, scope: !1803, inlinedAt: !1963)
!1966 = !DILocation(line: 745, column: 19, scope: !1803, inlinedAt: !1963)
!1967 = !DILocation(line: 745, column: 10, scope: !1803, inlinedAt: !1963)
!1968 = !DILocation(line: 745, column: 13, scope: !1803, inlinedAt: !1963)
!1969 = !{!1970}
!1970 = distinct !{!1970, !1971, !"stzncpy: argument 0"}
!1971 = distinct !{!1971, !"stzncpy"}
!1972 = !{!1973}
!1973 = distinct !{!1973, !1971, !"stzncpy: argument 1"}
!1974 = !DILocation(line: 744, column: 14, scope: !1803, inlinedAt: !1963)
!1975 = !DILocation(line: 744, column: 24, scope: !1803, inlinedAt: !1963)
!1976 = distinct !{!1976, !1965, !1966}
!1977 = !DILocation(line: 744, column: 27, scope: !1803, inlinedAt: !1963)
!1978 = !DILocation(line: 746, column: 9, scope: !1803, inlinedAt: !1963)
!1979 = !DILocation(line: 281, column: 17, scope: !1783)
!1980 = !DILocation(line: 282, column: 11, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 282, column: 11)
!1982 = !DILocation(line: 282, column: 11, scope: !1783)
!1983 = !DILocation(line: 283, column: 17, scope: !1981)
!1984 = !DILocation(line: 283, column: 20, scope: !1981)
!1985 = !DILocation(line: 283, column: 9, scope: !1981)
!1986 = !DILocation(line: 285, column: 11, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 285, column: 11)
!1988 = !DILocation(line: 285, column: 11, scope: !1783)
!1989 = !DILocation(line: 287, column: 16, scope: !1987)
!1990 = !DILocation(line: 287, column: 9, scope: !1987)
!1991 = !DILocation(line: 288, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 288, column: 12)
!1993 = !DILocation(line: 288, column: 12, scope: !1783)
!1994 = !DILocation(line: 291, column: 11, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 291, column: 11)
!1996 = !DILocation(line: 291, column: 11, scope: !1783)
!1997 = !DILocation(line: 292, column: 9, scope: !1995)
!1998 = !DILocation(line: 294, column: 9, scope: !1995)
!1999 = !DILocation(line: 296, column: 11, scope: !1783)
!2000 = !DILocation(line: 297, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 296, column: 11)
!2002 = !DILocation(line: 298, column: 5, scope: !1784)
!2003 = !DILocation(line: 298, column: 5, scope: !1783)
!2004 = !DILocation(line: 0, scope: !1563, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 301, column: 3, scope: !1730)
!2006 = !DILocation(line: 110, column: 10, scope: !1563, inlinedAt: !2005)
!2007 = !DILocation(line: 302, column: 1, scope: !1730)
!2008 = distinct !DISubprogram(name: "create_fullname", scope: !3, file: !3, line: 103, type: !120, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2019, !2020, !2024}
!2010 = !DILocalVariable(name: "gecos_name", arg: 1, scope: !2008, file: !3, line: 103, type: !46)
!2011 = !DILocalVariable(name: "user_name", arg: 2, scope: !2008, file: !3, line: 103, type: !46)
!2012 = !DILocalVariable(name: "rsize", scope: !2008, file: !3, line: 105, type: !103)
!2013 = !DILocalVariable(name: "result", scope: !2008, file: !3, line: 106, type: !44)
!2014 = !DILocalVariable(name: "r", scope: !2008, file: !3, line: 107, type: !44)
!2015 = !DILocalVariable(name: "ampersands", scope: !2008, file: !3, line: 108, type: !103)
!2016 = !DILocalVariable(name: "ulen", scope: !2017, file: !3, line: 112, type: !103)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 111, column: 5)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 110, column: 7)
!2019 = !DILocalVariable(name: "product", scope: !2017, file: !3, line: 113, type: !103)
!2020 = !DILocalVariable(name: "uname", scope: !2021, file: !3, line: 125, type: !46)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 124, column: 9)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 123, column: 11)
!2023 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 122, column: 5)
!2024 = !DILocalVariable(name: "__res", scope: !2025, file: !3, line: 127, type: !48)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 127, column: 20)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 126, column: 15)
!2027 = !DILocation(line: 0, scope: !2008)
!2028 = !DILocation(line: 105, column: 18, scope: !2008)
!2029 = !DILocalVariable(name: "str", arg: 1, scope: !2030, file: !3, line: 85, type: !46)
!2030 = distinct !DISubprogram(name: "count_ampersands", scope: !3, file: !3, line: 85, type: !2031, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!103, !46}
!2033 = !{!2029, !2034}
!2034 = !DILocalVariable(name: "count", scope: !2030, file: !3, line: 87, type: !103)
!2035 = !DILocation(line: 0, scope: !2030, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 108, column: 23, scope: !2008)
!2037 = !DILocation(line: 88, column: 3, scope: !2030, inlinedAt: !2036)
!2038 = !DILocation(line: 90, column: 11, scope: !2039, inlinedAt: !2036)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 90, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 89, column: 5)
!2041 = !DILocation(line: 90, column: 16, scope: !2039, inlinedAt: !2036)
!2042 = !DILocation(line: 90, column: 11, scope: !2040, inlinedAt: !2036)
!2043 = !DILocation(line: 92, column: 18, scope: !2030, inlinedAt: !2036)
!2044 = !DILocation(line: 92, column: 5, scope: !2040, inlinedAt: !2036)
!2045 = distinct !{!2045, !2037, !2046}
!2046 = !DILocation(line: 92, column: 20, scope: !2030, inlinedAt: !2036)
!2047 = !DILocation(line: 105, column: 38, scope: !2008)
!2048 = !DILocation(line: 110, column: 18, scope: !2018)
!2049 = !DILocation(line: 110, column: 7, scope: !2008)
!2050 = !DILocation(line: 112, column: 21, scope: !2017)
!2051 = !DILocation(line: 0, scope: !2017)
!2052 = !DILocation(line: 113, column: 35, scope: !2017)
!2053 = !DILocation(line: 114, column: 24, scope: !2017)
!2054 = !DILocation(line: 114, column: 13, scope: !2017)
!2055 = !DILocation(line: 115, column: 11, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 115, column: 11)
!2057 = !DILocation(line: 115, column: 56, scope: !2056)
!2058 = !DILocation(line: 115, column: 47, scope: !2056)
!2059 = !DILocation(line: 116, column: 9, scope: !2056)
!2060 = !DILocation(line: 119, column: 16, scope: !2008)
!2061 = !DILocation(line: 0, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 127, column: 20)
!2063 = !DILocation(line: 121, column: 3, scope: !2008)
!2064 = !DILocation(line: 121, column: 10, scope: !2008)
!2065 = !DILocation(line: 0, scope: !2021)
!2066 = !DILocation(line: 126, column: 15, scope: !2026)
!2067 = !{!1573, !1573, i64 0}
!2068 = !DILocation(line: 126, column: 15, scope: !2021)
!2069 = !DILocation(line: 127, column: 20, scope: !2062)
!2070 = !DILocation(line: 0, scope: !2025)
!2071 = !DILocation(line: 127, column: 20, scope: !2026)
!2072 = !DILocation(line: 127, column: 15, scope: !2026)
!2073 = !DILocation(line: 127, column: 18, scope: !2026)
!2074 = !DILocation(line: 128, column: 18, scope: !2021)
!2075 = !DILocation(line: 127, column: 13, scope: !2026)
!2076 = !DILocation(line: 128, column: 11, scope: !2021)
!2077 = !DILocation(line: 129, column: 26, scope: !2021)
!2078 = !DILocation(line: 129, column: 15, scope: !2021)
!2079 = !DILocation(line: 129, column: 18, scope: !2021)
!2080 = distinct !{!2080, !2076, !2077}
!2081 = !DILocation(line: 133, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 132, column: 9)
!2083 = !DILocation(line: 133, column: 16, scope: !2082)
!2084 = !DILocation(line: 0, scope: !2022)
!2085 = !DILocation(line: 136, column: 17, scope: !2023)
!2086 = distinct !{!2086, !2063, !2087}
!2087 = !DILocation(line: 137, column: 5, scope: !2008)
!2088 = !DILocation(line: 138, column: 6, scope: !2008)
!2089 = !DILocation(line: 140, column: 3, scope: !2008)
!2090 = distinct !DISubprogram(name: "canon_host", scope: !351, file: !351, line: 33, type: !123, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "host", arg: 1, scope: !2090, file: !351, line: 33, type: !46)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 0, scope: !396, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 35, column: 10, scope: !2090)
!2096 = !DILocation(line: 65, column: 3, scope: !396, inlinedAt: !2095)
!2097 = !DILocation(line: 65, column: 20, scope: !396, inlinedAt: !2095)
!2098 = !DILocation(line: 68, column: 18, scope: !396, inlinedAt: !2095)
!2099 = !{!2100, !1486, i64 0}
!2100 = !{!"addrinfo", !1486, i64 0, !1486, i64 4, !1486, i64 8, !1486, i64 12, !1486, i64 16, !1343, i64 24, !1343, i64 32, !1343, i64 40}
!2101 = !DILocation(line: 69, column: 12, scope: !396, inlinedAt: !2095)
!2102 = !DILocation(line: 70, column: 8, scope: !2103, inlinedAt: !2095)
!2103 = distinct !DILexicalBlock(scope: !396, file: !351, line: 70, column: 7)
!2104 = !DILocation(line: 70, column: 7, scope: !396, inlinedAt: !2095)
!2105 = !DILocation(line: 75, column: 24, scope: !2106, inlinedAt: !2095)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !351, line: 71, column: 5)
!2107 = !DILocation(line: 75, column: 29, scope: !2106, inlinedAt: !2095)
!2108 = !{!2100, !1343, i64 32}
!2109 = !DILocation(line: 75, column: 16, scope: !2106, inlinedAt: !2095)
!2110 = !DILocation(line: 76, column: 12, scope: !2111, inlinedAt: !2095)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !351, line: 76, column: 11)
!2112 = !DILocation(line: 76, column: 19, scope: !2111, inlinedAt: !2095)
!2113 = !DILocation(line: 77, column: 18, scope: !2111, inlinedAt: !2095)
!2114 = !DILocation(line: 77, column: 9, scope: !2111, inlinedAt: !2095)
!2115 = !DILocation(line: 78, column: 21, scope: !2106, inlinedAt: !2095)
!2116 = !DILocation(line: 78, column: 7, scope: !2106, inlinedAt: !2095)
!2117 = !DILocation(line: 79, column: 5, scope: !2106, inlinedAt: !2095)
!2118 = !DILocation(line: 81, column: 14, scope: !2119, inlinedAt: !2095)
!2119 = distinct !DILexicalBlock(scope: !2103, file: !351, line: 80, column: 12)
!2120 = !DILocation(line: 81, column: 5, scope: !2119, inlinedAt: !2095)
!2121 = !DILocation(line: 84, column: 1, scope: !396, inlinedAt: !2095)
!2122 = !DILocation(line: 35, column: 3, scope: !2090)
!2123 = !DILocation(line: 0, scope: !396)
!2124 = !DILocation(line: 65, column: 3, scope: !396)
!2125 = !DILocation(line: 65, column: 20, scope: !396)
!2126 = !DILocation(line: 68, column: 18, scope: !396)
!2127 = !DILocation(line: 69, column: 12, scope: !396)
!2128 = !DILocation(line: 70, column: 8, scope: !2103)
!2129 = !DILocation(line: 70, column: 7, scope: !396)
!2130 = !DILocation(line: 75, column: 24, scope: !2106)
!2131 = !DILocation(line: 75, column: 29, scope: !2106)
!2132 = !DILocation(line: 75, column: 16, scope: !2106)
!2133 = !DILocation(line: 76, column: 12, scope: !2111)
!2134 = !DILocation(line: 76, column: 22, scope: !2111)
!2135 = !DILocation(line: 76, column: 19, scope: !2111)
!2136 = !DILocation(line: 77, column: 18, scope: !2111)
!2137 = !DILocation(line: 77, column: 9, scope: !2111)
!2138 = !DILocation(line: 78, column: 21, scope: !2106)
!2139 = !DILocation(line: 78, column: 7, scope: !2106)
!2140 = !DILocation(line: 79, column: 5, scope: !2106)
!2141 = !DILocation(line: 80, column: 12, scope: !2119)
!2142 = !DILocation(line: 80, column: 12, scope: !2103)
!2143 = !DILocation(line: 81, column: 14, scope: !2119)
!2144 = !DILocation(line: 81, column: 5, scope: !2119)
!2145 = !DILocation(line: 84, column: 1, scope: !396)
!2146 = !DILocation(line: 83, column: 3, scope: !396)
!2147 = distinct !DISubprogram(name: "ch_strerror", scope: !351, file: !351, line: 88, type: !553, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !49)
!2148 = !DILocation(line: 90, column: 24, scope: !2147)
!2149 = !DILocation(line: 90, column: 10, scope: !2147)
!2150 = !DILocation(line: 90, column: 3, scope: !2147)
!2151 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !406, file: !406, line: 51, type: !113, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2152)
!2152 = !{!2153}
!2153 = !DILocalVariable(name: "file", arg: 1, scope: !2151, file: !406, line: 51, type: !46)
!2154 = !DILocation(line: 0, scope: !2151)
!2155 = !DILocation(line: 53, column: 13, scope: !2151)
!2156 = !DILocation(line: 54, column: 1, scope: !2151)
!2157 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !406, file: !406, line: 88, type: !2158, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !203}
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "ignore", arg: 1, scope: !2157, file: !406, line: 88, type: !203)
!2162 = !DILocation(line: 0, scope: !2157)
!2163 = !DILocation(line: 90, column: 16, scope: !2157)
!2164 = !{!2165, !2165, i64 0}
!2165 = !{!"_Bool", !1344, i64 0}
!2166 = !DILocation(line: 91, column: 1, scope: !2157)
!2167 = distinct !DISubprogram(name: "close_stdout", scope: !406, file: !406, line: 117, type: !130, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2168)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "write_error", scope: !2170, file: !406, line: 122, type: !46)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !406, line: 121, column: 5)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !406, line: 119, column: 7)
!2172 = !DILocation(line: 119, column: 21, scope: !2171)
!2173 = !DILocation(line: 119, column: 7, scope: !2171)
!2174 = !DILocation(line: 119, column: 29, scope: !2171)
!2175 = !DILocation(line: 120, column: 7, scope: !2171)
!2176 = !DILocation(line: 120, column: 12, scope: !2171)
!2177 = !{i8 0, i8 2}
!2178 = !DILocation(line: 120, column: 25, scope: !2171)
!2179 = !DILocation(line: 120, column: 28, scope: !2171)
!2180 = !DILocation(line: 120, column: 34, scope: !2171)
!2181 = !DILocation(line: 119, column: 7, scope: !2167)
!2182 = !DILocation(line: 122, column: 33, scope: !2170)
!2183 = !DILocation(line: 0, scope: !2170)
!2184 = !DILocation(line: 123, column: 11, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2170, file: !406, line: 123, column: 11)
!2186 = !DILocation(line: 0, scope: !2185)
!2187 = !DILocation(line: 123, column: 11, scope: !2170)
!2188 = !DILocation(line: 124, column: 36, scope: !2185)
!2189 = !DILocation(line: 124, column: 9, scope: !2185)
!2190 = !DILocation(line: 127, column: 9, scope: !2185)
!2191 = !DILocation(line: 129, column: 14, scope: !2170)
!2192 = !DILocation(line: 129, column: 7, scope: !2170)
!2193 = !DILocation(line: 134, column: 42, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2167, file: !406, line: 134, column: 7)
!2195 = !DILocation(line: 134, column: 28, scope: !2194)
!2196 = !DILocation(line: 134, column: 50, scope: !2194)
!2197 = !DILocation(line: 134, column: 7, scope: !2167)
!2198 = !DILocation(line: 135, column: 12, scope: !2194)
!2199 = !DILocation(line: 135, column: 5, scope: !2194)
!2200 = !DILocation(line: 136, column: 1, scope: !2167)
!2201 = distinct !DISubprogram(name: "hard_locale", scope: !599, file: !599, line: 27, type: !201, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !2202)
!2202 = !{!2203, !2204}
!2203 = !DILocalVariable(name: "category", arg: 1, scope: !2201, file: !599, line: 27, type: !48)
!2204 = !DILocalVariable(name: "locale", scope: !2201, file: !599, line: 29, type: !1785)
!2205 = !DILocation(line: 0, scope: !2201)
!2206 = !DILocation(line: 29, column: 3, scope: !2201)
!2207 = !DILocation(line: 29, column: 8, scope: !2201)
!2208 = !DILocation(line: 31, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2201, file: !599, line: 31, column: 7)
!2210 = !DILocation(line: 31, column: 7, scope: !2201)
!2211 = !DILocation(line: 34, column: 12, scope: !2201)
!2212 = !DILocation(line: 34, column: 38, scope: !2201)
!2213 = !DILocation(line: 34, column: 41, scope: !2201)
!2214 = !DILocation(line: 34, column: 66, scope: !2201)
!2215 = !DILocation(line: 35, column: 1, scope: !2201)
!2216 = distinct !DISubprogram(name: "imaxtostr", scope: !2217, file: !2217, line: 36, type: !2218, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !2220)
!2217 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!44, !608, !44}
!2220 = !{!2221, !2222, !2223}
!2221 = !DILocalVariable(name: "i", arg: 1, scope: !2216, file: !2217, line: 36, type: !608)
!2222 = !DILocalVariable(name: "buf", arg: 2, scope: !2216, file: !2217, line: 36, type: !44)
!2223 = !DILocalVariable(name: "p", scope: !2216, file: !2217, line: 38, type: !44)
!2224 = !DILocation(line: 0, scope: !2216)
!2225 = !DILocation(line: 38, column: 17, scope: !2216)
!2226 = !DILocation(line: 39, column: 6, scope: !2216)
!2227 = !DILocation(line: 41, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 41, column: 7)
!2229 = !DILocation(line: 41, column: 7, scope: !2216)
!2230 = !DILocation(line: 44, column: 24, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2217, line: 42, column: 5)
!2232 = !DILocation(line: 44, column: 16, scope: !2231)
!2233 = !DILocation(line: 44, column: 10, scope: !2231)
!2234 = !DILocation(line: 44, column: 14, scope: !2231)
!2235 = !DILocation(line: 45, column: 17, scope: !2231)
!2236 = !DILocation(line: 45, column: 24, scope: !2231)
!2237 = !DILocation(line: 44, column: 9, scope: !2231)
!2238 = distinct !{!2238, !2239, !2240}
!2239 = !DILocation(line: 43, column: 7, scope: !2231)
!2240 = !DILocation(line: 45, column: 28, scope: !2231)
!2241 = !DILocation(line: 47, column: 8, scope: !2231)
!2242 = !DILocation(line: 47, column: 12, scope: !2231)
!2243 = !DILocation(line: 48, column: 5, scope: !2231)
!2244 = !DILocation(line: 52, column: 24, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2228, file: !2217, line: 50, column: 5)
!2246 = !DILocation(line: 52, column: 16, scope: !2245)
!2247 = !DILocation(line: 52, column: 10, scope: !2245)
!2248 = !DILocation(line: 52, column: 14, scope: !2245)
!2249 = !DILocation(line: 53, column: 17, scope: !2245)
!2250 = !DILocation(line: 53, column: 24, scope: !2245)
!2251 = !DILocation(line: 52, column: 9, scope: !2245)
!2252 = distinct !{!2252, !2253, !2254}
!2253 = !DILocation(line: 51, column: 7, scope: !2245)
!2254 = !DILocation(line: 53, column: 28, scope: !2245)
!2255 = !DILocation(line: 0, scope: !2228)
!2256 = !DILocation(line: 56, column: 3, scope: !2216)
!2257 = distinct !DISubprogram(name: "set_program_name", scope: !457, file: !457, line: 39, type: !113, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "argv0", arg: 1, scope: !2257, file: !457, line: 39, type: !46)
!2260 = !DILocalVariable(name: "slash", scope: !2257, file: !457, line: 46, type: !46)
!2261 = !DILocalVariable(name: "base", scope: !2257, file: !457, line: 47, type: !46)
!2262 = !DILocation(line: 0, scope: !2257)
!2263 = !DILocation(line: 51, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !457, line: 51, column: 7)
!2265 = !DILocation(line: 51, column: 7, scope: !2257)
!2266 = !DILocation(line: 55, column: 14, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !457, line: 52, column: 5)
!2268 = !DILocation(line: 54, column: 7, scope: !2267)
!2269 = !DILocation(line: 56, column: 7, scope: !2267)
!2270 = !DILocation(line: 59, column: 11, scope: !2257)
!2271 = !DILocation(line: 60, column: 17, scope: !2257)
!2272 = !DILocation(line: 60, column: 11, scope: !2257)
!2273 = !DILocation(line: 61, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2257, file: !457, line: 61, column: 7)
!2275 = !DILocation(line: 61, column: 20, scope: !2274)
!2276 = !DILocation(line: 61, column: 25, scope: !2274)
!2277 = !DILocation(line: 61, column: 42, scope: !2274)
!2278 = !DILocation(line: 61, column: 28, scope: !2274)
!2279 = !DILocation(line: 61, column: 61, scope: !2274)
!2280 = !DILocation(line: 61, column: 7, scope: !2257)
!2281 = !DILocation(line: 64, column: 11, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !457, line: 64, column: 11)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !457, line: 62, column: 5)
!2284 = !DILocation(line: 64, column: 36, scope: !2282)
!2285 = !DILocation(line: 64, column: 11, scope: !2283)
!2286 = !DILocation(line: 66, column: 24, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !457, line: 65, column: 9)
!2288 = !DILocation(line: 70, column: 41, scope: !2287)
!2289 = !DILocation(line: 72, column: 9, scope: !2287)
!2290 = !DILocation(line: 84, column: 16, scope: !2257)
!2291 = !DILocation(line: 90, column: 27, scope: !2257)
!2292 = !DILocation(line: 92, column: 1, scope: !2257)
!2293 = distinct !DISubprogram(name: "clone_quoting_options", scope: !498, file: !498, line: 122, type: !2294, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2297)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2296, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2297 = !{!2298, !2299, !2300}
!2298 = !DILocalVariable(name: "o", arg: 1, scope: !2293, file: !498, line: 122, type: !2296)
!2299 = !DILocalVariable(name: "e", scope: !2293, file: !498, line: 124, type: !48)
!2300 = !DILocalVariable(name: "p", scope: !2293, file: !498, line: 125, type: !2296)
!2301 = !DILocation(line: 0, scope: !2293)
!2302 = !DILocation(line: 124, column: 11, scope: !2293)
!2303 = !DILocation(line: 125, column: 40, scope: !2293)
!2304 = !DILocation(line: 125, column: 31, scope: !2293)
!2305 = !DILocation(line: 127, column: 9, scope: !2293)
!2306 = !DILocation(line: 128, column: 3, scope: !2293)
!2307 = distinct !DISubprogram(name: "get_quoting_style", scope: !498, file: !498, line: 133, type: !2308, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!5, !512}
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "o", arg: 1, scope: !2307, file: !498, line: 133, type: !512)
!2312 = !DILocation(line: 0, scope: !2307)
!2313 = !DILocation(line: 135, column: 11, scope: !2307)
!2314 = !DILocation(line: 135, column: 46, scope: !2307)
!2315 = !{!2316, !1344, i64 0}
!2316 = !{!"quoting_options", !1344, i64 0, !1486, i64 4, !1344, i64 8, !1343, i64 40, !1343, i64 48}
!2317 = !DILocation(line: 135, column: 3, scope: !2307)
!2318 = distinct !DISubprogram(name: "set_quoting_style", scope: !498, file: !498, line: 141, type: !2319, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !2296, !5}
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "o", arg: 1, scope: !2318, file: !498, line: 141, type: !2296)
!2323 = !DILocalVariable(name: "s", arg: 2, scope: !2318, file: !498, line: 141, type: !5)
!2324 = !DILocation(line: 0, scope: !2318)
!2325 = !DILocation(line: 143, column: 4, scope: !2318)
!2326 = !DILocation(line: 143, column: 39, scope: !2318)
!2327 = !DILocation(line: 143, column: 45, scope: !2318)
!2328 = !DILocation(line: 144, column: 1, scope: !2318)
!2329 = distinct !DISubprogram(name: "set_char_quoting", scope: !498, file: !498, line: 152, type: !2330, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!48, !2296, !45, !48}
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2339, !2340}
!2333 = !DILocalVariable(name: "o", arg: 1, scope: !2329, file: !498, line: 152, type: !2296)
!2334 = !DILocalVariable(name: "c", arg: 2, scope: !2329, file: !498, line: 152, type: !45)
!2335 = !DILocalVariable(name: "i", arg: 3, scope: !2329, file: !498, line: 152, type: !48)
!2336 = !DILocalVariable(name: "uc", scope: !2329, file: !498, line: 154, type: !204)
!2337 = !DILocalVariable(name: "p", scope: !2329, file: !498, line: 155, type: !2338)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2339 = !DILocalVariable(name: "shift", scope: !2329, file: !498, line: 157, type: !48)
!2340 = !DILocalVariable(name: "r", scope: !2329, file: !498, line: 158, type: !48)
!2341 = !DILocation(line: 0, scope: !2329)
!2342 = !DILocation(line: 156, column: 6, scope: !2329)
!2343 = !DILocation(line: 156, column: 62, scope: !2329)
!2344 = !DILocation(line: 156, column: 57, scope: !2329)
!2345 = !DILocation(line: 157, column: 15, scope: !2329)
!2346 = !DILocation(line: 158, column: 12, scope: !2329)
!2347 = !DILocation(line: 158, column: 15, scope: !2329)
!2348 = !DILocation(line: 158, column: 25, scope: !2329)
!2349 = !DILocation(line: 159, column: 13, scope: !2329)
!2350 = !DILocation(line: 159, column: 18, scope: !2329)
!2351 = !DILocation(line: 159, column: 23, scope: !2329)
!2352 = !DILocation(line: 159, column: 6, scope: !2329)
!2353 = !DILocation(line: 160, column: 3, scope: !2329)
!2354 = distinct !DISubprogram(name: "set_quoting_flags", scope: !498, file: !498, line: 168, type: !2355, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!48, !2296, !48}
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "o", arg: 1, scope: !2354, file: !498, line: 168, type: !2296)
!2359 = !DILocalVariable(name: "i", arg: 2, scope: !2354, file: !498, line: 168, type: !48)
!2360 = !DILocalVariable(name: "r", scope: !2354, file: !498, line: 170, type: !48)
!2361 = !DILocation(line: 0, scope: !2354)
!2362 = !DILocation(line: 171, column: 8, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2354, file: !498, line: 171, column: 7)
!2364 = !DILocation(line: 171, column: 7, scope: !2354)
!2365 = !DILocation(line: 173, column: 10, scope: !2354)
!2366 = !{!2316, !1486, i64 4}
!2367 = !DILocation(line: 174, column: 12, scope: !2354)
!2368 = !DILocation(line: 175, column: 3, scope: !2354)
!2369 = distinct !DISubprogram(name: "set_custom_quoting", scope: !498, file: !498, line: 179, type: !2370, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2296, !46, !46}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "o", arg: 1, scope: !2369, file: !498, line: 179, type: !2296)
!2374 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2369, file: !498, line: 180, type: !46)
!2375 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2369, file: !498, line: 180, type: !46)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 182, column: 8, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2369, file: !498, line: 182, column: 7)
!2379 = !DILocation(line: 182, column: 7, scope: !2369)
!2380 = !DILocation(line: 184, column: 6, scope: !2369)
!2381 = !DILocation(line: 184, column: 12, scope: !2369)
!2382 = !DILocation(line: 185, column: 8, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2369, file: !498, line: 185, column: 7)
!2384 = !DILocation(line: 185, column: 23, scope: !2383)
!2385 = !DILocation(line: 185, column: 19, scope: !2383)
!2386 = !DILocation(line: 186, column: 5, scope: !2383)
!2387 = !DILocation(line: 187, column: 6, scope: !2369)
!2388 = !DILocation(line: 187, column: 17, scope: !2369)
!2389 = !{!2316, !1343, i64 40}
!2390 = !DILocation(line: 188, column: 6, scope: !2369)
!2391 = !DILocation(line: 188, column: 18, scope: !2369)
!2392 = !{!2316, !1343, i64 48}
!2393 = !DILocation(line: 189, column: 1, scope: !2369)
!2394 = distinct !DISubprogram(name: "quotearg_buffer", scope: !498, file: !498, line: 784, type: !2395, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!103, !44, !103, !46, !103, !512}
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2398 = !DILocalVariable(name: "buffer", arg: 1, scope: !2394, file: !498, line: 784, type: !44)
!2399 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2394, file: !498, line: 784, type: !103)
!2400 = !DILocalVariable(name: "arg", arg: 3, scope: !2394, file: !498, line: 785, type: !46)
!2401 = !DILocalVariable(name: "argsize", arg: 4, scope: !2394, file: !498, line: 785, type: !103)
!2402 = !DILocalVariable(name: "o", arg: 5, scope: !2394, file: !498, line: 786, type: !512)
!2403 = !DILocalVariable(name: "p", scope: !2394, file: !498, line: 788, type: !512)
!2404 = !DILocalVariable(name: "e", scope: !2394, file: !498, line: 789, type: !48)
!2405 = !DILocalVariable(name: "r", scope: !2394, file: !498, line: 790, type: !103)
!2406 = !DILocation(line: 0, scope: !2394)
!2407 = !DILocation(line: 788, column: 37, scope: !2394)
!2408 = !DILocation(line: 789, column: 11, scope: !2394)
!2409 = !DILocation(line: 791, column: 43, scope: !2394)
!2410 = !DILocation(line: 791, column: 53, scope: !2394)
!2411 = !DILocation(line: 791, column: 60, scope: !2394)
!2412 = !DILocation(line: 792, column: 43, scope: !2394)
!2413 = !DILocation(line: 792, column: 58, scope: !2394)
!2414 = !DILocation(line: 790, column: 14, scope: !2394)
!2415 = !DILocation(line: 793, column: 9, scope: !2394)
!2416 = !DILocation(line: 794, column: 3, scope: !2394)
!2417 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !498, file: !498, line: 256, type: !2418, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2422)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!103, !44, !103, !46, !103, !5, !48, !2420, !46, !46}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2447, !2448, !2449, !2450, !2451, !2454, !2455, !2461, !2464, !2465, !2472, !2475, !2476, !2477, !2478, !2479, !2480}
!2423 = !DILocalVariable(name: "buffer", arg: 1, scope: !2417, file: !498, line: 256, type: !44)
!2424 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2417, file: !498, line: 256, type: !103)
!2425 = !DILocalVariable(name: "arg", arg: 3, scope: !2417, file: !498, line: 257, type: !46)
!2426 = !DILocalVariable(name: "argsize", arg: 4, scope: !2417, file: !498, line: 257, type: !103)
!2427 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2417, file: !498, line: 258, type: !5)
!2428 = !DILocalVariable(name: "flags", arg: 6, scope: !2417, file: !498, line: 258, type: !48)
!2429 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2417, file: !498, line: 259, type: !2420)
!2430 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2417, file: !498, line: 260, type: !46)
!2431 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2417, file: !498, line: 261, type: !46)
!2432 = !DILocalVariable(name: "i", scope: !2417, file: !498, line: 263, type: !103)
!2433 = !DILocalVariable(name: "len", scope: !2417, file: !498, line: 264, type: !103)
!2434 = !DILocalVariable(name: "orig_buffersize", scope: !2417, file: !498, line: 265, type: !103)
!2435 = !DILocalVariable(name: "quote_string", scope: !2417, file: !498, line: 266, type: !46)
!2436 = !DILocalVariable(name: "quote_string_len", scope: !2417, file: !498, line: 267, type: !103)
!2437 = !DILocalVariable(name: "backslash_escapes", scope: !2417, file: !498, line: 268, type: !203)
!2438 = !DILocalVariable(name: "unibyte_locale", scope: !2417, file: !498, line: 269, type: !203)
!2439 = !DILocalVariable(name: "elide_outer_quotes", scope: !2417, file: !498, line: 270, type: !203)
!2440 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2417, file: !498, line: 271, type: !203)
!2441 = !DILocalVariable(name: "encountered_single_quote", scope: !2417, file: !498, line: 272, type: !203)
!2442 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2417, file: !498, line: 273, type: !203)
!2443 = !DILocalVariable(name: "c", scope: !2444, file: !498, line: 402, type: !204)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !498, line: 401, column: 5)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !498, line: 400, column: 3)
!2446 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 400, column: 3)
!2447 = !DILocalVariable(name: "esc", scope: !2444, file: !498, line: 403, type: !204)
!2448 = !DILocalVariable(name: "is_right_quote", scope: !2444, file: !498, line: 404, type: !203)
!2449 = !DILocalVariable(name: "escaping", scope: !2444, file: !498, line: 405, type: !203)
!2450 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2444, file: !498, line: 406, type: !203)
!2451 = !DILocalVariable(name: "m", scope: !2452, file: !498, line: 610, type: !103)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 608, column: 11)
!2453 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 426, column: 9)
!2454 = !DILocalVariable(name: "printable", scope: !2452, file: !498, line: 612, type: !203)
!2455 = !DILocalVariable(name: "mbstate", scope: !2456, file: !498, line: 621, type: !2458)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !498, line: 620, column: 15)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !498, line: 614, column: 17)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2459, line: 6, baseType: !2460)
!2459 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !533, line: 21, baseType: !532)
!2461 = !DILocalVariable(name: "w", scope: !2462, file: !498, line: 631, type: !2463)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !498, line: 630, column: 19)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !48)
!2464 = !DILocalVariable(name: "bytes", scope: !2462, file: !498, line: 632, type: !103)
!2465 = !DILocalVariable(name: "j", scope: !2466, file: !498, line: 657, type: !103)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !498, line: 656, column: 27)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !498, line: 654, column: 29)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !498, line: 649, column: 23)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !498, line: 641, column: 30)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !498, line: 636, column: 30)
!2471 = distinct !DILexicalBlock(scope: !2462, file: !498, line: 634, column: 25)
!2472 = !DILocalVariable(name: "ilim", scope: !2473, file: !498, line: 684, type: !103)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !498, line: 681, column: 15)
!2474 = distinct !DILexicalBlock(scope: !2452, file: !498, line: 680, column: 17)
!2475 = !DILabel(scope: !2417, name: "process_input", file: !498, line: 314)
!2476 = !DILabel(scope: !2453, name: "c_and_shell_escape", file: !498, line: 512)
!2477 = !DILabel(scope: !2453, name: "c_escape", file: !498, line: 517)
!2478 = !DILabel(scope: !2444, name: "store_escape", file: !498, line: 719)
!2479 = !DILabel(scope: !2444, name: "store_c", file: !498, line: 722)
!2480 = !DILabel(scope: !2417, name: "force_outer_quoting_style", file: !498, line: 763)
!2481 = !DILocation(line: 0, scope: !2417)
!2482 = !DILocation(line: 269, column: 25, scope: !2417)
!2483 = !DILocation(line: 269, column: 36, scope: !2417)
!2484 = !DILocation(line: 270, column: 8, scope: !2417)
!2485 = !DILocation(line: 0, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 526, column: 15)
!2487 = !DILocation(line: 0, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !498, line: 462, column: 19)
!2489 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 455, column: 13)
!2490 = !DILocation(line: 0, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !498, line: 449, column: 20)
!2492 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 428, column: 15)
!2493 = !DILocation(line: 0, scope: !2456)
!2494 = !DILocation(line: 0, scope: !2462)
!2495 = !DILocation(line: 0, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 712, column: 11)
!2497 = !DILocation(line: 273, column: 3, scope: !2417)
!2498 = !DILocation(line: 265, column: 10, scope: !2417)
!2499 = !DILocation(line: 266, column: 15, scope: !2417)
!2500 = !DILocation(line: 267, column: 10, scope: !2417)
!2501 = !DILocation(line: 268, column: 8, scope: !2417)
!2502 = !DILocation(line: 271, column: 8, scope: !2417)
!2503 = !DILocation(line: 272, column: 8, scope: !2417)
!2504 = !DILocation(line: 273, column: 8, scope: !2417)
!2505 = !DILocation(line: 314, column: 2, scope: !2417)
!2506 = !DILocation(line: 316, column: 3, scope: !2417)
!2507 = !DILocation(line: 323, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 317, column: 5)
!2509 = !DILocation(line: 323, column: 12, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !498, line: 323, column: 11)
!2511 = !DILocation(line: 324, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !498, line: 324, column: 9)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !498, line: 324, column: 9)
!2514 = !DILocation(line: 324, column: 9, scope: !2513)
!2515 = !DILocation(line: 362, column: 26, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !498, line: 340, column: 11)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !498, line: 339, column: 13)
!2518 = distinct !DILexicalBlock(scope: !2508, file: !498, line: 338, column: 7)
!2519 = !DILocation(line: 363, column: 27, scope: !2516)
!2520 = !DILocation(line: 364, column: 11, scope: !2516)
!2521 = !DILocation(line: 365, column: 14, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !498, line: 365, column: 13)
!2523 = !DILocation(line: 365, column: 13, scope: !2518)
!2524 = !DILocation(line: 366, column: 43, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !498, line: 366, column: 11)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !498, line: 366, column: 11)
!2527 = !DILocation(line: 366, column: 11, scope: !2526)
!2528 = !DILocation(line: 367, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !498, line: 367, column: 13)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !498, line: 367, column: 13)
!2531 = !DILocation(line: 367, column: 13, scope: !2530)
!2532 = !DILocation(line: 366, column: 70, scope: !2525)
!2533 = distinct !{!2533, !2527, !2534}
!2534 = !DILocation(line: 367, column: 13, scope: !2526)
!2535 = !DILocation(line: 264, column: 10, scope: !2417)
!2536 = !DILocation(line: 370, column: 28, scope: !2518)
!2537 = !DILocation(line: 372, column: 7, scope: !2508)
!2538 = !DILocation(line: 376, column: 7, scope: !2508)
!2539 = !DILocation(line: 379, column: 7, scope: !2508)
!2540 = !DILocation(line: 381, column: 12, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2508, file: !498, line: 381, column: 11)
!2542 = !DILocation(line: 381, column: 11, scope: !2508)
!2543 = !DILocation(line: 386, column: 12, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2508, file: !498, line: 386, column: 11)
!2545 = !DILocation(line: 386, column: 11, scope: !2508)
!2546 = !DILocation(line: 387, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !498, line: 387, column: 9)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !498, line: 387, column: 9)
!2549 = !DILocation(line: 387, column: 9, scope: !2548)
!2550 = !DILocation(line: 394, column: 7, scope: !2508)
!2551 = !DILocation(line: 397, column: 7, scope: !2508)
!2552 = !DILocation(line: 0, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 408, column: 11)
!2554 = !DILocation(line: 0, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !498, line: 419, column: 15)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !498, line: 418, column: 9)
!2557 = !DILocation(line: 0, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 556, column: 15)
!2559 = !DILocation(line: 0, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 548, column: 15)
!2561 = !DILocation(line: 0, scope: !2467)
!2562 = !DILocation(line: 0, scope: !2474)
!2563 = !DILocation(line: 0, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 509, column: 15)
!2565 = !DILocation(line: 400, column: 8, scope: !2446)
!2566 = !DILocation(line: 0, scope: !2446)
!2567 = !DILocation(line: 400, column: 27, scope: !2445)
!2568 = !DILocation(line: 400, column: 19, scope: !2445)
!2569 = !DILocation(line: 400, column: 41, scope: !2445)
!2570 = !DILocation(line: 400, column: 48, scope: !2445)
!2571 = !DILocation(line: 400, column: 3, scope: !2446)
!2572 = !DILocation(line: 400, column: 60, scope: !2445)
!2573 = !DILocation(line: 0, scope: !2444)
!2574 = !DILocation(line: 409, column: 11, scope: !2553)
!2575 = !DILocation(line: 411, column: 17, scope: !2553)
!2576 = !DILocation(line: 412, column: 39, scope: !2553)
!2577 = !DILocation(line: 416, column: 32, scope: !2553)
!2578 = !DILocation(line: 412, column: 19, scope: !2553)
!2579 = !DILocation(line: 412, column: 15, scope: !2553)
!2580 = !DILocation(line: 417, column: 11, scope: !2553)
!2581 = !DILocation(line: 417, column: 26, scope: !2553)
!2582 = !DILocation(line: 417, column: 14, scope: !2553)
!2583 = !DILocation(line: 417, column: 63, scope: !2553)
!2584 = !DILocation(line: 408, column: 11, scope: !2444)
!2585 = !DILocation(line: 424, column: 11, scope: !2444)
!2586 = !DILocation(line: 425, column: 7, scope: !2444)
!2587 = !DILocation(line: 428, column: 15, scope: !2453)
!2588 = !DILocation(line: 430, column: 15, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !498, line: 430, column: 15)
!2590 = distinct !DILexicalBlock(scope: !2492, file: !498, line: 429, column: 13)
!2591 = !DILocation(line: 430, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !498, line: 430, column: 15)
!2593 = !DILocation(line: 430, column: 15, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !498, line: 430, column: 15)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !498, line: 430, column: 15)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !498, line: 430, column: 15)
!2597 = !DILocation(line: 430, column: 15, scope: !2595)
!2598 = !DILocation(line: 430, column: 15, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !498, line: 430, column: 15)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !498, line: 430, column: 15)
!2601 = !DILocation(line: 430, column: 15, scope: !2600)
!2602 = !DILocation(line: 430, column: 15, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !498, line: 430, column: 15)
!2604 = distinct !DILexicalBlock(scope: !2596, file: !498, line: 430, column: 15)
!2605 = !DILocation(line: 430, column: 15, scope: !2604)
!2606 = !DILocation(line: 430, column: 15, scope: !2596)
!2607 = !DILocation(line: 430, column: 15, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !498, line: 430, column: 15)
!2609 = distinct !DILexicalBlock(scope: !2589, file: !498, line: 430, column: 15)
!2610 = !DILocation(line: 430, column: 15, scope: !2609)
!2611 = !DILocation(line: 438, column: 19, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2590, file: !498, line: 437, column: 19)
!2613 = !DILocation(line: 438, column: 24, scope: !2612)
!2614 = !DILocation(line: 438, column: 28, scope: !2612)
!2615 = !DILocation(line: 438, column: 38, scope: !2612)
!2616 = !DILocation(line: 438, column: 48, scope: !2612)
!2617 = !DILocation(line: 438, column: 59, scope: !2612)
!2618 = !DILocation(line: 440, column: 19, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !498, line: 440, column: 19)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !498, line: 440, column: 19)
!2621 = distinct !DILexicalBlock(scope: !2612, file: !498, line: 439, column: 17)
!2622 = !DILocation(line: 440, column: 19, scope: !2620)
!2623 = !DILocation(line: 441, column: 19, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !498, line: 441, column: 19)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !498, line: 441, column: 19)
!2626 = !DILocation(line: 441, column: 19, scope: !2625)
!2627 = !DILocation(line: 442, column: 17, scope: !2621)
!2628 = !DILocation(line: 449, column: 20, scope: !2492)
!2629 = !DILocation(line: 454, column: 11, scope: !2453)
!2630 = !DILocation(line: 457, column: 19, scope: !2489)
!2631 = !DILocation(line: 463, column: 19, scope: !2488)
!2632 = !DILocation(line: 463, column: 24, scope: !2488)
!2633 = !DILocation(line: 463, column: 28, scope: !2488)
!2634 = !DILocation(line: 463, column: 38, scope: !2488)
!2635 = !DILocation(line: 463, column: 47, scope: !2488)
!2636 = !DILocation(line: 463, column: 41, scope: !2488)
!2637 = !DILocation(line: 463, column: 52, scope: !2488)
!2638 = !DILocation(line: 462, column: 19, scope: !2489)
!2639 = !DILocation(line: 464, column: 25, scope: !2488)
!2640 = !DILocation(line: 464, column: 17, scope: !2488)
!2641 = !DILocation(line: 471, column: 25, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2488, file: !498, line: 465, column: 19)
!2643 = !DILocation(line: 475, column: 21, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !498, line: 475, column: 21)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !498, line: 475, column: 21)
!2646 = !DILocation(line: 475, column: 21, scope: !2645)
!2647 = !DILocation(line: 476, column: 21, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !498, line: 476, column: 21)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !498, line: 476, column: 21)
!2650 = !DILocation(line: 476, column: 21, scope: !2649)
!2651 = !DILocation(line: 477, column: 21, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !498, line: 477, column: 21)
!2653 = distinct !DILexicalBlock(scope: !2642, file: !498, line: 477, column: 21)
!2654 = !DILocation(line: 477, column: 21, scope: !2653)
!2655 = !DILocation(line: 478, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !498, line: 478, column: 21)
!2657 = distinct !DILexicalBlock(scope: !2642, file: !498, line: 478, column: 21)
!2658 = !DILocation(line: 478, column: 21, scope: !2657)
!2659 = !DILocation(line: 479, column: 21, scope: !2642)
!2660 = !DILocation(line: 492, column: 31, scope: !2453)
!2661 = !DILocation(line: 493, column: 31, scope: !2453)
!2662 = !DILocation(line: 495, column: 31, scope: !2453)
!2663 = !DILocation(line: 496, column: 31, scope: !2453)
!2664 = !DILocation(line: 497, column: 31, scope: !2453)
!2665 = !DILocation(line: 500, column: 15, scope: !2453)
!2666 = !DILocation(line: 502, column: 19, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !498, line: 501, column: 13)
!2668 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 500, column: 15)
!2669 = !DILocation(line: 509, column: 33, scope: !2564)
!2670 = !DILocation(line: 0, scope: !2453)
!2671 = !DILocation(line: 512, column: 9, scope: !2453)
!2672 = !DILocation(line: 514, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 513, column: 15)
!2674 = !DILocation(line: 517, column: 9, scope: !2453)
!2675 = !DILocation(line: 518, column: 15, scope: !2453)
!2676 = !DILocation(line: 526, column: 15, scope: !2453)
!2677 = !DILocation(line: 526, column: 40, scope: !2486)
!2678 = !DILocation(line: 526, column: 47, scope: !2486)
!2679 = !DILocation(line: 526, column: 18, scope: !2486)
!2680 = !DILocation(line: 530, column: 17, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2453, file: !498, line: 530, column: 15)
!2682 = !DILocation(line: 530, column: 15, scope: !2453)
!2683 = !DILocation(line: 535, column: 11, scope: !2453)
!2684 = !DILocation(line: 549, column: 15, scope: !2560)
!2685 = !DILocation(line: 556, column: 15, scope: !2453)
!2686 = !DILocation(line: 558, column: 19, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2558, file: !498, line: 557, column: 13)
!2688 = !DILocation(line: 561, column: 19, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2687, file: !498, line: 561, column: 19)
!2690 = !DILocation(line: 561, column: 35, scope: !2689)
!2691 = !DILocation(line: 561, column: 30, scope: !2689)
!2692 = !DILocation(line: 570, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !498, line: 570, column: 15)
!2694 = distinct !DILexicalBlock(scope: !2687, file: !498, line: 570, column: 15)
!2695 = !DILocation(line: 570, column: 15, scope: !2694)
!2696 = !DILocation(line: 571, column: 15, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !498, line: 571, column: 15)
!2698 = distinct !DILexicalBlock(scope: !2687, file: !498, line: 571, column: 15)
!2699 = !DILocation(line: 571, column: 15, scope: !2698)
!2700 = !DILocation(line: 572, column: 15, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !498, line: 572, column: 15)
!2702 = distinct !DILexicalBlock(scope: !2687, file: !498, line: 572, column: 15)
!2703 = !DILocation(line: 572, column: 15, scope: !2702)
!2704 = !DILocation(line: 574, column: 13, scope: !2687)
!2705 = !DILocation(line: 614, column: 17, scope: !2452)
!2706 = !DILocation(line: 0, scope: !2452)
!2707 = !DILocation(line: 617, column: 29, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2457, file: !498, line: 615, column: 15)
!2709 = !DILocation(line: 617, column: 27, scope: !2708)
!2710 = !DILocation(line: 618, column: 15, scope: !2708)
!2711 = !DILocation(line: 621, column: 17, scope: !2456)
!2712 = !DILocation(line: 621, column: 27, scope: !2456)
!2713 = !DILocalVariable(name: "__dest", arg: 1, scope: !2714, file: !1666, line: 59, type: !101)
!2714 = distinct !DISubprogram(name: "memset", scope: !1666, file: !1666, line: 59, type: !2715, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!101, !101, !48, !103}
!2717 = !{!2713, !2718, !2719}
!2718 = !DILocalVariable(name: "__ch", arg: 2, scope: !2714, file: !1666, line: 59, type: !48)
!2719 = !DILocalVariable(name: "__len", arg: 3, scope: !2714, file: !1666, line: 59, type: !103)
!2720 = !DILocation(line: 0, scope: !2714, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 622, column: 17, scope: !2456)
!2722 = !DILocation(line: 71, column: 10, scope: !2714, inlinedAt: !2721)
!2723 = !DILocation(line: 626, column: 29, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2456, file: !498, line: 626, column: 21)
!2725 = !DILocation(line: 626, column: 21, scope: !2456)
!2726 = !DILocation(line: 627, column: 29, scope: !2724)
!2727 = !DILocation(line: 627, column: 19, scope: !2724)
!2728 = !DILocation(line: 629, column: 17, scope: !2456)
!2729 = !DILocation(line: 624, column: 19, scope: !2456)
!2730 = !DILocation(line: 625, column: 27, scope: !2456)
!2731 = !DILocation(line: 631, column: 21, scope: !2462)
!2732 = !DILocation(line: 632, column: 56, scope: !2462)
!2733 = !DILocation(line: 632, column: 50, scope: !2462)
!2734 = !DILocation(line: 633, column: 53, scope: !2462)
!2735 = !DILocation(line: 632, column: 36, scope: !2462)
!2736 = !DILocation(line: 634, column: 25, scope: !2462)
!2737 = !DILocation(line: 644, column: 38, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2469, file: !498, line: 642, column: 23)
!2739 = !DILocation(line: 644, column: 48, scope: !2738)
!2740 = !DILocation(line: 644, column: 25, scope: !2738)
!2741 = !DILocation(line: 644, column: 51, scope: !2738)
!2742 = !DILocation(line: 645, column: 28, scope: !2738)
!2743 = !DILocation(line: 644, column: 34, scope: !2738)
!2744 = distinct !{!2744, !2740, !2742}
!2745 = !DILocation(line: 658, column: 43, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !498, line: 658, column: 29)
!2747 = distinct !DILexicalBlock(scope: !2466, file: !498, line: 658, column: 29)
!2748 = !DILocation(line: 655, column: 29, scope: !2467)
!2749 = !DILocation(line: 0, scope: !2466)
!2750 = !DILocation(line: 659, column: 49, scope: !2746)
!2751 = !DILocation(line: 659, column: 39, scope: !2746)
!2752 = !DILocation(line: 659, column: 31, scope: !2746)
!2753 = !DILocation(line: 658, column: 53, scope: !2746)
!2754 = !DILocation(line: 658, column: 29, scope: !2747)
!2755 = distinct !{!2755, !2754, !2756}
!2756 = !DILocation(line: 667, column: 33, scope: !2747)
!2757 = !DILocation(line: 674, column: 19, scope: !2456)
!2758 = !DILocation(line: 670, column: 41, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2468, file: !498, line: 670, column: 29)
!2760 = !DILocation(line: 670, column: 31, scope: !2759)
!2761 = !DILocation(line: 670, column: 29, scope: !2468)
!2762 = !DILocation(line: 672, column: 27, scope: !2468)
!2763 = !DILocation(line: 675, column: 26, scope: !2456)
!2764 = !DILocation(line: 675, column: 24, scope: !2456)
!2765 = !DILocation(line: 674, column: 19, scope: !2462)
!2766 = distinct !{!2766, !2728, !2767}
!2767 = !DILocation(line: 675, column: 44, scope: !2456)
!2768 = !DILocation(line: 676, column: 15, scope: !2457)
!2769 = !DILocation(line: 0, scope: !2457)
!2770 = !DILocation(line: 678, column: 40, scope: !2452)
!2771 = !DILocation(line: 680, column: 19, scope: !2474)
!2772 = !DILocation(line: 680, column: 45, scope: !2474)
!2773 = !DILocation(line: 680, column: 23, scope: !2474)
!2774 = !DILocation(line: 684, column: 33, scope: !2473)
!2775 = !DILocation(line: 0, scope: !2473)
!2776 = !DILocation(line: 686, column: 17, scope: !2473)
!2777 = !DILocation(line: 405, column: 12, scope: !2444)
!2778 = !DILocation(line: 688, column: 43, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !498, line: 688, column: 25)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !498, line: 687, column: 19)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !498, line: 686, column: 17)
!2782 = distinct !DILexicalBlock(scope: !2473, file: !498, line: 686, column: 17)
!2783 = !DILocation(line: 690, column: 25, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !498, line: 690, column: 25)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !498, line: 689, column: 23)
!2786 = !DILocation(line: 690, column: 25, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !498, line: 690, column: 25)
!2788 = !DILocation(line: 690, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !498, line: 690, column: 25)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !498, line: 690, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !498, line: 690, column: 25)
!2792 = !DILocation(line: 690, column: 25, scope: !2790)
!2793 = !DILocation(line: 690, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !498, line: 690, column: 25)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !498, line: 690, column: 25)
!2796 = !DILocation(line: 690, column: 25, scope: !2795)
!2797 = !DILocation(line: 690, column: 25, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !498, line: 690, column: 25)
!2799 = distinct !DILexicalBlock(scope: !2791, file: !498, line: 690, column: 25)
!2800 = !DILocation(line: 690, column: 25, scope: !2799)
!2801 = !DILocation(line: 690, column: 25, scope: !2791)
!2802 = !DILocation(line: 690, column: 25, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !498, line: 690, column: 25)
!2804 = distinct !DILexicalBlock(scope: !2784, file: !498, line: 690, column: 25)
!2805 = !DILocation(line: 690, column: 25, scope: !2804)
!2806 = !DILocation(line: 691, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !498, line: 691, column: 25)
!2808 = distinct !DILexicalBlock(scope: !2785, file: !498, line: 691, column: 25)
!2809 = !DILocation(line: 691, column: 25, scope: !2808)
!2810 = !DILocation(line: 692, column: 25, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !498, line: 692, column: 25)
!2812 = distinct !DILexicalBlock(scope: !2785, file: !498, line: 692, column: 25)
!2813 = !DILocation(line: 692, column: 25, scope: !2812)
!2814 = !DILocation(line: 693, column: 38, scope: !2785)
!2815 = !DILocation(line: 693, column: 33, scope: !2785)
!2816 = !DILocation(line: 694, column: 23, scope: !2785)
!2817 = !DILocation(line: 695, column: 30, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2779, file: !498, line: 695, column: 30)
!2819 = !DILocation(line: 695, column: 30, scope: !2779)
!2820 = !DILocation(line: 697, column: 25, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !498, line: 697, column: 25)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !498, line: 697, column: 25)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !498, line: 696, column: 23)
!2824 = !DILocation(line: 697, column: 25, scope: !2822)
!2825 = !DILocation(line: 699, column: 23, scope: !2823)
!2826 = !DILocation(line: 700, column: 35, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2780, file: !498, line: 700, column: 25)
!2828 = !DILocation(line: 700, column: 30, scope: !2827)
!2829 = !DILocation(line: 700, column: 25, scope: !2780)
!2830 = !DILocation(line: 702, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !498, line: 702, column: 21)
!2832 = distinct !DILexicalBlock(scope: !2780, file: !498, line: 702, column: 21)
!2833 = !DILocation(line: 702, column: 21, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !498, line: 702, column: 21)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !498, line: 702, column: 21)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !498, line: 702, column: 21)
!2837 = !DILocation(line: 702, column: 21, scope: !2835)
!2838 = !DILocation(line: 702, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !498, line: 702, column: 21)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !498, line: 702, column: 21)
!2841 = !DILocation(line: 702, column: 21, scope: !2840)
!2842 = !DILocation(line: 702, column: 21, scope: !2836)
!2843 = !DILocation(line: 0, scope: !2780)
!2844 = !DILocation(line: 703, column: 21, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !498, line: 703, column: 21)
!2846 = distinct !DILexicalBlock(scope: !2780, file: !498, line: 703, column: 21)
!2847 = !DILocation(line: 703, column: 21, scope: !2846)
!2848 = !DILocation(line: 704, column: 25, scope: !2780)
!2849 = !DILocation(line: 686, column: 17, scope: !2781)
!2850 = distinct !{!2850, !2851, !2852}
!2851 = !DILocation(line: 686, column: 17, scope: !2782)
!2852 = !DILocation(line: 705, column: 19, scope: !2782)
!2853 = !DILocation(line: 416, column: 30, scope: !2553)
!2854 = !DILocation(line: 712, column: 34, scope: !2496)
!2855 = !DILocation(line: 715, column: 35, scope: !2496)
!2856 = !DILocation(line: 715, column: 17, scope: !2496)
!2857 = !DILocation(line: 715, column: 47, scope: !2496)
!2858 = !DILocation(line: 715, column: 65, scope: !2496)
!2859 = !DILocation(line: 716, column: 15, scope: !2496)
!2860 = !DILocation(line: 716, column: 11, scope: !2496)
!2861 = !DILocation(line: 712, column: 11, scope: !2444)
!2862 = !DILocation(line: 400, column: 10, scope: !2446)
!2863 = !DILocation(line: 719, column: 5, scope: !2444)
!2864 = !DILocation(line: 720, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 720, column: 7)
!2866 = !DILocation(line: 720, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !498, line: 720, column: 7)
!2868 = !DILocation(line: 720, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !498, line: 720, column: 7)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !498, line: 720, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !498, line: 720, column: 7)
!2872 = !DILocation(line: 720, column: 7, scope: !2870)
!2873 = !DILocation(line: 720, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !498, line: 720, column: 7)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !498, line: 720, column: 7)
!2876 = !DILocation(line: 720, column: 7, scope: !2875)
!2877 = !DILocation(line: 720, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !498, line: 720, column: 7)
!2879 = distinct !DILexicalBlock(scope: !2871, file: !498, line: 720, column: 7)
!2880 = !DILocation(line: 720, column: 7, scope: !2879)
!2881 = !DILocation(line: 720, column: 7, scope: !2871)
!2882 = !DILocation(line: 720, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !498, line: 720, column: 7)
!2884 = distinct !DILexicalBlock(scope: !2865, file: !498, line: 720, column: 7)
!2885 = !DILocation(line: 720, column: 7, scope: !2884)
!2886 = !DILocation(line: 722, column: 5, scope: !2444)
!2887 = !DILocation(line: 723, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !498, line: 723, column: 7)
!2889 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 723, column: 7)
!2890 = !DILocation(line: 424, column: 9, scope: !2444)
!2891 = !DILocation(line: 723, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !498, line: 723, column: 7)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !498, line: 723, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !498, line: 723, column: 7)
!2895 = !DILocation(line: 723, column: 7, scope: !2893)
!2896 = !DILocation(line: 723, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !498, line: 723, column: 7)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !498, line: 723, column: 7)
!2899 = !DILocation(line: 723, column: 7, scope: !2898)
!2900 = !DILocation(line: 723, column: 7, scope: !2894)
!2901 = !DILocation(line: 724, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !498, line: 724, column: 7)
!2903 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 724, column: 7)
!2904 = !DILocation(line: 724, column: 7, scope: !2903)
!2905 = !DILocation(line: 726, column: 13, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2444, file: !498, line: 726, column: 11)
!2907 = !DILocation(line: 726, column: 11, scope: !2444)
!2908 = !DILocation(line: 728, column: 5, scope: !2445)
!2909 = !DILocation(line: 400, column: 75, scope: !2445)
!2910 = !DILocation(line: 400, column: 3, scope: !2445)
!2911 = distinct !{!2911, !2571, !2912}
!2912 = !DILocation(line: 728, column: 5, scope: !2446)
!2913 = !DILocation(line: 730, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 730, column: 7)
!2915 = !DILocation(line: 730, column: 16, scope: !2914)
!2916 = !DILocation(line: 738, column: 51, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 738, column: 7)
!2918 = !DILocation(line: 739, column: 10, scope: !2917)
!2919 = !DILocation(line: 741, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !498, line: 741, column: 11)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !498, line: 740, column: 5)
!2922 = !DILocation(line: 741, column: 11, scope: !2921)
!2923 = !DILocation(line: 742, column: 16, scope: !2920)
!2924 = !DILocation(line: 742, column: 9, scope: !2920)
!2925 = !DILocation(line: 746, column: 18, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2920, file: !498, line: 746, column: 16)
!2927 = !DILocation(line: 746, column: 32, scope: !2926)
!2928 = !DILocation(line: 746, column: 29, scope: !2926)
!2929 = !DILocation(line: 755, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 755, column: 7)
!2931 = !DILocation(line: 755, column: 20, scope: !2930)
!2932 = !DILocation(line: 756, column: 12, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !498, line: 756, column: 5)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !498, line: 756, column: 5)
!2935 = !DILocation(line: 756, column: 5, scope: !2934)
!2936 = !DILocation(line: 757, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !498, line: 757, column: 7)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !498, line: 757, column: 7)
!2939 = !DILocation(line: 757, column: 7, scope: !2938)
!2940 = !DILocation(line: 756, column: 39, scope: !2933)
!2941 = distinct !{!2941, !2935, !2942}
!2942 = !DILocation(line: 757, column: 7, scope: !2934)
!2943 = !DILocation(line: 759, column: 11, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 759, column: 7)
!2945 = !DILocation(line: 759, column: 7, scope: !2417)
!2946 = !DILocation(line: 760, column: 5, scope: !2944)
!2947 = !DILocation(line: 760, column: 17, scope: !2944)
!2948 = !DILocation(line: 763, column: 2, scope: !2417)
!2949 = !DILocation(line: 766, column: 51, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2417, file: !498, line: 766, column: 7)
!2951 = !DILocation(line: 766, column: 21, scope: !2950)
!2952 = !DILocation(line: 770, column: 42, scope: !2417)
!2953 = !DILocation(line: 768, column: 10, scope: !2417)
!2954 = !DILocation(line: 768, column: 3, scope: !2417)
!2955 = !DILocation(line: 772, column: 1, scope: !2417)
!2956 = distinct !DISubprogram(name: "gettext_quote", scope: !498, file: !498, line: 207, type: !2957, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!46, !46, !5}
!2959 = !{!2960, !2961, !2962, !2963}
!2960 = !DILocalVariable(name: "msgid", arg: 1, scope: !2956, file: !498, line: 207, type: !46)
!2961 = !DILocalVariable(name: "s", arg: 2, scope: !2956, file: !498, line: 207, type: !5)
!2962 = !DILocalVariable(name: "translation", scope: !2956, file: !498, line: 209, type: !46)
!2963 = !DILocalVariable(name: "locale_code", scope: !2956, file: !498, line: 210, type: !46)
!2964 = !DILocation(line: 0, scope: !2956)
!2965 = !DILocation(line: 209, column: 29, scope: !2956)
!2966 = !DILocation(line: 212, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2956, file: !498, line: 212, column: 7)
!2968 = !DILocation(line: 212, column: 7, scope: !2956)
!2969 = !DILocation(line: 233, column: 17, scope: !2956)
!2970 = !DILocalVariable(name: "s1", arg: 1, scope: !2971, file: !2972, line: 160, type: !46)
!2971 = distinct !DISubprogram(name: "strcaseeq0", scope: !2972, file: !2972, line: 160, type: !2973, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2975)
!2972 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!48, !46, !46, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2975 = !{!2970, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2976 = !DILocalVariable(name: "s2", arg: 2, scope: !2971, file: !2972, line: 160, type: !46)
!2977 = !DILocalVariable(name: "s20", arg: 3, scope: !2971, file: !2972, line: 160, type: !45)
!2978 = !DILocalVariable(name: "s21", arg: 4, scope: !2971, file: !2972, line: 160, type: !45)
!2979 = !DILocalVariable(name: "s22", arg: 5, scope: !2971, file: !2972, line: 160, type: !45)
!2980 = !DILocalVariable(name: "s23", arg: 6, scope: !2971, file: !2972, line: 160, type: !45)
!2981 = !DILocalVariable(name: "s24", arg: 7, scope: !2971, file: !2972, line: 160, type: !45)
!2982 = !DILocalVariable(name: "s25", arg: 8, scope: !2971, file: !2972, line: 160, type: !45)
!2983 = !DILocalVariable(name: "s26", arg: 9, scope: !2971, file: !2972, line: 160, type: !45)
!2984 = !DILocalVariable(name: "s27", arg: 10, scope: !2971, file: !2972, line: 160, type: !45)
!2985 = !DILocalVariable(name: "s28", arg: 11, scope: !2971, file: !2972, line: 160, type: !45)
!2986 = !DILocation(line: 0, scope: !2971, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 234, column: 7, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2956, file: !498, line: 234, column: 7)
!2989 = !DILocation(line: 162, column: 7, scope: !2990, inlinedAt: !2987)
!2990 = distinct !DILexicalBlock(scope: !2971, file: !2972, line: 162, column: 7)
!2991 = !DILocalVariable(name: "s1", arg: 1, scope: !2992, file: !2972, line: 146, type: !46)
!2992 = distinct !DISubprogram(name: "strcaseeq1", scope: !2972, file: !2972, line: 146, type: !2993, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!48, !46, !46, !45, !45, !45, !45, !45, !45, !45, !45}
!2995 = !{!2991, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004}
!2996 = !DILocalVariable(name: "s2", arg: 2, scope: !2992, file: !2972, line: 146, type: !46)
!2997 = !DILocalVariable(name: "s21", arg: 3, scope: !2992, file: !2972, line: 146, type: !45)
!2998 = !DILocalVariable(name: "s22", arg: 4, scope: !2992, file: !2972, line: 146, type: !45)
!2999 = !DILocalVariable(name: "s23", arg: 5, scope: !2992, file: !2972, line: 146, type: !45)
!3000 = !DILocalVariable(name: "s24", arg: 6, scope: !2992, file: !2972, line: 146, type: !45)
!3001 = !DILocalVariable(name: "s25", arg: 7, scope: !2992, file: !2972, line: 146, type: !45)
!3002 = !DILocalVariable(name: "s26", arg: 8, scope: !2992, file: !2972, line: 146, type: !45)
!3003 = !DILocalVariable(name: "s27", arg: 9, scope: !2992, file: !2972, line: 146, type: !45)
!3004 = !DILocalVariable(name: "s28", arg: 10, scope: !2992, file: !2972, line: 146, type: !45)
!3005 = !DILocation(line: 0, scope: !2992, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 167, column: 16, scope: !3007, inlinedAt: !2987)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !2972, line: 164, column: 11)
!3008 = distinct !DILexicalBlock(scope: !2990, file: !2972, line: 163, column: 5)
!3009 = !DILocation(line: 148, column: 7, scope: !3010, inlinedAt: !3006)
!3010 = distinct !DILexicalBlock(scope: !2992, file: !2972, line: 148, column: 7)
!3011 = !DILocalVariable(name: "s1", arg: 1, scope: !3012, file: !2972, line: 132, type: !46)
!3012 = distinct !DISubprogram(name: "strcaseeq2", scope: !2972, file: !2972, line: 132, type: !3013, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!48, !46, !46, !45, !45, !45, !45, !45, !45, !45}
!3015 = !{!3011, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3016 = !DILocalVariable(name: "s2", arg: 2, scope: !3012, file: !2972, line: 132, type: !46)
!3017 = !DILocalVariable(name: "s22", arg: 3, scope: !3012, file: !2972, line: 132, type: !45)
!3018 = !DILocalVariable(name: "s23", arg: 4, scope: !3012, file: !2972, line: 132, type: !45)
!3019 = !DILocalVariable(name: "s24", arg: 5, scope: !3012, file: !2972, line: 132, type: !45)
!3020 = !DILocalVariable(name: "s25", arg: 6, scope: !3012, file: !2972, line: 132, type: !45)
!3021 = !DILocalVariable(name: "s26", arg: 7, scope: !3012, file: !2972, line: 132, type: !45)
!3022 = !DILocalVariable(name: "s27", arg: 8, scope: !3012, file: !2972, line: 132, type: !45)
!3023 = !DILocalVariable(name: "s28", arg: 9, scope: !3012, file: !2972, line: 132, type: !45)
!3024 = !DILocation(line: 0, scope: !3012, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 153, column: 16, scope: !3026, inlinedAt: !3006)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !2972, line: 150, column: 11)
!3027 = distinct !DILexicalBlock(scope: !3010, file: !2972, line: 149, column: 5)
!3028 = !DILocation(line: 134, column: 7, scope: !3029, inlinedAt: !3025)
!3029 = distinct !DILexicalBlock(scope: !3012, file: !2972, line: 134, column: 7)
!3030 = !DILocalVariable(name: "s1", arg: 1, scope: !3031, file: !2972, line: 118, type: !46)
!3031 = distinct !DISubprogram(name: "strcaseeq3", scope: !2972, file: !2972, line: 118, type: !3032, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!48, !46, !46, !45, !45, !45, !45, !45, !45}
!3034 = !{!3030, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3035 = !DILocalVariable(name: "s2", arg: 2, scope: !3031, file: !2972, line: 118, type: !46)
!3036 = !DILocalVariable(name: "s23", arg: 3, scope: !3031, file: !2972, line: 118, type: !45)
!3037 = !DILocalVariable(name: "s24", arg: 4, scope: !3031, file: !2972, line: 118, type: !45)
!3038 = !DILocalVariable(name: "s25", arg: 5, scope: !3031, file: !2972, line: 118, type: !45)
!3039 = !DILocalVariable(name: "s26", arg: 6, scope: !3031, file: !2972, line: 118, type: !45)
!3040 = !DILocalVariable(name: "s27", arg: 7, scope: !3031, file: !2972, line: 118, type: !45)
!3041 = !DILocalVariable(name: "s28", arg: 8, scope: !3031, file: !2972, line: 118, type: !45)
!3042 = !DILocation(line: 0, scope: !3031, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 139, column: 16, scope: !3044, inlinedAt: !3025)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !2972, line: 136, column: 11)
!3045 = distinct !DILexicalBlock(scope: !3029, file: !2972, line: 135, column: 5)
!3046 = !DILocation(line: 120, column: 7, scope: !3047, inlinedAt: !3043)
!3047 = distinct !DILexicalBlock(scope: !3031, file: !2972, line: 120, column: 7)
!3048 = !DILocation(line: 120, column: 7, scope: !3031, inlinedAt: !3043)
!3049 = !DILocalVariable(name: "s1", arg: 1, scope: !3050, file: !2972, line: 104, type: !46)
!3050 = distinct !DISubprogram(name: "strcaseeq4", scope: !2972, file: !2972, line: 104, type: !3051, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!48, !46, !46, !45, !45, !45, !45, !45}
!3053 = !{!3049, !3054, !3055, !3056, !3057, !3058, !3059}
!3054 = !DILocalVariable(name: "s2", arg: 2, scope: !3050, file: !2972, line: 104, type: !46)
!3055 = !DILocalVariable(name: "s24", arg: 3, scope: !3050, file: !2972, line: 104, type: !45)
!3056 = !DILocalVariable(name: "s25", arg: 4, scope: !3050, file: !2972, line: 104, type: !45)
!3057 = !DILocalVariable(name: "s26", arg: 5, scope: !3050, file: !2972, line: 104, type: !45)
!3058 = !DILocalVariable(name: "s27", arg: 6, scope: !3050, file: !2972, line: 104, type: !45)
!3059 = !DILocalVariable(name: "s28", arg: 7, scope: !3050, file: !2972, line: 104, type: !45)
!3060 = !DILocation(line: 0, scope: !3050, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 125, column: 16, scope: !3062, inlinedAt: !3043)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !2972, line: 122, column: 11)
!3063 = distinct !DILexicalBlock(scope: !3047, file: !2972, line: 121, column: 5)
!3064 = !DILocation(line: 106, column: 7, scope: !3065, inlinedAt: !3061)
!3065 = distinct !DILexicalBlock(scope: !3050, file: !2972, line: 106, column: 7)
!3066 = !DILocation(line: 106, column: 7, scope: !3050, inlinedAt: !3061)
!3067 = !DILocalVariable(name: "s1", arg: 1, scope: !3068, file: !2972, line: 90, type: !46)
!3068 = distinct !DISubprogram(name: "strcaseeq5", scope: !2972, file: !2972, line: 90, type: !3069, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!48, !46, !46, !45, !45, !45, !45}
!3071 = !{!3067, !3072, !3073, !3074, !3075, !3076}
!3072 = !DILocalVariable(name: "s2", arg: 2, scope: !3068, file: !2972, line: 90, type: !46)
!3073 = !DILocalVariable(name: "s25", arg: 3, scope: !3068, file: !2972, line: 90, type: !45)
!3074 = !DILocalVariable(name: "s26", arg: 4, scope: !3068, file: !2972, line: 90, type: !45)
!3075 = !DILocalVariable(name: "s27", arg: 5, scope: !3068, file: !2972, line: 90, type: !45)
!3076 = !DILocalVariable(name: "s28", arg: 6, scope: !3068, file: !2972, line: 90, type: !45)
!3077 = !DILocation(line: 0, scope: !3068, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 111, column: 16, scope: !3079, inlinedAt: !3061)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !2972, line: 108, column: 11)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !2972, line: 107, column: 5)
!3081 = !DILocation(line: 92, column: 7, scope: !3082, inlinedAt: !3078)
!3082 = distinct !DILexicalBlock(scope: !3068, file: !2972, line: 92, column: 7)
!3083 = !DILocation(line: 92, column: 7, scope: !3068, inlinedAt: !3078)
!3084 = !DILocation(line: 235, column: 12, scope: !2988)
!3085 = !DILocation(line: 235, column: 21, scope: !2988)
!3086 = !DILocation(line: 235, column: 5, scope: !2988)
!3087 = !DILocation(line: 0, scope: !2992, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 167, column: 16, scope: !3007, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 236, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2956, file: !498, line: 236, column: 7)
!3091 = !DILocation(line: 148, column: 7, scope: !3010, inlinedAt: !3088)
!3092 = !DILocation(line: 0, scope: !3012, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 153, column: 16, scope: !3026, inlinedAt: !3088)
!3094 = !DILocation(line: 134, column: 7, scope: !3029, inlinedAt: !3093)
!3095 = !DILocation(line: 134, column: 7, scope: !3012, inlinedAt: !3093)
!3096 = !DILocation(line: 0, scope: !3031, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 139, column: 16, scope: !3044, inlinedAt: !3093)
!3098 = !DILocation(line: 120, column: 7, scope: !3047, inlinedAt: !3097)
!3099 = !DILocation(line: 120, column: 7, scope: !3031, inlinedAt: !3097)
!3100 = !DILocation(line: 0, scope: !3050, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 125, column: 16, scope: !3062, inlinedAt: !3097)
!3102 = !DILocation(line: 106, column: 7, scope: !3065, inlinedAt: !3101)
!3103 = !DILocation(line: 106, column: 7, scope: !3050, inlinedAt: !3101)
!3104 = !DILocation(line: 0, scope: !3068, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 111, column: 16, scope: !3079, inlinedAt: !3101)
!3106 = !DILocation(line: 92, column: 7, scope: !3082, inlinedAt: !3105)
!3107 = !DILocation(line: 92, column: 7, scope: !3068, inlinedAt: !3105)
!3108 = !DILocalVariable(name: "s1", arg: 1, scope: !3109, file: !2972, line: 76, type: !46)
!3109 = distinct !DISubprogram(name: "strcaseeq6", scope: !2972, file: !2972, line: 76, type: !3110, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!48, !46, !46, !45, !45, !45}
!3112 = !{!3108, !3113, !3114, !3115, !3116}
!3113 = !DILocalVariable(name: "s2", arg: 2, scope: !3109, file: !2972, line: 76, type: !46)
!3114 = !DILocalVariable(name: "s26", arg: 3, scope: !3109, file: !2972, line: 76, type: !45)
!3115 = !DILocalVariable(name: "s27", arg: 4, scope: !3109, file: !2972, line: 76, type: !45)
!3116 = !DILocalVariable(name: "s28", arg: 5, scope: !3109, file: !2972, line: 76, type: !45)
!3117 = !DILocation(line: 0, scope: !3109, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 97, column: 16, scope: !3119, inlinedAt: !3105)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !2972, line: 94, column: 11)
!3120 = distinct !DILexicalBlock(scope: !3082, file: !2972, line: 93, column: 5)
!3121 = !DILocation(line: 78, column: 7, scope: !3122, inlinedAt: !3118)
!3122 = distinct !DILexicalBlock(scope: !3109, file: !2972, line: 78, column: 7)
!3123 = !DILocation(line: 78, column: 7, scope: !3109, inlinedAt: !3118)
!3124 = !DILocalVariable(name: "s1", arg: 1, scope: !3125, file: !2972, line: 62, type: !46)
!3125 = distinct !DISubprogram(name: "strcaseeq7", scope: !2972, file: !2972, line: 62, type: !3126, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!48, !46, !46, !45, !45}
!3128 = !{!3124, !3129, !3130, !3131}
!3129 = !DILocalVariable(name: "s2", arg: 2, scope: !3125, file: !2972, line: 62, type: !46)
!3130 = !DILocalVariable(name: "s27", arg: 3, scope: !3125, file: !2972, line: 62, type: !45)
!3131 = !DILocalVariable(name: "s28", arg: 4, scope: !3125, file: !2972, line: 62, type: !45)
!3132 = !DILocation(line: 0, scope: !3125, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 83, column: 16, scope: !3134, inlinedAt: !3118)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !2972, line: 80, column: 11)
!3135 = distinct !DILexicalBlock(scope: !3122, file: !2972, line: 79, column: 5)
!3136 = !DILocation(line: 64, column: 7, scope: !3137, inlinedAt: !3133)
!3137 = distinct !DILexicalBlock(scope: !3125, file: !2972, line: 64, column: 7)
!3138 = !DILocation(line: 236, column: 7, scope: !2956)
!3139 = !DILocation(line: 237, column: 12, scope: !3090)
!3140 = !DILocation(line: 237, column: 21, scope: !3090)
!3141 = !DILocation(line: 237, column: 5, scope: !3090)
!3142 = !DILocation(line: 239, column: 13, scope: !2956)
!3143 = !DILocation(line: 239, column: 11, scope: !2956)
!3144 = !DILocation(line: 239, column: 3, scope: !2956)
!3145 = !DILocation(line: 240, column: 1, scope: !2956)
!3146 = distinct !DISubprogram(name: "quotearg_alloc", scope: !498, file: !498, line: 799, type: !3147, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!44, !46, !103, !512}
!3149 = !{!3150, !3151, !3152}
!3150 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !498, line: 799, type: !46)
!3151 = !DILocalVariable(name: "argsize", arg: 2, scope: !3146, file: !498, line: 799, type: !103)
!3152 = !DILocalVariable(name: "o", arg: 3, scope: !3146, file: !498, line: 800, type: !512)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !498, line: 812, type: !46)
!3155 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !498, file: !498, line: 812, type: !3156, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!44, !46, !103, !663, !512}
!3158 = !{!3154, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3159 = !DILocalVariable(name: "argsize", arg: 2, scope: !3155, file: !498, line: 812, type: !103)
!3160 = !DILocalVariable(name: "size", arg: 3, scope: !3155, file: !498, line: 812, type: !663)
!3161 = !DILocalVariable(name: "o", arg: 4, scope: !3155, file: !498, line: 813, type: !512)
!3162 = !DILocalVariable(name: "p", scope: !3155, file: !498, line: 815, type: !512)
!3163 = !DILocalVariable(name: "e", scope: !3155, file: !498, line: 816, type: !48)
!3164 = !DILocalVariable(name: "flags", scope: !3155, file: !498, line: 818, type: !48)
!3165 = !DILocalVariable(name: "bufsize", scope: !3155, file: !498, line: 819, type: !103)
!3166 = !DILocalVariable(name: "buf", scope: !3155, file: !498, line: 823, type: !44)
!3167 = !DILocation(line: 0, scope: !3155, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 802, column: 10, scope: !3146)
!3169 = !DILocation(line: 815, column: 37, scope: !3155, inlinedAt: !3168)
!3170 = !DILocation(line: 816, column: 11, scope: !3155, inlinedAt: !3168)
!3171 = !DILocation(line: 818, column: 18, scope: !3155, inlinedAt: !3168)
!3172 = !DILocation(line: 818, column: 24, scope: !3155, inlinedAt: !3168)
!3173 = !DILocation(line: 819, column: 69, scope: !3155, inlinedAt: !3168)
!3174 = !DILocation(line: 820, column: 53, scope: !3155, inlinedAt: !3168)
!3175 = !DILocation(line: 821, column: 49, scope: !3155, inlinedAt: !3168)
!3176 = !DILocation(line: 822, column: 49, scope: !3155, inlinedAt: !3168)
!3177 = !DILocation(line: 819, column: 20, scope: !3155, inlinedAt: !3168)
!3178 = !DILocation(line: 822, column: 62, scope: !3155, inlinedAt: !3168)
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !227, line: 216, type: !103)
!3180 = distinct !DISubprogram(name: "xcharalloc", scope: !227, file: !227, line: 216, type: !3181, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!44, !103}
!3183 = !{!3179}
!3184 = !DILocation(line: 0, scope: !3180, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 823, column: 15, scope: !3155, inlinedAt: !3168)
!3186 = !DILocation(line: 218, column: 10, scope: !3180, inlinedAt: !3185)
!3187 = !DILocation(line: 824, column: 60, scope: !3155, inlinedAt: !3168)
!3188 = !DILocation(line: 826, column: 32, scope: !3155, inlinedAt: !3168)
!3189 = !DILocation(line: 826, column: 47, scope: !3155, inlinedAt: !3168)
!3190 = !DILocation(line: 824, column: 3, scope: !3155, inlinedAt: !3168)
!3191 = !DILocation(line: 827, column: 9, scope: !3155, inlinedAt: !3168)
!3192 = !DILocation(line: 802, column: 3, scope: !3146)
!3193 = !DILocation(line: 0, scope: !3155)
!3194 = !DILocation(line: 815, column: 37, scope: !3155)
!3195 = !DILocation(line: 816, column: 11, scope: !3155)
!3196 = !DILocation(line: 818, column: 18, scope: !3155)
!3197 = !DILocation(line: 818, column: 27, scope: !3155)
!3198 = !DILocation(line: 818, column: 24, scope: !3155)
!3199 = !DILocation(line: 819, column: 69, scope: !3155)
!3200 = !DILocation(line: 820, column: 53, scope: !3155)
!3201 = !DILocation(line: 821, column: 49, scope: !3155)
!3202 = !DILocation(line: 822, column: 49, scope: !3155)
!3203 = !DILocation(line: 819, column: 20, scope: !3155)
!3204 = !DILocation(line: 822, column: 62, scope: !3155)
!3205 = !DILocation(line: 0, scope: !3180, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 823, column: 15, scope: !3155)
!3207 = !DILocation(line: 218, column: 10, scope: !3180, inlinedAt: !3206)
!3208 = !DILocation(line: 824, column: 60, scope: !3155)
!3209 = !DILocation(line: 826, column: 32, scope: !3155)
!3210 = !DILocation(line: 826, column: 47, scope: !3155)
!3211 = !DILocation(line: 824, column: 3, scope: !3155)
!3212 = !DILocation(line: 827, column: 9, scope: !3155)
!3213 = !DILocation(line: 828, column: 7, scope: !3155)
!3214 = !DILocation(line: 829, column: 11, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3155, file: !498, line: 828, column: 7)
!3216 = !DILocation(line: 829, column: 5, scope: !3215)
!3217 = !DILocation(line: 830, column: 3, scope: !3155)
!3218 = distinct !DISubprogram(name: "quotearg_free", scope: !498, file: !498, line: 848, type: !130, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3219)
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "sv", scope: !3218, file: !498, line: 850, type: !577)
!3221 = !DILocalVariable(name: "i", scope: !3218, file: !498, line: 851, type: !48)
!3222 = !DILocation(line: 850, column: 24, scope: !3218)
!3223 = !DILocation(line: 0, scope: !3218)
!3224 = !DILocation(line: 852, column: 19, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !498, line: 852, column: 3)
!3226 = distinct !DILexicalBlock(scope: !3218, file: !498, line: 852, column: 3)
!3227 = !DILocation(line: 852, column: 17, scope: !3225)
!3228 = !DILocation(line: 852, column: 3, scope: !3226)
!3229 = !DILocation(line: 853, column: 17, scope: !3225)
!3230 = !{!3231, !1343, i64 8}
!3231 = !{!"slotvec", !1520, i64 0, !1343, i64 8}
!3232 = !DILocation(line: 853, column: 5, scope: !3225)
!3233 = !DILocation(line: 852, column: 28, scope: !3225)
!3234 = distinct !{!3234, !3228, !3235}
!3235 = !DILocation(line: 853, column: 20, scope: !3226)
!3236 = !DILocation(line: 854, column: 13, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3218, file: !498, line: 854, column: 7)
!3238 = !DILocation(line: 854, column: 17, scope: !3237)
!3239 = !DILocation(line: 854, column: 7, scope: !3218)
!3240 = !DILocation(line: 856, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !498, line: 855, column: 5)
!3242 = !DILocation(line: 857, column: 21, scope: !3241)
!3243 = !{!3231, !1520, i64 0}
!3244 = !DILocation(line: 858, column: 20, scope: !3241)
!3245 = !DILocation(line: 859, column: 5, scope: !3241)
!3246 = !DILocation(line: 860, column: 10, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3218, file: !498, line: 860, column: 7)
!3248 = !DILocation(line: 860, column: 7, scope: !3218)
!3249 = !DILocation(line: 862, column: 13, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !498, line: 861, column: 5)
!3251 = !DILocation(line: 862, column: 7, scope: !3250)
!3252 = !DILocation(line: 863, column: 15, scope: !3250)
!3253 = !DILocation(line: 864, column: 5, scope: !3250)
!3254 = !DILocation(line: 865, column: 10, scope: !3218)
!3255 = !DILocation(line: 866, column: 1, scope: !3218)
!3256 = distinct !DISubprogram(name: "quotearg_n", scope: !498, file: !498, line: 931, type: !117, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3257)
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3256, file: !498, line: 931, type: !48)
!3259 = !DILocalVariable(name: "arg", arg: 2, scope: !3256, file: !498, line: 931, type: !46)
!3260 = !DILocation(line: 0, scope: !3256)
!3261 = !DILocation(line: 933, column: 10, scope: !3256)
!3262 = !DILocation(line: 933, column: 3, scope: !3256)
!3263 = distinct !DISubprogram(name: "quotearg_n_options", scope: !498, file: !498, line: 877, type: !3264, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!44, !48, !46, !103, !512}
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3276, !3277, !3279, !3280, !3281}
!3267 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !498, line: 877, type: !48)
!3268 = !DILocalVariable(name: "arg", arg: 2, scope: !3263, file: !498, line: 877, type: !46)
!3269 = !DILocalVariable(name: "argsize", arg: 3, scope: !3263, file: !498, line: 877, type: !103)
!3270 = !DILocalVariable(name: "options", arg: 4, scope: !3263, file: !498, line: 878, type: !512)
!3271 = !DILocalVariable(name: "e", scope: !3263, file: !498, line: 880, type: !48)
!3272 = !DILocalVariable(name: "sv", scope: !3263, file: !498, line: 882, type: !577)
!3273 = !DILocalVariable(name: "preallocated", scope: !3274, file: !498, line: 889, type: !203)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !498, line: 888, column: 5)
!3275 = distinct !DILexicalBlock(scope: !3263, file: !498, line: 887, column: 7)
!3276 = !DILocalVariable(name: "nmax", scope: !3274, file: !498, line: 890, type: !48)
!3277 = !DILocalVariable(name: "size", scope: !3278, file: !498, line: 903, type: !103)
!3278 = distinct !DILexicalBlock(scope: !3263, file: !498, line: 902, column: 3)
!3279 = !DILocalVariable(name: "val", scope: !3278, file: !498, line: 904, type: !44)
!3280 = !DILocalVariable(name: "flags", scope: !3278, file: !498, line: 906, type: !48)
!3281 = !DILocalVariable(name: "qsize", scope: !3278, file: !498, line: 907, type: !103)
!3282 = !DILocation(line: 0, scope: !3263)
!3283 = !DILocation(line: 880, column: 11, scope: !3263)
!3284 = !DILocation(line: 882, column: 24, scope: !3263)
!3285 = !DILocation(line: 884, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3263, file: !498, line: 884, column: 7)
!3287 = !DILocation(line: 884, column: 7, scope: !3263)
!3288 = !DILocation(line: 885, column: 5, scope: !3286)
!3289 = !DILocation(line: 887, column: 7, scope: !3275)
!3290 = !DILocation(line: 887, column: 14, scope: !3275)
!3291 = !DILocation(line: 887, column: 7, scope: !3263)
!3292 = !DILocation(line: 889, column: 31, scope: !3274)
!3293 = !DILocation(line: 0, scope: !3274)
!3294 = !DILocation(line: 892, column: 16, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3274, file: !498, line: 892, column: 11)
!3296 = !DILocation(line: 892, column: 11, scope: !3274)
!3297 = !DILocation(line: 893, column: 9, scope: !3295)
!3298 = !DILocation(line: 895, column: 32, scope: !3274)
!3299 = !DILocation(line: 895, column: 61, scope: !3274)
!3300 = !DILocation(line: 895, column: 58, scope: !3274)
!3301 = !DILocation(line: 895, column: 66, scope: !3274)
!3302 = !DILocation(line: 895, column: 22, scope: !3274)
!3303 = !DILocation(line: 895, column: 15, scope: !3274)
!3304 = !DILocation(line: 896, column: 11, scope: !3274)
!3305 = !DILocation(line: 897, column: 15, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3274, file: !498, line: 896, column: 11)
!3307 = !{i64 0, i64 8, !1519, i64 8, i64 8, !1342}
!3308 = !DILocation(line: 897, column: 9, scope: !3306)
!3309 = !DILocation(line: 898, column: 20, scope: !3274)
!3310 = !DILocation(line: 898, column: 18, scope: !3274)
!3311 = !DILocation(line: 898, column: 15, scope: !3274)
!3312 = !DILocation(line: 898, column: 38, scope: !3274)
!3313 = !DILocation(line: 898, column: 31, scope: !3274)
!3314 = !DILocation(line: 898, column: 48, scope: !3274)
!3315 = !DILocation(line: 0, scope: !2714, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 898, column: 7, scope: !3274)
!3317 = !DILocation(line: 71, column: 10, scope: !2714, inlinedAt: !3316)
!3318 = !DILocation(line: 899, column: 14, scope: !3274)
!3319 = !DILocation(line: 900, column: 5, scope: !3274)
!3320 = !DILocation(line: 903, column: 19, scope: !3278)
!3321 = !DILocation(line: 903, column: 25, scope: !3278)
!3322 = !DILocation(line: 0, scope: !3278)
!3323 = !DILocation(line: 904, column: 23, scope: !3278)
!3324 = !DILocation(line: 906, column: 26, scope: !3278)
!3325 = !DILocation(line: 906, column: 32, scope: !3278)
!3326 = !DILocation(line: 908, column: 55, scope: !3278)
!3327 = !DILocation(line: 909, column: 46, scope: !3278)
!3328 = !DILocation(line: 910, column: 55, scope: !3278)
!3329 = !DILocation(line: 911, column: 55, scope: !3278)
!3330 = !DILocation(line: 907, column: 20, scope: !3278)
!3331 = !DILocation(line: 913, column: 14, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3278, file: !498, line: 913, column: 9)
!3333 = !DILocation(line: 913, column: 9, scope: !3278)
!3334 = !DILocation(line: 915, column: 35, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !498, line: 914, column: 7)
!3336 = !DILocation(line: 915, column: 20, scope: !3335)
!3337 = !DILocation(line: 916, column: 17, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !498, line: 916, column: 13)
!3339 = !DILocation(line: 916, column: 13, scope: !3335)
!3340 = !DILocation(line: 917, column: 11, scope: !3338)
!3341 = !DILocation(line: 0, scope: !3180, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 918, column: 27, scope: !3335)
!3343 = !DILocation(line: 218, column: 10, scope: !3180, inlinedAt: !3342)
!3344 = !DILocation(line: 918, column: 19, scope: !3335)
!3345 = !DILocation(line: 919, column: 69, scope: !3335)
!3346 = !DILocation(line: 921, column: 44, scope: !3335)
!3347 = !DILocation(line: 922, column: 44, scope: !3335)
!3348 = !DILocation(line: 919, column: 9, scope: !3335)
!3349 = !DILocation(line: 923, column: 7, scope: !3335)
!3350 = !DILocation(line: 925, column: 11, scope: !3278)
!3351 = !DILocation(line: 926, column: 5, scope: !3278)
!3352 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !498, file: !498, line: 937, type: !3353, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!44, !48, !46, !103}
!3355 = !{!3356, !3357, !3358}
!3356 = !DILocalVariable(name: "n", arg: 1, scope: !3352, file: !498, line: 937, type: !48)
!3357 = !DILocalVariable(name: "arg", arg: 2, scope: !3352, file: !498, line: 937, type: !46)
!3358 = !DILocalVariable(name: "argsize", arg: 3, scope: !3352, file: !498, line: 937, type: !103)
!3359 = !DILocation(line: 0, scope: !3352)
!3360 = !DILocation(line: 939, column: 10, scope: !3352)
!3361 = !DILocation(line: 939, column: 3, scope: !3352)
!3362 = distinct !DISubprogram(name: "quotearg", scope: !498, file: !498, line: 943, type: !123, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3363)
!3363 = !{!3364}
!3364 = !DILocalVariable(name: "arg", arg: 1, scope: !3362, file: !498, line: 943, type: !46)
!3365 = !DILocation(line: 0, scope: !3362)
!3366 = !DILocation(line: 0, scope: !3256, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 945, column: 10, scope: !3362)
!3368 = !DILocation(line: 933, column: 10, scope: !3256, inlinedAt: !3367)
!3369 = !DILocation(line: 945, column: 3, scope: !3362)
!3370 = distinct !DISubprogram(name: "quotearg_mem", scope: !498, file: !498, line: 949, type: !3371, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!44, !46, !103}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "arg", arg: 1, scope: !3370, file: !498, line: 949, type: !46)
!3375 = !DILocalVariable(name: "argsize", arg: 2, scope: !3370, file: !498, line: 949, type: !103)
!3376 = !DILocation(line: 0, scope: !3370)
!3377 = !DILocation(line: 0, scope: !3352, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 951, column: 10, scope: !3370)
!3379 = !DILocation(line: 939, column: 10, scope: !3352, inlinedAt: !3378)
!3380 = !DILocation(line: 951, column: 3, scope: !3370)
!3381 = distinct !DISubprogram(name: "quotearg_n_style", scope: !498, file: !498, line: 955, type: !197, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3382)
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !498, line: 955, type: !48)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !498, line: 955, type: !5)
!3385 = !DILocalVariable(name: "arg", arg: 3, scope: !3381, file: !498, line: 955, type: !46)
!3386 = !DILocalVariable(name: "o", scope: !3381, file: !498, line: 957, type: !513)
!3387 = !DILocation(line: 0, scope: !3381)
!3388 = !DILocation(line: 957, column: 3, scope: !3381)
!3389 = !DILocation(line: 957, column: 32, scope: !3381)
!3390 = !DILocalVariable(name: "style", arg: 1, scope: !3391, file: !498, line: 193, type: !5)
!3391 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !498, file: !498, line: 193, type: !3392, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!514, !5}
!3394 = !{!3390, !3395}
!3395 = !DILocalVariable(name: "o", scope: !3391, file: !498, line: 195, type: !514)
!3396 = !DILocation(line: 0, scope: !3391, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 957, column: 36, scope: !3381)
!3398 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3397)
!3399 = !{!3400}
!3400 = distinct !{!3400, !3401, !"quoting_options_from_style: argument 0"}
!3401 = distinct !{!3401, !"quoting_options_from_style"}
!3402 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3397)
!3403 = distinct !DILexicalBlock(scope: !3391, file: !498, line: 196, column: 7)
!3404 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3397)
!3405 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3397)
!3406 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3397)
!3407 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3397)
!3408 = !DILocation(line: 958, column: 10, scope: !3381)
!3409 = !DILocation(line: 959, column: 1, scope: !3381)
!3410 = !DILocation(line: 958, column: 3, scope: !3381)
!3411 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !498, file: !498, line: 962, type: !3412, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!44, !48, !5, !46, !103}
!3414 = !{!3415, !3416, !3417, !3418, !3419}
!3415 = !DILocalVariable(name: "n", arg: 1, scope: !3411, file: !498, line: 962, type: !48)
!3416 = !DILocalVariable(name: "s", arg: 2, scope: !3411, file: !498, line: 962, type: !5)
!3417 = !DILocalVariable(name: "arg", arg: 3, scope: !3411, file: !498, line: 963, type: !46)
!3418 = !DILocalVariable(name: "argsize", arg: 4, scope: !3411, file: !498, line: 963, type: !103)
!3419 = !DILocalVariable(name: "o", scope: !3411, file: !498, line: 965, type: !513)
!3420 = !DILocation(line: 0, scope: !3411)
!3421 = !DILocation(line: 965, column: 3, scope: !3411)
!3422 = !DILocation(line: 965, column: 32, scope: !3411)
!3423 = !DILocation(line: 0, scope: !3391, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 965, column: 36, scope: !3411)
!3425 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3424)
!3426 = !{!3427}
!3427 = distinct !{!3427, !3428, !"quoting_options_from_style: argument 0"}
!3428 = distinct !{!3428, !"quoting_options_from_style"}
!3429 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3424)
!3430 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3424)
!3431 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3424)
!3432 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3424)
!3433 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3424)
!3434 = !DILocation(line: 966, column: 10, scope: !3411)
!3435 = !DILocation(line: 967, column: 1, scope: !3411)
!3436 = !DILocation(line: 966, column: 3, scope: !3411)
!3437 = distinct !DISubprogram(name: "quotearg_style", scope: !498, file: !498, line: 970, type: !3438, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!44, !5, !46}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "s", arg: 1, scope: !3437, file: !498, line: 970, type: !5)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !498, line: 970, type: !46)
!3443 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 957, column: 36, scope: !3381, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 972, column: 10, scope: !3437)
!3446 = !DILocation(line: 957, column: 32, scope: !3381, inlinedAt: !3445)
!3447 = !DILocation(line: 0, scope: !3437)
!3448 = !DILocation(line: 0, scope: !3381, inlinedAt: !3445)
!3449 = !DILocation(line: 957, column: 3, scope: !3381, inlinedAt: !3445)
!3450 = !DILocation(line: 0, scope: !3391, inlinedAt: !3444)
!3451 = !{!3452}
!3452 = distinct !{!3452, !3453, !"quoting_options_from_style: argument 0"}
!3453 = distinct !{!3453, !"quoting_options_from_style"}
!3454 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3444)
!3455 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3444)
!3456 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3444)
!3457 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3444)
!3458 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3444)
!3459 = !DILocation(line: 958, column: 10, scope: !3381, inlinedAt: !3445)
!3460 = !DILocation(line: 959, column: 1, scope: !3381, inlinedAt: !3445)
!3461 = !DILocation(line: 972, column: 3, scope: !3437)
!3462 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !498, file: !498, line: 976, type: !3463, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!44, !5, !46, !103}
!3465 = !{!3466, !3467, !3468}
!3466 = !DILocalVariable(name: "s", arg: 1, scope: !3462, file: !498, line: 976, type: !5)
!3467 = !DILocalVariable(name: "arg", arg: 2, scope: !3462, file: !498, line: 976, type: !46)
!3468 = !DILocalVariable(name: "argsize", arg: 3, scope: !3462, file: !498, line: 976, type: !103)
!3469 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 965, column: 36, scope: !3411, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 978, column: 10, scope: !3462)
!3472 = !DILocation(line: 965, column: 32, scope: !3411, inlinedAt: !3471)
!3473 = !DILocation(line: 0, scope: !3462)
!3474 = !DILocation(line: 0, scope: !3411, inlinedAt: !3471)
!3475 = !DILocation(line: 965, column: 3, scope: !3411, inlinedAt: !3471)
!3476 = !DILocation(line: 0, scope: !3391, inlinedAt: !3470)
!3477 = !{!3478}
!3478 = distinct !{!3478, !3479, !"quoting_options_from_style: argument 0"}
!3479 = distinct !{!3479, !"quoting_options_from_style"}
!3480 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3470)
!3481 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3470)
!3482 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3470)
!3483 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3470)
!3484 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3470)
!3485 = !DILocation(line: 966, column: 10, scope: !3411, inlinedAt: !3471)
!3486 = !DILocation(line: 967, column: 1, scope: !3411, inlinedAt: !3471)
!3487 = !DILocation(line: 978, column: 3, scope: !3462)
!3488 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !498, file: !498, line: 982, type: !3489, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!44, !46, !103, !45}
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DILocalVariable(name: "arg", arg: 1, scope: !3488, file: !498, line: 982, type: !46)
!3493 = !DILocalVariable(name: "argsize", arg: 2, scope: !3488, file: !498, line: 982, type: !103)
!3494 = !DILocalVariable(name: "ch", arg: 3, scope: !3488, file: !498, line: 982, type: !45)
!3495 = !DILocalVariable(name: "options", scope: !3488, file: !498, line: 984, type: !514)
!3496 = !DILocation(line: 0, scope: !3488)
!3497 = !DILocation(line: 984, column: 3, scope: !3488)
!3498 = !DILocation(line: 984, column: 26, scope: !3488)
!3499 = !DILocation(line: 985, column: 13, scope: !3488)
!3500 = !{i64 0, i64 4, !1577, i64 4, i64 4, !1485, i64 8, i64 32, !1577, i64 40, i64 8, !1342, i64 48, i64 8, !1342}
!3501 = !DILocation(line: 0, scope: !2329, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 986, column: 3, scope: !3488)
!3503 = !DILocation(line: 156, column: 62, scope: !2329, inlinedAt: !3502)
!3504 = !DILocation(line: 156, column: 57, scope: !2329, inlinedAt: !3502)
!3505 = !DILocation(line: 157, column: 15, scope: !2329, inlinedAt: !3502)
!3506 = !DILocation(line: 158, column: 12, scope: !2329, inlinedAt: !3502)
!3507 = !DILocation(line: 158, column: 15, scope: !2329, inlinedAt: !3502)
!3508 = !DILocation(line: 158, column: 25, scope: !2329, inlinedAt: !3502)
!3509 = !DILocation(line: 159, column: 18, scope: !2329, inlinedAt: !3502)
!3510 = !DILocation(line: 159, column: 23, scope: !2329, inlinedAt: !3502)
!3511 = !DILocation(line: 159, column: 6, scope: !2329, inlinedAt: !3502)
!3512 = !DILocation(line: 987, column: 10, scope: !3488)
!3513 = !DILocation(line: 988, column: 1, scope: !3488)
!3514 = !DILocation(line: 987, column: 3, scope: !3488)
!3515 = distinct !DISubprogram(name: "quotearg_char", scope: !498, file: !498, line: 991, type: !3516, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!44, !46, !45}
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "arg", arg: 1, scope: !3515, file: !498, line: 991, type: !46)
!3520 = !DILocalVariable(name: "ch", arg: 2, scope: !3515, file: !498, line: 991, type: !45)
!3521 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 993, column: 10, scope: !3515)
!3523 = !DILocation(line: 0, scope: !3515)
!3524 = !DILocation(line: 0, scope: !3488, inlinedAt: !3522)
!3525 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3522)
!3526 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3522)
!3527 = !DILocation(line: 0, scope: !2329, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3522)
!3529 = !DILocation(line: 156, column: 62, scope: !2329, inlinedAt: !3528)
!3530 = !DILocation(line: 156, column: 57, scope: !2329, inlinedAt: !3528)
!3531 = !DILocation(line: 157, column: 15, scope: !2329, inlinedAt: !3528)
!3532 = !DILocation(line: 158, column: 12, scope: !2329, inlinedAt: !3528)
!3533 = !DILocation(line: 158, column: 15, scope: !2329, inlinedAt: !3528)
!3534 = !DILocation(line: 158, column: 25, scope: !2329, inlinedAt: !3528)
!3535 = !DILocation(line: 159, column: 18, scope: !2329, inlinedAt: !3528)
!3536 = !DILocation(line: 159, column: 23, scope: !2329, inlinedAt: !3528)
!3537 = !DILocation(line: 159, column: 6, scope: !2329, inlinedAt: !3528)
!3538 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3522)
!3539 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3522)
!3540 = !DILocation(line: 993, column: 3, scope: !3515)
!3541 = distinct !DISubprogram(name: "quotearg_colon", scope: !498, file: !498, line: 997, type: !123, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3542)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3541, file: !498, line: 997, type: !46)
!3544 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 993, column: 10, scope: !3515, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 999, column: 10, scope: !3541)
!3547 = !DILocation(line: 0, scope: !3541)
!3548 = !DILocation(line: 0, scope: !3515, inlinedAt: !3546)
!3549 = !DILocation(line: 0, scope: !3488, inlinedAt: !3545)
!3550 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3545)
!3551 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3545)
!3552 = !DILocation(line: 0, scope: !2329, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3545)
!3554 = !DILocation(line: 156, column: 57, scope: !2329, inlinedAt: !3553)
!3555 = !DILocation(line: 158, column: 12, scope: !2329, inlinedAt: !3553)
!3556 = !DILocation(line: 159, column: 6, scope: !2329, inlinedAt: !3553)
!3557 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3545)
!3558 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3545)
!3559 = !DILocation(line: 999, column: 3, scope: !3541)
!3560 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !498, file: !498, line: 1003, type: !3371, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3561)
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "arg", arg: 1, scope: !3560, file: !498, line: 1003, type: !46)
!3563 = !DILocalVariable(name: "argsize", arg: 2, scope: !3560, file: !498, line: 1003, type: !103)
!3564 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1005, column: 10, scope: !3560)
!3566 = !DILocation(line: 0, scope: !3560)
!3567 = !DILocation(line: 0, scope: !3488, inlinedAt: !3565)
!3568 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3565)
!3569 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3565)
!3570 = !DILocation(line: 0, scope: !2329, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3565)
!3572 = !DILocation(line: 156, column: 57, scope: !2329, inlinedAt: !3571)
!3573 = !DILocation(line: 158, column: 12, scope: !2329, inlinedAt: !3571)
!3574 = !DILocation(line: 159, column: 6, scope: !2329, inlinedAt: !3571)
!3575 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3565)
!3576 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3565)
!3577 = !DILocation(line: 1005, column: 3, scope: !3560)
!3578 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !498, file: !498, line: 1009, type: !197, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !498, line: 1009, type: !48)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3578, file: !498, line: 1009, type: !5)
!3582 = !DILocalVariable(name: "arg", arg: 3, scope: !3578, file: !498, line: 1009, type: !46)
!3583 = !DILocalVariable(name: "options", scope: !3578, file: !498, line: 1011, type: !514)
!3584 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 1012, column: 13, scope: !3578)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocation(line: 1011, column: 3, scope: !3578)
!3588 = !DILocation(line: 1011, column: 26, scope: !3578)
!3589 = !DILocation(line: 1012, column: 13, scope: !3578)
!3590 = !DILocation(line: 0, scope: !3391, inlinedAt: !3585)
!3591 = !{!3592}
!3592 = distinct !{!3592, !3593, !"quoting_options_from_style: argument 0"}
!3593 = distinct !{!3593, !"quoting_options_from_style"}
!3594 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3585)
!3595 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3585)
!3596 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3585)
!3597 = !DILocation(line: 0, scope: !2329, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1013, column: 3, scope: !3578)
!3599 = !DILocation(line: 156, column: 57, scope: !2329, inlinedAt: !3598)
!3600 = !DILocation(line: 158, column: 12, scope: !2329, inlinedAt: !3598)
!3601 = !DILocation(line: 159, column: 6, scope: !2329, inlinedAt: !3598)
!3602 = !DILocation(line: 1014, column: 10, scope: !3578)
!3603 = !DILocation(line: 1015, column: 1, scope: !3578)
!3604 = !DILocation(line: 1014, column: 3, scope: !3578)
!3605 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !498, file: !498, line: 1018, type: !3606, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!44, !48, !46, !46, !46}
!3608 = !{!3609, !3610, !3611, !3612}
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !498, line: 1018, type: !48)
!3610 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3605, file: !498, line: 1018, type: !46)
!3611 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3605, file: !498, line: 1019, type: !46)
!3612 = !DILocalVariable(name: "arg", arg: 4, scope: !3605, file: !498, line: 1019, type: !46)
!3613 = !DILocalVariable(name: "o", scope: !3614, file: !498, line: 1030, type: !514)
!3614 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !498, file: !498, line: 1026, type: !3615, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!44, !48, !46, !46, !46, !103}
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3613}
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3614, file: !498, line: 1026, type: !48)
!3619 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3614, file: !498, line: 1026, type: !46)
!3620 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3614, file: !498, line: 1027, type: !46)
!3621 = !DILocalVariable(name: "arg", arg: 4, scope: !3614, file: !498, line: 1028, type: !46)
!3622 = !DILocalVariable(name: "argsize", arg: 5, scope: !3614, file: !498, line: 1028, type: !103)
!3623 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1021, column: 10, scope: !3605)
!3625 = !DILocation(line: 0, scope: !3605)
!3626 = !DILocation(line: 0, scope: !3614, inlinedAt: !3624)
!3627 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3624)
!3628 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3624)
!3629 = !DILocation(line: 0, scope: !2369, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3624)
!3631 = !DILocation(line: 184, column: 6, scope: !2369, inlinedAt: !3630)
!3632 = !DILocation(line: 184, column: 12, scope: !2369, inlinedAt: !3630)
!3633 = !DILocation(line: 185, column: 8, scope: !2383, inlinedAt: !3630)
!3634 = !DILocation(line: 185, column: 23, scope: !2383, inlinedAt: !3630)
!3635 = !DILocation(line: 185, column: 19, scope: !2383, inlinedAt: !3630)
!3636 = !DILocation(line: 186, column: 5, scope: !2383, inlinedAt: !3630)
!3637 = !DILocation(line: 187, column: 6, scope: !2369, inlinedAt: !3630)
!3638 = !DILocation(line: 187, column: 17, scope: !2369, inlinedAt: !3630)
!3639 = !DILocation(line: 188, column: 6, scope: !2369, inlinedAt: !3630)
!3640 = !DILocation(line: 188, column: 18, scope: !2369, inlinedAt: !3630)
!3641 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3624)
!3642 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3624)
!3643 = !DILocation(line: 1021, column: 3, scope: !3605)
!3644 = !DILocation(line: 0, scope: !3614)
!3645 = !DILocation(line: 1030, column: 3, scope: !3614)
!3646 = !DILocation(line: 1030, column: 26, scope: !3614)
!3647 = !DILocation(line: 1030, column: 30, scope: !3614)
!3648 = !DILocation(line: 0, scope: !2369, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 1031, column: 3, scope: !3614)
!3650 = !DILocation(line: 184, column: 6, scope: !2369, inlinedAt: !3649)
!3651 = !DILocation(line: 184, column: 12, scope: !2369, inlinedAt: !3649)
!3652 = !DILocation(line: 185, column: 8, scope: !2383, inlinedAt: !3649)
!3653 = !DILocation(line: 185, column: 23, scope: !2383, inlinedAt: !3649)
!3654 = !DILocation(line: 185, column: 19, scope: !2383, inlinedAt: !3649)
!3655 = !DILocation(line: 186, column: 5, scope: !2383, inlinedAt: !3649)
!3656 = !DILocation(line: 187, column: 6, scope: !2369, inlinedAt: !3649)
!3657 = !DILocation(line: 187, column: 17, scope: !2369, inlinedAt: !3649)
!3658 = !DILocation(line: 188, column: 6, scope: !2369, inlinedAt: !3649)
!3659 = !DILocation(line: 188, column: 18, scope: !2369, inlinedAt: !3649)
!3660 = !DILocation(line: 1032, column: 10, scope: !3614)
!3661 = !DILocation(line: 1033, column: 1, scope: !3614)
!3662 = !DILocation(line: 1032, column: 3, scope: !3614)
!3663 = distinct !DISubprogram(name: "quotearg_custom", scope: !498, file: !498, line: 1036, type: !3664, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!44, !46, !46, !46}
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3663, file: !498, line: 1036, type: !46)
!3668 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3663, file: !498, line: 1036, type: !46)
!3669 = !DILocalVariable(name: "arg", arg: 3, scope: !3663, file: !498, line: 1037, type: !46)
!3670 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1021, column: 10, scope: !3605, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 1039, column: 10, scope: !3663)
!3673 = !DILocation(line: 0, scope: !3663)
!3674 = !DILocation(line: 0, scope: !3605, inlinedAt: !3672)
!3675 = !DILocation(line: 0, scope: !3614, inlinedAt: !3671)
!3676 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3671)
!3677 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3671)
!3678 = !DILocation(line: 0, scope: !2369, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3671)
!3680 = !DILocation(line: 184, column: 6, scope: !2369, inlinedAt: !3679)
!3681 = !DILocation(line: 184, column: 12, scope: !2369, inlinedAt: !3679)
!3682 = !DILocation(line: 185, column: 8, scope: !2383, inlinedAt: !3679)
!3683 = !DILocation(line: 185, column: 23, scope: !2383, inlinedAt: !3679)
!3684 = !DILocation(line: 185, column: 19, scope: !2383, inlinedAt: !3679)
!3685 = !DILocation(line: 186, column: 5, scope: !2383, inlinedAt: !3679)
!3686 = !DILocation(line: 187, column: 6, scope: !2369, inlinedAt: !3679)
!3687 = !DILocation(line: 187, column: 17, scope: !2369, inlinedAt: !3679)
!3688 = !DILocation(line: 188, column: 6, scope: !2369, inlinedAt: !3679)
!3689 = !DILocation(line: 188, column: 18, scope: !2369, inlinedAt: !3679)
!3690 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3671)
!3691 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3671)
!3692 = !DILocation(line: 1039, column: 3, scope: !3663)
!3693 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !498, file: !498, line: 1043, type: !3694, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!44, !46, !46, !46, !103}
!3696 = !{!3697, !3698, !3699, !3700}
!3697 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3693, file: !498, line: 1043, type: !46)
!3698 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3693, file: !498, line: 1043, type: !46)
!3699 = !DILocalVariable(name: "arg", arg: 3, scope: !3693, file: !498, line: 1044, type: !46)
!3700 = !DILocalVariable(name: "argsize", arg: 4, scope: !3693, file: !498, line: 1044, type: !103)
!3701 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1046, column: 10, scope: !3693)
!3703 = !DILocation(line: 0, scope: !3693)
!3704 = !DILocation(line: 0, scope: !3614, inlinedAt: !3702)
!3705 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3702)
!3706 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3702)
!3707 = !DILocation(line: 0, scope: !2369, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3702)
!3709 = !DILocation(line: 184, column: 6, scope: !2369, inlinedAt: !3708)
!3710 = !DILocation(line: 184, column: 12, scope: !2369, inlinedAt: !3708)
!3711 = !DILocation(line: 185, column: 8, scope: !2383, inlinedAt: !3708)
!3712 = !DILocation(line: 185, column: 23, scope: !2383, inlinedAt: !3708)
!3713 = !DILocation(line: 185, column: 19, scope: !2383, inlinedAt: !3708)
!3714 = !DILocation(line: 186, column: 5, scope: !2383, inlinedAt: !3708)
!3715 = !DILocation(line: 187, column: 6, scope: !2369, inlinedAt: !3708)
!3716 = !DILocation(line: 187, column: 17, scope: !2369, inlinedAt: !3708)
!3717 = !DILocation(line: 188, column: 6, scope: !2369, inlinedAt: !3708)
!3718 = !DILocation(line: 188, column: 18, scope: !2369, inlinedAt: !3708)
!3719 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3702)
!3720 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3702)
!3721 = !DILocation(line: 1046, column: 3, scope: !3693)
!3722 = distinct !DISubprogram(name: "quote_n_mem", scope: !498, file: !498, line: 1061, type: !3723, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!46, !48, !46, !103}
!3725 = !{!3726, !3727, !3728}
!3726 = !DILocalVariable(name: "n", arg: 1, scope: !3722, file: !498, line: 1061, type: !48)
!3727 = !DILocalVariable(name: "arg", arg: 2, scope: !3722, file: !498, line: 1061, type: !46)
!3728 = !DILocalVariable(name: "argsize", arg: 3, scope: !3722, file: !498, line: 1061, type: !103)
!3729 = !DILocation(line: 0, scope: !3722)
!3730 = !DILocation(line: 1063, column: 10, scope: !3722)
!3731 = !DILocation(line: 1063, column: 3, scope: !3722)
!3732 = distinct !DISubprogram(name: "quote_mem", scope: !498, file: !498, line: 1067, type: !3733, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!46, !46, !103}
!3735 = !{!3736, !3737}
!3736 = !DILocalVariable(name: "arg", arg: 1, scope: !3732, file: !498, line: 1067, type: !46)
!3737 = !DILocalVariable(name: "argsize", arg: 2, scope: !3732, file: !498, line: 1067, type: !103)
!3738 = !DILocation(line: 0, scope: !3732)
!3739 = !DILocation(line: 0, scope: !3722, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 1069, column: 10, scope: !3732)
!3741 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3740)
!3742 = !DILocation(line: 1069, column: 3, scope: !3732)
!3743 = distinct !DISubprogram(name: "quote_n", scope: !498, file: !498, line: 1073, type: !3744, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!46, !48, !46}
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "n", arg: 1, scope: !3743, file: !498, line: 1073, type: !48)
!3748 = !DILocalVariable(name: "arg", arg: 2, scope: !3743, file: !498, line: 1073, type: !46)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 0, scope: !3722, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 1075, column: 10, scope: !3743)
!3752 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3751)
!3753 = !DILocation(line: 1075, column: 3, scope: !3743)
!3754 = distinct !DISubprogram(name: "quote", scope: !498, file: !498, line: 1079, type: !3755, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!46, !46}
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "arg", arg: 1, scope: !3754, file: !498, line: 1079, type: !46)
!3759 = !DILocation(line: 0, scope: !3754)
!3760 = !DILocation(line: 0, scope: !3743, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 1081, column: 10, scope: !3754)
!3762 = !DILocation(line: 0, scope: !3722, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1075, column: 10, scope: !3743, inlinedAt: !3761)
!3764 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3763)
!3765 = !DILocation(line: 1081, column: 3, scope: !3754)
!3766 = distinct !DISubprogram(name: "setlocale_null_r", scope: !612, file: !612, line: 269, type: !3767, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!48, !48, !44, !103}
!3769 = !{!3770, !3771, !3772}
!3770 = !DILocalVariable(name: "category", arg: 1, scope: !3766, file: !612, line: 269, type: !48)
!3771 = !DILocalVariable(name: "buf", arg: 2, scope: !3766, file: !612, line: 269, type: !44)
!3772 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3766, file: !612, line: 269, type: !103)
!3773 = !DILocation(line: 0, scope: !3766)
!3774 = !DILocalVariable(name: "category", arg: 1, scope: !3775, file: !612, line: 91, type: !48)
!3775 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !612, file: !612, line: 91, type: !3767, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3776)
!3776 = !{!3774, !3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "buf", arg: 2, scope: !3775, file: !612, line: 91, type: !44)
!3778 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3775, file: !612, line: 91, type: !103)
!3779 = !DILocalVariable(name: "result", scope: !3775, file: !612, line: 140, type: !46)
!3780 = !DILocalVariable(name: "length", scope: !3781, file: !612, line: 154, type: !103)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !612, line: 153, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3775, file: !612, line: 142, column: 7)
!3783 = !DILocation(line: 0, scope: !3775, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 274, column: 10, scope: !3766)
!3785 = !DILocalVariable(name: "category", arg: 1, scope: !3786, file: !612, line: 60, type: !48)
!3786 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !612, file: !612, line: 60, type: !391, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3787)
!3787 = !{!3785, !3788}
!3788 = !DILocalVariable(name: "result", scope: !3786, file: !612, line: 62, type: !46)
!3789 = !DILocation(line: 0, scope: !3786, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 140, column: 24, scope: !3775, inlinedAt: !3784)
!3791 = !DILocation(line: 62, column: 24, scope: !3786, inlinedAt: !3790)
!3792 = !DILocation(line: 142, column: 14, scope: !3782, inlinedAt: !3784)
!3793 = !DILocation(line: 142, column: 7, scope: !3775, inlinedAt: !3784)
!3794 = !DILocation(line: 145, column: 19, scope: !3795, inlinedAt: !3784)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !612, line: 145, column: 11)
!3796 = distinct !DILexicalBlock(scope: !3782, file: !612, line: 143, column: 5)
!3797 = !DILocation(line: 145, column: 11, scope: !3796, inlinedAt: !3784)
!3798 = !DILocation(line: 149, column: 16, scope: !3795, inlinedAt: !3784)
!3799 = !DILocation(line: 149, column: 9, scope: !3795, inlinedAt: !3784)
!3800 = !DILocation(line: 154, column: 23, scope: !3781, inlinedAt: !3784)
!3801 = !DILocation(line: 0, scope: !3781, inlinedAt: !3784)
!3802 = !DILocation(line: 155, column: 18, scope: !3803, inlinedAt: !3784)
!3803 = distinct !DILexicalBlock(scope: !3781, file: !612, line: 155, column: 11)
!3804 = !DILocation(line: 155, column: 11, scope: !3781, inlinedAt: !3784)
!3805 = !DILocation(line: 157, column: 39, scope: !3806, inlinedAt: !3784)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !612, line: 156, column: 9)
!3807 = !DILocalVariable(name: "__dest", arg: 1, scope: !3808, file: !1666, line: 31, type: !3811)
!3808 = distinct !DISubprogram(name: "memcpy", scope: !1666, file: !1666, line: 31, type: !3809, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3813)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!101, !3811, !3812, !103}
!3811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!3812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!3813 = !{!3807, !3814, !3815}
!3814 = !DILocalVariable(name: "__src", arg: 2, scope: !3808, file: !1666, line: 31, type: !3812)
!3815 = !DILocalVariable(name: "__len", arg: 3, scope: !3808, file: !1666, line: 31, type: !103)
!3816 = !DILocation(line: 0, scope: !3808, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 157, column: 11, scope: !3806, inlinedAt: !3784)
!3818 = !DILocation(line: 34, column: 10, scope: !3808, inlinedAt: !3817)
!3819 = !DILocation(line: 158, column: 11, scope: !3806, inlinedAt: !3784)
!3820 = !DILocation(line: 162, column: 23, scope: !3821, inlinedAt: !3784)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !612, line: 162, column: 15)
!3822 = distinct !DILexicalBlock(scope: !3803, file: !612, line: 161, column: 9)
!3823 = !DILocation(line: 162, column: 15, scope: !3822, inlinedAt: !3784)
!3824 = !DILocation(line: 167, column: 44, scope: !3825, inlinedAt: !3784)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !612, line: 163, column: 13)
!3826 = !DILocation(line: 0, scope: !3808, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 167, column: 15, scope: !3825, inlinedAt: !3784)
!3828 = !DILocation(line: 34, column: 10, scope: !3808, inlinedAt: !3827)
!3829 = !DILocation(line: 168, column: 15, scope: !3825, inlinedAt: !3784)
!3830 = !DILocation(line: 168, column: 32, scope: !3825, inlinedAt: !3784)
!3831 = !DILocation(line: 169, column: 13, scope: !3825, inlinedAt: !3784)
!3832 = !DILocation(line: 0, scope: !3782, inlinedAt: !3784)
!3833 = !DILocation(line: 274, column: 3, scope: !3766)
!3834 = distinct !DISubprogram(name: "setlocale_null", scope: !612, file: !612, line: 301, type: !391, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3835)
!3835 = !{!3836}
!3836 = !DILocalVariable(name: "category", arg: 1, scope: !3834, file: !612, line: 301, type: !48)
!3837 = !DILocation(line: 0, scope: !3834)
!3838 = !DILocation(line: 0, scope: !3786, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 304, column: 10, scope: !3834)
!3840 = !DILocation(line: 62, column: 24, scope: !3786, inlinedAt: !3839)
!3841 = !DILocation(line: 304, column: 3, scope: !3834)
!3842 = distinct !DISubprogram(name: "version_etc_arn", scope: !615, file: !615, line: 61, type: !3843, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !3848)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3845, !46, !46, !46, !3847, !103}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !625)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854}
!3849 = !DILocalVariable(name: "stream", arg: 1, scope: !3842, file: !615, line: 61, type: !3845)
!3850 = !DILocalVariable(name: "command_name", arg: 2, scope: !3842, file: !615, line: 62, type: !46)
!3851 = !DILocalVariable(name: "package", arg: 3, scope: !3842, file: !615, line: 62, type: !46)
!3852 = !DILocalVariable(name: "version", arg: 4, scope: !3842, file: !615, line: 63, type: !46)
!3853 = !DILocalVariable(name: "authors", arg: 5, scope: !3842, file: !615, line: 64, type: !3847)
!3854 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3842, file: !615, line: 64, type: !103)
!3855 = !DILocation(line: 0, scope: !3842)
!3856 = !DILocation(line: 66, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3842, file: !615, line: 66, column: 7)
!3858 = !DILocation(line: 66, column: 7, scope: !3842)
!3859 = !DILocation(line: 67, column: 5, scope: !3857)
!3860 = !DILocation(line: 69, column: 5, scope: !3857)
!3861 = !DILocation(line: 83, column: 3, scope: !3842)
!3862 = !DILocation(line: 85, column: 3, scope: !3842)
!3863 = !DILocation(line: 88, column: 3, scope: !3842)
!3864 = !DILocation(line: 95, column: 3, scope: !3842)
!3865 = !DILocation(line: 97, column: 3, scope: !3842)
!3866 = !DILocation(line: 105, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3842, file: !615, line: 98, column: 5)
!3868 = !DILocation(line: 106, column: 7, scope: !3867)
!3869 = !DILocation(line: 109, column: 7, scope: !3867)
!3870 = !DILocation(line: 110, column: 7, scope: !3867)
!3871 = !DILocation(line: 113, column: 7, scope: !3867)
!3872 = !DILocation(line: 115, column: 7, scope: !3867)
!3873 = !DILocation(line: 120, column: 7, scope: !3867)
!3874 = !DILocation(line: 122, column: 7, scope: !3867)
!3875 = !DILocation(line: 127, column: 7, scope: !3867)
!3876 = !DILocation(line: 129, column: 7, scope: !3867)
!3877 = !DILocation(line: 134, column: 7, scope: !3867)
!3878 = !DILocation(line: 137, column: 7, scope: !3867)
!3879 = !DILocation(line: 142, column: 7, scope: !3867)
!3880 = !DILocation(line: 145, column: 7, scope: !3867)
!3881 = !DILocation(line: 150, column: 7, scope: !3867)
!3882 = !DILocation(line: 154, column: 7, scope: !3867)
!3883 = !DILocation(line: 159, column: 7, scope: !3867)
!3884 = !DILocation(line: 163, column: 7, scope: !3867)
!3885 = !DILocation(line: 170, column: 7, scope: !3867)
!3886 = !DILocation(line: 174, column: 7, scope: !3867)
!3887 = !DILocation(line: 176, column: 1, scope: !3842)
!3888 = distinct !DISubprogram(name: "version_etc_ar", scope: !615, file: !615, line: 183, type: !3889, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3845, !46, !46, !46, !3847}
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897}
!3892 = !DILocalVariable(name: "stream", arg: 1, scope: !3888, file: !615, line: 183, type: !3845)
!3893 = !DILocalVariable(name: "command_name", arg: 2, scope: !3888, file: !615, line: 184, type: !46)
!3894 = !DILocalVariable(name: "package", arg: 3, scope: !3888, file: !615, line: 184, type: !46)
!3895 = !DILocalVariable(name: "version", arg: 4, scope: !3888, file: !615, line: 185, type: !46)
!3896 = !DILocalVariable(name: "authors", arg: 5, scope: !3888, file: !615, line: 185, type: !3847)
!3897 = !DILocalVariable(name: "n_authors", scope: !3888, file: !615, line: 187, type: !103)
!3898 = !DILocation(line: 0, scope: !3888)
!3899 = !DILocation(line: 189, column: 8, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3888, file: !615, line: 189, column: 3)
!3901 = !DILocation(line: 0, scope: !3900)
!3902 = !DILocation(line: 189, column: 23, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3900, file: !615, line: 189, column: 3)
!3904 = !DILocation(line: 189, column: 3, scope: !3900)
!3905 = !DILocation(line: 189, column: 52, scope: !3903)
!3906 = distinct !{!3906, !3904, !3907}
!3907 = !DILocation(line: 190, column: 5, scope: !3900)
!3908 = !DILocation(line: 191, column: 3, scope: !3888)
!3909 = !DILocation(line: 192, column: 1, scope: !3888)
!3910 = distinct !DISubprogram(name: "version_etc_va", scope: !615, file: !615, line: 199, type: !3911, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !3920)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3845, !46, !46, !46, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !615, line: 192, size: 192, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3914, file: !615, line: 192, baseType: !7, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3914, file: !615, line: 192, baseType: !7, size: 32, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3914, file: !615, line: 192, baseType: !101, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3914, file: !615, line: 192, baseType: !101, size: 64, offset: 128)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DILocalVariable(name: "stream", arg: 1, scope: !3910, file: !615, line: 199, type: !3845)
!3922 = !DILocalVariable(name: "command_name", arg: 2, scope: !3910, file: !615, line: 200, type: !46)
!3923 = !DILocalVariable(name: "package", arg: 3, scope: !3910, file: !615, line: 200, type: !46)
!3924 = !DILocalVariable(name: "version", arg: 4, scope: !3910, file: !615, line: 201, type: !46)
!3925 = !DILocalVariable(name: "authors", arg: 5, scope: !3910, file: !615, line: 201, type: !3913)
!3926 = !DILocalVariable(name: "n_authors", scope: !3910, file: !615, line: 203, type: !103)
!3927 = !DILocalVariable(name: "authtab", scope: !3910, file: !615, line: 204, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !567)
!3929 = !DILocation(line: 0, scope: !3910)
!3930 = !DILocation(line: 204, column: 3, scope: !3910)
!3931 = !DILocation(line: 204, column: 15, scope: !3910)
!3932 = !DILocation(line: 0, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !615, line: 206, column: 3)
!3934 = distinct !DILexicalBlock(scope: !3910, file: !615, line: 206, column: 3)
!3935 = !DILocation(line: 208, column: 35, scope: !3933)
!3936 = !DILocation(line: 208, column: 14, scope: !3933)
!3937 = !DILocation(line: 208, column: 33, scope: !3933)
!3938 = !DILocation(line: 208, column: 67, scope: !3933)
!3939 = !DILocation(line: 206, column: 3, scope: !3934)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = !DILocation(line: 211, column: 3, scope: !3910)
!3942 = !DILocation(line: 213, column: 1, scope: !3910)
!3943 = distinct !DISubprogram(name: "version_etc", scope: !615, file: !615, line: 230, type: !3944, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3845, !46, !46, !46, null}
!3946 = !{!3947, !3948, !3949, !3950, !3951}
!3947 = !DILocalVariable(name: "stream", arg: 1, scope: !3943, file: !615, line: 230, type: !3845)
!3948 = !DILocalVariable(name: "command_name", arg: 2, scope: !3943, file: !615, line: 231, type: !46)
!3949 = !DILocalVariable(name: "package", arg: 3, scope: !3943, file: !615, line: 231, type: !46)
!3950 = !DILocalVariable(name: "version", arg: 4, scope: !3943, file: !615, line: 232, type: !46)
!3951 = !DILocalVariable(name: "authors", scope: !3943, file: !615, line: 234, type: !3952)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !51, line: 52, baseType: !3953)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3954, line: 32, baseType: !3955)
!3954 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !615, line: 234, baseType: !3956)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3914, size: 192, elements: !86)
!3957 = !DILocation(line: 0, scope: !3943)
!3958 = !DILocation(line: 234, column: 3, scope: !3943)
!3959 = !DILocation(line: 234, column: 11, scope: !3943)
!3960 = !DILocation(line: 236, column: 3, scope: !3943)
!3961 = !DILocation(line: 237, column: 3, scope: !3943)
!3962 = !DILocation(line: 238, column: 3, scope: !3943)
!3963 = !DILocation(line: 239, column: 1, scope: !3943)
!3964 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !615, file: !615, line: 242, type: !130, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !49)
!3965 = !DILocation(line: 244, column: 3, scope: !3964)
!3966 = !DILocation(line: 249, column: 3, scope: !3964)
!3967 = !DILocation(line: 255, column: 3, scope: !3964)
!3968 = !DILocation(line: 260, column: 3, scope: !3964)
!3969 = !DILocation(line: 262, column: 1, scope: !3964)
!3970 = distinct !DISubprogram(name: "xnmalloc", scope: !227, file: !227, line: 99, type: !3971, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!101, !103, !103}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "n", arg: 1, scope: !3970, file: !227, line: 99, type: !103)
!3975 = !DILocalVariable(name: "s", arg: 2, scope: !3970, file: !227, line: 99, type: !103)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 101, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !227, line: 101, column: 7)
!3979 = !DILocation(line: 101, column: 7, scope: !3970)
!3980 = !DILocation(line: 102, column: 5, scope: !3978)
!3981 = !DILocation(line: 103, column: 21, scope: !3970)
!3982 = !DILocalVariable(name: "n", arg: 1, scope: !3983, file: !657, line: 39, type: !103)
!3983 = distinct !DISubprogram(name: "xmalloc", scope: !657, file: !657, line: 39, type: !3984, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!101, !103}
!3986 = !{!3982, !3987}
!3987 = !DILocalVariable(name: "p", scope: !3983, file: !657, line: 41, type: !101)
!3988 = !DILocation(line: 0, scope: !3983, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 103, column: 10, scope: !3970)
!3990 = !DILocation(line: 41, column: 13, scope: !3983, inlinedAt: !3989)
!3991 = !DILocation(line: 42, column: 8, scope: !3992, inlinedAt: !3989)
!3992 = distinct !DILexicalBlock(scope: !3983, file: !657, line: 42, column: 7)
!3993 = !DILocation(line: 42, column: 15, scope: !3992, inlinedAt: !3989)
!3994 = !DILocation(line: 42, column: 10, scope: !3992, inlinedAt: !3989)
!3995 = !DILocation(line: 43, column: 5, scope: !3992, inlinedAt: !3989)
!3996 = !DILocation(line: 103, column: 3, scope: !3970)
!3997 = !DILocation(line: 0, scope: !3983)
!3998 = !DILocation(line: 41, column: 13, scope: !3983)
!3999 = !DILocation(line: 42, column: 8, scope: !3992)
!4000 = !DILocation(line: 42, column: 15, scope: !3992)
!4001 = !DILocation(line: 42, column: 10, scope: !3992)
!4002 = !DILocation(line: 43, column: 5, scope: !3992)
!4003 = !DILocation(line: 44, column: 3, scope: !3983)
!4004 = distinct !DISubprogram(name: "xnrealloc", scope: !227, file: !227, line: 112, type: !4005, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!101, !101, !103, !103}
!4007 = !{!4008, !4009, !4010}
!4008 = !DILocalVariable(name: "p", arg: 1, scope: !4004, file: !227, line: 112, type: !101)
!4009 = !DILocalVariable(name: "n", arg: 2, scope: !4004, file: !227, line: 112, type: !103)
!4010 = !DILocalVariable(name: "s", arg: 3, scope: !4004, file: !227, line: 112, type: !103)
!4011 = !DILocation(line: 0, scope: !4004)
!4012 = !DILocation(line: 114, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4004, file: !227, line: 114, column: 7)
!4014 = !DILocation(line: 114, column: 7, scope: !4004)
!4015 = !DILocation(line: 115, column: 5, scope: !4013)
!4016 = !DILocation(line: 116, column: 25, scope: !4004)
!4017 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !657, line: 51, type: !101)
!4018 = distinct !DISubprogram(name: "xrealloc", scope: !657, file: !657, line: 51, type: !4019, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!101, !101, !103}
!4021 = !{!4017, !4022}
!4022 = !DILocalVariable(name: "n", arg: 2, scope: !4018, file: !657, line: 51, type: !103)
!4023 = !DILocation(line: 0, scope: !4018, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 116, column: 10, scope: !4004)
!4025 = !DILocation(line: 53, column: 8, scope: !4026, inlinedAt: !4024)
!4026 = distinct !DILexicalBlock(scope: !4018, file: !657, line: 53, column: 7)
!4027 = !DILocation(line: 53, column: 13, scope: !4026, inlinedAt: !4024)
!4028 = !DILocation(line: 53, column: 10, scope: !4026, inlinedAt: !4024)
!4029 = !DILocation(line: 57, column: 7, scope: !4030, inlinedAt: !4024)
!4030 = distinct !DILexicalBlock(scope: !4026, file: !657, line: 54, column: 5)
!4031 = !DILocation(line: 58, column: 7, scope: !4030, inlinedAt: !4024)
!4032 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4024)
!4033 = !DILocation(line: 62, column: 8, scope: !4034, inlinedAt: !4024)
!4034 = distinct !DILexicalBlock(scope: !4018, file: !657, line: 62, column: 7)
!4035 = !DILocation(line: 62, column: 13, scope: !4034, inlinedAt: !4024)
!4036 = !DILocation(line: 62, column: 10, scope: !4034, inlinedAt: !4024)
!4037 = !DILocation(line: 63, column: 5, scope: !4034, inlinedAt: !4024)
!4038 = !DILocation(line: 116, column: 3, scope: !4004)
!4039 = !DILocation(line: 0, scope: !4018)
!4040 = !DILocation(line: 53, column: 8, scope: !4026)
!4041 = !DILocation(line: 53, column: 13, scope: !4026)
!4042 = !DILocation(line: 53, column: 10, scope: !4026)
!4043 = !DILocation(line: 57, column: 7, scope: !4030)
!4044 = !DILocation(line: 58, column: 7, scope: !4030)
!4045 = !DILocation(line: 61, column: 7, scope: !4018)
!4046 = !DILocation(line: 62, column: 8, scope: !4034)
!4047 = !DILocation(line: 62, column: 13, scope: !4034)
!4048 = !DILocation(line: 62, column: 10, scope: !4034)
!4049 = !DILocation(line: 63, column: 5, scope: !4034)
!4050 = !DILocation(line: 65, column: 1, scope: !4018)
!4051 = !DILocation(line: 0, scope: !660)
!4052 = !DILocation(line: 176, column: 14, scope: !660)
!4053 = !DILocation(line: 178, column: 9, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !660, file: !227, line: 178, column: 7)
!4055 = !DILocation(line: 178, column: 7, scope: !660)
!4056 = !DILocation(line: 180, column: 13, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !227, line: 180, column: 11)
!4058 = distinct !DILexicalBlock(scope: !4054, file: !227, line: 179, column: 5)
!4059 = !DILocation(line: 180, column: 11, scope: !4058)
!4060 = !DILocation(line: 188, column: 30, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !227, line: 181, column: 9)
!4062 = !DILocation(line: 189, column: 16, scope: !4061)
!4063 = !DILocation(line: 189, column: 13, scope: !4061)
!4064 = !DILocation(line: 190, column: 9, scope: !4061)
!4065 = !DILocation(line: 191, column: 11, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !227, line: 191, column: 11)
!4067 = !DILocation(line: 191, column: 11, scope: !4058)
!4068 = !DILocation(line: 206, column: 7, scope: !660)
!4069 = !DILocation(line: 207, column: 25, scope: !660)
!4070 = !DILocation(line: 0, scope: !4018, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 207, column: 10, scope: !660)
!4072 = !DILocation(line: 53, column: 10, scope: !4026, inlinedAt: !4071)
!4073 = !DILocation(line: 192, column: 9, scope: !4066)
!4074 = !DILocation(line: 200, column: 69, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !227, line: 200, column: 11)
!4076 = distinct !DILexicalBlock(scope: !4054, file: !227, line: 195, column: 5)
!4077 = !DILocation(line: 201, column: 11, scope: !4075)
!4078 = !DILocation(line: 200, column: 11, scope: !4076)
!4079 = !DILocation(line: 202, column: 9, scope: !4075)
!4080 = !DILocation(line: 203, column: 14, scope: !4076)
!4081 = !DILocation(line: 203, column: 18, scope: !4076)
!4082 = !DILocation(line: 203, column: 9, scope: !4076)
!4083 = !DILocation(line: 53, column: 8, scope: !4026, inlinedAt: !4071)
!4084 = !DILocation(line: 57, column: 7, scope: !4030, inlinedAt: !4071)
!4085 = !DILocation(line: 58, column: 7, scope: !4030, inlinedAt: !4071)
!4086 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4071)
!4087 = !DILocation(line: 62, column: 8, scope: !4034, inlinedAt: !4071)
!4088 = !DILocation(line: 62, column: 13, scope: !4034, inlinedAt: !4071)
!4089 = !DILocation(line: 62, column: 10, scope: !4034, inlinedAt: !4071)
!4090 = !DILocation(line: 63, column: 5, scope: !4034, inlinedAt: !4071)
!4091 = !DILocation(line: 207, column: 3, scope: !660)
!4092 = distinct !DISubprogram(name: "xcharalloc", scope: !227, file: !227, line: 216, type: !3181, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4093)
!4093 = !{!4094}
!4094 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !227, line: 216, type: !103)
!4095 = !DILocation(line: 0, scope: !4092)
!4096 = !DILocation(line: 0, scope: !3983, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 218, column: 10, scope: !4092)
!4098 = !DILocation(line: 41, column: 13, scope: !3983, inlinedAt: !4097)
!4099 = !DILocation(line: 42, column: 8, scope: !3992, inlinedAt: !4097)
!4100 = !DILocation(line: 42, column: 15, scope: !3992, inlinedAt: !4097)
!4101 = !DILocation(line: 42, column: 10, scope: !3992, inlinedAt: !4097)
!4102 = !DILocation(line: 43, column: 5, scope: !3992, inlinedAt: !4097)
!4103 = !DILocation(line: 218, column: 3, scope: !4092)
!4104 = distinct !DISubprogram(name: "x2realloc", scope: !657, file: !657, line: 74, type: !4105, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!101, !101, !663}
!4107 = !{!4108, !4109}
!4108 = !DILocalVariable(name: "p", arg: 1, scope: !4104, file: !657, line: 74, type: !101)
!4109 = !DILocalVariable(name: "pn", arg: 2, scope: !4104, file: !657, line: 74, type: !663)
!4110 = !DILocation(line: 0, scope: !4104)
!4111 = !DILocation(line: 0, scope: !660, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 76, column: 10, scope: !4104)
!4113 = !DILocation(line: 176, column: 14, scope: !660, inlinedAt: !4112)
!4114 = !DILocation(line: 178, column: 9, scope: !4054, inlinedAt: !4112)
!4115 = !DILocation(line: 178, column: 7, scope: !660, inlinedAt: !4112)
!4116 = !DILocation(line: 180, column: 13, scope: !4057, inlinedAt: !4112)
!4117 = !DILocation(line: 180, column: 11, scope: !4058, inlinedAt: !4112)
!4118 = !DILocation(line: 191, column: 11, scope: !4066, inlinedAt: !4112)
!4119 = !DILocation(line: 191, column: 11, scope: !4058, inlinedAt: !4112)
!4120 = !DILocation(line: 206, column: 7, scope: !660, inlinedAt: !4112)
!4121 = !DILocation(line: 0, scope: !4018, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 207, column: 10, scope: !660, inlinedAt: !4112)
!4123 = !DILocation(line: 53, column: 10, scope: !4026, inlinedAt: !4122)
!4124 = !DILocation(line: 192, column: 9, scope: !4066, inlinedAt: !4112)
!4125 = !DILocation(line: 201, column: 11, scope: !4075, inlinedAt: !4112)
!4126 = !DILocation(line: 200, column: 11, scope: !4076, inlinedAt: !4112)
!4127 = !DILocation(line: 202, column: 9, scope: !4075, inlinedAt: !4112)
!4128 = !DILocation(line: 203, column: 14, scope: !4076, inlinedAt: !4112)
!4129 = !DILocation(line: 203, column: 18, scope: !4076, inlinedAt: !4112)
!4130 = !DILocation(line: 203, column: 9, scope: !4076, inlinedAt: !4112)
!4131 = !DILocation(line: 53, column: 8, scope: !4026, inlinedAt: !4122)
!4132 = !DILocation(line: 57, column: 7, scope: !4030, inlinedAt: !4122)
!4133 = !DILocation(line: 58, column: 7, scope: !4030, inlinedAt: !4122)
!4134 = !DILocation(line: 61, column: 7, scope: !4018, inlinedAt: !4122)
!4135 = !DILocation(line: 62, column: 8, scope: !4034, inlinedAt: !4122)
!4136 = !DILocation(line: 62, column: 13, scope: !4034, inlinedAt: !4122)
!4137 = !DILocation(line: 62, column: 10, scope: !4034, inlinedAt: !4122)
!4138 = !DILocation(line: 63, column: 5, scope: !4034, inlinedAt: !4122)
!4139 = !DILocation(line: 76, column: 3, scope: !4104)
!4140 = distinct !DISubprogram(name: "xzalloc", scope: !657, file: !657, line: 84, type: !3984, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4141)
!4141 = !{!4142}
!4142 = !DILocalVariable(name: "n", arg: 1, scope: !4140, file: !657, line: 84, type: !103)
!4143 = !DILocation(line: 0, scope: !4140)
!4144 = !DILocalVariable(name: "n", arg: 1, scope: !4145, file: !657, line: 93, type: !103)
!4145 = distinct !DISubprogram(name: "xcalloc", scope: !657, file: !657, line: 93, type: !3971, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4146)
!4146 = !{!4144, !4147, !4148}
!4147 = !DILocalVariable(name: "s", arg: 2, scope: !4145, file: !657, line: 93, type: !103)
!4148 = !DILocalVariable(name: "p", scope: !4145, file: !657, line: 95, type: !101)
!4149 = !DILocation(line: 0, scope: !4145, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 86, column: 10, scope: !4140)
!4151 = !DILocation(line: 100, column: 7, scope: !4152, inlinedAt: !4150)
!4152 = distinct !DILexicalBlock(scope: !4145, file: !657, line: 100, column: 7)
!4153 = !DILocation(line: 101, column: 7, scope: !4152, inlinedAt: !4150)
!4154 = !DILocation(line: 101, column: 18, scope: !4152, inlinedAt: !4150)
!4155 = !DILocation(line: 101, column: 16, scope: !4152, inlinedAt: !4150)
!4156 = !DILocation(line: 100, column: 7, scope: !4145, inlinedAt: !4150)
!4157 = !DILocation(line: 102, column: 5, scope: !4152, inlinedAt: !4150)
!4158 = !DILocation(line: 86, column: 3, scope: !4140)
!4159 = !DILocation(line: 0, scope: !4145)
!4160 = !DILocation(line: 100, column: 7, scope: !4152)
!4161 = !DILocation(line: 101, column: 7, scope: !4152)
!4162 = !DILocation(line: 101, column: 18, scope: !4152)
!4163 = !DILocation(line: 101, column: 16, scope: !4152)
!4164 = !DILocation(line: 100, column: 7, scope: !4145)
!4165 = !DILocation(line: 102, column: 5, scope: !4152)
!4166 = !DILocation(line: 103, column: 3, scope: !4145)
!4167 = distinct !DISubprogram(name: "xmemdup", scope: !657, file: !657, line: 111, type: !4168, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!101, !268, !103}
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "p", arg: 1, scope: !4167, file: !657, line: 111, type: !268)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !657, line: 111, type: !103)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocation(line: 0, scope: !3983, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 113, column: 18, scope: !4167)
!4176 = !DILocation(line: 41, column: 13, scope: !3983, inlinedAt: !4175)
!4177 = !DILocation(line: 42, column: 8, scope: !3992, inlinedAt: !4175)
!4178 = !DILocation(line: 42, column: 15, scope: !3992, inlinedAt: !4175)
!4179 = !DILocation(line: 42, column: 10, scope: !3992, inlinedAt: !4175)
!4180 = !DILocation(line: 43, column: 5, scope: !3992, inlinedAt: !4175)
!4181 = !DILocalVariable(name: "__dest", arg: 1, scope: !4182, file: !1666, line: 31, type: !3811)
!4182 = distinct !DISubprogram(name: "memcpy", scope: !1666, file: !1666, line: 31, type: !3809, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4183)
!4183 = !{!4181, !4184, !4185}
!4184 = !DILocalVariable(name: "__src", arg: 2, scope: !4182, file: !1666, line: 31, type: !3812)
!4185 = !DILocalVariable(name: "__len", arg: 3, scope: !4182, file: !1666, line: 31, type: !103)
!4186 = !DILocation(line: 0, scope: !4182, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 113, column: 10, scope: !4167)
!4188 = !DILocation(line: 34, column: 10, scope: !4182, inlinedAt: !4187)
!4189 = !DILocation(line: 113, column: 3, scope: !4167)
!4190 = distinct !DISubprogram(name: "xstrdup", scope: !657, file: !657, line: 119, type: !123, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4191)
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "string", arg: 1, scope: !4190, file: !657, line: 119, type: !46)
!4193 = !DILocation(line: 0, scope: !4190)
!4194 = !DILocation(line: 121, column: 27, scope: !4190)
!4195 = !DILocation(line: 121, column: 43, scope: !4190)
!4196 = !DILocation(line: 0, scope: !4167, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 121, column: 10, scope: !4190)
!4198 = !DILocation(line: 0, scope: !3983, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 113, column: 18, scope: !4167, inlinedAt: !4197)
!4200 = !DILocation(line: 41, column: 13, scope: !3983, inlinedAt: !4199)
!4201 = !DILocation(line: 42, column: 8, scope: !3992, inlinedAt: !4199)
!4202 = !DILocation(line: 42, column: 15, scope: !3992, inlinedAt: !4199)
!4203 = !DILocation(line: 42, column: 10, scope: !3992, inlinedAt: !4199)
!4204 = !DILocation(line: 43, column: 5, scope: !3992, inlinedAt: !4199)
!4205 = !DILocation(line: 0, scope: !4182, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 113, column: 10, scope: !4167, inlinedAt: !4197)
!4207 = !DILocation(line: 34, column: 10, scope: !4182, inlinedAt: !4206)
!4208 = !DILocation(line: 121, column: 3, scope: !4190)
!4209 = distinct !DISubprogram(name: "xalloc_die", scope: !678, file: !678, line: 32, type: !130, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !677, retainedNodes: !49)
!4210 = !DILocation(line: 34, column: 10, scope: !4209)
!4211 = !DILocation(line: 34, column: 33, scope: !4209)
!4212 = !DILocation(line: 34, column: 3, scope: !4209)
!4213 = !DILocation(line: 40, column: 3, scope: !4209)
!4214 = distinct !DISubprogram(name: "rpl_calloc", scope: !681, file: !681, line: 42, type: !3971, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !4215)
!4215 = !{!4216, !4217, !4218, !4219}
!4216 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !681, line: 42, type: !103)
!4217 = !DILocalVariable(name: "s", arg: 2, scope: !4214, file: !681, line: 42, type: !103)
!4218 = !DILocalVariable(name: "result", scope: !4214, file: !681, line: 44, type: !101)
!4219 = !DILocalVariable(name: "bytes", scope: !4220, file: !681, line: 56, type: !103)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !681, line: 53, column: 5)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !681, line: 47, column: 7)
!4222 = !DILocation(line: 0, scope: !4214)
!4223 = !DILocation(line: 47, column: 9, scope: !4221)
!4224 = !DILocation(line: 47, column: 19, scope: !4221)
!4225 = !DILocation(line: 47, column: 14, scope: !4221)
!4226 = !DILocation(line: 0, scope: !4220)
!4227 = !DILocation(line: 57, column: 21, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4220, file: !681, line: 57, column: 11)
!4229 = !DILocation(line: 57, column: 11, scope: !4220)
!4230 = !DILocation(line: 59, column: 11, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4228, file: !681, line: 58, column: 9)
!4232 = !DILocation(line: 59, column: 17, scope: !4231)
!4233 = !DILocation(line: 65, column: 12, scope: !4214)
!4234 = !DILocation(line: 72, column: 3, scope: !4214)
!4235 = !DILocation(line: 73, column: 1, scope: !4214)
!4236 = distinct !DISubprogram(name: "rpl_fclose", scope: !684, file: !684, line: 58, type: !4237, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4241)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!48, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !690)
!4241 = !{!4242, !4243, !4244, !4245}
!4242 = !DILocalVariable(name: "fp", arg: 1, scope: !4236, file: !684, line: 58, type: !4239)
!4243 = !DILocalVariable(name: "saved_errno", scope: !4236, file: !684, line: 60, type: !48)
!4244 = !DILocalVariable(name: "fd", scope: !4236, file: !684, line: 61, type: !48)
!4245 = !DILocalVariable(name: "result", scope: !4236, file: !684, line: 62, type: !48)
!4246 = !DILocation(line: 0, scope: !4236)
!4247 = !DILocation(line: 65, column: 8, scope: !4236)
!4248 = !DILocation(line: 66, column: 10, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4236, file: !684, line: 66, column: 7)
!4250 = !DILocation(line: 66, column: 7, scope: !4236)
!4251 = !DILocation(line: 67, column: 12, scope: !4249)
!4252 = !DILocation(line: 67, column: 5, scope: !4249)
!4253 = !DILocation(line: 72, column: 9, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4236, file: !684, line: 72, column: 7)
!4255 = !DILocation(line: 72, column: 23, scope: !4254)
!4256 = !DILocation(line: 72, column: 33, scope: !4254)
!4257 = !DILocation(line: 72, column: 26, scope: !4254)
!4258 = !DILocation(line: 72, column: 59, scope: !4254)
!4259 = !DILocation(line: 73, column: 7, scope: !4254)
!4260 = !DILocation(line: 73, column: 10, scope: !4254)
!4261 = !DILocation(line: 72, column: 7, scope: !4236)
!4262 = !DILocation(line: 100, column: 12, scope: !4236)
!4263 = !DILocation(line: 105, column: 7, scope: !4236)
!4264 = !DILocation(line: 74, column: 19, scope: !4254)
!4265 = !DILocation(line: 105, column: 19, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4236, file: !684, line: 105, column: 7)
!4267 = !DILocation(line: 107, column: 13, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !684, line: 106, column: 5)
!4269 = !DILocation(line: 109, column: 5, scope: !4268)
!4270 = !DILocation(line: 112, column: 1, scope: !4236)
!4271 = distinct !DISubprogram(name: "rpl_fflush", scope: !728, file: !728, line: 129, type: !4272, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !4276)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!48, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !734)
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "stream", arg: 1, scope: !4271, file: !728, line: 129, type: !4274)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 150, column: 14, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4271, file: !728, line: 150, column: 7)
!4281 = !DILocation(line: 150, column: 22, scope: !4280)
!4282 = !DILocation(line: 150, column: 27, scope: !4280)
!4283 = !DILocation(line: 150, column: 7, scope: !4271)
!4284 = !DILocation(line: 151, column: 12, scope: !4280)
!4285 = !DILocation(line: 151, column: 5, scope: !4280)
!4286 = !DILocalVariable(name: "fp", arg: 1, scope: !4287, file: !728, line: 41, type: !4274)
!4287 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !728, file: !728, line: 41, type: !4288, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !4274}
!4290 = !{!4286}
!4291 = !DILocation(line: 0, scope: !4287, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 156, column: 3, scope: !4271)
!4293 = !DILocation(line: 43, column: 11, scope: !4294, inlinedAt: !4292)
!4294 = distinct !DILexicalBlock(scope: !4287, file: !728, line: 43, column: 7)
!4295 = !{!1572, !1486, i64 0}
!4296 = !DILocation(line: 43, column: 18, scope: !4294, inlinedAt: !4292)
!4297 = !DILocation(line: 43, column: 7, scope: !4287, inlinedAt: !4292)
!4298 = !DILocation(line: 45, column: 5, scope: !4294, inlinedAt: !4292)
!4299 = !DILocation(line: 158, column: 10, scope: !4271)
!4300 = !DILocation(line: 158, column: 3, scope: !4271)
!4301 = !DILocation(line: 235, column: 1, scope: !4271)
!4302 = distinct !DISubprogram(name: "rpl_fseeko", scope: !769, file: !769, line: 28, type: !4303, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4308)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!48, !4305, !4307, !48}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !775)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !51, line: 63, baseType: !77)
!4308 = !{!4309, !4310, !4311, !4312}
!4309 = !DILocalVariable(name: "fp", arg: 1, scope: !4302, file: !769, line: 28, type: !4305)
!4310 = !DILocalVariable(name: "offset", arg: 2, scope: !4302, file: !769, line: 28, type: !4307)
!4311 = !DILocalVariable(name: "whence", arg: 3, scope: !4302, file: !769, line: 28, type: !48)
!4312 = !DILocalVariable(name: "pos", scope: !4313, file: !769, line: 117, type: !4307)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !769, line: 113, column: 5)
!4314 = distinct !DILexicalBlock(scope: !4302, file: !769, line: 52, column: 7)
!4315 = !DILocation(line: 0, scope: !4302)
!4316 = !DILocation(line: 52, column: 11, scope: !4314)
!4317 = !{!1572, !1343, i64 16}
!4318 = !DILocation(line: 52, column: 31, scope: !4314)
!4319 = !{!1572, !1343, i64 8}
!4320 = !DILocation(line: 52, column: 24, scope: !4314)
!4321 = !DILocation(line: 53, column: 7, scope: !4314)
!4322 = !DILocation(line: 53, column: 14, scope: !4314)
!4323 = !DILocation(line: 53, column: 35, scope: !4314)
!4324 = !{!1572, !1343, i64 32}
!4325 = !DILocation(line: 53, column: 28, scope: !4314)
!4326 = !DILocation(line: 54, column: 7, scope: !4314)
!4327 = !DILocation(line: 54, column: 14, scope: !4314)
!4328 = !{!1572, !1343, i64 72}
!4329 = !DILocation(line: 54, column: 28, scope: !4314)
!4330 = !DILocation(line: 52, column: 7, scope: !4302)
!4331 = !DILocation(line: 117, column: 26, scope: !4313)
!4332 = !DILocation(line: 117, column: 19, scope: !4313)
!4333 = !DILocation(line: 0, scope: !4313)
!4334 = !DILocation(line: 118, column: 15, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4313, file: !769, line: 118, column: 11)
!4336 = !DILocation(line: 118, column: 11, scope: !4313)
!4337 = !DILocation(line: 129, column: 11, scope: !4313)
!4338 = !DILocation(line: 129, column: 18, scope: !4313)
!4339 = !DILocation(line: 130, column: 11, scope: !4313)
!4340 = !DILocation(line: 130, column: 19, scope: !4313)
!4341 = !{!1572, !1520, i64 144}
!4342 = !DILocation(line: 161, column: 7, scope: !4313)
!4343 = !DILocation(line: 163, column: 10, scope: !4302)
!4344 = !DILocation(line: 163, column: 3, scope: !4302)
!4345 = !DILocation(line: 164, column: 1, scope: !4302)
!4346 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !810, file: !810, line: 86, type: !4347, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !4353)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!103, !4349, !46, !103, !4350}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2459, line: 6, baseType: !4352)
!4352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !533, line: 21, baseType: !816)
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4354 = !DILocalVariable(name: "pwc", arg: 1, scope: !4346, file: !810, line: 86, type: !4349)
!4355 = !DILocalVariable(name: "s", arg: 2, scope: !4346, file: !810, line: 86, type: !46)
!4356 = !DILocalVariable(name: "n", arg: 3, scope: !4346, file: !810, line: 86, type: !103)
!4357 = !DILocalVariable(name: "ps", arg: 4, scope: !4346, file: !810, line: 86, type: !4350)
!4358 = !DILocalVariable(name: "ret", scope: !4346, file: !810, line: 88, type: !103)
!4359 = !DILocalVariable(name: "wc", scope: !4346, file: !810, line: 89, type: !2463)
!4360 = !DILocalVariable(name: "uc", scope: !4361, file: !810, line: 156, type: !204)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !810, line: 155, column: 5)
!4362 = distinct !DILexicalBlock(scope: !4346, file: !810, line: 154, column: 7)
!4363 = !DILocation(line: 0, scope: !4346)
!4364 = !DILocation(line: 89, column: 3, scope: !4346)
!4365 = !DILocation(line: 105, column: 9, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4346, file: !810, line: 105, column: 7)
!4367 = !DILocation(line: 105, column: 7, scope: !4346)
!4368 = !DILocation(line: 145, column: 9, scope: !4346)
!4369 = !DILocation(line: 154, column: 19, scope: !4362)
!4370 = !DILocation(line: 154, column: 31, scope: !4362)
!4371 = !DILocation(line: 154, column: 26, scope: !4362)
!4372 = !DILocation(line: 154, column: 41, scope: !4362)
!4373 = !DILocation(line: 154, column: 7, scope: !4346)
!4374 = !DILocation(line: 156, column: 26, scope: !4361)
!4375 = !DILocation(line: 0, scope: !4361)
!4376 = !DILocation(line: 157, column: 14, scope: !4361)
!4377 = !DILocation(line: 157, column: 12, scope: !4361)
!4378 = !DILocation(line: 163, column: 1, scope: !4346)
!4379 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !825, file: !825, line: 49, type: !4380, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4385)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!44, !4382}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4384)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !21, line: 146, baseType: !848)
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "ut", arg: 1, scope: !4379, file: !825, line: 49, type: !4382)
!4387 = !DILocalVariable(name: "p", scope: !4379, file: !825, line: 51, type: !44)
!4388 = !DILocalVariable(name: "trimmed_name", scope: !4379, file: !825, line: 51, type: !44)
!4389 = !DILocation(line: 0, scope: !4379)
!4390 = !DILocation(line: 53, column: 18, scope: !4379)
!4391 = !DILocation(line: 54, column: 26, scope: !4379)
!4392 = !DILocalVariable(name: "__dest", arg: 1, scope: !4393, file: !1666, line: 103, type: !1669)
!4393 = distinct !DISubprogram(name: "strncpy", scope: !1666, file: !1666, line: 103, type: !1804, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4394)
!4394 = !{!4392, !4395, !4396}
!4395 = !DILocalVariable(name: "__src", arg: 2, scope: !4393, file: !1666, line: 103, type: !1670)
!4396 = !DILocalVariable(name: "__len", arg: 3, scope: !4393, file: !1666, line: 103, type: !103)
!4397 = !DILocation(line: 0, scope: !4393, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 54, column: 3, scope: !4379)
!4399 = !DILocation(line: 106, column: 10, scope: !4393, inlinedAt: !4398)
!4400 = !DILocation(line: 58, column: 3, scope: !4379)
!4401 = !DILocation(line: 58, column: 39, scope: !4379)
!4402 = !DILocation(line: 59, column: 27, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4379, file: !825, line: 59, column: 3)
!4404 = !DILocation(line: 60, column: 21, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4403, file: !825, line: 59, column: 3)
!4406 = !DILocation(line: 60, column: 25, scope: !4405)
!4407 = !DILocation(line: 59, column: 25, scope: !4403)
!4408 = !DILocation(line: 59, column: 3, scope: !4403)
!4409 = !DILocation(line: 60, column: 28, scope: !4405)
!4410 = !DILocation(line: 60, column: 34, scope: !4405)
!4411 = !DILocation(line: 61, column: 13, scope: !4405)
!4412 = distinct !{!4412, !4408, !4413}
!4413 = !DILocation(line: 62, column: 5, scope: !4403)
!4414 = !DILocation(line: 63, column: 3, scope: !4379)
!4415 = distinct !DISubprogram(name: "read_utmp", scope: !825, file: !825, line: 92, type: !4416, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4420)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!48, !46, !663, !4418, !48}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428}
!4421 = !DILocalVariable(name: "file", arg: 1, scope: !4415, file: !825, line: 92, type: !46)
!4422 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4415, file: !825, line: 92, type: !663)
!4423 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4415, file: !825, line: 92, type: !4418)
!4424 = !DILocalVariable(name: "options", arg: 4, scope: !4415, file: !825, line: 93, type: !48)
!4425 = !DILocalVariable(name: "n_read", scope: !4415, file: !825, line: 95, type: !103)
!4426 = !DILocalVariable(name: "n_alloc", scope: !4415, file: !825, line: 96, type: !103)
!4427 = !DILocalVariable(name: "utmp", scope: !4415, file: !825, line: 97, type: !4419)
!4428 = !DILocalVariable(name: "u", scope: !4415, file: !825, line: 98, type: !4419)
!4429 = !DILocation(line: 0, scope: !4415)
!4430 = !DILocation(line: 104, column: 3, scope: !4415)
!4431 = !DILocation(line: 106, column: 3, scope: !4415)
!4432 = !DILocation(line: 108, column: 15, scope: !4415)
!4433 = !DILocation(line: 108, column: 32, scope: !4415)
!4434 = !DILocation(line: 108, column: 3, scope: !4415)
!4435 = !DILocation(line: 0, scope: !4436, inlinedAt: !4444)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !825, line: 72, column: 7)
!4437 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !825, file: !825, line: 69, type: !4438, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4440)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!203, !4382, !48}
!4440 = !{!4441, !4442, !4443}
!4441 = !DILocalVariable(name: "u", arg: 1, scope: !4437, file: !825, line: 69, type: !4382)
!4442 = !DILocalVariable(name: "options", arg: 2, scope: !4437, file: !825, line: 69, type: !48)
!4443 = !DILocalVariable(name: "user_proc", scope: !4437, file: !825, line: 71, type: !203)
!4444 = distinct !DILocation(line: 109, column: 9, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4415, file: !825, line: 109, column: 9)
!4446 = !DILocation(line: 0, scope: !4447, inlinedAt: !4444)
!4447 = distinct !DILexicalBlock(scope: !4437, file: !825, line: 74, column: 7)
!4448 = !DILocation(line: 0, scope: !4437, inlinedAt: !4444)
!4449 = !DILocation(line: 71, column: 20, scope: !4437, inlinedAt: !4444)
!4450 = !DILocation(line: 72, column: 42, scope: !4436, inlinedAt: !4444)
!4451 = !DILocation(line: 75, column: 7, scope: !4447, inlinedAt: !4444)
!4452 = !DILocation(line: 76, column: 14, scope: !4447, inlinedAt: !4444)
!4453 = !{!1584, !1486, i64 4}
!4454 = !DILocation(line: 76, column: 12, scope: !4447, inlinedAt: !4444)
!4455 = !DILocation(line: 77, column: 7, scope: !4447, inlinedAt: !4444)
!4456 = !DILocation(line: 77, column: 11, scope: !4447, inlinedAt: !4444)
!4457 = !DILocation(line: 77, column: 32, scope: !4447, inlinedAt: !4444)
!4458 = !DILocation(line: 77, column: 36, scope: !4447, inlinedAt: !4444)
!4459 = !DILocation(line: 77, column: 39, scope: !4447, inlinedAt: !4444)
!4460 = !DILocation(line: 77, column: 45, scope: !4447, inlinedAt: !4444)
!4461 = !DILocation(line: 74, column: 7, scope: !4437, inlinedAt: !4444)
!4462 = !DILocation(line: 111, column: 20, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !825, line: 111, column: 13)
!4464 = distinct !DILexicalBlock(scope: !4445, file: !825, line: 110, column: 7)
!4465 = !DILocation(line: 111, column: 13, scope: !4464)
!4466 = !DILocation(line: 112, column: 30, scope: !4463)
!4467 = !DILocation(line: 0, scope: !832, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 112, column: 18, scope: !4463)
!4469 = !DILocation(line: 178, column: 9, scope: !4470, inlinedAt: !4468)
!4470 = distinct !DILexicalBlock(scope: !832, file: !227, line: 178, column: 7)
!4471 = !DILocation(line: 178, column: 7, scope: !832, inlinedAt: !4468)
!4472 = !DILocation(line: 180, column: 13, scope: !4473, inlinedAt: !4468)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !227, line: 180, column: 11)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !227, line: 179, column: 5)
!4475 = !DILocation(line: 180, column: 11, scope: !4474, inlinedAt: !4468)
!4476 = !DILocation(line: 191, column: 11, scope: !4477, inlinedAt: !4468)
!4477 = distinct !DILexicalBlock(scope: !4474, file: !227, line: 191, column: 11)
!4478 = !DILocation(line: 191, column: 11, scope: !4474, inlinedAt: !4468)
!4479 = !DILocation(line: 192, column: 9, scope: !4477, inlinedAt: !4468)
!4480 = !DILocation(line: 201, column: 11, scope: !4481, inlinedAt: !4468)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !227, line: 200, column: 11)
!4482 = distinct !DILexicalBlock(scope: !4470, file: !227, line: 195, column: 5)
!4483 = !DILocation(line: 200, column: 11, scope: !4482, inlinedAt: !4468)
!4484 = !DILocation(line: 202, column: 9, scope: !4481, inlinedAt: !4468)
!4485 = !DILocation(line: 203, column: 14, scope: !4482, inlinedAt: !4468)
!4486 = !DILocation(line: 203, column: 18, scope: !4482, inlinedAt: !4468)
!4487 = !DILocation(line: 203, column: 9, scope: !4482, inlinedAt: !4468)
!4488 = !DILocation(line: 207, column: 25, scope: !832, inlinedAt: !4468)
!4489 = !DILocation(line: 207, column: 10, scope: !832, inlinedAt: !4468)
!4490 = !DILocation(line: 112, column: 18, scope: !4463)
!4491 = !DILocation(line: 112, column: 11, scope: !4463)
!4492 = !DILocation(line: 114, column: 20, scope: !4464)
!4493 = !DILocation(line: 114, column: 9, scope: !4464)
!4494 = !DILocation(line: 114, column: 26, scope: !4464)
!4495 = !{i64 0, i64 2, !2067, i64 4, i64 4, !1485, i64 8, i64 32, !1577, i64 40, i64 4, !1577, i64 44, i64 32, !1577, i64 76, i64 256, !1577, i64 332, i64 2, !2067, i64 334, i64 2, !2067, i64 336, i64 4, !1485, i64 340, i64 4, !1485, i64 344, i64 4, !1485, i64 348, i64 16, !1577, i64 364, i64 20, !1577}
!4496 = !DILocation(line: 115, column: 7, scope: !4464)
!4497 = distinct !{!4497, !4434, !4498}
!4498 = !DILocation(line: 115, column: 7, scope: !4415)
!4499 = !DILocation(line: 117, column: 3, scope: !4415)
!4500 = !DILocation(line: 119, column: 14, scope: !4415)
!4501 = !DILocation(line: 120, column: 13, scope: !4415)
!4502 = !DILocation(line: 122, column: 3, scope: !4415)
!4503 = distinct !DISubprogram(name: "close_stream", scope: !875, file: !875, line: 56, type: !4504, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4508)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!48, !4506}
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1406, line: 7, baseType: !881)
!4508 = !{!4509, !4510, !4512, !4513}
!4509 = !DILocalVariable(name: "stream", arg: 1, scope: !4503, file: !875, line: 56, type: !4506)
!4510 = !DILocalVariable(name: "some_pending", scope: !4503, file: !875, line: 58, type: !4511)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!4512 = !DILocalVariable(name: "prev_fail", scope: !4503, file: !875, line: 59, type: !4511)
!4513 = !DILocalVariable(name: "fclose_fail", scope: !4503, file: !875, line: 60, type: !4511)
!4514 = !DILocation(line: 0, scope: !4503)
!4515 = !DILocation(line: 58, column: 30, scope: !4503)
!4516 = !DILocalVariable(name: "__stream", arg: 1, scope: !4517, file: !1564, line: 135, type: !4506)
!4517 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1564, file: !1564, line: 135, type: !4504, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4518)
!4518 = !{!4516}
!4519 = !DILocation(line: 0, scope: !4517, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 59, column: 27, scope: !4503)
!4521 = !DILocation(line: 137, column: 10, scope: !4517, inlinedAt: !4520)
!4522 = !DILocation(line: 59, column: 43, scope: !4503)
!4523 = !DILocation(line: 60, column: 29, scope: !4503)
!4524 = !DILocation(line: 60, column: 45, scope: !4503)
!4525 = !DILocation(line: 70, column: 17, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4503, file: !875, line: 70, column: 7)
!4527 = !DILocation(line: 58, column: 50, scope: !4503)
!4528 = !DILocation(line: 70, column: 33, scope: !4526)
!4529 = !DILocation(line: 70, column: 53, scope: !4526)
!4530 = !DILocation(line: 70, column: 59, scope: !4526)
!4531 = !DILocation(line: 70, column: 7, scope: !4503)
!4532 = !DILocation(line: 72, column: 11, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4526, file: !875, line: 71, column: 5)
!4534 = !DILocation(line: 73, column: 9, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4533, file: !875, line: 72, column: 11)
!4536 = !DILocation(line: 73, column: 15, scope: !4535)
!4537 = !DILocation(line: 78, column: 1, scope: !4503)
!4538 = distinct !DISubprogram(name: "locale_charset", scope: !913, file: !913, line: 831, type: !553, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4539)
!4539 = !{!4540}
!4540 = !DILocalVariable(name: "codeset", scope: !4538, file: !913, line: 833, type: !46)
!4541 = !DILocation(line: 847, column: 13, scope: !4538)
!4542 = !DILocation(line: 0, scope: !4538)
!4543 = !DILocation(line: 911, column: 15, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4538, file: !913, line: 911, column: 7)
!4545 = !DILocation(line: 911, column: 7, scope: !4538)
!4546 = !DILocation(line: 1070, column: 13, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !913, line: 1070, column: 13)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !913, line: 1060, column: 7)
!4549 = distinct !DILexicalBlock(scope: !4538, file: !913, line: 1019, column: 3)
!4550 = !DILocation(line: 1070, column: 24, scope: !4547)
!4551 = !DILocation(line: 1070, column: 13, scope: !4548)
!4552 = !DILocation(line: 1158, column: 3, scope: !4538)
