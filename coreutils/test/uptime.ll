; ModuleID = 'coreutils-8.32/src/uptime.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [185 x i8] c"Print the current time, the length of time the system has been up,\0Athe number of users on the system, and the average number of jobs\0Ain the run queue over the last 1, 5 and 15 minutes.\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"  Processes in\0Aan uninterruptible sleep state also contribute to the load average.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"If FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Kaveh Ghazi\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"couldn't get boot time\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" %H:%M:%S  \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" ??:????  \00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"up ???? days ??:??,  \00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"up %ld day %2d:%02d,  \00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"up %ld days %2d:%02d,  \00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"up  %2d:%02d,  \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"%lu user\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"%lu users\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c",  load average: %.2f\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c", %.2f\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !0
@.str.47 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !9
@.str.50 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !51
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !129
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !132
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.61 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.62 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.63 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.64 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.66, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.67, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !138
@.str.2.66 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.67 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !206
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !248
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !360
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !366
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !368
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !375
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !382
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !370
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !384
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !390
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.161 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.162 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1395 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1398, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %0, metadata !1397, metadata !DIExpression()), !dbg !1418
  %3 = icmp eq i32 %0, 0, !dbg !1419
  br i1 %3, label %9, label %4, !dbg !1420

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1421, !tbaa !1423
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1421
  %7 = load i8*, i8** @program_name, align 8, !dbg !1421, !tbaa !1423
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #13, !dbg !1421
  br label %61, !dbg !1421

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1427
  %11 = load i8*, i8** @program_name, align 8, !dbg !1427, !tbaa !1423
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #13, !dbg !1427
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1428
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13) #13, !dbg !1428
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1429
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15) #13, !dbg !1429
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1430
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !1430
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #13, !dbg !1431
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1431, !tbaa !1423
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1431
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #13, !dbg !1432
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1432, !tbaa !1423
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1432
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), metadata !1401, metadata !DIExpression()) #13, !dbg !1433
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #13, !dbg !1434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #13, !dbg !1414
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), metadata !1402, metadata !DIExpression()) #13, !dbg !1433
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  br label %27, !dbg !1436

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %28) #21, !dbg !1437
  %31 = icmp eq i32 %30, 0, !dbg !1437
  br i1 %31, label %37, label %32, !dbg !1436

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !1439
  %35 = load i8*, i8** %34, align 8, !dbg !1439, !tbaa !1440
  %36 = icmp eq i8* %35, null, !dbg !1442
  br i1 %36, label %37, label %27, !dbg !1443, !llvm.loop !1444

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1403, metadata !DIExpression()) #13, !dbg !1433
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !1445
  %40 = load i8*, i8** %39, align 8, !dbg !1445, !tbaa !1447
  %41 = icmp eq i8* %40, null, !dbg !1448
  %42 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %40, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %42, metadata !1402, metadata !DIExpression()) #13, !dbg !1433
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #13, !dbg !1450
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #13, !dbg !1450
  %45 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %45, metadata !1410, metadata !DIExpression()) #13, !dbg !1433
  %46 = icmp eq i8* %45, null, !dbg !1452
  br i1 %46, label %54, label %47, !dbg !1454

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #21, !dbg !1455
  %49 = icmp eq i32 %48, 0, !dbg !1455
  br i1 %49, label %54, label %50, !dbg !1456

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !1457
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1457, !tbaa !1423
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #13, !dbg !1457
  br label %54, !dbg !1459

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !1460
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !1460
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #13, !dbg !1461
  %58 = icmp eq i8* %42, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), !dbg !1461
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !1461
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #13, !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #13, !dbg !1462
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #22, !dbg !1463
  unreachable, !dbg !1463
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !116 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !419 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !458 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1468, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8** %1, metadata !1469, metadata !DIExpression()), !dbg !1470
  %3 = load i8*, i8** %1, align 8, !dbg !1471, !tbaa !1423
  tail call void @set_program_name(i8* %3) #13, !dbg !1472
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #13, !dbg !1473
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #13, !dbg !1474
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #13, !dbg !1475
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1476
  %8 = load i8*, i8** @Version, align 8, !dbg !1477, !tbaa !1423
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #13, !dbg !1478
  %9 = load i32, i32* @optind, align 4, !dbg !1479, !tbaa !1480
  %10 = sub nsw i32 %0, %9, !dbg !1482
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !1483

11:                                               ; preds = %2
  tail call fastcc void @uptime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1), !dbg !1484
  br label %24, !dbg !1486

12:                                               ; preds = %2
  %13 = sext i32 %9 to i64, !dbg !1487
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !1487
  %15 = load i8*, i8** %14, align 8, !dbg !1487, !tbaa !1423
  tail call fastcc void @uptime(i8* %15, i32 0), !dbg !1488
  br label %24, !dbg !1489

16:                                               ; preds = %2
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #13, !dbg !1490
  %18 = load i32, i32* @optind, align 4, !dbg !1491, !tbaa !1480
  %19 = add nsw i32 %18, 1, !dbg !1492
  %20 = sext i32 %19 to i64, !dbg !1493
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !1493
  %22 = load i8*, i8** %21, align 8, !dbg !1493, !tbaa !1423
  %23 = tail call i8* @quote(i8* %22) #13, !dbg !1494
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #13, !dbg !1495
  tail call void @usage(i32 1) #23, !dbg !1496
  unreachable, !dbg !1496

24:                                               ; preds = %12, %11
  ret i32 0, !dbg !1497
}

; Function Attrs: nounwind
declare !dbg !461 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !464 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !465 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uptime(i8* %0, i32 %1) unnamed_addr #8 !dbg !1498 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !1508, metadata !DIExpression()), !dbg !1542
  %5 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !1530, metadata !DIExpression()), !dbg !1544
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1502, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %1, metadata !1503, metadata !DIExpression()), !dbg !1545
  %9 = bitcast i64* %7 to i8*, !dbg !1546
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #13, !dbg !1546
  %10 = bitcast %struct.utmpx** %8 to i8*, !dbg !1547
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #13, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !1505, metadata !DIExpression()), !dbg !1545
  store %struct.utmpx* null, %struct.utmpx** %8, align 8, !dbg !1548, !tbaa !1423
  call void @llvm.dbg.value(metadata i64* %7, metadata !1504, metadata !DIExpression(DW_OP_deref)), !dbg !1545
  call void @llvm.dbg.value(metadata %struct.utmpx** %8, metadata !1505, metadata !DIExpression(DW_OP_deref)), !dbg !1545
  %11 = call i32 @read_utmp(i8* %0, i64* nonnull %7, %struct.utmpx** nonnull %8, i32 %1) #13, !dbg !1549
  %12 = icmp eq i32 %11, 0, !dbg !1551
  br i1 %12, label %17, label %13, !dbg !1552

13:                                               ; preds = %2
  %14 = tail call i32* @__errno_location() #24, !dbg !1553
  %15 = load i32, i32* %14, align 4, !dbg !1553, !tbaa !1480
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #13, !dbg !1553
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %16) #13, !dbg !1553
  unreachable, !dbg !1553

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8, !dbg !1554, !tbaa !1555
  call void @llvm.dbg.value(metadata i64 %18, metadata !1504, metadata !DIExpression()), !dbg !1545
  %19 = load %struct.utmpx*, %struct.utmpx** %8, align 8, !dbg !1557, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !1505, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %18, metadata !1515, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !1516, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  %20 = bitcast i64* %3 to i8*, !dbg !1559
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #13, !dbg !1559
  call void @llvm.dbg.value(metadata i64 0, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  %21 = bitcast [3 x double]* %4 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #13, !dbg !1560
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #13, !dbg !1561
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1526, metadata !DIExpression()) #13, !dbg !1558
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1562
  br i1 %23, label %44, label %24, !dbg !1563

24:                                               ; preds = %17
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0, !dbg !1564
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %25) #13, !dbg !1564
  %26 = call i8* @fgets_unlocked(i8* nonnull %25, i32 8192, %struct._IO_FILE* nonnull %22) #13, !dbg !1565
  call void @llvm.dbg.value(metadata i8* %26, metadata !1536, metadata !DIExpression()) #13, !dbg !1566
  %27 = icmp eq i8* %26, %25, !dbg !1567
  br i1 %27, label %28, label %41, !dbg !1568

28:                                               ; preds = %24
  %29 = bitcast i8** %6 to i8*, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #13, !dbg !1569
  call void @llvm.dbg.value(metadata i8** %6, metadata !1537, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1570
  %30 = call double @c_strtod(i8* nonnull %25, i8** nonnull %6) #13, !dbg !1571
  call void @llvm.dbg.value(metadata double %30, metadata !1540, metadata !DIExpression()) #13, !dbg !1570
  %31 = load i8*, i8** %6, align 8, !dbg !1572, !tbaa !1423
  call void @llvm.dbg.value(metadata i8* %31, metadata !1537, metadata !DIExpression()) #13, !dbg !1570
  %32 = icmp eq i8* %25, %31, !dbg !1574
  br i1 %32, label %39, label %33, !dbg !1575

33:                                               ; preds = %28
  %34 = fcmp oge double %30, 0.000000e+00, !dbg !1576
  %35 = fcmp olt double %30, 0x43E0000000000000, !dbg !1577
  %36 = and i1 %34, %35, !dbg !1578
  %37 = fptosi double %30 to i64, !dbg !1579
  %38 = select i1 %36, i64 %37, i64 -1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %38, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  br label %39, !dbg !1580

39:                                               ; preds = %33, %28
  %40 = phi i64 [ %38, %33 ], [ 0, %28 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %40, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #13, !dbg !1581
  br label %41, !dbg !1582

41:                                               ; preds = %39, %24
  %42 = phi i64 [ %40, %39 ], [ 0, %24 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %42, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  %43 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #13, !dbg !1583
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %25) #13, !dbg !1584
  br label %44, !dbg !1585

44:                                               ; preds = %41, %17
  %45 = phi i64 [ %42, %41 ], [ 0, %17 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %45, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %18, metadata !1515, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !1516, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %18, metadata !1515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !1558
  %46 = icmp eq i64 %18, 0, !dbg !1586
  br i1 %46, label %105, label %47, !dbg !1586

47:                                               ; preds = %44
  %48 = and i64 %18, 1, !dbg !1586
  %49 = icmp eq i64 %18, 1, !dbg !1586
  br i1 %49, label %83, label %50, !dbg !1586

50:                                               ; preds = %47
  %51 = sub i64 %18, %48, !dbg !1586
  br label %52, !dbg !1586

52:                                               ; preds = %201, %50
  %53 = phi %struct.utmpx* [ %19, %50 ], [ %203, %201 ]
  %54 = phi i64 [ 0, %50 ], [ %81, %201 ]
  %55 = phi i64 [ 0, %50 ], [ %202, %201 ]
  %56 = phi i64 [ %51, %50 ], [ %204, %201 ]
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !1516, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %54, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %55, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 4, i64 0, !dbg !1587
  %58 = load i8, i8* %57, align 4, !dbg !1587, !tbaa !1589
  %59 = icmp ne i8 %58, 0, !dbg !1587
  %60 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 0, !dbg !1590
  %61 = load i16, i16* %60, align 4, !dbg !1590, !tbaa !1591
  %62 = icmp eq i16 %61, 7, !dbg !1587
  %63 = and i1 %59, %62, !dbg !1587
  %64 = zext i1 %63 to i64, !dbg !1587
  %65 = add i64 %54, %64, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %65, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  %66 = icmp eq i16 %61, 2, !dbg !1597
  br i1 %66, label %67, label %71, !dbg !1599

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 8, i32 0, !dbg !1600
  %69 = load i32, i32* %68, align 4, !dbg !1600, !tbaa !1601
  %70 = sext i32 %69 to i64, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %70, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  br label %71, !dbg !1602

71:                                               ; preds = %67, %52
  %72 = phi i64 [ %70, %67 ], [ %55, %52 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %72, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !1516, metadata !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value)) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %65, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 undef, metadata !1515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !1558
  %73 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 4, i64 0, !dbg !1587
  %74 = load i8, i8* %73, align 4, !dbg !1587, !tbaa !1589
  %75 = icmp ne i8 %74, 0, !dbg !1587
  %76 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 0, !dbg !1590
  %77 = load i16, i16* %76, align 4, !dbg !1590, !tbaa !1591
  %78 = icmp eq i16 %77, 7, !dbg !1587
  %79 = and i1 %75, %78, !dbg !1587
  %80 = zext i1 %79 to i64, !dbg !1587
  %81 = add i64 %65, %80, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %81, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  %82 = icmp eq i16 %77, 2, !dbg !1597
  br i1 %82, label %197, label %201, !dbg !1599

83:                                               ; preds = %201, %47
  %84 = phi i64 [ undef, %47 ], [ %202, %201 ]
  %85 = phi i64 [ undef, %47 ], [ %81, %201 ]
  %86 = phi %struct.utmpx* [ %19, %47 ], [ %203, %201 ]
  %87 = phi i64 [ 0, %47 ], [ %81, %201 ]
  %88 = phi i64 [ 0, %47 ], [ %202, %201 ]
  %89 = icmp eq i64 %48, 0, !dbg !1599
  br i1 %89, label %105, label %90, !dbg !1599

90:                                               ; preds = %83
  call void @llvm.dbg.value(metadata %struct.utmpx* %86, metadata !1516, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %87, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %88, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  %91 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 4, i64 0, !dbg !1587
  %92 = load i8, i8* %91, align 4, !dbg !1587, !tbaa !1589
  %93 = icmp ne i8 %92, 0, !dbg !1587
  %94 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 0, !dbg !1590
  %95 = load i16, i16* %94, align 4, !dbg !1590, !tbaa !1591
  %96 = icmp eq i16 %95, 7, !dbg !1587
  %97 = and i1 %93, %96, !dbg !1587
  %98 = zext i1 %97 to i64, !dbg !1587
  %99 = add i64 %87, %98, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %99, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  %100 = icmp eq i16 %95, 2, !dbg !1597
  br i1 %100, label %101, label %105, !dbg !1599

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 8, i32 0, !dbg !1600
  %103 = load i32, i32* %102, align 4, !dbg !1600, !tbaa !1601
  %104 = sext i32 %103 to i64, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %104, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  br label %105, !dbg !1602

105:                                              ; preds = %83, %90, %101, %44
  %106 = phi i64 [ 0, %44 ], [ %84, %83 ], [ %104, %101 ], [ %88, %90 ], !dbg !1558
  %107 = phi i64 [ 0, %44 ], [ %85, %83 ], [ %99, %90 ], [ %99, %101 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %106, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %107, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  %108 = call i64 @time(i64* null) #13, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %108, metadata !1519, metadata !DIExpression()) #13, !dbg !1558
  store i64 %108, i64* %3, align 8, !dbg !1604, !tbaa !1555
  %109 = icmp eq i64 %45, 0, !dbg !1605
  br i1 %109, label %110, label %118, !dbg !1607

110:                                              ; preds = %105
  %111 = icmp eq i64 %106, 0, !dbg !1608
  br i1 %111, label %112, label %116, !dbg !1611

112:                                              ; preds = %110
  %113 = tail call i32* @__errno_location() #24, !dbg !1612
  %114 = load i32, i32* %113, align 4, !dbg !1612, !tbaa !1480
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #13, !dbg !1612
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %114, i8* %115) #13, !dbg !1612
  unreachable, !dbg !1612

116:                                              ; preds = %110
  %117 = sub nsw i64 %108, %106, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %117, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  br label %118, !dbg !1614

118:                                              ; preds = %116, %105
  %119 = phi i64 [ %117, %116 ], [ %45, %105 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %119, metadata !1520, metadata !DIExpression()) #13, !dbg !1558
  %120 = sdiv i64 %119, 86400, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %120, metadata !1521, metadata !DIExpression()) #13, !dbg !1558
  %121 = mul nsw i64 %120, -86400, !dbg !1616
  %122 = add i64 %121, %119, !dbg !1616
  %123 = sdiv i64 %122, 3600, !dbg !1617
  %124 = trunc i64 %123 to i32, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %124, metadata !1522, metadata !DIExpression()) #13, !dbg !1558
  %125 = mul i64 %123, 15461882265600, !dbg !1619
  %126 = ashr exact i64 %125, 32, !dbg !1619
  %127 = sub nsw i64 %122, %126, !dbg !1620
  %128 = sdiv i64 %127, 60, !dbg !1621
  %129 = trunc i64 %128 to i32, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %129, metadata !1523, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64* %3, metadata !1519, metadata !DIExpression(DW_OP_deref)) #13, !dbg !1558
  %130 = call %struct.tm* @localtime(i64* nonnull %3) #13, !dbg !1623
  call void @llvm.dbg.value(metadata %struct.tm* %130, metadata !1524, metadata !DIExpression()) #13, !dbg !1558
  %131 = icmp eq %struct.tm* %130, null, !dbg !1624
  br i1 %131, label %136, label %132, !dbg !1626

132:                                              ; preds = %118
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1627, !tbaa !1423
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #13, !dbg !1628
  %135 = call i64 @fprintftime(%struct._IO_FILE* %133, i8* %134, %struct.tm* nonnull %130, %struct.tm_zone* null, i32 0) #13, !dbg !1629
  br label %139, !dbg !1629

136:                                              ; preds = %118
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 5) #13, !dbg !1630
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %137) #13, !dbg !1630
  br label %139

139:                                              ; preds = %136, %132
  %140 = icmp eq i64 %119, -1, !dbg !1631
  br i1 %140, label %141, label %144, !dbg !1633

141:                                              ; preds = %139
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i32 5) #13, !dbg !1634
  %143 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %142) #13, !dbg !1634
  br label %152, !dbg !1634

144:                                              ; preds = %139
  %145 = icmp sgt i64 %119, 86399, !dbg !1635
  br i1 %145, label %146, label %149, !dbg !1638

146:                                              ; preds = %144
  %147 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i64 %120, i32 5) #13, !dbg !1639
  %148 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %147, i64 %120, i32 %124, i32 %129) #13, !dbg !1639
  br label %152, !dbg !1639

149:                                              ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1640
  %151 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %150, i32 %124, i32 %129) #13, !dbg !1640
  br label %152

152:                                              ; preds = %149, %146, %141
  %153 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i64 %107, i32 5) #13, !dbg !1641
  %154 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %153, i64 %107) #13, !dbg !1641
  %155 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1642
  %156 = call i32 @getloadavg(double* nonnull %155, i32 3) #13, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %156, metadata !1525, metadata !DIExpression()) #13, !dbg !1558
  %157 = icmp eq i32 %156, -1, !dbg !1644
  br i1 %157, label %158, label %169, !dbg !1646

158:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i32 10, metadata !1647, metadata !DIExpression()) #13, !dbg !1653
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1655, !tbaa !1423
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1655
  %161 = load i8*, i8** %160, align 8, !dbg !1655, !tbaa !1656
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1655
  %163 = load i8*, i8** %162, align 8, !dbg !1655, !tbaa !1658
  %164 = icmp ult i8* %161, %163, !dbg !1655
  br i1 %164, label %167, label %165, !dbg !1655, !prof !1659, !misexpect !1660

165:                                              ; preds = %158
  %166 = call i32 @__overflow(%struct._IO_FILE* %159, i32 10) #13, !dbg !1655
  br label %196, !dbg !1655

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1655
  store i8* %168, i8** %160, align 8, !dbg !1655, !tbaa !1656
  store i8 10, i8* %161, align 1, !dbg !1655, !tbaa !1589
  br label %196, !dbg !1655

169:                                              ; preds = %152
  %170 = icmp sgt i32 %156, 0, !dbg !1661
  br i1 %170, label %171, label %196, !dbg !1664

171:                                              ; preds = %169
  %172 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #13, !dbg !1665
  %173 = load double, double* %155, align 16, !dbg !1665, !tbaa !1666
  %174 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %172, double %173) #13, !dbg !1665
  %175 = icmp eq i32 %156, 1, !dbg !1668
  br i1 %175, label %185, label %176, !dbg !1670

176:                                              ; preds = %171
  %177 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1, !dbg !1671
  %178 = load double, double* %177, align 8, !dbg !1671, !tbaa !1666
  %179 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %178) #13, !dbg !1671
  %180 = icmp sgt i32 %156, 2, !dbg !1672
  br i1 %180, label %181, label %185, !dbg !1674

181:                                              ; preds = %176
  %182 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2, !dbg !1675
  %183 = load double, double* %182, align 16, !dbg !1675, !tbaa !1666
  %184 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %183) #13, !dbg !1675
  br label %185, !dbg !1675

185:                                              ; preds = %181, %176, %171
  call void @llvm.dbg.value(metadata i32 10, metadata !1647, metadata !DIExpression()) #13, !dbg !1676
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1679, !tbaa !1423
  %187 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 5, !dbg !1679
  %188 = load i8*, i8** %187, align 8, !dbg !1679, !tbaa !1656
  %189 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 6, !dbg !1679
  %190 = load i8*, i8** %189, align 8, !dbg !1679, !tbaa !1658
  %191 = icmp ult i8* %188, %190, !dbg !1679
  br i1 %191, label %194, label %192, !dbg !1679, !prof !1659, !misexpect !1660

192:                                              ; preds = %185
  %193 = call i32 @__overflow(%struct._IO_FILE* %186, i32 10) #13, !dbg !1679
  br label %196, !dbg !1679

194:                                              ; preds = %185
  %195 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1679
  store i8* %195, i8** %187, align 8, !dbg !1679, !tbaa !1656
  store i8 10, i8* %188, align 1, !dbg !1679, !tbaa !1589
  br label %196, !dbg !1679

196:                                              ; preds = %165, %167, %169, %192, %194
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #13, !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #13, !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13, !dbg !1681
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #13, !dbg !1681
  ret void, !dbg !1681

197:                                              ; preds = %71
  %198 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 8, i32 0, !dbg !1600
  %199 = load i32, i32* %198, align 4, !dbg !1600, !tbaa !1601
  %200 = sext i32 %199 to i64, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %200, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  br label %201, !dbg !1602

201:                                              ; preds = %197, %71
  %202 = phi i64 [ %200, %197 ], [ %72, %71 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %202, metadata !1518, metadata !DIExpression()) #13, !dbg !1558
  %203 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 2, !dbg !1682
  call void @llvm.dbg.value(metadata i64 undef, metadata !1515, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.utmpx* %203, metadata !1516, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %81, metadata !1517, metadata !DIExpression()) #13, !dbg !1558
  call void @llvm.dbg.value(metadata i64 undef, metadata !1515, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !1558
  %204 = add i64 %56, -2, !dbg !1586
  %205 = icmp eq i64 %204, 0, !dbg !1586
  br i1 %205, label %83, label %52, !dbg !1586, !llvm.loop !1683
}

declare !dbg !124 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i8* @fgets_unlocked(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !528 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !533 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !562 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !565 i32 @getloadavg(double*, i32) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !1685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8** %1, metadata !1688, metadata !DIExpression()), !dbg !1691
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1692, !tbaa !1423
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1692
  br i1 %4, label %5, label %7, !dbg !1698

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %struct.__locale_struct* null) #13, !dbg !1699
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1700, !tbaa !1423
  br label %7, !dbg !1701

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1702, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1690, metadata !DIExpression()), !dbg !1691
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1703
  br i1 %9, label %10, label %13, !dbg !1705

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1706
  br i1 %11, label %15, label %12, !dbg !1709

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1710, !tbaa !1423
  br label %15, !dbg !1711

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #13, !dbg !1712
  call void @llvm.dbg.value(metadata double %14, metadata !1689, metadata !DIExpression()), !dbg !1691
  br label %15, !dbg !1713

15:                                               ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !1691
  ret double %16, !dbg !1714
}

; Function Attrs: nounwind
declare !dbg !45 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !15 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i8* %0, i8** @file_name, align 8, !dbg !1719, !tbaa !1423
  ret void, !dbg !1720
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1721 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1727, !tbaa !1728
  ret void, !dbg !1730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1731 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1736, !tbaa !1423
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !1737
  %3 = icmp eq i32 %2, 0, !dbg !1738
  br i1 %3, label %22, label %4, !dbg !1739

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1740, !tbaa !1728, !range !1741
  %6 = icmp eq i8 %5, 0, !dbg !1740
  br i1 %6, label %11, label %7, !dbg !1742

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1743
  %9 = load i32, i32* %8, align 4, !dbg !1743, !tbaa !1480
  %10 = icmp eq i32 %9, 32, !dbg !1744
  br i1 %10, label %22, label %11, !dbg !1745

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #13, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %12, metadata !1733, metadata !DIExpression()), !dbg !1747
  %13 = load i8*, i8** @file_name, align 8, !dbg !1748, !tbaa !1423
  %14 = icmp eq i8* %13, null, !dbg !1748
  %15 = tail call i32* @__errno_location() #24, !dbg !1750
  %16 = load i32, i32* %15, align 4, !dbg !1750, !tbaa !1480
  br i1 %14, label %19, label %17, !dbg !1751

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !1752
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #13, !dbg !1753
  br label %20, !dbg !1753

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #13, !dbg !1754
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1755, !tbaa !1480
  tail call void @_exit(i32 %21) #22, !dbg !1756
  unreachable, !dbg !1756

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1757, !tbaa !1423
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #13, !dbg !1759
  %25 = icmp eq i32 %24, 0, !dbg !1760
  br i1 %25, label %28, label %26, !dbg !1761

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1762, !tbaa !1480
  tail call void @_exit(i32 %27) #22, !dbg !1763
  unreachable, !dbg !1763

28:                                               ; preds = %22
  ret void, !dbg !1764
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @fprintftime(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, %struct.tm_zone* %3, i32 %4) local_unnamed_addr #8 !dbg !1765 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %1, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1775, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata %struct.tm_zone* %3, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %4, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !1779
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, i32 0, i32 -1, %struct.tm_zone* %3, i32 %4), !dbg !1780
  ret i64 %6, !dbg !1781
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext %3, i32 %4, i32 %5, %struct.tm_zone* %6, i32 %7) unnamed_addr #8 !dbg !1782 {
  %9 = alloca [23 x i8], align 16
  %10 = alloca [5 x i8], align 1
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1787, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %1, metadata !1788, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1789, metadata !DIExpression()), !dbg !2072
  %13 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %13, metadata !1790, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %4, metadata !1791, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %5, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* undef, metadata !1793, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !1794, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %7, metadata !1795, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 -1, metadata !1796, metadata !DIExpression()), !dbg !2072
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2, !dbg !2073
  %15 = load i32, i32* %14, align 8, !dbg !2073, !tbaa !2074
  call void @llvm.dbg.value(metadata i32 %15, metadata !1797, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1800, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* null, metadata !1798, metadata !DIExpression()), !dbg !2072
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10, !dbg !2076
  %17 = load i8*, i8** %16, align 8, !dbg !2076, !tbaa !2077
  call void @llvm.dbg.value(metadata i8* %17, metadata !1798, metadata !DIExpression()), !dbg !2072
  %18 = icmp eq i8* %17, null, !dbg !2078
  %19 = select i1 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i64 0, i64 0), i8* %17, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %19, metadata !1798, metadata !DIExpression()), !dbg !2072
  %20 = icmp sgt i32 %15, 12, !dbg !2081
  %21 = add nsw i32 %15, -12, !dbg !2083
  %22 = icmp eq i32 %15, 0, !dbg !2083
  %23 = select i1 %22, i32 12, i32 %15, !dbg !2083
  %24 = select i1 %20, i32 %21, i32 %23, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %24, metadata !1797, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %1, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %5, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  %25 = load i8, i8* %1, align 1, !dbg !2085, !tbaa !1589
  %26 = icmp eq i8 %25, 0, !dbg !2086
  br i1 %26, label %1059, label %27, !dbg !2087

27:                                               ; preds = %8
  %28 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 0, !dbg !2084
  %29 = icmp eq %struct._IO_FILE* %0, null, !dbg !2088
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8, !dbg !2089
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9, !dbg !2091
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5, !dbg !2092
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6, !dbg !2093
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7, !dbg !2095
  %35 = bitcast %struct.tm* %12 to i8*, !dbg !2097
  %36 = bitcast %struct.tm* %2 to i8*, !dbg !2097
  %37 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 23, !dbg !2097
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0, !dbg !2098
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4, !dbg !2100
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1, !dbg !2102
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3, !dbg !2104
  %42 = ptrtoint i8* %37 to i64, !dbg !2106
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0, !dbg !2107
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0, !dbg !2107
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1, !dbg !2107
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 2, !dbg !2107
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 3, !dbg !2108
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 1, !dbg !2110
  br label %49, !dbg !2087

49:                                               ; preds = %27, %1053
  %50 = phi i8 [ %25, %27 ], [ %1057, %1053 ], !dbg !2114
  %51 = phi i32 [ %5, %27 ], [ -1, %1053 ]
  %52 = phi i64 [ 0, %27 ], [ %1055, %1053 ]
  %53 = phi i8* [ %1, %27 ], [ %1056, %1053 ]
  call void @llvm.dbg.value(metadata i32 %51, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %52, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %53, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 23, i8* nonnull %28) #13, !dbg !2115
  call void @llvm.dbg.declare(metadata [23 x i8]* %9, metadata !1815, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %13, metadata !1820, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !2084
  %54 = icmp eq i8 %50, 37, !dbg !2117
  br i1 %54, label %93, label %55, !dbg !2118

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 1, metadata !1825, metadata !DIExpression()), !dbg !2119
  %56 = icmp sgt i32 %51, 0, !dbg !2120
  %57 = select i1 %56, i32 %51, i32 0, !dbg !2120
  %58 = zext i32 %57 to i64, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %58, metadata !1829, metadata !DIExpression()), !dbg !2119
  %59 = icmp ugt i32 %57, 1, !dbg !2120
  %60 = select i1 %59, i32 %57, i32 1, !dbg !2120
  %61 = zext i32 %60 to i64, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %61, metadata !1830, metadata !DIExpression()), !dbg !2119
  %62 = xor i64 %52, -1, !dbg !2121
  %63 = icmp ult i64 %61, %62, !dbg !2121
  br i1 %63, label %64, label %1052, !dbg !2120

64:                                               ; preds = %55
  br i1 %29, label %80, label %65, !dbg !2120

65:                                               ; preds = %64
  br i1 %59, label %66, label %76, !dbg !2123

66:                                               ; preds = %65
  %67 = add nsw i64 %58, -1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %67, metadata !1831, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 0, metadata !1839, metadata !DIExpression()), !dbg !2126
  %68 = icmp eq i64 %67, 0, !dbg !2127
  br i1 %68, label %76, label %69, !dbg !2130

69:                                               ; preds = %66, %69
  %70 = phi i64 [ %72, %69 ], [ 0, %66 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !1839, metadata !DIExpression()), !dbg !2126
  %71 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2127
  %72 = add nuw i64 %70, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %72, metadata !1839, metadata !DIExpression()), !dbg !2126
  %73 = icmp ult i64 %72, %67, !dbg !2127
  br i1 %73, label %69, label %74, !dbg !2130, !llvm.loop !2131

74:                                               ; preds = %69
  %75 = load i8, i8* %53, align 1, !dbg !2123, !tbaa !1589
  br label %76, !dbg !2123

76:                                               ; preds = %74, %66, %65
  %77 = phi i8 [ %75, %74 ], [ %50, %66 ], [ %50, %65 ], !dbg !2123
  %78 = sext i8 %77 to i32, !dbg !2123
  %79 = call i32 @fputc(i32 %78, %struct._IO_FILE* nonnull %0), !dbg !2123
  br label %80, !dbg !2123

80:                                               ; preds = %76, %64
  %81 = add i64 %52, %61, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %81, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

82:                                               ; preds = %88, %89
  %83 = phi i32 [ %91, %89 ], [ %87, %88 ], !dbg !2084
  %84 = phi i8* [ %92, %89 ], [ %85, %88 ], !dbg !2132
  call void @llvm.dbg.value(metadata i8* %84, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %90, metadata !1820, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %94, metadata !1822, metadata !DIExpression()), !dbg !2084
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %85, metadata !1801, metadata !DIExpression()), !dbg !2072
  %86 = load i8, i8* %85, align 1, !dbg !2135, !tbaa !1589
  %87 = sext i8 %86 to i32, !dbg !2135
  switch i32 %87, label %98 [
    i32 95, label %88
    i32 45, label %88
    i32 43, label %88
    i32 48, label %88
    i32 94, label %89
    i32 35, label %93
  ], !dbg !2136

88:                                               ; preds = %82, %82, %82, %82
  br label %82, !dbg !2072, !llvm.loop !2137

89:                                               ; preds = %82, %93
  %90 = phi i8 [ %95, %93 ], [ 1, %82 ]
  %91 = phi i32 [ %96, %93 ], [ %83, %82 ]
  %92 = phi i8* [ %97, %93 ], [ %85, %82 ]
  br label %82, !dbg !2138

93:                                               ; preds = %82, %49
  %94 = phi i8 [ 0, %49 ], [ 1, %82 ]
  %95 = phi i8 [ %13, %49 ], [ %90, %82 ]
  %96 = phi i32 [ 0, %49 ], [ %83, %82 ]
  %97 = phi i8* [ %53, %49 ], [ %85, %82 ]
  br label %89, !dbg !2138

98:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  %99 = sext i8 %86 to i32, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %83, metadata !1802, metadata !DIExpression()), !dbg !2084
  %100 = add nsw i32 %99, -48, !dbg !2140
  %101 = icmp ult i32 %100, 10, !dbg !2140
  br i1 %101, label %102, label %131, !dbg !2142

102:                                              ; preds = %98, %122
  %103 = phi i8 [ %125, %122 ], [ %86, %98 ]
  %104 = phi i8* [ %124, %122 ], [ %85, %98 ], !dbg !2084
  %105 = phi i32 [ %123, %122 ], [ 0, %98 ], !dbg !2143
  call void @llvm.dbg.value(metadata i32 %105, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %104, metadata !1801, metadata !DIExpression()), !dbg !2072
  %106 = icmp slt i32 %105, 0, !dbg !2145
  br i1 %106, label %107, label %112, !dbg !2145

107:                                              ; preds = %102
  %108 = icmp eq i32 %105, -1, !dbg !2145
  br i1 %108, label %114, label %109, !dbg !2145

109:                                              ; preds = %107
  %110 = sdiv i32 -2147483648, %105, !dbg !2145
  %111 = icmp slt i32 %110, 10, !dbg !2145
  br i1 %111, label %121, label %114, !dbg !2145

112:                                              ; preds = %102
  %113 = icmp sgt i32 %105, 214748364, !dbg !2145
  br i1 %113, label %121, label %114, !dbg !2145

114:                                              ; preds = %107, %112, %109
  %115 = mul i32 %105, 10, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %115, metadata !1792, metadata !DIExpression()), !dbg !2072
  %116 = sext i8 %103 to i32, !dbg !2148
  %117 = add nsw i32 %116, -48, !dbg !2148
  %118 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %115, i32 %117), !dbg !2148
  %119 = extractvalue { i32, i1 } %118, 1, !dbg !2148
  %120 = extractvalue { i32, i1 } %118, 0, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %120, metadata !1792, metadata !DIExpression()), !dbg !2072
  br i1 %119, label %121, label %122, !dbg !2149

121:                                              ; preds = %109, %112, %114
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1792, metadata !DIExpression()), !dbg !2072
  br label %122, !dbg !2150

122:                                              ; preds = %121, %114
  %123 = phi i32 [ 2147483647, %121 ], [ %120, %114 ], !dbg !2151
  call void @llvm.dbg.value(metadata i32 %123, metadata !1792, metadata !DIExpression()), !dbg !2072
  %124 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %124, metadata !1801, metadata !DIExpression()), !dbg !2072
  %125 = load i8, i8* %124, align 1, !dbg !2153, !tbaa !1589
  %126 = sext i8 %125 to i32, !dbg !2153
  %127 = add nsw i32 %126, -48, !dbg !2153
  %128 = icmp ult i32 %127, 10, !dbg !2153
  br i1 %128, label %102, label %129, !dbg !2154, !llvm.loop !2155

129:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i32 %123, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %123, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %123, metadata !1792, metadata !DIExpression()), !dbg !2072
  %130 = sext i8 %125 to i32, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %123, metadata !1792, metadata !DIExpression()), !dbg !2072
  br label %131, !dbg !2158

131:                                              ; preds = %129, %98
  %132 = phi i32 [ %99, %98 ], [ %130, %129 ], !dbg !2159
  %133 = phi i8 [ %86, %98 ], [ %125, %129 ], !dbg !2159
  %134 = phi i8* [ %85, %98 ], [ %124, %129 ], !dbg !2084
  %135 = phi i32 [ %51, %98 ], [ %123, %129 ]
  call void @llvm.dbg.value(metadata i32 %135, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %134, metadata !1801, metadata !DIExpression()), !dbg !2072
  switch i32 %132, label %139 [
    i32 69, label %136
    i32 79, label %136
  ], !dbg !2158

136:                                              ; preds = %131, %131
  %137 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !2160
  call void @llvm.dbg.value(metadata i8* %137, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %132, metadata !1806, metadata !DIExpression()), !dbg !2084
  %138 = load i8, i8* %137, align 1, !dbg !2162, !tbaa !1589
  br label %139, !dbg !2163

139:                                              ; preds = %131, %136
  %140 = phi i8 [ %138, %136 ], [ %133, %131 ], !dbg !2162
  %141 = phi i32 [ %132, %136 ], [ 0, %131 ], !dbg !2164
  %142 = phi i8* [ %137, %136 ], [ %134, %131 ], !dbg !2084
  call void @llvm.dbg.value(metadata i8* %142, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %141, metadata !1806, metadata !DIExpression()), !dbg !2084
  %143 = sext i8 %140 to i32, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %143, metadata !1823, metadata !DIExpression()), !dbg !2084
  switch i32 %143, label %991 [
    i32 37, label %144
    i32 97, label %180
    i32 65, label %185
    i32 98, label %190
    i32 104, label %190
    i32 66, label %194
    i32 99, label %199
    i32 67, label %324
    i32 120, label %337
    i32 68, label %339
    i32 100, label %341
    i32 101, label %345
    i32 70, label %521
    i32 72, label %532
    i32 73, label %536
    i32 107, label %538
    i32 108, label %542
    i32 106, label %544
    i32 77, label %551
    i32 109, label %555
    i32 78, label %562
    i32 110, label %649
    i32 80, label %681
    i32 112, label %682
    i32 113, label %688
    i32 82, label %201
    i32 114, label %238
    i32 83, label %693
    i32 115, label %697
    i32 88, label %720
    i32 84, label %722
    i32 116, label %723
    i32 117, label %755
    i32 85, label %760
    i32 86, label %768
    i32 103, label %768
    i32 71, label %768
    i32 87, label %846
    i32 119, label %856
    i32 89, label %860
    i32 121, label %865
    i32 90, label %876
    i32 58, label %945
    i32 122, label %953
    i32 0, label %989
  ], !dbg !2165

144:                                              ; preds = %139
  %145 = icmp eq i32 %141, 0, !dbg !2166
  br i1 %145, label %146, label %991, !dbg !2168

146:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 1, metadata !1841, metadata !DIExpression()), !dbg !2169
  %147 = icmp eq i32 %83, 45, !dbg !2170
  %148 = icmp slt i32 %135, 0, !dbg !2170
  %149 = or i1 %147, %148, !dbg !2170
  %150 = sext i32 %135 to i64, !dbg !2170
  %151 = select i1 %149, i64 0, i64 %150, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %151, metadata !1844, metadata !DIExpression()), !dbg !2169
  %152 = icmp ugt i64 %151, 1, !dbg !2170
  %153 = select i1 %152, i64 %151, i64 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %153, metadata !1845, metadata !DIExpression()), !dbg !2169
  %154 = xor i64 %52, -1, !dbg !2171
  %155 = icmp ult i64 %153, %154, !dbg !2171
  br i1 %155, label %156, label %1052, !dbg !2170

156:                                              ; preds = %146
  br i1 %29, label %178, label %157, !dbg !2170

157:                                              ; preds = %156
  br i1 %152, label %158, label %174, !dbg !2173

158:                                              ; preds = %157
  %159 = add nsw i64 %151, -1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %159, metadata !1846, metadata !DIExpression()), !dbg !2175
  switch i32 %83, label %160 [
    i32 48, label %162
    i32 43, label %162
  ], !dbg !2176

160:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i64 0, metadata !1854, metadata !DIExpression()), !dbg !2177
  %161 = icmp eq i64 %159, 0, !dbg !2178
  br i1 %161, label %174, label %169, !dbg !2181

162:                                              ; preds = %158, %158
  call void @llvm.dbg.value(metadata i64 0, metadata !1851, metadata !DIExpression()), !dbg !2182
  %163 = icmp eq i64 %159, 0, !dbg !2183
  br i1 %163, label %174, label %164, !dbg !2186

164:                                              ; preds = %162, %164
  %165 = phi i64 [ %167, %164 ], [ 0, %162 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !1851, metadata !DIExpression()), !dbg !2182
  %166 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2183
  %167 = add nuw i64 %165, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %167, metadata !1851, metadata !DIExpression()), !dbg !2182
  %168 = icmp eq i64 %167, %159, !dbg !2183
  br i1 %168, label %174, label %164, !dbg !2186, !llvm.loop !2187

169:                                              ; preds = %160, %169
  %170 = phi i64 [ %172, %169 ], [ 0, %160 ]
  call void @llvm.dbg.value(metadata i64 %170, metadata !1854, metadata !DIExpression()), !dbg !2177
  %171 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2178
  %172 = add nuw i64 %170, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %172, metadata !1854, metadata !DIExpression()), !dbg !2177
  %173 = icmp eq i64 %172, %159, !dbg !2178
  br i1 %173, label %174, label %169, !dbg !2181, !llvm.loop !2188

174:                                              ; preds = %164, %169, %160, %162, %157
  %175 = load i8, i8* %142, align 1, !dbg !2173, !tbaa !1589
  %176 = sext i8 %175 to i32, !dbg !2173
  %177 = call i32 @fputc(i32 %176, %struct._IO_FILE* nonnull %0), !dbg !2173
  br label %178, !dbg !2173

178:                                              ; preds = %174, %156
  %179 = add i64 %153, %52, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %179, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

180:                                              ; preds = %139
  %181 = icmp eq i32 %141, 0, !dbg !2189
  br i1 %181, label %182, label %991, !dbg !2191

182:                                              ; preds = %180
  %183 = icmp eq i8 %94, 0, !dbg !2192
  %184 = select i1 %183, i8 %90, i8 1, !dbg !2194
  br label %238, !dbg !2194

185:                                              ; preds = %139
  %186 = icmp eq i32 %141, 0, !dbg !2195
  br i1 %186, label %187, label %991, !dbg !2197

187:                                              ; preds = %185
  %188 = icmp eq i8 %94, 0, !dbg !2198
  %189 = select i1 %188, i8 %90, i8 1, !dbg !2200
  br label %238, !dbg !2200

190:                                              ; preds = %139, %139
  %191 = icmp eq i8 %94, 0, !dbg !2201
  %192 = select i1 %191, i8 %90, i8 1, !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %192, metadata !1820, metadata !DIExpression()), !dbg !2084
  %193 = icmp eq i32 %141, 69, !dbg !2204
  br i1 %193, label %991, label %238, !dbg !2206

194:                                              ; preds = %139
  %195 = icmp eq i32 %141, 69, !dbg !2207
  br i1 %195, label %991, label %196, !dbg !2209

196:                                              ; preds = %194
  %197 = icmp eq i8 %94, 0, !dbg !2210
  %198 = select i1 %197, i8 %90, i8 1, !dbg !2212
  br label %238, !dbg !2212

199:                                              ; preds = %139
  %200 = icmp eq i32 %141, 79, !dbg !2213
  br i1 %200, label %991, label %238, !dbg !2215

201:                                              ; preds = %139, %523, %339, %722
  %202 = phi i32 [ -1, %722 ], [ -1, %339 ], [ %530, %523 ], [ -1, %139 ], !dbg !2216
  %203 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.61, i64 0, i64 0), %722 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.62, i64 0, i64 0), %339 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.63, i64 0, i64 0), %523 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.64, i64 0, i64 0), %139 ], !dbg !2216
  %204 = phi i32 [ %83, %722 ], [ %83, %339 ], [ %531, %523 ], [ %83, %139 ], !dbg !2084
  call void @llvm.dbg.value(metadata i32 %204, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %203, metadata !1813, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %202, metadata !1824, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2057), !dbg !2217
  %205 = icmp ne i8 %90, 0, !dbg !2218
  %206 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %203, %struct.tm* %2, i1 zeroext %205, i32 %204, i32 %202, %struct.tm_zone* %6, i32 %7), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %206, metadata !1856, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %206, metadata !1858, metadata !DIExpression()), !dbg !2221
  %207 = icmp eq i32 %204, 45, !dbg !2222
  %208 = icmp slt i32 %135, 0, !dbg !2222
  %209 = or i1 %208, %207, !dbg !2222
  %210 = sext i32 %135 to i64, !dbg !2222
  %211 = select i1 %209, i64 0, i64 %210, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %211, metadata !1860, metadata !DIExpression()), !dbg !2221
  %212 = icmp ugt i64 %211, %206, !dbg !2222
  %213 = select i1 %212, i64 %211, i64 %206, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %213, metadata !1861, metadata !DIExpression()), !dbg !2221
  %214 = xor i64 %52, -1, !dbg !2223
  %215 = icmp ult i64 %213, %214, !dbg !2223
  br i1 %215, label %216, label %1052, !dbg !2222

216:                                              ; preds = %201
  br i1 %29, label %236, label %217, !dbg !2222

217:                                              ; preds = %216
  br i1 %212, label %218, label %234, !dbg !2225

218:                                              ; preds = %217
  %219 = sub i64 %211, %206, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %219, metadata !1862, metadata !DIExpression()), !dbg !2227
  switch i32 %204, label %220 [
    i32 48, label %222
    i32 43, label %222
  ], !dbg !2228

220:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i64 0, metadata !1870, metadata !DIExpression()), !dbg !2229
  %221 = icmp eq i64 %219, 0, !dbg !2230
  br i1 %221, label %234, label %229, !dbg !2233

222:                                              ; preds = %218, %218
  call void @llvm.dbg.value(metadata i64 0, metadata !1867, metadata !DIExpression()), !dbg !2234
  %223 = icmp eq i64 %219, 0, !dbg !2235
  br i1 %223, label %234, label %224, !dbg !2238

224:                                              ; preds = %222, %224
  %225 = phi i64 [ %227, %224 ], [ 0, %222 ]
  call void @llvm.dbg.value(metadata i64 %225, metadata !1867, metadata !DIExpression()), !dbg !2234
  %226 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2235
  %227 = add nuw i64 %225, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %227, metadata !1867, metadata !DIExpression()), !dbg !2234
  %228 = icmp eq i64 %227, %219, !dbg !2235
  br i1 %228, label %234, label %224, !dbg !2238, !llvm.loop !2239

229:                                              ; preds = %220, %229
  %230 = phi i64 [ %232, %229 ], [ 0, %220 ]
  call void @llvm.dbg.value(metadata i64 %230, metadata !1870, metadata !DIExpression()), !dbg !2229
  %231 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2230
  %232 = add nuw i64 %230, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %232, metadata !1870, metadata !DIExpression()), !dbg !2229
  %233 = icmp eq i64 %232, %219, !dbg !2230
  br i1 %233, label %234, label %229, !dbg !2233, !llvm.loop !2240

234:                                              ; preds = %224, %229, %220, %222, %217
  %235 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* nonnull %0, i8* %203, %struct.tm* %2, i1 zeroext %205, i32 %204, i32 %202, %struct.tm_zone* %6, i32 %7), !dbg !2225
  br label %236, !dbg !2225

236:                                              ; preds = %234, %216
  %237 = add i64 %213, %52, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %237, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

238:                                              ; preds = %682, %196, %187, %182, %860, %373, %865, %720, %139, %337, %324, %199, %190
  %239 = phi i8 [ 121, %865 ], [ 89, %860 ], [ 88, %720 ], [ 114, %139 ], [ 120, %337 ], [ 67, %324 ], [ 99, %199 ], [ %140, %190 ], [ 97, %182 ], [ 65, %187 ], [ 66, %196 ], [ %140, %373 ], [ 112, %682 ], !dbg !2241
  %240 = phi i8 [ %90, %865 ], [ %90, %860 ], [ %90, %720 ], [ %90, %139 ], [ %90, %337 ], [ %90, %324 ], [ %90, %199 ], [ %192, %190 ], [ %184, %182 ], [ %189, %187 ], [ %198, %196 ], [ %90, %373 ], [ %685, %682 ], !dbg !2084
  %241 = phi i1 [ false, %865 ], [ false, %860 ], [ false, %720 ], [ false, %139 ], [ false, %337 ], [ false, %324 ], [ false, %199 ], [ false, %190 ], [ false, %182 ], [ false, %187 ], [ false, %196 ], [ false, %373 ], [ %687, %682 ], !dbg !2084
  %242 = phi i32 [ %83, %865 ], [ %83, %860 ], [ %83, %720 ], [ %83, %139 ], [ %83, %337 ], [ %83, %324 ], [ %83, %199 ], [ %83, %190 ], [ %83, %182 ], [ %83, %187 ], [ %83, %196 ], [ %379, %373 ], [ %83, %682 ], !dbg !2242
  %243 = phi i8* [ %142, %865 ], [ %142, %860 ], [ %142, %720 ], [ %142, %139 ], [ %142, %337 ], [ %142, %324 ], [ %142, %199 ], [ %142, %190 ], [ %142, %182 ], [ %142, %187 ], [ %142, %196 ], [ %380, %373 ], [ %142, %682 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8* %243, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %242, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %240, metadata !1820, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1823, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2058), !dbg !2243
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %43) #13, !dbg !2244
  call void @llvm.dbg.declare(metadata [5 x i8]* %10, metadata !1872, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %43, metadata !1877, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %44) #13, !dbg !2246
  call void @llvm.dbg.declare(metadata [1024 x i8]* %11, metadata !1878, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8* %45, metadata !1877, metadata !DIExpression()), !dbg !2107
  store i8 32, i8* %43, align 1, !dbg !2248, !tbaa !1589
  call void @llvm.dbg.value(metadata i8* %46, metadata !1877, metadata !DIExpression()), !dbg !2107
  store i8 37, i8* %45, align 1, !dbg !2249, !tbaa !1589
  %244 = icmp eq i32 %141, 0, !dbg !2250
  br i1 %244, label %247, label %245, !dbg !2251

245:                                              ; preds = %238
  %246 = trunc i32 %141 to i8, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %47, metadata !1877, metadata !DIExpression()), !dbg !2107
  store i8 %246, i8* %46, align 1, !dbg !2253, !tbaa !1589
  br label %247, !dbg !2254

247:                                              ; preds = %238, %245
  %248 = phi i8* [ %47, %245 ], [ %46, %238 ], !dbg !2107
  call void @llvm.dbg.value(metadata i8* %248, metadata !1877, metadata !DIExpression()), !dbg !2107
  %249 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !2255
  call void @llvm.dbg.value(metadata i8* %249, metadata !1877, metadata !DIExpression()), !dbg !2107
  store i8 %239, i8* %248, align 1, !dbg !2256, !tbaa !1589
  store i8 0, i8* %249, align 1, !dbg !2257, !tbaa !1589
  %250 = call i64 @strftime(i8* nonnull %44, i64 1024, i8* nonnull %43, %struct.tm* %2) #13, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %250, metadata !1882, metadata !DIExpression()), !dbg !2107
  %251 = icmp eq i64 %250, 0, !dbg !2259
  br i1 %251, label %321, label %252, !dbg !2260

252:                                              ; preds = %247
  %253 = add i64 %250, -1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %253, metadata !1883, metadata !DIExpression()), !dbg !2262
  %254 = icmp eq i32 %242, 45, !dbg !2261
  %255 = icmp slt i32 %135, 0, !dbg !2261
  %256 = or i1 %255, %254, !dbg !2261
  %257 = sext i32 %135 to i64, !dbg !2261
  %258 = select i1 %256, i64 0, i64 %257, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %258, metadata !1886, metadata !DIExpression()), !dbg !2262
  %259 = icmp ugt i64 %258, %253, !dbg !2261
  %260 = select i1 %259, i64 %258, i64 %253, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %260, metadata !1887, metadata !DIExpression()), !dbg !2262
  %261 = xor i64 %52, -1, !dbg !2263
  %262 = icmp ult i64 %260, %261, !dbg !2263
  br i1 %262, label %263, label %323, !dbg !2261

263:                                              ; preds = %252
  br i1 %29, label %319, label %264, !dbg !2261

264:                                              ; preds = %263
  br i1 %259, label %265, label %281, !dbg !2265

265:                                              ; preds = %264
  %266 = sub i64 %258, %253, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %266, metadata !1888, metadata !DIExpression()), !dbg !2267
  switch i32 %242, label %267 [
    i32 48, label %269
    i32 43, label %269
  ], !dbg !2268

267:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !2269
  %268 = icmp eq i64 %266, 0, !dbg !2270
  br i1 %268, label %281, label %276, !dbg !2273

269:                                              ; preds = %265, %265
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2274
  %270 = icmp eq i64 %266, 0, !dbg !2275
  br i1 %270, label %281, label %271, !dbg !2278

271:                                              ; preds = %269, %271
  %272 = phi i64 [ %274, %271 ], [ 0, %269 ]
  call void @llvm.dbg.value(metadata i64 %272, metadata !1893, metadata !DIExpression()), !dbg !2274
  %273 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2275
  %274 = add nuw i64 %272, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %274, metadata !1893, metadata !DIExpression()), !dbg !2274
  %275 = icmp eq i64 %274, %266, !dbg !2275
  br i1 %275, label %281, label %271, !dbg !2278, !llvm.loop !2279

276:                                              ; preds = %267, %276
  %277 = phi i64 [ %279, %276 ], [ 0, %267 ]
  call void @llvm.dbg.value(metadata i64 %277, metadata !1896, metadata !DIExpression()), !dbg !2269
  %278 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2270
  %279 = add nuw i64 %277, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %279, metadata !1896, metadata !DIExpression()), !dbg !2269
  %280 = icmp eq i64 %279, %266, !dbg !2270
  br i1 %280, label %281, label %276, !dbg !2273, !llvm.loop !2280

281:                                              ; preds = %271, %276, %267, %269, %264
  br i1 %241, label %282, label %298, !dbg !2281

282:                                              ; preds = %281
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2282, metadata !DIExpression()) #13, !dbg !2292
  call void @llvm.dbg.value(metadata [1024 x i8]* %11, metadata !2287, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %253, metadata !2288, metadata !DIExpression()) #13, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %253, metadata !2288, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2292
  %283 = icmp eq i64 %253, 0, !dbg !2294
  br i1 %283, label %319, label %284, !dbg !2295

284:                                              ; preds = %282
  call void @llvm.dbg.value(metadata i8* %48, metadata !2287, metadata !DIExpression()) #13, !dbg !2292
  %285 = tail call i32** @__ctype_tolower_loc() #24, !dbg !2296
  br label %286, !dbg !2295

286:                                              ; preds = %286, %284
  %287 = phi i8* [ %48, %284 ], [ %296, %286 ]
  %288 = phi i64 [ %253, %284 ], [ %289, %286 ]
  call void @llvm.dbg.value(metadata i8* %287, metadata !2287, metadata !DIExpression()) #13, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %288, metadata !2288, metadata !DIExpression()) #13, !dbg !2292
  %289 = add i64 %288, -1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %289, metadata !2288, metadata !DIExpression()) #13, !dbg !2292
  %290 = load i32*, i32** %285, align 8, !dbg !2299, !tbaa !1423
  %291 = load i8, i8* %287, align 1, !dbg !2299, !tbaa !1589
  %292 = zext i8 %291 to i64, !dbg !2299
  %293 = getelementptr inbounds i32, i32* %290, i64 %292, !dbg !2299
  %294 = load i32, i32* %293, align 4, !dbg !2299, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %294, metadata !2289, metadata !DIExpression()) #13, !dbg !2300
  %295 = call i32 @fputc(i32 %294, %struct._IO_FILE* nonnull %0) #13, !dbg !2301
  %296 = getelementptr inbounds i8, i8* %287, i64 1, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %296, metadata !2287, metadata !DIExpression()) #13, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %289, metadata !2288, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2292
  %297 = icmp eq i64 %289, 0, !dbg !2294
  br i1 %297, label %319, label %286, !dbg !2295, !llvm.loop !2303

298:                                              ; preds = %281
  %299 = and i8 %240, 1, !dbg !2305
  %300 = icmp eq i8 %299, 0, !dbg !2305
  br i1 %300, label %317, label %301, !dbg !2306

301:                                              ; preds = %298
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2307, metadata !DIExpression()) #13, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %48, metadata !2310, metadata !DIExpression()) #13, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %253, metadata !2311, metadata !DIExpression()) #13, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %253, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2315
  %302 = icmp eq i64 %253, 0, !dbg !2317
  br i1 %302, label %319, label %303, !dbg !2318

303:                                              ; preds = %301
  %304 = tail call i32** @__ctype_toupper_loc() #24, !dbg !2319
  br label %305, !dbg !2318

305:                                              ; preds = %305, %303
  %306 = phi i8* [ %48, %303 ], [ %315, %305 ]
  %307 = phi i64 [ %253, %303 ], [ %308, %305 ]
  call void @llvm.dbg.value(metadata i8* %306, metadata !2310, metadata !DIExpression()) #13, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %307, metadata !2311, metadata !DIExpression()) #13, !dbg !2315
  %308 = add i64 %307, -1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %308, metadata !2311, metadata !DIExpression()) #13, !dbg !2315
  %309 = load i32*, i32** %304, align 8, !dbg !2322, !tbaa !1423
  %310 = load i8, i8* %306, align 1, !dbg !2322, !tbaa !1589
  %311 = zext i8 %310 to i64, !dbg !2322
  %312 = getelementptr inbounds i32, i32* %309, i64 %311, !dbg !2322
  %313 = load i32, i32* %312, align 4, !dbg !2322, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %313, metadata !2312, metadata !DIExpression()) #13, !dbg !2323
  %314 = call i32 @fputc(i32 %313, %struct._IO_FILE* nonnull %0) #13, !dbg !2324
  %315 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %315, metadata !2310, metadata !DIExpression()) #13, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %308, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2315
  %316 = icmp eq i64 %308, 0, !dbg !2317
  br i1 %316, label %319, label %305, !dbg !2318, !llvm.loop !2326

317:                                              ; preds = %298
  %318 = call i64 @fwrite(i8* nonnull %48, i64 %253, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2328
  br label %319

319:                                              ; preds = %305, %286, %317, %263, %282, %301
  %320 = add i64 %260, %52, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %320, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %321

321:                                              ; preds = %319, %247
  %322 = phi i64 [ %320, %319 ], [ %52, %247 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %44) #13, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %43) #13, !dbg !2330
  br label %1053

323:                                              ; preds = %252
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %44) #13, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %43) #13, !dbg !2330
  br label %1052

324:                                              ; preds = %139
  %325 = icmp eq i32 %141, 69, !dbg !2331
  br i1 %325, label %238, label %326, !dbg !2333

326:                                              ; preds = %324
  %327 = load i32, i32* %32, align 4, !dbg !2334, !tbaa !2335
  %328 = icmp slt i32 %327, -1900, !dbg !2336
  call void @llvm.dbg.value(metadata i1 %328, metadata !1898, metadata !DIExpression()), !dbg !2337
  %329 = xor i1 %328, true, !dbg !2338
  %330 = zext i1 %329 to i32, !dbg !2338
  %331 = lshr i32 %327, 31, !dbg !2339
  %332 = and i32 %331, %330, !dbg !2340
  call void @llvm.dbg.value(metadata i1 undef, metadata !1900, metadata !DIExpression()), !dbg !2337
  %333 = mul nuw nsw i32 %332, -99, !dbg !2341
  %334 = add i32 %333, %327, !dbg !2341
  %335 = sdiv i32 %334, 100, !dbg !2342
  %336 = add nsw i32 %335, 19, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %336, metadata !1901, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i1 %328, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %336, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %349

337:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  %338 = icmp eq i32 %141, 79, !dbg !2344
  br i1 %338, label %991, label %238, !dbg !2346

339:                                              ; preds = %139
  %340 = icmp eq i32 %141, 0, !dbg !2347
  br i1 %340, label %201, label %991, !dbg !2349

341:                                              ; preds = %139
  %342 = icmp eq i32 %141, 69, !dbg !2350
  br i1 %342, label %991, label %343, !dbg !2352

343:                                              ; preds = %341
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %344 = load i32, i32* %41, align 4, !dbg !2353, !tbaa !2355
  call void @llvm.dbg.value(metadata i32 %344, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2353

345:                                              ; preds = %139
  %346 = icmp eq i32 %141, 69, !dbg !2356
  br i1 %346, label %991, label %347, !dbg !2358

347:                                              ; preds = %345
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %348 = load i32, i32* %41, align 4, !dbg !2359, !tbaa !2355
  call void @llvm.dbg.value(metadata i32 %348, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %363, !dbg !2359

349:                                              ; preds = %832, %827, %838, %867, %326, %861
  %350 = phi i1 [ %863, %861 ], [ %328, %326 ], [ false, %867 ], [ false, %832 ], [ false, %827 ], [ %840, %838 ]
  %351 = phi i32 [ %864, %861 ], [ %336, %326 ], [ %875, %867 ], [ %837, %832 ], [ %830, %827 ], [ %842, %838 ]
  %352 = phi i32 [ 4, %861 ], [ 2, %326 ], [ 2, %867 ], [ 2, %832 ], [ 2, %827 ], [ 4, %838 ], !dbg !2216
  %353 = zext i1 %350 to i8
  call void @llvm.dbg.value(metadata i32 %352, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %351, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %353, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2060), !dbg !2360
  %354 = icmp eq i32 %83, 0, !dbg !2361
  %355 = select i1 %354, i32 %4, i32 %83, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %355, metadata !1802, metadata !DIExpression()), !dbg !2084
  %356 = icmp eq i32 %355, 43, !dbg !2364
  br i1 %356, label %357, label %373, !dbg !2365

357:                                              ; preds = %349
  %358 = icmp eq i32 %352, 2, !dbg !2366
  %359 = select i1 %358, i32 99, i32 9999, !dbg !2367
  %360 = icmp ult i32 %359, %351, !dbg !2368
  %361 = icmp slt i32 %352, %135, !dbg !2369
  %362 = or i1 %361, %360, !dbg !2369
  br label %373, !dbg !2369

363:                                              ; preds = %542, %540, %347
  %364 = phi i32 [ %541, %540 ], [ %348, %347 ], [ %24, %542 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %364, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2061), !dbg !2370
  %365 = icmp eq i32 %83, 0, !dbg !2371
  %366 = select i1 %365, i32 95, i32 %83, !dbg !2373
  br label %367, !dbg !2373

367:                                              ; preds = %843, %363, %536, %858, %848, %762, %755, %695, %553, %534, %343
  %368 = phi i32 [ %859, %858 ], [ %855, %848 ], [ %845, %843 ], [ %767, %762 ], [ %759, %755 ], [ %696, %695 ], [ %554, %553 ], [ %535, %534 ], [ %344, %343 ], [ %364, %363 ], [ %24, %536 ], !dbg !2216
  %369 = phi i32 [ 1, %858 ], [ 2, %848 ], [ 2, %843 ], [ 2, %762 ], [ 1, %755 ], [ 2, %695 ], [ 2, %553 ], [ 2, %534 ], [ 2, %343 ], [ 2, %363 ], [ 2, %536 ], !dbg !2216
  %370 = phi i32 [ %83, %858 ], [ %83, %848 ], [ %83, %843 ], [ %83, %762 ], [ %83, %755 ], [ %83, %695 ], [ %83, %553 ], [ %83, %534 ], [ %83, %343 ], [ %366, %363 ], [ %83, %536 ], !dbg !2084
  call void @llvm.dbg.value(metadata i32 %370, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %369, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %368, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2062), !dbg !2374
  %371 = lshr i32 %368, 31, !dbg !2375
  %372 = trunc i32 %371 to i8, !dbg !2375
  call void @llvm.dbg.value(metadata i8 %372, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %368, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2376

373:                                              ; preds = %987, %974, %977, %980, %357, %349, %688, %557, %546, %367
  %374 = phi i32 [ 0, %367 ], [ 0, %546 ], [ 0, %557 ], [ 0, %688 ], [ 0, %349 ], [ 0, %357 ], [ 0, %987 ], [ 0, %974 ], [ 4, %977 ], [ 20, %980 ]
  %375 = phi i1 [ false, %367 ], [ false, %546 ], [ false, %557 ], [ false, %688 ], [ false, %349 ], [ %362, %357 ], [ true, %987 ], [ true, %974 ], [ true, %977 ], [ true, %980 ], !dbg !2216
  %376 = phi i8 [ %372, %367 ], [ %549, %546 ], [ %560, %557 ], [ 0, %688 ], [ %353, %349 ], [ %353, %357 ], [ %969, %987 ], [ %969, %974 ], [ %969, %977 ], [ %969, %980 ], !dbg !2216
  %377 = phi i32 [ %368, %367 ], [ %550, %546 ], [ %561, %557 ], [ %692, %688 ], [ %351, %349 ], [ %351, %357 ], [ %971, %987 ], [ %976, %974 ], [ %979, %977 ], [ %984, %980 ]
  %378 = phi i32 [ %369, %367 ], [ 3, %546 ], [ 2, %557 ], [ 1, %688 ], [ %352, %349 ], [ %352, %357 ], [ 3, %987 ], [ 5, %974 ], [ 6, %977 ], [ 9, %980 ], !dbg !2084
  %379 = phi i32 [ %370, %367 ], [ %83, %546 ], [ %83, %557 ], [ %83, %688 ], [ %355, %349 ], [ 43, %357 ], [ %83, %987 ], [ %83, %974 ], [ %83, %977 ], [ %83, %980 ], !dbg !2084
  %380 = phi i8* [ %142, %367 ], [ %142, %546 ], [ %142, %557 ], [ %142, %688 ], [ %142, %349 ], [ %142, %357 ], [ %955, %987 ], [ %955, %974 ], [ %955, %977 ], [ %955, %980 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8* %380, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %379, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %378, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %377, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %376, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1811, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %374, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2065), !dbg !2377
  %381 = icmp eq i32 %141, 79, !dbg !2378
  %382 = icmp eq i8 %376, 0, !dbg !2380
  %383 = and i1 %381, %382, !dbg !2381
  br i1 %383, label %238, label %384, !dbg !2381

384:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8* %37, metadata !1814, metadata !DIExpression()), !dbg !2084
  %385 = sub i32 0, %377, !dbg !2382
  %386 = select i1 %382, i32 %377, i32 %385, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %386, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %387, !dbg !2385

387:                                              ; preds = %395, %384
  %388 = phi i8* [ %37, %384 ], [ %401, %395 ], !dbg !2216
  %389 = phi i32 [ %374, %384 ], [ %397, %395 ]
  %390 = phi i32 [ %386, %384 ], [ %402, %395 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %390, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %389, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %388, metadata !1814, metadata !DIExpression()), !dbg !2084
  %391 = and i32 %389, 1, !dbg !2386
  %392 = icmp eq i32 %391, 0, !dbg !2386
  br i1 %392, label %395, label %393, !dbg !2389

393:                                              ; preds = %387
  %394 = getelementptr inbounds i8, i8* %388, i64 -1, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %394, metadata !1814, metadata !DIExpression()), !dbg !2084
  store i8 58, i8* %394, align 1, !dbg !2391, !tbaa !1589
  br label %395, !dbg !2392

395:                                              ; preds = %387, %393
  %396 = phi i8* [ %394, %393 ], [ %388, %387 ], !dbg !2216
  call void @llvm.dbg.value(metadata i8* %396, metadata !1814, metadata !DIExpression()), !dbg !2084
  %397 = ashr i32 %389, 1, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %397, metadata !1812, metadata !DIExpression()), !dbg !2084
  %398 = urem i32 %390, 10, !dbg !2394
  %399 = trunc i32 %398 to i8, !dbg !2395
  %400 = or i8 %399, 48, !dbg !2395
  %401 = getelementptr inbounds i8, i8* %396, i64 -1, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %401, metadata !1814, metadata !DIExpression()), !dbg !2084
  store i8 %400, i8* %401, align 1, !dbg !2397, !tbaa !1589
  %402 = udiv i32 %390, 10, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %402, metadata !1809, metadata !DIExpression()), !dbg !2084
  %403 = icmp ugt i32 %390, 9, !dbg !2399
  %404 = icmp ne i32 %397, 0, !dbg !2400
  %405 = or i1 %403, %404, !dbg !2400
  br i1 %405, label %387, label %406, !dbg !2401, !llvm.loop !2402

406:                                              ; preds = %395
  call void @llvm.dbg.value(metadata i8* %380, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %379, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %378, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %402, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %376, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1811, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %401, metadata !1814, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2066), !dbg !2404
  %407 = icmp eq i32 %379, 0, !dbg !2405
  %408 = select i1 %407, i32 48, i32 %379, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %408, metadata !1802, metadata !DIExpression()), !dbg !2084
  %409 = icmp slt i32 %135, 0, !dbg !2408
  %410 = select i1 %409, i32 %378, i32 %135, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %410, metadata !1792, metadata !DIExpression()), !dbg !2072
  %411 = select i1 %375, i8 43, i8 0, !dbg !2411
  br label %412, !dbg !2411

412:                                              ; preds = %406, %714
  %413 = phi i8 [ %715, %714 ], [ %376, %406 ]
  %414 = phi i32 [ %719, %714 ], [ %410, %406 ]
  %415 = phi i32 [ %717, %714 ], [ %408, %406 ]
  %416 = phi i8* [ %142, %714 ], [ %380, %406 ]
  %417 = phi i8* [ %711, %714 ], [ %401, %406 ]
  %418 = phi i8 [ 0, %714 ], [ %411, %406 ]
  %419 = icmp eq i8 %413, 0, !dbg !2412
  %420 = select i1 %419, i8 %418, i8 45, !dbg !2412
  call void @llvm.dbg.value(metadata i8 %420, metadata !1902, metadata !DIExpression()), !dbg !2106
  %421 = ptrtoint i8* %417 to i64, !dbg !2413
  %422 = sub i64 %42, %421, !dbg !2413
  %423 = trunc i64 %422 to i32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %423, metadata !1904, metadata !DIExpression()), !dbg !2106
  %424 = icmp ne i8 %420, 0, !dbg !2415
  %425 = sext i1 %424 to i32, !dbg !2416
  %426 = sub i32 %414, %423, !dbg !2416
  %427 = add i32 %426, %425, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %427, metadata !1905, metadata !DIExpression()), !dbg !2106
  %428 = icmp eq i32 %415, 45, !dbg !2418
  %429 = icmp slt i32 %427, 1, !dbg !2419
  %430 = or i1 %428, %429, !dbg !2420
  %431 = select i1 %430, i32 0, i32 %427, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %431, metadata !1906, metadata !DIExpression()), !dbg !2106
  br i1 %424, label %432, label %458, !dbg !2421

432:                                              ; preds = %412
  %433 = icmp eq i32 %415, 95, !dbg !2422
  br i1 %433, label %434, label %447, !dbg !2423

434:                                              ; preds = %432
  %435 = zext i32 %431 to i64, !dbg !2424
  br i1 %29, label %443, label %436, !dbg !2425

436:                                              ; preds = %434
  call void @llvm.dbg.value(metadata i64 0, metadata !1907, metadata !DIExpression()), !dbg !2426
  %437 = icmp eq i32 %431, 0, !dbg !2427
  br i1 %437, label %443, label %438, !dbg !2430

438:                                              ; preds = %436, %438
  %439 = phi i64 [ %441, %438 ], [ 0, %436 ]
  call void @llvm.dbg.value(metadata i64 %439, metadata !1907, metadata !DIExpression()), !dbg !2426
  %440 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2427
  %441 = add nuw i64 %439, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %441, metadata !1907, metadata !DIExpression()), !dbg !2426
  %442 = icmp ult i64 %441, %435, !dbg !2427
  br i1 %442, label %438, label %443, !dbg !2430, !llvm.loop !2431

443:                                              ; preds = %438, %434, %436
  %444 = phi i64 [ 0, %436 ], [ %435, %434 ], [ %435, %438 ], !dbg !2432
  %445 = add i64 %52, %444, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %445, metadata !1799, metadata !DIExpression()), !dbg !2072
  %446 = sub nsw i32 %414, %431, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %446, metadata !1792, metadata !DIExpression()), !dbg !2072
  br label %447, !dbg !2435

447:                                              ; preds = %432, %443
  %448 = phi i64 [ %445, %443 ], [ %52, %432 ], !dbg !2072
  %449 = phi i32 [ %446, %443 ], [ %414, %432 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %449, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %448, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 1, metadata !1914, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 1, metadata !1917, metadata !DIExpression()), !dbg !2436
  %450 = icmp ugt i64 %448, -3, !dbg !2437
  br i1 %450, label %1052, label %451, !dbg !2439

451:                                              ; preds = %447
  br i1 %29, label %455, label %452, !dbg !2439

452:                                              ; preds = %451
  %453 = zext i8 %420 to i32, !dbg !2440
  %454 = call i32 @fputc(i32 %453, %struct._IO_FILE* nonnull %0), !dbg !2440
  br label %455, !dbg !2440

455:                                              ; preds = %452, %451
  %456 = add nuw i64 %448, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %456, metadata !1799, metadata !DIExpression()), !dbg !2072
  %457 = add nsw i32 %449, -1, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %457, metadata !1792, metadata !DIExpression()), !dbg !2072
  br label %458, !dbg !2442

458:                                              ; preds = %412, %455
  %459 = phi i64 [ %456, %455 ], [ %52, %412 ], !dbg !2072
  %460 = phi i32 [ %457, %455 ], [ %414, %412 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %460, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %459, metadata !1799, metadata !DIExpression()), !dbg !2072
  %461 = shl i64 %422, 32, !dbg !2443
  %462 = ashr exact i64 %461, 32, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %462, metadata !1928, metadata !DIExpression()), !dbg !2444
  %463 = icmp slt i32 %460, 0, !dbg !2443
  %464 = or i1 %428, %463, !dbg !2443
  %465 = sext i32 %460 to i64, !dbg !2443
  %466 = select i1 %464, i64 0, i64 %465, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %466, metadata !1930, metadata !DIExpression()), !dbg !2444
  %467 = icmp ugt i64 %466, %462, !dbg !2443
  %468 = select i1 %467, i64 %466, i64 %462, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %468, metadata !1931, metadata !DIExpression()), !dbg !2444
  %469 = xor i64 %459, -1, !dbg !2445
  %470 = icmp ult i64 %468, %469, !dbg !2445
  br i1 %470, label %471, label %1052, !dbg !2443

471:                                              ; preds = %458
  br i1 %29, label %519, label %472, !dbg !2443

472:                                              ; preds = %471
  br i1 %467, label %473, label %499, !dbg !2447

473:                                              ; preds = %472
  %474 = sub nsw i64 %466, %462, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %474, metadata !1932, metadata !DIExpression()), !dbg !2449
  switch i32 %415, label %475 [
    i32 48, label %482
    i32 43, label %482
  ], !dbg !2450

475:                                              ; preds = %473
  call void @llvm.dbg.value(metadata i64 0, metadata !1940, metadata !DIExpression()), !dbg !2451
  %476 = icmp eq i64 %474, 0, !dbg !2452
  br i1 %476, label %499, label %477, !dbg !2455

477:                                              ; preds = %475
  %478 = sub i64 %42, %421, !dbg !2455
  %479 = shl i64 %478, 32, !dbg !2455
  %480 = ashr exact i64 %479, 32, !dbg !2455
  %481 = sub nsw i64 %466, %480, !dbg !2455
  br label %494, !dbg !2455

482:                                              ; preds = %473, %473
  call void @llvm.dbg.value(metadata i64 0, metadata !1937, metadata !DIExpression()), !dbg !2456
  %483 = icmp eq i64 %474, 0, !dbg !2457
  br i1 %483, label %499, label %484, !dbg !2460

484:                                              ; preds = %482
  %485 = sub i64 %42, %421, !dbg !2460
  %486 = shl i64 %485, 32, !dbg !2460
  %487 = ashr exact i64 %486, 32, !dbg !2460
  %488 = sub nsw i64 %466, %487, !dbg !2460
  br label %489, !dbg !2460

489:                                              ; preds = %489, %484
  %490 = phi i64 [ %492, %489 ], [ 0, %484 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1937, metadata !DIExpression()), !dbg !2456
  %491 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2457
  %492 = add nuw i64 %490, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %492, metadata !1937, metadata !DIExpression()), !dbg !2456
  %493 = icmp eq i64 %492, %488, !dbg !2457
  br i1 %493, label %499, label %489, !dbg !2460, !llvm.loop !2461

494:                                              ; preds = %494, %477
  %495 = phi i64 [ %497, %494 ], [ 0, %477 ]
  call void @llvm.dbg.value(metadata i64 %495, metadata !1940, metadata !DIExpression()), !dbg !2451
  %496 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2452
  %497 = add nuw i64 %495, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %497, metadata !1940, metadata !DIExpression()), !dbg !2451
  %498 = icmp eq i64 %497, %481, !dbg !2452
  br i1 %498, label %499, label %494, !dbg !2455, !llvm.loop !2462

499:                                              ; preds = %489, %494, %475, %482, %472
  %500 = icmp eq i8 %90, 0, !dbg !2463
  br i1 %500, label %517, label %501, !dbg !2467

501:                                              ; preds = %499
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2307, metadata !DIExpression()) #13, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %401, metadata !2310, metadata !DIExpression()) #13, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %462, metadata !2311, metadata !DIExpression()) #13, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %462, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2468
  %502 = icmp eq i64 %461, 0, !dbg !2470
  br i1 %502, label %519, label %503, !dbg !2471

503:                                              ; preds = %501
  %504 = tail call i32** @__ctype_toupper_loc() #24, !dbg !2472
  br label %505, !dbg !2471

505:                                              ; preds = %505, %503
  %506 = phi i8* [ %417, %503 ], [ %515, %505 ]
  %507 = phi i64 [ %462, %503 ], [ %508, %505 ]
  call void @llvm.dbg.value(metadata i8* %506, metadata !2310, metadata !DIExpression()) #13, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %507, metadata !2311, metadata !DIExpression()) #13, !dbg !2468
  %508 = add i64 %507, -1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %508, metadata !2311, metadata !DIExpression()) #13, !dbg !2468
  %509 = load i32*, i32** %504, align 8, !dbg !2474, !tbaa !1423
  %510 = load i8, i8* %506, align 1, !dbg !2474, !tbaa !1589
  %511 = zext i8 %510 to i64, !dbg !2474
  %512 = getelementptr inbounds i32, i32* %509, i64 %511, !dbg !2474
  %513 = load i32, i32* %512, align 4, !dbg !2474, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %513, metadata !2312, metadata !DIExpression()) #13, !dbg !2475
  %514 = call i32 @fputc(i32 %513, %struct._IO_FILE* nonnull %0) #13, !dbg !2476
  %515 = getelementptr inbounds i8, i8* %506, i64 1, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %515, metadata !2310, metadata !DIExpression()) #13, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %508, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2468
  %516 = icmp eq i64 %508, 0, !dbg !2470
  br i1 %516, label %519, label %505, !dbg !2471, !llvm.loop !2478

517:                                              ; preds = %499
  %518 = call i64 @fwrite(i8* %417, i64 %462, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2480
  br label %519

519:                                              ; preds = %505, %517, %471, %501
  %520 = add i64 %468, %459, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %520, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

521:                                              ; preds = %139
  %522 = icmp eq i32 %141, 0, !dbg !2482
  br i1 %522, label %523, label %991, !dbg !2484

523:                                              ; preds = %521
  %524 = icmp eq i32 %83, 0, !dbg !2485
  %525 = icmp slt i32 %135, 0, !dbg !2487
  %526 = and i1 %524, %525, !dbg !2488
  %527 = icmp sgt i32 %135, 6, !dbg !2488
  %528 = select i1 %527, i32 %135, i32 6, !dbg !2488
  %529 = add nsw i32 %528, -6, !dbg !2488
  %530 = select i1 %526, i32 4, i32 %529, !dbg !2488
  %531 = select i1 %526, i32 43, i32 %83, !dbg !2488
  br label %201, !dbg !2488

532:                                              ; preds = %139
  %533 = icmp eq i32 %141, 69, !dbg !2489
  br i1 %533, label %991, label %534, !dbg !2491

534:                                              ; preds = %532
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %535 = load i32, i32* %14, align 8, !dbg !2492, !tbaa !2074
  call void @llvm.dbg.value(metadata i32 %535, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2492

536:                                              ; preds = %139
  %537 = icmp eq i32 %141, 69, !dbg !2494
  br i1 %537, label %991, label %367, !dbg !2496

538:                                              ; preds = %139
  %539 = icmp eq i32 %141, 69, !dbg !2497
  br i1 %539, label %991, label %540, !dbg !2499

540:                                              ; preds = %538
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %541 = load i32, i32* %14, align 8, !dbg !2500, !tbaa !2074
  call void @llvm.dbg.value(metadata i32 %541, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %363, !dbg !2500

542:                                              ; preds = %139
  %543 = icmp eq i32 %141, 69, !dbg !2502
  br i1 %543, label %991, label %363, !dbg !2504

544:                                              ; preds = %139
  %545 = icmp eq i32 %141, 69, !dbg !2505
  br i1 %545, label %991, label %546, !dbg !2507

546:                                              ; preds = %544
  call void @llvm.dbg.value(metadata i32 3, metadata !1807, metadata !DIExpression()), !dbg !2084
  %547 = load i32, i32* %34, align 4, !dbg !2508, !tbaa !2510
  %548 = icmp slt i32 %547, -1, !dbg !2508
  %549 = zext i1 %548 to i8, !dbg !2508
  call void @llvm.dbg.value(metadata i8 %549, metadata !1810, metadata !DIExpression()), !dbg !2084
  %550 = add i32 %547, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %550, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2508

551:                                              ; preds = %139
  %552 = icmp eq i32 %141, 69, !dbg !2511
  br i1 %552, label %991, label %553, !dbg !2513

553:                                              ; preds = %551
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %554 = load i32, i32* %40, align 4, !dbg !2514, !tbaa !2515
  call void @llvm.dbg.value(metadata i32 %554, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2514

555:                                              ; preds = %139
  %556 = icmp eq i32 %141, 69, !dbg !2516
  br i1 %556, label %991, label %557, !dbg !2518

557:                                              ; preds = %555
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %558 = load i32, i32* %39, align 8, !dbg !2519, !tbaa !2521
  %559 = icmp slt i32 %558, -1, !dbg !2519
  %560 = zext i1 %559 to i8, !dbg !2519
  call void @llvm.dbg.value(metadata i8 %560, metadata !1810, metadata !DIExpression()), !dbg !2084
  %561 = add i32 %558, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %561, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2519

562:                                              ; preds = %139
  %563 = icmp eq i32 %141, 69, !dbg !2522
  br i1 %563, label %991, label %564, !dbg !2524

564:                                              ; preds = %562
  call void @llvm.dbg.value(metadata i32 %7, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 9, metadata !1944, metadata !DIExpression()), !dbg !2525
  %565 = icmp slt i32 %135, 1, !dbg !2526
  %566 = select i1 %565, i32 9, i32 %135, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %566, metadata !1792, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 9, metadata !1945, metadata !DIExpression()), !dbg !2525
  br label %567, !dbg !2529

567:                                              ; preds = %582, %564
  %568 = phi i32 [ %7, %564 ], [ %584, %582 ], !dbg !2525
  %569 = phi i32 [ 9, %564 ], [ %583, %582 ], !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  %570 = icmp slt i32 %566, %569, !dbg !2530
  br i1 %570, label %582, label %571, !dbg !2531

571:                                              ; preds = %567
  %572 = icmp sgt i32 %569, 1, !dbg !2532
  %573 = srem i32 %568, 10, !dbg !2533
  %574 = icmp eq i32 %573, 0, !dbg !2534
  %575 = and i1 %572, %574, !dbg !2535
  br i1 %575, label %582, label %576, !dbg !2535

576:                                              ; preds = %571
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %568, metadata !1942, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1945, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %569, metadata !1946, metadata !DIExpression()), !dbg !2536
  %577 = icmp sgt i32 %569, 0, !dbg !2537
  br i1 %577, label %580, label %578, !dbg !2539

578:                                              ; preds = %576
  %579 = sext i32 %569 to i64, !dbg !2540
  br label %585, !dbg !2539

580:                                              ; preds = %576
  %581 = zext i32 %569 to i64, !dbg !2539
  br label %592, !dbg !2539

582:                                              ; preds = %571, %567
  %583 = add nsw i32 %569, -1, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %583, metadata !1945, metadata !DIExpression()), !dbg !2525
  %584 = sdiv i32 %568, 10, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %584, metadata !1942, metadata !DIExpression()), !dbg !2525
  br label %567, !dbg !2529, !llvm.loop !2543

585:                                              ; preds = %592, %578
  %586 = phi i64 [ %579, %578 ], [ %581, %592 ], !dbg !2540
  %587 = icmp eq i32 %83, 0, !dbg !2545
  %588 = select i1 %587, i32 48, i32 %83, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %588, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %586, metadata !1948, metadata !DIExpression()), !dbg !2548
  %589 = icmp eq i32 %588, 45, !dbg !2540
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 %586, metadata !1951, metadata !DIExpression()), !dbg !2548
  %590 = xor i64 %52, -1, !dbg !2549
  %591 = icmp ult i64 %586, %590, !dbg !2549
  br i1 %591, label %602, label %1052, !dbg !2540

592:                                              ; preds = %580, %592
  %593 = phi i64 [ %581, %580 ], [ %598, %592 ]
  %594 = phi i32 [ %568, %580 ], [ %600, %592 ]
  call void @llvm.dbg.value(metadata i64 %593, metadata !1946, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %594, metadata !1942, metadata !DIExpression()), !dbg !2525
  %595 = srem i32 %594, 10, !dbg !2551
  %596 = trunc i32 %595 to i8, !dbg !2552
  %597 = add nsw i8 %596, 48, !dbg !2552
  %598 = add nsw i64 %593, -1, !dbg !2553
  %599 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 %598, !dbg !2554
  store i8 %597, i8* %599, align 1, !dbg !2555, !tbaa !1589
  %600 = sdiv i32 %594, 10, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %598, metadata !1946, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %600, metadata !1942, metadata !DIExpression()), !dbg !2525
  %601 = icmp sgt i64 %593, 1, !dbg !2537
  br i1 %601, label %592, label %585, !dbg !2539, !llvm.loop !2557

602:                                              ; preds = %585
  br i1 %29, label %623, label %603, !dbg !2540

603:                                              ; preds = %602
  %604 = icmp eq i8 %90, 0, !dbg !2559
  br i1 %604, label %621, label %605, !dbg !2563

605:                                              ; preds = %603
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2307, metadata !DIExpression()) #13, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %28, metadata !2310, metadata !DIExpression()) #13, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %586, metadata !2311, metadata !DIExpression()) #13, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %586, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2564
  %606 = icmp eq i32 %569, 0, !dbg !2566
  br i1 %606, label %623, label %607, !dbg !2567

607:                                              ; preds = %605
  %608 = tail call i32** @__ctype_toupper_loc() #24, !dbg !2568
  br label %609, !dbg !2567

609:                                              ; preds = %609, %607
  %610 = phi i8* [ %28, %607 ], [ %619, %609 ]
  %611 = phi i64 [ %586, %607 ], [ %612, %609 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2310, metadata !DIExpression()) #13, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %611, metadata !2311, metadata !DIExpression()) #13, !dbg !2564
  %612 = add i64 %611, -1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %612, metadata !2311, metadata !DIExpression()) #13, !dbg !2564
  %613 = load i32*, i32** %608, align 8, !dbg !2570, !tbaa !1423
  %614 = load i8, i8* %610, align 1, !dbg !2570, !tbaa !1589
  %615 = zext i8 %614 to i64, !dbg !2570
  %616 = getelementptr inbounds i32, i32* %613, i64 %615, !dbg !2570
  %617 = load i32, i32* %616, align 4, !dbg !2570, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %617, metadata !2312, metadata !DIExpression()) #13, !dbg !2571
  %618 = call i32 @fputc(i32 %617, %struct._IO_FILE* nonnull %0) #13, !dbg !2572
  %619 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %619, metadata !2310, metadata !DIExpression()) #13, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %612, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2564
  %620 = icmp eq i64 %612, 0, !dbg !2566
  br i1 %620, label %623, label %609, !dbg !2567, !llvm.loop !2574

621:                                              ; preds = %603
  %622 = call i64 @fwrite(i8* nonnull %28, i64 %586, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2576
  br label %623

623:                                              ; preds = %609, %621, %602, %605
  %624 = add i64 %52, %586, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %624, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !1962, metadata !DIExpression()), !dbg !2578
  %625 = sub nsw i32 %566, %569, !dbg !2579
  %626 = icmp sgt i32 %625, 0, !dbg !2579
  %627 = select i1 %626, i32 %625, i32 0, !dbg !2579
  %628 = select i1 %589, i32 0, i32 %627, !dbg !2579
  %629 = zext i32 %628 to i64, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %629, metadata !1964, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %629, metadata !1965, metadata !DIExpression()), !dbg !2578
  %630 = xor i64 %624, -1, !dbg !2580
  %631 = icmp ult i64 %629, %630, !dbg !2580
  br i1 %631, label %632, label %1052, !dbg !2579

632:                                              ; preds = %623
  %633 = icmp eq i32 %628, 0, !dbg !2579
  %634 = or i1 %29, %633, !dbg !2579
  br i1 %634, label %647, label %635, !dbg !2579

635:                                              ; preds = %632
  call void @llvm.dbg.value(metadata i64 %629, metadata !1966, metadata !DIExpression()), !dbg !2582
  switch i32 %588, label %642 [
    i32 48, label %636
    i32 43, label %636
  ], !dbg !2583

636:                                              ; preds = %635, %635
  br label %637, !dbg !2584

637:                                              ; preds = %636, %637
  %638 = phi i64 [ %640, %637 ], [ 0, %636 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1971, metadata !DIExpression()), !dbg !2586
  %639 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2587
  %640 = add nuw nsw i64 %638, 1, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %640, metadata !1971, metadata !DIExpression()), !dbg !2586
  %641 = icmp eq i64 %640, %629, !dbg !2587
  br i1 %641, label %647, label %637, !dbg !2584, !llvm.loop !2589

642:                                              ; preds = %635, %642
  %643 = phi i64 [ %645, %642 ], [ 0, %635 ]
  call void @llvm.dbg.value(metadata i64 %643, metadata !1974, metadata !DIExpression()), !dbg !2590
  %644 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2591
  %645 = add nuw nsw i64 %643, 1, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %645, metadata !1974, metadata !DIExpression()), !dbg !2590
  %646 = icmp eq i64 %645, %629, !dbg !2591
  br i1 %646, label %647, label %642, !dbg !2594, !llvm.loop !2595

647:                                              ; preds = %637, %642, %632
  %648 = add i64 %624, %629, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %648, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

649:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1976, metadata !DIExpression()), !dbg !2596
  %650 = icmp eq i32 %83, 45, !dbg !2597
  %651 = icmp slt i32 %135, 0, !dbg !2597
  %652 = or i1 %650, %651, !dbg !2597
  %653 = sext i32 %135 to i64, !dbg !2597
  %654 = select i1 %652, i64 0, i64 %653, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %654, metadata !1978, metadata !DIExpression()), !dbg !2596
  %655 = icmp ugt i64 %654, 1, !dbg !2597
  %656 = select i1 %655, i64 %654, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %656, metadata !1979, metadata !DIExpression()), !dbg !2596
  %657 = xor i64 %52, -1, !dbg !2598
  %658 = icmp ult i64 %656, %657, !dbg !2598
  br i1 %658, label %659, label %1052, !dbg !2597

659:                                              ; preds = %649
  br i1 %29, label %679, label %660, !dbg !2597

660:                                              ; preds = %659
  br i1 %655, label %661, label %677, !dbg !2600

661:                                              ; preds = %660
  %662 = add nsw i64 %654, -1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %662, metadata !1980, metadata !DIExpression()), !dbg !2602
  switch i32 %83, label %663 [
    i32 48, label %665
    i32 43, label %665
  ], !dbg !2603

663:                                              ; preds = %661
  call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()), !dbg !2604
  %664 = icmp eq i64 %662, 0, !dbg !2605
  br i1 %664, label %677, label %672, !dbg !2608

665:                                              ; preds = %661, %661
  call void @llvm.dbg.value(metadata i64 0, metadata !1985, metadata !DIExpression()), !dbg !2609
  %666 = icmp eq i64 %662, 0, !dbg !2610
  br i1 %666, label %677, label %667, !dbg !2613

667:                                              ; preds = %665, %667
  %668 = phi i64 [ %670, %667 ], [ 0, %665 ]
  call void @llvm.dbg.value(metadata i64 %668, metadata !1985, metadata !DIExpression()), !dbg !2609
  %669 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2610
  %670 = add nuw i64 %668, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %670, metadata !1985, metadata !DIExpression()), !dbg !2609
  %671 = icmp eq i64 %670, %662, !dbg !2610
  br i1 %671, label %677, label %667, !dbg !2613, !llvm.loop !2614

672:                                              ; preds = %663, %672
  %673 = phi i64 [ %675, %672 ], [ 0, %663 ]
  call void @llvm.dbg.value(metadata i64 %673, metadata !1988, metadata !DIExpression()), !dbg !2604
  %674 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2605
  %675 = add nuw i64 %673, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %675, metadata !1988, metadata !DIExpression()), !dbg !2604
  %676 = icmp eq i64 %675, %662, !dbg !2605
  br i1 %676, label %677, label %672, !dbg !2608, !llvm.loop !2615

677:                                              ; preds = %667, %672, %663, %665, %660
  %678 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %0), !dbg !2600
  br label %679, !dbg !2600

679:                                              ; preds = %677, %659
  %680 = add i64 %656, %52, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %680, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

681:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 112, metadata !1823, metadata !DIExpression()), !dbg !2084
  br label %682, !dbg !2616

682:                                              ; preds = %139, %681
  %683 = phi i1 [ false, %139 ], [ true, %681 ], !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 112, metadata !1823, metadata !DIExpression()), !dbg !2084
  %684 = icmp eq i8 %94, 0, !dbg !2617
  %685 = select i1 %684, i8 %90, i8 0, !dbg !2619
  %686 = xor i1 %684, true, !dbg !2619
  %687 = or i1 %683, %686, !dbg !2619
  br label %238, !dbg !2619

688:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !2084
  %689 = load i32, i32* %39, align 8, !dbg !2620, !tbaa !2521
  %690 = mul nsw i32 %689, 11, !dbg !2620
  %691 = ashr i32 %690, 5, !dbg !2620
  %692 = add nsw i32 %691, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %692, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2620

693:                                              ; preds = %139
  %694 = icmp eq i32 %141, 69, !dbg !2621
  br i1 %694, label %991, label %695, !dbg !2623

695:                                              ; preds = %693
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %696 = load i32, i32* %38, align 8, !dbg !2624, !tbaa !2625
  call void @llvm.dbg.value(metadata i32 %696, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2624

697:                                              ; preds = %139
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %35) #13, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.tm* %12, metadata !1990, metadata !DIExpression()), !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %35, i8* nonnull align 8 dereferenceable(56) %36, i64 56, i1 false), !dbg !2628, !tbaa.struct !2629
  %698 = call i64 @mktime_z(%struct.tm_zone* %6, %struct.tm* nonnull %12) #13, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %698, metadata !1992, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %37, metadata !1814, metadata !DIExpression()), !dbg !2084
  %699 = icmp slt i64 %698, 0, !dbg !2631
  %700 = lshr i64 %698, 63, !dbg !2632
  call void @llvm.dbg.value(metadata i8 %715, metadata !1810, metadata !DIExpression()), !dbg !2084
  br label %701, !dbg !2633

701:                                              ; preds = %701, %697
  %702 = phi i64 [ %698, %697 ], [ %706, %701 ], !dbg !2097
  %703 = phi i8* [ %37, %697 ], [ %711, %701 ], !dbg !2097
  call void @llvm.dbg.value(metadata i8* %703, metadata !1814, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %702, metadata !1992, metadata !DIExpression()), !dbg !2097
  %704 = srem i64 %702, 10, !dbg !2634
  %705 = trunc i64 %704 to i32, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %705, metadata !1993, metadata !DIExpression()), !dbg !2636
  %706 = sdiv i64 %702, 10, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %706, metadata !1992, metadata !DIExpression()), !dbg !2097
  %707 = sub nsw i32 0, %705, !dbg !2638
  %708 = select i1 %699, i32 %707, i32 %705, !dbg !2638
  %709 = trunc i32 %708 to i8, !dbg !2639
  %710 = add nsw i8 %709, 48, !dbg !2639
  %711 = getelementptr inbounds i8, i8* %703, i64 -1, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %711, metadata !1814, metadata !DIExpression()), !dbg !2084
  store i8 %710, i8* %711, align 1, !dbg !2641, !tbaa !1589
  %712 = add i64 %702, 9, !dbg !2642
  %713 = icmp ugt i64 %712, 18, !dbg !2642
  br i1 %713, label %701, label %714, !dbg !2643, !llvm.loop !2644

714:                                              ; preds = %701
  %715 = trunc i64 %700 to i8, !dbg !2632
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %35) #13, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %380, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %379, metadata !1802, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %378, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %402, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %376, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1811, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %401, metadata !1814, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2066), !dbg !2404
  %716 = icmp eq i32 %83, 0, !dbg !2405
  %717 = select i1 %716, i32 48, i32 %83, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %408, metadata !1802, metadata !DIExpression()), !dbg !2084
  %718 = icmp slt i32 %135, 0, !dbg !2408
  %719 = select i1 %718, i32 1, i32 %135, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %410, metadata !1792, metadata !DIExpression()), !dbg !2072
  br label %412, !dbg !2411

720:                                              ; preds = %139
  %721 = icmp eq i32 %141, 79, !dbg !2647
  br i1 %721, label %991, label %238, !dbg !2649

722:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.61, i64 0, i64 0), metadata !1813, metadata !DIExpression()), !dbg !2084
  br label %201, !dbg !2650

723:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1995, metadata !DIExpression()), !dbg !2651
  %724 = icmp eq i32 %83, 45, !dbg !2652
  %725 = icmp slt i32 %135, 0, !dbg !2652
  %726 = or i1 %724, %725, !dbg !2652
  %727 = sext i32 %135 to i64, !dbg !2652
  %728 = select i1 %726, i64 0, i64 %727, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %728, metadata !1997, metadata !DIExpression()), !dbg !2651
  %729 = icmp ugt i64 %728, 1, !dbg !2652
  %730 = select i1 %729, i64 %728, i64 1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %730, metadata !1998, metadata !DIExpression()), !dbg !2651
  %731 = xor i64 %52, -1, !dbg !2653
  %732 = icmp ult i64 %730, %731, !dbg !2653
  br i1 %732, label %733, label %1052, !dbg !2652

733:                                              ; preds = %723
  br i1 %29, label %753, label %734, !dbg !2652

734:                                              ; preds = %733
  br i1 %729, label %735, label %751, !dbg !2655

735:                                              ; preds = %734
  %736 = add nsw i64 %728, -1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %736, metadata !1999, metadata !DIExpression()), !dbg !2657
  switch i32 %83, label %737 [
    i32 48, label %739
    i32 43, label %739
  ], !dbg !2658

737:                                              ; preds = %735
  call void @llvm.dbg.value(metadata i64 0, metadata !2007, metadata !DIExpression()), !dbg !2659
  %738 = icmp eq i64 %736, 0, !dbg !2660
  br i1 %738, label %751, label %746, !dbg !2663

739:                                              ; preds = %735, %735
  call void @llvm.dbg.value(metadata i64 0, metadata !2004, metadata !DIExpression()), !dbg !2664
  %740 = icmp eq i64 %736, 0, !dbg !2665
  br i1 %740, label %751, label %741, !dbg !2668

741:                                              ; preds = %739, %741
  %742 = phi i64 [ %744, %741 ], [ 0, %739 ]
  call void @llvm.dbg.value(metadata i64 %742, metadata !2004, metadata !DIExpression()), !dbg !2664
  %743 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2665
  %744 = add nuw i64 %742, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %744, metadata !2004, metadata !DIExpression()), !dbg !2664
  %745 = icmp eq i64 %744, %736, !dbg !2665
  br i1 %745, label %751, label %741, !dbg !2668, !llvm.loop !2669

746:                                              ; preds = %737, %746
  %747 = phi i64 [ %749, %746 ], [ 0, %737 ]
  call void @llvm.dbg.value(metadata i64 %747, metadata !2007, metadata !DIExpression()), !dbg !2659
  %748 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2660
  %749 = add nuw i64 %747, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %749, metadata !2007, metadata !DIExpression()), !dbg !2659
  %750 = icmp eq i64 %749, %736, !dbg !2660
  br i1 %750, label %751, label %746, !dbg !2663, !llvm.loop !2670

751:                                              ; preds = %741, %746, %737, %739, %734
  %752 = call i32 @fputc(i32 9, %struct._IO_FILE* nonnull %0), !dbg !2655
  br label %753, !dbg !2655

753:                                              ; preds = %751, %733
  %754 = add i64 %730, %52, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %754, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

755:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !2084
  %756 = load i32, i32* %33, align 8, !dbg !2671, !tbaa !2673
  %757 = add nsw i32 %756, 6, !dbg !2671
  %758 = srem i32 %757, 7, !dbg !2671
  %759 = add nsw i32 %758, 1, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %759, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2671

760:                                              ; preds = %139
  %761 = icmp eq i32 %141, 69, !dbg !2674
  br i1 %761, label %991, label %762, !dbg !2676

762:                                              ; preds = %760
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %763 = load i32, i32* %34, align 4, !dbg !2677, !tbaa !2510
  %764 = load i32, i32* %33, align 8, !dbg !2677, !tbaa !2673
  %765 = add i32 %763, 7, !dbg !2677
  %766 = sub i32 %765, %764, !dbg !2677
  %767 = sdiv i32 %766, 7, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %767, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2677

768:                                              ; preds = %139, %139, %139
  %769 = icmp eq i32 %141, 69, !dbg !2679
  br i1 %769, label %991, label %770, !dbg !2681

770:                                              ; preds = %768
  %771 = load i32, i32* %32, align 4, !dbg !2682, !tbaa !2335
  %772 = icmp slt i32 %771, 0, !dbg !2683
  %773 = select i1 %772, i32 300, i32 -100, !dbg !2684
  %774 = add nsw i32 %773, %771, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %774, metadata !2009, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2686
  %775 = load i32, i32* %34, align 4, !dbg !2687, !tbaa !2510
  %776 = load i32, i32* %33, align 8, !dbg !2688, !tbaa !2673
  call void @llvm.dbg.value(metadata i32 %775, metadata !2689, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %776, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 378, metadata !2693, metadata !DIExpression()), !dbg !2694
  %777 = add i32 %775, 382, !dbg !2696
  %778 = sub i32 %777, %776, !dbg !2697
  %779 = srem i32 %778, 7, !dbg !2698
  %780 = add i32 %775, 3, !dbg !2699
  %781 = sub i32 %780, %779, !dbg !2700
  call void @llvm.dbg.value(metadata i32 %781, metadata !2012, metadata !DIExpression()), !dbg !2686
  %782 = icmp slt i32 %781, 0, !dbg !2701
  br i1 %782, label %783, label %802, !dbg !2702

783:                                              ; preds = %770
  call void @llvm.dbg.value(metadata i32 -1, metadata !2011, metadata !DIExpression()), !dbg !2686
  %784 = add nsw i32 %774, -1, !dbg !2703
  %785 = and i32 %784, 3, !dbg !2703
  %786 = icmp eq i32 %785, 0, !dbg !2703
  br i1 %786, label %787, label %794, !dbg !2703

787:                                              ; preds = %783
  %788 = srem i32 %784, 100, !dbg !2703
  %789 = icmp ne i32 %788, 0, !dbg !2703
  %790 = srem i32 %784, 400, !dbg !2703
  %791 = icmp eq i32 %790, 0, !dbg !2703
  %792 = or i1 %789, %791, !dbg !2703
  %793 = select i1 %792, i32 366, i32 365, !dbg !2703
  br label %794, !dbg !2703

794:                                              ; preds = %787, %783
  %795 = phi i32 [ 365, %783 ], [ %793, %787 ]
  %796 = add nsw i32 %795, %775, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %796, metadata !2689, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %776, metadata !2692, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 378, metadata !2693, metadata !DIExpression()), !dbg !2706
  %797 = sub i32 382, %776, !dbg !2708
  %798 = add i32 %797, %796, !dbg !2709
  %799 = srem i32 %798, 7, !dbg !2710
  %800 = add i32 %796, 3, !dbg !2711
  %801 = sub i32 %800, %799, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %801, metadata !2012, metadata !DIExpression()), !dbg !2686
  br label %824, !dbg !2713

802:                                              ; preds = %770
  %803 = and i32 %774, 3, !dbg !2714
  %804 = icmp eq i32 %803, 0, !dbg !2714
  br i1 %804, label %805, label %812, !dbg !2714

805:                                              ; preds = %802
  %806 = srem i32 %774, 100, !dbg !2714
  %807 = icmp ne i32 %806, 0, !dbg !2714
  %808 = srem i32 %774, 400, !dbg !2714
  %809 = icmp eq i32 %808, 0, !dbg !2714
  %810 = or i1 %807, %809, !dbg !2714
  %811 = select i1 %810, i32 366, i32 365, !dbg !2714
  br label %812, !dbg !2714

812:                                              ; preds = %805, %802
  %813 = phi i32 [ 365, %802 ], [ %811, %805 ]
  %814 = sub nsw i32 %775, %813, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %814, metadata !2689, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %776, metadata !2692, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 378, metadata !2693, metadata !DIExpression()), !dbg !2716
  %815 = sub i32 382, %776, !dbg !2718
  %816 = add i32 %815, %814, !dbg !2719
  %817 = srem i32 %816, 7, !dbg !2720
  %818 = add nsw i32 %814, 3, !dbg !2721
  %819 = sub i32 %818, %817, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %819, metadata !2013, metadata !DIExpression()), !dbg !2723
  %820 = icmp sgt i32 %819, -1, !dbg !2724
  %821 = lshr i32 %819, 31, !dbg !2726
  %822 = xor i32 %821, 1, !dbg !2726
  %823 = select i1 %820, i32 %819, i32 %781, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %823, metadata !2012, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %822, metadata !2011, metadata !DIExpression()), !dbg !2686
  br label %824

824:                                              ; preds = %812, %794
  %825 = phi i32 [ -1, %794 ], [ %822, %812 ], !dbg !2727
  %826 = phi i32 [ %801, %794 ], [ %823, %812 ], !dbg !2727
  call void @llvm.dbg.value(metadata i32 %826, metadata !2012, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %825, metadata !2011, metadata !DIExpression()), !dbg !2686
  switch i32 %143, label %843 [
    i32 103, label %827
    i32 71, label %838
  ], !dbg !2728

827:                                              ; preds = %824
  %828 = srem i32 %771, 100, !dbg !2729
  %829 = add nsw i32 %825, %828, !dbg !2730
  %830 = srem i32 %829, 100, !dbg !2731
  call void @llvm.dbg.value(metadata i32 %830, metadata !2016, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !2084
  %831 = icmp sgt i32 %830, -1, !dbg !2733
  br i1 %831, label %349, label %832, !dbg !2733

832:                                              ; preds = %827
  %833 = sub nsw i32 -1900, %825, !dbg !2733
  %834 = icmp slt i32 %771, %833, !dbg !2733
  %835 = sub nsw i32 0, %830, !dbg !2733
  %836 = add nsw i32 %830, 100, !dbg !2733
  %837 = select i1 %834, i32 %835, i32 %836, !dbg !2733
  br label %349, !dbg !2733

838:                                              ; preds = %824
  call void @llvm.dbg.value(metadata i32 4, metadata !1807, metadata !DIExpression()), !dbg !2084
  %839 = sub nsw i32 -1900, %825, !dbg !2735
  %840 = icmp slt i32 %771, %839, !dbg !2735
  call void @llvm.dbg.value(metadata i1 %840, metadata !1810, metadata !DIExpression()), !dbg !2084
  %841 = add i32 %771, 1900, !dbg !2735
  %842 = add i32 %841, %825, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %842, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %349, !dbg !2735

843:                                              ; preds = %824
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %844 = sdiv i32 %826, 7, !dbg !2737
  %845 = add nsw i32 %844, 1, !dbg !2737
  call void @llvm.dbg.value(metadata i32 %845, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %845, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  br label %367

846:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  %847 = icmp eq i32 %141, 69, !dbg !2739
  br i1 %847, label %991, label %848, !dbg !2741

848:                                              ; preds = %846
  call void @llvm.dbg.value(metadata i32 2, metadata !1807, metadata !DIExpression()), !dbg !2084
  %849 = load i32, i32* %34, align 4, !dbg !2742, !tbaa !2510
  %850 = load i32, i32* %33, align 8, !dbg !2742, !tbaa !2673
  %851 = add nsw i32 %850, 6, !dbg !2742
  %852 = srem i32 %851, 7, !dbg !2742
  %853 = add i32 %849, 7, !dbg !2742
  %854 = sub i32 %853, %852, !dbg !2742
  %855 = sdiv i32 %854, 7, !dbg !2742
  call void @llvm.dbg.value(metadata i32 %855, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2742

856:                                              ; preds = %139
  %857 = icmp eq i32 %141, 69, !dbg !2743
  br i1 %857, label %991, label %858, !dbg !2745

858:                                              ; preds = %856
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !2084
  %859 = load i32, i32* %33, align 8, !dbg !2746, !tbaa !2673
  call void @llvm.dbg.value(metadata i32 %859, metadata !1808, metadata !DIExpression()), !dbg !2084
  br label %367, !dbg !2746

860:                                              ; preds = %139
  switch i32 %141, label %861 [
    i32 69, label %238
    i32 79, label %991
  ], !dbg !2747

861:                                              ; preds = %860
  call void @llvm.dbg.value(metadata i32 4, metadata !1807, metadata !DIExpression()), !dbg !2084
  %862 = load i32, i32* %32, align 4, !dbg !2748, !tbaa !2335
  %863 = icmp slt i32 %862, -1900, !dbg !2748
  call void @llvm.dbg.value(metadata i1 %863, metadata !1810, metadata !DIExpression()), !dbg !2084
  %864 = add i32 %862, 1900, !dbg !2748
  call void @llvm.dbg.value(metadata i32 %864, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %349, !dbg !2748

865:                                              ; preds = %139
  %866 = icmp eq i32 %141, 69, !dbg !2750
  br i1 %866, label %238, label %867, !dbg !2752

867:                                              ; preds = %865
  %868 = load i32, i32* %32, align 4, !dbg !2753, !tbaa !2335
  %869 = srem i32 %868, 100, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %869, metadata !2019, metadata !DIExpression()), !dbg !2092
  %870 = icmp slt i32 %869, 0, !dbg !2755
  %871 = icmp slt i32 %868, -1900, !dbg !2757
  %872 = sub nsw i32 0, %869, !dbg !2757
  %873 = add nsw i32 %869, 100, !dbg !2757
  %874 = select i1 %871, i32 %872, i32 %873, !dbg !2757
  %875 = select i1 %870, i32 %874, i32 %869, !dbg !2757
  br label %349, !dbg !2757

876:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  %877 = icmp eq i8 %94, 0, !dbg !2758
  call void @llvm.dbg.value(metadata i8 undef, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1820, metadata !DIExpression()), !dbg !2084
  %878 = call i64 @strlen(i8* nonnull dereferenceable(1) %19) #21, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %878, metadata !2021, metadata !DIExpression()), !dbg !2761
  %879 = icmp eq i32 %83, 45, !dbg !2760
  %880 = icmp slt i32 %135, 0, !dbg !2760
  %881 = or i1 %879, %880, !dbg !2760
  %882 = sext i32 %135 to i64, !dbg !2760
  %883 = select i1 %881, i64 0, i64 %882, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %883, metadata !2023, metadata !DIExpression()), !dbg !2761
  %884 = icmp ugt i64 %883, %878, !dbg !2760
  %885 = select i1 %884, i64 %883, i64 %878, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %885, metadata !2024, metadata !DIExpression()), !dbg !2761
  %886 = xor i64 %52, -1, !dbg !2762
  %887 = icmp ult i64 %885, %886, !dbg !2762
  br i1 %887, label %888, label %1052, !dbg !2760

888:                                              ; preds = %876
  br i1 %29, label %943, label %889, !dbg !2760

889:                                              ; preds = %888
  br i1 %884, label %890, label %906, !dbg !2764

890:                                              ; preds = %889
  %891 = sub i64 %883, %878, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %891, metadata !2025, metadata !DIExpression()), !dbg !2766
  switch i32 %83, label %892 [
    i32 48, label %894
    i32 43, label %894
  ], !dbg !2767

892:                                              ; preds = %890
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2768
  %893 = icmp eq i64 %891, 0, !dbg !2769
  br i1 %893, label %906, label %901, !dbg !2772

894:                                              ; preds = %890, %890
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2773
  %895 = icmp eq i64 %891, 0, !dbg !2774
  br i1 %895, label %906, label %896, !dbg !2777

896:                                              ; preds = %894, %896
  %897 = phi i64 [ %899, %896 ], [ 0, %894 ]
  call void @llvm.dbg.value(metadata i64 %897, metadata !2030, metadata !DIExpression()), !dbg !2773
  %898 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2774
  %899 = add nuw i64 %897, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %899, metadata !2030, metadata !DIExpression()), !dbg !2773
  %900 = icmp eq i64 %899, %891, !dbg !2774
  br i1 %900, label %906, label %896, !dbg !2777, !llvm.loop !2778

901:                                              ; preds = %892, %901
  %902 = phi i64 [ %904, %901 ], [ 0, %892 ]
  call void @llvm.dbg.value(metadata i64 %902, metadata !2033, metadata !DIExpression()), !dbg !2768
  %903 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2769
  %904 = add nuw i64 %902, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %904, metadata !2033, metadata !DIExpression()), !dbg !2768
  %905 = icmp eq i64 %904, %891, !dbg !2769
  br i1 %905, label %906, label %901, !dbg !2772, !llvm.loop !2779

906:                                              ; preds = %896, %901, %892, %894, %889
  br i1 %877, label %923, label %907, !dbg !2780

907:                                              ; preds = %906
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2282, metadata !DIExpression()) #13, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %19, metadata !2287, metadata !DIExpression()) #13, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %878, metadata !2288, metadata !DIExpression()) #13, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %878, metadata !2288, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2782
  %908 = icmp eq i64 %878, 0, !dbg !2785
  br i1 %908, label %943, label %909, !dbg !2786

909:                                              ; preds = %907
  %910 = tail call i32** @__ctype_tolower_loc() #24, !dbg !2787
  br label %911, !dbg !2786

911:                                              ; preds = %911, %909
  %912 = phi i8* [ %19, %909 ], [ %921, %911 ]
  %913 = phi i64 [ %878, %909 ], [ %914, %911 ]
  call void @llvm.dbg.value(metadata i8* %912, metadata !2287, metadata !DIExpression()) #13, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %913, metadata !2288, metadata !DIExpression()) #13, !dbg !2782
  %914 = add i64 %913, -1, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %914, metadata !2288, metadata !DIExpression()) #13, !dbg !2782
  %915 = load i32*, i32** %910, align 8, !dbg !2789, !tbaa !1423
  %916 = load i8, i8* %912, align 1, !dbg !2789, !tbaa !1589
  %917 = zext i8 %916 to i64, !dbg !2789
  %918 = getelementptr inbounds i32, i32* %915, i64 %917, !dbg !2789
  %919 = load i32, i32* %918, align 4, !dbg !2789, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %919, metadata !2289, metadata !DIExpression()) #13, !dbg !2790
  %920 = call i32 @fputc(i32 %919, %struct._IO_FILE* nonnull %0) #13, !dbg !2791
  %921 = getelementptr inbounds i8, i8* %912, i64 1, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %921, metadata !2287, metadata !DIExpression()) #13, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %914, metadata !2288, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2782
  %922 = icmp eq i64 %914, 0, !dbg !2785
  br i1 %922, label %943, label %911, !dbg !2786, !llvm.loop !2793

923:                                              ; preds = %906
  %924 = icmp eq i8 %90, 0, !dbg !2795
  br i1 %924, label %941, label %925, !dbg !2797

925:                                              ; preds = %923
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2307, metadata !DIExpression()) #13, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %19, metadata !2310, metadata !DIExpression()) #13, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %878, metadata !2311, metadata !DIExpression()) #13, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %878, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2798
  %926 = icmp eq i64 %878, 0, !dbg !2800
  br i1 %926, label %943, label %927, !dbg !2801

927:                                              ; preds = %925
  %928 = tail call i32** @__ctype_toupper_loc() #24, !dbg !2802
  br label %929, !dbg !2801

929:                                              ; preds = %929, %927
  %930 = phi i8* [ %19, %927 ], [ %939, %929 ]
  %931 = phi i64 [ %878, %927 ], [ %932, %929 ]
  call void @llvm.dbg.value(metadata i8* %930, metadata !2310, metadata !DIExpression()) #13, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %931, metadata !2311, metadata !DIExpression()) #13, !dbg !2798
  %932 = add i64 %931, -1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %932, metadata !2311, metadata !DIExpression()) #13, !dbg !2798
  %933 = load i32*, i32** %928, align 8, !dbg !2804, !tbaa !1423
  %934 = load i8, i8* %930, align 1, !dbg !2804, !tbaa !1589
  %935 = zext i8 %934 to i64, !dbg !2804
  %936 = getelementptr inbounds i32, i32* %933, i64 %935, !dbg !2804
  %937 = load i32, i32* %936, align 4, !dbg !2804, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %937, metadata !2312, metadata !DIExpression()) #13, !dbg !2805
  %938 = call i32 @fputc(i32 %937, %struct._IO_FILE* nonnull %0) #13, !dbg !2806
  %939 = getelementptr inbounds i8, i8* %930, i64 1, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %939, metadata !2310, metadata !DIExpression()) #13, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %932, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2798
  %940 = icmp eq i64 %932, 0, !dbg !2800
  br i1 %940, label %943, label %929, !dbg !2801, !llvm.loop !2808

941:                                              ; preds = %923
  %942 = call i64 @fwrite(i8* %19, i64 %878, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2810
  br label %943

943:                                              ; preds = %911, %929, %941, %888, %907, %925
  %944 = add i64 %885, %52, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %944, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

945:                                              ; preds = %139, %949
  %946 = phi i64 [ %950, %949 ], [ 1, %139 ], !dbg !2812
  call void @llvm.dbg.value(metadata i64 %946, metadata !1821, metadata !DIExpression()), !dbg !2084
  %947 = getelementptr inbounds i8, i8* %142, i64 %946, !dbg !2814
  %948 = load i8, i8* %947, align 1, !dbg !2814, !tbaa !1589
  switch i8 %948, label %991 [
    i8 58, label %949
    i8 122, label %951
  ], !dbg !2816

949:                                              ; preds = %945
  %950 = add i64 %946, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %950, metadata !1821, metadata !DIExpression()), !dbg !2084
  br label %945, !dbg !2818, !llvm.loop !2819

951:                                              ; preds = %945
  call void @llvm.dbg.value(metadata i64 %946, metadata !1821, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %946, metadata !1821, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %946, metadata !1821, metadata !DIExpression()), !dbg !2084
  %952 = getelementptr inbounds i8, i8* %142, i64 %946, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %946, metadata !1821, metadata !DIExpression()), !dbg !2084
  br label %953, !dbg !2821

953:                                              ; preds = %951, %139
  %954 = phi i64 [ 0, %139 ], [ %946, %951 ], !dbg !2216
  %955 = phi i8* [ %142, %139 ], [ %952, %951 ], !dbg !2084
  call void @llvm.dbg.value(metadata i8* %955, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %954, metadata !1821, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2067), !dbg !2822
  %956 = load i32, i32* %30, align 8, !dbg !2821, !tbaa !2823
  %957 = icmp slt i32 %956, 0, !dbg !2824
  br i1 %957, label %1053, label %958, !dbg !2825

958:                                              ; preds = %953
  %959 = load i64, i64* %31, align 8, !dbg !2826, !tbaa !2827
  %960 = trunc i64 %959 to i32, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %960, metadata !2035, metadata !DIExpression()), !dbg !2091
  %961 = icmp slt i32 %960, 0, !dbg !2829
  br i1 %961, label %967, label %962, !dbg !2830

962:                                              ; preds = %958
  %963 = icmp eq i32 %960, 0, !dbg !2831
  br i1 %963, label %964, label %967, !dbg !2832

964:                                              ; preds = %962
  %965 = load i8, i8* %19, align 1, !dbg !2833, !tbaa !1589
  %966 = icmp eq i8 %965, 45, !dbg !2834
  br label %967

967:                                              ; preds = %962, %964, %958
  %968 = phi i1 [ true, %958 ], [ false, %962 ], [ %966, %964 ]
  %969 = zext i1 %968 to i8, !dbg !2835
  call void @llvm.dbg.value(metadata i8 %969, metadata !1810, metadata !DIExpression()), !dbg !2084
  %970 = sdiv i32 %960, 60, !dbg !2836
  %971 = sdiv i32 %960, 3600, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %971, metadata !2037, metadata !DIExpression()), !dbg !2091
  %972 = srem i32 %970, 60, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %972, metadata !2038, metadata !DIExpression()), !dbg !2091
  %973 = srem i32 %960, 60, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %973, metadata !2039, metadata !DIExpression()), !dbg !2091
  switch i64 %954, label %991 [
    i64 0, label %974
    i64 1, label %977
    i64 2, label %980
    i64 3, label %985
  ], !dbg !2840

974:                                              ; preds = %967
  call void @llvm.dbg.value(metadata i32 5, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !2084
  %975 = mul nsw i32 %971, 100, !dbg !2841
  %976 = add nsw i32 %975, %972, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %976, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2841

977:                                              ; preds = %987, %967
  call void @llvm.dbg.label(metadata !2068), !dbg !2843
  call void @llvm.dbg.value(metadata i32 6, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 4, metadata !1812, metadata !DIExpression()), !dbg !2084
  %978 = mul nsw i32 %971, 100, !dbg !2844
  %979 = add nsw i32 %978, %972, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %979, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2844

980:                                              ; preds = %985, %967
  call void @llvm.dbg.label(metadata !2070), !dbg !2846
  call void @llvm.dbg.value(metadata i32 9, metadata !1807, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 20, metadata !1812, metadata !DIExpression()), !dbg !2084
  %981 = mul nsw i32 %971, 10000, !dbg !2847
  %982 = mul nsw i32 %972, 100, !dbg !2847
  %983 = add i32 %981, %973, !dbg !2847
  %984 = add i32 %983, %982, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %984, metadata !1809, metadata !DIExpression()), !dbg !2084
  br label %373, !dbg !2847

985:                                              ; preds = %967
  %986 = icmp eq i32 %973, 0, !dbg !2849
  br i1 %986, label %987, label %980, !dbg !2851

987:                                              ; preds = %985
  %988 = icmp eq i32 %972, 0, !dbg !2852
  br i1 %988, label %373, label %977, !dbg !2854

989:                                              ; preds = %139
  %990 = getelementptr inbounds i8, i8* %142, i64 -1, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %990, metadata !1801, metadata !DIExpression()), !dbg !2072
  br label %991, !dbg !2856

991:                                              ; preds = %945, %967, %860, %144, %180, %185, %339, %521, %989, %139, %856, %846, %768, %760, %720, %693, %562, %555, %551, %544, %542, %538, %536, %532, %345, %341, %337, %199, %194, %190
  %992 = phi i8 [ %90, %139 ], [ %90, %989 ], [ %90, %856 ], [ %90, %846 ], [ %90, %768 ], [ %90, %760 ], [ %90, %720 ], [ %90, %693 ], [ %90, %562 ], [ %90, %555 ], [ %90, %551 ], [ %90, %544 ], [ %90, %542 ], [ %90, %538 ], [ %90, %536 ], [ %90, %532 ], [ %90, %521 ], [ %90, %345 ], [ %90, %341 ], [ %90, %339 ], [ %90, %337 ], [ %90, %199 ], [ %90, %194 ], [ %192, %190 ], [ %90, %185 ], [ %90, %180 ], [ %90, %144 ], [ %90, %860 ], [ %90, %967 ], [ %90, %945 ], !dbg !2084
  %993 = phi i8* [ %142, %139 ], [ %990, %989 ], [ %142, %856 ], [ %142, %846 ], [ %142, %768 ], [ %142, %760 ], [ %142, %720 ], [ %142, %693 ], [ %142, %562 ], [ %142, %555 ], [ %142, %551 ], [ %142, %544 ], [ %142, %542 ], [ %142, %538 ], [ %142, %536 ], [ %142, %532 ], [ %142, %521 ], [ %142, %345 ], [ %142, %341 ], [ %142, %339 ], [ %142, %337 ], [ %142, %199 ], [ %142, %194 ], [ %142, %190 ], [ %142, %185 ], [ %142, %180 ], [ %142, %144 ], [ %142, %860 ], [ %955, %967 ], [ %142, %945 ], !dbg !2084
  call void @llvm.dbg.value(metadata i8* %993, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 %992, metadata !1820, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.label(metadata !2071), !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !2040, metadata !DIExpression()), !dbg !2858
  br label %994, !dbg !2859

994:                                              ; preds = %994, %991
  %995 = phi i64 [ %1000, %994 ], [ 1, %991 ], !dbg !2861
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  %996 = sub nsw i64 1, %995, !dbg !2862
  %997 = getelementptr inbounds i8, i8* %993, i64 %996, !dbg !2864
  %998 = load i8, i8* %997, align 1, !dbg !2864, !tbaa !1589
  %999 = icmp eq i8 %998, 37, !dbg !2865
  %1000 = add nuw i64 %995, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %1000, metadata !2040, metadata !DIExpression()), !dbg !2858
  br i1 %999, label %1001, label %994, !dbg !2867, !llvm.loop !2868

1001:                                             ; preds = %994
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  %1002 = getelementptr inbounds i8, i8* %993, i64 %996, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  %1003 = and i64 %995, 4294967295, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %995, metadata !2040, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %1003, metadata !2042, metadata !DIExpression()), !dbg !2871
  %1004 = icmp eq i32 %83, 45, !dbg !2870
  %1005 = icmp slt i32 %135, 0, !dbg !2870
  %1006 = or i1 %1004, %1005, !dbg !2870
  %1007 = sext i32 %135 to i64, !dbg !2870
  %1008 = select i1 %1006, i64 0, i64 %1007, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1008, metadata !2044, metadata !DIExpression()), !dbg !2871
  %1009 = icmp ugt i64 %1008, %1003, !dbg !2870
  %1010 = select i1 %1009, i64 %1008, i64 %1003, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1010, metadata !2045, metadata !DIExpression()), !dbg !2871
  %1011 = xor i64 %52, -1, !dbg !2872
  %1012 = icmp ult i64 %1010, %1011, !dbg !2872
  br i1 %1012, label %1013, label %1052, !dbg !2870

1013:                                             ; preds = %1001
  br i1 %29, label %1050, label %1014, !dbg !2870

1014:                                             ; preds = %1013
  br i1 %1009, label %1015, label %1031, !dbg !2874

1015:                                             ; preds = %1014
  %1016 = sub nsw i64 %1008, %1003, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1016, metadata !2046, metadata !DIExpression()), !dbg !2876
  switch i32 %83, label %1017 [
    i32 48, label %1019
    i32 43, label %1019
  ], !dbg !2877

1017:                                             ; preds = %1015
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2878
  %1018 = icmp eq i64 %1016, 0, !dbg !2879
  br i1 %1018, label %1031, label %1026, !dbg !2882

1019:                                             ; preds = %1015, %1015
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()), !dbg !2883
  %1020 = icmp eq i64 %1016, 0, !dbg !2884
  br i1 %1020, label %1031, label %1021, !dbg !2887

1021:                                             ; preds = %1019, %1021
  %1022 = phi i64 [ %1024, %1021 ], [ 0, %1019 ]
  call void @llvm.dbg.value(metadata i64 %1022, metadata !2051, metadata !DIExpression()), !dbg !2883
  %1023 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2884
  %1024 = add nuw i64 %1022, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %1024, metadata !2051, metadata !DIExpression()), !dbg !2883
  %1025 = icmp eq i64 %1024, %1016, !dbg !2884
  br i1 %1025, label %1031, label %1021, !dbg !2887, !llvm.loop !2888

1026:                                             ; preds = %1017, %1026
  %1027 = phi i64 [ %1029, %1026 ], [ 0, %1017 ]
  call void @llvm.dbg.value(metadata i64 %1027, metadata !2054, metadata !DIExpression()), !dbg !2878
  %1028 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2879
  %1029 = add nuw i64 %1027, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1029, metadata !2054, metadata !DIExpression()), !dbg !2878
  %1030 = icmp eq i64 %1029, %1016, !dbg !2879
  br i1 %1030, label %1031, label %1026, !dbg !2882, !llvm.loop !2889

1031:                                             ; preds = %1021, %1026, %1017, %1019, %1014
  %1032 = and i8 %992, 1, !dbg !2890
  %1033 = icmp eq i8 %1032, 0, !dbg !2890
  br i1 %1033, label %1048, label %1034, !dbg !2894

1034:                                             ; preds = %1031
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2307, metadata !DIExpression()) #13, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %1002, metadata !2310, metadata !DIExpression()) #13, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1003, metadata !2311, metadata !DIExpression()) #13, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1003, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2895
  %1035 = tail call i32** @__ctype_toupper_loc() #24, !dbg !2897
  br label %1036, !dbg !2898

1036:                                             ; preds = %1036, %1034
  %1037 = phi i8* [ %1002, %1034 ], [ %1046, %1036 ]
  %1038 = phi i64 [ %1003, %1034 ], [ %1039, %1036 ]
  call void @llvm.dbg.value(metadata i8* %1037, metadata !2310, metadata !DIExpression()) #13, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1038, metadata !2311, metadata !DIExpression()) #13, !dbg !2895
  %1039 = add i64 %1038, -1, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %1039, metadata !2311, metadata !DIExpression()) #13, !dbg !2895
  %1040 = load i32*, i32** %1035, align 8, !dbg !2900, !tbaa !1423
  %1041 = load i8, i8* %1037, align 1, !dbg !2900, !tbaa !1589
  %1042 = zext i8 %1041 to i64, !dbg !2900
  %1043 = getelementptr inbounds i32, i32* %1040, i64 %1042, !dbg !2900
  %1044 = load i32, i32* %1043, align 4, !dbg !2900, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %1044, metadata !2312, metadata !DIExpression()) #13, !dbg !2901
  %1045 = call i32 @fputc(i32 %1044, %struct._IO_FILE* nonnull %0) #13, !dbg !2902
  %1046 = getelementptr inbounds i8, i8* %1037, i64 1, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %1046, metadata !2310, metadata !DIExpression()) #13, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1039, metadata !2311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #13, !dbg !2895
  %1047 = icmp eq i64 %1039, 0, !dbg !2904
  br i1 %1047, label %1050, label %1036, !dbg !2898, !llvm.loop !2905

1048:                                             ; preds = %1031
  %1049 = call i64 @fwrite(i8* nonnull %1002, i64 %1003, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2907
  br label %1050

1050:                                             ; preds = %1036, %1048, %1013
  %1051 = add i64 %1010, %52, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1051, metadata !1799, metadata !DIExpression()), !dbg !2072
  br label %1053

1052:                                             ; preds = %623, %458, %55, %146, %201, %649, %723, %876, %1001, %447, %585, %323
  call void @llvm.dbg.value(metadata i8* %1054, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %28) #13, !dbg !2909
  br label %1059

1053:                                             ; preds = %80, %1050, %943, %753, %679, %647, %519, %321, %236, %178, %953
  %1054 = phi i8* [ %53, %80 ], [ %955, %953 ], [ %142, %178 ], [ %142, %236 ], [ %243, %321 ], [ %416, %519 ], [ %142, %647 ], [ %142, %679 ], [ %142, %753 ], [ %142, %943 ], [ %993, %1050 ], !dbg !2132
  %1055 = phi i64 [ %81, %80 ], [ %52, %953 ], [ %179, %178 ], [ %237, %236 ], [ %322, %321 ], [ %520, %519 ], [ %648, %647 ], [ %680, %679 ], [ %754, %753 ], [ %944, %943 ], [ %1051, %1050 ], !dbg !2072
  call void @llvm.dbg.value(metadata i64 %1055, metadata !1799, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %1054, metadata !1801, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !1808, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1809, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 undef, metadata !1810, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %28) #13, !dbg !2909
  call void @llvm.dbg.value(metadata i32 -1, metadata !1792, metadata !DIExpression()), !dbg !2072
  %1056 = getelementptr inbounds i8, i8* %1054, i64 1, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1056, metadata !1801, metadata !DIExpression()), !dbg !2072
  %1057 = load i8, i8* %1056, align 1, !dbg !2085, !tbaa !1589
  %1058 = icmp eq i8 %1057, 0, !dbg !2086
  br i1 %1058, label %1059, label %49, !dbg !2087, !llvm.loop !2911

1059:                                             ; preds = %1053, %8, %1052
  %1060 = phi i64 [ 0, %1052 ], [ 0, %8 ], [ %1055, %1053 ], !dbg !2072
  ret i64 %1060, !dbg !2913
}

; Function Attrs: nofree nounwind
declare !dbg !573 i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !610 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !2914 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2918, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8** %1, metadata !2919, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %3, metadata !2921, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %4, metadata !2922, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2923, metadata !DIExpression()), !dbg !2936
  %8 = load i32, i32* @opterr, align 4, !dbg !2937, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %8, metadata !2925, metadata !DIExpression()), !dbg !2936
  store i32 0, i32* @opterr, align 4, !dbg !2938, !tbaa !1480
  %9 = icmp eq i32 %0, 2, !dbg !2939
  br i1 %9, label %10, label %17, !dbg !2940

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #13, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %11, metadata !2924, metadata !DIExpression()), !dbg !2936
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2942

12:                                               ; preds = %10
  tail call void %5(i32 0) #13, !dbg !2943
  br label %17, !dbg !2944

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #13, !dbg !2945
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2926, metadata !DIExpression()), !dbg !2946
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2947
  call void @llvm.va_start(i8* nonnull %14), !dbg !2947
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2948, !tbaa !1423
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #13, !dbg !2949
  call void @exit(i32 0) #22, !dbg !2950
  unreachable, !dbg !2950

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2951, !tbaa !1480
  store i32 0, i32* @optind, align 4, !dbg !2952, !tbaa !1480
  ret void, !dbg !2953
}

; Function Attrs: nounwind
declare !dbg !143 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !2954 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8** %1, metadata !2957, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %2, metadata !2958, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %3, metadata !2959, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %4, metadata !2960, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i1 %5, metadata !2961, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !2962, metadata !DIExpression()), !dbg !2971
  %9 = load i32, i32* @opterr, align 4, !dbg !2972, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %9, metadata !2964, metadata !DIExpression()), !dbg !2971
  store i32 1, i32* @opterr, align 4, !dbg !2973, !tbaa !1480
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %10, metadata !2965, metadata !DIExpression()), !dbg !2971
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #13, !dbg !2975
  call void @llvm.dbg.value(metadata i32 %11, metadata !2963, metadata !DIExpression()), !dbg !2971
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !2976

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #13, !dbg !2977
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !2966, metadata !DIExpression()), !dbg !2978
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !2979
  call void @llvm.va_start(i8* nonnull %13), !dbg !2979
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2980, !tbaa !1423
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #13, !dbg !2981
  call void @exit(i32 0) #22, !dbg !2982
  unreachable, !dbg !2982

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !2983, !tbaa !1480
  br label %18, !dbg !2984

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #13, !dbg !2985
  br label %20, !dbg !2986

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !2986, !tbaa !1480
  ret void, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2988 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2990, metadata !DIExpression()), !dbg !2993
  %2 = icmp eq i8* %0, null, !dbg !2994
  br i1 %2, label %3, label %6, !dbg !2996

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2997, !tbaa !1423
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2999
  tail call void @abort() #22, !dbg !3000
  unreachable, !dbg !3000

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %7, metadata !2991, metadata !DIExpression()), !dbg !2993
  %8 = icmp eq i8* %7, null, !dbg !3002
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3003
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %10, metadata !2992, metadata !DIExpression()), !dbg !2993
  %11 = ptrtoint i8* %10 to i64, !dbg !3004
  %12 = ptrtoint i8* %0 to i64, !dbg !3004
  %13 = sub i64 %11, %12, !dbg !3004
  %14 = icmp sgt i64 %13, 6, !dbg !3006
  br i1 %14, label %15, label %24, !dbg !3007

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3008
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #21, !dbg !3009
  %18 = icmp eq i32 %17, 0, !dbg !3010
  br i1 %18, label %19, label %24, !dbg !3011

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2990, metadata !DIExpression()), !dbg !2993
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #21, !dbg !3012
  %21 = icmp eq i32 %20, 0, !dbg !3015
  br i1 %21, label %22, label %24, !dbg !3016

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %23, metadata !2990, metadata !DIExpression()), !dbg !2993
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3019, !tbaa !1423
  br label %24, !dbg !3020

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2990, metadata !DIExpression()), !dbg !2993
  store i8* %25, i8** @program_name, align 8, !dbg !3021, !tbaa !1423
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !3022, !tbaa !1423
  ret void, !dbg !3023
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !3024 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3029, metadata !DIExpression()), !dbg !3032
  %2 = tail call i32* @__errno_location() #24, !dbg !3033
  %3 = load i32, i32* %2, align 4, !dbg !3033, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %3, metadata !3030, metadata !DIExpression()), !dbg !3032
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3034
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3034
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3034
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !3035
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !3031, metadata !DIExpression()), !dbg !3032
  store i32 %3, i32* %2, align 4, !dbg !3036, !tbaa !1480
  ret %struct.quoting_options* %8, !dbg !3037
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !3038 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3042, metadata !DIExpression()), !dbg !3043
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !3044
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3044
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3045
  %5 = load i32, i32* %4, align 8, !dbg !3045, !tbaa !3046
  ret i32 %5, !dbg !3048
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !3049 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3056
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3056
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3057
  store i32 %1, i32* %5, align 8, !dbg !3058, !tbaa !3046
  ret void, !dbg !3059
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !3060 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3064, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 %1, metadata !3065, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 %2, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 %1, metadata !3067, metadata !DIExpression()), !dbg !3072
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3073
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3073
  %6 = lshr i8 %1, 5, !dbg !3074
  %7 = zext i8 %6 to i64, !dbg !3074
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3075
  call void @llvm.dbg.value(metadata i32* %8, metadata !3068, metadata !DIExpression()), !dbg !3072
  %9 = and i8 %1, 31, !dbg !3076
  %10 = zext i8 %9 to i32, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %10, metadata !3070, metadata !DIExpression()), !dbg !3072
  %11 = load i32, i32* %8, align 4, !dbg !3077, !tbaa !1480
  %12 = lshr i32 %11, %10, !dbg !3078
  %13 = and i32 %12, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %13, metadata !3071, metadata !DIExpression()), !dbg !3072
  %14 = and i32 %2, 1, !dbg !3080
  %15 = xor i32 %13, %14, !dbg !3081
  %16 = shl i32 %15, %10, !dbg !3082
  %17 = xor i32 %16, %11, !dbg !3083
  store i32 %17, i32* %8, align 4, !dbg !3083, !tbaa !1480
  ret i32 %13, !dbg !3084
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !3085 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 %1, metadata !3090, metadata !DIExpression()), !dbg !3092
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3093
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3089, metadata !DIExpression()), !dbg !3092
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3096
  %6 = load i32, i32* %5, align 4, !dbg !3096, !tbaa !3097
  call void @llvm.dbg.value(metadata i32 %6, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i32 %1, i32* %5, align 4, !dbg !3098, !tbaa !3097
  ret i32 %6, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3100 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3104, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* %2, metadata !3106, metadata !DIExpression()), !dbg !3107
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3108
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3104, metadata !DIExpression()), !dbg !3107
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3111
  store i32 10, i32* %6, align 8, !dbg !3112, !tbaa !3046
  %7 = icmp ne i8* %1, null, !dbg !3113
  %8 = icmp ne i8* %2, null, !dbg !3115
  %9 = and i1 %7, %8, !dbg !3116
  br i1 %9, label %11, label %10, !dbg !3116

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3117
  unreachable, !dbg !3117

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3118
  store i8* %1, i8** %12, align 8, !dbg !3119, !tbaa !3120
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3121
  store i8* %2, i8** %13, align 8, !dbg !3122, !tbaa !3123
  ret void, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !3125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3130, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8* %2, metadata !3131, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %3, metadata !3132, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3133, metadata !DIExpression()), !dbg !3137
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3138
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !3134, metadata !DIExpression()), !dbg !3137
  %8 = tail call i32* @__errno_location() #24, !dbg !3139
  %9 = load i32, i32* %8, align 4, !dbg !3139, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %9, metadata !3135, metadata !DIExpression()), !dbg !3137
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3140
  %11 = load i32, i32* %10, align 8, !dbg !3140, !tbaa !3046
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3141
  %13 = load i32, i32* %12, align 4, !dbg !3141, !tbaa !3097
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3142
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3143
  %16 = load i8*, i8** %15, align 8, !dbg !3143, !tbaa !3120
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3144
  %18 = load i8*, i8** %17, align 8, !dbg !3144, !tbaa !3123
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %19, metadata !3136, metadata !DIExpression()), !dbg !3137
  store i32 %9, i32* %8, align 4, !dbg !3146, !tbaa !1480
  ret i64 %19, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !3148 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3156, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %4, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %5, metadata !3159, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32* %6, metadata !3160, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %7, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %8, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* null, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3168, metadata !DIExpression()), !dbg !3212
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !3213
  %14 = icmp eq i64 %13, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i1 %14, metadata !3169, metadata !DIExpression()), !dbg !3212
  %15 = lshr i32 %5, 1, !dbg !3215
  %16 = trunc i32 %15 to i8, !dbg !3215
  %17 = and i8 %16, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i8 %17, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3173, metadata !DIExpression()), !dbg !3212
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3216
  %19 = and i32 %5, 4, !dbg !3218
  %20 = icmp eq i32 %19, 0, !dbg !3218
  %21 = and i32 %5, 1, !dbg !3221
  %22 = icmp eq i32 %21, 0, !dbg !3221
  %23 = bitcast i64* %10 to i8*, !dbg !3224
  %24 = bitcast i32* %12 to i8*, !dbg !3225
  %25 = icmp eq i32* %6, null, !dbg !3226
  br label %26, !dbg !3228

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !3229
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !3230
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !3231
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !3232
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !3212
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !3233
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !3234
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !3235
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %38, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %37, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %36, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %35, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %34, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %33, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %32, metadata !3167, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %31, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %30, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %29, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %28, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %27, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3206), !dbg !3236
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
  ], !dbg !3237

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %35, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 5, metadata !3158, metadata !DIExpression()), !dbg !3212
  br label %92, !dbg !3238

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 5, metadata !3158, metadata !DIExpression()), !dbg !3212
  %42 = and i8 %35, 1, !dbg !3240
  %43 = icmp eq i8 %42, 0, !dbg !3240
  br i1 %43, label %44, label %92, !dbg !3238

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !3242
  br i1 %45, label %92, label %46, !dbg !3245

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !3242, !tbaa !1589
  br label %92, !dbg !3242

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %27), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %48, metadata !3161, metadata !DIExpression()), !dbg !3212
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %27), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %49, metadata !3162, metadata !DIExpression()), !dbg !3212
  br label %50, !dbg !3251

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %51, metadata !3161, metadata !DIExpression()), !dbg !3212
  %53 = and i8 %35, 1, !dbg !3252
  %54 = icmp eq i8 %53, 0, !dbg !3252
  br i1 %54, label %55, label %70, !dbg !3254

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3212
  %56 = load i8, i8* %51, align 1, !dbg !3255, !tbaa !1589
  %57 = icmp eq i8 %56, 0, !dbg !3258
  br i1 %57, label %70, label %58, !dbg !3258

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %61, metadata !3164, metadata !DIExpression()), !dbg !3212
  %62 = icmp ult i64 %61, %39, !dbg !3259
  br i1 %62, label %63, label %65, !dbg !3262

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !3259
  store i8 %59, i8* %64, align 1, !dbg !3259, !tbaa !1589
  br label %65, !dbg !3259

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %66, metadata !3164, metadata !DIExpression()), !dbg !3212
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %67, metadata !3166, metadata !DIExpression()), !dbg !3212
  %68 = load i8, i8* %67, align 1, !dbg !3255, !tbaa !1589
  %69 = icmp eq i8 %68, 0, !dbg !3258
  br i1 %69, label %70, label %58, !dbg !3258, !llvm.loop !3264

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !3266
  call void @llvm.dbg.value(metadata i64 %71, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %52, metadata !3166, metadata !DIExpression()), !dbg !3212
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %72, metadata !3167, metadata !DIExpression()), !dbg !3212
  br label %92, !dbg !3268

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !3168, metadata !DIExpression()), !dbg !3212
  br label %74, !dbg !3269

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %75, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3170, metadata !DIExpression()), !dbg !3212
  br label %76, !dbg !3270

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !3232
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %78, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %77, metadata !3168, metadata !DIExpression()), !dbg !3212
  %79 = and i8 %78, 1, !dbg !3271
  %80 = icmp eq i8 %79, 0, !dbg !3271
  %81 = select i1 %80, i8 1, i8 %77, !dbg !3273
  br label %82, !dbg !3273

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !3212
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %84, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %83, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  %85 = and i8 %84, 1, !dbg !3274
  %86 = icmp eq i8 %85, 0, !dbg !3274
  br i1 %86, label %87, label %92, !dbg !3276

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !3277
  br i1 %88, label %92, label %89, !dbg !3280

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !3277, !tbaa !1589
  br label %92, !dbg !3277

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !3170, metadata !DIExpression()), !dbg !3212
  br label %92, !dbg !3281

91:                                               ; preds = %26
  call void @abort() #22, !dbg !3282
  unreachable, !dbg !3282

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !3266
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %40 ], !dbg !3212
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !3212
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !3212
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %100, metadata !3170, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %98, metadata !3167, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %96, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %93, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 0, metadata !3163, metadata !DIExpression()), !dbg !3212
  %101 = and i8 %99, 1, !dbg !3283
  %102 = icmp ne i8 %101, 0, !dbg !3283
  %103 = icmp ne i32 %93, 2, !dbg !3283
  %104 = and i1 %103, %102, !dbg !3283
  %105 = icmp ne i64 %98, 0, !dbg !3283
  %106 = and i1 %105, %104, !dbg !3283
  %107 = icmp ugt i64 %98, 1, !dbg !3283
  %108 = and i8 %100, 1, !dbg !3285
  %109 = icmp eq i8 %108, 0, !dbg !3285
  %110 = icmp eq i32 %93, 2, !dbg !3288
  %111 = or i1 %103, %109, !dbg !3290
  %112 = icmp ne i8 %108, 0, !dbg !3292
  %113 = and i1 %110, %112, !dbg !3292
  %114 = xor i1 %102, true, !dbg !3293
  %115 = xor i1 %104, true, !dbg !3226
  %116 = and i1 %109, %115, !dbg !3226
  %117 = or i1 %25, %116, !dbg !3226
  %118 = and i8 %99, %100, !dbg !3294
  %119 = and i8 %118, 1, !dbg !3294
  %120 = icmp ne i8 %119, 0, !dbg !3294
  %121 = and i1 %120, %105, !dbg !3294
  br label %122, !dbg !3296

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !3297
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !3266
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !3229
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !3233
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !3234
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !3235
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %126, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %123, metadata !3163, metadata !DIExpression()), !dbg !3212
  %131 = icmp eq i64 %126, -1, !dbg !3298
  br i1 %131, label %132, label %136, !dbg !3299

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3300
  %134 = load i8, i8* %133, align 1, !dbg !3300, !tbaa !1589
  %135 = icmp eq i8 %134, 0, !dbg !3301
  br i1 %135, label %581, label %138, !dbg !3302

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !3303
  br i1 %137, label %581, label %138, !dbg !3302

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3181, metadata !DIExpression()), !dbg !3304
  br i1 %106, label %139, label %154, !dbg !3305

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !3306
  %141 = and i1 %107, %131, !dbg !3307
  br i1 %141, label %142, label %144, !dbg !3307

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %143, metadata !3157, metadata !DIExpression()), !dbg !3212
  br label %144, !dbg !3309

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !3157, metadata !DIExpression()), !dbg !3212
  %146 = icmp ugt i64 %140, %145, !dbg !3310
  br i1 %146, label %154, label %147, !dbg !3311

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3312
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !3313
  %150 = icmp ne i32 %149, 0, !dbg !3314
  %151 = or i1 %150, %109, !dbg !3315
  %152 = xor i1 %150, true, !dbg !3315
  %153 = zext i1 %152 to i8, !dbg !3315
  br i1 %151, label %154, label %639, !dbg !3315

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !3304
  call void @llvm.dbg.value(metadata i8 %156, metadata !3179, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %155, metadata !3157, metadata !DIExpression()), !dbg !3212
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3316
  %158 = load i8, i8* %157, align 1, !dbg !3316, !tbaa !1589
  call void @llvm.dbg.value(metadata i8 %158, metadata !3174, metadata !DIExpression()), !dbg !3304
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
  ], !dbg !3317

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !3318

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !3319

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !3180, metadata !DIExpression()), !dbg !3304
  %162 = and i8 %127, 1, !dbg !3322
  %163 = icmp eq i8 %162, 0, !dbg !3322
  %164 = and i1 %110, %163, !dbg !3322
  br i1 %164, label %165, label %181, !dbg !3322

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !3324
  br i1 %166, label %167, label %169, !dbg !3328

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3324
  store i8 39, i8* %168, align 1, !dbg !3324, !tbaa !1589
  br label %169, !dbg !3324

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %170, metadata !3164, metadata !DIExpression()), !dbg !3212
  %171 = icmp ult i64 %170, %130, !dbg !3329
  br i1 %171, label %172, label %174, !dbg !3332

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3329
  store i8 36, i8* %173, align 1, !dbg !3329, !tbaa !1589
  br label %174, !dbg !3329

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %175, metadata !3164, metadata !DIExpression()), !dbg !3212
  %176 = icmp ult i64 %175, %130, !dbg !3333
  br i1 %176, label %177, label %179, !dbg !3336

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3333
  store i8 39, i8* %178, align 1, !dbg !3333, !tbaa !1589
  br label %179, !dbg !3333

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %180, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %181, !dbg !3337

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !3212
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %183, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %182, metadata !3164, metadata !DIExpression()), !dbg !3212
  %184 = icmp ult i64 %182, %130, !dbg !3338
  br i1 %184, label %185, label %187, !dbg !3341

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3338
  store i8 92, i8* %186, align 1, !dbg !3338, !tbaa !1589
  br label %187, !dbg !3338

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %188, metadata !3164, metadata !DIExpression()), !dbg !3212
  br i1 %103, label %189, label %463, !dbg !3342

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !3344
  %191 = icmp ult i64 %190, %155, !dbg !3345
  br i1 %191, label %192, label %463, !dbg !3346

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !3347
  %194 = load i8, i8* %193, align 1, !dbg !3347, !tbaa !1589
  %195 = add i8 %194, -48, !dbg !3348
  %196 = icmp ult i8 %195, 10, !dbg !3348
  br i1 %196, label %197, label %463, !dbg !3348

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !3349
  br i1 %198, label %199, label %201, !dbg !3353

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3349
  store i8 48, i8* %200, align 1, !dbg !3349, !tbaa !1589
  br label %201, !dbg !3349

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %202, metadata !3164, metadata !DIExpression()), !dbg !3212
  %203 = icmp ult i64 %202, %130, !dbg !3354
  br i1 %203, label %204, label %206, !dbg !3357

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3354
  store i8 48, i8* %205, align 1, !dbg !3354, !tbaa !1589
  br label %206, !dbg !3354

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %207, metadata !3164, metadata !DIExpression()), !dbg !3212
  br label %463, !dbg !3358

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !3359

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3360

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !3361

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !3362

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !3363
  %214 = icmp ult i64 %213, %155, !dbg !3364
  br i1 %214, label %215, label %463, !dbg !3365

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !3366
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3367
  %218 = load i8, i8* %217, align 1, !dbg !3367, !tbaa !1589
  %219 = icmp eq i8 %218, 63, !dbg !3368
  br i1 %219, label %220, label %463, !dbg !3369

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3370
  %222 = load i8, i8* %221, align 1, !dbg !3370, !tbaa !1589
  %223 = sext i8 %222 to i32, !dbg !3370
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
  ], !dbg !3371

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !3372

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %213, metadata !3163, metadata !DIExpression()), !dbg !3212
  %226 = icmp ult i64 %124, %130, !dbg !3374
  br i1 %226, label %227, label %229, !dbg !3377

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3374
  store i8 63, i8* %228, align 1, !dbg !3374, !tbaa !1589
  br label %229, !dbg !3374

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %230, metadata !3164, metadata !DIExpression()), !dbg !3212
  %231 = icmp ult i64 %230, %130, !dbg !3378
  br i1 %231, label %232, label %234, !dbg !3381

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3378
  store i8 34, i8* %233, align 1, !dbg !3378, !tbaa !1589
  br label %234, !dbg !3378

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %235, metadata !3164, metadata !DIExpression()), !dbg !3212
  %236 = icmp ult i64 %235, %130, !dbg !3382
  br i1 %236, label %237, label %239, !dbg !3385

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3382
  store i8 34, i8* %238, align 1, !dbg !3382, !tbaa !1589
  br label %239, !dbg !3382

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %240, metadata !3164, metadata !DIExpression()), !dbg !3212
  %241 = icmp ult i64 %240, %130, !dbg !3386
  br i1 %241, label %242, label %244, !dbg !3389

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3386
  store i8 63, i8* %243, align 1, !dbg !3386, !tbaa !1589
  br label %244, !dbg !3386

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %245, metadata !3164, metadata !DIExpression()), !dbg !3212
  br label %463, !dbg !3390

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !3178, metadata !DIExpression()), !dbg !3304
  br label %256, !dbg !3391

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !3178, metadata !DIExpression()), !dbg !3304
  br label %256, !dbg !3392

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !3178, metadata !DIExpression()), !dbg !3304
  br label %254, !dbg !3393

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !3178, metadata !DIExpression()), !dbg !3304
  br label %254, !dbg !3394

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !3178, metadata !DIExpression()), !dbg !3304
  br label %256, !dbg !3395

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !3178, metadata !DIExpression()), !dbg !3304
  br i1 %110, label %252, label %253, !dbg !3396

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !3397

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !3400

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !3401
  call void @llvm.dbg.value(metadata i8 %255, metadata !3178, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.label(metadata !3207), !dbg !3402
  br i1 %111, label %256, label %625, !dbg !3403

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !3401
  call void @llvm.dbg.value(metadata i8 %257, metadata !3178, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.label(metadata !3208), !dbg !3405
  br i1 %102, label %488, label %463, !dbg !3406

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3407

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3408, !tbaa !1589
  %261 = icmp eq i8 %260, 0, !dbg !3409
  br i1 %261, label %262, label %463, !dbg !3410

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !3411
  br i1 %263, label %264, label %463, !dbg !3413

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3181, metadata !DIExpression()), !dbg !3304
  br label %265, !dbg !3414

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !3304
  call void @llvm.dbg.value(metadata i8 %266, metadata !3181, metadata !DIExpression()), !dbg !3304
  br i1 %111, label %463, label %625, !dbg !3415

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3181, metadata !DIExpression()), !dbg !3304
  br i1 %110, label %268, label %463, !dbg !3416

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !3417

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !3419
  %271 = icmp ne i64 %125, 0, !dbg !3421
  %272 = or i1 %271, %270, !dbg !3422
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !3422
  %274 = select i1 %272, i64 %130, i64 0, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %274, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %273, metadata !3165, metadata !DIExpression()), !dbg !3212
  %275 = icmp ult i64 %124, %274, !dbg !3423
  br i1 %275, label %276, label %278, !dbg !3426

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3423
  store i8 39, i8* %277, align 1, !dbg !3423, !tbaa !1589
  br label %278, !dbg !3423

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !3426
  call void @llvm.dbg.value(metadata i64 %279, metadata !3164, metadata !DIExpression()), !dbg !3212
  %280 = icmp ult i64 %279, %274, !dbg !3427
  br i1 %280, label %281, label %283, !dbg !3430

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3427
  store i8 92, i8* %282, align 1, !dbg !3427, !tbaa !1589
  br label %283, !dbg !3427

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %284, metadata !3164, metadata !DIExpression()), !dbg !3212
  %285 = icmp ult i64 %284, %274, !dbg !3431
  br i1 %285, label %286, label %288, !dbg !3434

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3431
  store i8 39, i8* %287, align 1, !dbg !3431, !tbaa !1589
  br label %288, !dbg !3431

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %289, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %463, !dbg !3435

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !3436

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !3182, metadata !DIExpression()), !dbg !3437
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !3438
  %293 = load i16*, i16** %292, align 8, !dbg !3438, !tbaa !1423
  %294 = zext i8 %158 to i64, !dbg !3438
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3438
  %296 = load i16, i16* %295, align 2, !dbg !3438, !tbaa !3440
  %297 = lshr i16 %296, 14, !dbg !3441
  %298 = trunc i16 %297 to i8, !dbg !3441
  %299 = and i8 %298, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i8 %299, metadata !3185, metadata !DIExpression()), !dbg !3437
  br label %355, !dbg !3442

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !3186, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %23, metadata !3445, metadata !DIExpression()) #13, !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()) #13, !dbg !3453
  call void @llvm.dbg.value(metadata i64 8, metadata !3452, metadata !DIExpression()) #13, !dbg !3453
  store i64 0, i64* %10, align 8, !dbg !3455
  call void @llvm.dbg.value(metadata i64 0, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 1, metadata !3185, metadata !DIExpression()), !dbg !3437
  %301 = icmp eq i64 %155, -1, !dbg !3456
  br i1 %301, label %302, label %304, !dbg !3458

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %303, metadata !3157, metadata !DIExpression()), !dbg !3212
  br label %304, !dbg !3460

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !3304
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  br label %306, !dbg !3461

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3462
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3463
  call void @llvm.dbg.value(metadata i8 %308, metadata !3185, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3464
  %309 = add i64 %307, %123, !dbg !3465
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3466
  %311 = sub i64 %305, %309, !dbg !3467
  call void @llvm.dbg.value(metadata i32* %12, metadata !3192, metadata !DIExpression(DW_OP_deref)), !dbg !3225
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #13, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %312, metadata !3195, metadata !DIExpression()), !dbg !3225
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3469

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  %314 = icmp ugt i64 %305, %309, !dbg !3470
  br i1 %314, label %315, label %340, !dbg !3472

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3473
  br label %317, !dbg !3473

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !3182, metadata !DIExpression()), !dbg !3437
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3474
  %321 = load i8, i8* %320, align 1, !dbg !3474, !tbaa !1589
  %322 = icmp eq i8 %321, 0, !dbg !3472
  br i1 %322, label %340, label %323, !dbg !3473

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %324, metadata !3182, metadata !DIExpression()), !dbg !3437
  %325 = add i64 %324, %123, !dbg !3476
  %326 = icmp ult i64 %325, %305, !dbg !3470
  br i1 %326, label %317, label %340, !dbg !3472, !llvm.loop !3477

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3478
  %329 = and i1 %113, %328, !dbg !3481
  call void @llvm.dbg.value(metadata i64 1, metadata !3196, metadata !DIExpression()), !dbg !3482
  br i1 %329, label %330, label %343, !dbg !3481

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !3196, metadata !DIExpression()), !dbg !3482
  %332 = add i64 %331, %309, !dbg !3483
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3484
  %334 = load i8, i8* %333, align 1, !dbg !3484, !tbaa !1589
  %335 = sext i8 %334 to i32, !dbg !3484
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3485

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %337, metadata !3196, metadata !DIExpression()), !dbg !3482
  %338 = icmp eq i64 %337, %312, !dbg !3478
  br i1 %338, label %343, label %330, !dbg !3487, !llvm.loop !3488

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 %308, metadata !3185, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %307, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 %308, metadata !3185, metadata !DIExpression()), !dbg !3437
  br label %340, !dbg !3490

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3490
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3491, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %344, metadata !3192, metadata !DIExpression()), !dbg !3225
  %345 = call i32 @iswprint(i32 %344) #13, !dbg !3493
  %346 = icmp eq i32 %345, 0, !dbg !3493
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3494
  call void @llvm.dbg.value(metadata i8 %347, metadata !3185, metadata !DIExpression()), !dbg !3437
  %348 = add i64 %312, %307, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %348, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8 %347, metadata !3185, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %348, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3490
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !3496
  %350 = icmp eq i32 %349, 0, !dbg !3497
  br i1 %350, label %306, label %351, !dbg !3498, !llvm.loop !3499

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !3501
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2, metadata !3158, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %99, metadata !3168, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %305, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !3501
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !3304
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3502
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3502
  call void @llvm.dbg.value(metadata i8 %358, metadata !3185, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %357, metadata !3182, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %356, metadata !3157, metadata !DIExpression()), !dbg !3212
  %359 = and i8 %358, 1, !dbg !3503
  %360 = icmp ne i8 %359, 0, !dbg !3503
  call void @llvm.dbg.value(metadata i8 %359, metadata !3181, metadata !DIExpression()), !dbg !3304
  %361 = icmp ult i64 %357, 2, !dbg !3504
  %362 = or i1 %360, %114, !dbg !3505
  %363 = and i1 %361, %362, !dbg !3506
  br i1 %363, label %463, label %364, !dbg !3506

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %365, metadata !3203, metadata !DIExpression()), !dbg !3508
  br label %366, !dbg !3509

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !3297
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !3212
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !3233
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !3304
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !3304
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3510
  call void @llvm.dbg.value(metadata i8 %372, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %371, metadata !3179, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %370, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %369, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %368, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %367, metadata !3163, metadata !DIExpression()), !dbg !3212
  br i1 %362, label %419, label %373, !dbg !3511

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3516

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !3180, metadata !DIExpression()), !dbg !3304
  %375 = and i8 %369, 1, !dbg !3519
  %376 = icmp eq i8 %375, 0, !dbg !3519
  %377 = and i1 %110, %376, !dbg !3519
  br i1 %377, label %378, label %394, !dbg !3519

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3521
  br i1 %379, label %380, label %382, !dbg !3525

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3521
  store i8 39, i8* %381, align 1, !dbg !3521, !tbaa !1589
  br label %382, !dbg !3521

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %383, metadata !3164, metadata !DIExpression()), !dbg !3212
  %384 = icmp ult i64 %383, %130, !dbg !3526
  br i1 %384, label %385, label %387, !dbg !3529

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3526
  store i8 36, i8* %386, align 1, !dbg !3526, !tbaa !1589
  br label %387, !dbg !3526

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %388, metadata !3164, metadata !DIExpression()), !dbg !3212
  %389 = icmp ult i64 %388, %130, !dbg !3530
  br i1 %389, label %390, label %392, !dbg !3533

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3530
  store i8 39, i8* %391, align 1, !dbg !3530, !tbaa !1589
  br label %392, !dbg !3530

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %393, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %394, !dbg !3534

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !3212
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %396, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %395, metadata !3164, metadata !DIExpression()), !dbg !3212
  %397 = icmp ult i64 %395, %130, !dbg !3535
  br i1 %397, label %398, label %400, !dbg !3538

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3535
  store i8 92, i8* %399, align 1, !dbg !3535, !tbaa !1589
  br label %400, !dbg !3535

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %401, metadata !3164, metadata !DIExpression()), !dbg !3212
  %402 = icmp ult i64 %401, %130, !dbg !3539
  br i1 %402, label %403, label %407, !dbg !3542

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3539
  %405 = or i8 %404, 48, !dbg !3539
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3539
  store i8 %405, i8* %406, align 1, !dbg !3539, !tbaa !1589
  br label %407, !dbg !3539

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %408, metadata !3164, metadata !DIExpression()), !dbg !3212
  %409 = icmp ult i64 %408, %130, !dbg !3543
  br i1 %409, label %410, label %415, !dbg !3546

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3543
  %412 = and i8 %411, 7, !dbg !3543
  %413 = or i8 %412, 48, !dbg !3543
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3543
  store i8 %413, i8* %414, align 1, !dbg !3543, !tbaa !1589
  br label %415, !dbg !3543

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %416, metadata !3164, metadata !DIExpression()), !dbg !3212
  %417 = and i8 %370, 7, !dbg !3547
  %418 = or i8 %417, 48, !dbg !3548
  call void @llvm.dbg.value(metadata i8 %418, metadata !3174, metadata !DIExpression()), !dbg !3304
  br label %428, !dbg !3549

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3550
  %421 = icmp eq i8 %420, 0, !dbg !3550
  br i1 %421, label %428, label %422, !dbg !3552

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3553
  br i1 %423, label %424, label %426, !dbg !3557

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3553
  store i8 92, i8* %425, align 1, !dbg !3553, !tbaa !1589
  br label %426, !dbg !3553

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %427, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3304
  br label %428, !dbg !3558

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !3212
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !3233
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !3304
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !3304
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !3304
  call void @llvm.dbg.value(metadata i8 %433, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %432, metadata !3179, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %431, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %430, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %429, metadata !3164, metadata !DIExpression()), !dbg !3212
  %434 = add i64 %367, 1, !dbg !3559
  %435 = icmp ugt i64 %365, %434, !dbg !3561
  br i1 %435, label %436, label %526, !dbg !3562

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3563
  %438 = icmp ne i8 %437, 0, !dbg !3563
  %439 = and i8 %433, 1, !dbg !3563
  %440 = icmp eq i8 %439, 0, !dbg !3563
  %441 = and i1 %438, %440, !dbg !3563
  br i1 %441, label %442, label %453, !dbg !3563

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3566
  br i1 %443, label %444, label %446, !dbg !3570

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3566
  store i8 39, i8* %445, align 1, !dbg !3566, !tbaa !1589
  br label %446, !dbg !3566

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %447, metadata !3164, metadata !DIExpression()), !dbg !3212
  %448 = icmp ult i64 %447, %130, !dbg !3571
  br i1 %448, label %449, label %451, !dbg !3574

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3571
  store i8 39, i8* %450, align 1, !dbg !3571, !tbaa !1589
  br label %451, !dbg !3571

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %452, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %453, !dbg !3575

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3576
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %455, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %454, metadata !3164, metadata !DIExpression()), !dbg !3212
  %456 = icmp ult i64 %454, %130, !dbg !3577
  br i1 %456, label %457, label %459, !dbg !3580

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3577
  store i8 %431, i8* %458, align 1, !dbg !3577, !tbaa !1589
  br label %459, !dbg !3577

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %460, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %434, metadata !3163, metadata !DIExpression()), !dbg !3212
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3581
  %462 = load i8, i8* %461, align 1, !dbg !3581, !tbaa !1589
  call void @llvm.dbg.value(metadata i8 %462, metadata !3174, metadata !DIExpression()), !dbg !3304
  br label %366, !dbg !3582, !llvm.loop !3583

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !3297
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !3212
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !3229
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3586
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !3212
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !3212
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !3304
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !3304
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !3304
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %472, metadata !3181, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %471, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %156, metadata !3179, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %470, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %469, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %468, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %467, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %466, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %465, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %464, metadata !3163, metadata !DIExpression()), !dbg !3212
  br i1 %117, label %486, label %474, !dbg !3587

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3588
  %476 = zext i8 %475 to i64, !dbg !3588
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3589
  %478 = load i32, i32* %477, align 4, !dbg !3589, !tbaa !1480
  %479 = and i8 %470, 31, !dbg !3590
  %480 = zext i8 %479 to i32, !dbg !3590
  %481 = shl nuw i32 1, %480, !dbg !3591
  %482 = and i32 %478, %481, !dbg !3591
  %483 = icmp eq i32 %482, 0, !dbg !3591
  %484 = icmp eq i8 %156, 0, !dbg !3592
  %485 = and i1 %484, %483, !dbg !3593
  br i1 %485, label %526, label %488, !dbg !3593

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3592
  br i1 %487, label %526, label %488, !dbg !3594

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3595
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !3212
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !3229
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3586
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !3233
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !3234
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !3304
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !3304
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %496, metadata !3181, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %495, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %494, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %493, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %492, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %491, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %490, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %489, metadata !3163, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3209), !dbg !3596
  br i1 %109, label %498, label %629, !dbg !3597

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !3180, metadata !DIExpression()), !dbg !3304
  %499 = and i8 %493, 1, !dbg !3599
  %500 = icmp eq i8 %499, 0, !dbg !3599
  %501 = and i1 %110, %500, !dbg !3599
  br i1 %501, label %502, label %518, !dbg !3599

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3601
  br i1 %503, label %504, label %506, !dbg !3605

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3601
  store i8 39, i8* %505, align 1, !dbg !3601, !tbaa !1589
  br label %506, !dbg !3601

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %507, metadata !3164, metadata !DIExpression()), !dbg !3212
  %508 = icmp ult i64 %507, %497, !dbg !3606
  br i1 %508, label %509, label %511, !dbg !3609

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3606
  store i8 36, i8* %510, align 1, !dbg !3606, !tbaa !1589
  br label %511, !dbg !3606

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %512, metadata !3164, metadata !DIExpression()), !dbg !3212
  %513 = icmp ult i64 %512, %497, !dbg !3610
  br i1 %513, label %514, label %516, !dbg !3613

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3610
  store i8 39, i8* %515, align 1, !dbg !3610, !tbaa !1589
  br label %516, !dbg !3610

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %517, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %518, !dbg !3614

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !3304
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %520, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %519, metadata !3164, metadata !DIExpression()), !dbg !3212
  %521 = icmp ult i64 %519, %497, !dbg !3615
  br i1 %521, label %522, label %524, !dbg !3618

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3615
  store i8 92, i8* %523, align 1, !dbg !3615, !tbaa !1589
  br label %524, !dbg !3615

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %525, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %536, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %535, metadata !3181, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %534, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %533, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %532, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %531, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %530, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %529, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %528, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %527, metadata !3163, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3210), !dbg !3619
  br label %553, !dbg !3620

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3595
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !3212
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !3229
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3586
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !3233
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !3234
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3623
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !3304
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !3304
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %535, metadata !3181, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %534, metadata !3180, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %533, metadata !3174, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %532, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %531, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %530, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %529, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %528, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %527, metadata !3163, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3210), !dbg !3619
  %537 = and i8 %531, 1, !dbg !3620
  %538 = icmp ne i8 %537, 0, !dbg !3620
  %539 = and i8 %534, 1, !dbg !3620
  %540 = icmp eq i8 %539, 0, !dbg !3620
  %541 = and i1 %538, %540, !dbg !3620
  br i1 %541, label %542, label %553, !dbg !3620

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3624
  br i1 %543, label %544, label %546, !dbg !3628

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3624
  store i8 39, i8* %545, align 1, !dbg !3624, !tbaa !1589
  br label %546, !dbg !3624

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %547, metadata !3164, metadata !DIExpression()), !dbg !3212
  %548 = icmp ult i64 %547, %536, !dbg !3629
  br i1 %548, label %549, label %551, !dbg !3632

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3629
  store i8 39, i8* %550, align 1, !dbg !3629, !tbaa !1589
  br label %551, !dbg !3629

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %552, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3212
  br label %553, !dbg !3633

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !3304
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !3212
  call void @llvm.dbg.value(metadata i8 %562, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %561, metadata !3164, metadata !DIExpression()), !dbg !3212
  %563 = icmp ult i64 %561, %554, !dbg !3634
  br i1 %563, label %564, label %566, !dbg !3637

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3634
  store i8 %556, i8* %565, align 1, !dbg !3634, !tbaa !1589
  br label %566, !dbg !3634

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %567, metadata !3164, metadata !DIExpression()), !dbg !3212
  %568 = and i8 %555, 1, !dbg !3638
  %569 = icmp eq i8 %568, 0, !dbg !3638
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3640
  call void @llvm.dbg.value(metadata i8 %570, metadata !3173, metadata !DIExpression()), !dbg !3212
  br label %571, !dbg !3641

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3595
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !3212
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !3229
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3586
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !3233
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !3212
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !3235
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %578, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %577, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %576, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %575, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %574, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %573, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %572, metadata !3163, metadata !DIExpression()), !dbg !3212
  %580 = add i64 %572, 1, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %580, metadata !3163, metadata !DIExpression()), !dbg !3212
  br label %122, !dbg !3643, !llvm.loop !3644

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %127, metadata !3171, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %128, metadata !3172, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 %129, metadata !3173, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  %583 = icmp eq i64 %124, 0, !dbg !3646
  %584 = and i1 %110, %583, !dbg !3648
  %585 = xor i1 %584, true, !dbg !3648
  %586 = or i1 %109, %585, !dbg !3648
  br i1 %586, label %587, label %629, !dbg !3648

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3649
  %589 = xor i1 %588, true, !dbg !3649
  %590 = and i8 %128, 1, !dbg !3651
  %591 = icmp eq i8 %590, 0, !dbg !3651
  %592 = or i1 %591, %589, !dbg !3649
  br i1 %592, label %602, label %593, !dbg !3649

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3652
  %595 = icmp eq i8 %594, 0, !dbg !3652
  br i1 %595, label %598, label %596, !dbg !3655

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %94, metadata !3161, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %95, metadata !3162, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %125, metadata !3165, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %582, metadata !3157, metadata !DIExpression()), !dbg !3212
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3656
  br label %645, !dbg !3657

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3658
  %600 = icmp ne i64 %125, 0, !dbg !3660
  %601 = and i1 %600, %599, !dbg !3661
  br i1 %601, label %26, label %602, !dbg !3661

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %130, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  %603 = icmp ne i8* %97, null, !dbg !3662
  %604 = and i1 %603, %109, !dbg !3664
  br i1 %604, label %605, label %620, !dbg !3664

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %124, metadata !3164, metadata !DIExpression()), !dbg !3212
  %606 = load i8, i8* %97, align 1, !dbg !3665, !tbaa !1589
  %607 = icmp eq i8 %606, 0, !dbg !3668
  br i1 %607, label %620, label %608, !dbg !3668

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !3166, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %611, metadata !3164, metadata !DIExpression()), !dbg !3212
  %612 = icmp ult i64 %611, %130, !dbg !3669
  br i1 %612, label %613, label %615, !dbg !3672

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3669
  store i8 %609, i8* %614, align 1, !dbg !3669, !tbaa !1589
  br label %615, !dbg !3669

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %616, metadata !3164, metadata !DIExpression()), !dbg !3212
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %617, metadata !3166, metadata !DIExpression()), !dbg !3212
  %618 = load i8, i8* %617, align 1, !dbg !3665, !tbaa !1589
  %619 = icmp eq i8 %618, 0, !dbg !3668
  br i1 %619, label %620, label %608, !dbg !3668, !llvm.loop !3674

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !3266
  call void @llvm.dbg.value(metadata i64 %621, metadata !3164, metadata !DIExpression()), !dbg !3212
  %622 = icmp ult i64 %621, %130, !dbg !3676
  br i1 %622, label %623, label %645, !dbg !3678

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3679
  store i8 0, i8* %624, align 1, !dbg !3680, !tbaa !1589
  br label %645, !dbg !3679

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %630, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3211), !dbg !3681
  %627 = icmp eq i8 %101, 0, !dbg !3682
  %628 = select i1 %627, i32 2, i32 4, !dbg !3682
  br label %635, !dbg !3682

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3155, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %630, metadata !3157, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.label(metadata !3211), !dbg !3681
  %632 = icmp eq i32 %93, 2, !dbg !3684
  %633 = icmp eq i8 %101, 0, !dbg !3682
  %634 = select i1 %633, i32 2, i32 4, !dbg !3682
  br i1 %632, label %635, label %639, !dbg !3682

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3682

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !3158, metadata !DIExpression()), !dbg !3212
  %643 = and i32 %5, -3, !dbg !3685
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3686
  br label %645, !dbg !3687

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3688
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3693, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %1, metadata !3694, metadata !DIExpression()), !dbg !3697
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %3, metadata !3695, metadata !DIExpression()), !dbg !3697
  %4 = icmp eq i8* %3, %0, !dbg !3699
  br i1 %4, label %5, label %71, !dbg !3701

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %6, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8* %6, metadata !3703, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* undef, metadata !3709, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 85, metadata !3710, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 84, metadata !3711, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 70, metadata !3712, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 45, metadata !3713, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 56, metadata !3714, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, metadata !3715, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 0, metadata !3718, metadata !DIExpression()), !dbg !3719
  %7 = load i8, i8* %6, align 1, !dbg !3722, !tbaa !1589
  %8 = and i8 %7, -33, !dbg !3722
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3722

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3724, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* undef, metadata !3729, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 84, metadata !3730, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 70, metadata !3731, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 45, metadata !3732, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 56, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3734, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3737, metadata !DIExpression()), !dbg !3738
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3742
  %11 = load i8, i8* %10, align 1, !dbg !3742, !tbaa !1589
  %12 = and i8 %11, -33, !dbg !3742
  %13 = icmp eq i8 %12, 84, !dbg !3742
  br i1 %13, label %14, label %68, !dbg !3742

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3744, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* undef, metadata !3749, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 70, metadata !3750, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 45, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 56, metadata !3752, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 0, metadata !3753, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 0, metadata !3755, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8 0, metadata !3756, metadata !DIExpression()), !dbg !3757
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3761
  %16 = load i8, i8* %15, align 1, !dbg !3761, !tbaa !1589
  %17 = and i8 %16, -33, !dbg !3761
  %18 = icmp eq i8 %17, 70, !dbg !3761
  br i1 %18, label %19, label %68, !dbg !3761

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3763, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* undef, metadata !3768, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 45, metadata !3769, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 56, metadata !3770, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 0, metadata !3771, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 0, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 0, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 0, metadata !3774, metadata !DIExpression()), !dbg !3775
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3779
  %21 = load i8, i8* %20, align 1, !dbg !3779, !tbaa !1589
  %22 = icmp eq i8 %21, 45, !dbg !3779
  br i1 %22, label %23, label %68, !dbg !3781

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3782, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* undef, metadata !3787, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 56, metadata !3788, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3789, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3791, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3793
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3797
  %25 = load i8, i8* %24, align 1, !dbg !3797, !tbaa !1589
  %26 = icmp eq i8 %25, 56, !dbg !3797
  br i1 %26, label %27, label %68, !dbg !3799

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3800, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* undef, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3809, metadata !DIExpression()), !dbg !3810
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3814
  %29 = load i8, i8* %28, align 1, !dbg !3814, !tbaa !1589
  %30 = icmp eq i8 %29, 0, !dbg !3814
  br i1 %30, label %31, label %68, !dbg !3816

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3817, !tbaa !1589
  %33 = icmp eq i8 %32, 96, !dbg !3818
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !3817
  br label %71, !dbg !3819

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3724, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8* undef, metadata !3729, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 66, metadata !3730, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 49, metadata !3731, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 56, metadata !3732, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 48, metadata !3733, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 51, metadata !3734, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 48, metadata !3735, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 0, metadata !3736, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i8 0, metadata !3737, metadata !DIExpression()), !dbg !3820
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3824
  %37 = load i8, i8* %36, align 1, !dbg !3824, !tbaa !1589
  %38 = and i8 %37, -33, !dbg !3824
  %39 = icmp eq i8 %38, 66, !dbg !3824
  br i1 %39, label %40, label %68, !dbg !3824

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3744, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8* undef, metadata !3749, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 49, metadata !3750, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 56, metadata !3751, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 48, metadata !3752, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 51, metadata !3753, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 48, metadata !3754, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 0, metadata !3755, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 0, metadata !3756, metadata !DIExpression()), !dbg !3825
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3827
  %42 = load i8, i8* %41, align 1, !dbg !3827, !tbaa !1589
  %43 = icmp eq i8 %42, 49, !dbg !3827
  br i1 %43, label %44, label %68, !dbg !3828

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3763, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8* undef, metadata !3768, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 56, metadata !3769, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 48, metadata !3770, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 51, metadata !3771, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 48, metadata !3772, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 0, metadata !3773, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 0, metadata !3774, metadata !DIExpression()), !dbg !3829
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3831
  %46 = load i8, i8* %45, align 1, !dbg !3831, !tbaa !1589
  %47 = icmp eq i8 %46, 56, !dbg !3831
  br i1 %47, label %48, label %68, !dbg !3832

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3782, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* undef, metadata !3787, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 48, metadata !3788, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 51, metadata !3789, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 48, metadata !3790, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 0, metadata !3791, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3833
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3835
  %50 = load i8, i8* %49, align 1, !dbg !3835, !tbaa !1589
  %51 = icmp eq i8 %50, 48, !dbg !3835
  br i1 %51, label %52, label %68, !dbg !3836

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3800, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8* undef, metadata !3805, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 51, metadata !3806, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 48, metadata !3807, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 0, metadata !3808, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 0, metadata !3809, metadata !DIExpression()), !dbg !3837
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3839
  %54 = load i8, i8* %53, align 1, !dbg !3839, !tbaa !1589
  %55 = icmp eq i8 %54, 51, !dbg !3839
  br i1 %55, label %56, label %68, !dbg !3840

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3841, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8* undef, metadata !3846, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 48, metadata !3847, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 0, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8 0, metadata !3849, metadata !DIExpression()), !dbg !3850
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3854
  %58 = load i8, i8* %57, align 1, !dbg !3854, !tbaa !1589
  %59 = icmp eq i8 %58, 48, !dbg !3854
  br i1 %59, label %60, label %68, !dbg !3856

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3857, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* undef, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8 0, metadata !3863, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8 0, metadata !3864, metadata !DIExpression()), !dbg !3865
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3869
  %62 = load i8, i8* %61, align 1, !dbg !3869, !tbaa !1589
  %63 = icmp eq i8 %62, 0, !dbg !3869
  br i1 %63, label %64, label %68, !dbg !3871

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3872, !tbaa !1589
  %66 = icmp eq i8 %65, 96, !dbg !3873
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !3872
  br label %71, !dbg !3874

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3875
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !3876
  br label %71, !dbg !3877

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3697
  ret i8* %72, !dbg !3878
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !332 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !336 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 %1, metadata !3884, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3885, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %0, metadata !3887, metadata !DIExpression()) #13, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()) #13, !dbg !3900
  call void @llvm.dbg.value(metadata i64* null, metadata !3893, metadata !DIExpression()) #13, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3894, metadata !DIExpression()) #13, !dbg !3900
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3902
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3895, metadata !DIExpression()) #13, !dbg !3900
  %6 = tail call i32* @__errno_location() #24, !dbg !3903
  %7 = load i32, i32* %6, align 4, !dbg !3903, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %7, metadata !3896, metadata !DIExpression()) #13, !dbg !3900
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3904
  %9 = load i32, i32* %8, align 4, !dbg !3904, !tbaa !3097
  %10 = or i32 %9, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %10, metadata !3897, metadata !DIExpression()) #13, !dbg !3900
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3906
  %12 = load i32, i32* %11, align 8, !dbg !3906, !tbaa !3046
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3907
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3908
  %15 = load i8*, i8** %14, align 8, !dbg !3908, !tbaa !3120
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3909
  %17 = load i8*, i8** %16, align 8, !dbg !3909, !tbaa !3123
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #13, !dbg !3910
  %19 = add i64 %18, 1, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %19, metadata !3898, metadata !DIExpression()) #13, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %19, metadata !3912, metadata !DIExpression()) #13, !dbg !3917
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %20, metadata !3899, metadata !DIExpression()) #13, !dbg !3900
  %21 = load i32, i32* %11, align 8, !dbg !3920, !tbaa !3046
  %22 = load i8*, i8** %14, align 8, !dbg !3921, !tbaa !3120
  %23 = load i8*, i8** %16, align 8, !dbg !3922, !tbaa !3123
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #13, !dbg !3923
  store i32 %7, i32* %6, align 4, !dbg !3924, !tbaa !1480
  ret i8* %20, !dbg !3925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3887, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64* %2, metadata !3893, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3894, metadata !DIExpression()), !dbg !3926
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3927
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3927
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3895, metadata !DIExpression()), !dbg !3926
  %7 = tail call i32* @__errno_location() #24, !dbg !3928
  %8 = load i32, i32* %7, align 4, !dbg !3928, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %8, metadata !3896, metadata !DIExpression()), !dbg !3926
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3929
  %10 = load i32, i32* %9, align 4, !dbg !3929, !tbaa !3097
  %11 = icmp ne i64* %2, null, !dbg !3930
  %12 = xor i1 %11, true, !dbg !3930
  %13 = zext i1 %12 to i32, !dbg !3930
  %14 = or i32 %10, %13, !dbg !3931
  call void @llvm.dbg.value(metadata i32 %14, metadata !3897, metadata !DIExpression()), !dbg !3926
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3932
  %16 = load i32, i32* %15, align 8, !dbg !3932, !tbaa !3046
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3933
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3934
  %19 = load i8*, i8** %18, align 8, !dbg !3934, !tbaa !3120
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3935
  %21 = load i8*, i8** %20, align 8, !dbg !3935, !tbaa !3123
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3936
  %23 = add i64 %22, 1, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %23, metadata !3898, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %23, metadata !3912, metadata !DIExpression()) #13, !dbg !3938
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %24, metadata !3899, metadata !DIExpression()), !dbg !3926
  %25 = load i32, i32* %15, align 8, !dbg !3941, !tbaa !3046
  %26 = load i8*, i8** %18, align 8, !dbg !3942, !tbaa !3120
  %27 = load i8*, i8** %20, align 8, !dbg !3943, !tbaa !3123
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3944
  store i32 %8, i32* %7, align 4, !dbg !3945, !tbaa !1480
  br i1 %11, label %29, label %30, !dbg !3946

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3947, !tbaa !1555
  br label %30, !dbg !3949

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3951 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3955, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 1, metadata !3954, metadata !DIExpression()), !dbg !3956
  %2 = load i32, i32* @nslots, align 4, !dbg !3957, !tbaa !1480
  %3 = icmp sgt i32 %2, 1, !dbg !3960
  br i1 %3, label %4, label %12, !dbg !3961

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3954, metadata !DIExpression()), !dbg !3956
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3962
  %7 = load i8*, i8** %6, align 8, !dbg !3962, !tbaa !3963
  tail call void @free(i8* %7) #13, !dbg !3965
  %8 = add nuw nsw i64 %5, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %8, metadata !3954, metadata !DIExpression()), !dbg !3956
  %9 = load i32, i32* @nslots, align 4, !dbg !3957, !tbaa !1480
  %10 = sext i32 %9 to i64, !dbg !3960
  %11 = icmp slt i64 %8, %10, !dbg !3960
  br i1 %11, label %4, label %12, !dbg !3961, !llvm.loop !3967

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3969
  %14 = load i8*, i8** %13, align 8, !dbg !3969, !tbaa !3963
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3971
  br i1 %15, label %17, label %16, !dbg !3972

16:                                               ; preds = %12
  tail call void @free(i8* %14) #13, !dbg !3973
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3975, !tbaa !3976
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3977, !tbaa !3963
  br label %17, !dbg !3978

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3979
  br i1 %18, label %21, label %19, !dbg !3981

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3982
  tail call void @free(i8* %20) #13, !dbg !3984
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3985, !tbaa !1423
  br label %21, !dbg !3986

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3987, !tbaa !1480
  ret void, !dbg !3988
}

; Function Attrs: nounwind
declare !dbg !309 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i8* %1, metadata !3992, metadata !DIExpression()), !dbg !3993
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3994
  ret i8* %3, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %1, metadata !4001, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %2, metadata !4002, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4003, metadata !DIExpression()), !dbg !4015
  %5 = tail call i32* @__errno_location() #24, !dbg !4016
  %6 = load i32, i32* %5, align 4, !dbg !4016, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %6, metadata !4004, metadata !DIExpression()), !dbg !4015
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4017, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !4005, metadata !DIExpression()), !dbg !4015
  %8 = icmp slt i32 %0, 0, !dbg !4018
  br i1 %8, label %9, label %10, !dbg !4020

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !4021
  unreachable, !dbg !4021

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4022, !tbaa !1480
  %12 = icmp sgt i32 %11, %0, !dbg !4023
  br i1 %12, label %34, label %13, !dbg !4024

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %14, metadata !4006, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !4009, metadata !DIExpression()), !dbg !4026
  %15 = icmp eq i32 %0, 2147483647, !dbg !4027
  br i1 %15, label %16, label %17, !dbg !4029

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4030
  unreachable, !dbg !4030

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !4031
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !4031
  %20 = add nuw nsw i32 %0, 1, !dbg !4032
  %21 = sext i32 %20 to i64, !dbg !4033
  %22 = shl nuw nsw i64 %21, 4, !dbg !4034
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !4035
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4035
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !4005, metadata !DIExpression()), !dbg !4015
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4036, !tbaa !1423
  br i1 %14, label %25, label %26, !dbg !4037

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4038, !tbaa.struct !4040
  br label %26, !dbg !4041

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4042, !tbaa !1480
  %28 = sext i32 %27 to i64, !dbg !4043
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4043
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4044
  %31 = sub nsw i32 %20, %27, !dbg !4045
  %32 = sext i32 %31 to i64, !dbg !4046
  %33 = shl nsw i64 %32, 4, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %30, metadata !3445, metadata !DIExpression()) #13, !dbg !4048
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()) #13, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %33, metadata !3452, metadata !DIExpression()) #13, !dbg !4048
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #13, !dbg !4050
  store i32 %20, i32* @nslots, align 4, !dbg !4051, !tbaa !1480
  br label %34, !dbg !4052

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !4015
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !4005, metadata !DIExpression()), !dbg !4015
  %36 = zext i32 %0 to i64, !dbg !4053
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4054
  %38 = load i64, i64* %37, align 8, !dbg !4054, !tbaa !3976
  call void @llvm.dbg.value(metadata i64 %38, metadata !4010, metadata !DIExpression()), !dbg !4055
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4056
  %40 = load i8*, i8** %39, align 8, !dbg !4056, !tbaa !3963
  call void @llvm.dbg.value(metadata i8* %40, metadata !4012, metadata !DIExpression()), !dbg !4055
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4057
  %42 = load i32, i32* %41, align 4, !dbg !4057, !tbaa !3097
  %43 = or i32 %42, 1, !dbg !4058
  call void @llvm.dbg.value(metadata i32 %43, metadata !4013, metadata !DIExpression()), !dbg !4055
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4059
  %45 = load i32, i32* %44, align 8, !dbg !4059, !tbaa !3046
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4060
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4061
  %48 = load i8*, i8** %47, align 8, !dbg !4061, !tbaa !3120
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4062
  %50 = load i8*, i8** %49, align 8, !dbg !4062, !tbaa !3123
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !4063
  call void @llvm.dbg.value(metadata i64 %51, metadata !4014, metadata !DIExpression()), !dbg !4055
  %52 = icmp ugt i64 %38, %51, !dbg !4064
  br i1 %52, label %63, label %53, !dbg !4066

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %54, metadata !4010, metadata !DIExpression()), !dbg !4055
  store i64 %54, i64* %37, align 8, !dbg !4069, !tbaa !3976
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4070
  br i1 %55, label %57, label %56, !dbg !4072

56:                                               ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !4073
  br label %57, !dbg !4073

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3912, metadata !DIExpression()) #13, !dbg !4074
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %58, metadata !4012, metadata !DIExpression()), !dbg !4055
  store i8* %58, i8** %39, align 8, !dbg !4077, !tbaa !3963
  %59 = load i32, i32* %44, align 8, !dbg !4078, !tbaa !3046
  %60 = load i8*, i8** %47, align 8, !dbg !4079, !tbaa !3120
  %61 = load i8*, i8** %49, align 8, !dbg !4080, !tbaa !3123
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !4081
  br label %63, !dbg !4082

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !4055
  call void @llvm.dbg.value(metadata i8* %64, metadata !4012, metadata !DIExpression()), !dbg !4055
  store i32 %6, i32* %5, align 4, !dbg !4083, !tbaa !1480
  ret i8* %64, !dbg !4084
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i8* %1, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %2, metadata !4091, metadata !DIExpression()), !dbg !4092
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4093
  ret i8* %4, !dbg !4094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !4095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !3991, metadata !DIExpression()) #13, !dbg !4099
  call void @llvm.dbg.value(metadata i8* %0, metadata !3992, metadata !DIExpression()) #13, !dbg !4099
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4101
  ret i8* %2, !dbg !4102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 0, metadata !4089, metadata !DIExpression()) #13, !dbg !4110
  call void @llvm.dbg.value(metadata i8* %0, metadata !4090, metadata !DIExpression()) #13, !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()) #13, !dbg !4110
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !4112
  ret i8* %3, !dbg !4113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4114 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 %1, metadata !4117, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i8* %2, metadata !4118, metadata !DIExpression()), !dbg !4120
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4121
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4119, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %1, metadata !4123, metadata !DIExpression()) #13, !dbg !4129
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4128, metadata !DIExpression()) #13, !dbg !4131
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !4131, !alias.scope !4132
  %6 = icmp eq i32 %1, 10, !dbg !4135
  br i1 %6, label %7, label %8, !dbg !4137

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4138, !noalias !4132
  unreachable, !dbg !4138

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4139
  store i32 %1, i32* %9, align 8, !dbg !4140, !tbaa !3046, !alias.scope !4132
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4142
  ret i8* %10, !dbg !4143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4144 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 %1, metadata !4149, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %2, metadata !4150, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i64 %3, metadata !4151, metadata !DIExpression()), !dbg !4153
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4154
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4154
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4152, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %1, metadata !4123, metadata !DIExpression()) #13, !dbg !4156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4128, metadata !DIExpression()) #13, !dbg !4158
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #13, !dbg !4158, !alias.scope !4159
  %7 = icmp eq i32 %1, 10, !dbg !4162
  br i1 %7, label %8, label %9, !dbg !4163

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !4164, !noalias !4159
  unreachable, !dbg !4164

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4165
  store i32 %1, i32* %10, align 8, !dbg !4166, !tbaa !3046, !alias.scope !4159
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4168
  ret i8* %11, !dbg !4169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4170 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4128, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4119, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i8* %1, metadata !4175, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 0, metadata !4116, metadata !DIExpression()) #13, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %0, metadata !4117, metadata !DIExpression()) #13, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %1, metadata !4118, metadata !DIExpression()) #13, !dbg !4181
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4182
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()) #13, !dbg !4183
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #13, !dbg !4176, !alias.scope !4184
  %5 = icmp eq i32 %0, 10, !dbg !4187
  br i1 %5, label %6, label %7, !dbg !4188

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !4189, !noalias !4184
  unreachable, !dbg !4189

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4190
  store i32 %0, i32* %8, align 8, !dbg !4191, !tbaa !3046, !alias.scope !4184
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4193
  ret i8* %9, !dbg !4194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4195 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4128, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4152, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %0, metadata !4199, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i8* %1, metadata !4200, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %2, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4148, metadata !DIExpression()) #13, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %0, metadata !4149, metadata !DIExpression()) #13, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %1, metadata !4150, metadata !DIExpression()) #13, !dbg !4207
  call void @llvm.dbg.value(metadata i64 %2, metadata !4151, metadata !DIExpression()) #13, !dbg !4207
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4208
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()) #13, !dbg !4209
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !4202, !alias.scope !4210
  %6 = icmp eq i32 %0, 10, !dbg !4213
  br i1 %6, label %7, label %8, !dbg !4214

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4215, !noalias !4210
  unreachable, !dbg !4215

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4216
  store i32 %0, i32* %9, align 8, !dbg !4217, !tbaa !3046, !alias.scope !4210
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #13, !dbg !4218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4219
  ret i8* %10, !dbg !4220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !4221 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4225, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %1, metadata !4226, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i8 %2, metadata !4227, metadata !DIExpression()), !dbg !4229
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4228, metadata !DIExpression()), !dbg !4231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4232, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3064, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8 %2, metadata !3065, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i32 1, metadata !3066, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8 %2, metadata !3067, metadata !DIExpression()), !dbg !4234
  %6 = lshr i8 %2, 5, !dbg !4236
  %7 = zext i8 %6 to i64, !dbg !4236
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4237
  call void @llvm.dbg.value(metadata i32* %8, metadata !3068, metadata !DIExpression()), !dbg !4234
  %9 = and i8 %2, 31, !dbg !4238
  %10 = zext i8 %9 to i32, !dbg !4238
  call void @llvm.dbg.value(metadata i32 %10, metadata !3070, metadata !DIExpression()), !dbg !4234
  %11 = load i32, i32* %8, align 4, !dbg !4239, !tbaa !1480
  %12 = lshr i32 %11, %10, !dbg !4240
  %13 = and i32 %12, 1, !dbg !4241
  call void @llvm.dbg.value(metadata i32 %13, metadata !3071, metadata !DIExpression()), !dbg !4234
  %14 = xor i32 %13, 1, !dbg !4242
  %15 = shl i32 %14, %10, !dbg !4243
  %16 = xor i32 %15, %11, !dbg !4244
  store i32 %16, i32* %8, align 4, !dbg !4244, !tbaa !1480
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4246
  ret i8* %17, !dbg !4247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !4248 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4228, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i8* %0, metadata !4252, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i8 %1, metadata !4253, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i8* %0, metadata !4225, metadata !DIExpression()) #13, !dbg !4257
  call void @llvm.dbg.value(metadata i64 -1, metadata !4226, metadata !DIExpression()) #13, !dbg !4257
  call void @llvm.dbg.value(metadata i8 %1, metadata !4227, metadata !DIExpression()) #13, !dbg !4257
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4258
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4259, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3064, metadata !DIExpression()) #13, !dbg !4260
  call void @llvm.dbg.value(metadata i8 %1, metadata !3065, metadata !DIExpression()) #13, !dbg !4260
  call void @llvm.dbg.value(metadata i32 1, metadata !3066, metadata !DIExpression()) #13, !dbg !4260
  call void @llvm.dbg.value(metadata i8 %1, metadata !3067, metadata !DIExpression()) #13, !dbg !4260
  %5 = lshr i8 %1, 5, !dbg !4262
  %6 = zext i8 %5 to i64, !dbg !4262
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4263
  call void @llvm.dbg.value(metadata i32* %7, metadata !3068, metadata !DIExpression()) #13, !dbg !4260
  %8 = and i8 %1, 31, !dbg !4264
  %9 = zext i8 %8 to i32, !dbg !4264
  call void @llvm.dbg.value(metadata i32 %9, metadata !3070, metadata !DIExpression()) #13, !dbg !4260
  %10 = load i32, i32* %7, align 4, !dbg !4265, !tbaa !1480
  %11 = lshr i32 %10, %9, !dbg !4266
  %12 = and i32 %11, 1, !dbg !4267
  call void @llvm.dbg.value(metadata i32 %12, metadata !3071, metadata !DIExpression()) #13, !dbg !4260
  %13 = xor i32 %12, 1, !dbg !4268
  %14 = shl i32 %13, %9, !dbg !4269
  %15 = xor i32 %14, %10, !dbg !4270
  store i32 %15, i32* %7, align 4, !dbg !4270, !tbaa !1480
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !4271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4272
  ret i8* %16, !dbg !4273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !4274 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !4228, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i8* %0, metadata !4276, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %0, metadata !4252, metadata !DIExpression()) #13, !dbg !4281
  call void @llvm.dbg.value(metadata i8 58, metadata !4253, metadata !DIExpression()) #13, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %0, metadata !4225, metadata !DIExpression()) #13, !dbg !4282
  call void @llvm.dbg.value(metadata i64 -1, metadata !4226, metadata !DIExpression()) #13, !dbg !4282
  call void @llvm.dbg.value(metadata i8 58, metadata !4227, metadata !DIExpression()) #13, !dbg !4282
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4284, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3064, metadata !DIExpression()) #13, !dbg !4285
  call void @llvm.dbg.value(metadata i8 58, metadata !3065, metadata !DIExpression()) #13, !dbg !4285
  call void @llvm.dbg.value(metadata i32 1, metadata !3066, metadata !DIExpression()) #13, !dbg !4285
  call void @llvm.dbg.value(metadata i8 58, metadata !3067, metadata !DIExpression()) #13, !dbg !4285
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4287
  call void @llvm.dbg.value(metadata i32* %4, metadata !3068, metadata !DIExpression()) #13, !dbg !4285
  call void @llvm.dbg.value(metadata i32 26, metadata !3070, metadata !DIExpression()) #13, !dbg !4285
  %5 = load i32, i32* %4, align 4, !dbg !4288, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %5, metadata !3071, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !4285
  %6 = or i32 %5, 67108864, !dbg !4289
  store i32 %6, i32* %4, align 4, !dbg !4289, !tbaa !1480
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !4290
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !4291
  ret i8* %7, !dbg !4292
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4293 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4228, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i8* %0, metadata !4295, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i8* %0, metadata !4225, metadata !DIExpression()) #13, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4226, metadata !DIExpression()) #13, !dbg !4300
  call void @llvm.dbg.value(metadata i8 58, metadata !4227, metadata !DIExpression()) #13, !dbg !4300
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4302, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3064, metadata !DIExpression()) #13, !dbg !4303
  call void @llvm.dbg.value(metadata i8 58, metadata !3065, metadata !DIExpression()) #13, !dbg !4303
  call void @llvm.dbg.value(metadata i32 1, metadata !3066, metadata !DIExpression()) #13, !dbg !4303
  call void @llvm.dbg.value(metadata i8 58, metadata !3067, metadata !DIExpression()) #13, !dbg !4303
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4305
  call void @llvm.dbg.value(metadata i32* %5, metadata !3068, metadata !DIExpression()) #13, !dbg !4303
  call void @llvm.dbg.value(metadata i32 26, metadata !3070, metadata !DIExpression()) #13, !dbg !4303
  %6 = load i32, i32* %5, align 4, !dbg !4306, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %6, metadata !3071, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !4303
  %7 = or i32 %6, 67108864, !dbg !4307
  store i32 %7, i32* %5, align 4, !dbg !4307, !tbaa !1480
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !4308
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !4309
  ret i8* %8, !dbg !4310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4311 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4128, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4317
  call void @llvm.dbg.value(metadata i32 %0, metadata !4313, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i32 %1, metadata !4314, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i8* %2, metadata !4315, metadata !DIExpression()), !dbg !4319
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4316, metadata !DIExpression()), !dbg !4321
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4322
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4322
  call void @llvm.dbg.value(metadata i32 %1, metadata !4123, metadata !DIExpression()) #13, !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4323
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !4317, !alias.scope !4324
  %8 = icmp eq i32 %1, 10, !dbg !4327
  br i1 %8, label %9, label %10, !dbg !4328

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4329, !noalias !4324
  unreachable, !dbg !4329

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4323
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4322
  store i32 %1, i32* %11, align 8, !dbg !4322, !tbaa.struct !4233
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4322
  %13 = bitcast i32* %12 to i8*, !dbg !4322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !4322, !tbaa.struct !4233
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4322
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3064, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8 58, metadata !3065, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 1, metadata !3066, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8 58, metadata !3067, metadata !DIExpression()), !dbg !4330
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4332
  call void @llvm.dbg.value(metadata i32* %14, metadata !3068, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 26, metadata !3070, metadata !DIExpression()), !dbg !4330
  %15 = load i32, i32* %14, align 4, !dbg !4333, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %15, metadata !3071, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !4330
  %16 = or i32 %15, 67108864, !dbg !4334
  store i32 %16, i32* %14, align 4, !dbg !4334, !tbaa !1480
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4335
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4336
  ret i8* %17, !dbg !4337
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !4338 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4346, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i32 %0, metadata !4342, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i8* %1, metadata !4343, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i8* %2, metadata !4344, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i8* %3, metadata !4345, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 %0, metadata !4351, metadata !DIExpression()) #13, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %1, metadata !4352, metadata !DIExpression()) #13, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %2, metadata !4353, metadata !DIExpression()) #13, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %3, metadata !4354, metadata !DIExpression()) #13, !dbg !4359
  call void @llvm.dbg.value(metadata i64 -1, metadata !4355, metadata !DIExpression()) #13, !dbg !4359
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4360
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4361, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3104, metadata !DIExpression()) #13, !dbg !4362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()) #13, !dbg !4362
  call void @llvm.dbg.value(metadata i8* %2, metadata !3106, metadata !DIExpression()) #13, !dbg !4362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3104, metadata !DIExpression()) #13, !dbg !4362
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4364
  store i32 10, i32* %7, align 8, !dbg !4365, !tbaa !3046
  %8 = icmp ne i8* %1, null, !dbg !4366
  %9 = icmp ne i8* %2, null, !dbg !4367
  %10 = and i1 %8, %9, !dbg !4368
  br i1 %10, label %12, label %11, !dbg !4368

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4369
  unreachable, !dbg !4369

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4370
  store i8* %1, i8** %13, align 8, !dbg !4371, !tbaa !3120
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4372
  store i8* %2, i8** %14, align 8, !dbg !4373, !tbaa !3123
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !4374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4375
  ret i8* %15, !dbg !4376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4347 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4351, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i8* %1, metadata !4352, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i8* %2, metadata !4353, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i8* %3, metadata !4354, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %4, metadata !4355, metadata !DIExpression()), !dbg !4377
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4378
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4378
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4346, metadata !DIExpression()), !dbg !4379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4380, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3104, metadata !DIExpression()) #13, !dbg !4381
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()) #13, !dbg !4381
  call void @llvm.dbg.value(metadata i8* %2, metadata !3106, metadata !DIExpression()) #13, !dbg !4381
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3104, metadata !DIExpression()) #13, !dbg !4381
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4383
  store i32 10, i32* %8, align 8, !dbg !4384, !tbaa !3046
  %9 = icmp ne i8* %1, null, !dbg !4385
  %10 = icmp ne i8* %2, null, !dbg !4386
  %11 = and i1 %9, %10, !dbg !4387
  br i1 %11, label %13, label %12, !dbg !4387

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !4388
  unreachable, !dbg !4388

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4389
  store i8* %1, i8** %14, align 8, !dbg !4390, !tbaa !3120
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4391
  store i8* %2, i8** %15, align 8, !dbg !4392, !tbaa !3123
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4393
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !4394
  ret i8* %16, !dbg !4395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4396 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4346, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i8* %0, metadata !4400, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i8* %1, metadata !4401, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i8* %2, metadata !4402, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 0, metadata !4342, metadata !DIExpression()) #13, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %0, metadata !4343, metadata !DIExpression()) #13, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %1, metadata !4344, metadata !DIExpression()) #13, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %2, metadata !4345, metadata !DIExpression()) #13, !dbg !4407
  call void @llvm.dbg.value(metadata i32 0, metadata !4351, metadata !DIExpression()) #13, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %0, metadata !4352, metadata !DIExpression()) #13, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %1, metadata !4353, metadata !DIExpression()) #13, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %2, metadata !4354, metadata !DIExpression()) #13, !dbg !4408
  call void @llvm.dbg.value(metadata i64 -1, metadata !4355, metadata !DIExpression()) #13, !dbg !4408
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4410, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression()) #13, !dbg !4411
  call void @llvm.dbg.value(metadata i8* %0, metadata !3105, metadata !DIExpression()) #13, !dbg !4411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()) #13, !dbg !4411
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3104, metadata !DIExpression()) #13, !dbg !4411
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4413
  store i32 10, i32* %6, align 8, !dbg !4414, !tbaa !3046
  %7 = icmp ne i8* %0, null, !dbg !4415
  %8 = icmp ne i8* %1, null, !dbg !4416
  %9 = and i1 %7, %8, !dbg !4417
  br i1 %9, label %11, label %10, !dbg !4417

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !4418
  unreachable, !dbg !4418

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4419
  store i8* %0, i8** %12, align 8, !dbg !4420, !tbaa !3120
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4421
  store i8* %1, i8** %13, align 8, !dbg !4422, !tbaa !3123
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !4423
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !4424
  ret i8* %14, !dbg !4425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4426 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4346, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i8* %0, metadata !4430, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i8* %1, metadata !4431, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i8* %2, metadata !4432, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 %3, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i32 0, metadata !4351, metadata !DIExpression()) #13, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %0, metadata !4352, metadata !DIExpression()) #13, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %1, metadata !4353, metadata !DIExpression()) #13, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %2, metadata !4354, metadata !DIExpression()) #13, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %3, metadata !4355, metadata !DIExpression()) #13, !dbg !4437
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !4439, !tbaa.struct !4233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3104, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %0, metadata !3105, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()) #13, !dbg !4440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3104, metadata !DIExpression()) #13, !dbg !4440
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4442
  store i32 10, i32* %7, align 8, !dbg !4443, !tbaa !3046
  %8 = icmp ne i8* %0, null, !dbg !4444
  %9 = icmp ne i8* %1, null, !dbg !4445
  %10 = and i1 %8, %9, !dbg !4446
  br i1 %10, label %12, label %11, !dbg !4446

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4447
  unreachable, !dbg !4447

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4448
  store i8* %0, i8** %13, align 8, !dbg !4449, !tbaa !3120
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4450
  store i8* %1, i8** %14, align 8, !dbg !4451, !tbaa !3123
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4453
  ret i8* %15, !dbg !4454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4455 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i8* %1, metadata !4460, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %2, metadata !4461, metadata !DIExpression()), !dbg !4462
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4463
  ret i8* %4, !dbg !4464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4469, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %1, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 0, metadata !4459, metadata !DIExpression()) #13, !dbg !4472
  call void @llvm.dbg.value(metadata i8* %0, metadata !4460, metadata !DIExpression()) #13, !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()) #13, !dbg !4472
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4474
  ret i8* %3, !dbg !4475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i8* %1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()) #13, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %1, metadata !4460, metadata !DIExpression()) #13, !dbg !4483
  call void @llvm.dbg.value(metadata i64 -1, metadata !4461, metadata !DIExpression()) #13, !dbg !4483
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4485
  ret i8* %3, !dbg !4486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 0, metadata !4480, metadata !DIExpression()) #13, !dbg !4491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4481, metadata !DIExpression()) #13, !dbg !4491
  call void @llvm.dbg.value(metadata i32 0, metadata !4459, metadata !DIExpression()) #13, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %0, metadata !4460, metadata !DIExpression()) #13, !dbg !4493
  call void @llvm.dbg.value(metadata i64 -1, metadata !4461, metadata !DIExpression()) #13, !dbg !4493
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4495
  ret i8* %2, !dbg !4496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4497 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4504, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i8* %1, metadata !4505, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i8* %2, metadata !4506, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i8* %3, metadata !4507, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i8** %4, metadata !4508, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %5, metadata !4509, metadata !DIExpression()), !dbg !4510
  %7 = icmp eq i8* %1, null, !dbg !4511
  br i1 %7, label %10, label %8, !dbg !4513

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !4514
  br label %12, !dbg !4514

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !4515
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #13, !dbg !4516
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #13, !dbg !4516
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4517
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #13, !dbg !4518
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #13, !dbg !4518
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4519
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
  ], !dbg !4520

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #13, !dbg !4521
  %21 = load i8*, i8** %4, align 8, !dbg !4521, !tbaa !1423
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #13, !dbg !4521
  br label %147, !dbg !4523

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #13, !dbg !4524
  %25 = load i8*, i8** %4, align 8, !dbg !4524, !tbaa !1423
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4524
  %27 = load i8*, i8** %26, align 8, !dbg !4524, !tbaa !1423
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #13, !dbg !4524
  br label %147, !dbg !4525

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #13, !dbg !4526
  %31 = load i8*, i8** %4, align 8, !dbg !4526, !tbaa !1423
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4526
  %33 = load i8*, i8** %32, align 8, !dbg !4526, !tbaa !1423
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4526
  %35 = load i8*, i8** %34, align 8, !dbg !4526, !tbaa !1423
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #13, !dbg !4526
  br label %147, !dbg !4527

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #13, !dbg !4528
  %39 = load i8*, i8** %4, align 8, !dbg !4528, !tbaa !1423
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4528
  %41 = load i8*, i8** %40, align 8, !dbg !4528, !tbaa !1423
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4528
  %43 = load i8*, i8** %42, align 8, !dbg !4528, !tbaa !1423
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4528
  %45 = load i8*, i8** %44, align 8, !dbg !4528, !tbaa !1423
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #13, !dbg !4528
  br label %147, !dbg !4529

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #13, !dbg !4530
  %49 = load i8*, i8** %4, align 8, !dbg !4530, !tbaa !1423
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4530
  %51 = load i8*, i8** %50, align 8, !dbg !4530, !tbaa !1423
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4530
  %53 = load i8*, i8** %52, align 8, !dbg !4530, !tbaa !1423
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4530
  %55 = load i8*, i8** %54, align 8, !dbg !4530, !tbaa !1423
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4530
  %57 = load i8*, i8** %56, align 8, !dbg !4530, !tbaa !1423
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #13, !dbg !4530
  br label %147, !dbg !4531

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #13, !dbg !4532
  %61 = load i8*, i8** %4, align 8, !dbg !4532, !tbaa !1423
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4532
  %63 = load i8*, i8** %62, align 8, !dbg !4532, !tbaa !1423
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4532
  %65 = load i8*, i8** %64, align 8, !dbg !4532, !tbaa !1423
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4532
  %67 = load i8*, i8** %66, align 8, !dbg !4532, !tbaa !1423
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4532
  %69 = load i8*, i8** %68, align 8, !dbg !4532, !tbaa !1423
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4532
  %71 = load i8*, i8** %70, align 8, !dbg !4532, !tbaa !1423
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #13, !dbg !4532
  br label %147, !dbg !4533

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #13, !dbg !4534
  %75 = load i8*, i8** %4, align 8, !dbg !4534, !tbaa !1423
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4534
  %77 = load i8*, i8** %76, align 8, !dbg !4534, !tbaa !1423
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4534
  %79 = load i8*, i8** %78, align 8, !dbg !4534, !tbaa !1423
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4534
  %81 = load i8*, i8** %80, align 8, !dbg !4534, !tbaa !1423
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4534
  %83 = load i8*, i8** %82, align 8, !dbg !4534, !tbaa !1423
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4534
  %85 = load i8*, i8** %84, align 8, !dbg !4534, !tbaa !1423
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4534
  %87 = load i8*, i8** %86, align 8, !dbg !4534, !tbaa !1423
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #13, !dbg !4534
  br label %147, !dbg !4535

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #13, !dbg !4536
  %91 = load i8*, i8** %4, align 8, !dbg !4536, !tbaa !1423
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4536
  %93 = load i8*, i8** %92, align 8, !dbg !4536, !tbaa !1423
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4536
  %95 = load i8*, i8** %94, align 8, !dbg !4536, !tbaa !1423
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4536
  %97 = load i8*, i8** %96, align 8, !dbg !4536, !tbaa !1423
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4536
  %99 = load i8*, i8** %98, align 8, !dbg !4536, !tbaa !1423
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4536
  %101 = load i8*, i8** %100, align 8, !dbg !4536, !tbaa !1423
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4536
  %103 = load i8*, i8** %102, align 8, !dbg !4536, !tbaa !1423
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4536
  %105 = load i8*, i8** %104, align 8, !dbg !4536, !tbaa !1423
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #13, !dbg !4536
  br label %147, !dbg !4537

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #13, !dbg !4538
  %109 = load i8*, i8** %4, align 8, !dbg !4538, !tbaa !1423
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4538
  %111 = load i8*, i8** %110, align 8, !dbg !4538, !tbaa !1423
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4538
  %113 = load i8*, i8** %112, align 8, !dbg !4538, !tbaa !1423
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4538
  %115 = load i8*, i8** %114, align 8, !dbg !4538, !tbaa !1423
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4538
  %117 = load i8*, i8** %116, align 8, !dbg !4538, !tbaa !1423
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4538
  %119 = load i8*, i8** %118, align 8, !dbg !4538, !tbaa !1423
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4538
  %121 = load i8*, i8** %120, align 8, !dbg !4538, !tbaa !1423
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4538
  %123 = load i8*, i8** %122, align 8, !dbg !4538, !tbaa !1423
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4538
  %125 = load i8*, i8** %124, align 8, !dbg !4538, !tbaa !1423
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #13, !dbg !4538
  br label %147, !dbg !4539

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #13, !dbg !4540
  %129 = load i8*, i8** %4, align 8, !dbg !4540, !tbaa !1423
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4540
  %131 = load i8*, i8** %130, align 8, !dbg !4540, !tbaa !1423
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4540
  %133 = load i8*, i8** %132, align 8, !dbg !4540, !tbaa !1423
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4540
  %135 = load i8*, i8** %134, align 8, !dbg !4540, !tbaa !1423
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4540
  %137 = load i8*, i8** %136, align 8, !dbg !4540, !tbaa !1423
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4540
  %139 = load i8*, i8** %138, align 8, !dbg !4540, !tbaa !1423
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4540
  %141 = load i8*, i8** %140, align 8, !dbg !4540, !tbaa !1423
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4540
  %143 = load i8*, i8** %142, align 8, !dbg !4540, !tbaa !1423
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4540
  %145 = load i8*, i8** %144, align 8, !dbg !4540, !tbaa !1423
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #13, !dbg !4540
  br label %147, !dbg !4541

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4543 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4547, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i8* %1, metadata !4548, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i8* %2, metadata !4549, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i8* %3, metadata !4550, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i8** %4, metadata !4551, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 0, metadata !4552, metadata !DIExpression()), !dbg !4553
  br label %6, !dbg !4554

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4556
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4557
  %9 = load i8*, i8** %8, align 8, !dbg !4557, !tbaa !1423
  %10 = icmp eq i8* %9, null, !dbg !4559
  %11 = add i64 %7, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 %11, metadata !4552, metadata !DIExpression()), !dbg !4553
  br i1 %10, label %12, label %6, !dbg !4559, !llvm.loop !4561

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %7, metadata !4552, metadata !DIExpression()), !dbg !4553
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4563
  ret void, !dbg !4564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4565 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4576, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i8* %1, metadata !4577, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i8* %2, metadata !4578, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i8* %3, metadata !4579, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4580, metadata !DIExpression()), !dbg !4584
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4585
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4585
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4582, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 0, metadata !4581, metadata !DIExpression()), !dbg !4584
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4587
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4587
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4587
  %11 = load i32, i32* %8, align 8, !dbg !4590
  %12 = icmp ult i32 %11, 41, !dbg !4590
  br i1 %12, label %13, label %18, !dbg !4590

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4590
  %15 = zext i32 %11 to i64, !dbg !4590
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4590
  %17 = add nuw nsw i32 %11, 8, !dbg !4590
  store i32 %17, i32* %8, align 8, !dbg !4590
  br label %21, !dbg !4590

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4590
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4590
  store i8* %20, i8** %9, align 8, !dbg !4590
  br label %21, !dbg !4590

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4590
  %25 = load i8*, i8** %24, align 8, !dbg !4590
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4591
  store i8* %25, i8** %26, align 16, !dbg !4592, !tbaa !1423
  %27 = icmp eq i8* %25, null, !dbg !4593
  br i1 %27, label %30, label %28, !dbg !4594

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4581, metadata !DIExpression()), !dbg !4584
  %29 = icmp ult i32 %22, 41, !dbg !4590
  br i1 %29, label %35, label %32, !dbg !4590

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4595
  call void @llvm.dbg.value(metadata i64 %31, metadata !4581, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %31, metadata !4581, metadata !DIExpression()), !dbg !4584
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4596
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4597
  ret void, !dbg !4597

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4590
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4590
  store i8* %34, i8** %9, align 8, !dbg !4590
  br label %40, !dbg !4590

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4590
  %37 = zext i32 %22 to i64, !dbg !4590
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4590
  %39 = add nuw nsw i32 %22, 8, !dbg !4590
  store i32 %39, i32* %8, align 8, !dbg !4590
  br label %40, !dbg !4590

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4590
  %44 = load i8*, i8** %43, align 8, !dbg !4590
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4591
  store i8* %44, i8** %45, align 8, !dbg !4592, !tbaa !1423
  %46 = icmp eq i8* %44, null, !dbg !4593
  br i1 %46, label %30, label %47, !dbg !4594

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4581, metadata !DIExpression()), !dbg !4584
  %48 = icmp ult i32 %41, 41, !dbg !4590
  br i1 %48, label %52, label %49, !dbg !4590

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4590
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4590
  store i8* %51, i8** %9, align 8, !dbg !4590
  br label %57, !dbg !4590

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4590
  %54 = zext i32 %41 to i64, !dbg !4590
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4590
  %56 = add nuw nsw i32 %41, 8, !dbg !4590
  store i32 %56, i32* %8, align 8, !dbg !4590
  br label %57, !dbg !4590

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4590
  %61 = load i8*, i8** %60, align 8, !dbg !4590
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4591
  store i8* %61, i8** %62, align 16, !dbg !4592, !tbaa !1423
  %63 = icmp eq i8* %61, null, !dbg !4593
  br i1 %63, label %30, label %64, !dbg !4594

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4581, metadata !DIExpression()), !dbg !4584
  %65 = icmp ult i32 %58, 41, !dbg !4590
  br i1 %65, label %69, label %66, !dbg !4590

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4590
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4590
  store i8* %68, i8** %9, align 8, !dbg !4590
  br label %74, !dbg !4590

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4590
  %71 = zext i32 %58 to i64, !dbg !4590
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4590
  %73 = add nuw nsw i32 %58, 8, !dbg !4590
  store i32 %73, i32* %8, align 8, !dbg !4590
  br label %74, !dbg !4590

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4590
  %78 = load i8*, i8** %77, align 8, !dbg !4590
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4591
  store i8* %78, i8** %79, align 8, !dbg !4592, !tbaa !1423
  %80 = icmp eq i8* %78, null, !dbg !4593
  br i1 %80, label %30, label %81, !dbg !4594

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4581, metadata !DIExpression()), !dbg !4584
  %82 = icmp ult i32 %75, 41, !dbg !4590
  br i1 %82, label %86, label %83, !dbg !4590

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4590
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4590
  store i8* %85, i8** %9, align 8, !dbg !4590
  br label %91, !dbg !4590

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4590
  %88 = zext i32 %75 to i64, !dbg !4590
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4590
  %90 = add nuw nsw i32 %75, 8, !dbg !4590
  store i32 %90, i32* %8, align 8, !dbg !4590
  br label %91, !dbg !4590

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4590
  %95 = load i8*, i8** %94, align 8, !dbg !4590
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4591
  store i8* %95, i8** %96, align 16, !dbg !4592, !tbaa !1423
  %97 = icmp eq i8* %95, null, !dbg !4593
  br i1 %97, label %30, label %98, !dbg !4594

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4581, metadata !DIExpression()), !dbg !4584
  %99 = icmp ult i32 %92, 41, !dbg !4590
  br i1 %99, label %103, label %100, !dbg !4590

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4590
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4590
  store i8* %102, i8** %9, align 8, !dbg !4590
  br label %108, !dbg !4590

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4590
  %105 = zext i32 %92 to i64, !dbg !4590
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4590
  %107 = add nuw nsw i32 %92, 8, !dbg !4590
  store i32 %107, i32* %8, align 8, !dbg !4590
  br label %108, !dbg !4590

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4590
  %111 = load i8*, i8** %110, align 8, !dbg !4590
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4591
  store i8* %111, i8** %112, align 8, !dbg !4592, !tbaa !1423
  %113 = icmp eq i8* %111, null, !dbg !4593
  br i1 %113, label %30, label %114, !dbg !4594

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4581, metadata !DIExpression()), !dbg !4584
  %115 = load i8*, i8** %9, align 8, !dbg !4590
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4590
  store i8* %116, i8** %9, align 8, !dbg !4590
  %117 = bitcast i8* %115 to i8**, !dbg !4590
  %118 = load i8*, i8** %117, align 8, !dbg !4590
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4591
  store i8* %118, i8** %119, align 16, !dbg !4592, !tbaa !1423
  %120 = icmp eq i8* %118, null, !dbg !4593
  br i1 %120, label %30, label %121, !dbg !4594

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4581, metadata !DIExpression()), !dbg !4584
  %122 = load i8*, i8** %9, align 8, !dbg !4590
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4590
  store i8* %123, i8** %9, align 8, !dbg !4590
  %124 = bitcast i8* %122 to i8**, !dbg !4590
  %125 = load i8*, i8** %124, align 8, !dbg !4590
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4591
  store i8* %125, i8** %126, align 8, !dbg !4592, !tbaa !1423
  %127 = icmp eq i8* %125, null, !dbg !4593
  br i1 %127, label %30, label %128, !dbg !4594

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4581, metadata !DIExpression()), !dbg !4584
  %129 = load i8*, i8** %9, align 8, !dbg !4590
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4590
  store i8* %130, i8** %9, align 8, !dbg !4590
  %131 = bitcast i8* %129 to i8**, !dbg !4590
  %132 = load i8*, i8** %131, align 8, !dbg !4590
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4591
  store i8* %132, i8** %133, align 16, !dbg !4592, !tbaa !1423
  %134 = icmp eq i8* %132, null, !dbg !4593
  br i1 %134, label %30, label %135, !dbg !4594

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4581, metadata !DIExpression()), !dbg !4584
  %136 = load i8*, i8** %9, align 8, !dbg !4590
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4590
  store i8* %137, i8** %9, align 8, !dbg !4590
  %138 = bitcast i8* %136 to i8**, !dbg !4590
  %139 = load i8*, i8** %138, align 8, !dbg !4590
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4591
  store i8* %139, i8** %140, align 8, !dbg !4592, !tbaa !1423
  %141 = icmp eq i8* %139, null, !dbg !4593
  %142 = select i1 %141, i64 9, i64 10, !dbg !4594
  br label %30, !dbg !4594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4598 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4602, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i8* %1, metadata !4603, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i8* %2, metadata !4604, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i8* %3, metadata !4605, metadata !DIExpression()), !dbg !4611
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4612
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4612
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4606, metadata !DIExpression()), !dbg !4613
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4614
  call void @llvm.va_start(i8* nonnull %6), !dbg !4614
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4615
  call void @llvm.va_end(i8* nonnull %6), !dbg !4616
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4617
  ret void, !dbg !4617
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4618 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4619, !tbaa !1423
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4619
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #13, !dbg !4620
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #13, !dbg !4620
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #13, !dbg !4621
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #13, !dbg !4621
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #13, !dbg !4622
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #13, !dbg !4622
  ret void, !dbg !4623
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #18 !dbg !4624 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4628, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %1, metadata !4629, metadata !DIExpression()), !dbg !4630
  %3 = udiv i64 9223372036854775807, %1, !dbg !4631
  %4 = icmp ult i64 %3, %0, !dbg !4631
  br i1 %4, label %5, label %6, !dbg !4633

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4634
  unreachable, !dbg !4634

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4635
  call void @llvm.dbg.value(metadata i64 %7, metadata !4636, metadata !DIExpression()) #13, !dbg !4642
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !4644
  call void @llvm.dbg.value(metadata i8* %8, metadata !4641, metadata !DIExpression()) #13, !dbg !4642
  %9 = icmp eq i8* %8, null, !dbg !4645
  %10 = icmp ne i64 %7, 0, !dbg !4647
  %11 = and i1 %10, %9, !dbg !4648
  br i1 %11, label %12, label %13, !dbg !4648

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !4649
  unreachable, !dbg !4649

13:                                               ; preds = %6
  ret i8* %8, !dbg !4650
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4636, metadata !DIExpression()), !dbg !4651
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4652
  call void @llvm.dbg.value(metadata i8* %2, metadata !4641, metadata !DIExpression()), !dbg !4651
  %3 = icmp eq i8* %2, null, !dbg !4653
  %4 = icmp ne i64 %0, 0, !dbg !4654
  %5 = and i1 %4, %3, !dbg !4655
  br i1 %5, label %6, label %7, !dbg !4655

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4656
  unreachable, !dbg !4656

7:                                                ; preds = %1
  ret i8* %2, !dbg !4657
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #18 !dbg !4658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4662, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i64 %2, metadata !4664, metadata !DIExpression()), !dbg !4665
  %4 = udiv i64 9223372036854775807, %2, !dbg !4666
  %5 = icmp ult i64 %4, %1, !dbg !4666
  br i1 %5, label %6, label %7, !dbg !4668

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !4669
  unreachable, !dbg !4669

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4670
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()) #13, !dbg !4677
  call void @llvm.dbg.value(metadata i64 %8, metadata !4676, metadata !DIExpression()) #13, !dbg !4677
  %9 = icmp eq i64 %8, 0, !dbg !4679
  %10 = icmp ne i8* %0, null, !dbg !4681
  %11 = and i1 %10, %9, !dbg !4682
  br i1 %11, label %12, label %13, !dbg !4682

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !4683
  br label %19, !dbg !4685

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !4686
  call void @llvm.dbg.value(metadata i8* %14, metadata !4671, metadata !DIExpression()) #13, !dbg !4677
  %15 = icmp eq i8* %14, null, !dbg !4687
  %16 = icmp ne i64 %8, 0, !dbg !4689
  %17 = and i1 %16, %15, !dbg !4690
  br i1 %17, label %18, label %19, !dbg !4690

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4691
  unreachable, !dbg !4691

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4677
  ret i8* %20, !dbg !4692
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i64 %1, metadata !4676, metadata !DIExpression()), !dbg !4693
  %3 = icmp eq i64 %1, 0, !dbg !4694
  %4 = icmp ne i8* %0, null, !dbg !4695
  %5 = and i1 %4, %3, !dbg !4696
  br i1 %5, label %6, label %7, !dbg !4696

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !4697
  br label %13, !dbg !4698

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !4699
  call void @llvm.dbg.value(metadata i8* %8, metadata !4671, metadata !DIExpression()), !dbg !4693
  %9 = icmp eq i8* %8, null, !dbg !4700
  %10 = icmp ne i64 %1, 0, !dbg !4701
  %11 = and i1 %10, %9, !dbg !4702
  br i1 %11, label %12, label %13, !dbg !4702

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4703
  unreachable, !dbg !4703

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4693
  ret i8* %14, !dbg !4704
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #18 !dbg !688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !693, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64* %1, metadata !694, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %2, metadata !695, metadata !DIExpression()), !dbg !4705
  %4 = load i64, i64* %1, align 8, !dbg !4706, !tbaa !1555
  call void @llvm.dbg.value(metadata i64 %4, metadata !696, metadata !DIExpression()), !dbg !4705
  %5 = icmp eq i8* %0, null, !dbg !4707
  br i1 %5, label %6, label %20, !dbg !4709

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4710
  br i1 %7, label %8, label %13, !dbg !4713

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4714
  call void @llvm.dbg.value(metadata i64 %9, metadata !696, metadata !DIExpression()), !dbg !4705
  %10 = icmp ugt i64 %2, 128, !dbg !4716
  %11 = zext i1 %10 to i64, !dbg !4716
  %12 = add nuw nsw i64 %9, %11, !dbg !4717
  call void @llvm.dbg.value(metadata i64 %12, metadata !696, metadata !DIExpression()), !dbg !4705
  br label %13, !dbg !4718

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4705
  call void @llvm.dbg.value(metadata i64 %14, metadata !696, metadata !DIExpression()), !dbg !4705
  %15 = udiv i64 9223372036854775807, %2, !dbg !4719
  %16 = icmp ult i64 %15, %14, !dbg !4719
  br i1 %16, label %19, label %17, !dbg !4721

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4705
  store i64 %14, i64* %1, align 8, !dbg !4722, !tbaa !1555
  %18 = mul i64 %14, %2, !dbg !4723
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()) #13, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %28, metadata !4676, metadata !DIExpression()) #13, !dbg !4724
  br label %31, !dbg !4726

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4727
  unreachable, !dbg !4727

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4728
  %22 = icmp ugt i64 %21, %4, !dbg !4731
  br i1 %22, label %24, label %23, !dbg !4732

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !4733
  unreachable, !dbg !4733

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4734
  %26 = add nuw i64 %4, 1, !dbg !4735
  %27 = add i64 %26, %25, !dbg !4736
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4705
  store i64 %27, i64* %1, align 8, !dbg !4722, !tbaa !1555
  %28 = mul i64 %27, %2, !dbg !4723
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()) #13, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %28, metadata !4676, metadata !DIExpression()) #13, !dbg !4724
  %29 = icmp eq i64 %28, 0, !dbg !4737
  br i1 %29, label %30, label %31, !dbg !4726

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #13, !dbg !4738
  br label %38, !dbg !4739

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #13, !dbg !4740
  call void @llvm.dbg.value(metadata i8* %33, metadata !4671, metadata !DIExpression()) #13, !dbg !4724
  %34 = icmp eq i8* %33, null, !dbg !4741
  %35 = icmp ne i64 %32, 0, !dbg !4742
  %36 = and i1 %35, %34, !dbg !4743
  br i1 %36, label %37, label %38, !dbg !4743

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !4744
  unreachable, !dbg !4744

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4724
  ret i8* %39, !dbg !4745
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #18 !dbg !4746 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %0, metadata !4636, metadata !DIExpression()) #13, !dbg !4750
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4752
  call void @llvm.dbg.value(metadata i8* %2, metadata !4641, metadata !DIExpression()) #13, !dbg !4750
  %3 = icmp eq i8* %2, null, !dbg !4753
  %4 = icmp ne i64 %0, 0, !dbg !4754
  %5 = and i1 %4, %3, !dbg !4755
  br i1 %5, label %6, label %7, !dbg !4755

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4756
  unreachable, !dbg !4756

7:                                                ; preds = %1
  ret i8* %2, !dbg !4757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4758 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4762, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64* %1, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i8* %0, metadata !693, metadata !DIExpression()) #13, !dbg !4765
  call void @llvm.dbg.value(metadata i64* %1, metadata !694, metadata !DIExpression()) #13, !dbg !4765
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()) #13, !dbg !4765
  %3 = load i64, i64* %1, align 8, !dbg !4767, !tbaa !1555
  call void @llvm.dbg.value(metadata i64 %3, metadata !696, metadata !DIExpression()) #13, !dbg !4765
  %4 = icmp eq i8* %0, null, !dbg !4768
  br i1 %4, label %5, label %12, !dbg !4769

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4770
  br i1 %6, label %9, label %7, !dbg !4771

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !696, metadata !DIExpression()) #13, !dbg !4765
  %8 = icmp slt i64 %3, 0, !dbg !4772
  br i1 %8, label %11, label %9, !dbg !4773

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #13, !dbg !4765
  store i64 %10, i64* %1, align 8, !dbg !4774, !tbaa !1555
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()) #13, !dbg !4775
  call void @llvm.dbg.value(metadata i64 %18, metadata !4676, metadata !DIExpression()) #13, !dbg !4775
  br label %21, !dbg !4777

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4778
  unreachable, !dbg !4778

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4779
  br i1 %13, label %15, label %14, !dbg !4780

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4781
  unreachable, !dbg !4781

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4782
  %17 = add nuw nsw i64 %3, 1, !dbg !4783
  %18 = add nuw nsw i64 %17, %16, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #13, !dbg !4765
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #13, !dbg !4765
  store i64 %18, i64* %1, align 8, !dbg !4774, !tbaa !1555
  call void @llvm.dbg.value(metadata i8* %0, metadata !4671, metadata !DIExpression()) #13, !dbg !4775
  call void @llvm.dbg.value(metadata i64 %18, metadata !4676, metadata !DIExpression()) #13, !dbg !4775
  %19 = icmp eq i64 %18, 0, !dbg !4785
  br i1 %19, label %20, label %21, !dbg !4777

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #13, !dbg !4786
  br label %28, !dbg !4787

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #13, !dbg !4788
  call void @llvm.dbg.value(metadata i8* %23, metadata !4671, metadata !DIExpression()) #13, !dbg !4775
  %24 = icmp eq i8* %23, null, !dbg !4789
  %25 = icmp ne i64 %22, 0, !dbg !4790
  %26 = and i1 %25, %24, !dbg !4791
  br i1 %26, label %27, label %28, !dbg !4791

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4792
  unreachable, !dbg !4792

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4775
  ret i8* %29, !dbg !4793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4794 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %0, metadata !4798, metadata !DIExpression()) #13, !dbg !4803
  call void @llvm.dbg.value(metadata i64 1, metadata !4801, metadata !DIExpression()) #13, !dbg !4803
  %2 = icmp slt i64 %0, 0, !dbg !4805
  br i1 %2, label %6, label %3, !dbg !4807

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #13, !dbg !4808
  call void @llvm.dbg.value(metadata i8* %4, metadata !4802, metadata !DIExpression()) #13, !dbg !4803
  %5 = icmp eq i8* %4, null, !dbg !4809
  br i1 %5, label %6, label %7, !dbg !4810

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4811
  unreachable, !dbg !4811

7:                                                ; preds = %3
  ret i8* %4, !dbg !4812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4799 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4798, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4801, metadata !DIExpression()), !dbg !4813
  %3 = udiv i64 9223372036854775807, %1, !dbg !4814
  %4 = icmp ult i64 %3, %0, !dbg !4814
  br i1 %4, label %8, label %5, !dbg !4815

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !4816
  call void @llvm.dbg.value(metadata i8* %6, metadata !4802, metadata !DIExpression()), !dbg !4813
  %7 = icmp eq i8* %6, null, !dbg !4817
  br i1 %7, label %8, label %9, !dbg !4818

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4819
  unreachable, !dbg !4819

9:                                                ; preds = %5
  ret i8* %6, !dbg !4820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4821 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4825, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %1, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %1, metadata !4636, metadata !DIExpression()) #13, !dbg !4828
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !4830
  call void @llvm.dbg.value(metadata i8* %3, metadata !4641, metadata !DIExpression()) #13, !dbg !4828
  %4 = icmp eq i8* %3, null, !dbg !4831
  %5 = icmp ne i64 %1, 0, !dbg !4832
  %6 = and i1 %5, %4, !dbg !4833
  br i1 %6, label %7, label %8, !dbg !4833

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4834
  unreachable, !dbg !4834

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4835, metadata !DIExpression()) #13, !dbg !4844
  call void @llvm.dbg.value(metadata i8* %0, metadata !4842, metadata !DIExpression()) #13, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %1, metadata !4843, metadata !DIExpression()) #13, !dbg !4844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #13, !dbg !4846
  ret i8* %3, !dbg !4847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4850, metadata !DIExpression()), !dbg !4851
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4852
  %3 = add i64 %2, 1, !dbg !4853
  call void @llvm.dbg.value(metadata i8* %0, metadata !4825, metadata !DIExpression()) #13, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %3, metadata !4826, metadata !DIExpression()) #13, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %3, metadata !4636, metadata !DIExpression()) #13, !dbg !4856
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %4, metadata !4641, metadata !DIExpression()) #13, !dbg !4856
  %5 = icmp eq i8* %4, null, !dbg !4859
  %6 = icmp ne i64 %3, 0, !dbg !4860
  %7 = and i1 %6, %5, !dbg !4861
  br i1 %7, label %8, label %9, !dbg !4861

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4862
  unreachable, !dbg !4862

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4835, metadata !DIExpression()) #13, !dbg !4863
  call void @llvm.dbg.value(metadata i8* %0, metadata !4842, metadata !DIExpression()) #13, !dbg !4863
  call void @llvm.dbg.value(metadata i64 %3, metadata !4843, metadata !DIExpression()) #13, !dbg !4863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #13, !dbg !4865
  ret i8* %4, !dbg !4866
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4867 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4868, !tbaa !1480
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #13, !dbg !4869
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #13, !dbg !4870
  tail call void @abort() #22, !dbg !4871
  unreachable, !dbg !4871
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4872 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4874, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %1, metadata !4875, metadata !DIExpression()), !dbg !4880
  %3 = icmp eq i64 %0, 0, !dbg !4881
  %4 = icmp eq i64 %1, 0, !dbg !4882
  %5 = or i1 %3, %4, !dbg !4883
  br i1 %5, label %11, label %6, !dbg !4883

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4877, metadata !DIExpression()), !dbg !4884
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4885
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4885
  br i1 %8, label %9, label %11, !dbg !4887

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4888
  store i32 12, i32* %10, align 4, !dbg !4890, !tbaa !1480
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4874, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %12, metadata !4875, metadata !DIExpression()), !dbg !4880
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #13, !dbg !4891
  call void @llvm.dbg.value(metadata i8* %14, metadata !4876, metadata !DIExpression()), !dbg !4880
  br label %15, !dbg !4892

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4880
  ret i8* %16, !dbg !4893
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4894 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4900, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4901, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4903, metadata !DIExpression()), !dbg !4904
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %2, metadata !4902, metadata !DIExpression()), !dbg !4904
  %3 = icmp slt i32 %2, 0, !dbg !4906
  br i1 %3, label %4, label %6, !dbg !4908

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4909
  br label %24, !dbg !4910

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !4911
  %8 = icmp eq i32 %7, 0, !dbg !4911
  br i1 %8, label %13, label %9, !dbg !4913

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4914
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !4915
  %12 = icmp eq i64 %11, -1, !dbg !4916
  br i1 %12, label %16, label %13, !dbg !4917

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !4918
  %15 = icmp eq i32 %14, 0, !dbg !4918
  br i1 %15, label %16, label %18, !dbg !4919

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4901, metadata !DIExpression()), !dbg !4904
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4920
  call void @llvm.dbg.value(metadata i32 %21, metadata !4903, metadata !DIExpression()), !dbg !4904
  br label %24, !dbg !4921

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4922
  %20 = load i32, i32* %19, align 4, !dbg !4922, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %20, metadata !4901, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %20, metadata !4901, metadata !DIExpression()), !dbg !4904
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4920
  call void @llvm.dbg.value(metadata i32 %21, metadata !4903, metadata !DIExpression()), !dbg !4904
  %22 = icmp eq i32 %20, 0, !dbg !4923
  br i1 %22, label %24, label %23, !dbg !4921

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4925, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 -1, metadata !4903, metadata !DIExpression()), !dbg !4904
  br label %24, !dbg !4927

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4904
  ret i32 %25, !dbg !4928
}

; Function Attrs: nofree nounwind
declare !dbg !714 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !749 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !750 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4929 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4935, metadata !DIExpression()), !dbg !4936
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4937
  br i1 %2, label %6, label %3, !dbg !4939

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !4940
  %5 = icmp eq i32 %4, 0, !dbg !4940
  br i1 %5, label %6, label %8, !dbg !4941

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4942
  br label %17, !dbg !4943

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4944, metadata !DIExpression()) #13, !dbg !4949
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4951
  %10 = load i32, i32* %9, align 8, !dbg !4951, !tbaa !4953
  %11 = and i32 %10, 256, !dbg !4954
  %12 = icmp eq i32 %11, 0, !dbg !4954
  br i1 %12, label %15, label %13, !dbg !4955

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !4956
  br label %15, !dbg !4956

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4957
  br label %17, !dbg !4958

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4936
  ret i32 %18, !dbg !4959
}

; Function Attrs: nofree nounwind
declare !dbg !758 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4960 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4967, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i64 %1, metadata !4968, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %2, metadata !4969, metadata !DIExpression()), !dbg !4973
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4974
  %5 = load i8*, i8** %4, align 8, !dbg !4974, !tbaa !4975
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4976
  %7 = load i8*, i8** %6, align 8, !dbg !4976, !tbaa !4977
  %8 = icmp eq i8* %5, %7, !dbg !4978
  br i1 %8, label %9, label %28, !dbg !4979

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4980
  %11 = load i8*, i8** %10, align 8, !dbg !4980, !tbaa !1656
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4981
  %13 = load i8*, i8** %12, align 8, !dbg !4981, !tbaa !4982
  %14 = icmp eq i8* %11, %13, !dbg !4983
  br i1 %14, label %15, label %28, !dbg !4984

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4985
  %17 = load i8*, i8** %16, align 8, !dbg !4985, !tbaa !4986
  %18 = icmp eq i8* %17, null, !dbg !4987
  br i1 %18, label %19, label %28, !dbg !4988

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4989
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !4990
  call void @llvm.dbg.value(metadata i64 %21, metadata !4970, metadata !DIExpression()), !dbg !4991
  %22 = icmp eq i64 %21, -1, !dbg !4992
  br i1 %22, label %30, label %23, !dbg !4994

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4995
  %25 = load i32, i32* %24, align 8, !dbg !4996, !tbaa !4953
  %26 = and i32 %25, -17, !dbg !4996
  store i32 %26, i32* %24, align 8, !dbg !4996, !tbaa !4953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4997
  store i64 %21, i64* %27, align 8, !dbg !4998, !tbaa !4999
  br label %30, !dbg !5000

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5001
  br label %30, !dbg !5002

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4973
  ret i32 %31, !dbg !5003
}

; Function Attrs: nofree nounwind
declare !dbg !834 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !5004 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5012, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i8* %1, metadata !5013, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i64 %2, metadata !5014, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5015, metadata !DIExpression()), !dbg !5021
  %6 = bitcast i32* %5 to i8*, !dbg !5022
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5022
  %7 = icmp eq i32* %0, null, !dbg !5023
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5025
  call void @llvm.dbg.value(metadata i32* %8, metadata !5012, metadata !DIExpression()), !dbg !5021
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !5026
  call void @llvm.dbg.value(metadata i64 %9, metadata !5016, metadata !DIExpression()), !dbg !5021
  %10 = icmp ugt i64 %9, -3, !dbg !5027
  %11 = icmp ne i64 %2, 0, !dbg !5028
  %12 = and i1 %11, %10, !dbg !5029
  br i1 %12, label %13, label %18, !dbg !5029

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !5030
  br i1 %14, label %18, label %15, !dbg !5031

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5032, !tbaa !1589
  call void @llvm.dbg.value(metadata i8 %16, metadata !5018, metadata !DIExpression()), !dbg !5033
  %17 = zext i8 %16 to i32, !dbg !5034
  store i32 %17, i32* %8, align 4, !dbg !5035, !tbaa !1480
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5021
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5036
  ret i64 %19, !dbg !5036
}

; Function Attrs: nounwind
declare !dbg !840 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !5037 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !5044, metadata !DIExpression()), !dbg !5047
  %2 = tail call noalias i8* @xmalloc(i64 33) #13, !dbg !5048
  call void @llvm.dbg.value(metadata i8* %2, metadata !5046, metadata !DIExpression()), !dbg !5047
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !5049
  call void @llvm.dbg.value(metadata i8* %2, metadata !5050, metadata !DIExpression()) #13, !dbg !5059
  call void @llvm.dbg.value(metadata i8* %3, metadata !5057, metadata !DIExpression()) #13, !dbg !5059
  call void @llvm.dbg.value(metadata i64 32, metadata !5058, metadata !DIExpression()) #13, !dbg !5059
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !5061
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !5062
  store i8 0, i8* %5, align 1, !dbg !5063, !tbaa !1589
  %6 = tail call i64 @strlen(i8* nonnull %2) #21, !dbg !5064
  call void @llvm.dbg.value(metadata i8* undef, metadata !5045, metadata !DIExpression()), !dbg !5047
  %7 = icmp sgt i64 %6, 0, !dbg !5066
  br i1 %7, label %8, label %17, !dbg !5068

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !5069
  call void @llvm.dbg.value(metadata i8* %9, metadata !5045, metadata !DIExpression()), !dbg !5047
  br label %10, !dbg !5070

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !5045, metadata !DIExpression()), !dbg !5047
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !5071
  %13 = load i8, i8* %12, align 1, !dbg !5071, !tbaa !1589
  %14 = icmp eq i8 %13, 32, !dbg !5072
  br i1 %14, label %15, label %17, !dbg !5070

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !5045, metadata !DIExpression()), !dbg !5047
  store i8 0, i8* %12, align 1, !dbg !5073, !tbaa !1589
  %16 = icmp ult i8* %2, %12, !dbg !5066
  br i1 %16, label %10, label %17, !dbg !5068, !llvm.loop !5074

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !5076
}

; Function Attrs: nofree nounwind
declare i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !5077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5083, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i64* %1, metadata !5084, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !5085, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 %3, metadata !5086, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i64 0, metadata !5087, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i64 0, metadata !5088, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !5089, metadata !DIExpression()), !dbg !5091
  %5 = tail call i32 @utmpxname(i8* %0) #13, !dbg !5092
  tail call void @setutxent() #13, !dbg !5093
  call void @llvm.dbg.value(metadata i64 0, metadata !5087, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !5089, metadata !DIExpression()), !dbg !5091
  %6 = tail call %struct.utmpx* @getutxent() #13, !dbg !5094
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !5090, metadata !DIExpression()), !dbg !5091
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !5095
  br i1 %7, label %77, label %8, !dbg !5096

8:                                                ; preds = %4
  %9 = and i32 %3, 2, !dbg !5097
  %10 = icmp eq i32 %9, 0, !dbg !5097
  %11 = and i32 %3, 1, !dbg !5108
  %12 = icmp eq i32 %11, 0, !dbg !5108
  br label %13, !dbg !5096

13:                                               ; preds = %8, %71
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %71 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %71 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %71 ]
  %17 = phi i64 [ 0, %8 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !5087, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !5089, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !5103, metadata !DIExpression()) #13, !dbg !5110
  call void @llvm.dbg.value(metadata i32 %3, metadata !5104, metadata !DIExpression()) #13, !dbg !5110
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !5111
  %19 = load i8, i8* %18, align 4, !dbg !5111, !tbaa !1589
  %20 = icmp eq i8 %19, 0, !dbg !5111
  br i1 %20, label %25, label %21, !dbg !5111

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !5111
  %23 = load i16, i16* %22, align 4, !dbg !5111, !tbaa !1591
  %24 = icmp eq i16 %23, 7, !dbg !5111
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !5110
  call void @llvm.dbg.value(metadata i1 %26, metadata !5105, metadata !DIExpression()) #13, !dbg !5110
  %27 = or i1 %10, %26, !dbg !5112
  br i1 %27, label %28, label %71, !dbg !5112

28:                                               ; preds = %25
  %29 = xor i1 %26, true, !dbg !5113
  %30 = or i1 %12, %29, !dbg !5113
  br i1 %30, label %42, label %31, !dbg !5113

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !5114
  %33 = load i32, i32* %32, align 4, !dbg !5114, !tbaa !5115
  %34 = icmp sgt i32 %33, 0, !dbg !5116
  br i1 %34, label %35, label %42, !dbg !5117

35:                                               ; preds = %31
  %36 = tail call i32 @kill(i32 %33, i32 0) #13, !dbg !5118
  %37 = icmp slt i32 %36, 0, !dbg !5119
  br i1 %37, label %38, label %42, !dbg !5120

38:                                               ; preds = %35
  %39 = tail call i32* @__errno_location() #24, !dbg !5121
  %40 = load i32, i32* %39, align 4, !dbg !5121, !tbaa !1480
  %41 = icmp eq i32 %40, 3, !dbg !5122
  br i1 %41, label %71, label %42, !dbg !5123

42:                                               ; preds = %38, %35, %31, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !5088, metadata !DIExpression()), !dbg !5091
  %43 = icmp eq i64 %15, %17, !dbg !5124
  br i1 %43, label %44, label %64, !dbg !5127

44:                                               ; preds = %42
  %45 = bitcast %struct.utmpx* %16 to i8*, !dbg !5128
  call void @llvm.dbg.value(metadata i8* %45, metadata !862, metadata !DIExpression()) #13, !dbg !5129
  call void @llvm.dbg.value(metadata i64 384, metadata !864, metadata !DIExpression()) #13, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %17, metadata !865, metadata !DIExpression()) #13, !dbg !5129
  %46 = icmp eq %struct.utmpx* %16, null, !dbg !5131
  br i1 %46, label %47, label %52, !dbg !5133

47:                                               ; preds = %44
  %48 = icmp eq i64 %15, 0, !dbg !5134
  br i1 %48, label %59, label %49, !dbg !5137

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %17, metadata !865, metadata !DIExpression()) #13, !dbg !5129
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !5138
  br i1 %50, label %51, label %59, !dbg !5140

51:                                               ; preds = %49
  tail call void @xalloc_die() #22, !dbg !5141
  unreachable, !dbg !5141

52:                                               ; preds = %44
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !5142
  br i1 %53, label %55, label %54, !dbg !5145

54:                                               ; preds = %52
  tail call void @xalloc_die() #22, !dbg !5146
  unreachable, !dbg !5146

55:                                               ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !5147
  %57 = add nuw nsw i64 %15, 1, !dbg !5148
  %58 = add nuw nsw i64 %57, %56, !dbg !5149
  call void @llvm.dbg.value(metadata i64 %58, metadata !865, metadata !DIExpression()) #13, !dbg !5129
  br label %59

59:                                               ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !5129
  call void @llvm.dbg.value(metadata i64 %60, metadata !865, metadata !DIExpression()) #13, !dbg !5129
  %61 = mul nuw nsw i64 %60, 384, !dbg !5150
  %62 = tail call i8* @xrealloc(i8* %45, i64 %61) #13, !dbg !5151
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !5152
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !5089, metadata !DIExpression()), !dbg !5091
  br label %64, !dbg !5153

64:                                               ; preds = %59, %42
  %65 = phi i64 [ %60, %59 ], [ %17, %42 ], !dbg !5091
  %66 = phi %struct.utmpx* [ %63, %59 ], [ %16, %42 ], !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* %66, metadata !5089, metadata !DIExpression()), !dbg !5091
  %67 = add i64 %15, 1, !dbg !5154
  call void @llvm.dbg.value(metadata i64 %67, metadata !5087, metadata !DIExpression()), !dbg !5091
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %66, i64 %15, !dbg !5155
  %69 = bitcast %struct.utmpx* %68 to i8*, !dbg !5156
  %70 = bitcast %struct.utmpx* %14 to i8*, !dbg !5156
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %69, i8* nonnull align 4 dereferenceable(384) %70, i64 384, i1 false), !dbg !5156, !tbaa.struct !5157
  br label %71, !dbg !5158

71:                                               ; preds = %38, %25, %64
  %72 = phi i64 [ %65, %64 ], [ %17, %25 ], [ %17, %38 ], !dbg !5091
  %73 = phi %struct.utmpx* [ %66, %64 ], [ %16, %25 ], [ %16, %38 ], !dbg !5091
  %74 = phi i64 [ %67, %64 ], [ %15, %25 ], [ %15, %38 ], !dbg !5091
  call void @llvm.dbg.value(metadata i64 %74, metadata !5087, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* %73, metadata !5089, metadata !DIExpression()), !dbg !5091
  %75 = tail call %struct.utmpx* @getutxent() #13, !dbg !5094
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !5090, metadata !DIExpression()), !dbg !5091
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !5095
  br i1 %76, label %77, label %13, !dbg !5096, !llvm.loop !5159

77:                                               ; preds = %71, %4
  %78 = phi %struct.utmpx* [ null, %4 ], [ %73, %71 ], !dbg !5091
  %79 = phi i64 [ 0, %4 ], [ %74, %71 ], !dbg !5091
  call void @llvm.dbg.value(metadata %struct.utmpx* %78, metadata !5089, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i64 %79, metadata !5087, metadata !DIExpression()), !dbg !5091
  tail call void @endutxent() #13, !dbg !5161
  store i64 %79, i64* %1, align 8, !dbg !5162, !tbaa !1555
  store %struct.utmpx* %78, %struct.utmpx** %2, align 8, !dbg !5163, !tbaa !1423
  ret i32 0, !dbg !5164
}

declare !dbg !867 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !871 void @setutxent() local_unnamed_addr #3

declare !dbg !872 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !898 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !897 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local %struct.tm_zone* @tzalloc(i8* %0) local_unnamed_addr #19 !dbg !5165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5169, metadata !DIExpression()), !dbg !5173
  %2 = icmp ne i8* %0, null, !dbg !5174
  br i1 %2, label %3, label %9, !dbg !5174

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #21, !dbg !5175
  %5 = add i64 %4, 1, !dbg !5176
  call void @llvm.dbg.value(metadata i64 %5, metadata !5170, metadata !DIExpression()), !dbg !5173
  %6 = icmp ult i64 %5, 119, !dbg !5177
  call void @llvm.dbg.value(metadata i64 undef, metadata !5171, metadata !DIExpression()), !dbg !5173
  %7 = add i64 %4, 18, !dbg !5178
  %8 = and i64 %7, -8, !dbg !5178
  br i1 %6, label %9, label %11, !dbg !5178

9:                                                ; preds = %1, %3
  %10 = phi i64 [ %5, %3 ], [ 0, %1 ]
  br label %11, !dbg !5178

11:                                               ; preds = %3, %9
  %12 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %13 = phi i64 [ 128, %9 ], [ %8, %3 ]
  %14 = tail call noalias i8* @malloc(i64 %13) #13, !dbg !5179
  %15 = bitcast i8* %14 to %struct.tm_zone*, !dbg !5179
  call void @llvm.dbg.value(metadata %struct.tm_zone* %15, metadata !5172, metadata !DIExpression()), !dbg !5173
  %16 = icmp eq i8* %14, null, !dbg !5180
  br i1 %16, label %24, label %17, !dbg !5182

17:                                               ; preds = %11
  %18 = bitcast i8* %14 to %struct.tm_zone**, !dbg !5183
  store %struct.tm_zone* null, %struct.tm_zone** %18, align 8, !dbg !5185, !tbaa !1423
  %19 = zext i1 %2 to i8, !dbg !5186
  %20 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !5187
  store i8 %19, i8* %20, align 8, !dbg !5188, !tbaa !1589
  %21 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !5189
  store i8 0, i8* %21, align 1, !dbg !5190, !tbaa !1589
  br i1 %2, label %22, label %24, !dbg !5191

22:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !5192, metadata !DIExpression()) #13, !dbg !5199
  call void @llvm.dbg.value(metadata i8* %0, metadata !5197, metadata !DIExpression()) #13, !dbg !5199
  call void @llvm.dbg.value(metadata i64 %5, metadata !5198, metadata !DIExpression()) #13, !dbg !5199
  call void @llvm.dbg.value(metadata i8* %21, metadata !5202, metadata !DIExpression()) #13, !dbg !5207
  call void @llvm.dbg.value(metadata i8* %0, metadata !5205, metadata !DIExpression()) #13, !dbg !5207
  call void @llvm.dbg.value(metadata i64 %5, metadata !5206, metadata !DIExpression()) #13, !dbg !5207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %21, i8* nonnull align 1 %0, i64 %12, i1 false) #13, !dbg !5209
  %23 = getelementptr inbounds i8, i8* %21, i64 %12, !dbg !5210
  store i8 0, i8* %23, align 1, !dbg !5211, !tbaa !1589
  br label %24, !dbg !5212

24:                                               ; preds = %11, %17, %22
  ret %struct.tm_zone* %15, !dbg !5213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tzfree(%struct.tm_zone* %0) local_unnamed_addr #8 !dbg !5214 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5218, metadata !DIExpression()), !dbg !5222
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5223
  br i1 %2, label %9, label %3, !dbg !5223

3:                                                ; preds = %1, %3
  %4 = phi %struct.tm_zone* [ %6, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %4, metadata !5218, metadata !DIExpression()), !dbg !5222
  %5 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %4, i64 0, i32 0, !dbg !5224
  %6 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8, !dbg !5224, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !5219, metadata !DIExpression()), !dbg !5225
  %7 = bitcast %struct.tm_zone* %4 to i8*, !dbg !5226
  tail call void @free(i8* %7) #13, !dbg !5227
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !5218, metadata !DIExpression()), !dbg !5222
  %8 = icmp eq %struct.tm_zone* %6, null, !dbg !5228
  br i1 %8, label %9, label %3, !dbg !5228, !llvm.loop !5229

9:                                                ; preds = %3, %1
  ret void, !dbg !5231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.tm* @localtime_rz(%struct.tm_zone* %0, i64* nonnull %1, %struct.tm* nonnull %2) local_unnamed_addr #8 !dbg !5232 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5238, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.value(metadata i64* %1, metadata !5239, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !5240, metadata !DIExpression()), !dbg !5247
  %4 = icmp eq %struct.tm_zone* %0, null, !dbg !5248
  br i1 %4, label %5, label %7, !dbg !5249

5:                                                ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #13, !dbg !5250
  br label %52, !dbg !5251

7:                                                ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !5252
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5241, metadata !DIExpression()), !dbg !5253
  %9 = icmp eq %struct.tm_zone* %8, null, !dbg !5254
  br i1 %9, label %52, label %10, !dbg !5255

10:                                               ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #13, !dbg !5256
  %12 = icmp eq %struct.tm* %11, null, !dbg !5256
  br i1 %12, label %16, label %13, !dbg !5257

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %2), !dbg !5258
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !5244, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5260, metadata !DIExpression()) #13, !dbg !5269
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*), !dbg !5272
  br i1 %18, label %47, label %19, !dbg !5273

19:                                               ; preds = %16
  %20 = tail call i32* @__errno_location() #24, !dbg !5274
  %21 = load i32, i32* %20, align 4, !dbg !5274, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %21, metadata !5265, metadata !DIExpression()) #13, !dbg !5275
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5276, metadata !DIExpression()) #13, !dbg !5279
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1, !dbg !5281
  %23 = load i8, i8* %22, align 8, !dbg !5281, !tbaa !1589
  %24 = icmp eq i8 %23, 0, !dbg !5283
  call void @llvm.dbg.value(metadata i8* undef, metadata !5284, metadata !DIExpression()) #13, !dbg !5287
  br i1 %24, label %28, label %25, !dbg !5289

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0, !dbg !5283
  call void @llvm.dbg.value(metadata i8* %26, metadata !5284, metadata !DIExpression()) #13, !dbg !5287
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %26, i32 1) #13, !dbg !5290
  br label %30, !dbg !5289

28:                                               ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #13, !dbg !5291
  br label %30, !dbg !5289

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ], !dbg !5289
  %32 = icmp eq i32 %31, 0, !dbg !5292
  br i1 %32, label %33, label %34, !dbg !5293

33:                                               ; preds = %30
  tail call void @tzset() #13, !dbg !5294
  call void @llvm.dbg.value(metadata i1 false, metadata !5268, metadata !DIExpression()) #13, !dbg !5275
  br label %36, !dbg !5295

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i1 false, metadata !5268, metadata !DIExpression()) #13, !dbg !5275
  %35 = load i32, i32* %20, align 4, !dbg !5296, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %35, metadata !5265, metadata !DIExpression()) #13, !dbg !5275
  br label %36, !dbg !5298

36:                                               ; preds = %34, %33
  %37 = phi i1 [ false, %34 ], [ true, %33 ]
  %38 = phi i32 [ %35, %34 ], [ %21, %33 ], !dbg !5275
  call void @llvm.dbg.value(metadata i32 %38, metadata !5265, metadata !DIExpression()) #13, !dbg !5275
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !5218, metadata !DIExpression()) #13, !dbg !5299
  %39 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5301
  br i1 %39, label %46, label %40, !dbg !5301

40:                                               ; preds = %36, %40
  %41 = phi %struct.tm_zone* [ %43, %40 ], [ %8, %36 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %41, metadata !5218, metadata !DIExpression()) #13, !dbg !5299
  %42 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %41, i64 0, i32 0, !dbg !5302
  %43 = load %struct.tm_zone*, %struct.tm_zone** %42, align 8, !dbg !5302, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.tm_zone* %43, metadata !5219, metadata !DIExpression()) #13, !dbg !5303
  %44 = bitcast %struct.tm_zone* %41 to i8*, !dbg !5304
  tail call void @free(i8* %44) #13, !dbg !5305
  call void @llvm.dbg.value(metadata %struct.tm_zone* %43, metadata !5218, metadata !DIExpression()) #13, !dbg !5299
  %45 = icmp eq %struct.tm_zone* %43, null, !dbg !5306
  br i1 %45, label %46, label %40, !dbg !5306, !llvm.loop !5307

46:                                               ; preds = %40, %36
  store i32 %38, i32* %20, align 4, !dbg !5309, !tbaa !1480
  br label %47

47:                                               ; preds = %16, %46
  %48 = phi i1 [ %37, %46 ], [ true, %16 ], !dbg !5310
  %49 = xor i1 %48, true, !dbg !5311
  %50 = or i1 %17, %49, !dbg !5311
  %51 = select i1 %50, %struct.tm* null, %struct.tm* %2, !dbg !5311
  ret %struct.tm* %51, !dbg !5311

52:                                               ; preds = %7, %5
  %53 = phi %struct.tm* [ %6, %5 ], [ null, %7 ], !dbg !5312
  ret %struct.tm* %53, !dbg !5313
}

; Function Attrs: nounwind
declare !dbg !909 %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* %0) unnamed_addr #8 !dbg !5314 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5318, metadata !DIExpression()), !dbg !5326
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #13, !dbg !5327
  call void @llvm.dbg.value(metadata i8* %2, metadata !5319, metadata !DIExpression()), !dbg !5326
  %3 = icmp eq i8* %2, null, !dbg !5332
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1, !dbg !5333
  %5 = load i8, i8* %4, align 8, !dbg !5333, !tbaa !1589
  %6 = icmp eq i8 %5, 0, !dbg !5333
  br i1 %3, label %12, label %7, !dbg !5334

7:                                                ; preds = %1
  br i1 %6, label %13, label %8, !dbg !5335

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5336
  %10 = tail call i32 @strcmp(i8* nonnull %9, i8* nonnull %2) #21, !dbg !5337
  %11 = icmp eq i32 %10, 0, !dbg !5338
  br i1 %11, label %60, label %13, !dbg !5332

12:                                               ; preds = %1
  br i1 %6, label %60, label %19, !dbg !5334

13:                                               ; preds = %7, %8
  call void @llvm.dbg.value(metadata i8* %2, metadata !5169, metadata !DIExpression()) #13, !dbg !5339
  %14 = tail call i64 @strlen(i8* nonnull %2) #21, !dbg !5341
  %15 = add i64 %14, 1, !dbg !5342
  call void @llvm.dbg.value(metadata i64 %15, metadata !5170, metadata !DIExpression()) #13, !dbg !5339
  %16 = icmp ult i64 %15, 119, !dbg !5343
  call void @llvm.dbg.value(metadata i64 undef, metadata !5171, metadata !DIExpression()) #13, !dbg !5339
  %17 = add i64 %14, 18, !dbg !5344
  %18 = and i64 %17, -8, !dbg !5344
  br i1 %16, label %19, label %22, !dbg !5344

19:                                               ; preds = %12, %13
  %20 = phi i1 [ true, %13 ], [ false, %12 ]
  %21 = phi i64 [ %15, %13 ], [ 0, %12 ]
  br label %22, !dbg !5344

22:                                               ; preds = %19, %13
  %23 = phi i1 [ %20, %19 ], [ true, %13 ]
  %24 = phi i64 [ %21, %19 ], [ %15, %13 ]
  %25 = phi i64 [ 128, %19 ], [ %18, %13 ]
  %26 = tail call noalias i8* @malloc(i64 %25) #13, !dbg !5345
  %27 = bitcast i8* %26 to %struct.tm_zone*, !dbg !5345
  call void @llvm.dbg.value(metadata %struct.tm_zone* %27, metadata !5172, metadata !DIExpression()) #13, !dbg !5339
  %28 = icmp eq i8* %26, null, !dbg !5346
  br i1 %28, label %60, label %29, !dbg !5347

29:                                               ; preds = %22
  %30 = bitcast i8* %26 to %struct.tm_zone**, !dbg !5348
  store %struct.tm_zone* null, %struct.tm_zone** %30, align 8, !dbg !5349, !tbaa !1423
  %31 = zext i1 %23 to i8, !dbg !5350
  %32 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !5351
  store i8 %31, i8* %32, align 8, !dbg !5352, !tbaa !1589
  %33 = getelementptr inbounds i8, i8* %26, i64 9, !dbg !5353
  store i8 0, i8* %33, align 1, !dbg !5354, !tbaa !1589
  br i1 %23, label %34, label %37, !dbg !5355

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8* %33, metadata !5192, metadata !DIExpression()) #13, !dbg !5356
  call void @llvm.dbg.value(metadata i8* %2, metadata !5197, metadata !DIExpression()) #13, !dbg !5356
  call void @llvm.dbg.value(metadata i8* %33, metadata !5202, metadata !DIExpression()) #13, !dbg !5358
  call void @llvm.dbg.value(metadata i8* %2, metadata !5205, metadata !DIExpression()) #13, !dbg !5358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* nonnull align 1 %2, i64 %24, i1 false) #13, !dbg !5360
  %35 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !5361
  store i8 0, i8* %35, align 1, !dbg !5362, !tbaa !1589
  %36 = load i8, i8* %4, align 8, !dbg !5363, !tbaa !1589
  br label %37, !dbg !5365

37:                                               ; preds = %34, %29
  %38 = phi i8 [ %36, %34 ], [ %5, %29 ], !dbg !5363
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5276, metadata !DIExpression()) #13, !dbg !5366
  %39 = icmp eq i8 %38, 0, !dbg !5367
  call void @llvm.dbg.value(metadata i8* undef, metadata !5284, metadata !DIExpression()) #13, !dbg !5368
  br i1 %39, label %43, label %40, !dbg !5370

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5367
  call void @llvm.dbg.value(metadata i8* %41, metadata !5284, metadata !DIExpression()) #13, !dbg !5368
  %42 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %41, i32 1) #13, !dbg !5371
  br label %45, !dbg !5370

43:                                               ; preds = %37
  %44 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #13, !dbg !5372
  br label %45, !dbg !5370

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %44, %43 ], !dbg !5370
  %47 = icmp eq i32 %46, 0, !dbg !5373
  br i1 %47, label %48, label %49, !dbg !5374

48:                                               ; preds = %45
  tail call void @tzset() #13, !dbg !5375
  br label %60, !dbg !5376

49:                                               ; preds = %45
  %50 = tail call i32* @__errno_location() #24, !dbg !5377
  %51 = load i32, i32* %50, align 4, !dbg !5377, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %51, metadata !5323, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.value(metadata %struct.tm_zone* %27, metadata !5218, metadata !DIExpression()) #13, !dbg !5379
  %52 = icmp ult i8* %26, inttoptr (i64 2 to i8*), !dbg !5381
  br i1 %52, label %59, label %53, !dbg !5381

53:                                               ; preds = %49, %53
  %54 = phi %struct.tm_zone* [ %56, %53 ], [ %27, %49 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %54, metadata !5218, metadata !DIExpression()) #13, !dbg !5379
  %55 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %54, i64 0, i32 0, !dbg !5382
  %56 = load %struct.tm_zone*, %struct.tm_zone** %55, align 8, !dbg !5382, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.tm_zone* %56, metadata !5219, metadata !DIExpression()) #13, !dbg !5383
  %57 = bitcast %struct.tm_zone* %54 to i8*, !dbg !5384
  tail call void @free(i8* %57) #13, !dbg !5385
  call void @llvm.dbg.value(metadata %struct.tm_zone* %56, metadata !5218, metadata !DIExpression()) #13, !dbg !5379
  %58 = icmp eq %struct.tm_zone* %56, null, !dbg !5386
  br i1 %58, label %59, label %53, !dbg !5386, !llvm.loop !5387

59:                                               ; preds = %53, %49
  store i32 %51, i32* %50, align 4, !dbg !5389, !tbaa !1480
  br label %60

60:                                               ; preds = %22, %48, %59, %8, %12
  %61 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ null, %59 ], [ %27, %48 ], [ null, %22 ], !dbg !5333
  ret %struct.tm_zone* %61, !dbg !5390
}

; Function Attrs: nounwind
declare !dbg !926 %struct.tm* @localtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone* %0, %struct.tm* %1) unnamed_addr #19 !dbg !5391 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5396, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* null, metadata !5397, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.151, i64 0, i64 0), metadata !5398, metadata !DIExpression()), !dbg !5406
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10, !dbg !5407
  %4 = load i8*, i8** %3, align 8, !dbg !5407, !tbaa !2077
  call void @llvm.dbg.value(metadata i8* %4, metadata !5397, metadata !DIExpression()), !dbg !5406
  %5 = icmp eq i8* %4, null, !dbg !5408
  br i1 %5, label %83, label %6, !dbg !5410

6:                                                ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*, !dbg !5411
  %8 = icmp ult i8* %4, %7, !dbg !5412
  br i1 %8, label %13, label %9, !dbg !5413

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1, !dbg !5414
  %11 = bitcast %struct.tm* %10 to i8*, !dbg !5415
  %12 = icmp ult i8* %4, %11, !dbg !5416
  br i1 %12, label %83, label %13, !dbg !5417

13:                                               ; preds = %6, %9
  %14 = load i8, i8* %4, align 1, !dbg !5418, !tbaa !1589
  %15 = icmp eq i8 %14, 0, !dbg !5418
  br i1 %15, label %81, label %16, !dbg !5419

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5420
  call void @llvm.dbg.value(metadata i8* %17, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5395, metadata !DIExpression()), !dbg !5406
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull %4) #21, !dbg !5421
  %19 = icmp eq i32 %18, 0, !dbg !5422
  br i1 %19, label %81, label %20, !dbg !5423

20:                                               ; preds = %16, %76
  %21 = phi %struct.tm_zone* [ %78, %76 ], [ %0, %16 ]
  %22 = phi i8* [ %77, %76 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  %23 = load i8, i8* %22, align 1, !dbg !5424, !tbaa !1589
  %24 = icmp eq i8 %23, 0, !dbg !5424
  br i1 %24, label %25, label %63, !dbg !5425

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 2, i64 0, !dbg !5426
  %27 = icmp eq i8* %22, %26, !dbg !5427
  br i1 %27, label %28, label %32, !dbg !5428

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 1, !dbg !5429
  %30 = load i8, i8* %29, align 8, !dbg !5429, !tbaa !1589
  %31 = icmp eq i8 %30, 0, !dbg !5430
  br i1 %31, label %32, label %63, !dbg !5431

32:                                               ; preds = %28, %25
  %33 = phi i8* [ %22, %28 ], [ %26, %25 ], !dbg !5426
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %22, metadata !5398, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5395, metadata !DIExpression()), !dbg !5406
  %34 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !5432
  %35 = add i64 %34, 1, !dbg !5433
  call void @llvm.dbg.value(metadata i64 %35, metadata !5399, metadata !DIExpression()), !dbg !5434
  %36 = ptrtoint i8* %22 to i64, !dbg !5435
  %37 = ptrtoint i8* %33 to i64, !dbg !5435
  %38 = sub i64 %36, %37, !dbg !5435
  call void @llvm.dbg.value(metadata i64 %38, metadata !5405, metadata !DIExpression()), !dbg !5434
  %39 = xor i64 %38, -1, !dbg !5436
  %40 = icmp ugt i64 %35, %39, !dbg !5438
  br i1 %40, label %41, label %43, !dbg !5439

41:                                               ; preds = %32
  %42 = tail call i32* @__errno_location() #24, !dbg !5440
  store i32 12, i32* %42, align 4, !dbg !5442, !tbaa !1480
  br label %83, !dbg !5443

43:                                               ; preds = %32
  %44 = add i64 %35, %38, !dbg !5444
  %45 = icmp ult i64 %44, 119, !dbg !5446
  br i1 %45, label %46, label %48, !dbg !5447

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %22, metadata !5192, metadata !DIExpression()) #13, !dbg !5448
  call void @llvm.dbg.value(metadata i8* %4, metadata !5197, metadata !DIExpression()) #13, !dbg !5448
  call void @llvm.dbg.value(metadata i64 %35, metadata !5198, metadata !DIExpression()) #13, !dbg !5448
  call void @llvm.dbg.value(metadata i8* %22, metadata !5202, metadata !DIExpression()) #13, !dbg !5450
  call void @llvm.dbg.value(metadata i8* %4, metadata !5205, metadata !DIExpression()) #13, !dbg !5450
  call void @llvm.dbg.value(metadata i64 %35, metadata !5206, metadata !DIExpression()) #13, !dbg !5450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %4, i64 %35, i1 false) #13, !dbg !5452
  %47 = getelementptr inbounds i8, i8* %22, i64 %35, !dbg !5453
  store i8 0, i8* %47, align 1, !dbg !5454, !tbaa !1589
  br label %81, !dbg !5455

48:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %4, metadata !5169, metadata !DIExpression()) #13, !dbg !5456
  call void @llvm.dbg.value(metadata i64 %35, metadata !5170, metadata !DIExpression()) #13, !dbg !5456
  %49 = icmp ult i64 %35, 119, !dbg !5459
  call void @llvm.dbg.value(metadata i64 undef, metadata !5171, metadata !DIExpression()) #13, !dbg !5456
  %50 = add i64 %34, 18, !dbg !5460
  %51 = and i64 %50, -8, !dbg !5460
  %52 = select i1 %49, i64 128, i64 %51, !dbg !5460
  %53 = tail call noalias i8* @malloc(i64 %52) #13, !dbg !5461
  call void @llvm.dbg.value(metadata i8* %53, metadata !5172, metadata !DIExpression()) #13, !dbg !5456
  %54 = icmp eq i8* %53, null, !dbg !5462
  br i1 %54, label %61, label %55, !dbg !5463

55:                                               ; preds = %48
  %56 = bitcast i8* %53 to %struct.tm_zone**, !dbg !5464
  store %struct.tm_zone* null, %struct.tm_zone** %56, align 8, !dbg !5465, !tbaa !1423
  %57 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !5466
  store i8 1, i8* %57, align 8, !dbg !5467, !tbaa !1589
  %58 = getelementptr inbounds i8, i8* %53, i64 9, !dbg !5468
  store i8 0, i8* %58, align 1, !dbg !5469, !tbaa !1589
  call void @llvm.dbg.value(metadata i8* %58, metadata !5192, metadata !DIExpression()) #13, !dbg !5470
  call void @llvm.dbg.value(metadata i8* %4, metadata !5197, metadata !DIExpression()) #13, !dbg !5470
  call void @llvm.dbg.value(metadata i8* %58, metadata !5202, metadata !DIExpression()) #13, !dbg !5472
  call void @llvm.dbg.value(metadata i8* %4, metadata !5205, metadata !DIExpression()) #13, !dbg !5472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %58, i8* nonnull align 1 %4, i64 %35, i1 false) #13, !dbg !5474
  %59 = getelementptr inbounds i8, i8* %58, i64 %35, !dbg !5475
  store i8 0, i8* %59, align 1, !dbg !5476, !tbaa !1589
  %60 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5477
  store i8* %53, i8** %60, align 8, !dbg !5477, !tbaa !1423
  call void @llvm.dbg.value(metadata i8* %53, metadata !5395, metadata !DIExpression()), !dbg !5406
  store i8 0, i8* %57, align 8, !dbg !5478, !tbaa !1589
  call void @llvm.dbg.value(metadata i8* %58, metadata !5398, metadata !DIExpression()), !dbg !5406
  br label %81

61:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %53, metadata !5172, metadata !DIExpression()) #13, !dbg !5456
  %62 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5477
  store i8* null, i8** %62, align 8, !dbg !5477, !tbaa !1423
  call void @llvm.dbg.value(metadata i8* %53, metadata !5395, metadata !DIExpression()), !dbg !5406
  br label %83, !dbg !5479

63:                                               ; preds = %28, %20
  %64 = tail call i64 @strlen(i8* nonnull %22) #21, !dbg !5480
  %65 = add i64 %64, 1, !dbg !5481
  %66 = getelementptr inbounds i8, i8* %22, i64 %65, !dbg !5482
  call void @llvm.dbg.value(metadata i8* %66, metadata !5398, metadata !DIExpression()), !dbg !5406
  %67 = load i8, i8* %66, align 1, !dbg !5483, !tbaa !1589
  %68 = icmp eq i8 %67, 0, !dbg !5483
  br i1 %68, label %69, label %76, !dbg !5485

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 0, !dbg !5486
  %71 = load %struct.tm_zone*, %struct.tm_zone** %70, align 8, !dbg !5486, !tbaa !1423
  %72 = icmp eq %struct.tm_zone* %71, null, !dbg !5487
  %73 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %71, i64 0, i32 2, i64 0, !dbg !5488
  %74 = select i1 %72, i8* %66, i8* %73, !dbg !5490
  %75 = select i1 %72, %struct.tm_zone* %21, %struct.tm_zone* %71, !dbg !5490
  br label %76, !dbg !5490

76:                                               ; preds = %69, %63
  %77 = phi i8* [ %66, %63 ], [ %74, %69 ], !dbg !5491
  %78 = phi %struct.tm_zone* [ %21, %63 ], [ %75, %69 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %78, metadata !5395, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata i8* %77, metadata !5398, metadata !DIExpression()), !dbg !5406
  %79 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %77, i8* nonnull %4) #21, !dbg !5421
  %80 = icmp eq i32 %79, 0, !dbg !5422
  br i1 %80, label %81, label %20, !dbg !5423, !llvm.loop !5492

81:                                               ; preds = %76, %16, %46, %55, %13
  %82 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.151, i64 0, i64 0), %13 ], [ %58, %55 ], [ %22, %46 ], [ %17, %16 ], [ %77, %76 ], !dbg !5406
  call void @llvm.dbg.value(metadata i8* %82, metadata !5398, metadata !DIExpression()), !dbg !5406
  store i8* %82, i8** %3, align 8, !dbg !5494, !tbaa !2077
  br label %83, !dbg !5495

83:                                               ; preds = %61, %41, %9, %2, %81
  %84 = phi i1 [ true, %81 ], [ true, %2 ], [ true, %9 ], [ false, %61 ], [ false, %41 ], !dbg !5406
  ret i1 %84, !dbg !5496
}

; Function Attrs: nounwind
declare !dbg !933 i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !936 i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !932 void @tzset() local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !931 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mktime_z(%struct.tm_zone* %0, %struct.tm* nonnull %1) local_unnamed_addr #8 !dbg !5497 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 16
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5501, metadata !DIExpression()), !dbg !5511
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5502, metadata !DIExpression()), !dbg !5511
  %5 = icmp eq %struct.tm_zone* %0, null, !dbg !5512
  br i1 %5, label %6, label %8, !dbg !5513

6:                                                ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #13, !dbg !5514
  br label %90, !dbg !5515

8:                                                ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !5516
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5503, metadata !DIExpression()), !dbg !5517
  %10 = icmp eq %struct.tm_zone* %9, null, !dbg !5518
  br i1 %10, label %90, label %11, !dbg !5519

11:                                               ; preds = %8
  %12 = bitcast i64* %3 to i8*, !dbg !5520
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #13, !dbg !5520
  %13 = tail call i64 @mktime(%struct.tm* nonnull %1) #13, !dbg !5521
  call void @llvm.dbg.value(metadata i64 %13, metadata !5506, metadata !DIExpression()), !dbg !5522
  store i64 %13, i64* %3, align 8, !dbg !5523, !tbaa !1555
  call void @llvm.dbg.value(metadata i64 -1, metadata !5509, metadata !DIExpression()), !dbg !5522
  %14 = bitcast %struct.tm* %4 to i8*, !dbg !5524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %14) #13, !dbg !5524
  call void @llvm.dbg.declare(metadata %struct.tm* %4, metadata !5510, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.value(metadata i64 %13, metadata !5506, metadata !DIExpression()), !dbg !5522
  %15 = icmp eq i64 %13, -1, !dbg !5526
  br i1 %15, label %16, label %54, !dbg !5528

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64* %3, metadata !5506, metadata !DIExpression(DW_OP_deref)), !dbg !5522
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #13, !dbg !5529
  %18 = icmp eq %struct.tm* %17, null, !dbg !5529
  br i1 %18, label %57, label %19, !dbg !5530

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5531, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.value(metadata %struct.tm* %4, metadata !5538, metadata !DIExpression()), !dbg !5539
  %20 = bitcast %struct.tm* %1 to <4 x i32>*, !dbg !5541
  %21 = load <4 x i32>, <4 x i32>* %20, align 8, !dbg !5541, !tbaa !1480
  %22 = bitcast %struct.tm* %4 to <4 x i32>*, !dbg !5542
  %23 = load <4 x i32>, <4 x i32>* %22, align 16, !dbg !5542, !tbaa !1480
  %24 = xor <4 x i32> %23, %21, !dbg !5543
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4, !dbg !5544
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !5545
  %27 = bitcast i32* %25 to <2 x i32>*, !dbg !5544
  %28 = load <2 x i32>, <2 x i32>* %27, align 8, !dbg !5544, !tbaa !1480
  %29 = bitcast i32* %26 to <2 x i32>*, !dbg !5545
  %30 = load <2 x i32>, <2 x i32>* %29, align 16, !dbg !5545, !tbaa !1480
  %31 = xor <2 x i32> %30, %28, !dbg !5546
  %32 = extractelement <2 x i32> %31, i32 0, !dbg !5547
  %33 = extractelement <2 x i32> %31, i32 1, !dbg !5548
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8, !dbg !5549
  %35 = load i32, i32* %34, align 8, !dbg !5549, !tbaa !2823
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !5550
  %37 = load i32, i32* %36, align 16, !dbg !5550, !tbaa !2823
  call void @llvm.dbg.value(metadata i32 %35, metadata !5551, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.value(metadata i32 %37, metadata !5556, metadata !DIExpression()), !dbg !5557
  %38 = icmp eq i32 %35, 0, !dbg !5559
  %39 = icmp eq i32 %37, 0, !dbg !5560
  %40 = xor i1 %38, %39, !dbg !5561
  %41 = or i32 %37, %35, !dbg !5562
  %42 = icmp sgt i32 %41, -1, !dbg !5562
  %43 = and i1 %42, %40, !dbg !5562
  %44 = zext i1 %43 to i32, !dbg !5563
  %45 = shufflevector <4 x i32> %24, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !5564
  %46 = or <4 x i32> %24, %45, !dbg !5564
  %47 = shufflevector <4 x i32> %46, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !5564
  %48 = or <4 x i32> %46, %47, !dbg !5564
  %49 = extractelement <4 x i32> %48, i32 0, !dbg !5564
  %50 = or i32 %49, %32, !dbg !5546
  %51 = or i32 %50, %33, !dbg !5565
  %52 = or i32 %51, %44, !dbg !5564
  %53 = icmp eq i32 %52, 0, !dbg !5566
  br i1 %53, label %54, label %57, !dbg !5567

54:                                               ; preds = %19, %11
  %55 = call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %1), !dbg !5568
  br i1 %55, label %57, label %56, !dbg !5569

56:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64 -1, metadata !5506, metadata !DIExpression()), !dbg !5522
  store i64 -1, i64* %3, align 8, !dbg !5570, !tbaa !1555
  br label %57, !dbg !5571

57:                                               ; preds = %19, %16, %56, %54
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5260, metadata !DIExpression()) #13, !dbg !5572
  %58 = icmp eq %struct.tm_zone* %9, inttoptr (i64 1 to %struct.tm_zone*), !dbg !5575
  br i1 %58, label %88, label %59, !dbg !5576

59:                                               ; preds = %57
  %60 = tail call i32* @__errno_location() #24, !dbg !5577
  %61 = load i32, i32* %60, align 4, !dbg !5577, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %61, metadata !5265, metadata !DIExpression()) #13, !dbg !5578
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5276, metadata !DIExpression()) #13, !dbg !5579
  %62 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 1, !dbg !5581
  %63 = load i8, i8* %62, align 8, !dbg !5581, !tbaa !1589
  %64 = icmp eq i8 %63, 0, !dbg !5582
  call void @llvm.dbg.value(metadata i8* undef, metadata !5284, metadata !DIExpression()) #13, !dbg !5583
  br i1 %64, label %68, label %65, !dbg !5585

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 2, i64 0, !dbg !5582
  call void @llvm.dbg.value(metadata i8* %66, metadata !5284, metadata !DIExpression()) #13, !dbg !5583
  %67 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %66, i32 1) #13, !dbg !5586
  br label %70, !dbg !5585

68:                                               ; preds = %59
  %69 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #13, !dbg !5587
  br label %70, !dbg !5585

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %67, %65 ], [ %69, %68 ], !dbg !5585
  %72 = icmp eq i32 %71, 0, !dbg !5588
  br i1 %72, label %73, label %74, !dbg !5589

73:                                               ; preds = %70
  call void @tzset() #13, !dbg !5590
  call void @llvm.dbg.value(metadata i1 false, metadata !5268, metadata !DIExpression()) #13, !dbg !5578
  br label %76, !dbg !5591

74:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i1 false, metadata !5268, metadata !DIExpression()) #13, !dbg !5578
  %75 = load i32, i32* %60, align 4, !dbg !5592, !tbaa !1480
  call void @llvm.dbg.value(metadata i32 %75, metadata !5265, metadata !DIExpression()) #13, !dbg !5578
  br label %76, !dbg !5593

76:                                               ; preds = %74, %73
  %77 = phi i1 [ false, %74 ], [ true, %73 ]
  %78 = phi i32 [ %75, %74 ], [ %61, %73 ], !dbg !5578
  call void @llvm.dbg.value(metadata i32 %78, metadata !5265, metadata !DIExpression()) #13, !dbg !5578
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5218, metadata !DIExpression()) #13, !dbg !5594
  %79 = icmp ult %struct.tm_zone* %9, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5596
  br i1 %79, label %86, label %80, !dbg !5596

80:                                               ; preds = %76, %80
  %81 = phi %struct.tm_zone* [ %83, %80 ], [ %9, %76 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %81, metadata !5218, metadata !DIExpression()) #13, !dbg !5594
  %82 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %81, i64 0, i32 0, !dbg !5597
  %83 = load %struct.tm_zone*, %struct.tm_zone** %82, align 8, !dbg !5597, !tbaa !1423
  call void @llvm.dbg.value(metadata %struct.tm_zone* %83, metadata !5219, metadata !DIExpression()) #13, !dbg !5598
  %84 = bitcast %struct.tm_zone* %81 to i8*, !dbg !5599
  call void @free(i8* %84) #13, !dbg !5600
  call void @llvm.dbg.value(metadata %struct.tm_zone* %83, metadata !5218, metadata !DIExpression()) #13, !dbg !5594
  %85 = icmp eq %struct.tm_zone* %83, null, !dbg !5601
  br i1 %85, label %86, label %80, !dbg !5601, !llvm.loop !5602

86:                                               ; preds = %80, %76
  store i32 %78, i32* %60, align 4, !dbg !5604, !tbaa !1480
  br i1 %77, label %88, label %87, !dbg !5605

87:                                               ; preds = %86
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #13, !dbg !5606
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #13, !dbg !5606
  br label %90

88:                                               ; preds = %57, %86
  %89 = load i64, i64* %3, align 8, !dbg !5605
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #13, !dbg !5606
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #13, !dbg !5606
  br label %90

90:                                               ; preds = %8, %87, %88, %6
  %91 = phi i64 [ %7, %6 ], [ %89, %88 ], [ -1, %87 ], [ -1, %8 ], !dbg !5607
  ret i64 %91, !dbg !5608
}

; Function Attrs: nounwind
declare !dbg !927 i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !930 i64 @mktime(%struct.tm* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5609 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5615, metadata !DIExpression()), !dbg !5620
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !5621
  call void @llvm.dbg.value(metadata i1 undef, metadata !5616, metadata !DIExpression()), !dbg !5620
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5622, metadata !DIExpression()), !dbg !5625
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5627
  %4 = load i32, i32* %3, align 8, !dbg !5627, !tbaa !4953
  %5 = and i32 %4, 32, !dbg !5627
  %6 = icmp eq i32 %5, 0, !dbg !5628
  call void @llvm.dbg.value(metadata i1 %6, metadata !5618, metadata !DIExpression()), !dbg !5620
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !5629
  %8 = icmp ne i32 %7, 0, !dbg !5630
  call void @llvm.dbg.value(metadata i1 %8, metadata !5619, metadata !DIExpression()), !dbg !5620
  br i1 %6, label %9, label %19, !dbg !5631

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5633
  call void @llvm.dbg.value(metadata i1 %10, metadata !5616, metadata !DIExpression()), !dbg !5620
  %11 = xor i1 %8, true, !dbg !5634
  %12 = or i1 %10, %11, !dbg !5634
  %13 = sext i1 %8 to i32, !dbg !5634
  br i1 %12, label %22, label %14, !dbg !5634

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !5635
  %16 = load i32, i32* %15, align 4, !dbg !5635, !tbaa !1480
  %17 = icmp ne i32 %16, 9, !dbg !5636
  %18 = sext i1 %17 to i32, !dbg !5637
  br label %22, !dbg !5637

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5638

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !5640
  store i32 0, i32* %21, align 4, !dbg !5642, !tbaa !1480
  br label %22, !dbg !5640

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5620
  ret i32 %23, !dbg !5643
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5644 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5646, metadata !DIExpression()), !dbg !5651
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5652
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #13, !dbg !5652
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5647, metadata !DIExpression()), !dbg !5653
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #13, !dbg !5654
  %5 = icmp eq i32 %4, 0, !dbg !5654
  br i1 %5, label %6, label %13, !dbg !5656

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5657
  %8 = load i16, i16* %7, align 16, !dbg !5657
  %9 = icmp eq i16 %8, 67, !dbg !5657
  br i1 %9, label %13, label %10, !dbg !5658

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i64 6), !dbg !5659
  %12 = icmp ne i32 %11, 0, !dbg !5660
  br label %13, !dbg !5658

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5651
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #13, !dbg !5661
  ret i1 %14, !dbg !5661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5662 {
  %1 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !5665
  call void @llvm.dbg.value(metadata i8* %1, metadata !5664, metadata !DIExpression()), !dbg !5666
  %2 = icmp eq i8* %1, null, !dbg !5667
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.161, i64 0, i64 0), i8* %1, !dbg !5669
  call void @llvm.dbg.value(metadata i8* %3, metadata !5664, metadata !DIExpression()), !dbg !5666
  %4 = load i8, i8* %3, align 1, !dbg !5670, !tbaa !1589
  %5 = icmp eq i8 %4, 0, !dbg !5674
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.162, i64 0, i64 0), i8* %3, !dbg !5675
  call void @llvm.dbg.value(metadata i8* %6, metadata !5664, metadata !DIExpression()), !dbg !5666
  ret i8* %6, !dbg !5676
}

; Function Attrs: nounwind
declare !dbg !1383 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5681, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.value(metadata i8* %1, metadata !5682, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.value(metadata i64 %2, metadata !5683, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.value(metadata i32 %0, metadata !5685, metadata !DIExpression()) #13, !dbg !5694
  call void @llvm.dbg.value(metadata i8* %1, metadata !5688, metadata !DIExpression()) #13, !dbg !5694
  call void @llvm.dbg.value(metadata i64 %2, metadata !5689, metadata !DIExpression()) #13, !dbg !5694
  call void @llvm.dbg.value(metadata i32 %0, metadata !5696, metadata !DIExpression()) #13, !dbg !5702
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !5704
  call void @llvm.dbg.value(metadata i8* %4, metadata !5701, metadata !DIExpression()) #13, !dbg !5702
  call void @llvm.dbg.value(metadata i8* %4, metadata !5690, metadata !DIExpression()) #13, !dbg !5694
  %5 = icmp eq i8* %4, null, !dbg !5705
  br i1 %5, label %6, label %9, !dbg !5706

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5707
  br i1 %7, label %19, label %8, !dbg !5710

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5711, !tbaa !1589
  br label %19, !dbg !5712

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !5713
  call void @llvm.dbg.value(metadata i64 %10, metadata !5691, metadata !DIExpression()) #13, !dbg !5714
  %11 = icmp ult i64 %10, %2, !dbg !5715
  br i1 %11, label %12, label %14, !dbg !5717

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5718
  call void @llvm.dbg.value(metadata i8* %1, metadata !5720, metadata !DIExpression()) #13, !dbg !5725
  call void @llvm.dbg.value(metadata i8* %4, metadata !5723, metadata !DIExpression()) #13, !dbg !5725
  call void @llvm.dbg.value(metadata i64 %13, metadata !5724, metadata !DIExpression()) #13, !dbg !5725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #13, !dbg !5727
  br label %19, !dbg !5728

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5729
  br i1 %15, label %19, label %16, !dbg !5732

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5733
  call void @llvm.dbg.value(metadata i8* %1, metadata !5720, metadata !DIExpression()) #13, !dbg !5735
  call void @llvm.dbg.value(metadata i8* %4, metadata !5723, metadata !DIExpression()) #13, !dbg !5735
  call void @llvm.dbg.value(metadata i64 %17, metadata !5724, metadata !DIExpression()) #13, !dbg !5735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #13, !dbg !5737
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5738
  store i8 0, i8* %18, align 1, !dbg !5739, !tbaa !1589
  br label %19, !dbg !5740

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5741
  ret i32 %20, !dbg !5742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5745, metadata !DIExpression()), !dbg !5746
  call void @llvm.dbg.value(metadata i32 %0, metadata !5696, metadata !DIExpression()) #13, !dbg !5747
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !5749
  call void @llvm.dbg.value(metadata i8* %2, metadata !5701, metadata !DIExpression()) #13, !dbg !5747
  ret i8* %2, !dbg !5750
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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!398, !2, !11, !53, !134, !570, !140, !208, !250, !642, !392, !684, !705, !708, !711, !755, !796, !837, !856, !902, !948, !986, !993, !1386}
!llvm.ident = !{!1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389, !1389}
!llvm.module.flags = !{!1390, !1391, !1392, !1393, !1394}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !11, file: !12, line: 50, type: !50, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !49, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15, !42, !45}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DISubprogram(name: "strtod_l", scope: !16, file: !16, line: 295, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!16 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !6, !20, !21}
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !23, line: 28, size: 1856, elements: !24)
!23 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!24 = !{!25, !31, !35, !39, !40}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !22, file: !23, line: 31, baseType: !26, size: 832)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 832, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !23, line: 31, flags: DIFlagFwdDecl)
!29 = !{!30}
!30 = !DISubrange(count: 13)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !22, file: !23, line: 34, baseType: !32, size: 64, offset: 832)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !22, file: !23, line: 35, baseType: !36, size: 64, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !22, file: !23, line: 36, baseType: !36, size: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !22, file: !23, line: 39, baseType: !41, size: 832, offset: 1024)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !29)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !23, line: 42, baseType: !21)
!45 = !DISubprogram(name: "newlocale", scope: !46, file: !46, line: 141, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!46 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!21, !38, !6, !21}
!49 = !{!9}
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "file_name", scope: !53, file: !54, line: 46, type: !6, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !128, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!55 = !{!56, !116, !120, !124}
!56 = !DISubprogram(name: "close_stream", scope: !57, file: !57, line: 2, type: !58, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!57 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!58 = !DISubroutineType(types: !59)
!59 = !{!38, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !63)
!62 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !79, !80, !81, !82, !86, !87, !89, !93, !96, !98, !101, !104, !105, !107, !111, !112}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 51, baseType: !38, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 36, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 70, baseType: !60, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !84, line: 152, baseType: !85)
!84 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!85 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 43, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !84, line: 153, baseType: !85)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !61, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !62, line: 37, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !61, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !62, line: 38, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !61, file: !62, line: 93, baseType: !60, size: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !61, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DISubprogram(name: "dcgettext", scope: !117, file: !117, line: 51, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!14, !6, !6, !38}
!120 = !DISubprogram(name: "quotearg_colon", scope: !121, file: !121, line: 391, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!14, !6}
!124 = !DISubprogram(name: "error", scope: !125, file: !125, line: 52, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!125 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubroutineType(types: !127)
!127 = !{null, !38, !38, !6, null}
!128 = !{!51, !129}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !53, file: !54, line: 56, type: !131, isLocal: true, isDefinition: true)
!131 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "exit_failure", scope: !134, file: !135, line: 24, type: !137, isLocal: false, isDefinition: true)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !136, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !{!132}
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "long_options", scope: !140, file: !141, line: 34, type: !203, isLocal: true, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !202, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!142 = !{!143, !158}
!143 = !DISubprogram(name: "getopt_long", scope: !144, file: !144, line: 66, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!144 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!145 = !DISubroutineType(types: !146)
!146 = !{!38, !38, !147, !6, !149, !156}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !144, line: 50, size: 256, elements: !152)
!152 = !{!153, !154, !155, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !144, line: 52, baseType: !6, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !151, file: !144, line: 55, baseType: !38, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !151, file: !144, line: 56, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !144, line: 57, baseType: !38, size: 32, offset: 192)
!158 = !DISubprogram(name: "version_etc_va", scope: !159, file: !159, line: 63, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!159 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !6, !6, !6, !194}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !163, file: !62, line: 51, baseType: !38, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !163, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !163, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !163, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !163, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !163, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !163, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !163, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !163, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !163, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !163, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !163, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !163, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !163, file: !62, line: 70, baseType: !162, size: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !163, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !163, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !163, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !163, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !163, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !163, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !163, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !163, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !163, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !163, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !163, file: !62, line: 93, baseType: !162, size: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !163, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !163, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !163, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !163, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !141, line: 72, size: 192, elements: !196)
!196 = !{!197, !199, !200, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !195, file: !141, line: 72, baseType: !198, size: 32)
!198 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !195, file: !141, line: 72, baseType: !198, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !195, file: !141, line: 72, baseType: !106, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !195, file: !141, line: 72, baseType: !106, size: 64, offset: 128)
!202 = !{!138}
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 768, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 3)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "program_name", scope: !208, file: !209, line: 33, type: !6, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !210, globals: !247, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !{!106, !211, !14}
!211 = !DISubprogram(name: "fputs", scope: !212, file: !212, line: 626, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!212 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!213 = !DISubroutineType(types: !214)
!214 = !{!38, !6, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !216, file: !62, line: 51, baseType: !38, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !216, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !216, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !216, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !216, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !216, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !216, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !216, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !216, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !216, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !216, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !216, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !216, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !216, file: !62, line: 70, baseType: !215, size: 64, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !216, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !216, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !216, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !216, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !216, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !216, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !216, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !216, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !216, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !216, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !216, file: !62, line: 93, baseType: !215, size: 64, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !216, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !216, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !216, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !216, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!247 = !{!206}
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !250, file: !251, line: 85, type: !386, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !286, globals: !359, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!253, !266, !271}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !121, line: 32, baseType: !198, size: 32, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!255 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!256 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!259 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!260 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!261 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!262 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!263 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!264 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!265 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !121, line: 242, baseType: !198, size: 32, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!269 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!270 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !272, line: 46, baseType: !198, size: 32, elements: !273)
!272 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!274 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!275 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!276 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!277 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!278 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!279 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!280 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!281 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!282 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!283 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!284 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!285 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!286 = !{!287, !293, !309, !312, !38, !34, !315, !108, !332, !336, !116, !342, !346, !14, !350, !353, !356}
!287 = !DISubprogram(name: "xmemdup", scope: !288, file: !288, line: 62, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!288 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !DISubroutineType(types: !290)
!290 = !{!106, !291, !110}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!293 = !DISubprogram(name: "quotearg_alloc_mem", scope: !121, file: !121, line: 342, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!294 = !DISubroutineType(types: !295)
!295 = !{!14, !6, !110, !296, !297}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !251, line: 65, size: 448, elements: !300)
!300 = !{!301, !302, !303, !307, !308}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !299, file: !251, line: 68, baseType: !253, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !251, line: 71, baseType: !38, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !299, file: !251, line: 75, baseType: !304, size: 256, offset: 64)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !299, file: !251, line: 78, baseType: !6, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !299, file: !251, line: 81, baseType: !6, size: 64, offset: 384)
!309 = !DISubprogram(name: "free", scope: !16, file: !16, line: 565, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !106}
!312 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !121, file: !121, line: 408, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{!14, !38, !6, !6, !6, !110}
!315 = !DISubprogram(name: "rpl_mbrtowc", scope: !316, file: !316, line: 717, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!316 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!317 = !DISubroutineType(types: !318)
!318 = !{!110, !156, !6, !110, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 13, size: 64, elements: !322)
!321 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !320, file: !321, line: 15, baseType: !38, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !320, file: !321, line: 20, baseType: !325, size: 32, offset: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 16, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !325, file: !321, line: 18, baseType: !198, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !325, file: !321, line: 19, baseType: !329, size: 32)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 4)
!332 = !DISubprogram(name: "iswprint", scope: !333, file: !333, line: 120, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!333 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!334 = !DISubroutineType(types: !335)
!335 = !{!38, !198}
!336 = !DISubprogram(name: "mbsinit", scope: !337, file: !337, line: 292, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!337 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!338 = !DISubroutineType(types: !339)
!339 = !{!38, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!342 = !DISubprogram(name: "locale_charset", scope: !343, file: !343, line: 35, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!343 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!344 = !DISubroutineType(types: !345)
!345 = !{!6}
!346 = !DISubprogram(name: "c_strcasecmp", scope: !347, file: !347, line: 42, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!347 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!348 = !DISubroutineType(types: !349)
!349 = !{!38, !6, !6}
!350 = !DISubprogram(name: "xmalloc", scope: !288, file: !288, line: 53, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!351 = !DISubroutineType(types: !352)
!352 = !{!106, !110}
!353 = !DISubprogram(name: "xalloc_die", scope: !288, file: !288, line: 51, type: !354, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!354 = !DISubroutineType(types: !355)
!355 = !{null}
!356 = !DISubprogram(name: "xrealloc", scope: !288, file: !288, line: 59, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!357 = !DISubroutineType(types: !358)
!358 = !{!106, !106, !110}
!359 = !{!248, !360, !366, !368, !370, !375, !382, !384}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !250, file: !251, line: 101, type: !362, isLocal: false, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 320, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!364 = !{!365}
!365 = !DISubrange(count: 10)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !250, file: !251, line: 1052, type: !299, isLocal: false, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !250, file: !251, line: 116, type: !299, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "slot0", scope: !250, file: !251, line: 842, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 256)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "slotvec", scope: !250, file: !251, line: 845, type: !377, isLocal: true, isDefinition: true)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !251, line: 834, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !378, file: !251, line: 836, baseType: !108, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !251, line: 837, baseType: !14, size: 64, offset: 64)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "nslots", scope: !250, file: !251, line: 843, type: !38, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "slotvec0", scope: !250, file: !251, line: 844, type: !378, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 704, elements: !388)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!388 = !{!389}
!389 = !DISubrange(count: 11)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !392, file: !393, line: 26, type: !395, isLocal: false, isDefinition: true)
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !394, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!394 = !{!390}
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 47)
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !400, retainedTypes: !418, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "src/uptime.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!400 = !{!401, !253, !406}
!401 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !402, line: 208, baseType: !198, size: 32, elements: !403)
!402 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!403 = !{!404, !405}
!404 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!405 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !408, file: !407, line: 187, baseType: !198, size: 32, elements: !416)
!407 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!408 = distinct !DISubprogram(name: "select_plural", scope: !407, file: !407, line: 183, type: !409, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !414)
!409 = !DISubroutineType(types: !410)
!410 = !{!110, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !412, line: 102, baseType: !413)
!412 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !84, line: 73, baseType: !110)
!414 = !{!415}
!415 = !DILocalVariable(name: "n", arg: 1, scope: !408, file: !407, line: 183, type: !411)
!416 = !{!417}
!417 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!418 = !{!116, !419, !454, !458, !461, !464, !465, !6, !106, !469, !476, !124, !480, !514, !517, !521, !524, !528, !533, !553, !562, !110, !565, !569}
!419 = !DISubprogram(name: "fputs_unlocked", scope: !212, file: !212, line: 662, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{!38, !6, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !423, file: !62, line: 51, baseType: !38, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !423, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !423, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !423, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !423, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !423, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !423, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !423, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !423, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !423, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !423, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !423, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !423, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !423, file: !62, line: 70, baseType: !422, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !423, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !423, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !423, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !423, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !423, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !423, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !423, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !423, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !423, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !423, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !423, file: !62, line: 93, baseType: !422, size: 64, offset: 1344)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !423, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !423, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !423, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !423, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!454 = !DISubprogram(name: "set_program_name", scope: !455, file: !455, line: 37, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!455 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!456 = !DISubroutineType(types: !457)
!457 = !{null, !6}
!458 = !DISubprogram(name: "setlocale", scope: !46, file: !46, line: 122, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!459 = !DISubroutineType(types: !460)
!460 = !{!14, !38, !6}
!461 = !DISubprogram(name: "bindtextdomain", scope: !117, file: !117, line: 86, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!462 = !DISubroutineType(types: !463)
!463 = !{!14, !6, !6}
!464 = !DISubprogram(name: "textdomain", scope: !117, file: !117, line: 82, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!465 = !DISubprogram(name: "atexit", scope: !16, file: !16, line: 595, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!466 = !DISubroutineType(types: !467)
!467 = !{!38, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!469 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !470, file: !470, line: 33, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!470 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !38, !20, !6, !6, !6, !131, !473, null}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !38}
!476 = !DISubprogram(name: "quote", scope: !477, file: !477, line: 44, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!477 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!478 = !DISubroutineType(types: !479)
!479 = !{!6, !6}
!480 = !DISubprogram(name: "read_utmp", scope: !402, file: !402, line: 215, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!481 = !DISubroutineType(types: !482)
!482 = !{!38, !6, !296, !483, !38}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !486, line: 55, size: 3072, elements: !487)
!486 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!487 = !{!488, !490, !492, !496, !497, !498, !499, !504, !506, !511, !513}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !485, file: !486, line: 57, baseType: !489, size: 16)
!489 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !485, file: !486, line: 58, baseType: !491, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !84, line: 154, baseType: !38)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !485, file: !486, line: 59, baseType: !493, size: 256, offset: 64)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !485, file: !486, line: 61, baseType: !329, size: 32, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !485, file: !486, line: 63, baseType: !493, size: 256, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !485, file: !486, line: 65, baseType: !372, size: 2048, offset: 608)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !485, file: !486, line: 67, baseType: !500, size: 32, offset: 2656)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !486, line: 42, size: 32, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !500, file: !486, line: 45, baseType: !489, size: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !500, file: !486, line: 46, baseType: !489, size: 16, offset: 16)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !485, file: !486, line: 74, baseType: !505, size: 32, offset: 2688)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !84, line: 41, baseType: !38)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !485, file: !486, line: 79, baseType: !507, size: 64, offset: 2720)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !486, line: 75, size: 64, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !507, file: !486, line: 77, baseType: !505, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !507, file: !486, line: 78, baseType: !505, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !485, file: !486, line: 84, baseType: !512, size: 128, offset: 2784)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 128, elements: !330)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !485, file: !486, line: 85, baseType: !113, size: 160, offset: 2912)
!514 = !DISubprogram(name: "quotearg_n_style_colon", scope: !121, file: !121, line: 397, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!515 = !DISubroutineType(types: !516)
!516 = !{!14, !38, !253, !6}
!517 = !DISubprogram(name: "c_strtod", scope: !518, file: !518, line: 40, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!518 = !DIFile(filename: "./lib/c-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !DISubroutineType(types: !520)
!520 = !{!19, !6, !20}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !522, line: 7, baseType: !523)
!522 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !84, line: 160, baseType: !85)
!524 = !DISubprogram(name: "rpl_fclose", scope: !525, file: !525, line: 672, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!525 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!526 = !DISubroutineType(types: !527)
!527 = !{!38, !422}
!528 = !DISubprogram(name: "time", scope: !529, file: !529, line: 75, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!529 = !DIFile(filename: "/usr/include/time.h", directory: "")
!530 = !DISubroutineType(types: !531)
!531 = !{!85, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!533 = !DISubprogram(name: "localtime", scope: !529, file: !529, line: 123, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !551}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !538, line: 7, size: 448, elements: !539)
!538 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !537, file: !538, line: 9, baseType: !38, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !537, file: !538, line: 10, baseType: !38, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !537, file: !538, line: 11, baseType: !38, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !537, file: !538, line: 12, baseType: !38, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !537, file: !538, line: 13, baseType: !38, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !537, file: !538, line: 14, baseType: !38, size: 32, offset: 160)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !537, file: !538, line: 15, baseType: !38, size: 32, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !537, file: !538, line: 16, baseType: !38, size: 32, offset: 224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !537, file: !538, line: 17, baseType: !38, size: 32, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !537, file: !538, line: 20, baseType: !85, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !537, file: !538, line: 21, baseType: !6, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!553 = !DISubprogram(name: "fprintftime", scope: !554, file: !554, line: 28, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!554 = !DIFile(filename: "./lib/fprintftime.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!555 = !DISubroutineType(types: !556)
!556 = !{!110, !422, !6, !557, !559, !38}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !561, line: 778, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./lib/time.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !DISubprogram(name: "dcngettext", scope: !117, file: !117, line: 73, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!563 = !DISubroutineType(types: !564)
!564 = !{!14, !6, !6, !6, !110, !38}
!565 = !DISubprogram(name: "getloadavg", scope: !16, file: !16, line: 1003, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!566 = !DISubroutineType(types: !567)
!567 = !{!38, !568, !38}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!569 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/fprintftime.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !{!108, !6, !573, !198, !38, !88, !569, !489, !34, !85, !110, !608, !609, !610, !628}
!573 = !DISubprogram(name: "fputc", scope: !212, file: !212, line: 521, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!574 = !DISubroutineType(types: !575)
!575 = !{!38, !38, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !577, file: !62, line: 51, baseType: !38, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !577, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !577, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !577, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !577, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !577, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !577, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !577, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !577, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !577, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !577, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !577, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !577, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !577, file: !62, line: 70, baseType: !576, size: 64, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !577, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !577, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !577, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !577, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !577, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !577, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !577, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !577, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !577, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !577, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !577, file: !62, line: 93, baseType: !576, size: 64, offset: 1344)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !577, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !577, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !577, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !577, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!608 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!609 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!610 = !DISubprogram(name: "strftime", scope: !529, file: !529, line: 88, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!611 = !DISubroutineType(types: !612)
!612 = !{!110, !14, !110, !6, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !538, line: 7, size: 448, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !615, file: !538, line: 9, baseType: !38, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !615, file: !538, line: 10, baseType: !38, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !615, file: !538, line: 11, baseType: !38, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !615, file: !538, line: 12, baseType: !38, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !615, file: !538, line: 13, baseType: !38, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !615, file: !538, line: 14, baseType: !38, size: 32, offset: 160)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !615, file: !538, line: 15, baseType: !38, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !615, file: !538, line: 16, baseType: !38, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !615, file: !538, line: 17, baseType: !38, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !615, file: !538, line: 20, baseType: !85, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !615, file: !538, line: 21, baseType: !6, size: 64, offset: 384)
!628 = !DISubprogram(name: "mktime_z", scope: !561, file: !561, line: 789, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!629 = !DISubroutineType(types: !630)
!630 = !{!85, !631, !641}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !633, line: 21, size: 128, elements: !634)
!633 = !DIFile(filename: "./lib/time-internal.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!634 = !{!635, !636, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !633, line: 25, baseType: !631, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !632, file: !633, line: 36, baseType: !8, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !632, file: !633, line: 48, baseType: !638, offset: 72)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: -1)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!643 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!644 = !{!645}
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !643, line: 40, baseType: !198, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!648 = !{!116, !649, !106}
!649 = !DISubprogram(name: "fputs_unlocked", scope: !212, file: !212, line: 662, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!650 = !DISubroutineType(types: !651)
!651 = !{!38, !6, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !653, file: !62, line: 51, baseType: !38, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !653, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !653, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !653, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !653, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !653, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !653, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !653, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !653, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !653, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !653, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !653, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !653, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !653, file: !62, line: 70, baseType: !652, size: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !653, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !653, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !653, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !653, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !653, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !653, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !653, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !653, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !653, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !653, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !653, file: !62, line: 93, baseType: !652, size: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !653, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !653, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !653, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !653, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !686, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!685 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!686 = !{!687}
!687 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !688, file: !288, line: 186, baseType: !198, size: 32, elements: !697)
!688 = distinct !DISubprogram(name: "x2nrealloc", scope: !288, file: !288, line: 174, type: !689, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!106, !106, !691, !108}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "p", arg: 1, scope: !688, file: !288, line: 174, type: !106)
!694 = !DILocalVariable(name: "pn", arg: 2, scope: !688, file: !288, line: 174, type: !691)
!695 = !DILocalVariable(name: "s", arg: 3, scope: !688, file: !288, line: 174, type: !108)
!696 = !DILocalVariable(name: "n", scope: !688, file: !288, line: 176, type: !108)
!697 = !{!698}
!698 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!699 = !{!108, !353, !350, !356, !14, !309, !106, !700, !703}
!700 = !DISubprogram(name: "xcalloc", scope: !288, file: !288, line: 57, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!701 = !DISubroutineType(types: !702)
!702 = !{!106, !110, !110}
!703 = !DISubprogram(name: "rpl_calloc", scope: !704, file: !704, line: 688, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!704 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!707 = !{!116, !124}
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!710 = !{!106}
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !713, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!713 = !{!714, !749, !750, !754}
!714 = !DISubprogram(name: "fileno", scope: !212, file: !212, line: 786, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!715 = !DISubroutineType(types: !716)
!716 = !{!38, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !718, file: !62, line: 51, baseType: !38, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !718, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !718, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !718, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !718, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !718, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !718, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !718, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !718, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !718, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !718, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !718, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !718, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !718, file: !62, line: 70, baseType: !717, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !718, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !718, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !718, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !718, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !718, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !718, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !718, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !718, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !718, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !718, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !718, file: !62, line: 93, baseType: !717, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !718, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !718, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !718, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !718, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!749 = !DISubprogram(name: "fclose", scope: !212, file: !212, line: 213, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!750 = !DISubprogram(name: "lseek", scope: !751, file: !751, line: 334, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!751 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!752 = !DISubroutineType(types: !753)
!753 = !{!85, !38, !85, !38}
!754 = !DISubprogram(name: "rpl_fflush", scope: !525, file: !525, line: 718, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!755 = distinct !DICompileUnit(language: DW_LANG_C99, file: !756, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!757 = !{!106, !758, !793}
!758 = !DISubprogram(name: "fflush", scope: !212, file: !212, line: 218, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!759 = !DISubroutineType(types: !760)
!760 = !{!38, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !762, file: !62, line: 51, baseType: !38, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !762, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !762, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !762, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !762, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !762, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !762, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !762, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !762, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !762, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !762, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !762, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !762, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !762, file: !62, line: 70, baseType: !761, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !762, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !762, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !762, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !762, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !762, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !762, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !762, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !762, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !762, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !762, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !762, file: !62, line: 93, baseType: !761, size: 64, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !762, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !762, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !762, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !762, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!793 = !DISubprogram(name: "rpl_fseeko", scope: !525, file: !525, line: 1034, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!794 = !DISubroutineType(types: !795)
!795 = !{!38, !761, !85, !38}
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!798 = !{!106, !799, !750, !834}
!799 = !DISubprogram(name: "fileno", scope: !212, file: !212, line: 786, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!800 = !DISubroutineType(types: !801)
!801 = !{!38, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !803, file: !62, line: 51, baseType: !38, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !803, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !803, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !803, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !803, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !803, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !803, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !803, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !803, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !803, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !803, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !803, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !803, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !803, file: !62, line: 70, baseType: !802, size: 64, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !803, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !803, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !803, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !803, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !803, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !803, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !803, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !803, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !803, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !803, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !803, file: !62, line: 93, baseType: !802, size: 64, offset: 1344)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !803, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !803, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !803, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !803, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!834 = !DISubprogram(name: "fseeko", scope: !212, file: !212, line: 707, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!835 = !DISubroutineType(types: !836)
!836 = !{!38, !802, !85, !38}
!837 = distinct !DICompileUnit(language: DW_LANG_C99, file: !838, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !839, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!839 = !{!840, !108, !852}
!840 = !DISubprogram(name: "mbrtowc", scope: !337, file: !337, line: 296, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!841 = !DISubroutineType(types: !842)
!842 = !{!110, !156, !6, !110, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 13, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !844, file: !321, line: 15, baseType: !38, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !844, file: !321, line: 20, baseType: !848, size: 32, offset: 32)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !321, line: 16, size: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !848, file: !321, line: 18, baseType: !198, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !848, file: !321, line: 19, baseType: !329, size: 32)
!852 = !DISubprogram(name: "hard_locale", scope: !853, file: !853, line: 26, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!853 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!854 = !DISubroutineType(types: !855)
!855 = !{!131, !38}
!856 = distinct !DICompileUnit(language: DW_LANG_C99, file: !857, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !858, retainedTypes: !866, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!858 = !{!401, !859}
!859 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !860, file: !288, line: 186, baseType: !198, size: 32, elements: !697)
!860 = distinct !DISubprogram(name: "x2nrealloc", scope: !288, file: !288, line: 174, type: !689, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DILocalVariable(name: "p", arg: 1, scope: !860, file: !288, line: 174, type: !106)
!863 = !DILocalVariable(name: "pn", arg: 2, scope: !860, file: !288, line: 174, type: !691)
!864 = !DILocalVariable(name: "s", arg: 3, scope: !860, file: !288, line: 174, type: !108)
!865 = !DILocalVariable(name: "n", scope: !860, file: !288, line: 176, type: !108)
!866 = !{!350, !14, !867, !871, !872, !106, !897, !898, !108, !353, !356}
!867 = !DISubprogram(name: "utmpxname", scope: !868, file: !868, line: 93, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!868 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!869 = !DISubroutineType(types: !870)
!870 = !{!38, !6}
!871 = !DISubprogram(name: "setutxent", scope: !868, file: !868, line: 53, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!872 = !DISubprogram(name: "getutxent", scope: !868, file: !868, line: 65, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!873 = !DISubroutineType(types: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !486, line: 55, size: 3072, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !889, !890, !895, !896}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !876, file: !486, line: 57, baseType: !489, size: 16)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !876, file: !486, line: 58, baseType: !491, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !876, file: !486, line: 59, baseType: !493, size: 256, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !876, file: !486, line: 61, baseType: !329, size: 32, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !876, file: !486, line: 63, baseType: !493, size: 256, offset: 352)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !876, file: !486, line: 65, baseType: !372, size: 2048, offset: 608)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !876, file: !486, line: 67, baseType: !885, size: 32, offset: 2656)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !486, line: 42, size: 32, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !885, file: !486, line: 45, baseType: !489, size: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !885, file: !486, line: 46, baseType: !489, size: 16, offset: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !876, file: !486, line: 74, baseType: !505, size: 32, offset: 2688)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !876, file: !486, line: 79, baseType: !891, size: 64, offset: 2720)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !486, line: 75, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !891, file: !486, line: 77, baseType: !505, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !891, file: !486, line: 78, baseType: !505, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !876, file: !486, line: 84, baseType: !512, size: 128, offset: 2784)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !876, file: !486, line: 85, baseType: !113, size: 160, offset: 2912)
!897 = !DISubprogram(name: "endutxent", scope: !868, file: !868, line: 59, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!898 = !DISubprogram(name: "kill", scope: !899, file: !899, line: 112, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!899 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!900 = !DISubroutineType(types: !901)
!901 = !{!38, !38, !38}
!902 = distinct !DICompileUnit(language: DW_LANG_C99, file: !903, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !904, retainedTypes: !908, globals: !937, splitDebugInlining: false, nameTableKind: None)
!903 = !DIFile(filename: "lib/time_rz.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!904 = !{!905}
!905 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !903, line: 50, baseType: !198, size: 32, elements: !906)
!906 = !{!907}
!907 = !DIEnumerator(name: "ABBR_SIZE_MIN", value: 119, isUnsigned: true)
!908 = !{!309, !909, !926, !927, !930, !931, !932, !933, !936, !14, !108}
!909 = !DISubprogram(name: "gmtime_r", scope: !529, file: !529, line: 128, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!910 = !DISubroutineType(types: !911)
!911 = !{!912, !551, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !538, line: 7, size: 448, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !913, file: !538, line: 9, baseType: !38, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !913, file: !538, line: 10, baseType: !38, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !913, file: !538, line: 11, baseType: !38, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !913, file: !538, line: 12, baseType: !38, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !913, file: !538, line: 13, baseType: !38, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !913, file: !538, line: 14, baseType: !38, size: 32, offset: 160)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !913, file: !538, line: 15, baseType: !38, size: 32, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !913, file: !538, line: 16, baseType: !38, size: 32, offset: 224)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !913, file: !538, line: 17, baseType: !38, size: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !913, file: !538, line: 20, baseType: !85, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !913, file: !538, line: 21, baseType: !6, size: 64, offset: 384)
!926 = !DISubprogram(name: "localtime_r", scope: !529, file: !529, line: 133, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!927 = !DISubprogram(name: "timegm", scope: !529, file: !529, line: 190, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!928 = !DISubroutineType(types: !929)
!929 = !{!85, !912}
!930 = !DISubprogram(name: "mktime", scope: !529, file: !529, line: 82, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!931 = !DISubprogram(name: "getenv", scope: !16, file: !16, line: 634, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!932 = !DISubprogram(name: "tzset", scope: !529, file: !529, line: 170, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!933 = !DISubprogram(name: "setenv", scope: !16, file: !16, line: 653, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!934 = !DISubroutineType(types: !935)
!935 = !{!38, !6, !6, !38}
!936 = !DISubprogram(name: "unsetenv", scope: !16, file: !16, line: 657, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!937 = !{!938}
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "local_tz", scope: !902, file: !903, line: 55, type: !940, isLocal: true, isDefinition: true)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !561, line: 778, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !633, line: 21, size: 128, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !943, file: !633, line: 25, baseType: !942, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !943, file: !633, line: 36, baseType: !8, size: 8, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !943, file: !633, line: 48, baseType: !638, offset: 72)
!948 = distinct !DICompileUnit(language: DW_LANG_C99, file: !949, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!950 = !{!951}
!951 = !DISubprogram(name: "rpl_fclose", scope: !525, file: !525, line: 672, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!952 = !DISubroutineType(types: !953)
!953 = !{!38, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !955, file: !62, line: 51, baseType: !38, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !955, file: !62, line: 54, baseType: !14, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !955, file: !62, line: 55, baseType: !14, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !955, file: !62, line: 56, baseType: !14, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !955, file: !62, line: 57, baseType: !14, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !955, file: !62, line: 58, baseType: !14, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !955, file: !62, line: 59, baseType: !14, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !955, file: !62, line: 60, baseType: !14, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !955, file: !62, line: 61, baseType: !14, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !955, file: !62, line: 64, baseType: !14, size: 64, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !955, file: !62, line: 65, baseType: !14, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !955, file: !62, line: 66, baseType: !14, size: 64, offset: 704)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !955, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !955, file: !62, line: 70, baseType: !954, size: 64, offset: 832)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !955, file: !62, line: 72, baseType: !38, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !955, file: !62, line: 73, baseType: !38, size: 32, offset: 928)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !955, file: !62, line: 74, baseType: !83, size: 64, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !955, file: !62, line: 77, baseType: !34, size: 16, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !955, file: !62, line: 78, baseType: !88, size: 8, offset: 1040)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !955, file: !62, line: 79, baseType: !90, size: 8, offset: 1048)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !955, file: !62, line: 81, baseType: !94, size: 64, offset: 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !955, file: !62, line: 89, baseType: !97, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !955, file: !62, line: 91, baseType: !99, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !955, file: !62, line: 92, baseType: !102, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !955, file: !62, line: 93, baseType: !954, size: 64, offset: 1344)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !955, file: !62, line: 94, baseType: !106, size: 64, offset: 1408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !955, file: !62, line: 95, baseType: !108, size: 64, offset: 1472)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !955, file: !62, line: 96, baseType: !38, size: 32, offset: 1536)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !955, file: !62, line: 98, baseType: !113, size: 160, offset: 1568)
!986 = distinct !DICompileUnit(language: DW_LANG_C99, file: !987, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !988, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!988 = !{!989}
!989 = !DISubprogram(name: "setlocale_null_r", scope: !990, file: !990, line: 64, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!990 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!991 = !DISubroutineType(types: !992)
!992 = !{!38, !38, !14, !110}
!993 = distinct !DICompileUnit(language: DW_LANG_C99, file: !994, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !995, retainedTypes: !1382, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!995 = !{!996}
!996 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !997, line: 41, baseType: !198, size: 32, elements: !998)
!997 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!999 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!1000 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!1001 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!1002 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!1003 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!1004 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!1005 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!1006 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!1007 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!1008 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!1009 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!1010 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!1011 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!1012 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!1013 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!1014 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!1015 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!1016 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!1017 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!1018 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!1019 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!1020 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!1021 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!1022 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!1023 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!1024 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!1025 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!1026 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!1027 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!1028 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!1029 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!1030 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!1031 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!1032 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!1033 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!1034 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!1035 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!1036 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!1037 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!1038 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!1039 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!1040 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!1041 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!1042 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!1043 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!1044 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!1045 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!1046 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!1047 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!1048 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1107 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1110 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1111 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1112 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1113 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1114 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1115 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1116 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1117 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1118 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1119 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1120 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1121 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1194 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1267 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1268 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1269 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1270 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1271 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1272 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1273 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1274 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1275 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1276 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1277 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1278 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1279 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1280 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1281 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1283 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1284 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1285 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1286 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1287 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1288 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1297 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1298 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1301 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1302 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1303 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1304 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1305 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1306 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1307 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1308 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1309 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1310 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1311 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1312 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1313 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1314 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1315 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1316 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1317 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1318 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1319 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1320 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1321 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1322 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1323 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1324 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1325 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1326 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1327 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1328 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1329 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1330 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1331 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1332 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1333 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1334 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1335 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1336 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1337 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1338 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1339 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1340 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1341 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1342 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1343 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1344 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1345 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1346 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1347 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1348 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1349 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1350 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1351 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1352 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1353 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1354 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1355 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1356 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1357 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1358 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1359 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1360 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1361 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1362 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1363 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1364 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1365 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1366 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1367 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1368 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1369 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1370 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1371 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1372 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1373 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1374 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1375 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1376 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1377 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1378 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1379 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1380 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1381 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1382 = !{!1383, !106}
!1383 = !DISubprogram(name: "nl_langinfo", scope: !997, file: !997, line: 661, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!14, !38}
!1386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1387, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1388, splitDebugInlining: false, nameTableKind: None)
!1387 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1388 = !{!106, !458}
!1389 = !{!"clang version 10.0.0 "}
!1390 = !{i32 7, !"Dwarf Version", i32 4}
!1391 = !{i32 2, !"Debug Info Version", i32 3}
!1392 = !{i32 1, !"wchar_size", i32 4}
!1393 = !{i32 7, !"PIC Level", i32 2}
!1394 = !{i32 7, !"PIE Level", i32 2}
!1395 = distinct !DISubprogram(name: "usage", scope: !399, file: !399, line: 193, type: !474, scopeLine: 194, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1396)
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "status", arg: 1, scope: !1395, file: !399, line: 193, type: !38)
!1398 = !DILocalVariable(name: "infomap", scope: !1399, file: !407, line: 636, type: !1411)
!1399 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !407, file: !407, line: 634, type: !456, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1400)
!1400 = !{!1401, !1398, !1402, !1403, !1410}
!1401 = !DILocalVariable(name: "program", arg: 1, scope: !1399, file: !407, line: 634, type: !6)
!1402 = !DILocalVariable(name: "node", scope: !1399, file: !407, line: 646, type: !6)
!1403 = !DILocalVariable(name: "map_prog", scope: !1399, file: !407, line: 647, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1399, file: !407, line: 636, size: 128, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1406, file: !407, line: 636, baseType: !6, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1406, file: !407, line: 636, baseType: !6, size: 64, offset: 64)
!1410 = !DILocalVariable(name: "lc_messages", scope: !1399, file: !407, line: 659, type: !6)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 896, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 7)
!1414 = !DILocation(line: 636, column: 67, scope: !1399, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 221, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !399, line: 198, column: 5)
!1417 = distinct !DILexicalBlock(scope: !1395, file: !399, line: 195, column: 7)
!1418 = !DILocation(line: 0, scope: !1395)
!1419 = !DILocation(line: 195, column: 14, scope: !1417)
!1420 = !DILocation(line: 195, column: 7, scope: !1395)
!1421 = !DILocation(line: 196, column: 5, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !399, line: 196, column: 5)
!1423 = !{!1424, !1424, i64 0}
!1424 = !{!"any pointer", !1425, i64 0}
!1425 = !{!"omnipotent char", !1426, i64 0}
!1426 = !{!"Simple C/C++ TBAA"}
!1427 = !DILocation(line: 199, column: 7, scope: !1416)
!1428 = !DILocation(line: 200, column: 7, scope: !1416)
!1429 = !DILocation(line: 209, column: 7, scope: !1416)
!1430 = !DILocation(line: 215, column: 7, scope: !1416)
!1431 = !DILocation(line: 219, column: 7, scope: !1416)
!1432 = !DILocation(line: 220, column: 7, scope: !1416)
!1433 = !DILocation(line: 0, scope: !1399, inlinedAt: !1415)
!1434 = !DILocation(line: 636, column: 3, scope: !1399, inlinedAt: !1415)
!1435 = !DILocation(line: 647, column: 36, scope: !1399, inlinedAt: !1415)
!1436 = !DILocation(line: 649, column: 3, scope: !1399, inlinedAt: !1415)
!1437 = !DILocation(line: 649, column: 33, scope: !1399, inlinedAt: !1415)
!1438 = !DILocation(line: 650, column: 13, scope: !1399, inlinedAt: !1415)
!1439 = !DILocation(line: 649, column: 20, scope: !1399, inlinedAt: !1415)
!1440 = !{!1441, !1424, i64 0}
!1441 = !{!"infomap", !1424, i64 0, !1424, i64 8}
!1442 = !DILocation(line: 649, column: 10, scope: !1399, inlinedAt: !1415)
!1443 = !DILocation(line: 649, column: 28, scope: !1399, inlinedAt: !1415)
!1444 = distinct !{!1444, !1436, !1438}
!1445 = !DILocation(line: 652, column: 17, scope: !1446, inlinedAt: !1415)
!1446 = distinct !DILexicalBlock(scope: !1399, file: !407, line: 652, column: 7)
!1447 = !{!1441, !1424, i64 8}
!1448 = !DILocation(line: 652, column: 7, scope: !1446, inlinedAt: !1415)
!1449 = !DILocation(line: 652, column: 7, scope: !1399, inlinedAt: !1415)
!1450 = !DILocation(line: 655, column: 3, scope: !1399, inlinedAt: !1415)
!1451 = !DILocation(line: 659, column: 29, scope: !1399, inlinedAt: !1415)
!1452 = !DILocation(line: 660, column: 7, scope: !1453, inlinedAt: !1415)
!1453 = distinct !DILexicalBlock(scope: !1399, file: !407, line: 660, column: 7)
!1454 = !DILocation(line: 660, column: 19, scope: !1453, inlinedAt: !1415)
!1455 = !DILocation(line: 660, column: 22, scope: !1453, inlinedAt: !1415)
!1456 = !DILocation(line: 660, column: 7, scope: !1399, inlinedAt: !1415)
!1457 = !DILocation(line: 666, column: 7, scope: !1458, inlinedAt: !1415)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !407, line: 661, column: 5)
!1459 = !DILocation(line: 668, column: 5, scope: !1458, inlinedAt: !1415)
!1460 = !DILocation(line: 669, column: 3, scope: !1399, inlinedAt: !1415)
!1461 = !DILocation(line: 671, column: 3, scope: !1399, inlinedAt: !1415)
!1462 = !DILocation(line: 673, column: 1, scope: !1399, inlinedAt: !1415)
!1463 = !DILocation(line: 223, column: 3, scope: !1395)
!1464 = distinct !DISubprogram(name: "main", scope: !399, file: !399, line: 227, type: !1465, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!38, !38, !20}
!1467 = !{!1468, !1469}
!1468 = !DILocalVariable(name: "argc", arg: 1, scope: !1464, file: !399, line: 227, type: !38)
!1469 = !DILocalVariable(name: "argv", arg: 2, scope: !1464, file: !399, line: 227, type: !20)
!1470 = !DILocation(line: 0, scope: !1464)
!1471 = !DILocation(line: 230, column: 21, scope: !1464)
!1472 = !DILocation(line: 230, column: 3, scope: !1464)
!1473 = !DILocation(line: 231, column: 3, scope: !1464)
!1474 = !DILocation(line: 232, column: 3, scope: !1464)
!1475 = !DILocation(line: 233, column: 3, scope: !1464)
!1476 = !DILocation(line: 235, column: 3, scope: !1464)
!1477 = !DILocation(line: 238, column: 36, scope: !1464)
!1478 = !DILocation(line: 237, column: 3, scope: !1464)
!1479 = !DILocation(line: 241, column: 18, scope: !1464)
!1480 = !{!1481, !1481, i64 0}
!1481 = !{!"int", !1425, i64 0}
!1482 = !DILocation(line: 241, column: 16, scope: !1464)
!1483 = !DILocation(line: 241, column: 3, scope: !1464)
!1484 = !DILocation(line: 244, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1464, file: !399, line: 242, column: 5)
!1486 = !DILocation(line: 245, column: 7, scope: !1485)
!1487 = !DILocation(line: 248, column: 15, scope: !1485)
!1488 = !DILocation(line: 248, column: 7, scope: !1485)
!1489 = !DILocation(line: 249, column: 7, scope: !1485)
!1490 = !DILocation(line: 252, column: 20, scope: !1485)
!1491 = !DILocation(line: 252, column: 55, scope: !1485)
!1492 = !DILocation(line: 252, column: 62, scope: !1485)
!1493 = !DILocation(line: 252, column: 50, scope: !1485)
!1494 = !DILocation(line: 252, column: 43, scope: !1485)
!1495 = !DILocation(line: 252, column: 7, scope: !1485)
!1496 = !DILocation(line: 253, column: 7, scope: !1485)
!1497 = !DILocation(line: 256, column: 3, scope: !1464)
!1498 = distinct !DISubprogram(name: "uptime", scope: !399, file: !399, line: 177, type: !1499, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !6, !38}
!1501 = !{!1502, !1503, !1504, !1505}
!1502 = !DILocalVariable(name: "filename", arg: 1, scope: !1498, file: !399, line: 177, type: !6)
!1503 = !DILocalVariable(name: "options", arg: 2, scope: !1498, file: !399, line: 177, type: !38)
!1504 = !DILocalVariable(name: "n_users", scope: !1498, file: !399, line: 179, type: !108)
!1505 = !DILocalVariable(name: "utmp_buf", scope: !1498, file: !399, line: 180, type: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !402, line: 146, baseType: !485)
!1508 = !DILocalVariable(name: "avg", scope: !1509, file: !399, line: 60, type: !1541)
!1509 = distinct !DISubprogram(name: "print_uptime", scope: !399, file: !399, line: 50, type: !1510, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1514)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !108, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1508, !1525, !1526, !1530, !1536, !1537, !1540}
!1515 = !DILocalVariable(name: "n", arg: 1, scope: !1509, file: !399, line: 50, type: !108)
!1516 = !DILocalVariable(name: "this", arg: 2, scope: !1509, file: !399, line: 50, type: !1512)
!1517 = !DILocalVariable(name: "entries", scope: !1509, file: !399, line: 52, type: !108)
!1518 = !DILocalVariable(name: "boot_time", scope: !1509, file: !399, line: 53, type: !521)
!1519 = !DILocalVariable(name: "time_now", scope: !1509, file: !399, line: 54, type: !521)
!1520 = !DILocalVariable(name: "uptime", scope: !1509, file: !399, line: 55, type: !521)
!1521 = !DILocalVariable(name: "updays", scope: !1509, file: !399, line: 56, type: !85)
!1522 = !DILocalVariable(name: "uphours", scope: !1509, file: !399, line: 57, type: !38)
!1523 = !DILocalVariable(name: "upmins", scope: !1509, file: !399, line: 58, type: !38)
!1524 = !DILocalVariable(name: "tmn", scope: !1509, file: !399, line: 59, type: !536)
!1525 = !DILocalVariable(name: "loads", scope: !1509, file: !399, line: 61, type: !38)
!1526 = !DILocalVariable(name: "fp", scope: !1509, file: !399, line: 63, type: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !423)
!1529 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1530 = !DILocalVariable(name: "buf", scope: !1531, file: !399, line: 68, type: !1533)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !399, line: 67, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 66, column: 7)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 65536, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 8192)
!1536 = !DILocalVariable(name: "b", scope: !1531, file: !399, line: 69, type: !14)
!1537 = !DILocalVariable(name: "end_ptr", scope: !1538, file: !399, line: 72, type: !14)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !399, line: 71, column: 9)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !399, line: 70, column: 11)
!1540 = !DILocalVariable(name: "upsecs", scope: !1538, file: !399, line: 73, type: !19)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, elements: !204)
!1542 = !DILocation(line: 60, column: 10, scope: !1509, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 187, column: 3, scope: !1498)
!1544 = !DILocation(line: 68, column: 12, scope: !1531, inlinedAt: !1543)
!1545 = !DILocation(line: 0, scope: !1498)
!1546 = !DILocation(line: 179, column: 3, scope: !1498)
!1547 = !DILocation(line: 180, column: 3, scope: !1498)
!1548 = !DILocation(line: 180, column: 16, scope: !1498)
!1549 = !DILocation(line: 183, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1498, file: !399, line: 183, column: 7)
!1551 = !DILocation(line: 183, column: 58, scope: !1550)
!1552 = !DILocation(line: 183, column: 7, scope: !1498)
!1553 = !DILocation(line: 184, column: 5, scope: !1550)
!1554 = !DILocation(line: 187, column: 17, scope: !1498)
!1555 = !{!1556, !1556, i64 0}
!1556 = !{!"long", !1425, i64 0}
!1557 = !DILocation(line: 187, column: 26, scope: !1498)
!1558 = !DILocation(line: 0, scope: !1509, inlinedAt: !1543)
!1559 = !DILocation(line: 54, column: 3, scope: !1509, inlinedAt: !1543)
!1560 = !DILocation(line: 60, column: 3, scope: !1509, inlinedAt: !1543)
!1561 = !DILocation(line: 65, column: 8, scope: !1509, inlinedAt: !1543)
!1562 = !DILocation(line: 66, column: 10, scope: !1532, inlinedAt: !1543)
!1563 = !DILocation(line: 66, column: 7, scope: !1509, inlinedAt: !1543)
!1564 = !DILocation(line: 68, column: 7, scope: !1531, inlinedAt: !1543)
!1565 = !DILocation(line: 69, column: 17, scope: !1531, inlinedAt: !1543)
!1566 = !DILocation(line: 0, scope: !1531, inlinedAt: !1543)
!1567 = !DILocation(line: 70, column: 13, scope: !1539, inlinedAt: !1543)
!1568 = !DILocation(line: 70, column: 11, scope: !1531, inlinedAt: !1543)
!1569 = !DILocation(line: 72, column: 11, scope: !1538, inlinedAt: !1543)
!1570 = !DILocation(line: 0, scope: !1538, inlinedAt: !1543)
!1571 = !DILocation(line: 73, column: 27, scope: !1538, inlinedAt: !1543)
!1572 = !DILocation(line: 74, column: 22, scope: !1573, inlinedAt: !1543)
!1573 = distinct !DILexicalBlock(scope: !1538, file: !399, line: 74, column: 15)
!1574 = !DILocation(line: 74, column: 19, scope: !1573, inlinedAt: !1543)
!1575 = !DILocation(line: 74, column: 15, scope: !1538, inlinedAt: !1543)
!1576 = !DILocation(line: 75, column: 25, scope: !1573, inlinedAt: !1543)
!1577 = !DILocation(line: 75, column: 45, scope: !1573, inlinedAt: !1543)
!1578 = !DILocation(line: 75, column: 35, scope: !1573, inlinedAt: !1543)
!1579 = !DILocation(line: 75, column: 22, scope: !1573, inlinedAt: !1543)
!1580 = !DILocation(line: 75, column: 13, scope: !1573, inlinedAt: !1543)
!1581 = !DILocation(line: 77, column: 9, scope: !1539, inlinedAt: !1543)
!1582 = !DILocation(line: 77, column: 9, scope: !1538, inlinedAt: !1543)
!1583 = !DILocation(line: 79, column: 7, scope: !1531, inlinedAt: !1543)
!1584 = !DILocation(line: 80, column: 5, scope: !1532, inlinedAt: !1543)
!1585 = !DILocation(line: 80, column: 5, scope: !1531, inlinedAt: !1543)
!1586 = !DILocation(line: 108, column: 3, scope: !1509, inlinedAt: !1543)
!1587 = !DILocation(line: 110, column: 18, scope: !1588, inlinedAt: !1543)
!1588 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 109, column: 5)
!1589 = !{!1425, !1425, i64 0}
!1590 = !DILocation(line: 0, scope: !1588, inlinedAt: !1543)
!1591 = !{!1592, !1593, i64 0}
!1592 = !{!"utmpx", !1593, i64 0, !1481, i64 4, !1425, i64 8, !1425, i64 40, !1425, i64 44, !1425, i64 76, !1594, i64 332, !1481, i64 336, !1595, i64 340, !1425, i64 348, !1425, i64 364}
!1593 = !{!"short", !1425, i64 0}
!1594 = !{!"__exit_status", !1593, i64 0, !1593, i64 2}
!1595 = !{!"", !1481, i64 0, !1481, i64 4}
!1596 = !DILocation(line: 110, column: 15, scope: !1588, inlinedAt: !1543)
!1597 = !DILocation(line: 111, column: 11, scope: !1598, inlinedAt: !1543)
!1598 = distinct !DILexicalBlock(scope: !1588, file: !399, line: 111, column: 11)
!1599 = !DILocation(line: 111, column: 11, scope: !1588, inlinedAt: !1543)
!1600 = !DILocation(line: 112, column: 21, scope: !1598, inlinedAt: !1543)
!1601 = !{!1592, !1481, i64 340}
!1602 = !DILocation(line: 112, column: 9, scope: !1598, inlinedAt: !1543)
!1603 = !DILocation(line: 120, column: 14, scope: !1509, inlinedAt: !1543)
!1604 = !DILocation(line: 120, column: 12, scope: !1509, inlinedAt: !1543)
!1605 = !DILocation(line: 122, column: 14, scope: !1606, inlinedAt: !1543)
!1606 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 122, column: 7)
!1607 = !DILocation(line: 122, column: 7, scope: !1509, inlinedAt: !1543)
!1608 = !DILocation(line: 125, column: 21, scope: !1609, inlinedAt: !1543)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !399, line: 125, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !399, line: 124, column: 5)
!1611 = !DILocation(line: 125, column: 11, scope: !1610, inlinedAt: !1543)
!1612 = !DILocation(line: 126, column: 9, scope: !1609, inlinedAt: !1543)
!1613 = !DILocation(line: 127, column: 25, scope: !1610, inlinedAt: !1543)
!1614 = !DILocation(line: 128, column: 5, scope: !1610, inlinedAt: !1543)
!1615 = !DILocation(line: 129, column: 19, scope: !1509, inlinedAt: !1543)
!1616 = !DILocation(line: 130, column: 21, scope: !1509, inlinedAt: !1543)
!1617 = !DILocation(line: 130, column: 41, scope: !1509, inlinedAt: !1543)
!1618 = !DILocation(line: 130, column: 13, scope: !1509, inlinedAt: !1543)
!1619 = !DILocation(line: 131, column: 41, scope: !1509, inlinedAt: !1543)
!1620 = !DILocation(line: 131, column: 39, scope: !1509, inlinedAt: !1543)
!1621 = !DILocation(line: 131, column: 59, scope: !1509, inlinedAt: !1543)
!1622 = !DILocation(line: 131, column: 12, scope: !1509, inlinedAt: !1543)
!1623 = !DILocation(line: 132, column: 9, scope: !1509, inlinedAt: !1543)
!1624 = !DILocation(line: 135, column: 7, scope: !1625, inlinedAt: !1543)
!1625 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 135, column: 7)
!1626 = !DILocation(line: 135, column: 7, scope: !1509, inlinedAt: !1543)
!1627 = !DILocation(line: 137, column: 18, scope: !1625, inlinedAt: !1543)
!1628 = !DILocation(line: 137, column: 26, scope: !1625, inlinedAt: !1543)
!1629 = !DILocation(line: 137, column: 5, scope: !1625, inlinedAt: !1543)
!1630 = !DILocation(line: 139, column: 5, scope: !1625, inlinedAt: !1543)
!1631 = !DILocation(line: 140, column: 14, scope: !1632, inlinedAt: !1543)
!1632 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 140, column: 7)
!1633 = !DILocation(line: 140, column: 7, scope: !1509, inlinedAt: !1543)
!1634 = !DILocation(line: 141, column: 5, scope: !1632, inlinedAt: !1543)
!1635 = !DILocation(line: 144, column: 13, scope: !1636, inlinedAt: !1543)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !399, line: 144, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !399, line: 143, column: 5)
!1638 = !DILocation(line: 144, column: 11, scope: !1637, inlinedAt: !1543)
!1639 = !DILocation(line: 145, column: 9, scope: !1636, inlinedAt: !1543)
!1640 = !DILocation(line: 150, column: 9, scope: !1636, inlinedAt: !1543)
!1641 = !DILocation(line: 152, column: 3, scope: !1509, inlinedAt: !1543)
!1642 = !DILocation(line: 155, column: 23, scope: !1509, inlinedAt: !1543)
!1643 = !DILocation(line: 155, column: 11, scope: !1509, inlinedAt: !1543)
!1644 = !DILocation(line: 157, column: 13, scope: !1645, inlinedAt: !1543)
!1645 = distinct !DILexicalBlock(scope: !1509, file: !399, line: 157, column: 7)
!1646 = !DILocation(line: 157, column: 7, scope: !1509, inlinedAt: !1543)
!1647 = !DILocalVariable(name: "__c", arg: 1, scope: !1648, file: !1649, line: 108, type: !38)
!1648 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1649, file: !1649, line: 108, type: !1650, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1652)
!1649 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!38, !38}
!1652 = !{!1647}
!1653 = !DILocation(line: 0, scope: !1648, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 158, column: 5, scope: !1645, inlinedAt: !1543)
!1655 = !DILocation(line: 110, column: 10, scope: !1648, inlinedAt: !1654)
!1656 = !{!1657, !1424, i64 40}
!1657 = !{!"_IO_FILE", !1481, i64 0, !1424, i64 8, !1424, i64 16, !1424, i64 24, !1424, i64 32, !1424, i64 40, !1424, i64 48, !1424, i64 56, !1424, i64 64, !1424, i64 72, !1424, i64 80, !1424, i64 88, !1424, i64 96, !1424, i64 104, !1481, i64 112, !1481, i64 116, !1556, i64 120, !1593, i64 128, !1425, i64 130, !1425, i64 131, !1424, i64 136, !1556, i64 144, !1424, i64 152, !1424, i64 160, !1424, i64 168, !1424, i64 176, !1556, i64 184, !1481, i64 192, !1425, i64 196}
!1658 = !{!1657, !1424, i64 48}
!1659 = !{!"branch_weights", i32 2000, i32 1}
!1660 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1661 = !DILocation(line: 161, column: 17, scope: !1662, inlinedAt: !1543)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !399, line: 161, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1645, file: !399, line: 160, column: 5)
!1664 = !DILocation(line: 161, column: 11, scope: !1663, inlinedAt: !1543)
!1665 = !DILocation(line: 162, column: 9, scope: !1662, inlinedAt: !1543)
!1666 = !{!1667, !1667, i64 0}
!1667 = !{!"double", !1425, i64 0}
!1668 = !DILocation(line: 163, column: 17, scope: !1669, inlinedAt: !1543)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !399, line: 163, column: 11)
!1670 = !DILocation(line: 163, column: 11, scope: !1663, inlinedAt: !1543)
!1671 = !DILocation(line: 164, column: 9, scope: !1669, inlinedAt: !1543)
!1672 = !DILocation(line: 165, column: 17, scope: !1673, inlinedAt: !1543)
!1673 = distinct !DILexicalBlock(scope: !1663, file: !399, line: 165, column: 11)
!1674 = !DILocation(line: 165, column: 11, scope: !1663, inlinedAt: !1543)
!1675 = !DILocation(line: 166, column: 9, scope: !1673, inlinedAt: !1543)
!1676 = !DILocation(line: 0, scope: !1648, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 168, column: 9, scope: !1678, inlinedAt: !1543)
!1678 = distinct !DILexicalBlock(scope: !1663, file: !399, line: 167, column: 11)
!1679 = !DILocation(line: 110, column: 10, scope: !1648, inlinedAt: !1677)
!1680 = !DILocation(line: 170, column: 1, scope: !1509, inlinedAt: !1543)
!1681 = !DILocation(line: 190, column: 1, scope: !1498)
!1682 = !DILocation(line: 113, column: 7, scope: !1588, inlinedAt: !1543)
!1683 = distinct !{!1683, !1586, !1684}
!1684 = !DILocation(line: 114, column: 5, scope: !1509, inlinedAt: !1543)
!1685 = distinct !DISubprogram(name: "c_strtod", scope: !12, file: !12, line: 65, type: !519, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1686)
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "nptr", arg: 1, scope: !1685, file: !12, line: 65, type: !6)
!1688 = !DILocalVariable(name: "endptr", arg: 2, scope: !1685, file: !12, line: 65, type: !20)
!1689 = !DILocalVariable(name: "r", scope: !1685, file: !12, line: 67, type: !19)
!1690 = !DILocalVariable(name: "locale", scope: !1685, file: !12, line: 73, type: !42)
!1691 = !DILocation(line: 0, scope: !1685)
!1692 = !DILocation(line: 57, column: 8, scope: !1693, inlinedAt: !1697)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !12, line: 57, column: 7)
!1694 = distinct !DISubprogram(name: "c_locale", scope: !12, file: !12, line: 55, type: !1695, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !4)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!42}
!1697 = distinct !DILocation(line: 73, column: 21, scope: !1685)
!1698 = !DILocation(line: 57, column: 7, scope: !1694, inlinedAt: !1697)
!1699 = !DILocation(line: 58, column: 22, scope: !1693, inlinedAt: !1697)
!1700 = !DILocation(line: 58, column: 20, scope: !1693, inlinedAt: !1697)
!1701 = !DILocation(line: 58, column: 5, scope: !1693, inlinedAt: !1697)
!1702 = !DILocation(line: 59, column: 10, scope: !1694, inlinedAt: !1697)
!1703 = !DILocation(line: 74, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1685, file: !12, line: 74, column: 7)
!1705 = !DILocation(line: 74, column: 7, scope: !1685)
!1706 = !DILocation(line: 76, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !12, line: 76, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !12, line: 75, column: 5)
!1709 = !DILocation(line: 76, column: 11, scope: !1708)
!1710 = !DILocation(line: 77, column: 17, scope: !1707)
!1711 = !DILocation(line: 77, column: 9, scope: !1707)
!1712 = !DILocation(line: 83, column: 7, scope: !1685)
!1713 = !DILocation(line: 134, column: 3, scope: !1685)
!1714 = !DILocation(line: 135, column: 1, scope: !1685)
!1715 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !54, file: !54, line: 51, type: !456, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1716)
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "file", arg: 1, scope: !1715, file: !54, line: 51, type: !6)
!1718 = !DILocation(line: 0, scope: !1715)
!1719 = !DILocation(line: 53, column: 13, scope: !1715)
!1720 = !DILocation(line: 54, column: 1, scope: !1715)
!1721 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !54, file: !54, line: 88, type: !1722, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !131}
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "ignore", arg: 1, scope: !1721, file: !54, line: 88, type: !131)
!1726 = !DILocation(line: 0, scope: !1721)
!1727 = !DILocation(line: 90, column: 16, scope: !1721)
!1728 = !{!1729, !1729, i64 0}
!1729 = !{!"_Bool", !1425, i64 0}
!1730 = !DILocation(line: 91, column: 1, scope: !1721)
!1731 = distinct !DISubprogram(name: "close_stdout", scope: !54, file: !54, line: 117, type: !354, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1732)
!1732 = !{!1733}
!1733 = !DILocalVariable(name: "write_error", scope: !1734, file: !54, line: 122, type: !6)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !54, line: 121, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !54, line: 119, column: 7)
!1736 = !DILocation(line: 119, column: 21, scope: !1735)
!1737 = !DILocation(line: 119, column: 7, scope: !1735)
!1738 = !DILocation(line: 119, column: 29, scope: !1735)
!1739 = !DILocation(line: 120, column: 7, scope: !1735)
!1740 = !DILocation(line: 120, column: 12, scope: !1735)
!1741 = !{i8 0, i8 2}
!1742 = !DILocation(line: 120, column: 25, scope: !1735)
!1743 = !DILocation(line: 120, column: 28, scope: !1735)
!1744 = !DILocation(line: 120, column: 34, scope: !1735)
!1745 = !DILocation(line: 119, column: 7, scope: !1731)
!1746 = !DILocation(line: 122, column: 33, scope: !1734)
!1747 = !DILocation(line: 0, scope: !1734)
!1748 = !DILocation(line: 123, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1734, file: !54, line: 123, column: 11)
!1750 = !DILocation(line: 0, scope: !1749)
!1751 = !DILocation(line: 123, column: 11, scope: !1734)
!1752 = !DILocation(line: 124, column: 36, scope: !1749)
!1753 = !DILocation(line: 124, column: 9, scope: !1749)
!1754 = !DILocation(line: 127, column: 9, scope: !1749)
!1755 = !DILocation(line: 129, column: 14, scope: !1734)
!1756 = !DILocation(line: 129, column: 7, scope: !1734)
!1757 = !DILocation(line: 134, column: 42, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1731, file: !54, line: 134, column: 7)
!1759 = !DILocation(line: 134, column: 28, scope: !1758)
!1760 = !DILocation(line: 134, column: 50, scope: !1758)
!1761 = !DILocation(line: 134, column: 7, scope: !1731)
!1762 = !DILocation(line: 135, column: 12, scope: !1758)
!1763 = !DILocation(line: 135, column: 5, scope: !1758)
!1764 = !DILocation(line: 136, column: 1, scope: !1731)
!1765 = distinct !DISubprogram(name: "fprintftime", scope: !1766, file: !1766, line: 429, type: !1767, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1772)
!1766 = !DIFile(filename: "./lib/nstrftime.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!108, !1769, !6, !613, !1771, !38}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !577)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !561, line: 778, baseType: !631)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778}
!1773 = !DILocalVariable(name: "s", arg: 1, scope: !1765, file: !1766, line: 429, type: !1769)
!1774 = !DILocalVariable(name: "format", arg: 2, scope: !1765, file: !1766, line: 430, type: !6)
!1775 = !DILocalVariable(name: "tp", arg: 3, scope: !1765, file: !1766, line: 431, type: !613)
!1776 = !DILocalVariable(name: "tz", arg: 4, scope: !1765, file: !1766, line: 431, type: !1771)
!1777 = !DILocalVariable(name: "ns", arg: 5, scope: !1765, file: !1766, line: 431, type: !38)
!1778 = !DILocalVariable(name: "tzset_called", scope: !1765, file: !1766, line: 433, type: !131)
!1779 = !DILocation(line: 0, scope: !1765)
!1780 = !DILocation(line: 434, column: 10, scope: !1765)
!1781 = !DILocation(line: 434, column: 3, scope: !1765)
!1782 = distinct !DISubprogram(name: "__strftime_internal", scope: !1766, file: !1766, line: 446, type: !1783, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1786)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!108, !1769, !6, !613, !131, !38, !38, !1785, !1771, !38}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1829, !1830, !1831, !1836, !1839, !1841, !1844, !1845, !1846, !1851, !1854, !1856, !1858, !1860, !1861, !1862, !1867, !1870, !1872, !1877, !1878, !1882, !1883, !1886, !1887, !1888, !1893, !1896, !1898, !1900, !1901, !1902, !1904, !1905, !1906, !1907, !1914, !1916, !1917, !1918, !1923, !1926, !1928, !1930, !1931, !1932, !1937, !1940, !1942, !1944, !1945, !1946, !1948, !1950, !1951, !1952, !1957, !1960, !1962, !1964, !1965, !1966, !1971, !1974, !1976, !1978, !1979, !1980, !1985, !1988, !1990, !1992, !1993, !1995, !1997, !1998, !1999, !2004, !2007, !2009, !2011, !2012, !2013, !2016, !2019, !2021, !2023, !2024, !2025, !2030, !2033, !2035, !2037, !2038, !2039, !2040, !2042, !2044, !2045, !2046, !2051, !2054, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2070, !2071}
!1787 = !DILocalVariable(name: "s", arg: 1, scope: !1782, file: !1766, line: 446, type: !1769)
!1788 = !DILocalVariable(name: "format", arg: 2, scope: !1782, file: !1766, line: 447, type: !6)
!1789 = !DILocalVariable(name: "tp", arg: 3, scope: !1782, file: !1766, line: 448, type: !613)
!1790 = !DILocalVariable(name: "upcase", arg: 4, scope: !1782, file: !1766, line: 448, type: !131)
!1791 = !DILocalVariable(name: "yr_spec", arg: 5, scope: !1782, file: !1766, line: 449, type: !38)
!1792 = !DILocalVariable(name: "width", arg: 6, scope: !1782, file: !1766, line: 449, type: !38)
!1793 = !DILocalVariable(name: "tzset_called", arg: 7, scope: !1782, file: !1766, line: 449, type: !1785)
!1794 = !DILocalVariable(name: "tz", arg: 8, scope: !1782, file: !1766, line: 450, type: !1771)
!1795 = !DILocalVariable(name: "ns", arg: 9, scope: !1782, file: !1766, line: 450, type: !38)
!1796 = !DILocalVariable(name: "maxsize", scope: !1782, file: !1766, line: 456, type: !108)
!1797 = !DILocalVariable(name: "hour12", scope: !1782, file: !1766, line: 459, type: !38)
!1798 = !DILocalVariable(name: "zone", scope: !1782, file: !1766, line: 497, type: !6)
!1799 = !DILocalVariable(name: "i", scope: !1782, file: !1766, line: 498, type: !108)
!1800 = !DILocalVariable(name: "p", scope: !1782, file: !1766, line: 499, type: !1769)
!1801 = !DILocalVariable(name: "f", scope: !1782, file: !1766, line: 500, type: !6)
!1802 = !DILocalVariable(name: "pad", scope: !1803, file: !1766, line: 563, type: !38)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1766, line: 562, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !1766, line: 561, column: 3)
!1805 = distinct !DILexicalBlock(scope: !1782, file: !1766, line: 561, column: 3)
!1806 = !DILocalVariable(name: "modifier", scope: !1803, file: !1766, line: 564, type: !38)
!1807 = !DILocalVariable(name: "digits", scope: !1803, file: !1766, line: 565, type: !38)
!1808 = !DILocalVariable(name: "number_value", scope: !1803, file: !1766, line: 566, type: !38)
!1809 = !DILocalVariable(name: "u_number_value", scope: !1803, file: !1766, line: 567, type: !198)
!1810 = !DILocalVariable(name: "negative_number", scope: !1803, file: !1766, line: 568, type: !131)
!1811 = !DILocalVariable(name: "always_output_a_sign", scope: !1803, file: !1766, line: 569, type: !131)
!1812 = !DILocalVariable(name: "tz_colon_mask", scope: !1803, file: !1766, line: 570, type: !38)
!1813 = !DILocalVariable(name: "subfmt", scope: !1803, file: !1766, line: 571, type: !6)
!1814 = !DILocalVariable(name: "bufp", scope: !1803, file: !1766, line: 572, type: !14)
!1815 = !DILocalVariable(name: "buf", scope: !1803, file: !1766, line: 573, type: !1816)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 184, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 23)
!1819 = !DILocalVariable(name: "to_lowcase", scope: !1803, file: !1766, line: 578, type: !131)
!1820 = !DILocalVariable(name: "to_uppcase", scope: !1803, file: !1766, line: 579, type: !131)
!1821 = !DILocalVariable(name: "colons", scope: !1803, file: !1766, line: 580, type: !108)
!1822 = !DILocalVariable(name: "change_case", scope: !1803, file: !1766, line: 581, type: !131)
!1823 = !DILocalVariable(name: "format_char", scope: !1803, file: !1766, line: 582, type: !38)
!1824 = !DILocalVariable(name: "subwidth", scope: !1803, file: !1766, line: 583, type: !38)
!1825 = !DILocalVariable(name: "_n", scope: !1826, file: !1766, line: 667, type: !108)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !1766, line: 667, column: 11)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !1766, line: 666, column: 9)
!1828 = distinct !DILexicalBlock(scope: !1803, file: !1766, line: 665, column: 11)
!1829 = !DILocalVariable(name: "_w", scope: !1826, file: !1766, line: 667, type: !108)
!1830 = !DILocalVariable(name: "_incr", scope: !1826, file: !1766, line: 667, type: !108)
!1831 = !DILocalVariable(name: "_delta", scope: !1832, file: !1766, line: 667, type: !108)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !1766, line: 667, column: 11)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1766, line: 667, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1766, line: 667, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !1766, line: 667, column: 11)
!1836 = !DILocalVariable(name: "_i", scope: !1837, file: !1766, line: 667, type: !108)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !1766, line: 667, column: 11)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !1766, line: 667, column: 11)
!1839 = !DILocalVariable(name: "_i", scope: !1840, file: !1766, line: 667, type: !108)
!1840 = distinct !DILexicalBlock(scope: !1838, file: !1766, line: 667, column: 11)
!1841 = !DILocalVariable(name: "_n", scope: !1842, file: !1766, line: 776, type: !108)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 776, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1803, file: !1766, line: 729, column: 9)
!1844 = !DILocalVariable(name: "_w", scope: !1842, file: !1766, line: 776, type: !108)
!1845 = !DILocalVariable(name: "_incr", scope: !1842, file: !1766, line: 776, type: !108)
!1846 = !DILocalVariable(name: "_delta", scope: !1847, file: !1766, line: 776, type: !108)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !1766, line: 776, column: 11)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1766, line: 776, column: 11)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !1766, line: 776, column: 11)
!1850 = distinct !DILexicalBlock(scope: !1842, file: !1766, line: 776, column: 11)
!1851 = !DILocalVariable(name: "_i", scope: !1852, file: !1766, line: 776, type: !108)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1766, line: 776, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !1766, line: 776, column: 11)
!1854 = !DILocalVariable(name: "_i", scope: !1855, file: !1766, line: 776, type: !108)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !1766, line: 776, column: 11)
!1856 = !DILocalVariable(name: "len", scope: !1857, file: !1766, line: 864, type: !108)
!1857 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 863, column: 11)
!1858 = !DILocalVariable(name: "_n", scope: !1859, file: !1766, line: 868, type: !108)
!1859 = distinct !DILexicalBlock(scope: !1857, file: !1766, line: 868, column: 13)
!1860 = !DILocalVariable(name: "_w", scope: !1859, file: !1766, line: 868, type: !108)
!1861 = !DILocalVariable(name: "_incr", scope: !1859, file: !1766, line: 868, type: !108)
!1862 = !DILocalVariable(name: "_delta", scope: !1863, file: !1766, line: 868, type: !108)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1766, line: 868, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !1766, line: 868, column: 13)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !1766, line: 868, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !1766, line: 868, column: 13)
!1867 = !DILocalVariable(name: "_i", scope: !1868, file: !1766, line: 868, type: !108)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1766, line: 868, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1863, file: !1766, line: 868, column: 13)
!1870 = !DILocalVariable(name: "_i", scope: !1871, file: !1766, line: 868, type: !108)
!1871 = distinct !DILexicalBlock(scope: !1869, file: !1766, line: 868, column: 13)
!1872 = !DILocalVariable(name: "ufmt", scope: !1873, file: !1766, line: 881, type: !1874)
!1873 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 878, column: 11)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40, elements: !1875)
!1875 = !{!1876}
!1876 = !DISubrange(count: 5)
!1877 = !DILocalVariable(name: "u", scope: !1873, file: !1766, line: 882, type: !14)
!1878 = !DILocalVariable(name: "ubuf", scope: !1873, file: !1766, line: 883, type: !1879)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 1024)
!1882 = !DILocalVariable(name: "len", scope: !1873, file: !1766, line: 884, type: !108)
!1883 = !DILocalVariable(name: "_n", scope: !1884, file: !1766, line: 903, type: !108)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !1766, line: 903, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1873, file: !1766, line: 902, column: 17)
!1886 = !DILocalVariable(name: "_w", scope: !1884, file: !1766, line: 903, type: !108)
!1887 = !DILocalVariable(name: "_incr", scope: !1884, file: !1766, line: 903, type: !108)
!1888 = !DILocalVariable(name: "_delta", scope: !1889, file: !1766, line: 903, type: !108)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !1766, line: 903, column: 15)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !1766, line: 903, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1766, line: 903, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1884, file: !1766, line: 903, column: 15)
!1893 = !DILocalVariable(name: "_i", scope: !1894, file: !1766, line: 903, type: !108)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !1766, line: 903, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !1766, line: 903, column: 15)
!1896 = !DILocalVariable(name: "_i", scope: !1897, file: !1766, line: 903, type: !108)
!1897 = distinct !DILexicalBlock(scope: !1895, file: !1766, line: 903, column: 15)
!1898 = !DILocalVariable(name: "negative_year", scope: !1899, file: !1766, line: 930, type: !131)
!1899 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 929, column: 11)
!1900 = !DILocalVariable(name: "zero_thru_1899", scope: !1899, file: !1766, line: 931, type: !131)
!1901 = !DILocalVariable(name: "century", scope: !1899, file: !1766, line: 932, type: !38)
!1902 = !DILocalVariable(name: "sign_char", scope: !1903, file: !1766, line: 1049, type: !8)
!1903 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1048, column: 11)
!1904 = !DILocalVariable(name: "numlen", scope: !1903, file: !1766, line: 1052, type: !38)
!1905 = !DILocalVariable(name: "shortage", scope: !1903, file: !1766, line: 1053, type: !38)
!1906 = !DILocalVariable(name: "padding", scope: !1903, file: !1766, line: 1054, type: !38)
!1907 = !DILocalVariable(name: "_i", scope: !1908, file: !1766, line: 1061, type: !108)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1766, line: 1061, column: 23)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !1766, line: 1060, column: 25)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1766, line: 1059, column: 19)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1766, line: 1058, column: 21)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !1766, line: 1057, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1903, file: !1766, line: 1056, column: 17)
!1914 = !DILocalVariable(name: "_n", scope: !1915, file: !1766, line: 1065, type: !108)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !1766, line: 1065, column: 17)
!1916 = !DILocalVariable(name: "_w", scope: !1915, file: !1766, line: 1065, type: !108)
!1917 = !DILocalVariable(name: "_incr", scope: !1915, file: !1766, line: 1065, type: !108)
!1918 = !DILocalVariable(name: "_delta", scope: !1919, file: !1766, line: 1065, type: !108)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1766, line: 1065, column: 17)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1766, line: 1065, column: 17)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !1766, line: 1065, column: 17)
!1922 = distinct !DILexicalBlock(scope: !1915, file: !1766, line: 1065, column: 17)
!1923 = !DILocalVariable(name: "_i", scope: !1924, file: !1766, line: 1065, type: !108)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !1766, line: 1065, column: 17)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !1766, line: 1065, column: 17)
!1926 = !DILocalVariable(name: "_i", scope: !1927, file: !1766, line: 1065, type: !108)
!1927 = distinct !DILexicalBlock(scope: !1925, file: !1766, line: 1065, column: 17)
!1928 = !DILocalVariable(name: "_n", scope: !1929, file: !1766, line: 1069, type: !108)
!1929 = distinct !DILexicalBlock(scope: !1903, file: !1766, line: 1069, column: 13)
!1930 = !DILocalVariable(name: "_w", scope: !1929, file: !1766, line: 1069, type: !108)
!1931 = !DILocalVariable(name: "_incr", scope: !1929, file: !1766, line: 1069, type: !108)
!1932 = !DILocalVariable(name: "_delta", scope: !1933, file: !1766, line: 1069, type: !108)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1766, line: 1069, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1766, line: 1069, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !1766, line: 1069, column: 13)
!1936 = distinct !DILexicalBlock(scope: !1929, file: !1766, line: 1069, column: 13)
!1937 = !DILocalVariable(name: "_i", scope: !1938, file: !1766, line: 1069, type: !108)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !1766, line: 1069, column: 13)
!1939 = distinct !DILexicalBlock(scope: !1933, file: !1766, line: 1069, column: 13)
!1940 = !DILocalVariable(name: "_i", scope: !1941, file: !1766, line: 1069, type: !108)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !1766, line: 1069, column: 13)
!1942 = !DILocalVariable(name: "n", scope: !1943, file: !1766, line: 1137, type: !38)
!1943 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1136, column: 11)
!1944 = !DILocalVariable(name: "ns_digits", scope: !1943, file: !1766, line: 1137, type: !38)
!1945 = !DILocalVariable(name: "ndigs", scope: !1943, file: !1766, line: 1140, type: !38)
!1946 = !DILocalVariable(name: "j", scope: !1947, file: !1766, line: 1143, type: !38)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !1766, line: 1143, column: 13)
!1948 = !DILocalVariable(name: "_n", scope: !1949, file: !1766, line: 1147, type: !108)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !1766, line: 1147, column: 13)
!1950 = !DILocalVariable(name: "_w", scope: !1949, file: !1766, line: 1147, type: !108)
!1951 = !DILocalVariable(name: "_incr", scope: !1949, file: !1766, line: 1147, type: !108)
!1952 = !DILocalVariable(name: "_delta", scope: !1953, file: !1766, line: 1147, type: !108)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1766, line: 1147, column: 13)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1766, line: 1147, column: 13)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1766, line: 1147, column: 13)
!1956 = distinct !DILexicalBlock(scope: !1949, file: !1766, line: 1147, column: 13)
!1957 = !DILocalVariable(name: "_i", scope: !1958, file: !1766, line: 1147, type: !108)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1766, line: 1147, column: 13)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !1766, line: 1147, column: 13)
!1960 = !DILocalVariable(name: "_i", scope: !1961, file: !1766, line: 1147, type: !108)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !1766, line: 1147, column: 13)
!1962 = !DILocalVariable(name: "_n", scope: !1963, file: !1766, line: 1148, type: !108)
!1963 = distinct !DILexicalBlock(scope: !1943, file: !1766, line: 1148, column: 13)
!1964 = !DILocalVariable(name: "_w", scope: !1963, file: !1766, line: 1148, type: !108)
!1965 = !DILocalVariable(name: "_incr", scope: !1963, file: !1766, line: 1148, type: !108)
!1966 = !DILocalVariable(name: "_delta", scope: !1967, file: !1766, line: 1148, type: !108)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1766, line: 1148, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1766, line: 1148, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1766, line: 1148, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !1766, line: 1148, column: 13)
!1971 = !DILocalVariable(name: "_i", scope: !1972, file: !1766, line: 1148, type: !108)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1766, line: 1148, column: 13)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !1766, line: 1148, column: 13)
!1974 = !DILocalVariable(name: "_i", scope: !1975, file: !1766, line: 1148, type: !108)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !1766, line: 1148, column: 13)
!1976 = !DILocalVariable(name: "_n", scope: !1977, file: !1766, line: 1154, type: !108)
!1977 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1154, column: 11)
!1978 = !DILocalVariable(name: "_w", scope: !1977, file: !1766, line: 1154, type: !108)
!1979 = !DILocalVariable(name: "_incr", scope: !1977, file: !1766, line: 1154, type: !108)
!1980 = !DILocalVariable(name: "_delta", scope: !1981, file: !1766, line: 1154, type: !108)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !1766, line: 1154, column: 11)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1766, line: 1154, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !1766, line: 1154, column: 11)
!1984 = distinct !DILexicalBlock(scope: !1977, file: !1766, line: 1154, column: 11)
!1985 = !DILocalVariable(name: "_i", scope: !1986, file: !1766, line: 1154, type: !108)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !1766, line: 1154, column: 11)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !1766, line: 1154, column: 11)
!1988 = !DILocalVariable(name: "_i", scope: !1989, file: !1766, line: 1154, type: !108)
!1989 = distinct !DILexicalBlock(scope: !1987, file: !1766, line: 1154, column: 11)
!1990 = !DILocalVariable(name: "ltm", scope: !1991, file: !1766, line: 1203, type: !615)
!1991 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1202, column: 11)
!1992 = !DILocalVariable(name: "t", scope: !1991, file: !1766, line: 1204, type: !521)
!1993 = !DILocalVariable(name: "d", scope: !1994, file: !1766, line: 1217, type: !38)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !1766, line: 1216, column: 15)
!1995 = !DILocalVariable(name: "_n", scope: !1996, file: !1766, line: 1246, type: !108)
!1996 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1246, column: 11)
!1997 = !DILocalVariable(name: "_w", scope: !1996, file: !1766, line: 1246, type: !108)
!1998 = !DILocalVariable(name: "_incr", scope: !1996, file: !1766, line: 1246, type: !108)
!1999 = !DILocalVariable(name: "_delta", scope: !2000, file: !1766, line: 1246, type: !108)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !1766, line: 1246, column: 11)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !1766, line: 1246, column: 11)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !1766, line: 1246, column: 11)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !1766, line: 1246, column: 11)
!2004 = !DILocalVariable(name: "_i", scope: !2005, file: !1766, line: 1246, type: !108)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !1766, line: 1246, column: 11)
!2006 = distinct !DILexicalBlock(scope: !2000, file: !1766, line: 1246, column: 11)
!2007 = !DILocalVariable(name: "_i", scope: !2008, file: !1766, line: 1246, type: !108)
!2008 = distinct !DILexicalBlock(scope: !2006, file: !1766, line: 1246, column: 11)
!2009 = !DILocalVariable(name: "year", scope: !2010, file: !1766, line: 1268, type: !38)
!2010 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1263, column: 11)
!2011 = !DILocalVariable(name: "year_adjust", scope: !2010, file: !1766, line: 1272, type: !38)
!2012 = !DILocalVariable(name: "days", scope: !2010, file: !1766, line: 1273, type: !38)
!2013 = !DILocalVariable(name: "d", scope: !2014, file: !1766, line: 1284, type: !38)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !1766, line: 1283, column: 15)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !1766, line: 1275, column: 17)
!2016 = !DILocalVariable(name: "yy", scope: !2017, file: !1766, line: 1298, type: !38)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !1766, line: 1297, column: 17)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !1766, line: 1295, column: 15)
!2019 = !DILocalVariable(name: "yy", scope: !2020, file: !1766, line: 1374, type: !38)
!2020 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1373, column: 11)
!2021 = !DILocalVariable(name: "_n", scope: !2022, file: !1766, line: 1397, type: !108)
!2022 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1397, column: 11)
!2023 = !DILocalVariable(name: "_w", scope: !2022, file: !1766, line: 1397, type: !108)
!2024 = !DILocalVariable(name: "_incr", scope: !2022, file: !1766, line: 1397, type: !108)
!2025 = !DILocalVariable(name: "_delta", scope: !2026, file: !1766, line: 1397, type: !108)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !1766, line: 1397, column: 11)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1766, line: 1397, column: 11)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1766, line: 1397, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2022, file: !1766, line: 1397, column: 11)
!2030 = !DILocalVariable(name: "_i", scope: !2031, file: !1766, line: 1397, type: !108)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1766, line: 1397, column: 11)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !1766, line: 1397, column: 11)
!2033 = !DILocalVariable(name: "_i", scope: !2034, file: !1766, line: 1397, type: !108)
!2034 = distinct !DILexicalBlock(scope: !2032, file: !1766, line: 1397, column: 11)
!2035 = !DILocalVariable(name: "diff", scope: !2036, file: !1766, line: 1419, type: !38)
!2036 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1418, column: 11)
!2037 = !DILocalVariable(name: "hour_diff", scope: !2036, file: !1766, line: 1420, type: !38)
!2038 = !DILocalVariable(name: "min_diff", scope: !2036, file: !1766, line: 1421, type: !38)
!2039 = !DILocalVariable(name: "sec_diff", scope: !2036, file: !1766, line: 1422, type: !38)
!2040 = !DILocalVariable(name: "flen", scope: !2041, file: !1766, line: 1491, type: !38)
!2041 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1490, column: 11)
!2042 = !DILocalVariable(name: "_n", scope: !2043, file: !1766, line: 1494, type: !108)
!2043 = distinct !DILexicalBlock(scope: !2041, file: !1766, line: 1494, column: 13)
!2044 = !DILocalVariable(name: "_w", scope: !2043, file: !1766, line: 1494, type: !108)
!2045 = !DILocalVariable(name: "_incr", scope: !2043, file: !1766, line: 1494, type: !108)
!2046 = !DILocalVariable(name: "_delta", scope: !2047, file: !1766, line: 1494, type: !108)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !1766, line: 1494, column: 13)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1766, line: 1494, column: 13)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !1766, line: 1494, column: 13)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !1766, line: 1494, column: 13)
!2051 = !DILocalVariable(name: "_i", scope: !2052, file: !1766, line: 1494, type: !108)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1766, line: 1494, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2047, file: !1766, line: 1494, column: 13)
!2054 = !DILocalVariable(name: "_i", scope: !2055, file: !1766, line: 1494, type: !108)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !1766, line: 1494, column: 13)
!2056 = !DILabel(scope: !1843, name: "subformat", file: !1766, line: 860)
!2057 = !DILabel(scope: !1843, name: "subformat_width", file: !1766, line: 862)
!2058 = !DILabel(scope: !1843, name: "underlying_strftime", file: !1766, line: 877)
!2059 = !DILabel(scope: !1843, name: "do_tz_offset", file: !1766, line: 971)
!2060 = !DILabel(scope: !1843, name: "do_yearish", file: !1766, line: 975)
!2061 = !DILabel(scope: !1843, name: "do_number_spacepad", file: !1766, line: 984)
!2062 = !DILabel(scope: !1843, name: "do_number", file: !1766, line: 988)
!2063 = !DILabel(scope: !1843, name: "do_signed_number", file: !1766, line: 993)
!2064 = !DILabel(scope: !1843, name: "do_maybe_signed_number", file: !1766, line: 996)
!2065 = !DILabel(scope: !1843, name: "do_number_body", file: !1766, line: 999)
!2066 = !DILabel(scope: !1843, name: "do_number_sign_and_padding", file: !1766, line: 1042)
!2067 = !DILabel(scope: !1843, name: "do_z_conversion", file: !1766, line: 1414)
!2068 = !DILabel(scope: !2069, name: "tz_hh_mm", file: !1766, line: 1463)
!2069 = distinct !DILexicalBlock(scope: !2036, file: !1766, line: 1459, column: 15)
!2070 = !DILabel(scope: !2069, name: "tz_hh_mm_ss", file: !1766, line: 1466)
!2071 = !DILabel(scope: !1843, name: "bad_format", file: !1766, line: 1489)
!2072 = !DILocation(line: 0, scope: !1782)
!2073 = !DILocation(line: 459, column: 20, scope: !1782)
!2074 = !{!2075, !1481, i64 8}
!2075 = !{!"tm", !1481, i64 0, !1481, i64 4, !1481, i64 8, !1481, i64 12, !1481, i64 16, !1481, i64 20, !1481, i64 24, !1481, i64 28, !1481, i64 32, !1556, i64 40, !1424, i64 48}
!2076 = !DILocation(line: 522, column: 29, scope: !1782)
!2077 = !{!2075, !1424, i64 48}
!2078 = !DILocation(line: 552, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1782, file: !1766, line: 552, column: 7)
!2080 = !DILocation(line: 552, column: 7, scope: !1782)
!2081 = !DILocation(line: 555, column: 14, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1782, file: !1766, line: 555, column: 7)
!2083 = !DILocation(line: 555, column: 7, scope: !1782)
!2084 = !DILocation(line: 0, scope: !1803)
!2085 = !DILocation(line: 561, column: 20, scope: !1804)
!2086 = !DILocation(line: 561, column: 23, scope: !1804)
!2087 = !DILocation(line: 561, column: 3, scope: !1805)
!2088 = !DILocation(line: 0, scope: !1835)
!2089 = !DILocation(line: 0, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1415, column: 15)
!2091 = !DILocation(line: 0, scope: !2036)
!2092 = !DILocation(line: 0, scope: !2020)
!2093 = !DILocation(line: 0, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1327, column: 11)
!2095 = !DILocation(line: 0, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1321, column: 11)
!2097 = !DILocation(line: 0, scope: !1991)
!2098 = !DILocation(line: 0, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1199, column: 11)
!2100 = !DILocation(line: 0, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1177, column: 11)
!2102 = !DILocation(line: 0, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1124, column: 11)
!2104 = !DILocation(line: 0, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 966, column: 11)
!2106 = !DILocation(line: 0, scope: !1903)
!2107 = !DILocation(line: 0, scope: !1873)
!2108 = !DILocation(line: 0, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1873, file: !1766, line: 897, column: 17)
!2110 = !DILocation(line: 0, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !1766, line: 903, column: 15)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !1766, line: 903, column: 15)
!2113 = distinct !DILexicalBlock(scope: !1891, file: !1766, line: 903, column: 15)
!2114 = !DILocation(line: 665, column: 11, scope: !1828)
!2115 = !DILocation(line: 573, column: 7, scope: !1803)
!2116 = !DILocation(line: 573, column: 14, scope: !1803)
!2117 = !DILocation(line: 665, column: 14, scope: !1828)
!2118 = !DILocation(line: 665, column: 11, scope: !1803)
!2119 = !DILocation(line: 0, scope: !1826)
!2120 = !DILocation(line: 667, column: 11, scope: !1826)
!2121 = !DILocation(line: 667, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1826, file: !1766, line: 667, column: 11)
!2123 = !DILocation(line: 667, column: 11, scope: !1834)
!2124 = !DILocation(line: 667, column: 11, scope: !1832)
!2125 = !DILocation(line: 0, scope: !1832)
!2126 = !DILocation(line: 0, scope: !1840)
!2127 = !DILocation(line: 667, column: 11, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !1766, line: 667, column: 11)
!2129 = distinct !DILexicalBlock(scope: !1840, file: !1766, line: 667, column: 11)
!2130 = !DILocation(line: 667, column: 11, scope: !2129)
!2131 = distinct !{!2131, !2130, !2130}
!2132 = !DILocation(line: 0, scope: !1805)
!2133 = !DILocation(line: 676, column: 20, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1803, file: !1766, line: 675, column: 9)
!2135 = !DILocation(line: 676, column: 19, scope: !2134)
!2136 = !DILocation(line: 676, column: 11, scope: !2134)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 674, column: 7, scope: !1803)
!2139 = !DILocation(line: 698, column: 9, scope: !1803)
!2140 = !DILocation(line: 700, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1803, file: !1766, line: 700, column: 11)
!2142 = !DILocation(line: 700, column: 11, scope: !1803)
!2143 = !DILocation(line: 0, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !1766, line: 701, column: 9)
!2145 = !DILocation(line: 705, column: 19, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1766, line: 705, column: 19)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !1766, line: 704, column: 13)
!2148 = !DILocation(line: 706, column: 22, scope: !2146)
!2149 = !DILocation(line: 705, column: 19, scope: !2147)
!2150 = !DILocation(line: 707, column: 17, scope: !2146)
!2151 = !DILocation(line: 0, scope: !2146)
!2152 = !DILocation(line: 708, column: 15, scope: !2147)
!2153 = !DILocation(line: 710, column: 18, scope: !2144)
!2154 = !DILocation(line: 709, column: 13, scope: !2147)
!2155 = distinct !{!2155, !2156, !2157}
!2156 = !DILocation(line: 703, column: 11, scope: !2144)
!2157 = !DILocation(line: 710, column: 30, scope: !2144)
!2158 = !DILocation(line: 714, column: 7, scope: !1803)
!2159 = !DILocation(line: 714, column: 15, scope: !1803)
!2160 = !DILocation(line: 718, column: 24, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1803, file: !1766, line: 715, column: 9)
!2162 = !DILocation(line: 727, column: 21, scope: !1803)
!2163 = !DILocation(line: 719, column: 11, scope: !2161)
!2164 = !DILocation(line: 0, scope: !2161)
!2165 = !DILocation(line: 728, column: 7, scope: !1803)
!2166 = !DILocation(line: 774, column: 24, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 774, column: 15)
!2168 = !DILocation(line: 774, column: 15, scope: !1843)
!2169 = !DILocation(line: 0, scope: !1842)
!2170 = !DILocation(line: 776, column: 11, scope: !1842)
!2171 = !DILocation(line: 776, column: 11, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !1842, file: !1766, line: 776, column: 11)
!2173 = !DILocation(line: 776, column: 11, scope: !1849)
!2174 = !DILocation(line: 776, column: 11, scope: !1847)
!2175 = !DILocation(line: 0, scope: !1847)
!2176 = !DILocation(line: 776, column: 11, scope: !1853)
!2177 = !DILocation(line: 0, scope: !1855)
!2178 = !DILocation(line: 776, column: 11, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !1766, line: 776, column: 11)
!2180 = distinct !DILexicalBlock(scope: !1855, file: !1766, line: 776, column: 11)
!2181 = !DILocation(line: 776, column: 11, scope: !2180)
!2182 = !DILocation(line: 0, scope: !1852)
!2183 = !DILocation(line: 776, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !1766, line: 776, column: 11)
!2185 = distinct !DILexicalBlock(scope: !1852, file: !1766, line: 776, column: 11)
!2186 = !DILocation(line: 776, column: 11, scope: !2185)
!2187 = distinct !{!2187, !2186, !2186}
!2188 = distinct !{!2188, !2181, !2181}
!2189 = !DILocation(line: 780, column: 24, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 780, column: 15)
!2191 = !DILocation(line: 780, column: 15, scope: !1843)
!2192 = !DILocation(line: 782, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 782, column: 15)
!2194 = !DILocation(line: 782, column: 15, scope: !1843)
!2195 = !DILocation(line: 795, column: 24, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 795, column: 15)
!2197 = !DILocation(line: 795, column: 15, scope: !1843)
!2198 = !DILocation(line: 797, column: 15, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 797, column: 15)
!2200 = !DILocation(line: 797, column: 15, scope: !1843)
!2201 = !DILocation(line: 811, column: 15, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 811, column: 15)
!2203 = !DILocation(line: 811, column: 15, scope: !1843)
!2204 = !DILocation(line: 816, column: 24, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 816, column: 15)
!2206 = !DILocation(line: 816, column: 15, scope: !1843)
!2207 = !DILocation(line: 829, column: 24, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 829, column: 15)
!2209 = !DILocation(line: 829, column: 15, scope: !1843)
!2210 = !DILocation(line: 831, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 831, column: 15)
!2212 = !DILocation(line: 831, column: 15, scope: !1843)
!2213 = !DILocation(line: 847, column: 24, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 847, column: 15)
!2215 = !DILocation(line: 847, column: 15, scope: !1843)
!2216 = !DILocation(line: 0, scope: !1843)
!2217 = !DILocation(line: 862, column: 9, scope: !1843)
!2218 = !DILocation(line: 865, column: 59, scope: !1857)
!2219 = !DILocation(line: 864, column: 26, scope: !1857)
!2220 = !DILocation(line: 0, scope: !1857)
!2221 = !DILocation(line: 0, scope: !1859)
!2222 = !DILocation(line: 868, column: 13, scope: !1859)
!2223 = !DILocation(line: 868, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1859, file: !1766, line: 868, column: 13)
!2225 = !DILocation(line: 868, column: 13, scope: !1865)
!2226 = !DILocation(line: 868, column: 13, scope: !1863)
!2227 = !DILocation(line: 0, scope: !1863)
!2228 = !DILocation(line: 868, column: 13, scope: !1869)
!2229 = !DILocation(line: 0, scope: !1871)
!2230 = !DILocation(line: 868, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !1766, line: 868, column: 13)
!2232 = distinct !DILexicalBlock(scope: !1871, file: !1766, line: 868, column: 13)
!2233 = !DILocation(line: 868, column: 13, scope: !2232)
!2234 = !DILocation(line: 0, scope: !1868)
!2235 = !DILocation(line: 868, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !1766, line: 868, column: 13)
!2237 = distinct !DILexicalBlock(scope: !1868, file: !1766, line: 868, column: 13)
!2238 = !DILocation(line: 868, column: 13, scope: !2237)
!2239 = distinct !{!2239, !2238, !2238}
!2240 = distinct !{!2240, !2233, !2233}
!2241 = !DILocation(line: 727, column: 19, scope: !1803)
!2242 = !DILocation(line: 563, column: 11, scope: !1803)
!2243 = !DILocation(line: 877, column: 9, scope: !1843)
!2244 = !DILocation(line: 881, column: 13, scope: !1873)
!2245 = !DILocation(line: 881, column: 18, scope: !1873)
!2246 = !DILocation(line: 883, column: 13, scope: !1873)
!2247 = !DILocation(line: 883, column: 18, scope: !1873)
!2248 = !DILocation(line: 895, column: 18, scope: !1873)
!2249 = !DILocation(line: 896, column: 18, scope: !1873)
!2250 = !DILocation(line: 897, column: 26, scope: !2109)
!2251 = !DILocation(line: 897, column: 17, scope: !1873)
!2252 = !DILocation(line: 898, column: 22, scope: !2109)
!2253 = !DILocation(line: 898, column: 20, scope: !2109)
!2254 = !DILocation(line: 898, column: 15, scope: !2109)
!2255 = !DILocation(line: 899, column: 15, scope: !1873)
!2256 = !DILocation(line: 899, column: 18, scope: !1873)
!2257 = !DILocation(line: 900, column: 16, scope: !1873)
!2258 = !DILocation(line: 901, column: 19, scope: !1873)
!2259 = !DILocation(line: 902, column: 21, scope: !1885)
!2260 = !DILocation(line: 902, column: 17, scope: !1873)
!2261 = !DILocation(line: 903, column: 15, scope: !1884)
!2262 = !DILocation(line: 0, scope: !1884)
!2263 = !DILocation(line: 903, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1884, file: !1766, line: 903, column: 15)
!2265 = !DILocation(line: 903, column: 15, scope: !1891)
!2266 = !DILocation(line: 903, column: 15, scope: !1889)
!2267 = !DILocation(line: 0, scope: !1889)
!2268 = !DILocation(line: 903, column: 15, scope: !1895)
!2269 = !DILocation(line: 0, scope: !1897)
!2270 = !DILocation(line: 903, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !1766, line: 903, column: 15)
!2272 = distinct !DILexicalBlock(scope: !1897, file: !1766, line: 903, column: 15)
!2273 = !DILocation(line: 903, column: 15, scope: !2272)
!2274 = !DILocation(line: 0, scope: !1894)
!2275 = !DILocation(line: 903, column: 15, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !1766, line: 903, column: 15)
!2277 = distinct !DILexicalBlock(scope: !1894, file: !1766, line: 903, column: 15)
!2278 = !DILocation(line: 903, column: 15, scope: !2277)
!2279 = distinct !{!2279, !2278, !2278}
!2280 = distinct !{!2280, !2273, !2273}
!2281 = !DILocation(line: 903, column: 15, scope: !2113)
!2282 = !DILocalVariable(name: "fp", arg: 1, scope: !2283, file: !1766, line: 295, type: !1769)
!2283 = distinct !DISubprogram(name: "fwrite_lowcase", scope: !1766, file: !1766, line: 295, type: !2284, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !1769, !6, !108}
!2286 = !{!2282, !2287, !2288, !2289}
!2287 = !DILocalVariable(name: "src", arg: 2, scope: !2283, file: !1766, line: 295, type: !6)
!2288 = !DILocalVariable(name: "len", arg: 3, scope: !2283, file: !1766, line: 295, type: !108)
!2289 = !DILocalVariable(name: "__res", scope: !2290, file: !1766, line: 299, type: !38)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !1766, line: 299, column: 14)
!2291 = distinct !DILexicalBlock(scope: !2283, file: !1766, line: 298, column: 5)
!2292 = !DILocation(line: 0, scope: !2283, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 903, column: 15, scope: !2112)
!2294 = !DILocation(line: 297, column: 16, scope: !2283, inlinedAt: !2293)
!2295 = !DILocation(line: 297, column: 3, scope: !2283, inlinedAt: !2293)
!2296 = !DILocation(line: 0, scope: !2297, inlinedAt: !2293)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !1766, line: 299, column: 14)
!2298 = !DILocation(line: 297, column: 13, scope: !2283, inlinedAt: !2293)
!2299 = !DILocation(line: 299, column: 14, scope: !2297, inlinedAt: !2293)
!2300 = !DILocation(line: 0, scope: !2290, inlinedAt: !2293)
!2301 = !DILocation(line: 299, column: 7, scope: !2291, inlinedAt: !2293)
!2302 = !DILocation(line: 300, column: 7, scope: !2291, inlinedAt: !2293)
!2303 = distinct !{!2303, !2295, !2304}
!2304 = !DILocation(line: 301, column: 5, scope: !2283, inlinedAt: !2293)
!2305 = !DILocation(line: 903, column: 15, scope: !2111)
!2306 = !DILocation(line: 903, column: 15, scope: !2112)
!2307 = !DILocalVariable(name: "fp", arg: 1, scope: !2308, file: !1766, line: 305, type: !1769)
!2308 = distinct !DISubprogram(name: "fwrite_uppcase", scope: !1766, file: !1766, line: 305, type: !2284, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2309)
!2309 = !{!2307, !2310, !2311, !2312}
!2310 = !DILocalVariable(name: "src", arg: 2, scope: !2308, file: !1766, line: 305, type: !6)
!2311 = !DILocalVariable(name: "len", arg: 3, scope: !2308, file: !1766, line: 305, type: !108)
!2312 = !DILocalVariable(name: "__res", scope: !2313, file: !1766, line: 309, type: !38)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !1766, line: 309, column: 14)
!2314 = distinct !DILexicalBlock(scope: !2308, file: !1766, line: 308, column: 5)
!2315 = !DILocation(line: 0, scope: !2308, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 903, column: 15, scope: !2111)
!2317 = !DILocation(line: 307, column: 16, scope: !2308, inlinedAt: !2316)
!2318 = !DILocation(line: 307, column: 3, scope: !2308, inlinedAt: !2316)
!2319 = !DILocation(line: 0, scope: !2320, inlinedAt: !2316)
!2320 = distinct !DILexicalBlock(scope: !2313, file: !1766, line: 309, column: 14)
!2321 = !DILocation(line: 307, column: 13, scope: !2308, inlinedAt: !2316)
!2322 = !DILocation(line: 309, column: 14, scope: !2320, inlinedAt: !2316)
!2323 = !DILocation(line: 0, scope: !2313, inlinedAt: !2316)
!2324 = !DILocation(line: 309, column: 7, scope: !2314, inlinedAt: !2316)
!2325 = !DILocation(line: 310, column: 7, scope: !2314, inlinedAt: !2316)
!2326 = distinct !{!2326, !2318, !2327}
!2327 = !DILocation(line: 311, column: 5, scope: !2308, inlinedAt: !2316)
!2328 = !DILocation(line: 903, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2111, file: !1766, line: 903, column: 15)
!2330 = !DILocation(line: 904, column: 11, scope: !1843)
!2331 = !DILocation(line: 909, column: 24, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 909, column: 15)
!2333 = !DILocation(line: 909, column: 15, scope: !1843)
!2334 = !DILocation(line: 930, column: 38, scope: !1899)
!2335 = !{!2075, !1481, i64 20}
!2336 = !DILocation(line: 930, column: 46, scope: !1899)
!2337 = !DILocation(line: 0, scope: !1899)
!2338 = !DILocation(line: 931, column: 35, scope: !1899)
!2339 = !DILocation(line: 931, column: 65, scope: !1899)
!2340 = !DILocation(line: 931, column: 50, scope: !1899)
!2341 = !DILocation(line: 932, column: 41, scope: !1899)
!2342 = !DILocation(line: 932, column: 64, scope: !1899)
!2343 = !DILocation(line: 933, column: 28, scope: !1899)
!2344 = !DILocation(line: 938, column: 24, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 938, column: 15)
!2346 = !DILocation(line: 938, column: 15, scope: !1843)
!2347 = !DILocation(line: 951, column: 24, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 951, column: 15)
!2349 = !DILocation(line: 951, column: 15, scope: !1843)
!2350 = !DILocation(line: 957, column: 24, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 957, column: 15)
!2352 = !DILocation(line: 957, column: 15, scope: !1843)
!2353 = !DILocation(line: 960, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 960, column: 11)
!2355 = !{!2075, !1481, i64 12}
!2356 = !DILocation(line: 963, column: 24, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 963, column: 15)
!2358 = !DILocation(line: 963, column: 15, scope: !1843)
!2359 = !DILocation(line: 966, column: 11, scope: !2105)
!2360 = !DILocation(line: 975, column: 9, scope: !1843)
!2361 = !DILocation(line: 976, column: 19, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 976, column: 15)
!2363 = !DILocation(line: 976, column: 15, scope: !1843)
!2364 = !DILocation(line: 979, column: 20, scope: !1843)
!2365 = !DILocation(line: 980, column: 16, scope: !1843)
!2366 = !DILocation(line: 980, column: 28, scope: !1843)
!2367 = !DILocation(line: 980, column: 21, scope: !1843)
!2368 = !DILocation(line: 980, column: 46, scope: !1843)
!2369 = !DILocation(line: 981, column: 20, scope: !1843)
!2370 = !DILocation(line: 984, column: 9, scope: !1843)
!2371 = !DILocation(line: 985, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 985, column: 15)
!2373 = !DILocation(line: 985, column: 15, scope: !1843)
!2374 = !DILocation(line: 988, column: 9, scope: !1843)
!2375 = !DILocation(line: 990, column: 27, scope: !1843)
!2376 = !DILocation(line: 991, column: 11, scope: !1843)
!2377 = !DILocation(line: 999, column: 9, scope: !1843)
!2378 = !DILocation(line: 1005, column: 24, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1005, column: 15)
!2380 = !DILocation(line: 1005, column: 39, scope: !2379)
!2381 = !DILocation(line: 1005, column: 35, scope: !2379)
!2382 = !DILocation(line: 1030, column: 30, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1029, column: 15)
!2384 = !DILocation(line: 1029, column: 15, scope: !1843)
!2385 = !DILocation(line: 1032, column: 11, scope: !1843)
!2386 = !DILocation(line: 1034, column: 33, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !1766, line: 1034, column: 19)
!2388 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1033, column: 13)
!2389 = !DILocation(line: 1034, column: 19, scope: !2388)
!2390 = !DILocation(line: 1035, column: 18, scope: !2387)
!2391 = !DILocation(line: 1035, column: 25, scope: !2387)
!2392 = !DILocation(line: 1035, column: 17, scope: !2387)
!2393 = !DILocation(line: 1036, column: 29, scope: !2388)
!2394 = !DILocation(line: 1037, column: 40, scope: !2388)
!2395 = !DILocation(line: 1037, column: 25, scope: !2388)
!2396 = !DILocation(line: 1037, column: 16, scope: !2388)
!2397 = !DILocation(line: 1037, column: 23, scope: !2388)
!2398 = !DILocation(line: 1038, column: 30, scope: !2388)
!2399 = !DILocation(line: 1040, column: 33, scope: !1843)
!2400 = !DILocation(line: 1040, column: 38, scope: !1843)
!2401 = !DILocation(line: 1039, column: 13, scope: !2388)
!2402 = distinct !{!2402, !2385, !2403}
!2403 = !DILocation(line: 1040, column: 59, scope: !1843)
!2404 = !DILocation(line: 1042, column: 9, scope: !1843)
!2405 = !DILocation(line: 1043, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1043, column: 15)
!2407 = !DILocation(line: 1043, column: 15, scope: !1843)
!2408 = !DILocation(line: 1045, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1045, column: 15)
!2410 = !DILocation(line: 1045, column: 15, scope: !1843)
!2411 = !DILocation(line: 1050, column: 35, scope: !1903)
!2412 = !DILocation(line: 1049, column: 33, scope: !1903)
!2413 = !DILocation(line: 1052, column: 59, scope: !1903)
!2414 = !DILocation(line: 1052, column: 26, scope: !1903)
!2415 = !DILocation(line: 1053, column: 37, scope: !1903)
!2416 = !DILocation(line: 1053, column: 34, scope: !1903)
!2417 = !DILocation(line: 1053, column: 48, scope: !1903)
!2418 = !DILocation(line: 1054, column: 31, scope: !1903)
!2419 = !DILocation(line: 1054, column: 54, scope: !1903)
!2420 = !DILocation(line: 1054, column: 42, scope: !1903)
!2421 = !DILocation(line: 1056, column: 17, scope: !1903)
!2422 = !DILocation(line: 1058, column: 25, scope: !1911)
!2423 = !DILocation(line: 1058, column: 21, scope: !1912)
!2424 = !DILocation(line: 0, scope: !1910)
!2425 = !DILocation(line: 1060, column: 25, scope: !1910)
!2426 = !DILocation(line: 0, scope: !1908)
!2427 = !DILocation(line: 1061, column: 23, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !1766, line: 1061, column: 23)
!2429 = distinct !DILexicalBlock(scope: !1908, file: !1766, line: 1061, column: 23)
!2430 = !DILocation(line: 1061, column: 23, scope: !2429)
!2431 = distinct !{!2431, !2430, !2430}
!2432 = !DILocation(line: 1062, column: 26, scope: !1910)
!2433 = !DILocation(line: 1062, column: 23, scope: !1910)
!2434 = !DILocation(line: 1063, column: 27, scope: !1910)
!2435 = !DILocation(line: 1064, column: 19, scope: !1910)
!2436 = !DILocation(line: 0, scope: !1915)
!2437 = !DILocation(line: 1065, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !1915, file: !1766, line: 1065, column: 17)
!2439 = !DILocation(line: 1065, column: 17, scope: !1915)
!2440 = !DILocation(line: 1065, column: 17, scope: !1921)
!2441 = !DILocation(line: 1066, column: 22, scope: !1912)
!2442 = !DILocation(line: 1067, column: 15, scope: !1912)
!2443 = !DILocation(line: 1069, column: 13, scope: !1929)
!2444 = !DILocation(line: 0, scope: !1929)
!2445 = !DILocation(line: 1069, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !1929, file: !1766, line: 1069, column: 13)
!2447 = !DILocation(line: 1069, column: 13, scope: !1935)
!2448 = !DILocation(line: 1069, column: 13, scope: !1933)
!2449 = !DILocation(line: 0, scope: !1933)
!2450 = !DILocation(line: 1069, column: 13, scope: !1939)
!2451 = !DILocation(line: 0, scope: !1941)
!2452 = !DILocation(line: 1069, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !1766, line: 1069, column: 13)
!2454 = distinct !DILexicalBlock(scope: !1941, file: !1766, line: 1069, column: 13)
!2455 = !DILocation(line: 1069, column: 13, scope: !2454)
!2456 = !DILocation(line: 0, scope: !1938)
!2457 = !DILocation(line: 1069, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !1766, line: 1069, column: 13)
!2459 = distinct !DILexicalBlock(scope: !1938, file: !1766, line: 1069, column: 13)
!2460 = !DILocation(line: 1069, column: 13, scope: !2459)
!2461 = distinct !{!2461, !2460, !2460}
!2462 = distinct !{!2462, !2455, !2455}
!2463 = !DILocation(line: 1069, column: 13, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !1766, line: 1069, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !1766, line: 1069, column: 13)
!2466 = distinct !DILexicalBlock(scope: !1935, file: !1766, line: 1069, column: 13)
!2467 = !DILocation(line: 1069, column: 13, scope: !2465)
!2468 = !DILocation(line: 0, scope: !2308, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 1069, column: 13, scope: !2464)
!2470 = !DILocation(line: 307, column: 16, scope: !2308, inlinedAt: !2469)
!2471 = !DILocation(line: 307, column: 3, scope: !2308, inlinedAt: !2469)
!2472 = !DILocation(line: 0, scope: !2320, inlinedAt: !2469)
!2473 = !DILocation(line: 307, column: 13, scope: !2308, inlinedAt: !2469)
!2474 = !DILocation(line: 309, column: 14, scope: !2320, inlinedAt: !2469)
!2475 = !DILocation(line: 0, scope: !2313, inlinedAt: !2469)
!2476 = !DILocation(line: 309, column: 7, scope: !2314, inlinedAt: !2469)
!2477 = !DILocation(line: 310, column: 7, scope: !2314, inlinedAt: !2469)
!2478 = distinct !{!2478, !2471, !2479}
!2479 = !DILocation(line: 311, column: 5, scope: !2308, inlinedAt: !2469)
!2480 = !DILocation(line: 1069, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2464, file: !1766, line: 1069, column: 13)
!2482 = !DILocation(line: 1074, column: 24, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1074, column: 15)
!2484 = !DILocation(line: 1074, column: 15, scope: !1843)
!2485 = !DILocation(line: 1076, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1076, column: 15)
!2487 = !DILocation(line: 1076, column: 33, scope: !2486)
!2488 = !DILocation(line: 1076, column: 24, scope: !2486)
!2489 = !DILocation(line: 1091, column: 24, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1091, column: 15)
!2491 = !DILocation(line: 1091, column: 15, scope: !1843)
!2492 = !DILocation(line: 1094, column: 11, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1094, column: 11)
!2494 = !DILocation(line: 1097, column: 24, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1097, column: 15)
!2496 = !DILocation(line: 1097, column: 15, scope: !1843)
!2497 = !DILocation(line: 1103, column: 24, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1103, column: 15)
!2499 = !DILocation(line: 1103, column: 15, scope: !1843)
!2500 = !DILocation(line: 1106, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1106, column: 11)
!2502 = !DILocation(line: 1109, column: 24, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1109, column: 15)
!2504 = !DILocation(line: 1109, column: 15, scope: !1843)
!2505 = !DILocation(line: 1115, column: 24, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1115, column: 15)
!2507 = !DILocation(line: 1115, column: 15, scope: !1843)
!2508 = !DILocation(line: 1118, column: 11, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1118, column: 11)
!2510 = !{!2075, !1481, i64 28}
!2511 = !DILocation(line: 1121, column: 24, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1121, column: 15)
!2513 = !DILocation(line: 1121, column: 15, scope: !1843)
!2514 = !DILocation(line: 1124, column: 11, scope: !2103)
!2515 = !{!2075, !1481, i64 4}
!2516 = !DILocation(line: 1127, column: 24, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1127, column: 15)
!2518 = !DILocation(line: 1127, column: 15, scope: !1843)
!2519 = !DILocation(line: 1130, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1130, column: 11)
!2521 = !{!2075, !1481, i64 16}
!2522 = !DILocation(line: 1134, column: 24, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1134, column: 15)
!2524 = !DILocation(line: 1134, column: 15, scope: !1843)
!2525 = !DILocation(line: 0, scope: !1943)
!2526 = !DILocation(line: 1138, column: 23, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !1943, file: !1766, line: 1138, column: 17)
!2528 = !DILocation(line: 1138, column: 17, scope: !1943)
!2529 = !DILocation(line: 1141, column: 13, scope: !1943)
!2530 = !DILocation(line: 1141, column: 26, scope: !1943)
!2531 = !DILocation(line: 1141, column: 34, scope: !1943)
!2532 = !DILocation(line: 1141, column: 40, scope: !1943)
!2533 = !DILocation(line: 1141, column: 53, scope: !1943)
!2534 = !DILocation(line: 1141, column: 58, scope: !1943)
!2535 = !DILocation(line: 1141, column: 48, scope: !1943)
!2536 = !DILocation(line: 0, scope: !1947)
!2537 = !DILocation(line: 1143, column: 35, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !1947, file: !1766, line: 1143, column: 13)
!2539 = !DILocation(line: 1143, column: 13, scope: !1947)
!2540 = !DILocation(line: 1147, column: 13, scope: !1949)
!2541 = !DILocation(line: 1142, column: 20, scope: !1943)
!2542 = !DILocation(line: 1142, column: 26, scope: !1943)
!2543 = distinct !{!2543, !2529, !2544}
!2544 = !DILocation(line: 1142, column: 29, scope: !1943)
!2545 = !DILocation(line: 1145, column: 18, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !1943, file: !1766, line: 1145, column: 17)
!2547 = !DILocation(line: 1145, column: 17, scope: !1943)
!2548 = !DILocation(line: 0, scope: !1949)
!2549 = !DILocation(line: 1147, column: 13, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !1949, file: !1766, line: 1147, column: 13)
!2551 = !DILocation(line: 1144, column: 30, scope: !2538)
!2552 = !DILocation(line: 1144, column: 28, scope: !2538)
!2553 = !DILocation(line: 1144, column: 21, scope: !2538)
!2554 = !DILocation(line: 1144, column: 15, scope: !2538)
!2555 = !DILocation(line: 1144, column: 26, scope: !2538)
!2556 = !DILocation(line: 1144, column: 48, scope: !2538)
!2557 = distinct !{!2557, !2539, !2558}
!2558 = !DILocation(line: 1144, column: 51, scope: !1947)
!2559 = !DILocation(line: 1147, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !1766, line: 1147, column: 13)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !1766, line: 1147, column: 13)
!2562 = distinct !DILexicalBlock(scope: !1955, file: !1766, line: 1147, column: 13)
!2563 = !DILocation(line: 1147, column: 13, scope: !2561)
!2564 = !DILocation(line: 0, scope: !2308, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1147, column: 13, scope: !2560)
!2566 = !DILocation(line: 307, column: 16, scope: !2308, inlinedAt: !2565)
!2567 = !DILocation(line: 307, column: 3, scope: !2308, inlinedAt: !2565)
!2568 = !DILocation(line: 0, scope: !2320, inlinedAt: !2565)
!2569 = !DILocation(line: 307, column: 13, scope: !2308, inlinedAt: !2565)
!2570 = !DILocation(line: 309, column: 14, scope: !2320, inlinedAt: !2565)
!2571 = !DILocation(line: 0, scope: !2313, inlinedAt: !2565)
!2572 = !DILocation(line: 309, column: 7, scope: !2314, inlinedAt: !2565)
!2573 = !DILocation(line: 310, column: 7, scope: !2314, inlinedAt: !2565)
!2574 = distinct !{!2574, !2567, !2575}
!2575 = !DILocation(line: 311, column: 5, scope: !2308, inlinedAt: !2565)
!2576 = !DILocation(line: 1147, column: 13, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2560, file: !1766, line: 1147, column: 13)
!2578 = !DILocation(line: 0, scope: !1963)
!2579 = !DILocation(line: 1148, column: 13, scope: !1963)
!2580 = !DILocation(line: 1148, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !1963, file: !1766, line: 1148, column: 13)
!2582 = !DILocation(line: 0, scope: !1967)
!2583 = !DILocation(line: 1148, column: 13, scope: !1973)
!2584 = !DILocation(line: 1148, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !1972, file: !1766, line: 1148, column: 13)
!2586 = !DILocation(line: 0, scope: !1972)
!2587 = !DILocation(line: 1148, column: 13, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !1766, line: 1148, column: 13)
!2589 = distinct !{!2589, !2584, !2584}
!2590 = !DILocation(line: 0, scope: !1975)
!2591 = !DILocation(line: 1148, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !1766, line: 1148, column: 13)
!2593 = distinct !DILexicalBlock(scope: !1975, file: !1766, line: 1148, column: 13)
!2594 = !DILocation(line: 1148, column: 13, scope: !2593)
!2595 = distinct !{!2595, !2594, !2594}
!2596 = !DILocation(line: 0, scope: !1977)
!2597 = !DILocation(line: 1154, column: 11, scope: !1977)
!2598 = !DILocation(line: 1154, column: 11, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !1977, file: !1766, line: 1154, column: 11)
!2600 = !DILocation(line: 1154, column: 11, scope: !1983)
!2601 = !DILocation(line: 1154, column: 11, scope: !1981)
!2602 = !DILocation(line: 0, scope: !1981)
!2603 = !DILocation(line: 1154, column: 11, scope: !1987)
!2604 = !DILocation(line: 0, scope: !1989)
!2605 = !DILocation(line: 1154, column: 11, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !1766, line: 1154, column: 11)
!2607 = distinct !DILexicalBlock(scope: !1989, file: !1766, line: 1154, column: 11)
!2608 = !DILocation(line: 1154, column: 11, scope: !2607)
!2609 = !DILocation(line: 0, scope: !1986)
!2610 = !DILocation(line: 1154, column: 11, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !1766, line: 1154, column: 11)
!2612 = distinct !DILexicalBlock(scope: !1986, file: !1766, line: 1154, column: 11)
!2613 = !DILocation(line: 1154, column: 11, scope: !2612)
!2614 = distinct !{!2614, !2613, !2613}
!2615 = distinct !{!2615, !2608, !2608}
!2616 = !DILocation(line: 1162, column: 11, scope: !1843)
!2617 = !DILocation(line: 1164, column: 15, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1164, column: 15)
!2619 = !DILocation(line: 1164, column: 15, scope: !1843)
!2620 = !DILocation(line: 1177, column: 11, scope: !2101)
!2621 = !DILocation(line: 1196, column: 24, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1196, column: 15)
!2623 = !DILocation(line: 1196, column: 15, scope: !1843)
!2624 = !DILocation(line: 1199, column: 11, scope: !2099)
!2625 = !{!2075, !1481, i64 0}
!2626 = !DILocation(line: 1203, column: 13, scope: !1991)
!2627 = !DILocation(line: 1203, column: 23, scope: !1991)
!2628 = !DILocation(line: 1206, column: 19, scope: !1991)
!2629 = !{i64 0, i64 4, !1480, i64 4, i64 4, !1480, i64 8, i64 4, !1480, i64 12, i64 4, !1480, i64 16, i64 4, !1480, i64 20, i64 4, !1480, i64 24, i64 4, !1480, i64 28, i64 4, !1480, i64 32, i64 4, !1480, i64 40, i64 8, !1555, i64 48, i64 8, !1423}
!2630 = !DILocation(line: 1207, column: 17, scope: !1991)
!2631 = !DILocation(line: 1213, column: 33, scope: !1991)
!2632 = !DILocation(line: 1213, column: 29, scope: !1991)
!2633 = !DILocation(line: 1215, column: 13, scope: !1991)
!2634 = !DILocation(line: 1217, column: 27, scope: !1994)
!2635 = !DILocation(line: 1217, column: 25, scope: !1994)
!2636 = !DILocation(line: 0, scope: !1994)
!2637 = !DILocation(line: 1218, column: 19, scope: !1994)
!2638 = !DILocation(line: 1219, column: 28, scope: !1994)
!2639 = !DILocation(line: 1219, column: 27, scope: !1994)
!2640 = !DILocation(line: 1219, column: 18, scope: !1994)
!2641 = !DILocation(line: 1219, column: 25, scope: !1994)
!2642 = !DILocation(line: 1221, column: 22, scope: !1991)
!2643 = !DILocation(line: 1220, column: 15, scope: !1994)
!2644 = distinct !{!2644, !2633, !2645}
!2645 = !DILocation(line: 1221, column: 26, scope: !1991)
!2646 = !DILocation(line: 1226, column: 11, scope: !1843)
!2647 = !DILocation(line: 1229, column: 24, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1229, column: 15)
!2649 = !DILocation(line: 1229, column: 15, scope: !1843)
!2650 = !DILocation(line: 1243, column: 11, scope: !1843)
!2651 = !DILocation(line: 0, scope: !1996)
!2652 = !DILocation(line: 1246, column: 11, scope: !1996)
!2653 = !DILocation(line: 1246, column: 11, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !1996, file: !1766, line: 1246, column: 11)
!2655 = !DILocation(line: 1246, column: 11, scope: !2002)
!2656 = !DILocation(line: 1246, column: 11, scope: !2000)
!2657 = !DILocation(line: 0, scope: !2000)
!2658 = !DILocation(line: 1246, column: 11, scope: !2006)
!2659 = !DILocation(line: 0, scope: !2008)
!2660 = !DILocation(line: 1246, column: 11, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !1766, line: 1246, column: 11)
!2662 = distinct !DILexicalBlock(scope: !2008, file: !1766, line: 1246, column: 11)
!2663 = !DILocation(line: 1246, column: 11, scope: !2662)
!2664 = !DILocation(line: 0, scope: !2005)
!2665 = !DILocation(line: 1246, column: 11, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !1766, line: 1246, column: 11)
!2667 = distinct !DILexicalBlock(scope: !2005, file: !1766, line: 1246, column: 11)
!2668 = !DILocation(line: 1246, column: 11, scope: !2667)
!2669 = distinct !{!2669, !2668, !2668}
!2670 = distinct !{!2670, !2663, !2663}
!2671 = !DILocation(line: 1250, column: 11, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1250, column: 11)
!2673 = !{!2075, !1481, i64 24}
!2674 = !DILocation(line: 1253, column: 24, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1253, column: 15)
!2676 = !DILocation(line: 1253, column: 15, scope: !1843)
!2677 = !DILocation(line: 1256, column: 11, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1256, column: 11)
!2679 = !DILocation(line: 1261, column: 24, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1261, column: 15)
!2681 = !DILocation(line: 1261, column: 15, scope: !1843)
!2682 = !DILocation(line: 1268, column: 29, scope: !2010)
!2683 = !DILocation(line: 1269, column: 40, scope: !2010)
!2684 = !DILocation(line: 1269, column: 28, scope: !2010)
!2685 = !DILocation(line: 1269, column: 25, scope: !2010)
!2686 = !DILocation(line: 0, scope: !2010)
!2687 = !DILocation(line: 1273, column: 43, scope: !2010)
!2688 = !DILocation(line: 1273, column: 56, scope: !2010)
!2689 = !DILocalVariable(name: "yday", arg: 1, scope: !2690, file: !1766, line: 379, type: !38)
!2690 = distinct !DISubprogram(name: "iso_week_days", scope: !1766, file: !1766, line: 379, type: !900, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2691)
!2691 = !{!2689, !2692, !2693}
!2692 = !DILocalVariable(name: "wday", arg: 2, scope: !2690, file: !1766, line: 379, type: !38)
!2693 = !DILocalVariable(name: "big_enough_multiple_of_7", scope: !2690, file: !1766, line: 382, type: !38)
!2694 = !DILocation(line: 0, scope: !2690, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1273, column: 24, scope: !2010)
!2696 = !DILocation(line: 384, column: 19, scope: !2690, inlinedAt: !2695)
!2697 = !DILocation(line: 384, column: 43, scope: !2690, inlinedAt: !2695)
!2698 = !DILocation(line: 384, column: 71, scope: !2690, inlinedAt: !2695)
!2699 = !DILocation(line: 384, column: 11, scope: !2690, inlinedAt: !2695)
!2700 = !DILocation(line: 385, column: 28, scope: !2690, inlinedAt: !2695)
!2701 = !DILocation(line: 1275, column: 22, scope: !2015)
!2702 = !DILocation(line: 1275, column: 17, scope: !2010)
!2703 = !DILocation(line: 1279, column: 60, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2015, file: !1766, line: 1276, column: 15)
!2705 = !DILocation(line: 1279, column: 51, scope: !2704)
!2706 = !DILocation(line: 0, scope: !2690, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1279, column: 24, scope: !2704)
!2708 = !DILocation(line: 384, column: 19, scope: !2690, inlinedAt: !2707)
!2709 = !DILocation(line: 384, column: 43, scope: !2690, inlinedAt: !2707)
!2710 = !DILocation(line: 384, column: 71, scope: !2690, inlinedAt: !2707)
!2711 = !DILocation(line: 384, column: 11, scope: !2690, inlinedAt: !2707)
!2712 = !DILocation(line: 385, column: 28, scope: !2690, inlinedAt: !2707)
!2713 = !DILocation(line: 1281, column: 15, scope: !2704)
!2714 = !DILocation(line: 1284, column: 61, scope: !2014)
!2715 = !DILocation(line: 1284, column: 52, scope: !2014)
!2716 = !DILocation(line: 0, scope: !2690, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1284, column: 25, scope: !2014)
!2718 = !DILocation(line: 384, column: 19, scope: !2690, inlinedAt: !2717)
!2719 = !DILocation(line: 384, column: 43, scope: !2690, inlinedAt: !2717)
!2720 = !DILocation(line: 384, column: 71, scope: !2690, inlinedAt: !2717)
!2721 = !DILocation(line: 384, column: 11, scope: !2690, inlinedAt: !2717)
!2722 = !DILocation(line: 385, column: 28, scope: !2690, inlinedAt: !2717)
!2723 = !DILocation(line: 0, scope: !2014)
!2724 = !DILocation(line: 1286, column: 23, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2014, file: !1766, line: 1286, column: 21)
!2726 = !DILocation(line: 1286, column: 21, scope: !2014)
!2727 = !DILocation(line: 0, scope: !2015)
!2728 = !DILocation(line: 1294, column: 13, scope: !2010)
!2729 = !DILocation(line: 1298, column: 41, scope: !2017)
!2730 = !DILocation(line: 1298, column: 47, scope: !2017)
!2731 = !DILocation(line: 1298, column: 62, scope: !2017)
!2732 = !DILocation(line: 0, scope: !2017)
!2733 = !DILocation(line: 1299, column: 19, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2017, file: !1766, line: 1299, column: 19)
!2735 = !DILocation(line: 1308, column: 17, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2018, file: !1766, line: 1308, column: 17)
!2737 = !DILocation(line: 1313, column: 17, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2018, file: !1766, line: 1313, column: 17)
!2739 = !DILocation(line: 1318, column: 24, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1318, column: 15)
!2741 = !DILocation(line: 1318, column: 15, scope: !1843)
!2742 = !DILocation(line: 1321, column: 11, scope: !2096)
!2743 = !DILocation(line: 1324, column: 24, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1324, column: 15)
!2745 = !DILocation(line: 1324, column: 15, scope: !1843)
!2746 = !DILocation(line: 1327, column: 11, scope: !2094)
!2747 = !DILocation(line: 1330, column: 15, scope: !1843)
!2748 = !DILocation(line: 1352, column: 11, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1352, column: 11)
!2750 = !DILocation(line: 1356, column: 24, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1356, column: 15)
!2752 = !DILocation(line: 1356, column: 15, scope: !1843)
!2753 = !DILocation(line: 1374, column: 26, scope: !2020)
!2754 = !DILocation(line: 1374, column: 34, scope: !2020)
!2755 = !DILocation(line: 1375, column: 20, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2020, file: !1766, line: 1375, column: 17)
!2757 = !DILocation(line: 1375, column: 17, scope: !2020)
!2758 = !DILocation(line: 1381, column: 15, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1381, column: 15)
!2760 = !DILocation(line: 1397, column: 11, scope: !2022)
!2761 = !DILocation(line: 0, scope: !2022)
!2762 = !DILocation(line: 1397, column: 11, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2022, file: !1766, line: 1397, column: 11)
!2764 = !DILocation(line: 1397, column: 11, scope: !2028)
!2765 = !DILocation(line: 1397, column: 11, scope: !2026)
!2766 = !DILocation(line: 0, scope: !2026)
!2767 = !DILocation(line: 1397, column: 11, scope: !2032)
!2768 = !DILocation(line: 0, scope: !2034)
!2769 = !DILocation(line: 1397, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !1766, line: 1397, column: 11)
!2771 = distinct !DILexicalBlock(scope: !2034, file: !1766, line: 1397, column: 11)
!2772 = !DILocation(line: 1397, column: 11, scope: !2771)
!2773 = !DILocation(line: 0, scope: !2031)
!2774 = !DILocation(line: 1397, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !1766, line: 1397, column: 11)
!2776 = distinct !DILexicalBlock(scope: !2031, file: !1766, line: 1397, column: 11)
!2777 = !DILocation(line: 1397, column: 11, scope: !2776)
!2778 = distinct !{!2778, !2777, !2777}
!2779 = distinct !{!2779, !2772, !2772}
!2780 = !DILocation(line: 1397, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2028, file: !1766, line: 1397, column: 11)
!2782 = !DILocation(line: 0, scope: !2283, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1397, column: 11, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !1766, line: 1397, column: 11)
!2785 = !DILocation(line: 297, column: 16, scope: !2283, inlinedAt: !2783)
!2786 = !DILocation(line: 297, column: 3, scope: !2283, inlinedAt: !2783)
!2787 = !DILocation(line: 0, scope: !2297, inlinedAt: !2783)
!2788 = !DILocation(line: 297, column: 13, scope: !2283, inlinedAt: !2783)
!2789 = !DILocation(line: 299, column: 14, scope: !2297, inlinedAt: !2783)
!2790 = !DILocation(line: 0, scope: !2290, inlinedAt: !2783)
!2791 = !DILocation(line: 299, column: 7, scope: !2291, inlinedAt: !2783)
!2792 = !DILocation(line: 300, column: 7, scope: !2291, inlinedAt: !2783)
!2793 = distinct !{!2793, !2786, !2794}
!2794 = !DILocation(line: 301, column: 5, scope: !2283, inlinedAt: !2783)
!2795 = !DILocation(line: 1397, column: 11, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2784, file: !1766, line: 1397, column: 11)
!2797 = !DILocation(line: 1397, column: 11, scope: !2784)
!2798 = !DILocation(line: 0, scope: !2308, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1397, column: 11, scope: !2796)
!2800 = !DILocation(line: 307, column: 16, scope: !2308, inlinedAt: !2799)
!2801 = !DILocation(line: 307, column: 3, scope: !2308, inlinedAt: !2799)
!2802 = !DILocation(line: 0, scope: !2320, inlinedAt: !2799)
!2803 = !DILocation(line: 307, column: 13, scope: !2308, inlinedAt: !2799)
!2804 = !DILocation(line: 309, column: 14, scope: !2320, inlinedAt: !2799)
!2805 = !DILocation(line: 0, scope: !2313, inlinedAt: !2799)
!2806 = !DILocation(line: 309, column: 7, scope: !2314, inlinedAt: !2799)
!2807 = !DILocation(line: 310, column: 7, scope: !2314, inlinedAt: !2799)
!2808 = distinct !{!2808, !2801, !2809}
!2809 = !DILocation(line: 311, column: 5, scope: !2308, inlinedAt: !2799)
!2810 = !DILocation(line: 1397, column: 11, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2796, file: !1766, line: 1397, column: 11)
!2812 = !DILocation(line: 0, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !1843, file: !1766, line: 1404, column: 11)
!2814 = !DILocation(line: 1404, column: 28, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2813, file: !1766, line: 1404, column: 11)
!2816 = !DILocation(line: 1404, column: 11, scope: !2813)
!2817 = !DILocation(line: 1404, column: 56, scope: !2815)
!2818 = !DILocation(line: 1404, column: 11, scope: !2815)
!2819 = distinct !{!2819, !2816, !2820}
!2820 = !DILocation(line: 1405, column: 13, scope: !2813)
!2821 = !DILocation(line: 1415, column: 19, scope: !2090)
!2822 = !DILocation(line: 1414, column: 9, scope: !1843)
!2823 = !{!2075, !1481, i64 32}
!2824 = !DILocation(line: 1415, column: 28, scope: !2090)
!2825 = !DILocation(line: 1415, column: 15, scope: !1843)
!2826 = !DILocation(line: 1424, column: 24, scope: !2036)
!2827 = !{!2075, !1556, i64 40}
!2828 = !DILocation(line: 1424, column: 20, scope: !2036)
!2829 = !DILocation(line: 1453, column: 36, scope: !2036)
!2830 = !DILocation(line: 1453, column: 40, scope: !2036)
!2831 = !DILocation(line: 1453, column: 49, scope: !2036)
!2832 = !DILocation(line: 1453, column: 54, scope: !2036)
!2833 = !DILocation(line: 1453, column: 57, scope: !2036)
!2834 = !DILocation(line: 1453, column: 63, scope: !2036)
!2835 = !DILocation(line: 1453, column: 29, scope: !2036)
!2836 = !DILocation(line: 1454, column: 30, scope: !2036)
!2837 = !DILocation(line: 1454, column: 35, scope: !2036)
!2838 = !DILocation(line: 1455, column: 34, scope: !2036)
!2839 = !DILocation(line: 1456, column: 29, scope: !2036)
!2840 = !DILocation(line: 1458, column: 13, scope: !2036)
!2841 = !DILocation(line: 1461, column: 17, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2069, file: !1766, line: 1461, column: 17)
!2843 = !DILocation(line: 1463, column: 23, scope: !2069)
!2844 = !DILocation(line: 1464, column: 17, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2069, file: !1766, line: 1464, column: 17)
!2846 = !DILocation(line: 1466, column: 23, scope: !2069)
!2847 = !DILocation(line: 1467, column: 17, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2069, file: !1766, line: 1467, column: 17)
!2849 = !DILocation(line: 1471, column: 30, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2069, file: !1766, line: 1471, column: 21)
!2851 = !DILocation(line: 1471, column: 21, scope: !2069)
!2852 = !DILocation(line: 1473, column: 30, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2069, file: !1766, line: 1473, column: 21)
!2854 = !DILocation(line: 1473, column: 21, scope: !2069)
!2855 = !DILocation(line: 1483, column: 13, scope: !1843)
!2856 = !DILocation(line: 1484, column: 13, scope: !1843)
!2857 = !DILocation(line: 1489, column: 9, scope: !1843)
!2858 = !DILocation(line: 0, scope: !2041)
!2859 = !DILocation(line: 1492, column: 18, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2041, file: !1766, line: 1492, column: 13)
!2861 = !DILocation(line: 0, scope: !2860)
!2862 = !DILocation(line: 1492, column: 32, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !1766, line: 1492, column: 13)
!2864 = !DILocation(line: 1492, column: 28, scope: !2863)
!2865 = !DILocation(line: 1492, column: 40, scope: !2863)
!2866 = !DILocation(line: 1492, column: 56, scope: !2863)
!2867 = !DILocation(line: 1492, column: 13, scope: !2860)
!2868 = distinct !{!2868, !2867, !2869}
!2869 = !DILocation(line: 1493, column: 15, scope: !2860)
!2870 = !DILocation(line: 1494, column: 13, scope: !2043)
!2871 = !DILocation(line: 0, scope: !2043)
!2872 = !DILocation(line: 1494, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2043, file: !1766, line: 1494, column: 13)
!2874 = !DILocation(line: 1494, column: 13, scope: !2049)
!2875 = !DILocation(line: 1494, column: 13, scope: !2047)
!2876 = !DILocation(line: 0, scope: !2047)
!2877 = !DILocation(line: 1494, column: 13, scope: !2053)
!2878 = !DILocation(line: 0, scope: !2055)
!2879 = !DILocation(line: 1494, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !1766, line: 1494, column: 13)
!2881 = distinct !DILexicalBlock(scope: !2055, file: !1766, line: 1494, column: 13)
!2882 = !DILocation(line: 1494, column: 13, scope: !2881)
!2883 = !DILocation(line: 0, scope: !2052)
!2884 = !DILocation(line: 1494, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !1766, line: 1494, column: 13)
!2886 = distinct !DILexicalBlock(scope: !2052, file: !1766, line: 1494, column: 13)
!2887 = !DILocation(line: 1494, column: 13, scope: !2886)
!2888 = distinct !{!2888, !2887, !2887}
!2889 = distinct !{!2889, !2882, !2882}
!2890 = !DILocation(line: 1494, column: 13, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !1766, line: 1494, column: 13)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !1766, line: 1494, column: 13)
!2893 = distinct !DILexicalBlock(scope: !2049, file: !1766, line: 1494, column: 13)
!2894 = !DILocation(line: 1494, column: 13, scope: !2892)
!2895 = !DILocation(line: 0, scope: !2308, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1494, column: 13, scope: !2891)
!2897 = !DILocation(line: 0, scope: !2320, inlinedAt: !2896)
!2898 = !DILocation(line: 307, column: 3, scope: !2308, inlinedAt: !2896)
!2899 = !DILocation(line: 307, column: 13, scope: !2308, inlinedAt: !2896)
!2900 = !DILocation(line: 309, column: 14, scope: !2320, inlinedAt: !2896)
!2901 = !DILocation(line: 0, scope: !2313, inlinedAt: !2896)
!2902 = !DILocation(line: 309, column: 7, scope: !2314, inlinedAt: !2896)
!2903 = !DILocation(line: 310, column: 7, scope: !2314, inlinedAt: !2896)
!2904 = !DILocation(line: 307, column: 16, scope: !2308, inlinedAt: !2896)
!2905 = distinct !{!2905, !2898, !2906}
!2906 = !DILocation(line: 311, column: 5, scope: !2308, inlinedAt: !2896)
!2907 = !DILocation(line: 1494, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2891, file: !1766, line: 1494, column: 13)
!2909 = !DILocation(line: 1498, column: 5, scope: !1804)
!2910 = !DILocation(line: 561, column: 45, scope: !1804)
!2911 = distinct !{!2911, !2087, !2912}
!2912 = !DILocation(line: 1498, column: 5, scope: !1805)
!2913 = !DILocation(line: 1506, column: 1, scope: !1782)
!2914 = distinct !DISubprogram(name: "parse_long_options", scope: !141, file: !141, line: 45, type: !2915, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !38, !20, !6, !6, !6, !473, null}
!2917 = !{!2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926}
!2918 = !DILocalVariable(name: "argc", arg: 1, scope: !2914, file: !141, line: 45, type: !38)
!2919 = !DILocalVariable(name: "argv", arg: 2, scope: !2914, file: !141, line: 46, type: !20)
!2920 = !DILocalVariable(name: "command_name", arg: 3, scope: !2914, file: !141, line: 47, type: !6)
!2921 = !DILocalVariable(name: "package", arg: 4, scope: !2914, file: !141, line: 48, type: !6)
!2922 = !DILocalVariable(name: "version", arg: 5, scope: !2914, file: !141, line: 49, type: !6)
!2923 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2914, file: !141, line: 50, type: !473)
!2924 = !DILocalVariable(name: "c", scope: !2914, file: !141, line: 53, type: !38)
!2925 = !DILocalVariable(name: "saved_opterr", scope: !2914, file: !141, line: 54, type: !38)
!2926 = !DILocalVariable(name: "authors", scope: !2927, file: !141, line: 72, type: !2931)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !141, line: 71, column: 11)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !141, line: 65, column: 9)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !141, line: 63, column: 5)
!2930 = distinct !DILexicalBlock(scope: !2914, file: !141, line: 61, column: 7)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !212, line: 52, baseType: !2932)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2933, line: 32, baseType: !2934)
!2933 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !141, line: 72, baseType: !2935)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 192, elements: !91)
!2936 = !DILocation(line: 0, scope: !2914)
!2937 = !DILocation(line: 56, column: 18, scope: !2914)
!2938 = !DILocation(line: 59, column: 10, scope: !2914)
!2939 = !DILocation(line: 61, column: 12, scope: !2930)
!2940 = !DILocation(line: 62, column: 7, scope: !2930)
!2941 = !DILocation(line: 62, column: 15, scope: !2930)
!2942 = !DILocation(line: 61, column: 7, scope: !2914)
!2943 = !DILocation(line: 67, column: 11, scope: !2928)
!2944 = !DILocation(line: 68, column: 11, scope: !2928)
!2945 = !DILocation(line: 72, column: 13, scope: !2927)
!2946 = !DILocation(line: 72, column: 21, scope: !2927)
!2947 = !DILocation(line: 73, column: 13, scope: !2927)
!2948 = !DILocation(line: 74, column: 29, scope: !2927)
!2949 = !DILocation(line: 74, column: 13, scope: !2927)
!2950 = !DILocation(line: 75, column: 13, scope: !2927)
!2951 = !DILocation(line: 85, column: 10, scope: !2914)
!2952 = !DILocation(line: 89, column: 10, scope: !2914)
!2953 = !DILocation(line: 90, column: 1, scope: !2914)
!2954 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !141, file: !141, line: 98, type: !471, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2956 = !DILocalVariable(name: "argc", arg: 1, scope: !2954, file: !141, line: 98, type: !38)
!2957 = !DILocalVariable(name: "argv", arg: 2, scope: !2954, file: !141, line: 99, type: !20)
!2958 = !DILocalVariable(name: "command_name", arg: 3, scope: !2954, file: !141, line: 100, type: !6)
!2959 = !DILocalVariable(name: "package", arg: 4, scope: !2954, file: !141, line: 101, type: !6)
!2960 = !DILocalVariable(name: "version", arg: 5, scope: !2954, file: !141, line: 102, type: !6)
!2961 = !DILocalVariable(name: "scan_all", arg: 6, scope: !2954, file: !141, line: 103, type: !131)
!2962 = !DILocalVariable(name: "usage_func", arg: 7, scope: !2954, file: !141, line: 104, type: !473)
!2963 = !DILocalVariable(name: "c", scope: !2954, file: !141, line: 107, type: !38)
!2964 = !DILocalVariable(name: "saved_opterr", scope: !2954, file: !141, line: 108, type: !38)
!2965 = !DILocalVariable(name: "optstring", scope: !2954, file: !141, line: 113, type: !6)
!2966 = !DILocalVariable(name: "authors", scope: !2967, file: !141, line: 125, type: !2931)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !141, line: 124, column: 11)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !141, line: 118, column: 9)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !141, line: 116, column: 5)
!2970 = distinct !DILexicalBlock(scope: !2954, file: !141, line: 115, column: 7)
!2971 = !DILocation(line: 0, scope: !2954)
!2972 = !DILocation(line: 108, column: 22, scope: !2954)
!2973 = !DILocation(line: 111, column: 10, scope: !2954)
!2974 = !DILocation(line: 113, column: 27, scope: !2954)
!2975 = !DILocation(line: 115, column: 12, scope: !2970)
!2976 = !DILocation(line: 115, column: 7, scope: !2954)
!2977 = !DILocation(line: 125, column: 13, scope: !2967)
!2978 = !DILocation(line: 125, column: 21, scope: !2967)
!2979 = !DILocation(line: 126, column: 13, scope: !2967)
!2980 = !DILocation(line: 127, column: 29, scope: !2967)
!2981 = !DILocation(line: 127, column: 13, scope: !2967)
!2982 = !DILocation(line: 128, column: 13, scope: !2967)
!2983 = !DILocation(line: 132, column: 26, scope: !2968)
!2984 = !DILocation(line: 133, column: 11, scope: !2968)
!2985 = !DILocation(line: 0, scope: !2968)
!2986 = !DILocation(line: 138, column: 10, scope: !2954)
!2987 = !DILocation(line: 139, column: 1, scope: !2954)
!2988 = distinct !DISubprogram(name: "set_program_name", scope: !209, file: !209, line: 39, type: !456, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !2989)
!2989 = !{!2990, !2991, !2992}
!2990 = !DILocalVariable(name: "argv0", arg: 1, scope: !2988, file: !209, line: 39, type: !6)
!2991 = !DILocalVariable(name: "slash", scope: !2988, file: !209, line: 46, type: !6)
!2992 = !DILocalVariable(name: "base", scope: !2988, file: !209, line: 47, type: !6)
!2993 = !DILocation(line: 0, scope: !2988)
!2994 = !DILocation(line: 51, column: 13, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !209, line: 51, column: 7)
!2996 = !DILocation(line: 51, column: 7, scope: !2988)
!2997 = !DILocation(line: 55, column: 14, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !209, line: 52, column: 5)
!2999 = !DILocation(line: 54, column: 7, scope: !2998)
!3000 = !DILocation(line: 56, column: 7, scope: !2998)
!3001 = !DILocation(line: 59, column: 11, scope: !2988)
!3002 = !DILocation(line: 60, column: 17, scope: !2988)
!3003 = !DILocation(line: 60, column: 11, scope: !2988)
!3004 = !DILocation(line: 61, column: 12, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2988, file: !209, line: 61, column: 7)
!3006 = !DILocation(line: 61, column: 20, scope: !3005)
!3007 = !DILocation(line: 61, column: 25, scope: !3005)
!3008 = !DILocation(line: 61, column: 42, scope: !3005)
!3009 = !DILocation(line: 61, column: 28, scope: !3005)
!3010 = !DILocation(line: 61, column: 61, scope: !3005)
!3011 = !DILocation(line: 61, column: 7, scope: !2988)
!3012 = !DILocation(line: 64, column: 11, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !209, line: 64, column: 11)
!3014 = distinct !DILexicalBlock(scope: !3005, file: !209, line: 62, column: 5)
!3015 = !DILocation(line: 64, column: 36, scope: !3013)
!3016 = !DILocation(line: 64, column: 11, scope: !3014)
!3017 = !DILocation(line: 66, column: 24, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !209, line: 65, column: 9)
!3019 = !DILocation(line: 70, column: 41, scope: !3018)
!3020 = !DILocation(line: 72, column: 9, scope: !3018)
!3021 = !DILocation(line: 84, column: 16, scope: !2988)
!3022 = !DILocation(line: 90, column: 27, scope: !2988)
!3023 = !DILocation(line: 92, column: 1, scope: !2988)
!3024 = distinct !DISubprogram(name: "clone_quoting_options", scope: !251, file: !251, line: 122, type: !3025, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3028)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3027, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3028 = !{!3029, !3030, !3031}
!3029 = !DILocalVariable(name: "o", arg: 1, scope: !3024, file: !251, line: 122, type: !3027)
!3030 = !DILocalVariable(name: "e", scope: !3024, file: !251, line: 124, type: !38)
!3031 = !DILocalVariable(name: "p", scope: !3024, file: !251, line: 125, type: !3027)
!3032 = !DILocation(line: 0, scope: !3024)
!3033 = !DILocation(line: 124, column: 11, scope: !3024)
!3034 = !DILocation(line: 125, column: 40, scope: !3024)
!3035 = !DILocation(line: 125, column: 31, scope: !3024)
!3036 = !DILocation(line: 127, column: 9, scope: !3024)
!3037 = !DILocation(line: 128, column: 3, scope: !3024)
!3038 = distinct !DISubprogram(name: "get_quoting_style", scope: !251, file: !251, line: 133, type: !3039, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!253, !297}
!3041 = !{!3042}
!3042 = !DILocalVariable(name: "o", arg: 1, scope: !3038, file: !251, line: 133, type: !297)
!3043 = !DILocation(line: 0, scope: !3038)
!3044 = !DILocation(line: 135, column: 11, scope: !3038)
!3045 = !DILocation(line: 135, column: 46, scope: !3038)
!3046 = !{!3047, !1425, i64 0}
!3047 = !{!"quoting_options", !1425, i64 0, !1481, i64 4, !1425, i64 8, !1424, i64 40, !1424, i64 48}
!3048 = !DILocation(line: 135, column: 3, scope: !3038)
!3049 = distinct !DISubprogram(name: "set_quoting_style", scope: !251, file: !251, line: 141, type: !3050, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !3027, !253}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "o", arg: 1, scope: !3049, file: !251, line: 141, type: !3027)
!3054 = !DILocalVariable(name: "s", arg: 2, scope: !3049, file: !251, line: 141, type: !253)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 143, column: 4, scope: !3049)
!3057 = !DILocation(line: 143, column: 39, scope: !3049)
!3058 = !DILocation(line: 143, column: 45, scope: !3049)
!3059 = !DILocation(line: 144, column: 1, scope: !3049)
!3060 = distinct !DISubprogram(name: "set_char_quoting", scope: !251, file: !251, line: 152, type: !3061, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!38, !3027, !8, !38}
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3070, !3071}
!3064 = !DILocalVariable(name: "o", arg: 1, scope: !3060, file: !251, line: 152, type: !3027)
!3065 = !DILocalVariable(name: "c", arg: 2, scope: !3060, file: !251, line: 152, type: !8)
!3066 = !DILocalVariable(name: "i", arg: 3, scope: !3060, file: !251, line: 152, type: !38)
!3067 = !DILocalVariable(name: "uc", scope: !3060, file: !251, line: 154, type: !569)
!3068 = !DILocalVariable(name: "p", scope: !3060, file: !251, line: 155, type: !3069)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!3070 = !DILocalVariable(name: "shift", scope: !3060, file: !251, line: 157, type: !38)
!3071 = !DILocalVariable(name: "r", scope: !3060, file: !251, line: 158, type: !38)
!3072 = !DILocation(line: 0, scope: !3060)
!3073 = !DILocation(line: 156, column: 6, scope: !3060)
!3074 = !DILocation(line: 156, column: 62, scope: !3060)
!3075 = !DILocation(line: 156, column: 57, scope: !3060)
!3076 = !DILocation(line: 157, column: 15, scope: !3060)
!3077 = !DILocation(line: 158, column: 12, scope: !3060)
!3078 = !DILocation(line: 158, column: 15, scope: !3060)
!3079 = !DILocation(line: 158, column: 25, scope: !3060)
!3080 = !DILocation(line: 159, column: 13, scope: !3060)
!3081 = !DILocation(line: 159, column: 18, scope: !3060)
!3082 = !DILocation(line: 159, column: 23, scope: !3060)
!3083 = !DILocation(line: 159, column: 6, scope: !3060)
!3084 = !DILocation(line: 160, column: 3, scope: !3060)
!3085 = distinct !DISubprogram(name: "set_quoting_flags", scope: !251, file: !251, line: 168, type: !3086, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!38, !3027, !38}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "o", arg: 1, scope: !3085, file: !251, line: 168, type: !3027)
!3090 = !DILocalVariable(name: "i", arg: 2, scope: !3085, file: !251, line: 168, type: !38)
!3091 = !DILocalVariable(name: "r", scope: !3085, file: !251, line: 170, type: !38)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 171, column: 8, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3085, file: !251, line: 171, column: 7)
!3095 = !DILocation(line: 171, column: 7, scope: !3085)
!3096 = !DILocation(line: 173, column: 10, scope: !3085)
!3097 = !{!3047, !1481, i64 4}
!3098 = !DILocation(line: 174, column: 12, scope: !3085)
!3099 = !DILocation(line: 175, column: 3, scope: !3085)
!3100 = distinct !DISubprogram(name: "set_custom_quoting", scope: !251, file: !251, line: 179, type: !3101, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !3027, !6, !6}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "o", arg: 1, scope: !3100, file: !251, line: 179, type: !3027)
!3105 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3100, file: !251, line: 180, type: !6)
!3106 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3100, file: !251, line: 180, type: !6)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocation(line: 182, column: 8, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !251, line: 182, column: 7)
!3110 = !DILocation(line: 182, column: 7, scope: !3100)
!3111 = !DILocation(line: 184, column: 6, scope: !3100)
!3112 = !DILocation(line: 184, column: 12, scope: !3100)
!3113 = !DILocation(line: 185, column: 8, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3100, file: !251, line: 185, column: 7)
!3115 = !DILocation(line: 185, column: 23, scope: !3114)
!3116 = !DILocation(line: 185, column: 19, scope: !3114)
!3117 = !DILocation(line: 186, column: 5, scope: !3114)
!3118 = !DILocation(line: 187, column: 6, scope: !3100)
!3119 = !DILocation(line: 187, column: 17, scope: !3100)
!3120 = !{!3047, !1424, i64 40}
!3121 = !DILocation(line: 188, column: 6, scope: !3100)
!3122 = !DILocation(line: 188, column: 18, scope: !3100)
!3123 = !{!3047, !1424, i64 48}
!3124 = !DILocation(line: 189, column: 1, scope: !3100)
!3125 = distinct !DISubprogram(name: "quotearg_buffer", scope: !251, file: !251, line: 784, type: !3126, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!108, !14, !108, !6, !108, !297}
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136}
!3129 = !DILocalVariable(name: "buffer", arg: 1, scope: !3125, file: !251, line: 784, type: !14)
!3130 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3125, file: !251, line: 784, type: !108)
!3131 = !DILocalVariable(name: "arg", arg: 3, scope: !3125, file: !251, line: 785, type: !6)
!3132 = !DILocalVariable(name: "argsize", arg: 4, scope: !3125, file: !251, line: 785, type: !108)
!3133 = !DILocalVariable(name: "o", arg: 5, scope: !3125, file: !251, line: 786, type: !297)
!3134 = !DILocalVariable(name: "p", scope: !3125, file: !251, line: 788, type: !297)
!3135 = !DILocalVariable(name: "e", scope: !3125, file: !251, line: 789, type: !38)
!3136 = !DILocalVariable(name: "r", scope: !3125, file: !251, line: 790, type: !108)
!3137 = !DILocation(line: 0, scope: !3125)
!3138 = !DILocation(line: 788, column: 37, scope: !3125)
!3139 = !DILocation(line: 789, column: 11, scope: !3125)
!3140 = !DILocation(line: 791, column: 43, scope: !3125)
!3141 = !DILocation(line: 791, column: 53, scope: !3125)
!3142 = !DILocation(line: 791, column: 60, scope: !3125)
!3143 = !DILocation(line: 792, column: 43, scope: !3125)
!3144 = !DILocation(line: 792, column: 58, scope: !3125)
!3145 = !DILocation(line: 790, column: 14, scope: !3125)
!3146 = !DILocation(line: 793, column: 9, scope: !3125)
!3147 = !DILocation(line: 794, column: 3, scope: !3125)
!3148 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !251, file: !251, line: 256, type: !3149, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3153)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!108, !14, !108, !6, !108, !253, !38, !3151, !6, !6}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3178, !3179, !3180, !3181, !3182, !3185, !3186, !3192, !3195, !3196, !3203, !3206, !3207, !3208, !3209, !3210, !3211}
!3154 = !DILocalVariable(name: "buffer", arg: 1, scope: !3148, file: !251, line: 256, type: !14)
!3155 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3148, file: !251, line: 256, type: !108)
!3156 = !DILocalVariable(name: "arg", arg: 3, scope: !3148, file: !251, line: 257, type: !6)
!3157 = !DILocalVariable(name: "argsize", arg: 4, scope: !3148, file: !251, line: 257, type: !108)
!3158 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3148, file: !251, line: 258, type: !253)
!3159 = !DILocalVariable(name: "flags", arg: 6, scope: !3148, file: !251, line: 258, type: !38)
!3160 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3148, file: !251, line: 259, type: !3151)
!3161 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3148, file: !251, line: 260, type: !6)
!3162 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3148, file: !251, line: 261, type: !6)
!3163 = !DILocalVariable(name: "i", scope: !3148, file: !251, line: 263, type: !108)
!3164 = !DILocalVariable(name: "len", scope: !3148, file: !251, line: 264, type: !108)
!3165 = !DILocalVariable(name: "orig_buffersize", scope: !3148, file: !251, line: 265, type: !108)
!3166 = !DILocalVariable(name: "quote_string", scope: !3148, file: !251, line: 266, type: !6)
!3167 = !DILocalVariable(name: "quote_string_len", scope: !3148, file: !251, line: 267, type: !108)
!3168 = !DILocalVariable(name: "backslash_escapes", scope: !3148, file: !251, line: 268, type: !131)
!3169 = !DILocalVariable(name: "unibyte_locale", scope: !3148, file: !251, line: 269, type: !131)
!3170 = !DILocalVariable(name: "elide_outer_quotes", scope: !3148, file: !251, line: 270, type: !131)
!3171 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3148, file: !251, line: 271, type: !131)
!3172 = !DILocalVariable(name: "encountered_single_quote", scope: !3148, file: !251, line: 272, type: !131)
!3173 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3148, file: !251, line: 273, type: !131)
!3174 = !DILocalVariable(name: "c", scope: !3175, file: !251, line: 402, type: !569)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !251, line: 401, column: 5)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !251, line: 400, column: 3)
!3177 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 400, column: 3)
!3178 = !DILocalVariable(name: "esc", scope: !3175, file: !251, line: 403, type: !569)
!3179 = !DILocalVariable(name: "is_right_quote", scope: !3175, file: !251, line: 404, type: !131)
!3180 = !DILocalVariable(name: "escaping", scope: !3175, file: !251, line: 405, type: !131)
!3181 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3175, file: !251, line: 406, type: !131)
!3182 = !DILocalVariable(name: "m", scope: !3183, file: !251, line: 610, type: !108)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 608, column: 11)
!3184 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 426, column: 9)
!3185 = !DILocalVariable(name: "printable", scope: !3183, file: !251, line: 612, type: !131)
!3186 = !DILocalVariable(name: "mbstate", scope: !3187, file: !251, line: 621, type: !3189)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !251, line: 620, column: 15)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !251, line: 614, column: 17)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3190, line: 6, baseType: !3191)
!3190 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !321, line: 21, baseType: !320)
!3192 = !DILocalVariable(name: "w", scope: !3193, file: !251, line: 631, type: !3194)
!3193 = distinct !DILexicalBlock(scope: !3187, file: !251, line: 630, column: 19)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !38)
!3195 = !DILocalVariable(name: "bytes", scope: !3193, file: !251, line: 632, type: !108)
!3196 = !DILocalVariable(name: "j", scope: !3197, file: !251, line: 657, type: !108)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !251, line: 656, column: 27)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !251, line: 654, column: 29)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !251, line: 649, column: 23)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !251, line: 641, column: 30)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !251, line: 636, column: 30)
!3202 = distinct !DILexicalBlock(scope: !3193, file: !251, line: 634, column: 25)
!3203 = !DILocalVariable(name: "ilim", scope: !3204, file: !251, line: 684, type: !108)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !251, line: 681, column: 15)
!3205 = distinct !DILexicalBlock(scope: !3183, file: !251, line: 680, column: 17)
!3206 = !DILabel(scope: !3148, name: "process_input", file: !251, line: 314)
!3207 = !DILabel(scope: !3184, name: "c_and_shell_escape", file: !251, line: 512)
!3208 = !DILabel(scope: !3184, name: "c_escape", file: !251, line: 517)
!3209 = !DILabel(scope: !3175, name: "store_escape", file: !251, line: 719)
!3210 = !DILabel(scope: !3175, name: "store_c", file: !251, line: 722)
!3211 = !DILabel(scope: !3148, name: "force_outer_quoting_style", file: !251, line: 763)
!3212 = !DILocation(line: 0, scope: !3148)
!3213 = !DILocation(line: 269, column: 25, scope: !3148)
!3214 = !DILocation(line: 269, column: 36, scope: !3148)
!3215 = !DILocation(line: 270, column: 8, scope: !3148)
!3216 = !DILocation(line: 0, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 526, column: 15)
!3218 = !DILocation(line: 0, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !251, line: 462, column: 19)
!3220 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 455, column: 13)
!3221 = !DILocation(line: 0, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !251, line: 449, column: 20)
!3223 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 428, column: 15)
!3224 = !DILocation(line: 0, scope: !3187)
!3225 = !DILocation(line: 0, scope: !3193)
!3226 = !DILocation(line: 0, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 712, column: 11)
!3228 = !DILocation(line: 273, column: 3, scope: !3148)
!3229 = !DILocation(line: 265, column: 10, scope: !3148)
!3230 = !DILocation(line: 266, column: 15, scope: !3148)
!3231 = !DILocation(line: 267, column: 10, scope: !3148)
!3232 = !DILocation(line: 268, column: 8, scope: !3148)
!3233 = !DILocation(line: 271, column: 8, scope: !3148)
!3234 = !DILocation(line: 272, column: 8, scope: !3148)
!3235 = !DILocation(line: 273, column: 8, scope: !3148)
!3236 = !DILocation(line: 314, column: 2, scope: !3148)
!3237 = !DILocation(line: 316, column: 3, scope: !3148)
!3238 = !DILocation(line: 323, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 317, column: 5)
!3240 = !DILocation(line: 323, column: 12, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3239, file: !251, line: 323, column: 11)
!3242 = !DILocation(line: 324, column: 9, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !251, line: 324, column: 9)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !251, line: 324, column: 9)
!3245 = !DILocation(line: 324, column: 9, scope: !3244)
!3246 = !DILocation(line: 362, column: 26, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !251, line: 340, column: 11)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !251, line: 339, column: 13)
!3249 = distinct !DILexicalBlock(scope: !3239, file: !251, line: 338, column: 7)
!3250 = !DILocation(line: 363, column: 27, scope: !3247)
!3251 = !DILocation(line: 364, column: 11, scope: !3247)
!3252 = !DILocation(line: 365, column: 14, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !251, line: 365, column: 13)
!3254 = !DILocation(line: 365, column: 13, scope: !3249)
!3255 = !DILocation(line: 366, column: 43, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !251, line: 366, column: 11)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !251, line: 366, column: 11)
!3258 = !DILocation(line: 366, column: 11, scope: !3257)
!3259 = !DILocation(line: 367, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !251, line: 367, column: 13)
!3261 = distinct !DILexicalBlock(scope: !3256, file: !251, line: 367, column: 13)
!3262 = !DILocation(line: 367, column: 13, scope: !3261)
!3263 = !DILocation(line: 366, column: 70, scope: !3256)
!3264 = distinct !{!3264, !3258, !3265}
!3265 = !DILocation(line: 367, column: 13, scope: !3257)
!3266 = !DILocation(line: 264, column: 10, scope: !3148)
!3267 = !DILocation(line: 370, column: 28, scope: !3249)
!3268 = !DILocation(line: 372, column: 7, scope: !3239)
!3269 = !DILocation(line: 376, column: 7, scope: !3239)
!3270 = !DILocation(line: 379, column: 7, scope: !3239)
!3271 = !DILocation(line: 381, column: 12, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3239, file: !251, line: 381, column: 11)
!3273 = !DILocation(line: 381, column: 11, scope: !3239)
!3274 = !DILocation(line: 386, column: 12, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3239, file: !251, line: 386, column: 11)
!3276 = !DILocation(line: 386, column: 11, scope: !3239)
!3277 = !DILocation(line: 387, column: 9, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !251, line: 387, column: 9)
!3279 = distinct !DILexicalBlock(scope: !3275, file: !251, line: 387, column: 9)
!3280 = !DILocation(line: 387, column: 9, scope: !3279)
!3281 = !DILocation(line: 394, column: 7, scope: !3239)
!3282 = !DILocation(line: 397, column: 7, scope: !3239)
!3283 = !DILocation(line: 0, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 408, column: 11)
!3285 = !DILocation(line: 0, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !251, line: 419, column: 15)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !251, line: 418, column: 9)
!3288 = !DILocation(line: 0, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 556, column: 15)
!3290 = !DILocation(line: 0, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 548, column: 15)
!3292 = !DILocation(line: 0, scope: !3198)
!3293 = !DILocation(line: 0, scope: !3205)
!3294 = !DILocation(line: 0, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 509, column: 15)
!3296 = !DILocation(line: 400, column: 8, scope: !3177)
!3297 = !DILocation(line: 0, scope: !3177)
!3298 = !DILocation(line: 400, column: 27, scope: !3176)
!3299 = !DILocation(line: 400, column: 19, scope: !3176)
!3300 = !DILocation(line: 400, column: 41, scope: !3176)
!3301 = !DILocation(line: 400, column: 48, scope: !3176)
!3302 = !DILocation(line: 400, column: 3, scope: !3177)
!3303 = !DILocation(line: 400, column: 60, scope: !3176)
!3304 = !DILocation(line: 0, scope: !3175)
!3305 = !DILocation(line: 409, column: 11, scope: !3284)
!3306 = !DILocation(line: 411, column: 17, scope: !3284)
!3307 = !DILocation(line: 412, column: 39, scope: !3284)
!3308 = !DILocation(line: 416, column: 32, scope: !3284)
!3309 = !DILocation(line: 412, column: 19, scope: !3284)
!3310 = !DILocation(line: 412, column: 15, scope: !3284)
!3311 = !DILocation(line: 417, column: 11, scope: !3284)
!3312 = !DILocation(line: 417, column: 26, scope: !3284)
!3313 = !DILocation(line: 417, column: 14, scope: !3284)
!3314 = !DILocation(line: 417, column: 63, scope: !3284)
!3315 = !DILocation(line: 408, column: 11, scope: !3175)
!3316 = !DILocation(line: 424, column: 11, scope: !3175)
!3317 = !DILocation(line: 425, column: 7, scope: !3175)
!3318 = !DILocation(line: 428, column: 15, scope: !3184)
!3319 = !DILocation(line: 430, column: 15, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !251, line: 430, column: 15)
!3321 = distinct !DILexicalBlock(scope: !3223, file: !251, line: 429, column: 13)
!3322 = !DILocation(line: 430, column: 15, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !251, line: 430, column: 15)
!3324 = !DILocation(line: 430, column: 15, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !251, line: 430, column: 15)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !251, line: 430, column: 15)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !251, line: 430, column: 15)
!3328 = !DILocation(line: 430, column: 15, scope: !3326)
!3329 = !DILocation(line: 430, column: 15, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !251, line: 430, column: 15)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !251, line: 430, column: 15)
!3332 = !DILocation(line: 430, column: 15, scope: !3331)
!3333 = !DILocation(line: 430, column: 15, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !251, line: 430, column: 15)
!3335 = distinct !DILexicalBlock(scope: !3327, file: !251, line: 430, column: 15)
!3336 = !DILocation(line: 430, column: 15, scope: !3335)
!3337 = !DILocation(line: 430, column: 15, scope: !3327)
!3338 = !DILocation(line: 430, column: 15, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !251, line: 430, column: 15)
!3340 = distinct !DILexicalBlock(scope: !3320, file: !251, line: 430, column: 15)
!3341 = !DILocation(line: 430, column: 15, scope: !3340)
!3342 = !DILocation(line: 438, column: 19, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3321, file: !251, line: 437, column: 19)
!3344 = !DILocation(line: 438, column: 24, scope: !3343)
!3345 = !DILocation(line: 438, column: 28, scope: !3343)
!3346 = !DILocation(line: 438, column: 38, scope: !3343)
!3347 = !DILocation(line: 438, column: 48, scope: !3343)
!3348 = !DILocation(line: 438, column: 59, scope: !3343)
!3349 = !DILocation(line: 440, column: 19, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !251, line: 440, column: 19)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !251, line: 440, column: 19)
!3352 = distinct !DILexicalBlock(scope: !3343, file: !251, line: 439, column: 17)
!3353 = !DILocation(line: 440, column: 19, scope: !3351)
!3354 = !DILocation(line: 441, column: 19, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !251, line: 441, column: 19)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !251, line: 441, column: 19)
!3357 = !DILocation(line: 441, column: 19, scope: !3356)
!3358 = !DILocation(line: 442, column: 17, scope: !3352)
!3359 = !DILocation(line: 449, column: 20, scope: !3223)
!3360 = !DILocation(line: 454, column: 11, scope: !3184)
!3361 = !DILocation(line: 457, column: 19, scope: !3220)
!3362 = !DILocation(line: 463, column: 19, scope: !3219)
!3363 = !DILocation(line: 463, column: 24, scope: !3219)
!3364 = !DILocation(line: 463, column: 28, scope: !3219)
!3365 = !DILocation(line: 463, column: 38, scope: !3219)
!3366 = !DILocation(line: 463, column: 47, scope: !3219)
!3367 = !DILocation(line: 463, column: 41, scope: !3219)
!3368 = !DILocation(line: 463, column: 52, scope: !3219)
!3369 = !DILocation(line: 462, column: 19, scope: !3220)
!3370 = !DILocation(line: 464, column: 25, scope: !3219)
!3371 = !DILocation(line: 464, column: 17, scope: !3219)
!3372 = !DILocation(line: 471, column: 25, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3219, file: !251, line: 465, column: 19)
!3374 = !DILocation(line: 475, column: 21, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !251, line: 475, column: 21)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !251, line: 475, column: 21)
!3377 = !DILocation(line: 475, column: 21, scope: !3376)
!3378 = !DILocation(line: 476, column: 21, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !251, line: 476, column: 21)
!3380 = distinct !DILexicalBlock(scope: !3373, file: !251, line: 476, column: 21)
!3381 = !DILocation(line: 476, column: 21, scope: !3380)
!3382 = !DILocation(line: 477, column: 21, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !251, line: 477, column: 21)
!3384 = distinct !DILexicalBlock(scope: !3373, file: !251, line: 477, column: 21)
!3385 = !DILocation(line: 477, column: 21, scope: !3384)
!3386 = !DILocation(line: 478, column: 21, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !251, line: 478, column: 21)
!3388 = distinct !DILexicalBlock(scope: !3373, file: !251, line: 478, column: 21)
!3389 = !DILocation(line: 478, column: 21, scope: !3388)
!3390 = !DILocation(line: 479, column: 21, scope: !3373)
!3391 = !DILocation(line: 492, column: 31, scope: !3184)
!3392 = !DILocation(line: 493, column: 31, scope: !3184)
!3393 = !DILocation(line: 495, column: 31, scope: !3184)
!3394 = !DILocation(line: 496, column: 31, scope: !3184)
!3395 = !DILocation(line: 497, column: 31, scope: !3184)
!3396 = !DILocation(line: 500, column: 15, scope: !3184)
!3397 = !DILocation(line: 502, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !251, line: 501, column: 13)
!3399 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 500, column: 15)
!3400 = !DILocation(line: 509, column: 33, scope: !3295)
!3401 = !DILocation(line: 0, scope: !3184)
!3402 = !DILocation(line: 512, column: 9, scope: !3184)
!3403 = !DILocation(line: 514, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 513, column: 15)
!3405 = !DILocation(line: 517, column: 9, scope: !3184)
!3406 = !DILocation(line: 518, column: 15, scope: !3184)
!3407 = !DILocation(line: 526, column: 15, scope: !3184)
!3408 = !DILocation(line: 526, column: 40, scope: !3217)
!3409 = !DILocation(line: 526, column: 47, scope: !3217)
!3410 = !DILocation(line: 526, column: 18, scope: !3217)
!3411 = !DILocation(line: 530, column: 17, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3184, file: !251, line: 530, column: 15)
!3413 = !DILocation(line: 530, column: 15, scope: !3184)
!3414 = !DILocation(line: 535, column: 11, scope: !3184)
!3415 = !DILocation(line: 549, column: 15, scope: !3291)
!3416 = !DILocation(line: 556, column: 15, scope: !3184)
!3417 = !DILocation(line: 558, column: 19, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3289, file: !251, line: 557, column: 13)
!3419 = !DILocation(line: 561, column: 19, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3418, file: !251, line: 561, column: 19)
!3421 = !DILocation(line: 561, column: 35, scope: !3420)
!3422 = !DILocation(line: 561, column: 30, scope: !3420)
!3423 = !DILocation(line: 570, column: 15, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !251, line: 570, column: 15)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !251, line: 570, column: 15)
!3426 = !DILocation(line: 570, column: 15, scope: !3425)
!3427 = !DILocation(line: 571, column: 15, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !251, line: 571, column: 15)
!3429 = distinct !DILexicalBlock(scope: !3418, file: !251, line: 571, column: 15)
!3430 = !DILocation(line: 571, column: 15, scope: !3429)
!3431 = !DILocation(line: 572, column: 15, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !251, line: 572, column: 15)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !251, line: 572, column: 15)
!3434 = !DILocation(line: 572, column: 15, scope: !3433)
!3435 = !DILocation(line: 574, column: 13, scope: !3418)
!3436 = !DILocation(line: 614, column: 17, scope: !3183)
!3437 = !DILocation(line: 0, scope: !3183)
!3438 = !DILocation(line: 617, column: 29, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3188, file: !251, line: 615, column: 15)
!3440 = !{!1593, !1593, i64 0}
!3441 = !DILocation(line: 617, column: 27, scope: !3439)
!3442 = !DILocation(line: 618, column: 15, scope: !3439)
!3443 = !DILocation(line: 621, column: 17, scope: !3187)
!3444 = !DILocation(line: 621, column: 27, scope: !3187)
!3445 = !DILocalVariable(name: "__dest", arg: 1, scope: !3446, file: !3447, line: 59, type: !106)
!3446 = distinct !DISubprogram(name: "memset", scope: !3447, file: !3447, line: 59, type: !3448, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3450)
!3447 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!106, !106, !38, !108}
!3450 = !{!3445, !3451, !3452}
!3451 = !DILocalVariable(name: "__ch", arg: 2, scope: !3446, file: !3447, line: 59, type: !38)
!3452 = !DILocalVariable(name: "__len", arg: 3, scope: !3446, file: !3447, line: 59, type: !108)
!3453 = !DILocation(line: 0, scope: !3446, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 622, column: 17, scope: !3187)
!3455 = !DILocation(line: 71, column: 10, scope: !3446, inlinedAt: !3454)
!3456 = !DILocation(line: 626, column: 29, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3187, file: !251, line: 626, column: 21)
!3458 = !DILocation(line: 626, column: 21, scope: !3187)
!3459 = !DILocation(line: 627, column: 29, scope: !3457)
!3460 = !DILocation(line: 627, column: 19, scope: !3457)
!3461 = !DILocation(line: 629, column: 17, scope: !3187)
!3462 = !DILocation(line: 624, column: 19, scope: !3187)
!3463 = !DILocation(line: 625, column: 27, scope: !3187)
!3464 = !DILocation(line: 631, column: 21, scope: !3193)
!3465 = !DILocation(line: 632, column: 56, scope: !3193)
!3466 = !DILocation(line: 632, column: 50, scope: !3193)
!3467 = !DILocation(line: 633, column: 53, scope: !3193)
!3468 = !DILocation(line: 632, column: 36, scope: !3193)
!3469 = !DILocation(line: 634, column: 25, scope: !3193)
!3470 = !DILocation(line: 644, column: 38, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3200, file: !251, line: 642, column: 23)
!3472 = !DILocation(line: 644, column: 48, scope: !3471)
!3473 = !DILocation(line: 644, column: 25, scope: !3471)
!3474 = !DILocation(line: 644, column: 51, scope: !3471)
!3475 = !DILocation(line: 645, column: 28, scope: !3471)
!3476 = !DILocation(line: 644, column: 34, scope: !3471)
!3477 = distinct !{!3477, !3473, !3475}
!3478 = !DILocation(line: 658, column: 43, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !251, line: 658, column: 29)
!3480 = distinct !DILexicalBlock(scope: !3197, file: !251, line: 658, column: 29)
!3481 = !DILocation(line: 655, column: 29, scope: !3198)
!3482 = !DILocation(line: 0, scope: !3197)
!3483 = !DILocation(line: 659, column: 49, scope: !3479)
!3484 = !DILocation(line: 659, column: 39, scope: !3479)
!3485 = !DILocation(line: 659, column: 31, scope: !3479)
!3486 = !DILocation(line: 658, column: 53, scope: !3479)
!3487 = !DILocation(line: 658, column: 29, scope: !3480)
!3488 = distinct !{!3488, !3487, !3489}
!3489 = !DILocation(line: 667, column: 33, scope: !3480)
!3490 = !DILocation(line: 674, column: 19, scope: !3187)
!3491 = !DILocation(line: 670, column: 41, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3199, file: !251, line: 670, column: 29)
!3493 = !DILocation(line: 670, column: 31, scope: !3492)
!3494 = !DILocation(line: 670, column: 29, scope: !3199)
!3495 = !DILocation(line: 672, column: 27, scope: !3199)
!3496 = !DILocation(line: 675, column: 26, scope: !3187)
!3497 = !DILocation(line: 675, column: 24, scope: !3187)
!3498 = !DILocation(line: 674, column: 19, scope: !3193)
!3499 = distinct !{!3499, !3461, !3500}
!3500 = !DILocation(line: 675, column: 44, scope: !3187)
!3501 = !DILocation(line: 676, column: 15, scope: !3188)
!3502 = !DILocation(line: 0, scope: !3188)
!3503 = !DILocation(line: 678, column: 40, scope: !3183)
!3504 = !DILocation(line: 680, column: 19, scope: !3205)
!3505 = !DILocation(line: 680, column: 45, scope: !3205)
!3506 = !DILocation(line: 680, column: 23, scope: !3205)
!3507 = !DILocation(line: 684, column: 33, scope: !3204)
!3508 = !DILocation(line: 0, scope: !3204)
!3509 = !DILocation(line: 686, column: 17, scope: !3204)
!3510 = !DILocation(line: 405, column: 12, scope: !3175)
!3511 = !DILocation(line: 688, column: 43, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !251, line: 688, column: 25)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !251, line: 687, column: 19)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !251, line: 686, column: 17)
!3515 = distinct !DILexicalBlock(scope: !3204, file: !251, line: 686, column: 17)
!3516 = !DILocation(line: 690, column: 25, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !251, line: 690, column: 25)
!3518 = distinct !DILexicalBlock(scope: !3512, file: !251, line: 689, column: 23)
!3519 = !DILocation(line: 690, column: 25, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !251, line: 690, column: 25)
!3521 = !DILocation(line: 690, column: 25, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !251, line: 690, column: 25)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !251, line: 690, column: 25)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !251, line: 690, column: 25)
!3525 = !DILocation(line: 690, column: 25, scope: !3523)
!3526 = !DILocation(line: 690, column: 25, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !251, line: 690, column: 25)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !251, line: 690, column: 25)
!3529 = !DILocation(line: 690, column: 25, scope: !3528)
!3530 = !DILocation(line: 690, column: 25, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !251, line: 690, column: 25)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !251, line: 690, column: 25)
!3533 = !DILocation(line: 690, column: 25, scope: !3532)
!3534 = !DILocation(line: 690, column: 25, scope: !3524)
!3535 = !DILocation(line: 690, column: 25, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !251, line: 690, column: 25)
!3537 = distinct !DILexicalBlock(scope: !3517, file: !251, line: 690, column: 25)
!3538 = !DILocation(line: 690, column: 25, scope: !3537)
!3539 = !DILocation(line: 691, column: 25, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !251, line: 691, column: 25)
!3541 = distinct !DILexicalBlock(scope: !3518, file: !251, line: 691, column: 25)
!3542 = !DILocation(line: 691, column: 25, scope: !3541)
!3543 = !DILocation(line: 692, column: 25, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !251, line: 692, column: 25)
!3545 = distinct !DILexicalBlock(scope: !3518, file: !251, line: 692, column: 25)
!3546 = !DILocation(line: 692, column: 25, scope: !3545)
!3547 = !DILocation(line: 693, column: 38, scope: !3518)
!3548 = !DILocation(line: 693, column: 33, scope: !3518)
!3549 = !DILocation(line: 694, column: 23, scope: !3518)
!3550 = !DILocation(line: 695, column: 30, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3512, file: !251, line: 695, column: 30)
!3552 = !DILocation(line: 695, column: 30, scope: !3512)
!3553 = !DILocation(line: 697, column: 25, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !251, line: 697, column: 25)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !251, line: 697, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !251, line: 696, column: 23)
!3557 = !DILocation(line: 697, column: 25, scope: !3555)
!3558 = !DILocation(line: 699, column: 23, scope: !3556)
!3559 = !DILocation(line: 700, column: 35, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3513, file: !251, line: 700, column: 25)
!3561 = !DILocation(line: 700, column: 30, scope: !3560)
!3562 = !DILocation(line: 700, column: 25, scope: !3513)
!3563 = !DILocation(line: 702, column: 21, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !251, line: 702, column: 21)
!3565 = distinct !DILexicalBlock(scope: !3513, file: !251, line: 702, column: 21)
!3566 = !DILocation(line: 702, column: 21, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !251, line: 702, column: 21)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !251, line: 702, column: 21)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !251, line: 702, column: 21)
!3570 = !DILocation(line: 702, column: 21, scope: !3568)
!3571 = !DILocation(line: 702, column: 21, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !251, line: 702, column: 21)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !251, line: 702, column: 21)
!3574 = !DILocation(line: 702, column: 21, scope: !3573)
!3575 = !DILocation(line: 702, column: 21, scope: !3569)
!3576 = !DILocation(line: 0, scope: !3513)
!3577 = !DILocation(line: 703, column: 21, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !251, line: 703, column: 21)
!3579 = distinct !DILexicalBlock(scope: !3513, file: !251, line: 703, column: 21)
!3580 = !DILocation(line: 703, column: 21, scope: !3579)
!3581 = !DILocation(line: 704, column: 25, scope: !3513)
!3582 = !DILocation(line: 686, column: 17, scope: !3514)
!3583 = distinct !{!3583, !3584, !3585}
!3584 = !DILocation(line: 686, column: 17, scope: !3515)
!3585 = !DILocation(line: 705, column: 19, scope: !3515)
!3586 = !DILocation(line: 416, column: 30, scope: !3284)
!3587 = !DILocation(line: 712, column: 34, scope: !3227)
!3588 = !DILocation(line: 715, column: 35, scope: !3227)
!3589 = !DILocation(line: 715, column: 17, scope: !3227)
!3590 = !DILocation(line: 715, column: 47, scope: !3227)
!3591 = !DILocation(line: 715, column: 65, scope: !3227)
!3592 = !DILocation(line: 716, column: 15, scope: !3227)
!3593 = !DILocation(line: 716, column: 11, scope: !3227)
!3594 = !DILocation(line: 712, column: 11, scope: !3175)
!3595 = !DILocation(line: 400, column: 10, scope: !3177)
!3596 = !DILocation(line: 719, column: 5, scope: !3175)
!3597 = !DILocation(line: 720, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 720, column: 7)
!3599 = !DILocation(line: 720, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3598, file: !251, line: 720, column: 7)
!3601 = !DILocation(line: 720, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !251, line: 720, column: 7)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !251, line: 720, column: 7)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !251, line: 720, column: 7)
!3605 = !DILocation(line: 720, column: 7, scope: !3603)
!3606 = !DILocation(line: 720, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !251, line: 720, column: 7)
!3608 = distinct !DILexicalBlock(scope: !3604, file: !251, line: 720, column: 7)
!3609 = !DILocation(line: 720, column: 7, scope: !3608)
!3610 = !DILocation(line: 720, column: 7, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !251, line: 720, column: 7)
!3612 = distinct !DILexicalBlock(scope: !3604, file: !251, line: 720, column: 7)
!3613 = !DILocation(line: 720, column: 7, scope: !3612)
!3614 = !DILocation(line: 720, column: 7, scope: !3604)
!3615 = !DILocation(line: 720, column: 7, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !251, line: 720, column: 7)
!3617 = distinct !DILexicalBlock(scope: !3598, file: !251, line: 720, column: 7)
!3618 = !DILocation(line: 720, column: 7, scope: !3617)
!3619 = !DILocation(line: 722, column: 5, scope: !3175)
!3620 = !DILocation(line: 723, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !251, line: 723, column: 7)
!3622 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 723, column: 7)
!3623 = !DILocation(line: 424, column: 9, scope: !3175)
!3624 = !DILocation(line: 723, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !251, line: 723, column: 7)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !251, line: 723, column: 7)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !251, line: 723, column: 7)
!3628 = !DILocation(line: 723, column: 7, scope: !3626)
!3629 = !DILocation(line: 723, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !251, line: 723, column: 7)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !251, line: 723, column: 7)
!3632 = !DILocation(line: 723, column: 7, scope: !3631)
!3633 = !DILocation(line: 723, column: 7, scope: !3627)
!3634 = !DILocation(line: 724, column: 7, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !251, line: 724, column: 7)
!3636 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 724, column: 7)
!3637 = !DILocation(line: 724, column: 7, scope: !3636)
!3638 = !DILocation(line: 726, column: 13, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3175, file: !251, line: 726, column: 11)
!3640 = !DILocation(line: 726, column: 11, scope: !3175)
!3641 = !DILocation(line: 728, column: 5, scope: !3176)
!3642 = !DILocation(line: 400, column: 75, scope: !3176)
!3643 = !DILocation(line: 400, column: 3, scope: !3176)
!3644 = distinct !{!3644, !3302, !3645}
!3645 = !DILocation(line: 728, column: 5, scope: !3177)
!3646 = !DILocation(line: 730, column: 11, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 730, column: 7)
!3648 = !DILocation(line: 730, column: 16, scope: !3647)
!3649 = !DILocation(line: 738, column: 51, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 738, column: 7)
!3651 = !DILocation(line: 739, column: 10, scope: !3650)
!3652 = !DILocation(line: 741, column: 11, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !251, line: 741, column: 11)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !251, line: 740, column: 5)
!3655 = !DILocation(line: 741, column: 11, scope: !3654)
!3656 = !DILocation(line: 742, column: 16, scope: !3653)
!3657 = !DILocation(line: 742, column: 9, scope: !3653)
!3658 = !DILocation(line: 746, column: 18, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3653, file: !251, line: 746, column: 16)
!3660 = !DILocation(line: 746, column: 32, scope: !3659)
!3661 = !DILocation(line: 746, column: 29, scope: !3659)
!3662 = !DILocation(line: 755, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 755, column: 7)
!3664 = !DILocation(line: 755, column: 20, scope: !3663)
!3665 = !DILocation(line: 756, column: 12, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !251, line: 756, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !251, line: 756, column: 5)
!3668 = !DILocation(line: 756, column: 5, scope: !3667)
!3669 = !DILocation(line: 757, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !251, line: 757, column: 7)
!3671 = distinct !DILexicalBlock(scope: !3666, file: !251, line: 757, column: 7)
!3672 = !DILocation(line: 757, column: 7, scope: !3671)
!3673 = !DILocation(line: 756, column: 39, scope: !3666)
!3674 = distinct !{!3674, !3668, !3675}
!3675 = !DILocation(line: 757, column: 7, scope: !3667)
!3676 = !DILocation(line: 759, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 759, column: 7)
!3678 = !DILocation(line: 759, column: 7, scope: !3148)
!3679 = !DILocation(line: 760, column: 5, scope: !3677)
!3680 = !DILocation(line: 760, column: 17, scope: !3677)
!3681 = !DILocation(line: 763, column: 2, scope: !3148)
!3682 = !DILocation(line: 766, column: 51, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3148, file: !251, line: 766, column: 7)
!3684 = !DILocation(line: 766, column: 21, scope: !3683)
!3685 = !DILocation(line: 770, column: 42, scope: !3148)
!3686 = !DILocation(line: 768, column: 10, scope: !3148)
!3687 = !DILocation(line: 768, column: 3, scope: !3148)
!3688 = !DILocation(line: 772, column: 1, scope: !3148)
!3689 = distinct !DISubprogram(name: "gettext_quote", scope: !251, file: !251, line: 207, type: !3690, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!6, !6, !253}
!3692 = !{!3693, !3694, !3695, !3696}
!3693 = !DILocalVariable(name: "msgid", arg: 1, scope: !3689, file: !251, line: 207, type: !6)
!3694 = !DILocalVariable(name: "s", arg: 2, scope: !3689, file: !251, line: 207, type: !253)
!3695 = !DILocalVariable(name: "translation", scope: !3689, file: !251, line: 209, type: !6)
!3696 = !DILocalVariable(name: "locale_code", scope: !3689, file: !251, line: 210, type: !6)
!3697 = !DILocation(line: 0, scope: !3689)
!3698 = !DILocation(line: 209, column: 29, scope: !3689)
!3699 = !DILocation(line: 212, column: 19, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3689, file: !251, line: 212, column: 7)
!3701 = !DILocation(line: 212, column: 7, scope: !3689)
!3702 = !DILocation(line: 233, column: 17, scope: !3689)
!3703 = !DILocalVariable(name: "s1", arg: 1, scope: !3704, file: !3705, line: 160, type: !6)
!3704 = distinct !DISubprogram(name: "strcaseeq0", scope: !3705, file: !3705, line: 160, type: !3706, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3708)
!3705 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!38, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!3708 = !{!3703, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718}
!3709 = !DILocalVariable(name: "s2", arg: 2, scope: !3704, file: !3705, line: 160, type: !6)
!3710 = !DILocalVariable(name: "s20", arg: 3, scope: !3704, file: !3705, line: 160, type: !8)
!3711 = !DILocalVariable(name: "s21", arg: 4, scope: !3704, file: !3705, line: 160, type: !8)
!3712 = !DILocalVariable(name: "s22", arg: 5, scope: !3704, file: !3705, line: 160, type: !8)
!3713 = !DILocalVariable(name: "s23", arg: 6, scope: !3704, file: !3705, line: 160, type: !8)
!3714 = !DILocalVariable(name: "s24", arg: 7, scope: !3704, file: !3705, line: 160, type: !8)
!3715 = !DILocalVariable(name: "s25", arg: 8, scope: !3704, file: !3705, line: 160, type: !8)
!3716 = !DILocalVariable(name: "s26", arg: 9, scope: !3704, file: !3705, line: 160, type: !8)
!3717 = !DILocalVariable(name: "s27", arg: 10, scope: !3704, file: !3705, line: 160, type: !8)
!3718 = !DILocalVariable(name: "s28", arg: 11, scope: !3704, file: !3705, line: 160, type: !8)
!3719 = !DILocation(line: 0, scope: !3704, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 234, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3689, file: !251, line: 234, column: 7)
!3722 = !DILocation(line: 162, column: 7, scope: !3723, inlinedAt: !3720)
!3723 = distinct !DILexicalBlock(scope: !3704, file: !3705, line: 162, column: 7)
!3724 = !DILocalVariable(name: "s1", arg: 1, scope: !3725, file: !3705, line: 146, type: !6)
!3725 = distinct !DISubprogram(name: "strcaseeq1", scope: !3705, file: !3705, line: 146, type: !3726, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!38, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!3728 = !{!3724, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3729 = !DILocalVariable(name: "s2", arg: 2, scope: !3725, file: !3705, line: 146, type: !6)
!3730 = !DILocalVariable(name: "s21", arg: 3, scope: !3725, file: !3705, line: 146, type: !8)
!3731 = !DILocalVariable(name: "s22", arg: 4, scope: !3725, file: !3705, line: 146, type: !8)
!3732 = !DILocalVariable(name: "s23", arg: 5, scope: !3725, file: !3705, line: 146, type: !8)
!3733 = !DILocalVariable(name: "s24", arg: 6, scope: !3725, file: !3705, line: 146, type: !8)
!3734 = !DILocalVariable(name: "s25", arg: 7, scope: !3725, file: !3705, line: 146, type: !8)
!3735 = !DILocalVariable(name: "s26", arg: 8, scope: !3725, file: !3705, line: 146, type: !8)
!3736 = !DILocalVariable(name: "s27", arg: 9, scope: !3725, file: !3705, line: 146, type: !8)
!3737 = !DILocalVariable(name: "s28", arg: 10, scope: !3725, file: !3705, line: 146, type: !8)
!3738 = !DILocation(line: 0, scope: !3725, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 167, column: 16, scope: !3740, inlinedAt: !3720)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3705, line: 164, column: 11)
!3741 = distinct !DILexicalBlock(scope: !3723, file: !3705, line: 163, column: 5)
!3742 = !DILocation(line: 148, column: 7, scope: !3743, inlinedAt: !3739)
!3743 = distinct !DILexicalBlock(scope: !3725, file: !3705, line: 148, column: 7)
!3744 = !DILocalVariable(name: "s1", arg: 1, scope: !3745, file: !3705, line: 132, type: !6)
!3745 = distinct !DISubprogram(name: "strcaseeq2", scope: !3705, file: !3705, line: 132, type: !3746, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!38, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!3748 = !{!3744, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3749 = !DILocalVariable(name: "s2", arg: 2, scope: !3745, file: !3705, line: 132, type: !6)
!3750 = !DILocalVariable(name: "s22", arg: 3, scope: !3745, file: !3705, line: 132, type: !8)
!3751 = !DILocalVariable(name: "s23", arg: 4, scope: !3745, file: !3705, line: 132, type: !8)
!3752 = !DILocalVariable(name: "s24", arg: 5, scope: !3745, file: !3705, line: 132, type: !8)
!3753 = !DILocalVariable(name: "s25", arg: 6, scope: !3745, file: !3705, line: 132, type: !8)
!3754 = !DILocalVariable(name: "s26", arg: 7, scope: !3745, file: !3705, line: 132, type: !8)
!3755 = !DILocalVariable(name: "s27", arg: 8, scope: !3745, file: !3705, line: 132, type: !8)
!3756 = !DILocalVariable(name: "s28", arg: 9, scope: !3745, file: !3705, line: 132, type: !8)
!3757 = !DILocation(line: 0, scope: !3745, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 153, column: 16, scope: !3759, inlinedAt: !3739)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3705, line: 150, column: 11)
!3760 = distinct !DILexicalBlock(scope: !3743, file: !3705, line: 149, column: 5)
!3761 = !DILocation(line: 134, column: 7, scope: !3762, inlinedAt: !3758)
!3762 = distinct !DILexicalBlock(scope: !3745, file: !3705, line: 134, column: 7)
!3763 = !DILocalVariable(name: "s1", arg: 1, scope: !3764, file: !3705, line: 118, type: !6)
!3764 = distinct !DISubprogram(name: "strcaseeq3", scope: !3705, file: !3705, line: 118, type: !3765, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!38, !6, !6, !8, !8, !8, !8, !8, !8}
!3767 = !{!3763, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3768 = !DILocalVariable(name: "s2", arg: 2, scope: !3764, file: !3705, line: 118, type: !6)
!3769 = !DILocalVariable(name: "s23", arg: 3, scope: !3764, file: !3705, line: 118, type: !8)
!3770 = !DILocalVariable(name: "s24", arg: 4, scope: !3764, file: !3705, line: 118, type: !8)
!3771 = !DILocalVariable(name: "s25", arg: 5, scope: !3764, file: !3705, line: 118, type: !8)
!3772 = !DILocalVariable(name: "s26", arg: 6, scope: !3764, file: !3705, line: 118, type: !8)
!3773 = !DILocalVariable(name: "s27", arg: 7, scope: !3764, file: !3705, line: 118, type: !8)
!3774 = !DILocalVariable(name: "s28", arg: 8, scope: !3764, file: !3705, line: 118, type: !8)
!3775 = !DILocation(line: 0, scope: !3764, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 139, column: 16, scope: !3777, inlinedAt: !3758)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !3705, line: 136, column: 11)
!3778 = distinct !DILexicalBlock(scope: !3762, file: !3705, line: 135, column: 5)
!3779 = !DILocation(line: 120, column: 7, scope: !3780, inlinedAt: !3776)
!3780 = distinct !DILexicalBlock(scope: !3764, file: !3705, line: 120, column: 7)
!3781 = !DILocation(line: 120, column: 7, scope: !3764, inlinedAt: !3776)
!3782 = !DILocalVariable(name: "s1", arg: 1, scope: !3783, file: !3705, line: 104, type: !6)
!3783 = distinct !DISubprogram(name: "strcaseeq4", scope: !3705, file: !3705, line: 104, type: !3784, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!38, !6, !6, !8, !8, !8, !8, !8}
!3786 = !{!3782, !3787, !3788, !3789, !3790, !3791, !3792}
!3787 = !DILocalVariable(name: "s2", arg: 2, scope: !3783, file: !3705, line: 104, type: !6)
!3788 = !DILocalVariable(name: "s24", arg: 3, scope: !3783, file: !3705, line: 104, type: !8)
!3789 = !DILocalVariable(name: "s25", arg: 4, scope: !3783, file: !3705, line: 104, type: !8)
!3790 = !DILocalVariable(name: "s26", arg: 5, scope: !3783, file: !3705, line: 104, type: !8)
!3791 = !DILocalVariable(name: "s27", arg: 6, scope: !3783, file: !3705, line: 104, type: !8)
!3792 = !DILocalVariable(name: "s28", arg: 7, scope: !3783, file: !3705, line: 104, type: !8)
!3793 = !DILocation(line: 0, scope: !3783, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 125, column: 16, scope: !3795, inlinedAt: !3776)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !3705, line: 122, column: 11)
!3796 = distinct !DILexicalBlock(scope: !3780, file: !3705, line: 121, column: 5)
!3797 = !DILocation(line: 106, column: 7, scope: !3798, inlinedAt: !3794)
!3798 = distinct !DILexicalBlock(scope: !3783, file: !3705, line: 106, column: 7)
!3799 = !DILocation(line: 106, column: 7, scope: !3783, inlinedAt: !3794)
!3800 = !DILocalVariable(name: "s1", arg: 1, scope: !3801, file: !3705, line: 90, type: !6)
!3801 = distinct !DISubprogram(name: "strcaseeq5", scope: !3705, file: !3705, line: 90, type: !3802, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!38, !6, !6, !8, !8, !8, !8}
!3804 = !{!3800, !3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "s2", arg: 2, scope: !3801, file: !3705, line: 90, type: !6)
!3806 = !DILocalVariable(name: "s25", arg: 3, scope: !3801, file: !3705, line: 90, type: !8)
!3807 = !DILocalVariable(name: "s26", arg: 4, scope: !3801, file: !3705, line: 90, type: !8)
!3808 = !DILocalVariable(name: "s27", arg: 5, scope: !3801, file: !3705, line: 90, type: !8)
!3809 = !DILocalVariable(name: "s28", arg: 6, scope: !3801, file: !3705, line: 90, type: !8)
!3810 = !DILocation(line: 0, scope: !3801, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 111, column: 16, scope: !3812, inlinedAt: !3794)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !3705, line: 108, column: 11)
!3813 = distinct !DILexicalBlock(scope: !3798, file: !3705, line: 107, column: 5)
!3814 = !DILocation(line: 92, column: 7, scope: !3815, inlinedAt: !3811)
!3815 = distinct !DILexicalBlock(scope: !3801, file: !3705, line: 92, column: 7)
!3816 = !DILocation(line: 92, column: 7, scope: !3801, inlinedAt: !3811)
!3817 = !DILocation(line: 235, column: 12, scope: !3721)
!3818 = !DILocation(line: 235, column: 21, scope: !3721)
!3819 = !DILocation(line: 235, column: 5, scope: !3721)
!3820 = !DILocation(line: 0, scope: !3725, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 167, column: 16, scope: !3740, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 236, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3689, file: !251, line: 236, column: 7)
!3824 = !DILocation(line: 148, column: 7, scope: !3743, inlinedAt: !3821)
!3825 = !DILocation(line: 0, scope: !3745, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 153, column: 16, scope: !3759, inlinedAt: !3821)
!3827 = !DILocation(line: 134, column: 7, scope: !3762, inlinedAt: !3826)
!3828 = !DILocation(line: 134, column: 7, scope: !3745, inlinedAt: !3826)
!3829 = !DILocation(line: 0, scope: !3764, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 139, column: 16, scope: !3777, inlinedAt: !3826)
!3831 = !DILocation(line: 120, column: 7, scope: !3780, inlinedAt: !3830)
!3832 = !DILocation(line: 120, column: 7, scope: !3764, inlinedAt: !3830)
!3833 = !DILocation(line: 0, scope: !3783, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 125, column: 16, scope: !3795, inlinedAt: !3830)
!3835 = !DILocation(line: 106, column: 7, scope: !3798, inlinedAt: !3834)
!3836 = !DILocation(line: 106, column: 7, scope: !3783, inlinedAt: !3834)
!3837 = !DILocation(line: 0, scope: !3801, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 111, column: 16, scope: !3812, inlinedAt: !3834)
!3839 = !DILocation(line: 92, column: 7, scope: !3815, inlinedAt: !3838)
!3840 = !DILocation(line: 92, column: 7, scope: !3801, inlinedAt: !3838)
!3841 = !DILocalVariable(name: "s1", arg: 1, scope: !3842, file: !3705, line: 76, type: !6)
!3842 = distinct !DISubprogram(name: "strcaseeq6", scope: !3705, file: !3705, line: 76, type: !3843, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!38, !6, !6, !8, !8, !8}
!3845 = !{!3841, !3846, !3847, !3848, !3849}
!3846 = !DILocalVariable(name: "s2", arg: 2, scope: !3842, file: !3705, line: 76, type: !6)
!3847 = !DILocalVariable(name: "s26", arg: 3, scope: !3842, file: !3705, line: 76, type: !8)
!3848 = !DILocalVariable(name: "s27", arg: 4, scope: !3842, file: !3705, line: 76, type: !8)
!3849 = !DILocalVariable(name: "s28", arg: 5, scope: !3842, file: !3705, line: 76, type: !8)
!3850 = !DILocation(line: 0, scope: !3842, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 97, column: 16, scope: !3852, inlinedAt: !3838)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !3705, line: 94, column: 11)
!3853 = distinct !DILexicalBlock(scope: !3815, file: !3705, line: 93, column: 5)
!3854 = !DILocation(line: 78, column: 7, scope: !3855, inlinedAt: !3851)
!3855 = distinct !DILexicalBlock(scope: !3842, file: !3705, line: 78, column: 7)
!3856 = !DILocation(line: 78, column: 7, scope: !3842, inlinedAt: !3851)
!3857 = !DILocalVariable(name: "s1", arg: 1, scope: !3858, file: !3705, line: 62, type: !6)
!3858 = distinct !DISubprogram(name: "strcaseeq7", scope: !3705, file: !3705, line: 62, type: !3859, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!38, !6, !6, !8, !8}
!3861 = !{!3857, !3862, !3863, !3864}
!3862 = !DILocalVariable(name: "s2", arg: 2, scope: !3858, file: !3705, line: 62, type: !6)
!3863 = !DILocalVariable(name: "s27", arg: 3, scope: !3858, file: !3705, line: 62, type: !8)
!3864 = !DILocalVariable(name: "s28", arg: 4, scope: !3858, file: !3705, line: 62, type: !8)
!3865 = !DILocation(line: 0, scope: !3858, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 83, column: 16, scope: !3867, inlinedAt: !3851)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3705, line: 80, column: 11)
!3868 = distinct !DILexicalBlock(scope: !3855, file: !3705, line: 79, column: 5)
!3869 = !DILocation(line: 64, column: 7, scope: !3870, inlinedAt: !3866)
!3870 = distinct !DILexicalBlock(scope: !3858, file: !3705, line: 64, column: 7)
!3871 = !DILocation(line: 236, column: 7, scope: !3689)
!3872 = !DILocation(line: 237, column: 12, scope: !3823)
!3873 = !DILocation(line: 237, column: 21, scope: !3823)
!3874 = !DILocation(line: 237, column: 5, scope: !3823)
!3875 = !DILocation(line: 239, column: 13, scope: !3689)
!3876 = !DILocation(line: 239, column: 11, scope: !3689)
!3877 = !DILocation(line: 239, column: 3, scope: !3689)
!3878 = !DILocation(line: 240, column: 1, scope: !3689)
!3879 = distinct !DISubprogram(name: "quotearg_alloc", scope: !251, file: !251, line: 799, type: !3880, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!14, !6, !108, !297}
!3882 = !{!3883, !3884, !3885}
!3883 = !DILocalVariable(name: "arg", arg: 1, scope: !3879, file: !251, line: 799, type: !6)
!3884 = !DILocalVariable(name: "argsize", arg: 2, scope: !3879, file: !251, line: 799, type: !108)
!3885 = !DILocalVariable(name: "o", arg: 3, scope: !3879, file: !251, line: 800, type: !297)
!3886 = !DILocation(line: 0, scope: !3879)
!3887 = !DILocalVariable(name: "arg", arg: 1, scope: !3888, file: !251, line: 812, type: !6)
!3888 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !251, file: !251, line: 812, type: !3889, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!14, !6, !108, !691, !297}
!3891 = !{!3887, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899}
!3892 = !DILocalVariable(name: "argsize", arg: 2, scope: !3888, file: !251, line: 812, type: !108)
!3893 = !DILocalVariable(name: "size", arg: 3, scope: !3888, file: !251, line: 812, type: !691)
!3894 = !DILocalVariable(name: "o", arg: 4, scope: !3888, file: !251, line: 813, type: !297)
!3895 = !DILocalVariable(name: "p", scope: !3888, file: !251, line: 815, type: !297)
!3896 = !DILocalVariable(name: "e", scope: !3888, file: !251, line: 816, type: !38)
!3897 = !DILocalVariable(name: "flags", scope: !3888, file: !251, line: 818, type: !38)
!3898 = !DILocalVariable(name: "bufsize", scope: !3888, file: !251, line: 819, type: !108)
!3899 = !DILocalVariable(name: "buf", scope: !3888, file: !251, line: 823, type: !14)
!3900 = !DILocation(line: 0, scope: !3888, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 802, column: 10, scope: !3879)
!3902 = !DILocation(line: 815, column: 37, scope: !3888, inlinedAt: !3901)
!3903 = !DILocation(line: 816, column: 11, scope: !3888, inlinedAt: !3901)
!3904 = !DILocation(line: 818, column: 18, scope: !3888, inlinedAt: !3901)
!3905 = !DILocation(line: 818, column: 24, scope: !3888, inlinedAt: !3901)
!3906 = !DILocation(line: 819, column: 69, scope: !3888, inlinedAt: !3901)
!3907 = !DILocation(line: 820, column: 53, scope: !3888, inlinedAt: !3901)
!3908 = !DILocation(line: 821, column: 49, scope: !3888, inlinedAt: !3901)
!3909 = !DILocation(line: 822, column: 49, scope: !3888, inlinedAt: !3901)
!3910 = !DILocation(line: 819, column: 20, scope: !3888, inlinedAt: !3901)
!3911 = !DILocation(line: 822, column: 62, scope: !3888, inlinedAt: !3901)
!3912 = !DILocalVariable(name: "n", arg: 1, scope: !3913, file: !288, line: 216, type: !108)
!3913 = distinct !DISubprogram(name: "xcharalloc", scope: !288, file: !288, line: 216, type: !3914, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!14, !108}
!3916 = !{!3912}
!3917 = !DILocation(line: 0, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 823, column: 15, scope: !3888, inlinedAt: !3901)
!3919 = !DILocation(line: 218, column: 10, scope: !3913, inlinedAt: !3918)
!3920 = !DILocation(line: 824, column: 60, scope: !3888, inlinedAt: !3901)
!3921 = !DILocation(line: 826, column: 32, scope: !3888, inlinedAt: !3901)
!3922 = !DILocation(line: 826, column: 47, scope: !3888, inlinedAt: !3901)
!3923 = !DILocation(line: 824, column: 3, scope: !3888, inlinedAt: !3901)
!3924 = !DILocation(line: 827, column: 9, scope: !3888, inlinedAt: !3901)
!3925 = !DILocation(line: 802, column: 3, scope: !3879)
!3926 = !DILocation(line: 0, scope: !3888)
!3927 = !DILocation(line: 815, column: 37, scope: !3888)
!3928 = !DILocation(line: 816, column: 11, scope: !3888)
!3929 = !DILocation(line: 818, column: 18, scope: !3888)
!3930 = !DILocation(line: 818, column: 27, scope: !3888)
!3931 = !DILocation(line: 818, column: 24, scope: !3888)
!3932 = !DILocation(line: 819, column: 69, scope: !3888)
!3933 = !DILocation(line: 820, column: 53, scope: !3888)
!3934 = !DILocation(line: 821, column: 49, scope: !3888)
!3935 = !DILocation(line: 822, column: 49, scope: !3888)
!3936 = !DILocation(line: 819, column: 20, scope: !3888)
!3937 = !DILocation(line: 822, column: 62, scope: !3888)
!3938 = !DILocation(line: 0, scope: !3913, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 823, column: 15, scope: !3888)
!3940 = !DILocation(line: 218, column: 10, scope: !3913, inlinedAt: !3939)
!3941 = !DILocation(line: 824, column: 60, scope: !3888)
!3942 = !DILocation(line: 826, column: 32, scope: !3888)
!3943 = !DILocation(line: 826, column: 47, scope: !3888)
!3944 = !DILocation(line: 824, column: 3, scope: !3888)
!3945 = !DILocation(line: 827, column: 9, scope: !3888)
!3946 = !DILocation(line: 828, column: 7, scope: !3888)
!3947 = !DILocation(line: 829, column: 11, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3888, file: !251, line: 828, column: 7)
!3949 = !DILocation(line: 829, column: 5, scope: !3948)
!3950 = !DILocation(line: 830, column: 3, scope: !3888)
!3951 = distinct !DISubprogram(name: "quotearg_free", scope: !251, file: !251, line: 848, type: !354, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3952)
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "sv", scope: !3951, file: !251, line: 850, type: !377)
!3954 = !DILocalVariable(name: "i", scope: !3951, file: !251, line: 851, type: !38)
!3955 = !DILocation(line: 850, column: 24, scope: !3951)
!3956 = !DILocation(line: 0, scope: !3951)
!3957 = !DILocation(line: 852, column: 19, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !251, line: 852, column: 3)
!3959 = distinct !DILexicalBlock(scope: !3951, file: !251, line: 852, column: 3)
!3960 = !DILocation(line: 852, column: 17, scope: !3958)
!3961 = !DILocation(line: 852, column: 3, scope: !3959)
!3962 = !DILocation(line: 853, column: 17, scope: !3958)
!3963 = !{!3964, !1424, i64 8}
!3964 = !{!"slotvec", !1556, i64 0, !1424, i64 8}
!3965 = !DILocation(line: 853, column: 5, scope: !3958)
!3966 = !DILocation(line: 852, column: 28, scope: !3958)
!3967 = distinct !{!3967, !3961, !3968}
!3968 = !DILocation(line: 853, column: 20, scope: !3959)
!3969 = !DILocation(line: 854, column: 13, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3951, file: !251, line: 854, column: 7)
!3971 = !DILocation(line: 854, column: 17, scope: !3970)
!3972 = !DILocation(line: 854, column: 7, scope: !3951)
!3973 = !DILocation(line: 856, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3970, file: !251, line: 855, column: 5)
!3975 = !DILocation(line: 857, column: 21, scope: !3974)
!3976 = !{!3964, !1556, i64 0}
!3977 = !DILocation(line: 858, column: 20, scope: !3974)
!3978 = !DILocation(line: 859, column: 5, scope: !3974)
!3979 = !DILocation(line: 860, column: 10, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3951, file: !251, line: 860, column: 7)
!3981 = !DILocation(line: 860, column: 7, scope: !3951)
!3982 = !DILocation(line: 862, column: 13, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !251, line: 861, column: 5)
!3984 = !DILocation(line: 862, column: 7, scope: !3983)
!3985 = !DILocation(line: 863, column: 15, scope: !3983)
!3986 = !DILocation(line: 864, column: 5, scope: !3983)
!3987 = !DILocation(line: 865, column: 10, scope: !3951)
!3988 = !DILocation(line: 866, column: 1, scope: !3951)
!3989 = distinct !DISubprogram(name: "quotearg_n", scope: !251, file: !251, line: 931, type: !459, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3990)
!3990 = !{!3991, !3992}
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3989, file: !251, line: 931, type: !38)
!3992 = !DILocalVariable(name: "arg", arg: 2, scope: !3989, file: !251, line: 931, type: !6)
!3993 = !DILocation(line: 0, scope: !3989)
!3994 = !DILocation(line: 933, column: 10, scope: !3989)
!3995 = !DILocation(line: 933, column: 3, scope: !3989)
!3996 = distinct !DISubprogram(name: "quotearg_n_options", scope: !251, file: !251, line: 877, type: !3997, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!14, !38, !6, !108, !297}
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005, !4006, !4009, !4010, !4012, !4013, !4014}
!4000 = !DILocalVariable(name: "n", arg: 1, scope: !3996, file: !251, line: 877, type: !38)
!4001 = !DILocalVariable(name: "arg", arg: 2, scope: !3996, file: !251, line: 877, type: !6)
!4002 = !DILocalVariable(name: "argsize", arg: 3, scope: !3996, file: !251, line: 877, type: !108)
!4003 = !DILocalVariable(name: "options", arg: 4, scope: !3996, file: !251, line: 878, type: !297)
!4004 = !DILocalVariable(name: "e", scope: !3996, file: !251, line: 880, type: !38)
!4005 = !DILocalVariable(name: "sv", scope: !3996, file: !251, line: 882, type: !377)
!4006 = !DILocalVariable(name: "preallocated", scope: !4007, file: !251, line: 889, type: !131)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !251, line: 888, column: 5)
!4008 = distinct !DILexicalBlock(scope: !3996, file: !251, line: 887, column: 7)
!4009 = !DILocalVariable(name: "nmax", scope: !4007, file: !251, line: 890, type: !38)
!4010 = !DILocalVariable(name: "size", scope: !4011, file: !251, line: 903, type: !108)
!4011 = distinct !DILexicalBlock(scope: !3996, file: !251, line: 902, column: 3)
!4012 = !DILocalVariable(name: "val", scope: !4011, file: !251, line: 904, type: !14)
!4013 = !DILocalVariable(name: "flags", scope: !4011, file: !251, line: 906, type: !38)
!4014 = !DILocalVariable(name: "qsize", scope: !4011, file: !251, line: 907, type: !108)
!4015 = !DILocation(line: 0, scope: !3996)
!4016 = !DILocation(line: 880, column: 11, scope: !3996)
!4017 = !DILocation(line: 882, column: 24, scope: !3996)
!4018 = !DILocation(line: 884, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3996, file: !251, line: 884, column: 7)
!4020 = !DILocation(line: 884, column: 7, scope: !3996)
!4021 = !DILocation(line: 885, column: 5, scope: !4019)
!4022 = !DILocation(line: 887, column: 7, scope: !4008)
!4023 = !DILocation(line: 887, column: 14, scope: !4008)
!4024 = !DILocation(line: 887, column: 7, scope: !3996)
!4025 = !DILocation(line: 889, column: 31, scope: !4007)
!4026 = !DILocation(line: 0, scope: !4007)
!4027 = !DILocation(line: 892, column: 16, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4007, file: !251, line: 892, column: 11)
!4029 = !DILocation(line: 892, column: 11, scope: !4007)
!4030 = !DILocation(line: 893, column: 9, scope: !4028)
!4031 = !DILocation(line: 895, column: 32, scope: !4007)
!4032 = !DILocation(line: 895, column: 61, scope: !4007)
!4033 = !DILocation(line: 895, column: 58, scope: !4007)
!4034 = !DILocation(line: 895, column: 66, scope: !4007)
!4035 = !DILocation(line: 895, column: 22, scope: !4007)
!4036 = !DILocation(line: 895, column: 15, scope: !4007)
!4037 = !DILocation(line: 896, column: 11, scope: !4007)
!4038 = !DILocation(line: 897, column: 15, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4007, file: !251, line: 896, column: 11)
!4040 = !{i64 0, i64 8, !1555, i64 8, i64 8, !1423}
!4041 = !DILocation(line: 897, column: 9, scope: !4039)
!4042 = !DILocation(line: 898, column: 20, scope: !4007)
!4043 = !DILocation(line: 898, column: 18, scope: !4007)
!4044 = !DILocation(line: 898, column: 15, scope: !4007)
!4045 = !DILocation(line: 898, column: 38, scope: !4007)
!4046 = !DILocation(line: 898, column: 31, scope: !4007)
!4047 = !DILocation(line: 898, column: 48, scope: !4007)
!4048 = !DILocation(line: 0, scope: !3446, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 898, column: 7, scope: !4007)
!4050 = !DILocation(line: 71, column: 10, scope: !3446, inlinedAt: !4049)
!4051 = !DILocation(line: 899, column: 14, scope: !4007)
!4052 = !DILocation(line: 900, column: 5, scope: !4007)
!4053 = !DILocation(line: 903, column: 19, scope: !4011)
!4054 = !DILocation(line: 903, column: 25, scope: !4011)
!4055 = !DILocation(line: 0, scope: !4011)
!4056 = !DILocation(line: 904, column: 23, scope: !4011)
!4057 = !DILocation(line: 906, column: 26, scope: !4011)
!4058 = !DILocation(line: 906, column: 32, scope: !4011)
!4059 = !DILocation(line: 908, column: 55, scope: !4011)
!4060 = !DILocation(line: 909, column: 46, scope: !4011)
!4061 = !DILocation(line: 910, column: 55, scope: !4011)
!4062 = !DILocation(line: 911, column: 55, scope: !4011)
!4063 = !DILocation(line: 907, column: 20, scope: !4011)
!4064 = !DILocation(line: 913, column: 14, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4011, file: !251, line: 913, column: 9)
!4066 = !DILocation(line: 913, column: 9, scope: !4011)
!4067 = !DILocation(line: 915, column: 35, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4065, file: !251, line: 914, column: 7)
!4069 = !DILocation(line: 915, column: 20, scope: !4068)
!4070 = !DILocation(line: 916, column: 17, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !251, line: 916, column: 13)
!4072 = !DILocation(line: 916, column: 13, scope: !4068)
!4073 = !DILocation(line: 917, column: 11, scope: !4071)
!4074 = !DILocation(line: 0, scope: !3913, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 918, column: 27, scope: !4068)
!4076 = !DILocation(line: 218, column: 10, scope: !3913, inlinedAt: !4075)
!4077 = !DILocation(line: 918, column: 19, scope: !4068)
!4078 = !DILocation(line: 919, column: 69, scope: !4068)
!4079 = !DILocation(line: 921, column: 44, scope: !4068)
!4080 = !DILocation(line: 922, column: 44, scope: !4068)
!4081 = !DILocation(line: 919, column: 9, scope: !4068)
!4082 = !DILocation(line: 923, column: 7, scope: !4068)
!4083 = !DILocation(line: 925, column: 11, scope: !4011)
!4084 = !DILocation(line: 926, column: 5, scope: !4011)
!4085 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !251, file: !251, line: 937, type: !4086, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!14, !38, !6, !108}
!4088 = !{!4089, !4090, !4091}
!4089 = !DILocalVariable(name: "n", arg: 1, scope: !4085, file: !251, line: 937, type: !38)
!4090 = !DILocalVariable(name: "arg", arg: 2, scope: !4085, file: !251, line: 937, type: !6)
!4091 = !DILocalVariable(name: "argsize", arg: 3, scope: !4085, file: !251, line: 937, type: !108)
!4092 = !DILocation(line: 0, scope: !4085)
!4093 = !DILocation(line: 939, column: 10, scope: !4085)
!4094 = !DILocation(line: 939, column: 3, scope: !4085)
!4095 = distinct !DISubprogram(name: "quotearg", scope: !251, file: !251, line: 943, type: !122, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4096)
!4096 = !{!4097}
!4097 = !DILocalVariable(name: "arg", arg: 1, scope: !4095, file: !251, line: 943, type: !6)
!4098 = !DILocation(line: 0, scope: !4095)
!4099 = !DILocation(line: 0, scope: !3989, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 945, column: 10, scope: !4095)
!4101 = !DILocation(line: 933, column: 10, scope: !3989, inlinedAt: !4100)
!4102 = !DILocation(line: 945, column: 3, scope: !4095)
!4103 = distinct !DISubprogram(name: "quotearg_mem", scope: !251, file: !251, line: 949, type: !4104, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!14, !6, !108}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "arg", arg: 1, scope: !4103, file: !251, line: 949, type: !6)
!4108 = !DILocalVariable(name: "argsize", arg: 2, scope: !4103, file: !251, line: 949, type: !108)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !4085, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 951, column: 10, scope: !4103)
!4112 = !DILocation(line: 939, column: 10, scope: !4085, inlinedAt: !4111)
!4113 = !DILocation(line: 951, column: 3, scope: !4103)
!4114 = distinct !DISubprogram(name: "quotearg_n_style", scope: !251, file: !251, line: 955, type: !515, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4115)
!4115 = !{!4116, !4117, !4118, !4119}
!4116 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !251, line: 955, type: !38)
!4117 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !251, line: 955, type: !253)
!4118 = !DILocalVariable(name: "arg", arg: 3, scope: !4114, file: !251, line: 955, type: !6)
!4119 = !DILocalVariable(name: "o", scope: !4114, file: !251, line: 957, type: !298)
!4120 = !DILocation(line: 0, scope: !4114)
!4121 = !DILocation(line: 957, column: 3, scope: !4114)
!4122 = !DILocation(line: 957, column: 32, scope: !4114)
!4123 = !DILocalVariable(name: "style", arg: 1, scope: !4124, file: !251, line: 193, type: !253)
!4124 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !251, file: !251, line: 193, type: !4125, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!299, !253}
!4127 = !{!4123, !4128}
!4128 = !DILocalVariable(name: "o", scope: !4124, file: !251, line: 195, type: !299)
!4129 = !DILocation(line: 0, scope: !4124, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 957, column: 36, scope: !4114)
!4131 = !DILocation(line: 195, column: 26, scope: !4124, inlinedAt: !4130)
!4132 = !{!4133}
!4133 = distinct !{!4133, !4134, !"quoting_options_from_style: argument 0"}
!4134 = distinct !{!4134, !"quoting_options_from_style"}
!4135 = !DILocation(line: 196, column: 13, scope: !4136, inlinedAt: !4130)
!4136 = distinct !DILexicalBlock(scope: !4124, file: !251, line: 196, column: 7)
!4137 = !DILocation(line: 196, column: 7, scope: !4124, inlinedAt: !4130)
!4138 = !DILocation(line: 197, column: 5, scope: !4136, inlinedAt: !4130)
!4139 = !DILocation(line: 198, column: 5, scope: !4124, inlinedAt: !4130)
!4140 = !DILocation(line: 198, column: 11, scope: !4124, inlinedAt: !4130)
!4141 = !DILocation(line: 958, column: 10, scope: !4114)
!4142 = !DILocation(line: 959, column: 1, scope: !4114)
!4143 = !DILocation(line: 958, column: 3, scope: !4114)
!4144 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !251, file: !251, line: 962, type: !4145, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!14, !38, !253, !6, !108}
!4147 = !{!4148, !4149, !4150, !4151, !4152}
!4148 = !DILocalVariable(name: "n", arg: 1, scope: !4144, file: !251, line: 962, type: !38)
!4149 = !DILocalVariable(name: "s", arg: 2, scope: !4144, file: !251, line: 962, type: !253)
!4150 = !DILocalVariable(name: "arg", arg: 3, scope: !4144, file: !251, line: 963, type: !6)
!4151 = !DILocalVariable(name: "argsize", arg: 4, scope: !4144, file: !251, line: 963, type: !108)
!4152 = !DILocalVariable(name: "o", scope: !4144, file: !251, line: 965, type: !298)
!4153 = !DILocation(line: 0, scope: !4144)
!4154 = !DILocation(line: 965, column: 3, scope: !4144)
!4155 = !DILocation(line: 965, column: 32, scope: !4144)
!4156 = !DILocation(line: 0, scope: !4124, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 965, column: 36, scope: !4144)
!4158 = !DILocation(line: 195, column: 26, scope: !4124, inlinedAt: !4157)
!4159 = !{!4160}
!4160 = distinct !{!4160, !4161, !"quoting_options_from_style: argument 0"}
!4161 = distinct !{!4161, !"quoting_options_from_style"}
!4162 = !DILocation(line: 196, column: 13, scope: !4136, inlinedAt: !4157)
!4163 = !DILocation(line: 196, column: 7, scope: !4124, inlinedAt: !4157)
!4164 = !DILocation(line: 197, column: 5, scope: !4136, inlinedAt: !4157)
!4165 = !DILocation(line: 198, column: 5, scope: !4124, inlinedAt: !4157)
!4166 = !DILocation(line: 198, column: 11, scope: !4124, inlinedAt: !4157)
!4167 = !DILocation(line: 966, column: 10, scope: !4144)
!4168 = !DILocation(line: 967, column: 1, scope: !4144)
!4169 = !DILocation(line: 966, column: 3, scope: !4144)
!4170 = distinct !DISubprogram(name: "quotearg_style", scope: !251, file: !251, line: 970, type: !4171, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!14, !253, !6}
!4173 = !{!4174, !4175}
!4174 = !DILocalVariable(name: "s", arg: 1, scope: !4170, file: !251, line: 970, type: !253)
!4175 = !DILocalVariable(name: "arg", arg: 2, scope: !4170, file: !251, line: 970, type: !6)
!4176 = !DILocation(line: 195, column: 26, scope: !4124, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 957, column: 36, scope: !4114, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 972, column: 10, scope: !4170)
!4179 = !DILocation(line: 957, column: 32, scope: !4114, inlinedAt: !4178)
!4180 = !DILocation(line: 0, scope: !4170)
!4181 = !DILocation(line: 0, scope: !4114, inlinedAt: !4178)
!4182 = !DILocation(line: 957, column: 3, scope: !4114, inlinedAt: !4178)
!4183 = !DILocation(line: 0, scope: !4124, inlinedAt: !4177)
!4184 = !{!4185}
!4185 = distinct !{!4185, !4186, !"quoting_options_from_style: argument 0"}
!4186 = distinct !{!4186, !"quoting_options_from_style"}
!4187 = !DILocation(line: 196, column: 13, scope: !4136, inlinedAt: !4177)
!4188 = !DILocation(line: 196, column: 7, scope: !4124, inlinedAt: !4177)
!4189 = !DILocation(line: 197, column: 5, scope: !4136, inlinedAt: !4177)
!4190 = !DILocation(line: 198, column: 5, scope: !4124, inlinedAt: !4177)
!4191 = !DILocation(line: 198, column: 11, scope: !4124, inlinedAt: !4177)
!4192 = !DILocation(line: 958, column: 10, scope: !4114, inlinedAt: !4178)
!4193 = !DILocation(line: 959, column: 1, scope: !4114, inlinedAt: !4178)
!4194 = !DILocation(line: 972, column: 3, scope: !4170)
!4195 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !251, file: !251, line: 976, type: !4196, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!14, !253, !6, !108}
!4198 = !{!4199, !4200, !4201}
!4199 = !DILocalVariable(name: "s", arg: 1, scope: !4195, file: !251, line: 976, type: !253)
!4200 = !DILocalVariable(name: "arg", arg: 2, scope: !4195, file: !251, line: 976, type: !6)
!4201 = !DILocalVariable(name: "argsize", arg: 3, scope: !4195, file: !251, line: 976, type: !108)
!4202 = !DILocation(line: 195, column: 26, scope: !4124, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 965, column: 36, scope: !4144, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 978, column: 10, scope: !4195)
!4205 = !DILocation(line: 965, column: 32, scope: !4144, inlinedAt: !4204)
!4206 = !DILocation(line: 0, scope: !4195)
!4207 = !DILocation(line: 0, scope: !4144, inlinedAt: !4204)
!4208 = !DILocation(line: 965, column: 3, scope: !4144, inlinedAt: !4204)
!4209 = !DILocation(line: 0, scope: !4124, inlinedAt: !4203)
!4210 = !{!4211}
!4211 = distinct !{!4211, !4212, !"quoting_options_from_style: argument 0"}
!4212 = distinct !{!4212, !"quoting_options_from_style"}
!4213 = !DILocation(line: 196, column: 13, scope: !4136, inlinedAt: !4203)
!4214 = !DILocation(line: 196, column: 7, scope: !4124, inlinedAt: !4203)
!4215 = !DILocation(line: 197, column: 5, scope: !4136, inlinedAt: !4203)
!4216 = !DILocation(line: 198, column: 5, scope: !4124, inlinedAt: !4203)
!4217 = !DILocation(line: 198, column: 11, scope: !4124, inlinedAt: !4203)
!4218 = !DILocation(line: 966, column: 10, scope: !4144, inlinedAt: !4204)
!4219 = !DILocation(line: 967, column: 1, scope: !4144, inlinedAt: !4204)
!4220 = !DILocation(line: 978, column: 3, scope: !4195)
!4221 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !251, file: !251, line: 982, type: !4222, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!14, !6, !108, !8}
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DILocalVariable(name: "arg", arg: 1, scope: !4221, file: !251, line: 982, type: !6)
!4226 = !DILocalVariable(name: "argsize", arg: 2, scope: !4221, file: !251, line: 982, type: !108)
!4227 = !DILocalVariable(name: "ch", arg: 3, scope: !4221, file: !251, line: 982, type: !8)
!4228 = !DILocalVariable(name: "options", scope: !4221, file: !251, line: 984, type: !299)
!4229 = !DILocation(line: 0, scope: !4221)
!4230 = !DILocation(line: 984, column: 3, scope: !4221)
!4231 = !DILocation(line: 984, column: 26, scope: !4221)
!4232 = !DILocation(line: 985, column: 13, scope: !4221)
!4233 = !{i64 0, i64 4, !1589, i64 4, i64 4, !1480, i64 8, i64 32, !1589, i64 40, i64 8, !1423, i64 48, i64 8, !1423}
!4234 = !DILocation(line: 0, scope: !3060, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 986, column: 3, scope: !4221)
!4236 = !DILocation(line: 156, column: 62, scope: !3060, inlinedAt: !4235)
!4237 = !DILocation(line: 156, column: 57, scope: !3060, inlinedAt: !4235)
!4238 = !DILocation(line: 157, column: 15, scope: !3060, inlinedAt: !4235)
!4239 = !DILocation(line: 158, column: 12, scope: !3060, inlinedAt: !4235)
!4240 = !DILocation(line: 158, column: 15, scope: !3060, inlinedAt: !4235)
!4241 = !DILocation(line: 158, column: 25, scope: !3060, inlinedAt: !4235)
!4242 = !DILocation(line: 159, column: 18, scope: !3060, inlinedAt: !4235)
!4243 = !DILocation(line: 159, column: 23, scope: !3060, inlinedAt: !4235)
!4244 = !DILocation(line: 159, column: 6, scope: !3060, inlinedAt: !4235)
!4245 = !DILocation(line: 987, column: 10, scope: !4221)
!4246 = !DILocation(line: 988, column: 1, scope: !4221)
!4247 = !DILocation(line: 987, column: 3, scope: !4221)
!4248 = distinct !DISubprogram(name: "quotearg_char", scope: !251, file: !251, line: 991, type: !4249, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!14, !6, !8}
!4251 = !{!4252, !4253}
!4252 = !DILocalVariable(name: "arg", arg: 1, scope: !4248, file: !251, line: 991, type: !6)
!4253 = !DILocalVariable(name: "ch", arg: 2, scope: !4248, file: !251, line: 991, type: !8)
!4254 = !DILocation(line: 984, column: 26, scope: !4221, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 993, column: 10, scope: !4248)
!4256 = !DILocation(line: 0, scope: !4248)
!4257 = !DILocation(line: 0, scope: !4221, inlinedAt: !4255)
!4258 = !DILocation(line: 984, column: 3, scope: !4221, inlinedAt: !4255)
!4259 = !DILocation(line: 985, column: 13, scope: !4221, inlinedAt: !4255)
!4260 = !DILocation(line: 0, scope: !3060, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 986, column: 3, scope: !4221, inlinedAt: !4255)
!4262 = !DILocation(line: 156, column: 62, scope: !3060, inlinedAt: !4261)
!4263 = !DILocation(line: 156, column: 57, scope: !3060, inlinedAt: !4261)
!4264 = !DILocation(line: 157, column: 15, scope: !3060, inlinedAt: !4261)
!4265 = !DILocation(line: 158, column: 12, scope: !3060, inlinedAt: !4261)
!4266 = !DILocation(line: 158, column: 15, scope: !3060, inlinedAt: !4261)
!4267 = !DILocation(line: 158, column: 25, scope: !3060, inlinedAt: !4261)
!4268 = !DILocation(line: 159, column: 18, scope: !3060, inlinedAt: !4261)
!4269 = !DILocation(line: 159, column: 23, scope: !3060, inlinedAt: !4261)
!4270 = !DILocation(line: 159, column: 6, scope: !3060, inlinedAt: !4261)
!4271 = !DILocation(line: 987, column: 10, scope: !4221, inlinedAt: !4255)
!4272 = !DILocation(line: 988, column: 1, scope: !4221, inlinedAt: !4255)
!4273 = !DILocation(line: 993, column: 3, scope: !4248)
!4274 = distinct !DISubprogram(name: "quotearg_colon", scope: !251, file: !251, line: 997, type: !122, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4275)
!4275 = !{!4276}
!4276 = !DILocalVariable(name: "arg", arg: 1, scope: !4274, file: !251, line: 997, type: !6)
!4277 = !DILocation(line: 984, column: 26, scope: !4221, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 993, column: 10, scope: !4248, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 999, column: 10, scope: !4274)
!4280 = !DILocation(line: 0, scope: !4274)
!4281 = !DILocation(line: 0, scope: !4248, inlinedAt: !4279)
!4282 = !DILocation(line: 0, scope: !4221, inlinedAt: !4278)
!4283 = !DILocation(line: 984, column: 3, scope: !4221, inlinedAt: !4278)
!4284 = !DILocation(line: 985, column: 13, scope: !4221, inlinedAt: !4278)
!4285 = !DILocation(line: 0, scope: !3060, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 986, column: 3, scope: !4221, inlinedAt: !4278)
!4287 = !DILocation(line: 156, column: 57, scope: !3060, inlinedAt: !4286)
!4288 = !DILocation(line: 158, column: 12, scope: !3060, inlinedAt: !4286)
!4289 = !DILocation(line: 159, column: 6, scope: !3060, inlinedAt: !4286)
!4290 = !DILocation(line: 987, column: 10, scope: !4221, inlinedAt: !4278)
!4291 = !DILocation(line: 988, column: 1, scope: !4221, inlinedAt: !4278)
!4292 = !DILocation(line: 999, column: 3, scope: !4274)
!4293 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !251, file: !251, line: 1003, type: !4104, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4294)
!4294 = !{!4295, !4296}
!4295 = !DILocalVariable(name: "arg", arg: 1, scope: !4293, file: !251, line: 1003, type: !6)
!4296 = !DILocalVariable(name: "argsize", arg: 2, scope: !4293, file: !251, line: 1003, type: !108)
!4297 = !DILocation(line: 984, column: 26, scope: !4221, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 1005, column: 10, scope: !4293)
!4299 = !DILocation(line: 0, scope: !4293)
!4300 = !DILocation(line: 0, scope: !4221, inlinedAt: !4298)
!4301 = !DILocation(line: 984, column: 3, scope: !4221, inlinedAt: !4298)
!4302 = !DILocation(line: 985, column: 13, scope: !4221, inlinedAt: !4298)
!4303 = !DILocation(line: 0, scope: !3060, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 986, column: 3, scope: !4221, inlinedAt: !4298)
!4305 = !DILocation(line: 156, column: 57, scope: !3060, inlinedAt: !4304)
!4306 = !DILocation(line: 158, column: 12, scope: !3060, inlinedAt: !4304)
!4307 = !DILocation(line: 159, column: 6, scope: !3060, inlinedAt: !4304)
!4308 = !DILocation(line: 987, column: 10, scope: !4221, inlinedAt: !4298)
!4309 = !DILocation(line: 988, column: 1, scope: !4221, inlinedAt: !4298)
!4310 = !DILocation(line: 1005, column: 3, scope: !4293)
!4311 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !251, file: !251, line: 1009, type: !515, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4312)
!4312 = !{!4313, !4314, !4315, !4316}
!4313 = !DILocalVariable(name: "n", arg: 1, scope: !4311, file: !251, line: 1009, type: !38)
!4314 = !DILocalVariable(name: "s", arg: 2, scope: !4311, file: !251, line: 1009, type: !253)
!4315 = !DILocalVariable(name: "arg", arg: 3, scope: !4311, file: !251, line: 1009, type: !6)
!4316 = !DILocalVariable(name: "options", scope: !4311, file: !251, line: 1011, type: !299)
!4317 = !DILocation(line: 195, column: 26, scope: !4124, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1012, column: 13, scope: !4311)
!4319 = !DILocation(line: 0, scope: !4311)
!4320 = !DILocation(line: 1011, column: 3, scope: !4311)
!4321 = !DILocation(line: 1011, column: 26, scope: !4311)
!4322 = !DILocation(line: 1012, column: 13, scope: !4311)
!4323 = !DILocation(line: 0, scope: !4124, inlinedAt: !4318)
!4324 = !{!4325}
!4325 = distinct !{!4325, !4326, !"quoting_options_from_style: argument 0"}
!4326 = distinct !{!4326, !"quoting_options_from_style"}
!4327 = !DILocation(line: 196, column: 13, scope: !4136, inlinedAt: !4318)
!4328 = !DILocation(line: 196, column: 7, scope: !4124, inlinedAt: !4318)
!4329 = !DILocation(line: 197, column: 5, scope: !4136, inlinedAt: !4318)
!4330 = !DILocation(line: 0, scope: !3060, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 1013, column: 3, scope: !4311)
!4332 = !DILocation(line: 156, column: 57, scope: !3060, inlinedAt: !4331)
!4333 = !DILocation(line: 158, column: 12, scope: !3060, inlinedAt: !4331)
!4334 = !DILocation(line: 159, column: 6, scope: !3060, inlinedAt: !4331)
!4335 = !DILocation(line: 1014, column: 10, scope: !4311)
!4336 = !DILocation(line: 1015, column: 1, scope: !4311)
!4337 = !DILocation(line: 1014, column: 3, scope: !4311)
!4338 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !251, file: !251, line: 1018, type: !4339, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!14, !38, !6, !6, !6}
!4341 = !{!4342, !4343, !4344, !4345}
!4342 = !DILocalVariable(name: "n", arg: 1, scope: !4338, file: !251, line: 1018, type: !38)
!4343 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4338, file: !251, line: 1018, type: !6)
!4344 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4338, file: !251, line: 1019, type: !6)
!4345 = !DILocalVariable(name: "arg", arg: 4, scope: !4338, file: !251, line: 1019, type: !6)
!4346 = !DILocalVariable(name: "o", scope: !4347, file: !251, line: 1030, type: !299)
!4347 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !251, file: !251, line: 1026, type: !4348, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!14, !38, !6, !6, !6, !108}
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4346}
!4351 = !DILocalVariable(name: "n", arg: 1, scope: !4347, file: !251, line: 1026, type: !38)
!4352 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4347, file: !251, line: 1026, type: !6)
!4353 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4347, file: !251, line: 1027, type: !6)
!4354 = !DILocalVariable(name: "arg", arg: 4, scope: !4347, file: !251, line: 1028, type: !6)
!4355 = !DILocalVariable(name: "argsize", arg: 5, scope: !4347, file: !251, line: 1028, type: !108)
!4356 = !DILocation(line: 1030, column: 26, scope: !4347, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 1021, column: 10, scope: !4338)
!4358 = !DILocation(line: 0, scope: !4338)
!4359 = !DILocation(line: 0, scope: !4347, inlinedAt: !4357)
!4360 = !DILocation(line: 1030, column: 3, scope: !4347, inlinedAt: !4357)
!4361 = !DILocation(line: 1030, column: 30, scope: !4347, inlinedAt: !4357)
!4362 = !DILocation(line: 0, scope: !3100, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 1031, column: 3, scope: !4347, inlinedAt: !4357)
!4364 = !DILocation(line: 184, column: 6, scope: !3100, inlinedAt: !4363)
!4365 = !DILocation(line: 184, column: 12, scope: !3100, inlinedAt: !4363)
!4366 = !DILocation(line: 185, column: 8, scope: !3114, inlinedAt: !4363)
!4367 = !DILocation(line: 185, column: 23, scope: !3114, inlinedAt: !4363)
!4368 = !DILocation(line: 185, column: 19, scope: !3114, inlinedAt: !4363)
!4369 = !DILocation(line: 186, column: 5, scope: !3114, inlinedAt: !4363)
!4370 = !DILocation(line: 187, column: 6, scope: !3100, inlinedAt: !4363)
!4371 = !DILocation(line: 187, column: 17, scope: !3100, inlinedAt: !4363)
!4372 = !DILocation(line: 188, column: 6, scope: !3100, inlinedAt: !4363)
!4373 = !DILocation(line: 188, column: 18, scope: !3100, inlinedAt: !4363)
!4374 = !DILocation(line: 1032, column: 10, scope: !4347, inlinedAt: !4357)
!4375 = !DILocation(line: 1033, column: 1, scope: !4347, inlinedAt: !4357)
!4376 = !DILocation(line: 1021, column: 3, scope: !4338)
!4377 = !DILocation(line: 0, scope: !4347)
!4378 = !DILocation(line: 1030, column: 3, scope: !4347)
!4379 = !DILocation(line: 1030, column: 26, scope: !4347)
!4380 = !DILocation(line: 1030, column: 30, scope: !4347)
!4381 = !DILocation(line: 0, scope: !3100, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 1031, column: 3, scope: !4347)
!4383 = !DILocation(line: 184, column: 6, scope: !3100, inlinedAt: !4382)
!4384 = !DILocation(line: 184, column: 12, scope: !3100, inlinedAt: !4382)
!4385 = !DILocation(line: 185, column: 8, scope: !3114, inlinedAt: !4382)
!4386 = !DILocation(line: 185, column: 23, scope: !3114, inlinedAt: !4382)
!4387 = !DILocation(line: 185, column: 19, scope: !3114, inlinedAt: !4382)
!4388 = !DILocation(line: 186, column: 5, scope: !3114, inlinedAt: !4382)
!4389 = !DILocation(line: 187, column: 6, scope: !3100, inlinedAt: !4382)
!4390 = !DILocation(line: 187, column: 17, scope: !3100, inlinedAt: !4382)
!4391 = !DILocation(line: 188, column: 6, scope: !3100, inlinedAt: !4382)
!4392 = !DILocation(line: 188, column: 18, scope: !3100, inlinedAt: !4382)
!4393 = !DILocation(line: 1032, column: 10, scope: !4347)
!4394 = !DILocation(line: 1033, column: 1, scope: !4347)
!4395 = !DILocation(line: 1032, column: 3, scope: !4347)
!4396 = distinct !DISubprogram(name: "quotearg_custom", scope: !251, file: !251, line: 1036, type: !4397, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4399)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!14, !6, !6, !6}
!4399 = !{!4400, !4401, !4402}
!4400 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4396, file: !251, line: 1036, type: !6)
!4401 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4396, file: !251, line: 1036, type: !6)
!4402 = !DILocalVariable(name: "arg", arg: 3, scope: !4396, file: !251, line: 1037, type: !6)
!4403 = !DILocation(line: 1030, column: 26, scope: !4347, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 1021, column: 10, scope: !4338, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 1039, column: 10, scope: !4396)
!4406 = !DILocation(line: 0, scope: !4396)
!4407 = !DILocation(line: 0, scope: !4338, inlinedAt: !4405)
!4408 = !DILocation(line: 0, scope: !4347, inlinedAt: !4404)
!4409 = !DILocation(line: 1030, column: 3, scope: !4347, inlinedAt: !4404)
!4410 = !DILocation(line: 1030, column: 30, scope: !4347, inlinedAt: !4404)
!4411 = !DILocation(line: 0, scope: !3100, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 1031, column: 3, scope: !4347, inlinedAt: !4404)
!4413 = !DILocation(line: 184, column: 6, scope: !3100, inlinedAt: !4412)
!4414 = !DILocation(line: 184, column: 12, scope: !3100, inlinedAt: !4412)
!4415 = !DILocation(line: 185, column: 8, scope: !3114, inlinedAt: !4412)
!4416 = !DILocation(line: 185, column: 23, scope: !3114, inlinedAt: !4412)
!4417 = !DILocation(line: 185, column: 19, scope: !3114, inlinedAt: !4412)
!4418 = !DILocation(line: 186, column: 5, scope: !3114, inlinedAt: !4412)
!4419 = !DILocation(line: 187, column: 6, scope: !3100, inlinedAt: !4412)
!4420 = !DILocation(line: 187, column: 17, scope: !3100, inlinedAt: !4412)
!4421 = !DILocation(line: 188, column: 6, scope: !3100, inlinedAt: !4412)
!4422 = !DILocation(line: 188, column: 18, scope: !3100, inlinedAt: !4412)
!4423 = !DILocation(line: 1032, column: 10, scope: !4347, inlinedAt: !4404)
!4424 = !DILocation(line: 1033, column: 1, scope: !4347, inlinedAt: !4404)
!4425 = !DILocation(line: 1039, column: 3, scope: !4396)
!4426 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !251, file: !251, line: 1043, type: !4427, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!14, !6, !6, !6, !108}
!4429 = !{!4430, !4431, !4432, !4433}
!4430 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4426, file: !251, line: 1043, type: !6)
!4431 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4426, file: !251, line: 1043, type: !6)
!4432 = !DILocalVariable(name: "arg", arg: 3, scope: !4426, file: !251, line: 1044, type: !6)
!4433 = !DILocalVariable(name: "argsize", arg: 4, scope: !4426, file: !251, line: 1044, type: !108)
!4434 = !DILocation(line: 1030, column: 26, scope: !4347, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 1046, column: 10, scope: !4426)
!4436 = !DILocation(line: 0, scope: !4426)
!4437 = !DILocation(line: 0, scope: !4347, inlinedAt: !4435)
!4438 = !DILocation(line: 1030, column: 3, scope: !4347, inlinedAt: !4435)
!4439 = !DILocation(line: 1030, column: 30, scope: !4347, inlinedAt: !4435)
!4440 = !DILocation(line: 0, scope: !3100, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 1031, column: 3, scope: !4347, inlinedAt: !4435)
!4442 = !DILocation(line: 184, column: 6, scope: !3100, inlinedAt: !4441)
!4443 = !DILocation(line: 184, column: 12, scope: !3100, inlinedAt: !4441)
!4444 = !DILocation(line: 185, column: 8, scope: !3114, inlinedAt: !4441)
!4445 = !DILocation(line: 185, column: 23, scope: !3114, inlinedAt: !4441)
!4446 = !DILocation(line: 185, column: 19, scope: !3114, inlinedAt: !4441)
!4447 = !DILocation(line: 186, column: 5, scope: !3114, inlinedAt: !4441)
!4448 = !DILocation(line: 187, column: 6, scope: !3100, inlinedAt: !4441)
!4449 = !DILocation(line: 187, column: 17, scope: !3100, inlinedAt: !4441)
!4450 = !DILocation(line: 188, column: 6, scope: !3100, inlinedAt: !4441)
!4451 = !DILocation(line: 188, column: 18, scope: !3100, inlinedAt: !4441)
!4452 = !DILocation(line: 1032, column: 10, scope: !4347, inlinedAt: !4435)
!4453 = !DILocation(line: 1033, column: 1, scope: !4347, inlinedAt: !4435)
!4454 = !DILocation(line: 1046, column: 3, scope: !4426)
!4455 = distinct !DISubprogram(name: "quote_n_mem", scope: !251, file: !251, line: 1061, type: !4456, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!6, !38, !6, !108}
!4458 = !{!4459, !4460, !4461}
!4459 = !DILocalVariable(name: "n", arg: 1, scope: !4455, file: !251, line: 1061, type: !38)
!4460 = !DILocalVariable(name: "arg", arg: 2, scope: !4455, file: !251, line: 1061, type: !6)
!4461 = !DILocalVariable(name: "argsize", arg: 3, scope: !4455, file: !251, line: 1061, type: !108)
!4462 = !DILocation(line: 0, scope: !4455)
!4463 = !DILocation(line: 1063, column: 10, scope: !4455)
!4464 = !DILocation(line: 1063, column: 3, scope: !4455)
!4465 = distinct !DISubprogram(name: "quote_mem", scope: !251, file: !251, line: 1067, type: !4466, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!6, !6, !108}
!4468 = !{!4469, !4470}
!4469 = !DILocalVariable(name: "arg", arg: 1, scope: !4465, file: !251, line: 1067, type: !6)
!4470 = !DILocalVariable(name: "argsize", arg: 2, scope: !4465, file: !251, line: 1067, type: !108)
!4471 = !DILocation(line: 0, scope: !4465)
!4472 = !DILocation(line: 0, scope: !4455, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 1069, column: 10, scope: !4465)
!4474 = !DILocation(line: 1063, column: 10, scope: !4455, inlinedAt: !4473)
!4475 = !DILocation(line: 1069, column: 3, scope: !4465)
!4476 = distinct !DISubprogram(name: "quote_n", scope: !251, file: !251, line: 1073, type: !4477, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!6, !38, !6}
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "n", arg: 1, scope: !4476, file: !251, line: 1073, type: !38)
!4481 = !DILocalVariable(name: "arg", arg: 2, scope: !4476, file: !251, line: 1073, type: !6)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocation(line: 0, scope: !4455, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 1075, column: 10, scope: !4476)
!4485 = !DILocation(line: 1063, column: 10, scope: !4455, inlinedAt: !4484)
!4486 = !DILocation(line: 1075, column: 3, scope: !4476)
!4487 = distinct !DISubprogram(name: "quote", scope: !251, file: !251, line: 1079, type: !478, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4488)
!4488 = !{!4489}
!4489 = !DILocalVariable(name: "arg", arg: 1, scope: !4487, file: !251, line: 1079, type: !6)
!4490 = !DILocation(line: 0, scope: !4487)
!4491 = !DILocation(line: 0, scope: !4476, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 1081, column: 10, scope: !4487)
!4493 = !DILocation(line: 0, scope: !4455, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 1075, column: 10, scope: !4476, inlinedAt: !4492)
!4495 = !DILocation(line: 1063, column: 10, scope: !4455, inlinedAt: !4494)
!4496 = !DILocation(line: 1081, column: 3, scope: !4487)
!4497 = distinct !DISubprogram(name: "version_etc_arn", scope: !643, file: !643, line: 61, type: !4498, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !4503)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !4500, !6, !6, !6, !4502, !108}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !653)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!4503 = !{!4504, !4505, !4506, !4507, !4508, !4509}
!4504 = !DILocalVariable(name: "stream", arg: 1, scope: !4497, file: !643, line: 61, type: !4500)
!4505 = !DILocalVariable(name: "command_name", arg: 2, scope: !4497, file: !643, line: 62, type: !6)
!4506 = !DILocalVariable(name: "package", arg: 3, scope: !4497, file: !643, line: 62, type: !6)
!4507 = !DILocalVariable(name: "version", arg: 4, scope: !4497, file: !643, line: 63, type: !6)
!4508 = !DILocalVariable(name: "authors", arg: 5, scope: !4497, file: !643, line: 64, type: !4502)
!4509 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4497, file: !643, line: 64, type: !108)
!4510 = !DILocation(line: 0, scope: !4497)
!4511 = !DILocation(line: 66, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4497, file: !643, line: 66, column: 7)
!4513 = !DILocation(line: 66, column: 7, scope: !4497)
!4514 = !DILocation(line: 67, column: 5, scope: !4512)
!4515 = !DILocation(line: 69, column: 5, scope: !4512)
!4516 = !DILocation(line: 83, column: 3, scope: !4497)
!4517 = !DILocation(line: 85, column: 3, scope: !4497)
!4518 = !DILocation(line: 88, column: 3, scope: !4497)
!4519 = !DILocation(line: 95, column: 3, scope: !4497)
!4520 = !DILocation(line: 97, column: 3, scope: !4497)
!4521 = !DILocation(line: 105, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4497, file: !643, line: 98, column: 5)
!4523 = !DILocation(line: 106, column: 7, scope: !4522)
!4524 = !DILocation(line: 109, column: 7, scope: !4522)
!4525 = !DILocation(line: 110, column: 7, scope: !4522)
!4526 = !DILocation(line: 113, column: 7, scope: !4522)
!4527 = !DILocation(line: 115, column: 7, scope: !4522)
!4528 = !DILocation(line: 120, column: 7, scope: !4522)
!4529 = !DILocation(line: 122, column: 7, scope: !4522)
!4530 = !DILocation(line: 127, column: 7, scope: !4522)
!4531 = !DILocation(line: 129, column: 7, scope: !4522)
!4532 = !DILocation(line: 134, column: 7, scope: !4522)
!4533 = !DILocation(line: 137, column: 7, scope: !4522)
!4534 = !DILocation(line: 142, column: 7, scope: !4522)
!4535 = !DILocation(line: 145, column: 7, scope: !4522)
!4536 = !DILocation(line: 150, column: 7, scope: !4522)
!4537 = !DILocation(line: 154, column: 7, scope: !4522)
!4538 = !DILocation(line: 159, column: 7, scope: !4522)
!4539 = !DILocation(line: 163, column: 7, scope: !4522)
!4540 = !DILocation(line: 170, column: 7, scope: !4522)
!4541 = !DILocation(line: 174, column: 7, scope: !4522)
!4542 = !DILocation(line: 176, column: 1, scope: !4497)
!4543 = distinct !DISubprogram(name: "version_etc_ar", scope: !643, file: !643, line: 183, type: !4544, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !4500, !6, !6, !6, !4502}
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4552}
!4547 = !DILocalVariable(name: "stream", arg: 1, scope: !4543, file: !643, line: 183, type: !4500)
!4548 = !DILocalVariable(name: "command_name", arg: 2, scope: !4543, file: !643, line: 184, type: !6)
!4549 = !DILocalVariable(name: "package", arg: 3, scope: !4543, file: !643, line: 184, type: !6)
!4550 = !DILocalVariable(name: "version", arg: 4, scope: !4543, file: !643, line: 185, type: !6)
!4551 = !DILocalVariable(name: "authors", arg: 5, scope: !4543, file: !643, line: 185, type: !4502)
!4552 = !DILocalVariable(name: "n_authors", scope: !4543, file: !643, line: 187, type: !108)
!4553 = !DILocation(line: 0, scope: !4543)
!4554 = !DILocation(line: 189, column: 8, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4543, file: !643, line: 189, column: 3)
!4556 = !DILocation(line: 0, scope: !4555)
!4557 = !DILocation(line: 189, column: 23, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4555, file: !643, line: 189, column: 3)
!4559 = !DILocation(line: 189, column: 3, scope: !4555)
!4560 = !DILocation(line: 189, column: 52, scope: !4558)
!4561 = distinct !{!4561, !4559, !4562}
!4562 = !DILocation(line: 190, column: 5, scope: !4555)
!4563 = !DILocation(line: 191, column: 3, scope: !4543)
!4564 = !DILocation(line: 192, column: 1, scope: !4543)
!4565 = distinct !DISubprogram(name: "version_etc_va", scope: !643, file: !643, line: 199, type: !4566, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !4575)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4500, !6, !6, !6, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !643, line: 192, size: 192, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4574}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4569, file: !643, line: 192, baseType: !198, size: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4569, file: !643, line: 192, baseType: !198, size: 32, offset: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4569, file: !643, line: 192, baseType: !106, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4569, file: !643, line: 192, baseType: !106, size: 64, offset: 128)
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4581, !4582}
!4576 = !DILocalVariable(name: "stream", arg: 1, scope: !4565, file: !643, line: 199, type: !4500)
!4577 = !DILocalVariable(name: "command_name", arg: 2, scope: !4565, file: !643, line: 200, type: !6)
!4578 = !DILocalVariable(name: "package", arg: 3, scope: !4565, file: !643, line: 200, type: !6)
!4579 = !DILocalVariable(name: "version", arg: 4, scope: !4565, file: !643, line: 201, type: !6)
!4580 = !DILocalVariable(name: "authors", arg: 5, scope: !4565, file: !643, line: 201, type: !4568)
!4581 = !DILocalVariable(name: "n_authors", scope: !4565, file: !643, line: 203, type: !108)
!4582 = !DILocalVariable(name: "authtab", scope: !4565, file: !643, line: 204, type: !4583)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !364)
!4584 = !DILocation(line: 0, scope: !4565)
!4585 = !DILocation(line: 204, column: 3, scope: !4565)
!4586 = !DILocation(line: 204, column: 15, scope: !4565)
!4587 = !DILocation(line: 0, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !643, line: 206, column: 3)
!4589 = distinct !DILexicalBlock(scope: !4565, file: !643, line: 206, column: 3)
!4590 = !DILocation(line: 208, column: 35, scope: !4588)
!4591 = !DILocation(line: 208, column: 14, scope: !4588)
!4592 = !DILocation(line: 208, column: 33, scope: !4588)
!4593 = !DILocation(line: 208, column: 67, scope: !4588)
!4594 = !DILocation(line: 206, column: 3, scope: !4589)
!4595 = !DILocation(line: 0, scope: !4589)
!4596 = !DILocation(line: 211, column: 3, scope: !4565)
!4597 = !DILocation(line: 213, column: 1, scope: !4565)
!4598 = distinct !DISubprogram(name: "version_etc", scope: !643, file: !643, line: 230, type: !4599, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !4500, !6, !6, !6, null}
!4601 = !{!4602, !4603, !4604, !4605, !4606}
!4602 = !DILocalVariable(name: "stream", arg: 1, scope: !4598, file: !643, line: 230, type: !4500)
!4603 = !DILocalVariable(name: "command_name", arg: 2, scope: !4598, file: !643, line: 231, type: !6)
!4604 = !DILocalVariable(name: "package", arg: 3, scope: !4598, file: !643, line: 231, type: !6)
!4605 = !DILocalVariable(name: "version", arg: 4, scope: !4598, file: !643, line: 232, type: !6)
!4606 = !DILocalVariable(name: "authors", scope: !4598, file: !643, line: 234, type: !4607)
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !212, line: 52, baseType: !4608)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2933, line: 32, baseType: !4609)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !643, line: 234, baseType: !4610)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4569, size: 192, elements: !91)
!4611 = !DILocation(line: 0, scope: !4598)
!4612 = !DILocation(line: 234, column: 3, scope: !4598)
!4613 = !DILocation(line: 234, column: 11, scope: !4598)
!4614 = !DILocation(line: 236, column: 3, scope: !4598)
!4615 = !DILocation(line: 237, column: 3, scope: !4598)
!4616 = !DILocation(line: 238, column: 3, scope: !4598)
!4617 = !DILocation(line: 239, column: 1, scope: !4598)
!4618 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !643, file: !643, line: 242, type: !354, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !4)
!4619 = !DILocation(line: 244, column: 3, scope: !4618)
!4620 = !DILocation(line: 249, column: 3, scope: !4618)
!4621 = !DILocation(line: 255, column: 3, scope: !4618)
!4622 = !DILocation(line: 260, column: 3, scope: !4618)
!4623 = !DILocation(line: 262, column: 1, scope: !4618)
!4624 = distinct !DISubprogram(name: "xnmalloc", scope: !288, file: !288, line: 99, type: !4625, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!106, !108, !108}
!4627 = !{!4628, !4629}
!4628 = !DILocalVariable(name: "n", arg: 1, scope: !4624, file: !288, line: 99, type: !108)
!4629 = !DILocalVariable(name: "s", arg: 2, scope: !4624, file: !288, line: 99, type: !108)
!4630 = !DILocation(line: 0, scope: !4624)
!4631 = !DILocation(line: 101, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4624, file: !288, line: 101, column: 7)
!4633 = !DILocation(line: 101, column: 7, scope: !4624)
!4634 = !DILocation(line: 102, column: 5, scope: !4632)
!4635 = !DILocation(line: 103, column: 21, scope: !4624)
!4636 = !DILocalVariable(name: "n", arg: 1, scope: !4637, file: !685, line: 39, type: !108)
!4637 = distinct !DISubprogram(name: "xmalloc", scope: !685, file: !685, line: 39, type: !4638, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!106, !108}
!4640 = !{!4636, !4641}
!4641 = !DILocalVariable(name: "p", scope: !4637, file: !685, line: 41, type: !106)
!4642 = !DILocation(line: 0, scope: !4637, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 103, column: 10, scope: !4624)
!4644 = !DILocation(line: 41, column: 13, scope: !4637, inlinedAt: !4643)
!4645 = !DILocation(line: 42, column: 8, scope: !4646, inlinedAt: !4643)
!4646 = distinct !DILexicalBlock(scope: !4637, file: !685, line: 42, column: 7)
!4647 = !DILocation(line: 42, column: 15, scope: !4646, inlinedAt: !4643)
!4648 = !DILocation(line: 42, column: 10, scope: !4646, inlinedAt: !4643)
!4649 = !DILocation(line: 43, column: 5, scope: !4646, inlinedAt: !4643)
!4650 = !DILocation(line: 103, column: 3, scope: !4624)
!4651 = !DILocation(line: 0, scope: !4637)
!4652 = !DILocation(line: 41, column: 13, scope: !4637)
!4653 = !DILocation(line: 42, column: 8, scope: !4646)
!4654 = !DILocation(line: 42, column: 15, scope: !4646)
!4655 = !DILocation(line: 42, column: 10, scope: !4646)
!4656 = !DILocation(line: 43, column: 5, scope: !4646)
!4657 = !DILocation(line: 44, column: 3, scope: !4637)
!4658 = distinct !DISubprogram(name: "xnrealloc", scope: !288, file: !288, line: 112, type: !4659, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4661)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!106, !106, !108, !108}
!4661 = !{!4662, !4663, !4664}
!4662 = !DILocalVariable(name: "p", arg: 1, scope: !4658, file: !288, line: 112, type: !106)
!4663 = !DILocalVariable(name: "n", arg: 2, scope: !4658, file: !288, line: 112, type: !108)
!4664 = !DILocalVariable(name: "s", arg: 3, scope: !4658, file: !288, line: 112, type: !108)
!4665 = !DILocation(line: 0, scope: !4658)
!4666 = !DILocation(line: 114, column: 7, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4658, file: !288, line: 114, column: 7)
!4668 = !DILocation(line: 114, column: 7, scope: !4658)
!4669 = !DILocation(line: 115, column: 5, scope: !4667)
!4670 = !DILocation(line: 116, column: 25, scope: !4658)
!4671 = !DILocalVariable(name: "p", arg: 1, scope: !4672, file: !685, line: 51, type: !106)
!4672 = distinct !DISubprogram(name: "xrealloc", scope: !685, file: !685, line: 51, type: !4673, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!106, !106, !108}
!4675 = !{!4671, !4676}
!4676 = !DILocalVariable(name: "n", arg: 2, scope: !4672, file: !685, line: 51, type: !108)
!4677 = !DILocation(line: 0, scope: !4672, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 116, column: 10, scope: !4658)
!4679 = !DILocation(line: 53, column: 8, scope: !4680, inlinedAt: !4678)
!4680 = distinct !DILexicalBlock(scope: !4672, file: !685, line: 53, column: 7)
!4681 = !DILocation(line: 53, column: 13, scope: !4680, inlinedAt: !4678)
!4682 = !DILocation(line: 53, column: 10, scope: !4680, inlinedAt: !4678)
!4683 = !DILocation(line: 57, column: 7, scope: !4684, inlinedAt: !4678)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !685, line: 54, column: 5)
!4685 = !DILocation(line: 58, column: 7, scope: !4684, inlinedAt: !4678)
!4686 = !DILocation(line: 61, column: 7, scope: !4672, inlinedAt: !4678)
!4687 = !DILocation(line: 62, column: 8, scope: !4688, inlinedAt: !4678)
!4688 = distinct !DILexicalBlock(scope: !4672, file: !685, line: 62, column: 7)
!4689 = !DILocation(line: 62, column: 13, scope: !4688, inlinedAt: !4678)
!4690 = !DILocation(line: 62, column: 10, scope: !4688, inlinedAt: !4678)
!4691 = !DILocation(line: 63, column: 5, scope: !4688, inlinedAt: !4678)
!4692 = !DILocation(line: 116, column: 3, scope: !4658)
!4693 = !DILocation(line: 0, scope: !4672)
!4694 = !DILocation(line: 53, column: 8, scope: !4680)
!4695 = !DILocation(line: 53, column: 13, scope: !4680)
!4696 = !DILocation(line: 53, column: 10, scope: !4680)
!4697 = !DILocation(line: 57, column: 7, scope: !4684)
!4698 = !DILocation(line: 58, column: 7, scope: !4684)
!4699 = !DILocation(line: 61, column: 7, scope: !4672)
!4700 = !DILocation(line: 62, column: 8, scope: !4688)
!4701 = !DILocation(line: 62, column: 13, scope: !4688)
!4702 = !DILocation(line: 62, column: 10, scope: !4688)
!4703 = !DILocation(line: 63, column: 5, scope: !4688)
!4704 = !DILocation(line: 65, column: 1, scope: !4672)
!4705 = !DILocation(line: 0, scope: !688)
!4706 = !DILocation(line: 176, column: 14, scope: !688)
!4707 = !DILocation(line: 178, column: 9, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !688, file: !288, line: 178, column: 7)
!4709 = !DILocation(line: 178, column: 7, scope: !688)
!4710 = !DILocation(line: 180, column: 13, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !288, line: 180, column: 11)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !288, line: 179, column: 5)
!4713 = !DILocation(line: 180, column: 11, scope: !4712)
!4714 = !DILocation(line: 188, column: 30, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !288, line: 181, column: 9)
!4716 = !DILocation(line: 189, column: 16, scope: !4715)
!4717 = !DILocation(line: 189, column: 13, scope: !4715)
!4718 = !DILocation(line: 190, column: 9, scope: !4715)
!4719 = !DILocation(line: 191, column: 11, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4712, file: !288, line: 191, column: 11)
!4721 = !DILocation(line: 191, column: 11, scope: !4712)
!4722 = !DILocation(line: 206, column: 7, scope: !688)
!4723 = !DILocation(line: 207, column: 25, scope: !688)
!4724 = !DILocation(line: 0, scope: !4672, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 207, column: 10, scope: !688)
!4726 = !DILocation(line: 53, column: 10, scope: !4680, inlinedAt: !4725)
!4727 = !DILocation(line: 192, column: 9, scope: !4720)
!4728 = !DILocation(line: 200, column: 69, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !288, line: 200, column: 11)
!4730 = distinct !DILexicalBlock(scope: !4708, file: !288, line: 195, column: 5)
!4731 = !DILocation(line: 201, column: 11, scope: !4729)
!4732 = !DILocation(line: 200, column: 11, scope: !4730)
!4733 = !DILocation(line: 202, column: 9, scope: !4729)
!4734 = !DILocation(line: 203, column: 14, scope: !4730)
!4735 = !DILocation(line: 203, column: 18, scope: !4730)
!4736 = !DILocation(line: 203, column: 9, scope: !4730)
!4737 = !DILocation(line: 53, column: 8, scope: !4680, inlinedAt: !4725)
!4738 = !DILocation(line: 57, column: 7, scope: !4684, inlinedAt: !4725)
!4739 = !DILocation(line: 58, column: 7, scope: !4684, inlinedAt: !4725)
!4740 = !DILocation(line: 61, column: 7, scope: !4672, inlinedAt: !4725)
!4741 = !DILocation(line: 62, column: 8, scope: !4688, inlinedAt: !4725)
!4742 = !DILocation(line: 62, column: 13, scope: !4688, inlinedAt: !4725)
!4743 = !DILocation(line: 62, column: 10, scope: !4688, inlinedAt: !4725)
!4744 = !DILocation(line: 63, column: 5, scope: !4688, inlinedAt: !4725)
!4745 = !DILocation(line: 207, column: 3, scope: !688)
!4746 = distinct !DISubprogram(name: "xcharalloc", scope: !288, file: !288, line: 216, type: !3914, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4747)
!4747 = !{!4748}
!4748 = !DILocalVariable(name: "n", arg: 1, scope: !4746, file: !288, line: 216, type: !108)
!4749 = !DILocation(line: 0, scope: !4746)
!4750 = !DILocation(line: 0, scope: !4637, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 218, column: 10, scope: !4746)
!4752 = !DILocation(line: 41, column: 13, scope: !4637, inlinedAt: !4751)
!4753 = !DILocation(line: 42, column: 8, scope: !4646, inlinedAt: !4751)
!4754 = !DILocation(line: 42, column: 15, scope: !4646, inlinedAt: !4751)
!4755 = !DILocation(line: 42, column: 10, scope: !4646, inlinedAt: !4751)
!4756 = !DILocation(line: 43, column: 5, scope: !4646, inlinedAt: !4751)
!4757 = !DILocation(line: 218, column: 3, scope: !4746)
!4758 = distinct !DISubprogram(name: "x2realloc", scope: !685, file: !685, line: 74, type: !4759, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!106, !106, !691}
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4758, file: !685, line: 74, type: !106)
!4763 = !DILocalVariable(name: "pn", arg: 2, scope: !4758, file: !685, line: 74, type: !691)
!4764 = !DILocation(line: 0, scope: !4758)
!4765 = !DILocation(line: 0, scope: !688, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 76, column: 10, scope: !4758)
!4767 = !DILocation(line: 176, column: 14, scope: !688, inlinedAt: !4766)
!4768 = !DILocation(line: 178, column: 9, scope: !4708, inlinedAt: !4766)
!4769 = !DILocation(line: 178, column: 7, scope: !688, inlinedAt: !4766)
!4770 = !DILocation(line: 180, column: 13, scope: !4711, inlinedAt: !4766)
!4771 = !DILocation(line: 180, column: 11, scope: !4712, inlinedAt: !4766)
!4772 = !DILocation(line: 191, column: 11, scope: !4720, inlinedAt: !4766)
!4773 = !DILocation(line: 191, column: 11, scope: !4712, inlinedAt: !4766)
!4774 = !DILocation(line: 206, column: 7, scope: !688, inlinedAt: !4766)
!4775 = !DILocation(line: 0, scope: !4672, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 207, column: 10, scope: !688, inlinedAt: !4766)
!4777 = !DILocation(line: 53, column: 10, scope: !4680, inlinedAt: !4776)
!4778 = !DILocation(line: 192, column: 9, scope: !4720, inlinedAt: !4766)
!4779 = !DILocation(line: 201, column: 11, scope: !4729, inlinedAt: !4766)
!4780 = !DILocation(line: 200, column: 11, scope: !4730, inlinedAt: !4766)
!4781 = !DILocation(line: 202, column: 9, scope: !4729, inlinedAt: !4766)
!4782 = !DILocation(line: 203, column: 14, scope: !4730, inlinedAt: !4766)
!4783 = !DILocation(line: 203, column: 18, scope: !4730, inlinedAt: !4766)
!4784 = !DILocation(line: 203, column: 9, scope: !4730, inlinedAt: !4766)
!4785 = !DILocation(line: 53, column: 8, scope: !4680, inlinedAt: !4776)
!4786 = !DILocation(line: 57, column: 7, scope: !4684, inlinedAt: !4776)
!4787 = !DILocation(line: 58, column: 7, scope: !4684, inlinedAt: !4776)
!4788 = !DILocation(line: 61, column: 7, scope: !4672, inlinedAt: !4776)
!4789 = !DILocation(line: 62, column: 8, scope: !4688, inlinedAt: !4776)
!4790 = !DILocation(line: 62, column: 13, scope: !4688, inlinedAt: !4776)
!4791 = !DILocation(line: 62, column: 10, scope: !4688, inlinedAt: !4776)
!4792 = !DILocation(line: 63, column: 5, scope: !4688, inlinedAt: !4776)
!4793 = !DILocation(line: 76, column: 3, scope: !4758)
!4794 = distinct !DISubprogram(name: "xzalloc", scope: !685, file: !685, line: 84, type: !4638, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4795)
!4795 = !{!4796}
!4796 = !DILocalVariable(name: "n", arg: 1, scope: !4794, file: !685, line: 84, type: !108)
!4797 = !DILocation(line: 0, scope: !4794)
!4798 = !DILocalVariable(name: "n", arg: 1, scope: !4799, file: !685, line: 93, type: !108)
!4799 = distinct !DISubprogram(name: "xcalloc", scope: !685, file: !685, line: 93, type: !4625, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4800)
!4800 = !{!4798, !4801, !4802}
!4801 = !DILocalVariable(name: "s", arg: 2, scope: !4799, file: !685, line: 93, type: !108)
!4802 = !DILocalVariable(name: "p", scope: !4799, file: !685, line: 95, type: !106)
!4803 = !DILocation(line: 0, scope: !4799, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 86, column: 10, scope: !4794)
!4805 = !DILocation(line: 100, column: 7, scope: !4806, inlinedAt: !4804)
!4806 = distinct !DILexicalBlock(scope: !4799, file: !685, line: 100, column: 7)
!4807 = !DILocation(line: 101, column: 7, scope: !4806, inlinedAt: !4804)
!4808 = !DILocation(line: 101, column: 18, scope: !4806, inlinedAt: !4804)
!4809 = !DILocation(line: 101, column: 16, scope: !4806, inlinedAt: !4804)
!4810 = !DILocation(line: 100, column: 7, scope: !4799, inlinedAt: !4804)
!4811 = !DILocation(line: 102, column: 5, scope: !4806, inlinedAt: !4804)
!4812 = !DILocation(line: 86, column: 3, scope: !4794)
!4813 = !DILocation(line: 0, scope: !4799)
!4814 = !DILocation(line: 100, column: 7, scope: !4806)
!4815 = !DILocation(line: 101, column: 7, scope: !4806)
!4816 = !DILocation(line: 101, column: 18, scope: !4806)
!4817 = !DILocation(line: 101, column: 16, scope: !4806)
!4818 = !DILocation(line: 100, column: 7, scope: !4799)
!4819 = !DILocation(line: 102, column: 5, scope: !4806)
!4820 = !DILocation(line: 103, column: 3, scope: !4799)
!4821 = distinct !DISubprogram(name: "xmemdup", scope: !685, file: !685, line: 111, type: !4822, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!106, !291, !108}
!4824 = !{!4825, !4826}
!4825 = !DILocalVariable(name: "p", arg: 1, scope: !4821, file: !685, line: 111, type: !291)
!4826 = !DILocalVariable(name: "s", arg: 2, scope: !4821, file: !685, line: 111, type: !108)
!4827 = !DILocation(line: 0, scope: !4821)
!4828 = !DILocation(line: 0, scope: !4637, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 113, column: 18, scope: !4821)
!4830 = !DILocation(line: 41, column: 13, scope: !4637, inlinedAt: !4829)
!4831 = !DILocation(line: 42, column: 8, scope: !4646, inlinedAt: !4829)
!4832 = !DILocation(line: 42, column: 15, scope: !4646, inlinedAt: !4829)
!4833 = !DILocation(line: 42, column: 10, scope: !4646, inlinedAt: !4829)
!4834 = !DILocation(line: 43, column: 5, scope: !4646, inlinedAt: !4829)
!4835 = !DILocalVariable(name: "__dest", arg: 1, scope: !4836, file: !3447, line: 31, type: !4839)
!4836 = distinct !DISubprogram(name: "memcpy", scope: !3447, file: !3447, line: 31, type: !4837, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4841)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!106, !4839, !4840, !108}
!4839 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!4840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!4841 = !{!4835, !4842, !4843}
!4842 = !DILocalVariable(name: "__src", arg: 2, scope: !4836, file: !3447, line: 31, type: !4840)
!4843 = !DILocalVariable(name: "__len", arg: 3, scope: !4836, file: !3447, line: 31, type: !108)
!4844 = !DILocation(line: 0, scope: !4836, inlinedAt: !4845)
!4845 = distinct !DILocation(line: 113, column: 10, scope: !4821)
!4846 = !DILocation(line: 34, column: 10, scope: !4836, inlinedAt: !4845)
!4847 = !DILocation(line: 113, column: 3, scope: !4821)
!4848 = distinct !DISubprogram(name: "xstrdup", scope: !685, file: !685, line: 119, type: !122, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !4849)
!4849 = !{!4850}
!4850 = !DILocalVariable(name: "string", arg: 1, scope: !4848, file: !685, line: 119, type: !6)
!4851 = !DILocation(line: 0, scope: !4848)
!4852 = !DILocation(line: 121, column: 27, scope: !4848)
!4853 = !DILocation(line: 121, column: 43, scope: !4848)
!4854 = !DILocation(line: 0, scope: !4821, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 121, column: 10, scope: !4848)
!4856 = !DILocation(line: 0, scope: !4637, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 113, column: 18, scope: !4821, inlinedAt: !4855)
!4858 = !DILocation(line: 41, column: 13, scope: !4637, inlinedAt: !4857)
!4859 = !DILocation(line: 42, column: 8, scope: !4646, inlinedAt: !4857)
!4860 = !DILocation(line: 42, column: 15, scope: !4646, inlinedAt: !4857)
!4861 = !DILocation(line: 42, column: 10, scope: !4646, inlinedAt: !4857)
!4862 = !DILocation(line: 43, column: 5, scope: !4646, inlinedAt: !4857)
!4863 = !DILocation(line: 0, scope: !4836, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 113, column: 10, scope: !4821, inlinedAt: !4855)
!4865 = !DILocation(line: 34, column: 10, scope: !4836, inlinedAt: !4864)
!4866 = !DILocation(line: 121, column: 3, scope: !4848)
!4867 = distinct !DISubprogram(name: "xalloc_die", scope: !706, file: !706, line: 32, type: !354, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !4)
!4868 = !DILocation(line: 34, column: 10, scope: !4867)
!4869 = !DILocation(line: 34, column: 33, scope: !4867)
!4870 = !DILocation(line: 34, column: 3, scope: !4867)
!4871 = !DILocation(line: 40, column: 3, scope: !4867)
!4872 = distinct !DISubprogram(name: "rpl_calloc", scope: !709, file: !709, line: 42, type: !4625, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !4873)
!4873 = !{!4874, !4875, !4876, !4877}
!4874 = !DILocalVariable(name: "n", arg: 1, scope: !4872, file: !709, line: 42, type: !108)
!4875 = !DILocalVariable(name: "s", arg: 2, scope: !4872, file: !709, line: 42, type: !108)
!4876 = !DILocalVariable(name: "result", scope: !4872, file: !709, line: 44, type: !106)
!4877 = !DILocalVariable(name: "bytes", scope: !4878, file: !709, line: 56, type: !108)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !709, line: 53, column: 5)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !709, line: 47, column: 7)
!4880 = !DILocation(line: 0, scope: !4872)
!4881 = !DILocation(line: 47, column: 9, scope: !4879)
!4882 = !DILocation(line: 47, column: 19, scope: !4879)
!4883 = !DILocation(line: 47, column: 14, scope: !4879)
!4884 = !DILocation(line: 0, scope: !4878)
!4885 = !DILocation(line: 57, column: 21, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4878, file: !709, line: 57, column: 11)
!4887 = !DILocation(line: 57, column: 11, scope: !4878)
!4888 = !DILocation(line: 59, column: 11, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4886, file: !709, line: 58, column: 9)
!4890 = !DILocation(line: 59, column: 17, scope: !4889)
!4891 = !DILocation(line: 65, column: 12, scope: !4872)
!4892 = !DILocation(line: 72, column: 3, scope: !4872)
!4893 = !DILocation(line: 73, column: 1, scope: !4872)
!4894 = distinct !DISubprogram(name: "rpl_fclose", scope: !712, file: !712, line: 58, type: !4895, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4899)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!38, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !718)
!4899 = !{!4900, !4901, !4902, !4903}
!4900 = !DILocalVariable(name: "fp", arg: 1, scope: !4894, file: !712, line: 58, type: !4897)
!4901 = !DILocalVariable(name: "saved_errno", scope: !4894, file: !712, line: 60, type: !38)
!4902 = !DILocalVariable(name: "fd", scope: !4894, file: !712, line: 61, type: !38)
!4903 = !DILocalVariable(name: "result", scope: !4894, file: !712, line: 62, type: !38)
!4904 = !DILocation(line: 0, scope: !4894)
!4905 = !DILocation(line: 65, column: 8, scope: !4894)
!4906 = !DILocation(line: 66, column: 10, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4894, file: !712, line: 66, column: 7)
!4908 = !DILocation(line: 66, column: 7, scope: !4894)
!4909 = !DILocation(line: 67, column: 12, scope: !4907)
!4910 = !DILocation(line: 67, column: 5, scope: !4907)
!4911 = !DILocation(line: 72, column: 9, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4894, file: !712, line: 72, column: 7)
!4913 = !DILocation(line: 72, column: 23, scope: !4912)
!4914 = !DILocation(line: 72, column: 33, scope: !4912)
!4915 = !DILocation(line: 72, column: 26, scope: !4912)
!4916 = !DILocation(line: 72, column: 59, scope: !4912)
!4917 = !DILocation(line: 73, column: 7, scope: !4912)
!4918 = !DILocation(line: 73, column: 10, scope: !4912)
!4919 = !DILocation(line: 72, column: 7, scope: !4894)
!4920 = !DILocation(line: 100, column: 12, scope: !4894)
!4921 = !DILocation(line: 105, column: 7, scope: !4894)
!4922 = !DILocation(line: 74, column: 19, scope: !4912)
!4923 = !DILocation(line: 105, column: 19, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4894, file: !712, line: 105, column: 7)
!4925 = !DILocation(line: 107, column: 13, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4924, file: !712, line: 106, column: 5)
!4927 = !DILocation(line: 109, column: 5, scope: !4926)
!4928 = !DILocation(line: 112, column: 1, scope: !4894)
!4929 = distinct !DISubprogram(name: "rpl_fflush", scope: !756, file: !756, line: 129, type: !4930, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !4934)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!38, !4932}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !762)
!4934 = !{!4935}
!4935 = !DILocalVariable(name: "stream", arg: 1, scope: !4929, file: !756, line: 129, type: !4932)
!4936 = !DILocation(line: 0, scope: !4929)
!4937 = !DILocation(line: 150, column: 14, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4929, file: !756, line: 150, column: 7)
!4939 = !DILocation(line: 150, column: 22, scope: !4938)
!4940 = !DILocation(line: 150, column: 27, scope: !4938)
!4941 = !DILocation(line: 150, column: 7, scope: !4929)
!4942 = !DILocation(line: 151, column: 12, scope: !4938)
!4943 = !DILocation(line: 151, column: 5, scope: !4938)
!4944 = !DILocalVariable(name: "fp", arg: 1, scope: !4945, file: !756, line: 41, type: !4932)
!4945 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !756, file: !756, line: 41, type: !4946, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !4948)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{null, !4932}
!4948 = !{!4944}
!4949 = !DILocation(line: 0, scope: !4945, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 156, column: 3, scope: !4929)
!4951 = !DILocation(line: 43, column: 11, scope: !4952, inlinedAt: !4950)
!4952 = distinct !DILexicalBlock(scope: !4945, file: !756, line: 43, column: 7)
!4953 = !{!1657, !1481, i64 0}
!4954 = !DILocation(line: 43, column: 18, scope: !4952, inlinedAt: !4950)
!4955 = !DILocation(line: 43, column: 7, scope: !4945, inlinedAt: !4950)
!4956 = !DILocation(line: 45, column: 5, scope: !4952, inlinedAt: !4950)
!4957 = !DILocation(line: 158, column: 10, scope: !4929)
!4958 = !DILocation(line: 158, column: 3, scope: !4929)
!4959 = !DILocation(line: 235, column: 1, scope: !4929)
!4960 = distinct !DISubprogram(name: "rpl_fseeko", scope: !797, file: !797, line: 28, type: !4961, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4966)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!38, !4963, !4965, !38}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !803)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !212, line: 63, baseType: !83)
!4966 = !{!4967, !4968, !4969, !4970}
!4967 = !DILocalVariable(name: "fp", arg: 1, scope: !4960, file: !797, line: 28, type: !4963)
!4968 = !DILocalVariable(name: "offset", arg: 2, scope: !4960, file: !797, line: 28, type: !4965)
!4969 = !DILocalVariable(name: "whence", arg: 3, scope: !4960, file: !797, line: 28, type: !38)
!4970 = !DILocalVariable(name: "pos", scope: !4971, file: !797, line: 117, type: !4965)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !797, line: 113, column: 5)
!4972 = distinct !DILexicalBlock(scope: !4960, file: !797, line: 52, column: 7)
!4973 = !DILocation(line: 0, scope: !4960)
!4974 = !DILocation(line: 52, column: 11, scope: !4972)
!4975 = !{!1657, !1424, i64 16}
!4976 = !DILocation(line: 52, column: 31, scope: !4972)
!4977 = !{!1657, !1424, i64 8}
!4978 = !DILocation(line: 52, column: 24, scope: !4972)
!4979 = !DILocation(line: 53, column: 7, scope: !4972)
!4980 = !DILocation(line: 53, column: 14, scope: !4972)
!4981 = !DILocation(line: 53, column: 35, scope: !4972)
!4982 = !{!1657, !1424, i64 32}
!4983 = !DILocation(line: 53, column: 28, scope: !4972)
!4984 = !DILocation(line: 54, column: 7, scope: !4972)
!4985 = !DILocation(line: 54, column: 14, scope: !4972)
!4986 = !{!1657, !1424, i64 72}
!4987 = !DILocation(line: 54, column: 28, scope: !4972)
!4988 = !DILocation(line: 52, column: 7, scope: !4960)
!4989 = !DILocation(line: 117, column: 26, scope: !4971)
!4990 = !DILocation(line: 117, column: 19, scope: !4971)
!4991 = !DILocation(line: 0, scope: !4971)
!4992 = !DILocation(line: 118, column: 15, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4971, file: !797, line: 118, column: 11)
!4994 = !DILocation(line: 118, column: 11, scope: !4971)
!4995 = !DILocation(line: 129, column: 11, scope: !4971)
!4996 = !DILocation(line: 129, column: 18, scope: !4971)
!4997 = !DILocation(line: 130, column: 11, scope: !4971)
!4998 = !DILocation(line: 130, column: 19, scope: !4971)
!4999 = !{!1657, !1556, i64 144}
!5000 = !DILocation(line: 161, column: 7, scope: !4971)
!5001 = !DILocation(line: 163, column: 10, scope: !4960)
!5002 = !DILocation(line: 163, column: 3, scope: !4960)
!5003 = !DILocation(line: 164, column: 1, scope: !4960)
!5004 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !838, file: !838, line: 86, type: !5005, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !5011)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!108, !5007, !6, !108, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3190, line: 6, baseType: !5010)
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !321, line: 21, baseType: !844)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5018}
!5012 = !DILocalVariable(name: "pwc", arg: 1, scope: !5004, file: !838, line: 86, type: !5007)
!5013 = !DILocalVariable(name: "s", arg: 2, scope: !5004, file: !838, line: 86, type: !6)
!5014 = !DILocalVariable(name: "n", arg: 3, scope: !5004, file: !838, line: 86, type: !108)
!5015 = !DILocalVariable(name: "ps", arg: 4, scope: !5004, file: !838, line: 86, type: !5008)
!5016 = !DILocalVariable(name: "ret", scope: !5004, file: !838, line: 88, type: !108)
!5017 = !DILocalVariable(name: "wc", scope: !5004, file: !838, line: 89, type: !3194)
!5018 = !DILocalVariable(name: "uc", scope: !5019, file: !838, line: 156, type: !569)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !838, line: 155, column: 5)
!5020 = distinct !DILexicalBlock(scope: !5004, file: !838, line: 154, column: 7)
!5021 = !DILocation(line: 0, scope: !5004)
!5022 = !DILocation(line: 89, column: 3, scope: !5004)
!5023 = !DILocation(line: 105, column: 9, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5004, file: !838, line: 105, column: 7)
!5025 = !DILocation(line: 105, column: 7, scope: !5004)
!5026 = !DILocation(line: 145, column: 9, scope: !5004)
!5027 = !DILocation(line: 154, column: 19, scope: !5020)
!5028 = !DILocation(line: 154, column: 31, scope: !5020)
!5029 = !DILocation(line: 154, column: 26, scope: !5020)
!5030 = !DILocation(line: 154, column: 41, scope: !5020)
!5031 = !DILocation(line: 154, column: 7, scope: !5004)
!5032 = !DILocation(line: 156, column: 26, scope: !5019)
!5033 = !DILocation(line: 0, scope: !5019)
!5034 = !DILocation(line: 157, column: 14, scope: !5019)
!5035 = !DILocation(line: 157, column: 12, scope: !5019)
!5036 = !DILocation(line: 163, column: 1, scope: !5004)
!5037 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !857, file: !857, line: 49, type: !5038, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !5043)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!14, !5040}
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5042)
!5042 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !402, line: 146, baseType: !876)
!5043 = !{!5044, !5045, !5046}
!5044 = !DILocalVariable(name: "ut", arg: 1, scope: !5037, file: !857, line: 49, type: !5040)
!5045 = !DILocalVariable(name: "p", scope: !5037, file: !857, line: 51, type: !14)
!5046 = !DILocalVariable(name: "trimmed_name", scope: !5037, file: !857, line: 51, type: !14)
!5047 = !DILocation(line: 0, scope: !5037)
!5048 = !DILocation(line: 53, column: 18, scope: !5037)
!5049 = !DILocation(line: 54, column: 26, scope: !5037)
!5050 = !DILocalVariable(name: "__dest", arg: 1, scope: !5051, file: !3447, line: 103, type: !5054)
!5051 = distinct !DISubprogram(name: "strncpy", scope: !3447, file: !3447, line: 103, type: !5052, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !5056)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!14, !5054, !5055, !108}
!5054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!5055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!5056 = !{!5050, !5057, !5058}
!5057 = !DILocalVariable(name: "__src", arg: 2, scope: !5051, file: !3447, line: 103, type: !5055)
!5058 = !DILocalVariable(name: "__len", arg: 3, scope: !5051, file: !3447, line: 103, type: !108)
!5059 = !DILocation(line: 0, scope: !5051, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 54, column: 3, scope: !5037)
!5061 = !DILocation(line: 106, column: 10, scope: !5051, inlinedAt: !5060)
!5062 = !DILocation(line: 58, column: 3, scope: !5037)
!5063 = !DILocation(line: 58, column: 39, scope: !5037)
!5064 = !DILocation(line: 59, column: 27, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5037, file: !857, line: 59, column: 3)
!5066 = !DILocation(line: 60, column: 21, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5065, file: !857, line: 59, column: 3)
!5068 = !DILocation(line: 60, column: 25, scope: !5067)
!5069 = !DILocation(line: 59, column: 25, scope: !5065)
!5070 = !DILocation(line: 59, column: 3, scope: !5065)
!5071 = !DILocation(line: 60, column: 28, scope: !5067)
!5072 = !DILocation(line: 60, column: 34, scope: !5067)
!5073 = !DILocation(line: 61, column: 13, scope: !5067)
!5074 = distinct !{!5074, !5070, !5075}
!5075 = !DILocation(line: 62, column: 5, scope: !5065)
!5076 = !DILocation(line: 63, column: 3, scope: !5037)
!5077 = distinct !DISubprogram(name: "read_utmp", scope: !857, file: !857, line: 92, type: !5078, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !5082)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!38, !6, !691, !5080, !38}
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090}
!5083 = !DILocalVariable(name: "file", arg: 1, scope: !5077, file: !857, line: 92, type: !6)
!5084 = !DILocalVariable(name: "n_entries", arg: 2, scope: !5077, file: !857, line: 92, type: !691)
!5085 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !5077, file: !857, line: 92, type: !5080)
!5086 = !DILocalVariable(name: "options", arg: 4, scope: !5077, file: !857, line: 93, type: !38)
!5087 = !DILocalVariable(name: "n_read", scope: !5077, file: !857, line: 95, type: !108)
!5088 = !DILocalVariable(name: "n_alloc", scope: !5077, file: !857, line: 96, type: !108)
!5089 = !DILocalVariable(name: "utmp", scope: !5077, file: !857, line: 97, type: !5081)
!5090 = !DILocalVariable(name: "u", scope: !5077, file: !857, line: 98, type: !5081)
!5091 = !DILocation(line: 0, scope: !5077)
!5092 = !DILocation(line: 104, column: 3, scope: !5077)
!5093 = !DILocation(line: 106, column: 3, scope: !5077)
!5094 = !DILocation(line: 108, column: 15, scope: !5077)
!5095 = !DILocation(line: 108, column: 32, scope: !5077)
!5096 = !DILocation(line: 108, column: 3, scope: !5077)
!5097 = !DILocation(line: 0, scope: !5098, inlinedAt: !5106)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !857, line: 72, column: 7)
!5099 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !857, file: !857, line: 69, type: !5100, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !5102)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!131, !5040, !38}
!5102 = !{!5103, !5104, !5105}
!5103 = !DILocalVariable(name: "u", arg: 1, scope: !5099, file: !857, line: 69, type: !5040)
!5104 = !DILocalVariable(name: "options", arg: 2, scope: !5099, file: !857, line: 69, type: !38)
!5105 = !DILocalVariable(name: "user_proc", scope: !5099, file: !857, line: 71, type: !131)
!5106 = distinct !DILocation(line: 109, column: 9, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5077, file: !857, line: 109, column: 9)
!5108 = !DILocation(line: 0, scope: !5109, inlinedAt: !5106)
!5109 = distinct !DILexicalBlock(scope: !5099, file: !857, line: 74, column: 7)
!5110 = !DILocation(line: 0, scope: !5099, inlinedAt: !5106)
!5111 = !DILocation(line: 71, column: 20, scope: !5099, inlinedAt: !5106)
!5112 = !DILocation(line: 72, column: 42, scope: !5098, inlinedAt: !5106)
!5113 = !DILocation(line: 75, column: 7, scope: !5109, inlinedAt: !5106)
!5114 = !DILocation(line: 76, column: 14, scope: !5109, inlinedAt: !5106)
!5115 = !{!1592, !1481, i64 4}
!5116 = !DILocation(line: 76, column: 12, scope: !5109, inlinedAt: !5106)
!5117 = !DILocation(line: 77, column: 7, scope: !5109, inlinedAt: !5106)
!5118 = !DILocation(line: 77, column: 11, scope: !5109, inlinedAt: !5106)
!5119 = !DILocation(line: 77, column: 32, scope: !5109, inlinedAt: !5106)
!5120 = !DILocation(line: 77, column: 36, scope: !5109, inlinedAt: !5106)
!5121 = !DILocation(line: 77, column: 39, scope: !5109, inlinedAt: !5106)
!5122 = !DILocation(line: 77, column: 45, scope: !5109, inlinedAt: !5106)
!5123 = !DILocation(line: 74, column: 7, scope: !5099, inlinedAt: !5106)
!5124 = !DILocation(line: 111, column: 20, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !857, line: 111, column: 13)
!5126 = distinct !DILexicalBlock(scope: !5107, file: !857, line: 110, column: 7)
!5127 = !DILocation(line: 111, column: 13, scope: !5126)
!5128 = !DILocation(line: 112, column: 30, scope: !5125)
!5129 = !DILocation(line: 0, scope: !860, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 112, column: 18, scope: !5125)
!5131 = !DILocation(line: 178, column: 9, scope: !5132, inlinedAt: !5130)
!5132 = distinct !DILexicalBlock(scope: !860, file: !288, line: 178, column: 7)
!5133 = !DILocation(line: 178, column: 7, scope: !860, inlinedAt: !5130)
!5134 = !DILocation(line: 180, column: 13, scope: !5135, inlinedAt: !5130)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !288, line: 180, column: 11)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !288, line: 179, column: 5)
!5137 = !DILocation(line: 180, column: 11, scope: !5136, inlinedAt: !5130)
!5138 = !DILocation(line: 191, column: 11, scope: !5139, inlinedAt: !5130)
!5139 = distinct !DILexicalBlock(scope: !5136, file: !288, line: 191, column: 11)
!5140 = !DILocation(line: 191, column: 11, scope: !5136, inlinedAt: !5130)
!5141 = !DILocation(line: 192, column: 9, scope: !5139, inlinedAt: !5130)
!5142 = !DILocation(line: 201, column: 11, scope: !5143, inlinedAt: !5130)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !288, line: 200, column: 11)
!5144 = distinct !DILexicalBlock(scope: !5132, file: !288, line: 195, column: 5)
!5145 = !DILocation(line: 200, column: 11, scope: !5144, inlinedAt: !5130)
!5146 = !DILocation(line: 202, column: 9, scope: !5143, inlinedAt: !5130)
!5147 = !DILocation(line: 203, column: 14, scope: !5144, inlinedAt: !5130)
!5148 = !DILocation(line: 203, column: 18, scope: !5144, inlinedAt: !5130)
!5149 = !DILocation(line: 203, column: 9, scope: !5144, inlinedAt: !5130)
!5150 = !DILocation(line: 207, column: 25, scope: !860, inlinedAt: !5130)
!5151 = !DILocation(line: 207, column: 10, scope: !860, inlinedAt: !5130)
!5152 = !DILocation(line: 112, column: 18, scope: !5125)
!5153 = !DILocation(line: 112, column: 11, scope: !5125)
!5154 = !DILocation(line: 114, column: 20, scope: !5126)
!5155 = !DILocation(line: 114, column: 9, scope: !5126)
!5156 = !DILocation(line: 114, column: 26, scope: !5126)
!5157 = !{i64 0, i64 2, !3440, i64 4, i64 4, !1480, i64 8, i64 32, !1589, i64 40, i64 4, !1589, i64 44, i64 32, !1589, i64 76, i64 256, !1589, i64 332, i64 2, !3440, i64 334, i64 2, !3440, i64 336, i64 4, !1480, i64 340, i64 4, !1480, i64 344, i64 4, !1480, i64 348, i64 16, !1589, i64 364, i64 20, !1589}
!5158 = !DILocation(line: 115, column: 7, scope: !5126)
!5159 = distinct !{!5159, !5096, !5160}
!5160 = !DILocation(line: 115, column: 7, scope: !5077)
!5161 = !DILocation(line: 117, column: 3, scope: !5077)
!5162 = !DILocation(line: 119, column: 14, scope: !5077)
!5163 = !DILocation(line: 120, column: 13, scope: !5077)
!5164 = !DILocation(line: 122, column: 3, scope: !5077)
!5165 = distinct !DISubprogram(name: "tzalloc", scope: !903, file: !903, line: 95, type: !5166, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!941, !6}
!5168 = !{!5169, !5170, !5171, !5172}
!5169 = !DILocalVariable(name: "name", arg: 1, scope: !5165, file: !903, line: 95, type: !6)
!5170 = !DILocalVariable(name: "name_size", scope: !5165, file: !903, line: 97, type: !108)
!5171 = !DILocalVariable(name: "abbr_size", scope: !5165, file: !903, line: 98, type: !108)
!5172 = !DILocalVariable(name: "tz", scope: !5165, file: !903, line: 99, type: !941)
!5173 = !DILocation(line: 0, scope: !5165)
!5174 = !DILocation(line: 97, column: 22, scope: !5165)
!5175 = !DILocation(line: 97, column: 29, scope: !5165)
!5176 = !DILocation(line: 97, column: 43, scope: !5165)
!5177 = !DILocation(line: 98, column: 32, scope: !5165)
!5178 = !DILocation(line: 99, column: 27, scope: !5165)
!5179 = !DILocation(line: 99, column: 19, scope: !5165)
!5180 = !DILocation(line: 100, column: 7, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5165, file: !903, line: 100, column: 7)
!5182 = !DILocation(line: 100, column: 7, scope: !5165)
!5183 = !DILocation(line: 102, column: 11, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5181, file: !903, line: 101, column: 5)
!5185 = !DILocation(line: 102, column: 16, scope: !5184)
!5186 = !DILocation(line: 106, column: 23, scope: !5184)
!5187 = !DILocation(line: 106, column: 11, scope: !5184)
!5188 = !DILocation(line: 106, column: 21, scope: !5184)
!5189 = !DILocation(line: 107, column: 11, scope: !5184)
!5190 = !DILocation(line: 107, column: 20, scope: !5184)
!5191 = !DILocation(line: 108, column: 11, scope: !5184)
!5192 = !DILocalVariable(name: "abbrs", arg: 1, scope: !5193, file: !903, line: 86, type: !14)
!5193 = distinct !DISubprogram(name: "extend_abbrs", scope: !903, file: !903, line: 86, type: !5194, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5196)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !14, !6, !108}
!5196 = !{!5192, !5197, !5198}
!5197 = !DILocalVariable(name: "abbr", arg: 2, scope: !5193, file: !903, line: 86, type: !6)
!5198 = !DILocalVariable(name: "abbr_size", arg: 3, scope: !5193, file: !903, line: 86, type: !108)
!5199 = !DILocation(line: 0, scope: !5193, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 109, column: 9, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5184, file: !903, line: 108, column: 11)
!5202 = !DILocalVariable(name: "__dest", arg: 1, scope: !5203, file: !3447, line: 31, type: !4839)
!5203 = distinct !DISubprogram(name: "memcpy", scope: !3447, file: !3447, line: 31, type: !4837, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5204)
!5204 = !{!5202, !5205, !5206}
!5205 = !DILocalVariable(name: "__src", arg: 2, scope: !5203, file: !3447, line: 31, type: !4840)
!5206 = !DILocalVariable(name: "__len", arg: 3, scope: !5203, file: !3447, line: 31, type: !108)
!5207 = !DILocation(line: 0, scope: !5203, inlinedAt: !5208)
!5208 = distinct !DILocation(line: 88, column: 3, scope: !5193, inlinedAt: !5200)
!5209 = !DILocation(line: 34, column: 10, scope: !5203, inlinedAt: !5208)
!5210 = !DILocation(line: 89, column: 3, scope: !5193, inlinedAt: !5200)
!5211 = !DILocation(line: 89, column: 20, scope: !5193, inlinedAt: !5200)
!5212 = !DILocation(line: 109, column: 9, scope: !5201)
!5213 = !DILocation(line: 111, column: 3, scope: !5165)
!5214 = distinct !DISubprogram(name: "tzfree", scope: !903, file: !903, line: 196, type: !5215, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5217)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{null, !941}
!5217 = !{!5218, !5219}
!5218 = !DILocalVariable(name: "tz", arg: 1, scope: !5214, file: !903, line: 196, type: !941)
!5219 = !DILocalVariable(name: "next", scope: !5220, file: !903, line: 201, type: !941)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !903, line: 200, column: 7)
!5221 = distinct !DILexicalBlock(scope: !5214, file: !903, line: 198, column: 7)
!5222 = !DILocation(line: 0, scope: !5214)
!5223 = !DILocation(line: 198, column: 7, scope: !5214)
!5224 = !DILocation(line: 201, column: 31, scope: !5220)
!5225 = !DILocation(line: 0, scope: !5220)
!5226 = !DILocation(line: 202, column: 15, scope: !5220)
!5227 = !DILocation(line: 202, column: 9, scope: !5220)
!5228 = !DILocation(line: 199, column: 5, scope: !5221)
!5229 = distinct !{!5229, !5228, !5230}
!5230 = !DILocation(line: 204, column: 7, scope: !5221)
!5231 = !DILocation(line: 205, column: 1, scope: !5214)
!5232 = distinct !DISubprogram(name: "localtime_rz", scope: !903, file: !903, line: 287, type: !5233, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5237)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!912, !941, !5235, !912}
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!5237 = !{!5238, !5239, !5240, !5241, !5244}
!5238 = !DILocalVariable(name: "tz", arg: 1, scope: !5232, file: !903, line: 287, type: !941)
!5239 = !DILocalVariable(name: "t", arg: 2, scope: !5232, file: !903, line: 287, type: !5235)
!5240 = !DILocalVariable(name: "tm", arg: 3, scope: !5232, file: !903, line: 287, type: !912)
!5241 = !DILocalVariable(name: "old_tz", scope: !5242, file: !903, line: 308, type: !941)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !903, line: 307, column: 5)
!5243 = distinct !DILexicalBlock(scope: !5232, file: !903, line: 304, column: 7)
!5244 = !DILocalVariable(name: "abbr_saved", scope: !5245, file: !903, line: 311, type: !131)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !903, line: 310, column: 9)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !903, line: 309, column: 11)
!5247 = !DILocation(line: 0, scope: !5232)
!5248 = !DILocation(line: 304, column: 8, scope: !5243)
!5249 = !DILocation(line: 304, column: 7, scope: !5232)
!5250 = !DILocation(line: 305, column: 12, scope: !5243)
!5251 = !DILocation(line: 305, column: 5, scope: !5243)
!5252 = !DILocation(line: 308, column: 27, scope: !5242)
!5253 = !DILocation(line: 0, scope: !5242)
!5254 = !DILocation(line: 309, column: 11, scope: !5246)
!5255 = !DILocation(line: 309, column: 11, scope: !5242)
!5256 = !DILocation(line: 311, column: 29, scope: !5245)
!5257 = !DILocation(line: 311, column: 49, scope: !5245)
!5258 = !DILocation(line: 311, column: 52, scope: !5245)
!5259 = !DILocation(line: 0, scope: !5245)
!5260 = !DILocalVariable(name: "tz", arg: 1, scope: !5261, file: !903, line: 269, type: !941)
!5261 = distinct !DISubprogram(name: "revert_tz", scope: !903, file: !903, line: 269, type: !5262, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!131, !941}
!5264 = !{!5260, !5265, !5268}
!5265 = !DILocalVariable(name: "saved_errno", scope: !5266, file: !903, line: 275, type: !38)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !903, line: 274, column: 5)
!5267 = distinct !DILexicalBlock(scope: !5261, file: !903, line: 271, column: 7)
!5268 = !DILocalVariable(name: "ok", scope: !5266, file: !903, line: 276, type: !131)
!5269 = !DILocation(line: 0, scope: !5261, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 312, column: 15, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5245, file: !903, line: 312, column: 15)
!5272 = !DILocation(line: 271, column: 10, scope: !5267, inlinedAt: !5270)
!5273 = !DILocation(line: 271, column: 7, scope: !5261, inlinedAt: !5270)
!5274 = !DILocation(line: 275, column: 25, scope: !5266, inlinedAt: !5270)
!5275 = !DILocation(line: 0, scope: !5266, inlinedAt: !5270)
!5276 = !DILocalVariable(name: "tz", arg: 1, scope: !5277, file: !903, line: 229, type: !941)
!5277 = distinct !DISubprogram(name: "change_env", scope: !903, file: !903, line: 229, type: !5262, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5278)
!5278 = !{!5276}
!5279 = !DILocation(line: 0, scope: !5277, inlinedAt: !5280)
!5280 = distinct !DILocation(line: 276, column: 17, scope: !5266, inlinedAt: !5270)
!5281 = !DILocation(line: 231, column: 22, scope: !5282, inlinedAt: !5280)
!5282 = distinct !DILexicalBlock(scope: !5277, file: !903, line: 231, column: 7)
!5283 = !DILocation(line: 231, column: 18, scope: !5282, inlinedAt: !5280)
!5284 = !DILocalVariable(name: "tz", arg: 1, scope: !5285, file: !903, line: 220, type: !6)
!5285 = distinct !DISubprogram(name: "setenv_TZ", scope: !903, file: !903, line: 220, type: !869, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5286)
!5286 = !{!5284}
!5287 = !DILocation(line: 0, scope: !5285, inlinedAt: !5288)
!5288 = distinct !DILocation(line: 231, column: 7, scope: !5282, inlinedAt: !5280)
!5289 = !DILocation(line: 222, column: 10, scope: !5285, inlinedAt: !5288)
!5290 = !DILocation(line: 222, column: 15, scope: !5285, inlinedAt: !5288)
!5291 = !DILocation(line: 222, column: 38, scope: !5285, inlinedAt: !5288)
!5292 = !DILocation(line: 231, column: 52, scope: !5282, inlinedAt: !5280)
!5293 = !DILocation(line: 231, column: 7, scope: !5277, inlinedAt: !5280)
!5294 = !DILocation(line: 233, column: 3, scope: !5277, inlinedAt: !5280)
!5295 = !DILocation(line: 277, column: 11, scope: !5266, inlinedAt: !5270)
!5296 = !DILocation(line: 278, column: 23, scope: !5297, inlinedAt: !5270)
!5297 = distinct !DILexicalBlock(scope: !5266, file: !903, line: 277, column: 11)
!5298 = !DILocation(line: 278, column: 9, scope: !5297, inlinedAt: !5270)
!5299 = !DILocation(line: 0, scope: !5214, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 279, column: 7, scope: !5266, inlinedAt: !5270)
!5301 = !DILocation(line: 198, column: 7, scope: !5214, inlinedAt: !5300)
!5302 = !DILocation(line: 201, column: 31, scope: !5220, inlinedAt: !5300)
!5303 = !DILocation(line: 0, scope: !5220, inlinedAt: !5300)
!5304 = !DILocation(line: 202, column: 15, scope: !5220, inlinedAt: !5300)
!5305 = !DILocation(line: 202, column: 9, scope: !5220, inlinedAt: !5300)
!5306 = !DILocation(line: 199, column: 5, scope: !5221, inlinedAt: !5300)
!5307 = distinct !{!5307, !5306, !5308}
!5308 = !DILocation(line: 204, column: 7, scope: !5221, inlinedAt: !5300)
!5309 = !DILocation(line: 280, column: 13, scope: !5266, inlinedAt: !5270)
!5310 = !DILocation(line: 0, scope: !5267, inlinedAt: !5270)
!5311 = !DILocation(line: 312, column: 34, scope: !5271)
!5312 = !DILocation(line: 0, scope: !5243)
!5313 = !DILocation(line: 317, column: 1, scope: !5232)
!5314 = distinct !DISubprogram(name: "set_tz", scope: !903, file: !903, line: 242, type: !5315, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!941, !941}
!5317 = !{!5318, !5319, !5320, !5323}
!5318 = !DILocalVariable(name: "tz", arg: 1, scope: !5314, file: !903, line: 242, type: !941)
!5319 = !DILocalVariable(name: "env_tz", scope: !5314, file: !903, line: 244, type: !14)
!5320 = !DILocalVariable(name: "old_tz", scope: !5321, file: !903, line: 251, type: !941)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !903, line: 250, column: 5)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !903, line: 245, column: 7)
!5323 = !DILocalVariable(name: "saved_errno", scope: !5324, file: !903, line: 256, type: !38)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !903, line: 255, column: 9)
!5325 = distinct !DILexicalBlock(scope: !5321, file: !903, line: 254, column: 11)
!5326 = !DILocation(line: 0, scope: !5314)
!5327 = !DILocation(line: 214, column: 10, scope: !5328, inlinedAt: !5331)
!5328 = distinct !DISubprogram(name: "getenv_TZ", scope: !903, file: !903, line: 212, type: !5329, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !4)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!14}
!5331 = distinct !DILocation(line: 244, column: 18, scope: !5314)
!5332 = !DILocation(line: 245, column: 7, scope: !5322)
!5333 = !DILocation(line: 0, scope: !5322)
!5334 = !DILocation(line: 245, column: 7, scope: !5314)
!5335 = !DILocation(line: 246, column: 23, scope: !5322)
!5336 = !DILocation(line: 246, column: 34, scope: !5322)
!5337 = !DILocation(line: 246, column: 26, scope: !5322)
!5338 = !DILocation(line: 246, column: 53, scope: !5322)
!5339 = !DILocation(line: 0, scope: !5165, inlinedAt: !5340)
!5340 = distinct !DILocation(line: 251, column: 27, scope: !5321)
!5341 = !DILocation(line: 97, column: 29, scope: !5165, inlinedAt: !5340)
!5342 = !DILocation(line: 97, column: 43, scope: !5165, inlinedAt: !5340)
!5343 = !DILocation(line: 98, column: 32, scope: !5165, inlinedAt: !5340)
!5344 = !DILocation(line: 99, column: 27, scope: !5165, inlinedAt: !5340)
!5345 = !DILocation(line: 99, column: 19, scope: !5165, inlinedAt: !5340)
!5346 = !DILocation(line: 100, column: 7, scope: !5181, inlinedAt: !5340)
!5347 = !DILocation(line: 100, column: 7, scope: !5165, inlinedAt: !5340)
!5348 = !DILocation(line: 102, column: 11, scope: !5184, inlinedAt: !5340)
!5349 = !DILocation(line: 102, column: 16, scope: !5184, inlinedAt: !5340)
!5350 = !DILocation(line: 106, column: 23, scope: !5184, inlinedAt: !5340)
!5351 = !DILocation(line: 106, column: 11, scope: !5184, inlinedAt: !5340)
!5352 = !DILocation(line: 106, column: 21, scope: !5184, inlinedAt: !5340)
!5353 = !DILocation(line: 107, column: 11, scope: !5184, inlinedAt: !5340)
!5354 = !DILocation(line: 107, column: 20, scope: !5184, inlinedAt: !5340)
!5355 = !DILocation(line: 108, column: 11, scope: !5184, inlinedAt: !5340)
!5356 = !DILocation(line: 0, scope: !5193, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 109, column: 9, scope: !5201, inlinedAt: !5340)
!5358 = !DILocation(line: 0, scope: !5203, inlinedAt: !5359)
!5359 = distinct !DILocation(line: 88, column: 3, scope: !5193, inlinedAt: !5357)
!5360 = !DILocation(line: 34, column: 10, scope: !5203, inlinedAt: !5359)
!5361 = !DILocation(line: 89, column: 3, scope: !5193, inlinedAt: !5357)
!5362 = !DILocation(line: 89, column: 20, scope: !5193, inlinedAt: !5357)
!5363 = !DILocation(line: 231, column: 22, scope: !5282, inlinedAt: !5364)
!5364 = distinct !DILocation(line: 254, column: 13, scope: !5325)
!5365 = !DILocation(line: 109, column: 9, scope: !5201, inlinedAt: !5340)
!5366 = !DILocation(line: 0, scope: !5277, inlinedAt: !5364)
!5367 = !DILocation(line: 231, column: 18, scope: !5282, inlinedAt: !5364)
!5368 = !DILocation(line: 0, scope: !5285, inlinedAt: !5369)
!5369 = distinct !DILocation(line: 231, column: 7, scope: !5282, inlinedAt: !5364)
!5370 = !DILocation(line: 222, column: 10, scope: !5285, inlinedAt: !5369)
!5371 = !DILocation(line: 222, column: 15, scope: !5285, inlinedAt: !5369)
!5372 = !DILocation(line: 222, column: 38, scope: !5285, inlinedAt: !5369)
!5373 = !DILocation(line: 231, column: 52, scope: !5282, inlinedAt: !5364)
!5374 = !DILocation(line: 231, column: 7, scope: !5277, inlinedAt: !5364)
!5375 = !DILocation(line: 233, column: 3, scope: !5277, inlinedAt: !5364)
!5376 = !DILocation(line: 254, column: 11, scope: !5321)
!5377 = !DILocation(line: 256, column: 29, scope: !5324)
!5378 = !DILocation(line: 0, scope: !5324)
!5379 = !DILocation(line: 0, scope: !5214, inlinedAt: !5380)
!5380 = distinct !DILocation(line: 257, column: 11, scope: !5324)
!5381 = !DILocation(line: 198, column: 7, scope: !5214, inlinedAt: !5380)
!5382 = !DILocation(line: 201, column: 31, scope: !5220, inlinedAt: !5380)
!5383 = !DILocation(line: 0, scope: !5220, inlinedAt: !5380)
!5384 = !DILocation(line: 202, column: 15, scope: !5220, inlinedAt: !5380)
!5385 = !DILocation(line: 202, column: 9, scope: !5220, inlinedAt: !5380)
!5386 = !DILocation(line: 199, column: 5, scope: !5221, inlinedAt: !5380)
!5387 = distinct !{!5387, !5386, !5388}
!5388 = !DILocation(line: 204, column: 7, scope: !5221, inlinedAt: !5380)
!5389 = !DILocation(line: 258, column: 17, scope: !5324)
!5390 = !DILocation(line: 263, column: 1, scope: !5314)
!5391 = distinct !DISubprogram(name: "save_abbr", scope: !903, file: !903, line: 119, type: !5392, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5394)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!131, !941, !912}
!5394 = !{!5395, !5396, !5397, !5398, !5399, !5405}
!5395 = !DILocalVariable(name: "tz", arg: 1, scope: !5391, file: !903, line: 119, type: !941)
!5396 = !DILocalVariable(name: "tm", arg: 2, scope: !5391, file: !903, line: 119, type: !912)
!5397 = !DILocalVariable(name: "zone", scope: !5391, file: !903, line: 122, type: !6)
!5398 = !DILocalVariable(name: "zone_copy", scope: !5391, file: !903, line: 123, type: !14)
!5399 = !DILocalVariable(name: "zone_size", scope: !5400, file: !903, line: 153, type: !108)
!5400 = distinct !DILexicalBlock(scope: !5401, file: !903, line: 152, column: 13)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !903, line: 151, column: 15)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !903, line: 150, column: 9)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !903, line: 146, column: 5)
!5404 = distinct !DILexicalBlock(scope: !5391, file: !903, line: 145, column: 7)
!5405 = !DILocalVariable(name: "zone_used", scope: !5400, file: !903, line: 154, type: !108)
!5406 = !DILocation(line: 0, scope: !5391)
!5407 = !DILocation(line: 130, column: 14, scope: !5391)
!5408 = !DILocation(line: 142, column: 8, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5391, file: !903, line: 142, column: 7)
!5410 = !DILocation(line: 142, column: 13, scope: !5409)
!5411 = !DILocation(line: 142, column: 17, scope: !5409)
!5412 = !DILocation(line: 142, column: 29, scope: !5409)
!5413 = !DILocation(line: 142, column: 37, scope: !5409)
!5414 = !DILocation(line: 142, column: 60, scope: !5409)
!5415 = !DILocation(line: 142, column: 47, scope: !5409)
!5416 = !DILocation(line: 142, column: 45, scope: !5409)
!5417 = !DILocation(line: 142, column: 7, scope: !5391)
!5418 = !DILocation(line: 145, column: 7, scope: !5404)
!5419 = !DILocation(line: 145, column: 7, scope: !5391)
!5420 = !DILocation(line: 147, column: 19, scope: !5403)
!5421 = !DILocation(line: 149, column: 14, scope: !5403)
!5422 = !DILocation(line: 149, column: 39, scope: !5403)
!5423 = !DILocation(line: 149, column: 7, scope: !5403)
!5424 = !DILocation(line: 151, column: 18, scope: !5401)
!5425 = !DILocation(line: 151, column: 29, scope: !5401)
!5426 = !DILocation(line: 151, column: 46, scope: !5401)
!5427 = !DILocation(line: 151, column: 43, scope: !5401)
!5428 = !DILocation(line: 151, column: 56, scope: !5401)
!5429 = !DILocation(line: 151, column: 63, scope: !5401)
!5430 = !DILocation(line: 151, column: 59, scope: !5401)
!5431 = !DILocation(line: 151, column: 15, scope: !5402)
!5432 = !DILocation(line: 153, column: 34, scope: !5400)
!5433 = !DILocation(line: 153, column: 48, scope: !5400)
!5434 = !DILocation(line: 0, scope: !5400)
!5435 = !DILocation(line: 154, column: 44, scope: !5400)
!5436 = !DILocation(line: 155, column: 28, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5400, file: !903, line: 155, column: 19)
!5438 = !DILocation(line: 155, column: 40, scope: !5437)
!5439 = !DILocation(line: 155, column: 19, scope: !5400)
!5440 = !DILocation(line: 157, column: 19, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !903, line: 156, column: 17)
!5442 = !DILocation(line: 157, column: 25, scope: !5441)
!5443 = !DILocation(line: 158, column: 19, scope: !5441)
!5444 = !DILocation(line: 160, column: 29, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5400, file: !903, line: 160, column: 19)
!5446 = !DILocation(line: 160, column: 41, scope: !5445)
!5447 = !DILocation(line: 160, column: 19, scope: !5400)
!5448 = !DILocation(line: 0, scope: !5193, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 161, column: 17, scope: !5445)
!5450 = !DILocation(line: 0, scope: !5203, inlinedAt: !5451)
!5451 = distinct !DILocation(line: 88, column: 3, scope: !5193, inlinedAt: !5449)
!5452 = !DILocation(line: 34, column: 10, scope: !5203, inlinedAt: !5451)
!5453 = !DILocation(line: 89, column: 3, scope: !5193, inlinedAt: !5449)
!5454 = !DILocation(line: 89, column: 20, scope: !5193, inlinedAt: !5449)
!5455 = !DILocation(line: 161, column: 17, scope: !5445)
!5456 = !DILocation(line: 0, scope: !5165, inlinedAt: !5457)
!5457 = distinct !DILocation(line: 164, column: 35, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5445, file: !903, line: 163, column: 17)
!5459 = !DILocation(line: 98, column: 32, scope: !5165, inlinedAt: !5457)
!5460 = !DILocation(line: 99, column: 27, scope: !5165, inlinedAt: !5457)
!5461 = !DILocation(line: 99, column: 19, scope: !5165, inlinedAt: !5457)
!5462 = !DILocation(line: 100, column: 7, scope: !5181, inlinedAt: !5457)
!5463 = !DILocation(line: 100, column: 7, scope: !5165, inlinedAt: !5457)
!5464 = !DILocation(line: 102, column: 11, scope: !5184, inlinedAt: !5457)
!5465 = !DILocation(line: 102, column: 16, scope: !5184, inlinedAt: !5457)
!5466 = !DILocation(line: 106, column: 11, scope: !5184, inlinedAt: !5457)
!5467 = !DILocation(line: 106, column: 21, scope: !5184, inlinedAt: !5457)
!5468 = !DILocation(line: 107, column: 11, scope: !5184, inlinedAt: !5457)
!5469 = !DILocation(line: 107, column: 20, scope: !5184, inlinedAt: !5457)
!5470 = !DILocation(line: 0, scope: !5193, inlinedAt: !5471)
!5471 = distinct !DILocation(line: 109, column: 9, scope: !5201, inlinedAt: !5457)
!5472 = !DILocation(line: 0, scope: !5203, inlinedAt: !5473)
!5473 = distinct !DILocation(line: 88, column: 3, scope: !5193, inlinedAt: !5471)
!5474 = !DILocation(line: 34, column: 10, scope: !5203, inlinedAt: !5473)
!5475 = !DILocation(line: 89, column: 3, scope: !5193, inlinedAt: !5471)
!5476 = !DILocation(line: 89, column: 20, scope: !5193, inlinedAt: !5471)
!5477 = !DILocation(line: 164, column: 33, scope: !5458)
!5478 = !DILocation(line: 167, column: 33, scope: !5458)
!5479 = !DILocation(line: 165, column: 23, scope: !5458)
!5480 = !DILocation(line: 173, column: 24, scope: !5402)
!5481 = !DILocation(line: 173, column: 43, scope: !5402)
!5482 = !DILocation(line: 173, column: 21, scope: !5402)
!5483 = !DILocation(line: 174, column: 16, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5402, file: !903, line: 174, column: 15)
!5485 = !DILocation(line: 174, column: 27, scope: !5484)
!5486 = !DILocation(line: 174, column: 34, scope: !5484)
!5487 = !DILocation(line: 174, column: 30, scope: !5484)
!5488 = !DILocation(line: 177, column: 27, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5484, file: !903, line: 175, column: 13)
!5490 = !DILocation(line: 174, column: 15, scope: !5402)
!5491 = !DILocation(line: 0, scope: !5402)
!5492 = distinct !{!5492, !5423, !5493}
!5493 = !DILocation(line: 179, column: 9, scope: !5403)
!5494 = !DILocation(line: 184, column: 15, scope: !5391)
!5495 = !DILocation(line: 191, column: 3, scope: !5391)
!5496 = !DILocation(line: 192, column: 1, scope: !5391)
!5497 = distinct !DISubprogram(name: "mktime_z", scope: !903, file: !903, line: 321, type: !5498, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5500)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!521, !941, !912}
!5500 = !{!5501, !5502, !5503, !5506, !5509, !5510}
!5501 = !DILocalVariable(name: "tz", arg: 1, scope: !5497, file: !903, line: 321, type: !941)
!5502 = !DILocalVariable(name: "tm", arg: 2, scope: !5497, file: !903, line: 321, type: !912)
!5503 = !DILocalVariable(name: "old_tz", scope: !5504, file: !903, line: 327, type: !941)
!5504 = distinct !DILexicalBlock(scope: !5505, file: !903, line: 326, column: 5)
!5505 = distinct !DILexicalBlock(scope: !5497, file: !903, line: 323, column: 7)
!5506 = !DILocalVariable(name: "t", scope: !5507, file: !903, line: 330, type: !521)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !903, line: 329, column: 9)
!5508 = distinct !DILexicalBlock(scope: !5504, file: !903, line: 328, column: 11)
!5509 = !DILocalVariable(name: "badtime", scope: !5507, file: !903, line: 332, type: !521)
!5510 = !DILocalVariable(name: "tm_1", scope: !5507, file: !903, line: 333, type: !913)
!5511 = !DILocation(line: 0, scope: !5497)
!5512 = !DILocation(line: 323, column: 8, scope: !5505)
!5513 = !DILocation(line: 323, column: 7, scope: !5497)
!5514 = !DILocation(line: 324, column: 12, scope: !5505)
!5515 = !DILocation(line: 324, column: 5, scope: !5505)
!5516 = !DILocation(line: 327, column: 27, scope: !5504)
!5517 = !DILocation(line: 0, scope: !5504)
!5518 = !DILocation(line: 328, column: 11, scope: !5508)
!5519 = !DILocation(line: 328, column: 11, scope: !5504)
!5520 = !DILocation(line: 330, column: 11, scope: !5507)
!5521 = !DILocation(line: 330, column: 22, scope: !5507)
!5522 = !DILocation(line: 0, scope: !5507)
!5523 = !DILocation(line: 330, column: 18, scope: !5507)
!5524 = !DILocation(line: 333, column: 11, scope: !5507)
!5525 = !DILocation(line: 333, column: 21, scope: !5507)
!5526 = !DILocation(line: 334, column: 18, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5507, file: !903, line: 334, column: 15)
!5528 = !DILocation(line: 335, column: 16, scope: !5527)
!5529 = !DILocation(line: 335, column: 20, scope: !5527)
!5530 = !DILocation(line: 335, column: 44, scope: !5527)
!5531 = !DILocalVariable(name: "a", arg: 1, scope: !5532, file: !903, line: 69, type: !5535)
!5532 = distinct !DISubprogram(name: "equal_tm", scope: !903, file: !903, line: 69, type: !5533, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5537)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{!38, !5535, !5535}
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!5537 = !{!5531, !5538}
!5538 = !DILocalVariable(name: "b", arg: 2, scope: !5532, file: !903, line: 69, type: !5535)
!5539 = !DILocation(line: 0, scope: !5532, inlinedAt: !5540)
!5540 = distinct !DILocation(line: 335, column: 47, scope: !5527)
!5541 = !DILocation(line: 71, column: 17, scope: !5532, inlinedAt: !5540)
!5542 = !DILocation(line: 71, column: 29, scope: !5532, inlinedAt: !5540)
!5543 = !DILocation(line: 71, column: 24, scope: !5532, inlinedAt: !5540)
!5544 = !DILocation(line: 75, column: 19, scope: !5532, inlinedAt: !5540)
!5545 = !DILocation(line: 75, column: 31, scope: !5532, inlinedAt: !5540)
!5546 = !DILocation(line: 75, column: 26, scope: !5532, inlinedAt: !5540)
!5547 = !DILocation(line: 75, column: 13, scope: !5532, inlinedAt: !5540)
!5548 = !DILocation(line: 76, column: 13, scope: !5532, inlinedAt: !5540)
!5549 = !DILocation(line: 77, column: 32, scope: !5532, inlinedAt: !5540)
!5550 = !DILocation(line: 77, column: 45, scope: !5532, inlinedAt: !5540)
!5551 = !DILocalVariable(name: "a", arg: 1, scope: !5552, file: !903, line: 62, type: !38)
!5552 = distinct !DISubprogram(name: "isdst_differ", scope: !903, file: !903, line: 62, type: !5553, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!131, !38, !38}
!5555 = !{!5551, !5556}
!5556 = !DILocalVariable(name: "b", arg: 2, scope: !5552, file: !903, line: 62, type: !38)
!5557 = !DILocation(line: 0, scope: !5552, inlinedAt: !5558)
!5558 = distinct !DILocation(line: 77, column: 15, scope: !5532, inlinedAt: !5540)
!5559 = !DILocation(line: 64, column: 10, scope: !5552, inlinedAt: !5558)
!5560 = !DILocation(line: 64, column: 16, scope: !5552, inlinedAt: !5558)
!5561 = !DILocation(line: 64, column: 13, scope: !5552, inlinedAt: !5558)
!5562 = !DILocation(line: 64, column: 19, scope: !5552, inlinedAt: !5558)
!5563 = !DILocation(line: 77, column: 15, scope: !5532, inlinedAt: !5540)
!5564 = !DILocation(line: 77, column: 13, scope: !5532, inlinedAt: !5540)
!5565 = !DILocation(line: 76, column: 27, scope: !5532, inlinedAt: !5540)
!5566 = !DILocation(line: 71, column: 10, scope: !5532, inlinedAt: !5540)
!5567 = !DILocation(line: 336, column: 15, scope: !5527)
!5568 = !DILocation(line: 336, column: 19, scope: !5527)
!5569 = !DILocation(line: 334, column: 15, scope: !5507)
!5570 = !DILocation(line: 337, column: 15, scope: !5527)
!5571 = !DILocation(line: 337, column: 13, scope: !5527)
!5572 = !DILocation(line: 0, scope: !5261, inlinedAt: !5573)
!5573 = distinct !DILocation(line: 339, column: 15, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5507, file: !903, line: 339, column: 15)
!5575 = !DILocation(line: 271, column: 10, scope: !5267, inlinedAt: !5573)
!5576 = !DILocation(line: 271, column: 7, scope: !5261, inlinedAt: !5573)
!5577 = !DILocation(line: 275, column: 25, scope: !5266, inlinedAt: !5573)
!5578 = !DILocation(line: 0, scope: !5266, inlinedAt: !5573)
!5579 = !DILocation(line: 0, scope: !5277, inlinedAt: !5580)
!5580 = distinct !DILocation(line: 276, column: 17, scope: !5266, inlinedAt: !5573)
!5581 = !DILocation(line: 231, column: 22, scope: !5282, inlinedAt: !5580)
!5582 = !DILocation(line: 231, column: 18, scope: !5282, inlinedAt: !5580)
!5583 = !DILocation(line: 0, scope: !5285, inlinedAt: !5584)
!5584 = distinct !DILocation(line: 231, column: 7, scope: !5282, inlinedAt: !5580)
!5585 = !DILocation(line: 222, column: 10, scope: !5285, inlinedAt: !5584)
!5586 = !DILocation(line: 222, column: 15, scope: !5285, inlinedAt: !5584)
!5587 = !DILocation(line: 222, column: 38, scope: !5285, inlinedAt: !5584)
!5588 = !DILocation(line: 231, column: 52, scope: !5282, inlinedAt: !5580)
!5589 = !DILocation(line: 231, column: 7, scope: !5277, inlinedAt: !5580)
!5590 = !DILocation(line: 233, column: 3, scope: !5277, inlinedAt: !5580)
!5591 = !DILocation(line: 277, column: 11, scope: !5266, inlinedAt: !5573)
!5592 = !DILocation(line: 278, column: 23, scope: !5297, inlinedAt: !5573)
!5593 = !DILocation(line: 278, column: 9, scope: !5297, inlinedAt: !5573)
!5594 = !DILocation(line: 0, scope: !5214, inlinedAt: !5595)
!5595 = distinct !DILocation(line: 279, column: 7, scope: !5266, inlinedAt: !5573)
!5596 = !DILocation(line: 198, column: 7, scope: !5214, inlinedAt: !5595)
!5597 = !DILocation(line: 201, column: 31, scope: !5220, inlinedAt: !5595)
!5598 = !DILocation(line: 0, scope: !5220, inlinedAt: !5595)
!5599 = !DILocation(line: 202, column: 15, scope: !5220, inlinedAt: !5595)
!5600 = !DILocation(line: 202, column: 9, scope: !5220, inlinedAt: !5595)
!5601 = !DILocation(line: 199, column: 5, scope: !5221, inlinedAt: !5595)
!5602 = distinct !{!5602, !5601, !5603}
!5603 = !DILocation(line: 204, column: 7, scope: !5221, inlinedAt: !5595)
!5604 = !DILocation(line: 280, column: 13, scope: !5266, inlinedAt: !5573)
!5605 = !DILocation(line: 339, column: 15, scope: !5507)
!5606 = !DILocation(line: 341, column: 9, scope: !5508)
!5607 = !DILocation(line: 0, scope: !5505)
!5608 = !DILocation(line: 344, column: 1, scope: !5497)
!5609 = distinct !DISubprogram(name: "close_stream", scope: !949, file: !949, line: 56, type: !5610, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5614)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!38, !5612}
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1529, line: 7, baseType: !955)
!5614 = !{!5615, !5616, !5618, !5619}
!5615 = !DILocalVariable(name: "stream", arg: 1, scope: !5609, file: !949, line: 56, type: !5612)
!5616 = !DILocalVariable(name: "some_pending", scope: !5609, file: !949, line: 58, type: !5617)
!5617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!5618 = !DILocalVariable(name: "prev_fail", scope: !5609, file: !949, line: 59, type: !5617)
!5619 = !DILocalVariable(name: "fclose_fail", scope: !5609, file: !949, line: 60, type: !5617)
!5620 = !DILocation(line: 0, scope: !5609)
!5621 = !DILocation(line: 58, column: 30, scope: !5609)
!5622 = !DILocalVariable(name: "__stream", arg: 1, scope: !5623, file: !1649, line: 135, type: !5612)
!5623 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1649, file: !1649, line: 135, type: !5610, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5624)
!5624 = !{!5622}
!5625 = !DILocation(line: 0, scope: !5623, inlinedAt: !5626)
!5626 = distinct !DILocation(line: 59, column: 27, scope: !5609)
!5627 = !DILocation(line: 137, column: 10, scope: !5623, inlinedAt: !5626)
!5628 = !DILocation(line: 59, column: 43, scope: !5609)
!5629 = !DILocation(line: 60, column: 29, scope: !5609)
!5630 = !DILocation(line: 60, column: 45, scope: !5609)
!5631 = !DILocation(line: 70, column: 17, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5609, file: !949, line: 70, column: 7)
!5633 = !DILocation(line: 58, column: 50, scope: !5609)
!5634 = !DILocation(line: 70, column: 33, scope: !5632)
!5635 = !DILocation(line: 70, column: 53, scope: !5632)
!5636 = !DILocation(line: 70, column: 59, scope: !5632)
!5637 = !DILocation(line: 70, column: 7, scope: !5609)
!5638 = !DILocation(line: 72, column: 11, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5632, file: !949, line: 71, column: 5)
!5640 = !DILocation(line: 73, column: 9, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5639, file: !949, line: 72, column: 11)
!5642 = !DILocation(line: 73, column: 15, scope: !5641)
!5643 = !DILocation(line: 78, column: 1, scope: !5609)
!5644 = distinct !DISubprogram(name: "hard_locale", scope: !987, file: !987, line: 27, type: !854, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5645)
!5645 = !{!5646, !5647}
!5646 = !DILocalVariable(name: "category", arg: 1, scope: !5644, file: !987, line: 27, type: !38)
!5647 = !DILocalVariable(name: "locale", scope: !5644, file: !987, line: 29, type: !5648)
!5648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !5649)
!5649 = !{!5650}
!5650 = !DISubrange(count: 257)
!5651 = !DILocation(line: 0, scope: !5644)
!5652 = !DILocation(line: 29, column: 3, scope: !5644)
!5653 = !DILocation(line: 29, column: 8, scope: !5644)
!5654 = !DILocation(line: 31, column: 7, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5644, file: !987, line: 31, column: 7)
!5656 = !DILocation(line: 31, column: 7, scope: !5644)
!5657 = !DILocation(line: 34, column: 12, scope: !5644)
!5658 = !DILocation(line: 34, column: 38, scope: !5644)
!5659 = !DILocation(line: 34, column: 41, scope: !5644)
!5660 = !DILocation(line: 34, column: 66, scope: !5644)
!5661 = !DILocation(line: 35, column: 1, scope: !5644)
!5662 = distinct !DISubprogram(name: "locale_charset", scope: !994, file: !994, line: 831, type: !344, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !5663)
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "codeset", scope: !5662, file: !994, line: 833, type: !6)
!5665 = !DILocation(line: 847, column: 13, scope: !5662)
!5666 = !DILocation(line: 0, scope: !5662)
!5667 = !DILocation(line: 911, column: 15, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5662, file: !994, line: 911, column: 7)
!5669 = !DILocation(line: 911, column: 7, scope: !5662)
!5670 = !DILocation(line: 1070, column: 13, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !994, line: 1070, column: 13)
!5672 = distinct !DILexicalBlock(scope: !5673, file: !994, line: 1060, column: 7)
!5673 = distinct !DILexicalBlock(scope: !5662, file: !994, line: 1019, column: 3)
!5674 = !DILocation(line: 1070, column: 24, scope: !5671)
!5675 = !DILocation(line: 1070, column: 13, scope: !5672)
!5676 = !DILocation(line: 1158, column: 3, scope: !5662)
!5677 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1387, file: !1387, line: 269, type: !5678, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1386, retainedNodes: !5680)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{!38, !38, !14, !108}
!5680 = !{!5681, !5682, !5683}
!5681 = !DILocalVariable(name: "category", arg: 1, scope: !5677, file: !1387, line: 269, type: !38)
!5682 = !DILocalVariable(name: "buf", arg: 2, scope: !5677, file: !1387, line: 269, type: !14)
!5683 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5677, file: !1387, line: 269, type: !108)
!5684 = !DILocation(line: 0, scope: !5677)
!5685 = !DILocalVariable(name: "category", arg: 1, scope: !5686, file: !1387, line: 91, type: !38)
!5686 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1387, file: !1387, line: 91, type: !5678, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1386, retainedNodes: !5687)
!5687 = !{!5685, !5688, !5689, !5690, !5691}
!5688 = !DILocalVariable(name: "buf", arg: 2, scope: !5686, file: !1387, line: 91, type: !14)
!5689 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5686, file: !1387, line: 91, type: !108)
!5690 = !DILocalVariable(name: "result", scope: !5686, file: !1387, line: 140, type: !6)
!5691 = !DILocalVariable(name: "length", scope: !5692, file: !1387, line: 154, type: !108)
!5692 = distinct !DILexicalBlock(scope: !5693, file: !1387, line: 153, column: 5)
!5693 = distinct !DILexicalBlock(scope: !5686, file: !1387, line: 142, column: 7)
!5694 = !DILocation(line: 0, scope: !5686, inlinedAt: !5695)
!5695 = distinct !DILocation(line: 274, column: 10, scope: !5677)
!5696 = !DILocalVariable(name: "category", arg: 1, scope: !5697, file: !1387, line: 60, type: !38)
!5697 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1387, file: !1387, line: 60, type: !5698, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1386, retainedNodes: !5700)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!6, !38}
!5700 = !{!5696, !5701}
!5701 = !DILocalVariable(name: "result", scope: !5697, file: !1387, line: 62, type: !6)
!5702 = !DILocation(line: 0, scope: !5697, inlinedAt: !5703)
!5703 = distinct !DILocation(line: 140, column: 24, scope: !5686, inlinedAt: !5695)
!5704 = !DILocation(line: 62, column: 24, scope: !5697, inlinedAt: !5703)
!5705 = !DILocation(line: 142, column: 14, scope: !5693, inlinedAt: !5695)
!5706 = !DILocation(line: 142, column: 7, scope: !5686, inlinedAt: !5695)
!5707 = !DILocation(line: 145, column: 19, scope: !5708, inlinedAt: !5695)
!5708 = distinct !DILexicalBlock(scope: !5709, file: !1387, line: 145, column: 11)
!5709 = distinct !DILexicalBlock(scope: !5693, file: !1387, line: 143, column: 5)
!5710 = !DILocation(line: 145, column: 11, scope: !5709, inlinedAt: !5695)
!5711 = !DILocation(line: 149, column: 16, scope: !5708, inlinedAt: !5695)
!5712 = !DILocation(line: 149, column: 9, scope: !5708, inlinedAt: !5695)
!5713 = !DILocation(line: 154, column: 23, scope: !5692, inlinedAt: !5695)
!5714 = !DILocation(line: 0, scope: !5692, inlinedAt: !5695)
!5715 = !DILocation(line: 155, column: 18, scope: !5716, inlinedAt: !5695)
!5716 = distinct !DILexicalBlock(scope: !5692, file: !1387, line: 155, column: 11)
!5717 = !DILocation(line: 155, column: 11, scope: !5692, inlinedAt: !5695)
!5718 = !DILocation(line: 157, column: 39, scope: !5719, inlinedAt: !5695)
!5719 = distinct !DILexicalBlock(scope: !5716, file: !1387, line: 156, column: 9)
!5720 = !DILocalVariable(name: "__dest", arg: 1, scope: !5721, file: !3447, line: 31, type: !4839)
!5721 = distinct !DISubprogram(name: "memcpy", scope: !3447, file: !3447, line: 31, type: !4837, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1386, retainedNodes: !5722)
!5722 = !{!5720, !5723, !5724}
!5723 = !DILocalVariable(name: "__src", arg: 2, scope: !5721, file: !3447, line: 31, type: !4840)
!5724 = !DILocalVariable(name: "__len", arg: 3, scope: !5721, file: !3447, line: 31, type: !108)
!5725 = !DILocation(line: 0, scope: !5721, inlinedAt: !5726)
!5726 = distinct !DILocation(line: 157, column: 11, scope: !5719, inlinedAt: !5695)
!5727 = !DILocation(line: 34, column: 10, scope: !5721, inlinedAt: !5726)
!5728 = !DILocation(line: 158, column: 11, scope: !5719, inlinedAt: !5695)
!5729 = !DILocation(line: 162, column: 23, scope: !5730, inlinedAt: !5695)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !1387, line: 162, column: 15)
!5731 = distinct !DILexicalBlock(scope: !5716, file: !1387, line: 161, column: 9)
!5732 = !DILocation(line: 162, column: 15, scope: !5731, inlinedAt: !5695)
!5733 = !DILocation(line: 167, column: 44, scope: !5734, inlinedAt: !5695)
!5734 = distinct !DILexicalBlock(scope: !5730, file: !1387, line: 163, column: 13)
!5735 = !DILocation(line: 0, scope: !5721, inlinedAt: !5736)
!5736 = distinct !DILocation(line: 167, column: 15, scope: !5734, inlinedAt: !5695)
!5737 = !DILocation(line: 34, column: 10, scope: !5721, inlinedAt: !5736)
!5738 = !DILocation(line: 168, column: 15, scope: !5734, inlinedAt: !5695)
!5739 = !DILocation(line: 168, column: 32, scope: !5734, inlinedAt: !5695)
!5740 = !DILocation(line: 169, column: 13, scope: !5734, inlinedAt: !5695)
!5741 = !DILocation(line: 0, scope: !5693, inlinedAt: !5695)
!5742 = !DILocation(line: 274, column: 3, scope: !5677)
!5743 = distinct !DISubprogram(name: "setlocale_null", scope: !1387, file: !1387, line: 301, type: !5698, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1386, retainedNodes: !5744)
!5744 = !{!5745}
!5745 = !DILocalVariable(name: "category", arg: 1, scope: !5743, file: !1387, line: 301, type: !38)
!5746 = !DILocation(line: 0, scope: !5743)
!5747 = !DILocation(line: 0, scope: !5697, inlinedAt: !5748)
!5748 = distinct !DILocation(line: 304, column: 10, scope: !5743)
!5749 = !DILocation(line: 62, column: 24, scope: !5697, inlinedAt: !5748)
!5750 = !DILocation(line: 304, column: 3, scope: !5743)
