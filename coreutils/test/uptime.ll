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
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !41
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !46
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !49
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.61 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.62 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.63 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.64 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.66, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.67, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !55
@.str.2.66 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.67 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !72
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !79
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !124
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !130
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !142
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !149
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !156
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !144
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !158
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !164
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.161 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.162 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !678 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !682, metadata !DIExpression()), !dbg !683
  %3 = icmp eq i32 %0, 0, !dbg !684
  br i1 %3, label %9, label %4, !dbg !686

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !687, !tbaa !689
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !687
  %7 = load i8*, i8** @program_name, align 8, !dbg !687, !tbaa !689
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !687
  br label %61, !dbg !687

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !693
  %11 = load i8*, i8** @program_name, align 8, !dbg !693, !tbaa !689
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !693
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !695
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13) #28, !dbg !695
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !696
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15) #28, !dbg !696
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !697
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #28, !dbg !697
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #28, !dbg !698
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698, !tbaa !689
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !698
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #28, !dbg !699
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !689
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !699
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), metadata !700, metadata !DIExpression()) #28, !dbg !718
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #28, !dbg !720
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !705, metadata !DIExpression()) #28, !dbg !721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), metadata !714, metadata !DIExpression()) #28, !dbg !718
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !715, metadata !DIExpression()) #28, !dbg !718
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !722
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !715, metadata !DIExpression()) #28, !dbg !718
  br label %27, !dbg !723

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !715, metadata !DIExpression()) #28, !dbg !718
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %28) #29, !dbg !724
  %31 = icmp eq i32 %30, 0, !dbg !724
  br i1 %31, label %37, label %32, !dbg !723

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !725
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !715, metadata !DIExpression()) #28, !dbg !718
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !726
  %35 = load i8*, i8** %34, align 8, !dbg !726, !tbaa !727
  %36 = icmp eq i8* %35, null, !dbg !729
  br i1 %36, label %37, label %27, !dbg !730, !llvm.loop !731

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !733
  %40 = load i8*, i8** %39, align 8, !dbg !733, !tbaa !735
  %41 = icmp eq i8* %40, null, !dbg !736
  %42 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %40, !dbg !737
  call void @llvm.dbg.value(metadata i8* %42, metadata !714, metadata !DIExpression()) #28, !dbg !718
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 5) #28, !dbg !738
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0)) #28, !dbg !738
  %45 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !739
  call void @llvm.dbg.value(metadata i8* %45, metadata !717, metadata !DIExpression()) #28, !dbg !718
  %46 = icmp eq i8* %45, null, !dbg !740
  br i1 %46, label %54, label %47, !dbg !742

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3) #29, !dbg !743
  %49 = icmp eq i32 %48, 0, !dbg !743
  br i1 %49, label %54, label %50, !dbg !744

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i32 5) #28, !dbg !745
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !689
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #28, !dbg !745
  br label %54, !dbg !747

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 5) #28, !dbg !748
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !748
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #28, !dbg !749
  %58 = icmp eq i8* %42, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), !dbg !749
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !749
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #28, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #28, !dbg !750
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #30, !dbg !751
  unreachable, !dbg !751
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !752 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !756 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !809 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !818, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i8** %1, metadata !819, metadata !DIExpression()), !dbg !820
  %3 = load i8*, i8** %1, align 8, !dbg !821, !tbaa !689
  tail call void @set_program_name(i8* %3) #28, !dbg !822
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !823
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #28, !dbg !824
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #28, !dbg !825
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !826
  %8 = load i8*, i8** @Version, align 8, !dbg !827, !tbaa !689
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #28, !dbg !828
  %9 = load i32, i32* @optind, align 4, !dbg !829, !tbaa !830
  %10 = sub nsw i32 %0, %9, !dbg !832
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !833

11:                                               ; preds = %2
  tail call fastcc void @uptime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1), !dbg !834
  br label %24, !dbg !836

12:                                               ; preds = %2
  %13 = sext i32 %9 to i64, !dbg !837
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !837
  %15 = load i8*, i8** %14, align 8, !dbg !837, !tbaa !689
  tail call fastcc void @uptime(i8* %15, i32 0), !dbg !838
  br label %24, !dbg !839

16:                                               ; preds = %2
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !840
  %18 = load i32, i32* @optind, align 4, !dbg !841, !tbaa !830
  %19 = add nsw i32 %18, 1, !dbg !842
  %20 = sext i32 %19 to i64, !dbg !843
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !843
  %22 = load i8*, i8** %21, align 8, !dbg !843, !tbaa !689
  %23 = tail call i8* @quote(i8* %22) #28, !dbg !844
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #28, !dbg !845
  tail call void @usage(i32 1) #31, !dbg !846
  unreachable, !dbg !846

24:                                               ; preds = %12, %11
  ret i32 0, !dbg !847
}

; Function Attrs: nounwind
declare !dbg !848 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !851 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !854 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @uptime(i8* %0, i32 %1) unnamed_addr #8 !dbg !861 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !865, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %1, metadata !866, metadata !DIExpression()), !dbg !902
  %9 = bitcast i64* %7 to i8*, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #28, !dbg !903
  %10 = bitcast %struct.utmpx** %8 to i8*, !dbg !904
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #28, !dbg !904
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !868, metadata !DIExpression()), !dbg !902
  store %struct.utmpx* null, %struct.utmpx** %8, align 8, !dbg !905, !tbaa !689
  call void @llvm.dbg.value(metadata i64* %7, metadata !867, metadata !DIExpression(DW_OP_deref)), !dbg !902
  call void @llvm.dbg.value(metadata %struct.utmpx** %8, metadata !868, metadata !DIExpression(DW_OP_deref)), !dbg !902
  %11 = call i32 @read_utmp(i8* %0, i64* nonnull %7, %struct.utmpx** nonnull %8, i32 %1) #28, !dbg !906
  %12 = icmp eq i32 %11, 0, !dbg !908
  br i1 %12, label %17, label %13, !dbg !909

13:                                               ; preds = %2
  %14 = tail call i32* @__errno_location() #32, !dbg !910
  %15 = load i32, i32* %14, align 4, !dbg !910, !tbaa !830
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #28, !dbg !910
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %16) #28, !dbg !910
  unreachable, !dbg !910

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8, !dbg !911, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %18, metadata !867, metadata !DIExpression()), !dbg !902
  %19 = load %struct.utmpx*, %struct.utmpx** %8, align 8, !dbg !914, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !868, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 %18, metadata !915, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !922, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 0, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 0, metadata !924, metadata !DIExpression()) #28, !dbg !965
  %20 = bitcast i64* %3 to i8*, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #28, !dbg !967
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()) #28, !dbg !965
  %21 = bitcast [3 x double]* %4 to i8*, !dbg !968
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #28, !dbg !968
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !946, metadata !DIExpression()) #28, !dbg !969
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #28, !dbg !970
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !950, metadata !DIExpression()) #28, !dbg !965
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !971
  br i1 %23, label %44, label %24, !dbg !972

24:                                               ; preds = %17
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0, !dbg !973
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %25) #28, !dbg !973
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !954, metadata !DIExpression()) #28, !dbg !974
  %26 = call i8* @fgets_unlocked(i8* nonnull %25, i32 8192, %struct._IO_FILE* nonnull %22) #28, !dbg !975
  call void @llvm.dbg.value(metadata i8* %26, metadata !960, metadata !DIExpression()) #28, !dbg !976
  %27 = icmp eq i8* %26, %25, !dbg !977
  br i1 %27, label %28, label %41, !dbg !978

28:                                               ; preds = %24
  %29 = bitcast i8** %6 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #28, !dbg !979
  call void @llvm.dbg.value(metadata i8** %6, metadata !961, metadata !DIExpression(DW_OP_deref)) #28, !dbg !980
  %30 = call double @c_strtod(i8* nonnull %25, i8** nonnull %6) #28, !dbg !981
  call void @llvm.dbg.value(metadata double %30, metadata !964, metadata !DIExpression()) #28, !dbg !980
  %31 = load i8*, i8** %6, align 8, !dbg !982, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %31, metadata !961, metadata !DIExpression()) #28, !dbg !980
  %32 = icmp eq i8* %25, %31, !dbg !984
  br i1 %32, label %39, label %33, !dbg !985

33:                                               ; preds = %28
  %34 = fcmp oge double %30, 0.000000e+00, !dbg !986
  %35 = fcmp olt double %30, 0x43E0000000000000
  %36 = and i1 %34, %35, !dbg !987
  %37 = fptosi double %30 to i64, !dbg !988
  %38 = select i1 %36, i64 %37, i64 -1, !dbg !988
  call void @llvm.dbg.value(metadata i64 %38, metadata !926, metadata !DIExpression()) #28, !dbg !965
  br label %39, !dbg !989

39:                                               ; preds = %33, %28
  %40 = phi i64 [ %38, %33 ], [ 0, %28 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %40, metadata !926, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #28, !dbg !990
  br label %41, !dbg !991

41:                                               ; preds = %39, %24
  %42 = phi i64 [ %40, %39 ], [ 0, %24 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %42, metadata !926, metadata !DIExpression()) #28, !dbg !965
  %43 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #28, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %25) #28, !dbg !993
  br label %44, !dbg !994

44:                                               ; preds = %41, %17
  %45 = phi i64 [ %42, %41 ], [ 0, %17 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %45, metadata !926, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %18, metadata !915, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata %struct.utmpx* %19, metadata !922, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 0, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 0, metadata !924, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %18, metadata !915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !965
  %46 = icmp eq i64 %18, 0, !dbg !995
  br i1 %46, label %105, label %47, !dbg !995

47:                                               ; preds = %44
  %48 = and i64 %18, 1, !dbg !995
  %49 = icmp eq i64 %18, 1, !dbg !995
  br i1 %49, label %83, label %50, !dbg !995

50:                                               ; preds = %47
  %51 = and i64 %18, -2, !dbg !995
  br label %52, !dbg !995

52:                                               ; preds = %201, %50
  %53 = phi %struct.utmpx* [ %19, %50 ], [ %203, %201 ]
  %54 = phi i64 [ 0, %50 ], [ %81, %201 ]
  %55 = phi i64 [ 0, %50 ], [ %202, %201 ]
  %56 = phi i64 [ %51, %50 ], [ %204, %201 ]
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !922, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %54, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %55, metadata !924, metadata !DIExpression()) #28, !dbg !965
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 4, i64 0, !dbg !996
  %58 = load i8, i8* %57, align 4, !dbg !996, !tbaa !998
  %59 = icmp ne i8 %58, 0, !dbg !996
  %60 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 0
  %61 = load i16, i16* %60, align 4, !dbg !999, !tbaa !1000
  %62 = icmp eq i16 %61, 7, !dbg !996
  %63 = and i1 %59, %62, !dbg !996
  %64 = zext i1 %63 to i64, !dbg !996
  %65 = add i64 %54, %64, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %65, metadata !923, metadata !DIExpression()) #28, !dbg !965
  %66 = icmp eq i16 %61, 2, !dbg !1006
  br i1 %66, label %67, label %71, !dbg !1008

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 0, i32 8, i32 0, !dbg !1009
  %69 = load i32, i32* %68, align 4, !dbg !1009, !tbaa !1010
  %70 = sext i32 %69 to i64, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %70, metadata !924, metadata !DIExpression()) #28, !dbg !965
  br label %71, !dbg !1011

71:                                               ; preds = %67, %52
  %72 = phi i64 [ %70, %67 ], [ %55, %52 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %72, metadata !924, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 undef, metadata !915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !965
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !922, metadata !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value)) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %65, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 undef, metadata !915, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !965
  call void @llvm.dbg.value(metadata %struct.utmpx* %53, metadata !922, metadata !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value)) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %65, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %72, metadata !924, metadata !DIExpression()) #28, !dbg !965
  %73 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 4, i64 0, !dbg !996
  %74 = load i8, i8* %73, align 4, !dbg !996, !tbaa !998
  %75 = icmp ne i8 %74, 0, !dbg !996
  %76 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 0
  %77 = load i16, i16* %76, align 4, !dbg !999, !tbaa !1000
  %78 = icmp eq i16 %77, 7, !dbg !996
  %79 = and i1 %75, %78, !dbg !996
  %80 = zext i1 %79 to i64, !dbg !996
  %81 = add i64 %65, %80, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %81, metadata !923, metadata !DIExpression()) #28, !dbg !965
  %82 = icmp eq i16 %77, 2, !dbg !1006
  br i1 %82, label %197, label %201, !dbg !1008

83:                                               ; preds = %201, %47
  %84 = phi i64 [ undef, %47 ], [ %202, %201 ]
  %85 = phi i64 [ undef, %47 ], [ %81, %201 ]
  %86 = phi %struct.utmpx* [ %19, %47 ], [ %203, %201 ]
  %87 = phi i64 [ 0, %47 ], [ %81, %201 ]
  %88 = phi i64 [ 0, %47 ], [ %202, %201 ]
  %89 = icmp eq i64 %48, 0, !dbg !1008
  br i1 %89, label %105, label %90, !dbg !1008

90:                                               ; preds = %83
  call void @llvm.dbg.value(metadata %struct.utmpx* %86, metadata !922, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %87, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %88, metadata !924, metadata !DIExpression()) #28, !dbg !965
  %91 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 4, i64 0, !dbg !996
  %92 = load i8, i8* %91, align 4, !dbg !996, !tbaa !998
  %93 = icmp ne i8 %92, 0, !dbg !996
  %94 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 0
  %95 = load i16, i16* %94, align 4, !dbg !999, !tbaa !1000
  %96 = icmp eq i16 %95, 7, !dbg !996
  %97 = and i1 %93, %96, !dbg !996
  %98 = zext i1 %97 to i64, !dbg !996
  %99 = add i64 %87, %98, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %99, metadata !923, metadata !DIExpression()) #28, !dbg !965
  %100 = icmp eq i16 %95, 2, !dbg !1006
  br i1 %100, label %101, label %105, !dbg !1008

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %86, i64 0, i32 8, i32 0, !dbg !1009
  %103 = load i32, i32* %102, align 4, !dbg !1009, !tbaa !1010
  %104 = sext i32 %103 to i64, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %104, metadata !924, metadata !DIExpression()) #28, !dbg !965
  br label %105, !dbg !1011

105:                                              ; preds = %83, %90, %101, %44
  %106 = phi i64 [ 0, %44 ], [ %84, %83 ], [ %104, %101 ], [ %88, %90 ], !dbg !965
  %107 = phi i64 [ 0, %44 ], [ %85, %83 ], [ %99, %90 ], [ %99, %101 ], !dbg !965
  %108 = call i64 @time(i64* null) #28, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %108, metadata !925, metadata !DIExpression()) #28, !dbg !965
  store i64 %108, i64* %3, align 8, !dbg !1013, !tbaa !912
  %109 = icmp eq i64 %45, 0, !dbg !1014
  br i1 %109, label %110, label %118, !dbg !1016

110:                                              ; preds = %105
  %111 = icmp eq i64 %106, 0, !dbg !1017
  br i1 %111, label %112, label %116, !dbg !1020

112:                                              ; preds = %110
  %113 = tail call i32* @__errno_location() #32, !dbg !1021
  %114 = load i32, i32* %113, align 4, !dbg !1021, !tbaa !830
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #28, !dbg !1021
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %114, i8* %115) #28, !dbg !1021
  unreachable, !dbg !1021

116:                                              ; preds = %110
  %117 = sub nsw i64 %108, %106, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %117, metadata !926, metadata !DIExpression()) #28, !dbg !965
  br label %118, !dbg !1023

118:                                              ; preds = %116, %105
  %119 = phi i64 [ %117, %116 ], [ %45, %105 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %119, metadata !926, metadata !DIExpression()) #28, !dbg !965
  %120 = sdiv i64 %119, 86400, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %120, metadata !927, metadata !DIExpression()) #28, !dbg !965
  %121 = mul nsw i64 %120, -86400, !dbg !1025
  %122 = add i64 %121, %119, !dbg !1026
  %123 = sdiv i64 %122, 3600, !dbg !1027
  %124 = trunc i64 %123 to i32, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %124, metadata !928, metadata !DIExpression()) #28, !dbg !965
  %125 = mul i64 %123, 15461882265600, !dbg !1029
  %126 = ashr exact i64 %125, 32, !dbg !1029
  %127 = sub nsw i64 %122, %126, !dbg !1030
  %128 = sdiv i64 %127, 60, !dbg !1031
  %129 = trunc i64 %128 to i32, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %129, metadata !929, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64* %3, metadata !925, metadata !DIExpression(DW_OP_deref)) #28, !dbg !965
  %130 = call %struct.tm* @localtime(i64* nonnull %3) #28, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.tm* %130, metadata !930, metadata !DIExpression()) #28, !dbg !965
  %131 = icmp eq %struct.tm* %130, null, !dbg !1034
  br i1 %131, label %136, label %132, !dbg !1036

132:                                              ; preds = %118
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1037, !tbaa !689
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #28, !dbg !1038
  %135 = call i64 @fprintftime(%struct._IO_FILE* %133, i8* %134, %struct.tm* nonnull %130, %struct.tm_zone* null, i32 0) #28, !dbg !1039
  br label %139, !dbg !1039

136:                                              ; preds = %118
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 5) #28, !dbg !1040
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %137) #28, !dbg !1040
  br label %139

139:                                              ; preds = %136, %132
  %140 = icmp eq i64 %119, -1, !dbg !1041
  br i1 %140, label %141, label %144, !dbg !1043

141:                                              ; preds = %139
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i32 5) #28, !dbg !1044
  %143 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %142) #28, !dbg !1044
  br label %152, !dbg !1044

144:                                              ; preds = %139
  %145 = icmp sgt i64 %119, 86399, !dbg !1045
  br i1 %145, label %146, label %149, !dbg !1048

146:                                              ; preds = %144
  %147 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i64 %120, i32 5) #28, !dbg !1049
  %148 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %147, i64 %120, i32 %124, i32 %129) #28, !dbg !1049
  br label %152, !dbg !1049

149:                                              ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 5) #28, !dbg !1050
  %151 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %150, i32 %124, i32 %129) #28, !dbg !1050
  br label %152

152:                                              ; preds = %149, %146, %141
  %153 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i64 %107, i32 5) #28, !dbg !1051
  %154 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %153, i64 %107) #28, !dbg !1051
  %155 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1052
  %156 = call i32 @getloadavg(double* nonnull %155, i32 3) #28, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %156, metadata !949, metadata !DIExpression()) #28, !dbg !965
  %157 = icmp eq i32 %156, -1, !dbg !1054
  br i1 %157, label %158, label %169, !dbg !1056

158:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i32 10, metadata !1057, metadata !DIExpression()) #28, !dbg !1063
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1065, !tbaa !689
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1065
  %161 = load i8*, i8** %160, align 8, !dbg !1065, !tbaa !1066
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1065
  %163 = load i8*, i8** %162, align 8, !dbg !1065, !tbaa !1068
  %164 = icmp ult i8* %161, %163, !dbg !1065
  br i1 %164, label %167, label %165, !dbg !1065, !prof !1069

165:                                              ; preds = %158
  %166 = call i32 @__overflow(%struct._IO_FILE* nonnull %159, i32 10) #28, !dbg !1065
  br label %196, !dbg !1065

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1065
  store i8* %168, i8** %160, align 8, !dbg !1065, !tbaa !1066
  store i8 10, i8* %161, align 1, !dbg !1065, !tbaa !998
  br label %196, !dbg !1065

169:                                              ; preds = %152
  %170 = icmp sgt i32 %156, 0, !dbg !1070
  br i1 %170, label %171, label %196, !dbg !1073

171:                                              ; preds = %169
  %172 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 5) #28, !dbg !1074
  %173 = load double, double* %155, align 16, !dbg !1074, !tbaa !1075
  %174 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %172, double %173) #28, !dbg !1074
  %175 = icmp eq i32 %156, 1, !dbg !1077
  br i1 %175, label %185, label %176, !dbg !1079

176:                                              ; preds = %171
  %177 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1, !dbg !1080
  %178 = load double, double* %177, align 8, !dbg !1080, !tbaa !1075
  %179 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %178) #28, !dbg !1080
  %180 = icmp sgt i32 %156, 2, !dbg !1081
  br i1 %180, label %181, label %185, !dbg !1083

181:                                              ; preds = %176
  %182 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2, !dbg !1084
  %183 = load double, double* %182, align 16, !dbg !1084, !tbaa !1075
  %184 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), double %183) #28, !dbg !1084
  br label %185, !dbg !1084

185:                                              ; preds = %181, %176, %171
  call void @llvm.dbg.value(metadata i32 10, metadata !1057, metadata !DIExpression()) #28, !dbg !1085
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !689
  %187 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 5, !dbg !1088
  %188 = load i8*, i8** %187, align 8, !dbg !1088, !tbaa !1066
  %189 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %186, i64 0, i32 6, !dbg !1088
  %190 = load i8*, i8** %189, align 8, !dbg !1088, !tbaa !1068
  %191 = icmp ult i8* %188, %190, !dbg !1088
  br i1 %191, label %194, label %192, !dbg !1088, !prof !1069

192:                                              ; preds = %185
  %193 = call i32 @__overflow(%struct._IO_FILE* nonnull %186, i32 10) #28, !dbg !1088
  br label %196, !dbg !1088

194:                                              ; preds = %185
  %195 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1088
  store i8* %195, i8** %187, align 8, !dbg !1088, !tbaa !1066
  store i8 10, i8* %188, align 1, !dbg !1088, !tbaa !998
  br label %196, !dbg !1088

196:                                              ; preds = %165, %167, %169, %192, %194
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #28, !dbg !1089
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #28, !dbg !1089
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #28, !dbg !1090
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #28, !dbg !1090
  ret void, !dbg !1090

197:                                              ; preds = %71
  %198 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 1, i32 8, i32 0, !dbg !1009
  %199 = load i32, i32* %198, align 4, !dbg !1009, !tbaa !1010
  %200 = sext i32 %199 to i64, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %200, metadata !924, metadata !DIExpression()) #28, !dbg !965
  br label %201, !dbg !1011

201:                                              ; preds = %197, %71
  %202 = phi i64 [ %200, %197 ], [ %72, %71 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %202, metadata !924, metadata !DIExpression()) #28, !dbg !965
  %203 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i64 2, !dbg !1091
  call void @llvm.dbg.value(metadata i64 undef, metadata !915, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !965
  call void @llvm.dbg.value(metadata %struct.utmpx* %203, metadata !922, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 %81, metadata !923, metadata !DIExpression()) #28, !dbg !965
  call void @llvm.dbg.value(metadata i64 undef, metadata !915, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !965
  %204 = add i64 %56, -2, !dbg !995
  %205 = icmp eq i64 %204, 0, !dbg !995
  br i1 %205, label %83, label %52, !dbg !995, !llvm.loop !1092
}

declare !dbg !1094 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i8* @fgets_unlocked(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1098 i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1103 %struct.tm* @localtime(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1108 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1111 i32 @getloadavg(double*, i32) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !1115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8** %1, metadata !1120, metadata !DIExpression()), !dbg !1123
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1124, !tbaa !689
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1124
  br i1 %4, label %5, label %7, !dbg !1130

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %struct.__locale_struct* null) #28, !dbg !1131
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1132, !tbaa !689
  br label %7, !dbg !1133

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1134, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1122, metadata !DIExpression()), !dbg !1123
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1135
  br i1 %9, label %10, label %13, !dbg !1137

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1138
  br i1 %11, label %15, label %12, !dbg !1141

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1142, !tbaa !689
  br label %15, !dbg !1143

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #28, !dbg !1144
  call void @llvm.dbg.value(metadata double %14, metadata !1121, metadata !DIExpression()), !dbg !1123
  br label %15, !dbg !1145

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !1123
  ret double %16, !dbg !1146
}

; Function Attrs: nounwind
declare !dbg !1147 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1150 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1155, metadata !DIExpression()), !dbg !1156
  store i8* %0, i8** @file_name, align 8, !dbg !1157, !tbaa !689
  ret void, !dbg !1158
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1159 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1163, metadata !DIExpression()), !dbg !1164
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1165, !tbaa !1166
  ret void, !dbg !1168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1169 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1174, !tbaa !689
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1175
  %3 = icmp eq i32 %2, 0, !dbg !1176
  br i1 %3, label %22, label %4, !dbg !1177

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1178, !tbaa !1166, !range !1179
  %6 = icmp eq i8 %5, 0, !dbg !1178
  br i1 %6, label %11, label %7, !dbg !1180

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1181
  %9 = load i32, i32* %8, align 4, !dbg !1181, !tbaa !830
  %10 = icmp eq i32 %9, 32, !dbg !1182
  br i1 %10, label %22, label %11, !dbg !1183

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #28, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %12, metadata !1171, metadata !DIExpression()), !dbg !1185
  %13 = load i8*, i8** @file_name, align 8, !dbg !1186, !tbaa !689
  %14 = icmp eq i8* %13, null, !dbg !1186
  %15 = tail call i32* @__errno_location() #32, !dbg !1188
  %16 = load i32, i32* %15, align 4, !dbg !1188, !tbaa !830
  br i1 %14, label %19, label %17, !dbg !1189

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1190
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1191
  br label %20, !dbg !1191

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #28, !dbg !1192
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1193, !tbaa !830
  tail call void @_exit(i32 %21) #30, !dbg !1194
  unreachable, !dbg !1194

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1195, !tbaa !689
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1197
  %25 = icmp eq i32 %24, 0, !dbg !1198
  br i1 %25, label %28, label %26, !dbg !1199

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1200, !tbaa !830
  tail call void @_exit(i32 %27) #30, !dbg !1201
  unreachable, !dbg !1201

28:                                               ; preds = %22
  ret void, !dbg !1202
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @fprintftime(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, %struct.tm_zone* %3, i32 %4) local_unnamed_addr #8 !dbg !1203 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1264, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %1, metadata !1265, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1266, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata %struct.tm_zone* %3, metadata !1267, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %4, metadata !1268, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8 0, metadata !1269, metadata !DIExpression()), !dbg !1270
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, i32 0, i32 -1, %struct.tm_zone* %3, i32 %4), !dbg !1271
  ret i64 %6, !dbg !1272
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext %3, i32 %4, i32 %5, %struct.tm_zone* %6, i32 %7) unnamed_addr #8 !dbg !1273 {
  %9 = alloca [23 x i8], align 16
  %10 = alloca [5 x i8], align 1
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1278, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %1, metadata !1279, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !1280, metadata !DIExpression()), !dbg !1563
  %13 = zext i1 %3 to i8
  call void @llvm.dbg.value(metadata i8 %13, metadata !1281, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %4, metadata !1282, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %5, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* undef, metadata !1284, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !1285, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %7, metadata !1286, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 -1, metadata !1287, metadata !DIExpression()), !dbg !1563
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2, !dbg !1564
  %15 = load i32, i32* %14, align 8, !dbg !1564, !tbaa !1565
  call void @llvm.dbg.value(metadata i32 %15, metadata !1288, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1291, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* null, metadata !1289, metadata !DIExpression()), !dbg !1563
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10, !dbg !1567
  %17 = load i8*, i8** %16, align 8, !dbg !1567, !tbaa !1568
  call void @llvm.dbg.value(metadata i8* %17, metadata !1289, metadata !DIExpression()), !dbg !1563
  %18 = icmp eq i8* %17, null, !dbg !1569
  %19 = select i1 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i64 0, i64 0), i8* %17, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %19, metadata !1289, metadata !DIExpression()), !dbg !1563
  %20 = icmp sgt i32 %15, 12, !dbg !1572
  %21 = add nsw i32 %15, -12, !dbg !1574
  %22 = icmp eq i32 %15, 0, !dbg !1574
  %23 = select i1 %22, i32 12, i32 %15, !dbg !1574
  %24 = select i1 %20, i32 %21, i32 %23, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %24, metadata !1288, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %1, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %5, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  %25 = load i8, i8* %1, align 1, !dbg !1576, !tbaa !998
  %26 = icmp eq i8 %25, 0, !dbg !1577
  br i1 %26, label %1101, label %27, !dbg !1578

27:                                               ; preds = %8
  %28 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 0
  %29 = icmp eq %struct._IO_FILE* %0, null
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7
  %35 = bitcast %struct.tm* %12 to i8*
  %36 = bitcast %struct.tm* %2 to i8*
  %37 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 23
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  %42 = ptrtoint i8* %37 to i64
  %43 = icmp ne %struct._IO_FILE* %0, null
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 2
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 3
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 1
  br label %50, !dbg !1578

50:                                               ; preds = %27, %1095
  %51 = phi i8 [ %25, %27 ], [ %1099, %1095 ], !dbg !1579
  %52 = phi i32 [ %5, %27 ], [ -1, %1095 ]
  %53 = phi i64 [ 0, %27 ], [ %1097, %1095 ]
  %54 = phi i8* [ %1, %27 ], [ %1098, %1095 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %53, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %54, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 23, i8* nonnull %28) #28, !dbg !1580
  call void @llvm.dbg.declare(metadata [23 x i8]* %9, metadata !1306, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 0, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %13, metadata !1311, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1313, metadata !DIExpression()), !dbg !1575
  %55 = icmp eq i8 %51, 37, !dbg !1582
  br i1 %55, label %95, label %56, !dbg !1583

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 1, metadata !1316, metadata !DIExpression()), !dbg !1584
  %57 = icmp sgt i32 %52, 0, !dbg !1585
  %58 = select i1 %57, i32 %52, i32 0, !dbg !1585
  %59 = zext i32 %58 to i64, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %59, metadata !1320, metadata !DIExpression()), !dbg !1584
  %60 = icmp ugt i32 %58, 1, !dbg !1585
  %61 = select i1 %60, i32 %58, i32 1, !dbg !1585
  %62 = zext i32 %61 to i64, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %62, metadata !1321, metadata !DIExpression()), !dbg !1584
  %63 = xor i64 %53, -1, !dbg !1586
  %64 = icmp ult i64 %62, %63, !dbg !1586
  br i1 %64, label %65, label %1094, !dbg !1585

65:                                               ; preds = %56
  br i1 %29, label %66, label %68, !dbg !1585

66:                                               ; preds = %65
  %67 = add i64 %53, %62, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %83, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

68:                                               ; preds = %65
  %69 = add nsw i64 %59, -1
  %70 = icmp ne i64 %69, 0
  %71 = and i1 %60, %70, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %69, metadata !1322, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1330, metadata !DIExpression()), !dbg !1590
  br i1 %71, label %72, label %79, !dbg !1588

72:                                               ; preds = %68, %72
  %73 = phi i64 [ %75, %72 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !1330, metadata !DIExpression()), !dbg !1590
  %74 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1591
  %75 = add nuw i64 %73, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %75, metadata !1330, metadata !DIExpression()), !dbg !1590
  %76 = icmp eq i64 %75, %69, !dbg !1591
  br i1 %76, label %77, label %72, !dbg !1594, !llvm.loop !1595

77:                                               ; preds = %72
  %78 = load i8, i8* %54, align 1, !dbg !1588, !tbaa !998
  br label %79, !dbg !1588

79:                                               ; preds = %77, %68
  %80 = phi i8 [ %78, %77 ], [ %51, %68 ], !dbg !1588
  %81 = sext i8 %80 to i32, !dbg !1588
  %82 = call i32 @fputc(i32 %81, %struct._IO_FILE* nonnull %0), !dbg !1588
  %83 = add i64 %53, %62, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %83, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

84:                                               ; preds = %90, %91
  %85 = phi i32 [ %93, %91 ], [ %89, %90 ], !dbg !1575
  %86 = phi i8* [ %94, %91 ], [ %87, %90 ], !dbg !1596
  call void @llvm.dbg.value(metadata i8* %86, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %85, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %92, metadata !1311, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1313, metadata !DIExpression()), !dbg !1575
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1597
  call void @llvm.dbg.value(metadata i8* %87, metadata !1292, metadata !DIExpression()), !dbg !1563
  %88 = load i8, i8* %87, align 1, !dbg !1599, !tbaa !998
  %89 = sext i8 %88 to i32, !dbg !1599
  switch i32 %89, label %100 [
    i32 95, label %90
    i32 45, label %90
    i32 43, label %90
    i32 48, label %90
    i32 94, label %91
    i32 35, label %95
  ], !dbg !1600, !llvm.loop !1601

90:                                               ; preds = %84, %84, %84, %84
  br label %84, !dbg !1563

91:                                               ; preds = %84, %95
  %92 = phi i8 [ %97, %95 ], [ 1, %84 ]
  %93 = phi i32 [ %98, %95 ], [ %85, %84 ]
  %94 = phi i8* [ %99, %95 ], [ %87, %84 ]
  br label %84, !dbg !1602

95:                                               ; preds = %84, %50
  %96 = phi i1 [ true, %50 ], [ false, %84 ]
  %97 = phi i8 [ %13, %50 ], [ %92, %84 ]
  %98 = phi i32 [ 0, %50 ], [ %85, %84 ]
  %99 = phi i8* [ %54, %50 ], [ %87, %84 ]
  br label %91, !dbg !1602

100:                                              ; preds = %84
  %101 = sext i8 %88 to i32, !dbg !1599
  %102 = add nsw i32 %101, -48, !dbg !1604
  %103 = icmp ult i32 %102, 10, !dbg !1604
  br i1 %103, label %104, label %134, !dbg !1606

104:                                              ; preds = %100, %125
  %105 = phi i8 [ %128, %125 ], [ %88, %100 ]
  %106 = phi i8* [ %127, %125 ], [ %87, %100 ], !dbg !1575
  %107 = phi i32 [ %126, %125 ], [ 0, %100 ], !dbg !1607
  call void @llvm.dbg.value(metadata i32 %107, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %106, metadata !1292, metadata !DIExpression()), !dbg !1563
  %108 = icmp slt i32 %107, 0, !dbg !1609
  br i1 %108, label %109, label %115, !dbg !1609

109:                                              ; preds = %104
  %110 = icmp eq i32 %107, -1, !dbg !1609
  br i1 %110, label %117, label %111, !dbg !1609

111:                                              ; preds = %109
  %112 = sub i32 0, %107, !dbg !1609
  %113 = udiv i32 -2147483648, %112, !dbg !1609
  %114 = icmp slt i32 %113, 10, !dbg !1609
  br i1 %114, label %124, label %117, !dbg !1609

115:                                              ; preds = %104
  %116 = icmp sgt i32 %107, 214748364, !dbg !1609
  br i1 %116, label %124, label %117, !dbg !1609

117:                                              ; preds = %109, %115, %111
  %118 = mul i32 %107, 10, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %118, metadata !1283, metadata !DIExpression()), !dbg !1563
  %119 = sext i8 %105 to i32, !dbg !1612
  %120 = add nsw i32 %119, -48, !dbg !1612
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 %120), !dbg !1612
  %122 = extractvalue { i32, i1 } %121, 1, !dbg !1612
  %123 = extractvalue { i32, i1 } %121, 0, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %123, metadata !1283, metadata !DIExpression()), !dbg !1563
  br i1 %122, label %124, label %125, !dbg !1613

124:                                              ; preds = %111, %115, %117
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1283, metadata !DIExpression()), !dbg !1563
  br label %125, !dbg !1614

125:                                              ; preds = %124, %117
  %126 = phi i32 [ 2147483647, %124 ], [ %123, %117 ], !dbg !1615
  call void @llvm.dbg.value(metadata i32 %126, metadata !1283, metadata !DIExpression()), !dbg !1563
  %127 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %127, metadata !1292, metadata !DIExpression()), !dbg !1563
  %128 = load i8, i8* %127, align 1, !dbg !1617, !tbaa !998
  %129 = sext i8 %128 to i32, !dbg !1617
  %130 = add nsw i32 %129, -48, !dbg !1617
  %131 = icmp ult i32 %130, 10, !dbg !1617
  br i1 %131, label %104, label %132, !dbg !1618, !llvm.loop !1619

132:                                              ; preds = %125
  %133 = sext i8 %128 to i32, !dbg !1617
  br label %134, !dbg !1622

134:                                              ; preds = %132, %100
  %135 = phi i32 [ %101, %100 ], [ %133, %132 ], !dbg !1623
  %136 = phi i8 [ %88, %100 ], [ %128, %132 ], !dbg !1623
  %137 = phi i8* [ %87, %100 ], [ %127, %132 ], !dbg !1575
  %138 = phi i32 [ %52, %100 ], [ %126, %132 ]
  call void @llvm.dbg.value(metadata i32 %138, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %137, metadata !1292, metadata !DIExpression()), !dbg !1563
  switch i32 %135, label %142 [
    i32 69, label %139
    i32 79, label %139
  ], !dbg !1622

139:                                              ; preds = %134, %134
  %140 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %140, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %135, metadata !1297, metadata !DIExpression()), !dbg !1575
  %141 = load i8, i8* %140, align 1, !dbg !1626, !tbaa !998
  br label %142, !dbg !1627

142:                                              ; preds = %134, %139
  %143 = phi i8 [ %141, %139 ], [ %136, %134 ], !dbg !1626
  %144 = phi i32 [ %135, %139 ], [ 0, %134 ], !dbg !1628
  %145 = phi i8* [ %140, %139 ], [ %137, %134 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8* %145, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %144, metadata !1297, metadata !DIExpression()), !dbg !1575
  %146 = sext i8 %143 to i32, !dbg !1626
  call void @llvm.dbg.value(metadata i32 %146, metadata !1314, metadata !DIExpression()), !dbg !1575
  switch i32 %146, label %1031 [
    i32 37, label %147
    i32 97, label %184
    i32 65, label %188
    i32 98, label %192
    i32 104, label %192
    i32 66, label %195
    i32 99, label %199
    i32 67, label %330
    i32 120, label %343
    i32 68, label %345
    i32 100, label %347
    i32 101, label %351
    i32 70, label %520
    i32 72, label %531
    i32 73, label %535
    i32 107, label %537
    i32 108, label %541
    i32 106, label %543
    i32 77, label %550
    i32 109, label %554
    i32 78, label %561
    i32 110, label %679
    i32 80, label %715
    i32 112, label %716
    i32 113, label %721
    i32 82, label %201
    i32 114, label %242
    i32 83, label %726
    i32 115, label %730
    i32 88, label %753
    i32 84, label %755
    i32 116, label %756
    i32 117, label %792
    i32 85, label %797
    i32 86, label %805
    i32 103, label %805
    i32 71, label %805
    i32 87, label %885
    i32 119, label %895
    i32 89, label %899
    i32 121, label %904
    i32 90, label %915
    i32 58, label %985
    i32 122, label %993
    i32 0, label %1029
  ], !dbg !1629

147:                                              ; preds = %142
  %148 = icmp eq i32 %144, 0, !dbg !1630
  br i1 %148, label %149, label %1031, !dbg !1632

149:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i64 1, metadata !1332, metadata !DIExpression()), !dbg !1633
  %150 = icmp eq i32 %85, 45, !dbg !1634
  %151 = icmp slt i32 %138, 0, !dbg !1634
  %152 = or i1 %150, %151, !dbg !1634
  %153 = sext i32 %138 to i64, !dbg !1634
  %154 = select i1 %152, i64 0, i64 %153, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %154, metadata !1335, metadata !DIExpression()), !dbg !1633
  %155 = icmp ugt i64 %154, 1, !dbg !1634
  %156 = select i1 %155, i64 %154, i64 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %156, metadata !1336, metadata !DIExpression()), !dbg !1633
  %157 = xor i64 %53, -1, !dbg !1635
  %158 = icmp ult i64 %156, %157, !dbg !1635
  br i1 %158, label %159, label %1094, !dbg !1634

159:                                              ; preds = %149
  br i1 %29, label %160, label %162, !dbg !1634

160:                                              ; preds = %159
  %161 = add i64 %156, %53, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %183, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

162:                                              ; preds = %159
  br i1 %155, label %163, label %179, !dbg !1637

163:                                              ; preds = %162
  %164 = add nsw i64 %154, -1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %164, metadata !1337, metadata !DIExpression()), !dbg !1639
  switch i32 %85, label %165 [
    i32 48, label %167
    i32 43, label %167
  ], !dbg !1640

165:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i64 0, metadata !1345, metadata !DIExpression()), !dbg !1641
  %166 = icmp eq i64 %164, 0, !dbg !1642
  br i1 %166, label %179, label %174, !dbg !1645

167:                                              ; preds = %163, %163
  call void @llvm.dbg.value(metadata i64 0, metadata !1342, metadata !DIExpression()), !dbg !1646
  %168 = icmp eq i64 %164, 0, !dbg !1647
  br i1 %168, label %179, label %169, !dbg !1650

169:                                              ; preds = %167, %169
  %170 = phi i64 [ %172, %169 ], [ 0, %167 ]
  call void @llvm.dbg.value(metadata i64 %170, metadata !1342, metadata !DIExpression()), !dbg !1646
  %171 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1647
  %172 = add nuw i64 %170, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %172, metadata !1342, metadata !DIExpression()), !dbg !1646
  %173 = icmp eq i64 %172, %164, !dbg !1647
  br i1 %173, label %179, label %169, !dbg !1650, !llvm.loop !1651

174:                                              ; preds = %165, %174
  %175 = phi i64 [ %177, %174 ], [ 0, %165 ]
  call void @llvm.dbg.value(metadata i64 %175, metadata !1345, metadata !DIExpression()), !dbg !1641
  %176 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1642
  %177 = add nuw i64 %175, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %177, metadata !1345, metadata !DIExpression()), !dbg !1641
  %178 = icmp eq i64 %177, %164, !dbg !1642
  br i1 %178, label %179, label %174, !dbg !1645, !llvm.loop !1652

179:                                              ; preds = %169, %174, %167, %165, %162
  %180 = load i8, i8* %145, align 1, !dbg !1637, !tbaa !998
  %181 = sext i8 %180 to i32, !dbg !1637
  %182 = call i32 @fputc(i32 %181, %struct._IO_FILE* nonnull %0), !dbg !1637
  %183 = add i64 %156, %53, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %183, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

184:                                              ; preds = %142
  %185 = icmp eq i32 %144, 0, !dbg !1653
  br i1 %185, label %186, label %1031, !dbg !1655

186:                                              ; preds = %184
  %187 = select i1 %96, i8 %92, i8 1, !dbg !1656
  br label %242, !dbg !1656

188:                                              ; preds = %142
  %189 = icmp eq i32 %144, 0, !dbg !1657
  br i1 %189, label %190, label %1031, !dbg !1659

190:                                              ; preds = %188
  %191 = select i1 %96, i8 %92, i8 1, !dbg !1660
  br label %242, !dbg !1660

192:                                              ; preds = %142, %142
  %193 = select i1 %96, i8 %92, i8 1, !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %193, metadata !1311, metadata !DIExpression()), !dbg !1575
  %194 = icmp eq i32 %144, 69, !dbg !1662
  br i1 %194, label %1031, label %242, !dbg !1664

195:                                              ; preds = %142
  %196 = icmp eq i32 %144, 69, !dbg !1665
  br i1 %196, label %1031, label %197, !dbg !1667

197:                                              ; preds = %195
  %198 = select i1 %96, i8 %92, i8 1, !dbg !1668
  br label %242, !dbg !1668

199:                                              ; preds = %142
  %200 = icmp eq i32 %144, 79, !dbg !1669
  br i1 %200, label %1031, label %242, !dbg !1671

201:                                              ; preds = %142, %522, %345, %755
  %202 = phi i32 [ -1, %755 ], [ -1, %345 ], [ %529, %522 ], [ -1, %142 ], !dbg !1672
  %203 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.61, i64 0, i64 0), %755 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.62, i64 0, i64 0), %345 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.63, i64 0, i64 0), %522 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.64, i64 0, i64 0), %142 ], !dbg !1672
  %204 = phi i32 [ %85, %755 ], [ %85, %345 ], [ %530, %522 ], [ %85, %142 ], !dbg !1575
  call void @llvm.dbg.value(metadata i32 %204, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %203, metadata !1304, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %202, metadata !1315, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1548), !dbg !1673
  %205 = icmp ne i8 %92, 0, !dbg !1674
  %206 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %203, %struct.tm* %2, i1 zeroext %205, i32 %204, i32 %202, %struct.tm_zone* %6, i32 %7), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %206, metadata !1347, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %206, metadata !1349, metadata !DIExpression()), !dbg !1677
  %207 = icmp eq i32 %204, 45, !dbg !1678
  %208 = icmp slt i32 %138, 0, !dbg !1678
  %209 = or i1 %208, %207, !dbg !1678
  %210 = sext i32 %138 to i64, !dbg !1678
  %211 = select i1 %209, i64 0, i64 %210, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %211, metadata !1351, metadata !DIExpression()), !dbg !1677
  %212 = icmp ugt i64 %211, %206, !dbg !1678
  %213 = select i1 %212, i64 %211, i64 %206, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %213, metadata !1352, metadata !DIExpression()), !dbg !1677
  %214 = xor i64 %53, -1, !dbg !1679
  %215 = icmp ult i64 %213, %214, !dbg !1679
  br i1 %215, label %216, label %1094, !dbg !1678

216:                                              ; preds = %201
  br i1 %29, label %217, label %219, !dbg !1678

217:                                              ; preds = %216
  %218 = add i64 %213, %53, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %241, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

219:                                              ; preds = %216
  br i1 %212, label %223, label %220, !dbg !1681

220:                                              ; preds = %219
  %221 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* nonnull %0, i8* %203, %struct.tm* %2, i1 zeroext %205, i32 %204, i32 %202, %struct.tm_zone* %6, i32 %7), !dbg !1681
  %222 = add i64 %213, %53, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %241, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

223:                                              ; preds = %219
  %224 = sub i64 %211, %206, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %224, metadata !1353, metadata !DIExpression()), !dbg !1683
  switch i32 %204, label %225 [
    i32 48, label %227
    i32 43, label %227
  ], !dbg !1684

225:                                              ; preds = %223
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()), !dbg !1685
  %226 = icmp eq i64 %224, 0, !dbg !1686
  br i1 %226, label %239, label %234, !dbg !1689

227:                                              ; preds = %223, %223
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()), !dbg !1690
  %228 = icmp eq i64 %224, 0, !dbg !1691
  br i1 %228, label %239, label %229, !dbg !1694

229:                                              ; preds = %227, %229
  %230 = phi i64 [ %232, %229 ], [ 0, %227 ]
  call void @llvm.dbg.value(metadata i64 %230, metadata !1358, metadata !DIExpression()), !dbg !1690
  %231 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1691
  %232 = add nuw i64 %230, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %232, metadata !1358, metadata !DIExpression()), !dbg !1690
  %233 = icmp eq i64 %232, %224, !dbg !1691
  br i1 %233, label %239, label %229, !dbg !1694, !llvm.loop !1695

234:                                              ; preds = %225, %234
  %235 = phi i64 [ %237, %234 ], [ 0, %225 ]
  call void @llvm.dbg.value(metadata i64 %235, metadata !1361, metadata !DIExpression()), !dbg !1685
  %236 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1686
  %237 = add nuw i64 %235, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %237, metadata !1361, metadata !DIExpression()), !dbg !1685
  %238 = icmp eq i64 %237, %224, !dbg !1686
  br i1 %238, label %239, label %234, !dbg !1689, !llvm.loop !1696

239:                                              ; preds = %229, %234, %227, %225
  %240 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* nonnull %0, i8* %203, %struct.tm* %2, i1 zeroext %205, i32 %204, i32 %202, %struct.tm_zone* %6, i32 %7), !dbg !1681
  %241 = add i64 %213, %53, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %241, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

242:                                              ; preds = %716, %197, %190, %186, %899, %378, %904, %753, %142, %343, %330, %199, %192
  %243 = phi i8 [ 121, %904 ], [ 89, %899 ], [ 88, %753 ], [ 114, %142 ], [ %143, %343 ], [ 67, %330 ], [ 99, %199 ], [ %143, %192 ], [ 97, %186 ], [ 65, %190 ], [ 66, %197 ], [ %143, %378 ], [ 112, %716 ], !dbg !1697
  %244 = phi i8 [ %92, %904 ], [ %92, %899 ], [ %92, %753 ], [ %92, %142 ], [ %92, %343 ], [ %92, %330 ], [ %92, %199 ], [ %193, %192 ], [ %187, %186 ], [ %191, %190 ], [ %198, %197 ], [ %92, %378 ], [ %718, %716 ], !dbg !1575
  %245 = phi i1 [ false, %904 ], [ false, %899 ], [ false, %753 ], [ false, %142 ], [ false, %343 ], [ false, %330 ], [ false, %199 ], [ false, %192 ], [ false, %186 ], [ false, %190 ], [ false, %197 ], [ false, %378 ], [ %720, %716 ], !dbg !1575
  %246 = phi i32 [ %85, %904 ], [ %85, %899 ], [ %85, %753 ], [ %85, %142 ], [ %85, %343 ], [ %85, %330 ], [ %85, %199 ], [ %85, %192 ], [ %85, %186 ], [ %85, %190 ], [ %85, %197 ], [ %384, %378 ], [ %85, %716 ], !dbg !1698
  %247 = phi i8* [ %145, %904 ], [ %145, %899 ], [ %145, %753 ], [ %145, %142 ], [ %145, %343 ], [ %145, %330 ], [ %145, %199 ], [ %145, %192 ], [ %145, %186 ], [ %145, %190 ], [ %145, %197 ], [ %385, %378 ], [ %145, %716 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8* %247, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %246, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %244, metadata !1311, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1314, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1549), !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %44) #28, !dbg !1700
  call void @llvm.dbg.declare(metadata [5 x i8]* %10, metadata !1363, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %44, metadata !1368, metadata !DIExpression()), !dbg !1702
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %45) #28, !dbg !1703
  call void @llvm.dbg.declare(metadata [1024 x i8]* %11, metadata !1369, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %46, metadata !1368, metadata !DIExpression()), !dbg !1702
  store i8 32, i8* %44, align 1, !dbg !1705, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %47, metadata !1368, metadata !DIExpression()), !dbg !1702
  store i8 37, i8* %46, align 1, !dbg !1706, !tbaa !998
  %248 = icmp eq i32 %144, 0, !dbg !1707
  br i1 %248, label %251, label %249, !dbg !1709

249:                                              ; preds = %242
  %250 = trunc i32 %144 to i8, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %48, metadata !1368, metadata !DIExpression()), !dbg !1702
  store i8 %250, i8* %47, align 1, !dbg !1711, !tbaa !998
  br label %251, !dbg !1712

251:                                              ; preds = %249, %242
  %252 = phi i8* [ %48, %249 ], [ %47, %242 ], !dbg !1702
  call void @llvm.dbg.value(metadata i8* %252, metadata !1368, metadata !DIExpression()), !dbg !1702
  %253 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !1713
  call void @llvm.dbg.value(metadata i8* %253, metadata !1368, metadata !DIExpression()), !dbg !1702
  store i8 %243, i8* %252, align 1, !dbg !1714, !tbaa !998
  store i8 0, i8* %253, align 1, !dbg !1715, !tbaa !998
  %254 = call i64 @strftime(i8* nonnull %45, i64 1024, i8* nonnull %44, %struct.tm* %2) #28, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %254, metadata !1373, metadata !DIExpression()), !dbg !1702
  %255 = icmp eq i64 %254, 0, !dbg !1717
  br i1 %255, label %328, label %256, !dbg !1718

256:                                              ; preds = %251
  %257 = add i64 %254, -1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %257, metadata !1374, metadata !DIExpression()), !dbg !1720
  %258 = icmp eq i32 %246, 45, !dbg !1719
  %259 = icmp slt i32 %138, 0, !dbg !1719
  %260 = or i1 %259, %258, !dbg !1719
  %261 = sext i32 %138 to i64, !dbg !1719
  %262 = select i1 %260, i64 0, i64 %261, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %262, metadata !1377, metadata !DIExpression()), !dbg !1720
  %263 = icmp ugt i64 %262, %257, !dbg !1719
  %264 = select i1 %263, i64 %262, i64 %257, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %264, metadata !1378, metadata !DIExpression()), !dbg !1720
  %265 = xor i64 %53, -1, !dbg !1721
  %266 = icmp ult i64 %264, %265, !dbg !1721
  br i1 %266, label %267, label %327, !dbg !1719

267:                                              ; preds = %256
  br i1 %29, label %268, label %270, !dbg !1719

268:                                              ; preds = %267
  %269 = add i64 %264, %53, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %326, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %328

270:                                              ; preds = %267
  br i1 %263, label %271, label %287, !dbg !1723

271:                                              ; preds = %270
  %272 = sub i64 %262, %257, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %272, metadata !1379, metadata !DIExpression()), !dbg !1725
  switch i32 %246, label %273 [
    i32 48, label %275
    i32 43, label %275
  ], !dbg !1726

273:                                              ; preds = %271
  call void @llvm.dbg.value(metadata i64 0, metadata !1387, metadata !DIExpression()), !dbg !1727
  %274 = icmp eq i64 %272, 0, !dbg !1728
  br i1 %274, label %287, label %282, !dbg !1731

275:                                              ; preds = %271, %271
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1732
  %276 = icmp eq i64 %272, 0, !dbg !1733
  br i1 %276, label %287, label %277, !dbg !1736

277:                                              ; preds = %275, %277
  %278 = phi i64 [ %280, %277 ], [ 0, %275 ]
  call void @llvm.dbg.value(metadata i64 %278, metadata !1384, metadata !DIExpression()), !dbg !1732
  %279 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1733
  %280 = add nuw i64 %278, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %280, metadata !1384, metadata !DIExpression()), !dbg !1732
  %281 = icmp eq i64 %280, %272, !dbg !1733
  br i1 %281, label %287, label %277, !dbg !1736, !llvm.loop !1737

282:                                              ; preds = %273, %282
  %283 = phi i64 [ %285, %282 ], [ 0, %273 ]
  call void @llvm.dbg.value(metadata i64 %283, metadata !1387, metadata !DIExpression()), !dbg !1727
  %284 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1728
  %285 = add nuw i64 %283, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %285, metadata !1387, metadata !DIExpression()), !dbg !1727
  %286 = icmp eq i64 %285, %272, !dbg !1728
  br i1 %286, label %287, label %282, !dbg !1731, !llvm.loop !1738

287:                                              ; preds = %277, %282, %275, %273, %270
  br i1 %245, label %288, label %304, !dbg !1739

288:                                              ; preds = %287
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1741, metadata !DIExpression()) #28, !dbg !1751
  call void @llvm.dbg.value(metadata [1024 x i8]* %11, metadata !1746, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #28, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %257, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1751
  %289 = icmp eq i64 %257, 0, !dbg !1754
  br i1 %289, label %325, label %290, !dbg !1755

290:                                              ; preds = %288
  call void @llvm.dbg.value(metadata i8* %49, metadata !1746, metadata !DIExpression()) #28, !dbg !1751
  %291 = tail call i32** @__ctype_tolower_loc() #32, !dbg !1751
  br label %292, !dbg !1755

292:                                              ; preds = %292, %290
  %293 = phi i8* [ %49, %290 ], [ %302, %292 ]
  %294 = phi i64 [ %257, %290 ], [ %295, %292 ]
  call void @llvm.dbg.value(metadata i8* %293, metadata !1746, metadata !DIExpression()) #28, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %294, metadata !1747, metadata !DIExpression()) #28, !dbg !1751
  %295 = add i64 %294, -1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %295, metadata !1747, metadata !DIExpression()) #28, !dbg !1751
  %296 = load i32*, i32** %291, align 8, !dbg !1757, !tbaa !689
  %297 = load i8, i8* %293, align 1, !dbg !1757, !tbaa !998
  %298 = zext i8 %297 to i64, !dbg !1757
  %299 = getelementptr inbounds i32, i32* %296, i64 %298, !dbg !1757
  %300 = load i32, i32* %299, align 4, !dbg !1757, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %300, metadata !1748, metadata !DIExpression()) #28, !dbg !1759
  %301 = call i32 @fputc(i32 %300, %struct._IO_FILE* nonnull %0) #28, !dbg !1760
  %302 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %302, metadata !1746, metadata !DIExpression()) #28, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %295, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1751
  %303 = icmp eq i64 %295, 0, !dbg !1754
  br i1 %303, label %325, label %292, !dbg !1755, !llvm.loop !1762

304:                                              ; preds = %287
  %305 = and i8 %244, 1, !dbg !1764
  %306 = icmp eq i8 %305, 0, !dbg !1764
  br i1 %306, label %323, label %307, !dbg !1766

307:                                              ; preds = %304
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1767, metadata !DIExpression()) #28, !dbg !1775
  call void @llvm.dbg.value(metadata [1024 x i8]* %11, metadata !1770, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #28, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %257, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1775
  %308 = icmp eq i64 %257, 0, !dbg !1777
  br i1 %308, label %325, label %309, !dbg !1778

309:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i8* %49, metadata !1770, metadata !DIExpression()) #28, !dbg !1775
  %310 = tail call i32** @__ctype_toupper_loc() #32, !dbg !1775
  br label %311, !dbg !1778

311:                                              ; preds = %311, %309
  %312 = phi i8* [ %49, %309 ], [ %321, %311 ]
  %313 = phi i64 [ %257, %309 ], [ %314, %311 ]
  call void @llvm.dbg.value(metadata i8* %312, metadata !1770, metadata !DIExpression()) #28, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %313, metadata !1771, metadata !DIExpression()) #28, !dbg !1775
  %314 = add i64 %313, -1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %314, metadata !1771, metadata !DIExpression()) #28, !dbg !1775
  %315 = load i32*, i32** %310, align 8, !dbg !1780, !tbaa !689
  %316 = load i8, i8* %312, align 1, !dbg !1780, !tbaa !998
  %317 = zext i8 %316 to i64, !dbg !1780
  %318 = getelementptr inbounds i32, i32* %315, i64 %317, !dbg !1780
  %319 = load i32, i32* %318, align 4, !dbg !1780, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %319, metadata !1772, metadata !DIExpression()) #28, !dbg !1782
  %320 = call i32 @fputc(i32 %319, %struct._IO_FILE* nonnull %0) #28, !dbg !1783
  %321 = getelementptr inbounds i8, i8* %312, i64 1, !dbg !1784
  call void @llvm.dbg.value(metadata i8* %321, metadata !1770, metadata !DIExpression()) #28, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %314, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1775
  %322 = icmp eq i64 %314, 0, !dbg !1777
  br i1 %322, label %325, label %311, !dbg !1778, !llvm.loop !1785

323:                                              ; preds = %304
  %324 = call i64 @fwrite(i8* nonnull %49, i64 %257, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1787
  br label %325

325:                                              ; preds = %311, %292, %323, %288, %307
  %326 = add i64 %264, %53, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %326, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %328

327:                                              ; preds = %256
  call void @llvm.dbg.value(metadata i64 %329, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %45) #28, !dbg !1789
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %44) #28, !dbg !1789
  br label %1094

328:                                              ; preds = %325, %251, %268
  %329 = phi i64 [ %326, %325 ], [ %53, %251 ], [ %269, %268 ], !dbg !1790
  call void @llvm.dbg.value(metadata i64 %329, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %45) #28, !dbg !1789
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %44) #28, !dbg !1789
  br label %1095

330:                                              ; preds = %142
  %331 = icmp eq i32 %144, 69, !dbg !1791
  br i1 %331, label %242, label %332, !dbg !1793

332:                                              ; preds = %330
  %333 = load i32, i32* %32, align 4, !dbg !1794, !tbaa !1795
  %334 = icmp slt i32 %333, -1900, !dbg !1796
  call void @llvm.dbg.value(metadata i1 %334, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1797
  %335 = xor i1 %334, true, !dbg !1798
  %336 = zext i1 %335 to i32, !dbg !1798
  %337 = lshr i32 %333, 31, !dbg !1799
  %338 = and i32 %337, %336, !dbg !1800
  call void @llvm.dbg.value(metadata i1 undef, metadata !1391, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1797
  %339 = mul nuw nsw i32 %338, -99, !dbg !1801
  %340 = add i32 %339, %333, !dbg !1802
  %341 = sdiv i32 %340, 100, !dbg !1803
  %342 = add nsw i32 %341, 19, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %342, metadata !1392, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i1 %334, metadata !1301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %342, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %355

343:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  %344 = icmp eq i32 %144, 79, !dbg !1805
  br i1 %344, label %1031, label %242, !dbg !1807

345:                                              ; preds = %142
  %346 = icmp eq i32 %144, 0, !dbg !1808
  br i1 %346, label %201, label %1031, !dbg !1810

347:                                              ; preds = %142
  %348 = icmp eq i32 %144, 69, !dbg !1811
  br i1 %348, label %1031, label %349, !dbg !1813

349:                                              ; preds = %347
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %350 = load i32, i32* %41, align 4, !dbg !1814, !tbaa !1816
  call void @llvm.dbg.value(metadata i32 %350, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !1814

351:                                              ; preds = %142
  %352 = icmp eq i32 %144, 69, !dbg !1817
  br i1 %352, label %1031, label %353, !dbg !1819

353:                                              ; preds = %351
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %354 = load i32, i32* %41, align 4, !dbg !1820, !tbaa !1816
  call void @llvm.dbg.value(metadata i32 %354, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %368, !dbg !1820

355:                                              ; preds = %871, %864, %877, %906, %332, %900
  %356 = phi i1 [ %902, %900 ], [ %334, %332 ], [ false, %906 ], [ false, %871 ], [ false, %864 ], [ %879, %877 ]
  %357 = phi i32 [ %903, %900 ], [ %342, %332 ], [ %914, %906 ], [ %876, %871 ], [ %869, %864 ], [ %881, %877 ]
  %358 = phi i32 [ 9999, %900 ], [ 99, %332 ], [ 99, %906 ], [ 99, %871 ], [ 99, %864 ], [ 9999, %877 ]
  %359 = phi i32 [ 4, %900 ], [ 2, %332 ], [ 2, %906 ], [ 2, %871 ], [ 2, %864 ], [ 4, %877 ], !dbg !1672
  %360 = zext i1 %356 to i8
  call void @llvm.dbg.value(metadata i32 %359, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %357, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %360, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1551), !dbg !1822
  %361 = icmp eq i32 %85, 0, !dbg !1823
  %362 = select i1 %361, i32 %4, i32 %85, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %362, metadata !1293, metadata !DIExpression()), !dbg !1575
  %363 = icmp eq i32 %362, 43, !dbg !1826
  br i1 %363, label %364, label %378, !dbg !1827

364:                                              ; preds = %355
  %365 = icmp ult i32 %358, %357, !dbg !1828
  %366 = icmp slt i32 %359, %138, !dbg !1829
  %367 = or i1 %365, %366, !dbg !1829
  br label %378, !dbg !1829

368:                                              ; preds = %541, %539, %353
  %369 = phi i32 [ %540, %539 ], [ %354, %353 ], [ %24, %541 ], !dbg !1672
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %369, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1552), !dbg !1830
  %370 = icmp eq i32 %85, 0, !dbg !1831
  %371 = select i1 %370, i32 95, i32 %85, !dbg !1833
  br label %372, !dbg !1833

372:                                              ; preds = %882, %368, %535, %897, %887, %799, %792, %728, %552, %533, %349
  %373 = phi i32 [ %898, %897 ], [ %894, %887 ], [ %884, %882 ], [ %804, %799 ], [ %796, %792 ], [ %729, %728 ], [ %553, %552 ], [ %534, %533 ], [ %350, %349 ], [ %369, %368 ], [ %24, %535 ], !dbg !1672
  %374 = phi i32 [ 1, %897 ], [ 2, %887 ], [ 2, %882 ], [ 2, %799 ], [ 1, %792 ], [ 2, %728 ], [ 2, %552 ], [ 2, %533 ], [ 2, %349 ], [ 2, %368 ], [ 2, %535 ], !dbg !1672
  %375 = phi i32 [ %85, %897 ], [ %85, %887 ], [ %85, %882 ], [ %85, %799 ], [ %85, %792 ], [ %85, %728 ], [ %85, %552 ], [ %85, %533 ], [ %85, %349 ], [ %371, %368 ], [ %85, %535 ], !dbg !1575
  call void @llvm.dbg.value(metadata i32 %375, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %374, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %373, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1553), !dbg !1834
  %376 = lshr i32 %373, 31, !dbg !1835
  %377 = trunc i32 %376 to i8, !dbg !1835
  call void @llvm.dbg.value(metadata i8 %377, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %373, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !1836

378:                                              ; preds = %1027, %1014, %1017, %1020, %364, %355, %721, %556, %545, %372
  %379 = phi i32 [ 0, %372 ], [ 0, %545 ], [ 0, %556 ], [ 0, %721 ], [ 0, %355 ], [ 0, %364 ], [ 0, %1027 ], [ 0, %1014 ], [ 4, %1017 ], [ 20, %1020 ]
  %380 = phi i1 [ false, %372 ], [ false, %545 ], [ false, %556 ], [ false, %721 ], [ false, %355 ], [ %367, %364 ], [ true, %1027 ], [ true, %1014 ], [ true, %1017 ], [ true, %1020 ], !dbg !1672
  %381 = phi i8 [ %377, %372 ], [ %548, %545 ], [ %559, %556 ], [ 0, %721 ], [ %360, %355 ], [ %360, %364 ], [ %1009, %1027 ], [ %1009, %1014 ], [ %1009, %1017 ], [ %1009, %1020 ], !dbg !1672
  %382 = phi i32 [ %373, %372 ], [ %549, %545 ], [ %560, %556 ], [ %725, %721 ], [ %357, %355 ], [ %357, %364 ], [ %1011, %1027 ], [ %1016, %1014 ], [ %1019, %1017 ], [ %1024, %1020 ]
  %383 = phi i32 [ %374, %372 ], [ 3, %545 ], [ 2, %556 ], [ 1, %721 ], [ %359, %355 ], [ %359, %364 ], [ 3, %1027 ], [ 5, %1014 ], [ 6, %1017 ], [ 9, %1020 ], !dbg !1575
  %384 = phi i32 [ %375, %372 ], [ %85, %545 ], [ %85, %556 ], [ %85, %721 ], [ %362, %355 ], [ 43, %364 ], [ %85, %1027 ], [ %85, %1014 ], [ %85, %1017 ], [ %85, %1020 ], !dbg !1575
  %385 = phi i8* [ %145, %372 ], [ %145, %545 ], [ %145, %556 ], [ %145, %721 ], [ %145, %355 ], [ %145, %364 ], [ %995, %1027 ], [ %995, %1014 ], [ %995, %1017 ], [ %995, %1020 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8* %385, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %384, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %383, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %382, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %381, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1302, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %379, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1556), !dbg !1837
  %386 = icmp eq i32 %144, 79, !dbg !1838
  %387 = icmp eq i8 %381, 0
  %388 = and i1 %386, %387, !dbg !1840
  br i1 %388, label %242, label %389, !dbg !1840

389:                                              ; preds = %378
  call void @llvm.dbg.value(metadata i8* %37, metadata !1305, metadata !DIExpression()), !dbg !1575
  %390 = sub i32 0, %382
  %391 = select i1 %387, i32 %382, i32 %390, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %391, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %392, !dbg !1842

392:                                              ; preds = %400, %389
  %393 = phi i8* [ %37, %389 ], [ %406, %400 ], !dbg !1672
  %394 = phi i32 [ %379, %389 ], [ %402, %400 ]
  %395 = phi i32 [ %391, %389 ], [ %407, %400 ], !dbg !1672
  call void @llvm.dbg.value(metadata i32 %395, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %394, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %393, metadata !1305, metadata !DIExpression()), !dbg !1575
  %396 = and i32 %394, 1, !dbg !1843
  %397 = icmp eq i32 %396, 0, !dbg !1843
  br i1 %397, label %400, label %398, !dbg !1846

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, i8* %393, i64 -1, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %399, metadata !1305, metadata !DIExpression()), !dbg !1575
  store i8 58, i8* %399, align 1, !dbg !1848, !tbaa !998
  br label %400, !dbg !1849

400:                                              ; preds = %398, %392
  %401 = phi i8* [ %399, %398 ], [ %393, %392 ], !dbg !1672
  call void @llvm.dbg.value(metadata i8* %401, metadata !1305, metadata !DIExpression()), !dbg !1575
  %402 = ashr i32 %394, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %402, metadata !1303, metadata !DIExpression()), !dbg !1575
  %403 = urem i32 %395, 10, !dbg !1851
  %404 = trunc i32 %403 to i8, !dbg !1852
  %405 = or i8 %404, 48, !dbg !1852
  %406 = getelementptr inbounds i8, i8* %401, i64 -1, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %406, metadata !1305, metadata !DIExpression()), !dbg !1575
  store i8 %405, i8* %406, align 1, !dbg !1854, !tbaa !998
  %407 = udiv i32 %395, 10, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %407, metadata !1300, metadata !DIExpression()), !dbg !1575
  %408 = icmp ugt i32 %395, 9, !dbg !1856
  %409 = icmp ne i32 %402, 0, !dbg !1857
  %410 = or i1 %408, %409, !dbg !1857
  br i1 %410, label %392, label %411, !dbg !1858, !llvm.loop !1859

411:                                              ; preds = %400
  call void @llvm.dbg.value(metadata i8* %385, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %384, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %383, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %381, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1302, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %406, metadata !1305, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1557), !dbg !1861
  %412 = icmp eq i32 %384, 0, !dbg !1862
  %413 = select i1 %412, i32 48, i32 %384, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %413, metadata !1293, metadata !DIExpression()), !dbg !1575
  %414 = icmp slt i32 %138, 0, !dbg !1865
  %415 = select i1 %414, i32 %383, i32 %138, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %415, metadata !1283, metadata !DIExpression()), !dbg !1563
  %416 = select i1 %380, i8 43, i8 0
  br label %417

417:                                              ; preds = %411, %747
  %418 = phi i8 [ %381, %411 ], [ %748, %747 ], !dbg !1868
  %419 = phi i32 [ %415, %411 ], [ %752, %747 ]
  %420 = phi i32 [ %413, %411 ], [ %750, %747 ]
  %421 = phi i8* [ %385, %411 ], [ %145, %747 ]
  %422 = phi i8* [ %406, %411 ], [ %744, %747 ]
  %423 = phi i8 [ %416, %411 ], [ 0, %747 ]
  %424 = icmp eq i8 %418, 0, !dbg !1868
  %425 = select i1 %424, i8 %423, i8 45, !dbg !1868
  call void @llvm.dbg.value(metadata i8 %425, metadata !1393, metadata !DIExpression()), !dbg !1869
  %426 = ptrtoint i8* %422 to i64, !dbg !1870
  %427 = sub i64 %42, %426, !dbg !1870
  %428 = trunc i64 %427 to i32, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %428, metadata !1395, metadata !DIExpression()), !dbg !1869
  %429 = icmp ne i8 %425, 0, !dbg !1872
  %430 = sext i1 %429 to i32, !dbg !1873
  %431 = sub i32 %419, %428, !dbg !1874
  %432 = add i32 %431, %430, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %432, metadata !1396, metadata !DIExpression()), !dbg !1869
  %433 = icmp eq i32 %420, 45, !dbg !1876
  %434 = icmp slt i32 %432, 1
  %435 = or i1 %433, %434, !dbg !1877
  %436 = select i1 %435, i32 0, i32 %432, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %436, metadata !1397, metadata !DIExpression()), !dbg !1869
  br i1 %429, label %437, label %465, !dbg !1878

437:                                              ; preds = %417
  %438 = icmp eq i32 %420, 95, !dbg !1879
  br i1 %438, label %439, label %454, !dbg !1880

439:                                              ; preds = %437
  %440 = sext i32 %436 to i64
  %441 = icmp ne i32 %436, 0
  %442 = and i1 %43, %441, !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1398, metadata !DIExpression()), !dbg !1882
  br i1 %442, label %443, label %451, !dbg !1881

443:                                              ; preds = %439
  %444 = icmp ugt i64 %440, 1, !dbg !1883
  %445 = select i1 %444, i64 %440, i64 1, !dbg !1883
  br label %446, !dbg !1883

446:                                              ; preds = %443, %446
  %447 = phi i64 [ %449, %446 ], [ 0, %443 ]
  call void @llvm.dbg.value(metadata i64 %447, metadata !1398, metadata !DIExpression()), !dbg !1882
  %448 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1885
  %449 = add nuw i64 %447, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %449, metadata !1398, metadata !DIExpression()), !dbg !1882
  %450 = icmp eq i64 %449, %445, !dbg !1885
  br i1 %450, label %451, label %446, !dbg !1883, !llvm.loop !1887

451:                                              ; preds = %446, %439
  %452 = add i64 %53, %440, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %452, metadata !1290, metadata !DIExpression()), !dbg !1563
  %453 = sub nsw i32 %419, %436, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %453, metadata !1283, metadata !DIExpression()), !dbg !1563
  br label %454, !dbg !1890

454:                                              ; preds = %437, %451
  %455 = phi i64 [ %452, %451 ], [ %53, %437 ], !dbg !1563
  %456 = phi i32 [ %453, %451 ], [ %419, %437 ], !dbg !1672
  call void @llvm.dbg.value(metadata i32 %456, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %455, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 1, metadata !1405, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 0, metadata !1407, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 1, metadata !1408, metadata !DIExpression()), !dbg !1891
  %457 = icmp ugt i64 %455, -3, !dbg !1892
  br i1 %457, label %1094, label %458, !dbg !1894

458:                                              ; preds = %454
  br i1 %29, label %462, label %459, !dbg !1894

459:                                              ; preds = %458
  %460 = zext i8 %425 to i32, !dbg !1895
  %461 = call i32 @fputc(i32 %460, %struct._IO_FILE* nonnull %0), !dbg !1895
  br label %462, !dbg !1895

462:                                              ; preds = %459, %458
  %463 = add nuw i64 %455, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %463, metadata !1290, metadata !DIExpression()), !dbg !1563
  %464 = add nsw i32 %456, -1, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %464, metadata !1283, metadata !DIExpression()), !dbg !1563
  br label %465, !dbg !1897

465:                                              ; preds = %417, %462
  %466 = phi i64 [ %463, %462 ], [ %53, %417 ], !dbg !1563
  %467 = phi i32 [ %464, %462 ], [ %419, %417 ], !dbg !1672
  call void @llvm.dbg.value(metadata i32 %467, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %466, metadata !1290, metadata !DIExpression()), !dbg !1563
  %468 = shl i64 %427, 32, !dbg !1898
  %469 = ashr exact i64 %468, 32, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %469, metadata !1419, metadata !DIExpression()), !dbg !1899
  %470 = icmp slt i32 %467, 0, !dbg !1898
  %471 = or i1 %433, %470, !dbg !1898
  %472 = sext i32 %467 to i64, !dbg !1898
  %473 = select i1 %471, i64 0, i64 %472, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %473, metadata !1421, metadata !DIExpression()), !dbg !1899
  %474 = icmp ugt i64 %473, %469, !dbg !1898
  %475 = select i1 %474, i64 %473, i64 %469, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %475, metadata !1422, metadata !DIExpression()), !dbg !1899
  %476 = xor i64 %466, -1, !dbg !1900
  %477 = icmp ult i64 %475, %476, !dbg !1900
  br i1 %477, label %478, label %1094, !dbg !1898

478:                                              ; preds = %465
  br i1 %29, label %479, label %481, !dbg !1898

479:                                              ; preds = %478
  %480 = add i64 %475, %466, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %519, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

481:                                              ; preds = %478
  br i1 %474, label %482, label %498, !dbg !1902

482:                                              ; preds = %481
  %483 = sub nsw i64 %473, %469, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %483, metadata !1423, metadata !DIExpression()), !dbg !1904
  switch i32 %420, label %484 [
    i32 48, label %486
    i32 43, label %486
  ], !dbg !1905

484:                                              ; preds = %482
  call void @llvm.dbg.value(metadata i64 0, metadata !1431, metadata !DIExpression()), !dbg !1906
  %485 = icmp eq i64 %483, 0, !dbg !1907
  br i1 %485, label %498, label %493, !dbg !1910

486:                                              ; preds = %482, %482
  call void @llvm.dbg.value(metadata i64 0, metadata !1428, metadata !DIExpression()), !dbg !1911
  %487 = icmp eq i64 %483, 0, !dbg !1912
  br i1 %487, label %498, label %488, !dbg !1915

488:                                              ; preds = %486, %488
  %489 = phi i64 [ %491, %488 ], [ 0, %486 ]
  call void @llvm.dbg.value(metadata i64 %489, metadata !1428, metadata !DIExpression()), !dbg !1911
  %490 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !1912
  %491 = add nuw i64 %489, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %491, metadata !1428, metadata !DIExpression()), !dbg !1911
  %492 = icmp ult i64 %491, %483, !dbg !1912
  br i1 %492, label %488, label %498, !dbg !1915, !llvm.loop !1916

493:                                              ; preds = %484, %493
  %494 = phi i64 [ %496, %493 ], [ 0, %484 ]
  call void @llvm.dbg.value(metadata i64 %494, metadata !1431, metadata !DIExpression()), !dbg !1906
  %495 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !1907
  %496 = add nuw i64 %494, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %496, metadata !1431, metadata !DIExpression()), !dbg !1906
  %497 = icmp ult i64 %496, %483, !dbg !1907
  br i1 %497, label %493, label %498, !dbg !1910, !llvm.loop !1917

498:                                              ; preds = %488, %493, %486, %484, %481
  %499 = icmp eq i8 %92, 0, !dbg !1918
  br i1 %499, label %516, label %500, !dbg !1922

500:                                              ; preds = %498
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1767, metadata !DIExpression()) #28, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %406, metadata !1770, metadata !DIExpression()) #28, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %469, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1923
  %501 = icmp eq i64 %468, 0, !dbg !1925
  br i1 %501, label %518, label %502, !dbg !1926

502:                                              ; preds = %500
  %503 = tail call i32** @__ctype_toupper_loc() #32, !dbg !1923
  br label %504, !dbg !1926

504:                                              ; preds = %504, %502
  %505 = phi i8* [ %422, %502 ], [ %514, %504 ]
  %506 = phi i64 [ %469, %502 ], [ %507, %504 ]
  call void @llvm.dbg.value(metadata i8* %505, metadata !1770, metadata !DIExpression()) #28, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %506, metadata !1771, metadata !DIExpression()) #28, !dbg !1923
  %507 = add i64 %506, -1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %507, metadata !1771, metadata !DIExpression()) #28, !dbg !1923
  %508 = load i32*, i32** %503, align 8, !dbg !1928, !tbaa !689
  %509 = load i8, i8* %505, align 1, !dbg !1928, !tbaa !998
  %510 = zext i8 %509 to i64, !dbg !1928
  %511 = getelementptr inbounds i32, i32* %508, i64 %510, !dbg !1928
  %512 = load i32, i32* %511, align 4, !dbg !1928, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %512, metadata !1772, metadata !DIExpression()) #28, !dbg !1929
  %513 = call i32 @fputc(i32 %512, %struct._IO_FILE* nonnull %0) #28, !dbg !1930
  %514 = getelementptr inbounds i8, i8* %505, i64 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %514, metadata !1770, metadata !DIExpression()) #28, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %507, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !1923
  %515 = icmp eq i64 %507, 0, !dbg !1925
  br i1 %515, label %518, label %504, !dbg !1926, !llvm.loop !1932

516:                                              ; preds = %498
  %517 = call i64 @fwrite(i8* nonnull %422, i64 %469, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1934
  br label %518

518:                                              ; preds = %504, %516, %500
  %519 = add i64 %475, %466, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %519, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

520:                                              ; preds = %142
  %521 = icmp eq i32 %144, 0, !dbg !1936
  br i1 %521, label %522, label %1031, !dbg !1938

522:                                              ; preds = %520
  %523 = icmp eq i32 %85, 0, !dbg !1939
  %524 = icmp slt i32 %138, 0
  %525 = and i1 %523, %524, !dbg !1941
  %526 = icmp sgt i32 %138, 6, !dbg !1941
  %527 = select i1 %526, i32 %138, i32 6, !dbg !1941
  %528 = add nsw i32 %527, -6, !dbg !1941
  %529 = select i1 %525, i32 4, i32 %528, !dbg !1941
  %530 = select i1 %525, i32 43, i32 %85, !dbg !1941
  br label %201, !dbg !1941

531:                                              ; preds = %142
  %532 = icmp eq i32 %144, 69, !dbg !1942
  br i1 %532, label %1031, label %533, !dbg !1944

533:                                              ; preds = %531
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %534 = load i32, i32* %14, align 8, !dbg !1945, !tbaa !1565
  call void @llvm.dbg.value(metadata i32 %534, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !1945

535:                                              ; preds = %142
  %536 = icmp eq i32 %144, 69, !dbg !1947
  br i1 %536, label %1031, label %372, !dbg !1949

537:                                              ; preds = %142
  %538 = icmp eq i32 %144, 69, !dbg !1950
  br i1 %538, label %1031, label %539, !dbg !1952

539:                                              ; preds = %537
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %540 = load i32, i32* %14, align 8, !dbg !1953, !tbaa !1565
  call void @llvm.dbg.value(metadata i32 %540, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %368, !dbg !1953

541:                                              ; preds = %142
  %542 = icmp eq i32 %144, 69, !dbg !1955
  br i1 %542, label %1031, label %368, !dbg !1957

543:                                              ; preds = %142
  %544 = icmp eq i32 %144, 69, !dbg !1958
  br i1 %544, label %1031, label %545, !dbg !1960

545:                                              ; preds = %543
  call void @llvm.dbg.value(metadata i32 3, metadata !1298, metadata !DIExpression()), !dbg !1575
  %546 = load i32, i32* %34, align 4, !dbg !1961, !tbaa !1963
  %547 = icmp slt i32 %546, -1, !dbg !1961
  %548 = zext i1 %547 to i8, !dbg !1961
  call void @llvm.dbg.value(metadata i8 %548, metadata !1301, metadata !DIExpression()), !dbg !1575
  %549 = add i32 %546, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %549, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !1961

550:                                              ; preds = %142
  %551 = icmp eq i32 %144, 69, !dbg !1964
  br i1 %551, label %1031, label %552, !dbg !1966

552:                                              ; preds = %550
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %553 = load i32, i32* %40, align 4, !dbg !1967, !tbaa !1969
  call void @llvm.dbg.value(metadata i32 %553, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !1967

554:                                              ; preds = %142
  %555 = icmp eq i32 %144, 69, !dbg !1970
  br i1 %555, label %1031, label %556, !dbg !1972

556:                                              ; preds = %554
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %557 = load i32, i32* %39, align 8, !dbg !1973, !tbaa !1975
  %558 = icmp slt i32 %557, -1, !dbg !1973
  %559 = zext i1 %558 to i8, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %559, metadata !1301, metadata !DIExpression()), !dbg !1575
  %560 = add i32 %557, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %560, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !1973

561:                                              ; preds = %142
  %562 = icmp eq i32 %144, 69, !dbg !1976
  br i1 %562, label %1031, label %563, !dbg !1978

563:                                              ; preds = %561
  call void @llvm.dbg.value(metadata i32 %7, metadata !1433, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i32 9, metadata !1435, metadata !DIExpression()), !dbg !1979
  %564 = icmp slt i32 %138, 1, !dbg !1980
  %565 = select i1 %564, i32 9, i32 %138, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %565, metadata !1283, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 9, metadata !1436, metadata !DIExpression()), !dbg !1979
  br label %566, !dbg !1983

566:                                              ; preds = %595, %563
  %567 = phi i32 [ %7, %563 ], [ %597, %595 ], !dbg !1979
  %568 = phi i32 [ 9, %563 ], [ %596, %595 ], !dbg !1979
  call void @llvm.dbg.value(metadata i32 %568, metadata !1436, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i32 %567, metadata !1433, metadata !DIExpression()), !dbg !1979
  %569 = icmp slt i32 %565, %568, !dbg !1984
  br i1 %569, label %595, label %570, !dbg !1985

570:                                              ; preds = %566
  %571 = icmp sgt i32 %568, 1, !dbg !1986
  %572 = srem i32 %567, 10
  %573 = icmp eq i32 %572, 0
  %574 = and i1 %571, %573, !dbg !1987
  br i1 %574, label %595, label %575, !dbg !1987

575:                                              ; preds = %570
  call void @llvm.dbg.value(metadata i32 %568, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %567, metadata !1433, metadata !DIExpression()), !dbg !1979
  %576 = icmp sgt i32 %568, 0, !dbg !1989
  br i1 %576, label %577, label %598, !dbg !1991

577:                                              ; preds = %575
  %578 = zext i32 %568 to i64, !dbg !1991
  %579 = and i64 %578, 1, !dbg !1991
  %580 = icmp eq i64 %579, 0, !dbg !1991
  br i1 %580, label %590, label %581, !dbg !1991

581:                                              ; preds = %577
  call void @llvm.dbg.value(metadata i64 %578, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %567, metadata !1433, metadata !DIExpression()), !dbg !1979
  %582 = srem i32 %567, 10, !dbg !1992
  %583 = trunc i32 %582 to i8, !dbg !1993
  %584 = add nsw i8 %583, 48, !dbg !1993
  %585 = add nsw i32 %568, -1, !dbg !1994
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 %586, !dbg !1995
  store i8 %584, i8* %587, align 1, !dbg !1996, !tbaa !998
  %588 = sdiv i32 %567, 10, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %585, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %588, metadata !1433, metadata !DIExpression()), !dbg !1979
  %589 = add nsw i64 %578, -1, !dbg !1994
  br label %590, !dbg !1991

590:                                              ; preds = %581, %577
  %591 = phi i64 [ %589, %581 ], [ %578, %577 ]
  %592 = phi i32 [ %585, %581 ], [ %568, %577 ]
  %593 = phi i32 [ %588, %581 ], [ %567, %577 ]
  %594 = icmp eq i32 %568, 1, !dbg !1991
  br i1 %594, label %598, label %605, !dbg !1991

595:                                              ; preds = %570, %566
  %596 = add nsw i32 %568, -1, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %596, metadata !1436, metadata !DIExpression()), !dbg !1979
  %597 = sdiv i32 %567, 10, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %597, metadata !1433, metadata !DIExpression()), !dbg !1979
  br label %566, !dbg !1983, !llvm.loop !2000

598:                                              ; preds = %590, %605, %575
  %599 = icmp eq i32 %85, 0, !dbg !2002
  %600 = select i1 %599, i32 48, i32 %85, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %600, metadata !1293, metadata !DIExpression()), !dbg !1575
  %601 = sext i32 %568 to i64, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %601, metadata !1439, metadata !DIExpression()), !dbg !2006
  %602 = icmp eq i32 %600, 45, !dbg !2005
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %601, metadata !1442, metadata !DIExpression()), !dbg !2006
  %603 = xor i64 %53, -1, !dbg !2007
  %604 = icmp ult i64 %601, %603, !dbg !2007
  br i1 %604, label %625, label %1094, !dbg !2005

605:                                              ; preds = %590, %605
  %606 = phi i64 [ %624, %605 ], [ %591, %590 ]
  %607 = phi i32 [ %619, %605 ], [ %592, %590 ]
  %608 = phi i32 [ %622, %605 ], [ %593, %590 ]
  call void @llvm.dbg.value(metadata i64 %606, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %608, metadata !1433, metadata !DIExpression()), !dbg !1979
  %609 = srem i32 %608, 10, !dbg !1992
  %610 = trunc i32 %609 to i8, !dbg !1993
  %611 = add nsw i8 %610, 48, !dbg !1993
  %612 = add nsw i32 %607, -1, !dbg !1994
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 %613, !dbg !1995
  store i8 %611, i8* %614, align 1, !dbg !1996, !tbaa !998
  %615 = sdiv i32 %608, 10, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %612, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %615, metadata !1433, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %606, metadata !1437, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %615, metadata !1433, metadata !DIExpression()), !dbg !1979
  %616 = srem i32 %615, 10, !dbg !1992
  %617 = trunc i32 %616 to i8, !dbg !1993
  %618 = add nsw i8 %617, 48, !dbg !1993
  %619 = add nsw i32 %607, -2, !dbg !1994
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 %620, !dbg !1995
  store i8 %618, i8* %621, align 1, !dbg !1996, !tbaa !998
  %622 = sdiv i32 %608, 100, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %619, metadata !1437, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %622, metadata !1433, metadata !DIExpression()), !dbg !1979
  %623 = icmp sgt i64 %606, 2, !dbg !1989
  %624 = add nsw i64 %606, -2, !dbg !1994
  br i1 %623, label %605, label %598, !dbg !1991, !llvm.loop !2009

625:                                              ; preds = %598
  br i1 %29, label %646, label %626, !dbg !2005

626:                                              ; preds = %625
  %627 = icmp eq i8 %92, 0, !dbg !2011
  br i1 %627, label %644, label %628, !dbg !2015

628:                                              ; preds = %626
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1767, metadata !DIExpression()) #28, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %28, metadata !1770, metadata !DIExpression()) #28, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %601, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2016
  %629 = icmp eq i32 %568, 0, !dbg !2018
  br i1 %629, label %646, label %630, !dbg !2019

630:                                              ; preds = %628
  %631 = tail call i32** @__ctype_toupper_loc() #32, !dbg !2016
  br label %632, !dbg !2019

632:                                              ; preds = %632, %630
  %633 = phi i8* [ %28, %630 ], [ %642, %632 ]
  %634 = phi i64 [ %601, %630 ], [ %635, %632 ]
  call void @llvm.dbg.value(metadata i8* %633, metadata !1770, metadata !DIExpression()) #28, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %634, metadata !1771, metadata !DIExpression()) #28, !dbg !2016
  %635 = add i64 %634, -1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %635, metadata !1771, metadata !DIExpression()) #28, !dbg !2016
  %636 = load i32*, i32** %631, align 8, !dbg !2021, !tbaa !689
  %637 = load i8, i8* %633, align 1, !dbg !2021, !tbaa !998
  %638 = zext i8 %637 to i64, !dbg !2021
  %639 = getelementptr inbounds i32, i32* %636, i64 %638, !dbg !2021
  %640 = load i32, i32* %639, align 4, !dbg !2021, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %640, metadata !1772, metadata !DIExpression()) #28, !dbg !2022
  %641 = call i32 @fputc(i32 %640, %struct._IO_FILE* nonnull %0) #28, !dbg !2023
  %642 = getelementptr inbounds i8, i8* %633, i64 1, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %642, metadata !1770, metadata !DIExpression()) #28, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %635, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2016
  %643 = icmp eq i64 %635, 0, !dbg !2018
  br i1 %643, label %646, label %632, !dbg !2019, !llvm.loop !2025

644:                                              ; preds = %626
  %645 = call i64 @fwrite(i8* nonnull %28, i64 %601, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2027
  br label %646

646:                                              ; preds = %632, %628, %644, %625
  %647 = add i64 %53, %601, !dbg !2005
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !2029
  %648 = sub nsw i32 %565, %568, !dbg !2030
  %649 = icmp slt i32 %648, 0, !dbg !2030
  %650 = or i1 %602, %649, !dbg !2030
  %651 = select i1 %650, i32 0, i32 %648, !dbg !2030
  %652 = sext i32 %651 to i64, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %652, metadata !1455, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %652, metadata !1456, metadata !DIExpression()), !dbg !2029
  %653 = xor i64 %647, -1, !dbg !2031
  %654 = icmp ult i64 %652, %653, !dbg !2031
  br i1 %654, label %655, label %1094, !dbg !2030

655:                                              ; preds = %646
  %656 = icmp eq i32 %651, 0, !dbg !2030
  %657 = or i1 %29, %656, !dbg !2030
  br i1 %657, label %658, label %660, !dbg !2030

658:                                              ; preds = %655
  %659 = add i64 %647, %652, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %678, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

660:                                              ; preds = %655
  call void @llvm.dbg.value(metadata i64 %652, metadata !1457, metadata !DIExpression()), !dbg !2033
  switch i32 %600, label %661 [
    i32 48, label %664
    i32 43, label %664
  ], !dbg !2034

661:                                              ; preds = %660
  call void @llvm.dbg.value(metadata i64 0, metadata !1465, metadata !DIExpression()), !dbg !2035
  %662 = icmp ugt i64 %652, 1, !dbg !2036
  %663 = select i1 %662, i64 %652, i64 1, !dbg !2036
  br label %672, !dbg !2036

664:                                              ; preds = %660, %660
  call void @llvm.dbg.value(metadata i64 0, metadata !1462, metadata !DIExpression()), !dbg !2038
  %665 = icmp ugt i64 %652, 1, !dbg !2039
  %666 = select i1 %665, i64 %652, i64 1, !dbg !2039
  br label %667, !dbg !2039

667:                                              ; preds = %664, %667
  %668 = phi i64 [ %670, %667 ], [ 0, %664 ]
  call void @llvm.dbg.value(metadata i64 %668, metadata !1462, metadata !DIExpression()), !dbg !2038
  %669 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2041
  %670 = add nuw i64 %668, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %670, metadata !1462, metadata !DIExpression()), !dbg !2038
  %671 = icmp eq i64 %670, %666, !dbg !2041
  br i1 %671, label %677, label %667, !dbg !2039, !llvm.loop !2043

672:                                              ; preds = %661, %672
  %673 = phi i64 [ %675, %672 ], [ 0, %661 ]
  call void @llvm.dbg.value(metadata i64 %673, metadata !1465, metadata !DIExpression()), !dbg !2035
  %674 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2044
  %675 = add nuw i64 %673, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %675, metadata !1465, metadata !DIExpression()), !dbg !2035
  %676 = icmp eq i64 %675, %663, !dbg !2044
  br i1 %676, label %677, label %672, !dbg !2036, !llvm.loop !2046

677:                                              ; preds = %667, %672
  %678 = add i64 %647, %652, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %678, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

679:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 1, metadata !1467, metadata !DIExpression()), !dbg !2047
  %680 = icmp eq i32 %85, 45, !dbg !2048
  %681 = icmp slt i32 %138, 0, !dbg !2048
  %682 = or i1 %680, %681, !dbg !2048
  %683 = sext i32 %138 to i64, !dbg !2048
  %684 = select i1 %682, i64 0, i64 %683, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %684, metadata !1469, metadata !DIExpression()), !dbg !2047
  %685 = icmp ugt i64 %684, 1, !dbg !2048
  %686 = select i1 %685, i64 %684, i64 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %686, metadata !1470, metadata !DIExpression()), !dbg !2047
  %687 = xor i64 %53, -1, !dbg !2049
  %688 = icmp ult i64 %686, %687, !dbg !2049
  br i1 %688, label %689, label %1094, !dbg !2048

689:                                              ; preds = %679
  br i1 %29, label %690, label %692, !dbg !2048

690:                                              ; preds = %689
  %691 = add i64 %686, %53, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %714, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

692:                                              ; preds = %689
  br i1 %685, label %696, label %693, !dbg !2051

693:                                              ; preds = %692
  %694 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %0), !dbg !2051
  %695 = add i64 %686, %53, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %714, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

696:                                              ; preds = %692
  %697 = add nsw i64 %684, -1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %697, metadata !1471, metadata !DIExpression()), !dbg !2053
  switch i32 %85, label %698 [
    i32 48, label %700
    i32 43, label %700
  ], !dbg !2054

698:                                              ; preds = %696
  call void @llvm.dbg.value(metadata i64 0, metadata !1479, metadata !DIExpression()), !dbg !2055
  %699 = icmp eq i64 %697, 0, !dbg !2056
  br i1 %699, label %712, label %707, !dbg !2059

700:                                              ; preds = %696, %696
  call void @llvm.dbg.value(metadata i64 0, metadata !1476, metadata !DIExpression()), !dbg !2060
  %701 = icmp eq i64 %697, 0, !dbg !2061
  br i1 %701, label %712, label %702, !dbg !2064

702:                                              ; preds = %700, %702
  %703 = phi i64 [ %705, %702 ], [ 0, %700 ]
  call void @llvm.dbg.value(metadata i64 %703, metadata !1476, metadata !DIExpression()), !dbg !2060
  %704 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2061
  %705 = add nuw i64 %703, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %705, metadata !1476, metadata !DIExpression()), !dbg !2060
  %706 = icmp eq i64 %705, %697, !dbg !2061
  br i1 %706, label %712, label %702, !dbg !2064, !llvm.loop !2065

707:                                              ; preds = %698, %707
  %708 = phi i64 [ %710, %707 ], [ 0, %698 ]
  call void @llvm.dbg.value(metadata i64 %708, metadata !1479, metadata !DIExpression()), !dbg !2055
  %709 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2056
  %710 = add nuw i64 %708, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %710, metadata !1479, metadata !DIExpression()), !dbg !2055
  %711 = icmp eq i64 %710, %697, !dbg !2056
  br i1 %711, label %712, label %707, !dbg !2059, !llvm.loop !2066

712:                                              ; preds = %702, %707, %700, %698
  %713 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %0), !dbg !2051
  %714 = add i64 %686, %53, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %714, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

715:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i8 1, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 112, metadata !1314, metadata !DIExpression()), !dbg !1575
  br label %716, !dbg !2067

716:                                              ; preds = %142, %715
  %717 = phi i1 [ false, %142 ], [ true, %715 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 112, metadata !1314, metadata !DIExpression()), !dbg !1575
  %718 = select i1 %96, i8 %92, i8 0, !dbg !2068
  %719 = xor i1 %96, true, !dbg !2068
  %720 = or i1 %717, %719, !dbg !2068
  br label %242, !dbg !2068

721:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1575
  %722 = load i32, i32* %39, align 8, !dbg !2069, !tbaa !1975
  %723 = mul nsw i32 %722, 11, !dbg !2069
  %724 = ashr i32 %723, 5, !dbg !2069
  %725 = add nsw i32 %724, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %725, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !2069

726:                                              ; preds = %142
  %727 = icmp eq i32 %144, 69, !dbg !2071
  br i1 %727, label %1031, label %728, !dbg !2073

728:                                              ; preds = %726
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %729 = load i32, i32* %38, align 8, !dbg !2074, !tbaa !2076
  call void @llvm.dbg.value(metadata i32 %729, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !2074

730:                                              ; preds = %142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %35) #28, !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.tm* %12, metadata !1481, metadata !DIExpression()), !dbg !2078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %35, i8* nonnull align 8 dereferenceable(56) %36, i64 56, i1 false), !dbg !2079, !tbaa.struct !2080
  %731 = call i64 @mktime_z(%struct.tm_zone* %6, %struct.tm* nonnull %12) #28, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %731, metadata !1483, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %37, metadata !1305, metadata !DIExpression()), !dbg !1575
  %732 = icmp slt i64 %731, 0, !dbg !2083
  %733 = lshr i64 %731, 63, !dbg !2084
  call void @llvm.dbg.value(metadata i8 %748, metadata !1301, metadata !DIExpression()), !dbg !1575
  br label %734, !dbg !2085

734:                                              ; preds = %734, %730
  %735 = phi i64 [ %731, %730 ], [ %739, %734 ], !dbg !2082
  %736 = phi i8* [ %37, %730 ], [ %744, %734 ], !dbg !2082
  call void @llvm.dbg.value(metadata i8* %736, metadata !1305, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %735, metadata !1483, metadata !DIExpression()), !dbg !2082
  %737 = srem i64 %735, 10, !dbg !2086
  %738 = trunc i64 %737 to i32, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %738, metadata !1484, metadata !DIExpression()), !dbg !2088
  %739 = sdiv i64 %735, 10, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %739, metadata !1483, metadata !DIExpression()), !dbg !2082
  %740 = sub nsw i32 0, %738, !dbg !2090
  %741 = select i1 %732, i32 %740, i32 %738, !dbg !2090
  %742 = trunc i32 %741 to i8, !dbg !2091
  %743 = add nsw i8 %742, 48, !dbg !2091
  %744 = getelementptr inbounds i8, i8* %736, i64 -1, !dbg !2092
  call void @llvm.dbg.value(metadata i8* %744, metadata !1305, metadata !DIExpression()), !dbg !1575
  store i8 %743, i8* %744, align 1, !dbg !2093, !tbaa !998
  %745 = add i64 %735, 9, !dbg !2094
  %746 = icmp ult i64 %745, 19, !dbg !2094
  br i1 %746, label %747, label %734, !dbg !2095, !llvm.loop !2096

747:                                              ; preds = %734
  %748 = trunc i64 %733 to i8, !dbg !2084
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1302, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %35) #28, !dbg !2098
  call void @llvm.dbg.value(metadata i8* %385, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 %384, metadata !1293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %383, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %381, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1302, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %406, metadata !1305, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1557), !dbg !1861
  %749 = icmp eq i32 %85, 0, !dbg !1862
  %750 = select i1 %749, i32 48, i32 %85, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %413, metadata !1293, metadata !DIExpression()), !dbg !1575
  %751 = icmp slt i32 %138, 0, !dbg !1865
  %752 = select i1 %751, i32 1, i32 %138, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %415, metadata !1283, metadata !DIExpression()), !dbg !1563
  br label %417

753:                                              ; preds = %142
  %754 = icmp eq i32 %144, 79, !dbg !2099
  br i1 %754, label %1031, label %242, !dbg !2101

755:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.61, i64 0, i64 0), metadata !1304, metadata !DIExpression()), !dbg !1575
  br label %201, !dbg !2102

756:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 1, metadata !1486, metadata !DIExpression()), !dbg !2103
  %757 = icmp eq i32 %85, 45, !dbg !2104
  %758 = icmp slt i32 %138, 0, !dbg !2104
  %759 = or i1 %757, %758, !dbg !2104
  %760 = sext i32 %138 to i64, !dbg !2104
  %761 = select i1 %759, i64 0, i64 %760, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %761, metadata !1488, metadata !DIExpression()), !dbg !2103
  %762 = icmp ugt i64 %761, 1, !dbg !2104
  %763 = select i1 %762, i64 %761, i64 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %763, metadata !1489, metadata !DIExpression()), !dbg !2103
  %764 = xor i64 %53, -1, !dbg !2105
  %765 = icmp ult i64 %763, %764, !dbg !2105
  br i1 %765, label %766, label %1094, !dbg !2104

766:                                              ; preds = %756
  br i1 %29, label %767, label %769, !dbg !2104

767:                                              ; preds = %766
  %768 = add i64 %763, %53, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %791, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

769:                                              ; preds = %766
  br i1 %762, label %773, label %770, !dbg !2107

770:                                              ; preds = %769
  %771 = call i32 @fputc(i32 9, %struct._IO_FILE* nonnull %0), !dbg !2107
  %772 = add i64 %763, %53, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %791, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

773:                                              ; preds = %769
  %774 = add nsw i64 %761, -1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %774, metadata !1490, metadata !DIExpression()), !dbg !2109
  switch i32 %85, label %775 [
    i32 48, label %777
    i32 43, label %777
  ], !dbg !2110

775:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !2111
  %776 = icmp eq i64 %774, 0, !dbg !2112
  br i1 %776, label %789, label %784, !dbg !2115

777:                                              ; preds = %773, %773
  call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()), !dbg !2116
  %778 = icmp eq i64 %774, 0, !dbg !2117
  br i1 %778, label %789, label %779, !dbg !2120

779:                                              ; preds = %777, %779
  %780 = phi i64 [ %782, %779 ], [ 0, %777 ]
  call void @llvm.dbg.value(metadata i64 %780, metadata !1495, metadata !DIExpression()), !dbg !2116
  %781 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2117
  %782 = add nuw i64 %780, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %782, metadata !1495, metadata !DIExpression()), !dbg !2116
  %783 = icmp eq i64 %782, %774, !dbg !2117
  br i1 %783, label %789, label %779, !dbg !2120, !llvm.loop !2121

784:                                              ; preds = %775, %784
  %785 = phi i64 [ %787, %784 ], [ 0, %775 ]
  call void @llvm.dbg.value(metadata i64 %785, metadata !1498, metadata !DIExpression()), !dbg !2111
  %786 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2112
  %787 = add nuw i64 %785, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %787, metadata !1498, metadata !DIExpression()), !dbg !2111
  %788 = icmp eq i64 %787, %774, !dbg !2112
  br i1 %788, label %789, label %784, !dbg !2115, !llvm.loop !2122

789:                                              ; preds = %779, %784, %777, %775
  %790 = call i32 @fputc(i32 9, %struct._IO_FILE* nonnull %0), !dbg !2107
  %791 = add i64 %763, %53, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %791, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

792:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1575
  %793 = load i32, i32* %33, align 8, !dbg !2123, !tbaa !2125
  %794 = add nsw i32 %793, 6, !dbg !2123
  %795 = srem i32 %794, 7, !dbg !2123
  %796 = add nsw i32 %795, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %796, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !2123

797:                                              ; preds = %142
  %798 = icmp eq i32 %144, 69, !dbg !2126
  br i1 %798, label %1031, label %799, !dbg !2128

799:                                              ; preds = %797
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %800 = load i32, i32* %34, align 4, !dbg !2129, !tbaa !1963
  %801 = load i32, i32* %33, align 8, !dbg !2129, !tbaa !2125
  %802 = add i32 %800, 7, !dbg !2129
  %803 = sub i32 %802, %801, !dbg !2129
  %804 = sdiv i32 %803, 7, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %804, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !2129

805:                                              ; preds = %142, %142, %142
  %806 = icmp eq i32 %144, 69, !dbg !2131
  br i1 %806, label %1031, label %807, !dbg !2133

807:                                              ; preds = %805
  %808 = load i32, i32* %32, align 4, !dbg !2134, !tbaa !1795
  %809 = icmp slt i32 %808, 0, !dbg !2135
  %810 = select i1 %809, i32 300, i32 -100, !dbg !2136
  %811 = add nsw i32 %810, %808, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %811, metadata !1500, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 0, metadata !1502, metadata !DIExpression()), !dbg !2138
  %812 = load i32, i32* %34, align 4, !dbg !2139, !tbaa !1963
  %813 = load i32, i32* %33, align 8, !dbg !2140, !tbaa !2125
  call void @llvm.dbg.value(metadata i32 %812, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 %813, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 378, metadata !2147, metadata !DIExpression()), !dbg !2148
  %814 = add i32 %812, 382, !dbg !2150
  %815 = sub i32 %814, %813, !dbg !2151
  %816 = srem i32 %815, 7, !dbg !2152
  %817 = add i32 %812, 3, !dbg !2153
  %818 = sub i32 %817, %816, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %818, metadata !1503, metadata !DIExpression()), !dbg !2138
  %819 = icmp slt i32 %818, 0, !dbg !2155
  br i1 %819, label %820, label %839, !dbg !2156

820:                                              ; preds = %807
  call void @llvm.dbg.value(metadata i32 -1, metadata !1502, metadata !DIExpression()), !dbg !2138
  %821 = add nsw i32 %811, -1, !dbg !2157
  %822 = and i32 %821, 3, !dbg !2157
  %823 = icmp eq i32 %822, 0, !dbg !2157
  br i1 %823, label %824, label %831, !dbg !2157

824:                                              ; preds = %820
  %825 = srem i32 %821, 100, !dbg !2157
  %826 = icmp ne i32 %825, 0, !dbg !2157
  %827 = srem i32 %821, 400, !dbg !2157
  %828 = icmp eq i32 %827, 0, !dbg !2157
  %829 = or i1 %826, %828, !dbg !2157
  %830 = select i1 %829, i32 366, i32 365, !dbg !2157
  br label %831, !dbg !2157

831:                                              ; preds = %824, %820
  %832 = phi i32 [ 365, %820 ], [ %830, %824 ]
  %833 = add nsw i32 %832, %812, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %833, metadata !2141, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %813, metadata !2146, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 378, metadata !2147, metadata !DIExpression()), !dbg !2160
  %834 = sub i32 382, %813, !dbg !2162
  %835 = add i32 %834, %833, !dbg !2163
  %836 = srem i32 %835, 7, !dbg !2164
  %837 = add i32 %833, 3, !dbg !2165
  %838 = sub i32 %837, %836, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %838, metadata !1503, metadata !DIExpression()), !dbg !2138
  br label %861, !dbg !2167

839:                                              ; preds = %807
  %840 = and i32 %811, 3, !dbg !2168
  %841 = icmp eq i32 %840, 0, !dbg !2168
  br i1 %841, label %842, label %849, !dbg !2168

842:                                              ; preds = %839
  %843 = srem i32 %811, 100, !dbg !2168
  %844 = icmp ne i32 %843, 0, !dbg !2168
  %845 = srem i32 %811, 400, !dbg !2168
  %846 = icmp eq i32 %845, 0, !dbg !2168
  %847 = or i1 %844, %846, !dbg !2168
  %848 = select i1 %847, i32 -366, i32 -365, !dbg !2168
  br label %849, !dbg !2168

849:                                              ; preds = %842, %839
  %850 = phi i32 [ -365, %839 ], [ %848, %842 ]
  %851 = add i32 %850, %812, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %851, metadata !2141, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %813, metadata !2146, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 378, metadata !2147, metadata !DIExpression()), !dbg !2170
  %852 = sub i32 382, %813, !dbg !2172
  %853 = add i32 %852, %851, !dbg !2173
  %854 = srem i32 %853, 7, !dbg !2174
  %855 = add i32 %851, 3, !dbg !2175
  %856 = sub i32 %855, %854, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %856, metadata !1504, metadata !DIExpression()), !dbg !2177
  %857 = icmp sgt i32 %856, -1, !dbg !2178
  %858 = xor i32 %856, -1, !dbg !2180
  %859 = lshr i32 %858, 31, !dbg !2180
  %860 = select i1 %857, i32 %856, i32 %818, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %860, metadata !1503, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %859, metadata !1502, metadata !DIExpression()), !dbg !2138
  br label %861

861:                                              ; preds = %849, %831
  %862 = phi i32 [ -1, %831 ], [ %859, %849 ], !dbg !2181
  %863 = phi i32 [ %838, %831 ], [ %860, %849 ], !dbg !2181
  call void @llvm.dbg.value(metadata i32 %863, metadata !1503, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %862, metadata !1502, metadata !DIExpression()), !dbg !2138
  switch i32 %146, label %882 [
    i32 103, label %864
    i32 71, label %877
  ], !dbg !2182

864:                                              ; preds = %861
  %865 = srem i32 %808, 100, !dbg !2183
  %866 = add nsw i32 %862, %865, !dbg !2184
  %867 = trunc i32 %866 to i8, !dbg !2185
  %868 = srem i8 %867, 100, !dbg !2185
  %869 = sext i8 %868 to i32, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %869, metadata !1507, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1575
  %870 = icmp sgt i8 %868, -1, !dbg !2187
  br i1 %870, label %355, label %871, !dbg !2187

871:                                              ; preds = %864
  %872 = sub nsw i32 -1900, %862, !dbg !2187
  %873 = icmp slt i32 %808, %872, !dbg !2187
  %874 = sub nsw i32 0, %869, !dbg !2187
  %875 = add nsw i32 %869, 100, !dbg !2187
  %876 = select i1 %873, i32 %874, i32 %875, !dbg !2187
  br label %355, !dbg !2187

877:                                              ; preds = %861
  call void @llvm.dbg.value(metadata i32 4, metadata !1298, metadata !DIExpression()), !dbg !1575
  %878 = sub nsw i32 -1900, %862, !dbg !2189
  %879 = icmp slt i32 %808, %878, !dbg !2189
  call void @llvm.dbg.value(metadata i1 %879, metadata !1301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1575
  %880 = add i32 %808, 1900, !dbg !2189
  %881 = add i32 %880, %862, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %881, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %355, !dbg !2189

882:                                              ; preds = %861
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %883 = sdiv i32 %863, 7, !dbg !2191
  %884 = add nsw i32 %883, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %884, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  br label %372

885:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  %886 = icmp eq i32 %144, 69, !dbg !2193
  br i1 %886, label %1031, label %887, !dbg !2195

887:                                              ; preds = %885
  call void @llvm.dbg.value(metadata i32 2, metadata !1298, metadata !DIExpression()), !dbg !1575
  %888 = load i32, i32* %34, align 4, !dbg !2196, !tbaa !1963
  %889 = load i32, i32* %33, align 8, !dbg !2196, !tbaa !2125
  %890 = add nsw i32 %889, 6, !dbg !2196
  %891 = srem i32 %890, 7, !dbg !2196
  %892 = add i32 %888, 7, !dbg !2196
  %893 = sub i32 %892, %891, !dbg !2196
  %894 = sdiv i32 %893, 7, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %894, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !2196

895:                                              ; preds = %142
  %896 = icmp eq i32 %144, 69, !dbg !2198
  br i1 %896, label %1031, label %897, !dbg !2200

897:                                              ; preds = %895
  call void @llvm.dbg.value(metadata i32 1, metadata !1298, metadata !DIExpression()), !dbg !1575
  %898 = load i32, i32* %33, align 8, !dbg !2201, !tbaa !2125
  call void @llvm.dbg.value(metadata i32 %898, metadata !1299, metadata !DIExpression()), !dbg !1575
  br label %372, !dbg !2201

899:                                              ; preds = %142
  switch i32 %144, label %900 [
    i32 69, label %242
    i32 79, label %1031
  ], !dbg !2203

900:                                              ; preds = %899
  call void @llvm.dbg.value(metadata i32 4, metadata !1298, metadata !DIExpression()), !dbg !1575
  %901 = load i32, i32* %32, align 4, !dbg !2204, !tbaa !1795
  %902 = icmp slt i32 %901, -1900, !dbg !2204
  call void @llvm.dbg.value(metadata i1 %902, metadata !1301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1575
  %903 = add i32 %901, 1900, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %903, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %355, !dbg !2204

904:                                              ; preds = %142
  %905 = icmp eq i32 %144, 69, !dbg !2206
  br i1 %905, label %242, label %906, !dbg !2208

906:                                              ; preds = %904
  %907 = load i32, i32* %32, align 4, !dbg !2209, !tbaa !1795
  %908 = srem i32 %907, 100, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %908, metadata !1510, metadata !DIExpression()), !dbg !2211
  %909 = icmp slt i32 %908, 0, !dbg !2212
  %910 = icmp slt i32 %907, -1900, !dbg !2214
  %911 = sub nsw i32 0, %908, !dbg !2214
  %912 = add nsw i32 %908, 100, !dbg !2214
  %913 = select i1 %910, i32 %911, i32 %912, !dbg !2214
  %914 = select i1 %909, i32 %913, i32 %908, !dbg !2214
  br label %355, !dbg !2214

915:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1311, metadata !DIExpression()), !dbg !1575
  %916 = call i64 @strlen(i8* nonnull dereferenceable(1) %19) #29, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %916, metadata !1512, metadata !DIExpression()), !dbg !2216
  %917 = icmp eq i32 %85, 45, !dbg !2215
  %918 = icmp slt i32 %138, 0, !dbg !2215
  %919 = or i1 %917, %918, !dbg !2215
  %920 = sext i32 %138 to i64, !dbg !2215
  %921 = select i1 %919, i64 0, i64 %920, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %921, metadata !1514, metadata !DIExpression()), !dbg !2216
  %922 = icmp ugt i64 %921, %916, !dbg !2215
  %923 = select i1 %922, i64 %921, i64 %916, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %923, metadata !1515, metadata !DIExpression()), !dbg !2216
  %924 = xor i64 %53, -1, !dbg !2217
  %925 = icmp ult i64 %923, %924, !dbg !2217
  br i1 %925, label %926, label %1094, !dbg !2215

926:                                              ; preds = %915
  br i1 %29, label %927, label %929, !dbg !2215

927:                                              ; preds = %926
  %928 = add i64 %923, %53, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %984, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

929:                                              ; preds = %926
  br i1 %922, label %930, label %946, !dbg !2219

930:                                              ; preds = %929
  %931 = sub i64 %921, %916, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %931, metadata !1516, metadata !DIExpression()), !dbg !2221
  switch i32 %85, label %932 [
    i32 48, label %934
    i32 43, label %934
  ], !dbg !2222

932:                                              ; preds = %930
  call void @llvm.dbg.value(metadata i64 0, metadata !1524, metadata !DIExpression()), !dbg !2223
  %933 = icmp eq i64 %931, 0, !dbg !2224
  br i1 %933, label %946, label %941, !dbg !2227

934:                                              ; preds = %930, %930
  call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !2228
  %935 = icmp eq i64 %931, 0, !dbg !2229
  br i1 %935, label %946, label %936, !dbg !2232

936:                                              ; preds = %934, %936
  %937 = phi i64 [ %939, %936 ], [ 0, %934 ]
  call void @llvm.dbg.value(metadata i64 %937, metadata !1521, metadata !DIExpression()), !dbg !2228
  %938 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2229
  %939 = add nuw i64 %937, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %939, metadata !1521, metadata !DIExpression()), !dbg !2228
  %940 = icmp eq i64 %939, %931, !dbg !2229
  br i1 %940, label %946, label %936, !dbg !2232, !llvm.loop !2233

941:                                              ; preds = %932, %941
  %942 = phi i64 [ %944, %941 ], [ 0, %932 ]
  call void @llvm.dbg.value(metadata i64 %942, metadata !1524, metadata !DIExpression()), !dbg !2223
  %943 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2224
  %944 = add nuw i64 %942, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %944, metadata !1524, metadata !DIExpression()), !dbg !2223
  %945 = icmp eq i64 %944, %931, !dbg !2224
  br i1 %945, label %946, label %941, !dbg !2227, !llvm.loop !2234

946:                                              ; preds = %936, %941, %934, %932, %929
  br i1 %96, label %963, label %947, !dbg !2235

947:                                              ; preds = %946
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1741, metadata !DIExpression()) #28, !dbg !2237
  call void @llvm.dbg.value(metadata i8* %19, metadata !1746, metadata !DIExpression()) #28, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %916, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2237
  %948 = icmp eq i64 %916, 0, !dbg !2240
  br i1 %948, label %983, label %949, !dbg !2241

949:                                              ; preds = %947
  %950 = tail call i32** @__ctype_tolower_loc() #32, !dbg !2237
  br label %951, !dbg !2241

951:                                              ; preds = %951, %949
  %952 = phi i8* [ %19, %949 ], [ %961, %951 ]
  %953 = phi i64 [ %916, %949 ], [ %954, %951 ]
  call void @llvm.dbg.value(metadata i8* %952, metadata !1746, metadata !DIExpression()) #28, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %953, metadata !1747, metadata !DIExpression()) #28, !dbg !2237
  %954 = add i64 %953, -1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %954, metadata !1747, metadata !DIExpression()) #28, !dbg !2237
  %955 = load i32*, i32** %950, align 8, !dbg !2243, !tbaa !689
  %956 = load i8, i8* %952, align 1, !dbg !2243, !tbaa !998
  %957 = zext i8 %956 to i64, !dbg !2243
  %958 = getelementptr inbounds i32, i32* %955, i64 %957, !dbg !2243
  %959 = load i32, i32* %958, align 4, !dbg !2243, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %959, metadata !1748, metadata !DIExpression()) #28, !dbg !2244
  %960 = call i32 @fputc(i32 %959, %struct._IO_FILE* nonnull %0) #28, !dbg !2245
  %961 = getelementptr inbounds i8, i8* %952, i64 1, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %961, metadata !1746, metadata !DIExpression()) #28, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %954, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2237
  %962 = icmp eq i64 %954, 0, !dbg !2240
  br i1 %962, label %983, label %951, !dbg !2241, !llvm.loop !2247

963:                                              ; preds = %946
  %964 = icmp eq i8 %92, 0, !dbg !2249
  br i1 %964, label %981, label %965, !dbg !2251

965:                                              ; preds = %963
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1767, metadata !DIExpression()) #28, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %19, metadata !1770, metadata !DIExpression()) #28, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %916, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2252
  %966 = icmp eq i64 %916, 0, !dbg !2254
  br i1 %966, label %983, label %967, !dbg !2255

967:                                              ; preds = %965
  %968 = tail call i32** @__ctype_toupper_loc() #32, !dbg !2252
  br label %969, !dbg !2255

969:                                              ; preds = %969, %967
  %970 = phi i8* [ %19, %967 ], [ %979, %969 ]
  %971 = phi i64 [ %916, %967 ], [ %972, %969 ]
  call void @llvm.dbg.value(metadata i8* %970, metadata !1770, metadata !DIExpression()) #28, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %971, metadata !1771, metadata !DIExpression()) #28, !dbg !2252
  %972 = add i64 %971, -1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %972, metadata !1771, metadata !DIExpression()) #28, !dbg !2252
  %973 = load i32*, i32** %968, align 8, !dbg !2257, !tbaa !689
  %974 = load i8, i8* %970, align 1, !dbg !2257, !tbaa !998
  %975 = zext i8 %974 to i64, !dbg !2257
  %976 = getelementptr inbounds i32, i32* %973, i64 %975, !dbg !2257
  %977 = load i32, i32* %976, align 4, !dbg !2257, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %977, metadata !1772, metadata !DIExpression()) #28, !dbg !2258
  %978 = call i32 @fputc(i32 %977, %struct._IO_FILE* nonnull %0) #28, !dbg !2259
  %979 = getelementptr inbounds i8, i8* %970, i64 1, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %979, metadata !1770, metadata !DIExpression()) #28, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %972, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2252
  %980 = icmp eq i64 %972, 0, !dbg !2254
  br i1 %980, label %983, label %969, !dbg !2255, !llvm.loop !2261

981:                                              ; preds = %963
  %982 = call i64 @fwrite(i8* %19, i64 %916, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2263
  br label %983

983:                                              ; preds = %951, %969, %981, %947, %965
  %984 = add i64 %923, %53, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %984, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

985:                                              ; preds = %142, %989
  %986 = phi i64 [ %990, %989 ], [ 1, %142 ], !dbg !2265
  call void @llvm.dbg.value(metadata i64 %986, metadata !1312, metadata !DIExpression()), !dbg !1575
  %987 = getelementptr inbounds i8, i8* %145, i64 %986, !dbg !2267
  %988 = load i8, i8* %987, align 1, !dbg !2267, !tbaa !998
  switch i8 %988, label %1031 [
    i8 58, label %989
    i8 122, label %991
  ], !dbg !2269

989:                                              ; preds = %985
  %990 = add i64 %986, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %990, metadata !1312, metadata !DIExpression()), !dbg !1575
  br label %985, !dbg !2271, !llvm.loop !2272

991:                                              ; preds = %985
  %992 = getelementptr inbounds i8, i8* %145, i64 %986, !dbg !2267
  br label %993, !dbg !2274

993:                                              ; preds = %991, %142
  %994 = phi i64 [ 0, %142 ], [ %986, %991 ], !dbg !1672
  %995 = phi i8* [ %145, %142 ], [ %992, %991 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8* %995, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %994, metadata !1312, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1558), !dbg !2276
  %996 = load i32, i32* %30, align 8, !dbg !2274, !tbaa !2277
  %997 = icmp slt i32 %996, 0, !dbg !2278
  br i1 %997, label %1095, label %998, !dbg !2279

998:                                              ; preds = %993
  %999 = load i64, i64* %31, align 8, !dbg !2280, !tbaa !2281
  %1000 = trunc i64 %999 to i32, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %1000, metadata !1526, metadata !DIExpression()), !dbg !2283
  %1001 = icmp slt i32 %1000, 0, !dbg !2284
  br i1 %1001, label %1007, label %1002, !dbg !2285

1002:                                             ; preds = %998
  %1003 = icmp eq i32 %1000, 0, !dbg !2286
  br i1 %1003, label %1004, label %1007, !dbg !2287

1004:                                             ; preds = %1002
  %1005 = load i8, i8* %19, align 1, !dbg !2288, !tbaa !998
  %1006 = icmp eq i8 %1005, 45, !dbg !2289
  br label %1007

1007:                                             ; preds = %1002, %1004, %998
  %1008 = phi i1 [ true, %998 ], [ false, %1002 ], [ %1006, %1004 ]
  %1009 = zext i1 %1008 to i8, !dbg !2290
  call void @llvm.dbg.value(metadata i8 %1009, metadata !1301, metadata !DIExpression()), !dbg !1575
  %1010 = sdiv i32 %1000, 60, !dbg !2291
  %1011 = sdiv i32 %1000, 3600, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %1011, metadata !1528, metadata !DIExpression()), !dbg !2283
  %1012 = srem i32 %1010, 60, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %1012, metadata !1529, metadata !DIExpression()), !dbg !2283
  %1013 = srem i32 %1000, 60, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %1013, metadata !1530, metadata !DIExpression()), !dbg !2283
  switch i64 %994, label %1031 [
    i64 0, label %1014
    i64 1, label %1017
    i64 2, label %1020
    i64 3, label %1025
  ], !dbg !2295

1014:                                             ; preds = %1007
  call void @llvm.dbg.value(metadata i32 5, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1575
  %1015 = mul nsw i32 %1011, 100, !dbg !2296
  %1016 = add nsw i32 %1015, %1012, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1016, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !2296

1017:                                             ; preds = %1027, %1007
  call void @llvm.dbg.label(metadata !1559), !dbg !2298
  call void @llvm.dbg.value(metadata i32 6, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 4, metadata !1303, metadata !DIExpression()), !dbg !1575
  %1018 = mul nsw i32 %1011, 100, !dbg !2299
  %1019 = add nsw i32 %1018, %1012, !dbg !2299
  call void @llvm.dbg.value(metadata i32 %1019, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !2299

1020:                                             ; preds = %1025, %1007
  call void @llvm.dbg.label(metadata !1561), !dbg !2301
  call void @llvm.dbg.value(metadata i32 9, metadata !1298, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 20, metadata !1303, metadata !DIExpression()), !dbg !1575
  %1021 = mul nsw i32 %1011, 10000, !dbg !2302
  %1022 = mul nsw i32 %1012, 100, !dbg !2302
  %1023 = add i32 %1021, %1013, !dbg !2302
  %1024 = add i32 %1023, %1022, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %1024, metadata !1300, metadata !DIExpression()), !dbg !1575
  br label %378, !dbg !2302

1025:                                             ; preds = %1007
  %1026 = icmp eq i32 %1013, 0, !dbg !2304
  br i1 %1026, label %1027, label %1020, !dbg !2306

1027:                                             ; preds = %1025
  %1028 = icmp eq i32 %1012, 0, !dbg !2307
  br i1 %1028, label %378, label %1017, !dbg !2309

1029:                                             ; preds = %142
  %1030 = getelementptr inbounds i8, i8* %145, i64 -1, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1030, metadata !1292, metadata !DIExpression()), !dbg !1563
  br label %1031, !dbg !2311

1031:                                             ; preds = %985, %1007, %899, %1029, %142, %895, %885, %805, %797, %753, %726, %561, %554, %550, %543, %541, %537, %535, %531, %520, %351, %347, %345, %343, %199, %195, %192, %188, %184, %147
  %1032 = phi i8 [ %92, %142 ], [ %92, %1029 ], [ %92, %895 ], [ %92, %885 ], [ %92, %805 ], [ %92, %797 ], [ %92, %753 ], [ %92, %726 ], [ %92, %561 ], [ %92, %554 ], [ %92, %550 ], [ %92, %543 ], [ %92, %541 ], [ %92, %537 ], [ %92, %535 ], [ %92, %531 ], [ %92, %520 ], [ %92, %351 ], [ %92, %347 ], [ %92, %345 ], [ %92, %343 ], [ %92, %199 ], [ %92, %195 ], [ %193, %192 ], [ %92, %188 ], [ %92, %184 ], [ %92, %147 ], [ %92, %899 ], [ %92, %1007 ], [ %92, %985 ], !dbg !1575
  %1033 = phi i8* [ %145, %142 ], [ %1030, %1029 ], [ %145, %895 ], [ %145, %885 ], [ %145, %805 ], [ %145, %797 ], [ %145, %753 ], [ %145, %726 ], [ %145, %561 ], [ %145, %554 ], [ %145, %550 ], [ %145, %543 ], [ %145, %541 ], [ %145, %537 ], [ %145, %535 ], [ %145, %531 ], [ %145, %520 ], [ %145, %351 ], [ %145, %347 ], [ %145, %345 ], [ %145, %343 ], [ %145, %199 ], [ %145, %195 ], [ %145, %192 ], [ %145, %188 ], [ %145, %184 ], [ %145, %147 ], [ %145, %899 ], [ %995, %1007 ], [ %145, %985 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8* %1033, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 0, metadata !1310, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %1032, metadata !1311, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.label(metadata !1562), !dbg !2312
  call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2313
  br label %1034, !dbg !2314

1034:                                             ; preds = %1034, %1031
  %1035 = phi i64 [ %1040, %1034 ], [ 1, %1031 ], !dbg !2316
  call void @llvm.dbg.value(metadata i64 %1035, metadata !1531, metadata !DIExpression()), !dbg !2313
  %1036 = sub nsw i64 1, %1035, !dbg !2317
  %1037 = getelementptr inbounds i8, i8* %1033, i64 %1036, !dbg !2319
  %1038 = load i8, i8* %1037, align 1, !dbg !2319, !tbaa !998
  %1039 = icmp eq i8 %1038, 37, !dbg !2320
  %1040 = add nuw i64 %1035, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %1040, metadata !1531, metadata !DIExpression()), !dbg !2313
  br i1 %1039, label %1041, label %1034, !dbg !2322, !llvm.loop !2323

1041:                                             ; preds = %1034
  %1042 = getelementptr inbounds i8, i8* %1033, i64 %1036, !dbg !2319
  %1043 = and i64 %1035, 4294967295, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1043, metadata !1533, metadata !DIExpression()), !dbg !2326
  %1044 = icmp eq i32 %85, 45, !dbg !2325
  %1045 = icmp slt i32 %138, 0, !dbg !2325
  %1046 = or i1 %1044, %1045, !dbg !2325
  %1047 = sext i32 %138 to i64, !dbg !2325
  %1048 = select i1 %1046, i64 0, i64 %1047, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1048, metadata !1535, metadata !DIExpression()), !dbg !2326
  %1049 = icmp ugt i64 %1048, %1043, !dbg !2325
  %1050 = select i1 %1049, i64 %1048, i64 %1043, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1050, metadata !1536, metadata !DIExpression()), !dbg !2326
  %1051 = xor i64 %53, -1, !dbg !2327
  %1052 = icmp ult i64 %1050, %1051, !dbg !2327
  br i1 %1052, label %1053, label %1094, !dbg !2325

1053:                                             ; preds = %1041
  br i1 %29, label %1054, label %1056, !dbg !2325

1054:                                             ; preds = %1053
  %1055 = add i64 %1050, %53, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1093, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

1056:                                             ; preds = %1053
  br i1 %1049, label %1057, label %1073, !dbg !2329

1057:                                             ; preds = %1056
  %1058 = sub nsw i64 %1048, %1043, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %1058, metadata !1537, metadata !DIExpression()), !dbg !2331
  switch i32 %85, label %1059 [
    i32 48, label %1061
    i32 43, label %1061
  ], !dbg !2332

1059:                                             ; preds = %1057
  call void @llvm.dbg.value(metadata i64 0, metadata !1545, metadata !DIExpression()), !dbg !2333
  %1060 = icmp eq i64 %1058, 0, !dbg !2334
  br i1 %1060, label %1073, label %1068, !dbg !2337

1061:                                             ; preds = %1057, %1057
  call void @llvm.dbg.value(metadata i64 0, metadata !1542, metadata !DIExpression()), !dbg !2338
  %1062 = icmp eq i64 %1058, 0, !dbg !2339
  br i1 %1062, label %1073, label %1063, !dbg !2342

1063:                                             ; preds = %1061, %1063
  %1064 = phi i64 [ %1066, %1063 ], [ 0, %1061 ]
  call void @llvm.dbg.value(metadata i64 %1064, metadata !1542, metadata !DIExpression()), !dbg !2338
  %1065 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0), !dbg !2339
  %1066 = add nuw i64 %1064, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %1066, metadata !1542, metadata !DIExpression()), !dbg !2338
  %1067 = icmp eq i64 %1066, %1058, !dbg !2339
  br i1 %1067, label %1073, label %1063, !dbg !2342, !llvm.loop !2343

1068:                                             ; preds = %1059, %1068
  %1069 = phi i64 [ %1071, %1068 ], [ 0, %1059 ]
  call void @llvm.dbg.value(metadata i64 %1069, metadata !1545, metadata !DIExpression()), !dbg !2333
  %1070 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0), !dbg !2334
  %1071 = add nuw i64 %1069, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %1071, metadata !1545, metadata !DIExpression()), !dbg !2333
  %1072 = icmp eq i64 %1071, %1058, !dbg !2334
  br i1 %1072, label %1073, label %1068, !dbg !2337, !llvm.loop !2344

1073:                                             ; preds = %1063, %1068, %1061, %1059, %1056
  %1074 = and i8 %1032, 1, !dbg !2345
  %1075 = icmp eq i8 %1074, 0, !dbg !2345
  br i1 %1075, label %1090, label %1076, !dbg !2349

1076:                                             ; preds = %1073
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1767, metadata !DIExpression()) #28, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %1042, metadata !1770, metadata !DIExpression()) #28, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1043, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2350
  %1077 = tail call i32** @__ctype_toupper_loc() #32, !dbg !2350
  br label %1078, !dbg !2352

1078:                                             ; preds = %1078, %1076
  %1079 = phi i8* [ %1042, %1076 ], [ %1088, %1078 ]
  %1080 = phi i64 [ %1043, %1076 ], [ %1081, %1078 ]
  call void @llvm.dbg.value(metadata i8* %1079, metadata !1770, metadata !DIExpression()) #28, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1080, metadata !1771, metadata !DIExpression()) #28, !dbg !2350
  %1081 = add i64 %1080, -1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %1081, metadata !1771, metadata !DIExpression()) #28, !dbg !2350
  %1082 = load i32*, i32** %1077, align 8, !dbg !2354, !tbaa !689
  %1083 = load i8, i8* %1079, align 1, !dbg !2354, !tbaa !998
  %1084 = zext i8 %1083 to i64, !dbg !2354
  %1085 = getelementptr inbounds i32, i32* %1082, i64 %1084, !dbg !2354
  %1086 = load i32, i32* %1085, align 4, !dbg !2354, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %1086, metadata !1772, metadata !DIExpression()) #28, !dbg !2355
  %1087 = call i32 @fputc(i32 %1086, %struct._IO_FILE* nonnull %0) #28, !dbg !2356
  %1088 = getelementptr inbounds i8, i8* %1079, i64 1, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1088, metadata !1770, metadata !DIExpression()) #28, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1081, metadata !1771, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #28, !dbg !2350
  %1089 = icmp eq i64 %1081, 0, !dbg !2358
  br i1 %1089, label %1092, label %1078, !dbg !2352, !llvm.loop !2359

1090:                                             ; preds = %1073
  %1091 = call i64 @fwrite(i8* nonnull %1042, i64 %1043, i64 1, %struct._IO_FILE* nonnull %0), !dbg !2361
  br label %1092

1092:                                             ; preds = %1078, %1090
  %1093 = add i64 %1050, %53, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1093, metadata !1290, metadata !DIExpression()), !dbg !1563
  br label %1095

1094:                                             ; preds = %56, %149, %201, %465, %454, %646, %598, %679, %756, %915, %1041, %327
  call void @llvm.dbg.value(metadata i64 undef, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %1096, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %28) #28, !dbg !2363
  br label %1101

1095:                                             ; preds = %1092, %983, %789, %712, %677, %518, %239, %179, %79, %66, %993, %160, %217, %220, %328, %479, %658, %690, %693, %767, %770, %927, %1054
  %1096 = phi i8* [ %1033, %1092 ], [ %995, %993 ], [ %421, %518 ], [ %247, %328 ], [ %145, %983 ], [ %145, %789 ], [ %145, %239 ], [ %145, %712 ], [ %145, %677 ], [ %145, %179 ], [ %145, %160 ], [ %145, %217 ], [ %145, %220 ], [ %421, %479 ], [ %145, %658 ], [ %145, %690 ], [ %145, %693 ], [ %145, %767 ], [ %145, %770 ], [ %145, %927 ], [ %1033, %1054 ], [ %54, %66 ], [ %54, %79 ], !dbg !1596
  %1097 = phi i64 [ %1093, %1092 ], [ %53, %993 ], [ %519, %518 ], [ %329, %328 ], [ %984, %983 ], [ %791, %789 ], [ %241, %239 ], [ %714, %712 ], [ %678, %677 ], [ %183, %179 ], [ %161, %160 ], [ %218, %217 ], [ %222, %220 ], [ %480, %479 ], [ %659, %658 ], [ %691, %690 ], [ %695, %693 ], [ %768, %767 ], [ %772, %770 ], [ %928, %927 ], [ %1055, %1054 ], [ %67, %66 ], [ %83, %79 ], !dbg !1563
  call void @llvm.dbg.value(metadata i64 %1097, metadata !1290, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %1096, metadata !1292, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32 undef, metadata !1299, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1300, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 undef, metadata !1301, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1303, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %28) #28, !dbg !2363
  call void @llvm.dbg.value(metadata i32 -1, metadata !1283, metadata !DIExpression()), !dbg !1563
  %1098 = getelementptr inbounds i8, i8* %1096, i64 1, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1098, metadata !1292, metadata !DIExpression()), !dbg !1563
  %1099 = load i8, i8* %1098, align 1, !dbg !1576, !tbaa !998
  %1100 = icmp eq i8 %1099, 0, !dbg !1577
  br i1 %1100, label %1101, label %50, !dbg !1578, !llvm.loop !2365

1101:                                             ; preds = %1095, %8, %1094
  %1102 = phi i64 [ 0, %1094 ], [ 0, %8 ], [ %1097, %1095 ], !dbg !1563
  ret i64 %1102, !dbg !2367
}

; Function Attrs: nofree nounwind
declare !dbg !2368 noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2371 i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !2374 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8** %1, metadata !2380, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !2381, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %3, metadata !2382, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %4, metadata !2383, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2384, metadata !DIExpression()), !dbg !2403
  %8 = load i32, i32* @opterr, align 4, !dbg !2404, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %8, metadata !2386, metadata !DIExpression()), !dbg !2403
  store i32 0, i32* @opterr, align 4, !dbg !2405, !tbaa !830
  %9 = icmp eq i32 %0, 2, !dbg !2406
  br i1 %9, label %10, label %17, !dbg !2407

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %11, metadata !2385, metadata !DIExpression()), !dbg !2403
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2409

12:                                               ; preds = %10
  tail call void %5(i32 0) #28, !dbg !2410
  br label %17, !dbg !2411

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #28, !dbg !2412
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2387, metadata !DIExpression()), !dbg !2413
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2414
  call void @llvm.va_start(i8* nonnull %14), !dbg !2414
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2415, !tbaa !689
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #28, !dbg !2416
  call void @exit(i32 0) #30, !dbg !2417
  unreachable, !dbg !2417

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2418, !tbaa !830
  store i32 0, i32* @optind, align 4, !dbg !2419, !tbaa !830
  ret void, !dbg !2420
}

; Function Attrs: nounwind
declare !dbg !2421 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !2427 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8** %1, metadata !2432, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %2, metadata !2433, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %3, metadata !2434, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %4, metadata !2435, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i1 %5, metadata !2436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2446
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !2437, metadata !DIExpression()), !dbg !2446
  %9 = load i32, i32* @opterr, align 4, !dbg !2447, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %9, metadata !2439, metadata !DIExpression()), !dbg !2446
  store i32 1, i32* @opterr, align 4, !dbg !2448, !tbaa !830
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %10, metadata !2440, metadata !DIExpression()), !dbg !2446
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %11, metadata !2438, metadata !DIExpression()), !dbg !2446
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !2451

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #28, !dbg !2452
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !2441, metadata !DIExpression()), !dbg !2453
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !2454
  call void @llvm.va_start(i8* nonnull %13), !dbg !2454
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2455, !tbaa !689
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #28, !dbg !2456
  call void @exit(i32 0) #30, !dbg !2457
  unreachable, !dbg !2457

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !2458, !tbaa !830
  br label %18, !dbg !2459

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #28, !dbg !2460
  br label %20, !dbg !2461

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !2461, !tbaa !830
  ret void, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2468
  %2 = icmp eq i8* %0, null, !dbg !2469
  br i1 %2, label %3, label %6, !dbg !2471

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2472, !tbaa !689
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !2474
  tail call void @abort() #30, !dbg !2475
  unreachable, !dbg !2475

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2468
  %8 = icmp eq i8* %7, null, !dbg !2477
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2478
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %10, metadata !2467, metadata !DIExpression()), !dbg !2468
  %11 = ptrtoint i8* %10 to i64, !dbg !2479
  %12 = ptrtoint i8* %0 to i64, !dbg !2479
  %13 = sub i64 %11, %12, !dbg !2479
  %14 = icmp sgt i64 %13, 6, !dbg !2481
  br i1 %14, label %15, label %24, !dbg !2482

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2483
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #29, !dbg !2484
  %18 = icmp eq i32 %17, 0, !dbg !2485
  br i1 %18, label %19, label %24, !dbg !2486

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2465, metadata !DIExpression()), !dbg !2468
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #29, !dbg !2487
  %21 = icmp eq i32 %20, 0, !dbg !2490
  br i1 %21, label %22, label %24, !dbg !2491

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %23, metadata !2465, metadata !DIExpression()), !dbg !2468
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2494, !tbaa !689
  br label %24, !dbg !2495

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2465, metadata !DIExpression()), !dbg !2468
  store i8* %25, i8** @program_name, align 8, !dbg !2496, !tbaa !689
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2497, !tbaa !689
  ret void, !dbg !2498
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2499 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  %2 = tail call i32* @__errno_location() #32, !dbg !2508
  %3 = load i32, i32* %2, align 4, !dbg !2508, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %3, metadata !2505, metadata !DIExpression()), !dbg !2507
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2509
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2509
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2509
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !2510
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i32 %3, i32* %2, align 4, !dbg !2511, !tbaa !830
  ret %struct.quoting_options* %8, !dbg !2512
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !2513 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2519, metadata !DIExpression()), !dbg !2520
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2521
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2521
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2522
  %5 = load i32, i32* %4, align 8, !dbg !2522, !tbaa !2523
  ret i32 %5, !dbg !2525
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2526 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2531, metadata !DIExpression()), !dbg !2532
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2533
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2533
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2534
  store i32 %1, i32* %5, align 8, !dbg !2535, !tbaa !2523
  ret void, !dbg !2536
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !2537 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2541, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 %1, metadata !2542, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %2, metadata !2543, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 %1, metadata !2544, metadata !DIExpression()), !dbg !2549
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2550
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2550
  %6 = lshr i8 %1, 5, !dbg !2551
  %7 = zext i8 %6 to i64, !dbg !2551
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2552
  call void @llvm.dbg.value(metadata i32* %8, metadata !2545, metadata !DIExpression()), !dbg !2549
  %9 = and i8 %1, 31, !dbg !2553
  %10 = zext i8 %9 to i32, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %10, metadata !2547, metadata !DIExpression()), !dbg !2549
  %11 = load i32, i32* %8, align 4, !dbg !2554, !tbaa !830
  %12 = lshr i32 %11, %10, !dbg !2555
  %13 = and i32 %12, 1, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %13, metadata !2548, metadata !DIExpression()), !dbg !2549
  %14 = and i32 %2, 1, !dbg !2557
  %15 = xor i32 %13, %14, !dbg !2558
  %16 = shl i32 %15, %10, !dbg !2559
  %17 = xor i32 %16, %11, !dbg !2560
  store i32 %17, i32* %8, align 4, !dbg !2560, !tbaa !830
  ret i32 %13, !dbg !2561
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2562 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2566, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()), !dbg !2569
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2570
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2566, metadata !DIExpression()), !dbg !2569
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2573
  %6 = load i32, i32* %5, align 4, !dbg !2573, !tbaa !2574
  call void @llvm.dbg.value(metadata i32 %6, metadata !2568, metadata !DIExpression()), !dbg !2569
  store i32 %1, i32* %5, align 4, !dbg !2575, !tbaa !2574
  ret i32 %6, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2577 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()), !dbg !2584
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2585
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()), !dbg !2584
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2588
  store i32 10, i32* %6, align 8, !dbg !2589, !tbaa !2523
  %7 = icmp ne i8* %1, null, !dbg !2590
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2592
  br i1 %9, label %11, label %10, !dbg !2592

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !2593
  unreachable, !dbg !2593

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2594
  store i8* %1, i8** %12, align 8, !dbg !2595, !tbaa !2596
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2597
  store i8* %2, i8** %13, align 8, !dbg !2598, !tbaa !2599
  ret void, !dbg !2600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2605, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %1, metadata !2606, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2607, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %3, metadata !2608, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2609, metadata !DIExpression()), !dbg !2613
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2614
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2610, metadata !DIExpression()), !dbg !2613
  %8 = tail call i32* @__errno_location() #32, !dbg !2615
  %9 = load i32, i32* %8, align 4, !dbg !2615, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %9, metadata !2611, metadata !DIExpression()), !dbg !2613
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2616
  %11 = load i32, i32* %10, align 8, !dbg !2616, !tbaa !2523
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2617
  %13 = load i32, i32* %12, align 4, !dbg !2617, !tbaa !2574
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2618
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2619
  %16 = load i8*, i8** %15, align 8, !dbg !2619, !tbaa !2596
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2620
  %18 = load i8*, i8** %17, align 8, !dbg !2620, !tbaa !2599
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %19, metadata !2612, metadata !DIExpression()), !dbg !2613
  store i32 %9, i32* %8, align 4, !dbg !2622, !tbaa !830
  ret i64 %19, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2624 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %2, metadata !2632, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %3, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %4, metadata !2634, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %5, metadata !2635, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32* %6, metadata !2636, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %7, metadata !2637, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %8, metadata !2638, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* null, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2643, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2697
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !2698
  %14 = icmp eq i64 %13, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i1 %14, metadata !2645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2697
  %15 = lshr i32 %5, 1, !dbg !2700
  %16 = trunc i32 %15 to i8, !dbg !2700
  %17 = and i8 %16, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i8 %17, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2649, metadata !DIExpression()), !dbg !2697
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2701

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2702
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2703
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2704
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2705
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2697
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2706
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2707
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2708
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %38, metadata !2649, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %37, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %36, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %35, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %34, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %33, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %32, metadata !2643, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %31, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %30, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %29, metadata !2638, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %28, metadata !2637, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %27, metadata !2634, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2691), !dbg !2709
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
  ], !dbg !2710

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 5, metadata !2634, metadata !DIExpression()), !dbg !2697
  br label %92, !dbg !2711

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 5, metadata !2634, metadata !DIExpression()), !dbg !2697
  %42 = and i8 %35, 1, !dbg !2713
  %43 = icmp eq i8 %42, 0, !dbg !2713
  br i1 %43, label %44, label %92, !dbg !2711

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2715
  br i1 %45, label %92, label %46, !dbg !2718

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2715, !tbaa !998
  br label %92, !dbg !2715

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %27), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %48, metadata !2637, metadata !DIExpression()), !dbg !2697
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %27), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %49, metadata !2638, metadata !DIExpression()), !dbg !2697
  br label %50, !dbg !2724

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2638, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %51, metadata !2637, metadata !DIExpression()), !dbg !2697
  %53 = and i8 %35, 1, !dbg !2725
  %54 = icmp eq i8 %53, 0, !dbg !2725
  br i1 %54, label %55, label %70, !dbg !2727

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2640, metadata !DIExpression()), !dbg !2697
  %56 = load i8, i8* %51, align 1, !dbg !2728, !tbaa !998
  %57 = icmp eq i8 %56, 0, !dbg !2731
  br i1 %57, label %70, label %58, !dbg !2731

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %61, metadata !2640, metadata !DIExpression()), !dbg !2697
  %62 = icmp ult i64 %61, %39, !dbg !2732
  br i1 %62, label %63, label %65, !dbg !2735

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2732
  store i8 %59, i8* %64, align 1, !dbg !2732, !tbaa !998
  br label %65, !dbg !2732

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %66, metadata !2640, metadata !DIExpression()), !dbg !2697
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %67, metadata !2642, metadata !DIExpression()), !dbg !2697
  %68 = load i8, i8* %67, align 1, !dbg !2728, !tbaa !998
  %69 = icmp eq i8 %68, 0, !dbg !2731
  br i1 %69, label %70, label %58, !dbg !2731, !llvm.loop !2737

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %71, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %52, metadata !2642, metadata !DIExpression()), !dbg !2697
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %72, metadata !2643, metadata !DIExpression()), !dbg !2697
  br label %92, !dbg !2741

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2697
  br label %74, !dbg !2742

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %75, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2646, metadata !DIExpression()), !dbg !2697
  br label %76, !dbg !2743

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2705
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %78, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %77, metadata !2644, metadata !DIExpression()), !dbg !2697
  %79 = and i8 %78, 1, !dbg !2744
  %80 = icmp eq i8 %79, 0, !dbg !2744
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2746
  br label %82, !dbg !2746

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2697
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2700
  call void @llvm.dbg.value(metadata i8 %84, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %83, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 2, metadata !2634, metadata !DIExpression()), !dbg !2697
  %85 = and i8 %84, 1, !dbg !2747
  %86 = icmp eq i8 %85, 0, !dbg !2747
  br i1 %86, label %87, label %92, !dbg !2749

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2750
  br i1 %88, label %92, label %89, !dbg !2753

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2750, !tbaa !998
  br label %92, !dbg !2750

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2697
  br label %92, !dbg !2754

91:                                               ; preds = %26
  call void @abort() #30, !dbg !2755
  unreachable, !dbg !2755

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2739
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %40 ], !dbg !2697
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2697
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2697
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %100, metadata !2646, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %99, metadata !2644, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %98, metadata !2643, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %97, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %96, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %95, metadata !2638, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %94, metadata !2637, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %93, metadata !2634, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2697
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
  br label %121, !dbg !2756

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2757
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2739
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2702
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2706
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2707
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2708
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %128, metadata !2649, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %127, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %126, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %125, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %124, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %123, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %122, metadata !2639, metadata !DIExpression()), !dbg !2697
  %130 = icmp eq i64 %125, -1, !dbg !2758
  br i1 %130, label %131, label %135, !dbg !2759

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2760
  %133 = load i8, i8* %132, align 1, !dbg !2760, !tbaa !998
  %134 = icmp eq i8 %133, 0, !dbg !2761
  br i1 %134, label %587, label %137, !dbg !2762

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2763
  br i1 %136, label %587, label %137, !dbg !2762

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2764
  br i1 %106, label %138, label %153, !dbg !2765

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2767
  %140 = and i1 %107, %130, !dbg !2768
  br i1 %140, label %141, label %143, !dbg !2768

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %142, metadata !2633, metadata !DIExpression()), !dbg !2697
  br label %143, !dbg !2770

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2770
  call void @llvm.dbg.value(metadata i64 %144, metadata !2633, metadata !DIExpression()), !dbg !2697
  %145 = icmp ugt i64 %139, %144, !dbg !2771
  br i1 %145, label %153, label %146, !dbg !2772

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2773
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2774
  %149 = icmp ne i32 %148, 0, !dbg !2775
  %150 = or i1 %149, %109, !dbg !2776
  %151 = xor i1 %149, true, !dbg !2776
  %152 = zext i1 %151 to i8, !dbg !2776
  br i1 %150, label %153, label %646, !dbg !2776

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2764
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2764
  call void @llvm.dbg.value(metadata i8 %156, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %154, metadata !2633, metadata !DIExpression()), !dbg !2697
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2777
  %158 = load i8, i8* %157, align 1, !dbg !2777, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %158, metadata !2650, metadata !DIExpression()), !dbg !2764
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
  ], !dbg !2778

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2779

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2780

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2764
  %162 = and i8 %126, 1, !dbg !2784
  %163 = icmp eq i8 %162, 0, !dbg !2784
  %164 = and i1 %110, %163, !dbg !2784
  br i1 %164, label %165, label %181, !dbg !2784

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2786
  br i1 %166, label %167, label %169, !dbg !2790

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2786
  store i8 39, i8* %168, align 1, !dbg !2786, !tbaa !998
  br label %169, !dbg !2786

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %170, metadata !2640, metadata !DIExpression()), !dbg !2697
  %171 = icmp ult i64 %170, %129, !dbg !2791
  br i1 %171, label %172, label %174, !dbg !2794

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2791
  store i8 36, i8* %173, align 1, !dbg !2791, !tbaa !998
  br label %174, !dbg !2791

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %175, metadata !2640, metadata !DIExpression()), !dbg !2697
  %176 = icmp ult i64 %175, %129, !dbg !2795
  br i1 %176, label %177, label %179, !dbg !2798

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2795
  store i8 39, i8* %178, align 1, !dbg !2795, !tbaa !998
  br label %179, !dbg !2795

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %180, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %181, !dbg !2799

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2697
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %183, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %182, metadata !2640, metadata !DIExpression()), !dbg !2697
  %184 = icmp ult i64 %182, %129, !dbg !2800
  br i1 %184, label %185, label %187, !dbg !2803

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2800
  store i8 92, i8* %186, align 1, !dbg !2800, !tbaa !998
  br label %187, !dbg !2800

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %188, metadata !2640, metadata !DIExpression()), !dbg !2697
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2804
  br i1 %191, label %192, label %473, !dbg !2804

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2806
  %194 = load i8, i8* %193, align 1, !dbg !2806, !tbaa !998
  %195 = add i8 %194, -48, !dbg !2807
  %196 = icmp ult i8 %195, 10, !dbg !2807
  br i1 %196, label %197, label %473, !dbg !2807

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2808
  br i1 %198, label %199, label %201, !dbg !2812

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2808
  store i8 48, i8* %200, align 1, !dbg !2808, !tbaa !998
  br label %201, !dbg !2808

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %202, metadata !2640, metadata !DIExpression()), !dbg !2697
  %203 = icmp ult i64 %202, %129, !dbg !2813
  br i1 %203, label %204, label %206, !dbg !2816

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2813
  store i8 48, i8* %205, align 1, !dbg !2813, !tbaa !998
  br label %206, !dbg !2813

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %207, metadata !2640, metadata !DIExpression()), !dbg !2697
  br label %473, !dbg !2817

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2818

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2819

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2820

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2822
  br i1 %214, label %215, label %473, !dbg !2822

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2824
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2825
  %218 = load i8, i8* %217, align 1, !dbg !2825, !tbaa !998
  %219 = icmp eq i8 %218, 63, !dbg !2826
  br i1 %219, label %220, label %473, !dbg !2827

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2828
  %222 = load i8, i8* %221, align 1, !dbg !2828, !tbaa !998
  %223 = sext i8 %222 to i32, !dbg !2828
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
  ], !dbg !2829

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2830

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 undef, metadata !2639, metadata !DIExpression()), !dbg !2697
  %226 = icmp ult i64 %123, %129, !dbg !2832
  br i1 %226, label %227, label %229, !dbg !2835

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2832
  store i8 63, i8* %228, align 1, !dbg !2832, !tbaa !998
  br label %229, !dbg !2832

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %230, metadata !2640, metadata !DIExpression()), !dbg !2697
  %231 = icmp ult i64 %230, %129, !dbg !2836
  br i1 %231, label %232, label %234, !dbg !2839

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2836
  store i8 34, i8* %233, align 1, !dbg !2836, !tbaa !998
  br label %234, !dbg !2836

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %235, metadata !2640, metadata !DIExpression()), !dbg !2697
  %236 = icmp ult i64 %235, %129, !dbg !2840
  br i1 %236, label %237, label %239, !dbg !2843

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2840
  store i8 34, i8* %238, align 1, !dbg !2840, !tbaa !998
  br label %239, !dbg !2840

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %240, metadata !2640, metadata !DIExpression()), !dbg !2697
  %241 = icmp ult i64 %240, %129, !dbg !2844
  br i1 %241, label %242, label %244, !dbg !2847

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2844
  store i8 63, i8* %243, align 1, !dbg !2844, !tbaa !998
  br label %244, !dbg !2844

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %245, metadata !2640, metadata !DIExpression()), !dbg !2697
  br label %473, !dbg !2848

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2654, metadata !DIExpression()), !dbg !2764
  br label %256, !dbg !2849

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2654, metadata !DIExpression()), !dbg !2764
  br label %256, !dbg !2850

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2654, metadata !DIExpression()), !dbg !2764
  br label %254, !dbg !2851

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2654, metadata !DIExpression()), !dbg !2764
  br label %254, !dbg !2852

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2654, metadata !DIExpression()), !dbg !2764
  br label %256, !dbg !2853

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2654, metadata !DIExpression()), !dbg !2764
  br i1 %110, label %252, label %253, !dbg !2854

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2855

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2858

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2860
  call void @llvm.dbg.value(metadata i8 %255, metadata !2654, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.label(metadata !2692), !dbg !2861
  br i1 %111, label %256, label %631, !dbg !2862

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2860
  call void @llvm.dbg.value(metadata i8 %257, metadata !2654, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.label(metadata !2693), !dbg !2864
  br i1 %102, label %495, label %473, !dbg !2865

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2866

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2867, !tbaa !998
  %261 = icmp eq i8 %260, 0, !dbg !2869
  br i1 %261, label %262, label %473, !dbg !2870

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2871
  br i1 %263, label %264, label %473, !dbg !2873

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2764
  br label %265, !dbg !2874

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2764
  call void @llvm.dbg.value(metadata i8 %266, metadata !2657, metadata !DIExpression()), !dbg !2764
  br i1 %111, label %473, label %631, !dbg !2875

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2764
  br i1 %110, label %268, label %473, !dbg !2877

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2878

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2881
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2883
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2883
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %274, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %273, metadata !2641, metadata !DIExpression()), !dbg !2697
  %275 = icmp ult i64 %123, %274, !dbg !2884
  br i1 %275, label %276, label %278, !dbg !2887

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2884
  store i8 39, i8* %277, align 1, !dbg !2884, !tbaa !998
  br label %278, !dbg !2884

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %279, metadata !2640, metadata !DIExpression()), !dbg !2697
  %280 = icmp ult i64 %279, %274, !dbg !2888
  br i1 %280, label %281, label %283, !dbg !2891

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2888
  store i8 92, i8* %282, align 1, !dbg !2888, !tbaa !998
  br label %283, !dbg !2888

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %284, metadata !2640, metadata !DIExpression()), !dbg !2697
  %285 = icmp ult i64 %284, %274, !dbg !2892
  br i1 %285, label %286, label %288, !dbg !2895

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2892
  store i8 39, i8* %287, align 1, !dbg !2892, !tbaa !998
  br label %288, !dbg !2892

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %289, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %473, !dbg !2896

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2897

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2658, metadata !DIExpression()), !dbg !2898
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2899
  %293 = load i16*, i16** %292, align 8, !dbg !2899, !tbaa !689
  %294 = zext i8 %158 to i64, !dbg !2899
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2899
  %296 = load i16, i16* %295, align 2, !dbg !2899, !tbaa !2901
  %297 = lshr i16 %296, 14, !dbg !2902
  %298 = trunc i16 %297 to i8, !dbg !2902
  %299 = and i8 %298, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i8 %354, metadata !2661, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %355, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %306, metadata !2633, metadata !DIExpression()), !dbg !2697
  %300 = icmp eq i8 %299, 0, !dbg !2903
  call void @llvm.dbg.value(metadata i1 %357, metadata !2657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2764
  br label %359, !dbg !2904

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2662, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %23, metadata !2907, metadata !DIExpression()) #28, !dbg !2915
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #28, !dbg !2915
  call void @llvm.dbg.value(metadata i64 8, metadata !2914, metadata !DIExpression()) #28, !dbg !2915
  store i64 0, i64* %10, align 8, !dbg !2917
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2898
  %302 = icmp eq i64 %154, -1, !dbg !2918
  br i1 %302, label %303, label %305, !dbg !2920

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %304, metadata !2633, metadata !DIExpression()), !dbg !2697
  br label %305, !dbg !2922

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2764
  call void @llvm.dbg.value(metadata i64 %306, metadata !2633, metadata !DIExpression()), !dbg !2697
  br label %307, !dbg !2923

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2924
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2925
  call void @llvm.dbg.value(metadata i8 %309, metadata !2661, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %308, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2926
  %310 = add i64 %308, %122, !dbg !2927
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2928
  %312 = sub i64 %306, %310, !dbg !2929
  call void @llvm.dbg.value(metadata i32* %12, metadata !2677, metadata !DIExpression(DW_OP_deref)), !dbg !2930
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %313, metadata !2680, metadata !DIExpression()), !dbg !2930
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2932

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2658, metadata !DIExpression()), !dbg !2898
  %315 = icmp ugt i64 %306, %310, !dbg !2933
  br i1 %315, label %316, label %341, !dbg !2935

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2936
  br label %318, !dbg !2936

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2658, metadata !DIExpression()), !dbg !2898
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2937
  %322 = load i8, i8* %321, align 1, !dbg !2937, !tbaa !998
  %323 = icmp eq i8 %322, 0, !dbg !2935
  br i1 %323, label %341, label %324, !dbg !2936

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %325, metadata !2658, metadata !DIExpression()), !dbg !2898
  %326 = add i64 %325, %122, !dbg !2939
  %327 = icmp ult i64 %326, %306, !dbg !2933
  br i1 %327, label %318, label %341, !dbg !2935, !llvm.loop !2940

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2941
  call void @llvm.dbg.value(metadata i64 1, metadata !2681, metadata !DIExpression()), !dbg !2942
  br i1 %330, label %331, label %344, !dbg !2941

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2681, metadata !DIExpression()), !dbg !2942
  %333 = add i64 %332, %310, !dbg !2943
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2946
  %335 = load i8, i8* %334, align 1, !dbg !2946, !tbaa !998
  %336 = sext i8 %335 to i32, !dbg !2946
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2947

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %338, metadata !2681, metadata !DIExpression()), !dbg !2942
  %339 = icmp eq i64 %338, %313, !dbg !2949
  br i1 %339, label %344, label %331, !dbg !2950, !llvm.loop !2951

340:                                              ; preds = %307
  br label %341, !dbg !2953

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2661, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 undef, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2953
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2954, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %345, metadata !2677, metadata !DIExpression()), !dbg !2930
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2956
  %347 = icmp eq i32 %346, 0, !dbg !2956
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2957
  call void @llvm.dbg.value(metadata i8 %348, metadata !2661, metadata !DIExpression()), !dbg !2898
  %349 = add i64 %313, %308, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %349, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2953
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !2959
  %351 = icmp eq i32 %350, 0, !dbg !2960
  br i1 %351, label %307, label %353, !dbg !2961, !llvm.loop !2962

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2661, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 undef, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2964
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2964
  call void @llvm.dbg.value(metadata i8 %354, metadata !2661, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %355, metadata !2658, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %306, metadata !2633, metadata !DIExpression()), !dbg !2697
  %356 = and i8 %354, 1, !dbg !2903
  %357 = icmp eq i8 %356, 0, !dbg !2903
  call void @llvm.dbg.value(metadata i1 %357, metadata !2657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2764
  %358 = icmp ugt i64 %355, 1, !dbg !2965
  br i1 %358, label %367, label %359, !dbg !2904

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2966
  br i1 %364, label %367, label %365, !dbg !2966

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %472, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %441, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %440, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %439, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %438, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %371, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %437, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %375, metadata !2639, metadata !DIExpression()), !dbg !2697
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %372, metadata !2688, metadata !DIExpression()), !dbg !2968
  %373 = and i1 %102, %368
  br label %374, !dbg !2969

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2757
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2697
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2706
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2764
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2764
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2970
  call void @llvm.dbg.value(metadata i8 %380, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %379, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %378, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %377, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %376, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %375, metadata !2639, metadata !DIExpression()), !dbg !2697
  br i1 %373, label %381, label %427, !dbg !2971

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2976

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2764
  %383 = and i8 %377, 1, !dbg !2979
  %384 = icmp eq i8 %383, 0, !dbg !2979
  %385 = and i1 %110, %384, !dbg !2979
  br i1 %385, label %386, label %402, !dbg !2979

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2981
  br i1 %387, label %388, label %390, !dbg !2985

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2981
  store i8 39, i8* %389, align 1, !dbg !2981, !tbaa !998
  br label %390, !dbg !2981

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %391, metadata !2640, metadata !DIExpression()), !dbg !2697
  %392 = icmp ult i64 %391, %129, !dbg !2986
  br i1 %392, label %393, label %395, !dbg !2989

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2986
  store i8 36, i8* %394, align 1, !dbg !2986, !tbaa !998
  br label %395, !dbg !2986

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %396, metadata !2640, metadata !DIExpression()), !dbg !2697
  %397 = icmp ult i64 %396, %129, !dbg !2990
  br i1 %397, label %398, label %400, !dbg !2993

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2990
  store i8 39, i8* %399, align 1, !dbg !2990, !tbaa !998
  br label %400, !dbg !2990

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %401, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %402, !dbg !2994

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2697
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %404, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %403, metadata !2640, metadata !DIExpression()), !dbg !2697
  %405 = icmp ult i64 %403, %129, !dbg !2995
  br i1 %405, label %406, label %408, !dbg !2998

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2995
  store i8 92, i8* %407, align 1, !dbg !2995, !tbaa !998
  br label %408, !dbg !2995

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %409, metadata !2640, metadata !DIExpression()), !dbg !2697
  %410 = icmp ult i64 %409, %129, !dbg !2999
  br i1 %410, label %411, label %415, !dbg !3002

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2999
  %413 = or i8 %412, 48, !dbg !2999
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2999
  store i8 %413, i8* %414, align 1, !dbg !2999, !tbaa !998
  br label %415, !dbg !2999

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %416, metadata !2640, metadata !DIExpression()), !dbg !2697
  %417 = icmp ult i64 %416, %129, !dbg !3003
  br i1 %417, label %418, label %423, !dbg !3006

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !3003
  %420 = and i8 %419, 7, !dbg !3003
  %421 = or i8 %420, 48, !dbg !3003
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !3003
  store i8 %421, i8* %422, align 1, !dbg !3003, !tbaa !998
  br label %423, !dbg !3003

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %424, metadata !2640, metadata !DIExpression()), !dbg !2697
  %425 = and i8 %378, 7, !dbg !3007
  %426 = or i8 %425, 48, !dbg !3008
  call void @llvm.dbg.value(metadata i8 %426, metadata !2650, metadata !DIExpression()), !dbg !2764
  br label %436, !dbg !3009

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !3010
  %429 = icmp eq i8 %428, 0, !dbg !3010
  br i1 %429, label %436, label %430, !dbg !3012

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !3013
  br i1 %431, label %432, label %434, !dbg !3017

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3013
  store i8 92, i8* %433, align 1, !dbg !3013, !tbaa !998
  br label %434, !dbg !3013

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %435, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2764
  br label %436, !dbg !3018

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2697
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2706
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2764
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2764
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2764
  call void @llvm.dbg.value(metadata i8 %441, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %440, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %439, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %438, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %437, metadata !2640, metadata !DIExpression()), !dbg !2697
  %442 = add i64 %375, 1, !dbg !3019
  %443 = icmp ugt i64 %372, %442, !dbg !3021
  br i1 %443, label %444, label %471, !dbg !3022

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !3023
  %446 = icmp ne i8 %445, 0, !dbg !3023
  %447 = and i8 %441, 1, !dbg !3023
  %448 = icmp eq i8 %447, 0, !dbg !3023
  %449 = and i1 %446, %448, !dbg !3023
  br i1 %449, label %450, label %461, !dbg !3023

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !3026
  br i1 %451, label %452, label %454, !dbg !3030

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !3026
  store i8 39, i8* %453, align 1, !dbg !3026, !tbaa !998
  br label %454, !dbg !3026

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %455, metadata !2640, metadata !DIExpression()), !dbg !2697
  %456 = icmp ult i64 %455, %129, !dbg !3031
  br i1 %456, label %457, label %459, !dbg !3034

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !3031
  store i8 39, i8* %458, align 1, !dbg !3031, !tbaa !998
  br label %459, !dbg !3031

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %460, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %461, !dbg !3035

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !3036
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %463, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %462, metadata !2640, metadata !DIExpression()), !dbg !2697
  %464 = icmp ult i64 %462, %129, !dbg !3037
  br i1 %464, label %465, label %467, !dbg !3040

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !3037
  store i8 %439, i8* %466, align 1, !dbg !3037, !tbaa !998
  br label %467, !dbg !3037

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %468, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %442, metadata !2639, metadata !DIExpression()), !dbg !2697
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !3041
  %470 = load i8, i8* %469, align 1, !dbg !3041, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %470, metadata !2650, metadata !DIExpression()), !dbg !2764
  br label %374, !dbg !3042, !llvm.loop !3043

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %472, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %441, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %440, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %439, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %438, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %371, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %437, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %375, metadata !2639, metadata !DIExpression()), !dbg !2697
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2757
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2697
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2702
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !3046
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2697
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2697
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2764
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2764
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2764
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %482, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %481, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %156, metadata !2655, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %480, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %479, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %478, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %477, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %476, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %475, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %474, metadata !2639, metadata !DIExpression()), !dbg !2697
  br i1 %116, label %494, label %484, !dbg !3047

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !3049
  %486 = zext i8 %485 to i64, !dbg !3049
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !3050
  %488 = load i32, i32* %487, align 4, !dbg !3050, !tbaa !830
  %489 = and i8 %480, 31, !dbg !3051
  %490 = zext i8 %489 to i32, !dbg !3051
  %491 = shl nuw i32 1, %490, !dbg !3052
  %492 = and i32 %488, %491, !dbg !3052
  %493 = icmp eq i32 %492, 0, !dbg !3052
  br i1 %493, label %494, label %495, !dbg !3053

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !3054

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !3055
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2697
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2702
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !3046
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2706
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2707
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2764
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2764
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %503, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %502, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %501, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %500, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %499, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %498, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %497, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %496, metadata !2639, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2694), !dbg !3056
  br i1 %109, label %505, label %635, !dbg !3057

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2764
  %506 = and i8 %500, 1, !dbg !3059
  %507 = icmp eq i8 %506, 0, !dbg !3059
  %508 = and i1 %110, %507, !dbg !3059
  br i1 %508, label %509, label %525, !dbg !3059

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !3061
  br i1 %510, label %511, label %513, !dbg !3065

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !3061
  store i8 39, i8* %512, align 1, !dbg !3061, !tbaa !998
  br label %513, !dbg !3061

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %514, metadata !2640, metadata !DIExpression()), !dbg !2697
  %515 = icmp ult i64 %514, %504, !dbg !3066
  br i1 %515, label %516, label %518, !dbg !3069

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !3066
  store i8 36, i8* %517, align 1, !dbg !3066, !tbaa !998
  br label %518, !dbg !3066

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %519, metadata !2640, metadata !DIExpression()), !dbg !2697
  %520 = icmp ult i64 %519, %504, !dbg !3070
  br i1 %520, label %521, label %523, !dbg !3073

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3070
  store i8 39, i8* %522, align 1, !dbg !3070, !tbaa !998
  br label %523, !dbg !3070

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %524, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %525, !dbg !3074

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2764
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %527, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %526, metadata !2640, metadata !DIExpression()), !dbg !2697
  %528 = icmp ult i64 %526, %504, !dbg !3075
  br i1 %528, label %529, label %531, !dbg !3078

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3075
  store i8 92, i8* %530, align 1, !dbg !3075, !tbaa !998
  br label %531, !dbg !3075

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %543, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %542, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %541, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %540, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %539, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %538, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %537, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %536, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %535, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %534, metadata !2639, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2695), !dbg !3079
  br label %560, !dbg !3080

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !3055
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2697
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2702
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !3046
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2706
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2707
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !3083
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2764
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2764
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %542, metadata !2657, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %541, metadata !2656, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %540, metadata !2650, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8 %539, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %538, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %537, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %536, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %535, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %534, metadata !2639, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2695), !dbg !3079
  %544 = and i8 %538, 1, !dbg !3080
  %545 = icmp ne i8 %544, 0, !dbg !3080
  %546 = and i8 %541, 1, !dbg !3080
  %547 = icmp eq i8 %546, 0, !dbg !3080
  %548 = and i1 %545, %547, !dbg !3080
  br i1 %548, label %549, label %560, !dbg !3080

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !3084
  br i1 %550, label %551, label %553, !dbg !3088

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !3084
  store i8 39, i8* %552, align 1, !dbg !3084, !tbaa !998
  br label %553, !dbg !3084

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %554, metadata !2640, metadata !DIExpression()), !dbg !2697
  %555 = icmp ult i64 %554, %543, !dbg !3089
  br i1 %555, label %556, label %558, !dbg !3092

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !3089
  store i8 39, i8* %557, align 1, !dbg !3089, !tbaa !998
  br label %558, !dbg !3089

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %559, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2697
  br label %560, !dbg !3093

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2764
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2697
  call void @llvm.dbg.value(metadata i8 %569, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %568, metadata !2640, metadata !DIExpression()), !dbg !2697
  %570 = icmp ult i64 %568, %561, !dbg !3094
  br i1 %570, label %571, label %573, !dbg !3097

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !3094
  store i8 %563, i8* %572, align 1, !dbg !3094, !tbaa !998
  br label %573, !dbg !3094

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %574, metadata !2640, metadata !DIExpression()), !dbg !2697
  %575 = icmp eq i8 %562, 0, !dbg !3098
  %576 = select i1 %575, i8 0, i8 %128, !dbg !3100
  call void @llvm.dbg.value(metadata i8 %576, metadata !2649, metadata !DIExpression()), !dbg !2697
  br label %577, !dbg !3101

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !3055
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2697
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2702
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !3046
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2706
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2697
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2708
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %584, metadata !2649, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %583, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 %582, metadata !2647, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %581, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %580, metadata !2641, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %579, metadata !2640, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %578, metadata !2639, metadata !DIExpression()), !dbg !2697
  %586 = add i64 %578, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %586, metadata !2639, metadata !DIExpression()), !dbg !2697
  br label %121, !dbg !3103, !llvm.loop !3104

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !3106
  %590 = and i1 %110, %589, !dbg !3108
  %591 = xor i1 %590, true, !dbg !3108
  %592 = or i1 %109, %591, !dbg !3108
  br i1 %592, label %593, label %635, !dbg !3108

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !3109
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !3109
  br i1 %597, label %598, label %607, !dbg !3109

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !3111
  %600 = icmp eq i8 %599, 0, !dbg !3111
  br i1 %600, label %603, label %601, !dbg !3114

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3115
  br label %652, !dbg !3116

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !3117
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !3119
  br i1 %606, label %26, label %607, !dbg !3119

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !3120
  %610 = and i1 %609, %608, !dbg !3122
  br i1 %610, label %611, label %626, !dbg !3122

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %123, metadata !2640, metadata !DIExpression()), !dbg !2697
  %612 = load i8, i8* %97, align 1, !dbg !3123, !tbaa !998
  %613 = icmp eq i8 %612, 0, !dbg !3126
  br i1 %613, label %626, label %614, !dbg !3126

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2642, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %617, metadata !2640, metadata !DIExpression()), !dbg !2697
  %618 = icmp ult i64 %617, %129, !dbg !3127
  br i1 %618, label %619, label %621, !dbg !3130

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !3127
  store i8 %615, i8* %620, align 1, !dbg !3127, !tbaa !998
  br label %621, !dbg !3127

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %622, metadata !2640, metadata !DIExpression()), !dbg !2697
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %623, metadata !2642, metadata !DIExpression()), !dbg !2697
  %624 = load i8, i8* %623, align 1, !dbg !3123, !tbaa !998
  %625 = icmp eq i8 %624, 0, !dbg !3126
  br i1 %625, label %626, label %614, !dbg !3126, !llvm.loop !3132

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %627, metadata !2640, metadata !DIExpression()), !dbg !2697
  %628 = icmp ult i64 %627, %129, !dbg !3134
  br i1 %628, label %629, label %652, !dbg !3136

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !3137
  store i8 0, i8* %630, align 1, !dbg !3138, !tbaa !998
  br label %652, !dbg !3137

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %637, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2696), !dbg !3139
  %633 = icmp eq i8 %101, 0, !dbg !3140
  %634 = select i1 %633, i32 2, i32 4, !dbg !3140
  br label %642, !dbg !3140

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2631, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %637, metadata !2633, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.label(metadata !2696), !dbg !3139
  %639 = icmp eq i32 %93, 2, !dbg !3142
  %640 = icmp eq i8 %636, 0, !dbg !3140
  %641 = select i1 %640, i32 2, i32 4, !dbg !3140
  br i1 %639, label %642, label %646, !dbg !3140

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !3140

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2634, metadata !DIExpression()), !dbg !2697
  %650 = and i32 %5, -3, !dbg !3143
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !3144
  br label %652, !dbg !3145

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !3146
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3155
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %3, metadata !3153, metadata !DIExpression()), !dbg !3155
  %4 = icmp eq i8* %3, %0, !dbg !3157
  br i1 %4, label %5, label %72, !dbg !3159

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %6, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %6, metadata !3161, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* undef, metadata !3167, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 85, metadata !3168, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 84, metadata !3169, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 70, metadata !3170, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 45, metadata !3171, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 56, metadata !3172, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 0, metadata !3173, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8 0, metadata !3176, metadata !DIExpression()), !dbg !3177
  %7 = load i8, i8* %6, align 1, !dbg !3180, !tbaa !998
  %8 = and i8 %7, -33, !dbg !3180
  %9 = sext i8 %8 to i32, !dbg !3180
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3180

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3182, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* undef, metadata !3187, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 84, metadata !3188, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 70, metadata !3189, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 45, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 56, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 0, metadata !3195, metadata !DIExpression()), !dbg !3196
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3200
  %12 = load i8, i8* %11, align 1, !dbg !3200, !tbaa !998
  %13 = and i8 %12, -33, !dbg !3200
  %14 = icmp eq i8 %13, 84, !dbg !3200
  br i1 %14, label %15, label %69, !dbg !3200

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3202, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* undef, metadata !3207, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 70, metadata !3208, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 45, metadata !3209, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 56, metadata !3210, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3211, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3212, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3213, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3214, metadata !DIExpression()), !dbg !3215
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3219
  %17 = load i8, i8* %16, align 1, !dbg !3219, !tbaa !998
  %18 = and i8 %17, -33, !dbg !3219
  %19 = icmp eq i8 %18, 70, !dbg !3219
  br i1 %19, label %20, label %69, !dbg !3219

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3221, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8* undef, metadata !3226, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 45, metadata !3227, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 56, metadata !3228, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 0, metadata !3229, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 0, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 0, metadata !3231, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 0, metadata !3232, metadata !DIExpression()), !dbg !3233
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3237
  %22 = load i8, i8* %21, align 1, !dbg !3237, !tbaa !998
  %23 = icmp eq i8 %22, 45, !dbg !3237
  br i1 %23, label %24, label %69, !dbg !3239

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3240, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8* undef, metadata !3245, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 56, metadata !3246, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 0, metadata !3247, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 0, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 0, metadata !3249, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 0, metadata !3250, metadata !DIExpression()), !dbg !3251
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3255
  %26 = load i8, i8* %25, align 1, !dbg !3255, !tbaa !998
  %27 = icmp eq i8 %26, 56, !dbg !3255
  br i1 %27, label %28, label %69, !dbg !3257

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3258, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8* undef, metadata !3263, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 0, metadata !3264, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 0, metadata !3265, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 0, metadata !3266, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 0, metadata !3267, metadata !DIExpression()), !dbg !3268
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3272
  %30 = load i8, i8* %29, align 1, !dbg !3272, !tbaa !998
  %31 = icmp eq i8 %30, 0, !dbg !3272
  br i1 %31, label %32, label %69, !dbg !3274

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3275, !tbaa !998
  %34 = icmp eq i8 %33, 96, !dbg !3276
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !3275
  br label %72, !dbg !3277

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3182, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* undef, metadata !3187, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 66, metadata !3188, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 49, metadata !3189, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 56, metadata !3190, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 48, metadata !3191, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 51, metadata !3192, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 48, metadata !3193, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3194, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 0, metadata !3195, metadata !DIExpression()), !dbg !3278
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3282
  %38 = load i8, i8* %37, align 1, !dbg !3282, !tbaa !998
  %39 = and i8 %38, -33, !dbg !3282
  %40 = icmp eq i8 %39, 66, !dbg !3282
  br i1 %40, label %41, label %69, !dbg !3282

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3202, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8* undef, metadata !3207, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 49, metadata !3208, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 56, metadata !3209, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 48, metadata !3210, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 51, metadata !3211, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 48, metadata !3212, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 0, metadata !3213, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 0, metadata !3214, metadata !DIExpression()), !dbg !3283
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3285
  %43 = load i8, i8* %42, align 1, !dbg !3285, !tbaa !998
  %44 = icmp eq i8 %43, 49, !dbg !3285
  br i1 %44, label %45, label %69, !dbg !3286

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3221, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* undef, metadata !3226, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 56, metadata !3227, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 48, metadata !3228, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 51, metadata !3229, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 48, metadata !3230, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 0, metadata !3231, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 0, metadata !3232, metadata !DIExpression()), !dbg !3287
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3289
  %47 = load i8, i8* %46, align 1, !dbg !3289, !tbaa !998
  %48 = icmp eq i8 %47, 56, !dbg !3289
  br i1 %48, label %49, label %69, !dbg !3290

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3240, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* undef, metadata !3245, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 48, metadata !3246, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 51, metadata !3247, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 48, metadata !3248, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 0, metadata !3249, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 0, metadata !3250, metadata !DIExpression()), !dbg !3291
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3293
  %51 = load i8, i8* %50, align 1, !dbg !3293, !tbaa !998
  %52 = icmp eq i8 %51, 48, !dbg !3293
  br i1 %52, label %53, label %69, !dbg !3294

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3258, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* undef, metadata !3263, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 51, metadata !3264, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 48, metadata !3265, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 0, metadata !3266, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 0, metadata !3267, metadata !DIExpression()), !dbg !3295
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3297
  %55 = load i8, i8* %54, align 1, !dbg !3297, !tbaa !998
  %56 = icmp eq i8 %55, 51, !dbg !3297
  br i1 %56, label %57, label %69, !dbg !3298

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3299, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8* undef, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 48, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 0, metadata !3307, metadata !DIExpression()), !dbg !3308
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3312
  %59 = load i8, i8* %58, align 1, !dbg !3312, !tbaa !998
  %60 = icmp eq i8 %59, 48, !dbg !3312
  br i1 %60, label %61, label %69, !dbg !3314

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3315, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* undef, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3322, metadata !DIExpression()), !dbg !3323
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3327
  %63 = load i8, i8* %62, align 1, !dbg !3327, !tbaa !998
  %64 = icmp eq i8 %63, 0, !dbg !3327
  br i1 %64, label %65, label %69, !dbg !3329

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3330, !tbaa !998
  %67 = icmp eq i8 %66, 96, !dbg !3331
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !3330
  br label %72, !dbg !3332

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3333
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !3334
  br label %72, !dbg !3335

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !3155
  ret i8* %73, !dbg !3336
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !3337 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3341 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()) #28, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3360, metadata !DIExpression()) #28, !dbg !3368
  call void @llvm.dbg.value(metadata i64* null, metadata !3361, metadata !DIExpression()) #28, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3362, metadata !DIExpression()) #28, !dbg !3368
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3370
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3363, metadata !DIExpression()) #28, !dbg !3368
  %6 = tail call i32* @__errno_location() #32, !dbg !3371
  %7 = load i32, i32* %6, align 4, !dbg !3371, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %7, metadata !3364, metadata !DIExpression()) #28, !dbg !3368
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3372
  %9 = load i32, i32* %8, align 4, !dbg !3372, !tbaa !2574
  %10 = or i32 %9, 1, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %10, metadata !3365, metadata !DIExpression()) #28, !dbg !3368
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3374
  %12 = load i32, i32* %11, align 8, !dbg !3374, !tbaa !2523
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3376
  %15 = load i8*, i8** %14, align 8, !dbg !3376, !tbaa !2596
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3377
  %17 = load i8*, i8** %16, align 8, !dbg !3377, !tbaa !2599
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !3378
  %19 = add i64 %18, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %19, metadata !3366, metadata !DIExpression()) #28, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %19, metadata !3380, metadata !DIExpression()) #28, !dbg !3384
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %20, metadata !3367, metadata !DIExpression()) #28, !dbg !3368
  %21 = load i32, i32* %11, align 8, !dbg !3387, !tbaa !2523
  %22 = load i8*, i8** %14, align 8, !dbg !3388, !tbaa !2596
  %23 = load i8*, i8** %16, align 8, !dbg !3389, !tbaa !2599
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !3390
  store i32 %7, i32* %6, align 4, !dbg !3391, !tbaa !830
  ret i8* %20, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3356 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3360, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64* %2, metadata !3361, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3362, metadata !DIExpression()), !dbg !3393
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3394
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3363, metadata !DIExpression()), !dbg !3393
  %7 = tail call i32* @__errno_location() #32, !dbg !3395
  %8 = load i32, i32* %7, align 4, !dbg !3395, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %8, metadata !3364, metadata !DIExpression()), !dbg !3393
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3396
  %10 = load i32, i32* %9, align 4, !dbg !3396, !tbaa !2574
  %11 = icmp eq i64* %2, null, !dbg !3397
  %12 = zext i1 %11 to i32, !dbg !3397
  %13 = or i32 %10, %12, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %13, metadata !3365, metadata !DIExpression()), !dbg !3393
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3399
  %15 = load i32, i32* %14, align 8, !dbg !3399, !tbaa !2523
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3400
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3401
  %18 = load i8*, i8** %17, align 8, !dbg !3401, !tbaa !2596
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3402
  %20 = load i8*, i8** %19, align 8, !dbg !3402, !tbaa !2599
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3403
  %22 = add i64 %21, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %22, metadata !3366, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %22, metadata !3380, metadata !DIExpression()) #28, !dbg !3405
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %23, metadata !3367, metadata !DIExpression()), !dbg !3393
  %24 = load i32, i32* %14, align 8, !dbg !3408, !tbaa !2523
  %25 = load i8*, i8** %17, align 8, !dbg !3409, !tbaa !2596
  %26 = load i8*, i8** %19, align 8, !dbg !3410, !tbaa !2599
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3411
  store i32 %8, i32* %7, align 4, !dbg !3412, !tbaa !830
  br i1 %11, label %29, label %28, !dbg !3413

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3414, !tbaa !912
  br label %29, !dbg !3416

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3418 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3422, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 1, metadata !3421, metadata !DIExpression()), !dbg !3423
  %2 = load i32, i32* @nslots, align 4, !dbg !3424, !tbaa !830
  %3 = icmp sgt i32 %2, 1, !dbg !3427
  br i1 %3, label %4, label %12, !dbg !3428

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3427
  br label %6, !dbg !3428

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3421, metadata !DIExpression()), !dbg !3423
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3429
  %9 = load i8*, i8** %8, align 8, !dbg !3429, !tbaa !3430
  tail call void @free(i8* %9) #28, !dbg !3432
  %10 = add nuw nsw i64 %7, 1, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %10, metadata !3421, metadata !DIExpression()), !dbg !3423
  %11 = icmp eq i64 %10, %5, !dbg !3427
  br i1 %11, label %12, label %6, !dbg !3428, !llvm.loop !3434

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3436
  %14 = load i8*, i8** %13, align 8, !dbg !3436, !tbaa !3430
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3438
  br i1 %15, label %17, label %16, !dbg !3439

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !3440
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3442, !tbaa !3443
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3444, !tbaa !3430
  br label %17, !dbg !3445

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3446
  br i1 %18, label %21, label %19, !dbg !3448

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3449
  tail call void @free(i8* %20) #28, !dbg !3451
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3452, !tbaa !689
  br label %21, !dbg !3453

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3454, !tbaa !830
  ret void, !dbg !3455
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3459, metadata !DIExpression()), !dbg !3460
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3461
  ret i8* %3, !dbg !3462
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3463 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3467, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8* %1, metadata !3468, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %2, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3470, metadata !DIExpression()), !dbg !3482
  %5 = tail call i32* @__errno_location() #32, !dbg !3483
  %6 = load i32, i32* %5, align 4, !dbg !3483, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %6, metadata !3471, metadata !DIExpression()), !dbg !3482
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3484, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3472, metadata !DIExpression()), !dbg !3482
  %8 = icmp slt i32 %0, 0, !dbg !3485
  br i1 %8, label %9, label %10, !dbg !3487

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3488
  unreachable, !dbg !3488

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3489, !tbaa !830
  %12 = icmp sgt i32 %11, %0, !dbg !3490
  br i1 %12, label %34, label %13, !dbg !3491

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3492
  call void @llvm.dbg.value(metadata i1 %14, metadata !3473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3493
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3476, metadata !DIExpression()), !dbg !3493
  %15 = icmp eq i32 %0, 2147483647, !dbg !3494
  br i1 %15, label %16, label %17, !dbg !3496

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3497
  unreachable, !dbg !3497

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3498
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3498
  %20 = add nuw nsw i32 %0, 1, !dbg !3499
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3500
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !3501
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3472, metadata !DIExpression()), !dbg !3482
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3502, !tbaa !689
  br i1 %14, label %25, label %26, !dbg !3503

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3504, !tbaa.struct !3506
  br label %26, !dbg !3507

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3508, !tbaa !830
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3509
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3510
  %31 = sub nsw i32 %20, %27, !dbg !3511
  %32 = sext i32 %31 to i64, !dbg !3512
  %33 = shl nsw i64 %32, 4, !dbg !3513
  call void @llvm.dbg.value(metadata i8* %30, metadata !2907, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %33, metadata !2914, metadata !DIExpression()) #28, !dbg !3514
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !3516
  store i32 %20, i32* @nslots, align 4, !dbg !3517, !tbaa !830
  br label %34, !dbg !3518

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3482
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3472, metadata !DIExpression()), !dbg !3482
  %36 = zext i32 %0 to i64, !dbg !3519
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3520
  %38 = load i64, i64* %37, align 8, !dbg !3520, !tbaa !3443
  call void @llvm.dbg.value(metadata i64 %38, metadata !3477, metadata !DIExpression()), !dbg !3521
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3522
  %40 = load i8*, i8** %39, align 8, !dbg !3522, !tbaa !3430
  call void @llvm.dbg.value(metadata i8* %40, metadata !3479, metadata !DIExpression()), !dbg !3521
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3523
  %42 = load i32, i32* %41, align 4, !dbg !3523, !tbaa !2574
  %43 = or i32 %42, 1, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %43, metadata !3480, metadata !DIExpression()), !dbg !3521
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3525
  %45 = load i32, i32* %44, align 8, !dbg !3525, !tbaa !2523
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3526
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3527
  %48 = load i8*, i8** %47, align 8, !dbg !3527, !tbaa !2596
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3528
  %50 = load i8*, i8** %49, align 8, !dbg !3528, !tbaa !2599
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %51, metadata !3481, metadata !DIExpression()), !dbg !3521
  %52 = icmp ugt i64 %38, %51, !dbg !3530
  br i1 %52, label %63, label %53, !dbg !3532

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %54, metadata !3477, metadata !DIExpression()), !dbg !3521
  store i64 %54, i64* %37, align 8, !dbg !3535, !tbaa !3443
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3536
  br i1 %55, label %57, label %56, !dbg !3538

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !3539
  br label %57, !dbg !3539

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3380, metadata !DIExpression()) #28, !dbg !3540
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %58, metadata !3479, metadata !DIExpression()), !dbg !3521
  store i8* %58, i8** %39, align 8, !dbg !3543, !tbaa !3430
  %59 = load i32, i32* %44, align 8, !dbg !3544, !tbaa !2523
  %60 = load i8*, i8** %47, align 8, !dbg !3545, !tbaa !2596
  %61 = load i8*, i8** %49, align 8, !dbg !3546, !tbaa !2599
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3547
  br label %63, !dbg !3548

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3521
  call void @llvm.dbg.value(metadata i8* %64, metadata !3479, metadata !DIExpression()), !dbg !3521
  store i32 %6, i32* %5, align 4, !dbg !3549, !tbaa !830
  ret i8* %64, !dbg !3550
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %1, metadata !3556, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %2, metadata !3557, metadata !DIExpression()), !dbg !3558
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3559
  ret i8* %4, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3561 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3563, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()) #28, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()) #28, !dbg !3565
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !3567
  ret i8* %2, !dbg !3568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3569 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3573, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %1, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()) #28, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()) #28, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()) #28, !dbg !3576
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !3578
  ret i8* %3, !dbg !3579
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3580 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3584, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %1, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %2, metadata !3586, metadata !DIExpression()), !dbg !3588
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3589
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3587, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3591), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %1, metadata !3595, metadata !DIExpression()) #28, !dbg !3601
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3600, metadata !DIExpression()) #28, !dbg !3603
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3603, !alias.scope !3591
  %6 = icmp eq i32 %1, 10, !dbg !3604
  br i1 %6, label %7, label %8, !dbg !3606

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3607, !noalias !3591
  unreachable, !dbg !3607

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3608
  store i32 %1, i32* %9, align 8, !dbg !3609, !tbaa !2523, !alias.scope !3591
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3610
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3611
  ret i8* %10, !dbg !3612
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3613 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3617, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %1, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i8* %2, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %3, metadata !3620, metadata !DIExpression()), !dbg !3622
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3623
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3623
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3621, metadata !DIExpression()), !dbg !3624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %1, metadata !3595, metadata !DIExpression()) #28, !dbg !3629
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3600, metadata !DIExpression()) #28, !dbg !3631
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !3631, !alias.scope !3625
  %7 = icmp eq i32 %1, 10, !dbg !3632
  br i1 %7, label %8, label %9, !dbg !3633

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !3634, !noalias !3625
  unreachable, !dbg !3634

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3635
  store i32 %1, i32* %10, align 8, !dbg !3636, !tbaa !2523, !alias.scope !3625
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3637
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3638
  ret i8* %11, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3640 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %1, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3584, metadata !DIExpression()) #28, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %0, metadata !3585, metadata !DIExpression()) #28, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %1, metadata !3586, metadata !DIExpression()) #28, !dbg !3647
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3649
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3649
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3587, metadata !DIExpression()) #28, !dbg !3650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3651) #28, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()) #28, !dbg !3655
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3600, metadata !DIExpression()) #28, !dbg !3657
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !3657, !alias.scope !3651
  %5 = icmp eq i32 %0, 10, !dbg !3658
  br i1 %5, label %6, label %7, !dbg !3659

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !3660, !noalias !3651
  unreachable, !dbg !3660

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3661
  store i32 %0, i32* %8, align 8, !dbg !3662, !tbaa !2523, !alias.scope !3651
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3664
  ret i8* %9, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3666 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %1, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %2, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3617, metadata !DIExpression()) #28, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #28, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()) #28, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %2, metadata !3620, metadata !DIExpression()) #28, !dbg !3674
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3621, metadata !DIExpression()) #28, !dbg !3677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678) #28, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()) #28, !dbg !3682
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3600, metadata !DIExpression()) #28, !dbg !3684
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !3684, !alias.scope !3678
  %6 = icmp eq i32 %0, 10, !dbg !3685
  br i1 %6, label %7, label %8, !dbg !3686

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3687, !noalias !3678
  unreachable, !dbg !3687

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3688
  store i32 %0, i32* %9, align 8, !dbg !3689, !tbaa !2523, !alias.scope !3678
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !3690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3691
  ret i8* %10, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3693 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8 %2, metadata !3699, metadata !DIExpression()), !dbg !3701
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3702
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3704, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2541, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8 %2, metadata !2542, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8 %2, metadata !2544, metadata !DIExpression()), !dbg !3706
  %6 = lshr i8 %2, 5, !dbg !3708
  %7 = zext i8 %6 to i64, !dbg !3708
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3709
  call void @llvm.dbg.value(metadata i32* %8, metadata !2545, metadata !DIExpression()), !dbg !3706
  %9 = and i8 %2, 31, !dbg !3710
  %10 = zext i8 %9 to i32, !dbg !3710
  call void @llvm.dbg.value(metadata i32 %10, metadata !2547, metadata !DIExpression()), !dbg !3706
  %11 = load i32, i32* %8, align 4, !dbg !3711, !tbaa !830
  %12 = lshr i32 %11, %10, !dbg !3712
  %13 = and i32 %12, 1, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %13, metadata !2548, metadata !DIExpression()), !dbg !3706
  %14 = xor i32 %13, 1, !dbg !3714
  %15 = shl i32 %14, %10, !dbg !3715
  %16 = xor i32 %15, %11, !dbg !3716
  store i32 %16, i32* %8, align 4, !dbg !3716, !tbaa !830
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3717
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3718
  ret i8* %17, !dbg !3719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3720 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8 %1, metadata !3725, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()) #28, !dbg !3727
  call void @llvm.dbg.value(metadata i64 -1, metadata !3698, metadata !DIExpression()) #28, !dbg !3727
  call void @llvm.dbg.value(metadata i8 %1, metadata !3699, metadata !DIExpression()) #28, !dbg !3727
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3729
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3729
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3700, metadata !DIExpression()) #28, !dbg !3730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3731, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2541, metadata !DIExpression()) #28, !dbg !3732
  call void @llvm.dbg.value(metadata i8 %1, metadata !2542, metadata !DIExpression()) #28, !dbg !3732
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()) #28, !dbg !3732
  call void @llvm.dbg.value(metadata i8 %1, metadata !2544, metadata !DIExpression()) #28, !dbg !3732
  %5 = lshr i8 %1, 5, !dbg !3734
  %6 = zext i8 %5 to i64, !dbg !3734
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3735
  call void @llvm.dbg.value(metadata i32* %7, metadata !2545, metadata !DIExpression()) #28, !dbg !3732
  %8 = and i8 %1, 31, !dbg !3736
  %9 = zext i8 %8 to i32, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %9, metadata !2547, metadata !DIExpression()) #28, !dbg !3732
  %10 = load i32, i32* %7, align 4, !dbg !3737, !tbaa !830
  %11 = lshr i32 %10, %9, !dbg !3738
  %12 = and i32 %11, 1, !dbg !3739
  call void @llvm.dbg.value(metadata i32 %12, metadata !2548, metadata !DIExpression()) #28, !dbg !3732
  %13 = xor i32 %12, 1, !dbg !3740
  %14 = shl i32 %13, %9, !dbg !3741
  %15 = xor i32 %14, %10, !dbg !3742
  store i32 %15, i32* %7, align 4, !dbg !3742, !tbaa !830
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !3743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3744
  ret i8* %16, !dbg !3745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3746 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()) #28, !dbg !3750
  call void @llvm.dbg.value(metadata i8 58, metadata !3725, metadata !DIExpression()) #28, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()) #28, !dbg !3752
  call void @llvm.dbg.value(metadata i64 -1, metadata !3698, metadata !DIExpression()) #28, !dbg !3752
  call void @llvm.dbg.value(metadata i8 58, metadata !3699, metadata !DIExpression()) #28, !dbg !3752
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3754
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3754
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3700, metadata !DIExpression()) #28, !dbg !3755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3756, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2541, metadata !DIExpression()) #28, !dbg !3757
  call void @llvm.dbg.value(metadata i8 58, metadata !2542, metadata !DIExpression()) #28, !dbg !3757
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()) #28, !dbg !3757
  call void @llvm.dbg.value(metadata i8 58, metadata !2544, metadata !DIExpression()) #28, !dbg !3757
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3759
  call void @llvm.dbg.value(metadata i32* %4, metadata !2545, metadata !DIExpression()) #28, !dbg !3757
  call void @llvm.dbg.value(metadata i32 26, metadata !2547, metadata !DIExpression()) #28, !dbg !3757
  %5 = load i32, i32* %4, align 4, !dbg !3760, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %5, metadata !2548, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3757
  %6 = or i32 %5, 67108864, !dbg !3761
  store i32 %6, i32* %4, align 4, !dbg !3761, !tbaa !830
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !3762
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !3763
  ret i8* %7, !dbg !3764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3765 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()) #28, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()) #28, !dbg !3770
  call void @llvm.dbg.value(metadata i8 58, metadata !3699, metadata !DIExpression()) #28, !dbg !3770
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3772
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3700, metadata !DIExpression()) #28, !dbg !3773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3774, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2541, metadata !DIExpression()) #28, !dbg !3775
  call void @llvm.dbg.value(metadata i8 58, metadata !2542, metadata !DIExpression()) #28, !dbg !3775
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()) #28, !dbg !3775
  call void @llvm.dbg.value(metadata i8 58, metadata !2544, metadata !DIExpression()) #28, !dbg !3775
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3777
  call void @llvm.dbg.value(metadata i32* %5, metadata !2545, metadata !DIExpression()) #28, !dbg !3775
  call void @llvm.dbg.value(metadata i32 26, metadata !2547, metadata !DIExpression()) #28, !dbg !3775
  %6 = load i32, i32* %5, align 4, !dbg !3778, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %6, metadata !2548, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3775
  %7 = or i32 %6, 67108864, !dbg !3779
  store i32 %7, i32* %5, align 4, !dbg !3779, !tbaa !830
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3780
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3781
  ret i8* %8, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3783 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3600, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3789
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32 %1, metadata !3786, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8* %2, metadata !3787, metadata !DIExpression()), !dbg !3791
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3792
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3788, metadata !DIExpression()), !dbg !3793
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3794
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3795), !dbg !3794
  call void @llvm.dbg.value(metadata i32 %1, metadata !3595, metadata !DIExpression()) #28, !dbg !3798
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3798
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3789, !alias.scope !3795
  %8 = icmp eq i32 %1, 10, !dbg !3799
  br i1 %8, label %9, label %10, !dbg !3800

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3801, !noalias !3795
  unreachable, !dbg !3801

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3798
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3794
  store i32 %1, i32* %11, align 8, !dbg !3794, !tbaa.struct !3705
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3794
  %13 = bitcast i32* %12 to i8*, !dbg !3794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3794, !tbaa.struct !3802
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2541, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i8 58, metadata !2542, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i8 58, metadata !2544, metadata !DIExpression()), !dbg !3803
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3805
  call void @llvm.dbg.value(metadata i32* %14, metadata !2545, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 26, metadata !2547, metadata !DIExpression()), !dbg !3803
  %15 = load i32, i32* %14, align 4, !dbg !3806, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %15, metadata !2548, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3803
  %16 = or i32 %15, 67108864, !dbg !3807
  store i32 %16, i32* %14, align 4, !dbg !3807, !tbaa !830
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3809
  ret i8* %17, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3811 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()) #28, !dbg !3830
  call void @llvm.dbg.value(metadata i8* %1, metadata !3825, metadata !DIExpression()) #28, !dbg !3830
  call void @llvm.dbg.value(metadata i8* %2, metadata !3826, metadata !DIExpression()) #28, !dbg !3830
  call void @llvm.dbg.value(metadata i8* %3, metadata !3827, metadata !DIExpression()) #28, !dbg !3830
  call void @llvm.dbg.value(metadata i64 -1, metadata !3828, metadata !DIExpression()) #28, !dbg !3830
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3832
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3832
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3829, metadata !DIExpression()) #28, !dbg !3833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3834, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()) #28, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #28, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()) #28, !dbg !3835
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()) #28, !dbg !3835
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3837
  store i32 10, i32* %7, align 8, !dbg !3838, !tbaa !2523
  %8 = icmp ne i8* %1, null, !dbg !3839
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3840
  br i1 %10, label %12, label %11, !dbg !3840

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3841
  unreachable, !dbg !3841

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3842
  store i8* %1, i8** %13, align 8, !dbg !3843, !tbaa !2596
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3844
  store i8* %2, i8** %14, align 8, !dbg !3845, !tbaa !2599
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3846
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3847
  ret i8* %15, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3821 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i8* %1, metadata !3825, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i8* %2, metadata !3826, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i8* %3, metadata !3827, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %4, metadata !3828, metadata !DIExpression()), !dbg !3849
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3850
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3850
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3829, metadata !DIExpression()), !dbg !3851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3852, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2581, metadata !DIExpression()) #28, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #28, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()) #28, !dbg !3853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2581, metadata !DIExpression()) #28, !dbg !3853
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3855
  store i32 10, i32* %8, align 8, !dbg !3856, !tbaa !2523
  %9 = icmp ne i8* %1, null, !dbg !3857
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3858
  br i1 %11, label %13, label %12, !dbg !3858

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3859
  unreachable, !dbg !3859

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3860
  store i8* %1, i8** %14, align 8, !dbg !3861, !tbaa !2596
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3862
  store i8* %2, i8** %15, align 8, !dbg !3863, !tbaa !2599
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3864
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3865
  ret i8* %16, !dbg !3866
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i8* %1, metadata !3872, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i8* %2, metadata !3873, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i32 0, metadata !3820, metadata !DIExpression()) #28, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %0, metadata !3825, metadata !DIExpression()) #28, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %1, metadata !3826, metadata !DIExpression()) #28, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %2, metadata !3827, metadata !DIExpression()) #28, !dbg !3877
  call void @llvm.dbg.value(metadata i64 -1, metadata !3828, metadata !DIExpression()) #28, !dbg !3877
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3879
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3879
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3829, metadata !DIExpression()) #28, !dbg !3880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3881, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2581, metadata !DIExpression()) #28, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #28, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()) #28, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2581, metadata !DIExpression()) #28, !dbg !3882
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3884
  store i32 10, i32* %6, align 8, !dbg !3885, !tbaa !2523
  %7 = icmp ne i8* %0, null, !dbg !3886
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3887
  br i1 %9, label %11, label %10, !dbg !3887

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3888
  unreachable, !dbg !3888

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3889
  store i8* %0, i8** %12, align 8, !dbg !3890, !tbaa !2596
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3891
  store i8* %1, i8** %13, align 8, !dbg !3892, !tbaa !2599
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3893
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3894
  ret i8* %14, !dbg !3895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3896 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i8* %1, metadata !3901, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i8* %2, metadata !3902, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64 %3, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3820, metadata !DIExpression()) #28, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3825, metadata !DIExpression()) #28, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %1, metadata !3826, metadata !DIExpression()) #28, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %2, metadata !3827, metadata !DIExpression()) #28, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %3, metadata !3828, metadata !DIExpression()) #28, !dbg !3905
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3907
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3907
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3829, metadata !DIExpression()) #28, !dbg !3908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3909, !tbaa.struct !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()) #28, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #28, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()) #28, !dbg !3910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()) #28, !dbg !3910
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3912
  store i32 10, i32* %7, align 8, !dbg !3913, !tbaa !2523
  %8 = icmp ne i8* %0, null, !dbg !3914
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3915
  br i1 %10, label %12, label %11, !dbg !3915

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3916
  unreachable, !dbg !3916

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3917
  store i8* %0, i8** %13, align 8, !dbg !3918, !tbaa !2596
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3919
  store i8* %1, i8** %14, align 8, !dbg !3920, !tbaa !2599
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3921
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3922
  ret i8* %15, !dbg !3923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %1, metadata !3929, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %2, metadata !3930, metadata !DIExpression()), !dbg !3931
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3932
  ret i8* %4, !dbg !3933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3928, metadata !DIExpression()) #28, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %0, metadata !3929, metadata !DIExpression()) #28, !dbg !3941
  call void @llvm.dbg.value(metadata i64 %1, metadata !3930, metadata !DIExpression()) #28, !dbg !3941
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3943
  ret i8* %3, !dbg !3944
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i8* %1, metadata !3950, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()) #28, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %1, metadata !3929, metadata !DIExpression()) #28, !dbg !3952
  call void @llvm.dbg.value(metadata i64 -1, metadata !3930, metadata !DIExpression()) #28, !dbg !3952
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3954
  ret i8* %3, !dbg !3955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3956 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 0, metadata !3949, metadata !DIExpression()) #28, !dbg !3962
  call void @llvm.dbg.value(metadata i8* %0, metadata !3950, metadata !DIExpression()) #28, !dbg !3962
  call void @llvm.dbg.value(metadata i32 0, metadata !3928, metadata !DIExpression()) #28, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %0, metadata !3929, metadata !DIExpression()) #28, !dbg !3964
  call void @llvm.dbg.value(metadata i64 -1, metadata !3930, metadata !DIExpression()) #28, !dbg !3964
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3966
  ret i8* %2, !dbg !3967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3968 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4007, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %1, metadata !4008, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %2, metadata !4009, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %3, metadata !4010, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8** %4, metadata !4011, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 %5, metadata !4012, metadata !DIExpression()), !dbg !4013
  %7 = icmp eq i8* %1, null, !dbg !4014
  br i1 %7, label %10, label %8, !dbg !4016

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !4017
  br label %12, !dbg !4017

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !4018
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #28, !dbg !4019
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !4019
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4020
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #28, !dbg !4021
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #28, !dbg !4021
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4022
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
  ], !dbg !4023

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #28, !dbg !4024
  %21 = load i8*, i8** %4, align 8, !dbg !4024, !tbaa !689
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !4024
  br label %147, !dbg !4026

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #28, !dbg !4027
  %25 = load i8*, i8** %4, align 8, !dbg !4027, !tbaa !689
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4027
  %27 = load i8*, i8** %26, align 8, !dbg !4027, !tbaa !689
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !4027
  br label %147, !dbg !4028

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #28, !dbg !4029
  %31 = load i8*, i8** %4, align 8, !dbg !4029, !tbaa !689
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4029
  %33 = load i8*, i8** %32, align 8, !dbg !4029, !tbaa !689
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4029
  %35 = load i8*, i8** %34, align 8, !dbg !4029, !tbaa !689
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !4029
  br label %147, !dbg !4030

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #28, !dbg !4031
  %39 = load i8*, i8** %4, align 8, !dbg !4031, !tbaa !689
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4031
  %41 = load i8*, i8** %40, align 8, !dbg !4031, !tbaa !689
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4031
  %43 = load i8*, i8** %42, align 8, !dbg !4031, !tbaa !689
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4031
  %45 = load i8*, i8** %44, align 8, !dbg !4031, !tbaa !689
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !4031
  br label %147, !dbg !4032

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #28, !dbg !4033
  %49 = load i8*, i8** %4, align 8, !dbg !4033, !tbaa !689
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4033
  %51 = load i8*, i8** %50, align 8, !dbg !4033, !tbaa !689
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4033
  %53 = load i8*, i8** %52, align 8, !dbg !4033, !tbaa !689
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4033
  %55 = load i8*, i8** %54, align 8, !dbg !4033, !tbaa !689
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4033
  %57 = load i8*, i8** %56, align 8, !dbg !4033, !tbaa !689
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !4033
  br label %147, !dbg !4034

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #28, !dbg !4035
  %61 = load i8*, i8** %4, align 8, !dbg !4035, !tbaa !689
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4035
  %63 = load i8*, i8** %62, align 8, !dbg !4035, !tbaa !689
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4035
  %65 = load i8*, i8** %64, align 8, !dbg !4035, !tbaa !689
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4035
  %67 = load i8*, i8** %66, align 8, !dbg !4035, !tbaa !689
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4035
  %69 = load i8*, i8** %68, align 8, !dbg !4035, !tbaa !689
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4035
  %71 = load i8*, i8** %70, align 8, !dbg !4035, !tbaa !689
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !4035
  br label %147, !dbg !4036

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #28, !dbg !4037
  %75 = load i8*, i8** %4, align 8, !dbg !4037, !tbaa !689
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4037
  %77 = load i8*, i8** %76, align 8, !dbg !4037, !tbaa !689
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4037
  %79 = load i8*, i8** %78, align 8, !dbg !4037, !tbaa !689
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4037
  %81 = load i8*, i8** %80, align 8, !dbg !4037, !tbaa !689
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4037
  %83 = load i8*, i8** %82, align 8, !dbg !4037, !tbaa !689
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4037
  %85 = load i8*, i8** %84, align 8, !dbg !4037, !tbaa !689
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4037
  %87 = load i8*, i8** %86, align 8, !dbg !4037, !tbaa !689
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !4037
  br label %147, !dbg !4038

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #28, !dbg !4039
  %91 = load i8*, i8** %4, align 8, !dbg !4039, !tbaa !689
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4039
  %93 = load i8*, i8** %92, align 8, !dbg !4039, !tbaa !689
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4039
  %95 = load i8*, i8** %94, align 8, !dbg !4039, !tbaa !689
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4039
  %97 = load i8*, i8** %96, align 8, !dbg !4039, !tbaa !689
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4039
  %99 = load i8*, i8** %98, align 8, !dbg !4039, !tbaa !689
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4039
  %101 = load i8*, i8** %100, align 8, !dbg !4039, !tbaa !689
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4039
  %103 = load i8*, i8** %102, align 8, !dbg !4039, !tbaa !689
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4039
  %105 = load i8*, i8** %104, align 8, !dbg !4039, !tbaa !689
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !4039
  br label %147, !dbg !4040

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #28, !dbg !4041
  %109 = load i8*, i8** %4, align 8, !dbg !4041, !tbaa !689
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4041
  %111 = load i8*, i8** %110, align 8, !dbg !4041, !tbaa !689
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4041
  %113 = load i8*, i8** %112, align 8, !dbg !4041, !tbaa !689
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4041
  %115 = load i8*, i8** %114, align 8, !dbg !4041, !tbaa !689
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4041
  %117 = load i8*, i8** %116, align 8, !dbg !4041, !tbaa !689
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4041
  %119 = load i8*, i8** %118, align 8, !dbg !4041, !tbaa !689
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4041
  %121 = load i8*, i8** %120, align 8, !dbg !4041, !tbaa !689
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4041
  %123 = load i8*, i8** %122, align 8, !dbg !4041, !tbaa !689
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4041
  %125 = load i8*, i8** %124, align 8, !dbg !4041, !tbaa !689
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !4041
  br label %147, !dbg !4042

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #28, !dbg !4043
  %129 = load i8*, i8** %4, align 8, !dbg !4043, !tbaa !689
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4043
  %131 = load i8*, i8** %130, align 8, !dbg !4043, !tbaa !689
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4043
  %133 = load i8*, i8** %132, align 8, !dbg !4043, !tbaa !689
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4043
  %135 = load i8*, i8** %134, align 8, !dbg !4043, !tbaa !689
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4043
  %137 = load i8*, i8** %136, align 8, !dbg !4043, !tbaa !689
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4043
  %139 = load i8*, i8** %138, align 8, !dbg !4043, !tbaa !689
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4043
  %141 = load i8*, i8** %140, align 8, !dbg !4043, !tbaa !689
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4043
  %143 = load i8*, i8** %142, align 8, !dbg !4043, !tbaa !689
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4043
  %145 = load i8*, i8** %144, align 8, !dbg !4043, !tbaa !689
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !4043
  br label %147, !dbg !4044

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4046 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4050, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %1, metadata !4051, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %2, metadata !4052, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %3, metadata !4053, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8** %4, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 0, metadata !4055, metadata !DIExpression()), !dbg !4056
  br label %6, !dbg !4057

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4059
  call void @llvm.dbg.value(metadata i64 %7, metadata !4055, metadata !DIExpression()), !dbg !4056
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4060
  %9 = load i8*, i8** %8, align 8, !dbg !4060, !tbaa !689
  %10 = icmp eq i8* %9, null, !dbg !4062
  %11 = add i64 %7, 1, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %11, metadata !4055, metadata !DIExpression()), !dbg !4056
  br i1 %10, label %12, label %6, !dbg !4062, !llvm.loop !4064

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4066
  ret void, !dbg !4067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4068 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4079, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8* %1, metadata !4080, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8* %2, metadata !4081, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8* %3, metadata !4082, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4083, metadata !DIExpression()), !dbg !4087
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4088
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !4088
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4085, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 0, metadata !4084, metadata !DIExpression()), !dbg !4087
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !4084, metadata !DIExpression()), !dbg !4087
  %11 = load i32, i32* %8, align 8, !dbg !4090
  %12 = icmp ult i32 %11, 41, !dbg !4090
  br i1 %12, label %13, label %18, !dbg !4090

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4090
  %15 = zext i32 %11 to i64, !dbg !4090
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4090
  %17 = add nuw nsw i32 %11, 8, !dbg !4090
  store i32 %17, i32* %8, align 8, !dbg !4090
  br label %21, !dbg !4090

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4090
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4090
  store i8* %20, i8** %9, align 8, !dbg !4090
  br label %21, !dbg !4090

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4090
  %25 = load i8*, i8** %24, align 8, !dbg !4090
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4093
  store i8* %25, i8** %26, align 16, !dbg !4094, !tbaa !689
  %27 = icmp eq i8* %25, null, !dbg !4095
  br i1 %27, label %30, label %28, !dbg !4096

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 1, metadata !4084, metadata !DIExpression()), !dbg !4087
  %29 = icmp ult i32 %22, 41, !dbg !4090
  br i1 %29, label %35, label %32, !dbg !4090

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4097
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !4099
  ret void, !dbg !4099

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4090
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4090
  store i8* %34, i8** %9, align 8, !dbg !4090
  br label %40, !dbg !4090

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4090
  %37 = zext i32 %22 to i64, !dbg !4090
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4090
  %39 = add nuw nsw i32 %22, 8, !dbg !4090
  store i32 %39, i32* %8, align 8, !dbg !4090
  br label %40, !dbg !4090

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4090
  %44 = load i8*, i8** %43, align 8, !dbg !4090
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4093
  store i8* %44, i8** %45, align 8, !dbg !4094, !tbaa !689
  %46 = icmp eq i8* %44, null, !dbg !4095
  br i1 %46, label %30, label %47, !dbg !4096

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 2, metadata !4084, metadata !DIExpression()), !dbg !4087
  %48 = icmp ult i32 %41, 41, !dbg !4090
  br i1 %48, label %52, label %49, !dbg !4090

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4090
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4090
  store i8* %51, i8** %9, align 8, !dbg !4090
  br label %57, !dbg !4090

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4090
  %54 = zext i32 %41 to i64, !dbg !4090
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4090
  %56 = add nuw nsw i32 %41, 8, !dbg !4090
  store i32 %56, i32* %8, align 8, !dbg !4090
  br label %57, !dbg !4090

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4090
  %61 = load i8*, i8** %60, align 8, !dbg !4090
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4093
  store i8* %61, i8** %62, align 16, !dbg !4094, !tbaa !689
  %63 = icmp eq i8* %61, null, !dbg !4095
  br i1 %63, label %30, label %64, !dbg !4096

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 3, metadata !4084, metadata !DIExpression()), !dbg !4087
  %65 = icmp ult i32 %58, 41, !dbg !4090
  br i1 %65, label %69, label %66, !dbg !4090

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4090
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4090
  store i8* %68, i8** %9, align 8, !dbg !4090
  br label %74, !dbg !4090

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4090
  %71 = zext i32 %58 to i64, !dbg !4090
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4090
  %73 = add nuw nsw i32 %58, 8, !dbg !4090
  store i32 %73, i32* %8, align 8, !dbg !4090
  br label %74, !dbg !4090

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4090
  %78 = load i8*, i8** %77, align 8, !dbg !4090
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4093
  store i8* %78, i8** %79, align 8, !dbg !4094, !tbaa !689
  %80 = icmp eq i8* %78, null, !dbg !4095
  br i1 %80, label %30, label %81, !dbg !4096

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 4, metadata !4084, metadata !DIExpression()), !dbg !4087
  %82 = icmp ult i32 %75, 41, !dbg !4090
  br i1 %82, label %86, label %83, !dbg !4090

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4090
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4090
  store i8* %85, i8** %9, align 8, !dbg !4090
  br label %91, !dbg !4090

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4090
  %88 = zext i32 %75 to i64, !dbg !4090
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4090
  %90 = add nuw nsw i32 %75, 8, !dbg !4090
  store i32 %90, i32* %8, align 8, !dbg !4090
  br label %91, !dbg !4090

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4090
  %95 = load i8*, i8** %94, align 8, !dbg !4090
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4093
  store i8* %95, i8** %96, align 16, !dbg !4094, !tbaa !689
  %97 = icmp eq i8* %95, null, !dbg !4095
  br i1 %97, label %30, label %98, !dbg !4096

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 5, metadata !4084, metadata !DIExpression()), !dbg !4087
  %99 = icmp ult i32 %92, 41, !dbg !4090
  br i1 %99, label %103, label %100, !dbg !4090

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4090
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4090
  store i8* %102, i8** %9, align 8, !dbg !4090
  br label %108, !dbg !4090

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4090
  %105 = zext i32 %92 to i64, !dbg !4090
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4090
  %107 = add nuw nsw i32 %92, 8, !dbg !4090
  store i32 %107, i32* %8, align 8, !dbg !4090
  br label %108, !dbg !4090

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4090
  %111 = load i8*, i8** %110, align 8, !dbg !4090
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4093
  store i8* %111, i8** %112, align 8, !dbg !4094, !tbaa !689
  %113 = icmp eq i8* %111, null, !dbg !4095
  br i1 %113, label %30, label %114, !dbg !4096

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4084, metadata !DIExpression()), !dbg !4087
  %115 = load i8*, i8** %9, align 8, !dbg !4090
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4090
  store i8* %116, i8** %9, align 8, !dbg !4090
  %117 = bitcast i8* %115 to i8**, !dbg !4090
  %118 = load i8*, i8** %117, align 8, !dbg !4090
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4093
  store i8* %118, i8** %119, align 16, !dbg !4094, !tbaa !689
  %120 = icmp eq i8* %118, null, !dbg !4095
  br i1 %120, label %30, label %121, !dbg !4096

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4084, metadata !DIExpression()), !dbg !4087
  %122 = load i8*, i8** %9, align 8, !dbg !4090
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4090
  store i8* %123, i8** %9, align 8, !dbg !4090
  %124 = bitcast i8* %122 to i8**, !dbg !4090
  %125 = load i8*, i8** %124, align 8, !dbg !4090
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4093
  store i8* %125, i8** %126, align 8, !dbg !4094, !tbaa !689
  %127 = icmp eq i8* %125, null, !dbg !4095
  br i1 %127, label %30, label %128, !dbg !4096

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4084, metadata !DIExpression()), !dbg !4087
  %129 = load i8*, i8** %9, align 8, !dbg !4090
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4090
  store i8* %130, i8** %9, align 8, !dbg !4090
  %131 = bitcast i8* %129 to i8**, !dbg !4090
  %132 = load i8*, i8** %131, align 8, !dbg !4090
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4093
  store i8* %132, i8** %133, align 16, !dbg !4094, !tbaa !689
  %134 = icmp eq i8* %132, null, !dbg !4095
  br i1 %134, label %30, label %135, !dbg !4096

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4084, metadata !DIExpression()), !dbg !4087
  %136 = load i8*, i8** %9, align 8, !dbg !4090
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4090
  store i8* %137, i8** %9, align 8, !dbg !4090
  %138 = bitcast i8* %136 to i8**, !dbg !4090
  %139 = load i8*, i8** %138, align 8, !dbg !4090
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4093
  store i8* %139, i8** %140, align 8, !dbg !4094, !tbaa !689
  %141 = icmp eq i8* %139, null, !dbg !4095
  %142 = select i1 %141, i64 9, i64 10, !dbg !4096
  br label %30, !dbg !4096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4100 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4104, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %1, metadata !4105, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %2, metadata !4106, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %3, metadata !4107, metadata !DIExpression()), !dbg !4113
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4114
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !4114
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4108, metadata !DIExpression()), !dbg !4115
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4116
  call void @llvm.va_start(i8* nonnull %6), !dbg !4116
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4117
  call void @llvm.va_end(i8* nonnull %6), !dbg !4118
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !4119
  ret void, !dbg !4119
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4120 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4121, !tbaa !689
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4121
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #28, !dbg !4122
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #28, !dbg !4122
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #28, !dbg !4123
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #28, !dbg !4123
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #28, !dbg !4124
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #28, !dbg !4124
  ret void, !dbg !4125
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()), !dbg !4132
  %3 = udiv i64 9223372036854775807, %1, !dbg !4133
  %4 = icmp ult i64 %3, %0, !dbg !4133
  br i1 %4, label %5, label %6, !dbg !4135

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !4136
  unreachable, !dbg !4136

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %7, metadata !4138, metadata !DIExpression()) #28, !dbg !4144
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %8, metadata !4143, metadata !DIExpression()) #28, !dbg !4144
  %9 = icmp eq i8* %8, null, !dbg !4147
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !4149
  br i1 %11, label %12, label %13, !dbg !4149

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !4150
  unreachable, !dbg !4150

13:                                               ; preds = %6
  ret i8* %8, !dbg !4151
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4138, metadata !DIExpression()), !dbg !4152
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !4153
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()), !dbg !4152
  %3 = icmp eq i8* %2, null, !dbg !4154
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4155
  br i1 %5, label %6, label %7, !dbg !4155

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !4156
  unreachable, !dbg !4156

7:                                                ; preds = %1
  ret i8* %2, !dbg !4157
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 %1, metadata !4163, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 %2, metadata !4164, metadata !DIExpression()), !dbg !4165
  %4 = udiv i64 9223372036854775807, %2, !dbg !4166
  %5 = icmp ult i64 %4, %1, !dbg !4166
  br i1 %5, label %6, label %7, !dbg !4168

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !4169
  unreachable, !dbg !4169

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4170
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #28, !dbg !4177
  call void @llvm.dbg.value(metadata i64 %8, metadata !4176, metadata !DIExpression()) #28, !dbg !4177
  %9 = icmp eq i64 %8, 0, !dbg !4179
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4181
  br i1 %11, label %12, label %13, !dbg !4181

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !4182
  br label %19, !dbg !4184

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !4185
  call void @llvm.dbg.value(metadata i8* %14, metadata !4171, metadata !DIExpression()) #28, !dbg !4177
  %15 = icmp eq i8* %14, null, !dbg !4186
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4188
  br i1 %17, label %18, label %19, !dbg !4188

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !4189
  unreachable, !dbg !4189

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4177
  ret i8* %20, !dbg !4190
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !4176, metadata !DIExpression()), !dbg !4191
  %3 = icmp eq i64 %1, 0, !dbg !4192
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4193
  br i1 %5, label %6, label %7, !dbg !4193

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !4194
  br label %13, !dbg !4195

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !4196
  call void @llvm.dbg.value(metadata i8* %8, metadata !4171, metadata !DIExpression()), !dbg !4191
  %9 = icmp eq i8* %8, null, !dbg !4197
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4198
  br i1 %11, label %12, label %13, !dbg !4198

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !4199
  unreachable, !dbg !4199

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4191
  ret i8* %14, !dbg !4200
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !223, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64* %1, metadata !224, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %2, metadata !225, metadata !DIExpression()), !dbg !4201
  %4 = load i64, i64* %1, align 8, !dbg !4202, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %4, metadata !226, metadata !DIExpression()), !dbg !4201
  %5 = icmp eq i8* %0, null, !dbg !4203
  br i1 %5, label %6, label %20, !dbg !4205

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4206
  br i1 %7, label %8, label %13, !dbg !4209

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %9, metadata !226, metadata !DIExpression()), !dbg !4201
  %10 = icmp ugt i64 %2, 128, !dbg !4212
  %11 = zext i1 %10 to i64, !dbg !4212
  %12 = add nuw nsw i64 %9, %11, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %12, metadata !226, metadata !DIExpression()), !dbg !4201
  br label %13, !dbg !4214

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4201
  call void @llvm.dbg.value(metadata i64 %14, metadata !226, metadata !DIExpression()), !dbg !4201
  %15 = udiv i64 9223372036854775807, %2, !dbg !4215
  %16 = icmp ult i64 %15, %14, !dbg !4215
  br i1 %16, label %19, label %17, !dbg !4217

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !226, metadata !DIExpression()), !dbg !4201
  store i64 %14, i64* %1, align 8, !dbg !4218, !tbaa !912
  %18 = mul i64 %14, %2, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #28, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %28, metadata !4176, metadata !DIExpression()) #28, !dbg !4220
  br label %31, !dbg !4222

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !4223
  unreachable, !dbg !4223

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4224
  %22 = icmp ugt i64 %21, %4, !dbg !4227
  br i1 %22, label %24, label %23, !dbg !4228

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !4229
  unreachable, !dbg !4229

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4230
  %26 = add nuw i64 %4, 1, !dbg !4231
  %27 = add i64 %26, %25, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %27, metadata !226, metadata !DIExpression()), !dbg !4201
  store i64 %27, i64* %1, align 8, !dbg !4218, !tbaa !912
  %28 = mul i64 %27, %2, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #28, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %28, metadata !4176, metadata !DIExpression()) #28, !dbg !4220
  %29 = icmp eq i64 %28, 0, !dbg !4233
  br i1 %29, label %30, label %31, !dbg !4222

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !4234
  br label %38, !dbg !4235

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %33, metadata !4171, metadata !DIExpression()) #28, !dbg !4220
  %34 = icmp eq i8* %33, null, !dbg !4237
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4238
  br i1 %36, label %37, label %38, !dbg !4238

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !4239
  unreachable, !dbg !4239

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4220
  ret i8* %39, !dbg !4240
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4241 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %0, metadata !4138, metadata !DIExpression()) #28, !dbg !4245
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !4247
  call void @llvm.dbg.value(metadata i8* %2, metadata !4143, metadata !DIExpression()) #28, !dbg !4245
  %3 = icmp eq i8* %2, null, !dbg !4248
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4249
  br i1 %5, label %6, label %7, !dbg !4249

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !4250
  unreachable, !dbg !4250

7:                                                ; preds = %1
  ret i8* %2, !dbg !4251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4252 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64* %1, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %0, metadata !223, metadata !DIExpression()) #28, !dbg !4259
  call void @llvm.dbg.value(metadata i64* %1, metadata !224, metadata !DIExpression()) #28, !dbg !4259
  call void @llvm.dbg.value(metadata i64 1, metadata !225, metadata !DIExpression()) #28, !dbg !4259
  %3 = load i64, i64* %1, align 8, !dbg !4261, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !226, metadata !DIExpression()) #28, !dbg !4259
  %4 = icmp eq i8* %0, null, !dbg !4262
  br i1 %4, label %5, label %10, !dbg !4263

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4264
  br i1 %6, label %17, label %7, !dbg !4265

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !226, metadata !DIExpression()) #28, !dbg !4259
  %8 = icmp slt i64 %3, 0, !dbg !4266
  br i1 %8, label %9, label %17, !dbg !4267

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !4268
  unreachable, !dbg !4268

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4269
  br i1 %11, label %13, label %12, !dbg !4270

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !4271
  unreachable, !dbg !4271

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4272
  %15 = add nuw nsw i64 %3, 1, !dbg !4273
  %16 = add nuw nsw i64 %15, %14, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %16, metadata !226, metadata !DIExpression()) #28, !dbg !4259
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #28, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %16, metadata !4176, metadata !DIExpression()) #28, !dbg !4275
  br label %17, !dbg !4277

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4278
  store i64 %18, i64* %1, align 8, !dbg !4278, !tbaa !912
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %19, metadata !4171, metadata !DIExpression()) #28, !dbg !4275
  %20 = icmp eq i8* %19, null, !dbg !4280
  br i1 %20, label %21, label %22, !dbg !4281

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !4282
  unreachable, !dbg !4282

22:                                               ; preds = %17
  ret i8* %19, !dbg !4283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4284 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %0, metadata !4288, metadata !DIExpression()) #28, !dbg !4293
  call void @llvm.dbg.value(metadata i64 1, metadata !4291, metadata !DIExpression()) #28, !dbg !4293
  %2 = icmp slt i64 %0, 0, !dbg !4295
  br i1 %2, label %6, label %3, !dbg !4297

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !4298
  call void @llvm.dbg.value(metadata i8* %4, metadata !4292, metadata !DIExpression()) #28, !dbg !4293
  %5 = icmp eq i8* %4, null, !dbg !4299
  br i1 %5, label %6, label %7, !dbg !4300

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !4301
  unreachable, !dbg !4301

7:                                                ; preds = %3
  ret i8* %4, !dbg !4302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4288, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4291, metadata !DIExpression()), !dbg !4303
  %3 = udiv i64 9223372036854775807, %1, !dbg !4304
  %4 = icmp ult i64 %3, %0, !dbg !4304
  br i1 %4, label %8, label %5, !dbg !4305

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %6, metadata !4292, metadata !DIExpression()), !dbg !4303
  %7 = icmp eq i8* %6, null, !dbg !4307
  br i1 %7, label %8, label %9, !dbg !4308

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !4309
  unreachable, !dbg !4309

9:                                                ; preds = %5
  ret i8* %6, !dbg !4310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4317, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4138, metadata !DIExpression()) #28, !dbg !4320
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %3, metadata !4143, metadata !DIExpression()) #28, !dbg !4320
  %4 = icmp eq i8* %3, null, !dbg !4323
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4324
  br i1 %6, label %7, label %8, !dbg !4324

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !4325
  unreachable, !dbg !4325

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4326, metadata !DIExpression()) #28, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %0, metadata !4333, metadata !DIExpression()) #28, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()) #28, !dbg !4335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !4337
  ret i8* %3, !dbg !4338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4341, metadata !DIExpression()), !dbg !4342
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !4343
  %3 = add i64 %2, 1, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %0, metadata !4317, metadata !DIExpression()) #28, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %3, metadata !4318, metadata !DIExpression()) #28, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %3, metadata !4138, metadata !DIExpression()) #28, !dbg !4347
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %4, metadata !4143, metadata !DIExpression()) #28, !dbg !4347
  %5 = icmp eq i8* %4, null, !dbg !4350
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4351
  br i1 %7, label %8, label %9, !dbg !4351

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !4352
  unreachable, !dbg !4352

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4326, metadata !DIExpression()) #28, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %0, metadata !4333, metadata !DIExpression()) #28, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %3, metadata !4334, metadata !DIExpression()) #28, !dbg !4353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !4355
  ret i8* %4, !dbg !4356
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4357 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4358, !tbaa !830
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #28, !dbg !4359
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #28, !dbg !4360
  tail call void @abort() #30, !dbg !4361
  unreachable, !dbg !4361
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4362 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %1, metadata !4365, metadata !DIExpression()), !dbg !4370
  %3 = icmp eq i64 %0, 0, !dbg !4371
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4372
  br i1 %5, label %11, label %6, !dbg !4372

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4367, metadata !DIExpression()), !dbg !4373
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4374
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4374
  br i1 %8, label %9, label %11, !dbg !4376

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !4377
  store i32 12, i32* %10, align 4, !dbg !4379, !tbaa !830
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4364, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %12, metadata !4365, metadata !DIExpression()), !dbg !4370
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !4380
  call void @llvm.dbg.value(metadata i8* %14, metadata !4366, metadata !DIExpression()), !dbg !4370
  br label %15, !dbg !4381

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4370
  ret i8* %16, !dbg !4382
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4421, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i32 0, metadata !4422, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i32 0, metadata !4424, metadata !DIExpression()), !dbg !4425
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4426
  call void @llvm.dbg.value(metadata i32 %2, metadata !4423, metadata !DIExpression()), !dbg !4425
  %3 = icmp slt i32 %2, 0, !dbg !4427
  br i1 %3, label %4, label %6, !dbg !4429

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4430
  br label %24, !dbg !4431

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4432
  %8 = icmp eq i32 %7, 0, !dbg !4432
  br i1 %8, label %13, label %9, !dbg !4434

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4435
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !4436
  %12 = icmp eq i64 %11, -1, !dbg !4437
  br i1 %12, label %16, label %13, !dbg !4438

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !4439
  %15 = icmp eq i32 %14, 0, !dbg !4439
  br i1 %15, label %16, label %18, !dbg !4440

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4422, metadata !DIExpression()), !dbg !4425
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4441
  call void @llvm.dbg.value(metadata i32 %21, metadata !4424, metadata !DIExpression()), !dbg !4425
  br label %24, !dbg !4442

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !4443
  %20 = load i32, i32* %19, align 4, !dbg !4443, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %20, metadata !4422, metadata !DIExpression()), !dbg !4425
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4441
  call void @llvm.dbg.value(metadata i32 %21, metadata !4424, metadata !DIExpression()), !dbg !4425
  %22 = icmp eq i32 %20, 0, !dbg !4444
  br i1 %22, label %24, label %23, !dbg !4442

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4446, !tbaa !830
  call void @llvm.dbg.value(metadata i32 -1, metadata !4424, metadata !DIExpression()), !dbg !4425
  br label %24, !dbg !4448

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4425
  ret i32 %25, !dbg !4449
}

; Function Attrs: nofree nounwind
declare !dbg !4450 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4453 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4454 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4458 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4496, metadata !DIExpression()), !dbg !4497
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4498
  br i1 %2, label %6, label %3, !dbg !4500

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !4501
  %5 = icmp eq i32 %4, 0, !dbg !4501
  br i1 %5, label %6, label %8, !dbg !4502

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4503
  br label %17, !dbg !4504

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4505, metadata !DIExpression()) #28, !dbg !4510
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4512
  %10 = load i32, i32* %9, align 8, !dbg !4512, !tbaa !4514
  %11 = and i32 %10, 256, !dbg !4515
  %12 = icmp eq i32 %11, 0, !dbg !4515
  br i1 %12, label %15, label %13, !dbg !4516

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !4517
  br label %15, !dbg !4517

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4518
  br label %17, !dbg !4519

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4497
  ret i32 %18, !dbg !4520
}

; Function Attrs: nofree nounwind
declare !dbg !4521 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4524 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4563, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 %2, metadata !4565, metadata !DIExpression()), !dbg !4569
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4570
  %5 = load i8*, i8** %4, align 8, !dbg !4570, !tbaa !4571
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4572
  %7 = load i8*, i8** %6, align 8, !dbg !4572, !tbaa !4573
  %8 = icmp eq i8* %5, %7, !dbg !4574
  br i1 %8, label %9, label %28, !dbg !4575

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4576
  %11 = load i8*, i8** %10, align 8, !dbg !4576, !tbaa !1066
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4577
  %13 = load i8*, i8** %12, align 8, !dbg !4577, !tbaa !4578
  %14 = icmp eq i8* %11, %13, !dbg !4579
  br i1 %14, label %15, label %28, !dbg !4580

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4581
  %17 = load i8*, i8** %16, align 8, !dbg !4581, !tbaa !4582
  %18 = icmp eq i8* %17, null, !dbg !4583
  br i1 %18, label %19, label %28, !dbg !4584

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !4585
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !4586
  call void @llvm.dbg.value(metadata i64 %21, metadata !4566, metadata !DIExpression()), !dbg !4587
  %22 = icmp eq i64 %21, -1, !dbg !4588
  br i1 %22, label %30, label %23, !dbg !4590

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4591
  %25 = load i32, i32* %24, align 8, !dbg !4592, !tbaa !4514
  %26 = and i32 %25, -17, !dbg !4592
  store i32 %26, i32* %24, align 8, !dbg !4592, !tbaa !4514
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4593
  store i64 %21, i64* %27, align 8, !dbg !4594, !tbaa !4595
  br label %30, !dbg !4596

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4597
  br label %30, !dbg !4598

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4569
  ret i32 %31, !dbg !4599
}

; Function Attrs: nofree nounwind
declare !dbg !4600 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4603 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4619, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i8* %1, metadata !4620, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %2, metadata !4621, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4622, metadata !DIExpression()), !dbg !4628
  %6 = bitcast i32* %5 to i8*, !dbg !4629
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4629
  %7 = icmp eq i32* %0, null, !dbg !4630
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4632
  call void @llvm.dbg.value(metadata i32* %8, metadata !4619, metadata !DIExpression()), !dbg !4628
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %9, metadata !4623, metadata !DIExpression()), !dbg !4628
  %10 = icmp ugt i64 %9, -3, !dbg !4634
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4635
  br i1 %12, label %13, label %18, !dbg !4635

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !4636
  br i1 %14, label %18, label %15, !dbg !4637

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4638, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %16, metadata !4625, metadata !DIExpression()), !dbg !4639
  %17 = zext i8 %16 to i32, !dbg !4640
  store i32 %17, i32* %8, align 4, !dbg !4641, !tbaa !830
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4628
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !4642
  ret i64 %19, !dbg !4642
}

; Function Attrs: nounwind
declare !dbg !4643 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !4647 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !4675, metadata !DIExpression()), !dbg !4678
  %2 = tail call noalias i8* @xmalloc(i64 33) #28, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %2, metadata !4677, metadata !DIExpression()), !dbg !4678
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !4680
  call void @llvm.dbg.value(metadata i8* %2, metadata !4681, metadata !DIExpression()) #28, !dbg !4690
  call void @llvm.dbg.value(metadata i8* %3, metadata !4688, metadata !DIExpression()) #28, !dbg !4690
  call void @llvm.dbg.value(metadata i64 32, metadata !4689, metadata !DIExpression()) #28, !dbg !4690
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !4692
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !4693
  store i8 0, i8* %5, align 1, !dbg !4694, !tbaa !998
  %6 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !4695
  call void @llvm.dbg.value(metadata i8* undef, metadata !4676, metadata !DIExpression()), !dbg !4678
  %7 = icmp sgt i64 %6, 0, !dbg !4697
  br i1 %7, label %8, label %17, !dbg !4699

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !4700
  call void @llvm.dbg.value(metadata i8* %9, metadata !4676, metadata !DIExpression()), !dbg !4678
  br label %10, !dbg !4701

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !4676, metadata !DIExpression()), !dbg !4678
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4702
  %13 = load i8, i8* %12, align 1, !dbg !4702, !tbaa !998
  %14 = icmp eq i8 %13, 32, !dbg !4703
  br i1 %14, label %15, label %17, !dbg !4701

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !4676, metadata !DIExpression()), !dbg !4678
  store i8 0, i8* %12, align 1, !dbg !4704, !tbaa !998
  %16 = icmp ult i8* %2, %12, !dbg !4697
  br i1 %16, label %10, label %17, !dbg !4699, !llvm.loop !4705

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !4707
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !4708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4714, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64* %1, metadata !4715, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !4716, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %3, metadata !4717, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 0, metadata !4718, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 0, metadata !4719, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4720, metadata !DIExpression()), !dbg !4722
  %5 = tail call i32 @utmpxname(i8* %0) #28, !dbg !4723
  tail call void @setutxent() #28, !dbg !4724
  call void @llvm.dbg.value(metadata i64 0, metadata !4718, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !4720, metadata !DIExpression()), !dbg !4722
  %6 = tail call %struct.utmpx* @getutxent() #28, !dbg !4725
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !4721, metadata !DIExpression()), !dbg !4722
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !4726
  br i1 %7, label %76, label %8, !dbg !4727

8:                                                ; preds = %4
  %9 = and i32 %3, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %3, 1
  %12 = icmp ne i32 %11, 0
  br label %13, !dbg !4727

13:                                               ; preds = %8, %70
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %74, %70 ]
  %15 = phi i64 [ 0, %8 ], [ %73, %70 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %72, %70 ]
  %17 = phi i64 [ 0, %8 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4718, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !4720, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !4728, metadata !DIExpression()) #28, !dbg !4735
  call void @llvm.dbg.value(metadata i32 %3, metadata !4733, metadata !DIExpression()) #28, !dbg !4735
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !4738
  %19 = load i8, i8* %18, align 4, !dbg !4738, !tbaa !998
  %20 = icmp eq i8 %19, 0, !dbg !4738
  br i1 %20, label %25, label %21, !dbg !4738

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !4738
  %23 = load i16, i16* %22, align 4, !dbg !4738, !tbaa !1000
  %24 = icmp eq i16 %23, 7, !dbg !4738
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !4735
  call void @llvm.dbg.value(metadata i1 %26, metadata !4734, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !4735
  %27 = or i1 %10, %26, !dbg !4739
  br i1 %27, label %28, label %70, !dbg !4739

28:                                               ; preds = %25
  %29 = and i1 %12, %26, !dbg !4741
  br i1 %29, label %30, label %41, !dbg !4741

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !4743
  %32 = load i32, i32* %31, align 4, !dbg !4743, !tbaa !4744
  %33 = icmp sgt i32 %32, 0, !dbg !4745
  br i1 %33, label %34, label %41, !dbg !4746

34:                                               ; preds = %30
  %35 = tail call i32 @kill(i32 %32, i32 0) #28, !dbg !4747
  %36 = icmp slt i32 %35, 0, !dbg !4748
  br i1 %36, label %37, label %41, !dbg !4749

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #32, !dbg !4750
  %39 = load i32, i32* %38, align 4, !dbg !4750, !tbaa !830
  %40 = icmp eq i32 %39, 3, !dbg !4751
  br i1 %40, label %70, label %41, !dbg !4752

41:                                               ; preds = %37, %34, %30, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !4719, metadata !DIExpression()), !dbg !4722
  %42 = icmp eq i64 %15, %17, !dbg !4753
  br i1 %42, label %43, label %63, !dbg !4756

43:                                               ; preds = %41
  %44 = bitcast %struct.utmpx* %16 to i8*, !dbg !4757
  call void @llvm.dbg.value(metadata i8* %44, metadata !249, metadata !DIExpression()) #28, !dbg !4758
  call void @llvm.dbg.value(metadata i64* undef, metadata !250, metadata !DIExpression()) #28, !dbg !4758
  call void @llvm.dbg.value(metadata i64 384, metadata !251, metadata !DIExpression()) #28, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %17, metadata !252, metadata !DIExpression()) #28, !dbg !4758
  %45 = icmp eq %struct.utmpx* %16, null, !dbg !4760
  br i1 %45, label %46, label %51, !dbg !4762

46:                                               ; preds = %43
  %47 = icmp eq i64 %15, 0, !dbg !4763
  br i1 %47, label %58, label %48, !dbg !4766

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 %17, metadata !252, metadata !DIExpression()) #28, !dbg !4758
  %49 = icmp ugt i64 %15, 24019198012642645, !dbg !4767
  br i1 %49, label %50, label %58, !dbg !4769

50:                                               ; preds = %48
  tail call void @xalloc_die() #30, !dbg !4770
  unreachable, !dbg !4770

51:                                               ; preds = %43
  %52 = icmp ult i64 %15, 16012798675095096, !dbg !4771
  br i1 %52, label %54, label %53, !dbg !4774

53:                                               ; preds = %51
  tail call void @xalloc_die() #30, !dbg !4775
  unreachable, !dbg !4775

54:                                               ; preds = %51
  %55 = lshr i64 %15, 1, !dbg !4776
  %56 = add nuw nsw i64 %15, 1, !dbg !4777
  %57 = add nuw nsw i64 %56, %55, !dbg !4778
  call void @llvm.dbg.value(metadata i64 %57, metadata !252, metadata !DIExpression()) #28, !dbg !4758
  br label %58

58:                                               ; preds = %46, %48, %54
  %59 = phi i64 [ %57, %54 ], [ %15, %48 ], [ 1, %46 ], !dbg !4758
  call void @llvm.dbg.value(metadata i64 %59, metadata !252, metadata !DIExpression()) #28, !dbg !4758
  %60 = mul nuw nsw i64 %59, 384, !dbg !4779
  %61 = tail call i8* @xrealloc(i8* %44, i64 %60) #28, !dbg !4780
  %62 = bitcast i8* %61 to %struct.utmpx*, !dbg !4781
  call void @llvm.dbg.value(metadata %struct.utmpx* %62, metadata !4720, metadata !DIExpression()), !dbg !4722
  br label %63, !dbg !4782

63:                                               ; preds = %58, %41
  %64 = phi i64 [ %59, %58 ], [ %17, %41 ], !dbg !4722
  %65 = phi %struct.utmpx* [ %62, %58 ], [ %16, %41 ], !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* %65, metadata !4720, metadata !DIExpression()), !dbg !4722
  %66 = add i64 %15, 1, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %66, metadata !4718, metadata !DIExpression()), !dbg !4722
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i64 %15, !dbg !4784
  %68 = bitcast %struct.utmpx* %67 to i8*, !dbg !4785
  %69 = bitcast %struct.utmpx* %14 to i8*, !dbg !4785
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %68, i8* nonnull align 4 dereferenceable(384) %69, i64 384, i1 false), !dbg !4785, !tbaa.struct !4786
  br label %70, !dbg !4787

70:                                               ; preds = %37, %25, %63
  %71 = phi i64 [ %64, %63 ], [ %17, %25 ], [ %17, %37 ], !dbg !4722
  %72 = phi %struct.utmpx* [ %65, %63 ], [ %16, %25 ], [ %16, %37 ], !dbg !4722
  %73 = phi i64 [ %66, %63 ], [ %15, %25 ], [ %15, %37 ], !dbg !4722
  call void @llvm.dbg.value(metadata i64 %73, metadata !4718, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata %struct.utmpx* %72, metadata !4720, metadata !DIExpression()), !dbg !4722
  %74 = tail call %struct.utmpx* @getutxent() #28, !dbg !4725
  call void @llvm.dbg.value(metadata %struct.utmpx* %74, metadata !4721, metadata !DIExpression()), !dbg !4722
  %75 = icmp eq %struct.utmpx* %74, null, !dbg !4726
  br i1 %75, label %76, label %13, !dbg !4727, !llvm.loop !4788

76:                                               ; preds = %70, %4
  %77 = phi %struct.utmpx* [ null, %4 ], [ %72, %70 ], !dbg !4722
  %78 = phi i64 [ 0, %4 ], [ %73, %70 ], !dbg !4722
  tail call void @endutxent() #28, !dbg !4790
  store i64 %78, i64* %1, align 8, !dbg !4791, !tbaa !912
  store %struct.utmpx* %77, %struct.utmpx** %2, align 8, !dbg !4792, !tbaa !689
  ret i32 0, !dbg !4793
}

declare !dbg !4794 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !4798 void @setutxent() local_unnamed_addr #3

declare !dbg !4799 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !4803 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !4805 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local %struct.tm_zone* @tzalloc(i8* %0) local_unnamed_addr #24 !dbg !4806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4810, metadata !DIExpression()), !dbg !4814
  %2 = icmp ne i8* %0, null, !dbg !4815
  br i1 %2, label %3, label %9, !dbg !4815

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #29, !dbg !4816
  %5 = add i64 %4, 1, !dbg !4817
  call void @llvm.dbg.value(metadata i64 %5, metadata !4811, metadata !DIExpression()), !dbg !4814
  %6 = icmp ult i64 %5, 119, !dbg !4818
  call void @llvm.dbg.value(metadata i64 undef, metadata !4812, metadata !DIExpression()), !dbg !4814
  %7 = add i64 %4, 18, !dbg !4819
  %8 = and i64 %7, -8, !dbg !4819
  br i1 %6, label %9, label %11, !dbg !4819

9:                                                ; preds = %1, %3
  %10 = phi i64 [ %5, %3 ], [ 0, %1 ]
  br label %11, !dbg !4819

11:                                               ; preds = %3, %9
  %12 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %13 = phi i64 [ 128, %9 ], [ %8, %3 ]
  %14 = tail call noalias i8* @malloc(i64 %13) #28, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %14, metadata !4813, metadata !DIExpression()), !dbg !4814
  %15 = icmp eq i8* %14, null, !dbg !4821
  br i1 %15, label %23, label %16, !dbg !4823

16:                                               ; preds = %11
  %17 = bitcast i8* %14 to %struct.tm_zone**, !dbg !4824
  store %struct.tm_zone* null, %struct.tm_zone** %17, align 8, !dbg !4826, !tbaa !689
  %18 = zext i1 %2 to i8, !dbg !4827
  %19 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !4828
  store i8 %18, i8* %19, align 8, !dbg !4829, !tbaa !998
  %20 = getelementptr inbounds i8, i8* %14, i64 9, !dbg !4830
  store i8 0, i8* %20, align 1, !dbg !4831, !tbaa !998
  br i1 %2, label %21, label %23, !dbg !4832

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %20, metadata !4833, metadata !DIExpression()) #28, !dbg !4840
  call void @llvm.dbg.value(metadata i8* %0, metadata !4838, metadata !DIExpression()) #28, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %5, metadata !4839, metadata !DIExpression()) #28, !dbg !4840
  call void @llvm.dbg.value(metadata i8* %20, metadata !4843, metadata !DIExpression()) #28, !dbg !4848
  call void @llvm.dbg.value(metadata i8* %0, metadata !4846, metadata !DIExpression()) #28, !dbg !4848
  call void @llvm.dbg.value(metadata i64 %5, metadata !4847, metadata !DIExpression()) #28, !dbg !4848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %20, i8* nonnull align 1 %0, i64 %12, i1 false) #28, !dbg !4850
  %22 = getelementptr inbounds i8, i8* %20, i64 %12, !dbg !4851
  store i8 0, i8* %22, align 1, !dbg !4852, !tbaa !998
  br label %23, !dbg !4853

23:                                               ; preds = %16, %21, %11
  %24 = bitcast i8* %14 to %struct.tm_zone*, !dbg !4820
  call void @llvm.dbg.value(metadata %struct.tm_zone* %24, metadata !4813, metadata !DIExpression()), !dbg !4814
  ret %struct.tm_zone* %24, !dbg !4854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tzfree(%struct.tm_zone* %0) local_unnamed_addr #8 !dbg !4855 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !4859, metadata !DIExpression()), !dbg !4863
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*), !dbg !4864
  br i1 %2, label %9, label %3, !dbg !4864

3:                                                ; preds = %1, %3
  %4 = phi %struct.tm_zone* [ %6, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %4, metadata !4859, metadata !DIExpression()), !dbg !4863
  %5 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %4, i64 0, i32 0, !dbg !4865
  %6 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8, !dbg !4865, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !4860, metadata !DIExpression()), !dbg !4866
  %7 = bitcast %struct.tm_zone* %4 to i8*, !dbg !4867
  tail call void @free(i8* %7) #28, !dbg !4868
  call void @llvm.dbg.value(metadata %struct.tm_zone* %6, metadata !4859, metadata !DIExpression()), !dbg !4863
  %8 = icmp eq %struct.tm_zone* %6, null, !dbg !4869
  br i1 %8, label %9, label %3, !dbg !4869, !llvm.loop !4870

9:                                                ; preds = %3, %1
  ret void, !dbg !4872
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.tm* @localtime_rz(%struct.tm_zone* %0, i64* nonnull %1, %struct.tm* nonnull %2) local_unnamed_addr #8 !dbg !4873 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !4893, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64* %1, metadata !4894, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata %struct.tm* %2, metadata !4895, metadata !DIExpression()), !dbg !4902
  %4 = icmp eq %struct.tm_zone* %0, null, !dbg !4903
  br i1 %4, label %5, label %7, !dbg !4904

5:                                                ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #28, !dbg !4905
  br label %51, !dbg !4906

7:                                                ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !4907
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !4896, metadata !DIExpression()), !dbg !4908
  %9 = icmp eq %struct.tm_zone* %8, null, !dbg !4909
  br i1 %9, label %51, label %10, !dbg !4910

10:                                               ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #28, !dbg !4911
  %12 = icmp eq %struct.tm* %11, null, !dbg !4911
  br i1 %12, label %16, label %13, !dbg !4912

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %2), !dbg !4913
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !4899, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4914
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !4915, metadata !DIExpression()) #28, !dbg !4924
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*), !dbg !4927
  br i1 %18, label %47, label %19, !dbg !4928

19:                                               ; preds = %16
  %20 = tail call i32* @__errno_location() #32, !dbg !4929
  %21 = load i32, i32* %20, align 4, !dbg !4929, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %21, metadata !4920, metadata !DIExpression()) #28, !dbg !4930
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !4931, metadata !DIExpression()) #28, !dbg !4934
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1, !dbg !4936
  %23 = load i8, i8* %22, align 8, !dbg !4936, !tbaa !998
  %24 = icmp eq i8 %23, 0, !dbg !4938
  call void @llvm.dbg.value(metadata i8* undef, metadata !4939, metadata !DIExpression()) #28, !dbg !4942
  br i1 %24, label %28, label %25, !dbg !4944

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0, !dbg !4938
  call void @llvm.dbg.value(metadata i8* %26, metadata !4939, metadata !DIExpression()) #28, !dbg !4942
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %26, i32 1) #28, !dbg !4945
  br label %30, !dbg !4944

28:                                               ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #28, !dbg !4946
  br label %30, !dbg !4944

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ], !dbg !4944
  %32 = icmp eq i32 %31, 0, !dbg !4947
  br i1 %32, label %33, label %34, !dbg !4948

33:                                               ; preds = %30
  tail call void @tzset() #28, !dbg !4949
  call void @llvm.dbg.value(metadata i1 %32, metadata !4923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !4930
  br label %36, !dbg !4950

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i1 %32, metadata !4923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !4930
  %35 = load i32, i32* %20, align 4, !dbg !4951, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %35, metadata !4920, metadata !DIExpression()) #28, !dbg !4930
  br label %36, !dbg !4953

36:                                               ; preds = %34, %33
  %37 = phi i32 [ %35, %34 ], [ %21, %33 ], !dbg !4930
  call void @llvm.dbg.value(metadata i32 %37, metadata !4920, metadata !DIExpression()) #28, !dbg !4930
  call void @llvm.dbg.value(metadata %struct.tm_zone* %8, metadata !4859, metadata !DIExpression()) #28, !dbg !4954
  %38 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*), !dbg !4956
  br i1 %38, label %45, label %39, !dbg !4956

39:                                               ; preds = %36, %39
  %40 = phi %struct.tm_zone* [ %42, %39 ], [ %8, %36 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %40, metadata !4859, metadata !DIExpression()) #28, !dbg !4954
  %41 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %40, i64 0, i32 0, !dbg !4957
  %42 = load %struct.tm_zone*, %struct.tm_zone** %41, align 8, !dbg !4957, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.tm_zone* %42, metadata !4860, metadata !DIExpression()) #28, !dbg !4958
  %43 = bitcast %struct.tm_zone* %40 to i8*, !dbg !4959
  tail call void @free(i8* %43) #28, !dbg !4960
  call void @llvm.dbg.value(metadata %struct.tm_zone* %42, metadata !4859, metadata !DIExpression()) #28, !dbg !4954
  %44 = icmp eq %struct.tm_zone* %42, null, !dbg !4961
  br i1 %44, label %45, label %39, !dbg !4961, !llvm.loop !4962

45:                                               ; preds = %39, %36
  store i32 %37, i32* %20, align 4, !dbg !4964, !tbaa !830
  %46 = xor i1 %32, true
  br label %47

47:                                               ; preds = %16, %45
  %48 = phi i1 [ %46, %45 ], [ false, %16 ]
  %49 = or i1 %17, %48, !dbg !4965
  %50 = select i1 %49, %struct.tm* null, %struct.tm* %2, !dbg !4965
  ret %struct.tm* %50, !dbg !4965

51:                                               ; preds = %7, %5
  %52 = phi %struct.tm* [ %6, %5 ], [ null, %7 ], !dbg !4966
  ret %struct.tm* %52, !dbg !4967
}

; Function Attrs: nounwind
declare !dbg !4968 %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* %0) unnamed_addr #8 !dbg !4971 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !4975, metadata !DIExpression()), !dbg !4983
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #28, !dbg !4984
  call void @llvm.dbg.value(metadata i8* %2, metadata !4976, metadata !DIExpression()), !dbg !4983
  %3 = icmp eq i8* %2, null, !dbg !4989
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1, !dbg !4990
  %5 = load i8, i8* %4, align 8, !dbg !4990, !tbaa !998
  %6 = icmp eq i8 %5, 0, !dbg !4990
  br i1 %3, label %12, label %7, !dbg !4991

7:                                                ; preds = %1
  br i1 %6, label %13, label %8, !dbg !4992

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !4993
  %10 = tail call i32 @strcmp(i8* nonnull %9, i8* nonnull %2) #29, !dbg !4994
  %11 = icmp eq i32 %10, 0, !dbg !4995
  br i1 %11, label %60, label %13, !dbg !4989

12:                                               ; preds = %1
  br i1 %6, label %60, label %19, !dbg !4991

13:                                               ; preds = %8, %7
  call void @llvm.dbg.value(metadata i8* %2, metadata !4810, metadata !DIExpression()) #28, !dbg !4996
  %14 = tail call i64 @strlen(i8* nonnull %2) #29, !dbg !4998
  %15 = add i64 %14, 1, !dbg !4999
  call void @llvm.dbg.value(metadata i64 %15, metadata !4811, metadata !DIExpression()) #28, !dbg !4996
  %16 = icmp ult i64 %15, 119, !dbg !5000
  call void @llvm.dbg.value(metadata i64 undef, metadata !4812, metadata !DIExpression()) #28, !dbg !4996
  %17 = add i64 %14, 18, !dbg !5001
  %18 = and i64 %17, -8, !dbg !5001
  br i1 %16, label %19, label %22, !dbg !5001

19:                                               ; preds = %12, %13
  %20 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %21 = xor i1 %3, true, !dbg !5001
  br label %22, !dbg !5001

22:                                               ; preds = %19, %13
  %23 = phi i1 [ %21, %19 ], [ true, %13 ]
  %24 = phi i64 [ %20, %19 ], [ %15, %13 ]
  %25 = phi i64 [ 128, %19 ], [ %18, %13 ]
  %26 = tail call noalias i8* @malloc(i64 %25) #28, !dbg !5002
  call void @llvm.dbg.value(metadata i8* %26, metadata !4813, metadata !DIExpression()) #28, !dbg !4996
  %27 = icmp eq i8* %26, null, !dbg !5003
  br i1 %27, label %60, label %28, !dbg !5004

28:                                               ; preds = %22
  %29 = bitcast i8* %26 to %struct.tm_zone**, !dbg !5005
  store %struct.tm_zone* null, %struct.tm_zone** %29, align 8, !dbg !5006, !tbaa !689
  %30 = zext i1 %23 to i8, !dbg !5007
  %31 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !5008
  store i8 %30, i8* %31, align 8, !dbg !5009, !tbaa !998
  %32 = getelementptr inbounds i8, i8* %26, i64 9, !dbg !5010
  store i8 0, i8* %32, align 1, !dbg !5011, !tbaa !998
  br i1 %23, label %33, label %35, !dbg !5012

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %32, metadata !4833, metadata !DIExpression()) #28, !dbg !5013
  call void @llvm.dbg.value(metadata i8* %2, metadata !4838, metadata !DIExpression()) #28, !dbg !5013
  call void @llvm.dbg.value(metadata i8* %32, metadata !4843, metadata !DIExpression()) #28, !dbg !5015
  call void @llvm.dbg.value(metadata i8* %2, metadata !4846, metadata !DIExpression()) #28, !dbg !5015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %32, i8* nonnull align 1 %2, i64 %24, i1 false) #28, !dbg !5017
  %34 = getelementptr inbounds i8, i8* %32, i64 %24, !dbg !5018
  store i8 0, i8* %34, align 1, !dbg !5019, !tbaa !998
  br label %35, !dbg !5020

35:                                               ; preds = %28, %33
  %36 = bitcast i8* %26 to %struct.tm_zone*, !dbg !5002
  call void @llvm.dbg.value(metadata %struct.tm_zone* undef, metadata !4813, metadata !DIExpression()) #28, !dbg !4996
  call void @llvm.dbg.value(metadata %struct.tm_zone* undef, metadata !4977, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !4931, metadata !DIExpression()) #28, !dbg !5022
  %37 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1, !dbg !5024
  %38 = load i8, i8* %37, align 8, !dbg !5024, !tbaa !998
  %39 = icmp eq i8 %38, 0, !dbg !5025
  call void @llvm.dbg.value(metadata i8* undef, metadata !4939, metadata !DIExpression()) #28, !dbg !5026
  br i1 %39, label %43, label %40, !dbg !5028

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5025
  call void @llvm.dbg.value(metadata i8* %41, metadata !4939, metadata !DIExpression()) #28, !dbg !5026
  %42 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %41, i32 1) #28, !dbg !5029
  br label %45, !dbg !5028

43:                                               ; preds = %35
  %44 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #28, !dbg !5030
  br label %45, !dbg !5028

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %44, %43 ], !dbg !5028
  %47 = icmp eq i32 %46, 0, !dbg !5031
  br i1 %47, label %48, label %49, !dbg !5032

48:                                               ; preds = %45
  tail call void @tzset() #28, !dbg !5033
  br label %60, !dbg !5034

49:                                               ; preds = %45
  %50 = tail call i32* @__errno_location() #32, !dbg !5035
  %51 = load i32, i32* %50, align 4, !dbg !5035, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %51, metadata !4980, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata %struct.tm_zone* undef, metadata !4859, metadata !DIExpression()) #28, !dbg !5037
  %52 = icmp ult i8* %26, inttoptr (i64 2 to i8*), !dbg !5039
  br i1 %52, label %59, label %53, !dbg !5039

53:                                               ; preds = %49, %53
  %54 = phi %struct.tm_zone* [ %56, %53 ], [ %36, %49 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %54, metadata !4859, metadata !DIExpression()) #28, !dbg !5037
  %55 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %54, i64 0, i32 0, !dbg !5040
  %56 = load %struct.tm_zone*, %struct.tm_zone** %55, align 8, !dbg !5040, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.tm_zone* %56, metadata !4860, metadata !DIExpression()) #28, !dbg !5041
  %57 = bitcast %struct.tm_zone* %54 to i8*, !dbg !5042
  tail call void @free(i8* %57) #28, !dbg !5043
  call void @llvm.dbg.value(metadata %struct.tm_zone* %56, metadata !4859, metadata !DIExpression()) #28, !dbg !5037
  %58 = icmp eq %struct.tm_zone* %56, null, !dbg !5044
  br i1 %58, label %59, label %53, !dbg !5044, !llvm.loop !5045

59:                                               ; preds = %53, %49
  store i32 %51, i32* %50, align 4, !dbg !5047, !tbaa !830
  br label %60

60:                                               ; preds = %22, %48, %59, %8, %12
  %61 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ null, %59 ], [ %36, %48 ], [ null, %22 ], !dbg !4990
  ret %struct.tm_zone* %61, !dbg !5048
}

; Function Attrs: nounwind
declare !dbg !5049 %struct.tm* @localtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone* %0, %struct.tm* %1) unnamed_addr #24 !dbg !5050 {
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5054, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5055, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i8* null, metadata !5056, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.151, i64 0, i64 0), metadata !5057, metadata !DIExpression()), !dbg !5065
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10, !dbg !5066
  %4 = load i8*, i8** %3, align 8, !dbg !5066, !tbaa !1568
  call void @llvm.dbg.value(metadata i8* %4, metadata !5056, metadata !DIExpression()), !dbg !5065
  %5 = icmp eq i8* %4, null, !dbg !5067
  br i1 %5, label %85, label %6, !dbg !5069

6:                                                ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*, !dbg !5070
  %8 = icmp ult i8* %4, %7, !dbg !5071
  br i1 %8, label %13, label %9, !dbg !5072

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1, !dbg !5073
  %11 = bitcast %struct.tm* %10 to i8*, !dbg !5074
  %12 = icmp ult i8* %4, %11, !dbg !5075
  br i1 %12, label %85, label %13, !dbg !5076

13:                                               ; preds = %9, %6
  %14 = load i8, i8* %4, align 1, !dbg !5077, !tbaa !998
  %15 = icmp eq i8 %14, 0, !dbg !5077
  br i1 %15, label %83, label %16, !dbg !5078

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0, !dbg !5079
  call void @llvm.dbg.value(metadata i8* %17, metadata !5057, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5054, metadata !DIExpression()), !dbg !5065
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull %4) #29, !dbg !5080
  %19 = icmp eq i32 %18, 0, !dbg !5081
  br i1 %19, label %83, label %20, !dbg !5082

20:                                               ; preds = %16, %78
  %21 = phi %struct.tm_zone* [ %80, %78 ], [ %0, %16 ]
  %22 = phi i8* [ %79, %78 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %21, metadata !5054, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i8* %22, metadata !5057, metadata !DIExpression()), !dbg !5065
  %23 = load i8, i8* %22, align 1, !dbg !5083, !tbaa !998
  %24 = icmp eq i8 %23, 0, !dbg !5083
  br i1 %24, label %25, label %65, !dbg !5084

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 2, i64 0, !dbg !5085
  %27 = icmp eq i8* %22, %26, !dbg !5086
  br i1 %27, label %28, label %32, !dbg !5087

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 1, !dbg !5088
  %30 = load i8, i8* %29, align 8, !dbg !5088, !tbaa !998
  %31 = icmp eq i8 %30, 0, !dbg !5089
  br i1 %31, label %32, label %65, !dbg !5090

32:                                               ; preds = %28, %25
  %33 = phi i8* [ %22, %28 ], [ %26, %25 ], !dbg !5085
  %34 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !5091
  %35 = add i64 %34, 1, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %35, metadata !5058, metadata !DIExpression()), !dbg !5093
  %36 = ptrtoint i8* %22 to i64, !dbg !5094
  %37 = ptrtoint i8* %33 to i64, !dbg !5094
  %38 = sub i64 %36, %37, !dbg !5094
  call void @llvm.dbg.value(metadata i64 %38, metadata !5064, metadata !DIExpression()), !dbg !5093
  %39 = xor i64 %38, -1, !dbg !5095
  %40 = icmp ugt i64 %35, %39, !dbg !5097
  br i1 %40, label %41, label %43, !dbg !5098

41:                                               ; preds = %32
  %42 = tail call i32* @__errno_location() #32, !dbg !5099
  store i32 12, i32* %42, align 4, !dbg !5101, !tbaa !830
  br label %85, !dbg !5102

43:                                               ; preds = %32
  %44 = add i64 %35, %38, !dbg !5103
  %45 = icmp ult i64 %44, 119, !dbg !5105
  br i1 %45, label %46, label %48, !dbg !5106

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %22, metadata !4833, metadata !DIExpression()) #28, !dbg !5107
  call void @llvm.dbg.value(metadata i8* %4, metadata !4838, metadata !DIExpression()) #28, !dbg !5107
  call void @llvm.dbg.value(metadata i64 %35, metadata !4839, metadata !DIExpression()) #28, !dbg !5107
  call void @llvm.dbg.value(metadata i8* %22, metadata !4843, metadata !DIExpression()) #28, !dbg !5109
  call void @llvm.dbg.value(metadata i8* %4, metadata !4846, metadata !DIExpression()) #28, !dbg !5109
  call void @llvm.dbg.value(metadata i64 %35, metadata !4847, metadata !DIExpression()) #28, !dbg !5109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %4, i64 %35, i1 false) #28, !dbg !5111
  %47 = getelementptr inbounds i8, i8* %22, i64 %35, !dbg !5112
  store i8 0, i8* %47, align 1, !dbg !5113, !tbaa !998
  br label %83, !dbg !5114

48:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %4, metadata !4810, metadata !DIExpression()) #28, !dbg !5115
  call void @llvm.dbg.value(metadata i64 %35, metadata !4811, metadata !DIExpression()) #28, !dbg !5115
  %49 = icmp ult i64 %35, 119, !dbg !5118
  call void @llvm.dbg.value(metadata i64 undef, metadata !4812, metadata !DIExpression()) #28, !dbg !5115
  %50 = add i64 %34, 18, !dbg !5119
  %51 = and i64 %50, -8, !dbg !5119
  %52 = select i1 %49, i64 128, i64 %51, !dbg !5119
  %53 = tail call noalias i8* @malloc(i64 %52) #28, !dbg !5120
  call void @llvm.dbg.value(metadata i8* %53, metadata !4813, metadata !DIExpression()) #28, !dbg !5115
  %54 = icmp eq i8* %53, null, !dbg !5121
  br i1 %54, label %55, label %57, !dbg !5122

55:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %53, metadata !4813, metadata !DIExpression()) #28, !dbg !5115
  %56 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5123
  store i8* %53, i8** %56, align 8, !dbg !5123, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %53, metadata !5054, metadata !DIExpression()), !dbg !5065
  br label %85, !dbg !5124

57:                                               ; preds = %48
  %58 = bitcast i8* %53 to %struct.tm_zone**, !dbg !5125
  store %struct.tm_zone* null, %struct.tm_zone** %58, align 8, !dbg !5126, !tbaa !689
  %59 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !5127
  store i8 1, i8* %59, align 8, !dbg !5128, !tbaa !998
  %60 = getelementptr inbounds i8, i8* %53, i64 9, !dbg !5129
  store i8 0, i8* %60, align 1, !dbg !5130, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %60, metadata !4833, metadata !DIExpression()) #28, !dbg !5131
  call void @llvm.dbg.value(metadata i8* %4, metadata !4838, metadata !DIExpression()) #28, !dbg !5131
  call void @llvm.dbg.value(metadata i8* %60, metadata !4843, metadata !DIExpression()) #28, !dbg !5133
  call void @llvm.dbg.value(metadata i8* %4, metadata !4846, metadata !DIExpression()) #28, !dbg !5133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %60, i8* nonnull align 1 %4, i64 %35, i1 false) #28, !dbg !5135
  %61 = getelementptr inbounds i8, i8* %60, i64 %35, !dbg !5136
  store i8 0, i8* %61, align 1, !dbg !5137, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %53, metadata !4813, metadata !DIExpression()) #28, !dbg !5115
  %62 = bitcast %struct.tm_zone* %21 to i8**, !dbg !5123
  store i8* %53, i8** %62, align 8, !dbg !5123, !tbaa !689
  call void @llvm.dbg.value(metadata i8* %53, metadata !5054, metadata !DIExpression()), !dbg !5065
  %63 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !5138
  store i8 0, i8* %63, align 8, !dbg !5139, !tbaa !998
  %64 = getelementptr inbounds i8, i8* %53, i64 9, !dbg !5140
  call void @llvm.dbg.value(metadata i8* %64, metadata !5057, metadata !DIExpression()), !dbg !5065
  br label %83

65:                                               ; preds = %28, %20
  %66 = tail call i64 @strlen(i8* nonnull %22) #29, !dbg !5141
  %67 = add i64 %66, 1, !dbg !5142
  %68 = getelementptr inbounds i8, i8* %22, i64 %67, !dbg !5143
  call void @llvm.dbg.value(metadata i8* %68, metadata !5057, metadata !DIExpression()), !dbg !5065
  %69 = load i8, i8* %68, align 1, !dbg !5144, !tbaa !998
  %70 = icmp eq i8 %69, 0, !dbg !5144
  br i1 %70, label %71, label %78, !dbg !5146

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %21, i64 0, i32 0, !dbg !5147
  %73 = load %struct.tm_zone*, %struct.tm_zone** %72, align 8, !dbg !5147, !tbaa !689
  %74 = icmp eq %struct.tm_zone* %73, null, !dbg !5148
  %75 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %73, i64 0, i32 2, i64 0
  %76 = select i1 %74, i8* %68, i8* %75, !dbg !5149
  %77 = select i1 %74, %struct.tm_zone* %21, %struct.tm_zone* %73, !dbg !5149
  br label %78, !dbg !5149

78:                                               ; preds = %71, %65
  %79 = phi i8* [ %68, %65 ], [ %76, %71 ], !dbg !5150
  %80 = phi %struct.tm_zone* [ %21, %65 ], [ %77, %71 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %80, metadata !5054, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i8* %79, metadata !5057, metadata !DIExpression()), !dbg !5065
  %81 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %79, i8* nonnull %4) #29, !dbg !5080
  %82 = icmp eq i32 %81, 0, !dbg !5081
  br i1 %82, label %83, label %20, !dbg !5082, !llvm.loop !5151

83:                                               ; preds = %78, %16, %46, %57, %13
  %84 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.151, i64 0, i64 0), %13 ], [ %64, %57 ], [ %22, %46 ], [ %17, %16 ], [ %79, %78 ], !dbg !5065
  call void @llvm.dbg.value(metadata i8* %84, metadata !5057, metadata !DIExpression()), !dbg !5065
  store i8* %84, i8** %3, align 8, !dbg !5153, !tbaa !1568
  br label %85, !dbg !5154

85:                                               ; preds = %55, %41, %2, %9, %83
  %86 = phi i1 [ true, %83 ], [ true, %9 ], [ true, %2 ], [ false, %41 ], [ false, %55 ], !dbg !5065
  ret i1 %86, !dbg !5155
}

; Function Attrs: nounwind
declare !dbg !5156 i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5159 noundef i32 @unsetenv(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5160 void @tzset() local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !5161 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @mktime_z(%struct.tm_zone* %0, %struct.tm* nonnull %1) local_unnamed_addr #8 !dbg !5162 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 16
  call void @llvm.dbg.value(metadata %struct.tm_zone* %0, metadata !5166, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5167, metadata !DIExpression()), !dbg !5176
  %5 = icmp eq %struct.tm_zone* %0, null, !dbg !5177
  br i1 %5, label %6, label %8, !dbg !5178

6:                                                ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #28, !dbg !5179
  br label %87, !dbg !5180

8:                                                ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0), !dbg !5181
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !5168, metadata !DIExpression()), !dbg !5182
  %10 = icmp eq %struct.tm_zone* %9, null, !dbg !5183
  br i1 %10, label %86, label %11, !dbg !5184

11:                                               ; preds = %8
  %12 = bitcast i64* %3 to i8*, !dbg !5185
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #28, !dbg !5185
  %13 = tail call i64 @mktime(%struct.tm* nonnull %1) #28, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %13, metadata !5171, metadata !DIExpression()), !dbg !5187
  store i64 %13, i64* %3, align 8, !dbg !5188, !tbaa !912
  call void @llvm.dbg.value(metadata i64 -1, metadata !5174, metadata !DIExpression()), !dbg !5187
  %14 = bitcast %struct.tm* %4 to i8*, !dbg !5189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %14) #28, !dbg !5189
  call void @llvm.dbg.declare(metadata %struct.tm* %4, metadata !5175, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata i64 %13, metadata !5171, metadata !DIExpression()), !dbg !5187
  %15 = icmp eq i64 %13, -1, !dbg !5191
  br i1 %15, label %16, label %51, !dbg !5193

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64* %3, metadata !5171, metadata !DIExpression(DW_OP_deref)), !dbg !5187
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #28, !dbg !5194
  %18 = icmp eq %struct.tm* %17, null, !dbg !5194
  br i1 %18, label %54, label %19, !dbg !5195

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %struct.tm* %1, metadata !5196, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata %struct.tm* %4, metadata !5203, metadata !DIExpression()), !dbg !5204
  %20 = bitcast %struct.tm* %1 to <4 x i32>*, !dbg !5206
  %21 = load <4 x i32>, <4 x i32>* %20, align 8, !dbg !5206, !tbaa !830
  %22 = bitcast %struct.tm* %4 to <4 x i32>*, !dbg !5207
  %23 = load <4 x i32>, <4 x i32>* %22, align 16, !dbg !5207, !tbaa !830
  %24 = xor <4 x i32> %23, %21, !dbg !5208
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4, !dbg !5209
  %26 = load i32, i32* %25, align 8, !dbg !5209, !tbaa !1975
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !5210
  %28 = load i32, i32* %27, align 16, !dbg !5210, !tbaa !1975
  %29 = xor i32 %28, %26, !dbg !5211
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5, !dbg !5212
  %31 = load i32, i32* %30, align 4, !dbg !5212, !tbaa !1795
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 5, !dbg !5213
  %33 = load i32, i32* %32, align 4, !dbg !5213, !tbaa !1795
  %34 = xor i32 %33, %31, !dbg !5214
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8, !dbg !5215
  %36 = load i32, i32* %35, align 8, !dbg !5215, !tbaa !2277
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !5216
  %38 = load i32, i32* %37, align 16, !dbg !5216, !tbaa !2277
  call void @llvm.dbg.value(metadata i32 %36, metadata !5217, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata i32 %38, metadata !5222, metadata !DIExpression()), !dbg !5223
  %39 = icmp eq i32 %36, 0, !dbg !5225
  %40 = icmp eq i32 %38, 0, !dbg !5226
  %41 = xor i1 %39, %40, !dbg !5227
  %42 = or i32 %38, %36, !dbg !5228
  %43 = icmp sgt i32 %42, -1, !dbg !5228
  %44 = and i1 %43, %41, !dbg !5228
  %45 = zext i1 %44 to i32, !dbg !5229
  %46 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %24), !dbg !5230
  %47 = or i32 %46, %29, !dbg !5211
  %48 = or i32 %47, %34, !dbg !5214
  %49 = or i32 %48, %45, !dbg !5230
  %50 = icmp eq i32 %49, 0, !dbg !5231
  br i1 %50, label %51, label %54, !dbg !5232

51:                                               ; preds = %19, %11
  %52 = call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %1), !dbg !5233
  br i1 %52, label %54, label %53, !dbg !5234

53:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i64 -1, metadata !5171, metadata !DIExpression()), !dbg !5187
  store i64 -1, i64* %3, align 8, !dbg !5235, !tbaa !912
  br label %54, !dbg !5236

54:                                               ; preds = %53, %51, %19, %16
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !4915, metadata !DIExpression()) #28, !dbg !5237
  %55 = icmp eq %struct.tm_zone* %9, inttoptr (i64 1 to %struct.tm_zone*), !dbg !5240
  br i1 %55, label %56, label %58, !dbg !5241

56:                                               ; preds = %54
  %57 = load i64, i64* %3, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #28, !dbg !5243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #28, !dbg !5243
  br label %87

58:                                               ; preds = %54
  %59 = tail call i32* @__errno_location() #32, !dbg !5244
  %60 = load i32, i32* %59, align 4, !dbg !5244, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %60, metadata !4920, metadata !DIExpression()) #28, !dbg !5245
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !4931, metadata !DIExpression()) #28, !dbg !5246
  %61 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 1, !dbg !5248
  %62 = load i8, i8* %61, align 8, !dbg !5248, !tbaa !998
  %63 = icmp eq i8 %62, 0, !dbg !5249
  call void @llvm.dbg.value(metadata i8* undef, metadata !4939, metadata !DIExpression()) #28, !dbg !5250
  br i1 %63, label %67, label %64, !dbg !5252

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 2, i64 0, !dbg !5249
  call void @llvm.dbg.value(metadata i8* %65, metadata !4939, metadata !DIExpression()) #28, !dbg !5250
  %66 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %65, i32 1) #28, !dbg !5253
  br label %69, !dbg !5252

67:                                               ; preds = %58
  %68 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0)) #28, !dbg !5254
  br label %69, !dbg !5252

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ], !dbg !5252
  %71 = icmp eq i32 %70, 0, !dbg !5255
  br i1 %71, label %72, label %73, !dbg !5256

72:                                               ; preds = %69
  call void @tzset() #28, !dbg !5257
  call void @llvm.dbg.value(metadata i1 %71, metadata !4923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !5245
  br label %75, !dbg !5258

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 %71, metadata !4923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !5245
  %74 = load i32, i32* %59, align 4, !dbg !5259, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %74, metadata !4920, metadata !DIExpression()) #28, !dbg !5245
  br label %75, !dbg !5260

75:                                               ; preds = %73, %72
  %76 = phi i32 [ %74, %73 ], [ %60, %72 ], !dbg !5245
  call void @llvm.dbg.value(metadata i32 %76, metadata !4920, metadata !DIExpression()) #28, !dbg !5245
  call void @llvm.dbg.value(metadata %struct.tm_zone* %9, metadata !4859, metadata !DIExpression()) #28, !dbg !5261
  %77 = icmp ult %struct.tm_zone* %9, inttoptr (i64 2 to %struct.tm_zone*), !dbg !5263
  br i1 %77, label %84, label %78, !dbg !5263

78:                                               ; preds = %75, %78
  %79 = phi %struct.tm_zone* [ %81, %78 ], [ %9, %75 ]
  call void @llvm.dbg.value(metadata %struct.tm_zone* %79, metadata !4859, metadata !DIExpression()) #28, !dbg !5261
  %80 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %79, i64 0, i32 0, !dbg !5264
  %81 = load %struct.tm_zone*, %struct.tm_zone** %80, align 8, !dbg !5264, !tbaa !689
  call void @llvm.dbg.value(metadata %struct.tm_zone* %81, metadata !4860, metadata !DIExpression()) #28, !dbg !5265
  %82 = bitcast %struct.tm_zone* %79 to i8*, !dbg !5266
  call void @free(i8* %82) #28, !dbg !5267
  call void @llvm.dbg.value(metadata %struct.tm_zone* %81, metadata !4859, metadata !DIExpression()) #28, !dbg !5261
  %83 = icmp eq %struct.tm_zone* %81, null, !dbg !5268
  br i1 %83, label %84, label %78, !dbg !5268, !llvm.loop !5269

84:                                               ; preds = %78, %75
  store i32 %76, i32* %59, align 4, !dbg !5271, !tbaa !830
  %85 = load i64, i64* %3, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %14) #28, !dbg !5243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #28, !dbg !5243
  br i1 %71, label %87, label %86

86:                                               ; preds = %84, %8
  br label %87, !dbg !5272

87:                                               ; preds = %56, %86, %84, %6
  %88 = phi i64 [ %7, %6 ], [ -1, %86 ], [ %85, %84 ], [ %57, %56 ], !dbg !5273
  ret i64 %88, !dbg !5274
}

; Function Attrs: nounwind
declare !dbg !5275 i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn
declare !dbg !5278 noundef i64 @mktime(%struct.tm* nocapture noundef) local_unnamed_addr #26

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #27

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5279 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5317, metadata !DIExpression()), !dbg !5322
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !5323
  call void @llvm.dbg.value(metadata i1 undef, metadata !5318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5322
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5324, metadata !DIExpression()), !dbg !5327
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5329
  %4 = load i32, i32* %3, align 8, !dbg !5329, !tbaa !4514
  %5 = and i32 %4, 32, !dbg !5330
  %6 = icmp eq i32 %5, 0, !dbg !5330
  call void @llvm.dbg.value(metadata i1 %6, metadata !5320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5322
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !5331
  %8 = icmp eq i32 %7, 0, !dbg !5332
  call void @llvm.dbg.value(metadata i1 %8, metadata !5321, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5322
  br i1 %6, label %9, label %19, !dbg !5333

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5335
  call void @llvm.dbg.value(metadata i1 %10, metadata !5318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5322
  %11 = or i1 %10, %8, !dbg !5336
  %12 = xor i1 %8, true, !dbg !5336
  %13 = sext i1 %12 to i32, !dbg !5336
  br i1 %11, label %22, label %14, !dbg !5336

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !5337
  %16 = load i32, i32* %15, align 4, !dbg !5337, !tbaa !830
  %17 = icmp ne i32 %16, 9, !dbg !5338
  %18 = sext i1 %17 to i32, !dbg !5339
  br label %22, !dbg !5339

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !5340

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !5342
  store i32 0, i32* %21, align 4, !dbg !5344, !tbaa !830
  br label %22, !dbg !5342

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5322
  ret i32 %23, !dbg !5345
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5346 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5350, metadata !DIExpression()), !dbg !5355
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5356
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !5356
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5351, metadata !DIExpression()), !dbg !5357
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !5358
  %5 = icmp eq i32 %4, 0, !dbg !5358
  br i1 %5, label %6, label %13, !dbg !5360

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5361
  %8 = load i16, i16* %7, align 16, !dbg !5361
  %9 = icmp eq i16 %8, 67, !dbg !5361
  br i1 %9, label %13, label %10, !dbg !5362

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i64 0, i64 0), i64 6), !dbg !5363
  %12 = icmp ne i32 %11, 0, !dbg !5364
  br label %13, !dbg !5362

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5355
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !5365
  ret i1 %14, !dbg !5365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5366 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !5371
  call void @llvm.dbg.value(metadata i8* %1, metadata !5370, metadata !DIExpression()), !dbg !5372
  %2 = icmp eq i8* %1, null, !dbg !5373
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.161, i64 0, i64 0), i8* %1, !dbg !5375
  call void @llvm.dbg.value(metadata i8* %3, metadata !5370, metadata !DIExpression()), !dbg !5372
  %4 = load i8, i8* %3, align 1, !dbg !5376, !tbaa !998
  %5 = icmp eq i8 %4, 0, !dbg !5380
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.162, i64 0, i64 0), i8* %3, !dbg !5381
  call void @llvm.dbg.value(metadata i8* %6, metadata !5370, metadata !DIExpression()), !dbg !5372
  ret i8* %6, !dbg !5382
}

; Function Attrs: nounwind
declare !dbg !5383 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5390, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata i8* %1, metadata !5391, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata i64 %2, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata i32 %0, metadata !5394, metadata !DIExpression()) #28, !dbg !5403
  call void @llvm.dbg.value(metadata i8* %1, metadata !5397, metadata !DIExpression()) #28, !dbg !5403
  call void @llvm.dbg.value(metadata i64 %2, metadata !5398, metadata !DIExpression()) #28, !dbg !5403
  call void @llvm.dbg.value(metadata i32 %0, metadata !5405, metadata !DIExpression()) #28, !dbg !5411
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !5413
  call void @llvm.dbg.value(metadata i8* %4, metadata !5410, metadata !DIExpression()) #28, !dbg !5411
  call void @llvm.dbg.value(metadata i8* %4, metadata !5399, metadata !DIExpression()) #28, !dbg !5403
  %5 = icmp eq i8* %4, null, !dbg !5414
  br i1 %5, label %6, label %9, !dbg !5415

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5416
  br i1 %7, label %19, label %8, !dbg !5419

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5420, !tbaa !998
  br label %19, !dbg !5421

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !5422
  call void @llvm.dbg.value(metadata i64 %10, metadata !5400, metadata !DIExpression()) #28, !dbg !5423
  %11 = icmp ult i64 %10, %2, !dbg !5424
  br i1 %11, label %12, label %14, !dbg !5426

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5427
  call void @llvm.dbg.value(metadata i8* %1, metadata !5429, metadata !DIExpression()) #28, !dbg !5434
  call void @llvm.dbg.value(metadata i8* %4, metadata !5432, metadata !DIExpression()) #28, !dbg !5434
  call void @llvm.dbg.value(metadata i64 %13, metadata !5433, metadata !DIExpression()) #28, !dbg !5434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !5436
  br label %19, !dbg !5437

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5438
  br i1 %15, label %19, label %16, !dbg !5441

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5442
  call void @llvm.dbg.value(metadata i8* %1, metadata !5429, metadata !DIExpression()) #28, !dbg !5444
  call void @llvm.dbg.value(metadata i8* %4, metadata !5432, metadata !DIExpression()) #28, !dbg !5444
  call void @llvm.dbg.value(metadata i64 %17, metadata !5433, metadata !DIExpression()) #28, !dbg !5444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !5446
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5447
  store i8 0, i8* %18, align 1, !dbg !5448, !tbaa !998
  br label %19, !dbg !5449

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5450
  ret i32 %20, !dbg !5451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i32 %0, metadata !5405, metadata !DIExpression()) #28, !dbg !5456
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !5458
  call void @llvm.dbg.value(metadata i8* %2, metadata !5410, metadata !DIExpression()) #28, !dbg !5456
  ret i8* %2, !dbg !5459
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
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nosync nounwind willreturn }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nounwind willreturn }
attributes #24 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nosync nounwind readnone willreturn }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!172, !2, !11, !43, !51, !199, !57, !74, !81, !206, !166, !213, !230, !232, !234, !236, !238, !240, !243, !254, !277, !279, !281, !670}
!llvm.ident = !{!672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672, !672}
!llvm.module.flags = !{!673, !674, !675, !676, !677}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !11, file: !12, line: 50, type: !40, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !39, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !18, line: 28, size: 1856, elements: !21)
!21 = !{!22, !28, !32, !36, !37}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !20, file: !18, line: 31, baseType: !23, size: 832)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 832, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !18, line: 31, flags: DIFlagFwdDecl)
!26 = !{!27}
!27 = !DISubrange(count: 13)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !20, file: !18, line: 34, baseType: !29, size: 64, offset: 832)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !20, file: !18, line: 35, baseType: !33, size: 64, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !20, file: !18, line: 36, baseType: !33, size: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !20, file: !18, line: 39, baseType: !38, size: 832, offset: 1024)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !26)
!39 = !{!9}
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "file_name", scope: !43, file: !44, line: 46, type: !6, isLocal: true, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !45, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!45 = !{!41, !46}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !43, file: !44, line: 56, type: !48, isLocal: true, isDefinition: true)
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "exit_failure", scope: !51, file: !52, line: 24, type: !54, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !53, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!49}
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "long_options", scope: !57, file: !58, line: 34, type: !60, isLocal: true, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !59, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!59 = !{!55}
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, elements: !70)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !63, line: 50, size: 256, elements: !64)
!63 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!64 = !{!65, !66, !67, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !63, line: 52, baseType: !6, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !62, file: !63, line: 55, baseType: !35, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !62, file: !63, line: 56, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !62, file: !63, line: 57, baseType: !35, size: 32, offset: 192)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "program_name", scope: !74, file: !75, line: 33, type: !6, isLocal: false, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !78, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!76 = !{!77, !14}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !{!72}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !81, file: !82, line: 85, type: !160, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !119, globals: !123, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !{!84, !99, !104}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !85, line: 32, baseType: !86, size: 32, elements: !87)
!85 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!88 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!94 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!95 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!96 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!97 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!98 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !85, line: 242, baseType: !86, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 46, baseType: !86, size: 32, elements: !106)
!105 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!107 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!119 = !{!35, !31, !120, !14}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !{!79, !124, !130, !142, !144, !149, !156, !158}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !81, file: !82, line: 101, type: !126, isLocal: false, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 320, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!128 = !{!129}
!129 = !DISubrange(count: 10)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !81, file: !82, line: 1052, type: !132, isLocal: false, isDefinition: true)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !82, line: 65, size: 448, elements: !133)
!133 = !{!134, !135, !136, !140, !141}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !132, file: !82, line: 68, baseType: !84, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !82, line: 71, baseType: !35, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !132, file: !82, line: 75, baseType: !137, size: 256, offset: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !132, file: !82, line: 78, baseType: !6, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !132, file: !82, line: 81, baseType: !6, size: 64, offset: 384)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !81, file: !82, line: 116, type: !132, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "slot0", scope: !81, file: !82, line: 842, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 256)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "slotvec", scope: !81, file: !82, line: 845, type: !151, isLocal: true, isDefinition: true)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !82, line: 834, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !82, line: 836, baseType: !120, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !82, line: 837, baseType: !14, size: 64, offset: 64)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "nslots", scope: !81, file: !82, line: 843, type: !35, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "slotvec0", scope: !81, file: !82, line: 844, type: !152, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 704, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!162 = !{!163}
!163 = !DISubrange(count: 11)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !166, file: !167, line: 26, type: !169, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !168, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = !{!164}
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 47)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !193, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "src/uptime.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!175, !84, !180}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !176, line: 208, baseType: !86, size: 32, elements: !177)
!176 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !182, file: !181, line: 187, baseType: !86, size: 32, elements: !191)
!181 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DISubprogram(name: "select_plural", scope: !181, file: !181, line: 183, type: !183, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !189)
!183 = !DISubroutineType(types: !184)
!184 = !{!122, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !186, line: 102, baseType: !187)
!186 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !188, line: 73, baseType: !122)
!188 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!189 = !{!190}
!190 = !DILocalVariable(name: "n", arg: 1, scope: !182, file: !181, line: 183, type: !185)
!191 = !{!192}
!192 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!193 = !{!6, !77, !194, !122, !198}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !195, line: 7, baseType: !196)
!195 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !188, line: 160, baseType: !197)
!197 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!198 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/fprintftime.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !{!120, !6, !86, !35, !202, !198, !203, !31, !197, !122, !204, !205}
!202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!204 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!205 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !208, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!209}
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 40, baseType: !86, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!212 = !{!77}
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !218, file: !217, line: 186, baseType: !86, size: 32, elements: !227)
!217 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = distinct !DISubprogram(name: "x2nrealloc", scope: !217, file: !217, line: 174, type: !219, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!77, !77, !221, !120}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!222 = !{!223, !224, !225, !226}
!223 = !DILocalVariable(name: "p", arg: 1, scope: !218, file: !217, line: 174, type: !77)
!224 = !DILocalVariable(name: "pn", arg: 2, scope: !218, file: !217, line: 174, type: !221)
!225 = !DILocalVariable(name: "s", arg: 3, scope: !218, file: !217, line: 174, type: !120)
!226 = !DILocalVariable(name: "n", scope: !218, file: !217, line: 176, type: !120)
!227 = !{!228}
!228 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!229 = !{!120, !14, !77}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !242, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = !{!120}
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !253, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = !{!175, !246}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !247, file: !217, line: 186, baseType: !86, size: 32, elements: !227)
!247 = distinct !DISubprogram(name: "x2nrealloc", scope: !217, file: !217, line: 174, type: !219, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DILocalVariable(name: "p", arg: 1, scope: !247, file: !217, line: 174, type: !77)
!250 = !DILocalVariable(name: "pn", arg: 2, scope: !247, file: !217, line: 174, type: !221)
!251 = !DILocalVariable(name: "s", arg: 3, scope: !247, file: !217, line: 174, type: !120)
!252 = !DILocalVariable(name: "n", scope: !247, file: !217, line: 176, type: !120)
!253 = !{!14, !77, !120}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !260, globals: !261, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/time_rz.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = !{!257}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !255, line: 50, baseType: !86, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIEnumerator(name: "ABBR_SIZE_MIN", value: 119, isUnsigned: true)
!260 = !{!14, !120}
!261 = !{!262}
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "local_tz", scope: !254, file: !255, line: 55, type: !264, isLocal: true, isDefinition: true)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !266, line: 778, baseType: !267)
!266 = !DIFile(filename: "./lib/time.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !269, line: 21, size: 128, elements: !270)
!269 = !DIFile(filename: "./lib/time-internal.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !269, line: 25, baseType: !267, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !268, file: !269, line: 36, baseType: !8, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !268, file: !269, line: 48, baseType: !274, offset: 72)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: -1)
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !283, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = !{!284}
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 41, baseType: !86, size: 32, elements: !286)
!285 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!287 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!288 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!289 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!290 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!291 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!292 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!293 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!294 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!295 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!296 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!297 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!298 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!305 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!325 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!326 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!327 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!328 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!329 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!330 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!331 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!332 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!333 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!334 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!335 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!336 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!395 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!402 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!482 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!555 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!556 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!557 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!558 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!559 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!560 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!561 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!563 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!564 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!565 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!566 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!567 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!568 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!569 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!571 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!572 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!574 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!575 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!602 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!603 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!604 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!605 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!606 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!611 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!612 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!613 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!614 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!672 = !{!"clang version 12.0.1"}
!673 = !{i32 7, !"Dwarf Version", i32 4}
!674 = !{i32 2, !"Debug Info Version", i32 3}
!675 = !{i32 1, !"wchar_size", i32 4}
!676 = !{i32 7, !"PIC Level", i32 2}
!677 = !{i32 7, !"PIE Level", i32 2}
!678 = distinct !DISubprogram(name: "usage", scope: !173, file: !173, line: 193, type: !679, scopeLine: 194, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !35}
!681 = !{!682}
!682 = !DILocalVariable(name: "status", arg: 1, scope: !678, file: !173, line: 193, type: !35)
!683 = !DILocation(line: 0, scope: !678)
!684 = !DILocation(line: 195, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !678, file: !173, line: 195, column: 7)
!686 = !DILocation(line: 195, column: 7, scope: !678)
!687 = !DILocation(line: 196, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !173, line: 196, column: 5)
!689 = !{!690, !690, i64 0}
!690 = !{!"any pointer", !691, i64 0}
!691 = !{!"omnipotent char", !692, i64 0}
!692 = !{!"Simple C/C++ TBAA"}
!693 = !DILocation(line: 199, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !173, line: 198, column: 5)
!695 = !DILocation(line: 200, column: 7, scope: !694)
!696 = !DILocation(line: 209, column: 7, scope: !694)
!697 = !DILocation(line: 215, column: 7, scope: !694)
!698 = !DILocation(line: 219, column: 7, scope: !694)
!699 = !DILocation(line: 220, column: 7, scope: !694)
!700 = !DILocalVariable(name: "program", arg: 1, scope: !701, file: !181, line: 634, type: !6)
!701 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !181, file: !181, line: 634, type: !702, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !6}
!704 = !{!700, !705, !714, !715, !717}
!705 = !DILocalVariable(name: "infomap", scope: !701, file: !181, line: 636, type: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 896, elements: !712)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !701, file: !181, line: 636, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !708, file: !181, line: 636, baseType: !6, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !181, line: 636, baseType: !6, size: 64, offset: 64)
!712 = !{!713}
!713 = !DISubrange(count: 7)
!714 = !DILocalVariable(name: "node", scope: !701, file: !181, line: 646, type: !6)
!715 = !DILocalVariable(name: "map_prog", scope: !701, file: !181, line: 647, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!717 = !DILocalVariable(name: "lc_messages", scope: !701, file: !181, line: 659, type: !6)
!718 = !DILocation(line: 0, scope: !701, inlinedAt: !719)
!719 = distinct !DILocation(line: 221, column: 7, scope: !694)
!720 = !DILocation(line: 636, column: 3, scope: !701, inlinedAt: !719)
!721 = !DILocation(line: 636, column: 67, scope: !701, inlinedAt: !719)
!722 = !DILocation(line: 647, column: 36, scope: !701, inlinedAt: !719)
!723 = !DILocation(line: 649, column: 3, scope: !701, inlinedAt: !719)
!724 = !DILocation(line: 649, column: 33, scope: !701, inlinedAt: !719)
!725 = !DILocation(line: 650, column: 13, scope: !701, inlinedAt: !719)
!726 = !DILocation(line: 649, column: 20, scope: !701, inlinedAt: !719)
!727 = !{!728, !690, i64 0}
!728 = !{!"infomap", !690, i64 0, !690, i64 8}
!729 = !DILocation(line: 649, column: 10, scope: !701, inlinedAt: !719)
!730 = !DILocation(line: 649, column: 28, scope: !701, inlinedAt: !719)
!731 = distinct !{!731, !723, !725, !732}
!732 = !{!"llvm.loop.mustprogress"}
!733 = !DILocation(line: 652, column: 17, scope: !734, inlinedAt: !719)
!734 = distinct !DILexicalBlock(scope: !701, file: !181, line: 652, column: 7)
!735 = !{!728, !690, i64 8}
!736 = !DILocation(line: 652, column: 7, scope: !734, inlinedAt: !719)
!737 = !DILocation(line: 652, column: 7, scope: !701, inlinedAt: !719)
!738 = !DILocation(line: 655, column: 3, scope: !701, inlinedAt: !719)
!739 = !DILocation(line: 659, column: 29, scope: !701, inlinedAt: !719)
!740 = !DILocation(line: 660, column: 7, scope: !741, inlinedAt: !719)
!741 = distinct !DILexicalBlock(scope: !701, file: !181, line: 660, column: 7)
!742 = !DILocation(line: 660, column: 19, scope: !741, inlinedAt: !719)
!743 = !DILocation(line: 660, column: 22, scope: !741, inlinedAt: !719)
!744 = !DILocation(line: 660, column: 7, scope: !701, inlinedAt: !719)
!745 = !DILocation(line: 666, column: 7, scope: !746, inlinedAt: !719)
!746 = distinct !DILexicalBlock(scope: !741, file: !181, line: 661, column: 5)
!747 = !DILocation(line: 668, column: 5, scope: !746, inlinedAt: !719)
!748 = !DILocation(line: 669, column: 3, scope: !701, inlinedAt: !719)
!749 = !DILocation(line: 671, column: 3, scope: !701, inlinedAt: !719)
!750 = !DILocation(line: 673, column: 1, scope: !701, inlinedAt: !719)
!751 = !DILocation(line: 223, column: 3, scope: !678)
!752 = !DISubprogram(name: "dcgettext", scope: !753, file: !753, line: 51, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!753 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!754 = !DISubroutineType(types: !755)
!755 = !{!14, !6, !6, !35}
!756 = !DISubprogram(name: "fputs_unlocked", scope: !757, file: !757, line: 667, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!757 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!758 = !DISubroutineType(types: !759)
!759 = !{!35, !6, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !763)
!762 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !779, !780, !781, !782, !784, !785, !786, !790, !793, !795, !798, !801, !802, !803, !804, !805}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !761, file: !762, line: 51, baseType: !35, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !761, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !761, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !761, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !761, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !761, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !761, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !761, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !761, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !761, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !761, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !761, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !761, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !762, line: 36, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !761, file: !762, line: 70, baseType: !760, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !761, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !761, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !761, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !188, line: 152, baseType: !197)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !761, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !761, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !761, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 1)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !761, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !762, line: 43, baseType: null)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !761, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !188, line: 153, baseType: !197)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !761, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !762, line: 37, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !761, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !762, line: 38, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !761, file: !762, line: 93, baseType: !760, size: 64, offset: 1344)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !761, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !761, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !761, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !761, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 20)
!809 = !DISubprogram(name: "setlocale", scope: !810, file: !810, line: 122, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!810 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!811 = !DISubroutineType(types: !812)
!812 = !{!14, !35, !6}
!813 = distinct !DISubprogram(name: "main", scope: !173, file: !173, line: 227, type: !814, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !817)
!814 = !DISubroutineType(types: !815)
!815 = !{!35, !35, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!817 = !{!818, !819}
!818 = !DILocalVariable(name: "argc", arg: 1, scope: !813, file: !173, line: 227, type: !35)
!819 = !DILocalVariable(name: "argv", arg: 2, scope: !813, file: !173, line: 227, type: !816)
!820 = !DILocation(line: 0, scope: !813)
!821 = !DILocation(line: 230, column: 21, scope: !813)
!822 = !DILocation(line: 230, column: 3, scope: !813)
!823 = !DILocation(line: 231, column: 3, scope: !813)
!824 = !DILocation(line: 232, column: 3, scope: !813)
!825 = !DILocation(line: 233, column: 3, scope: !813)
!826 = !DILocation(line: 235, column: 3, scope: !813)
!827 = !DILocation(line: 238, column: 36, scope: !813)
!828 = !DILocation(line: 237, column: 3, scope: !813)
!829 = !DILocation(line: 241, column: 18, scope: !813)
!830 = !{!831, !831, i64 0}
!831 = !{!"int", !691, i64 0}
!832 = !DILocation(line: 241, column: 16, scope: !813)
!833 = !DILocation(line: 241, column: 3, scope: !813)
!834 = !DILocation(line: 244, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !813, file: !173, line: 242, column: 5)
!836 = !DILocation(line: 245, column: 7, scope: !835)
!837 = !DILocation(line: 248, column: 15, scope: !835)
!838 = !DILocation(line: 248, column: 7, scope: !835)
!839 = !DILocation(line: 249, column: 7, scope: !835)
!840 = !DILocation(line: 252, column: 20, scope: !835)
!841 = !DILocation(line: 252, column: 55, scope: !835)
!842 = !DILocation(line: 252, column: 62, scope: !835)
!843 = !DILocation(line: 252, column: 50, scope: !835)
!844 = !DILocation(line: 252, column: 43, scope: !835)
!845 = !DILocation(line: 252, column: 7, scope: !835)
!846 = !DILocation(line: 253, column: 7, scope: !835)
!847 = !DILocation(line: 256, column: 3, scope: !813)
!848 = !DISubprogram(name: "bindtextdomain", scope: !753, file: !753, line: 86, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!849 = !DISubroutineType(types: !850)
!850 = !{!14, !6, !6}
!851 = !DISubprogram(name: "textdomain", scope: !753, file: !753, line: 82, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!852 = !DISubroutineType(types: !853)
!853 = !{!14, !6}
!854 = !DISubprogram(name: "atexit", scope: !855, file: !855, line: 595, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!855 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!856 = !DISubroutineType(types: !857)
!857 = !{!35, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null}
!861 = distinct !DISubprogram(name: "uptime", scope: !173, file: !173, line: 177, type: !862, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !6, !35}
!864 = !{!865, !866, !867, !868}
!865 = !DILocalVariable(name: "filename", arg: 1, scope: !861, file: !173, line: 177, type: !6)
!866 = !DILocalVariable(name: "options", arg: 2, scope: !861, file: !173, line: 177, type: !35)
!867 = !DILocalVariable(name: "n_users", scope: !861, file: !173, line: 179, type: !120)
!868 = !DILocalVariable(name: "utmp_buf", scope: !861, file: !173, line: 180, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !176, line: 146, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !872, line: 55, size: 3072, elements: !873)
!872 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!873 = !{!874, !875, !877, !881, !885, !886, !887, !892, !894, !899, !901}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !871, file: !872, line: 57, baseType: !203, size: 16)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !871, file: !872, line: 58, baseType: !876, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !188, line: 154, baseType: !35)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !871, file: !872, line: 59, baseType: !878, size: 256, offset: 64)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !871, file: !872, line: 61, baseType: !882, size: 32, offset: 320)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 4)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !871, file: !872, line: 63, baseType: !878, size: 256, offset: 352)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !871, file: !872, line: 65, baseType: !146, size: 2048, offset: 608)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !871, file: !872, line: 67, baseType: !888, size: 32, offset: 2656)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !872, line: 42, size: 32, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !888, file: !872, line: 45, baseType: !203, size: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !888, file: !872, line: 46, baseType: !203, size: 16, offset: 16)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !871, file: !872, line: 74, baseType: !893, size: 32, offset: 2688)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !188, line: 41, baseType: !35)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !871, file: !872, line: 79, baseType: !895, size: 64, offset: 2720)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !872, line: 75, size: 64, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !895, file: !872, line: 77, baseType: !893, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !895, file: !872, line: 78, baseType: !893, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !871, file: !872, line: 84, baseType: !900, size: 128, offset: 2784)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 128, elements: !883)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !871, file: !872, line: 85, baseType: !806, size: 160, offset: 2912)
!902 = !DILocation(line: 0, scope: !861)
!903 = !DILocation(line: 179, column: 3, scope: !861)
!904 = !DILocation(line: 180, column: 3, scope: !861)
!905 = !DILocation(line: 180, column: 16, scope: !861)
!906 = !DILocation(line: 183, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !861, file: !173, line: 183, column: 7)
!908 = !DILocation(line: 183, column: 58, scope: !907)
!909 = !DILocation(line: 183, column: 7, scope: !861)
!910 = !DILocation(line: 184, column: 5, scope: !907)
!911 = !DILocation(line: 187, column: 17, scope: !861)
!912 = !{!913, !913, i64 0}
!913 = !{!"long", !691, i64 0}
!914 = !DILocation(line: 187, column: 26, scope: !861)
!915 = !DILocalVariable(name: "n", arg: 1, scope: !916, file: !173, line: 50, type: !120)
!916 = distinct !DISubprogram(name: "print_uptime", scope: !173, file: !173, line: 50, type: !917, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !921)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !120, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!921 = !{!915, !922, !923, !924, !925, !926, !927, !928, !929, !930, !946, !949, !950, !954, !960, !961, !964}
!922 = !DILocalVariable(name: "this", arg: 2, scope: !916, file: !173, line: 50, type: !919)
!923 = !DILocalVariable(name: "entries", scope: !916, file: !173, line: 52, type: !120)
!924 = !DILocalVariable(name: "boot_time", scope: !916, file: !173, line: 53, type: !194)
!925 = !DILocalVariable(name: "time_now", scope: !916, file: !173, line: 54, type: !194)
!926 = !DILocalVariable(name: "uptime", scope: !916, file: !173, line: 55, type: !194)
!927 = !DILocalVariable(name: "updays", scope: !916, file: !173, line: 56, type: !197)
!928 = !DILocalVariable(name: "uphours", scope: !916, file: !173, line: 57, type: !35)
!929 = !DILocalVariable(name: "upmins", scope: !916, file: !173, line: 58, type: !35)
!930 = !DILocalVariable(name: "tmn", scope: !916, file: !173, line: 59, type: !931)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !933, line: 7, size: 448, elements: !934)
!933 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !932, file: !933, line: 9, baseType: !35, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !932, file: !933, line: 10, baseType: !35, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !932, file: !933, line: 11, baseType: !35, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !932, file: !933, line: 12, baseType: !35, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !932, file: !933, line: 13, baseType: !35, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !932, file: !933, line: 14, baseType: !35, size: 32, offset: 160)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !932, file: !933, line: 15, baseType: !35, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !932, file: !933, line: 16, baseType: !35, size: 32, offset: 224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !932, file: !933, line: 17, baseType: !35, size: 32, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !932, file: !933, line: 20, baseType: !197, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !932, file: !933, line: 21, baseType: !6, size: 64, offset: 384)
!946 = !DILocalVariable(name: "avg", scope: !916, file: !173, line: 60, type: !947)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 192, elements: !70)
!948 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!949 = !DILocalVariable(name: "loads", scope: !916, file: !173, line: 61, type: !35)
!950 = !DILocalVariable(name: "fp", scope: !916, file: !173, line: 63, type: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !761)
!953 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!954 = !DILocalVariable(name: "buf", scope: !955, file: !173, line: 68, type: !957)
!955 = distinct !DILexicalBlock(scope: !956, file: !173, line: 67, column: 5)
!956 = distinct !DILexicalBlock(scope: !916, file: !173, line: 66, column: 7)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 65536, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 8192)
!960 = !DILocalVariable(name: "b", scope: !955, file: !173, line: 69, type: !14)
!961 = !DILocalVariable(name: "end_ptr", scope: !962, file: !173, line: 72, type: !14)
!962 = distinct !DILexicalBlock(scope: !963, file: !173, line: 71, column: 9)
!963 = distinct !DILexicalBlock(scope: !955, file: !173, line: 70, column: 11)
!964 = !DILocalVariable(name: "upsecs", scope: !962, file: !173, line: 73, type: !948)
!965 = !DILocation(line: 0, scope: !916, inlinedAt: !966)
!966 = distinct !DILocation(line: 187, column: 3, scope: !861)
!967 = !DILocation(line: 54, column: 3, scope: !916, inlinedAt: !966)
!968 = !DILocation(line: 60, column: 3, scope: !916, inlinedAt: !966)
!969 = !DILocation(line: 60, column: 10, scope: !916, inlinedAt: !966)
!970 = !DILocation(line: 65, column: 8, scope: !916, inlinedAt: !966)
!971 = !DILocation(line: 66, column: 10, scope: !956, inlinedAt: !966)
!972 = !DILocation(line: 66, column: 7, scope: !916, inlinedAt: !966)
!973 = !DILocation(line: 68, column: 7, scope: !955, inlinedAt: !966)
!974 = !DILocation(line: 68, column: 12, scope: !955, inlinedAt: !966)
!975 = !DILocation(line: 69, column: 17, scope: !955, inlinedAt: !966)
!976 = !DILocation(line: 0, scope: !955, inlinedAt: !966)
!977 = !DILocation(line: 70, column: 13, scope: !963, inlinedAt: !966)
!978 = !DILocation(line: 70, column: 11, scope: !955, inlinedAt: !966)
!979 = !DILocation(line: 72, column: 11, scope: !962, inlinedAt: !966)
!980 = !DILocation(line: 0, scope: !962, inlinedAt: !966)
!981 = !DILocation(line: 73, column: 27, scope: !962, inlinedAt: !966)
!982 = !DILocation(line: 74, column: 22, scope: !983, inlinedAt: !966)
!983 = distinct !DILexicalBlock(scope: !962, file: !173, line: 74, column: 15)
!984 = !DILocation(line: 74, column: 19, scope: !983, inlinedAt: !966)
!985 = !DILocation(line: 74, column: 15, scope: !962, inlinedAt: !966)
!986 = !DILocation(line: 75, column: 25, scope: !983, inlinedAt: !966)
!987 = !DILocation(line: 75, column: 35, scope: !983, inlinedAt: !966)
!988 = !DILocation(line: 75, column: 22, scope: !983, inlinedAt: !966)
!989 = !DILocation(line: 75, column: 13, scope: !983, inlinedAt: !966)
!990 = !DILocation(line: 77, column: 9, scope: !963, inlinedAt: !966)
!991 = !DILocation(line: 77, column: 9, scope: !962, inlinedAt: !966)
!992 = !DILocation(line: 79, column: 7, scope: !955, inlinedAt: !966)
!993 = !DILocation(line: 80, column: 5, scope: !956, inlinedAt: !966)
!994 = !DILocation(line: 80, column: 5, scope: !955, inlinedAt: !966)
!995 = !DILocation(line: 108, column: 3, scope: !916, inlinedAt: !966)
!996 = !DILocation(line: 110, column: 18, scope: !997, inlinedAt: !966)
!997 = distinct !DILexicalBlock(scope: !916, file: !173, line: 109, column: 5)
!998 = !{!691, !691, i64 0}
!999 = !DILocation(line: 0, scope: !997, inlinedAt: !966)
!1000 = !{!1001, !1002, i64 0}
!1001 = !{!"utmpx", !1002, i64 0, !831, i64 4, !691, i64 8, !691, i64 40, !691, i64 44, !691, i64 76, !1003, i64 332, !831, i64 336, !1004, i64 340, !691, i64 348, !691, i64 364}
!1002 = !{!"short", !691, i64 0}
!1003 = !{!"__exit_status", !1002, i64 0, !1002, i64 2}
!1004 = !{!"", !831, i64 0, !831, i64 4}
!1005 = !DILocation(line: 110, column: 15, scope: !997, inlinedAt: !966)
!1006 = !DILocation(line: 111, column: 11, scope: !1007, inlinedAt: !966)
!1007 = distinct !DILexicalBlock(scope: !997, file: !173, line: 111, column: 11)
!1008 = !DILocation(line: 111, column: 11, scope: !997, inlinedAt: !966)
!1009 = !DILocation(line: 112, column: 21, scope: !1007, inlinedAt: !966)
!1010 = !{!1001, !831, i64 340}
!1011 = !DILocation(line: 112, column: 9, scope: !1007, inlinedAt: !966)
!1012 = !DILocation(line: 120, column: 14, scope: !916, inlinedAt: !966)
!1013 = !DILocation(line: 120, column: 12, scope: !916, inlinedAt: !966)
!1014 = !DILocation(line: 122, column: 14, scope: !1015, inlinedAt: !966)
!1015 = distinct !DILexicalBlock(scope: !916, file: !173, line: 122, column: 7)
!1016 = !DILocation(line: 122, column: 7, scope: !916, inlinedAt: !966)
!1017 = !DILocation(line: 125, column: 21, scope: !1018, inlinedAt: !966)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !173, line: 125, column: 11)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !173, line: 124, column: 5)
!1020 = !DILocation(line: 125, column: 11, scope: !1019, inlinedAt: !966)
!1021 = !DILocation(line: 126, column: 9, scope: !1018, inlinedAt: !966)
!1022 = !DILocation(line: 127, column: 25, scope: !1019, inlinedAt: !966)
!1023 = !DILocation(line: 128, column: 5, scope: !1019, inlinedAt: !966)
!1024 = !DILocation(line: 129, column: 19, scope: !916, inlinedAt: !966)
!1025 = !DILocation(line: 130, column: 31, scope: !916, inlinedAt: !966)
!1026 = !DILocation(line: 130, column: 21, scope: !916, inlinedAt: !966)
!1027 = !DILocation(line: 130, column: 41, scope: !916, inlinedAt: !966)
!1028 = !DILocation(line: 130, column: 13, scope: !916, inlinedAt: !966)
!1029 = !DILocation(line: 131, column: 41, scope: !916, inlinedAt: !966)
!1030 = !DILocation(line: 131, column: 39, scope: !916, inlinedAt: !966)
!1031 = !DILocation(line: 131, column: 59, scope: !916, inlinedAt: !966)
!1032 = !DILocation(line: 131, column: 12, scope: !916, inlinedAt: !966)
!1033 = !DILocation(line: 132, column: 9, scope: !916, inlinedAt: !966)
!1034 = !DILocation(line: 135, column: 7, scope: !1035, inlinedAt: !966)
!1035 = distinct !DILexicalBlock(scope: !916, file: !173, line: 135, column: 7)
!1036 = !DILocation(line: 135, column: 7, scope: !916, inlinedAt: !966)
!1037 = !DILocation(line: 137, column: 18, scope: !1035, inlinedAt: !966)
!1038 = !DILocation(line: 137, column: 26, scope: !1035, inlinedAt: !966)
!1039 = !DILocation(line: 137, column: 5, scope: !1035, inlinedAt: !966)
!1040 = !DILocation(line: 139, column: 5, scope: !1035, inlinedAt: !966)
!1041 = !DILocation(line: 140, column: 14, scope: !1042, inlinedAt: !966)
!1042 = distinct !DILexicalBlock(scope: !916, file: !173, line: 140, column: 7)
!1043 = !DILocation(line: 140, column: 7, scope: !916, inlinedAt: !966)
!1044 = !DILocation(line: 141, column: 5, scope: !1042, inlinedAt: !966)
!1045 = !DILocation(line: 144, column: 13, scope: !1046, inlinedAt: !966)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !173, line: 144, column: 11)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !173, line: 143, column: 5)
!1048 = !DILocation(line: 144, column: 11, scope: !1047, inlinedAt: !966)
!1049 = !DILocation(line: 145, column: 9, scope: !1046, inlinedAt: !966)
!1050 = !DILocation(line: 150, column: 9, scope: !1046, inlinedAt: !966)
!1051 = !DILocation(line: 152, column: 3, scope: !916, inlinedAt: !966)
!1052 = !DILocation(line: 155, column: 23, scope: !916, inlinedAt: !966)
!1053 = !DILocation(line: 155, column: 11, scope: !916, inlinedAt: !966)
!1054 = !DILocation(line: 157, column: 13, scope: !1055, inlinedAt: !966)
!1055 = distinct !DILexicalBlock(scope: !916, file: !173, line: 157, column: 7)
!1056 = !DILocation(line: 157, column: 7, scope: !916, inlinedAt: !966)
!1057 = !DILocalVariable(name: "__c", arg: 1, scope: !1058, file: !1059, line: 108, type: !35)
!1058 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1059, file: !1059, line: 108, type: !1060, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1062)
!1059 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!35, !35}
!1062 = !{!1057}
!1063 = !DILocation(line: 0, scope: !1058, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 158, column: 5, scope: !1055, inlinedAt: !966)
!1065 = !DILocation(line: 110, column: 10, scope: !1058, inlinedAt: !1064)
!1066 = !{!1067, !690, i64 40}
!1067 = !{!"_IO_FILE", !831, i64 0, !690, i64 8, !690, i64 16, !690, i64 24, !690, i64 32, !690, i64 40, !690, i64 48, !690, i64 56, !690, i64 64, !690, i64 72, !690, i64 80, !690, i64 88, !690, i64 96, !690, i64 104, !831, i64 112, !831, i64 116, !913, i64 120, !1002, i64 128, !691, i64 130, !691, i64 131, !690, i64 136, !913, i64 144, !690, i64 152, !690, i64 160, !690, i64 168, !690, i64 176, !913, i64 184, !831, i64 192, !691, i64 196}
!1068 = !{!1067, !690, i64 48}
!1069 = !{!"branch_weights", i32 2000, i32 1}
!1070 = !DILocation(line: 161, column: 17, scope: !1071, inlinedAt: !966)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !173, line: 161, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1055, file: !173, line: 160, column: 5)
!1073 = !DILocation(line: 161, column: 11, scope: !1072, inlinedAt: !966)
!1074 = !DILocation(line: 162, column: 9, scope: !1071, inlinedAt: !966)
!1075 = !{!1076, !1076, i64 0}
!1076 = !{!"double", !691, i64 0}
!1077 = !DILocation(line: 163, column: 17, scope: !1078, inlinedAt: !966)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !173, line: 163, column: 11)
!1079 = !DILocation(line: 163, column: 11, scope: !1072, inlinedAt: !966)
!1080 = !DILocation(line: 164, column: 9, scope: !1078, inlinedAt: !966)
!1081 = !DILocation(line: 165, column: 17, scope: !1082, inlinedAt: !966)
!1082 = distinct !DILexicalBlock(scope: !1072, file: !173, line: 165, column: 11)
!1083 = !DILocation(line: 165, column: 11, scope: !1072, inlinedAt: !966)
!1084 = !DILocation(line: 166, column: 9, scope: !1082, inlinedAt: !966)
!1085 = !DILocation(line: 0, scope: !1058, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 168, column: 9, scope: !1087, inlinedAt: !966)
!1087 = distinct !DILexicalBlock(scope: !1072, file: !173, line: 167, column: 11)
!1088 = !DILocation(line: 110, column: 10, scope: !1058, inlinedAt: !1086)
!1089 = !DILocation(line: 170, column: 1, scope: !916, inlinedAt: !966)
!1090 = !DILocation(line: 190, column: 1, scope: !861)
!1091 = !DILocation(line: 113, column: 7, scope: !997, inlinedAt: !966)
!1092 = distinct !{!1092, !995, !1093, !732}
!1093 = !DILocation(line: 114, column: 5, scope: !916, inlinedAt: !966)
!1094 = !DISubprogram(name: "error", scope: !1095, file: !1095, line: 52, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1095 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !35, !35, !6, null}
!1098 = !DISubprogram(name: "time", scope: !1099, file: !1099, line: 75, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1099 = !DIFile(filename: "/usr/include/time.h", directory: "")
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!197, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1103 = !DISubprogram(name: "localtime", scope: !1099, file: !1099, line: 123, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!931, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!1108 = !DISubprogram(name: "dcngettext", scope: !753, file: !753, line: 73, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!14, !6, !6, !6, !122, !35}
!1111 = !DISubprogram(name: "getloadavg", scope: !855, file: !855, line: 1004, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!35, !1114, !35}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1115 = distinct !DISubprogram(name: "c_strtod", scope: !12, file: !12, line: 65, type: !1116, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!948, !6, !816}
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DILocalVariable(name: "nptr", arg: 1, scope: !1115, file: !12, line: 65, type: !6)
!1120 = !DILocalVariable(name: "endptr", arg: 2, scope: !1115, file: !12, line: 65, type: !816)
!1121 = !DILocalVariable(name: "r", scope: !1115, file: !12, line: 67, type: !948)
!1122 = !DILocalVariable(name: "locale", scope: !1115, file: !12, line: 73, type: !15)
!1123 = !DILocation(line: 0, scope: !1115)
!1124 = !DILocation(line: 57, column: 8, scope: !1125, inlinedAt: !1129)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !12, line: 57, column: 7)
!1126 = distinct !DISubprogram(name: "c_locale", scope: !12, file: !12, line: 55, type: !1127, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !4)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!15}
!1129 = distinct !DILocation(line: 73, column: 21, scope: !1115)
!1130 = !DILocation(line: 57, column: 7, scope: !1126, inlinedAt: !1129)
!1131 = !DILocation(line: 58, column: 22, scope: !1125, inlinedAt: !1129)
!1132 = !DILocation(line: 58, column: 20, scope: !1125, inlinedAt: !1129)
!1133 = !DILocation(line: 58, column: 5, scope: !1125, inlinedAt: !1129)
!1134 = !DILocation(line: 59, column: 10, scope: !1126, inlinedAt: !1129)
!1135 = !DILocation(line: 74, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1115, file: !12, line: 74, column: 7)
!1137 = !DILocation(line: 74, column: 7, scope: !1115)
!1138 = !DILocation(line: 76, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !12, line: 76, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !12, line: 75, column: 5)
!1141 = !DILocation(line: 76, column: 11, scope: !1140)
!1142 = !DILocation(line: 77, column: 17, scope: !1139)
!1143 = !DILocation(line: 77, column: 9, scope: !1139)
!1144 = !DILocation(line: 83, column: 7, scope: !1115)
!1145 = !DILocation(line: 134, column: 3, scope: !1115)
!1146 = !DILocation(line: 135, column: 1, scope: !1115)
!1147 = !DISubprogram(name: "newlocale", scope: !810, file: !810, line: 141, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!19, !35, !6, !19}
!1150 = !DISubprogram(name: "strtod_l", scope: !855, file: !855, line: 295, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!948, !6, !816, !19}
!1153 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !44, file: !44, line: 51, type: !702, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1154)
!1154 = !{!1155}
!1155 = !DILocalVariable(name: "file", arg: 1, scope: !1153, file: !44, line: 51, type: !6)
!1156 = !DILocation(line: 0, scope: !1153)
!1157 = !DILocation(line: 53, column: 13, scope: !1153)
!1158 = !DILocation(line: 54, column: 1, scope: !1153)
!1159 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !44, file: !44, line: 88, type: !1160, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !48}
!1162 = !{!1163}
!1163 = !DILocalVariable(name: "ignore", arg: 1, scope: !1159, file: !44, line: 88, type: !48)
!1164 = !DILocation(line: 0, scope: !1159)
!1165 = !DILocation(line: 90, column: 16, scope: !1159)
!1166 = !{!1167, !1167, i64 0}
!1167 = !{!"_Bool", !691, i64 0}
!1168 = !DILocation(line: 91, column: 1, scope: !1159)
!1169 = distinct !DISubprogram(name: "close_stdout", scope: !44, file: !44, line: 117, type: !859, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1170)
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "write_error", scope: !1172, file: !44, line: 122, type: !6)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !44, line: 121, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !44, line: 119, column: 7)
!1174 = !DILocation(line: 119, column: 21, scope: !1173)
!1175 = !DILocation(line: 119, column: 7, scope: !1173)
!1176 = !DILocation(line: 119, column: 29, scope: !1173)
!1177 = !DILocation(line: 120, column: 7, scope: !1173)
!1178 = !DILocation(line: 120, column: 12, scope: !1173)
!1179 = !{i8 0, i8 2}
!1180 = !DILocation(line: 120, column: 25, scope: !1173)
!1181 = !DILocation(line: 120, column: 28, scope: !1173)
!1182 = !DILocation(line: 120, column: 34, scope: !1173)
!1183 = !DILocation(line: 119, column: 7, scope: !1169)
!1184 = !DILocation(line: 122, column: 33, scope: !1172)
!1185 = !DILocation(line: 0, scope: !1172)
!1186 = !DILocation(line: 123, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1172, file: !44, line: 123, column: 11)
!1188 = !DILocation(line: 0, scope: !1187)
!1189 = !DILocation(line: 123, column: 11, scope: !1172)
!1190 = !DILocation(line: 124, column: 36, scope: !1187)
!1191 = !DILocation(line: 124, column: 9, scope: !1187)
!1192 = !DILocation(line: 127, column: 9, scope: !1187)
!1193 = !DILocation(line: 129, column: 14, scope: !1172)
!1194 = !DILocation(line: 129, column: 7, scope: !1172)
!1195 = !DILocation(line: 134, column: 42, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1169, file: !44, line: 134, column: 7)
!1197 = !DILocation(line: 134, column: 28, scope: !1196)
!1198 = !DILocation(line: 134, column: 50, scope: !1196)
!1199 = !DILocation(line: 134, column: 7, scope: !1169)
!1200 = !DILocation(line: 135, column: 12, scope: !1196)
!1201 = !DILocation(line: 135, column: 5, scope: !1196)
!1202 = !DILocation(line: 136, column: 1, scope: !1169)
!1203 = distinct !DISubprogram(name: "fprintftime", scope: !1204, file: !1204, line: 429, type: !1205, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1263)
!1204 = !DIFile(filename: "./lib/nstrftime.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!120, !1207, !6, !1241, !1256, !35}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1209, file: !762, line: 51, baseType: !35, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1209, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1209, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1209, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1209, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1209, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1209, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1209, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1209, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1209, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1209, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1209, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1209, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1209, file: !762, line: 70, baseType: !1225, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1209, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1209, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1209, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1209, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1209, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1209, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1209, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1209, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1209, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1209, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1209, file: !762, line: 93, baseType: !1225, size: 64, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1209, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1209, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1209, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1209, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !933, line: 7, size: 448, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1243, file: !933, line: 9, baseType: !35, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1243, file: !933, line: 10, baseType: !35, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1243, file: !933, line: 11, baseType: !35, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1243, file: !933, line: 12, baseType: !35, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1243, file: !933, line: 13, baseType: !35, size: 32, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1243, file: !933, line: 14, baseType: !35, size: 32, offset: 160)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1243, file: !933, line: 15, baseType: !35, size: 32, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1243, file: !933, line: 16, baseType: !35, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1243, file: !933, line: 17, baseType: !35, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1243, file: !933, line: 20, baseType: !197, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1243, file: !933, line: 21, baseType: !6, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "timezone_t", file: !266, line: 778, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm_zone", file: !269, line: 21, size: 128, elements: !1259)
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1258, file: !269, line: 25, baseType: !1257, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "tz_is_set", scope: !1258, file: !269, line: 36, baseType: !8, size: 8, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "abbrs", scope: !1258, file: !269, line: 48, baseType: !274, offset: 72)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269}
!1264 = !DILocalVariable(name: "s", arg: 1, scope: !1203, file: !1204, line: 429, type: !1207)
!1265 = !DILocalVariable(name: "format", arg: 2, scope: !1203, file: !1204, line: 430, type: !6)
!1266 = !DILocalVariable(name: "tp", arg: 3, scope: !1203, file: !1204, line: 431, type: !1241)
!1267 = !DILocalVariable(name: "tz", arg: 4, scope: !1203, file: !1204, line: 431, type: !1256)
!1268 = !DILocalVariable(name: "ns", arg: 5, scope: !1203, file: !1204, line: 431, type: !35)
!1269 = !DILocalVariable(name: "tzset_called", scope: !1203, file: !1204, line: 433, type: !48)
!1270 = !DILocation(line: 0, scope: !1203)
!1271 = !DILocation(line: 434, column: 10, scope: !1203)
!1272 = !DILocation(line: 434, column: 3, scope: !1203)
!1273 = distinct !DISubprogram(name: "__strftime_internal", scope: !1204, file: !1204, line: 446, type: !1274, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!120, !1207, !6, !1241, !48, !35, !35, !1276, !1256, !35}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1320, !1321, !1322, !1327, !1330, !1332, !1335, !1336, !1337, !1342, !1345, !1347, !1349, !1351, !1352, !1353, !1358, !1361, !1363, !1368, !1369, !1373, !1374, !1377, !1378, !1379, !1384, !1387, !1389, !1391, !1392, !1393, !1395, !1396, !1397, !1398, !1405, !1407, !1408, !1409, !1414, !1417, !1419, !1421, !1422, !1423, !1428, !1431, !1433, !1435, !1436, !1437, !1439, !1441, !1442, !1443, !1448, !1451, !1453, !1455, !1456, !1457, !1462, !1465, !1467, !1469, !1470, !1471, !1476, !1479, !1481, !1483, !1484, !1486, !1488, !1489, !1490, !1495, !1498, !1500, !1502, !1503, !1504, !1507, !1510, !1512, !1514, !1515, !1516, !1521, !1524, !1526, !1528, !1529, !1530, !1531, !1533, !1535, !1536, !1537, !1542, !1545, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1561, !1562}
!1278 = !DILocalVariable(name: "s", arg: 1, scope: !1273, file: !1204, line: 446, type: !1207)
!1279 = !DILocalVariable(name: "format", arg: 2, scope: !1273, file: !1204, line: 447, type: !6)
!1280 = !DILocalVariable(name: "tp", arg: 3, scope: !1273, file: !1204, line: 448, type: !1241)
!1281 = !DILocalVariable(name: "upcase", arg: 4, scope: !1273, file: !1204, line: 448, type: !48)
!1282 = !DILocalVariable(name: "yr_spec", arg: 5, scope: !1273, file: !1204, line: 449, type: !35)
!1283 = !DILocalVariable(name: "width", arg: 6, scope: !1273, file: !1204, line: 449, type: !35)
!1284 = !DILocalVariable(name: "tzset_called", arg: 7, scope: !1273, file: !1204, line: 449, type: !1276)
!1285 = !DILocalVariable(name: "tz", arg: 8, scope: !1273, file: !1204, line: 450, type: !1256)
!1286 = !DILocalVariable(name: "ns", arg: 9, scope: !1273, file: !1204, line: 450, type: !35)
!1287 = !DILocalVariable(name: "maxsize", scope: !1273, file: !1204, line: 456, type: !120)
!1288 = !DILocalVariable(name: "hour12", scope: !1273, file: !1204, line: 459, type: !35)
!1289 = !DILocalVariable(name: "zone", scope: !1273, file: !1204, line: 497, type: !6)
!1290 = !DILocalVariable(name: "i", scope: !1273, file: !1204, line: 498, type: !120)
!1291 = !DILocalVariable(name: "p", scope: !1273, file: !1204, line: 499, type: !1207)
!1292 = !DILocalVariable(name: "f", scope: !1273, file: !1204, line: 500, type: !6)
!1293 = !DILocalVariable(name: "pad", scope: !1294, file: !1204, line: 563, type: !35)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1204, line: 562, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1204, line: 561, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1273, file: !1204, line: 561, column: 3)
!1297 = !DILocalVariable(name: "modifier", scope: !1294, file: !1204, line: 564, type: !35)
!1298 = !DILocalVariable(name: "digits", scope: !1294, file: !1204, line: 565, type: !35)
!1299 = !DILocalVariable(name: "number_value", scope: !1294, file: !1204, line: 566, type: !35)
!1300 = !DILocalVariable(name: "u_number_value", scope: !1294, file: !1204, line: 567, type: !86)
!1301 = !DILocalVariable(name: "negative_number", scope: !1294, file: !1204, line: 568, type: !48)
!1302 = !DILocalVariable(name: "always_output_a_sign", scope: !1294, file: !1204, line: 569, type: !48)
!1303 = !DILocalVariable(name: "tz_colon_mask", scope: !1294, file: !1204, line: 570, type: !35)
!1304 = !DILocalVariable(name: "subfmt", scope: !1294, file: !1204, line: 571, type: !6)
!1305 = !DILocalVariable(name: "bufp", scope: !1294, file: !1204, line: 572, type: !14)
!1306 = !DILocalVariable(name: "buf", scope: !1294, file: !1204, line: 573, type: !1307)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 184, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 23)
!1310 = !DILocalVariable(name: "to_lowcase", scope: !1294, file: !1204, line: 578, type: !48)
!1311 = !DILocalVariable(name: "to_uppcase", scope: !1294, file: !1204, line: 579, type: !48)
!1312 = !DILocalVariable(name: "colons", scope: !1294, file: !1204, line: 580, type: !120)
!1313 = !DILocalVariable(name: "change_case", scope: !1294, file: !1204, line: 581, type: !48)
!1314 = !DILocalVariable(name: "format_char", scope: !1294, file: !1204, line: 582, type: !35)
!1315 = !DILocalVariable(name: "subwidth", scope: !1294, file: !1204, line: 583, type: !35)
!1316 = !DILocalVariable(name: "_n", scope: !1317, file: !1204, line: 667, type: !120)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1204, line: 667, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !1204, line: 666, column: 9)
!1319 = distinct !DILexicalBlock(scope: !1294, file: !1204, line: 665, column: 11)
!1320 = !DILocalVariable(name: "_w", scope: !1317, file: !1204, line: 667, type: !120)
!1321 = !DILocalVariable(name: "_incr", scope: !1317, file: !1204, line: 667, type: !120)
!1322 = !DILocalVariable(name: "_delta", scope: !1323, file: !1204, line: 667, type: !120)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1204, line: 667, column: 11)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1204, line: 667, column: 11)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1204, line: 667, column: 11)
!1326 = distinct !DILexicalBlock(scope: !1317, file: !1204, line: 667, column: 11)
!1327 = !DILocalVariable(name: "_i", scope: !1328, file: !1204, line: 667, type: !120)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !1204, line: 667, column: 11)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !1204, line: 667, column: 11)
!1330 = !DILocalVariable(name: "_i", scope: !1331, file: !1204, line: 667, type: !120)
!1331 = distinct !DILexicalBlock(scope: !1329, file: !1204, line: 667, column: 11)
!1332 = !DILocalVariable(name: "_n", scope: !1333, file: !1204, line: 776, type: !120)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 776, column: 11)
!1334 = distinct !DILexicalBlock(scope: !1294, file: !1204, line: 729, column: 9)
!1335 = !DILocalVariable(name: "_w", scope: !1333, file: !1204, line: 776, type: !120)
!1336 = !DILocalVariable(name: "_incr", scope: !1333, file: !1204, line: 776, type: !120)
!1337 = !DILocalVariable(name: "_delta", scope: !1338, file: !1204, line: 776, type: !120)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !1204, line: 776, column: 11)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1204, line: 776, column: 11)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !1204, line: 776, column: 11)
!1341 = distinct !DILexicalBlock(scope: !1333, file: !1204, line: 776, column: 11)
!1342 = !DILocalVariable(name: "_i", scope: !1343, file: !1204, line: 776, type: !120)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1204, line: 776, column: 11)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !1204, line: 776, column: 11)
!1345 = !DILocalVariable(name: "_i", scope: !1346, file: !1204, line: 776, type: !120)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !1204, line: 776, column: 11)
!1347 = !DILocalVariable(name: "len", scope: !1348, file: !1204, line: 864, type: !120)
!1348 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 863, column: 11)
!1349 = !DILocalVariable(name: "_n", scope: !1350, file: !1204, line: 868, type: !120)
!1350 = distinct !DILexicalBlock(scope: !1348, file: !1204, line: 868, column: 13)
!1351 = !DILocalVariable(name: "_w", scope: !1350, file: !1204, line: 868, type: !120)
!1352 = !DILocalVariable(name: "_incr", scope: !1350, file: !1204, line: 868, type: !120)
!1353 = !DILocalVariable(name: "_delta", scope: !1354, file: !1204, line: 868, type: !120)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1204, line: 868, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !1204, line: 868, column: 13)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !1204, line: 868, column: 13)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !1204, line: 868, column: 13)
!1358 = !DILocalVariable(name: "_i", scope: !1359, file: !1204, line: 868, type: !120)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !1204, line: 868, column: 13)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !1204, line: 868, column: 13)
!1361 = !DILocalVariable(name: "_i", scope: !1362, file: !1204, line: 868, type: !120)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !1204, line: 868, column: 13)
!1363 = !DILocalVariable(name: "ufmt", scope: !1364, file: !1204, line: 881, type: !1365)
!1364 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 878, column: 11)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 5)
!1368 = !DILocalVariable(name: "u", scope: !1364, file: !1204, line: 882, type: !14)
!1369 = !DILocalVariable(name: "ubuf", scope: !1364, file: !1204, line: 883, type: !1370)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 1024)
!1373 = !DILocalVariable(name: "len", scope: !1364, file: !1204, line: 884, type: !120)
!1374 = !DILocalVariable(name: "_n", scope: !1375, file: !1204, line: 903, type: !120)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1204, line: 903, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1364, file: !1204, line: 902, column: 17)
!1377 = !DILocalVariable(name: "_w", scope: !1375, file: !1204, line: 903, type: !120)
!1378 = !DILocalVariable(name: "_incr", scope: !1375, file: !1204, line: 903, type: !120)
!1379 = !DILocalVariable(name: "_delta", scope: !1380, file: !1204, line: 903, type: !120)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1204, line: 903, column: 15)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1204, line: 903, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1204, line: 903, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !1204, line: 903, column: 15)
!1384 = !DILocalVariable(name: "_i", scope: !1385, file: !1204, line: 903, type: !120)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !1204, line: 903, column: 15)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !1204, line: 903, column: 15)
!1387 = !DILocalVariable(name: "_i", scope: !1388, file: !1204, line: 903, type: !120)
!1388 = distinct !DILexicalBlock(scope: !1386, file: !1204, line: 903, column: 15)
!1389 = !DILocalVariable(name: "negative_year", scope: !1390, file: !1204, line: 930, type: !48)
!1390 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 929, column: 11)
!1391 = !DILocalVariable(name: "zero_thru_1899", scope: !1390, file: !1204, line: 931, type: !48)
!1392 = !DILocalVariable(name: "century", scope: !1390, file: !1204, line: 932, type: !35)
!1393 = !DILocalVariable(name: "sign_char", scope: !1394, file: !1204, line: 1049, type: !8)
!1394 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1048, column: 11)
!1395 = !DILocalVariable(name: "numlen", scope: !1394, file: !1204, line: 1052, type: !35)
!1396 = !DILocalVariable(name: "shortage", scope: !1394, file: !1204, line: 1053, type: !35)
!1397 = !DILocalVariable(name: "padding", scope: !1394, file: !1204, line: 1054, type: !35)
!1398 = !DILocalVariable(name: "_i", scope: !1399, file: !1204, line: 1061, type: !120)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !1204, line: 1061, column: 23)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !1204, line: 1060, column: 25)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !1204, line: 1059, column: 19)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1204, line: 1058, column: 21)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !1204, line: 1057, column: 15)
!1404 = distinct !DILexicalBlock(scope: !1394, file: !1204, line: 1056, column: 17)
!1405 = !DILocalVariable(name: "_n", scope: !1406, file: !1204, line: 1065, type: !120)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !1204, line: 1065, column: 17)
!1407 = !DILocalVariable(name: "_w", scope: !1406, file: !1204, line: 1065, type: !120)
!1408 = !DILocalVariable(name: "_incr", scope: !1406, file: !1204, line: 1065, type: !120)
!1409 = !DILocalVariable(name: "_delta", scope: !1410, file: !1204, line: 1065, type: !120)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1204, line: 1065, column: 17)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !1204, line: 1065, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !1204, line: 1065, column: 17)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !1204, line: 1065, column: 17)
!1414 = !DILocalVariable(name: "_i", scope: !1415, file: !1204, line: 1065, type: !120)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !1204, line: 1065, column: 17)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !1204, line: 1065, column: 17)
!1417 = !DILocalVariable(name: "_i", scope: !1418, file: !1204, line: 1065, type: !120)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !1204, line: 1065, column: 17)
!1419 = !DILocalVariable(name: "_n", scope: !1420, file: !1204, line: 1069, type: !120)
!1420 = distinct !DILexicalBlock(scope: !1394, file: !1204, line: 1069, column: 13)
!1421 = !DILocalVariable(name: "_w", scope: !1420, file: !1204, line: 1069, type: !120)
!1422 = !DILocalVariable(name: "_incr", scope: !1420, file: !1204, line: 1069, type: !120)
!1423 = !DILocalVariable(name: "_delta", scope: !1424, file: !1204, line: 1069, type: !120)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !1204, line: 1069, column: 13)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !1204, line: 1069, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !1204, line: 1069, column: 13)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !1204, line: 1069, column: 13)
!1428 = !DILocalVariable(name: "_i", scope: !1429, file: !1204, line: 1069, type: !120)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1204, line: 1069, column: 13)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !1204, line: 1069, column: 13)
!1431 = !DILocalVariable(name: "_i", scope: !1432, file: !1204, line: 1069, type: !120)
!1432 = distinct !DILexicalBlock(scope: !1430, file: !1204, line: 1069, column: 13)
!1433 = !DILocalVariable(name: "n", scope: !1434, file: !1204, line: 1137, type: !35)
!1434 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1136, column: 11)
!1435 = !DILocalVariable(name: "ns_digits", scope: !1434, file: !1204, line: 1137, type: !35)
!1436 = !DILocalVariable(name: "ndigs", scope: !1434, file: !1204, line: 1140, type: !35)
!1437 = !DILocalVariable(name: "j", scope: !1438, file: !1204, line: 1143, type: !35)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !1204, line: 1143, column: 13)
!1439 = !DILocalVariable(name: "_n", scope: !1440, file: !1204, line: 1147, type: !120)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !1204, line: 1147, column: 13)
!1441 = !DILocalVariable(name: "_w", scope: !1440, file: !1204, line: 1147, type: !120)
!1442 = !DILocalVariable(name: "_incr", scope: !1440, file: !1204, line: 1147, type: !120)
!1443 = !DILocalVariable(name: "_delta", scope: !1444, file: !1204, line: 1147, type: !120)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1204, line: 1147, column: 13)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !1204, line: 1147, column: 13)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !1204, line: 1147, column: 13)
!1447 = distinct !DILexicalBlock(scope: !1440, file: !1204, line: 1147, column: 13)
!1448 = !DILocalVariable(name: "_i", scope: !1449, file: !1204, line: 1147, type: !120)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !1204, line: 1147, column: 13)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !1204, line: 1147, column: 13)
!1451 = !DILocalVariable(name: "_i", scope: !1452, file: !1204, line: 1147, type: !120)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !1204, line: 1147, column: 13)
!1453 = !DILocalVariable(name: "_n", scope: !1454, file: !1204, line: 1148, type: !120)
!1454 = distinct !DILexicalBlock(scope: !1434, file: !1204, line: 1148, column: 13)
!1455 = !DILocalVariable(name: "_w", scope: !1454, file: !1204, line: 1148, type: !120)
!1456 = !DILocalVariable(name: "_incr", scope: !1454, file: !1204, line: 1148, type: !120)
!1457 = !DILocalVariable(name: "_delta", scope: !1458, file: !1204, line: 1148, type: !120)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !1204, line: 1148, column: 13)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1204, line: 1148, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !1204, line: 1148, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !1204, line: 1148, column: 13)
!1462 = !DILocalVariable(name: "_i", scope: !1463, file: !1204, line: 1148, type: !120)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !1204, line: 1148, column: 13)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !1204, line: 1148, column: 13)
!1465 = !DILocalVariable(name: "_i", scope: !1466, file: !1204, line: 1148, type: !120)
!1466 = distinct !DILexicalBlock(scope: !1464, file: !1204, line: 1148, column: 13)
!1467 = !DILocalVariable(name: "_n", scope: !1468, file: !1204, line: 1154, type: !120)
!1468 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1154, column: 11)
!1469 = !DILocalVariable(name: "_w", scope: !1468, file: !1204, line: 1154, type: !120)
!1470 = !DILocalVariable(name: "_incr", scope: !1468, file: !1204, line: 1154, type: !120)
!1471 = !DILocalVariable(name: "_delta", scope: !1472, file: !1204, line: 1154, type: !120)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !1204, line: 1154, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !1204, line: 1154, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1204, line: 1154, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !1204, line: 1154, column: 11)
!1476 = !DILocalVariable(name: "_i", scope: !1477, file: !1204, line: 1154, type: !120)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !1204, line: 1154, column: 11)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !1204, line: 1154, column: 11)
!1479 = !DILocalVariable(name: "_i", scope: !1480, file: !1204, line: 1154, type: !120)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !1204, line: 1154, column: 11)
!1481 = !DILocalVariable(name: "ltm", scope: !1482, file: !1204, line: 1203, type: !1243)
!1482 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1202, column: 11)
!1483 = !DILocalVariable(name: "t", scope: !1482, file: !1204, line: 1204, type: !194)
!1484 = !DILocalVariable(name: "d", scope: !1485, file: !1204, line: 1217, type: !35)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !1204, line: 1216, column: 15)
!1486 = !DILocalVariable(name: "_n", scope: !1487, file: !1204, line: 1246, type: !120)
!1487 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1246, column: 11)
!1488 = !DILocalVariable(name: "_w", scope: !1487, file: !1204, line: 1246, type: !120)
!1489 = !DILocalVariable(name: "_incr", scope: !1487, file: !1204, line: 1246, type: !120)
!1490 = !DILocalVariable(name: "_delta", scope: !1491, file: !1204, line: 1246, type: !120)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !1204, line: 1246, column: 11)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !1204, line: 1246, column: 11)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !1204, line: 1246, column: 11)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !1204, line: 1246, column: 11)
!1495 = !DILocalVariable(name: "_i", scope: !1496, file: !1204, line: 1246, type: !120)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !1204, line: 1246, column: 11)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !1204, line: 1246, column: 11)
!1498 = !DILocalVariable(name: "_i", scope: !1499, file: !1204, line: 1246, type: !120)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !1204, line: 1246, column: 11)
!1500 = !DILocalVariable(name: "year", scope: !1501, file: !1204, line: 1268, type: !35)
!1501 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1263, column: 11)
!1502 = !DILocalVariable(name: "year_adjust", scope: !1501, file: !1204, line: 1272, type: !35)
!1503 = !DILocalVariable(name: "days", scope: !1501, file: !1204, line: 1273, type: !35)
!1504 = !DILocalVariable(name: "d", scope: !1505, file: !1204, line: 1284, type: !35)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !1204, line: 1283, column: 15)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !1204, line: 1275, column: 17)
!1507 = !DILocalVariable(name: "yy", scope: !1508, file: !1204, line: 1298, type: !35)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !1204, line: 1297, column: 17)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !1204, line: 1295, column: 15)
!1510 = !DILocalVariable(name: "yy", scope: !1511, file: !1204, line: 1374, type: !35)
!1511 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1373, column: 11)
!1512 = !DILocalVariable(name: "_n", scope: !1513, file: !1204, line: 1397, type: !120)
!1513 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1397, column: 11)
!1514 = !DILocalVariable(name: "_w", scope: !1513, file: !1204, line: 1397, type: !120)
!1515 = !DILocalVariable(name: "_incr", scope: !1513, file: !1204, line: 1397, type: !120)
!1516 = !DILocalVariable(name: "_delta", scope: !1517, file: !1204, line: 1397, type: !120)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !1204, line: 1397, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !1204, line: 1397, column: 11)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !1204, line: 1397, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1513, file: !1204, line: 1397, column: 11)
!1521 = !DILocalVariable(name: "_i", scope: !1522, file: !1204, line: 1397, type: !120)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !1204, line: 1397, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !1204, line: 1397, column: 11)
!1524 = !DILocalVariable(name: "_i", scope: !1525, file: !1204, line: 1397, type: !120)
!1525 = distinct !DILexicalBlock(scope: !1523, file: !1204, line: 1397, column: 11)
!1526 = !DILocalVariable(name: "diff", scope: !1527, file: !1204, line: 1419, type: !35)
!1527 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1418, column: 11)
!1528 = !DILocalVariable(name: "hour_diff", scope: !1527, file: !1204, line: 1420, type: !35)
!1529 = !DILocalVariable(name: "min_diff", scope: !1527, file: !1204, line: 1421, type: !35)
!1530 = !DILocalVariable(name: "sec_diff", scope: !1527, file: !1204, line: 1422, type: !35)
!1531 = !DILocalVariable(name: "flen", scope: !1532, file: !1204, line: 1491, type: !35)
!1532 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1490, column: 11)
!1533 = !DILocalVariable(name: "_n", scope: !1534, file: !1204, line: 1494, type: !120)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !1204, line: 1494, column: 13)
!1535 = !DILocalVariable(name: "_w", scope: !1534, file: !1204, line: 1494, type: !120)
!1536 = !DILocalVariable(name: "_incr", scope: !1534, file: !1204, line: 1494, type: !120)
!1537 = !DILocalVariable(name: "_delta", scope: !1538, file: !1204, line: 1494, type: !120)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !1204, line: 1494, column: 13)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1204, line: 1494, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1204, line: 1494, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !1204, line: 1494, column: 13)
!1542 = !DILocalVariable(name: "_i", scope: !1543, file: !1204, line: 1494, type: !120)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !1204, line: 1494, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !1204, line: 1494, column: 13)
!1545 = !DILocalVariable(name: "_i", scope: !1546, file: !1204, line: 1494, type: !120)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !1204, line: 1494, column: 13)
!1547 = !DILabel(scope: !1334, name: "subformat", file: !1204, line: 860)
!1548 = !DILabel(scope: !1334, name: "subformat_width", file: !1204, line: 862)
!1549 = !DILabel(scope: !1334, name: "underlying_strftime", file: !1204, line: 877)
!1550 = !DILabel(scope: !1334, name: "do_tz_offset", file: !1204, line: 971)
!1551 = !DILabel(scope: !1334, name: "do_yearish", file: !1204, line: 975)
!1552 = !DILabel(scope: !1334, name: "do_number_spacepad", file: !1204, line: 984)
!1553 = !DILabel(scope: !1334, name: "do_number", file: !1204, line: 988)
!1554 = !DILabel(scope: !1334, name: "do_signed_number", file: !1204, line: 993)
!1555 = !DILabel(scope: !1334, name: "do_maybe_signed_number", file: !1204, line: 996)
!1556 = !DILabel(scope: !1334, name: "do_number_body", file: !1204, line: 999)
!1557 = !DILabel(scope: !1334, name: "do_number_sign_and_padding", file: !1204, line: 1042)
!1558 = !DILabel(scope: !1334, name: "do_z_conversion", file: !1204, line: 1414)
!1559 = !DILabel(scope: !1560, name: "tz_hh_mm", file: !1204, line: 1463)
!1560 = distinct !DILexicalBlock(scope: !1527, file: !1204, line: 1459, column: 15)
!1561 = !DILabel(scope: !1560, name: "tz_hh_mm_ss", file: !1204, line: 1466)
!1562 = !DILabel(scope: !1334, name: "bad_format", file: !1204, line: 1489)
!1563 = !DILocation(line: 0, scope: !1273)
!1564 = !DILocation(line: 459, column: 20, scope: !1273)
!1565 = !{!1566, !831, i64 8}
!1566 = !{!"tm", !831, i64 0, !831, i64 4, !831, i64 8, !831, i64 12, !831, i64 16, !831, i64 20, !831, i64 24, !831, i64 28, !831, i64 32, !913, i64 40, !690, i64 48}
!1567 = !DILocation(line: 522, column: 29, scope: !1273)
!1568 = !{!1566, !690, i64 48}
!1569 = !DILocation(line: 552, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1273, file: !1204, line: 552, column: 7)
!1571 = !DILocation(line: 552, column: 7, scope: !1273)
!1572 = !DILocation(line: 555, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1273, file: !1204, line: 555, column: 7)
!1574 = !DILocation(line: 555, column: 7, scope: !1273)
!1575 = !DILocation(line: 0, scope: !1294)
!1576 = !DILocation(line: 561, column: 20, scope: !1295)
!1577 = !DILocation(line: 561, column: 23, scope: !1295)
!1578 = !DILocation(line: 561, column: 3, scope: !1296)
!1579 = !DILocation(line: 665, column: 11, scope: !1319)
!1580 = !DILocation(line: 573, column: 7, scope: !1294)
!1581 = !DILocation(line: 573, column: 14, scope: !1294)
!1582 = !DILocation(line: 665, column: 14, scope: !1319)
!1583 = !DILocation(line: 665, column: 11, scope: !1294)
!1584 = !DILocation(line: 0, scope: !1317)
!1585 = !DILocation(line: 667, column: 11, scope: !1317)
!1586 = !DILocation(line: 667, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1317, file: !1204, line: 667, column: 11)
!1588 = !DILocation(line: 667, column: 11, scope: !1325)
!1589 = !DILocation(line: 0, scope: !1323)
!1590 = !DILocation(line: 0, scope: !1331)
!1591 = !DILocation(line: 667, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1204, line: 667, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1331, file: !1204, line: 667, column: 11)
!1594 = !DILocation(line: 667, column: 11, scope: !1593)
!1595 = distinct !{!1595, !1594, !1594, !732}
!1596 = !DILocation(line: 0, scope: !1296)
!1597 = !DILocation(line: 676, column: 20, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1294, file: !1204, line: 675, column: 9)
!1599 = !DILocation(line: 676, column: 19, scope: !1598)
!1600 = !DILocation(line: 676, column: 11, scope: !1598)
!1601 = distinct !{!1601, !1602, !1603}
!1602 = !DILocation(line: 674, column: 7, scope: !1294)
!1603 = !DILocation(line: 698, column: 9, scope: !1294)
!1604 = !DILocation(line: 700, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1294, file: !1204, line: 700, column: 11)
!1606 = !DILocation(line: 700, column: 11, scope: !1294)
!1607 = !DILocation(line: 0, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !1204, line: 701, column: 9)
!1609 = !DILocation(line: 705, column: 19, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !1204, line: 705, column: 19)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !1204, line: 704, column: 13)
!1612 = !DILocation(line: 706, column: 22, scope: !1610)
!1613 = !DILocation(line: 705, column: 19, scope: !1611)
!1614 = !DILocation(line: 707, column: 17, scope: !1610)
!1615 = !DILocation(line: 0, scope: !1610)
!1616 = !DILocation(line: 708, column: 15, scope: !1611)
!1617 = !DILocation(line: 710, column: 18, scope: !1608)
!1618 = !DILocation(line: 709, column: 13, scope: !1611)
!1619 = distinct !{!1619, !1620, !1621, !732}
!1620 = !DILocation(line: 703, column: 11, scope: !1608)
!1621 = !DILocation(line: 710, column: 30, scope: !1608)
!1622 = !DILocation(line: 714, column: 7, scope: !1294)
!1623 = !DILocation(line: 714, column: 15, scope: !1294)
!1624 = !DILocation(line: 718, column: 24, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1294, file: !1204, line: 715, column: 9)
!1626 = !DILocation(line: 727, column: 21, scope: !1294)
!1627 = !DILocation(line: 719, column: 11, scope: !1625)
!1628 = !DILocation(line: 0, scope: !1625)
!1629 = !DILocation(line: 728, column: 7, scope: !1294)
!1630 = !DILocation(line: 774, column: 24, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 774, column: 15)
!1632 = !DILocation(line: 774, column: 15, scope: !1334)
!1633 = !DILocation(line: 0, scope: !1333)
!1634 = !DILocation(line: 776, column: 11, scope: !1333)
!1635 = !DILocation(line: 776, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1333, file: !1204, line: 776, column: 11)
!1637 = !DILocation(line: 776, column: 11, scope: !1340)
!1638 = !DILocation(line: 776, column: 11, scope: !1338)
!1639 = !DILocation(line: 0, scope: !1338)
!1640 = !DILocation(line: 776, column: 11, scope: !1344)
!1641 = !DILocation(line: 0, scope: !1346)
!1642 = !DILocation(line: 776, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !1204, line: 776, column: 11)
!1644 = distinct !DILexicalBlock(scope: !1346, file: !1204, line: 776, column: 11)
!1645 = !DILocation(line: 776, column: 11, scope: !1644)
!1646 = !DILocation(line: 0, scope: !1343)
!1647 = !DILocation(line: 776, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !1204, line: 776, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1343, file: !1204, line: 776, column: 11)
!1650 = !DILocation(line: 776, column: 11, scope: !1649)
!1651 = distinct !{!1651, !1650, !1650, !732}
!1652 = distinct !{!1652, !1645, !1645, !732}
!1653 = !DILocation(line: 780, column: 24, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 780, column: 15)
!1655 = !DILocation(line: 780, column: 15, scope: !1334)
!1656 = !DILocation(line: 782, column: 15, scope: !1334)
!1657 = !DILocation(line: 795, column: 24, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 795, column: 15)
!1659 = !DILocation(line: 795, column: 15, scope: !1334)
!1660 = !DILocation(line: 797, column: 15, scope: !1334)
!1661 = !DILocation(line: 811, column: 15, scope: !1334)
!1662 = !DILocation(line: 816, column: 24, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 816, column: 15)
!1664 = !DILocation(line: 816, column: 15, scope: !1334)
!1665 = !DILocation(line: 829, column: 24, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 829, column: 15)
!1667 = !DILocation(line: 829, column: 15, scope: !1334)
!1668 = !DILocation(line: 831, column: 15, scope: !1334)
!1669 = !DILocation(line: 847, column: 24, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 847, column: 15)
!1671 = !DILocation(line: 847, column: 15, scope: !1334)
!1672 = !DILocation(line: 0, scope: !1334)
!1673 = !DILocation(line: 862, column: 9, scope: !1334)
!1674 = !DILocation(line: 865, column: 59, scope: !1348)
!1675 = !DILocation(line: 864, column: 26, scope: !1348)
!1676 = !DILocation(line: 0, scope: !1348)
!1677 = !DILocation(line: 0, scope: !1350)
!1678 = !DILocation(line: 868, column: 13, scope: !1350)
!1679 = !DILocation(line: 868, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1350, file: !1204, line: 868, column: 13)
!1681 = !DILocation(line: 868, column: 13, scope: !1356)
!1682 = !DILocation(line: 868, column: 13, scope: !1354)
!1683 = !DILocation(line: 0, scope: !1354)
!1684 = !DILocation(line: 868, column: 13, scope: !1360)
!1685 = !DILocation(line: 0, scope: !1362)
!1686 = !DILocation(line: 868, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !1204, line: 868, column: 13)
!1688 = distinct !DILexicalBlock(scope: !1362, file: !1204, line: 868, column: 13)
!1689 = !DILocation(line: 868, column: 13, scope: !1688)
!1690 = !DILocation(line: 0, scope: !1359)
!1691 = !DILocation(line: 868, column: 13, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !1204, line: 868, column: 13)
!1693 = distinct !DILexicalBlock(scope: !1359, file: !1204, line: 868, column: 13)
!1694 = !DILocation(line: 868, column: 13, scope: !1693)
!1695 = distinct !{!1695, !1694, !1694, !732}
!1696 = distinct !{!1696, !1689, !1689, !732}
!1697 = !DILocation(line: 727, column: 19, scope: !1294)
!1698 = !DILocation(line: 563, column: 11, scope: !1294)
!1699 = !DILocation(line: 877, column: 9, scope: !1334)
!1700 = !DILocation(line: 881, column: 13, scope: !1364)
!1701 = !DILocation(line: 881, column: 18, scope: !1364)
!1702 = !DILocation(line: 0, scope: !1364)
!1703 = !DILocation(line: 883, column: 13, scope: !1364)
!1704 = !DILocation(line: 883, column: 18, scope: !1364)
!1705 = !DILocation(line: 895, column: 18, scope: !1364)
!1706 = !DILocation(line: 896, column: 18, scope: !1364)
!1707 = !DILocation(line: 897, column: 26, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1364, file: !1204, line: 897, column: 17)
!1709 = !DILocation(line: 897, column: 17, scope: !1364)
!1710 = !DILocation(line: 898, column: 22, scope: !1708)
!1711 = !DILocation(line: 898, column: 20, scope: !1708)
!1712 = !DILocation(line: 898, column: 15, scope: !1708)
!1713 = !DILocation(line: 899, column: 15, scope: !1364)
!1714 = !DILocation(line: 899, column: 18, scope: !1364)
!1715 = !DILocation(line: 900, column: 16, scope: !1364)
!1716 = !DILocation(line: 901, column: 19, scope: !1364)
!1717 = !DILocation(line: 902, column: 21, scope: !1376)
!1718 = !DILocation(line: 902, column: 17, scope: !1364)
!1719 = !DILocation(line: 903, column: 15, scope: !1375)
!1720 = !DILocation(line: 0, scope: !1375)
!1721 = !DILocation(line: 903, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1375, file: !1204, line: 903, column: 15)
!1723 = !DILocation(line: 903, column: 15, scope: !1382)
!1724 = !DILocation(line: 903, column: 15, scope: !1380)
!1725 = !DILocation(line: 0, scope: !1380)
!1726 = !DILocation(line: 903, column: 15, scope: !1386)
!1727 = !DILocation(line: 0, scope: !1388)
!1728 = !DILocation(line: 903, column: 15, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1204, line: 903, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1388, file: !1204, line: 903, column: 15)
!1731 = !DILocation(line: 903, column: 15, scope: !1730)
!1732 = !DILocation(line: 0, scope: !1385)
!1733 = !DILocation(line: 903, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1204, line: 903, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1385, file: !1204, line: 903, column: 15)
!1736 = !DILocation(line: 903, column: 15, scope: !1735)
!1737 = distinct !{!1737, !1736, !1736, !732}
!1738 = distinct !{!1738, !1731, !1731, !732}
!1739 = !DILocation(line: 903, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1382, file: !1204, line: 903, column: 15)
!1741 = !DILocalVariable(name: "fp", arg: 1, scope: !1742, file: !1204, line: 295, type: !1207)
!1742 = distinct !DISubprogram(name: "fwrite_lowcase", scope: !1204, file: !1204, line: 295, type: !1743, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1207, !6, !120}
!1745 = !{!1741, !1746, !1747, !1748}
!1746 = !DILocalVariable(name: "src", arg: 2, scope: !1742, file: !1204, line: 295, type: !6)
!1747 = !DILocalVariable(name: "len", arg: 3, scope: !1742, file: !1204, line: 295, type: !120)
!1748 = !DILocalVariable(name: "__res", scope: !1749, file: !1204, line: 299, type: !35)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !1204, line: 299, column: 14)
!1750 = distinct !DILexicalBlock(scope: !1742, file: !1204, line: 298, column: 5)
!1751 = !DILocation(line: 0, scope: !1742, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 903, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1740, file: !1204, line: 903, column: 15)
!1754 = !DILocation(line: 297, column: 16, scope: !1742, inlinedAt: !1752)
!1755 = !DILocation(line: 297, column: 3, scope: !1742, inlinedAt: !1752)
!1756 = !DILocation(line: 297, column: 13, scope: !1742, inlinedAt: !1752)
!1757 = !DILocation(line: 299, column: 14, scope: !1758, inlinedAt: !1752)
!1758 = distinct !DILexicalBlock(scope: !1749, file: !1204, line: 299, column: 14)
!1759 = !DILocation(line: 0, scope: !1749, inlinedAt: !1752)
!1760 = !DILocation(line: 299, column: 7, scope: !1750, inlinedAt: !1752)
!1761 = !DILocation(line: 300, column: 7, scope: !1750, inlinedAt: !1752)
!1762 = distinct !{!1762, !1755, !1763, !732}
!1763 = !DILocation(line: 301, column: 5, scope: !1742, inlinedAt: !1752)
!1764 = !DILocation(line: 903, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !1204, line: 903, column: 15)
!1766 = !DILocation(line: 903, column: 15, scope: !1753)
!1767 = !DILocalVariable(name: "fp", arg: 1, scope: !1768, file: !1204, line: 305, type: !1207)
!1768 = distinct !DISubprogram(name: "fwrite_uppcase", scope: !1204, file: !1204, line: 305, type: !1743, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1769)
!1769 = !{!1767, !1770, !1771, !1772}
!1770 = !DILocalVariable(name: "src", arg: 2, scope: !1768, file: !1204, line: 305, type: !6)
!1771 = !DILocalVariable(name: "len", arg: 3, scope: !1768, file: !1204, line: 305, type: !120)
!1772 = !DILocalVariable(name: "__res", scope: !1773, file: !1204, line: 309, type: !35)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !1204, line: 309, column: 14)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !1204, line: 308, column: 5)
!1775 = !DILocation(line: 0, scope: !1768, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 903, column: 15, scope: !1765)
!1777 = !DILocation(line: 307, column: 16, scope: !1768, inlinedAt: !1776)
!1778 = !DILocation(line: 307, column: 3, scope: !1768, inlinedAt: !1776)
!1779 = !DILocation(line: 307, column: 13, scope: !1768, inlinedAt: !1776)
!1780 = !DILocation(line: 309, column: 14, scope: !1781, inlinedAt: !1776)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !1204, line: 309, column: 14)
!1782 = !DILocation(line: 0, scope: !1773, inlinedAt: !1776)
!1783 = !DILocation(line: 309, column: 7, scope: !1774, inlinedAt: !1776)
!1784 = !DILocation(line: 310, column: 7, scope: !1774, inlinedAt: !1776)
!1785 = distinct !{!1785, !1778, !1786, !732}
!1786 = !DILocation(line: 311, column: 5, scope: !1768, inlinedAt: !1776)
!1787 = !DILocation(line: 903, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1765, file: !1204, line: 903, column: 15)
!1789 = !DILocation(line: 904, column: 11, scope: !1334)
!1790 = !DILocation(line: 498, column: 10, scope: !1273)
!1791 = !DILocation(line: 909, column: 24, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 909, column: 15)
!1793 = !DILocation(line: 909, column: 15, scope: !1334)
!1794 = !DILocation(line: 930, column: 38, scope: !1390)
!1795 = !{!1566, !831, i64 20}
!1796 = !DILocation(line: 930, column: 46, scope: !1390)
!1797 = !DILocation(line: 0, scope: !1390)
!1798 = !DILocation(line: 931, column: 35, scope: !1390)
!1799 = !DILocation(line: 931, column: 65, scope: !1390)
!1800 = !DILocation(line: 931, column: 50, scope: !1390)
!1801 = !DILocation(line: 932, column: 46, scope: !1390)
!1802 = !DILocation(line: 932, column: 41, scope: !1390)
!1803 = !DILocation(line: 932, column: 64, scope: !1390)
!1804 = !DILocation(line: 933, column: 28, scope: !1390)
!1805 = !DILocation(line: 938, column: 24, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 938, column: 15)
!1807 = !DILocation(line: 938, column: 15, scope: !1334)
!1808 = !DILocation(line: 951, column: 24, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 951, column: 15)
!1810 = !DILocation(line: 951, column: 15, scope: !1334)
!1811 = !DILocation(line: 957, column: 24, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 957, column: 15)
!1813 = !DILocation(line: 957, column: 15, scope: !1334)
!1814 = !DILocation(line: 960, column: 11, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 960, column: 11)
!1816 = !{!1566, !831, i64 12}
!1817 = !DILocation(line: 963, column: 24, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 963, column: 15)
!1819 = !DILocation(line: 963, column: 15, scope: !1334)
!1820 = !DILocation(line: 966, column: 11, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 966, column: 11)
!1822 = !DILocation(line: 975, column: 9, scope: !1334)
!1823 = !DILocation(line: 976, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 976, column: 15)
!1825 = !DILocation(line: 976, column: 15, scope: !1334)
!1826 = !DILocation(line: 979, column: 20, scope: !1334)
!1827 = !DILocation(line: 980, column: 16, scope: !1334)
!1828 = !DILocation(line: 980, column: 46, scope: !1334)
!1829 = !DILocation(line: 981, column: 20, scope: !1334)
!1830 = !DILocation(line: 984, column: 9, scope: !1334)
!1831 = !DILocation(line: 985, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 985, column: 15)
!1833 = !DILocation(line: 985, column: 15, scope: !1334)
!1834 = !DILocation(line: 988, column: 9, scope: !1334)
!1835 = !DILocation(line: 990, column: 27, scope: !1334)
!1836 = !DILocation(line: 991, column: 11, scope: !1334)
!1837 = !DILocation(line: 999, column: 9, scope: !1334)
!1838 = !DILocation(line: 1005, column: 24, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1005, column: 15)
!1840 = !DILocation(line: 1005, column: 35, scope: !1839)
!1841 = !DILocation(line: 1029, column: 15, scope: !1334)
!1842 = !DILocation(line: 1032, column: 11, scope: !1334)
!1843 = !DILocation(line: 1034, column: 33, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !1204, line: 1034, column: 19)
!1845 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1033, column: 13)
!1846 = !DILocation(line: 1034, column: 19, scope: !1845)
!1847 = !DILocation(line: 1035, column: 18, scope: !1844)
!1848 = !DILocation(line: 1035, column: 25, scope: !1844)
!1849 = !DILocation(line: 1035, column: 17, scope: !1844)
!1850 = !DILocation(line: 1036, column: 29, scope: !1845)
!1851 = !DILocation(line: 1037, column: 40, scope: !1845)
!1852 = !DILocation(line: 1037, column: 25, scope: !1845)
!1853 = !DILocation(line: 1037, column: 16, scope: !1845)
!1854 = !DILocation(line: 1037, column: 23, scope: !1845)
!1855 = !DILocation(line: 1038, column: 30, scope: !1845)
!1856 = !DILocation(line: 1040, column: 33, scope: !1334)
!1857 = !DILocation(line: 1040, column: 38, scope: !1334)
!1858 = !DILocation(line: 1039, column: 13, scope: !1845)
!1859 = distinct !{!1859, !1842, !1860, !732}
!1860 = !DILocation(line: 1040, column: 59, scope: !1334)
!1861 = !DILocation(line: 1042, column: 9, scope: !1334)
!1862 = !DILocation(line: 1043, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1043, column: 15)
!1864 = !DILocation(line: 1043, column: 15, scope: !1334)
!1865 = !DILocation(line: 1045, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1045, column: 15)
!1867 = !DILocation(line: 1045, column: 15, scope: !1334)
!1868 = !DILocation(line: 1049, column: 33, scope: !1394)
!1869 = !DILocation(line: 0, scope: !1394)
!1870 = !DILocation(line: 1052, column: 59, scope: !1394)
!1871 = !DILocation(line: 1052, column: 26, scope: !1394)
!1872 = !DILocation(line: 1053, column: 37, scope: !1394)
!1873 = !DILocation(line: 1053, column: 36, scope: !1394)
!1874 = !DILocation(line: 1053, column: 34, scope: !1394)
!1875 = !DILocation(line: 1053, column: 48, scope: !1394)
!1876 = !DILocation(line: 1054, column: 31, scope: !1394)
!1877 = !DILocation(line: 1054, column: 42, scope: !1394)
!1878 = !DILocation(line: 1056, column: 17, scope: !1394)
!1879 = !DILocation(line: 1058, column: 25, scope: !1402)
!1880 = !DILocation(line: 1058, column: 21, scope: !1403)
!1881 = !DILocation(line: 1060, column: 25, scope: !1401)
!1882 = !DILocation(line: 0, scope: !1399)
!1883 = !DILocation(line: 1061, column: 23, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1399, file: !1204, line: 1061, column: 23)
!1885 = !DILocation(line: 1061, column: 23, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1884, file: !1204, line: 1061, column: 23)
!1887 = distinct !{!1887, !1883, !1883, !732}
!1888 = !DILocation(line: 1062, column: 23, scope: !1401)
!1889 = !DILocation(line: 1063, column: 27, scope: !1401)
!1890 = !DILocation(line: 1064, column: 19, scope: !1401)
!1891 = !DILocation(line: 0, scope: !1406)
!1892 = !DILocation(line: 1065, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1406, file: !1204, line: 1065, column: 17)
!1894 = !DILocation(line: 1065, column: 17, scope: !1406)
!1895 = !DILocation(line: 1065, column: 17, scope: !1412)
!1896 = !DILocation(line: 1066, column: 22, scope: !1403)
!1897 = !DILocation(line: 1067, column: 15, scope: !1403)
!1898 = !DILocation(line: 1069, column: 13, scope: !1420)
!1899 = !DILocation(line: 0, scope: !1420)
!1900 = !DILocation(line: 1069, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1420, file: !1204, line: 1069, column: 13)
!1902 = !DILocation(line: 1069, column: 13, scope: !1426)
!1903 = !DILocation(line: 1069, column: 13, scope: !1424)
!1904 = !DILocation(line: 0, scope: !1424)
!1905 = !DILocation(line: 1069, column: 13, scope: !1430)
!1906 = !DILocation(line: 0, scope: !1432)
!1907 = !DILocation(line: 1069, column: 13, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1204, line: 1069, column: 13)
!1909 = distinct !DILexicalBlock(scope: !1432, file: !1204, line: 1069, column: 13)
!1910 = !DILocation(line: 1069, column: 13, scope: !1909)
!1911 = !DILocation(line: 0, scope: !1429)
!1912 = !DILocation(line: 1069, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !1204, line: 1069, column: 13)
!1914 = distinct !DILexicalBlock(scope: !1429, file: !1204, line: 1069, column: 13)
!1915 = !DILocation(line: 1069, column: 13, scope: !1914)
!1916 = distinct !{!1916, !1915, !1915, !732}
!1917 = distinct !{!1917, !1910, !1910, !732}
!1918 = !DILocation(line: 1069, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1204, line: 1069, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !1204, line: 1069, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1426, file: !1204, line: 1069, column: 13)
!1922 = !DILocation(line: 1069, column: 13, scope: !1920)
!1923 = !DILocation(line: 0, scope: !1768, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 1069, column: 13, scope: !1919)
!1925 = !DILocation(line: 307, column: 16, scope: !1768, inlinedAt: !1924)
!1926 = !DILocation(line: 307, column: 3, scope: !1768, inlinedAt: !1924)
!1927 = !DILocation(line: 307, column: 13, scope: !1768, inlinedAt: !1924)
!1928 = !DILocation(line: 309, column: 14, scope: !1781, inlinedAt: !1924)
!1929 = !DILocation(line: 0, scope: !1773, inlinedAt: !1924)
!1930 = !DILocation(line: 309, column: 7, scope: !1774, inlinedAt: !1924)
!1931 = !DILocation(line: 310, column: 7, scope: !1774, inlinedAt: !1924)
!1932 = distinct !{!1932, !1926, !1933, !732}
!1933 = !DILocation(line: 311, column: 5, scope: !1768, inlinedAt: !1924)
!1934 = !DILocation(line: 1069, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1919, file: !1204, line: 1069, column: 13)
!1936 = !DILocation(line: 1074, column: 24, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1074, column: 15)
!1938 = !DILocation(line: 1074, column: 15, scope: !1334)
!1939 = !DILocation(line: 1076, column: 19, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1076, column: 15)
!1941 = !DILocation(line: 1076, column: 24, scope: !1940)
!1942 = !DILocation(line: 1091, column: 24, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1091, column: 15)
!1944 = !DILocation(line: 1091, column: 15, scope: !1334)
!1945 = !DILocation(line: 1094, column: 11, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1094, column: 11)
!1947 = !DILocation(line: 1097, column: 24, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1097, column: 15)
!1949 = !DILocation(line: 1097, column: 15, scope: !1334)
!1950 = !DILocation(line: 1103, column: 24, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1103, column: 15)
!1952 = !DILocation(line: 1103, column: 15, scope: !1334)
!1953 = !DILocation(line: 1106, column: 11, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1106, column: 11)
!1955 = !DILocation(line: 1109, column: 24, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1109, column: 15)
!1957 = !DILocation(line: 1109, column: 15, scope: !1334)
!1958 = !DILocation(line: 1115, column: 24, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1115, column: 15)
!1960 = !DILocation(line: 1115, column: 15, scope: !1334)
!1961 = !DILocation(line: 1118, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1118, column: 11)
!1963 = !{!1566, !831, i64 28}
!1964 = !DILocation(line: 1121, column: 24, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1121, column: 15)
!1966 = !DILocation(line: 1121, column: 15, scope: !1334)
!1967 = !DILocation(line: 1124, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1124, column: 11)
!1969 = !{!1566, !831, i64 4}
!1970 = !DILocation(line: 1127, column: 24, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1127, column: 15)
!1972 = !DILocation(line: 1127, column: 15, scope: !1334)
!1973 = !DILocation(line: 1130, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1130, column: 11)
!1975 = !{!1566, !831, i64 16}
!1976 = !DILocation(line: 1134, column: 24, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1134, column: 15)
!1978 = !DILocation(line: 1134, column: 15, scope: !1334)
!1979 = !DILocation(line: 0, scope: !1434)
!1980 = !DILocation(line: 1138, column: 23, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1434, file: !1204, line: 1138, column: 17)
!1982 = !DILocation(line: 1138, column: 17, scope: !1434)
!1983 = !DILocation(line: 1141, column: 13, scope: !1434)
!1984 = !DILocation(line: 1141, column: 26, scope: !1434)
!1985 = !DILocation(line: 1141, column: 34, scope: !1434)
!1986 = !DILocation(line: 1141, column: 40, scope: !1434)
!1987 = !DILocation(line: 1141, column: 48, scope: !1434)
!1988 = !DILocation(line: 0, scope: !1438)
!1989 = !DILocation(line: 1143, column: 35, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1438, file: !1204, line: 1143, column: 13)
!1991 = !DILocation(line: 1143, column: 13, scope: !1438)
!1992 = !DILocation(line: 1144, column: 30, scope: !1990)
!1993 = !DILocation(line: 1144, column: 28, scope: !1990)
!1994 = !DILocation(line: 1144, column: 21, scope: !1990)
!1995 = !DILocation(line: 1144, column: 15, scope: !1990)
!1996 = !DILocation(line: 1144, column: 26, scope: !1990)
!1997 = !DILocation(line: 1144, column: 48, scope: !1990)
!1998 = !DILocation(line: 1142, column: 20, scope: !1434)
!1999 = !DILocation(line: 1142, column: 26, scope: !1434)
!2000 = distinct !{!2000, !1983, !2001, !732}
!2001 = !DILocation(line: 1142, column: 29, scope: !1434)
!2002 = !DILocation(line: 1145, column: 18, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1434, file: !1204, line: 1145, column: 17)
!2004 = !DILocation(line: 1145, column: 17, scope: !1434)
!2005 = !DILocation(line: 1147, column: 13, scope: !1440)
!2006 = !DILocation(line: 0, scope: !1440)
!2007 = !DILocation(line: 1147, column: 13, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1440, file: !1204, line: 1147, column: 13)
!2009 = distinct !{!2009, !1991, !2010, !732}
!2010 = !DILocation(line: 1144, column: 51, scope: !1438)
!2011 = !DILocation(line: 1147, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1204, line: 1147, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !1204, line: 1147, column: 13)
!2014 = distinct !DILexicalBlock(scope: !1446, file: !1204, line: 1147, column: 13)
!2015 = !DILocation(line: 1147, column: 13, scope: !2013)
!2016 = !DILocation(line: 0, scope: !1768, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 1147, column: 13, scope: !2012)
!2018 = !DILocation(line: 307, column: 16, scope: !1768, inlinedAt: !2017)
!2019 = !DILocation(line: 307, column: 3, scope: !1768, inlinedAt: !2017)
!2020 = !DILocation(line: 307, column: 13, scope: !1768, inlinedAt: !2017)
!2021 = !DILocation(line: 309, column: 14, scope: !1781, inlinedAt: !2017)
!2022 = !DILocation(line: 0, scope: !1773, inlinedAt: !2017)
!2023 = !DILocation(line: 309, column: 7, scope: !1774, inlinedAt: !2017)
!2024 = !DILocation(line: 310, column: 7, scope: !1774, inlinedAt: !2017)
!2025 = distinct !{!2025, !2019, !2026, !732}
!2026 = !DILocation(line: 311, column: 5, scope: !1768, inlinedAt: !2017)
!2027 = !DILocation(line: 1147, column: 13, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2012, file: !1204, line: 1147, column: 13)
!2029 = !DILocation(line: 0, scope: !1454)
!2030 = !DILocation(line: 1148, column: 13, scope: !1454)
!2031 = !DILocation(line: 1148, column: 13, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1454, file: !1204, line: 1148, column: 13)
!2033 = !DILocation(line: 0, scope: !1458)
!2034 = !DILocation(line: 1148, column: 13, scope: !1464)
!2035 = !DILocation(line: 0, scope: !1466)
!2036 = !DILocation(line: 1148, column: 13, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1466, file: !1204, line: 1148, column: 13)
!2038 = !DILocation(line: 0, scope: !1463)
!2039 = !DILocation(line: 1148, column: 13, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1463, file: !1204, line: 1148, column: 13)
!2041 = !DILocation(line: 1148, column: 13, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !1204, line: 1148, column: 13)
!2043 = distinct !{!2043, !2039, !2039, !732}
!2044 = !DILocation(line: 1148, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2037, file: !1204, line: 1148, column: 13)
!2046 = distinct !{!2046, !2036, !2036, !732}
!2047 = !DILocation(line: 0, scope: !1468)
!2048 = !DILocation(line: 1154, column: 11, scope: !1468)
!2049 = !DILocation(line: 1154, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1468, file: !1204, line: 1154, column: 11)
!2051 = !DILocation(line: 1154, column: 11, scope: !1474)
!2052 = !DILocation(line: 1154, column: 11, scope: !1472)
!2053 = !DILocation(line: 0, scope: !1472)
!2054 = !DILocation(line: 1154, column: 11, scope: !1478)
!2055 = !DILocation(line: 0, scope: !1480)
!2056 = !DILocation(line: 1154, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1204, line: 1154, column: 11)
!2058 = distinct !DILexicalBlock(scope: !1480, file: !1204, line: 1154, column: 11)
!2059 = !DILocation(line: 1154, column: 11, scope: !2058)
!2060 = !DILocation(line: 0, scope: !1477)
!2061 = !DILocation(line: 1154, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !1204, line: 1154, column: 11)
!2063 = distinct !DILexicalBlock(scope: !1477, file: !1204, line: 1154, column: 11)
!2064 = !DILocation(line: 1154, column: 11, scope: !2063)
!2065 = distinct !{!2065, !2064, !2064, !732}
!2066 = distinct !{!2066, !2059, !2059, !732}
!2067 = !DILocation(line: 1162, column: 11, scope: !1334)
!2068 = !DILocation(line: 1164, column: 15, scope: !1334)
!2069 = !DILocation(line: 1177, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1177, column: 11)
!2071 = !DILocation(line: 1196, column: 24, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1196, column: 15)
!2073 = !DILocation(line: 1196, column: 15, scope: !1334)
!2074 = !DILocation(line: 1199, column: 11, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1199, column: 11)
!2076 = !{!1566, !831, i64 0}
!2077 = !DILocation(line: 1203, column: 13, scope: !1482)
!2078 = !DILocation(line: 1203, column: 23, scope: !1482)
!2079 = !DILocation(line: 1206, column: 19, scope: !1482)
!2080 = !{i64 0, i64 4, !830, i64 4, i64 4, !830, i64 8, i64 4, !830, i64 12, i64 4, !830, i64 16, i64 4, !830, i64 20, i64 4, !830, i64 24, i64 4, !830, i64 28, i64 4, !830, i64 32, i64 4, !830, i64 40, i64 8, !912, i64 48, i64 8, !689}
!2081 = !DILocation(line: 1207, column: 17, scope: !1482)
!2082 = !DILocation(line: 0, scope: !1482)
!2083 = !DILocation(line: 1213, column: 33, scope: !1482)
!2084 = !DILocation(line: 1213, column: 29, scope: !1482)
!2085 = !DILocation(line: 1215, column: 13, scope: !1482)
!2086 = !DILocation(line: 1217, column: 27, scope: !1485)
!2087 = !DILocation(line: 1217, column: 25, scope: !1485)
!2088 = !DILocation(line: 0, scope: !1485)
!2089 = !DILocation(line: 1218, column: 19, scope: !1485)
!2090 = !DILocation(line: 1219, column: 28, scope: !1485)
!2091 = !DILocation(line: 1219, column: 27, scope: !1485)
!2092 = !DILocation(line: 1219, column: 18, scope: !1485)
!2093 = !DILocation(line: 1219, column: 25, scope: !1485)
!2094 = !DILocation(line: 1221, column: 22, scope: !1482)
!2095 = !DILocation(line: 1220, column: 15, scope: !1485)
!2096 = distinct !{!2096, !2085, !2097, !732}
!2097 = !DILocation(line: 1221, column: 26, scope: !1482)
!2098 = !DILocation(line: 1226, column: 11, scope: !1334)
!2099 = !DILocation(line: 1229, column: 24, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1229, column: 15)
!2101 = !DILocation(line: 1229, column: 15, scope: !1334)
!2102 = !DILocation(line: 1243, column: 11, scope: !1334)
!2103 = !DILocation(line: 0, scope: !1487)
!2104 = !DILocation(line: 1246, column: 11, scope: !1487)
!2105 = !DILocation(line: 1246, column: 11, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1487, file: !1204, line: 1246, column: 11)
!2107 = !DILocation(line: 1246, column: 11, scope: !1493)
!2108 = !DILocation(line: 1246, column: 11, scope: !1491)
!2109 = !DILocation(line: 0, scope: !1491)
!2110 = !DILocation(line: 1246, column: 11, scope: !1497)
!2111 = !DILocation(line: 0, scope: !1499)
!2112 = !DILocation(line: 1246, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1204, line: 1246, column: 11)
!2114 = distinct !DILexicalBlock(scope: !1499, file: !1204, line: 1246, column: 11)
!2115 = !DILocation(line: 1246, column: 11, scope: !2114)
!2116 = !DILocation(line: 0, scope: !1496)
!2117 = !DILocation(line: 1246, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !1204, line: 1246, column: 11)
!2119 = distinct !DILexicalBlock(scope: !1496, file: !1204, line: 1246, column: 11)
!2120 = !DILocation(line: 1246, column: 11, scope: !2119)
!2121 = distinct !{!2121, !2120, !2120, !732}
!2122 = distinct !{!2122, !2115, !2115, !732}
!2123 = !DILocation(line: 1250, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1250, column: 11)
!2125 = !{!1566, !831, i64 24}
!2126 = !DILocation(line: 1253, column: 24, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1253, column: 15)
!2128 = !DILocation(line: 1253, column: 15, scope: !1334)
!2129 = !DILocation(line: 1256, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1256, column: 11)
!2131 = !DILocation(line: 1261, column: 24, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1261, column: 15)
!2133 = !DILocation(line: 1261, column: 15, scope: !1334)
!2134 = !DILocation(line: 1268, column: 29, scope: !1501)
!2135 = !DILocation(line: 1269, column: 40, scope: !1501)
!2136 = !DILocation(line: 1269, column: 28, scope: !1501)
!2137 = !DILocation(line: 1269, column: 25, scope: !1501)
!2138 = !DILocation(line: 0, scope: !1501)
!2139 = !DILocation(line: 1273, column: 43, scope: !1501)
!2140 = !DILocation(line: 1273, column: 56, scope: !1501)
!2141 = !DILocalVariable(name: "yday", arg: 1, scope: !2142, file: !1204, line: 379, type: !35)
!2142 = distinct !DISubprogram(name: "iso_week_days", scope: !1204, file: !1204, line: 379, type: !2143, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!35, !35, !35}
!2145 = !{!2141, !2146, !2147}
!2146 = !DILocalVariable(name: "wday", arg: 2, scope: !2142, file: !1204, line: 379, type: !35)
!2147 = !DILocalVariable(name: "big_enough_multiple_of_7", scope: !2142, file: !1204, line: 382, type: !35)
!2148 = !DILocation(line: 0, scope: !2142, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 1273, column: 24, scope: !1501)
!2150 = !DILocation(line: 384, column: 19, scope: !2142, inlinedAt: !2149)
!2151 = !DILocation(line: 384, column: 43, scope: !2142, inlinedAt: !2149)
!2152 = !DILocation(line: 384, column: 71, scope: !2142, inlinedAt: !2149)
!2153 = !DILocation(line: 384, column: 11, scope: !2142, inlinedAt: !2149)
!2154 = !DILocation(line: 385, column: 28, scope: !2142, inlinedAt: !2149)
!2155 = !DILocation(line: 1275, column: 22, scope: !1506)
!2156 = !DILocation(line: 1275, column: 17, scope: !1501)
!2157 = !DILocation(line: 1279, column: 60, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1506, file: !1204, line: 1276, column: 15)
!2159 = !DILocation(line: 1279, column: 51, scope: !2158)
!2160 = !DILocation(line: 0, scope: !2142, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 1279, column: 24, scope: !2158)
!2162 = !DILocation(line: 384, column: 19, scope: !2142, inlinedAt: !2161)
!2163 = !DILocation(line: 384, column: 43, scope: !2142, inlinedAt: !2161)
!2164 = !DILocation(line: 384, column: 71, scope: !2142, inlinedAt: !2161)
!2165 = !DILocation(line: 384, column: 11, scope: !2142, inlinedAt: !2161)
!2166 = !DILocation(line: 385, column: 28, scope: !2142, inlinedAt: !2161)
!2167 = !DILocation(line: 1281, column: 15, scope: !2158)
!2168 = !DILocation(line: 1284, column: 61, scope: !1505)
!2169 = !DILocation(line: 1284, column: 52, scope: !1505)
!2170 = !DILocation(line: 0, scope: !2142, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 1284, column: 25, scope: !1505)
!2172 = !DILocation(line: 384, column: 19, scope: !2142, inlinedAt: !2171)
!2173 = !DILocation(line: 384, column: 43, scope: !2142, inlinedAt: !2171)
!2174 = !DILocation(line: 384, column: 71, scope: !2142, inlinedAt: !2171)
!2175 = !DILocation(line: 384, column: 11, scope: !2142, inlinedAt: !2171)
!2176 = !DILocation(line: 385, column: 28, scope: !2142, inlinedAt: !2171)
!2177 = !DILocation(line: 0, scope: !1505)
!2178 = !DILocation(line: 1286, column: 23, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1505, file: !1204, line: 1286, column: 21)
!2180 = !DILocation(line: 1286, column: 21, scope: !1505)
!2181 = !DILocation(line: 0, scope: !1506)
!2182 = !DILocation(line: 1294, column: 13, scope: !1501)
!2183 = !DILocation(line: 1298, column: 41, scope: !1508)
!2184 = !DILocation(line: 1298, column: 47, scope: !1508)
!2185 = !DILocation(line: 1298, column: 62, scope: !1508)
!2186 = !DILocation(line: 0, scope: !1508)
!2187 = !DILocation(line: 1299, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1508, file: !1204, line: 1299, column: 19)
!2189 = !DILocation(line: 1308, column: 17, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1509, file: !1204, line: 1308, column: 17)
!2191 = !DILocation(line: 1313, column: 17, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1509, file: !1204, line: 1313, column: 17)
!2193 = !DILocation(line: 1318, column: 24, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1318, column: 15)
!2195 = !DILocation(line: 1318, column: 15, scope: !1334)
!2196 = !DILocation(line: 1321, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1321, column: 11)
!2198 = !DILocation(line: 1324, column: 24, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1324, column: 15)
!2200 = !DILocation(line: 1324, column: 15, scope: !1334)
!2201 = !DILocation(line: 1327, column: 11, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1327, column: 11)
!2203 = !DILocation(line: 1330, column: 15, scope: !1334)
!2204 = !DILocation(line: 1352, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1352, column: 11)
!2206 = !DILocation(line: 1356, column: 24, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1356, column: 15)
!2208 = !DILocation(line: 1356, column: 15, scope: !1334)
!2209 = !DILocation(line: 1374, column: 26, scope: !1511)
!2210 = !DILocation(line: 1374, column: 34, scope: !1511)
!2211 = !DILocation(line: 0, scope: !1511)
!2212 = !DILocation(line: 1375, column: 20, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1511, file: !1204, line: 1375, column: 17)
!2214 = !DILocation(line: 1375, column: 17, scope: !1511)
!2215 = !DILocation(line: 1397, column: 11, scope: !1513)
!2216 = !DILocation(line: 0, scope: !1513)
!2217 = !DILocation(line: 1397, column: 11, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1513, file: !1204, line: 1397, column: 11)
!2219 = !DILocation(line: 1397, column: 11, scope: !1519)
!2220 = !DILocation(line: 1397, column: 11, scope: !1517)
!2221 = !DILocation(line: 0, scope: !1517)
!2222 = !DILocation(line: 1397, column: 11, scope: !1523)
!2223 = !DILocation(line: 0, scope: !1525)
!2224 = !DILocation(line: 1397, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !1204, line: 1397, column: 11)
!2226 = distinct !DILexicalBlock(scope: !1525, file: !1204, line: 1397, column: 11)
!2227 = !DILocation(line: 1397, column: 11, scope: !2226)
!2228 = !DILocation(line: 0, scope: !1522)
!2229 = !DILocation(line: 1397, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !1204, line: 1397, column: 11)
!2231 = distinct !DILexicalBlock(scope: !1522, file: !1204, line: 1397, column: 11)
!2232 = !DILocation(line: 1397, column: 11, scope: !2231)
!2233 = distinct !{!2233, !2232, !2232, !732}
!2234 = distinct !{!2234, !2227, !2227, !732}
!2235 = !DILocation(line: 1397, column: 11, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !1519, file: !1204, line: 1397, column: 11)
!2237 = !DILocation(line: 0, scope: !1742, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 1397, column: 11, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !1204, line: 1397, column: 11)
!2240 = !DILocation(line: 297, column: 16, scope: !1742, inlinedAt: !2238)
!2241 = !DILocation(line: 297, column: 3, scope: !1742, inlinedAt: !2238)
!2242 = !DILocation(line: 297, column: 13, scope: !1742, inlinedAt: !2238)
!2243 = !DILocation(line: 299, column: 14, scope: !1758, inlinedAt: !2238)
!2244 = !DILocation(line: 0, scope: !1749, inlinedAt: !2238)
!2245 = !DILocation(line: 299, column: 7, scope: !1750, inlinedAt: !2238)
!2246 = !DILocation(line: 300, column: 7, scope: !1750, inlinedAt: !2238)
!2247 = distinct !{!2247, !2241, !2248, !732}
!2248 = !DILocation(line: 301, column: 5, scope: !1742, inlinedAt: !2238)
!2249 = !DILocation(line: 1397, column: 11, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !1204, line: 1397, column: 11)
!2251 = !DILocation(line: 1397, column: 11, scope: !2239)
!2252 = !DILocation(line: 0, scope: !1768, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 1397, column: 11, scope: !2250)
!2254 = !DILocation(line: 307, column: 16, scope: !1768, inlinedAt: !2253)
!2255 = !DILocation(line: 307, column: 3, scope: !1768, inlinedAt: !2253)
!2256 = !DILocation(line: 307, column: 13, scope: !1768, inlinedAt: !2253)
!2257 = !DILocation(line: 309, column: 14, scope: !1781, inlinedAt: !2253)
!2258 = !DILocation(line: 0, scope: !1773, inlinedAt: !2253)
!2259 = !DILocation(line: 309, column: 7, scope: !1774, inlinedAt: !2253)
!2260 = !DILocation(line: 310, column: 7, scope: !1774, inlinedAt: !2253)
!2261 = distinct !{!2261, !2255, !2262, !732}
!2262 = !DILocation(line: 311, column: 5, scope: !1768, inlinedAt: !2253)
!2263 = !DILocation(line: 1397, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2250, file: !1204, line: 1397, column: 11)
!2265 = !DILocation(line: 0, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1404, column: 11)
!2267 = !DILocation(line: 1404, column: 28, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2266, file: !1204, line: 1404, column: 11)
!2269 = !DILocation(line: 1404, column: 11, scope: !2266)
!2270 = !DILocation(line: 1404, column: 56, scope: !2268)
!2271 = !DILocation(line: 1404, column: 11, scope: !2268)
!2272 = distinct !{!2272, !2269, !2273, !732}
!2273 = !DILocation(line: 1405, column: 13, scope: !2266)
!2274 = !DILocation(line: 1415, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !1334, file: !1204, line: 1415, column: 15)
!2276 = !DILocation(line: 1414, column: 9, scope: !1334)
!2277 = !{!1566, !831, i64 32}
!2278 = !DILocation(line: 1415, column: 28, scope: !2275)
!2279 = !DILocation(line: 1415, column: 15, scope: !1334)
!2280 = !DILocation(line: 1424, column: 24, scope: !1527)
!2281 = !{!1566, !913, i64 40}
!2282 = !DILocation(line: 1424, column: 20, scope: !1527)
!2283 = !DILocation(line: 0, scope: !1527)
!2284 = !DILocation(line: 1453, column: 36, scope: !1527)
!2285 = !DILocation(line: 1453, column: 40, scope: !1527)
!2286 = !DILocation(line: 1453, column: 49, scope: !1527)
!2287 = !DILocation(line: 1453, column: 54, scope: !1527)
!2288 = !DILocation(line: 1453, column: 57, scope: !1527)
!2289 = !DILocation(line: 1453, column: 63, scope: !1527)
!2290 = !DILocation(line: 1453, column: 29, scope: !1527)
!2291 = !DILocation(line: 1454, column: 30, scope: !1527)
!2292 = !DILocation(line: 1454, column: 35, scope: !1527)
!2293 = !DILocation(line: 1455, column: 34, scope: !1527)
!2294 = !DILocation(line: 1456, column: 29, scope: !1527)
!2295 = !DILocation(line: 1458, column: 13, scope: !1527)
!2296 = !DILocation(line: 1461, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1560, file: !1204, line: 1461, column: 17)
!2298 = !DILocation(line: 1463, column: 23, scope: !1560)
!2299 = !DILocation(line: 1464, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1560, file: !1204, line: 1464, column: 17)
!2301 = !DILocation(line: 1466, column: 23, scope: !1560)
!2302 = !DILocation(line: 1467, column: 17, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !1560, file: !1204, line: 1467, column: 17)
!2304 = !DILocation(line: 1471, column: 30, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1560, file: !1204, line: 1471, column: 21)
!2306 = !DILocation(line: 1471, column: 21, scope: !1560)
!2307 = !DILocation(line: 1473, column: 30, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1560, file: !1204, line: 1473, column: 21)
!2309 = !DILocation(line: 1473, column: 21, scope: !1560)
!2310 = !DILocation(line: 1483, column: 13, scope: !1334)
!2311 = !DILocation(line: 1484, column: 13, scope: !1334)
!2312 = !DILocation(line: 1489, column: 9, scope: !1334)
!2313 = !DILocation(line: 0, scope: !1532)
!2314 = !DILocation(line: 1492, column: 18, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1532, file: !1204, line: 1492, column: 13)
!2316 = !DILocation(line: 0, scope: !2315)
!2317 = !DILocation(line: 1492, column: 32, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !1204, line: 1492, column: 13)
!2319 = !DILocation(line: 1492, column: 28, scope: !2318)
!2320 = !DILocation(line: 1492, column: 40, scope: !2318)
!2321 = !DILocation(line: 1492, column: 56, scope: !2318)
!2322 = !DILocation(line: 1492, column: 13, scope: !2315)
!2323 = distinct !{!2323, !2322, !2324, !732}
!2324 = !DILocation(line: 1493, column: 15, scope: !2315)
!2325 = !DILocation(line: 1494, column: 13, scope: !1534)
!2326 = !DILocation(line: 0, scope: !1534)
!2327 = !DILocation(line: 1494, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !1534, file: !1204, line: 1494, column: 13)
!2329 = !DILocation(line: 1494, column: 13, scope: !1540)
!2330 = !DILocation(line: 1494, column: 13, scope: !1538)
!2331 = !DILocation(line: 0, scope: !1538)
!2332 = !DILocation(line: 1494, column: 13, scope: !1544)
!2333 = !DILocation(line: 0, scope: !1546)
!2334 = !DILocation(line: 1494, column: 13, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !1204, line: 1494, column: 13)
!2336 = distinct !DILexicalBlock(scope: !1546, file: !1204, line: 1494, column: 13)
!2337 = !DILocation(line: 1494, column: 13, scope: !2336)
!2338 = !DILocation(line: 0, scope: !1543)
!2339 = !DILocation(line: 1494, column: 13, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !1204, line: 1494, column: 13)
!2341 = distinct !DILexicalBlock(scope: !1543, file: !1204, line: 1494, column: 13)
!2342 = !DILocation(line: 1494, column: 13, scope: !2341)
!2343 = distinct !{!2343, !2342, !2342, !732}
!2344 = distinct !{!2344, !2337, !2337, !732}
!2345 = !DILocation(line: 1494, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !1204, line: 1494, column: 13)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !1204, line: 1494, column: 13)
!2348 = distinct !DILexicalBlock(scope: !1540, file: !1204, line: 1494, column: 13)
!2349 = !DILocation(line: 1494, column: 13, scope: !2347)
!2350 = !DILocation(line: 0, scope: !1768, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1494, column: 13, scope: !2346)
!2352 = !DILocation(line: 307, column: 3, scope: !1768, inlinedAt: !2351)
!2353 = !DILocation(line: 307, column: 13, scope: !1768, inlinedAt: !2351)
!2354 = !DILocation(line: 309, column: 14, scope: !1781, inlinedAt: !2351)
!2355 = !DILocation(line: 0, scope: !1773, inlinedAt: !2351)
!2356 = !DILocation(line: 309, column: 7, scope: !1774, inlinedAt: !2351)
!2357 = !DILocation(line: 310, column: 7, scope: !1774, inlinedAt: !2351)
!2358 = !DILocation(line: 307, column: 16, scope: !1768, inlinedAt: !2351)
!2359 = distinct !{!2359, !2352, !2360, !732}
!2360 = !DILocation(line: 311, column: 5, scope: !1768, inlinedAt: !2351)
!2361 = !DILocation(line: 1494, column: 13, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2346, file: !1204, line: 1494, column: 13)
!2363 = !DILocation(line: 1498, column: 5, scope: !1295)
!2364 = !DILocation(line: 561, column: 45, scope: !1295)
!2365 = distinct !{!2365, !1578, !2366, !732}
!2366 = !DILocation(line: 1498, column: 5, scope: !1296)
!2367 = !DILocation(line: 1506, column: 1, scope: !1273)
!2368 = !DISubprogram(name: "fputc", scope: !757, file: !757, line: 525, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!35, !35, !1225}
!2371 = !DISubprogram(name: "strftime", scope: !1099, file: !1099, line: 88, type: !2372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!122, !14, !122, !6, !1241}
!2374 = distinct !DISubprogram(name: "parse_long_options", scope: !58, file: !58, line: 45, type: !2375, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2378)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !35, !816, !6, !6, !6, !2377, null}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2379 = !DILocalVariable(name: "argc", arg: 1, scope: !2374, file: !58, line: 45, type: !35)
!2380 = !DILocalVariable(name: "argv", arg: 2, scope: !2374, file: !58, line: 46, type: !816)
!2381 = !DILocalVariable(name: "command_name", arg: 3, scope: !2374, file: !58, line: 47, type: !6)
!2382 = !DILocalVariable(name: "package", arg: 4, scope: !2374, file: !58, line: 48, type: !6)
!2383 = !DILocalVariable(name: "version", arg: 5, scope: !2374, file: !58, line: 49, type: !6)
!2384 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2374, file: !58, line: 50, type: !2377)
!2385 = !DILocalVariable(name: "c", scope: !2374, file: !58, line: 53, type: !35)
!2386 = !DILocalVariable(name: "saved_opterr", scope: !2374, file: !58, line: 54, type: !35)
!2387 = !DILocalVariable(name: "authors", scope: !2388, file: !58, line: 72, type: !2392)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !58, line: 71, column: 11)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !58, line: 65, column: 9)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !58, line: 63, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2374, file: !58, line: 61, column: 7)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !757, line: 52, baseType: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2394, line: 32, baseType: !2395)
!2394 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !58, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2397, size: 192, elements: !788)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2397, file: !58, line: 72, baseType: !86, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2397, file: !58, line: 72, baseType: !86, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2397, file: !58, line: 72, baseType: !77, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2397, file: !58, line: 72, baseType: !77, size: 64, offset: 128)
!2403 = !DILocation(line: 0, scope: !2374)
!2404 = !DILocation(line: 56, column: 18, scope: !2374)
!2405 = !DILocation(line: 59, column: 10, scope: !2374)
!2406 = !DILocation(line: 61, column: 12, scope: !2391)
!2407 = !DILocation(line: 62, column: 7, scope: !2391)
!2408 = !DILocation(line: 62, column: 15, scope: !2391)
!2409 = !DILocation(line: 61, column: 7, scope: !2374)
!2410 = !DILocation(line: 67, column: 11, scope: !2389)
!2411 = !DILocation(line: 68, column: 11, scope: !2389)
!2412 = !DILocation(line: 72, column: 13, scope: !2388)
!2413 = !DILocation(line: 72, column: 21, scope: !2388)
!2414 = !DILocation(line: 73, column: 13, scope: !2388)
!2415 = !DILocation(line: 74, column: 29, scope: !2388)
!2416 = !DILocation(line: 74, column: 13, scope: !2388)
!2417 = !DILocation(line: 75, column: 13, scope: !2388)
!2418 = !DILocation(line: 85, column: 10, scope: !2374)
!2419 = !DILocation(line: 89, column: 10, scope: !2374)
!2420 = !DILocation(line: 90, column: 1, scope: !2374)
!2421 = !DISubprogram(name: "getopt_long", scope: !63, file: !63, line: 66, type: !2422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!35, !35, !2424, !6, !2426, !68}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2427 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !58, file: !58, line: 98, type: !2428, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !35, !816, !6, !6, !6, !48, !2377, null}
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441}
!2431 = !DILocalVariable(name: "argc", arg: 1, scope: !2427, file: !58, line: 98, type: !35)
!2432 = !DILocalVariable(name: "argv", arg: 2, scope: !2427, file: !58, line: 99, type: !816)
!2433 = !DILocalVariable(name: "command_name", arg: 3, scope: !2427, file: !58, line: 100, type: !6)
!2434 = !DILocalVariable(name: "package", arg: 4, scope: !2427, file: !58, line: 101, type: !6)
!2435 = !DILocalVariable(name: "version", arg: 5, scope: !2427, file: !58, line: 102, type: !6)
!2436 = !DILocalVariable(name: "scan_all", arg: 6, scope: !2427, file: !58, line: 103, type: !48)
!2437 = !DILocalVariable(name: "usage_func", arg: 7, scope: !2427, file: !58, line: 104, type: !2377)
!2438 = !DILocalVariable(name: "c", scope: !2427, file: !58, line: 107, type: !35)
!2439 = !DILocalVariable(name: "saved_opterr", scope: !2427, file: !58, line: 108, type: !35)
!2440 = !DILocalVariable(name: "optstring", scope: !2427, file: !58, line: 113, type: !6)
!2441 = !DILocalVariable(name: "authors", scope: !2442, file: !58, line: 125, type: !2392)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !58, line: 124, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !58, line: 118, column: 9)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !58, line: 116, column: 5)
!2445 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 115, column: 7)
!2446 = !DILocation(line: 0, scope: !2427)
!2447 = !DILocation(line: 108, column: 22, scope: !2427)
!2448 = !DILocation(line: 111, column: 10, scope: !2427)
!2449 = !DILocation(line: 113, column: 27, scope: !2427)
!2450 = !DILocation(line: 115, column: 12, scope: !2445)
!2451 = !DILocation(line: 115, column: 7, scope: !2427)
!2452 = !DILocation(line: 125, column: 13, scope: !2442)
!2453 = !DILocation(line: 125, column: 21, scope: !2442)
!2454 = !DILocation(line: 126, column: 13, scope: !2442)
!2455 = !DILocation(line: 127, column: 29, scope: !2442)
!2456 = !DILocation(line: 127, column: 13, scope: !2442)
!2457 = !DILocation(line: 128, column: 13, scope: !2442)
!2458 = !DILocation(line: 132, column: 26, scope: !2443)
!2459 = !DILocation(line: 133, column: 11, scope: !2443)
!2460 = !DILocation(line: 0, scope: !2443)
!2461 = !DILocation(line: 138, column: 10, scope: !2427)
!2462 = !DILocation(line: 139, column: 1, scope: !2427)
!2463 = distinct !DISubprogram(name: "set_program_name", scope: !75, file: !75, line: 39, type: !702, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "argv0", arg: 1, scope: !2463, file: !75, line: 39, type: !6)
!2466 = !DILocalVariable(name: "slash", scope: !2463, file: !75, line: 46, type: !6)
!2467 = !DILocalVariable(name: "base", scope: !2463, file: !75, line: 47, type: !6)
!2468 = !DILocation(line: 0, scope: !2463)
!2469 = !DILocation(line: 51, column: 13, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2463, file: !75, line: 51, column: 7)
!2471 = !DILocation(line: 51, column: 7, scope: !2463)
!2472 = !DILocation(line: 55, column: 14, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !75, line: 52, column: 5)
!2474 = !DILocation(line: 54, column: 7, scope: !2473)
!2475 = !DILocation(line: 56, column: 7, scope: !2473)
!2476 = !DILocation(line: 59, column: 11, scope: !2463)
!2477 = !DILocation(line: 60, column: 17, scope: !2463)
!2478 = !DILocation(line: 60, column: 11, scope: !2463)
!2479 = !DILocation(line: 61, column: 12, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2463, file: !75, line: 61, column: 7)
!2481 = !DILocation(line: 61, column: 20, scope: !2480)
!2482 = !DILocation(line: 61, column: 25, scope: !2480)
!2483 = !DILocation(line: 61, column: 42, scope: !2480)
!2484 = !DILocation(line: 61, column: 28, scope: !2480)
!2485 = !DILocation(line: 61, column: 61, scope: !2480)
!2486 = !DILocation(line: 61, column: 7, scope: !2463)
!2487 = !DILocation(line: 64, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !75, line: 64, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !75, line: 62, column: 5)
!2490 = !DILocation(line: 64, column: 36, scope: !2488)
!2491 = !DILocation(line: 64, column: 11, scope: !2489)
!2492 = !DILocation(line: 66, column: 24, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !75, line: 65, column: 9)
!2494 = !DILocation(line: 70, column: 41, scope: !2493)
!2495 = !DILocation(line: 72, column: 9, scope: !2493)
!2496 = !DILocation(line: 84, column: 16, scope: !2463)
!2497 = !DILocation(line: 90, column: 27, scope: !2463)
!2498 = !DILocation(line: 92, column: 1, scope: !2463)
!2499 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 122, type: !2500, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2503)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "o", arg: 1, scope: !2499, file: !82, line: 122, type: !2502)
!2505 = !DILocalVariable(name: "e", scope: !2499, file: !82, line: 124, type: !35)
!2506 = !DILocalVariable(name: "p", scope: !2499, file: !82, line: 125, type: !2502)
!2507 = !DILocation(line: 0, scope: !2499)
!2508 = !DILocation(line: 124, column: 11, scope: !2499)
!2509 = !DILocation(line: 125, column: 40, scope: !2499)
!2510 = !DILocation(line: 125, column: 31, scope: !2499)
!2511 = !DILocation(line: 127, column: 9, scope: !2499)
!2512 = !DILocation(line: 128, column: 3, scope: !2499)
!2513 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 133, type: !2514, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2518)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!84, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2518 = !{!2519}
!2519 = !DILocalVariable(name: "o", arg: 1, scope: !2513, file: !82, line: 133, type: !2516)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocation(line: 135, column: 11, scope: !2513)
!2522 = !DILocation(line: 135, column: 46, scope: !2513)
!2523 = !{!2524, !691, i64 0}
!2524 = !{!"quoting_options", !691, i64 0, !831, i64 4, !691, i64 8, !690, i64 40, !690, i64 48}
!2525 = !DILocation(line: 135, column: 3, scope: !2513)
!2526 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 141, type: !2527, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2502, !84}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "o", arg: 1, scope: !2526, file: !82, line: 141, type: !2502)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !82, line: 141, type: !84)
!2532 = !DILocation(line: 0, scope: !2526)
!2533 = !DILocation(line: 143, column: 4, scope: !2526)
!2534 = !DILocation(line: 143, column: 39, scope: !2526)
!2535 = !DILocation(line: 143, column: 45, scope: !2526)
!2536 = !DILocation(line: 144, column: 1, scope: !2526)
!2537 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 152, type: !2538, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!35, !2502, !8, !35}
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2547, !2548}
!2541 = !DILocalVariable(name: "o", arg: 1, scope: !2537, file: !82, line: 152, type: !2502)
!2542 = !DILocalVariable(name: "c", arg: 2, scope: !2537, file: !82, line: 152, type: !8)
!2543 = !DILocalVariable(name: "i", arg: 3, scope: !2537, file: !82, line: 152, type: !35)
!2544 = !DILocalVariable(name: "uc", scope: !2537, file: !82, line: 154, type: !198)
!2545 = !DILocalVariable(name: "p", scope: !2537, file: !82, line: 155, type: !2546)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!2547 = !DILocalVariable(name: "shift", scope: !2537, file: !82, line: 157, type: !35)
!2548 = !DILocalVariable(name: "r", scope: !2537, file: !82, line: 158, type: !35)
!2549 = !DILocation(line: 0, scope: !2537)
!2550 = !DILocation(line: 156, column: 6, scope: !2537)
!2551 = !DILocation(line: 156, column: 62, scope: !2537)
!2552 = !DILocation(line: 156, column: 57, scope: !2537)
!2553 = !DILocation(line: 157, column: 15, scope: !2537)
!2554 = !DILocation(line: 158, column: 12, scope: !2537)
!2555 = !DILocation(line: 158, column: 15, scope: !2537)
!2556 = !DILocation(line: 158, column: 25, scope: !2537)
!2557 = !DILocation(line: 159, column: 13, scope: !2537)
!2558 = !DILocation(line: 159, column: 18, scope: !2537)
!2559 = !DILocation(line: 159, column: 23, scope: !2537)
!2560 = !DILocation(line: 159, column: 6, scope: !2537)
!2561 = !DILocation(line: 160, column: 3, scope: !2537)
!2562 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 168, type: !2563, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!35, !2502, !35}
!2565 = !{!2566, !2567, !2568}
!2566 = !DILocalVariable(name: "o", arg: 1, scope: !2562, file: !82, line: 168, type: !2502)
!2567 = !DILocalVariable(name: "i", arg: 2, scope: !2562, file: !82, line: 168, type: !35)
!2568 = !DILocalVariable(name: "r", scope: !2562, file: !82, line: 170, type: !35)
!2569 = !DILocation(line: 0, scope: !2562)
!2570 = !DILocation(line: 171, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2562, file: !82, line: 171, column: 7)
!2572 = !DILocation(line: 171, column: 7, scope: !2562)
!2573 = !DILocation(line: 173, column: 10, scope: !2562)
!2574 = !{!2524, !831, i64 4}
!2575 = !DILocation(line: 174, column: 12, scope: !2562)
!2576 = !DILocation(line: 175, column: 3, scope: !2562)
!2577 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 179, type: !2578, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2502, !6, !6}
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "o", arg: 1, scope: !2577, file: !82, line: 179, type: !2502)
!2582 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2577, file: !82, line: 180, type: !6)
!2583 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2577, file: !82, line: 180, type: !6)
!2584 = !DILocation(line: 0, scope: !2577)
!2585 = !DILocation(line: 182, column: 8, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2577, file: !82, line: 182, column: 7)
!2587 = !DILocation(line: 182, column: 7, scope: !2577)
!2588 = !DILocation(line: 184, column: 6, scope: !2577)
!2589 = !DILocation(line: 184, column: 12, scope: !2577)
!2590 = !DILocation(line: 185, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2577, file: !82, line: 185, column: 7)
!2592 = !DILocation(line: 185, column: 19, scope: !2591)
!2593 = !DILocation(line: 186, column: 5, scope: !2591)
!2594 = !DILocation(line: 187, column: 6, scope: !2577)
!2595 = !DILocation(line: 187, column: 17, scope: !2577)
!2596 = !{!2524, !690, i64 40}
!2597 = !DILocation(line: 188, column: 6, scope: !2577)
!2598 = !DILocation(line: 188, column: 18, scope: !2577)
!2599 = !{!2524, !690, i64 48}
!2600 = !DILocation(line: 189, column: 1, scope: !2577)
!2601 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 784, type: !2602, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!120, !14, !120, !6, !120, !2516}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2605 = !DILocalVariable(name: "buffer", arg: 1, scope: !2601, file: !82, line: 784, type: !14)
!2606 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2601, file: !82, line: 784, type: !120)
!2607 = !DILocalVariable(name: "arg", arg: 3, scope: !2601, file: !82, line: 785, type: !6)
!2608 = !DILocalVariable(name: "argsize", arg: 4, scope: !2601, file: !82, line: 785, type: !120)
!2609 = !DILocalVariable(name: "o", arg: 5, scope: !2601, file: !82, line: 786, type: !2516)
!2610 = !DILocalVariable(name: "p", scope: !2601, file: !82, line: 788, type: !2516)
!2611 = !DILocalVariable(name: "e", scope: !2601, file: !82, line: 789, type: !35)
!2612 = !DILocalVariable(name: "r", scope: !2601, file: !82, line: 790, type: !120)
!2613 = !DILocation(line: 0, scope: !2601)
!2614 = !DILocation(line: 788, column: 37, scope: !2601)
!2615 = !DILocation(line: 789, column: 11, scope: !2601)
!2616 = !DILocation(line: 791, column: 43, scope: !2601)
!2617 = !DILocation(line: 791, column: 53, scope: !2601)
!2618 = !DILocation(line: 791, column: 60, scope: !2601)
!2619 = !DILocation(line: 792, column: 43, scope: !2601)
!2620 = !DILocation(line: 792, column: 58, scope: !2601)
!2621 = !DILocation(line: 790, column: 14, scope: !2601)
!2622 = !DILocation(line: 793, column: 9, scope: !2601)
!2623 = !DILocation(line: 794, column: 3, scope: !2601)
!2624 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 256, type: !2625, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2629)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!120, !14, !120, !6, !120, !84, !35, !2627, !6, !6}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2654, !2655, !2656, !2657, !2658, !2661, !2662, !2677, !2680, !2681, !2688, !2691, !2692, !2693, !2694, !2695, !2696}
!2630 = !DILocalVariable(name: "buffer", arg: 1, scope: !2624, file: !82, line: 256, type: !14)
!2631 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2624, file: !82, line: 256, type: !120)
!2632 = !DILocalVariable(name: "arg", arg: 3, scope: !2624, file: !82, line: 257, type: !6)
!2633 = !DILocalVariable(name: "argsize", arg: 4, scope: !2624, file: !82, line: 257, type: !120)
!2634 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2624, file: !82, line: 258, type: !84)
!2635 = !DILocalVariable(name: "flags", arg: 6, scope: !2624, file: !82, line: 258, type: !35)
!2636 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2624, file: !82, line: 259, type: !2627)
!2637 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2624, file: !82, line: 260, type: !6)
!2638 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2624, file: !82, line: 261, type: !6)
!2639 = !DILocalVariable(name: "i", scope: !2624, file: !82, line: 263, type: !120)
!2640 = !DILocalVariable(name: "len", scope: !2624, file: !82, line: 264, type: !120)
!2641 = !DILocalVariable(name: "orig_buffersize", scope: !2624, file: !82, line: 265, type: !120)
!2642 = !DILocalVariable(name: "quote_string", scope: !2624, file: !82, line: 266, type: !6)
!2643 = !DILocalVariable(name: "quote_string_len", scope: !2624, file: !82, line: 267, type: !120)
!2644 = !DILocalVariable(name: "backslash_escapes", scope: !2624, file: !82, line: 268, type: !48)
!2645 = !DILocalVariable(name: "unibyte_locale", scope: !2624, file: !82, line: 269, type: !48)
!2646 = !DILocalVariable(name: "elide_outer_quotes", scope: !2624, file: !82, line: 270, type: !48)
!2647 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2624, file: !82, line: 271, type: !48)
!2648 = !DILocalVariable(name: "encountered_single_quote", scope: !2624, file: !82, line: 272, type: !48)
!2649 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2624, file: !82, line: 273, type: !48)
!2650 = !DILocalVariable(name: "c", scope: !2651, file: !82, line: 402, type: !198)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !82, line: 401, column: 5)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !82, line: 400, column: 3)
!2653 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 400, column: 3)
!2654 = !DILocalVariable(name: "esc", scope: !2651, file: !82, line: 403, type: !198)
!2655 = !DILocalVariable(name: "is_right_quote", scope: !2651, file: !82, line: 404, type: !48)
!2656 = !DILocalVariable(name: "escaping", scope: !2651, file: !82, line: 405, type: !48)
!2657 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2651, file: !82, line: 406, type: !48)
!2658 = !DILocalVariable(name: "m", scope: !2659, file: !82, line: 610, type: !120)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 608, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 426, column: 9)
!2661 = !DILocalVariable(name: "printable", scope: !2659, file: !82, line: 612, type: !48)
!2662 = !DILocalVariable(name: "mbstate", scope: !2663, file: !82, line: 621, type: !2665)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !82, line: 620, column: 15)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !82, line: 614, column: 17)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2666, line: 6, baseType: !2667)
!2666 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2668, line: 21, baseType: !2669)
!2668 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2668, line: 13, size: 64, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2669, file: !2668, line: 15, baseType: !35, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2669, file: !2668, line: 20, baseType: !2673, size: 32, offset: 32)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2669, file: !2668, line: 16, size: 32, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2673, file: !2668, line: 18, baseType: !86, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2673, file: !2668, line: 19, baseType: !882, size: 32)
!2677 = !DILocalVariable(name: "w", scope: !2678, file: !82, line: 631, type: !2679)
!2678 = distinct !DILexicalBlock(scope: !2663, file: !82, line: 630, column: 19)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !121, line: 74, baseType: !35)
!2680 = !DILocalVariable(name: "bytes", scope: !2678, file: !82, line: 632, type: !120)
!2681 = !DILocalVariable(name: "j", scope: !2682, file: !82, line: 657, type: !120)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !82, line: 656, column: 27)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !82, line: 654, column: 29)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !82, line: 649, column: 23)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !82, line: 641, column: 30)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !82, line: 636, column: 30)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !82, line: 634, column: 25)
!2688 = !DILocalVariable(name: "ilim", scope: !2689, file: !82, line: 684, type: !120)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !82, line: 681, column: 15)
!2690 = distinct !DILexicalBlock(scope: !2659, file: !82, line: 680, column: 17)
!2691 = !DILabel(scope: !2624, name: "process_input", file: !82, line: 314)
!2692 = !DILabel(scope: !2660, name: "c_and_shell_escape", file: !82, line: 512)
!2693 = !DILabel(scope: !2660, name: "c_escape", file: !82, line: 517)
!2694 = !DILabel(scope: !2651, name: "store_escape", file: !82, line: 719)
!2695 = !DILabel(scope: !2651, name: "store_c", file: !82, line: 722)
!2696 = !DILabel(scope: !2624, name: "force_outer_quoting_style", file: !82, line: 763)
!2697 = !DILocation(line: 0, scope: !2624)
!2698 = !DILocation(line: 269, column: 25, scope: !2624)
!2699 = !DILocation(line: 269, column: 36, scope: !2624)
!2700 = !DILocation(line: 270, column: 8, scope: !2624)
!2701 = !DILocation(line: 273, column: 3, scope: !2624)
!2702 = !DILocation(line: 265, column: 10, scope: !2624)
!2703 = !DILocation(line: 266, column: 15, scope: !2624)
!2704 = !DILocation(line: 267, column: 10, scope: !2624)
!2705 = !DILocation(line: 268, column: 8, scope: !2624)
!2706 = !DILocation(line: 271, column: 8, scope: !2624)
!2707 = !DILocation(line: 272, column: 8, scope: !2624)
!2708 = !DILocation(line: 273, column: 8, scope: !2624)
!2709 = !DILocation(line: 314, column: 2, scope: !2624)
!2710 = !DILocation(line: 316, column: 3, scope: !2624)
!2711 = !DILocation(line: 323, column: 11, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 317, column: 5)
!2713 = !DILocation(line: 323, column: 12, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !82, line: 323, column: 11)
!2715 = !DILocation(line: 324, column: 9, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !82, line: 324, column: 9)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !82, line: 324, column: 9)
!2718 = !DILocation(line: 324, column: 9, scope: !2717)
!2719 = !DILocation(line: 362, column: 26, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !82, line: 340, column: 11)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !82, line: 339, column: 13)
!2722 = distinct !DILexicalBlock(scope: !2712, file: !82, line: 338, column: 7)
!2723 = !DILocation(line: 363, column: 27, scope: !2720)
!2724 = !DILocation(line: 364, column: 11, scope: !2720)
!2725 = !DILocation(line: 365, column: 14, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !82, line: 365, column: 13)
!2727 = !DILocation(line: 365, column: 13, scope: !2722)
!2728 = !DILocation(line: 366, column: 43, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !82, line: 366, column: 11)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !82, line: 366, column: 11)
!2731 = !DILocation(line: 366, column: 11, scope: !2730)
!2732 = !DILocation(line: 367, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !82, line: 367, column: 13)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !82, line: 367, column: 13)
!2735 = !DILocation(line: 367, column: 13, scope: !2734)
!2736 = !DILocation(line: 366, column: 70, scope: !2729)
!2737 = distinct !{!2737, !2731, !2738, !732}
!2738 = !DILocation(line: 367, column: 13, scope: !2730)
!2739 = !DILocation(line: 264, column: 10, scope: !2624)
!2740 = !DILocation(line: 370, column: 28, scope: !2722)
!2741 = !DILocation(line: 372, column: 7, scope: !2712)
!2742 = !DILocation(line: 376, column: 7, scope: !2712)
!2743 = !DILocation(line: 379, column: 7, scope: !2712)
!2744 = !DILocation(line: 381, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2712, file: !82, line: 381, column: 11)
!2746 = !DILocation(line: 381, column: 11, scope: !2712)
!2747 = !DILocation(line: 386, column: 12, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2712, file: !82, line: 386, column: 11)
!2749 = !DILocation(line: 386, column: 11, scope: !2712)
!2750 = !DILocation(line: 387, column: 9, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !82, line: 387, column: 9)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !82, line: 387, column: 9)
!2753 = !DILocation(line: 387, column: 9, scope: !2752)
!2754 = !DILocation(line: 394, column: 7, scope: !2712)
!2755 = !DILocation(line: 397, column: 7, scope: !2712)
!2756 = !DILocation(line: 400, column: 8, scope: !2653)
!2757 = !DILocation(line: 0, scope: !2653)
!2758 = !DILocation(line: 400, column: 27, scope: !2652)
!2759 = !DILocation(line: 400, column: 19, scope: !2652)
!2760 = !DILocation(line: 400, column: 41, scope: !2652)
!2761 = !DILocation(line: 400, column: 48, scope: !2652)
!2762 = !DILocation(line: 400, column: 3, scope: !2653)
!2763 = !DILocation(line: 400, column: 60, scope: !2652)
!2764 = !DILocation(line: 0, scope: !2651)
!2765 = !DILocation(line: 409, column: 11, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 408, column: 11)
!2767 = !DILocation(line: 411, column: 17, scope: !2766)
!2768 = !DILocation(line: 412, column: 39, scope: !2766)
!2769 = !DILocation(line: 416, column: 32, scope: !2766)
!2770 = !DILocation(line: 412, column: 19, scope: !2766)
!2771 = !DILocation(line: 412, column: 15, scope: !2766)
!2772 = !DILocation(line: 417, column: 11, scope: !2766)
!2773 = !DILocation(line: 417, column: 26, scope: !2766)
!2774 = !DILocation(line: 417, column: 14, scope: !2766)
!2775 = !DILocation(line: 417, column: 63, scope: !2766)
!2776 = !DILocation(line: 408, column: 11, scope: !2651)
!2777 = !DILocation(line: 424, column: 11, scope: !2651)
!2778 = !DILocation(line: 425, column: 7, scope: !2651)
!2779 = !DILocation(line: 428, column: 15, scope: !2660)
!2780 = !DILocation(line: 430, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !82, line: 430, column: 15)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !82, line: 429, column: 13)
!2783 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 428, column: 15)
!2784 = !DILocation(line: 430, column: 15, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !82, line: 430, column: 15)
!2786 = !DILocation(line: 430, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !82, line: 430, column: 15)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !82, line: 430, column: 15)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !82, line: 430, column: 15)
!2790 = !DILocation(line: 430, column: 15, scope: !2788)
!2791 = !DILocation(line: 430, column: 15, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !82, line: 430, column: 15)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !82, line: 430, column: 15)
!2794 = !DILocation(line: 430, column: 15, scope: !2793)
!2795 = !DILocation(line: 430, column: 15, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !82, line: 430, column: 15)
!2797 = distinct !DILexicalBlock(scope: !2789, file: !82, line: 430, column: 15)
!2798 = !DILocation(line: 430, column: 15, scope: !2797)
!2799 = !DILocation(line: 430, column: 15, scope: !2789)
!2800 = !DILocation(line: 430, column: 15, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !82, line: 430, column: 15)
!2802 = distinct !DILexicalBlock(scope: !2781, file: !82, line: 430, column: 15)
!2803 = !DILocation(line: 430, column: 15, scope: !2802)
!2804 = !DILocation(line: 438, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2782, file: !82, line: 437, column: 19)
!2806 = !DILocation(line: 438, column: 48, scope: !2805)
!2807 = !DILocation(line: 438, column: 59, scope: !2805)
!2808 = !DILocation(line: 440, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !82, line: 440, column: 19)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !82, line: 440, column: 19)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !82, line: 439, column: 17)
!2812 = !DILocation(line: 440, column: 19, scope: !2810)
!2813 = !DILocation(line: 441, column: 19, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !82, line: 441, column: 19)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !82, line: 441, column: 19)
!2816 = !DILocation(line: 441, column: 19, scope: !2815)
!2817 = !DILocation(line: 442, column: 17, scope: !2811)
!2818 = !DILocation(line: 449, column: 20, scope: !2783)
!2819 = !DILocation(line: 454, column: 11, scope: !2660)
!2820 = !DILocation(line: 457, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 455, column: 13)
!2822 = !DILocation(line: 463, column: 19, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2821, file: !82, line: 462, column: 19)
!2824 = !DILocation(line: 463, column: 47, scope: !2823)
!2825 = !DILocation(line: 463, column: 41, scope: !2823)
!2826 = !DILocation(line: 463, column: 52, scope: !2823)
!2827 = !DILocation(line: 462, column: 19, scope: !2821)
!2828 = !DILocation(line: 464, column: 25, scope: !2823)
!2829 = !DILocation(line: 464, column: 17, scope: !2823)
!2830 = !DILocation(line: 471, column: 25, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !82, line: 465, column: 19)
!2832 = !DILocation(line: 475, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !82, line: 475, column: 21)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !82, line: 475, column: 21)
!2835 = !DILocation(line: 475, column: 21, scope: !2834)
!2836 = !DILocation(line: 476, column: 21, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !82, line: 476, column: 21)
!2838 = distinct !DILexicalBlock(scope: !2831, file: !82, line: 476, column: 21)
!2839 = !DILocation(line: 476, column: 21, scope: !2838)
!2840 = !DILocation(line: 477, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !82, line: 477, column: 21)
!2842 = distinct !DILexicalBlock(scope: !2831, file: !82, line: 477, column: 21)
!2843 = !DILocation(line: 477, column: 21, scope: !2842)
!2844 = !DILocation(line: 478, column: 21, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !82, line: 478, column: 21)
!2846 = distinct !DILexicalBlock(scope: !2831, file: !82, line: 478, column: 21)
!2847 = !DILocation(line: 478, column: 21, scope: !2846)
!2848 = !DILocation(line: 479, column: 21, scope: !2831)
!2849 = !DILocation(line: 492, column: 31, scope: !2660)
!2850 = !DILocation(line: 493, column: 31, scope: !2660)
!2851 = !DILocation(line: 495, column: 31, scope: !2660)
!2852 = !DILocation(line: 496, column: 31, scope: !2660)
!2853 = !DILocation(line: 497, column: 31, scope: !2660)
!2854 = !DILocation(line: 500, column: 15, scope: !2660)
!2855 = !DILocation(line: 502, column: 19, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !82, line: 501, column: 13)
!2857 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 500, column: 15)
!2858 = !DILocation(line: 509, column: 33, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 509, column: 15)
!2860 = !DILocation(line: 0, scope: !2660)
!2861 = !DILocation(line: 512, column: 9, scope: !2660)
!2862 = !DILocation(line: 514, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 513, column: 15)
!2864 = !DILocation(line: 517, column: 9, scope: !2660)
!2865 = !DILocation(line: 518, column: 15, scope: !2660)
!2866 = !DILocation(line: 526, column: 15, scope: !2660)
!2867 = !DILocation(line: 526, column: 40, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 526, column: 15)
!2869 = !DILocation(line: 526, column: 47, scope: !2868)
!2870 = !DILocation(line: 526, column: 18, scope: !2868)
!2871 = !DILocation(line: 530, column: 17, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 530, column: 15)
!2873 = !DILocation(line: 530, column: 15, scope: !2660)
!2874 = !DILocation(line: 535, column: 11, scope: !2660)
!2875 = !DILocation(line: 549, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 548, column: 15)
!2877 = !DILocation(line: 556, column: 15, scope: !2660)
!2878 = !DILocation(line: 558, column: 19, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !82, line: 557, column: 13)
!2880 = distinct !DILexicalBlock(scope: !2660, file: !82, line: 556, column: 15)
!2881 = !DILocation(line: 561, column: 19, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !82, line: 561, column: 19)
!2883 = !DILocation(line: 561, column: 30, scope: !2882)
!2884 = !DILocation(line: 570, column: 15, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !82, line: 570, column: 15)
!2886 = distinct !DILexicalBlock(scope: !2879, file: !82, line: 570, column: 15)
!2887 = !DILocation(line: 570, column: 15, scope: !2886)
!2888 = !DILocation(line: 571, column: 15, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !82, line: 571, column: 15)
!2890 = distinct !DILexicalBlock(scope: !2879, file: !82, line: 571, column: 15)
!2891 = !DILocation(line: 571, column: 15, scope: !2890)
!2892 = !DILocation(line: 572, column: 15, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !82, line: 572, column: 15)
!2894 = distinct !DILexicalBlock(scope: !2879, file: !82, line: 572, column: 15)
!2895 = !DILocation(line: 572, column: 15, scope: !2894)
!2896 = !DILocation(line: 574, column: 13, scope: !2879)
!2897 = !DILocation(line: 614, column: 17, scope: !2659)
!2898 = !DILocation(line: 0, scope: !2659)
!2899 = !DILocation(line: 617, column: 29, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2664, file: !82, line: 615, column: 15)
!2901 = !{!1002, !1002, i64 0}
!2902 = !DILocation(line: 617, column: 27, scope: !2900)
!2903 = !DILocation(line: 678, column: 40, scope: !2659)
!2904 = !DILocation(line: 680, column: 23, scope: !2690)
!2905 = !DILocation(line: 621, column: 17, scope: !2663)
!2906 = !DILocation(line: 621, column: 27, scope: !2663)
!2907 = !DILocalVariable(name: "__dest", arg: 1, scope: !2908, file: !2909, line: 57, type: !77)
!2908 = distinct !DISubprogram(name: "memset", scope: !2909, file: !2909, line: 57, type: !2910, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !2912)
!2909 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!77, !77, !35, !120}
!2912 = !{!2907, !2913, !2914}
!2913 = !DILocalVariable(name: "__ch", arg: 2, scope: !2908, file: !2909, line: 57, type: !35)
!2914 = !DILocalVariable(name: "__len", arg: 3, scope: !2908, file: !2909, line: 57, type: !120)
!2915 = !DILocation(line: 0, scope: !2908, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 622, column: 17, scope: !2663)
!2917 = !DILocation(line: 59, column: 10, scope: !2908, inlinedAt: !2916)
!2918 = !DILocation(line: 626, column: 29, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2663, file: !82, line: 626, column: 21)
!2920 = !DILocation(line: 626, column: 21, scope: !2663)
!2921 = !DILocation(line: 627, column: 29, scope: !2919)
!2922 = !DILocation(line: 627, column: 19, scope: !2919)
!2923 = !DILocation(line: 629, column: 17, scope: !2663)
!2924 = !DILocation(line: 624, column: 19, scope: !2663)
!2925 = !DILocation(line: 625, column: 27, scope: !2663)
!2926 = !DILocation(line: 631, column: 21, scope: !2678)
!2927 = !DILocation(line: 632, column: 56, scope: !2678)
!2928 = !DILocation(line: 632, column: 50, scope: !2678)
!2929 = !DILocation(line: 633, column: 53, scope: !2678)
!2930 = !DILocation(line: 0, scope: !2678)
!2931 = !DILocation(line: 632, column: 36, scope: !2678)
!2932 = !DILocation(line: 634, column: 25, scope: !2678)
!2933 = !DILocation(line: 644, column: 38, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2685, file: !82, line: 642, column: 23)
!2935 = !DILocation(line: 644, column: 48, scope: !2934)
!2936 = !DILocation(line: 644, column: 25, scope: !2934)
!2937 = !DILocation(line: 644, column: 51, scope: !2934)
!2938 = !DILocation(line: 645, column: 28, scope: !2934)
!2939 = !DILocation(line: 644, column: 34, scope: !2934)
!2940 = distinct !{!2940, !2936, !2938, !732}
!2941 = !DILocation(line: 655, column: 29, scope: !2683)
!2942 = !DILocation(line: 0, scope: !2682)
!2943 = !DILocation(line: 659, column: 49, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !82, line: 658, column: 29)
!2945 = distinct !DILexicalBlock(scope: !2682, file: !82, line: 658, column: 29)
!2946 = !DILocation(line: 659, column: 39, scope: !2944)
!2947 = !DILocation(line: 659, column: 31, scope: !2944)
!2948 = !DILocation(line: 658, column: 53, scope: !2944)
!2949 = !DILocation(line: 658, column: 43, scope: !2944)
!2950 = !DILocation(line: 658, column: 29, scope: !2945)
!2951 = distinct !{!2951, !2950, !2952, !732}
!2952 = !DILocation(line: 667, column: 33, scope: !2945)
!2953 = !DILocation(line: 674, column: 19, scope: !2663)
!2954 = !DILocation(line: 670, column: 41, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2684, file: !82, line: 670, column: 29)
!2956 = !DILocation(line: 670, column: 31, scope: !2955)
!2957 = !DILocation(line: 670, column: 29, scope: !2684)
!2958 = !DILocation(line: 672, column: 27, scope: !2684)
!2959 = !DILocation(line: 675, column: 26, scope: !2663)
!2960 = !DILocation(line: 675, column: 24, scope: !2663)
!2961 = !DILocation(line: 674, column: 19, scope: !2678)
!2962 = distinct !{!2962, !2923, !2963, !732}
!2963 = !DILocation(line: 675, column: 44, scope: !2663)
!2964 = !DILocation(line: 676, column: 15, scope: !2664)
!2965 = !DILocation(line: 680, column: 19, scope: !2690)
!2966 = !DILocation(line: 680, column: 45, scope: !2690)
!2967 = !DILocation(line: 684, column: 33, scope: !2689)
!2968 = !DILocation(line: 0, scope: !2689)
!2969 = !DILocation(line: 686, column: 17, scope: !2689)
!2970 = !DILocation(line: 405, column: 12, scope: !2651)
!2971 = !DILocation(line: 688, column: 43, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !82, line: 688, column: 25)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !82, line: 687, column: 19)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !82, line: 686, column: 17)
!2975 = distinct !DILexicalBlock(scope: !2689, file: !82, line: 686, column: 17)
!2976 = !DILocation(line: 690, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !82, line: 690, column: 25)
!2978 = distinct !DILexicalBlock(scope: !2972, file: !82, line: 689, column: 23)
!2979 = !DILocation(line: 690, column: 25, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !82, line: 690, column: 25)
!2981 = !DILocation(line: 690, column: 25, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !82, line: 690, column: 25)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !82, line: 690, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !82, line: 690, column: 25)
!2985 = !DILocation(line: 690, column: 25, scope: !2983)
!2986 = !DILocation(line: 690, column: 25, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !82, line: 690, column: 25)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !82, line: 690, column: 25)
!2989 = !DILocation(line: 690, column: 25, scope: !2988)
!2990 = !DILocation(line: 690, column: 25, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !82, line: 690, column: 25)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !82, line: 690, column: 25)
!2993 = !DILocation(line: 690, column: 25, scope: !2992)
!2994 = !DILocation(line: 690, column: 25, scope: !2984)
!2995 = !DILocation(line: 690, column: 25, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !82, line: 690, column: 25)
!2997 = distinct !DILexicalBlock(scope: !2977, file: !82, line: 690, column: 25)
!2998 = !DILocation(line: 690, column: 25, scope: !2997)
!2999 = !DILocation(line: 691, column: 25, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !82, line: 691, column: 25)
!3001 = distinct !DILexicalBlock(scope: !2978, file: !82, line: 691, column: 25)
!3002 = !DILocation(line: 691, column: 25, scope: !3001)
!3003 = !DILocation(line: 692, column: 25, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !82, line: 692, column: 25)
!3005 = distinct !DILexicalBlock(scope: !2978, file: !82, line: 692, column: 25)
!3006 = !DILocation(line: 692, column: 25, scope: !3005)
!3007 = !DILocation(line: 693, column: 38, scope: !2978)
!3008 = !DILocation(line: 693, column: 33, scope: !2978)
!3009 = !DILocation(line: 694, column: 23, scope: !2978)
!3010 = !DILocation(line: 695, column: 30, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2972, file: !82, line: 695, column: 30)
!3012 = !DILocation(line: 695, column: 30, scope: !2972)
!3013 = !DILocation(line: 697, column: 25, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !82, line: 697, column: 25)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !82, line: 697, column: 25)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !82, line: 696, column: 23)
!3017 = !DILocation(line: 697, column: 25, scope: !3015)
!3018 = !DILocation(line: 699, column: 23, scope: !3016)
!3019 = !DILocation(line: 700, column: 35, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2973, file: !82, line: 700, column: 25)
!3021 = !DILocation(line: 700, column: 30, scope: !3020)
!3022 = !DILocation(line: 700, column: 25, scope: !2973)
!3023 = !DILocation(line: 702, column: 21, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !82, line: 702, column: 21)
!3025 = distinct !DILexicalBlock(scope: !2973, file: !82, line: 702, column: 21)
!3026 = !DILocation(line: 702, column: 21, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !82, line: 702, column: 21)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !82, line: 702, column: 21)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !82, line: 702, column: 21)
!3030 = !DILocation(line: 702, column: 21, scope: !3028)
!3031 = !DILocation(line: 702, column: 21, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !82, line: 702, column: 21)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !82, line: 702, column: 21)
!3034 = !DILocation(line: 702, column: 21, scope: !3033)
!3035 = !DILocation(line: 702, column: 21, scope: !3029)
!3036 = !DILocation(line: 0, scope: !2973)
!3037 = !DILocation(line: 703, column: 21, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !82, line: 703, column: 21)
!3039 = distinct !DILexicalBlock(scope: !2973, file: !82, line: 703, column: 21)
!3040 = !DILocation(line: 703, column: 21, scope: !3039)
!3041 = !DILocation(line: 704, column: 25, scope: !2973)
!3042 = !DILocation(line: 686, column: 17, scope: !2974)
!3043 = distinct !{!3043, !3044, !3045}
!3044 = !DILocation(line: 686, column: 17, scope: !2975)
!3045 = !DILocation(line: 705, column: 19, scope: !2975)
!3046 = !DILocation(line: 416, column: 30, scope: !2766)
!3047 = !DILocation(line: 712, column: 34, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 712, column: 11)
!3049 = !DILocation(line: 715, column: 35, scope: !3048)
!3050 = !DILocation(line: 715, column: 17, scope: !3048)
!3051 = !DILocation(line: 715, column: 47, scope: !3048)
!3052 = !DILocation(line: 715, column: 65, scope: !3048)
!3053 = !DILocation(line: 716, column: 11, scope: !3048)
!3054 = !DILocation(line: 712, column: 11, scope: !2651)
!3055 = !DILocation(line: 400, column: 10, scope: !2653)
!3056 = !DILocation(line: 719, column: 5, scope: !2651)
!3057 = !DILocation(line: 720, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 720, column: 7)
!3059 = !DILocation(line: 720, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3058, file: !82, line: 720, column: 7)
!3061 = !DILocation(line: 720, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !82, line: 720, column: 7)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !82, line: 720, column: 7)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !82, line: 720, column: 7)
!3065 = !DILocation(line: 720, column: 7, scope: !3063)
!3066 = !DILocation(line: 720, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !82, line: 720, column: 7)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !82, line: 720, column: 7)
!3069 = !DILocation(line: 720, column: 7, scope: !3068)
!3070 = !DILocation(line: 720, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !82, line: 720, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !82, line: 720, column: 7)
!3073 = !DILocation(line: 720, column: 7, scope: !3072)
!3074 = !DILocation(line: 720, column: 7, scope: !3064)
!3075 = !DILocation(line: 720, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !82, line: 720, column: 7)
!3077 = distinct !DILexicalBlock(scope: !3058, file: !82, line: 720, column: 7)
!3078 = !DILocation(line: 720, column: 7, scope: !3077)
!3079 = !DILocation(line: 722, column: 5, scope: !2651)
!3080 = !DILocation(line: 723, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !82, line: 723, column: 7)
!3082 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 723, column: 7)
!3083 = !DILocation(line: 424, column: 9, scope: !2651)
!3084 = !DILocation(line: 723, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !82, line: 723, column: 7)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !82, line: 723, column: 7)
!3087 = distinct !DILexicalBlock(scope: !3081, file: !82, line: 723, column: 7)
!3088 = !DILocation(line: 723, column: 7, scope: !3086)
!3089 = !DILocation(line: 723, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !82, line: 723, column: 7)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !82, line: 723, column: 7)
!3092 = !DILocation(line: 723, column: 7, scope: !3091)
!3093 = !DILocation(line: 723, column: 7, scope: !3087)
!3094 = !DILocation(line: 724, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !82, line: 724, column: 7)
!3096 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 724, column: 7)
!3097 = !DILocation(line: 724, column: 7, scope: !3096)
!3098 = !DILocation(line: 726, column: 13, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2651, file: !82, line: 726, column: 11)
!3100 = !DILocation(line: 726, column: 11, scope: !2651)
!3101 = !DILocation(line: 728, column: 5, scope: !2652)
!3102 = !DILocation(line: 400, column: 75, scope: !2652)
!3103 = !DILocation(line: 400, column: 3, scope: !2652)
!3104 = distinct !{!3104, !2762, !3105, !732}
!3105 = !DILocation(line: 728, column: 5, scope: !2653)
!3106 = !DILocation(line: 730, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 730, column: 7)
!3108 = !DILocation(line: 730, column: 16, scope: !3107)
!3109 = !DILocation(line: 738, column: 51, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 738, column: 7)
!3111 = !DILocation(line: 741, column: 11, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !82, line: 741, column: 11)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !82, line: 740, column: 5)
!3114 = !DILocation(line: 741, column: 11, scope: !3113)
!3115 = !DILocation(line: 742, column: 16, scope: !3112)
!3116 = !DILocation(line: 742, column: 9, scope: !3112)
!3117 = !DILocation(line: 746, column: 18, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3112, file: !82, line: 746, column: 16)
!3119 = !DILocation(line: 746, column: 29, scope: !3118)
!3120 = !DILocation(line: 755, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 755, column: 7)
!3122 = !DILocation(line: 755, column: 20, scope: !3121)
!3123 = !DILocation(line: 756, column: 12, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !82, line: 756, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !82, line: 756, column: 5)
!3126 = !DILocation(line: 756, column: 5, scope: !3125)
!3127 = !DILocation(line: 757, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !82, line: 757, column: 7)
!3129 = distinct !DILexicalBlock(scope: !3124, file: !82, line: 757, column: 7)
!3130 = !DILocation(line: 757, column: 7, scope: !3129)
!3131 = !DILocation(line: 756, column: 39, scope: !3124)
!3132 = distinct !{!3132, !3126, !3133, !732}
!3133 = !DILocation(line: 757, column: 7, scope: !3125)
!3134 = !DILocation(line: 759, column: 11, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 759, column: 7)
!3136 = !DILocation(line: 759, column: 7, scope: !2624)
!3137 = !DILocation(line: 760, column: 5, scope: !3135)
!3138 = !DILocation(line: 760, column: 17, scope: !3135)
!3139 = !DILocation(line: 763, column: 2, scope: !2624)
!3140 = !DILocation(line: 766, column: 51, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2624, file: !82, line: 766, column: 7)
!3142 = !DILocation(line: 766, column: 21, scope: !3141)
!3143 = !DILocation(line: 770, column: 42, scope: !2624)
!3144 = !DILocation(line: 768, column: 10, scope: !2624)
!3145 = !DILocation(line: 768, column: 3, scope: !2624)
!3146 = !DILocation(line: 772, column: 1, scope: !2624)
!3147 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 207, type: !3148, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!6, !6, !84}
!3150 = !{!3151, !3152, !3153, !3154}
!3151 = !DILocalVariable(name: "msgid", arg: 1, scope: !3147, file: !82, line: 207, type: !6)
!3152 = !DILocalVariable(name: "s", arg: 2, scope: !3147, file: !82, line: 207, type: !84)
!3153 = !DILocalVariable(name: "translation", scope: !3147, file: !82, line: 209, type: !6)
!3154 = !DILocalVariable(name: "locale_code", scope: !3147, file: !82, line: 210, type: !6)
!3155 = !DILocation(line: 0, scope: !3147)
!3156 = !DILocation(line: 209, column: 29, scope: !3147)
!3157 = !DILocation(line: 212, column: 19, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3147, file: !82, line: 212, column: 7)
!3159 = !DILocation(line: 212, column: 7, scope: !3147)
!3160 = !DILocation(line: 233, column: 17, scope: !3147)
!3161 = !DILocalVariable(name: "s1", arg: 1, scope: !3162, file: !3163, line: 160, type: !6)
!3162 = distinct !DISubprogram(name: "strcaseeq0", scope: !3163, file: !3163, line: 160, type: !3164, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3166)
!3163 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!3166 = !{!3161, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176}
!3167 = !DILocalVariable(name: "s2", arg: 2, scope: !3162, file: !3163, line: 160, type: !6)
!3168 = !DILocalVariable(name: "s20", arg: 3, scope: !3162, file: !3163, line: 160, type: !8)
!3169 = !DILocalVariable(name: "s21", arg: 4, scope: !3162, file: !3163, line: 160, type: !8)
!3170 = !DILocalVariable(name: "s22", arg: 5, scope: !3162, file: !3163, line: 160, type: !8)
!3171 = !DILocalVariable(name: "s23", arg: 6, scope: !3162, file: !3163, line: 160, type: !8)
!3172 = !DILocalVariable(name: "s24", arg: 7, scope: !3162, file: !3163, line: 160, type: !8)
!3173 = !DILocalVariable(name: "s25", arg: 8, scope: !3162, file: !3163, line: 160, type: !8)
!3174 = !DILocalVariable(name: "s26", arg: 9, scope: !3162, file: !3163, line: 160, type: !8)
!3175 = !DILocalVariable(name: "s27", arg: 10, scope: !3162, file: !3163, line: 160, type: !8)
!3176 = !DILocalVariable(name: "s28", arg: 11, scope: !3162, file: !3163, line: 160, type: !8)
!3177 = !DILocation(line: 0, scope: !3162, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 234, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3147, file: !82, line: 234, column: 7)
!3180 = !DILocation(line: 162, column: 7, scope: !3181, inlinedAt: !3178)
!3181 = distinct !DILexicalBlock(scope: !3162, file: !3163, line: 162, column: 7)
!3182 = !DILocalVariable(name: "s1", arg: 1, scope: !3183, file: !3163, line: 146, type: !6)
!3183 = distinct !DISubprogram(name: "strcaseeq1", scope: !3163, file: !3163, line: 146, type: !3184, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!3186 = !{!3182, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3187 = !DILocalVariable(name: "s2", arg: 2, scope: !3183, file: !3163, line: 146, type: !6)
!3188 = !DILocalVariable(name: "s21", arg: 3, scope: !3183, file: !3163, line: 146, type: !8)
!3189 = !DILocalVariable(name: "s22", arg: 4, scope: !3183, file: !3163, line: 146, type: !8)
!3190 = !DILocalVariable(name: "s23", arg: 5, scope: !3183, file: !3163, line: 146, type: !8)
!3191 = !DILocalVariable(name: "s24", arg: 6, scope: !3183, file: !3163, line: 146, type: !8)
!3192 = !DILocalVariable(name: "s25", arg: 7, scope: !3183, file: !3163, line: 146, type: !8)
!3193 = !DILocalVariable(name: "s26", arg: 8, scope: !3183, file: !3163, line: 146, type: !8)
!3194 = !DILocalVariable(name: "s27", arg: 9, scope: !3183, file: !3163, line: 146, type: !8)
!3195 = !DILocalVariable(name: "s28", arg: 10, scope: !3183, file: !3163, line: 146, type: !8)
!3196 = !DILocation(line: 0, scope: !3183, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 167, column: 16, scope: !3198, inlinedAt: !3178)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !3163, line: 164, column: 11)
!3199 = distinct !DILexicalBlock(scope: !3181, file: !3163, line: 163, column: 5)
!3200 = !DILocation(line: 148, column: 7, scope: !3201, inlinedAt: !3197)
!3201 = distinct !DILexicalBlock(scope: !3183, file: !3163, line: 148, column: 7)
!3202 = !DILocalVariable(name: "s1", arg: 1, scope: !3203, file: !3163, line: 132, type: !6)
!3203 = distinct !DISubprogram(name: "strcaseeq2", scope: !3163, file: !3163, line: 132, type: !3204, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!3206 = !{!3202, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3207 = !DILocalVariable(name: "s2", arg: 2, scope: !3203, file: !3163, line: 132, type: !6)
!3208 = !DILocalVariable(name: "s22", arg: 3, scope: !3203, file: !3163, line: 132, type: !8)
!3209 = !DILocalVariable(name: "s23", arg: 4, scope: !3203, file: !3163, line: 132, type: !8)
!3210 = !DILocalVariable(name: "s24", arg: 5, scope: !3203, file: !3163, line: 132, type: !8)
!3211 = !DILocalVariable(name: "s25", arg: 6, scope: !3203, file: !3163, line: 132, type: !8)
!3212 = !DILocalVariable(name: "s26", arg: 7, scope: !3203, file: !3163, line: 132, type: !8)
!3213 = !DILocalVariable(name: "s27", arg: 8, scope: !3203, file: !3163, line: 132, type: !8)
!3214 = !DILocalVariable(name: "s28", arg: 9, scope: !3203, file: !3163, line: 132, type: !8)
!3215 = !DILocation(line: 0, scope: !3203, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 153, column: 16, scope: !3217, inlinedAt: !3197)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3163, line: 150, column: 11)
!3218 = distinct !DILexicalBlock(scope: !3201, file: !3163, line: 149, column: 5)
!3219 = !DILocation(line: 134, column: 7, scope: !3220, inlinedAt: !3216)
!3220 = distinct !DILexicalBlock(scope: !3203, file: !3163, line: 134, column: 7)
!3221 = !DILocalVariable(name: "s1", arg: 1, scope: !3222, file: !3163, line: 118, type: !6)
!3222 = distinct !DISubprogram(name: "strcaseeq3", scope: !3163, file: !3163, line: 118, type: !3223, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!35, !6, !6, !8, !8, !8, !8, !8, !8}
!3225 = !{!3221, !3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3226 = !DILocalVariable(name: "s2", arg: 2, scope: !3222, file: !3163, line: 118, type: !6)
!3227 = !DILocalVariable(name: "s23", arg: 3, scope: !3222, file: !3163, line: 118, type: !8)
!3228 = !DILocalVariable(name: "s24", arg: 4, scope: !3222, file: !3163, line: 118, type: !8)
!3229 = !DILocalVariable(name: "s25", arg: 5, scope: !3222, file: !3163, line: 118, type: !8)
!3230 = !DILocalVariable(name: "s26", arg: 6, scope: !3222, file: !3163, line: 118, type: !8)
!3231 = !DILocalVariable(name: "s27", arg: 7, scope: !3222, file: !3163, line: 118, type: !8)
!3232 = !DILocalVariable(name: "s28", arg: 8, scope: !3222, file: !3163, line: 118, type: !8)
!3233 = !DILocation(line: 0, scope: !3222, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 139, column: 16, scope: !3235, inlinedAt: !3216)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3163, line: 136, column: 11)
!3236 = distinct !DILexicalBlock(scope: !3220, file: !3163, line: 135, column: 5)
!3237 = !DILocation(line: 120, column: 7, scope: !3238, inlinedAt: !3234)
!3238 = distinct !DILexicalBlock(scope: !3222, file: !3163, line: 120, column: 7)
!3239 = !DILocation(line: 120, column: 7, scope: !3222, inlinedAt: !3234)
!3240 = !DILocalVariable(name: "s1", arg: 1, scope: !3241, file: !3163, line: 104, type: !6)
!3241 = distinct !DISubprogram(name: "strcaseeq4", scope: !3163, file: !3163, line: 104, type: !3242, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!35, !6, !6, !8, !8, !8, !8, !8}
!3244 = !{!3240, !3245, !3246, !3247, !3248, !3249, !3250}
!3245 = !DILocalVariable(name: "s2", arg: 2, scope: !3241, file: !3163, line: 104, type: !6)
!3246 = !DILocalVariable(name: "s24", arg: 3, scope: !3241, file: !3163, line: 104, type: !8)
!3247 = !DILocalVariable(name: "s25", arg: 4, scope: !3241, file: !3163, line: 104, type: !8)
!3248 = !DILocalVariable(name: "s26", arg: 5, scope: !3241, file: !3163, line: 104, type: !8)
!3249 = !DILocalVariable(name: "s27", arg: 6, scope: !3241, file: !3163, line: 104, type: !8)
!3250 = !DILocalVariable(name: "s28", arg: 7, scope: !3241, file: !3163, line: 104, type: !8)
!3251 = !DILocation(line: 0, scope: !3241, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 125, column: 16, scope: !3253, inlinedAt: !3234)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3163, line: 122, column: 11)
!3254 = distinct !DILexicalBlock(scope: !3238, file: !3163, line: 121, column: 5)
!3255 = !DILocation(line: 106, column: 7, scope: !3256, inlinedAt: !3252)
!3256 = distinct !DILexicalBlock(scope: !3241, file: !3163, line: 106, column: 7)
!3257 = !DILocation(line: 106, column: 7, scope: !3241, inlinedAt: !3252)
!3258 = !DILocalVariable(name: "s1", arg: 1, scope: !3259, file: !3163, line: 90, type: !6)
!3259 = distinct !DISubprogram(name: "strcaseeq5", scope: !3163, file: !3163, line: 90, type: !3260, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!35, !6, !6, !8, !8, !8, !8}
!3262 = !{!3258, !3263, !3264, !3265, !3266, !3267}
!3263 = !DILocalVariable(name: "s2", arg: 2, scope: !3259, file: !3163, line: 90, type: !6)
!3264 = !DILocalVariable(name: "s25", arg: 3, scope: !3259, file: !3163, line: 90, type: !8)
!3265 = !DILocalVariable(name: "s26", arg: 4, scope: !3259, file: !3163, line: 90, type: !8)
!3266 = !DILocalVariable(name: "s27", arg: 5, scope: !3259, file: !3163, line: 90, type: !8)
!3267 = !DILocalVariable(name: "s28", arg: 6, scope: !3259, file: !3163, line: 90, type: !8)
!3268 = !DILocation(line: 0, scope: !3259, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 111, column: 16, scope: !3270, inlinedAt: !3252)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !3163, line: 108, column: 11)
!3271 = distinct !DILexicalBlock(scope: !3256, file: !3163, line: 107, column: 5)
!3272 = !DILocation(line: 92, column: 7, scope: !3273, inlinedAt: !3269)
!3273 = distinct !DILexicalBlock(scope: !3259, file: !3163, line: 92, column: 7)
!3274 = !DILocation(line: 92, column: 7, scope: !3259, inlinedAt: !3269)
!3275 = !DILocation(line: 235, column: 12, scope: !3179)
!3276 = !DILocation(line: 235, column: 21, scope: !3179)
!3277 = !DILocation(line: 235, column: 5, scope: !3179)
!3278 = !DILocation(line: 0, scope: !3183, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 167, column: 16, scope: !3198, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 236, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3147, file: !82, line: 236, column: 7)
!3282 = !DILocation(line: 148, column: 7, scope: !3201, inlinedAt: !3279)
!3283 = !DILocation(line: 0, scope: !3203, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 153, column: 16, scope: !3217, inlinedAt: !3279)
!3285 = !DILocation(line: 134, column: 7, scope: !3220, inlinedAt: !3284)
!3286 = !DILocation(line: 134, column: 7, scope: !3203, inlinedAt: !3284)
!3287 = !DILocation(line: 0, scope: !3222, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 139, column: 16, scope: !3235, inlinedAt: !3284)
!3289 = !DILocation(line: 120, column: 7, scope: !3238, inlinedAt: !3288)
!3290 = !DILocation(line: 120, column: 7, scope: !3222, inlinedAt: !3288)
!3291 = !DILocation(line: 0, scope: !3241, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 125, column: 16, scope: !3253, inlinedAt: !3288)
!3293 = !DILocation(line: 106, column: 7, scope: !3256, inlinedAt: !3292)
!3294 = !DILocation(line: 106, column: 7, scope: !3241, inlinedAt: !3292)
!3295 = !DILocation(line: 0, scope: !3259, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 111, column: 16, scope: !3270, inlinedAt: !3292)
!3297 = !DILocation(line: 92, column: 7, scope: !3273, inlinedAt: !3296)
!3298 = !DILocation(line: 92, column: 7, scope: !3259, inlinedAt: !3296)
!3299 = !DILocalVariable(name: "s1", arg: 1, scope: !3300, file: !3163, line: 76, type: !6)
!3300 = distinct !DISubprogram(name: "strcaseeq6", scope: !3163, file: !3163, line: 76, type: !3301, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!35, !6, !6, !8, !8, !8}
!3303 = !{!3299, !3304, !3305, !3306, !3307}
!3304 = !DILocalVariable(name: "s2", arg: 2, scope: !3300, file: !3163, line: 76, type: !6)
!3305 = !DILocalVariable(name: "s26", arg: 3, scope: !3300, file: !3163, line: 76, type: !8)
!3306 = !DILocalVariable(name: "s27", arg: 4, scope: !3300, file: !3163, line: 76, type: !8)
!3307 = !DILocalVariable(name: "s28", arg: 5, scope: !3300, file: !3163, line: 76, type: !8)
!3308 = !DILocation(line: 0, scope: !3300, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 97, column: 16, scope: !3310, inlinedAt: !3296)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3163, line: 94, column: 11)
!3311 = distinct !DILexicalBlock(scope: !3273, file: !3163, line: 93, column: 5)
!3312 = !DILocation(line: 78, column: 7, scope: !3313, inlinedAt: !3309)
!3313 = distinct !DILexicalBlock(scope: !3300, file: !3163, line: 78, column: 7)
!3314 = !DILocation(line: 78, column: 7, scope: !3300, inlinedAt: !3309)
!3315 = !DILocalVariable(name: "s1", arg: 1, scope: !3316, file: !3163, line: 62, type: !6)
!3316 = distinct !DISubprogram(name: "strcaseeq7", scope: !3163, file: !3163, line: 62, type: !3317, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!35, !6, !6, !8, !8}
!3319 = !{!3315, !3320, !3321, !3322}
!3320 = !DILocalVariable(name: "s2", arg: 2, scope: !3316, file: !3163, line: 62, type: !6)
!3321 = !DILocalVariable(name: "s27", arg: 3, scope: !3316, file: !3163, line: 62, type: !8)
!3322 = !DILocalVariable(name: "s28", arg: 4, scope: !3316, file: !3163, line: 62, type: !8)
!3323 = !DILocation(line: 0, scope: !3316, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 83, column: 16, scope: !3325, inlinedAt: !3309)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3163, line: 80, column: 11)
!3326 = distinct !DILexicalBlock(scope: !3313, file: !3163, line: 79, column: 5)
!3327 = !DILocation(line: 64, column: 7, scope: !3328, inlinedAt: !3324)
!3328 = distinct !DILexicalBlock(scope: !3316, file: !3163, line: 64, column: 7)
!3329 = !DILocation(line: 236, column: 7, scope: !3147)
!3330 = !DILocation(line: 237, column: 12, scope: !3281)
!3331 = !DILocation(line: 237, column: 21, scope: !3281)
!3332 = !DILocation(line: 237, column: 5, scope: !3281)
!3333 = !DILocation(line: 239, column: 13, scope: !3147)
!3334 = !DILocation(line: 239, column: 11, scope: !3147)
!3335 = !DILocation(line: 239, column: 3, scope: !3147)
!3336 = !DILocation(line: 240, column: 1, scope: !3147)
!3337 = !DISubprogram(name: "iswprint", scope: !3338, file: !3338, line: 120, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3338 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!35, !86}
!3341 = !DISubprogram(name: "mbsinit", scope: !3342, file: !3342, line: 292, type: !3343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3342 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!35, !3345}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!3347 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 799, type: !3348, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!14, !6, !120, !2516}
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "arg", arg: 1, scope: !3347, file: !82, line: 799, type: !6)
!3352 = !DILocalVariable(name: "argsize", arg: 2, scope: !3347, file: !82, line: 799, type: !120)
!3353 = !DILocalVariable(name: "o", arg: 3, scope: !3347, file: !82, line: 800, type: !2516)
!3354 = !DILocation(line: 0, scope: !3347)
!3355 = !DILocalVariable(name: "arg", arg: 1, scope: !3356, file: !82, line: 812, type: !6)
!3356 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 812, type: !3357, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!14, !6, !120, !221, !2516}
!3359 = !{!3355, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3360 = !DILocalVariable(name: "argsize", arg: 2, scope: !3356, file: !82, line: 812, type: !120)
!3361 = !DILocalVariable(name: "size", arg: 3, scope: !3356, file: !82, line: 812, type: !221)
!3362 = !DILocalVariable(name: "o", arg: 4, scope: !3356, file: !82, line: 813, type: !2516)
!3363 = !DILocalVariable(name: "p", scope: !3356, file: !82, line: 815, type: !2516)
!3364 = !DILocalVariable(name: "e", scope: !3356, file: !82, line: 816, type: !35)
!3365 = !DILocalVariable(name: "flags", scope: !3356, file: !82, line: 818, type: !35)
!3366 = !DILocalVariable(name: "bufsize", scope: !3356, file: !82, line: 819, type: !120)
!3367 = !DILocalVariable(name: "buf", scope: !3356, file: !82, line: 823, type: !14)
!3368 = !DILocation(line: 0, scope: !3356, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 802, column: 10, scope: !3347)
!3370 = !DILocation(line: 815, column: 37, scope: !3356, inlinedAt: !3369)
!3371 = !DILocation(line: 816, column: 11, scope: !3356, inlinedAt: !3369)
!3372 = !DILocation(line: 818, column: 18, scope: !3356, inlinedAt: !3369)
!3373 = !DILocation(line: 818, column: 24, scope: !3356, inlinedAt: !3369)
!3374 = !DILocation(line: 819, column: 69, scope: !3356, inlinedAt: !3369)
!3375 = !DILocation(line: 820, column: 53, scope: !3356, inlinedAt: !3369)
!3376 = !DILocation(line: 821, column: 49, scope: !3356, inlinedAt: !3369)
!3377 = !DILocation(line: 822, column: 49, scope: !3356, inlinedAt: !3369)
!3378 = !DILocation(line: 819, column: 20, scope: !3356, inlinedAt: !3369)
!3379 = !DILocation(line: 822, column: 62, scope: !3356, inlinedAt: !3369)
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !217, line: 216, type: !120)
!3381 = distinct !DISubprogram(name: "xcharalloc", scope: !217, file: !217, line: 216, type: !3382, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3383)
!3382 = !DISubroutineType(types: !260)
!3383 = !{!3380}
!3384 = !DILocation(line: 0, scope: !3381, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 823, column: 15, scope: !3356, inlinedAt: !3369)
!3386 = !DILocation(line: 218, column: 10, scope: !3381, inlinedAt: !3385)
!3387 = !DILocation(line: 824, column: 60, scope: !3356, inlinedAt: !3369)
!3388 = !DILocation(line: 826, column: 32, scope: !3356, inlinedAt: !3369)
!3389 = !DILocation(line: 826, column: 47, scope: !3356, inlinedAt: !3369)
!3390 = !DILocation(line: 824, column: 3, scope: !3356, inlinedAt: !3369)
!3391 = !DILocation(line: 827, column: 9, scope: !3356, inlinedAt: !3369)
!3392 = !DILocation(line: 802, column: 3, scope: !3347)
!3393 = !DILocation(line: 0, scope: !3356)
!3394 = !DILocation(line: 815, column: 37, scope: !3356)
!3395 = !DILocation(line: 816, column: 11, scope: !3356)
!3396 = !DILocation(line: 818, column: 18, scope: !3356)
!3397 = !DILocation(line: 818, column: 27, scope: !3356)
!3398 = !DILocation(line: 818, column: 24, scope: !3356)
!3399 = !DILocation(line: 819, column: 69, scope: !3356)
!3400 = !DILocation(line: 820, column: 53, scope: !3356)
!3401 = !DILocation(line: 821, column: 49, scope: !3356)
!3402 = !DILocation(line: 822, column: 49, scope: !3356)
!3403 = !DILocation(line: 819, column: 20, scope: !3356)
!3404 = !DILocation(line: 822, column: 62, scope: !3356)
!3405 = !DILocation(line: 0, scope: !3381, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 823, column: 15, scope: !3356)
!3407 = !DILocation(line: 218, column: 10, scope: !3381, inlinedAt: !3406)
!3408 = !DILocation(line: 824, column: 60, scope: !3356)
!3409 = !DILocation(line: 826, column: 32, scope: !3356)
!3410 = !DILocation(line: 826, column: 47, scope: !3356)
!3411 = !DILocation(line: 824, column: 3, scope: !3356)
!3412 = !DILocation(line: 827, column: 9, scope: !3356)
!3413 = !DILocation(line: 828, column: 7, scope: !3356)
!3414 = !DILocation(line: 829, column: 11, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3356, file: !82, line: 828, column: 7)
!3416 = !DILocation(line: 829, column: 5, scope: !3415)
!3417 = !DILocation(line: 830, column: 3, scope: !3356)
!3418 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 848, type: !859, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3419)
!3419 = !{!3420, !3421}
!3420 = !DILocalVariable(name: "sv", scope: !3418, file: !82, line: 850, type: !151)
!3421 = !DILocalVariable(name: "i", scope: !3418, file: !82, line: 851, type: !35)
!3422 = !DILocation(line: 850, column: 24, scope: !3418)
!3423 = !DILocation(line: 0, scope: !3418)
!3424 = !DILocation(line: 852, column: 19, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !82, line: 852, column: 3)
!3426 = distinct !DILexicalBlock(scope: !3418, file: !82, line: 852, column: 3)
!3427 = !DILocation(line: 852, column: 17, scope: !3425)
!3428 = !DILocation(line: 852, column: 3, scope: !3426)
!3429 = !DILocation(line: 853, column: 17, scope: !3425)
!3430 = !{!3431, !690, i64 8}
!3431 = !{!"slotvec", !913, i64 0, !690, i64 8}
!3432 = !DILocation(line: 853, column: 5, scope: !3425)
!3433 = !DILocation(line: 852, column: 28, scope: !3425)
!3434 = distinct !{!3434, !3428, !3435, !732}
!3435 = !DILocation(line: 853, column: 20, scope: !3426)
!3436 = !DILocation(line: 854, column: 13, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3418, file: !82, line: 854, column: 7)
!3438 = !DILocation(line: 854, column: 17, scope: !3437)
!3439 = !DILocation(line: 854, column: 7, scope: !3418)
!3440 = !DILocation(line: 856, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !82, line: 855, column: 5)
!3442 = !DILocation(line: 857, column: 21, scope: !3441)
!3443 = !{!3431, !913, i64 0}
!3444 = !DILocation(line: 858, column: 20, scope: !3441)
!3445 = !DILocation(line: 859, column: 5, scope: !3441)
!3446 = !DILocation(line: 860, column: 10, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3418, file: !82, line: 860, column: 7)
!3448 = !DILocation(line: 860, column: 7, scope: !3418)
!3449 = !DILocation(line: 862, column: 13, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3447, file: !82, line: 861, column: 5)
!3451 = !DILocation(line: 862, column: 7, scope: !3450)
!3452 = !DILocation(line: 863, column: 15, scope: !3450)
!3453 = !DILocation(line: 864, column: 5, scope: !3450)
!3454 = !DILocation(line: 865, column: 10, scope: !3418)
!3455 = !DILocation(line: 866, column: 1, scope: !3418)
!3456 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 931, type: !811, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3457)
!3457 = !{!3458, !3459}
!3458 = !DILocalVariable(name: "n", arg: 1, scope: !3456, file: !82, line: 931, type: !35)
!3459 = !DILocalVariable(name: "arg", arg: 2, scope: !3456, file: !82, line: 931, type: !6)
!3460 = !DILocation(line: 0, scope: !3456)
!3461 = !DILocation(line: 933, column: 10, scope: !3456)
!3462 = !DILocation(line: 933, column: 3, scope: !3456)
!3463 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 877, type: !3464, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!14, !35, !6, !120, !2516}
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3476, !3477, !3479, !3480, !3481}
!3467 = !DILocalVariable(name: "n", arg: 1, scope: !3463, file: !82, line: 877, type: !35)
!3468 = !DILocalVariable(name: "arg", arg: 2, scope: !3463, file: !82, line: 877, type: !6)
!3469 = !DILocalVariable(name: "argsize", arg: 3, scope: !3463, file: !82, line: 877, type: !120)
!3470 = !DILocalVariable(name: "options", arg: 4, scope: !3463, file: !82, line: 878, type: !2516)
!3471 = !DILocalVariable(name: "e", scope: !3463, file: !82, line: 880, type: !35)
!3472 = !DILocalVariable(name: "sv", scope: !3463, file: !82, line: 882, type: !151)
!3473 = !DILocalVariable(name: "preallocated", scope: !3474, file: !82, line: 889, type: !48)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !82, line: 888, column: 5)
!3475 = distinct !DILexicalBlock(scope: !3463, file: !82, line: 887, column: 7)
!3476 = !DILocalVariable(name: "nmax", scope: !3474, file: !82, line: 890, type: !35)
!3477 = !DILocalVariable(name: "size", scope: !3478, file: !82, line: 903, type: !120)
!3478 = distinct !DILexicalBlock(scope: !3463, file: !82, line: 902, column: 3)
!3479 = !DILocalVariable(name: "val", scope: !3478, file: !82, line: 904, type: !14)
!3480 = !DILocalVariable(name: "flags", scope: !3478, file: !82, line: 906, type: !35)
!3481 = !DILocalVariable(name: "qsize", scope: !3478, file: !82, line: 907, type: !120)
!3482 = !DILocation(line: 0, scope: !3463)
!3483 = !DILocation(line: 880, column: 11, scope: !3463)
!3484 = !DILocation(line: 882, column: 24, scope: !3463)
!3485 = !DILocation(line: 884, column: 9, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3463, file: !82, line: 884, column: 7)
!3487 = !DILocation(line: 884, column: 7, scope: !3463)
!3488 = !DILocation(line: 885, column: 5, scope: !3486)
!3489 = !DILocation(line: 887, column: 7, scope: !3475)
!3490 = !DILocation(line: 887, column: 14, scope: !3475)
!3491 = !DILocation(line: 887, column: 7, scope: !3463)
!3492 = !DILocation(line: 889, column: 31, scope: !3474)
!3493 = !DILocation(line: 0, scope: !3474)
!3494 = !DILocation(line: 892, column: 16, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3474, file: !82, line: 892, column: 11)
!3496 = !DILocation(line: 892, column: 11, scope: !3474)
!3497 = !DILocation(line: 893, column: 9, scope: !3495)
!3498 = !DILocation(line: 895, column: 32, scope: !3474)
!3499 = !DILocation(line: 895, column: 61, scope: !3474)
!3500 = !DILocation(line: 895, column: 66, scope: !3474)
!3501 = !DILocation(line: 895, column: 22, scope: !3474)
!3502 = !DILocation(line: 895, column: 15, scope: !3474)
!3503 = !DILocation(line: 896, column: 11, scope: !3474)
!3504 = !DILocation(line: 897, column: 15, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3474, file: !82, line: 896, column: 11)
!3506 = !{i64 0, i64 8, !912, i64 8, i64 8, !689}
!3507 = !DILocation(line: 897, column: 9, scope: !3505)
!3508 = !DILocation(line: 898, column: 20, scope: !3474)
!3509 = !DILocation(line: 898, column: 18, scope: !3474)
!3510 = !DILocation(line: 898, column: 15, scope: !3474)
!3511 = !DILocation(line: 898, column: 38, scope: !3474)
!3512 = !DILocation(line: 898, column: 31, scope: !3474)
!3513 = !DILocation(line: 898, column: 48, scope: !3474)
!3514 = !DILocation(line: 0, scope: !2908, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 898, column: 7, scope: !3474)
!3516 = !DILocation(line: 59, column: 10, scope: !2908, inlinedAt: !3515)
!3517 = !DILocation(line: 899, column: 14, scope: !3474)
!3518 = !DILocation(line: 900, column: 5, scope: !3474)
!3519 = !DILocation(line: 903, column: 19, scope: !3478)
!3520 = !DILocation(line: 903, column: 25, scope: !3478)
!3521 = !DILocation(line: 0, scope: !3478)
!3522 = !DILocation(line: 904, column: 23, scope: !3478)
!3523 = !DILocation(line: 906, column: 26, scope: !3478)
!3524 = !DILocation(line: 906, column: 32, scope: !3478)
!3525 = !DILocation(line: 908, column: 55, scope: !3478)
!3526 = !DILocation(line: 909, column: 46, scope: !3478)
!3527 = !DILocation(line: 910, column: 55, scope: !3478)
!3528 = !DILocation(line: 911, column: 55, scope: !3478)
!3529 = !DILocation(line: 907, column: 20, scope: !3478)
!3530 = !DILocation(line: 913, column: 14, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3478, file: !82, line: 913, column: 9)
!3532 = !DILocation(line: 913, column: 9, scope: !3478)
!3533 = !DILocation(line: 915, column: 35, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !82, line: 914, column: 7)
!3535 = !DILocation(line: 915, column: 20, scope: !3534)
!3536 = !DILocation(line: 916, column: 17, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !82, line: 916, column: 13)
!3538 = !DILocation(line: 916, column: 13, scope: !3534)
!3539 = !DILocation(line: 917, column: 11, scope: !3537)
!3540 = !DILocation(line: 0, scope: !3381, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 918, column: 27, scope: !3534)
!3542 = !DILocation(line: 218, column: 10, scope: !3381, inlinedAt: !3541)
!3543 = !DILocation(line: 918, column: 19, scope: !3534)
!3544 = !DILocation(line: 919, column: 69, scope: !3534)
!3545 = !DILocation(line: 921, column: 44, scope: !3534)
!3546 = !DILocation(line: 922, column: 44, scope: !3534)
!3547 = !DILocation(line: 919, column: 9, scope: !3534)
!3548 = !DILocation(line: 923, column: 7, scope: !3534)
!3549 = !DILocation(line: 925, column: 11, scope: !3478)
!3550 = !DILocation(line: 926, column: 5, scope: !3478)
!3551 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 937, type: !3552, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!14, !35, !6, !120}
!3554 = !{!3555, !3556, !3557}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3551, file: !82, line: 937, type: !35)
!3556 = !DILocalVariable(name: "arg", arg: 2, scope: !3551, file: !82, line: 937, type: !6)
!3557 = !DILocalVariable(name: "argsize", arg: 3, scope: !3551, file: !82, line: 937, type: !120)
!3558 = !DILocation(line: 0, scope: !3551)
!3559 = !DILocation(line: 939, column: 10, scope: !3551)
!3560 = !DILocation(line: 939, column: 3, scope: !3551)
!3561 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 943, type: !852, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3562)
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "arg", arg: 1, scope: !3561, file: !82, line: 943, type: !6)
!3564 = !DILocation(line: 0, scope: !3561)
!3565 = !DILocation(line: 0, scope: !3456, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 945, column: 10, scope: !3561)
!3567 = !DILocation(line: 933, column: 10, scope: !3456, inlinedAt: !3566)
!3568 = !DILocation(line: 945, column: 3, scope: !3561)
!3569 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 949, type: !3570, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!14, !6, !120}
!3572 = !{!3573, !3574}
!3573 = !DILocalVariable(name: "arg", arg: 1, scope: !3569, file: !82, line: 949, type: !6)
!3574 = !DILocalVariable(name: "argsize", arg: 2, scope: !3569, file: !82, line: 949, type: !120)
!3575 = !DILocation(line: 0, scope: !3569)
!3576 = !DILocation(line: 0, scope: !3551, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 951, column: 10, scope: !3569)
!3578 = !DILocation(line: 939, column: 10, scope: !3551, inlinedAt: !3577)
!3579 = !DILocation(line: 951, column: 3, scope: !3569)
!3580 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 955, type: !3581, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!14, !35, !84, !6}
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DILocalVariable(name: "n", arg: 1, scope: !3580, file: !82, line: 955, type: !35)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !82, line: 955, type: !84)
!3586 = !DILocalVariable(name: "arg", arg: 3, scope: !3580, file: !82, line: 955, type: !6)
!3587 = !DILocalVariable(name: "o", scope: !3580, file: !82, line: 957, type: !2517)
!3588 = !DILocation(line: 0, scope: !3580)
!3589 = !DILocation(line: 957, column: 3, scope: !3580)
!3590 = !DILocation(line: 957, column: 32, scope: !3580)
!3591 = !{!3592}
!3592 = distinct !{!3592, !3593, !"quoting_options_from_style: argument 0"}
!3593 = distinct !{!3593, !"quoting_options_from_style"}
!3594 = !DILocation(line: 957, column: 36, scope: !3580)
!3595 = !DILocalVariable(name: "style", arg: 1, scope: !3596, file: !82, line: 193, type: !84)
!3596 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 193, type: !3597, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!132, !84}
!3599 = !{!3595, !3600}
!3600 = !DILocalVariable(name: "o", scope: !3596, file: !82, line: 195, type: !132)
!3601 = !DILocation(line: 0, scope: !3596, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 957, column: 36, scope: !3580)
!3603 = !DILocation(line: 195, column: 26, scope: !3596, inlinedAt: !3602)
!3604 = !DILocation(line: 196, column: 13, scope: !3605, inlinedAt: !3602)
!3605 = distinct !DILexicalBlock(scope: !3596, file: !82, line: 196, column: 7)
!3606 = !DILocation(line: 196, column: 7, scope: !3596, inlinedAt: !3602)
!3607 = !DILocation(line: 197, column: 5, scope: !3605, inlinedAt: !3602)
!3608 = !DILocation(line: 198, column: 5, scope: !3596, inlinedAt: !3602)
!3609 = !DILocation(line: 198, column: 11, scope: !3596, inlinedAt: !3602)
!3610 = !DILocation(line: 958, column: 10, scope: !3580)
!3611 = !DILocation(line: 959, column: 1, scope: !3580)
!3612 = !DILocation(line: 958, column: 3, scope: !3580)
!3613 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 962, type: !3614, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!14, !35, !84, !6, !120}
!3616 = !{!3617, !3618, !3619, !3620, !3621}
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3613, file: !82, line: 962, type: !35)
!3618 = !DILocalVariable(name: "s", arg: 2, scope: !3613, file: !82, line: 962, type: !84)
!3619 = !DILocalVariable(name: "arg", arg: 3, scope: !3613, file: !82, line: 963, type: !6)
!3620 = !DILocalVariable(name: "argsize", arg: 4, scope: !3613, file: !82, line: 963, type: !120)
!3621 = !DILocalVariable(name: "o", scope: !3613, file: !82, line: 965, type: !2517)
!3622 = !DILocation(line: 0, scope: !3613)
!3623 = !DILocation(line: 965, column: 3, scope: !3613)
!3624 = !DILocation(line: 965, column: 32, scope: !3613)
!3625 = !{!3626}
!3626 = distinct !{!3626, !3627, !"quoting_options_from_style: argument 0"}
!3627 = distinct !{!3627, !"quoting_options_from_style"}
!3628 = !DILocation(line: 965, column: 36, scope: !3613)
!3629 = !DILocation(line: 0, scope: !3596, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 965, column: 36, scope: !3613)
!3631 = !DILocation(line: 195, column: 26, scope: !3596, inlinedAt: !3630)
!3632 = !DILocation(line: 196, column: 13, scope: !3605, inlinedAt: !3630)
!3633 = !DILocation(line: 196, column: 7, scope: !3596, inlinedAt: !3630)
!3634 = !DILocation(line: 197, column: 5, scope: !3605, inlinedAt: !3630)
!3635 = !DILocation(line: 198, column: 5, scope: !3596, inlinedAt: !3630)
!3636 = !DILocation(line: 198, column: 11, scope: !3596, inlinedAt: !3630)
!3637 = !DILocation(line: 966, column: 10, scope: !3613)
!3638 = !DILocation(line: 967, column: 1, scope: !3613)
!3639 = !DILocation(line: 966, column: 3, scope: !3613)
!3640 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 970, type: !3641, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!14, !84, !6}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "s", arg: 1, scope: !3640, file: !82, line: 970, type: !84)
!3645 = !DILocalVariable(name: "arg", arg: 2, scope: !3640, file: !82, line: 970, type: !6)
!3646 = !DILocation(line: 0, scope: !3640)
!3647 = !DILocation(line: 0, scope: !3580, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 972, column: 10, scope: !3640)
!3649 = !DILocation(line: 957, column: 3, scope: !3580, inlinedAt: !3648)
!3650 = !DILocation(line: 957, column: 32, scope: !3580, inlinedAt: !3648)
!3651 = !{!3652}
!3652 = distinct !{!3652, !3653, !"quoting_options_from_style: argument 0"}
!3653 = distinct !{!3653, !"quoting_options_from_style"}
!3654 = !DILocation(line: 957, column: 36, scope: !3580, inlinedAt: !3648)
!3655 = !DILocation(line: 0, scope: !3596, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 957, column: 36, scope: !3580, inlinedAt: !3648)
!3657 = !DILocation(line: 195, column: 26, scope: !3596, inlinedAt: !3656)
!3658 = !DILocation(line: 196, column: 13, scope: !3605, inlinedAt: !3656)
!3659 = !DILocation(line: 196, column: 7, scope: !3596, inlinedAt: !3656)
!3660 = !DILocation(line: 197, column: 5, scope: !3605, inlinedAt: !3656)
!3661 = !DILocation(line: 198, column: 5, scope: !3596, inlinedAt: !3656)
!3662 = !DILocation(line: 198, column: 11, scope: !3596, inlinedAt: !3656)
!3663 = !DILocation(line: 958, column: 10, scope: !3580, inlinedAt: !3648)
!3664 = !DILocation(line: 959, column: 1, scope: !3580, inlinedAt: !3648)
!3665 = !DILocation(line: 972, column: 3, scope: !3640)
!3666 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 976, type: !3667, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!14, !84, !6, !120}
!3669 = !{!3670, !3671, !3672}
!3670 = !DILocalVariable(name: "s", arg: 1, scope: !3666, file: !82, line: 976, type: !84)
!3671 = !DILocalVariable(name: "arg", arg: 2, scope: !3666, file: !82, line: 976, type: !6)
!3672 = !DILocalVariable(name: "argsize", arg: 3, scope: !3666, file: !82, line: 976, type: !120)
!3673 = !DILocation(line: 0, scope: !3666)
!3674 = !DILocation(line: 0, scope: !3613, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 978, column: 10, scope: !3666)
!3676 = !DILocation(line: 965, column: 3, scope: !3613, inlinedAt: !3675)
!3677 = !DILocation(line: 965, column: 32, scope: !3613, inlinedAt: !3675)
!3678 = !{!3679}
!3679 = distinct !{!3679, !3680, !"quoting_options_from_style: argument 0"}
!3680 = distinct !{!3680, !"quoting_options_from_style"}
!3681 = !DILocation(line: 965, column: 36, scope: !3613, inlinedAt: !3675)
!3682 = !DILocation(line: 0, scope: !3596, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 965, column: 36, scope: !3613, inlinedAt: !3675)
!3684 = !DILocation(line: 195, column: 26, scope: !3596, inlinedAt: !3683)
!3685 = !DILocation(line: 196, column: 13, scope: !3605, inlinedAt: !3683)
!3686 = !DILocation(line: 196, column: 7, scope: !3596, inlinedAt: !3683)
!3687 = !DILocation(line: 197, column: 5, scope: !3605, inlinedAt: !3683)
!3688 = !DILocation(line: 198, column: 5, scope: !3596, inlinedAt: !3683)
!3689 = !DILocation(line: 198, column: 11, scope: !3596, inlinedAt: !3683)
!3690 = !DILocation(line: 966, column: 10, scope: !3613, inlinedAt: !3675)
!3691 = !DILocation(line: 967, column: 1, scope: !3613, inlinedAt: !3675)
!3692 = !DILocation(line: 978, column: 3, scope: !3666)
!3693 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 982, type: !3694, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!14, !6, !120, !8}
!3696 = !{!3697, !3698, !3699, !3700}
!3697 = !DILocalVariable(name: "arg", arg: 1, scope: !3693, file: !82, line: 982, type: !6)
!3698 = !DILocalVariable(name: "argsize", arg: 2, scope: !3693, file: !82, line: 982, type: !120)
!3699 = !DILocalVariable(name: "ch", arg: 3, scope: !3693, file: !82, line: 982, type: !8)
!3700 = !DILocalVariable(name: "options", scope: !3693, file: !82, line: 984, type: !132)
!3701 = !DILocation(line: 0, scope: !3693)
!3702 = !DILocation(line: 984, column: 3, scope: !3693)
!3703 = !DILocation(line: 984, column: 26, scope: !3693)
!3704 = !DILocation(line: 985, column: 13, scope: !3693)
!3705 = !{i64 0, i64 4, !998, i64 4, i64 4, !830, i64 8, i64 32, !998, i64 40, i64 8, !689, i64 48, i64 8, !689}
!3706 = !DILocation(line: 0, scope: !2537, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 986, column: 3, scope: !3693)
!3708 = !DILocation(line: 156, column: 62, scope: !2537, inlinedAt: !3707)
!3709 = !DILocation(line: 156, column: 57, scope: !2537, inlinedAt: !3707)
!3710 = !DILocation(line: 157, column: 15, scope: !2537, inlinedAt: !3707)
!3711 = !DILocation(line: 158, column: 12, scope: !2537, inlinedAt: !3707)
!3712 = !DILocation(line: 158, column: 15, scope: !2537, inlinedAt: !3707)
!3713 = !DILocation(line: 158, column: 25, scope: !2537, inlinedAt: !3707)
!3714 = !DILocation(line: 159, column: 18, scope: !2537, inlinedAt: !3707)
!3715 = !DILocation(line: 159, column: 23, scope: !2537, inlinedAt: !3707)
!3716 = !DILocation(line: 159, column: 6, scope: !2537, inlinedAt: !3707)
!3717 = !DILocation(line: 987, column: 10, scope: !3693)
!3718 = !DILocation(line: 988, column: 1, scope: !3693)
!3719 = !DILocation(line: 987, column: 3, scope: !3693)
!3720 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 991, type: !3721, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!14, !6, !8}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "arg", arg: 1, scope: !3720, file: !82, line: 991, type: !6)
!3725 = !DILocalVariable(name: "ch", arg: 2, scope: !3720, file: !82, line: 991, type: !8)
!3726 = !DILocation(line: 0, scope: !3720)
!3727 = !DILocation(line: 0, scope: !3693, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 993, column: 10, scope: !3720)
!3729 = !DILocation(line: 984, column: 3, scope: !3693, inlinedAt: !3728)
!3730 = !DILocation(line: 984, column: 26, scope: !3693, inlinedAt: !3728)
!3731 = !DILocation(line: 985, column: 13, scope: !3693, inlinedAt: !3728)
!3732 = !DILocation(line: 0, scope: !2537, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 986, column: 3, scope: !3693, inlinedAt: !3728)
!3734 = !DILocation(line: 156, column: 62, scope: !2537, inlinedAt: !3733)
!3735 = !DILocation(line: 156, column: 57, scope: !2537, inlinedAt: !3733)
!3736 = !DILocation(line: 157, column: 15, scope: !2537, inlinedAt: !3733)
!3737 = !DILocation(line: 158, column: 12, scope: !2537, inlinedAt: !3733)
!3738 = !DILocation(line: 158, column: 15, scope: !2537, inlinedAt: !3733)
!3739 = !DILocation(line: 158, column: 25, scope: !2537, inlinedAt: !3733)
!3740 = !DILocation(line: 159, column: 18, scope: !2537, inlinedAt: !3733)
!3741 = !DILocation(line: 159, column: 23, scope: !2537, inlinedAt: !3733)
!3742 = !DILocation(line: 159, column: 6, scope: !2537, inlinedAt: !3733)
!3743 = !DILocation(line: 987, column: 10, scope: !3693, inlinedAt: !3728)
!3744 = !DILocation(line: 988, column: 1, scope: !3693, inlinedAt: !3728)
!3745 = !DILocation(line: 993, column: 3, scope: !3720)
!3746 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 997, type: !852, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3747)
!3747 = !{!3748}
!3748 = !DILocalVariable(name: "arg", arg: 1, scope: !3746, file: !82, line: 997, type: !6)
!3749 = !DILocation(line: 0, scope: !3746)
!3750 = !DILocation(line: 0, scope: !3720, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 999, column: 10, scope: !3746)
!3752 = !DILocation(line: 0, scope: !3693, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 993, column: 10, scope: !3720, inlinedAt: !3751)
!3754 = !DILocation(line: 984, column: 3, scope: !3693, inlinedAt: !3753)
!3755 = !DILocation(line: 984, column: 26, scope: !3693, inlinedAt: !3753)
!3756 = !DILocation(line: 985, column: 13, scope: !3693, inlinedAt: !3753)
!3757 = !DILocation(line: 0, scope: !2537, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 986, column: 3, scope: !3693, inlinedAt: !3753)
!3759 = !DILocation(line: 156, column: 57, scope: !2537, inlinedAt: !3758)
!3760 = !DILocation(line: 158, column: 12, scope: !2537, inlinedAt: !3758)
!3761 = !DILocation(line: 159, column: 6, scope: !2537, inlinedAt: !3758)
!3762 = !DILocation(line: 987, column: 10, scope: !3693, inlinedAt: !3753)
!3763 = !DILocation(line: 988, column: 1, scope: !3693, inlinedAt: !3753)
!3764 = !DILocation(line: 999, column: 3, scope: !3746)
!3765 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 1003, type: !3570, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3766)
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "arg", arg: 1, scope: !3765, file: !82, line: 1003, type: !6)
!3768 = !DILocalVariable(name: "argsize", arg: 2, scope: !3765, file: !82, line: 1003, type: !120)
!3769 = !DILocation(line: 0, scope: !3765)
!3770 = !DILocation(line: 0, scope: !3693, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 1005, column: 10, scope: !3765)
!3772 = !DILocation(line: 984, column: 3, scope: !3693, inlinedAt: !3771)
!3773 = !DILocation(line: 984, column: 26, scope: !3693, inlinedAt: !3771)
!3774 = !DILocation(line: 985, column: 13, scope: !3693, inlinedAt: !3771)
!3775 = !DILocation(line: 0, scope: !2537, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 986, column: 3, scope: !3693, inlinedAt: !3771)
!3777 = !DILocation(line: 156, column: 57, scope: !2537, inlinedAt: !3776)
!3778 = !DILocation(line: 158, column: 12, scope: !2537, inlinedAt: !3776)
!3779 = !DILocation(line: 159, column: 6, scope: !2537, inlinedAt: !3776)
!3780 = !DILocation(line: 987, column: 10, scope: !3693, inlinedAt: !3771)
!3781 = !DILocation(line: 988, column: 1, scope: !3693, inlinedAt: !3771)
!3782 = !DILocation(line: 1005, column: 3, scope: !3765)
!3783 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1009, type: !3581, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3784)
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !82, line: 1009, type: !35)
!3786 = !DILocalVariable(name: "s", arg: 2, scope: !3783, file: !82, line: 1009, type: !84)
!3787 = !DILocalVariable(name: "arg", arg: 3, scope: !3783, file: !82, line: 1009, type: !6)
!3788 = !DILocalVariable(name: "options", scope: !3783, file: !82, line: 1011, type: !132)
!3789 = !DILocation(line: 195, column: 26, scope: !3596, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1012, column: 13, scope: !3783)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 1011, column: 3, scope: !3783)
!3793 = !DILocation(line: 1011, column: 26, scope: !3783)
!3794 = !DILocation(line: 1012, column: 13, scope: !3783)
!3795 = !{!3796}
!3796 = distinct !{!3796, !3797, !"quoting_options_from_style: argument 0"}
!3797 = distinct !{!3797, !"quoting_options_from_style"}
!3798 = !DILocation(line: 0, scope: !3596, inlinedAt: !3790)
!3799 = !DILocation(line: 196, column: 13, scope: !3605, inlinedAt: !3790)
!3800 = !DILocation(line: 196, column: 7, scope: !3596, inlinedAt: !3790)
!3801 = !DILocation(line: 197, column: 5, scope: !3605, inlinedAt: !3790)
!3802 = !{i64 0, i64 4, !830, i64 4, i64 32, !998, i64 36, i64 8, !689, i64 44, i64 8, !689}
!3803 = !DILocation(line: 0, scope: !2537, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1013, column: 3, scope: !3783)
!3805 = !DILocation(line: 156, column: 57, scope: !2537, inlinedAt: !3804)
!3806 = !DILocation(line: 158, column: 12, scope: !2537, inlinedAt: !3804)
!3807 = !DILocation(line: 159, column: 6, scope: !2537, inlinedAt: !3804)
!3808 = !DILocation(line: 1014, column: 10, scope: !3783)
!3809 = !DILocation(line: 1015, column: 1, scope: !3783)
!3810 = !DILocation(line: 1014, column: 3, scope: !3783)
!3811 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1018, type: !3812, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!14, !35, !6, !6, !6}
!3814 = !{!3815, !3816, !3817, !3818}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !82, line: 1018, type: !35)
!3816 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3811, file: !82, line: 1018, type: !6)
!3817 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3811, file: !82, line: 1019, type: !6)
!3818 = !DILocalVariable(name: "arg", arg: 4, scope: !3811, file: !82, line: 1019, type: !6)
!3819 = !DILocation(line: 0, scope: !3811)
!3820 = !DILocalVariable(name: "n", arg: 1, scope: !3821, file: !82, line: 1026, type: !35)
!3821 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1026, type: !3822, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!14, !35, !6, !6, !6, !120}
!3824 = !{!3820, !3825, !3826, !3827, !3828, !3829}
!3825 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3821, file: !82, line: 1026, type: !6)
!3826 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3821, file: !82, line: 1027, type: !6)
!3827 = !DILocalVariable(name: "arg", arg: 4, scope: !3821, file: !82, line: 1028, type: !6)
!3828 = !DILocalVariable(name: "argsize", arg: 5, scope: !3821, file: !82, line: 1028, type: !120)
!3829 = !DILocalVariable(name: "o", scope: !3821, file: !82, line: 1030, type: !132)
!3830 = !DILocation(line: 0, scope: !3821, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 1021, column: 10, scope: !3811)
!3832 = !DILocation(line: 1030, column: 3, scope: !3821, inlinedAt: !3831)
!3833 = !DILocation(line: 1030, column: 26, scope: !3821, inlinedAt: !3831)
!3834 = !DILocation(line: 1030, column: 30, scope: !3821, inlinedAt: !3831)
!3835 = !DILocation(line: 0, scope: !2577, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 1031, column: 3, scope: !3821, inlinedAt: !3831)
!3837 = !DILocation(line: 184, column: 6, scope: !2577, inlinedAt: !3836)
!3838 = !DILocation(line: 184, column: 12, scope: !2577, inlinedAt: !3836)
!3839 = !DILocation(line: 185, column: 8, scope: !2591, inlinedAt: !3836)
!3840 = !DILocation(line: 185, column: 19, scope: !2591, inlinedAt: !3836)
!3841 = !DILocation(line: 186, column: 5, scope: !2591, inlinedAt: !3836)
!3842 = !DILocation(line: 187, column: 6, scope: !2577, inlinedAt: !3836)
!3843 = !DILocation(line: 187, column: 17, scope: !2577, inlinedAt: !3836)
!3844 = !DILocation(line: 188, column: 6, scope: !2577, inlinedAt: !3836)
!3845 = !DILocation(line: 188, column: 18, scope: !2577, inlinedAt: !3836)
!3846 = !DILocation(line: 1032, column: 10, scope: !3821, inlinedAt: !3831)
!3847 = !DILocation(line: 1033, column: 1, scope: !3821, inlinedAt: !3831)
!3848 = !DILocation(line: 1021, column: 3, scope: !3811)
!3849 = !DILocation(line: 0, scope: !3821)
!3850 = !DILocation(line: 1030, column: 3, scope: !3821)
!3851 = !DILocation(line: 1030, column: 26, scope: !3821)
!3852 = !DILocation(line: 1030, column: 30, scope: !3821)
!3853 = !DILocation(line: 0, scope: !2577, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 1031, column: 3, scope: !3821)
!3855 = !DILocation(line: 184, column: 6, scope: !2577, inlinedAt: !3854)
!3856 = !DILocation(line: 184, column: 12, scope: !2577, inlinedAt: !3854)
!3857 = !DILocation(line: 185, column: 8, scope: !2591, inlinedAt: !3854)
!3858 = !DILocation(line: 185, column: 19, scope: !2591, inlinedAt: !3854)
!3859 = !DILocation(line: 186, column: 5, scope: !2591, inlinedAt: !3854)
!3860 = !DILocation(line: 187, column: 6, scope: !2577, inlinedAt: !3854)
!3861 = !DILocation(line: 187, column: 17, scope: !2577, inlinedAt: !3854)
!3862 = !DILocation(line: 188, column: 6, scope: !2577, inlinedAt: !3854)
!3863 = !DILocation(line: 188, column: 18, scope: !2577, inlinedAt: !3854)
!3864 = !DILocation(line: 1032, column: 10, scope: !3821)
!3865 = !DILocation(line: 1033, column: 1, scope: !3821)
!3866 = !DILocation(line: 1032, column: 3, scope: !3821)
!3867 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1036, type: !3868, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!14, !6, !6, !6}
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3867, file: !82, line: 1036, type: !6)
!3872 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3867, file: !82, line: 1036, type: !6)
!3873 = !DILocalVariable(name: "arg", arg: 3, scope: !3867, file: !82, line: 1037, type: !6)
!3874 = !DILocation(line: 0, scope: !3867)
!3875 = !DILocation(line: 0, scope: !3811, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 1039, column: 10, scope: !3867)
!3877 = !DILocation(line: 0, scope: !3821, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 1021, column: 10, scope: !3811, inlinedAt: !3876)
!3879 = !DILocation(line: 1030, column: 3, scope: !3821, inlinedAt: !3878)
!3880 = !DILocation(line: 1030, column: 26, scope: !3821, inlinedAt: !3878)
!3881 = !DILocation(line: 1030, column: 30, scope: !3821, inlinedAt: !3878)
!3882 = !DILocation(line: 0, scope: !2577, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 1031, column: 3, scope: !3821, inlinedAt: !3878)
!3884 = !DILocation(line: 184, column: 6, scope: !2577, inlinedAt: !3883)
!3885 = !DILocation(line: 184, column: 12, scope: !2577, inlinedAt: !3883)
!3886 = !DILocation(line: 185, column: 8, scope: !2591, inlinedAt: !3883)
!3887 = !DILocation(line: 185, column: 19, scope: !2591, inlinedAt: !3883)
!3888 = !DILocation(line: 186, column: 5, scope: !2591, inlinedAt: !3883)
!3889 = !DILocation(line: 187, column: 6, scope: !2577, inlinedAt: !3883)
!3890 = !DILocation(line: 187, column: 17, scope: !2577, inlinedAt: !3883)
!3891 = !DILocation(line: 188, column: 6, scope: !2577, inlinedAt: !3883)
!3892 = !DILocation(line: 188, column: 18, scope: !2577, inlinedAt: !3883)
!3893 = !DILocation(line: 1032, column: 10, scope: !3821, inlinedAt: !3878)
!3894 = !DILocation(line: 1033, column: 1, scope: !3821, inlinedAt: !3878)
!3895 = !DILocation(line: 1039, column: 3, scope: !3867)
!3896 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1043, type: !3897, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!14, !6, !6, !6, !120}
!3899 = !{!3900, !3901, !3902, !3903}
!3900 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3896, file: !82, line: 1043, type: !6)
!3901 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3896, file: !82, line: 1043, type: !6)
!3902 = !DILocalVariable(name: "arg", arg: 3, scope: !3896, file: !82, line: 1044, type: !6)
!3903 = !DILocalVariable(name: "argsize", arg: 4, scope: !3896, file: !82, line: 1044, type: !120)
!3904 = !DILocation(line: 0, scope: !3896)
!3905 = !DILocation(line: 0, scope: !3821, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 1046, column: 10, scope: !3896)
!3907 = !DILocation(line: 1030, column: 3, scope: !3821, inlinedAt: !3906)
!3908 = !DILocation(line: 1030, column: 26, scope: !3821, inlinedAt: !3906)
!3909 = !DILocation(line: 1030, column: 30, scope: !3821, inlinedAt: !3906)
!3910 = !DILocation(line: 0, scope: !2577, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 1031, column: 3, scope: !3821, inlinedAt: !3906)
!3912 = !DILocation(line: 184, column: 6, scope: !2577, inlinedAt: !3911)
!3913 = !DILocation(line: 184, column: 12, scope: !2577, inlinedAt: !3911)
!3914 = !DILocation(line: 185, column: 8, scope: !2591, inlinedAt: !3911)
!3915 = !DILocation(line: 185, column: 19, scope: !2591, inlinedAt: !3911)
!3916 = !DILocation(line: 186, column: 5, scope: !2591, inlinedAt: !3911)
!3917 = !DILocation(line: 187, column: 6, scope: !2577, inlinedAt: !3911)
!3918 = !DILocation(line: 187, column: 17, scope: !2577, inlinedAt: !3911)
!3919 = !DILocation(line: 188, column: 6, scope: !2577, inlinedAt: !3911)
!3920 = !DILocation(line: 188, column: 18, scope: !2577, inlinedAt: !3911)
!3921 = !DILocation(line: 1032, column: 10, scope: !3821, inlinedAt: !3906)
!3922 = !DILocation(line: 1033, column: 1, scope: !3821, inlinedAt: !3906)
!3923 = !DILocation(line: 1046, column: 3, scope: !3896)
!3924 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1061, type: !3925, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!6, !35, !6, !120}
!3927 = !{!3928, !3929, !3930}
!3928 = !DILocalVariable(name: "n", arg: 1, scope: !3924, file: !82, line: 1061, type: !35)
!3929 = !DILocalVariable(name: "arg", arg: 2, scope: !3924, file: !82, line: 1061, type: !6)
!3930 = !DILocalVariable(name: "argsize", arg: 3, scope: !3924, file: !82, line: 1061, type: !120)
!3931 = !DILocation(line: 0, scope: !3924)
!3932 = !DILocation(line: 1063, column: 10, scope: !3924)
!3933 = !DILocation(line: 1063, column: 3, scope: !3924)
!3934 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1067, type: !3935, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!6, !6, !120}
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "arg", arg: 1, scope: !3934, file: !82, line: 1067, type: !6)
!3939 = !DILocalVariable(name: "argsize", arg: 2, scope: !3934, file: !82, line: 1067, type: !120)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = !DILocation(line: 0, scope: !3924, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 1069, column: 10, scope: !3934)
!3943 = !DILocation(line: 1063, column: 10, scope: !3924, inlinedAt: !3942)
!3944 = !DILocation(line: 1069, column: 3, scope: !3934)
!3945 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1073, type: !3946, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!6, !35, !6}
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !82, line: 1073, type: !35)
!3950 = !DILocalVariable(name: "arg", arg: 2, scope: !3945, file: !82, line: 1073, type: !6)
!3951 = !DILocation(line: 0, scope: !3945)
!3952 = !DILocation(line: 0, scope: !3924, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 1075, column: 10, scope: !3945)
!3954 = !DILocation(line: 1063, column: 10, scope: !3924, inlinedAt: !3953)
!3955 = !DILocation(line: 1075, column: 3, scope: !3945)
!3956 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1079, type: !3957, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!6, !6}
!3959 = !{!3960}
!3960 = !DILocalVariable(name: "arg", arg: 1, scope: !3956, file: !82, line: 1079, type: !6)
!3961 = !DILocation(line: 0, scope: !3956)
!3962 = !DILocation(line: 0, scope: !3945, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 1081, column: 10, scope: !3956)
!3964 = !DILocation(line: 0, scope: !3924, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 1075, column: 10, scope: !3945, inlinedAt: !3963)
!3966 = !DILocation(line: 1063, column: 10, scope: !3924, inlinedAt: !3965)
!3967 = !DILocation(line: 1081, column: 3, scope: !3956)
!3968 = distinct !DISubprogram(name: "version_etc_arn", scope: !207, file: !207, line: 61, type: !3969, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4006)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3971, !6, !6, !6, !4005, !120}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !3973)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3973, file: !762, line: 51, baseType: !35, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3973, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3973, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3973, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3973, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3973, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3973, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3973, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3973, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3973, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3973, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3973, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3973, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3973, file: !762, line: 70, baseType: !3989, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3973, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3973, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3973, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3973, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3973, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3973, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3973, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3973, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3973, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3973, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3973, file: !762, line: 93, baseType: !3989, size: 64, offset: 1344)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3973, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3973, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3973, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3973, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012}
!4007 = !DILocalVariable(name: "stream", arg: 1, scope: !3968, file: !207, line: 61, type: !3971)
!4008 = !DILocalVariable(name: "command_name", arg: 2, scope: !3968, file: !207, line: 62, type: !6)
!4009 = !DILocalVariable(name: "package", arg: 3, scope: !3968, file: !207, line: 62, type: !6)
!4010 = !DILocalVariable(name: "version", arg: 4, scope: !3968, file: !207, line: 63, type: !6)
!4011 = !DILocalVariable(name: "authors", arg: 5, scope: !3968, file: !207, line: 64, type: !4005)
!4012 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3968, file: !207, line: 64, type: !120)
!4013 = !DILocation(line: 0, scope: !3968)
!4014 = !DILocation(line: 66, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3968, file: !207, line: 66, column: 7)
!4016 = !DILocation(line: 66, column: 7, scope: !3968)
!4017 = !DILocation(line: 67, column: 5, scope: !4015)
!4018 = !DILocation(line: 69, column: 5, scope: !4015)
!4019 = !DILocation(line: 83, column: 3, scope: !3968)
!4020 = !DILocation(line: 85, column: 3, scope: !3968)
!4021 = !DILocation(line: 88, column: 3, scope: !3968)
!4022 = !DILocation(line: 95, column: 3, scope: !3968)
!4023 = !DILocation(line: 97, column: 3, scope: !3968)
!4024 = !DILocation(line: 105, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3968, file: !207, line: 98, column: 5)
!4026 = !DILocation(line: 106, column: 7, scope: !4025)
!4027 = !DILocation(line: 109, column: 7, scope: !4025)
!4028 = !DILocation(line: 110, column: 7, scope: !4025)
!4029 = !DILocation(line: 113, column: 7, scope: !4025)
!4030 = !DILocation(line: 115, column: 7, scope: !4025)
!4031 = !DILocation(line: 120, column: 7, scope: !4025)
!4032 = !DILocation(line: 122, column: 7, scope: !4025)
!4033 = !DILocation(line: 127, column: 7, scope: !4025)
!4034 = !DILocation(line: 129, column: 7, scope: !4025)
!4035 = !DILocation(line: 134, column: 7, scope: !4025)
!4036 = !DILocation(line: 137, column: 7, scope: !4025)
!4037 = !DILocation(line: 142, column: 7, scope: !4025)
!4038 = !DILocation(line: 145, column: 7, scope: !4025)
!4039 = !DILocation(line: 150, column: 7, scope: !4025)
!4040 = !DILocation(line: 154, column: 7, scope: !4025)
!4041 = !DILocation(line: 159, column: 7, scope: !4025)
!4042 = !DILocation(line: 163, column: 7, scope: !4025)
!4043 = !DILocation(line: 170, column: 7, scope: !4025)
!4044 = !DILocation(line: 174, column: 7, scope: !4025)
!4045 = !DILocation(line: 176, column: 1, scope: !3968)
!4046 = distinct !DISubprogram(name: "version_etc_ar", scope: !207, file: !207, line: 183, type: !4047, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !3971, !6, !6, !6, !4005}
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4055}
!4050 = !DILocalVariable(name: "stream", arg: 1, scope: !4046, file: !207, line: 183, type: !3971)
!4051 = !DILocalVariable(name: "command_name", arg: 2, scope: !4046, file: !207, line: 184, type: !6)
!4052 = !DILocalVariable(name: "package", arg: 3, scope: !4046, file: !207, line: 184, type: !6)
!4053 = !DILocalVariable(name: "version", arg: 4, scope: !4046, file: !207, line: 185, type: !6)
!4054 = !DILocalVariable(name: "authors", arg: 5, scope: !4046, file: !207, line: 185, type: !4005)
!4055 = !DILocalVariable(name: "n_authors", scope: !4046, file: !207, line: 187, type: !120)
!4056 = !DILocation(line: 0, scope: !4046)
!4057 = !DILocation(line: 189, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4046, file: !207, line: 189, column: 3)
!4059 = !DILocation(line: 0, scope: !4058)
!4060 = !DILocation(line: 189, column: 23, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !207, line: 189, column: 3)
!4062 = !DILocation(line: 189, column: 3, scope: !4058)
!4063 = !DILocation(line: 189, column: 52, scope: !4061)
!4064 = distinct !{!4064, !4062, !4065, !732}
!4065 = !DILocation(line: 190, column: 5, scope: !4058)
!4066 = !DILocation(line: 191, column: 3, scope: !4046)
!4067 = !DILocation(line: 192, column: 1, scope: !4046)
!4068 = distinct !DISubprogram(name: "version_etc_va", scope: !207, file: !207, line: 199, type: !4069, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4078)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !3971, !6, !6, !6, !4071}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4072, file: !207, line: 192, baseType: !86, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4072, file: !207, line: 192, baseType: !86, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4072, file: !207, line: 192, baseType: !77, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4072, file: !207, line: 192, baseType: !77, size: 64, offset: 128)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4079 = !DILocalVariable(name: "stream", arg: 1, scope: !4068, file: !207, line: 199, type: !3971)
!4080 = !DILocalVariable(name: "command_name", arg: 2, scope: !4068, file: !207, line: 200, type: !6)
!4081 = !DILocalVariable(name: "package", arg: 3, scope: !4068, file: !207, line: 200, type: !6)
!4082 = !DILocalVariable(name: "version", arg: 4, scope: !4068, file: !207, line: 201, type: !6)
!4083 = !DILocalVariable(name: "authors", arg: 5, scope: !4068, file: !207, line: 201, type: !4071)
!4084 = !DILocalVariable(name: "n_authors", scope: !4068, file: !207, line: 203, type: !120)
!4085 = !DILocalVariable(name: "authtab", scope: !4068, file: !207, line: 204, type: !4086)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !128)
!4087 = !DILocation(line: 0, scope: !4068)
!4088 = !DILocation(line: 204, column: 3, scope: !4068)
!4089 = !DILocation(line: 204, column: 15, scope: !4068)
!4090 = !DILocation(line: 208, column: 35, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !207, line: 206, column: 3)
!4092 = distinct !DILexicalBlock(scope: !4068, file: !207, line: 206, column: 3)
!4093 = !DILocation(line: 208, column: 14, scope: !4091)
!4094 = !DILocation(line: 208, column: 33, scope: !4091)
!4095 = !DILocation(line: 208, column: 67, scope: !4091)
!4096 = !DILocation(line: 206, column: 3, scope: !4092)
!4097 = !DILocation(line: 0, scope: !4092)
!4098 = !DILocation(line: 211, column: 3, scope: !4068)
!4099 = !DILocation(line: 213, column: 1, scope: !4068)
!4100 = distinct !DISubprogram(name: "version_etc", scope: !207, file: !207, line: 230, type: !4101, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !3971, !6, !6, !6, null}
!4103 = !{!4104, !4105, !4106, !4107, !4108}
!4104 = !DILocalVariable(name: "stream", arg: 1, scope: !4100, file: !207, line: 230, type: !3971)
!4105 = !DILocalVariable(name: "command_name", arg: 2, scope: !4100, file: !207, line: 231, type: !6)
!4106 = !DILocalVariable(name: "package", arg: 3, scope: !4100, file: !207, line: 231, type: !6)
!4107 = !DILocalVariable(name: "version", arg: 4, scope: !4100, file: !207, line: 232, type: !6)
!4108 = !DILocalVariable(name: "authors", scope: !4100, file: !207, line: 234, type: !4109)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !757, line: 52, baseType: !4110)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2394, line: 32, baseType: !4111)
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !207, baseType: !4112)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, size: 192, elements: !788)
!4113 = !DILocation(line: 0, scope: !4100)
!4114 = !DILocation(line: 234, column: 3, scope: !4100)
!4115 = !DILocation(line: 234, column: 11, scope: !4100)
!4116 = !DILocation(line: 236, column: 3, scope: !4100)
!4117 = !DILocation(line: 237, column: 3, scope: !4100)
!4118 = !DILocation(line: 238, column: 3, scope: !4100)
!4119 = !DILocation(line: 239, column: 1, scope: !4100)
!4120 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !207, file: !207, line: 242, type: !859, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4)
!4121 = !DILocation(line: 244, column: 3, scope: !4120)
!4122 = !DILocation(line: 249, column: 3, scope: !4120)
!4123 = !DILocation(line: 255, column: 3, scope: !4120)
!4124 = !DILocation(line: 260, column: 3, scope: !4120)
!4125 = !DILocation(line: 262, column: 1, scope: !4120)
!4126 = distinct !DISubprogram(name: "xnmalloc", scope: !217, file: !217, line: 99, type: !4127, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!77, !120, !120}
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4126, file: !217, line: 99, type: !120)
!4131 = !DILocalVariable(name: "s", arg: 2, scope: !4126, file: !217, line: 99, type: !120)
!4132 = !DILocation(line: 0, scope: !4126)
!4133 = !DILocation(line: 101, column: 7, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4126, file: !217, line: 101, column: 7)
!4135 = !DILocation(line: 101, column: 7, scope: !4126)
!4136 = !DILocation(line: 102, column: 5, scope: !4134)
!4137 = !DILocation(line: 103, column: 21, scope: !4126)
!4138 = !DILocalVariable(name: "n", arg: 1, scope: !4139, file: !214, line: 39, type: !120)
!4139 = distinct !DISubprogram(name: "xmalloc", scope: !214, file: !214, line: 39, type: !4140, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!77, !120}
!4142 = !{!4138, !4143}
!4143 = !DILocalVariable(name: "p", scope: !4139, file: !214, line: 41, type: !77)
!4144 = !DILocation(line: 0, scope: !4139, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 103, column: 10, scope: !4126)
!4146 = !DILocation(line: 41, column: 13, scope: !4139, inlinedAt: !4145)
!4147 = !DILocation(line: 42, column: 8, scope: !4148, inlinedAt: !4145)
!4148 = distinct !DILexicalBlock(scope: !4139, file: !214, line: 42, column: 7)
!4149 = !DILocation(line: 42, column: 10, scope: !4148, inlinedAt: !4145)
!4150 = !DILocation(line: 43, column: 5, scope: !4148, inlinedAt: !4145)
!4151 = !DILocation(line: 103, column: 3, scope: !4126)
!4152 = !DILocation(line: 0, scope: !4139)
!4153 = !DILocation(line: 41, column: 13, scope: !4139)
!4154 = !DILocation(line: 42, column: 8, scope: !4148)
!4155 = !DILocation(line: 42, column: 10, scope: !4148)
!4156 = !DILocation(line: 43, column: 5, scope: !4148)
!4157 = !DILocation(line: 44, column: 3, scope: !4139)
!4158 = distinct !DISubprogram(name: "xnrealloc", scope: !217, file: !217, line: 112, type: !4159, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!77, !77, !120, !120}
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "p", arg: 1, scope: !4158, file: !217, line: 112, type: !77)
!4163 = !DILocalVariable(name: "n", arg: 2, scope: !4158, file: !217, line: 112, type: !120)
!4164 = !DILocalVariable(name: "s", arg: 3, scope: !4158, file: !217, line: 112, type: !120)
!4165 = !DILocation(line: 0, scope: !4158)
!4166 = !DILocation(line: 114, column: 7, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4158, file: !217, line: 114, column: 7)
!4168 = !DILocation(line: 114, column: 7, scope: !4158)
!4169 = !DILocation(line: 115, column: 5, scope: !4167)
!4170 = !DILocation(line: 116, column: 25, scope: !4158)
!4171 = !DILocalVariable(name: "p", arg: 1, scope: !4172, file: !214, line: 51, type: !77)
!4172 = distinct !DISubprogram(name: "xrealloc", scope: !214, file: !214, line: 51, type: !4173, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!77, !77, !120}
!4175 = !{!4171, !4176}
!4176 = !DILocalVariable(name: "n", arg: 2, scope: !4172, file: !214, line: 51, type: !120)
!4177 = !DILocation(line: 0, scope: !4172, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 116, column: 10, scope: !4158)
!4179 = !DILocation(line: 53, column: 8, scope: !4180, inlinedAt: !4178)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !214, line: 53, column: 7)
!4181 = !DILocation(line: 53, column: 10, scope: !4180, inlinedAt: !4178)
!4182 = !DILocation(line: 57, column: 7, scope: !4183, inlinedAt: !4178)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !214, line: 54, column: 5)
!4184 = !DILocation(line: 58, column: 7, scope: !4183, inlinedAt: !4178)
!4185 = !DILocation(line: 61, column: 7, scope: !4172, inlinedAt: !4178)
!4186 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4178)
!4187 = distinct !DILexicalBlock(scope: !4172, file: !214, line: 62, column: 7)
!4188 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4178)
!4189 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4178)
!4190 = !DILocation(line: 116, column: 3, scope: !4158)
!4191 = !DILocation(line: 0, scope: !4172)
!4192 = !DILocation(line: 53, column: 8, scope: !4180)
!4193 = !DILocation(line: 53, column: 10, scope: !4180)
!4194 = !DILocation(line: 57, column: 7, scope: !4183)
!4195 = !DILocation(line: 58, column: 7, scope: !4183)
!4196 = !DILocation(line: 61, column: 7, scope: !4172)
!4197 = !DILocation(line: 62, column: 8, scope: !4187)
!4198 = !DILocation(line: 62, column: 10, scope: !4187)
!4199 = !DILocation(line: 63, column: 5, scope: !4187)
!4200 = !DILocation(line: 65, column: 1, scope: !4172)
!4201 = !DILocation(line: 0, scope: !218)
!4202 = !DILocation(line: 176, column: 14, scope: !218)
!4203 = !DILocation(line: 178, column: 9, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !218, file: !217, line: 178, column: 7)
!4205 = !DILocation(line: 178, column: 7, scope: !218)
!4206 = !DILocation(line: 180, column: 13, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !217, line: 180, column: 11)
!4208 = distinct !DILexicalBlock(scope: !4204, file: !217, line: 179, column: 5)
!4209 = !DILocation(line: 180, column: 11, scope: !4208)
!4210 = !DILocation(line: 188, column: 30, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4207, file: !217, line: 181, column: 9)
!4212 = !DILocation(line: 189, column: 16, scope: !4211)
!4213 = !DILocation(line: 189, column: 13, scope: !4211)
!4214 = !DILocation(line: 190, column: 9, scope: !4211)
!4215 = !DILocation(line: 191, column: 11, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4208, file: !217, line: 191, column: 11)
!4217 = !DILocation(line: 191, column: 11, scope: !4208)
!4218 = !DILocation(line: 206, column: 7, scope: !218)
!4219 = !DILocation(line: 207, column: 25, scope: !218)
!4220 = !DILocation(line: 0, scope: !4172, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 207, column: 10, scope: !218)
!4222 = !DILocation(line: 53, column: 10, scope: !4180, inlinedAt: !4221)
!4223 = !DILocation(line: 192, column: 9, scope: !4216)
!4224 = !DILocation(line: 200, column: 69, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !217, line: 200, column: 11)
!4226 = distinct !DILexicalBlock(scope: !4204, file: !217, line: 195, column: 5)
!4227 = !DILocation(line: 201, column: 11, scope: !4225)
!4228 = !DILocation(line: 200, column: 11, scope: !4226)
!4229 = !DILocation(line: 202, column: 9, scope: !4225)
!4230 = !DILocation(line: 203, column: 14, scope: !4226)
!4231 = !DILocation(line: 203, column: 18, scope: !4226)
!4232 = !DILocation(line: 203, column: 9, scope: !4226)
!4233 = !DILocation(line: 53, column: 8, scope: !4180, inlinedAt: !4221)
!4234 = !DILocation(line: 57, column: 7, scope: !4183, inlinedAt: !4221)
!4235 = !DILocation(line: 58, column: 7, scope: !4183, inlinedAt: !4221)
!4236 = !DILocation(line: 61, column: 7, scope: !4172, inlinedAt: !4221)
!4237 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4221)
!4238 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4221)
!4239 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4221)
!4240 = !DILocation(line: 207, column: 3, scope: !218)
!4241 = distinct !DISubprogram(name: "xcharalloc", scope: !217, file: !217, line: 216, type: !3382, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4242)
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "n", arg: 1, scope: !4241, file: !217, line: 216, type: !120)
!4244 = !DILocation(line: 0, scope: !4241)
!4245 = !DILocation(line: 0, scope: !4139, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 218, column: 10, scope: !4241)
!4247 = !DILocation(line: 41, column: 13, scope: !4139, inlinedAt: !4246)
!4248 = !DILocation(line: 42, column: 8, scope: !4148, inlinedAt: !4246)
!4249 = !DILocation(line: 42, column: 10, scope: !4148, inlinedAt: !4246)
!4250 = !DILocation(line: 43, column: 5, scope: !4148, inlinedAt: !4246)
!4251 = !DILocation(line: 218, column: 3, scope: !4241)
!4252 = distinct !DISubprogram(name: "x2realloc", scope: !214, file: !214, line: 74, type: !4253, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!77, !77, !221}
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "p", arg: 1, scope: !4252, file: !214, line: 74, type: !77)
!4257 = !DILocalVariable(name: "pn", arg: 2, scope: !4252, file: !214, line: 74, type: !221)
!4258 = !DILocation(line: 0, scope: !4252)
!4259 = !DILocation(line: 0, scope: !218, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 76, column: 10, scope: !4252)
!4261 = !DILocation(line: 176, column: 14, scope: !218, inlinedAt: !4260)
!4262 = !DILocation(line: 178, column: 9, scope: !4204, inlinedAt: !4260)
!4263 = !DILocation(line: 178, column: 7, scope: !218, inlinedAt: !4260)
!4264 = !DILocation(line: 180, column: 13, scope: !4207, inlinedAt: !4260)
!4265 = !DILocation(line: 180, column: 11, scope: !4208, inlinedAt: !4260)
!4266 = !DILocation(line: 191, column: 11, scope: !4216, inlinedAt: !4260)
!4267 = !DILocation(line: 191, column: 11, scope: !4208, inlinedAt: !4260)
!4268 = !DILocation(line: 192, column: 9, scope: !4216, inlinedAt: !4260)
!4269 = !DILocation(line: 201, column: 11, scope: !4225, inlinedAt: !4260)
!4270 = !DILocation(line: 200, column: 11, scope: !4226, inlinedAt: !4260)
!4271 = !DILocation(line: 202, column: 9, scope: !4225, inlinedAt: !4260)
!4272 = !DILocation(line: 203, column: 14, scope: !4226, inlinedAt: !4260)
!4273 = !DILocation(line: 203, column: 18, scope: !4226, inlinedAt: !4260)
!4274 = !DILocation(line: 203, column: 9, scope: !4226, inlinedAt: !4260)
!4275 = !DILocation(line: 0, scope: !4172, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 207, column: 10, scope: !218, inlinedAt: !4260)
!4277 = !DILocation(line: 53, column: 10, scope: !4180, inlinedAt: !4276)
!4278 = !DILocation(line: 206, column: 7, scope: !218, inlinedAt: !4260)
!4279 = !DILocation(line: 61, column: 7, scope: !4172, inlinedAt: !4276)
!4280 = !DILocation(line: 62, column: 8, scope: !4187, inlinedAt: !4276)
!4281 = !DILocation(line: 62, column: 10, scope: !4187, inlinedAt: !4276)
!4282 = !DILocation(line: 63, column: 5, scope: !4187, inlinedAt: !4276)
!4283 = !DILocation(line: 76, column: 3, scope: !4252)
!4284 = distinct !DISubprogram(name: "xzalloc", scope: !214, file: !214, line: 84, type: !4140, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4285)
!4285 = !{!4286}
!4286 = !DILocalVariable(name: "n", arg: 1, scope: !4284, file: !214, line: 84, type: !120)
!4287 = !DILocation(line: 0, scope: !4284)
!4288 = !DILocalVariable(name: "n", arg: 1, scope: !4289, file: !214, line: 93, type: !120)
!4289 = distinct !DISubprogram(name: "xcalloc", scope: !214, file: !214, line: 93, type: !4127, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4290)
!4290 = !{!4288, !4291, !4292}
!4291 = !DILocalVariable(name: "s", arg: 2, scope: !4289, file: !214, line: 93, type: !120)
!4292 = !DILocalVariable(name: "p", scope: !4289, file: !214, line: 95, type: !77)
!4293 = !DILocation(line: 0, scope: !4289, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 86, column: 10, scope: !4284)
!4295 = !DILocation(line: 100, column: 7, scope: !4296, inlinedAt: !4294)
!4296 = distinct !DILexicalBlock(scope: !4289, file: !214, line: 100, column: 7)
!4297 = !DILocation(line: 101, column: 7, scope: !4296, inlinedAt: !4294)
!4298 = !DILocation(line: 101, column: 18, scope: !4296, inlinedAt: !4294)
!4299 = !DILocation(line: 101, column: 16, scope: !4296, inlinedAt: !4294)
!4300 = !DILocation(line: 100, column: 7, scope: !4289, inlinedAt: !4294)
!4301 = !DILocation(line: 102, column: 5, scope: !4296, inlinedAt: !4294)
!4302 = !DILocation(line: 86, column: 3, scope: !4284)
!4303 = !DILocation(line: 0, scope: !4289)
!4304 = !DILocation(line: 100, column: 7, scope: !4296)
!4305 = !DILocation(line: 101, column: 7, scope: !4296)
!4306 = !DILocation(line: 101, column: 18, scope: !4296)
!4307 = !DILocation(line: 101, column: 16, scope: !4296)
!4308 = !DILocation(line: 100, column: 7, scope: !4289)
!4309 = !DILocation(line: 102, column: 5, scope: !4296)
!4310 = !DILocation(line: 103, column: 3, scope: !4289)
!4311 = distinct !DISubprogram(name: "xmemdup", scope: !214, file: !214, line: 111, type: !4312, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4316)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!77, !4314, !120}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4316 = !{!4317, !4318}
!4317 = !DILocalVariable(name: "p", arg: 1, scope: !4311, file: !214, line: 111, type: !4314)
!4318 = !DILocalVariable(name: "s", arg: 2, scope: !4311, file: !214, line: 111, type: !120)
!4319 = !DILocation(line: 0, scope: !4311)
!4320 = !DILocation(line: 0, scope: !4139, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 113, column: 18, scope: !4311)
!4322 = !DILocation(line: 41, column: 13, scope: !4139, inlinedAt: !4321)
!4323 = !DILocation(line: 42, column: 8, scope: !4148, inlinedAt: !4321)
!4324 = !DILocation(line: 42, column: 10, scope: !4148, inlinedAt: !4321)
!4325 = !DILocation(line: 43, column: 5, scope: !4148, inlinedAt: !4321)
!4326 = !DILocalVariable(name: "__dest", arg: 1, scope: !4327, file: !2909, line: 26, type: !4330)
!4327 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 26, type: !4328, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4332)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!77, !4330, !4331, !120}
!4330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!4331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4314)
!4332 = !{!4326, !4333, !4334}
!4333 = !DILocalVariable(name: "__src", arg: 2, scope: !4327, file: !2909, line: 26, type: !4331)
!4334 = !DILocalVariable(name: "__len", arg: 3, scope: !4327, file: !2909, line: 26, type: !120)
!4335 = !DILocation(line: 0, scope: !4327, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 113, column: 10, scope: !4311)
!4337 = !DILocation(line: 29, column: 10, scope: !4327, inlinedAt: !4336)
!4338 = !DILocation(line: 113, column: 3, scope: !4311)
!4339 = distinct !DISubprogram(name: "xstrdup", scope: !214, file: !214, line: 119, type: !852, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !4340)
!4340 = !{!4341}
!4341 = !DILocalVariable(name: "string", arg: 1, scope: !4339, file: !214, line: 119, type: !6)
!4342 = !DILocation(line: 0, scope: !4339)
!4343 = !DILocation(line: 121, column: 27, scope: !4339)
!4344 = !DILocation(line: 121, column: 43, scope: !4339)
!4345 = !DILocation(line: 0, scope: !4311, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 121, column: 10, scope: !4339)
!4347 = !DILocation(line: 0, scope: !4139, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 113, column: 18, scope: !4311, inlinedAt: !4346)
!4349 = !DILocation(line: 41, column: 13, scope: !4139, inlinedAt: !4348)
!4350 = !DILocation(line: 42, column: 8, scope: !4148, inlinedAt: !4348)
!4351 = !DILocation(line: 42, column: 10, scope: !4148, inlinedAt: !4348)
!4352 = !DILocation(line: 43, column: 5, scope: !4148, inlinedAt: !4348)
!4353 = !DILocation(line: 0, scope: !4327, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 113, column: 10, scope: !4311, inlinedAt: !4346)
!4355 = !DILocation(line: 29, column: 10, scope: !4327, inlinedAt: !4354)
!4356 = !DILocation(line: 121, column: 3, scope: !4339)
!4357 = distinct !DISubprogram(name: "xalloc_die", scope: !231, file: !231, line: 32, type: !859, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !4)
!4358 = !DILocation(line: 34, column: 10, scope: !4357)
!4359 = !DILocation(line: 34, column: 33, scope: !4357)
!4360 = !DILocation(line: 34, column: 3, scope: !4357)
!4361 = !DILocation(line: 40, column: 3, scope: !4357)
!4362 = distinct !DISubprogram(name: "rpl_calloc", scope: !233, file: !233, line: 42, type: !4127, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !4363)
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4362, file: !233, line: 42, type: !120)
!4365 = !DILocalVariable(name: "s", arg: 2, scope: !4362, file: !233, line: 42, type: !120)
!4366 = !DILocalVariable(name: "result", scope: !4362, file: !233, line: 44, type: !77)
!4367 = !DILocalVariable(name: "bytes", scope: !4368, file: !233, line: 56, type: !120)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !233, line: 53, column: 5)
!4369 = distinct !DILexicalBlock(scope: !4362, file: !233, line: 47, column: 7)
!4370 = !DILocation(line: 0, scope: !4362)
!4371 = !DILocation(line: 47, column: 9, scope: !4369)
!4372 = !DILocation(line: 47, column: 14, scope: !4369)
!4373 = !DILocation(line: 0, scope: !4368)
!4374 = !DILocation(line: 57, column: 21, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4368, file: !233, line: 57, column: 11)
!4376 = !DILocation(line: 57, column: 11, scope: !4368)
!4377 = !DILocation(line: 59, column: 11, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4375, file: !233, line: 58, column: 9)
!4379 = !DILocation(line: 59, column: 17, scope: !4378)
!4380 = !DILocation(line: 65, column: 12, scope: !4362)
!4381 = !DILocation(line: 72, column: 3, scope: !4362)
!4382 = !DILocation(line: 73, column: 1, scope: !4362)
!4383 = distinct !DISubprogram(name: "rpl_fclose", scope: !235, file: !235, line: 58, type: !4384, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4420)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!35, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4388, file: !762, line: 51, baseType: !35, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4388, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4388, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4388, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4388, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4388, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4388, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4388, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4388, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4388, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4388, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4388, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4388, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4388, file: !762, line: 70, baseType: !4404, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4388, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4388, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4388, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4388, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4388, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4388, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4388, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4388, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4388, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4388, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4388, file: !762, line: 93, baseType: !4404, size: 64, offset: 1344)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4388, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4388, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4388, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4388, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DILocalVariable(name: "fp", arg: 1, scope: !4383, file: !235, line: 58, type: !4386)
!4422 = !DILocalVariable(name: "saved_errno", scope: !4383, file: !235, line: 60, type: !35)
!4423 = !DILocalVariable(name: "fd", scope: !4383, file: !235, line: 61, type: !35)
!4424 = !DILocalVariable(name: "result", scope: !4383, file: !235, line: 62, type: !35)
!4425 = !DILocation(line: 0, scope: !4383)
!4426 = !DILocation(line: 65, column: 8, scope: !4383)
!4427 = !DILocation(line: 66, column: 10, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4383, file: !235, line: 66, column: 7)
!4429 = !DILocation(line: 66, column: 7, scope: !4383)
!4430 = !DILocation(line: 67, column: 12, scope: !4428)
!4431 = !DILocation(line: 67, column: 5, scope: !4428)
!4432 = !DILocation(line: 72, column: 9, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4383, file: !235, line: 72, column: 7)
!4434 = !DILocation(line: 72, column: 23, scope: !4433)
!4435 = !DILocation(line: 72, column: 33, scope: !4433)
!4436 = !DILocation(line: 72, column: 26, scope: !4433)
!4437 = !DILocation(line: 72, column: 59, scope: !4433)
!4438 = !DILocation(line: 73, column: 7, scope: !4433)
!4439 = !DILocation(line: 73, column: 10, scope: !4433)
!4440 = !DILocation(line: 72, column: 7, scope: !4383)
!4441 = !DILocation(line: 100, column: 12, scope: !4383)
!4442 = !DILocation(line: 105, column: 7, scope: !4383)
!4443 = !DILocation(line: 74, column: 19, scope: !4433)
!4444 = !DILocation(line: 105, column: 19, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4383, file: !235, line: 105, column: 7)
!4446 = !DILocation(line: 107, column: 13, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4445, file: !235, line: 106, column: 5)
!4448 = !DILocation(line: 109, column: 5, scope: !4447)
!4449 = !DILocation(line: 112, column: 1, scope: !4383)
!4450 = !DISubprogram(name: "fileno", scope: !757, file: !757, line: 785, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!35, !4404}
!4453 = !DISubprogram(name: "fclose", scope: !757, file: !757, line: 213, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4454 = !DISubprogram(name: "lseek", scope: !4455, file: !4455, line: 334, type: !4456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4455 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!197, !35, !197, !35}
!4458 = distinct !DISubprogram(name: "rpl_fflush", scope: !237, file: !237, line: 129, type: !4459, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !4495)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!35, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4463, file: !762, line: 51, baseType: !35, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4463, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4463, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4463, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4463, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4463, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4463, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4463, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4463, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4463, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4463, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4463, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4463, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4463, file: !762, line: 70, baseType: !4479, size: 64, offset: 832)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4463, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4463, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4463, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4463, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4463, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4463, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4463, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4463, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4463, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4463, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4463, file: !762, line: 93, baseType: !4479, size: 64, offset: 1344)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4463, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4463, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4463, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4463, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!4495 = !{!4496}
!4496 = !DILocalVariable(name: "stream", arg: 1, scope: !4458, file: !237, line: 129, type: !4461)
!4497 = !DILocation(line: 0, scope: !4458)
!4498 = !DILocation(line: 150, column: 14, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4458, file: !237, line: 150, column: 7)
!4500 = !DILocation(line: 150, column: 22, scope: !4499)
!4501 = !DILocation(line: 150, column: 27, scope: !4499)
!4502 = !DILocation(line: 150, column: 7, scope: !4458)
!4503 = !DILocation(line: 151, column: 12, scope: !4499)
!4504 = !DILocation(line: 151, column: 5, scope: !4499)
!4505 = !DILocalVariable(name: "fp", arg: 1, scope: !4506, file: !237, line: 41, type: !4461)
!4506 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !237, file: !237, line: 41, type: !4507, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !4509)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4461}
!4509 = !{!4505}
!4510 = !DILocation(line: 0, scope: !4506, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 156, column: 3, scope: !4458)
!4512 = !DILocation(line: 43, column: 11, scope: !4513, inlinedAt: !4511)
!4513 = distinct !DILexicalBlock(scope: !4506, file: !237, line: 43, column: 7)
!4514 = !{!1067, !831, i64 0}
!4515 = !DILocation(line: 43, column: 18, scope: !4513, inlinedAt: !4511)
!4516 = !DILocation(line: 43, column: 7, scope: !4506, inlinedAt: !4511)
!4517 = !DILocation(line: 45, column: 5, scope: !4513, inlinedAt: !4511)
!4518 = !DILocation(line: 158, column: 10, scope: !4458)
!4519 = !DILocation(line: 158, column: 3, scope: !4458)
!4520 = !DILocation(line: 235, column: 1, scope: !4458)
!4521 = !DISubprogram(name: "fflush", scope: !757, file: !757, line: 218, type: !4522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!35, !4479}
!4524 = distinct !DISubprogram(name: "rpl_fseeko", scope: !239, file: !239, line: 28, type: !4525, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !4562)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!35, !4527, !4561, !35}
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !4530)
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4529, file: !762, line: 51, baseType: !35, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4529, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4529, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4529, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4529, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4529, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4529, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4529, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4529, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4529, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4529, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4529, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4529, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4529, file: !762, line: 70, baseType: !4545, size: 64, offset: 832)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4529, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4529, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4529, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4529, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4529, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4529, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4529, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4529, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4529, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4529, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4529, file: !762, line: 93, baseType: !4545, size: 64, offset: 1344)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4529, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4529, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4529, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4529, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !757, line: 63, baseType: !783)
!4562 = !{!4563, !4564, !4565, !4566}
!4563 = !DILocalVariable(name: "fp", arg: 1, scope: !4524, file: !239, line: 28, type: !4527)
!4564 = !DILocalVariable(name: "offset", arg: 2, scope: !4524, file: !239, line: 28, type: !4561)
!4565 = !DILocalVariable(name: "whence", arg: 3, scope: !4524, file: !239, line: 28, type: !35)
!4566 = !DILocalVariable(name: "pos", scope: !4567, file: !239, line: 117, type: !4561)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !239, line: 113, column: 5)
!4568 = distinct !DILexicalBlock(scope: !4524, file: !239, line: 52, column: 7)
!4569 = !DILocation(line: 0, scope: !4524)
!4570 = !DILocation(line: 52, column: 11, scope: !4568)
!4571 = !{!1067, !690, i64 16}
!4572 = !DILocation(line: 52, column: 31, scope: !4568)
!4573 = !{!1067, !690, i64 8}
!4574 = !DILocation(line: 52, column: 24, scope: !4568)
!4575 = !DILocation(line: 53, column: 7, scope: !4568)
!4576 = !DILocation(line: 53, column: 14, scope: !4568)
!4577 = !DILocation(line: 53, column: 35, scope: !4568)
!4578 = !{!1067, !690, i64 32}
!4579 = !DILocation(line: 53, column: 28, scope: !4568)
!4580 = !DILocation(line: 54, column: 7, scope: !4568)
!4581 = !DILocation(line: 54, column: 14, scope: !4568)
!4582 = !{!1067, !690, i64 72}
!4583 = !DILocation(line: 54, column: 28, scope: !4568)
!4584 = !DILocation(line: 52, column: 7, scope: !4524)
!4585 = !DILocation(line: 117, column: 26, scope: !4567)
!4586 = !DILocation(line: 117, column: 19, scope: !4567)
!4587 = !DILocation(line: 0, scope: !4567)
!4588 = !DILocation(line: 118, column: 15, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4567, file: !239, line: 118, column: 11)
!4590 = !DILocation(line: 118, column: 11, scope: !4567)
!4591 = !DILocation(line: 129, column: 11, scope: !4567)
!4592 = !DILocation(line: 129, column: 18, scope: !4567)
!4593 = !DILocation(line: 130, column: 11, scope: !4567)
!4594 = !DILocation(line: 130, column: 19, scope: !4567)
!4595 = !{!1067, !913, i64 144}
!4596 = !DILocation(line: 161, column: 7, scope: !4567)
!4597 = !DILocation(line: 163, column: 10, scope: !4524)
!4598 = !DILocation(line: 163, column: 3, scope: !4524)
!4599 = !DILocation(line: 164, column: 1, scope: !4524)
!4600 = !DISubprogram(name: "fseeko", scope: !757, file: !757, line: 712, type: !4601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!35, !4545, !197, !35}
!4603 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !241, file: !241, line: 86, type: !4604, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !4618)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!120, !4606, !6, !120, !4607}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2666, line: 6, baseType: !4609)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2668, line: 21, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2668, line: 13, size: 64, elements: !4611)
!4611 = !{!4612, !4613}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4610, file: !2668, line: 15, baseType: !35, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4610, file: !2668, line: 20, baseType: !4614, size: 32, offset: 32)
!4614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4610, file: !2668, line: 16, size: 32, elements: !4615)
!4615 = !{!4616, !4617}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4614, file: !2668, line: 18, baseType: !86, size: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4614, file: !2668, line: 19, baseType: !882, size: 32)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4619 = !DILocalVariable(name: "pwc", arg: 1, scope: !4603, file: !241, line: 86, type: !4606)
!4620 = !DILocalVariable(name: "s", arg: 2, scope: !4603, file: !241, line: 86, type: !6)
!4621 = !DILocalVariable(name: "n", arg: 3, scope: !4603, file: !241, line: 86, type: !120)
!4622 = !DILocalVariable(name: "ps", arg: 4, scope: !4603, file: !241, line: 86, type: !4607)
!4623 = !DILocalVariable(name: "ret", scope: !4603, file: !241, line: 88, type: !120)
!4624 = !DILocalVariable(name: "wc", scope: !4603, file: !241, line: 89, type: !2679)
!4625 = !DILocalVariable(name: "uc", scope: !4626, file: !241, line: 156, type: !198)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !241, line: 155, column: 5)
!4627 = distinct !DILexicalBlock(scope: !4603, file: !241, line: 154, column: 7)
!4628 = !DILocation(line: 0, scope: !4603)
!4629 = !DILocation(line: 89, column: 3, scope: !4603)
!4630 = !DILocation(line: 105, column: 9, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4603, file: !241, line: 105, column: 7)
!4632 = !DILocation(line: 105, column: 7, scope: !4603)
!4633 = !DILocation(line: 145, column: 9, scope: !4603)
!4634 = !DILocation(line: 154, column: 19, scope: !4627)
!4635 = !DILocation(line: 154, column: 26, scope: !4627)
!4636 = !DILocation(line: 154, column: 41, scope: !4627)
!4637 = !DILocation(line: 154, column: 7, scope: !4603)
!4638 = !DILocation(line: 156, column: 26, scope: !4626)
!4639 = !DILocation(line: 0, scope: !4626)
!4640 = !DILocation(line: 157, column: 14, scope: !4626)
!4641 = !DILocation(line: 157, column: 12, scope: !4626)
!4642 = !DILocation(line: 163, column: 1, scope: !4603)
!4643 = !DISubprogram(name: "mbrtowc", scope: !3342, file: !3342, line: 296, type: !4644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!122, !68, !6, !122, !4646}
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4647 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !244, file: !244, line: 49, type: !4648, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4674)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!14, !4650}
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4652)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !176, line: 146, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !872, line: 55, size: 3072, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4666, !4667, !4672, !4673}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !4653, file: !872, line: 57, baseType: !203, size: 16)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !4653, file: !872, line: 58, baseType: !876, size: 32, offset: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !4653, file: !872, line: 59, baseType: !878, size: 256, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !4653, file: !872, line: 61, baseType: !882, size: 32, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !4653, file: !872, line: 63, baseType: !878, size: 256, offset: 352)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !4653, file: !872, line: 65, baseType: !146, size: 2048, offset: 608)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !4653, file: !872, line: 67, baseType: !4662, size: 32, offset: 2656)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !872, line: 42, size: 32, elements: !4663)
!4663 = !{!4664, !4665}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !4662, file: !872, line: 45, baseType: !203, size: 16)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !4662, file: !872, line: 46, baseType: !203, size: 16, offset: 16)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !4653, file: !872, line: 74, baseType: !893, size: 32, offset: 2688)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !4653, file: !872, line: 79, baseType: !4668, size: 64, offset: 2720)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4653, file: !872, line: 75, size: 64, elements: !4669)
!4669 = !{!4670, !4671}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4668, file: !872, line: 77, baseType: !893, size: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4668, file: !872, line: 78, baseType: !893, size: 32, offset: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !4653, file: !872, line: 84, baseType: !900, size: 128, offset: 2784)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4653, file: !872, line: 85, baseType: !806, size: 160, offset: 2912)
!4674 = !{!4675, !4676, !4677}
!4675 = !DILocalVariable(name: "ut", arg: 1, scope: !4647, file: !244, line: 49, type: !4650)
!4676 = !DILocalVariable(name: "p", scope: !4647, file: !244, line: 51, type: !14)
!4677 = !DILocalVariable(name: "trimmed_name", scope: !4647, file: !244, line: 51, type: !14)
!4678 = !DILocation(line: 0, scope: !4647)
!4679 = !DILocation(line: 53, column: 18, scope: !4647)
!4680 = !DILocation(line: 54, column: 26, scope: !4647)
!4681 = !DILocalVariable(name: "__dest", arg: 1, scope: !4682, file: !2909, line: 92, type: !4685)
!4682 = distinct !DISubprogram(name: "strncpy", scope: !2909, file: !2909, line: 92, type: !4683, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4687)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!14, !4685, !4686, !120}
!4685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!4686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4687 = !{!4681, !4688, !4689}
!4688 = !DILocalVariable(name: "__src", arg: 2, scope: !4682, file: !2909, line: 92, type: !4686)
!4689 = !DILocalVariable(name: "__len", arg: 3, scope: !4682, file: !2909, line: 92, type: !120)
!4690 = !DILocation(line: 0, scope: !4682, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 54, column: 3, scope: !4647)
!4692 = !DILocation(line: 95, column: 10, scope: !4682, inlinedAt: !4691)
!4693 = !DILocation(line: 58, column: 3, scope: !4647)
!4694 = !DILocation(line: 58, column: 39, scope: !4647)
!4695 = !DILocation(line: 59, column: 27, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4647, file: !244, line: 59, column: 3)
!4697 = !DILocation(line: 60, column: 21, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4696, file: !244, line: 59, column: 3)
!4699 = !DILocation(line: 60, column: 25, scope: !4698)
!4700 = !DILocation(line: 59, column: 25, scope: !4696)
!4701 = !DILocation(line: 59, column: 3, scope: !4696)
!4702 = !DILocation(line: 60, column: 28, scope: !4698)
!4703 = !DILocation(line: 60, column: 34, scope: !4698)
!4704 = !DILocation(line: 61, column: 13, scope: !4698)
!4705 = distinct !{!4705, !4701, !4706, !732}
!4706 = !DILocation(line: 62, column: 5, scope: !4696)
!4707 = !DILocation(line: 63, column: 3, scope: !4647)
!4708 = distinct !DISubprogram(name: "read_utmp", scope: !244, file: !244, line: 92, type: !4709, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4713)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!35, !6, !221, !4711, !35}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4714 = !DILocalVariable(name: "file", arg: 1, scope: !4708, file: !244, line: 92, type: !6)
!4715 = !DILocalVariable(name: "n_entries", arg: 2, scope: !4708, file: !244, line: 92, type: !221)
!4716 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !4708, file: !244, line: 92, type: !4711)
!4717 = !DILocalVariable(name: "options", arg: 4, scope: !4708, file: !244, line: 93, type: !35)
!4718 = !DILocalVariable(name: "n_read", scope: !4708, file: !244, line: 95, type: !120)
!4719 = !DILocalVariable(name: "n_alloc", scope: !4708, file: !244, line: 96, type: !120)
!4720 = !DILocalVariable(name: "utmp", scope: !4708, file: !244, line: 97, type: !4712)
!4721 = !DILocalVariable(name: "u", scope: !4708, file: !244, line: 98, type: !4712)
!4722 = !DILocation(line: 0, scope: !4708)
!4723 = !DILocation(line: 104, column: 3, scope: !4708)
!4724 = !DILocation(line: 106, column: 3, scope: !4708)
!4725 = !DILocation(line: 108, column: 15, scope: !4708)
!4726 = !DILocation(line: 108, column: 32, scope: !4708)
!4727 = !DILocation(line: 108, column: 3, scope: !4708)
!4728 = !DILocalVariable(name: "u", arg: 1, scope: !4729, file: !244, line: 69, type: !4650)
!4729 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !244, file: !244, line: 69, type: !4730, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!48, !4650, !35}
!4732 = !{!4728, !4733, !4734}
!4733 = !DILocalVariable(name: "options", arg: 2, scope: !4729, file: !244, line: 69, type: !35)
!4734 = !DILocalVariable(name: "user_proc", scope: !4729, file: !244, line: 71, type: !48)
!4735 = !DILocation(line: 0, scope: !4729, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 109, column: 9, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4708, file: !244, line: 109, column: 9)
!4738 = !DILocation(line: 71, column: 20, scope: !4729, inlinedAt: !4736)
!4739 = !DILocation(line: 72, column: 42, scope: !4740, inlinedAt: !4736)
!4740 = distinct !DILexicalBlock(scope: !4729, file: !244, line: 72, column: 7)
!4741 = !DILocation(line: 75, column: 7, scope: !4742, inlinedAt: !4736)
!4742 = distinct !DILexicalBlock(scope: !4729, file: !244, line: 74, column: 7)
!4743 = !DILocation(line: 76, column: 14, scope: !4742, inlinedAt: !4736)
!4744 = !{!1001, !831, i64 4}
!4745 = !DILocation(line: 76, column: 12, scope: !4742, inlinedAt: !4736)
!4746 = !DILocation(line: 77, column: 7, scope: !4742, inlinedAt: !4736)
!4747 = !DILocation(line: 77, column: 11, scope: !4742, inlinedAt: !4736)
!4748 = !DILocation(line: 77, column: 32, scope: !4742, inlinedAt: !4736)
!4749 = !DILocation(line: 77, column: 36, scope: !4742, inlinedAt: !4736)
!4750 = !DILocation(line: 77, column: 39, scope: !4742, inlinedAt: !4736)
!4751 = !DILocation(line: 77, column: 45, scope: !4742, inlinedAt: !4736)
!4752 = !DILocation(line: 74, column: 7, scope: !4729, inlinedAt: !4736)
!4753 = !DILocation(line: 111, column: 20, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !244, line: 111, column: 13)
!4755 = distinct !DILexicalBlock(scope: !4737, file: !244, line: 110, column: 7)
!4756 = !DILocation(line: 111, column: 13, scope: !4755)
!4757 = !DILocation(line: 112, column: 30, scope: !4754)
!4758 = !DILocation(line: 0, scope: !247, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 112, column: 18, scope: !4754)
!4760 = !DILocation(line: 178, column: 9, scope: !4761, inlinedAt: !4759)
!4761 = distinct !DILexicalBlock(scope: !247, file: !217, line: 178, column: 7)
!4762 = !DILocation(line: 178, column: 7, scope: !247, inlinedAt: !4759)
!4763 = !DILocation(line: 180, column: 13, scope: !4764, inlinedAt: !4759)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !217, line: 180, column: 11)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !217, line: 179, column: 5)
!4766 = !DILocation(line: 180, column: 11, scope: !4765, inlinedAt: !4759)
!4767 = !DILocation(line: 191, column: 11, scope: !4768, inlinedAt: !4759)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !217, line: 191, column: 11)
!4769 = !DILocation(line: 191, column: 11, scope: !4765, inlinedAt: !4759)
!4770 = !DILocation(line: 192, column: 9, scope: !4768, inlinedAt: !4759)
!4771 = !DILocation(line: 201, column: 11, scope: !4772, inlinedAt: !4759)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !217, line: 200, column: 11)
!4773 = distinct !DILexicalBlock(scope: !4761, file: !217, line: 195, column: 5)
!4774 = !DILocation(line: 200, column: 11, scope: !4773, inlinedAt: !4759)
!4775 = !DILocation(line: 202, column: 9, scope: !4772, inlinedAt: !4759)
!4776 = !DILocation(line: 203, column: 14, scope: !4773, inlinedAt: !4759)
!4777 = !DILocation(line: 203, column: 18, scope: !4773, inlinedAt: !4759)
!4778 = !DILocation(line: 203, column: 9, scope: !4773, inlinedAt: !4759)
!4779 = !DILocation(line: 207, column: 25, scope: !247, inlinedAt: !4759)
!4780 = !DILocation(line: 207, column: 10, scope: !247, inlinedAt: !4759)
!4781 = !DILocation(line: 112, column: 18, scope: !4754)
!4782 = !DILocation(line: 112, column: 11, scope: !4754)
!4783 = !DILocation(line: 114, column: 20, scope: !4755)
!4784 = !DILocation(line: 114, column: 9, scope: !4755)
!4785 = !DILocation(line: 114, column: 26, scope: !4755)
!4786 = !{i64 0, i64 2, !2901, i64 4, i64 4, !830, i64 8, i64 32, !998, i64 40, i64 4, !998, i64 44, i64 32, !998, i64 76, i64 256, !998, i64 332, i64 2, !2901, i64 334, i64 2, !2901, i64 336, i64 4, !830, i64 340, i64 4, !830, i64 344, i64 4, !830, i64 348, i64 16, !998, i64 364, i64 20, !998}
!4787 = !DILocation(line: 115, column: 7, scope: !4755)
!4788 = distinct !{!4788, !4727, !4789, !732}
!4789 = !DILocation(line: 115, column: 7, scope: !4708)
!4790 = !DILocation(line: 117, column: 3, scope: !4708)
!4791 = !DILocation(line: 119, column: 14, scope: !4708)
!4792 = !DILocation(line: 120, column: 13, scope: !4708)
!4793 = !DILocation(line: 122, column: 3, scope: !4708)
!4794 = !DISubprogram(name: "utmpxname", scope: !4795, file: !4795, line: 93, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4795 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!35, !6}
!4798 = !DISubprogram(name: "setutxent", scope: !4795, file: !4795, line: 53, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4799 = !DISubprogram(name: "getutxent", scope: !4795, file: !4795, line: 65, type: !4800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4803 = !DISubprogram(name: "kill", scope: !4804, file: !4804, line: 112, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4804 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!4805 = !DISubprogram(name: "endutxent", scope: !4795, file: !4795, line: 59, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4806 = distinct !DISubprogram(name: "tzalloc", scope: !255, file: !255, line: 95, type: !4807, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!265, !6}
!4809 = !{!4810, !4811, !4812, !4813}
!4810 = !DILocalVariable(name: "name", arg: 1, scope: !4806, file: !255, line: 95, type: !6)
!4811 = !DILocalVariable(name: "name_size", scope: !4806, file: !255, line: 97, type: !120)
!4812 = !DILocalVariable(name: "abbr_size", scope: !4806, file: !255, line: 98, type: !120)
!4813 = !DILocalVariable(name: "tz", scope: !4806, file: !255, line: 99, type: !265)
!4814 = !DILocation(line: 0, scope: !4806)
!4815 = !DILocation(line: 97, column: 22, scope: !4806)
!4816 = !DILocation(line: 97, column: 29, scope: !4806)
!4817 = !DILocation(line: 97, column: 43, scope: !4806)
!4818 = !DILocation(line: 98, column: 32, scope: !4806)
!4819 = !DILocation(line: 99, column: 27, scope: !4806)
!4820 = !DILocation(line: 99, column: 19, scope: !4806)
!4821 = !DILocation(line: 100, column: 7, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4806, file: !255, line: 100, column: 7)
!4823 = !DILocation(line: 100, column: 7, scope: !4806)
!4824 = !DILocation(line: 102, column: 11, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !255, line: 101, column: 5)
!4826 = !DILocation(line: 102, column: 16, scope: !4825)
!4827 = !DILocation(line: 106, column: 23, scope: !4825)
!4828 = !DILocation(line: 106, column: 11, scope: !4825)
!4829 = !DILocation(line: 106, column: 21, scope: !4825)
!4830 = !DILocation(line: 107, column: 11, scope: !4825)
!4831 = !DILocation(line: 107, column: 20, scope: !4825)
!4832 = !DILocation(line: 108, column: 11, scope: !4825)
!4833 = !DILocalVariable(name: "abbrs", arg: 1, scope: !4834, file: !255, line: 86, type: !14)
!4834 = distinct !DISubprogram(name: "extend_abbrs", scope: !255, file: !255, line: 86, type: !4835, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4837)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{null, !14, !6, !120}
!4837 = !{!4833, !4838, !4839}
!4838 = !DILocalVariable(name: "abbr", arg: 2, scope: !4834, file: !255, line: 86, type: !6)
!4839 = !DILocalVariable(name: "abbr_size", arg: 3, scope: !4834, file: !255, line: 86, type: !120)
!4840 = !DILocation(line: 0, scope: !4834, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 109, column: 9, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4825, file: !255, line: 108, column: 11)
!4843 = !DILocalVariable(name: "__dest", arg: 1, scope: !4844, file: !2909, line: 26, type: !4330)
!4844 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 26, type: !4328, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4845)
!4845 = !{!4843, !4846, !4847}
!4846 = !DILocalVariable(name: "__src", arg: 2, scope: !4844, file: !2909, line: 26, type: !4331)
!4847 = !DILocalVariable(name: "__len", arg: 3, scope: !4844, file: !2909, line: 26, type: !120)
!4848 = !DILocation(line: 0, scope: !4844, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 88, column: 3, scope: !4834, inlinedAt: !4841)
!4850 = !DILocation(line: 29, column: 10, scope: !4844, inlinedAt: !4849)
!4851 = !DILocation(line: 89, column: 3, scope: !4834, inlinedAt: !4841)
!4852 = !DILocation(line: 89, column: 20, scope: !4834, inlinedAt: !4841)
!4853 = !DILocation(line: 109, column: 9, scope: !4842)
!4854 = !DILocation(line: 111, column: 3, scope: !4806)
!4855 = distinct !DISubprogram(name: "tzfree", scope: !255, file: !255, line: 196, type: !4856, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !265}
!4858 = !{!4859, !4860}
!4859 = !DILocalVariable(name: "tz", arg: 1, scope: !4855, file: !255, line: 196, type: !265)
!4860 = !DILocalVariable(name: "next", scope: !4861, file: !255, line: 201, type: !265)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !255, line: 200, column: 7)
!4862 = distinct !DILexicalBlock(scope: !4855, file: !255, line: 198, column: 7)
!4863 = !DILocation(line: 0, scope: !4855)
!4864 = !DILocation(line: 198, column: 7, scope: !4855)
!4865 = !DILocation(line: 201, column: 31, scope: !4861)
!4866 = !DILocation(line: 0, scope: !4861)
!4867 = !DILocation(line: 202, column: 15, scope: !4861)
!4868 = !DILocation(line: 202, column: 9, scope: !4861)
!4869 = !DILocation(line: 199, column: 5, scope: !4862)
!4870 = distinct !{!4870, !4869, !4871, !732}
!4871 = !DILocation(line: 204, column: 7, scope: !4862)
!4872 = !DILocation(line: 205, column: 1, scope: !4855)
!4873 = distinct !DISubprogram(name: "localtime_rz", scope: !255, file: !255, line: 287, type: !4874, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4892)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!4876, !265, !4890, !4876}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !933, line: 7, size: 448, elements: !4878)
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !4877, file: !933, line: 9, baseType: !35, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !4877, file: !933, line: 10, baseType: !35, size: 32, offset: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !4877, file: !933, line: 11, baseType: !35, size: 32, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !4877, file: !933, line: 12, baseType: !35, size: 32, offset: 96)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !4877, file: !933, line: 13, baseType: !35, size: 32, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !4877, file: !933, line: 14, baseType: !35, size: 32, offset: 160)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !4877, file: !933, line: 15, baseType: !35, size: 32, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !4877, file: !933, line: 16, baseType: !35, size: 32, offset: 224)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !4877, file: !933, line: 17, baseType: !35, size: 32, offset: 256)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !4877, file: !933, line: 20, baseType: !197, size: 64, offset: 320)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !4877, file: !933, line: 21, baseType: !6, size: 64, offset: 384)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!4892 = !{!4893, !4894, !4895, !4896, !4899}
!4893 = !DILocalVariable(name: "tz", arg: 1, scope: !4873, file: !255, line: 287, type: !265)
!4894 = !DILocalVariable(name: "t", arg: 2, scope: !4873, file: !255, line: 287, type: !4890)
!4895 = !DILocalVariable(name: "tm", arg: 3, scope: !4873, file: !255, line: 287, type: !4876)
!4896 = !DILocalVariable(name: "old_tz", scope: !4897, file: !255, line: 308, type: !265)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !255, line: 307, column: 5)
!4898 = distinct !DILexicalBlock(scope: !4873, file: !255, line: 304, column: 7)
!4899 = !DILocalVariable(name: "abbr_saved", scope: !4900, file: !255, line: 311, type: !48)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !255, line: 310, column: 9)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !255, line: 309, column: 11)
!4902 = !DILocation(line: 0, scope: !4873)
!4903 = !DILocation(line: 304, column: 8, scope: !4898)
!4904 = !DILocation(line: 304, column: 7, scope: !4873)
!4905 = !DILocation(line: 305, column: 12, scope: !4898)
!4906 = !DILocation(line: 305, column: 5, scope: !4898)
!4907 = !DILocation(line: 308, column: 27, scope: !4897)
!4908 = !DILocation(line: 0, scope: !4897)
!4909 = !DILocation(line: 309, column: 11, scope: !4901)
!4910 = !DILocation(line: 309, column: 11, scope: !4897)
!4911 = !DILocation(line: 311, column: 29, scope: !4900)
!4912 = !DILocation(line: 311, column: 49, scope: !4900)
!4913 = !DILocation(line: 311, column: 52, scope: !4900)
!4914 = !DILocation(line: 0, scope: !4900)
!4915 = !DILocalVariable(name: "tz", arg: 1, scope: !4916, file: !255, line: 269, type: !265)
!4916 = distinct !DISubprogram(name: "revert_tz", scope: !255, file: !255, line: 269, type: !4917, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!48, !265}
!4919 = !{!4915, !4920, !4923}
!4920 = !DILocalVariable(name: "saved_errno", scope: !4921, file: !255, line: 275, type: !35)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !255, line: 274, column: 5)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !255, line: 271, column: 7)
!4923 = !DILocalVariable(name: "ok", scope: !4921, file: !255, line: 276, type: !48)
!4924 = !DILocation(line: 0, scope: !4916, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 312, column: 15, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4900, file: !255, line: 312, column: 15)
!4927 = !DILocation(line: 271, column: 10, scope: !4922, inlinedAt: !4925)
!4928 = !DILocation(line: 271, column: 7, scope: !4916, inlinedAt: !4925)
!4929 = !DILocation(line: 275, column: 25, scope: !4921, inlinedAt: !4925)
!4930 = !DILocation(line: 0, scope: !4921, inlinedAt: !4925)
!4931 = !DILocalVariable(name: "tz", arg: 1, scope: !4932, file: !255, line: 229, type: !265)
!4932 = distinct !DISubprogram(name: "change_env", scope: !255, file: !255, line: 229, type: !4917, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4933)
!4933 = !{!4931}
!4934 = !DILocation(line: 0, scope: !4932, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 276, column: 17, scope: !4921, inlinedAt: !4925)
!4936 = !DILocation(line: 231, column: 22, scope: !4937, inlinedAt: !4935)
!4937 = distinct !DILexicalBlock(scope: !4932, file: !255, line: 231, column: 7)
!4938 = !DILocation(line: 231, column: 18, scope: !4937, inlinedAt: !4935)
!4939 = !DILocalVariable(name: "tz", arg: 1, scope: !4940, file: !255, line: 220, type: !6)
!4940 = distinct !DISubprogram(name: "setenv_TZ", scope: !255, file: !255, line: 220, type: !4796, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4941)
!4941 = !{!4939}
!4942 = !DILocation(line: 0, scope: !4940, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 231, column: 7, scope: !4937, inlinedAt: !4935)
!4944 = !DILocation(line: 222, column: 10, scope: !4940, inlinedAt: !4943)
!4945 = !DILocation(line: 222, column: 15, scope: !4940, inlinedAt: !4943)
!4946 = !DILocation(line: 222, column: 38, scope: !4940, inlinedAt: !4943)
!4947 = !DILocation(line: 231, column: 52, scope: !4937, inlinedAt: !4935)
!4948 = !DILocation(line: 231, column: 7, scope: !4932, inlinedAt: !4935)
!4949 = !DILocation(line: 233, column: 3, scope: !4932, inlinedAt: !4935)
!4950 = !DILocation(line: 277, column: 11, scope: !4921, inlinedAt: !4925)
!4951 = !DILocation(line: 278, column: 23, scope: !4952, inlinedAt: !4925)
!4952 = distinct !DILexicalBlock(scope: !4921, file: !255, line: 277, column: 11)
!4953 = !DILocation(line: 278, column: 9, scope: !4952, inlinedAt: !4925)
!4954 = !DILocation(line: 0, scope: !4855, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 279, column: 7, scope: !4921, inlinedAt: !4925)
!4956 = !DILocation(line: 198, column: 7, scope: !4855, inlinedAt: !4955)
!4957 = !DILocation(line: 201, column: 31, scope: !4861, inlinedAt: !4955)
!4958 = !DILocation(line: 0, scope: !4861, inlinedAt: !4955)
!4959 = !DILocation(line: 202, column: 15, scope: !4861, inlinedAt: !4955)
!4960 = !DILocation(line: 202, column: 9, scope: !4861, inlinedAt: !4955)
!4961 = !DILocation(line: 199, column: 5, scope: !4862, inlinedAt: !4955)
!4962 = distinct !{!4962, !4961, !4963, !732}
!4963 = !DILocation(line: 204, column: 7, scope: !4862, inlinedAt: !4955)
!4964 = !DILocation(line: 280, column: 13, scope: !4921, inlinedAt: !4925)
!4965 = !DILocation(line: 312, column: 34, scope: !4926)
!4966 = !DILocation(line: 0, scope: !4898)
!4967 = !DILocation(line: 317, column: 1, scope: !4873)
!4968 = !DISubprogram(name: "gmtime_r", scope: !1099, file: !1099, line: 128, type: !4969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!4876, !1106, !4876}
!4971 = distinct !DISubprogram(name: "set_tz", scope: !255, file: !255, line: 242, type: !4972, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!265, !265}
!4974 = !{!4975, !4976, !4977, !4980}
!4975 = !DILocalVariable(name: "tz", arg: 1, scope: !4971, file: !255, line: 242, type: !265)
!4976 = !DILocalVariable(name: "env_tz", scope: !4971, file: !255, line: 244, type: !14)
!4977 = !DILocalVariable(name: "old_tz", scope: !4978, file: !255, line: 251, type: !265)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !255, line: 250, column: 5)
!4979 = distinct !DILexicalBlock(scope: !4971, file: !255, line: 245, column: 7)
!4980 = !DILocalVariable(name: "saved_errno", scope: !4981, file: !255, line: 256, type: !35)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !255, line: 255, column: 9)
!4982 = distinct !DILexicalBlock(scope: !4978, file: !255, line: 254, column: 11)
!4983 = !DILocation(line: 0, scope: !4971)
!4984 = !DILocation(line: 214, column: 10, scope: !4985, inlinedAt: !4988)
!4985 = distinct !DISubprogram(name: "getenv_TZ", scope: !255, file: !255, line: 212, type: !4986, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!14}
!4988 = distinct !DILocation(line: 244, column: 18, scope: !4971)
!4989 = !DILocation(line: 245, column: 7, scope: !4979)
!4990 = !DILocation(line: 0, scope: !4979)
!4991 = !DILocation(line: 245, column: 7, scope: !4971)
!4992 = !DILocation(line: 246, column: 23, scope: !4979)
!4993 = !DILocation(line: 246, column: 34, scope: !4979)
!4994 = !DILocation(line: 246, column: 26, scope: !4979)
!4995 = !DILocation(line: 246, column: 53, scope: !4979)
!4996 = !DILocation(line: 0, scope: !4806, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 251, column: 27, scope: !4978)
!4998 = !DILocation(line: 97, column: 29, scope: !4806, inlinedAt: !4997)
!4999 = !DILocation(line: 97, column: 43, scope: !4806, inlinedAt: !4997)
!5000 = !DILocation(line: 98, column: 32, scope: !4806, inlinedAt: !4997)
!5001 = !DILocation(line: 99, column: 27, scope: !4806, inlinedAt: !4997)
!5002 = !DILocation(line: 99, column: 19, scope: !4806, inlinedAt: !4997)
!5003 = !DILocation(line: 100, column: 7, scope: !4822, inlinedAt: !4997)
!5004 = !DILocation(line: 100, column: 7, scope: !4806, inlinedAt: !4997)
!5005 = !DILocation(line: 102, column: 11, scope: !4825, inlinedAt: !4997)
!5006 = !DILocation(line: 102, column: 16, scope: !4825, inlinedAt: !4997)
!5007 = !DILocation(line: 106, column: 23, scope: !4825, inlinedAt: !4997)
!5008 = !DILocation(line: 106, column: 11, scope: !4825, inlinedAt: !4997)
!5009 = !DILocation(line: 106, column: 21, scope: !4825, inlinedAt: !4997)
!5010 = !DILocation(line: 107, column: 11, scope: !4825, inlinedAt: !4997)
!5011 = !DILocation(line: 107, column: 20, scope: !4825, inlinedAt: !4997)
!5012 = !DILocation(line: 108, column: 11, scope: !4825, inlinedAt: !4997)
!5013 = !DILocation(line: 0, scope: !4834, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 109, column: 9, scope: !4842, inlinedAt: !4997)
!5015 = !DILocation(line: 0, scope: !4844, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 88, column: 3, scope: !4834, inlinedAt: !5014)
!5017 = !DILocation(line: 29, column: 10, scope: !4844, inlinedAt: !5016)
!5018 = !DILocation(line: 89, column: 3, scope: !4834, inlinedAt: !5014)
!5019 = !DILocation(line: 89, column: 20, scope: !4834, inlinedAt: !5014)
!5020 = !DILocation(line: 109, column: 9, scope: !4842, inlinedAt: !4997)
!5021 = !DILocation(line: 0, scope: !4978)
!5022 = !DILocation(line: 0, scope: !4932, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 254, column: 13, scope: !4982)
!5024 = !DILocation(line: 231, column: 22, scope: !4937, inlinedAt: !5023)
!5025 = !DILocation(line: 231, column: 18, scope: !4937, inlinedAt: !5023)
!5026 = !DILocation(line: 0, scope: !4940, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 231, column: 7, scope: !4937, inlinedAt: !5023)
!5028 = !DILocation(line: 222, column: 10, scope: !4940, inlinedAt: !5027)
!5029 = !DILocation(line: 222, column: 15, scope: !4940, inlinedAt: !5027)
!5030 = !DILocation(line: 222, column: 38, scope: !4940, inlinedAt: !5027)
!5031 = !DILocation(line: 231, column: 52, scope: !4937, inlinedAt: !5023)
!5032 = !DILocation(line: 231, column: 7, scope: !4932, inlinedAt: !5023)
!5033 = !DILocation(line: 233, column: 3, scope: !4932, inlinedAt: !5023)
!5034 = !DILocation(line: 254, column: 11, scope: !4978)
!5035 = !DILocation(line: 256, column: 29, scope: !4981)
!5036 = !DILocation(line: 0, scope: !4981)
!5037 = !DILocation(line: 0, scope: !4855, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 257, column: 11, scope: !4981)
!5039 = !DILocation(line: 198, column: 7, scope: !4855, inlinedAt: !5038)
!5040 = !DILocation(line: 201, column: 31, scope: !4861, inlinedAt: !5038)
!5041 = !DILocation(line: 0, scope: !4861, inlinedAt: !5038)
!5042 = !DILocation(line: 202, column: 15, scope: !4861, inlinedAt: !5038)
!5043 = !DILocation(line: 202, column: 9, scope: !4861, inlinedAt: !5038)
!5044 = !DILocation(line: 199, column: 5, scope: !4862, inlinedAt: !5038)
!5045 = distinct !{!5045, !5044, !5046, !732}
!5046 = !DILocation(line: 204, column: 7, scope: !4862, inlinedAt: !5038)
!5047 = !DILocation(line: 258, column: 17, scope: !4981)
!5048 = !DILocation(line: 263, column: 1, scope: !4971)
!5049 = !DISubprogram(name: "localtime_r", scope: !1099, file: !1099, line: 133, type: !4969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5050 = distinct !DISubprogram(name: "save_abbr", scope: !255, file: !255, line: 119, type: !5051, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!48, !265, !4876}
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5064}
!5054 = !DILocalVariable(name: "tz", arg: 1, scope: !5050, file: !255, line: 119, type: !265)
!5055 = !DILocalVariable(name: "tm", arg: 2, scope: !5050, file: !255, line: 119, type: !4876)
!5056 = !DILocalVariable(name: "zone", scope: !5050, file: !255, line: 122, type: !6)
!5057 = !DILocalVariable(name: "zone_copy", scope: !5050, file: !255, line: 123, type: !14)
!5058 = !DILocalVariable(name: "zone_size", scope: !5059, file: !255, line: 153, type: !120)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !255, line: 152, column: 13)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !255, line: 151, column: 15)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !255, line: 150, column: 9)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !255, line: 146, column: 5)
!5063 = distinct !DILexicalBlock(scope: !5050, file: !255, line: 145, column: 7)
!5064 = !DILocalVariable(name: "zone_used", scope: !5059, file: !255, line: 154, type: !120)
!5065 = !DILocation(line: 0, scope: !5050)
!5066 = !DILocation(line: 130, column: 14, scope: !5050)
!5067 = !DILocation(line: 142, column: 8, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5050, file: !255, line: 142, column: 7)
!5069 = !DILocation(line: 142, column: 13, scope: !5068)
!5070 = !DILocation(line: 142, column: 17, scope: !5068)
!5071 = !DILocation(line: 142, column: 29, scope: !5068)
!5072 = !DILocation(line: 142, column: 37, scope: !5068)
!5073 = !DILocation(line: 142, column: 60, scope: !5068)
!5074 = !DILocation(line: 142, column: 47, scope: !5068)
!5075 = !DILocation(line: 142, column: 45, scope: !5068)
!5076 = !DILocation(line: 142, column: 7, scope: !5050)
!5077 = !DILocation(line: 145, column: 7, scope: !5063)
!5078 = !DILocation(line: 145, column: 7, scope: !5050)
!5079 = !DILocation(line: 147, column: 19, scope: !5062)
!5080 = !DILocation(line: 149, column: 14, scope: !5062)
!5081 = !DILocation(line: 149, column: 39, scope: !5062)
!5082 = !DILocation(line: 149, column: 7, scope: !5062)
!5083 = !DILocation(line: 151, column: 18, scope: !5060)
!5084 = !DILocation(line: 151, column: 29, scope: !5060)
!5085 = !DILocation(line: 151, column: 46, scope: !5060)
!5086 = !DILocation(line: 151, column: 43, scope: !5060)
!5087 = !DILocation(line: 151, column: 56, scope: !5060)
!5088 = !DILocation(line: 151, column: 63, scope: !5060)
!5089 = !DILocation(line: 151, column: 59, scope: !5060)
!5090 = !DILocation(line: 151, column: 15, scope: !5061)
!5091 = !DILocation(line: 153, column: 34, scope: !5059)
!5092 = !DILocation(line: 153, column: 48, scope: !5059)
!5093 = !DILocation(line: 0, scope: !5059)
!5094 = !DILocation(line: 154, column: 44, scope: !5059)
!5095 = !DILocation(line: 155, column: 28, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5059, file: !255, line: 155, column: 19)
!5097 = !DILocation(line: 155, column: 40, scope: !5096)
!5098 = !DILocation(line: 155, column: 19, scope: !5059)
!5099 = !DILocation(line: 157, column: 19, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5096, file: !255, line: 156, column: 17)
!5101 = !DILocation(line: 157, column: 25, scope: !5100)
!5102 = !DILocation(line: 158, column: 19, scope: !5100)
!5103 = !DILocation(line: 160, column: 29, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5059, file: !255, line: 160, column: 19)
!5105 = !DILocation(line: 160, column: 41, scope: !5104)
!5106 = !DILocation(line: 160, column: 19, scope: !5059)
!5107 = !DILocation(line: 0, scope: !4834, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 161, column: 17, scope: !5104)
!5109 = !DILocation(line: 0, scope: !4844, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 88, column: 3, scope: !4834, inlinedAt: !5108)
!5111 = !DILocation(line: 29, column: 10, scope: !4844, inlinedAt: !5110)
!5112 = !DILocation(line: 89, column: 3, scope: !4834, inlinedAt: !5108)
!5113 = !DILocation(line: 89, column: 20, scope: !4834, inlinedAt: !5108)
!5114 = !DILocation(line: 161, column: 17, scope: !5104)
!5115 = !DILocation(line: 0, scope: !4806, inlinedAt: !5116)
!5116 = distinct !DILocation(line: 164, column: 35, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5104, file: !255, line: 163, column: 17)
!5118 = !DILocation(line: 98, column: 32, scope: !4806, inlinedAt: !5116)
!5119 = !DILocation(line: 99, column: 27, scope: !4806, inlinedAt: !5116)
!5120 = !DILocation(line: 99, column: 19, scope: !4806, inlinedAt: !5116)
!5121 = !DILocation(line: 100, column: 7, scope: !4822, inlinedAt: !5116)
!5122 = !DILocation(line: 100, column: 7, scope: !4806, inlinedAt: !5116)
!5123 = !DILocation(line: 164, column: 33, scope: !5117)
!5124 = !DILocation(line: 165, column: 23, scope: !5117)
!5125 = !DILocation(line: 102, column: 11, scope: !4825, inlinedAt: !5116)
!5126 = !DILocation(line: 102, column: 16, scope: !4825, inlinedAt: !5116)
!5127 = !DILocation(line: 106, column: 11, scope: !4825, inlinedAt: !5116)
!5128 = !DILocation(line: 106, column: 21, scope: !4825, inlinedAt: !5116)
!5129 = !DILocation(line: 107, column: 11, scope: !4825, inlinedAt: !5116)
!5130 = !DILocation(line: 107, column: 20, scope: !4825, inlinedAt: !5116)
!5131 = !DILocation(line: 0, scope: !4834, inlinedAt: !5132)
!5132 = distinct !DILocation(line: 109, column: 9, scope: !4842, inlinedAt: !5116)
!5133 = !DILocation(line: 0, scope: !4844, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 88, column: 3, scope: !4834, inlinedAt: !5132)
!5135 = !DILocation(line: 29, column: 10, scope: !4844, inlinedAt: !5134)
!5136 = !DILocation(line: 89, column: 3, scope: !4834, inlinedAt: !5132)
!5137 = !DILocation(line: 89, column: 20, scope: !4834, inlinedAt: !5132)
!5138 = !DILocation(line: 167, column: 23, scope: !5117)
!5139 = !DILocation(line: 167, column: 33, scope: !5117)
!5140 = !DILocation(line: 168, column: 31, scope: !5117)
!5141 = !DILocation(line: 173, column: 24, scope: !5061)
!5142 = !DILocation(line: 173, column: 43, scope: !5061)
!5143 = !DILocation(line: 173, column: 21, scope: !5061)
!5144 = !DILocation(line: 174, column: 16, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5061, file: !255, line: 174, column: 15)
!5146 = !DILocation(line: 174, column: 27, scope: !5145)
!5147 = !DILocation(line: 174, column: 34, scope: !5145)
!5148 = !DILocation(line: 174, column: 30, scope: !5145)
!5149 = !DILocation(line: 174, column: 15, scope: !5061)
!5150 = !DILocation(line: 0, scope: !5061)
!5151 = distinct !{!5151, !5082, !5152, !732}
!5152 = !DILocation(line: 179, column: 9, scope: !5062)
!5153 = !DILocation(line: 184, column: 15, scope: !5050)
!5154 = !DILocation(line: 191, column: 3, scope: !5050)
!5155 = !DILocation(line: 192, column: 1, scope: !5050)
!5156 = !DISubprogram(name: "setenv", scope: !855, file: !855, line: 653, type: !5157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!35, !6, !6, !35}
!5159 = !DISubprogram(name: "unsetenv", scope: !855, file: !855, line: 657, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5160 = !DISubprogram(name: "tzset", scope: !1099, file: !1099, line: 170, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5161 = !DISubprogram(name: "getenv", scope: !855, file: !855, line: 634, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5162 = distinct !DISubprogram(name: "mktime_z", scope: !255, file: !255, line: 321, type: !5163, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !5165)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!194, !265, !4876}
!5165 = !{!5166, !5167, !5168, !5171, !5174, !5175}
!5166 = !DILocalVariable(name: "tz", arg: 1, scope: !5162, file: !255, line: 321, type: !265)
!5167 = !DILocalVariable(name: "tm", arg: 2, scope: !5162, file: !255, line: 321, type: !4876)
!5168 = !DILocalVariable(name: "old_tz", scope: !5169, file: !255, line: 327, type: !265)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !255, line: 326, column: 5)
!5170 = distinct !DILexicalBlock(scope: !5162, file: !255, line: 323, column: 7)
!5171 = !DILocalVariable(name: "t", scope: !5172, file: !255, line: 330, type: !194)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !255, line: 329, column: 9)
!5173 = distinct !DILexicalBlock(scope: !5169, file: !255, line: 328, column: 11)
!5174 = !DILocalVariable(name: "badtime", scope: !5172, file: !255, line: 332, type: !194)
!5175 = !DILocalVariable(name: "tm_1", scope: !5172, file: !255, line: 333, type: !4877)
!5176 = !DILocation(line: 0, scope: !5162)
!5177 = !DILocation(line: 323, column: 8, scope: !5170)
!5178 = !DILocation(line: 323, column: 7, scope: !5162)
!5179 = !DILocation(line: 324, column: 12, scope: !5170)
!5180 = !DILocation(line: 324, column: 5, scope: !5170)
!5181 = !DILocation(line: 327, column: 27, scope: !5169)
!5182 = !DILocation(line: 0, scope: !5169)
!5183 = !DILocation(line: 328, column: 11, scope: !5173)
!5184 = !DILocation(line: 328, column: 11, scope: !5169)
!5185 = !DILocation(line: 330, column: 11, scope: !5172)
!5186 = !DILocation(line: 330, column: 22, scope: !5172)
!5187 = !DILocation(line: 0, scope: !5172)
!5188 = !DILocation(line: 330, column: 18, scope: !5172)
!5189 = !DILocation(line: 333, column: 11, scope: !5172)
!5190 = !DILocation(line: 333, column: 21, scope: !5172)
!5191 = !DILocation(line: 334, column: 18, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5172, file: !255, line: 334, column: 15)
!5193 = !DILocation(line: 335, column: 16, scope: !5192)
!5194 = !DILocation(line: 335, column: 20, scope: !5192)
!5195 = !DILocation(line: 335, column: 44, scope: !5192)
!5196 = !DILocalVariable(name: "a", arg: 1, scope: !5197, file: !255, line: 69, type: !5200)
!5197 = distinct !DISubprogram(name: "equal_tm", scope: !255, file: !255, line: 69, type: !5198, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !5202)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!35, !5200, !5200}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!5202 = !{!5196, !5203}
!5203 = !DILocalVariable(name: "b", arg: 2, scope: !5197, file: !255, line: 69, type: !5200)
!5204 = !DILocation(line: 0, scope: !5197, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 335, column: 47, scope: !5192)
!5206 = !DILocation(line: 71, column: 17, scope: !5197, inlinedAt: !5205)
!5207 = !DILocation(line: 71, column: 29, scope: !5197, inlinedAt: !5205)
!5208 = !DILocation(line: 71, column: 24, scope: !5197, inlinedAt: !5205)
!5209 = !DILocation(line: 75, column: 19, scope: !5197, inlinedAt: !5205)
!5210 = !DILocation(line: 75, column: 31, scope: !5197, inlinedAt: !5205)
!5211 = !DILocation(line: 75, column: 26, scope: !5197, inlinedAt: !5205)
!5212 = !DILocation(line: 76, column: 19, scope: !5197, inlinedAt: !5205)
!5213 = !DILocation(line: 76, column: 32, scope: !5197, inlinedAt: !5205)
!5214 = !DILocation(line: 76, column: 27, scope: !5197, inlinedAt: !5205)
!5215 = !DILocation(line: 77, column: 32, scope: !5197, inlinedAt: !5205)
!5216 = !DILocation(line: 77, column: 45, scope: !5197, inlinedAt: !5205)
!5217 = !DILocalVariable(name: "a", arg: 1, scope: !5218, file: !255, line: 62, type: !35)
!5218 = distinct !DISubprogram(name: "isdst_differ", scope: !255, file: !255, line: 62, type: !5219, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !5221)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!48, !35, !35}
!5221 = !{!5217, !5222}
!5222 = !DILocalVariable(name: "b", arg: 2, scope: !5218, file: !255, line: 62, type: !35)
!5223 = !DILocation(line: 0, scope: !5218, inlinedAt: !5224)
!5224 = distinct !DILocation(line: 77, column: 15, scope: !5197, inlinedAt: !5205)
!5225 = !DILocation(line: 64, column: 10, scope: !5218, inlinedAt: !5224)
!5226 = !DILocation(line: 64, column: 16, scope: !5218, inlinedAt: !5224)
!5227 = !DILocation(line: 64, column: 13, scope: !5218, inlinedAt: !5224)
!5228 = !DILocation(line: 64, column: 19, scope: !5218, inlinedAt: !5224)
!5229 = !DILocation(line: 77, column: 15, scope: !5197, inlinedAt: !5205)
!5230 = !DILocation(line: 77, column: 13, scope: !5197, inlinedAt: !5205)
!5231 = !DILocation(line: 71, column: 10, scope: !5197, inlinedAt: !5205)
!5232 = !DILocation(line: 336, column: 15, scope: !5192)
!5233 = !DILocation(line: 336, column: 19, scope: !5192)
!5234 = !DILocation(line: 334, column: 15, scope: !5172)
!5235 = !DILocation(line: 337, column: 15, scope: !5192)
!5236 = !DILocation(line: 337, column: 13, scope: !5192)
!5237 = !DILocation(line: 0, scope: !4916, inlinedAt: !5238)
!5238 = distinct !DILocation(line: 339, column: 15, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5172, file: !255, line: 339, column: 15)
!5240 = !DILocation(line: 271, column: 10, scope: !4922, inlinedAt: !5238)
!5241 = !DILocation(line: 271, column: 7, scope: !4916, inlinedAt: !5238)
!5242 = !DILocation(line: 339, column: 15, scope: !5172)
!5243 = !DILocation(line: 341, column: 9, scope: !5173)
!5244 = !DILocation(line: 275, column: 25, scope: !4921, inlinedAt: !5238)
!5245 = !DILocation(line: 0, scope: !4921, inlinedAt: !5238)
!5246 = !DILocation(line: 0, scope: !4932, inlinedAt: !5247)
!5247 = distinct !DILocation(line: 276, column: 17, scope: !4921, inlinedAt: !5238)
!5248 = !DILocation(line: 231, column: 22, scope: !4937, inlinedAt: !5247)
!5249 = !DILocation(line: 231, column: 18, scope: !4937, inlinedAt: !5247)
!5250 = !DILocation(line: 0, scope: !4940, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 231, column: 7, scope: !4937, inlinedAt: !5247)
!5252 = !DILocation(line: 222, column: 10, scope: !4940, inlinedAt: !5251)
!5253 = !DILocation(line: 222, column: 15, scope: !4940, inlinedAt: !5251)
!5254 = !DILocation(line: 222, column: 38, scope: !4940, inlinedAt: !5251)
!5255 = !DILocation(line: 231, column: 52, scope: !4937, inlinedAt: !5247)
!5256 = !DILocation(line: 231, column: 7, scope: !4932, inlinedAt: !5247)
!5257 = !DILocation(line: 233, column: 3, scope: !4932, inlinedAt: !5247)
!5258 = !DILocation(line: 277, column: 11, scope: !4921, inlinedAt: !5238)
!5259 = !DILocation(line: 278, column: 23, scope: !4952, inlinedAt: !5238)
!5260 = !DILocation(line: 278, column: 9, scope: !4952, inlinedAt: !5238)
!5261 = !DILocation(line: 0, scope: !4855, inlinedAt: !5262)
!5262 = distinct !DILocation(line: 279, column: 7, scope: !4921, inlinedAt: !5238)
!5263 = !DILocation(line: 198, column: 7, scope: !4855, inlinedAt: !5262)
!5264 = !DILocation(line: 201, column: 31, scope: !4861, inlinedAt: !5262)
!5265 = !DILocation(line: 0, scope: !4861, inlinedAt: !5262)
!5266 = !DILocation(line: 202, column: 15, scope: !4861, inlinedAt: !5262)
!5267 = !DILocation(line: 202, column: 9, scope: !4861, inlinedAt: !5262)
!5268 = !DILocation(line: 199, column: 5, scope: !4862, inlinedAt: !5262)
!5269 = distinct !{!5269, !5268, !5270, !732}
!5270 = !DILocation(line: 204, column: 7, scope: !4862, inlinedAt: !5262)
!5271 = !DILocation(line: 280, column: 13, scope: !4921, inlinedAt: !5238)
!5272 = !DILocation(line: 342, column: 7, scope: !5169)
!5273 = !DILocation(line: 0, scope: !5170)
!5274 = !DILocation(line: 344, column: 1, scope: !5162)
!5275 = !DISubprogram(name: "timegm", scope: !1099, file: !1099, line: 190, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!197, !4876}
!5278 = !DISubprogram(name: "mktime", scope: !1099, file: !1099, line: 82, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5279 = distinct !DISubprogram(name: "close_stream", scope: !278, file: !278, line: 56, type: !5280, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, retainedNodes: !5316)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!35, !5282}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !953, line: 7, baseType: !5284)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !762, line: 49, size: 1728, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5284, file: !762, line: 51, baseType: !35, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5284, file: !762, line: 54, baseType: !14, size: 64, offset: 64)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5284, file: !762, line: 55, baseType: !14, size: 64, offset: 128)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5284, file: !762, line: 56, baseType: !14, size: 64, offset: 192)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5284, file: !762, line: 57, baseType: !14, size: 64, offset: 256)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5284, file: !762, line: 58, baseType: !14, size: 64, offset: 320)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5284, file: !762, line: 59, baseType: !14, size: 64, offset: 384)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5284, file: !762, line: 60, baseType: !14, size: 64, offset: 448)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5284, file: !762, line: 61, baseType: !14, size: 64, offset: 512)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5284, file: !762, line: 64, baseType: !14, size: 64, offset: 576)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5284, file: !762, line: 65, baseType: !14, size: 64, offset: 640)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5284, file: !762, line: 66, baseType: !14, size: 64, offset: 704)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5284, file: !762, line: 68, baseType: !777, size: 64, offset: 768)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5284, file: !762, line: 70, baseType: !5300, size: 64, offset: 832)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5284, file: !762, line: 72, baseType: !35, size: 32, offset: 896)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5284, file: !762, line: 73, baseType: !35, size: 32, offset: 928)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5284, file: !762, line: 74, baseType: !783, size: 64, offset: 960)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5284, file: !762, line: 77, baseType: !31, size: 16, offset: 1024)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5284, file: !762, line: 78, baseType: !202, size: 8, offset: 1040)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5284, file: !762, line: 79, baseType: !787, size: 8, offset: 1048)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5284, file: !762, line: 81, baseType: !791, size: 64, offset: 1088)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5284, file: !762, line: 89, baseType: !794, size: 64, offset: 1152)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5284, file: !762, line: 91, baseType: !796, size: 64, offset: 1216)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5284, file: !762, line: 92, baseType: !799, size: 64, offset: 1280)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5284, file: !762, line: 93, baseType: !5300, size: 64, offset: 1344)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5284, file: !762, line: 94, baseType: !77, size: 64, offset: 1408)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5284, file: !762, line: 95, baseType: !120, size: 64, offset: 1472)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5284, file: !762, line: 96, baseType: !35, size: 32, offset: 1536)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5284, file: !762, line: 98, baseType: !806, size: 160, offset: 1568)
!5316 = !{!5317, !5318, !5320, !5321}
!5317 = !DILocalVariable(name: "stream", arg: 1, scope: !5279, file: !278, line: 56, type: !5282)
!5318 = !DILocalVariable(name: "some_pending", scope: !5279, file: !278, line: 58, type: !5319)
!5319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!5320 = !DILocalVariable(name: "prev_fail", scope: !5279, file: !278, line: 59, type: !5319)
!5321 = !DILocalVariable(name: "fclose_fail", scope: !5279, file: !278, line: 60, type: !5319)
!5322 = !DILocation(line: 0, scope: !5279)
!5323 = !DILocation(line: 58, column: 30, scope: !5279)
!5324 = !DILocalVariable(name: "__stream", arg: 1, scope: !5325, file: !1059, line: 135, type: !5282)
!5325 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1059, file: !1059, line: 135, type: !5280, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, retainedNodes: !5326)
!5326 = !{!5324}
!5327 = !DILocation(line: 0, scope: !5325, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 59, column: 27, scope: !5279)
!5329 = !DILocation(line: 137, column: 10, scope: !5325, inlinedAt: !5328)
!5330 = !DILocation(line: 59, column: 43, scope: !5279)
!5331 = !DILocation(line: 60, column: 29, scope: !5279)
!5332 = !DILocation(line: 60, column: 45, scope: !5279)
!5333 = !DILocation(line: 70, column: 17, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5279, file: !278, line: 70, column: 7)
!5335 = !DILocation(line: 58, column: 50, scope: !5279)
!5336 = !DILocation(line: 70, column: 33, scope: !5334)
!5337 = !DILocation(line: 70, column: 53, scope: !5334)
!5338 = !DILocation(line: 70, column: 59, scope: !5334)
!5339 = !DILocation(line: 70, column: 7, scope: !5279)
!5340 = !DILocation(line: 72, column: 11, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5334, file: !278, line: 71, column: 5)
!5342 = !DILocation(line: 73, column: 9, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !278, line: 72, column: 11)
!5344 = !DILocation(line: 73, column: 15, scope: !5343)
!5345 = !DILocation(line: 78, column: 1, scope: !5279)
!5346 = distinct !DISubprogram(name: "hard_locale", scope: !280, file: !280, line: 27, type: !5347, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !5349)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!48, !35}
!5349 = !{!5350, !5351}
!5350 = !DILocalVariable(name: "category", arg: 1, scope: !5346, file: !280, line: 27, type: !35)
!5351 = !DILocalVariable(name: "locale", scope: !5346, file: !280, line: 29, type: !5352)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !5353)
!5353 = !{!5354}
!5354 = !DISubrange(count: 257)
!5355 = !DILocation(line: 0, scope: !5346)
!5356 = !DILocation(line: 29, column: 3, scope: !5346)
!5357 = !DILocation(line: 29, column: 8, scope: !5346)
!5358 = !DILocation(line: 31, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5346, file: !280, line: 31, column: 7)
!5360 = !DILocation(line: 31, column: 7, scope: !5346)
!5361 = !DILocation(line: 34, column: 12, scope: !5346)
!5362 = !DILocation(line: 34, column: 38, scope: !5346)
!5363 = !DILocation(line: 34, column: 41, scope: !5346)
!5364 = !DILocation(line: 34, column: 66, scope: !5346)
!5365 = !DILocation(line: 35, column: 1, scope: !5346)
!5366 = distinct !DISubprogram(name: "locale_charset", scope: !282, file: !282, line: 831, type: !5367, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !281, retainedNodes: !5369)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!6}
!5369 = !{!5370}
!5370 = !DILocalVariable(name: "codeset", scope: !5366, file: !282, line: 833, type: !6)
!5371 = !DILocation(line: 847, column: 13, scope: !5366)
!5372 = !DILocation(line: 0, scope: !5366)
!5373 = !DILocation(line: 911, column: 15, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5366, file: !282, line: 911, column: 7)
!5375 = !DILocation(line: 911, column: 7, scope: !5366)
!5376 = !DILocation(line: 1070, column: 13, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !282, line: 1070, column: 13)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !282, line: 1060, column: 7)
!5379 = distinct !DILexicalBlock(scope: !5366, file: !282, line: 1019, column: 3)
!5380 = !DILocation(line: 1070, column: 24, scope: !5377)
!5381 = !DILocation(line: 1070, column: 13, scope: !5378)
!5382 = !DILocation(line: 1158, column: 3, scope: !5366)
!5383 = !DISubprogram(name: "nl_langinfo", scope: !285, file: !285, line: 661, type: !5384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!14, !35}
!5386 = distinct !DISubprogram(name: "setlocale_null_r", scope: !671, file: !671, line: 269, type: !5387, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !5389)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!35, !35, !14, !120}
!5389 = !{!5390, !5391, !5392}
!5390 = !DILocalVariable(name: "category", arg: 1, scope: !5386, file: !671, line: 269, type: !35)
!5391 = !DILocalVariable(name: "buf", arg: 2, scope: !5386, file: !671, line: 269, type: !14)
!5392 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5386, file: !671, line: 269, type: !120)
!5393 = !DILocation(line: 0, scope: !5386)
!5394 = !DILocalVariable(name: "category", arg: 1, scope: !5395, file: !671, line: 91, type: !35)
!5395 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !671, file: !671, line: 91, type: !5387, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !5396)
!5396 = !{!5394, !5397, !5398, !5399, !5400}
!5397 = !DILocalVariable(name: "buf", arg: 2, scope: !5395, file: !671, line: 91, type: !14)
!5398 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5395, file: !671, line: 91, type: !120)
!5399 = !DILocalVariable(name: "result", scope: !5395, file: !671, line: 140, type: !6)
!5400 = !DILocalVariable(name: "length", scope: !5401, file: !671, line: 154, type: !120)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !671, line: 153, column: 5)
!5402 = distinct !DILexicalBlock(scope: !5395, file: !671, line: 142, column: 7)
!5403 = !DILocation(line: 0, scope: !5395, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 274, column: 10, scope: !5386)
!5405 = !DILocalVariable(name: "category", arg: 1, scope: !5406, file: !671, line: 60, type: !35)
!5406 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !671, file: !671, line: 60, type: !5407, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!6, !35}
!5409 = !{!5405, !5410}
!5410 = !DILocalVariable(name: "result", scope: !5406, file: !671, line: 62, type: !6)
!5411 = !DILocation(line: 0, scope: !5406, inlinedAt: !5412)
!5412 = distinct !DILocation(line: 140, column: 24, scope: !5395, inlinedAt: !5404)
!5413 = !DILocation(line: 62, column: 24, scope: !5406, inlinedAt: !5412)
!5414 = !DILocation(line: 142, column: 14, scope: !5402, inlinedAt: !5404)
!5415 = !DILocation(line: 142, column: 7, scope: !5395, inlinedAt: !5404)
!5416 = !DILocation(line: 145, column: 19, scope: !5417, inlinedAt: !5404)
!5417 = distinct !DILexicalBlock(scope: !5418, file: !671, line: 145, column: 11)
!5418 = distinct !DILexicalBlock(scope: !5402, file: !671, line: 143, column: 5)
!5419 = !DILocation(line: 145, column: 11, scope: !5418, inlinedAt: !5404)
!5420 = !DILocation(line: 149, column: 16, scope: !5417, inlinedAt: !5404)
!5421 = !DILocation(line: 149, column: 9, scope: !5417, inlinedAt: !5404)
!5422 = !DILocation(line: 154, column: 23, scope: !5401, inlinedAt: !5404)
!5423 = !DILocation(line: 0, scope: !5401, inlinedAt: !5404)
!5424 = !DILocation(line: 155, column: 18, scope: !5425, inlinedAt: !5404)
!5425 = distinct !DILexicalBlock(scope: !5401, file: !671, line: 155, column: 11)
!5426 = !DILocation(line: 155, column: 11, scope: !5401, inlinedAt: !5404)
!5427 = !DILocation(line: 157, column: 39, scope: !5428, inlinedAt: !5404)
!5428 = distinct !DILexicalBlock(scope: !5425, file: !671, line: 156, column: 9)
!5429 = !DILocalVariable(name: "__dest", arg: 1, scope: !5430, file: !2909, line: 26, type: !4330)
!5430 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 26, type: !4328, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !5431)
!5431 = !{!5429, !5432, !5433}
!5432 = !DILocalVariable(name: "__src", arg: 2, scope: !5430, file: !2909, line: 26, type: !4331)
!5433 = !DILocalVariable(name: "__len", arg: 3, scope: !5430, file: !2909, line: 26, type: !120)
!5434 = !DILocation(line: 0, scope: !5430, inlinedAt: !5435)
!5435 = distinct !DILocation(line: 157, column: 11, scope: !5428, inlinedAt: !5404)
!5436 = !DILocation(line: 29, column: 10, scope: !5430, inlinedAt: !5435)
!5437 = !DILocation(line: 158, column: 11, scope: !5428, inlinedAt: !5404)
!5438 = !DILocation(line: 162, column: 23, scope: !5439, inlinedAt: !5404)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !671, line: 162, column: 15)
!5440 = distinct !DILexicalBlock(scope: !5425, file: !671, line: 161, column: 9)
!5441 = !DILocation(line: 162, column: 15, scope: !5440, inlinedAt: !5404)
!5442 = !DILocation(line: 167, column: 44, scope: !5443, inlinedAt: !5404)
!5443 = distinct !DILexicalBlock(scope: !5439, file: !671, line: 163, column: 13)
!5444 = !DILocation(line: 0, scope: !5430, inlinedAt: !5445)
!5445 = distinct !DILocation(line: 167, column: 15, scope: !5443, inlinedAt: !5404)
!5446 = !DILocation(line: 29, column: 10, scope: !5430, inlinedAt: !5445)
!5447 = !DILocation(line: 168, column: 15, scope: !5443, inlinedAt: !5404)
!5448 = !DILocation(line: 168, column: 32, scope: !5443, inlinedAt: !5404)
!5449 = !DILocation(line: 169, column: 13, scope: !5443, inlinedAt: !5404)
!5450 = !DILocation(line: 0, scope: !5402, inlinedAt: !5404)
!5451 = !DILocation(line: 274, column: 3, scope: !5386)
!5452 = distinct !DISubprogram(name: "setlocale_null", scope: !671, file: !671, line: 301, type: !5407, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !5453)
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "category", arg: 1, scope: !5452, file: !671, line: 301, type: !35)
!5455 = !DILocation(line: 0, scope: !5452)
!5456 = !DILocation(line: 0, scope: !5406, inlinedAt: !5457)
!5457 = distinct !DILocation(line: 304, column: 10, scope: !5452)
!5458 = !DILocation(line: 62, column: 24, scope: !5406, inlinedAt: !5457)
!5459 = !DILocation(line: 304, column: 3, scope: !5452)
