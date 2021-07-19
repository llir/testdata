; ModuleID = 'coreutils-8.32/src/getlimits.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Output platform dependent limits in a format useful for shell scripts.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"getlimits\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.74 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.85 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.87 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CHAR_MAX=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CHAR_OFLOW=%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"CHAR_MIN=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"CHAR_UFLOW=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SCHAR_MAX=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SCHAR_OFLOW=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SCHAR_MIN=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHAR_UFLOW=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"UCHAR_MAX=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"UCHAR_OFLOW=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SHRT_MAX=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SHRT_OFLOW=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SHRT_MIN=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"SHRT_UFLOW=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"INT_MAX=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"INT_OFLOW=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"INT_MIN=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"INT_UFLOW=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"UINT_MAX=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UINT_OFLOW=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"LONG_MAX=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"LONG_OFLOW=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"LONG_MIN=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"LONG_UFLOW=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"ULONG_MAX=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ULONG_OFLOW=%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"SIZE_MAX=%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"SIZE_OFLOW=%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"SSIZE_MAX=%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SSIZE_OFLOW=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"SSIZE_MIN=%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SSIZE_UFLOW=%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"TIME_T_MAX=%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"TIME_T_OFLOW=%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"TIME_T_MIN=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"TIME_T_UFLOW=%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UID_T_MAX=%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"UID_T_OFLOW=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GID_T_MAX=%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"GID_T_OFLOW=%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PID_T_MAX=%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"PID_T_OFLOW=%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"PID_T_MIN=%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"PID_T_UFLOW=%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"OFF_T_MAX=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"OFF_T_OFLOW=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"OFF_T_MIN=%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFF_T_UFLOW=%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"INTMAX_MAX=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"INTMAX_OFLOW=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"INTMAX_MIN=%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"INTMAX_UFLOW=%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"UINTMAX_MAX=%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"UINTMAX_OFLOW=%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"FLT_MIN=\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"FLT_MAX=\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"DBL_MIN=\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DBL_MAX=\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"LDBL_MIN=\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"LDBL_MAX=\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !6
@.str.89 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !12
@opterr = external local_unnamed_addr global i32, align 4
@.str.102 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.103, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.104, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !19
@optind = external local_unnamed_addr global i32, align 4
@.str.2.103 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.104 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !36
@.str.110 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.111 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.112 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.116, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.122, i32 0, i32 0), i8* null], align 16, !dbg !44
@.str.113 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.115 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.116 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.117 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.118 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.119 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.120 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.121 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.122 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !90
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !96
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !108
@.str.11.123 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.124 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.125 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.126 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.127 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.128 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.129 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !115
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !122
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !110
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !124
@.str.132 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.133 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.134 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.135 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.136 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.137 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.138 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.139 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.140 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.141 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.142 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.143 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.144 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.145 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.146 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.147 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.150 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.151 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.152 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.153 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.154 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.155 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.156 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !130
@.str.1.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !616 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !620, metadata !DIExpression()), !dbg !621
  %3 = icmp eq i32 %0, 0, !dbg !622
  br i1 %3, label %9, label %4, !dbg !624

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !625, !tbaa !627
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !625
  %7 = load i8*, i8** @program_name, align 8, !dbg !625, !tbaa !627
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !625
  br label %58, !dbg !625

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !631
  %11 = load i8*, i8** @program_name, align 8, !dbg !631, !tbaa !627
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !631
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !633
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !627
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !633
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !634
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !627
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !634
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !635
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !627
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !636, metadata !DIExpression()) #27, !dbg !655
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #27, !dbg !657
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !642, metadata !DIExpression()) #27, !dbg !658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !651, metadata !DIExpression()) #27, !dbg !655
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !652, metadata !DIExpression()) #27, !dbg !655
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !659
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !652, metadata !DIExpression()) #27, !dbg !655
  br label %24, !dbg !660

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !652, metadata !DIExpression()) #27, !dbg !655
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #28, !dbg !661
  %28 = icmp eq i32 %27, 0, !dbg !661
  br i1 %28, label %34, label %29, !dbg !660

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !662
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !652, metadata !DIExpression()) #27, !dbg !655
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !663
  %32 = load i8*, i8** %31, align 8, !dbg !663, !tbaa !664
  %33 = icmp eq i8* %32, null, !dbg !666
  br i1 %33, label %34, label %24, !dbg !667, !llvm.loop !668

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !670
  %37 = load i8*, i8** %36, align 8, !dbg !670, !tbaa !672
  %38 = icmp eq i8* %37, null, !dbg !673
  %39 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !674
  call void @llvm.dbg.value(metadata i8* %39, metadata !651, metadata !DIExpression()) #27, !dbg !655
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 5) #27, !dbg !675
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0)) #27, !dbg !675
  %42 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !676
  call void @llvm.dbg.value(metadata i8* %42, metadata !654, metadata !DIExpression()) #27, !dbg !655
  %43 = icmp eq i8* %42, null, !dbg !677
  br i1 %43, label %51, label %44, !dbg !679

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 3) #28, !dbg !680
  %46 = icmp eq i32 %45, 0, !dbg !680
  br i1 %46, label %51, label %47, !dbg !681

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i64 0, i64 0), i32 5) #27, !dbg !682
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !627
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #27, !dbg !682
  br label %51, !dbg !684

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i64 0, i64 0), i32 5) #27, !dbg !685
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #27, !dbg !685
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i32 5) #27, !dbg !686
  %55 = icmp eq i8* %39, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), !dbg !686
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !686
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #27, !dbg !686
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #27, !dbg !687
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #29, !dbg !688
  unreachable, !dbg !688
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !689 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !693 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !745 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !749 {
  %3 = alloca [40 x i8], align 16
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !760, metadata !DIExpression()) #27, !dbg !770
  %4 = alloca [31 x i8], align 16
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !772, metadata !DIExpression()) #27, !dbg !782
  %5 = alloca [45 x i8], align 16
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !784, metadata !DIExpression()) #27, !dbg !794
  %6 = alloca [22 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !754, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8** %1, metadata !755, metadata !DIExpression()), !dbg !796
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !797
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %7) #27, !dbg !797
  call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !756, metadata !DIExpression()), !dbg !798
  %8 = load i8*, i8** %1, align 8, !dbg !799, !tbaa !627
  tail call void @set_program_name(i8* %8) #27, !dbg !800
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #27, !dbg !801
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !802
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #27, !dbg !803
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !804
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* null) #27, !dbg !805
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 1, !dbg !806
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #27, !dbg !806
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %13) #27, !dbg !806
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !816
  %16 = load i8, i8* %13, align 1, !dbg !818, !tbaa !819
  %17 = icmp eq i8 %16, 45, !dbg !820
  call void @llvm.dbg.value(metadata i1 %17, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !816
  %18 = zext i1 %17 to i64, !dbg !821
  %19 = getelementptr inbounds i8, i8* %13, i64 %18, !dbg !821
  call void @llvm.dbg.value(metadata i8* %19, metadata !813, metadata !DIExpression()) #27, !dbg !816
  %20 = call i64 @strlen(i8* nonnull %19) #28, !dbg !822
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !823
  call void @llvm.dbg.value(metadata i8* %21, metadata !814, metadata !DIExpression()) #27, !dbg !816
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !824
  store i8 48, i8* %22, align 1, !dbg !825, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %21, metadata !814, metadata !DIExpression()) #27, !dbg !816
  %23 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %23, metadata !814, metadata !DIExpression()) #27, !dbg !816
  %24 = load i8, i8* %23, align 1, !dbg !827, !tbaa !819
  %25 = icmp eq i8 %24, 57, !dbg !828
  br i1 %25, label %26, label %31, !dbg !829

26:                                               ; preds = %2, %26
  %27 = phi i8* [ %28, %26 ], [ %23, %2 ]
  store i8 48, i8* %27, align 1, !dbg !830, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %27, metadata !814, metadata !DIExpression()) #27, !dbg !816
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %28, metadata !814, metadata !DIExpression()) #27, !dbg !816
  %29 = load i8, i8* %28, align 1, !dbg !827, !tbaa !819
  %30 = icmp eq i8 %29, 57, !dbg !828
  br i1 %30, label %26, label %31, !dbg !829, !llvm.loop !831

31:                                               ; preds = %26, %2
  %32 = phi i8* [ %23, %2 ], [ %28, %26 ], !dbg !826
  %33 = phi i8 [ %24, %2 ], [ %29, %26 ], !dbg !827
  %34 = add i8 %33, 1, !dbg !833
  store i8 %34, i8* %32, align 1, !dbg !833, !tbaa !819
  %35 = icmp ult i8* %19, %32, !dbg !834
  %36 = select i1 %35, i8* %19, i8* %32, !dbg !834
  call void @llvm.dbg.value(metadata i8* %36, metadata !815, metadata !DIExpression()) #27, !dbg !816
  br i1 %17, label %37, label %40, !dbg !835

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !836
  %39 = select i1 %35, i8* %22, i8* %38, !dbg !836
  call void @llvm.dbg.value(metadata i8* %39, metadata !815, metadata !DIExpression()) #27, !dbg !816
  store i8 45, i8* %39, align 1, !dbg !838, !tbaa !819
  br label %40, !dbg !839

40:                                               ; preds = %31, %37
  %41 = phi i8* [ %39, %37 ], [ %36, %31 ], !dbg !816
  call void @llvm.dbg.value(metadata i8* %41, metadata !815, metadata !DIExpression()) #27, !dbg !816
  %42 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %41) #27, !dbg !806
  %43 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #27, !dbg !840
  %44 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %13) #27, !dbg !840
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !843
  %45 = load i8, i8* %13, align 1, !dbg !845, !tbaa !819
  %46 = icmp eq i8 %45, 45, !dbg !846
  call void @llvm.dbg.value(metadata i1 %46, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !843
  %47 = zext i1 %46 to i64, !dbg !847
  %48 = getelementptr inbounds i8, i8* %13, i64 %47, !dbg !847
  call void @llvm.dbg.value(metadata i8* %48, metadata !813, metadata !DIExpression()) #27, !dbg !843
  %49 = call i64 @strlen(i8* nonnull %48) #28, !dbg !848
  %50 = getelementptr inbounds i8, i8* %48, i64 %49, !dbg !849
  call void @llvm.dbg.value(metadata i8* %50, metadata !814, metadata !DIExpression()) #27, !dbg !843
  %51 = getelementptr inbounds i8, i8* %48, i64 -1, !dbg !850
  store i8 48, i8* %51, align 1, !dbg !851, !tbaa !819
  %52 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !852
  call void @llvm.dbg.value(metadata i8* %52, metadata !814, metadata !DIExpression()) #27, !dbg !843
  %53 = load i8, i8* %52, align 1, !dbg !853, !tbaa !819
  %54 = icmp eq i8 %53, 57, !dbg !854
  br i1 %54, label %55, label %60, !dbg !855

55:                                               ; preds = %40, %55
  %56 = phi i8* [ %57, %55 ], [ %52, %40 ]
  store i8 48, i8* %56, align 1, !dbg !856, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %56, metadata !814, metadata !DIExpression()) #27, !dbg !843
  %57 = getelementptr inbounds i8, i8* %56, i64 -1, !dbg !852
  call void @llvm.dbg.value(metadata i8* %57, metadata !814, metadata !DIExpression()) #27, !dbg !843
  %58 = load i8, i8* %57, align 1, !dbg !853, !tbaa !819
  %59 = icmp eq i8 %58, 57, !dbg !854
  br i1 %59, label %55, label %60, !dbg !855, !llvm.loop !857

60:                                               ; preds = %55, %40
  %61 = phi i8* [ %52, %40 ], [ %57, %55 ], !dbg !852
  %62 = phi i8 [ %53, %40 ], [ %58, %55 ], !dbg !853
  %63 = add i8 %62, 1, !dbg !859
  store i8 %63, i8* %61, align 1, !dbg !859, !tbaa !819
  %64 = icmp ult i8* %48, %61, !dbg !860
  %65 = select i1 %64, i8* %48, i8* %61, !dbg !860
  call void @llvm.dbg.value(metadata i8* %65, metadata !815, metadata !DIExpression()) #27, !dbg !843
  br i1 %46, label %66, label %69, !dbg !861

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !862
  %68 = select i1 %64, i8* %51, i8* %67, !dbg !862
  call void @llvm.dbg.value(metadata i8* %68, metadata !815, metadata !DIExpression()) #27, !dbg !843
  store i8 45, i8* %68, align 1, !dbg !863, !tbaa !819
  br label %69, !dbg !864

69:                                               ; preds = %60, %66
  %70 = phi i8* [ %68, %66 ], [ %65, %60 ], !dbg !843
  call void @llvm.dbg.value(metadata i8* %70, metadata !815, metadata !DIExpression()) #27, !dbg !843
  %71 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %70) #27, !dbg !840
  %72 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #27, !dbg !865
  %73 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %13) #27, !dbg !865
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !866
  %74 = load i8, i8* %13, align 1, !dbg !868, !tbaa !819
  %75 = icmp eq i8 %74, 45, !dbg !869
  call void @llvm.dbg.value(metadata i1 %75, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !866
  %76 = zext i1 %75 to i64, !dbg !870
  %77 = getelementptr inbounds i8, i8* %13, i64 %76, !dbg !870
  call void @llvm.dbg.value(metadata i8* %77, metadata !813, metadata !DIExpression()) #27, !dbg !866
  %78 = call i64 @strlen(i8* nonnull %77) #28, !dbg !871
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !872
  call void @llvm.dbg.value(metadata i8* %79, metadata !814, metadata !DIExpression()) #27, !dbg !866
  %80 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !873
  store i8 48, i8* %80, align 1, !dbg !874, !tbaa !819
  %81 = getelementptr inbounds i8, i8* %79, i64 -1, !dbg !875
  call void @llvm.dbg.value(metadata i8* %81, metadata !814, metadata !DIExpression()) #27, !dbg !866
  %82 = load i8, i8* %81, align 1, !dbg !876, !tbaa !819
  %83 = icmp eq i8 %82, 57, !dbg !877
  br i1 %83, label %84, label %89, !dbg !878

84:                                               ; preds = %69, %84
  %85 = phi i8* [ %86, %84 ], [ %81, %69 ]
  store i8 48, i8* %85, align 1, !dbg !879, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %85, metadata !814, metadata !DIExpression()) #27, !dbg !866
  %86 = getelementptr inbounds i8, i8* %85, i64 -1, !dbg !875
  call void @llvm.dbg.value(metadata i8* %86, metadata !814, metadata !DIExpression()) #27, !dbg !866
  %87 = load i8, i8* %86, align 1, !dbg !876, !tbaa !819
  %88 = icmp eq i8 %87, 57, !dbg !877
  br i1 %88, label %84, label %89, !dbg !878, !llvm.loop !880

89:                                               ; preds = %84, %69
  %90 = phi i8* [ %81, %69 ], [ %86, %84 ], !dbg !875
  %91 = phi i8 [ %82, %69 ], [ %87, %84 ], !dbg !876
  %92 = add i8 %91, 1, !dbg !882
  store i8 %92, i8* %90, align 1, !dbg !882, !tbaa !819
  %93 = icmp ult i8* %77, %90, !dbg !883
  %94 = select i1 %93, i8* %77, i8* %90, !dbg !883
  call void @llvm.dbg.value(metadata i8* %94, metadata !815, metadata !DIExpression()) #27, !dbg !866
  br i1 %75, label %95, label %98, !dbg !884

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, i8* %90, i64 -1, !dbg !885
  %97 = select i1 %93, i8* %80, i8* %96, !dbg !885
  call void @llvm.dbg.value(metadata i8* %97, metadata !815, metadata !DIExpression()) #27, !dbg !866
  store i8 45, i8* %97, align 1, !dbg !886, !tbaa !819
  br label %98, !dbg !887

98:                                               ; preds = %89, %95
  %99 = phi i8* [ %97, %95 ], [ %94, %89 ], !dbg !866
  call void @llvm.dbg.value(metadata i8* %99, metadata !815, metadata !DIExpression()) #27, !dbg !866
  %100 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %99) #27, !dbg !865
  %101 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #27, !dbg !888
  %102 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %13) #27, !dbg !888
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !891
  %103 = load i8, i8* %13, align 1, !dbg !893, !tbaa !819
  %104 = icmp eq i8 %103, 45, !dbg !894
  call void @llvm.dbg.value(metadata i1 %104, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !891
  %105 = zext i1 %104 to i64, !dbg !895
  %106 = getelementptr inbounds i8, i8* %13, i64 %105, !dbg !895
  call void @llvm.dbg.value(metadata i8* %106, metadata !813, metadata !DIExpression()) #27, !dbg !891
  %107 = call i64 @strlen(i8* nonnull %106) #28, !dbg !896
  %108 = getelementptr inbounds i8, i8* %106, i64 %107, !dbg !897
  call void @llvm.dbg.value(metadata i8* %108, metadata !814, metadata !DIExpression()) #27, !dbg !891
  %109 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !898
  store i8 48, i8* %109, align 1, !dbg !899, !tbaa !819
  %110 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !900
  call void @llvm.dbg.value(metadata i8* %110, metadata !814, metadata !DIExpression()) #27, !dbg !891
  %111 = load i8, i8* %110, align 1, !dbg !901, !tbaa !819
  %112 = icmp eq i8 %111, 57, !dbg !902
  br i1 %112, label %113, label %118, !dbg !903

113:                                              ; preds = %98, %113
  %114 = phi i8* [ %115, %113 ], [ %110, %98 ]
  store i8 48, i8* %114, align 1, !dbg !904, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %114, metadata !814, metadata !DIExpression()) #27, !dbg !891
  %115 = getelementptr inbounds i8, i8* %114, i64 -1, !dbg !900
  call void @llvm.dbg.value(metadata i8* %115, metadata !814, metadata !DIExpression()) #27, !dbg !891
  %116 = load i8, i8* %115, align 1, !dbg !901, !tbaa !819
  %117 = icmp eq i8 %116, 57, !dbg !902
  br i1 %117, label %113, label %118, !dbg !903, !llvm.loop !905

118:                                              ; preds = %113, %98
  %119 = phi i8* [ %110, %98 ], [ %115, %113 ], !dbg !900
  %120 = phi i8 [ %111, %98 ], [ %116, %113 ], !dbg !901
  %121 = add i8 %120, 1, !dbg !907
  store i8 %121, i8* %119, align 1, !dbg !907, !tbaa !819
  %122 = icmp ult i8* %106, %119, !dbg !908
  %123 = select i1 %122, i8* %106, i8* %119, !dbg !908
  call void @llvm.dbg.value(metadata i8* %123, metadata !815, metadata !DIExpression()) #27, !dbg !891
  br i1 %104, label %124, label %127, !dbg !909

124:                                              ; preds = %118
  %125 = getelementptr inbounds i8, i8* %119, i64 -1, !dbg !910
  %126 = select i1 %122, i8* %109, i8* %125, !dbg !910
  call void @llvm.dbg.value(metadata i8* %126, metadata !815, metadata !DIExpression()) #27, !dbg !891
  store i8 45, i8* %126, align 1, !dbg !911, !tbaa !819
  br label %127, !dbg !912

127:                                              ; preds = %118, %124
  %128 = phi i8* [ %126, %124 ], [ %123, %118 ], !dbg !891
  call void @llvm.dbg.value(metadata i8* %128, metadata !815, metadata !DIExpression()) #27, !dbg !891
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %128) #27, !dbg !888
  %130 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 255) #27, !dbg !913
  %131 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %13) #27, !dbg !913
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !914
  %132 = load i8, i8* %13, align 1, !dbg !916, !tbaa !819
  %133 = icmp eq i8 %132, 45, !dbg !917
  call void @llvm.dbg.value(metadata i1 %133, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !914
  %134 = zext i1 %133 to i64, !dbg !918
  %135 = getelementptr inbounds i8, i8* %13, i64 %134, !dbg !918
  call void @llvm.dbg.value(metadata i8* %135, metadata !813, metadata !DIExpression()) #27, !dbg !914
  %136 = call i64 @strlen(i8* nonnull %135) #28, !dbg !919
  %137 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !920
  call void @llvm.dbg.value(metadata i8* %137, metadata !814, metadata !DIExpression()) #27, !dbg !914
  %138 = getelementptr inbounds i8, i8* %135, i64 -1, !dbg !921
  store i8 48, i8* %138, align 1, !dbg !922, !tbaa !819
  %139 = getelementptr inbounds i8, i8* %137, i64 -1, !dbg !923
  call void @llvm.dbg.value(metadata i8* %139, metadata !814, metadata !DIExpression()) #27, !dbg !914
  %140 = load i8, i8* %139, align 1, !dbg !924, !tbaa !819
  %141 = icmp eq i8 %140, 57, !dbg !925
  br i1 %141, label %142, label %147, !dbg !926

142:                                              ; preds = %127, %142
  %143 = phi i8* [ %144, %142 ], [ %139, %127 ]
  store i8 48, i8* %143, align 1, !dbg !927, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %143, metadata !814, metadata !DIExpression()) #27, !dbg !914
  %144 = getelementptr inbounds i8, i8* %143, i64 -1, !dbg !923
  call void @llvm.dbg.value(metadata i8* %144, metadata !814, metadata !DIExpression()) #27, !dbg !914
  %145 = load i8, i8* %144, align 1, !dbg !924, !tbaa !819
  %146 = icmp eq i8 %145, 57, !dbg !925
  br i1 %146, label %142, label %147, !dbg !926, !llvm.loop !928

147:                                              ; preds = %142, %127
  %148 = phi i8* [ %139, %127 ], [ %144, %142 ], !dbg !923
  %149 = phi i8 [ %140, %127 ], [ %145, %142 ], !dbg !924
  %150 = add i8 %149, 1, !dbg !930
  store i8 %150, i8* %148, align 1, !dbg !930, !tbaa !819
  %151 = icmp ult i8* %135, %148, !dbg !931
  %152 = select i1 %151, i8* %135, i8* %148, !dbg !931
  call void @llvm.dbg.value(metadata i8* %152, metadata !815, metadata !DIExpression()) #27, !dbg !914
  br i1 %133, label %153, label %156, !dbg !932

153:                                              ; preds = %147
  %154 = getelementptr inbounds i8, i8* %148, i64 -1, !dbg !933
  %155 = select i1 %151, i8* %138, i8* %154, !dbg !933
  call void @llvm.dbg.value(metadata i8* %155, metadata !815, metadata !DIExpression()) #27, !dbg !914
  store i8 45, i8* %155, align 1, !dbg !934, !tbaa !819
  br label %156, !dbg !935

156:                                              ; preds = %147, %153
  %157 = phi i8* [ %155, %153 ], [ %152, %147 ], !dbg !914
  call void @llvm.dbg.value(metadata i8* %157, metadata !815, metadata !DIExpression()) #27, !dbg !914
  %158 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %157) #27, !dbg !913
  %159 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 32767) #27, !dbg !936
  %160 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %13) #27, !dbg !936
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !937
  %161 = load i8, i8* %13, align 1, !dbg !939, !tbaa !819
  %162 = icmp eq i8 %161, 45, !dbg !940
  call void @llvm.dbg.value(metadata i1 %162, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !937
  %163 = zext i1 %162 to i64, !dbg !941
  %164 = getelementptr inbounds i8, i8* %13, i64 %163, !dbg !941
  call void @llvm.dbg.value(metadata i8* %164, metadata !813, metadata !DIExpression()) #27, !dbg !937
  %165 = call i64 @strlen(i8* nonnull %164) #28, !dbg !942
  %166 = getelementptr inbounds i8, i8* %164, i64 %165, !dbg !943
  call void @llvm.dbg.value(metadata i8* %166, metadata !814, metadata !DIExpression()) #27, !dbg !937
  %167 = getelementptr inbounds i8, i8* %164, i64 -1, !dbg !944
  store i8 48, i8* %167, align 1, !dbg !945, !tbaa !819
  %168 = getelementptr inbounds i8, i8* %166, i64 -1, !dbg !946
  call void @llvm.dbg.value(metadata i8* %168, metadata !814, metadata !DIExpression()) #27, !dbg !937
  %169 = load i8, i8* %168, align 1, !dbg !947, !tbaa !819
  %170 = icmp eq i8 %169, 57, !dbg !948
  br i1 %170, label %171, label %176, !dbg !949

171:                                              ; preds = %156, %171
  %172 = phi i8* [ %173, %171 ], [ %168, %156 ]
  store i8 48, i8* %172, align 1, !dbg !950, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %172, metadata !814, metadata !DIExpression()) #27, !dbg !937
  %173 = getelementptr inbounds i8, i8* %172, i64 -1, !dbg !946
  call void @llvm.dbg.value(metadata i8* %173, metadata !814, metadata !DIExpression()) #27, !dbg !937
  %174 = load i8, i8* %173, align 1, !dbg !947, !tbaa !819
  %175 = icmp eq i8 %174, 57, !dbg !948
  br i1 %175, label %171, label %176, !dbg !949, !llvm.loop !951

176:                                              ; preds = %171, %156
  %177 = phi i8* [ %168, %156 ], [ %173, %171 ], !dbg !946
  %178 = phi i8 [ %169, %156 ], [ %174, %171 ], !dbg !947
  %179 = add i8 %178, 1, !dbg !953
  store i8 %179, i8* %177, align 1, !dbg !953, !tbaa !819
  %180 = icmp ult i8* %164, %177, !dbg !954
  %181 = select i1 %180, i8* %164, i8* %177, !dbg !954
  call void @llvm.dbg.value(metadata i8* %181, metadata !815, metadata !DIExpression()) #27, !dbg !937
  br i1 %162, label %182, label %185, !dbg !955

182:                                              ; preds = %176
  %183 = getelementptr inbounds i8, i8* %177, i64 -1, !dbg !956
  %184 = select i1 %180, i8* %167, i8* %183, !dbg !956
  call void @llvm.dbg.value(metadata i8* %184, metadata !815, metadata !DIExpression()) #27, !dbg !937
  store i8 45, i8* %184, align 1, !dbg !957, !tbaa !819
  br label %185, !dbg !958

185:                                              ; preds = %176, %182
  %186 = phi i8* [ %184, %182 ], [ %181, %176 ], !dbg !937
  call void @llvm.dbg.value(metadata i8* %186, metadata !815, metadata !DIExpression()) #27, !dbg !937
  %187 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %186) #27, !dbg !936
  %188 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -32768) #27, !dbg !959
  %189 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %13) #27, !dbg !959
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !962
  %190 = load i8, i8* %13, align 1, !dbg !964, !tbaa !819
  %191 = icmp eq i8 %190, 45, !dbg !965
  call void @llvm.dbg.value(metadata i1 %191, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !962
  %192 = zext i1 %191 to i64, !dbg !966
  %193 = getelementptr inbounds i8, i8* %13, i64 %192, !dbg !966
  call void @llvm.dbg.value(metadata i8* %193, metadata !813, metadata !DIExpression()) #27, !dbg !962
  %194 = call i64 @strlen(i8* nonnull %193) #28, !dbg !967
  %195 = getelementptr inbounds i8, i8* %193, i64 %194, !dbg !968
  call void @llvm.dbg.value(metadata i8* %195, metadata !814, metadata !DIExpression()) #27, !dbg !962
  %196 = getelementptr inbounds i8, i8* %193, i64 -1, !dbg !969
  store i8 48, i8* %196, align 1, !dbg !970, !tbaa !819
  %197 = getelementptr inbounds i8, i8* %195, i64 -1, !dbg !971
  call void @llvm.dbg.value(metadata i8* %197, metadata !814, metadata !DIExpression()) #27, !dbg !962
  %198 = load i8, i8* %197, align 1, !dbg !972, !tbaa !819
  %199 = icmp eq i8 %198, 57, !dbg !973
  br i1 %199, label %200, label %205, !dbg !974

200:                                              ; preds = %185, %200
  %201 = phi i8* [ %202, %200 ], [ %197, %185 ]
  store i8 48, i8* %201, align 1, !dbg !975, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %201, metadata !814, metadata !DIExpression()) #27, !dbg !962
  %202 = getelementptr inbounds i8, i8* %201, i64 -1, !dbg !971
  call void @llvm.dbg.value(metadata i8* %202, metadata !814, metadata !DIExpression()) #27, !dbg !962
  %203 = load i8, i8* %202, align 1, !dbg !972, !tbaa !819
  %204 = icmp eq i8 %203, 57, !dbg !973
  br i1 %204, label %200, label %205, !dbg !974, !llvm.loop !976

205:                                              ; preds = %200, %185
  %206 = phi i8* [ %197, %185 ], [ %202, %200 ], !dbg !971
  %207 = phi i8 [ %198, %185 ], [ %203, %200 ], !dbg !972
  %208 = add i8 %207, 1, !dbg !978
  store i8 %208, i8* %206, align 1, !dbg !978, !tbaa !819
  %209 = icmp ult i8* %193, %206, !dbg !979
  %210 = select i1 %209, i8* %193, i8* %206, !dbg !979
  call void @llvm.dbg.value(metadata i8* %210, metadata !815, metadata !DIExpression()) #27, !dbg !962
  br i1 %191, label %211, label %214, !dbg !980

211:                                              ; preds = %205
  %212 = getelementptr inbounds i8, i8* %206, i64 -1, !dbg !981
  %213 = select i1 %209, i8* %196, i8* %212, !dbg !981
  call void @llvm.dbg.value(metadata i8* %213, metadata !815, metadata !DIExpression()) #27, !dbg !962
  store i8 45, i8* %213, align 1, !dbg !982, !tbaa !819
  br label %214, !dbg !983

214:                                              ; preds = %205, %211
  %215 = phi i8* [ %213, %211 ], [ %210, %205 ], !dbg !962
  call void @llvm.dbg.value(metadata i8* %215, metadata !815, metadata !DIExpression()) #27, !dbg !962
  %216 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %215) #27, !dbg !959
  %217 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #27, !dbg !984
  %218 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* nonnull %13) #27, !dbg !984
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !985
  %219 = load i8, i8* %13, align 1, !dbg !987, !tbaa !819
  %220 = icmp eq i8 %219, 45, !dbg !988
  call void @llvm.dbg.value(metadata i1 %220, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !985
  %221 = zext i1 %220 to i64, !dbg !989
  %222 = getelementptr inbounds i8, i8* %13, i64 %221, !dbg !989
  call void @llvm.dbg.value(metadata i8* %222, metadata !813, metadata !DIExpression()) #27, !dbg !985
  %223 = call i64 @strlen(i8* nonnull %222) #28, !dbg !990
  %224 = getelementptr inbounds i8, i8* %222, i64 %223, !dbg !991
  call void @llvm.dbg.value(metadata i8* %224, metadata !814, metadata !DIExpression()) #27, !dbg !985
  %225 = getelementptr inbounds i8, i8* %222, i64 -1, !dbg !992
  store i8 48, i8* %225, align 1, !dbg !993, !tbaa !819
  %226 = getelementptr inbounds i8, i8* %224, i64 -1, !dbg !994
  call void @llvm.dbg.value(metadata i8* %226, metadata !814, metadata !DIExpression()) #27, !dbg !985
  %227 = load i8, i8* %226, align 1, !dbg !995, !tbaa !819
  %228 = icmp eq i8 %227, 57, !dbg !996
  br i1 %228, label %229, label %234, !dbg !997

229:                                              ; preds = %214, %229
  %230 = phi i8* [ %231, %229 ], [ %226, %214 ]
  store i8 48, i8* %230, align 1, !dbg !998, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %230, metadata !814, metadata !DIExpression()) #27, !dbg !985
  %231 = getelementptr inbounds i8, i8* %230, i64 -1, !dbg !994
  call void @llvm.dbg.value(metadata i8* %231, metadata !814, metadata !DIExpression()) #27, !dbg !985
  %232 = load i8, i8* %231, align 1, !dbg !995, !tbaa !819
  %233 = icmp eq i8 %232, 57, !dbg !996
  br i1 %233, label %229, label %234, !dbg !997, !llvm.loop !999

234:                                              ; preds = %229, %214
  %235 = phi i8* [ %226, %214 ], [ %231, %229 ], !dbg !994
  %236 = phi i8 [ %227, %214 ], [ %232, %229 ], !dbg !995
  %237 = add i8 %236, 1, !dbg !1001
  store i8 %237, i8* %235, align 1, !dbg !1001, !tbaa !819
  %238 = icmp ult i8* %222, %235, !dbg !1002
  %239 = select i1 %238, i8* %222, i8* %235, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %239, metadata !815, metadata !DIExpression()) #27, !dbg !985
  br i1 %220, label %240, label %243, !dbg !1003

240:                                              ; preds = %234
  %241 = getelementptr inbounds i8, i8* %235, i64 -1, !dbg !1004
  %242 = select i1 %238, i8* %225, i8* %241, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %242, metadata !815, metadata !DIExpression()) #27, !dbg !985
  store i8 45, i8* %242, align 1, !dbg !1005, !tbaa !819
  br label %243, !dbg !1006

243:                                              ; preds = %234, %240
  %244 = phi i8* [ %242, %240 ], [ %239, %234 ], !dbg !985
  call void @llvm.dbg.value(metadata i8* %244, metadata !815, metadata !DIExpression()) #27, !dbg !985
  %245 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %244) #27, !dbg !984
  %246 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #27, !dbg !1007
  %247 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1010
  %248 = load i8, i8* %13, align 1, !dbg !1012, !tbaa !819
  %249 = icmp eq i8 %248, 45, !dbg !1013
  call void @llvm.dbg.value(metadata i1 %249, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1010
  %250 = zext i1 %249 to i64, !dbg !1014
  %251 = getelementptr inbounds i8, i8* %13, i64 %250, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %251, metadata !813, metadata !DIExpression()) #27, !dbg !1010
  %252 = call i64 @strlen(i8* nonnull %251) #28, !dbg !1015
  %253 = getelementptr inbounds i8, i8* %251, i64 %252, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %253, metadata !814, metadata !DIExpression()) #27, !dbg !1010
  %254 = getelementptr inbounds i8, i8* %251, i64 -1, !dbg !1017
  store i8 48, i8* %254, align 1, !dbg !1018, !tbaa !819
  %255 = getelementptr inbounds i8, i8* %253, i64 -1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %255, metadata !814, metadata !DIExpression()) #27, !dbg !1010
  %256 = load i8, i8* %255, align 1, !dbg !1020, !tbaa !819
  %257 = icmp eq i8 %256, 57, !dbg !1021
  br i1 %257, label %258, label %263, !dbg !1022

258:                                              ; preds = %243, %258
  %259 = phi i8* [ %260, %258 ], [ %255, %243 ]
  store i8 48, i8* %259, align 1, !dbg !1023, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %259, metadata !814, metadata !DIExpression()) #27, !dbg !1010
  %260 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %260, metadata !814, metadata !DIExpression()) #27, !dbg !1010
  %261 = load i8, i8* %260, align 1, !dbg !1020, !tbaa !819
  %262 = icmp eq i8 %261, 57, !dbg !1021
  br i1 %262, label %258, label %263, !dbg !1022, !llvm.loop !1024

263:                                              ; preds = %258, %243
  %264 = phi i8* [ %255, %243 ], [ %260, %258 ], !dbg !1019
  %265 = phi i8 [ %256, %243 ], [ %261, %258 ], !dbg !1020
  %266 = add i8 %265, 1, !dbg !1026
  store i8 %266, i8* %264, align 1, !dbg !1026, !tbaa !819
  %267 = icmp ult i8* %251, %264, !dbg !1027
  %268 = select i1 %267, i8* %251, i8* %264, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %268, metadata !815, metadata !DIExpression()) #27, !dbg !1010
  br i1 %249, label %269, label %272, !dbg !1028

269:                                              ; preds = %263
  %270 = getelementptr inbounds i8, i8* %264, i64 -1, !dbg !1029
  %271 = select i1 %267, i8* %254, i8* %270, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %271, metadata !815, metadata !DIExpression()) #27, !dbg !1010
  store i8 45, i8* %271, align 1, !dbg !1030, !tbaa !819
  br label %272, !dbg !1031

272:                                              ; preds = %263, %269
  %273 = phi i8* [ %271, %269 ], [ %268, %263 ], !dbg !1010
  call void @llvm.dbg.value(metadata i8* %273, metadata !815, metadata !DIExpression()) #27, !dbg !1010
  %274 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %273) #27, !dbg !1007
  %275 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #27, !dbg !1032
  %276 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1033
  %277 = load i8, i8* %13, align 1, !dbg !1035, !tbaa !819
  %278 = icmp eq i8 %277, 45, !dbg !1036
  call void @llvm.dbg.value(metadata i1 %278, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1033
  %279 = zext i1 %278 to i64, !dbg !1037
  %280 = getelementptr inbounds i8, i8* %13, i64 %279, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %280, metadata !813, metadata !DIExpression()) #27, !dbg !1033
  %281 = call i64 @strlen(i8* nonnull %280) #28, !dbg !1038
  %282 = getelementptr inbounds i8, i8* %280, i64 %281, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %282, metadata !814, metadata !DIExpression()) #27, !dbg !1033
  %283 = getelementptr inbounds i8, i8* %280, i64 -1, !dbg !1040
  store i8 48, i8* %283, align 1, !dbg !1041, !tbaa !819
  %284 = getelementptr inbounds i8, i8* %282, i64 -1, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %284, metadata !814, metadata !DIExpression()) #27, !dbg !1033
  %285 = load i8, i8* %284, align 1, !dbg !1043, !tbaa !819
  %286 = icmp eq i8 %285, 57, !dbg !1044
  br i1 %286, label %287, label %292, !dbg !1045

287:                                              ; preds = %272, %287
  %288 = phi i8* [ %289, %287 ], [ %284, %272 ]
  store i8 48, i8* %288, align 1, !dbg !1046, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %288, metadata !814, metadata !DIExpression()) #27, !dbg !1033
  %289 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %289, metadata !814, metadata !DIExpression()) #27, !dbg !1033
  %290 = load i8, i8* %289, align 1, !dbg !1043, !tbaa !819
  %291 = icmp eq i8 %290, 57, !dbg !1044
  br i1 %291, label %287, label %292, !dbg !1045, !llvm.loop !1047

292:                                              ; preds = %287, %272
  %293 = phi i8* [ %284, %272 ], [ %289, %287 ], !dbg !1042
  %294 = phi i8 [ %285, %272 ], [ %290, %287 ], !dbg !1043
  %295 = add i8 %294, 1, !dbg !1049
  store i8 %295, i8* %293, align 1, !dbg !1049, !tbaa !819
  %296 = icmp ult i8* %280, %293, !dbg !1050
  %297 = select i1 %296, i8* %280, i8* %293, !dbg !1050
  call void @llvm.dbg.value(metadata i8* %297, metadata !815, metadata !DIExpression()) #27, !dbg !1033
  br i1 %278, label %298, label %301, !dbg !1051

298:                                              ; preds = %292
  %299 = getelementptr inbounds i8, i8* %293, i64 -1, !dbg !1052
  %300 = select i1 %296, i8* %283, i8* %299, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %300, metadata !815, metadata !DIExpression()) #27, !dbg !1033
  store i8 45, i8* %300, align 1, !dbg !1053, !tbaa !819
  br label %301, !dbg !1054

301:                                              ; preds = %292, %298
  %302 = phi i8* [ %300, %298 ], [ %297, %292 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8* %302, metadata !815, metadata !DIExpression()) #27, !dbg !1033
  %303 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %302) #27, !dbg !1032
  %304 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #27, !dbg !1055
  %305 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1056
  %306 = load i8, i8* %13, align 1, !dbg !1058, !tbaa !819
  %307 = icmp eq i8 %306, 45, !dbg !1059
  call void @llvm.dbg.value(metadata i1 %307, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1056
  %308 = zext i1 %307 to i64, !dbg !1060
  %309 = getelementptr inbounds i8, i8* %13, i64 %308, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %309, metadata !813, metadata !DIExpression()) #27, !dbg !1056
  %310 = call i64 @strlen(i8* nonnull %309) #28, !dbg !1061
  %311 = getelementptr inbounds i8, i8* %309, i64 %310, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %311, metadata !814, metadata !DIExpression()) #27, !dbg !1056
  %312 = getelementptr inbounds i8, i8* %309, i64 -1, !dbg !1063
  store i8 48, i8* %312, align 1, !dbg !1064, !tbaa !819
  %313 = getelementptr inbounds i8, i8* %311, i64 -1, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %313, metadata !814, metadata !DIExpression()) #27, !dbg !1056
  %314 = load i8, i8* %313, align 1, !dbg !1066, !tbaa !819
  %315 = icmp eq i8 %314, 57, !dbg !1067
  br i1 %315, label %316, label %321, !dbg !1068

316:                                              ; preds = %301, %316
  %317 = phi i8* [ %318, %316 ], [ %313, %301 ]
  store i8 48, i8* %317, align 1, !dbg !1069, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %317, metadata !814, metadata !DIExpression()) #27, !dbg !1056
  %318 = getelementptr inbounds i8, i8* %317, i64 -1, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %318, metadata !814, metadata !DIExpression()) #27, !dbg !1056
  %319 = load i8, i8* %318, align 1, !dbg !1066, !tbaa !819
  %320 = icmp eq i8 %319, 57, !dbg !1067
  br i1 %320, label %316, label %321, !dbg !1068, !llvm.loop !1070

321:                                              ; preds = %316, %301
  %322 = phi i8* [ %313, %301 ], [ %318, %316 ], !dbg !1065
  %323 = phi i8 [ %314, %301 ], [ %319, %316 ], !dbg !1066
  %324 = add i8 %323, 1, !dbg !1072
  store i8 %324, i8* %322, align 1, !dbg !1072, !tbaa !819
  %325 = icmp ult i8* %309, %322, !dbg !1073
  %326 = select i1 %325, i8* %309, i8* %322, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %326, metadata !815, metadata !DIExpression()) #27, !dbg !1056
  br i1 %307, label %327, label %330, !dbg !1074

327:                                              ; preds = %321
  %328 = getelementptr inbounds i8, i8* %322, i64 -1, !dbg !1075
  %329 = select i1 %325, i8* %312, i8* %328, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %329, metadata !815, metadata !DIExpression()) #27, !dbg !1056
  store i8 45, i8* %329, align 1, !dbg !1076, !tbaa !819
  br label %330, !dbg !1077

330:                                              ; preds = %321, %327
  %331 = phi i8* [ %329, %327 ], [ %326, %321 ], !dbg !1056
  call void @llvm.dbg.value(metadata i8* %331, metadata !815, metadata !DIExpression()) #27, !dbg !1056
  %332 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %331) #27, !dbg !1055
  %333 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #27, !dbg !1078
  %334 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1081
  %335 = load i8, i8* %13, align 1, !dbg !1083, !tbaa !819
  %336 = icmp eq i8 %335, 45, !dbg !1084
  call void @llvm.dbg.value(metadata i1 %336, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1081
  %337 = zext i1 %336 to i64, !dbg !1085
  %338 = getelementptr inbounds i8, i8* %13, i64 %337, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %338, metadata !813, metadata !DIExpression()) #27, !dbg !1081
  %339 = call i64 @strlen(i8* nonnull %338) #28, !dbg !1086
  %340 = getelementptr inbounds i8, i8* %338, i64 %339, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %340, metadata !814, metadata !DIExpression()) #27, !dbg !1081
  %341 = getelementptr inbounds i8, i8* %338, i64 -1, !dbg !1088
  store i8 48, i8* %341, align 1, !dbg !1089, !tbaa !819
  %342 = getelementptr inbounds i8, i8* %340, i64 -1, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %342, metadata !814, metadata !DIExpression()) #27, !dbg !1081
  %343 = load i8, i8* %342, align 1, !dbg !1091, !tbaa !819
  %344 = icmp eq i8 %343, 57, !dbg !1092
  br i1 %344, label %345, label %350, !dbg !1093

345:                                              ; preds = %330, %345
  %346 = phi i8* [ %347, %345 ], [ %342, %330 ]
  store i8 48, i8* %346, align 1, !dbg !1094, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %346, metadata !814, metadata !DIExpression()) #27, !dbg !1081
  %347 = getelementptr inbounds i8, i8* %346, i64 -1, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %347, metadata !814, metadata !DIExpression()) #27, !dbg !1081
  %348 = load i8, i8* %347, align 1, !dbg !1091, !tbaa !819
  %349 = icmp eq i8 %348, 57, !dbg !1092
  br i1 %349, label %345, label %350, !dbg !1093, !llvm.loop !1095

350:                                              ; preds = %345, %330
  %351 = phi i8* [ %342, %330 ], [ %347, %345 ], !dbg !1090
  %352 = phi i8 [ %343, %330 ], [ %348, %345 ], !dbg !1091
  %353 = add i8 %352, 1, !dbg !1097
  store i8 %353, i8* %351, align 1, !dbg !1097, !tbaa !819
  %354 = icmp ult i8* %338, %351, !dbg !1098
  %355 = select i1 %354, i8* %338, i8* %351, !dbg !1098
  call void @llvm.dbg.value(metadata i8* %355, metadata !815, metadata !DIExpression()) #27, !dbg !1081
  br i1 %336, label %356, label %359, !dbg !1099

356:                                              ; preds = %350
  %357 = getelementptr inbounds i8, i8* %351, i64 -1, !dbg !1100
  %358 = select i1 %354, i8* %341, i8* %357, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %358, metadata !815, metadata !DIExpression()) #27, !dbg !1081
  store i8 45, i8* %358, align 1, !dbg !1101, !tbaa !819
  br label %359, !dbg !1102

359:                                              ; preds = %350, %356
  %360 = phi i8* [ %358, %356 ], [ %355, %350 ], !dbg !1081
  call void @llvm.dbg.value(metadata i8* %360, metadata !815, metadata !DIExpression()) #27, !dbg !1081
  %361 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %360) #27, !dbg !1078
  %362 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #27, !dbg !1103
  %363 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1104
  %364 = load i8, i8* %13, align 1, !dbg !1106, !tbaa !819
  %365 = icmp eq i8 %364, 45, !dbg !1107
  call void @llvm.dbg.value(metadata i1 %365, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1104
  %366 = zext i1 %365 to i64, !dbg !1108
  %367 = getelementptr inbounds i8, i8* %13, i64 %366, !dbg !1108
  call void @llvm.dbg.value(metadata i8* %367, metadata !813, metadata !DIExpression()) #27, !dbg !1104
  %368 = call i64 @strlen(i8* nonnull %367) #28, !dbg !1109
  %369 = getelementptr inbounds i8, i8* %367, i64 %368, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %369, metadata !814, metadata !DIExpression()) #27, !dbg !1104
  %370 = getelementptr inbounds i8, i8* %367, i64 -1, !dbg !1111
  store i8 48, i8* %370, align 1, !dbg !1112, !tbaa !819
  %371 = getelementptr inbounds i8, i8* %369, i64 -1, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %371, metadata !814, metadata !DIExpression()) #27, !dbg !1104
  %372 = load i8, i8* %371, align 1, !dbg !1114, !tbaa !819
  %373 = icmp eq i8 %372, 57, !dbg !1115
  br i1 %373, label %374, label %379, !dbg !1116

374:                                              ; preds = %359, %374
  %375 = phi i8* [ %376, %374 ], [ %371, %359 ]
  store i8 48, i8* %375, align 1, !dbg !1117, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %375, metadata !814, metadata !DIExpression()) #27, !dbg !1104
  %376 = getelementptr inbounds i8, i8* %375, i64 -1, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %376, metadata !814, metadata !DIExpression()) #27, !dbg !1104
  %377 = load i8, i8* %376, align 1, !dbg !1114, !tbaa !819
  %378 = icmp eq i8 %377, 57, !dbg !1115
  br i1 %378, label %374, label %379, !dbg !1116, !llvm.loop !1118

379:                                              ; preds = %374, %359
  %380 = phi i8* [ %371, %359 ], [ %376, %374 ], !dbg !1113
  %381 = phi i8 [ %372, %359 ], [ %377, %374 ], !dbg !1114
  %382 = add i8 %381, 1, !dbg !1120
  store i8 %382, i8* %380, align 1, !dbg !1120, !tbaa !819
  %383 = icmp ult i8* %367, %380, !dbg !1121
  %384 = select i1 %383, i8* %367, i8* %380, !dbg !1121
  call void @llvm.dbg.value(metadata i8* %384, metadata !815, metadata !DIExpression()) #27, !dbg !1104
  br i1 %365, label %385, label %388, !dbg !1122

385:                                              ; preds = %379
  %386 = getelementptr inbounds i8, i8* %380, i64 -1, !dbg !1123
  %387 = select i1 %383, i8* %370, i8* %386, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %387, metadata !815, metadata !DIExpression()) #27, !dbg !1104
  store i8 45, i8* %387, align 1, !dbg !1124, !tbaa !819
  br label %388, !dbg !1125

388:                                              ; preds = %379, %385
  %389 = phi i8* [ %387, %385 ], [ %384, %379 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8* %389, metadata !815, metadata !DIExpression()) #27, !dbg !1104
  %390 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %389) #27, !dbg !1103
  %391 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #27, !dbg !1126
  %392 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1127
  %393 = load i8, i8* %13, align 1, !dbg !1129, !tbaa !819
  %394 = icmp eq i8 %393, 45, !dbg !1130
  call void @llvm.dbg.value(metadata i1 %394, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1127
  %395 = zext i1 %394 to i64, !dbg !1131
  %396 = getelementptr inbounds i8, i8* %13, i64 %395, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %396, metadata !813, metadata !DIExpression()) #27, !dbg !1127
  %397 = call i64 @strlen(i8* nonnull %396) #28, !dbg !1132
  %398 = getelementptr inbounds i8, i8* %396, i64 %397, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %398, metadata !814, metadata !DIExpression()) #27, !dbg !1127
  %399 = getelementptr inbounds i8, i8* %396, i64 -1, !dbg !1134
  store i8 48, i8* %399, align 1, !dbg !1135, !tbaa !819
  %400 = getelementptr inbounds i8, i8* %398, i64 -1, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %400, metadata !814, metadata !DIExpression()) #27, !dbg !1127
  %401 = load i8, i8* %400, align 1, !dbg !1137, !tbaa !819
  %402 = icmp eq i8 %401, 57, !dbg !1138
  br i1 %402, label %403, label %408, !dbg !1139

403:                                              ; preds = %388, %403
  %404 = phi i8* [ %405, %403 ], [ %400, %388 ]
  store i8 48, i8* %404, align 1, !dbg !1140, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %404, metadata !814, metadata !DIExpression()) #27, !dbg !1127
  %405 = getelementptr inbounds i8, i8* %404, i64 -1, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %405, metadata !814, metadata !DIExpression()) #27, !dbg !1127
  %406 = load i8, i8* %405, align 1, !dbg !1137, !tbaa !819
  %407 = icmp eq i8 %406, 57, !dbg !1138
  br i1 %407, label %403, label %408, !dbg !1139, !llvm.loop !1141

408:                                              ; preds = %403, %388
  %409 = phi i8* [ %400, %388 ], [ %405, %403 ], !dbg !1136
  %410 = phi i8 [ %401, %388 ], [ %406, %403 ], !dbg !1137
  %411 = add i8 %410, 1, !dbg !1143
  store i8 %411, i8* %409, align 1, !dbg !1143, !tbaa !819
  %412 = icmp ult i8* %396, %409, !dbg !1144
  %413 = select i1 %412, i8* %396, i8* %409, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %413, metadata !815, metadata !DIExpression()) #27, !dbg !1127
  br i1 %394, label %414, label %417, !dbg !1145

414:                                              ; preds = %408
  %415 = getelementptr inbounds i8, i8* %409, i64 -1, !dbg !1146
  %416 = select i1 %412, i8* %399, i8* %415, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %416, metadata !815, metadata !DIExpression()) #27, !dbg !1127
  store i8 45, i8* %416, align 1, !dbg !1147, !tbaa !819
  br label %417, !dbg !1148

417:                                              ; preds = %408, %414
  %418 = phi i8* [ %416, %414 ], [ %413, %408 ], !dbg !1127
  call void @llvm.dbg.value(metadata i8* %418, metadata !815, metadata !DIExpression()) #27, !dbg !1127
  %419 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* %418) #27, !dbg !1126
  %420 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #27, !dbg !1149
  %421 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1150
  %422 = load i8, i8* %13, align 1, !dbg !1152, !tbaa !819
  %423 = icmp eq i8 %422, 45, !dbg !1153
  call void @llvm.dbg.value(metadata i1 %423, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1150
  %424 = zext i1 %423 to i64, !dbg !1154
  %425 = getelementptr inbounds i8, i8* %13, i64 %424, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %425, metadata !813, metadata !DIExpression()) #27, !dbg !1150
  %426 = call i64 @strlen(i8* nonnull %425) #28, !dbg !1155
  %427 = getelementptr inbounds i8, i8* %425, i64 %426, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %427, metadata !814, metadata !DIExpression()) #27, !dbg !1150
  %428 = getelementptr inbounds i8, i8* %425, i64 -1, !dbg !1157
  store i8 48, i8* %428, align 1, !dbg !1158, !tbaa !819
  %429 = getelementptr inbounds i8, i8* %427, i64 -1, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %429, metadata !814, metadata !DIExpression()) #27, !dbg !1150
  %430 = load i8, i8* %429, align 1, !dbg !1160, !tbaa !819
  %431 = icmp eq i8 %430, 57, !dbg !1161
  br i1 %431, label %432, label %437, !dbg !1162

432:                                              ; preds = %417, %432
  %433 = phi i8* [ %434, %432 ], [ %429, %417 ]
  store i8 48, i8* %433, align 1, !dbg !1163, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %433, metadata !814, metadata !DIExpression()) #27, !dbg !1150
  %434 = getelementptr inbounds i8, i8* %433, i64 -1, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %434, metadata !814, metadata !DIExpression()) #27, !dbg !1150
  %435 = load i8, i8* %434, align 1, !dbg !1160, !tbaa !819
  %436 = icmp eq i8 %435, 57, !dbg !1161
  br i1 %436, label %432, label %437, !dbg !1162, !llvm.loop !1164

437:                                              ; preds = %432, %417
  %438 = phi i8* [ %429, %417 ], [ %434, %432 ], !dbg !1159
  %439 = phi i8 [ %430, %417 ], [ %435, %432 ], !dbg !1160
  %440 = add i8 %439, 1, !dbg !1166
  store i8 %440, i8* %438, align 1, !dbg !1166, !tbaa !819
  %441 = icmp ult i8* %425, %438, !dbg !1167
  %442 = select i1 %441, i8* %425, i8* %438, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %442, metadata !815, metadata !DIExpression()) #27, !dbg !1150
  br i1 %423, label %443, label %446, !dbg !1168

443:                                              ; preds = %437
  %444 = getelementptr inbounds i8, i8* %438, i64 -1, !dbg !1169
  %445 = select i1 %441, i8* %428, i8* %444, !dbg !1169
  call void @llvm.dbg.value(metadata i8* %445, metadata !815, metadata !DIExpression()) #27, !dbg !1150
  store i8 45, i8* %445, align 1, !dbg !1170, !tbaa !819
  br label %446, !dbg !1171

446:                                              ; preds = %437, %443
  %447 = phi i8* [ %445, %443 ], [ %442, %437 ], !dbg !1150
  call void @llvm.dbg.value(metadata i8* %447, metadata !815, metadata !DIExpression()) #27, !dbg !1150
  %448 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %447) #27, !dbg !1149
  %449 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #27, !dbg !1172
  %450 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1175
  %451 = load i8, i8* %13, align 1, !dbg !1177, !tbaa !819
  %452 = icmp eq i8 %451, 45, !dbg !1178
  call void @llvm.dbg.value(metadata i1 %452, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1175
  %453 = zext i1 %452 to i64, !dbg !1179
  %454 = getelementptr inbounds i8, i8* %13, i64 %453, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %454, metadata !813, metadata !DIExpression()) #27, !dbg !1175
  %455 = call i64 @strlen(i8* nonnull %454) #28, !dbg !1180
  %456 = getelementptr inbounds i8, i8* %454, i64 %455, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %456, metadata !814, metadata !DIExpression()) #27, !dbg !1175
  %457 = getelementptr inbounds i8, i8* %454, i64 -1, !dbg !1182
  store i8 48, i8* %457, align 1, !dbg !1183, !tbaa !819
  %458 = getelementptr inbounds i8, i8* %456, i64 -1, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %458, metadata !814, metadata !DIExpression()) #27, !dbg !1175
  %459 = load i8, i8* %458, align 1, !dbg !1185, !tbaa !819
  %460 = icmp eq i8 %459, 57, !dbg !1186
  br i1 %460, label %461, label %466, !dbg !1187

461:                                              ; preds = %446, %461
  %462 = phi i8* [ %463, %461 ], [ %458, %446 ]
  store i8 48, i8* %462, align 1, !dbg !1188, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %462, metadata !814, metadata !DIExpression()) #27, !dbg !1175
  %463 = getelementptr inbounds i8, i8* %462, i64 -1, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %463, metadata !814, metadata !DIExpression()) #27, !dbg !1175
  %464 = load i8, i8* %463, align 1, !dbg !1185, !tbaa !819
  %465 = icmp eq i8 %464, 57, !dbg !1186
  br i1 %465, label %461, label %466, !dbg !1187, !llvm.loop !1189

466:                                              ; preds = %461, %446
  %467 = phi i8* [ %458, %446 ], [ %463, %461 ], !dbg !1184
  %468 = phi i8 [ %459, %446 ], [ %464, %461 ], !dbg !1185
  %469 = add i8 %468, 1, !dbg !1191
  store i8 %469, i8* %467, align 1, !dbg !1191, !tbaa !819
  %470 = icmp ult i8* %454, %467, !dbg !1192
  %471 = select i1 %470, i8* %454, i8* %467, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %471, metadata !815, metadata !DIExpression()) #27, !dbg !1175
  br i1 %452, label %472, label %475, !dbg !1193

472:                                              ; preds = %466
  %473 = getelementptr inbounds i8, i8* %467, i64 -1, !dbg !1194
  %474 = select i1 %470, i8* %457, i8* %473, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %474, metadata !815, metadata !DIExpression()) #27, !dbg !1175
  store i8 45, i8* %474, align 1, !dbg !1195, !tbaa !819
  br label %475, !dbg !1196

475:                                              ; preds = %466, %472
  %476 = phi i8* [ %474, %472 ], [ %471, %466 ], !dbg !1175
  call void @llvm.dbg.value(metadata i8* %476, metadata !815, metadata !DIExpression()) #27, !dbg !1175
  %477 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %476) #27, !dbg !1172
  %478 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #27, !dbg !1197
  %479 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1198
  %480 = load i8, i8* %13, align 1, !dbg !1200, !tbaa !819
  %481 = icmp eq i8 %480, 45, !dbg !1201
  call void @llvm.dbg.value(metadata i1 %481, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1198
  %482 = zext i1 %481 to i64, !dbg !1202
  %483 = getelementptr inbounds i8, i8* %13, i64 %482, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %483, metadata !813, metadata !DIExpression()) #27, !dbg !1198
  %484 = call i64 @strlen(i8* nonnull %483) #28, !dbg !1203
  %485 = getelementptr inbounds i8, i8* %483, i64 %484, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %485, metadata !814, metadata !DIExpression()) #27, !dbg !1198
  %486 = getelementptr inbounds i8, i8* %483, i64 -1, !dbg !1205
  store i8 48, i8* %486, align 1, !dbg !1206, !tbaa !819
  %487 = getelementptr inbounds i8, i8* %485, i64 -1, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %487, metadata !814, metadata !DIExpression()) #27, !dbg !1198
  %488 = load i8, i8* %487, align 1, !dbg !1208, !tbaa !819
  %489 = icmp eq i8 %488, 57, !dbg !1209
  br i1 %489, label %490, label %495, !dbg !1210

490:                                              ; preds = %475, %490
  %491 = phi i8* [ %492, %490 ], [ %487, %475 ]
  store i8 48, i8* %491, align 1, !dbg !1211, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %491, metadata !814, metadata !DIExpression()) #27, !dbg !1198
  %492 = getelementptr inbounds i8, i8* %491, i64 -1, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %492, metadata !814, metadata !DIExpression()) #27, !dbg !1198
  %493 = load i8, i8* %492, align 1, !dbg !1208, !tbaa !819
  %494 = icmp eq i8 %493, 57, !dbg !1209
  br i1 %494, label %490, label %495, !dbg !1210, !llvm.loop !1212

495:                                              ; preds = %490, %475
  %496 = phi i8* [ %487, %475 ], [ %492, %490 ], !dbg !1207
  %497 = phi i8 [ %488, %475 ], [ %493, %490 ], !dbg !1208
  %498 = add i8 %497, 1, !dbg !1214
  store i8 %498, i8* %496, align 1, !dbg !1214, !tbaa !819
  %499 = icmp ult i8* %483, %496, !dbg !1215
  %500 = select i1 %499, i8* %483, i8* %496, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %500, metadata !815, metadata !DIExpression()) #27, !dbg !1198
  br i1 %481, label %501, label %504, !dbg !1216

501:                                              ; preds = %495
  %502 = getelementptr inbounds i8, i8* %496, i64 -1, !dbg !1217
  %503 = select i1 %499, i8* %486, i8* %502, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %503, metadata !815, metadata !DIExpression()) #27, !dbg !1198
  store i8 45, i8* %503, align 1, !dbg !1218, !tbaa !819
  br label %504, !dbg !1219

504:                                              ; preds = %495, %501
  %505 = phi i8* [ %503, %501 ], [ %500, %495 ], !dbg !1198
  call void @llvm.dbg.value(metadata i8* %505, metadata !815, metadata !DIExpression()) #27, !dbg !1198
  %506 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %505) #27, !dbg !1197
  %507 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #27, !dbg !1220
  %508 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1223
  %509 = load i8, i8* %13, align 1, !dbg !1225, !tbaa !819
  %510 = icmp eq i8 %509, 45, !dbg !1226
  call void @llvm.dbg.value(metadata i1 %510, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1223
  %511 = zext i1 %510 to i64, !dbg !1227
  %512 = getelementptr inbounds i8, i8* %13, i64 %511, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %512, metadata !813, metadata !DIExpression()) #27, !dbg !1223
  %513 = call i64 @strlen(i8* nonnull %512) #28, !dbg !1228
  %514 = getelementptr inbounds i8, i8* %512, i64 %513, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %514, metadata !814, metadata !DIExpression()) #27, !dbg !1223
  %515 = getelementptr inbounds i8, i8* %512, i64 -1, !dbg !1230
  store i8 48, i8* %515, align 1, !dbg !1231, !tbaa !819
  %516 = getelementptr inbounds i8, i8* %514, i64 -1, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %516, metadata !814, metadata !DIExpression()) #27, !dbg !1223
  %517 = load i8, i8* %516, align 1, !dbg !1233, !tbaa !819
  %518 = icmp eq i8 %517, 57, !dbg !1234
  br i1 %518, label %519, label %524, !dbg !1235

519:                                              ; preds = %504, %519
  %520 = phi i8* [ %521, %519 ], [ %516, %504 ]
  store i8 48, i8* %520, align 1, !dbg !1236, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %520, metadata !814, metadata !DIExpression()) #27, !dbg !1223
  %521 = getelementptr inbounds i8, i8* %520, i64 -1, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %521, metadata !814, metadata !DIExpression()) #27, !dbg !1223
  %522 = load i8, i8* %521, align 1, !dbg !1233, !tbaa !819
  %523 = icmp eq i8 %522, 57, !dbg !1234
  br i1 %523, label %519, label %524, !dbg !1235, !llvm.loop !1237

524:                                              ; preds = %519, %504
  %525 = phi i8* [ %516, %504 ], [ %521, %519 ], !dbg !1232
  %526 = phi i8 [ %517, %504 ], [ %522, %519 ], !dbg !1233
  %527 = add i8 %526, 1, !dbg !1239
  store i8 %527, i8* %525, align 1, !dbg !1239, !tbaa !819
  %528 = icmp ult i8* %512, %525, !dbg !1240
  %529 = select i1 %528, i8* %512, i8* %525, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %529, metadata !815, metadata !DIExpression()) #27, !dbg !1223
  br i1 %510, label %530, label %533, !dbg !1241

530:                                              ; preds = %524
  %531 = getelementptr inbounds i8, i8* %525, i64 -1, !dbg !1242
  %532 = select i1 %528, i8* %515, i8* %531, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %532, metadata !815, metadata !DIExpression()) #27, !dbg !1223
  store i8 45, i8* %532, align 1, !dbg !1243, !tbaa !819
  br label %533, !dbg !1244

533:                                              ; preds = %524, %530
  %534 = phi i8* [ %532, %530 ], [ %529, %524 ], !dbg !1223
  call void @llvm.dbg.value(metadata i8* %534, metadata !815, metadata !DIExpression()) #27, !dbg !1223
  %535 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %534) #27, !dbg !1220
  %536 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #27, !dbg !1245
  %537 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1246
  %538 = load i8, i8* %13, align 1, !dbg !1248, !tbaa !819
  %539 = icmp eq i8 %538, 45, !dbg !1249
  call void @llvm.dbg.value(metadata i1 %539, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1246
  %540 = zext i1 %539 to i64, !dbg !1250
  %541 = getelementptr inbounds i8, i8* %13, i64 %540, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %541, metadata !813, metadata !DIExpression()) #27, !dbg !1246
  %542 = call i64 @strlen(i8* nonnull %541) #28, !dbg !1251
  %543 = getelementptr inbounds i8, i8* %541, i64 %542, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %543, metadata !814, metadata !DIExpression()) #27, !dbg !1246
  %544 = getelementptr inbounds i8, i8* %541, i64 -1, !dbg !1253
  store i8 48, i8* %544, align 1, !dbg !1254, !tbaa !819
  %545 = getelementptr inbounds i8, i8* %543, i64 -1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %545, metadata !814, metadata !DIExpression()) #27, !dbg !1246
  %546 = load i8, i8* %545, align 1, !dbg !1256, !tbaa !819
  %547 = icmp eq i8 %546, 57, !dbg !1257
  br i1 %547, label %548, label %553, !dbg !1258

548:                                              ; preds = %533, %548
  %549 = phi i8* [ %550, %548 ], [ %545, %533 ]
  store i8 48, i8* %549, align 1, !dbg !1259, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %549, metadata !814, metadata !DIExpression()) #27, !dbg !1246
  %550 = getelementptr inbounds i8, i8* %549, i64 -1, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %550, metadata !814, metadata !DIExpression()) #27, !dbg !1246
  %551 = load i8, i8* %550, align 1, !dbg !1256, !tbaa !819
  %552 = icmp eq i8 %551, 57, !dbg !1257
  br i1 %552, label %548, label %553, !dbg !1258, !llvm.loop !1260

553:                                              ; preds = %548, %533
  %554 = phi i8* [ %545, %533 ], [ %550, %548 ], !dbg !1255
  %555 = phi i8 [ %546, %533 ], [ %551, %548 ], !dbg !1256
  %556 = add i8 %555, 1, !dbg !1262
  store i8 %556, i8* %554, align 1, !dbg !1262, !tbaa !819
  %557 = icmp ult i8* %541, %554, !dbg !1263
  %558 = select i1 %557, i8* %541, i8* %554, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %558, metadata !815, metadata !DIExpression()) #27, !dbg !1246
  br i1 %539, label %559, label %562, !dbg !1264

559:                                              ; preds = %553
  %560 = getelementptr inbounds i8, i8* %554, i64 -1, !dbg !1265
  %561 = select i1 %557, i8* %544, i8* %560, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %561, metadata !815, metadata !DIExpression()) #27, !dbg !1246
  store i8 45, i8* %561, align 1, !dbg !1266, !tbaa !819
  br label %562, !dbg !1267

562:                                              ; preds = %553, %559
  %563 = phi i8* [ %561, %559 ], [ %558, %553 ], !dbg !1246
  call void @llvm.dbg.value(metadata i8* %563, metadata !815, metadata !DIExpression()) #27, !dbg !1246
  %564 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* %563) #27, !dbg !1245
  %565 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #27, !dbg !1268
  %566 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1269
  %567 = load i8, i8* %13, align 1, !dbg !1271, !tbaa !819
  %568 = icmp eq i8 %567, 45, !dbg !1272
  call void @llvm.dbg.value(metadata i1 %568, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1269
  %569 = zext i1 %568 to i64, !dbg !1273
  %570 = getelementptr inbounds i8, i8* %13, i64 %569, !dbg !1273
  call void @llvm.dbg.value(metadata i8* %570, metadata !813, metadata !DIExpression()) #27, !dbg !1269
  %571 = call i64 @strlen(i8* nonnull %570) #28, !dbg !1274
  %572 = getelementptr inbounds i8, i8* %570, i64 %571, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %572, metadata !814, metadata !DIExpression()) #27, !dbg !1269
  %573 = getelementptr inbounds i8, i8* %570, i64 -1, !dbg !1276
  store i8 48, i8* %573, align 1, !dbg !1277, !tbaa !819
  %574 = getelementptr inbounds i8, i8* %572, i64 -1, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %574, metadata !814, metadata !DIExpression()) #27, !dbg !1269
  %575 = load i8, i8* %574, align 1, !dbg !1279, !tbaa !819
  %576 = icmp eq i8 %575, 57, !dbg !1280
  br i1 %576, label %577, label %582, !dbg !1281

577:                                              ; preds = %562, %577
  %578 = phi i8* [ %579, %577 ], [ %574, %562 ]
  store i8 48, i8* %578, align 1, !dbg !1282, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %578, metadata !814, metadata !DIExpression()) #27, !dbg !1269
  %579 = getelementptr inbounds i8, i8* %578, i64 -1, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %579, metadata !814, metadata !DIExpression()) #27, !dbg !1269
  %580 = load i8, i8* %579, align 1, !dbg !1279, !tbaa !819
  %581 = icmp eq i8 %580, 57, !dbg !1280
  br i1 %581, label %577, label %582, !dbg !1281, !llvm.loop !1283

582:                                              ; preds = %577, %562
  %583 = phi i8* [ %574, %562 ], [ %579, %577 ], !dbg !1278
  %584 = phi i8 [ %575, %562 ], [ %580, %577 ], !dbg !1279
  %585 = add i8 %584, 1, !dbg !1285
  store i8 %585, i8* %583, align 1, !dbg !1285, !tbaa !819
  %586 = icmp ult i8* %570, %583, !dbg !1286
  %587 = select i1 %586, i8* %570, i8* %583, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %587, metadata !815, metadata !DIExpression()) #27, !dbg !1269
  br i1 %568, label %588, label %591, !dbg !1287

588:                                              ; preds = %582
  %589 = getelementptr inbounds i8, i8* %583, i64 -1, !dbg !1288
  %590 = select i1 %586, i8* %573, i8* %589, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %590, metadata !815, metadata !DIExpression()) #27, !dbg !1269
  store i8 45, i8* %590, align 1, !dbg !1289, !tbaa !819
  br label %591, !dbg !1290

591:                                              ; preds = %582, %588
  %592 = phi i8* [ %590, %588 ], [ %587, %582 ], !dbg !1269
  call void @llvm.dbg.value(metadata i8* %592, metadata !815, metadata !DIExpression()) #27, !dbg !1269
  %593 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* %592) #27, !dbg !1268
  %594 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #27, !dbg !1291
  %595 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1292
  %596 = load i8, i8* %13, align 1, !dbg !1294, !tbaa !819
  %597 = icmp eq i8 %596, 45, !dbg !1295
  call void @llvm.dbg.value(metadata i1 %597, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1292
  %598 = zext i1 %597 to i64, !dbg !1296
  %599 = getelementptr inbounds i8, i8* %13, i64 %598, !dbg !1296
  call void @llvm.dbg.value(metadata i8* %599, metadata !813, metadata !DIExpression()) #27, !dbg !1292
  %600 = call i64 @strlen(i8* nonnull %599) #28, !dbg !1297
  %601 = getelementptr inbounds i8, i8* %599, i64 %600, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %601, metadata !814, metadata !DIExpression()) #27, !dbg !1292
  %602 = getelementptr inbounds i8, i8* %599, i64 -1, !dbg !1299
  store i8 48, i8* %602, align 1, !dbg !1300, !tbaa !819
  %603 = getelementptr inbounds i8, i8* %601, i64 -1, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %603, metadata !814, metadata !DIExpression()) #27, !dbg !1292
  %604 = load i8, i8* %603, align 1, !dbg !1302, !tbaa !819
  %605 = icmp eq i8 %604, 57, !dbg !1303
  br i1 %605, label %606, label %611, !dbg !1304

606:                                              ; preds = %591, %606
  %607 = phi i8* [ %608, %606 ], [ %603, %591 ]
  store i8 48, i8* %607, align 1, !dbg !1305, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %607, metadata !814, metadata !DIExpression()) #27, !dbg !1292
  %608 = getelementptr inbounds i8, i8* %607, i64 -1, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %608, metadata !814, metadata !DIExpression()) #27, !dbg !1292
  %609 = load i8, i8* %608, align 1, !dbg !1302, !tbaa !819
  %610 = icmp eq i8 %609, 57, !dbg !1303
  br i1 %610, label %606, label %611, !dbg !1304, !llvm.loop !1306

611:                                              ; preds = %606, %591
  %612 = phi i8* [ %603, %591 ], [ %608, %606 ], !dbg !1301
  %613 = phi i8 [ %604, %591 ], [ %609, %606 ], !dbg !1302
  %614 = add i8 %613, 1, !dbg !1308
  store i8 %614, i8* %612, align 1, !dbg !1308, !tbaa !819
  %615 = icmp ult i8* %599, %612, !dbg !1309
  %616 = select i1 %615, i8* %599, i8* %612, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %616, metadata !815, metadata !DIExpression()) #27, !dbg !1292
  br i1 %597, label %617, label %620, !dbg !1310

617:                                              ; preds = %611
  %618 = getelementptr inbounds i8, i8* %612, i64 -1, !dbg !1311
  %619 = select i1 %615, i8* %602, i8* %618, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %619, metadata !815, metadata !DIExpression()) #27, !dbg !1292
  store i8 45, i8* %619, align 1, !dbg !1312, !tbaa !819
  br label %620, !dbg !1313

620:                                              ; preds = %611, %617
  %621 = phi i8* [ %619, %617 ], [ %616, %611 ], !dbg !1292
  call void @llvm.dbg.value(metadata i8* %621, metadata !815, metadata !DIExpression()) #27, !dbg !1292
  %622 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %621) #27, !dbg !1291
  %623 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #27, !dbg !1314
  %624 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1317
  %625 = load i8, i8* %13, align 1, !dbg !1319, !tbaa !819
  %626 = icmp eq i8 %625, 45, !dbg !1320
  call void @llvm.dbg.value(metadata i1 %626, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1317
  %627 = zext i1 %626 to i64, !dbg !1321
  %628 = getelementptr inbounds i8, i8* %13, i64 %627, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %628, metadata !813, metadata !DIExpression()) #27, !dbg !1317
  %629 = call i64 @strlen(i8* nonnull %628) #28, !dbg !1322
  %630 = getelementptr inbounds i8, i8* %628, i64 %629, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %630, metadata !814, metadata !DIExpression()) #27, !dbg !1317
  %631 = getelementptr inbounds i8, i8* %628, i64 -1, !dbg !1324
  store i8 48, i8* %631, align 1, !dbg !1325, !tbaa !819
  %632 = getelementptr inbounds i8, i8* %630, i64 -1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %632, metadata !814, metadata !DIExpression()) #27, !dbg !1317
  %633 = load i8, i8* %632, align 1, !dbg !1327, !tbaa !819
  %634 = icmp eq i8 %633, 57, !dbg !1328
  br i1 %634, label %635, label %640, !dbg !1329

635:                                              ; preds = %620, %635
  %636 = phi i8* [ %637, %635 ], [ %632, %620 ]
  store i8 48, i8* %636, align 1, !dbg !1330, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %636, metadata !814, metadata !DIExpression()) #27, !dbg !1317
  %637 = getelementptr inbounds i8, i8* %636, i64 -1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %637, metadata !814, metadata !DIExpression()) #27, !dbg !1317
  %638 = load i8, i8* %637, align 1, !dbg !1327, !tbaa !819
  %639 = icmp eq i8 %638, 57, !dbg !1328
  br i1 %639, label %635, label %640, !dbg !1329, !llvm.loop !1331

640:                                              ; preds = %635, %620
  %641 = phi i8* [ %632, %620 ], [ %637, %635 ], !dbg !1326
  %642 = phi i8 [ %633, %620 ], [ %638, %635 ], !dbg !1327
  %643 = add i8 %642, 1, !dbg !1333
  store i8 %643, i8* %641, align 1, !dbg !1333, !tbaa !819
  %644 = icmp ult i8* %628, %641, !dbg !1334
  %645 = select i1 %644, i8* %628, i8* %641, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %645, metadata !815, metadata !DIExpression()) #27, !dbg !1317
  br i1 %626, label %646, label %649, !dbg !1335

646:                                              ; preds = %640
  %647 = getelementptr inbounds i8, i8* %641, i64 -1, !dbg !1336
  %648 = select i1 %644, i8* %631, i8* %647, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %648, metadata !815, metadata !DIExpression()) #27, !dbg !1317
  store i8 45, i8* %648, align 1, !dbg !1337, !tbaa !819
  br label %649, !dbg !1338

649:                                              ; preds = %640, %646
  %650 = phi i8* [ %648, %646 ], [ %645, %640 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8* %650, metadata !815, metadata !DIExpression()) #27, !dbg !1317
  %651 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %650) #27, !dbg !1314
  %652 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #27, !dbg !1339
  %653 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1340
  %654 = load i8, i8* %13, align 1, !dbg !1342, !tbaa !819
  %655 = icmp eq i8 %654, 45, !dbg !1343
  call void @llvm.dbg.value(metadata i1 %655, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1340
  %656 = zext i1 %655 to i64, !dbg !1344
  %657 = getelementptr inbounds i8, i8* %13, i64 %656, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %657, metadata !813, metadata !DIExpression()) #27, !dbg !1340
  %658 = call i64 @strlen(i8* nonnull %657) #28, !dbg !1345
  %659 = getelementptr inbounds i8, i8* %657, i64 %658, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %659, metadata !814, metadata !DIExpression()) #27, !dbg !1340
  %660 = getelementptr inbounds i8, i8* %657, i64 -1, !dbg !1347
  store i8 48, i8* %660, align 1, !dbg !1348, !tbaa !819
  %661 = getelementptr inbounds i8, i8* %659, i64 -1, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %661, metadata !814, metadata !DIExpression()) #27, !dbg !1340
  %662 = load i8, i8* %661, align 1, !dbg !1350, !tbaa !819
  %663 = icmp eq i8 %662, 57, !dbg !1351
  br i1 %663, label %664, label %669, !dbg !1352

664:                                              ; preds = %649, %664
  %665 = phi i8* [ %666, %664 ], [ %661, %649 ]
  store i8 48, i8* %665, align 1, !dbg !1353, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %665, metadata !814, metadata !DIExpression()) #27, !dbg !1340
  %666 = getelementptr inbounds i8, i8* %665, i64 -1, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %666, metadata !814, metadata !DIExpression()) #27, !dbg !1340
  %667 = load i8, i8* %666, align 1, !dbg !1350, !tbaa !819
  %668 = icmp eq i8 %667, 57, !dbg !1351
  br i1 %668, label %664, label %669, !dbg !1352, !llvm.loop !1354

669:                                              ; preds = %664, %649
  %670 = phi i8* [ %661, %649 ], [ %666, %664 ], !dbg !1349
  %671 = phi i8 [ %662, %649 ], [ %667, %664 ], !dbg !1350
  %672 = add i8 %671, 1, !dbg !1356
  store i8 %672, i8* %670, align 1, !dbg !1356, !tbaa !819
  %673 = icmp ult i8* %657, %670, !dbg !1357
  %674 = select i1 %673, i8* %657, i8* %670, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %674, metadata !815, metadata !DIExpression()) #27, !dbg !1340
  br i1 %655, label %675, label %678, !dbg !1358

675:                                              ; preds = %669
  %676 = getelementptr inbounds i8, i8* %670, i64 -1, !dbg !1359
  %677 = select i1 %673, i8* %660, i8* %676, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %677, metadata !815, metadata !DIExpression()) #27, !dbg !1340
  store i8 45, i8* %677, align 1, !dbg !1360, !tbaa !819
  br label %678, !dbg !1361

678:                                              ; preds = %669, %675
  %679 = phi i8* [ %677, %675 ], [ %674, %669 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8* %679, metadata !815, metadata !DIExpression()) #27, !dbg !1340
  %680 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* %679) #27, !dbg !1339
  %681 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #27, !dbg !1362
  %682 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1365
  %683 = load i8, i8* %13, align 1, !dbg !1367, !tbaa !819
  %684 = icmp eq i8 %683, 45, !dbg !1368
  call void @llvm.dbg.value(metadata i1 %684, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1365
  %685 = zext i1 %684 to i64, !dbg !1369
  %686 = getelementptr inbounds i8, i8* %13, i64 %685, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %686, metadata !813, metadata !DIExpression()) #27, !dbg !1365
  %687 = call i64 @strlen(i8* nonnull %686) #28, !dbg !1370
  %688 = getelementptr inbounds i8, i8* %686, i64 %687, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %688, metadata !814, metadata !DIExpression()) #27, !dbg !1365
  %689 = getelementptr inbounds i8, i8* %686, i64 -1, !dbg !1372
  store i8 48, i8* %689, align 1, !dbg !1373, !tbaa !819
  %690 = getelementptr inbounds i8, i8* %688, i64 -1, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %690, metadata !814, metadata !DIExpression()) #27, !dbg !1365
  %691 = load i8, i8* %690, align 1, !dbg !1375, !tbaa !819
  %692 = icmp eq i8 %691, 57, !dbg !1376
  br i1 %692, label %693, label %698, !dbg !1377

693:                                              ; preds = %678, %693
  %694 = phi i8* [ %695, %693 ], [ %690, %678 ]
  store i8 48, i8* %694, align 1, !dbg !1378, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %694, metadata !814, metadata !DIExpression()) #27, !dbg !1365
  %695 = getelementptr inbounds i8, i8* %694, i64 -1, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %695, metadata !814, metadata !DIExpression()) #27, !dbg !1365
  %696 = load i8, i8* %695, align 1, !dbg !1375, !tbaa !819
  %697 = icmp eq i8 %696, 57, !dbg !1376
  br i1 %697, label %693, label %698, !dbg !1377, !llvm.loop !1379

698:                                              ; preds = %693, %678
  %699 = phi i8* [ %690, %678 ], [ %695, %693 ], !dbg !1374
  %700 = phi i8 [ %691, %678 ], [ %696, %693 ], !dbg !1375
  %701 = add i8 %700, 1, !dbg !1381
  store i8 %701, i8* %699, align 1, !dbg !1381, !tbaa !819
  %702 = icmp ult i8* %686, %699, !dbg !1382
  %703 = select i1 %702, i8* %686, i8* %699, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %703, metadata !815, metadata !DIExpression()) #27, !dbg !1365
  br i1 %684, label %704, label %707, !dbg !1383

704:                                              ; preds = %698
  %705 = getelementptr inbounds i8, i8* %699, i64 -1, !dbg !1384
  %706 = select i1 %702, i8* %689, i8* %705, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %706, metadata !815, metadata !DIExpression()) #27, !dbg !1365
  store i8 45, i8* %706, align 1, !dbg !1385, !tbaa !819
  br label %707, !dbg !1386

707:                                              ; preds = %698, %704
  %708 = phi i8* [ %706, %704 ], [ %703, %698 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8* %708, metadata !815, metadata !DIExpression()) #27, !dbg !1365
  %709 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* %708) #27, !dbg !1362
  %710 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #27, !dbg !1387
  %711 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1388
  %712 = load i8, i8* %13, align 1, !dbg !1390, !tbaa !819
  %713 = icmp eq i8 %712, 45, !dbg !1391
  call void @llvm.dbg.value(metadata i1 %713, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1388
  %714 = zext i1 %713 to i64, !dbg !1392
  %715 = getelementptr inbounds i8, i8* %13, i64 %714, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %715, metadata !813, metadata !DIExpression()) #27, !dbg !1388
  %716 = call i64 @strlen(i8* nonnull %715) #28, !dbg !1393
  %717 = getelementptr inbounds i8, i8* %715, i64 %716, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %717, metadata !814, metadata !DIExpression()) #27, !dbg !1388
  %718 = getelementptr inbounds i8, i8* %715, i64 -1, !dbg !1395
  store i8 48, i8* %718, align 1, !dbg !1396, !tbaa !819
  %719 = getelementptr inbounds i8, i8* %717, i64 -1, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %719, metadata !814, metadata !DIExpression()) #27, !dbg !1388
  %720 = load i8, i8* %719, align 1, !dbg !1398, !tbaa !819
  %721 = icmp eq i8 %720, 57, !dbg !1399
  br i1 %721, label %722, label %727, !dbg !1400

722:                                              ; preds = %707, %722
  %723 = phi i8* [ %724, %722 ], [ %719, %707 ]
  store i8 48, i8* %723, align 1, !dbg !1401, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %723, metadata !814, metadata !DIExpression()) #27, !dbg !1388
  %724 = getelementptr inbounds i8, i8* %723, i64 -1, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %724, metadata !814, metadata !DIExpression()) #27, !dbg !1388
  %725 = load i8, i8* %724, align 1, !dbg !1398, !tbaa !819
  %726 = icmp eq i8 %725, 57, !dbg !1399
  br i1 %726, label %722, label %727, !dbg !1400, !llvm.loop !1402

727:                                              ; preds = %722, %707
  %728 = phi i8* [ %719, %707 ], [ %724, %722 ], !dbg !1397
  %729 = phi i8 [ %720, %707 ], [ %725, %722 ], !dbg !1398
  %730 = add i8 %729, 1, !dbg !1404
  store i8 %730, i8* %728, align 1, !dbg !1404, !tbaa !819
  %731 = icmp ult i8* %715, %728, !dbg !1405
  %732 = select i1 %731, i8* %715, i8* %728, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %732, metadata !815, metadata !DIExpression()) #27, !dbg !1388
  br i1 %713, label %733, label %736, !dbg !1406

733:                                              ; preds = %727
  %734 = getelementptr inbounds i8, i8* %728, i64 -1, !dbg !1407
  %735 = select i1 %731, i8* %718, i8* %734, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %735, metadata !815, metadata !DIExpression()) #27, !dbg !1388
  store i8 45, i8* %735, align 1, !dbg !1408, !tbaa !819
  br label %736, !dbg !1409

736:                                              ; preds = %727, %733
  %737 = phi i8* [ %735, %733 ], [ %732, %727 ], !dbg !1388
  call void @llvm.dbg.value(metadata i8* %737, metadata !815, metadata !DIExpression()) #27, !dbg !1388
  %738 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %737) #27, !dbg !1387
  %739 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #27, !dbg !1410
  %740 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1413
  %741 = load i8, i8* %13, align 1, !dbg !1415, !tbaa !819
  %742 = icmp eq i8 %741, 45, !dbg !1416
  call void @llvm.dbg.value(metadata i1 %742, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1413
  %743 = zext i1 %742 to i64, !dbg !1417
  %744 = getelementptr inbounds i8, i8* %13, i64 %743, !dbg !1417
  call void @llvm.dbg.value(metadata i8* %744, metadata !813, metadata !DIExpression()) #27, !dbg !1413
  %745 = call i64 @strlen(i8* nonnull %744) #28, !dbg !1418
  %746 = getelementptr inbounds i8, i8* %744, i64 %745, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %746, metadata !814, metadata !DIExpression()) #27, !dbg !1413
  %747 = getelementptr inbounds i8, i8* %744, i64 -1, !dbg !1420
  store i8 48, i8* %747, align 1, !dbg !1421, !tbaa !819
  %748 = getelementptr inbounds i8, i8* %746, i64 -1, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %748, metadata !814, metadata !DIExpression()) #27, !dbg !1413
  %749 = load i8, i8* %748, align 1, !dbg !1423, !tbaa !819
  %750 = icmp eq i8 %749, 57, !dbg !1424
  br i1 %750, label %751, label %756, !dbg !1425

751:                                              ; preds = %736, %751
  %752 = phi i8* [ %753, %751 ], [ %748, %736 ]
  store i8 48, i8* %752, align 1, !dbg !1426, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %752, metadata !814, metadata !DIExpression()) #27, !dbg !1413
  %753 = getelementptr inbounds i8, i8* %752, i64 -1, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %753, metadata !814, metadata !DIExpression()) #27, !dbg !1413
  %754 = load i8, i8* %753, align 1, !dbg !1423, !tbaa !819
  %755 = icmp eq i8 %754, 57, !dbg !1424
  br i1 %755, label %751, label %756, !dbg !1425, !llvm.loop !1427

756:                                              ; preds = %751, %736
  %757 = phi i8* [ %748, %736 ], [ %753, %751 ], !dbg !1422
  %758 = phi i8 [ %749, %736 ], [ %754, %751 ], !dbg !1423
  %759 = add i8 %758, 1, !dbg !1429
  store i8 %759, i8* %757, align 1, !dbg !1429, !tbaa !819
  %760 = icmp ult i8* %744, %757, !dbg !1430
  %761 = select i1 %760, i8* %744, i8* %757, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %761, metadata !815, metadata !DIExpression()) #27, !dbg !1413
  br i1 %742, label %762, label %765, !dbg !1431

762:                                              ; preds = %756
  %763 = getelementptr inbounds i8, i8* %757, i64 -1, !dbg !1432
  %764 = select i1 %760, i8* %747, i8* %763, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %764, metadata !815, metadata !DIExpression()) #27, !dbg !1413
  store i8 45, i8* %764, align 1, !dbg !1433, !tbaa !819
  br label %765, !dbg !1434

765:                                              ; preds = %756, %762
  %766 = phi i8* [ %764, %762 ], [ %761, %756 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8* %766, metadata !815, metadata !DIExpression()) #27, !dbg !1413
  %767 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %766) #27, !dbg !1410
  %768 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #27, !dbg !1435
  %769 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %13) #27, !dbg !1435
  call void @llvm.dbg.value(metadata i8* %7, metadata !807, metadata !DIExpression()) #27, !dbg !1436
  %770 = load i8, i8* %13, align 1, !dbg !1438, !tbaa !819
  %771 = icmp eq i8 %770, 45, !dbg !1439
  call void @llvm.dbg.value(metadata i1 %771, metadata !812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1436
  %772 = zext i1 %771 to i64, !dbg !1440
  %773 = getelementptr inbounds i8, i8* %13, i64 %772, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %773, metadata !813, metadata !DIExpression()) #27, !dbg !1436
  %774 = call i64 @strlen(i8* nonnull %773) #28, !dbg !1441
  %775 = getelementptr inbounds i8, i8* %773, i64 %774, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %775, metadata !814, metadata !DIExpression()) #27, !dbg !1436
  %776 = getelementptr inbounds i8, i8* %773, i64 -1, !dbg !1443
  store i8 48, i8* %776, align 1, !dbg !1444, !tbaa !819
  %777 = getelementptr inbounds i8, i8* %775, i64 -1, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %777, metadata !814, metadata !DIExpression()) #27, !dbg !1436
  %778 = load i8, i8* %777, align 1, !dbg !1446, !tbaa !819
  %779 = icmp eq i8 %778, 57, !dbg !1447
  br i1 %779, label %780, label %785, !dbg !1448

780:                                              ; preds = %765, %780
  %781 = phi i8* [ %782, %780 ], [ %777, %765 ]
  store i8 48, i8* %781, align 1, !dbg !1449, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %781, metadata !814, metadata !DIExpression()) #27, !dbg !1436
  %782 = getelementptr inbounds i8, i8* %781, i64 -1, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %782, metadata !814, metadata !DIExpression()) #27, !dbg !1436
  %783 = load i8, i8* %782, align 1, !dbg !1446, !tbaa !819
  %784 = icmp eq i8 %783, 57, !dbg !1447
  br i1 %784, label %780, label %785, !dbg !1448, !llvm.loop !1450

785:                                              ; preds = %780, %765
  %786 = phi i8* [ %777, %765 ], [ %782, %780 ], !dbg !1445
  %787 = phi i8 [ %778, %765 ], [ %783, %780 ], !dbg !1446
  %788 = add i8 %787, 1, !dbg !1452
  store i8 %788, i8* %786, align 1, !dbg !1452, !tbaa !819
  %789 = icmp ult i8* %773, %786, !dbg !1453
  %790 = select i1 %789, i8* %773, i8* %786, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %790, metadata !815, metadata !DIExpression()) #27, !dbg !1436
  br i1 %771, label %791, label %794, !dbg !1454

791:                                              ; preds = %785
  %792 = getelementptr inbounds i8, i8* %786, i64 -1, !dbg !1455
  %793 = select i1 %789, i8* %776, i8* %792, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %793, metadata !815, metadata !DIExpression()) #27, !dbg !1436
  store i8 45, i8* %793, align 1, !dbg !1456, !tbaa !819
  br label %794, !dbg !1457

794:                                              ; preds = %785, %791
  %795 = phi i8* [ %793, %791 ], [ %790, %785 ], !dbg !1436
  call void @llvm.dbg.value(metadata i8* %795, metadata !815, metadata !DIExpression()) #27, !dbg !1436
  %796 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8* %795) #27, !dbg !1435
  %797 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)) #27, !dbg !1458
  call void @llvm.dbg.value(metadata float 0x3810000000000000, metadata !778, metadata !DIExpression()) #27, !dbg !1459
  %798 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0, !dbg !1461
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %798) #27, !dbg !1461
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !772, metadata !DIExpression()) #27, !dbg !1461
  %799 = call i32 @ftoastr(i8* nonnull %798, i64 31, i32 1, i32 0, float 0x3810000000000000) #27, !dbg !1461
  %800 = call i32 @puts(i8* nonnull %798) #27, !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %798) #27, !dbg !1461
  %801 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #27, !dbg !1458
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, metadata !778, metadata !DIExpression()) #27, !dbg !1462
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %798) #27, !dbg !782
  %802 = call i32 @ftoastr(i8* nonnull %798, i64 31, i32 1, i32 0, float 0x47EFFFFFE0000000) #27, !dbg !782
  %803 = call i32 @puts(i8* nonnull %798) #27, !dbg !782
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %798) #27, !dbg !782
  %804 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #27, !dbg !1463
  call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !766, metadata !DIExpression()) #27, !dbg !1464
  %805 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !1466
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %805) #27, !dbg !1466
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !760, metadata !DIExpression()) #27, !dbg !1466
  %806 = call i32 @dtoastr(i8* nonnull %805, i64 40, i32 1, i32 0, double 0x10000000000000) #27, !dbg !1466
  %807 = call i32 @puts(i8* nonnull %805) #27, !dbg !1466
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %805) #27, !dbg !1466
  %808 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #27, !dbg !1463
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !766, metadata !DIExpression()) #27, !dbg !1467
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %805) #27, !dbg !770
  %809 = call i32 @dtoastr(i8* nonnull %805, i64 40, i32 1, i32 0, double 0x7FEFFFFFFFFFFFFF) #27, !dbg !770
  %810 = call i32 @puts(i8* nonnull %805) #27, !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %805) #27, !dbg !770
  %811 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #27, !dbg !1468
  call void @llvm.dbg.value(metadata x86_fp80 0xK00018000000000000000, metadata !790, metadata !DIExpression()) #27, !dbg !1469
  %812 = getelementptr inbounds [45 x i8], [45 x i8]* %5, i64 0, i64 0, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %812) #27, !dbg !794
  %813 = call i32 @ldtoastr(i8* nonnull %812, i64 45, i32 1, i32 0, x86_fp80 0xK00018000000000000000) #27, !dbg !794
  %814 = call i32 @puts(i8* nonnull %812) #27, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %812) #27, !dbg !794
  %815 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #27, !dbg !1468
  call void @llvm.dbg.value(metadata x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF, metadata !790, metadata !DIExpression()) #27, !dbg !1470
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %812) #27, !dbg !1472
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !784, metadata !DIExpression()) #27, !dbg !1472
  %816 = call i32 @ldtoastr(i8* nonnull %812, i64 45, i32 1, i32 0, x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF) #27, !dbg !1472
  %817 = call i32 @puts(i8* nonnull %812) #27, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %812) #27, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %7) #27, !dbg !1473
  ret i32 0, !dbg !1474
}

; Function Attrs: nounwind
declare !dbg !1475 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1478 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1481 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1488 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i8* %0, i8** @file_name, align 8, !dbg !1495, !tbaa !627
  ret void, !dbg !1496
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1497 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1503, !tbaa !1504
  ret void, !dbg !1506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1507 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1512, !tbaa !627
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1513
  %3 = icmp eq i32 %2, 0, !dbg !1514
  br i1 %3, label %22, label %4, !dbg !1515

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1516, !tbaa !1504, !range !1517
  %6 = icmp eq i8 %5, 0, !dbg !1516
  br i1 %6, label %11, label %7, !dbg !1518

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1519
  %9 = load i32, i32* %8, align 4, !dbg !1519, !tbaa !1520
  %10 = icmp eq i32 %9, 32, !dbg !1522
  br i1 %10, label %22, label %11, !dbg !1523

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i32 5) #27, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %12, metadata !1509, metadata !DIExpression()), !dbg !1525
  %13 = load i8*, i8** @file_name, align 8, !dbg !1526, !tbaa !627
  %14 = icmp eq i8* %13, null, !dbg !1526
  %15 = tail call i32* @__errno_location() #30, !dbg !1528
  %16 = load i32, i32* %15, align 4, !dbg !1528, !tbaa !1520
  br i1 %14, label %19, label %17, !dbg !1529

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1530
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1531
  br label %20, !dbg !1531

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.91, i64 0, i64 0), i8* %12) #27, !dbg !1532
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1533, !tbaa !1520
  tail call void @_exit(i32 %21) #29, !dbg !1534
  unreachable, !dbg !1534

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1535, !tbaa !627
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1537
  %25 = icmp eq i32 %24, 0, !dbg !1538
  br i1 %25, label %28, label %26, !dbg !1539

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1540, !tbaa !1520
  tail call void @_exit(i32 %27) #29, !dbg !1541
  unreachable, !dbg !1541

28:                                               ; preds = %22
  ret void, !dbg !1542
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1543 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @dtoastr(i8* %0, i64 %1, i32 %2, i32 %3, double %4) local_unnamed_addr #13 !dbg !1547 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1552, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i64 %1, metadata !1553, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %2, metadata !1554, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %3, metadata !1555, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata double %4, metadata !1556, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata double %4, metadata !1557, metadata !DIExpression()), !dbg !1567
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1568
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #27, !dbg !1568
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1558, metadata !DIExpression()), !dbg !1569
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1570
  %9 = fneg double %4, !dbg !1571
  %10 = select i1 %8, double %9, double %4, !dbg !1571
  call void @llvm.dbg.value(metadata double %10, metadata !1560, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %7, metadata !1562, metadata !DIExpression()), !dbg !1567
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1572
  call void @llvm.dbg.value(metadata i8* %11, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 37, i8* %7, align 1, !dbg !1573, !tbaa !819
  store i8 45, i8* %11, align 1, !dbg !1574, !tbaa !819
  %12 = and i32 %2, 1, !dbg !1575
  %13 = zext i32 %12 to i64, !dbg !1576
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %14, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 43, i8* %14, align 1, !dbg !1577, !tbaa !819
  %15 = lshr i32 %2, 1, !dbg !1578
  %16 = and i32 %15, 1, !dbg !1578
  %17 = zext i32 %16 to i64, !dbg !1579
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %18, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 32, i8* %18, align 1, !dbg !1580, !tbaa !819
  %19 = lshr i32 %2, 2, !dbg !1581
  %20 = and i32 %19, 1, !dbg !1581
  %21 = zext i32 %20 to i64, !dbg !1582
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %22, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 48, i8* %22, align 1, !dbg !1583, !tbaa !819
  %23 = lshr i32 %2, 3, !dbg !1584
  %24 = and i32 %23, 1, !dbg !1584
  %25 = zext i32 %24 to i64, !dbg !1585
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %26, metadata !1562, metadata !DIExpression()), !dbg !1567
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %27, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 42, i8* %26, align 1, !dbg !1587, !tbaa !819
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %28, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 46, i8* %27, align 1, !dbg !1589, !tbaa !819
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %29, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 42, i8* %28, align 1, !dbg !1591, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %29, metadata !1562, metadata !DIExpression()), !dbg !1567
  %30 = and i32 %2, 16, !dbg !1592
  %31 = icmp eq i32 %30, 0, !dbg !1593
  %32 = select i1 %31, i8 103, i8 71, !dbg !1593
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %33, metadata !1562, metadata !DIExpression()), !dbg !1567
  store i8 %32, i8* %29, align 1, !dbg !1595, !tbaa !819
  store i8 0, i8* %33, align 1, !dbg !1596, !tbaa !819
  %34 = fcmp olt double %10, 0x10000000000000, !dbg !1597
  %35 = select i1 %34, i32 1, i32 15, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %35, metadata !1561, metadata !DIExpression()), !dbg !1567
  %36 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %35, double %4) #27, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %36, metadata !1563, metadata !DIExpression()), !dbg !1600
  %37 = icmp slt i32 %36, 0, !dbg !1601
  br i1 %37, label %52, label %38, !dbg !1603

38:                                               ; preds = %5, %46
  %39 = phi i32 [ %48, %46 ], [ %36, %5 ]
  %40 = phi i32 [ %47, %46 ], [ %35, %5 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !1561, metadata !DIExpression()), !dbg !1567
  %41 = zext i32 %39 to i64, !dbg !1604
  %42 = icmp ult i64 %41, %1, !dbg !1605
  br i1 %42, label %43, label %46, !dbg !1606

43:                                               ; preds = %38
  %44 = call double @strtod(i8* nocapture %0, i8** null) #27, !dbg !1607
  %45 = fcmp oeq double %44, %4, !dbg !1608
  br i1 %45, label %52, label %46, !dbg !1609

46:                                               ; preds = %43, %38
  %47 = add nuw nsw i32 %40, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %47, metadata !1561, metadata !DIExpression()), !dbg !1567
  %48 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %47, double %4) #27, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %48, metadata !1563, metadata !DIExpression()), !dbg !1600
  %49 = icmp slt i32 %48, 0, !dbg !1601
  %50 = icmp ugt i32 %40, 15
  %51 = or i1 %50, %49, !dbg !1603
  br i1 %51, label %52, label %38, !dbg !1603, !llvm.loop !1611

52:                                               ; preds = %46, %43, %5
  %53 = phi i32 [ %36, %5 ], [ %39, %43 ], [ %48, %46 ], !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #27, !dbg !1614
  ret i32 %53, !dbg !1614
}

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @ftoastr(i8* %0, i64 %1, i32 %2, i32 %3, float %4) local_unnamed_addr #13 !dbg !1615 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1619, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %1, metadata !1620, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %2, metadata !1621, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %3, metadata !1622, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata float %4, metadata !1623, metadata !DIExpression()), !dbg !1633
  %7 = fpext float %4 to double, !dbg !1634
  call void @llvm.dbg.value(metadata double %7, metadata !1624, metadata !DIExpression()), !dbg !1633
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #27, !dbg !1635
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1625, metadata !DIExpression()), !dbg !1636
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !1637
  %10 = fneg float %4, !dbg !1638
  %11 = select i1 %9, float %10, float %4, !dbg !1638
  call void @llvm.dbg.value(metadata float %11, metadata !1626, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %8, metadata !1628, metadata !DIExpression()), !dbg !1633
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata i8* %12, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 37, i8* %8, align 1, !dbg !1640, !tbaa !819
  store i8 45, i8* %12, align 1, !dbg !1641, !tbaa !819
  %13 = and i32 %2, 1, !dbg !1642
  %14 = zext i32 %13 to i64, !dbg !1643
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %15, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 43, i8* %15, align 1, !dbg !1644, !tbaa !819
  %16 = lshr i32 %2, 1, !dbg !1645
  %17 = and i32 %16, 1, !dbg !1645
  %18 = zext i32 %17 to i64, !dbg !1646
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !1646
  call void @llvm.dbg.value(metadata i8* %19, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 32, i8* %19, align 1, !dbg !1647, !tbaa !819
  %20 = lshr i32 %2, 2, !dbg !1648
  %21 = and i32 %20, 1, !dbg !1648
  %22 = zext i32 %21 to i64, !dbg !1649
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %23, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 48, i8* %23, align 1, !dbg !1650, !tbaa !819
  %24 = lshr i32 %2, 3, !dbg !1651
  %25 = and i32 %24, 1, !dbg !1651
  %26 = zext i32 %25 to i64, !dbg !1652
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %27, metadata !1628, metadata !DIExpression()), !dbg !1633
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %28, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 42, i8* %27, align 1, !dbg !1654, !tbaa !819
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %29, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 46, i8* %28, align 1, !dbg !1656, !tbaa !819
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %30, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 42, i8* %29, align 1, !dbg !1658, !tbaa !819
  call void @llvm.dbg.value(metadata i8* %30, metadata !1628, metadata !DIExpression()), !dbg !1633
  %31 = and i32 %2, 16, !dbg !1659
  %32 = icmp eq i32 %31, 0, !dbg !1660
  %33 = select i1 %32, i8 103, i8 71, !dbg !1660
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %34, metadata !1628, metadata !DIExpression()), !dbg !1633
  store i8 %33, i8* %30, align 1, !dbg !1662, !tbaa !819
  store i8 0, i8* %34, align 1, !dbg !1663, !tbaa !819
  %35 = fcmp olt float %11, 0x3810000000000000, !dbg !1664
  %36 = select i1 %35, i32 1, i32 6, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %36, metadata !1627, metadata !DIExpression()), !dbg !1633
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %8, i32 %3, i32 %36, double %7) #27, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %37, metadata !1629, metadata !DIExpression()), !dbg !1667
  %38 = icmp slt i32 %37, 0, !dbg !1668
  br i1 %38, label %53, label %39, !dbg !1670

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1627, metadata !DIExpression()), !dbg !1633
  %42 = zext i32 %40 to i64, !dbg !1671
  %43 = icmp ult i64 %42, %1, !dbg !1672
  br i1 %43, label %44, label %47, !dbg !1673

44:                                               ; preds = %39
  %45 = call float @strtof(i8* nocapture %0, i8** null) #27, !dbg !1674
  %46 = fcmp oeq float %45, %4, !dbg !1675
  br i1 %46, label %53, label %47, !dbg !1676

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %48, metadata !1627, metadata !DIExpression()), !dbg !1633
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %8, i32 %3, i32 %48, double %7) #27, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %49, metadata !1629, metadata !DIExpression()), !dbg !1667
  %50 = icmp slt i32 %49, 0, !dbg !1668
  %51 = icmp ugt i32 %41, 7
  %52 = or i1 %51, %50, !dbg !1670
  br i1 %52, label %53, label %39, !dbg !1670, !llvm.loop !1678

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #27, !dbg !1681
  ret i32 %54, !dbg !1681
}

; Function Attrs: nofree nounwind willreturn
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @ldtoastr(i8* %0, i64 %1, i32 %2, i32 %3, x86_fp80 %4) local_unnamed_addr #13 !dbg !1682 {
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1691, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1700
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1693, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 %1, metadata !1687, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %2, metadata !1688, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %3, metadata !1689, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !1690, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !1691, metadata !DIExpression()), !dbg !1702
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #27, !dbg !1703
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1692, metadata !DIExpression()), !dbg !1704
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000, !dbg !1705
  %9 = fneg x86_fp80 %4, !dbg !1706
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4, !dbg !1706
  call void @llvm.dbg.value(metadata x86_fp80 %10, metadata !1693, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %7, metadata !1695, metadata !DIExpression()), !dbg !1702
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %11, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 37, i8* %7, align 1, !dbg !1708, !tbaa !819
  store i8 45, i8* %11, align 1, !dbg !1709, !tbaa !819
  %12 = and i32 %2, 1, !dbg !1710
  %13 = zext i32 %12 to i64, !dbg !1711
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %14, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 43, i8* %14, align 1, !dbg !1712, !tbaa !819
  %15 = lshr i32 %2, 1, !dbg !1713
  %16 = and i32 %15, 1, !dbg !1713
  %17 = zext i32 %16 to i64, !dbg !1714
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %18, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 32, i8* %18, align 1, !dbg !1715, !tbaa !819
  %19 = lshr i32 %2, 2, !dbg !1716
  %20 = and i32 %19, 1, !dbg !1716
  %21 = zext i32 %20 to i64, !dbg !1717
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %22, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 48, i8* %22, align 1, !dbg !1718, !tbaa !819
  %23 = lshr i32 %2, 3, !dbg !1719
  %24 = and i32 %23, 1, !dbg !1719
  %25 = zext i32 %24 to i64, !dbg !1720
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1720
  call void @llvm.dbg.value(metadata i8* %26, metadata !1695, metadata !DIExpression()), !dbg !1702
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %27, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 42, i8* %26, align 1, !dbg !1722, !tbaa !819
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %28, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 46, i8* %27, align 1, !dbg !1724, !tbaa !819
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1725
  call void @llvm.dbg.value(metadata i8* %29, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 42, i8* %28, align 1, !dbg !1726, !tbaa !819
  store i8 76, i8* %29, align 1, !dbg !1727, !tbaa !819
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %30, metadata !1695, metadata !DIExpression()), !dbg !1702
  %31 = and i32 %2, 16, !dbg !1729
  %32 = icmp eq i32 %31, 0, !dbg !1730
  %33 = select i1 %32, i8 103, i8 71, !dbg !1730
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1731
  call void @llvm.dbg.value(metadata i8* %34, metadata !1695, metadata !DIExpression()), !dbg !1702
  store i8 %33, i8* %30, align 1, !dbg !1732, !tbaa !819
  store i8 0, i8* %34, align 1, !dbg !1733, !tbaa !819
  %35 = fcmp olt x86_fp80 %10, 0xK00018000000000000000, !dbg !1734
  %36 = select i1 %35, i32 1, i32 18, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %36, metadata !1694, metadata !DIExpression()), !dbg !1702
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %36, x86_fp80 %4) #27, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %37, metadata !1696, metadata !DIExpression()), !dbg !1737
  %38 = icmp slt i32 %37, 0, !dbg !1738
  br i1 %38, label %53, label %39, !dbg !1740

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1694, metadata !DIExpression()), !dbg !1702
  %42 = zext i32 %40 to i64, !dbg !1741
  %43 = icmp ult i64 %42, %1, !dbg !1742
  br i1 %43, label %44, label %47, !dbg !1743

44:                                               ; preds = %39
  %45 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #27, !dbg !1744
  %46 = fcmp oeq x86_fp80 %45, %4, !dbg !1745
  br i1 %46, label %53, label %47, !dbg !1746

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %48, metadata !1694, metadata !DIExpression()), !dbg !1702
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %48, x86_fp80 %4) #27, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %49, metadata !1696, metadata !DIExpression()), !dbg !1737
  %50 = icmp slt i32 %49, 0, !dbg !1738
  %51 = icmp ugt i32 %41, 19
  %52 = or i1 %51, %50, !dbg !1740
  br i1 %52, label %53, label %39, !dbg !1740, !llvm.loop !1748

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !1736
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #27, !dbg !1751
  ret i32 %54, !dbg !1751
}

; Function Attrs: nofree nounwind willreturn
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1752 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1757, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8** %1, metadata !1758, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %2, metadata !1759, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %3, metadata !1760, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %4, metadata !1761, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1762, metadata !DIExpression()), !dbg !1781
  %8 = load i32, i32* @opterr, align 4, !dbg !1782, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %8, metadata !1764, metadata !DIExpression()), !dbg !1781
  store i32 0, i32* @opterr, align 4, !dbg !1783, !tbaa !1520
  %9 = icmp eq i32 %0, 2, !dbg !1784
  br i1 %9, label %10, label %17, !dbg !1785

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %11, metadata !1763, metadata !DIExpression()), !dbg !1781
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1787

12:                                               ; preds = %10
  tail call void %5(i32 0) #27, !dbg !1788
  br label %17, !dbg !1789

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1790
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #27, !dbg !1790
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1765, metadata !DIExpression()), !dbg !1791
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1792
  call void @llvm.va_start(i8* nonnull %14), !dbg !1792
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1793, !tbaa !627
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #27, !dbg !1794
  call void @exit(i32 0) #29, !dbg !1795
  unreachable, !dbg !1795

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1796, !tbaa !1520
  store i32 0, i32* @optind, align 4, !dbg !1797, !tbaa !1520
  ret void, !dbg !1798
}

; Function Attrs: nounwind
declare !dbg !1799 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1805 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1809, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8** %1, metadata !1810, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %2, metadata !1811, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %3, metadata !1812, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %4, metadata !1813, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i1 %5, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1824
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1815, metadata !DIExpression()), !dbg !1824
  %9 = load i32, i32* @opterr, align 4, !dbg !1825, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %9, metadata !1817, metadata !DIExpression()), !dbg !1824
  store i32 1, i32* @opterr, align 4, !dbg !1826, !tbaa !1520
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.105, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), !dbg !1827
  call void @llvm.dbg.value(metadata i8* %10, metadata !1818, metadata !DIExpression()), !dbg !1824
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %11, metadata !1816, metadata !DIExpression()), !dbg !1824
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1829

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1830
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #27, !dbg !1830
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1819, metadata !DIExpression()), !dbg !1831
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1832
  call void @llvm.va_start(i8* nonnull %13), !dbg !1832
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1833, !tbaa !627
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #27, !dbg !1834
  call void @exit(i32 0) #29, !dbg !1835
  unreachable, !dbg !1835

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1836, !tbaa !1520
  br label %18, !dbg !1837

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #27, !dbg !1838
  br label %20, !dbg !1839

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1839, !tbaa !1520
  ret void, !dbg !1840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1843, metadata !DIExpression()), !dbg !1846
  %2 = icmp eq i8* %0, null, !dbg !1847
  br i1 %2, label %3, label %6, !dbg !1849

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1850, !tbaa !627
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.110, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1852
  tail call void @abort() #29, !dbg !1853
  unreachable, !dbg !1853

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %7, metadata !1844, metadata !DIExpression()), !dbg !1846
  %8 = icmp eq i8* %7, null, !dbg !1855
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1856
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %10, metadata !1845, metadata !DIExpression()), !dbg !1846
  %11 = ptrtoint i8* %10 to i64, !dbg !1857
  %12 = ptrtoint i8* %0 to i64, !dbg !1857
  %13 = sub i64 %11, %12, !dbg !1857
  %14 = icmp sgt i64 %13, 6, !dbg !1859
  br i1 %14, label %15, label %24, !dbg !1860

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1861
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.111, i64 0, i64 0), i64 7) #28, !dbg !1862
  %18 = icmp eq i32 %17, 0, !dbg !1863
  br i1 %18, label %19, label %24, !dbg !1864

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1843, metadata !DIExpression()), !dbg !1846
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.112, i64 0, i64 0), i64 3) #28, !dbg !1865
  %21 = icmp eq i32 %20, 0, !dbg !1868
  br i1 %21, label %22, label %24, !dbg !1869

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %23, metadata !1843, metadata !DIExpression()), !dbg !1846
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1872, !tbaa !627
  br label %24, !dbg !1873

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1843, metadata !DIExpression()), !dbg !1846
  store i8* %25, i8** @program_name, align 8, !dbg !1874, !tbaa !627
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1875, !tbaa !627
  ret void, !dbg !1876
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1877 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1882, metadata !DIExpression()), !dbg !1885
  %2 = tail call i32* @__errno_location() #30, !dbg !1886
  %3 = load i32, i32* %2, align 4, !dbg !1886, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %3, metadata !1883, metadata !DIExpression()), !dbg !1885
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1887
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1887
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1887
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1888
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1884, metadata !DIExpression()), !dbg !1885
  store i32 %3, i32* %2, align 4, !dbg !1889, !tbaa !1520
  ret %struct.quoting_options* %8, !dbg !1890
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !1891 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1899
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1899
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1900
  %5 = load i32, i32* %4, align 8, !dbg !1900, !tbaa !1901
  ret i32 %5, !dbg !1903
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1904 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %1, metadata !1909, metadata !DIExpression()), !dbg !1910
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1911
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1911
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1912
  store i32 %1, i32* %5, align 8, !dbg !1913, !tbaa !1901
  ret void, !dbg !1914
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !1915 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1919, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1920, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 %2, metadata !1921, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 %1, metadata !1922, metadata !DIExpression()), !dbg !1928
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1929
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1929
  %6 = lshr i8 %1, 5, !dbg !1930
  %7 = zext i8 %6 to i64, !dbg !1930
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1931
  call void @llvm.dbg.value(metadata i32* %8, metadata !1924, metadata !DIExpression()), !dbg !1928
  %9 = and i8 %1, 31, !dbg !1932
  %10 = zext i8 %9 to i32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %10, metadata !1926, metadata !DIExpression()), !dbg !1928
  %11 = load i32, i32* %8, align 4, !dbg !1933, !tbaa !1520
  %12 = lshr i32 %11, %10, !dbg !1934
  %13 = and i32 %12, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %13, metadata !1927, metadata !DIExpression()), !dbg !1928
  %14 = and i32 %2, 1, !dbg !1936
  %15 = xor i32 %13, %14, !dbg !1937
  %16 = shl i32 %15, %10, !dbg !1938
  %17 = xor i32 %16, %11, !dbg !1939
  store i32 %17, i32* %8, align 4, !dbg !1939, !tbaa !1520
  ret i32 %13, !dbg !1940
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !1941 {
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
  store i32 10, i32* %6, align 8, !dbg !1968, !tbaa !1901
  %7 = icmp ne i8* %1, null, !dbg !1969
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1971
  br i1 %9, label %11, label %10, !dbg !1971

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1972
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
  %8 = tail call i32* @__errno_location() #30, !dbg !1994
  %9 = load i32, i32* %8, align 4, !dbg !1994, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %9, metadata !1990, metadata !DIExpression()), !dbg !1992
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1995
  %11 = load i32, i32* %10, align 8, !dbg !1995, !tbaa !1901
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1996
  %13 = load i32, i32* %12, align 4, !dbg !1996, !tbaa !1953
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1997
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1998
  %16 = load i8*, i8** %15, align 8, !dbg !1998, !tbaa !1975
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1999
  %18 = load i8*, i8** %17, align 8, !dbg !1999, !tbaa !1978
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2000
  call void @llvm.dbg.value(metadata i64 %19, metadata !1991, metadata !DIExpression()), !dbg !1992
  store i32 %9, i32* %8, align 4, !dbg !2001, !tbaa !1520
  ret i64 %19, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2003 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2009, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %1, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %2, metadata !2011, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %3, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %4, metadata !2013, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %5, metadata !2014, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32* %6, metadata !2015, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %7, metadata !2016, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %8, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* null, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2022, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2079
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2080
  %14 = icmp eq i64 %13, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i1 %14, metadata !2024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2079
  %15 = lshr i32 %5, 1, !dbg !2082
  %16 = trunc i32 %15 to i8, !dbg !2082
  %17 = and i8 %16, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i8 %17, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2028, metadata !DIExpression()), !dbg !2079
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2083

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2084
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2085
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2086
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2087
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2079
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2088
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2089
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2090
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %38, metadata !2028, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %37, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %36, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %34, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %33, metadata !2023, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %32, metadata !2022, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %31, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %30, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %29, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %28, metadata !2016, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %27, metadata !2013, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2073), !dbg !2091
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
  ], !dbg !2092

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 5, metadata !2013, metadata !DIExpression()), !dbg !2079
  br label %92, !dbg !2093

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 5, metadata !2013, metadata !DIExpression()), !dbg !2079
  %42 = and i8 %35, 1, !dbg !2095
  %43 = icmp eq i8 %42, 0, !dbg !2095
  br i1 %43, label %44, label %92, !dbg !2093

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2097
  br i1 %45, label %92, label %46, !dbg !2100

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2097, !tbaa !819
  br label %92, !dbg !2097

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), i32 %27), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %48, metadata !2016, metadata !DIExpression()), !dbg !2079
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), i32 %27), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %49, metadata !2017, metadata !DIExpression()), !dbg !2079
  br label %50, !dbg !2106

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %51, metadata !2016, metadata !DIExpression()), !dbg !2079
  %53 = and i8 %35, 1, !dbg !2107
  %54 = icmp eq i8 %53, 0, !dbg !2107
  br i1 %54, label %55, label %70, !dbg !2109

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2079
  %56 = load i8, i8* %51, align 1, !dbg !2110, !tbaa !819
  %57 = icmp eq i8 %56, 0, !dbg !2113
  br i1 %57, label %70, label %58, !dbg !2113

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %61, metadata !2019, metadata !DIExpression()), !dbg !2079
  %62 = icmp ult i64 %61, %39, !dbg !2114
  br i1 %62, label %63, label %65, !dbg !2117

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2114
  store i8 %59, i8* %64, align 1, !dbg !2114, !tbaa !819
  br label %65, !dbg !2114

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %66, metadata !2019, metadata !DIExpression()), !dbg !2079
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %67, metadata !2021, metadata !DIExpression()), !dbg !2079
  %68 = load i8, i8* %67, align 1, !dbg !2110, !tbaa !819
  %69 = icmp eq i8 %68, 0, !dbg !2113
  br i1 %69, label %70, label %58, !dbg !2113, !llvm.loop !2119

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2121
  call void @llvm.dbg.value(metadata i64 %71, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %52, metadata !2021, metadata !DIExpression()), !dbg !2079
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %72, metadata !2022, metadata !DIExpression()), !dbg !2079
  br label %92, !dbg !2123

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2079
  br label %74, !dbg !2124

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %75, metadata !2023, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2025, metadata !DIExpression()), !dbg !2079
  br label %76, !dbg !2125

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2087
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %78, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %77, metadata !2023, metadata !DIExpression()), !dbg !2079
  %79 = and i8 %78, 1, !dbg !2126
  %80 = icmp eq i8 %79, 0, !dbg !2126
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2128
  br label %82, !dbg !2128

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2079
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2082
  call void @llvm.dbg.value(metadata i8 %84, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %83, metadata !2023, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 2, metadata !2013, metadata !DIExpression()), !dbg !2079
  %85 = and i8 %84, 1, !dbg !2129
  %86 = icmp eq i8 %85, 0, !dbg !2129
  br i1 %86, label %87, label %92, !dbg !2131

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2132
  br i1 %88, label %92, label %89, !dbg !2135

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2132, !tbaa !819
  br label %92, !dbg !2132

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2079
  br label %92, !dbg !2136

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2137
  unreachable, !dbg !2137

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2121
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %40 ], !dbg !2079
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2079
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2079
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %100, metadata !2025, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %99, metadata !2023, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %98, metadata !2022, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %97, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %96, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %95, metadata !2017, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %94, metadata !2016, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %93, metadata !2013, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, metadata !2018, metadata !DIExpression()), !dbg !2079
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
  br label %121, !dbg !2138

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2139
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2121
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2084
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2088
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2089
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2090
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %128, metadata !2028, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %127, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %126, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %125, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %124, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %123, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %122, metadata !2018, metadata !DIExpression()), !dbg !2079
  %130 = icmp eq i64 %125, -1, !dbg !2140
  br i1 %130, label %131, label %135, !dbg !2141

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2142
  %133 = load i8, i8* %132, align 1, !dbg !2142, !tbaa !819
  %134 = icmp eq i8 %133, 0, !dbg !2143
  br i1 %134, label %587, label %137, !dbg !2144

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2145
  br i1 %136, label %587, label %137, !dbg !2144

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2146
  br i1 %106, label %138, label %153, !dbg !2147

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2149
  %140 = and i1 %107, %130, !dbg !2150
  br i1 %140, label %141, label %143, !dbg !2150

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %142, metadata !2012, metadata !DIExpression()), !dbg !2079
  br label %143, !dbg !2152

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2152
  call void @llvm.dbg.value(metadata i64 %144, metadata !2012, metadata !DIExpression()), !dbg !2079
  %145 = icmp ugt i64 %139, %144, !dbg !2153
  br i1 %145, label %153, label %146, !dbg !2154

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2155
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2156
  %149 = icmp ne i32 %148, 0, !dbg !2157
  %150 = or i1 %149, %109, !dbg !2158
  %151 = xor i1 %149, true, !dbg !2158
  %152 = zext i1 %151 to i8, !dbg !2158
  br i1 %150, label %153, label %646, !dbg !2158

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2146
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2146
  call void @llvm.dbg.value(metadata i8 %156, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %154, metadata !2012, metadata !DIExpression()), !dbg !2079
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2159
  %158 = load i8, i8* %157, align 1, !dbg !2159, !tbaa !819
  call void @llvm.dbg.value(metadata i8 %158, metadata !2029, metadata !DIExpression()), !dbg !2146
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
  ], !dbg !2160

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2161

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2162

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2146
  %162 = and i8 %126, 1, !dbg !2166
  %163 = icmp eq i8 %162, 0, !dbg !2166
  %164 = and i1 %110, %163, !dbg !2166
  br i1 %164, label %165, label %181, !dbg !2166

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2168
  br i1 %166, label %167, label %169, !dbg !2172

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2168
  store i8 39, i8* %168, align 1, !dbg !2168, !tbaa !819
  br label %169, !dbg !2168

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %170, metadata !2019, metadata !DIExpression()), !dbg !2079
  %171 = icmp ult i64 %170, %129, !dbg !2173
  br i1 %171, label %172, label %174, !dbg !2176

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2173
  store i8 36, i8* %173, align 1, !dbg !2173, !tbaa !819
  br label %174, !dbg !2173

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %175, metadata !2019, metadata !DIExpression()), !dbg !2079
  %176 = icmp ult i64 %175, %129, !dbg !2177
  br i1 %176, label %177, label %179, !dbg !2180

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2177
  store i8 39, i8* %178, align 1, !dbg !2177, !tbaa !819
  br label %179, !dbg !2177

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %180, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %181, !dbg !2181

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2079
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %183, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %182, metadata !2019, metadata !DIExpression()), !dbg !2079
  %184 = icmp ult i64 %182, %129, !dbg !2182
  br i1 %184, label %185, label %187, !dbg !2185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2182
  store i8 92, i8* %186, align 1, !dbg !2182, !tbaa !819
  br label %187, !dbg !2182

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %188, metadata !2019, metadata !DIExpression()), !dbg !2079
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2186
  br i1 %191, label %192, label %473, !dbg !2186

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2188
  %194 = load i8, i8* %193, align 1, !dbg !2188, !tbaa !819
  %195 = add i8 %194, -48, !dbg !2189
  %196 = icmp ult i8 %195, 10, !dbg !2189
  br i1 %196, label %197, label %473, !dbg !2189

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2190
  br i1 %198, label %199, label %201, !dbg !2194

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2190
  store i8 48, i8* %200, align 1, !dbg !2190, !tbaa !819
  br label %201, !dbg !2190

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %202, metadata !2019, metadata !DIExpression()), !dbg !2079
  %203 = icmp ult i64 %202, %129, !dbg !2195
  br i1 %203, label %204, label %206, !dbg !2198

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2195
  store i8 48, i8* %205, align 1, !dbg !2195, !tbaa !819
  br label %206, !dbg !2195

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %207, metadata !2019, metadata !DIExpression()), !dbg !2079
  br label %473, !dbg !2199

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2200

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2201

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2202

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2204
  br i1 %214, label %215, label %473, !dbg !2204

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2206
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2207
  %218 = load i8, i8* %217, align 1, !dbg !2207, !tbaa !819
  %219 = icmp eq i8 %218, 63, !dbg !2208
  br i1 %219, label %220, label %473, !dbg !2209

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2210
  %222 = load i8, i8* %221, align 1, !dbg !2210, !tbaa !819
  %223 = sext i8 %222 to i32, !dbg !2210
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
  ], !dbg !2211

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2212

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 undef, metadata !2018, metadata !DIExpression()), !dbg !2079
  %226 = icmp ult i64 %123, %129, !dbg !2214
  br i1 %226, label %227, label %229, !dbg !2217

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2214
  store i8 63, i8* %228, align 1, !dbg !2214, !tbaa !819
  br label %229, !dbg !2214

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %230, metadata !2019, metadata !DIExpression()), !dbg !2079
  %231 = icmp ult i64 %230, %129, !dbg !2218
  br i1 %231, label %232, label %234, !dbg !2221

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2218
  store i8 34, i8* %233, align 1, !dbg !2218, !tbaa !819
  br label %234, !dbg !2218

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %235, metadata !2019, metadata !DIExpression()), !dbg !2079
  %236 = icmp ult i64 %235, %129, !dbg !2222
  br i1 %236, label %237, label %239, !dbg !2225

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2222
  store i8 34, i8* %238, align 1, !dbg !2222, !tbaa !819
  br label %239, !dbg !2222

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %240, metadata !2019, metadata !DIExpression()), !dbg !2079
  %241 = icmp ult i64 %240, %129, !dbg !2226
  br i1 %241, label %242, label %244, !dbg !2229

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2226
  store i8 63, i8* %243, align 1, !dbg !2226, !tbaa !819
  br label %244, !dbg !2226

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %245, metadata !2019, metadata !DIExpression()), !dbg !2079
  br label %473, !dbg !2230

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2033, metadata !DIExpression()), !dbg !2146
  br label %256, !dbg !2231

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2033, metadata !DIExpression()), !dbg !2146
  br label %256, !dbg !2232

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2033, metadata !DIExpression()), !dbg !2146
  br label %254, !dbg !2233

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2033, metadata !DIExpression()), !dbg !2146
  br label %254, !dbg !2234

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2033, metadata !DIExpression()), !dbg !2146
  br label %256, !dbg !2235

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2033, metadata !DIExpression()), !dbg !2146
  br i1 %110, label %252, label %253, !dbg !2236

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2237

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2240

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2242
  call void @llvm.dbg.value(metadata i8 %255, metadata !2033, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.label(metadata !2074), !dbg !2243
  br i1 %111, label %256, label %631, !dbg !2244

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2242
  call void @llvm.dbg.value(metadata i8 %257, metadata !2033, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.label(metadata !2075), !dbg !2246
  br i1 %102, label %495, label %473, !dbg !2247

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2248

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2249, !tbaa !819
  %261 = icmp eq i8 %260, 0, !dbg !2251
  br i1 %261, label %262, label %473, !dbg !2252

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2253
  br i1 %263, label %264, label %473, !dbg !2255

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2146
  br label %265, !dbg !2256

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2146
  call void @llvm.dbg.value(metadata i8 %266, metadata !2036, metadata !DIExpression()), !dbg !2146
  br i1 %111, label %473, label %631, !dbg !2257

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2146
  br i1 %110, label %268, label %473, !dbg !2259

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2260

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2263
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2265
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2265
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %274, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %273, metadata !2020, metadata !DIExpression()), !dbg !2079
  %275 = icmp ult i64 %123, %274, !dbg !2266
  br i1 %275, label %276, label %278, !dbg !2269

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2266
  store i8 39, i8* %277, align 1, !dbg !2266, !tbaa !819
  br label %278, !dbg !2266

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %279, metadata !2019, metadata !DIExpression()), !dbg !2079
  %280 = icmp ult i64 %279, %274, !dbg !2270
  br i1 %280, label %281, label %283, !dbg !2273

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2270
  store i8 92, i8* %282, align 1, !dbg !2270, !tbaa !819
  br label %283, !dbg !2270

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %284, metadata !2019, metadata !DIExpression()), !dbg !2079
  %285 = icmp ult i64 %284, %274, !dbg !2274
  br i1 %285, label %286, label %288, !dbg !2277

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2274
  store i8 39, i8* %287, align 1, !dbg !2274, !tbaa !819
  br label %288, !dbg !2274

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %289, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %473, !dbg !2278

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2279

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2037, metadata !DIExpression()), !dbg !2280
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !2281
  %293 = load i16*, i16** %292, align 8, !dbg !2281, !tbaa !627
  %294 = zext i8 %158 to i64, !dbg !2281
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2281
  %296 = load i16, i16* %295, align 2, !dbg !2281, !tbaa !2283
  %297 = lshr i16 %296, 14, !dbg !2285
  %298 = trunc i16 %297 to i8, !dbg !2285
  %299 = and i8 %298, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i8 %354, metadata !2040, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %355, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2079
  %300 = icmp eq i8 %299, 0, !dbg !2286
  call void @llvm.dbg.value(metadata i1 %357, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2146
  br label %359, !dbg !2287

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2288
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2041, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %23, metadata !2290, metadata !DIExpression()) #27, !dbg !2298
  call void @llvm.dbg.value(metadata i32 0, metadata !2296, metadata !DIExpression()) #27, !dbg !2298
  call void @llvm.dbg.value(metadata i64 8, metadata !2297, metadata !DIExpression()) #27, !dbg !2298
  store i64 0, i64* %10, align 8, !dbg !2300
  call void @llvm.dbg.value(metadata i64 0, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2280
  %302 = icmp eq i64 %154, -1, !dbg !2301
  br i1 %302, label %303, label %305, !dbg !2303

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %304, metadata !2012, metadata !DIExpression()), !dbg !2079
  br label %305, !dbg !2305

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2146
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2079
  br label %307, !dbg !2306

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2307
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2308
  call void @llvm.dbg.value(metadata i8 %309, metadata !2040, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %308, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2309
  %310 = add i64 %308, %122, !dbg !2310
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2311
  %312 = sub i64 %306, %310, !dbg !2312
  call void @llvm.dbg.value(metadata i32* %12, metadata !2059, metadata !DIExpression(DW_OP_deref)), !dbg !2313
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %313, metadata !2062, metadata !DIExpression()), !dbg !2313
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2315

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2037, metadata !DIExpression()), !dbg !2280
  %315 = icmp ugt i64 %306, %310, !dbg !2316
  br i1 %315, label %316, label %341, !dbg !2318

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2319
  br label %318, !dbg !2319

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2037, metadata !DIExpression()), !dbg !2280
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2320
  %322 = load i8, i8* %321, align 1, !dbg !2320, !tbaa !819
  %323 = icmp eq i8 %322, 0, !dbg !2318
  br i1 %323, label %341, label %324, !dbg !2319

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %325, metadata !2037, metadata !DIExpression()), !dbg !2280
  %326 = add i64 %325, %122, !dbg !2322
  %327 = icmp ult i64 %326, %306, !dbg !2316
  br i1 %327, label %318, label %341, !dbg !2318, !llvm.loop !2323

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2324
  call void @llvm.dbg.value(metadata i64 1, metadata !2063, metadata !DIExpression()), !dbg !2325
  br i1 %330, label %331, label %344, !dbg !2324

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2063, metadata !DIExpression()), !dbg !2325
  %333 = add i64 %332, %310, !dbg !2326
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2329
  %335 = load i8, i8* %334, align 1, !dbg !2329, !tbaa !819
  %336 = sext i8 %335 to i32, !dbg !2329
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2330

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %338, metadata !2063, metadata !DIExpression()), !dbg !2325
  %339 = icmp eq i64 %338, %313, !dbg !2332
  br i1 %339, label %344, label %331, !dbg !2333, !llvm.loop !2334

340:                                              ; preds = %307
  br label %341, !dbg !2336

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2040, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 undef, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2336
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2337, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %345, metadata !2059, metadata !DIExpression()), !dbg !2313
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2339
  %347 = icmp eq i32 %346, 0, !dbg !2339
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2340
  call void @llvm.dbg.value(metadata i8 %348, metadata !2040, metadata !DIExpression()), !dbg !2280
  %349 = add i64 %313, %308, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %349, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2336
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2342
  %351 = icmp eq i32 %350, 0, !dbg !2343
  br i1 %351, label %307, label %353, !dbg !2344, !llvm.loop !2345

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2040, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 undef, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2336
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2347
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %354, metadata !2040, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %355, metadata !2037, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %306, metadata !2012, metadata !DIExpression()), !dbg !2079
  %356 = and i8 %354, 1, !dbg !2286
  %357 = icmp eq i8 %356, 0, !dbg !2286
  call void @llvm.dbg.value(metadata i1 %357, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2146
  %358 = icmp ugt i64 %355, 1, !dbg !2348
  br i1 %358, label %367, label %359, !dbg !2287

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2349
  br i1 %364, label %367, label %365, !dbg !2349

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i8 %472, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %371, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2079
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %372, metadata !2070, metadata !DIExpression()), !dbg !2351
  %373 = and i1 %102, %368
  br label %374, !dbg !2352

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2139
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2079
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2088
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2146
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2146
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2353
  call void @llvm.dbg.value(metadata i8 %380, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %379, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %378, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %377, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %376, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2079
  br i1 %373, label %381, label %427, !dbg !2354

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2359

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2146
  %383 = and i8 %377, 1, !dbg !2362
  %384 = icmp eq i8 %383, 0, !dbg !2362
  %385 = and i1 %110, %384, !dbg !2362
  br i1 %385, label %386, label %402, !dbg !2362

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2364
  br i1 %387, label %388, label %390, !dbg !2368

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2364
  store i8 39, i8* %389, align 1, !dbg !2364, !tbaa !819
  br label %390, !dbg !2364

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %391, metadata !2019, metadata !DIExpression()), !dbg !2079
  %392 = icmp ult i64 %391, %129, !dbg !2369
  br i1 %392, label %393, label %395, !dbg !2372

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2369
  store i8 36, i8* %394, align 1, !dbg !2369, !tbaa !819
  br label %395, !dbg !2369

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %396, metadata !2019, metadata !DIExpression()), !dbg !2079
  %397 = icmp ult i64 %396, %129, !dbg !2373
  br i1 %397, label %398, label %400, !dbg !2376

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2373
  store i8 39, i8* %399, align 1, !dbg !2373, !tbaa !819
  br label %400, !dbg !2373

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %401, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %402, !dbg !2377

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2079
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %404, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %403, metadata !2019, metadata !DIExpression()), !dbg !2079
  %405 = icmp ult i64 %403, %129, !dbg !2378
  br i1 %405, label %406, label %408, !dbg !2381

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2378
  store i8 92, i8* %407, align 1, !dbg !2378, !tbaa !819
  br label %408, !dbg !2378

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %409, metadata !2019, metadata !DIExpression()), !dbg !2079
  %410 = icmp ult i64 %409, %129, !dbg !2382
  br i1 %410, label %411, label %415, !dbg !2385

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2382
  %413 = or i8 %412, 48, !dbg !2382
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2382
  store i8 %413, i8* %414, align 1, !dbg !2382, !tbaa !819
  br label %415, !dbg !2382

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %416, metadata !2019, metadata !DIExpression()), !dbg !2079
  %417 = icmp ult i64 %416, %129, !dbg !2386
  br i1 %417, label %418, label %423, !dbg !2389

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2386
  %420 = and i8 %419, 7, !dbg !2386
  %421 = or i8 %420, 48, !dbg !2386
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2386
  store i8 %421, i8* %422, align 1, !dbg !2386, !tbaa !819
  br label %423, !dbg !2386

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %424, metadata !2019, metadata !DIExpression()), !dbg !2079
  %425 = and i8 %378, 7, !dbg !2390
  %426 = or i8 %425, 48, !dbg !2391
  call void @llvm.dbg.value(metadata i8 %426, metadata !2029, metadata !DIExpression()), !dbg !2146
  br label %436, !dbg !2392

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2393
  %429 = icmp eq i8 %428, 0, !dbg !2393
  br i1 %429, label %436, label %430, !dbg !2395

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2396
  br i1 %431, label %432, label %434, !dbg !2400

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2396
  store i8 92, i8* %433, align 1, !dbg !2396, !tbaa !819
  br label %434, !dbg !2396

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %435, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2146
  br label %436, !dbg !2401

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2079
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2088
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2146
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2146
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2146
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2079
  %442 = add i64 %375, 1, !dbg !2402
  %443 = icmp ugt i64 %372, %442, !dbg !2404
  br i1 %443, label %444, label %471, !dbg !2405

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2406
  %446 = icmp ne i8 %445, 0, !dbg !2406
  %447 = and i8 %441, 1, !dbg !2406
  %448 = icmp eq i8 %447, 0, !dbg !2406
  %449 = and i1 %446, %448, !dbg !2406
  br i1 %449, label %450, label %461, !dbg !2406

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2409
  br i1 %451, label %452, label %454, !dbg !2413

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2409
  store i8 39, i8* %453, align 1, !dbg !2409, !tbaa !819
  br label %454, !dbg !2409

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %455, metadata !2019, metadata !DIExpression()), !dbg !2079
  %456 = icmp ult i64 %455, %129, !dbg !2414
  br i1 %456, label %457, label %459, !dbg !2417

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2414
  store i8 39, i8* %458, align 1, !dbg !2414, !tbaa !819
  br label %459, !dbg !2414

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %460, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %461, !dbg !2418

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2419
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %463, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %462, metadata !2019, metadata !DIExpression()), !dbg !2079
  %464 = icmp ult i64 %462, %129, !dbg !2420
  br i1 %464, label %465, label %467, !dbg !2423

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2420
  store i8 %439, i8* %466, align 1, !dbg !2420, !tbaa !819
  br label %467, !dbg !2420

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %468, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %442, metadata !2018, metadata !DIExpression()), !dbg !2079
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2424
  %470 = load i8, i8* %469, align 1, !dbg !2424, !tbaa !819
  call void @llvm.dbg.value(metadata i8 %470, metadata !2029, metadata !DIExpression()), !dbg !2146
  br label %374, !dbg !2425, !llvm.loop !2426

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i8 %472, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %441, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %440, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %439, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %438, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %371, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %437, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %375, metadata !2018, metadata !DIExpression()), !dbg !2079
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2139
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2079
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2084
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2429
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2079
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2079
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2146
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2146
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2146
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %482, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %481, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %156, metadata !2034, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %480, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %479, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %478, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %477, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %476, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %475, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %474, metadata !2018, metadata !DIExpression()), !dbg !2079
  br i1 %116, label %494, label %484, !dbg !2430

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2432
  %486 = zext i8 %485 to i64, !dbg !2432
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2433
  %488 = load i32, i32* %487, align 4, !dbg !2433, !tbaa !1520
  %489 = and i8 %480, 31, !dbg !2434
  %490 = zext i8 %489 to i32, !dbg !2434
  %491 = shl nuw i32 1, %490, !dbg !2435
  %492 = and i32 %488, %491, !dbg !2435
  %493 = icmp eq i32 %492, 0, !dbg !2435
  br i1 %493, label %494, label %495, !dbg !2436

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2437

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2438
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2079
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2084
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2429
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2088
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2089
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2146
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2146
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %503, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %502, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %501, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %500, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %499, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %498, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %497, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %496, metadata !2018, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2076), !dbg !2439
  br i1 %109, label %505, label %635, !dbg !2440

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2146
  %506 = and i8 %500, 1, !dbg !2442
  %507 = icmp eq i8 %506, 0, !dbg !2442
  %508 = and i1 %110, %507, !dbg !2442
  br i1 %508, label %509, label %525, !dbg !2442

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2444
  br i1 %510, label %511, label %513, !dbg !2448

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2444
  store i8 39, i8* %512, align 1, !dbg !2444, !tbaa !819
  br label %513, !dbg !2444

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %514, metadata !2019, metadata !DIExpression()), !dbg !2079
  %515 = icmp ult i64 %514, %504, !dbg !2449
  br i1 %515, label %516, label %518, !dbg !2452

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2449
  store i8 36, i8* %517, align 1, !dbg !2449, !tbaa !819
  br label %518, !dbg !2449

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %519, metadata !2019, metadata !DIExpression()), !dbg !2079
  %520 = icmp ult i64 %519, %504, !dbg !2453
  br i1 %520, label %521, label %523, !dbg !2456

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2453
  store i8 39, i8* %522, align 1, !dbg !2453, !tbaa !819
  br label %523, !dbg !2453

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %524, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %525, !dbg !2457

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2146
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %527, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %526, metadata !2019, metadata !DIExpression()), !dbg !2079
  %528 = icmp ult i64 %526, %504, !dbg !2458
  br i1 %528, label %529, label %531, !dbg !2461

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2458
  store i8 92, i8* %530, align 1, !dbg !2458, !tbaa !819
  br label %531, !dbg !2458

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %543, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %542, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %541, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %540, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %539, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %538, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %537, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %536, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %535, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %534, metadata !2018, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2077), !dbg !2462
  br label %560, !dbg !2463

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2438
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2079
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2084
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2429
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2088
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2089
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2466
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2146
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2146
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %542, metadata !2036, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %541, metadata !2035, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %540, metadata !2029, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 %539, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %538, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %537, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %536, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %535, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %534, metadata !2018, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2077), !dbg !2462
  %544 = and i8 %538, 1, !dbg !2463
  %545 = icmp ne i8 %544, 0, !dbg !2463
  %546 = and i8 %541, 1, !dbg !2463
  %547 = icmp eq i8 %546, 0, !dbg !2463
  %548 = and i1 %545, %547, !dbg !2463
  br i1 %548, label %549, label %560, !dbg !2463

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2467
  br i1 %550, label %551, label %553, !dbg !2471

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2467
  store i8 39, i8* %552, align 1, !dbg !2467, !tbaa !819
  br label %553, !dbg !2467

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %554, metadata !2019, metadata !DIExpression()), !dbg !2079
  %555 = icmp ult i64 %554, %543, !dbg !2472
  br i1 %555, label %556, label %558, !dbg !2475

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2472
  store i8 39, i8* %557, align 1, !dbg !2472, !tbaa !819
  br label %558, !dbg !2472

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %559, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2026, metadata !DIExpression()), !dbg !2079
  br label %560, !dbg !2476

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2146
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8 %569, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %568, metadata !2019, metadata !DIExpression()), !dbg !2079
  %570 = icmp ult i64 %568, %561, !dbg !2477
  br i1 %570, label %571, label %573, !dbg !2480

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2477
  store i8 %563, i8* %572, align 1, !dbg !2477, !tbaa !819
  br label %573, !dbg !2477

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %574, metadata !2019, metadata !DIExpression()), !dbg !2079
  %575 = icmp eq i8 %562, 0, !dbg !2481
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2483
  call void @llvm.dbg.value(metadata i8 %576, metadata !2028, metadata !DIExpression()), !dbg !2079
  br label %577, !dbg !2484

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2438
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2079
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2084
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2429
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2088
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2079
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2090
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %584, metadata !2028, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %583, metadata !2027, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %582, metadata !2026, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %581, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %580, metadata !2020, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %579, metadata !2019, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %578, metadata !2018, metadata !DIExpression()), !dbg !2079
  %586 = add i64 %578, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %586, metadata !2018, metadata !DIExpression()), !dbg !2079
  br label %121, !dbg !2486, !llvm.loop !2487

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2489
  %590 = and i1 %110, %589, !dbg !2491
  %591 = xor i1 %590, true, !dbg !2491
  %592 = or i1 %109, %591, !dbg !2491
  br i1 %592, label %593, label %635, !dbg !2491

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2492
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2492
  br i1 %597, label %598, label %607, !dbg !2492

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2494
  %600 = icmp eq i8 %599, 0, !dbg !2494
  br i1 %600, label %603, label %601, !dbg !2497

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2498
  br label %652, !dbg !2499

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2500
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2502
  br i1 %606, label %26, label %607, !dbg !2502

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2503
  %610 = and i1 %609, %608, !dbg !2505
  br i1 %610, label %611, label %626, !dbg !2505

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %123, metadata !2019, metadata !DIExpression()), !dbg !2079
  %612 = load i8, i8* %97, align 1, !dbg !2506, !tbaa !819
  %613 = icmp eq i8 %612, 0, !dbg !2509
  br i1 %613, label %626, label %614, !dbg !2509

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2021, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %617, metadata !2019, metadata !DIExpression()), !dbg !2079
  %618 = icmp ult i64 %617, %129, !dbg !2510
  br i1 %618, label %619, label %621, !dbg !2513

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2510
  store i8 %615, i8* %620, align 1, !dbg !2510, !tbaa !819
  br label %621, !dbg !2510

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %622, metadata !2019, metadata !DIExpression()), !dbg !2079
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %623, metadata !2021, metadata !DIExpression()), !dbg !2079
  %624 = load i8, i8* %623, align 1, !dbg !2506, !tbaa !819
  %625 = icmp eq i8 %624, 0, !dbg !2509
  br i1 %625, label %626, label %614, !dbg !2509, !llvm.loop !2515

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2121
  call void @llvm.dbg.value(metadata i64 %627, metadata !2019, metadata !DIExpression()), !dbg !2079
  %628 = icmp ult i64 %627, %129, !dbg !2517
  br i1 %628, label %629, label %652, !dbg !2519

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2520
  store i8 0, i8* %630, align 1, !dbg !2521, !tbaa !819
  br label %652, !dbg !2520

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %637, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2078), !dbg !2522
  %633 = icmp eq i8 %101, 0, !dbg !2523
  %634 = select i1 %633, i32 2, i32 4, !dbg !2523
  br label %642, !dbg !2523

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2010, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %637, metadata !2012, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.label(metadata !2078), !dbg !2522
  %639 = icmp eq i32 %93, 2, !dbg !2525
  %640 = icmp eq i8 %636, 0, !dbg !2523
  %641 = select i1 %640, i32 2, i32 4, !dbg !2523
  br i1 %639, label %642, label %646, !dbg !2523

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2523

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2013, metadata !DIExpression()), !dbg !2079
  %650 = and i32 %5, -3, !dbg !2526
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2527
  br label %652, !dbg !2528

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2529
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2538
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %3, metadata !2536, metadata !DIExpression()), !dbg !2538
  %4 = icmp eq i8* %3, %0, !dbg !2540
  br i1 %4, label %5, label %72, !dbg !2542

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %6, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %6, metadata !2544, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* undef, metadata !2550, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 85, metadata !2551, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 84, metadata !2552, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 70, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 45, metadata !2554, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 56, metadata !2555, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2560
  %7 = load i8, i8* %6, align 1, !dbg !2563, !tbaa !819
  %8 = and i8 %7, -33, !dbg !2563
  %9 = sext i8 %8 to i32, !dbg !2563
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2563

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2565, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* undef, metadata !2570, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 84, metadata !2571, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 70, metadata !2572, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 45, metadata !2573, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 56, metadata !2574, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2575, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2579
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2583
  %12 = load i8, i8* %11, align 1, !dbg !2583, !tbaa !819
  %13 = and i8 %12, -33, !dbg !2583
  %14 = icmp eq i8 %13, 84, !dbg !2583
  br i1 %14, label %15, label %69, !dbg !2583

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2585, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* undef, metadata !2590, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 70, metadata !2591, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 45, metadata !2592, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 56, metadata !2593, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2598
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2602
  %17 = load i8, i8* %16, align 1, !dbg !2602, !tbaa !819
  %18 = and i8 %17, -33, !dbg !2602
  %19 = icmp eq i8 %18, 70, !dbg !2602
  br i1 %19, label %20, label %69, !dbg !2602

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2604, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* undef, metadata !2609, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 45, metadata !2610, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 56, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2615, metadata !DIExpression()), !dbg !2616
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2620
  %22 = load i8, i8* %21, align 1, !dbg !2620, !tbaa !819
  %23 = icmp eq i8 %22, 45, !dbg !2620
  br i1 %23, label %24, label %69, !dbg !2622

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2623, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* undef, metadata !2628, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 56, metadata !2629, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 0, metadata !2630, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 0, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2634
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2638
  %26 = load i8, i8* %25, align 1, !dbg !2638, !tbaa !819
  %27 = icmp eq i8 %26, 56, !dbg !2638
  br i1 %27, label %28, label %69, !dbg !2640

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2641, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* undef, metadata !2646, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2651
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2655
  %30 = load i8, i8* %29, align 1, !dbg !2655, !tbaa !819
  %31 = icmp eq i8 %30, 0, !dbg !2655
  br i1 %31, label %32, label %69, !dbg !2657

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2658, !tbaa !819
  %34 = icmp eq i8 %33, 96, !dbg !2659
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.126, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.127, i64 0, i64 0), !dbg !2658
  br label %72, !dbg !2660

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2565, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* undef, metadata !2570, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 66, metadata !2571, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 49, metadata !2572, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 56, metadata !2573, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 48, metadata !2574, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 51, metadata !2575, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 48, metadata !2576, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2661
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2665
  %38 = load i8, i8* %37, align 1, !dbg !2665, !tbaa !819
  %39 = and i8 %38, -33, !dbg !2665
  %40 = icmp eq i8 %39, 66, !dbg !2665
  br i1 %40, label %41, label %69, !dbg !2665

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2585, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* undef, metadata !2590, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 49, metadata !2591, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 56, metadata !2592, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 48, metadata !2593, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 51, metadata !2594, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 48, metadata !2595, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2666
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2668
  %43 = load i8, i8* %42, align 1, !dbg !2668, !tbaa !819
  %44 = icmp eq i8 %43, 49, !dbg !2668
  br i1 %44, label %45, label %69, !dbg !2669

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2604, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* undef, metadata !2609, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 56, metadata !2610, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 48, metadata !2611, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 51, metadata !2612, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 48, metadata !2613, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 0, metadata !2614, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 0, metadata !2615, metadata !DIExpression()), !dbg !2670
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2672
  %47 = load i8, i8* %46, align 1, !dbg !2672, !tbaa !819
  %48 = icmp eq i8 %47, 56, !dbg !2672
  br i1 %48, label %49, label %69, !dbg !2673

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2623, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* undef, metadata !2628, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 48, metadata !2629, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 51, metadata !2630, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 48, metadata !2631, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2674
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2676
  %51 = load i8, i8* %50, align 1, !dbg !2676, !tbaa !819
  %52 = icmp eq i8 %51, 48, !dbg !2676
  br i1 %52, label %53, label %69, !dbg !2677

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2641, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8* undef, metadata !2646, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 51, metadata !2647, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 48, metadata !2648, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2678
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2680
  %55 = load i8, i8* %54, align 1, !dbg !2680, !tbaa !819
  %56 = icmp eq i8 %55, 51, !dbg !2680
  br i1 %56, label %57, label %69, !dbg !2681

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2682, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* undef, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 48, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2690, metadata !DIExpression()), !dbg !2691
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2695
  %59 = load i8, i8* %58, align 1, !dbg !2695, !tbaa !819
  %60 = icmp eq i8 %59, 48, !dbg !2695
  br i1 %60, label %61, label %69, !dbg !2697

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2698, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* undef, metadata !2703, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2706
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2710
  %63 = load i8, i8* %62, align 1, !dbg !2710, !tbaa !819
  %64 = icmp eq i8 %63, 0, !dbg !2710
  br i1 %64, label %65, label %69, !dbg !2712

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2713, !tbaa !819
  %67 = icmp eq i8 %66, 96, !dbg !2714
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.128, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.129, i64 0, i64 0), !dbg !2713
  br label %72, !dbg !2715

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2716
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), !dbg !2717
  br label %72, !dbg !2718

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2538
  ret i8* %73, !dbg !2719
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !2720 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2724 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #27, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #27, !dbg !2751
  call void @llvm.dbg.value(metadata i64* null, metadata !2744, metadata !DIExpression()) #27, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2745, metadata !DIExpression()) #27, !dbg !2751
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2753
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2746, metadata !DIExpression()) #27, !dbg !2751
  %6 = tail call i32* @__errno_location() #30, !dbg !2754
  %7 = load i32, i32* %6, align 4, !dbg !2754, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %7, metadata !2747, metadata !DIExpression()) #27, !dbg !2751
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2755
  %9 = load i32, i32* %8, align 4, !dbg !2755, !tbaa !1953
  %10 = or i32 %9, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %10, metadata !2748, metadata !DIExpression()) #27, !dbg !2751
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2757
  %12 = load i32, i32* %11, align 8, !dbg !2757, !tbaa !1901
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2759
  %15 = load i8*, i8** %14, align 8, !dbg !2759, !tbaa !1975
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2760
  %17 = load i8*, i8** %16, align 8, !dbg !2760, !tbaa !1978
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2761
  %19 = add i64 %18, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %19, metadata !2749, metadata !DIExpression()) #27, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %19, metadata !2763, metadata !DIExpression()) #27, !dbg !2768
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %20, metadata !2750, metadata !DIExpression()) #27, !dbg !2751
  %21 = load i32, i32* %11, align 8, !dbg !2771, !tbaa !1901
  %22 = load i8*, i8** %14, align 8, !dbg !2772, !tbaa !1975
  %23 = load i8*, i8** %16, align 8, !dbg !2773, !tbaa !1978
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2774
  store i32 %7, i32* %6, align 4, !dbg !2775, !tbaa !1520
  ret i8* %20, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64* %2, metadata !2744, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()), !dbg !2777
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2778
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2746, metadata !DIExpression()), !dbg !2777
  %7 = tail call i32* @__errno_location() #30, !dbg !2779
  %8 = load i32, i32* %7, align 4, !dbg !2779, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %8, metadata !2747, metadata !DIExpression()), !dbg !2777
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2780
  %10 = load i32, i32* %9, align 4, !dbg !2780, !tbaa !1953
  %11 = icmp eq i64* %2, null, !dbg !2781
  %12 = zext i1 %11 to i32, !dbg !2781
  %13 = or i32 %10, %12, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %13, metadata !2748, metadata !DIExpression()), !dbg !2777
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2783
  %15 = load i32, i32* %14, align 8, !dbg !2783, !tbaa !1901
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2784
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2785
  %18 = load i8*, i8** %17, align 8, !dbg !2785, !tbaa !1975
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2786
  %20 = load i8*, i8** %19, align 8, !dbg !2786, !tbaa !1978
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2787
  %22 = add i64 %21, 1, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %22, metadata !2749, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %22, metadata !2763, metadata !DIExpression()) #27, !dbg !2789
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %23, metadata !2750, metadata !DIExpression()), !dbg !2777
  %24 = load i32, i32* %14, align 8, !dbg !2792, !tbaa !1901
  %25 = load i8*, i8** %17, align 8, !dbg !2793, !tbaa !1975
  %26 = load i8*, i8** %19, align 8, !dbg !2794, !tbaa !1978
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2795
  store i32 %8, i32* %7, align 4, !dbg !2796, !tbaa !1520
  br i1 %11, label %29, label %28, !dbg !2797

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2798, !tbaa !2800
  br label %29, !dbg !2802

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2804 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2808, !tbaa !627
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 1, metadata !2807, metadata !DIExpression()), !dbg !2809
  %2 = load i32, i32* @nslots, align 4, !dbg !2810, !tbaa !1520
  %3 = icmp sgt i32 %2, 1, !dbg !2813
  br i1 %3, label %4, label %12, !dbg !2814

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2813
  br label %6, !dbg !2814

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2807, metadata !DIExpression()), !dbg !2809
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2815
  %9 = load i8*, i8** %8, align 8, !dbg !2815, !tbaa !2816
  tail call void @free(i8* %9) #27, !dbg !2818
  %10 = add nuw nsw i64 %7, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %10, metadata !2807, metadata !DIExpression()), !dbg !2809
  %11 = icmp eq i64 %10, %5, !dbg !2813
  br i1 %11, label %12, label %6, !dbg !2814, !llvm.loop !2820

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2822
  %14 = load i8*, i8** %13, align 8, !dbg !2822, !tbaa !2816
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2824
  br i1 %15, label %17, label %16, !dbg !2825

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2826
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2828, !tbaa !2829
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2830, !tbaa !2816
  br label %17, !dbg !2831

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2832
  br i1 %18, label %21, label %19, !dbg !2834

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2835
  tail call void @free(i8* %20) #27, !dbg !2837
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2838, !tbaa !627
  br label %21, !dbg !2839

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2840, !tbaa !1520
  ret void, !dbg !2841
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()), !dbg !2846
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2847
  ret i8* %3, !dbg !2848
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2853, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2854, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2855, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2856, metadata !DIExpression()), !dbg !2868
  %5 = tail call i32* @__errno_location() #30, !dbg !2869
  %6 = load i32, i32* %5, align 4, !dbg !2869, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %6, metadata !2857, metadata !DIExpression()), !dbg !2868
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2870, !tbaa !627
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2858, metadata !DIExpression()), !dbg !2868
  %8 = icmp slt i32 %0, 0, !dbg !2871
  br i1 %8, label %9, label %10, !dbg !2873

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2874
  unreachable, !dbg !2874

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2875, !tbaa !1520
  %12 = icmp sgt i32 %11, %0, !dbg !2876
  br i1 %12, label %34, label %13, !dbg !2877

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2878
  call void @llvm.dbg.value(metadata i1 %14, metadata !2859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2879
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2862, metadata !DIExpression()), !dbg !2879
  %15 = icmp eq i32 %0, 2147483647, !dbg !2880
  br i1 %15, label %16, label %17, !dbg !2882

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2883
  unreachable, !dbg !2883

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2884
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2884
  %20 = add nuw nsw i32 %0, 1, !dbg !2885
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2886
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2887
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2858, metadata !DIExpression()), !dbg !2868
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2888, !tbaa !627
  br i1 %14, label %25, label %26, !dbg !2889

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2890, !tbaa.struct !2892
  br label %26, !dbg !2893

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2894, !tbaa !1520
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2895
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2896
  %31 = sub nsw i32 %20, %27, !dbg !2897
  %32 = sext i32 %31 to i64, !dbg !2898
  %33 = shl nsw i64 %32, 4, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %30, metadata !2290, metadata !DIExpression()) #27, !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2296, metadata !DIExpression()) #27, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %33, metadata !2297, metadata !DIExpression()) #27, !dbg !2900
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2902
  store i32 %20, i32* @nslots, align 4, !dbg !2903, !tbaa !1520
  br label %34, !dbg !2904

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2868
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2858, metadata !DIExpression()), !dbg !2868
  %36 = zext i32 %0 to i64, !dbg !2905
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2906
  %38 = load i64, i64* %37, align 8, !dbg !2906, !tbaa !2829
  call void @llvm.dbg.value(metadata i64 %38, metadata !2863, metadata !DIExpression()), !dbg !2907
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2908
  %40 = load i8*, i8** %39, align 8, !dbg !2908, !tbaa !2816
  call void @llvm.dbg.value(metadata i8* %40, metadata !2865, metadata !DIExpression()), !dbg !2907
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2909
  %42 = load i32, i32* %41, align 4, !dbg !2909, !tbaa !1953
  %43 = or i32 %42, 1, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %43, metadata !2866, metadata !DIExpression()), !dbg !2907
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2911
  %45 = load i32, i32* %44, align 8, !dbg !2911, !tbaa !1901
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2912
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2913
  %48 = load i8*, i8** %47, align 8, !dbg !2913, !tbaa !1975
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2914
  %50 = load i8*, i8** %49, align 8, !dbg !2914, !tbaa !1978
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %51, metadata !2867, metadata !DIExpression()), !dbg !2907
  %52 = icmp ugt i64 %38, %51, !dbg !2916
  br i1 %52, label %63, label %53, !dbg !2918

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %54, metadata !2863, metadata !DIExpression()), !dbg !2907
  store i64 %54, i64* %37, align 8, !dbg !2921, !tbaa !2829
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2922
  br i1 %55, label %57, label %56, !dbg !2924

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2925
  br label %57, !dbg !2925

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2763, metadata !DIExpression()) #27, !dbg !2926
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %58, metadata !2865, metadata !DIExpression()), !dbg !2907
  store i8* %58, i8** %39, align 8, !dbg !2929, !tbaa !2816
  %59 = load i32, i32* %44, align 8, !dbg !2930, !tbaa !1901
  %60 = load i8*, i8** %47, align 8, !dbg !2931, !tbaa !1975
  %61 = load i8*, i8** %49, align 8, !dbg !2932, !tbaa !1978
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2933
  br label %63, !dbg !2934

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2907
  call void @llvm.dbg.value(metadata i8* %64, metadata !2865, metadata !DIExpression()), !dbg !2907
  store i32 %6, i32* %5, align 4, !dbg !2935, !tbaa !1520
  ret i8* %64, !dbg !2936
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2944
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2945
  ret i8* %4, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 0, metadata !2844, metadata !DIExpression()) #27, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2845, metadata !DIExpression()) #27, !dbg !2951
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2953
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()) #27, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #27, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()) #27, !dbg !2962
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2964
  ret i8* %3, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2966 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 %1, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %2, metadata !2972, metadata !DIExpression()), !dbg !2974
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2975
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2973, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()) #27, !dbg !2987
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2986, metadata !DIExpression()) #27, !dbg !2989
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2989, !alias.scope !2977
  %6 = icmp eq i32 %1, 10, !dbg !2990
  br i1 %6, label %7, label %8, !dbg !2992

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2993, !noalias !2977
  unreachable, !dbg !2993

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2994
  store i32 %1, i32* %9, align 8, !dbg !2995, !tbaa !1901, !alias.scope !2977
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2997
  ret i8* %10, !dbg !2998
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2999 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3003, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i32 %1, metadata !3004, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i8* %2, metadata !3005, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %3, metadata !3006, metadata !DIExpression()), !dbg !3008
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3009
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3007, metadata !DIExpression()), !dbg !3010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3011), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()) #27, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2986, metadata !DIExpression()) #27, !dbg !3017
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !3017, !alias.scope !3011
  %7 = icmp eq i32 %1, 10, !dbg !3018
  br i1 %7, label %8, label %9, !dbg !3019

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3020, !noalias !3011
  unreachable, !dbg !3020

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3021
  store i32 %1, i32* %10, align 8, !dbg !3022, !tbaa !1901, !alias.scope !3011
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3023
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3024
  ret i8* %11, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3026 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !2970, metadata !DIExpression()) #27, !dbg !3033
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()) #27, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()) #27, !dbg !3033
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3035
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2973, metadata !DIExpression()) #27, !dbg !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037) #27, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()) #27, !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2986, metadata !DIExpression()) #27, !dbg !3043
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !3043, !alias.scope !3037
  %5 = icmp eq i32 %0, 10, !dbg !3044
  br i1 %5, label %6, label %7, !dbg !3045

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !3046, !noalias !3037
  unreachable, !dbg !3046

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3047
  store i32 %0, i32* %8, align 8, !dbg !3048, !tbaa !1901, !alias.scope !3037
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3049
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3050
  ret i8* %9, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3052 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()) #27, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()) #27, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()) #27, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %2, metadata !3006, metadata !DIExpression()) #27, !dbg !3060
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3062
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3062
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3007, metadata !DIExpression()) #27, !dbg !3063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064) #27, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()) #27, !dbg !3068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2986, metadata !DIExpression()) #27, !dbg !3070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3070, !alias.scope !3064
  %6 = icmp eq i32 %0, 10, !dbg !3071
  br i1 %6, label %7, label %8, !dbg !3072

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3073, !noalias !3064
  unreachable, !dbg !3073

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3074
  store i32 %0, i32* %9, align 8, !dbg !3075, !tbaa !1901, !alias.scope !3064
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3076
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3077
  ret i8* %10, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3079 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %2, metadata !3085, metadata !DIExpression()), !dbg !3087
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3088
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3088
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3090, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1919, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %2, metadata !1920, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %2, metadata !1922, metadata !DIExpression()), !dbg !3092
  %6 = lshr i8 %2, 5, !dbg !3094
  %7 = zext i8 %6 to i64, !dbg !3094
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3095
  call void @llvm.dbg.value(metadata i32* %8, metadata !1924, metadata !DIExpression()), !dbg !3092
  %9 = and i8 %2, 31, !dbg !3096
  %10 = zext i8 %9 to i32, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %10, metadata !1926, metadata !DIExpression()), !dbg !3092
  %11 = load i32, i32* %8, align 4, !dbg !3097, !tbaa !1520
  %12 = lshr i32 %11, %10, !dbg !3098
  %13 = and i32 %12, 1, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %13, metadata !1927, metadata !DIExpression()), !dbg !3092
  %14 = xor i32 %13, 1, !dbg !3100
  %15 = shl i32 %14, %10, !dbg !3101
  %16 = xor i32 %15, %11, !dbg !3102
  store i32 %16, i32* %8, align 4, !dbg !3102, !tbaa !1520
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3104
  ret i8* %17, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3106 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8 %1, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()) #27, !dbg !3113
  call void @llvm.dbg.value(metadata i64 -1, metadata !3084, metadata !DIExpression()) #27, !dbg !3113
  call void @llvm.dbg.value(metadata i8 %1, metadata !3085, metadata !DIExpression()) #27, !dbg !3113
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3115
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3115
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3086, metadata !DIExpression()) #27, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3117, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1919, metadata !DIExpression()) #27, !dbg !3118
  call void @llvm.dbg.value(metadata i8 %1, metadata !1920, metadata !DIExpression()) #27, !dbg !3118
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()) #27, !dbg !3118
  call void @llvm.dbg.value(metadata i8 %1, metadata !1922, metadata !DIExpression()) #27, !dbg !3118
  %5 = lshr i8 %1, 5, !dbg !3120
  %6 = zext i8 %5 to i64, !dbg !3120
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3121
  call void @llvm.dbg.value(metadata i32* %7, metadata !1924, metadata !DIExpression()) #27, !dbg !3118
  %8 = and i8 %1, 31, !dbg !3122
  %9 = zext i8 %8 to i32, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %9, metadata !1926, metadata !DIExpression()) #27, !dbg !3118
  %10 = load i32, i32* %7, align 4, !dbg !3123, !tbaa !1520
  %11 = lshr i32 %10, %9, !dbg !3124
  %12 = and i32 %11, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i32 %12, metadata !1927, metadata !DIExpression()) #27, !dbg !3118
  %13 = xor i32 %12, 1, !dbg !3126
  %14 = shl i32 %13, %9, !dbg !3127
  %15 = xor i32 %14, %10, !dbg !3128
  store i32 %15, i32* %7, align 4, !dbg !3128, !tbaa !1520
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3130
  ret i8* %16, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3132 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* %0, metadata !3110, metadata !DIExpression()) #27, !dbg !3136
  call void @llvm.dbg.value(metadata i8 58, metadata !3111, metadata !DIExpression()) #27, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()) #27, !dbg !3138
  call void @llvm.dbg.value(metadata i64 -1, metadata !3084, metadata !DIExpression()) #27, !dbg !3138
  call void @llvm.dbg.value(metadata i8 58, metadata !3085, metadata !DIExpression()) #27, !dbg !3138
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3140
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3086, metadata !DIExpression()) #27, !dbg !3141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3142, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1919, metadata !DIExpression()) #27, !dbg !3143
  call void @llvm.dbg.value(metadata i8 58, metadata !1920, metadata !DIExpression()) #27, !dbg !3143
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()) #27, !dbg !3143
  call void @llvm.dbg.value(metadata i8 58, metadata !1922, metadata !DIExpression()) #27, !dbg !3143
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3145
  call void @llvm.dbg.value(metadata i32* %4, metadata !1924, metadata !DIExpression()) #27, !dbg !3143
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()) #27, !dbg !3143
  %5 = load i32, i32* %4, align 4, !dbg !3146, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %5, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3143
  %6 = or i32 %5, 67108864, !dbg !3147
  store i32 %6, i32* %4, align 4, !dbg !3147, !tbaa !1520
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3148
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3149
  ret i8* %7, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3151 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3153, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()) #27, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()) #27, !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !3085, metadata !DIExpression()) #27, !dbg !3156
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3158
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3086, metadata !DIExpression()) #27, !dbg !3159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3160, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1919, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i8 58, metadata !1920, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i8 58, metadata !1922, metadata !DIExpression()) #27, !dbg !3161
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32* %5, metadata !1924, metadata !DIExpression()) #27, !dbg !3161
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()) #27, !dbg !3161
  %6 = load i32, i32* %5, align 4, !dbg !3164, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %6, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3161
  %7 = or i32 %6, 67108864, !dbg !3165
  store i32 %7, i32* %5, align 4, !dbg !3165, !tbaa !1520
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3167
  ret i8* %8, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3169 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2986, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3175
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %1, metadata !3172, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %2, metadata !3173, metadata !DIExpression()), !dbg !3177
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3178
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3174, metadata !DIExpression()), !dbg !3179
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3180
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3181), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !2986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3184
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3175, !alias.scope !3181
  %8 = icmp eq i32 %1, 10, !dbg !3185
  br i1 %8, label %9, label %10, !dbg !3186

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3187, !noalias !3181
  unreachable, !dbg !3187

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3184
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3180
  store i32 %1, i32* %11, align 8, !dbg !3180, !tbaa.struct !3091
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3180
  %13 = bitcast i32* %12 to i8*, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3180, !tbaa.struct !3188
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1919, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 58, metadata !1920, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 58, metadata !1922, metadata !DIExpression()), !dbg !3189
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3191
  call void @llvm.dbg.value(metadata i32* %14, metadata !1924, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 26, metadata !1926, metadata !DIExpression()), !dbg !3189
  %15 = load i32, i32* %14, align 4, !dbg !3192, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %15, metadata !1927, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3189
  %16 = or i32 %15, 67108864, !dbg !3193
  store i32 %16, i32* %14, align 4, !dbg !3193, !tbaa !1520
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3195
  ret i8* %17, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3197 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %1, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %3, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %0, metadata !3206, metadata !DIExpression()) #27, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !3211, metadata !DIExpression()) #27, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %2, metadata !3212, metadata !DIExpression()) #27, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %3, metadata !3213, metadata !DIExpression()) #27, !dbg !3216
  call void @llvm.dbg.value(metadata i64 -1, metadata !3214, metadata !DIExpression()) #27, !dbg !3216
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3218
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3215, metadata !DIExpression()) #27, !dbg !3219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3220, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #27, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #27, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #27, !dbg !3221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #27, !dbg !3221
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3223
  store i32 10, i32* %7, align 8, !dbg !3224, !tbaa !1901
  %8 = icmp ne i8* %1, null, !dbg !3225
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3226
  br i1 %10, label %12, label %11, !dbg !3226

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3227
  unreachable, !dbg !3227

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3228
  store i8* %1, i8** %13, align 8, !dbg !3229, !tbaa !1975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3230
  store i8* %2, i8** %14, align 8, !dbg !3231, !tbaa !1978
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3233
  ret i8* %15, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3207 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3206, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %1, metadata !3211, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %2, metadata !3212, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %3, metadata !3213, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %4, metadata !3214, metadata !DIExpression()), !dbg !3235
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3236
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3236
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3215, metadata !DIExpression()), !dbg !3237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3238, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #27, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %1, metadata !1961, metadata !DIExpression()) #27, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %2, metadata !1962, metadata !DIExpression()) #27, !dbg !3239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1960, metadata !DIExpression()) #27, !dbg !3239
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3241
  store i32 10, i32* %8, align 8, !dbg !3242, !tbaa !1901
  %9 = icmp ne i8* %1, null, !dbg !3243
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3244
  br i1 %11, label %13, label %12, !dbg !3244

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3245
  unreachable, !dbg !3245

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3246
  store i8* %1, i8** %14, align 8, !dbg !3247, !tbaa !1975
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3248
  store i8* %2, i8** %15, align 8, !dbg !3249, !tbaa !1978
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3251
  ret i8* %16, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3253 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 0, metadata !3201, metadata !DIExpression()) #27, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()) #27, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()) #27, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()) #27, !dbg !3261
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()) #27, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !3211, metadata !DIExpression()) #27, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !3212, metadata !DIExpression()) #27, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %2, metadata !3213, metadata !DIExpression()) #27, !dbg !3263
  call void @llvm.dbg.value(metadata i64 -1, metadata !3214, metadata !DIExpression()) #27, !dbg !3263
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3215, metadata !DIExpression()) #27, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3267, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #27, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #27, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #27, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1960, metadata !DIExpression()) #27, !dbg !3268
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3270
  store i32 10, i32* %6, align 8, !dbg !3271, !tbaa !1901
  %7 = icmp ne i8* %0, null, !dbg !3272
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3273
  br i1 %9, label %11, label %10, !dbg !3273

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3274
  unreachable, !dbg !3274

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3275
  store i8* %0, i8** %12, align 8, !dbg !3276, !tbaa !1975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3277
  store i8* %1, i8** %13, align 8, !dbg !3278, !tbaa !1978
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3280
  ret i8* %14, !dbg !3281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3282 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %3, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3211, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %1, metadata !3212, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %2, metadata !3213, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %3, metadata !3214, metadata !DIExpression()) #27, !dbg !3291
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3215, metadata !DIExpression()) #27, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3295, !tbaa.struct !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #27, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %0, metadata !1961, metadata !DIExpression()) #27, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !1962, metadata !DIExpression()) #27, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1960, metadata !DIExpression()) #27, !dbg !3296
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3298
  store i32 10, i32* %7, align 8, !dbg !3299, !tbaa !1901
  %8 = icmp ne i8* %0, null, !dbg !3300
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3301
  br i1 %10, label %12, label %11, !dbg !3301

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3302
  unreachable, !dbg !3302

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3303
  store i8* %0, i8** %13, align 8, !dbg !3304, !tbaa !1975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3305
  store i8* %1, i8** %14, align 8, !dbg !3306, !tbaa !1978
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3308
  ret i8* %15, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %2, metadata !3316, metadata !DIExpression()), !dbg !3317
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3318
  ret i8* %4, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 0, metadata !3314, metadata !DIExpression()) #27, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %0, metadata !3315, metadata !DIExpression()) #27, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()) #27, !dbg !3327
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3329
  ret i8* %3, !dbg !3330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3314, metadata !DIExpression()) #27, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3315, metadata !DIExpression()) #27, !dbg !3338
  call void @llvm.dbg.value(metadata i64 -1, metadata !3316, metadata !DIExpression()) #27, !dbg !3338
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3340
  ret i8* %3, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()) #27, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3336, metadata !DIExpression()) #27, !dbg !3348
  call void @llvm.dbg.value(metadata i32 0, metadata !3314, metadata !DIExpression()) #27, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %0, metadata !3315, metadata !DIExpression()) #27, !dbg !3350
  call void @llvm.dbg.value(metadata i64 -1, metadata !3316, metadata !DIExpression()) #27, !dbg !3350
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3352
  ret i8* %2, !dbg !3353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3354 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3394, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8* %1, metadata !3395, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8* %2, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8* %3, metadata !3397, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8** %4, metadata !3398, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %5, metadata !3399, metadata !DIExpression()), !dbg !3400
  %7 = icmp eq i8* %1, null, !dbg !3401
  br i1 %7, label %10, label %8, !dbg !3403

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3404
  br label %12, !dbg !3404

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3405
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.134, i64 0, i64 0), i32 5) #27, !dbg !3406
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3406
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3407
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.136, i64 0, i64 0), i32 5) #27, !dbg !3408
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.137, i64 0, i64 0)) #27, !dbg !3408
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3409
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
  ], !dbg !3410

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.138, i64 0, i64 0), i32 5) #27, !dbg !3411
  %21 = load i8*, i8** %4, align 8, !dbg !3411, !tbaa !627
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3411
  br label %147, !dbg !3413

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.139, i64 0, i64 0), i32 5) #27, !dbg !3414
  %25 = load i8*, i8** %4, align 8, !dbg !3414, !tbaa !627
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3414
  %27 = load i8*, i8** %26, align 8, !dbg !3414, !tbaa !627
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3414
  br label %147, !dbg !3415

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.140, i64 0, i64 0), i32 5) #27, !dbg !3416
  %31 = load i8*, i8** %4, align 8, !dbg !3416, !tbaa !627
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3416
  %33 = load i8*, i8** %32, align 8, !dbg !3416, !tbaa !627
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3416
  %35 = load i8*, i8** %34, align 8, !dbg !3416, !tbaa !627
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3416
  br label %147, !dbg !3417

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.141, i64 0, i64 0), i32 5) #27, !dbg !3418
  %39 = load i8*, i8** %4, align 8, !dbg !3418, !tbaa !627
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3418
  %41 = load i8*, i8** %40, align 8, !dbg !3418, !tbaa !627
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3418
  %43 = load i8*, i8** %42, align 8, !dbg !3418, !tbaa !627
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3418
  %45 = load i8*, i8** %44, align 8, !dbg !3418, !tbaa !627
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3418
  br label %147, !dbg !3419

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.142, i64 0, i64 0), i32 5) #27, !dbg !3420
  %49 = load i8*, i8** %4, align 8, !dbg !3420, !tbaa !627
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3420
  %51 = load i8*, i8** %50, align 8, !dbg !3420, !tbaa !627
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3420
  %53 = load i8*, i8** %52, align 8, !dbg !3420, !tbaa !627
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3420
  %55 = load i8*, i8** %54, align 8, !dbg !3420, !tbaa !627
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3420
  %57 = load i8*, i8** %56, align 8, !dbg !3420, !tbaa !627
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3420
  br label %147, !dbg !3421

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.143, i64 0, i64 0), i32 5) #27, !dbg !3422
  %61 = load i8*, i8** %4, align 8, !dbg !3422, !tbaa !627
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3422
  %63 = load i8*, i8** %62, align 8, !dbg !3422, !tbaa !627
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3422
  %65 = load i8*, i8** %64, align 8, !dbg !3422, !tbaa !627
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3422
  %67 = load i8*, i8** %66, align 8, !dbg !3422, !tbaa !627
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3422
  %69 = load i8*, i8** %68, align 8, !dbg !3422, !tbaa !627
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3422
  %71 = load i8*, i8** %70, align 8, !dbg !3422, !tbaa !627
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3422
  br label %147, !dbg !3423

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.144, i64 0, i64 0), i32 5) #27, !dbg !3424
  %75 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !627
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3424
  %77 = load i8*, i8** %76, align 8, !dbg !3424, !tbaa !627
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3424
  %79 = load i8*, i8** %78, align 8, !dbg !3424, !tbaa !627
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3424
  %81 = load i8*, i8** %80, align 8, !dbg !3424, !tbaa !627
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3424
  %83 = load i8*, i8** %82, align 8, !dbg !3424, !tbaa !627
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3424
  %85 = load i8*, i8** %84, align 8, !dbg !3424, !tbaa !627
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3424
  %87 = load i8*, i8** %86, align 8, !dbg !3424, !tbaa !627
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3424
  br label %147, !dbg !3425

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.145, i64 0, i64 0), i32 5) #27, !dbg !3426
  %91 = load i8*, i8** %4, align 8, !dbg !3426, !tbaa !627
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3426
  %93 = load i8*, i8** %92, align 8, !dbg !3426, !tbaa !627
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3426
  %95 = load i8*, i8** %94, align 8, !dbg !3426, !tbaa !627
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3426
  %97 = load i8*, i8** %96, align 8, !dbg !3426, !tbaa !627
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3426
  %99 = load i8*, i8** %98, align 8, !dbg !3426, !tbaa !627
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3426
  %101 = load i8*, i8** %100, align 8, !dbg !3426, !tbaa !627
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3426
  %103 = load i8*, i8** %102, align 8, !dbg !3426, !tbaa !627
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3426
  %105 = load i8*, i8** %104, align 8, !dbg !3426, !tbaa !627
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3426
  br label %147, !dbg !3427

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.146, i64 0, i64 0), i32 5) #27, !dbg !3428
  %109 = load i8*, i8** %4, align 8, !dbg !3428, !tbaa !627
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3428
  %111 = load i8*, i8** %110, align 8, !dbg !3428, !tbaa !627
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3428
  %113 = load i8*, i8** %112, align 8, !dbg !3428, !tbaa !627
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3428
  %115 = load i8*, i8** %114, align 8, !dbg !3428, !tbaa !627
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3428
  %117 = load i8*, i8** %116, align 8, !dbg !3428, !tbaa !627
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3428
  %119 = load i8*, i8** %118, align 8, !dbg !3428, !tbaa !627
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3428
  %121 = load i8*, i8** %120, align 8, !dbg !3428, !tbaa !627
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3428
  %123 = load i8*, i8** %122, align 8, !dbg !3428, !tbaa !627
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3428
  %125 = load i8*, i8** %124, align 8, !dbg !3428, !tbaa !627
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3428
  br label %147, !dbg !3429

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.147, i64 0, i64 0), i32 5) #27, !dbg !3430
  %129 = load i8*, i8** %4, align 8, !dbg !3430, !tbaa !627
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3430
  %131 = load i8*, i8** %130, align 8, !dbg !3430, !tbaa !627
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3430
  %133 = load i8*, i8** %132, align 8, !dbg !3430, !tbaa !627
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3430
  %135 = load i8*, i8** %134, align 8, !dbg !3430, !tbaa !627
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3430
  %137 = load i8*, i8** %136, align 8, !dbg !3430, !tbaa !627
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3430
  %139 = load i8*, i8** %138, align 8, !dbg !3430, !tbaa !627
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3430
  %141 = load i8*, i8** %140, align 8, !dbg !3430, !tbaa !627
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3430
  %143 = load i8*, i8** %142, align 8, !dbg !3430, !tbaa !627
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3430
  %145 = load i8*, i8** %144, align 8, !dbg !3430, !tbaa !627
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3430
  br label %147, !dbg !3431

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3433 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %2, metadata !3439, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %3, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8** %4, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 0, metadata !3442, metadata !DIExpression()), !dbg !3443
  br label %6, !dbg !3444

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3446
  call void @llvm.dbg.value(metadata i64 %7, metadata !3442, metadata !DIExpression()), !dbg !3443
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3447
  %9 = load i8*, i8** %8, align 8, !dbg !3447, !tbaa !627
  %10 = icmp eq i8* %9, null, !dbg !3449
  %11 = add i64 %7, 1, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %11, metadata !3442, metadata !DIExpression()), !dbg !3443
  br i1 %10, label %12, label %6, !dbg !3449, !llvm.loop !3451

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3455 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3466, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %2, metadata !3468, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %3, metadata !3469, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3470, metadata !DIExpression()), !dbg !3474
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3475
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3475
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3472, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  %11 = load i32, i32* %8, align 8, !dbg !3477
  %12 = icmp ult i32 %11, 41, !dbg !3477
  br i1 %12, label %13, label %18, !dbg !3477

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3477
  %15 = zext i32 %11 to i64, !dbg !3477
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3477
  %17 = add nuw nsw i32 %11, 8, !dbg !3477
  store i32 %17, i32* %8, align 8, !dbg !3477
  br label %21, !dbg !3477

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3477
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3477
  store i8* %20, i8** %9, align 8, !dbg !3477
  br label %21, !dbg !3477

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3477
  %25 = load i8*, i8** %24, align 8, !dbg !3477
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3480
  store i8* %25, i8** %26, align 16, !dbg !3481, !tbaa !627
  %27 = icmp eq i8* %25, null, !dbg !3482
  br i1 %27, label %30, label %28, !dbg !3483

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 1, metadata !3471, metadata !DIExpression()), !dbg !3474
  %29 = icmp ult i32 %22, 41, !dbg !3477
  br i1 %29, label %35, label %32, !dbg !3477

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3484
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3486
  ret void, !dbg !3486

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3477
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3477
  store i8* %34, i8** %9, align 8, !dbg !3477
  br label %40, !dbg !3477

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3477
  %37 = zext i32 %22 to i64, !dbg !3477
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3477
  %39 = add nuw nsw i32 %22, 8, !dbg !3477
  store i32 %39, i32* %8, align 8, !dbg !3477
  br label %40, !dbg !3477

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3477
  %44 = load i8*, i8** %43, align 8, !dbg !3477
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3480
  store i8* %44, i8** %45, align 8, !dbg !3481, !tbaa !627
  %46 = icmp eq i8* %44, null, !dbg !3482
  br i1 %46, label %30, label %47, !dbg !3483

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 2, metadata !3471, metadata !DIExpression()), !dbg !3474
  %48 = icmp ult i32 %41, 41, !dbg !3477
  br i1 %48, label %52, label %49, !dbg !3477

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3477
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3477
  store i8* %51, i8** %9, align 8, !dbg !3477
  br label %57, !dbg !3477

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3477
  %54 = zext i32 %41 to i64, !dbg !3477
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3477
  %56 = add nuw nsw i32 %41, 8, !dbg !3477
  store i32 %56, i32* %8, align 8, !dbg !3477
  br label %57, !dbg !3477

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3477
  %61 = load i8*, i8** %60, align 8, !dbg !3477
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3480
  store i8* %61, i8** %62, align 16, !dbg !3481, !tbaa !627
  %63 = icmp eq i8* %61, null, !dbg !3482
  br i1 %63, label %30, label %64, !dbg !3483

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 3, metadata !3471, metadata !DIExpression()), !dbg !3474
  %65 = icmp ult i32 %58, 41, !dbg !3477
  br i1 %65, label %69, label %66, !dbg !3477

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3477
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3477
  store i8* %68, i8** %9, align 8, !dbg !3477
  br label %74, !dbg !3477

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3477
  %71 = zext i32 %58 to i64, !dbg !3477
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3477
  %73 = add nuw nsw i32 %58, 8, !dbg !3477
  store i32 %73, i32* %8, align 8, !dbg !3477
  br label %74, !dbg !3477

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3477
  %78 = load i8*, i8** %77, align 8, !dbg !3477
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3480
  store i8* %78, i8** %79, align 8, !dbg !3481, !tbaa !627
  %80 = icmp eq i8* %78, null, !dbg !3482
  br i1 %80, label %30, label %81, !dbg !3483

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 4, metadata !3471, metadata !DIExpression()), !dbg !3474
  %82 = icmp ult i32 %75, 41, !dbg !3477
  br i1 %82, label %86, label %83, !dbg !3477

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3477
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3477
  store i8* %85, i8** %9, align 8, !dbg !3477
  br label %91, !dbg !3477

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3477
  %88 = zext i32 %75 to i64, !dbg !3477
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3477
  %90 = add nuw nsw i32 %75, 8, !dbg !3477
  store i32 %90, i32* %8, align 8, !dbg !3477
  br label %91, !dbg !3477

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3477
  %95 = load i8*, i8** %94, align 8, !dbg !3477
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3480
  store i8* %95, i8** %96, align 16, !dbg !3481, !tbaa !627
  %97 = icmp eq i8* %95, null, !dbg !3482
  br i1 %97, label %30, label %98, !dbg !3483

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 5, metadata !3471, metadata !DIExpression()), !dbg !3474
  %99 = icmp ult i32 %92, 41, !dbg !3477
  br i1 %99, label %103, label %100, !dbg !3477

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3477
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3477
  store i8* %102, i8** %9, align 8, !dbg !3477
  br label %108, !dbg !3477

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3477
  %105 = zext i32 %92 to i64, !dbg !3477
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3477
  %107 = add nuw nsw i32 %92, 8, !dbg !3477
  store i32 %107, i32* %8, align 8, !dbg !3477
  br label %108, !dbg !3477

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3477
  %111 = load i8*, i8** %110, align 8, !dbg !3477
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3480
  store i8* %111, i8** %112, align 8, !dbg !3481, !tbaa !627
  %113 = icmp eq i8* %111, null, !dbg !3482
  br i1 %113, label %30, label %114, !dbg !3483

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3471, metadata !DIExpression()), !dbg !3474
  %115 = load i8*, i8** %9, align 8, !dbg !3477
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3477
  store i8* %116, i8** %9, align 8, !dbg !3477
  %117 = bitcast i8* %115 to i8**, !dbg !3477
  %118 = load i8*, i8** %117, align 8, !dbg !3477
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3480
  store i8* %118, i8** %119, align 16, !dbg !3481, !tbaa !627
  %120 = icmp eq i8* %118, null, !dbg !3482
  br i1 %120, label %30, label %121, !dbg !3483

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3471, metadata !DIExpression()), !dbg !3474
  %122 = load i8*, i8** %9, align 8, !dbg !3477
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3477
  store i8* %123, i8** %9, align 8, !dbg !3477
  %124 = bitcast i8* %122 to i8**, !dbg !3477
  %125 = load i8*, i8** %124, align 8, !dbg !3477
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3480
  store i8* %125, i8** %126, align 8, !dbg !3481, !tbaa !627
  %127 = icmp eq i8* %125, null, !dbg !3482
  br i1 %127, label %30, label %128, !dbg !3483

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3471, metadata !DIExpression()), !dbg !3474
  %129 = load i8*, i8** %9, align 8, !dbg !3477
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3477
  store i8* %130, i8** %9, align 8, !dbg !3477
  %131 = bitcast i8* %129 to i8**, !dbg !3477
  %132 = load i8*, i8** %131, align 8, !dbg !3477
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3480
  store i8* %132, i8** %133, align 16, !dbg !3481, !tbaa !627
  %134 = icmp eq i8* %132, null, !dbg !3482
  br i1 %134, label %30, label %135, !dbg !3483

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3471, metadata !DIExpression()), !dbg !3474
  %136 = load i8*, i8** %9, align 8, !dbg !3477
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3477
  store i8* %137, i8** %9, align 8, !dbg !3477
  %138 = bitcast i8* %136 to i8**, !dbg !3477
  %139 = load i8*, i8** %138, align 8, !dbg !3477
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3480
  store i8* %139, i8** %140, align 8, !dbg !3481, !tbaa !627
  %141 = icmp eq i8* %139, null, !dbg !3482
  %142 = select i1 %141, i64 9, i64 10, !dbg !3483
  br label %30, !dbg !3483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3487 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3491, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8* %1, metadata !3492, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8* %3, metadata !3494, metadata !DIExpression()), !dbg !3500
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3501
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3495, metadata !DIExpression()), !dbg !3502
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3503
  call void @llvm.va_start(i8* nonnull %6), !dbg !3503
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3504
  call void @llvm.va_end(i8* nonnull %6), !dbg !3505
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3506
  ret void, !dbg !3506
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3507 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3508, !tbaa !627
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3508
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.150, i64 0, i64 0), i32 5) #27, !dbg !3509
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.151, i64 0, i64 0)) #27, !dbg !3509
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.152, i64 0, i64 0), i32 5) #27, !dbg !3510
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.153, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.154, i64 0, i64 0)) #27, !dbg !3510
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.155, i64 0, i64 0), i32 5) #27, !dbg !3511
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.156, i64 0, i64 0)) #27, !dbg !3511
  ret void, !dbg !3512
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3513 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3519
  %3 = udiv i64 9223372036854775807, %1, !dbg !3520
  %4 = icmp ult i64 %3, %0, !dbg !3520
  br i1 %4, label %5, label %6, !dbg !3522

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3523
  unreachable, !dbg !3523

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %7, metadata !3525, metadata !DIExpression()) #27, !dbg !3531
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3533
  call void @llvm.dbg.value(metadata i8* %8, metadata !3530, metadata !DIExpression()) #27, !dbg !3531
  %9 = icmp eq i8* %8, null, !dbg !3534
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3536
  br i1 %11, label %12, label %13, !dbg !3536

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3537
  unreachable, !dbg !3537

13:                                               ; preds = %6
  ret i8* %8, !dbg !3538
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3526 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3525, metadata !DIExpression()), !dbg !3539
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %2, metadata !3530, metadata !DIExpression()), !dbg !3539
  %3 = icmp eq i8* %2, null, !dbg !3541
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3542
  br i1 %5, label %6, label %7, !dbg !3542

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3543
  unreachable, !dbg !3543

7:                                                ; preds = %1
  ret i8* %2, !dbg !3544
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %2, metadata !3551, metadata !DIExpression()), !dbg !3552
  %4 = udiv i64 9223372036854775807, %2, !dbg !3553
  %5 = icmp ult i64 %4, %1, !dbg !3553
  br i1 %5, label %6, label %7, !dbg !3555

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3556
  unreachable, !dbg !3556

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #27, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %8, metadata !3563, metadata !DIExpression()) #27, !dbg !3564
  %9 = icmp eq i64 %8, 0, !dbg !3566
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3568
  br i1 %11, label %12, label %13, !dbg !3568

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3569
  br label %19, !dbg !3571

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %14, metadata !3558, metadata !DIExpression()) #27, !dbg !3564
  %15 = icmp eq i8* %14, null, !dbg !3573
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3575
  br i1 %17, label %18, label %19, !dbg !3575

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3576
  unreachable, !dbg !3576

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3564
  ret i8* %20, !dbg !3577
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3578
  %3 = icmp eq i64 %1, 0, !dbg !3579
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3580
  br i1 %5, label %6, label %7, !dbg !3580

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3581
  br label %13, !dbg !3582

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %8, metadata !3558, metadata !DIExpression()), !dbg !3578
  %9 = icmp eq i8* %8, null, !dbg !3584
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3585
  br i1 %11, label %12, label %13, !dbg !3585

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3586
  unreachable, !dbg !3586

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3578
  ret i8* %14, !dbg !3587
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %2, metadata !197, metadata !DIExpression()), !dbg !3588
  %4 = load i64, i64* %1, align 8, !dbg !3589, !tbaa !2800
  call void @llvm.dbg.value(metadata i64 %4, metadata !198, metadata !DIExpression()), !dbg !3588
  %5 = icmp eq i8* %0, null, !dbg !3590
  br i1 %5, label %6, label %20, !dbg !3592

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3593
  br i1 %7, label %8, label %13, !dbg !3596

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %9, metadata !198, metadata !DIExpression()), !dbg !3588
  %10 = icmp ugt i64 %2, 128, !dbg !3599
  %11 = zext i1 %10 to i64, !dbg !3599
  %12 = add nuw nsw i64 %9, %11, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %12, metadata !198, metadata !DIExpression()), !dbg !3588
  br label %13, !dbg !3601

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3588
  call void @llvm.dbg.value(metadata i64 %14, metadata !198, metadata !DIExpression()), !dbg !3588
  %15 = udiv i64 9223372036854775807, %2, !dbg !3602
  %16 = icmp ult i64 %15, %14, !dbg !3602
  br i1 %16, label %19, label %17, !dbg !3604

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3588
  store i64 %14, i64* %1, align 8, !dbg !3605, !tbaa !2800
  %18 = mul i64 %14, %2, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #27, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %28, metadata !3563, metadata !DIExpression()) #27, !dbg !3607
  br label %31, !dbg !3609

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3610
  unreachable, !dbg !3610

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3611
  %22 = icmp ugt i64 %21, %4, !dbg !3614
  br i1 %22, label %24, label %23, !dbg !3615

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3616
  unreachable, !dbg !3616

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3617
  %26 = add nuw i64 %4, 1, !dbg !3618
  %27 = add i64 %26, %25, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %27, metadata !198, metadata !DIExpression()), !dbg !3588
  store i64 %27, i64* %1, align 8, !dbg !3605, !tbaa !2800
  %28 = mul i64 %27, %2, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #27, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %28, metadata !3563, metadata !DIExpression()) #27, !dbg !3607
  %29 = icmp eq i64 %28, 0, !dbg !3620
  br i1 %29, label %30, label %31, !dbg !3609

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3621
  br label %38, !dbg !3622

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %33, metadata !3558, metadata !DIExpression()) #27, !dbg !3607
  %34 = icmp eq i8* %33, null, !dbg !3624
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3625
  br i1 %36, label %37, label %38, !dbg !3625

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3626
  unreachable, !dbg !3626

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3607
  ret i8* %39, !dbg !3627
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3628 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %0, metadata !3525, metadata !DIExpression()) #27, !dbg !3632
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3634
  call void @llvm.dbg.value(metadata i8* %2, metadata !3530, metadata !DIExpression()) #27, !dbg !3632
  %3 = icmp eq i8* %2, null, !dbg !3635
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3636
  br i1 %5, label %6, label %7, !dbg !3636

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3637
  unreachable, !dbg !3637

7:                                                ; preds = %1
  ret i8* %2, !dbg !3638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64* %1, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()) #27, !dbg !3646
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()) #27, !dbg !3646
  call void @llvm.dbg.value(metadata i64 1, metadata !197, metadata !DIExpression()) #27, !dbg !3646
  %3 = load i64, i64* %1, align 8, !dbg !3648, !tbaa !2800
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #27, !dbg !3646
  %4 = icmp eq i8* %0, null, !dbg !3649
  br i1 %4, label %5, label %10, !dbg !3650

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3651
  br i1 %6, label %17, label %7, !dbg !3652

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()) #27, !dbg !3646
  %8 = icmp slt i64 %3, 0, !dbg !3653
  br i1 %8, label %9, label %17, !dbg !3654

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3655
  unreachable, !dbg !3655

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3656
  br i1 %11, label %13, label %12, !dbg !3657

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3658
  unreachable, !dbg !3658

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3659
  %15 = add nuw nsw i64 %3, 1, !dbg !3660
  %16 = add nuw nsw i64 %15, %14, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %16, metadata !198, metadata !DIExpression()) #27, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %16, metadata !3563, metadata !DIExpression()) #27, !dbg !3662
  br label %17, !dbg !3664

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3665
  store i64 %18, i64* %1, align 8, !dbg !3665, !tbaa !2800
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %19, metadata !3558, metadata !DIExpression()) #27, !dbg !3662
  %20 = icmp eq i8* %19, null, !dbg !3667
  br i1 %20, label %21, label %22, !dbg !3668

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3669
  unreachable, !dbg !3669

22:                                               ; preds = %17
  ret i8* %19, !dbg !3670
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3671 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3673, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()) #27, !dbg !3680
  call void @llvm.dbg.value(metadata i64 1, metadata !3678, metadata !DIExpression()) #27, !dbg !3680
  %2 = icmp slt i64 %0, 0, !dbg !3682
  br i1 %2, label %6, label %3, !dbg !3684

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %4, metadata !3679, metadata !DIExpression()) #27, !dbg !3680
  %5 = icmp eq i8* %4, null, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3687

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3688
  unreachable, !dbg !3688

7:                                                ; preds = %3
  ret i8* %4, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3676 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3675, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3690
  %3 = udiv i64 9223372036854775807, %1, !dbg !3691
  %4 = icmp ult i64 %3, %0, !dbg !3691
  br i1 %4, label %8, label %5, !dbg !3692

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i8* %6, metadata !3679, metadata !DIExpression()), !dbg !3690
  %7 = icmp eq i8* %6, null, !dbg !3694
  br i1 %7, label %8, label %9, !dbg !3695

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3696
  unreachable, !dbg !3696

9:                                                ; preds = %5
  ret i8* %6, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3525, metadata !DIExpression()) #27, !dbg !3707
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %3, metadata !3530, metadata !DIExpression()) #27, !dbg !3707
  %4 = icmp eq i8* %3, null, !dbg !3710
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3711
  br i1 %6, label %7, label %8, !dbg !3711

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3712
  unreachable, !dbg !3712

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3713, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %0, metadata !3720, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3721, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3724
  ret i8* %3, !dbg !3725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3726 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()), !dbg !3729
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3730
  %3 = add i64 %2, 1, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()) #27, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %3, metadata !3705, metadata !DIExpression()) #27, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %3, metadata !3525, metadata !DIExpression()) #27, !dbg !3734
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %4, metadata !3530, metadata !DIExpression()) #27, !dbg !3734
  %5 = icmp eq i8* %4, null, !dbg !3737
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3738
  br i1 %7, label %8, label %9, !dbg !3738

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3739
  unreachable, !dbg !3739

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3713, metadata !DIExpression()) #27, !dbg !3740
  call void @llvm.dbg.value(metadata i8* %0, metadata !3720, metadata !DIExpression()) #27, !dbg !3740
  call void @llvm.dbg.value(metadata i64 %3, metadata !3721, metadata !DIExpression()) #27, !dbg !3740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3742
  ret i8* %4, !dbg !3743
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3744 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3745, !tbaa !1520
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.167, i64 0, i64 0), i32 5) #27, !dbg !3746
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i64 0, i64 0), i8* %2) #27, !dbg !3747
  tail call void @abort() #29, !dbg !3748
  unreachable, !dbg !3748
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3749 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3757
  %3 = icmp eq i64 %0, 0, !dbg !3758
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3759
  br i1 %5, label %11, label %6, !dbg !3759

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3754, metadata !DIExpression()), !dbg !3760
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3761
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3761
  br i1 %8, label %9, label %11, !dbg !3763

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3764
  store i32 12, i32* %10, align 4, !dbg !3766, !tbaa !1520
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %12, metadata !3752, metadata !DIExpression()), !dbg !3757
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %14, metadata !3753, metadata !DIExpression()), !dbg !3757
  br label %15, !dbg !3768

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3757
  ret i8* %16, !dbg !3769
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3770 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3786, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3787, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %2, metadata !3788, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3789, metadata !DIExpression()), !dbg !3795
  %6 = bitcast i32* %5 to i8*, !dbg !3796
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3796
  %7 = icmp eq i32* %0, null, !dbg !3797
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3799
  call void @llvm.dbg.value(metadata i32* %8, metadata !3786, metadata !DIExpression()), !dbg !3795
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %9, metadata !3790, metadata !DIExpression()), !dbg !3795
  %10 = icmp ugt i64 %9, -3, !dbg !3801
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3802
  br i1 %12, label %13, label %18, !dbg !3802

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3803
  br i1 %14, label %18, label %15, !dbg !3804

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3805, !tbaa !819
  call void @llvm.dbg.value(metadata i8 %16, metadata !3792, metadata !DIExpression()), !dbg !3806
  %17 = zext i8 %16 to i32, !dbg !3807
  store i32 %17, i32* %8, align 4, !dbg !3808, !tbaa !1520
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3809
  ret i64 %19, !dbg !3809
}

; Function Attrs: nounwind
declare !dbg !3810 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3814 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3852, metadata !DIExpression()), !dbg !3857
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !3858
  call void @llvm.dbg.value(metadata i1 undef, metadata !3853, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3859, metadata !DIExpression()), !dbg !3863
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3865
  %4 = load i32, i32* %3, align 8, !dbg !3865, !tbaa !3866
  %5 = and i32 %4, 32, !dbg !3868
  %6 = icmp eq i32 %5, 0, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %6, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3857
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !3869
  %8 = icmp eq i32 %7, 0, !dbg !3870
  call void @llvm.dbg.value(metadata i1 %8, metadata !3856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3857
  br i1 %6, label %9, label %19, !dbg !3871

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %10, metadata !3853, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3857
  %11 = or i1 %10, %8, !dbg !3874
  %12 = xor i1 %8, true, !dbg !3874
  %13 = sext i1 %12 to i32, !dbg !3874
  br i1 %11, label %22, label %14, !dbg !3874

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3875
  %16 = load i32, i32* %15, align 4, !dbg !3875, !tbaa !1520
  %17 = icmp ne i32 %16, 9, !dbg !3876
  %18 = sext i1 %17 to i32, !dbg !3877
  br label %22, !dbg !3877

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3878

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3880
  store i32 0, i32* %21, align 4, !dbg !3882, !tbaa !1520
  br label %22, !dbg !3880

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3857
  ret i32 %23, !dbg !3883
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3884 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3888, metadata !DIExpression()), !dbg !3893
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3894
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3894
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3889, metadata !DIExpression()), !dbg !3895
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !3896
  %5 = icmp eq i32 %4, 0, !dbg !3896
  br i1 %5, label %6, label %13, !dbg !3898

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3899
  %8 = load i16, i16* %7, align 16, !dbg !3899
  %9 = icmp eq i16 %8, 67, !dbg !3899
  br i1 %9, label %13, label %10, !dbg !3900

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0), i64 6), !dbg !3901
  %12 = icmp ne i32 %11, 0, !dbg !3902
  br label %13, !dbg !3900

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3893
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3903
  ret i1 %14, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3904 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()), !dbg !3910
  %2 = icmp eq i8* %1, null, !dbg !3911
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* %1, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %3, metadata !3908, metadata !DIExpression()), !dbg !3910
  %4 = load i8, i8* %3, align 1, !dbg !3914, !tbaa !819
  %5 = icmp eq i8 %4, 0, !dbg !3918
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %3, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %6, metadata !3908, metadata !DIExpression()), !dbg !3910
  ret i8* %6, !dbg !3920
}

; Function Attrs: nounwind
declare !dbg !3921 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %1, metadata !3929, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %2, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 %0, metadata !3932, metadata !DIExpression()) #27, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %1, metadata !3935, metadata !DIExpression()) #27, !dbg !3941
  call void @llvm.dbg.value(metadata i64 %2, metadata !3936, metadata !DIExpression()) #27, !dbg !3941
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()) #27, !dbg !3949
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %4, metadata !3948, metadata !DIExpression()) #27, !dbg !3949
  call void @llvm.dbg.value(metadata i8* %4, metadata !3937, metadata !DIExpression()) #27, !dbg !3941
  %5 = icmp eq i8* %4, null, !dbg !3952
  br i1 %5, label %6, label %9, !dbg !3953

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3954
  br i1 %7, label %19, label %8, !dbg !3957

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3958, !tbaa !819
  br label %19, !dbg !3959

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %10, metadata !3938, metadata !DIExpression()) #27, !dbg !3961
  %11 = icmp ult i64 %10, %2, !dbg !3962
  br i1 %11, label %12, label %14, !dbg !3964

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %1, metadata !3967, metadata !DIExpression()) #27, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %4, metadata !3970, metadata !DIExpression()) #27, !dbg !3972
  call void @llvm.dbg.value(metadata i64 %13, metadata !3971, metadata !DIExpression()) #27, !dbg !3972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !3974
  br label %19, !dbg !3975

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3976
  br i1 %15, label %19, label %16, !dbg !3979

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !3967, metadata !DIExpression()) #27, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %4, metadata !3970, metadata !DIExpression()) #27, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %17, metadata !3971, metadata !DIExpression()) #27, !dbg !3982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !3984
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3985
  store i8 0, i8* %18, align 1, !dbg !3986, !tbaa !819
  br label %19, !dbg !3987

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3988
  ret i32 %20, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()) #27, !dbg !3994
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %2, metadata !3948, metadata !DIExpression()) #27, !dbg !3994
  ret i8* %2, !dbg !3997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3998 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4039, metadata !DIExpression()), !dbg !4040
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %2, metadata !4038, metadata !DIExpression()), !dbg !4040
  %3 = icmp slt i32 %2, 0, !dbg !4042
  br i1 %3, label %4, label %6, !dbg !4044

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  br label %24, !dbg !4046

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4047
  %8 = icmp eq i32 %7, 0, !dbg !4047
  br i1 %8, label %13, label %9, !dbg !4049

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4050
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4051
  %12 = icmp eq i64 %11, -1, !dbg !4052
  br i1 %12, label %16, label %13, !dbg !4053

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4054
  %15 = icmp eq i32 %14, 0, !dbg !4054
  br i1 %15, label %16, label %18, !dbg !4055

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4037, metadata !DIExpression()), !dbg !4040
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %21, metadata !4039, metadata !DIExpression()), !dbg !4040
  br label %24, !dbg !4057

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !4058
  %20 = load i32, i32* %19, align 4, !dbg !4058, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %20, metadata !4037, metadata !DIExpression()), !dbg !4040
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %21, metadata !4039, metadata !DIExpression()), !dbg !4040
  %22 = icmp eq i32 %20, 0, !dbg !4059
  br i1 %22, label %24, label %23, !dbg !4057

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4061, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 -1, metadata !4039, metadata !DIExpression()), !dbg !4040
  br label %24, !dbg !4063

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4040
  ret i32 %25, !dbg !4064
}

; Function Attrs: nofree nounwind
declare !dbg !4065 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4068 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4069 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4073 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4111, metadata !DIExpression()), !dbg !4112
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4113
  br i1 %2, label %6, label %3, !dbg !4115

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4116
  %5 = icmp eq i32 %4, 0, !dbg !4116
  br i1 %5, label %6, label %8, !dbg !4117

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4118
  br label %17, !dbg !4119

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4120, metadata !DIExpression()) #27, !dbg !4125
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4127
  %10 = load i32, i32* %9, align 8, !dbg !4127, !tbaa !3866
  %11 = and i32 %10, 256, !dbg !4129
  %12 = icmp eq i32 %11, 0, !dbg !4129
  br i1 %12, label %15, label %13, !dbg !4130

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4131
  br label %15, !dbg !4131

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4132
  br label %17, !dbg !4133

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4112
  ret i32 %18, !dbg !4134
}

; Function Attrs: nofree nounwind
declare !dbg !4135 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4138 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4176, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %1, metadata !4177, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i32 %2, metadata !4178, metadata !DIExpression()), !dbg !4182
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4183
  %5 = load i8*, i8** %4, align 8, !dbg !4183, !tbaa !4184
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4185
  %7 = load i8*, i8** %6, align 8, !dbg !4185, !tbaa !4186
  %8 = icmp eq i8* %5, %7, !dbg !4187
  br i1 %8, label %9, label %28, !dbg !4188

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4189
  %11 = load i8*, i8** %10, align 8, !dbg !4189, !tbaa !4190
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4191
  %13 = load i8*, i8** %12, align 8, !dbg !4191, !tbaa !4192
  %14 = icmp eq i8* %11, %13, !dbg !4193
  br i1 %14, label %15, label %28, !dbg !4194

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4195
  %17 = load i8*, i8** %16, align 8, !dbg !4195, !tbaa !4196
  %18 = icmp eq i8* %17, null, !dbg !4197
  br i1 %18, label %19, label %28, !dbg !4198

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4199
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %21, metadata !4179, metadata !DIExpression()), !dbg !4201
  %22 = icmp eq i64 %21, -1, !dbg !4202
  br i1 %22, label %30, label %23, !dbg !4204

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4205
  %25 = load i32, i32* %24, align 8, !dbg !4206, !tbaa !3866
  %26 = and i32 %25, -17, !dbg !4206
  store i32 %26, i32* %24, align 8, !dbg !4206, !tbaa !3866
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4207
  store i64 %21, i64* %27, align 8, !dbg !4208, !tbaa !4209
  br label %30, !dbg !4210

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4211
  br label %30, !dbg !4212

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4182
  ret i32 %31, !dbg !4213
}

; Function Attrs: nofree nounwind
declare !dbg !4214 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!138, !2, !172, !14, !174, !176, !21, !38, !46, !178, !132, !185, !202, !204, !206, !209, !211, !213, !602, !604, !606, !608}
!llvm.ident = !{!610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610, !610}
!llvm.module.flags = !{!611, !612, !613, !614, !615}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !3, line: 46, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !3, line: 56, type: !8, isLocal: true, isDefinition: true)
!8 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "exit_failure", scope: !14, file: !15, line: 24, type: !17, isLocal: false, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!16 = !{!12}
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "long_options", scope: !21, file: !22, line: 34, type: !24, isLocal: true, isDefinition: true)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !23, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!23 = !{!19}
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 768, elements: !34)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !27, line: 50, size: 256, elements: !28)
!27 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!28 = !{!29, !30, !31, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !27, line: 52, baseType: !9, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !26, file: !27, line: 55, baseType: !18, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !26, file: !27, line: 56, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !26, file: !27, line: 57, baseType: !18, size: 32, offset: 192)
!34 = !{!35}
!35 = !DISubrange(count: 3)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "program_name", scope: !38, file: !39, line: 33, type: !9, isLocal: false, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !43, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!43 = !{!36}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !46, file: !47, line: 85, type: !126, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !48, retainedTypes: !84, globals: !89, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!48 = !{!49, !64, !69}
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !50, line: 32, baseType: !51, size: 32, elements: !52)
!50 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !50, line: 242, baseType: !51, size: 32, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 46, baseType: !51, size: 32, elements: !71)
!70 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!72 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!76 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!84 = !{!18, !85, !86, !42}
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 46, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!88 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!89 = !{!44, !90, !96, !108, !110, !115, !122, !124}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !46, file: !47, line: 101, type: !92, isLocal: false, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 320, elements: !94)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!94 = !{!95}
!95 = !DISubrange(count: 10)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !46, file: !47, line: 1052, type: !98, isLocal: false, isDefinition: true)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !47, line: 65, size: 448, elements: !99)
!99 = !{!100, !101, !102, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !98, file: !47, line: 68, baseType: !49, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !47, line: 71, baseType: !18, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !98, file: !47, line: 75, baseType: !103, size: 256, offset: 64)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !98, file: !47, line: 78, baseType: !9, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !98, file: !47, line: 81, baseType: !9, size: 64, offset: 384)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !46, file: !47, line: 116, type: !98, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "slot0", scope: !46, file: !47, line: 842, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 256)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "slotvec", scope: !46, file: !47, line: 845, type: !117, isLocal: true, isDefinition: true)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !47, line: 834, size: 128, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !118, file: !47, line: 836, baseType: !86, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !118, file: !47, line: 837, baseType: !42, size: 64, offset: 64)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "nslots", scope: !46, file: !47, line: 843, type: !18, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "slotvec0", scope: !46, file: !47, line: 844, type: !118, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 704, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!128 = !{!129}
!129 = !DISubrange(count: 11)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !132, file: !133, line: 26, type: !135, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !134, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !{!130}
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 376, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 47)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !140, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "src/getlimits.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !{!141}
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 52, baseType: !51, size: 32, elements: !143)
!142 = !DIFile(filename: "./lib/ftoastr.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4, isUnsigned: true)
!147 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8, isUnsigned: true)
!148 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16, isUnsigned: true)
!149 = !{!9, !41, !150, !154, !157, !160, !163, !166, !168, !170}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !151, line: 102, baseType: !152)
!151 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !153, line: 73, baseType: !88)
!153 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !151, line: 101, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !153, line: 72, baseType: !156)
!156 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 77, baseType: !159)
!158 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !153, line: 194, baseType: !156)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !161, line: 7, baseType: !162)
!161 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !153, line: 160, baseType: !156)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 79, baseType: !165)
!164 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !153, line: 146, baseType: !51)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 64, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !153, line: 147, baseType: !51)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !164, line: 97, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !153, line: 154, baseType: !18)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !158, line: 63, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !153, line: 152, baseType: !156)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !140, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/dtoastr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !140, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/ftoastr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !140, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/ldtoastr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 40, baseType: !51, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!184 = !{!41}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!188}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !190, file: !189, line: 186, baseType: !51, size: 32, elements: !199)
!189 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = distinct !DISubprogram(name: "x2nrealloc", scope: !189, file: !189, line: 174, type: !191, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !194)
!191 = !DISubroutineType(types: !192)
!192 = !{!41, !41, !193, !86}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!194 = !{!195, !196, !197, !198}
!195 = !DILocalVariable(name: "p", arg: 1, scope: !190, file: !189, line: 174, type: !41)
!196 = !DILocalVariable(name: "pn", arg: 2, scope: !190, file: !189, line: 174, type: !193)
!197 = !DILocalVariable(name: "s", arg: 3, scope: !190, file: !189, line: 174, type: !86)
!198 = !DILocalVariable(name: "n", scope: !190, file: !189, line: 176, type: !86)
!199 = !{!200}
!200 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!201 = !{!86, !42, !41}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !208, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!86}
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 41, baseType: !51, size: 32, elements: !218)
!217 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!219 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!220 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!221 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!222 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!223 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!224 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!225 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!226 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!227 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!228 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!229 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!230 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!231 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!232 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!257 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!258 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!259 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!260 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!261 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!262 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!263 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!264 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!265 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!266 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!267 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!268 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!327 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!414 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!488 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!489 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!490 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!491 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!492 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!493 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!495 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!496 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!497 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!498 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!499 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!500 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!501 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!504 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!505 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!507 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!534 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!535 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!536 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!537 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!538 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!543 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!544 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!545 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!546 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!605 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!607 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!609 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!610 = !{!"clang version 12.0.1"}
!611 = !{i32 7, !"Dwarf Version", i32 4}
!612 = !{i32 2, !"Debug Info Version", i32 3}
!613 = !{i32 1, !"wchar_size", i32 4}
!614 = !{i32 7, !"PIC Level", i32 2}
!615 = !{i32 7, !"PIE Level", i32 2}
!616 = distinct !DISubprogram(name: "usage", scope: !139, file: !139, line: 60, type: !617, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !18}
!619 = !{!620}
!620 = !DILocalVariable(name: "status", arg: 1, scope: !616, file: !139, line: 60, type: !18)
!621 = !DILocation(line: 0, scope: !616)
!622 = !DILocation(line: 62, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !139, line: 62, column: 7)
!624 = !DILocation(line: 62, column: 7, scope: !616)
!625 = !DILocation(line: 63, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !139, line: 63, column: 5)
!627 = !{!628, !628, i64 0}
!628 = !{!"any pointer", !629, i64 0}
!629 = !{!"omnipotent char", !630, i64 0}
!630 = !{!"Simple C/C++ TBAA"}
!631 = !DILocation(line: 66, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !623, file: !139, line: 65, column: 5)
!633 = !DILocation(line: 70, column: 7, scope: !632)
!634 = !DILocation(line: 74, column: 7, scope: !632)
!635 = !DILocation(line: 75, column: 7, scope: !632)
!636 = !DILocalVariable(name: "program", arg: 1, scope: !637, file: !638, line: 634, type: !9)
!637 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !638, file: !638, line: 634, type: !639, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !641)
!638 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!639 = !DISubroutineType(types: !640)
!640 = !{null, !9}
!641 = !{!636, !642, !651, !652, !654}
!642 = !DILocalVariable(name: "infomap", scope: !637, file: !638, line: 636, type: !643)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 896, elements: !649)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !637, file: !638, line: 636, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !645, file: !638, line: 636, baseType: !9, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !638, line: 636, baseType: !9, size: 64, offset: 64)
!649 = !{!650}
!650 = !DISubrange(count: 7)
!651 = !DILocalVariable(name: "node", scope: !637, file: !638, line: 646, type: !9)
!652 = !DILocalVariable(name: "map_prog", scope: !637, file: !638, line: 647, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!654 = !DILocalVariable(name: "lc_messages", scope: !637, file: !638, line: 659, type: !9)
!655 = !DILocation(line: 0, scope: !637, inlinedAt: !656)
!656 = distinct !DILocation(line: 76, column: 7, scope: !632)
!657 = !DILocation(line: 636, column: 3, scope: !637, inlinedAt: !656)
!658 = !DILocation(line: 636, column: 67, scope: !637, inlinedAt: !656)
!659 = !DILocation(line: 647, column: 36, scope: !637, inlinedAt: !656)
!660 = !DILocation(line: 649, column: 3, scope: !637, inlinedAt: !656)
!661 = !DILocation(line: 649, column: 33, scope: !637, inlinedAt: !656)
!662 = !DILocation(line: 650, column: 13, scope: !637, inlinedAt: !656)
!663 = !DILocation(line: 649, column: 20, scope: !637, inlinedAt: !656)
!664 = !{!665, !628, i64 0}
!665 = !{!"infomap", !628, i64 0, !628, i64 8}
!666 = !DILocation(line: 649, column: 10, scope: !637, inlinedAt: !656)
!667 = !DILocation(line: 649, column: 28, scope: !637, inlinedAt: !656)
!668 = distinct !{!668, !660, !662, !669}
!669 = !{!"llvm.loop.mustprogress"}
!670 = !DILocation(line: 652, column: 17, scope: !671, inlinedAt: !656)
!671 = distinct !DILexicalBlock(scope: !637, file: !638, line: 652, column: 7)
!672 = !{!665, !628, i64 8}
!673 = !DILocation(line: 652, column: 7, scope: !671, inlinedAt: !656)
!674 = !DILocation(line: 652, column: 7, scope: !637, inlinedAt: !656)
!675 = !DILocation(line: 655, column: 3, scope: !637, inlinedAt: !656)
!676 = !DILocation(line: 659, column: 29, scope: !637, inlinedAt: !656)
!677 = !DILocation(line: 660, column: 7, scope: !678, inlinedAt: !656)
!678 = distinct !DILexicalBlock(scope: !637, file: !638, line: 660, column: 7)
!679 = !DILocation(line: 660, column: 19, scope: !678, inlinedAt: !656)
!680 = !DILocation(line: 660, column: 22, scope: !678, inlinedAt: !656)
!681 = !DILocation(line: 660, column: 7, scope: !637, inlinedAt: !656)
!682 = !DILocation(line: 666, column: 7, scope: !683, inlinedAt: !656)
!683 = distinct !DILexicalBlock(scope: !678, file: !638, line: 661, column: 5)
!684 = !DILocation(line: 668, column: 5, scope: !683, inlinedAt: !656)
!685 = !DILocation(line: 669, column: 3, scope: !637, inlinedAt: !656)
!686 = !DILocation(line: 671, column: 3, scope: !637, inlinedAt: !656)
!687 = !DILocation(line: 673, column: 1, scope: !637, inlinedAt: !656)
!688 = !DILocation(line: 78, column: 3, scope: !616)
!689 = !DISubprogram(name: "dcgettext", scope: !690, file: !690, line: 51, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!690 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!691 = !DISubroutineType(types: !692)
!692 = !{!42, !9, !9, !18}
!693 = !DISubprogram(name: "fputs_unlocked", scope: !158, file: !158, line: 667, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!694 = !DISubroutineType(types: !695)
!695 = !{!18, !9, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !699)
!698 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !715, !716, !717, !718, !719, !720, !722, !726, !729, !731, !734, !737, !738, !739, !740, !741}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !697, file: !698, line: 51, baseType: !18, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !697, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !697, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !697, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !697, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !697, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !697, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !697, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !697, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !697, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !697, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !697, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !697, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !698, line: 36, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !697, file: !698, line: 70, baseType: !696, size: 64, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !697, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !697, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !697, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !697, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !697, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!721 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !697, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 1)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !697, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !698, line: 43, baseType: null)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !697, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !153, line: 153, baseType: !156)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !697, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !698, line: 37, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !697, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !698, line: 38, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !697, file: !698, line: 93, baseType: !696, size: 64, offset: 1344)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !697, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !697, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !697, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !697, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 20)
!745 = !DISubprogram(name: "setlocale", scope: !746, file: !746, line: 122, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!746 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!747 = !DISubroutineType(types: !748)
!748 = !{!42, !18, !9}
!749 = distinct !DISubprogram(name: "main", scope: !139, file: !139, line: 115, type: !750, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !753)
!750 = !DISubroutineType(types: !751)
!751 = !{!18, !18, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "argc", arg: 1, scope: !749, file: !139, line: 115, type: !18)
!755 = !DILocalVariable(name: "argv", arg: 2, scope: !749, file: !139, line: 115, type: !752)
!756 = !DILocalVariable(name: "limit", scope: !749, file: !139, line: 117, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 176, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 22)
!760 = !DILocalVariable(name: "buf", scope: !761, file: !139, line: 111, type: !767)
!761 = distinct !DISubprogram(name: "print_DBL", scope: !139, file: !139, line: 111, type: !762, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !765)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764}
!764 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!765 = !{!766, !760}
!766 = !DILocalVariable(name: "x", arg: 1, scope: !761, file: !139, line: 111, type: !764)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 40)
!770 = !DILocation(line: 111, column: 1, scope: !761, inlinedAt: !771)
!771 = distinct !DILocation(line: 168, column: 3, scope: !749)
!772 = !DILocalVariable(name: "buf", scope: !773, file: !139, line: 110, type: !779)
!773 = distinct !DISubprogram(name: "print_FLT", scope: !139, file: !139, line: 110, type: !774, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !777)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !776}
!776 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!777 = !{!778, !772}
!778 = !DILocalVariable(name: "x", arg: 1, scope: !773, file: !139, line: 110, type: !776)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 248, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 31)
!782 = !DILocation(line: 110, column: 1, scope: !773, inlinedAt: !783)
!783 = distinct !DILocation(line: 167, column: 3, scope: !749)
!784 = !DILocalVariable(name: "buf", scope: !785, file: !139, line: 112, type: !791)
!785 = distinct !DISubprogram(name: "print_LDBL", scope: !139, file: !139, line: 112, type: !786, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !789)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !788}
!788 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!789 = !{!790, !784}
!790 = !DILocalVariable(name: "x", arg: 1, scope: !785, file: !139, line: 112, type: !788)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 360, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 45)
!794 = !DILocation(line: 112, column: 1, scope: !785, inlinedAt: !795)
!795 = distinct !DILocation(line: 169, column: 3, scope: !749)
!796 = !DILocation(line: 0, scope: !749)
!797 = !DILocation(line: 117, column: 3, scope: !749)
!798 = !DILocation(line: 117, column: 8, scope: !749)
!799 = !DILocation(line: 121, column: 21, scope: !749)
!800 = !DILocation(line: 121, column: 3, scope: !749)
!801 = !DILocation(line: 122, column: 3, scope: !749)
!802 = !DILocation(line: 123, column: 3, scope: !749)
!803 = !DILocation(line: 124, column: 3, scope: !749)
!804 = !DILocation(line: 127, column: 3, scope: !749)
!805 = !DILocation(line: 129, column: 3, scope: !749)
!806 = !DILocation(line: 148, column: 3, scope: !749)
!807 = !DILocalVariable(name: "buf", arg: 1, scope: !808, file: !139, line: 86, type: !42)
!808 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !139, file: !139, line: 86, type: !809, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{!9, !42}
!811 = !{!807, !812, !813, !814, !815}
!812 = !DILocalVariable(name: "negative", scope: !808, file: !139, line: 88, type: !8)
!813 = !DILocalVariable(name: "absnum", scope: !808, file: !139, line: 89, type: !42)
!814 = !DILocalVariable(name: "p", scope: !808, file: !139, line: 90, type: !42)
!815 = !DILocalVariable(name: "result", scope: !808, file: !139, line: 95, type: !42)
!816 = !DILocation(line: 0, scope: !808, inlinedAt: !817)
!817 = distinct !DILocation(line: 148, column: 3, scope: !749)
!818 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !817)
!819 = !{!629, !629, i64 0}
!820 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !817)
!821 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !817)
!822 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !817)
!823 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !817)
!824 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !817)
!825 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !817)
!826 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !817)
!827 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !817)
!828 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !817)
!829 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !817)
!830 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !817)
!831 = distinct !{!831, !829, !832, !669}
!832 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !817)
!833 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !817)
!834 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !817)
!835 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !817)
!836 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !817)
!837 = distinct !DILexicalBlock(scope: !808, file: !139, line: 96, column: 7)
!838 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !817)
!839 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !817)
!840 = !DILocation(line: 148, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !139, line: 148, column: 3)
!842 = distinct !DILexicalBlock(scope: !749, file: !139, line: 148, column: 3)
!843 = !DILocation(line: 0, scope: !808, inlinedAt: !844)
!844 = distinct !DILocation(line: 148, column: 3, scope: !841)
!845 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !844)
!846 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !844)
!847 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !844)
!848 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !844)
!849 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !844)
!850 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !844)
!851 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !844)
!852 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !844)
!853 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !844)
!854 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !844)
!855 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !844)
!856 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !844)
!857 = distinct !{!857, !855, !858, !669}
!858 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !844)
!859 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !844)
!860 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !844)
!861 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !844)
!862 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !844)
!863 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !844)
!864 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !844)
!865 = !DILocation(line: 149, column: 3, scope: !749)
!866 = !DILocation(line: 0, scope: !808, inlinedAt: !867)
!867 = distinct !DILocation(line: 149, column: 3, scope: !749)
!868 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !867)
!869 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !867)
!870 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !867)
!871 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !867)
!872 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !867)
!873 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !867)
!874 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !867)
!875 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !867)
!876 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !867)
!877 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !867)
!878 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !867)
!879 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !867)
!880 = distinct !{!880, !878, !881, !669}
!881 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !867)
!882 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !867)
!883 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !867)
!884 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !867)
!885 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !867)
!886 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !867)
!887 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !867)
!888 = !DILocation(line: 149, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !139, line: 149, column: 3)
!890 = distinct !DILexicalBlock(scope: !749, file: !139, line: 149, column: 3)
!891 = !DILocation(line: 0, scope: !808, inlinedAt: !892)
!892 = distinct !DILocation(line: 149, column: 3, scope: !889)
!893 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !892)
!894 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !892)
!895 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !892)
!896 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !892)
!897 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !892)
!898 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !892)
!899 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !892)
!900 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !892)
!901 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !892)
!902 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !892)
!903 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !892)
!904 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !892)
!905 = distinct !{!905, !903, !906, !669}
!906 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !892)
!907 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !892)
!908 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !892)
!909 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !892)
!910 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !892)
!911 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !892)
!912 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !892)
!913 = !DILocation(line: 150, column: 3, scope: !749)
!914 = !DILocation(line: 0, scope: !808, inlinedAt: !915)
!915 = distinct !DILocation(line: 150, column: 3, scope: !749)
!916 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !915)
!917 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !915)
!918 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !915)
!919 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !915)
!920 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !915)
!921 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !915)
!922 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !915)
!923 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !915)
!924 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !915)
!925 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !915)
!926 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !915)
!927 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !915)
!928 = distinct !{!928, !926, !929, !669}
!929 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !915)
!930 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !915)
!931 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !915)
!932 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !915)
!933 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !915)
!934 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !915)
!935 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !915)
!936 = !DILocation(line: 151, column: 3, scope: !749)
!937 = !DILocation(line: 0, scope: !808, inlinedAt: !938)
!938 = distinct !DILocation(line: 151, column: 3, scope: !749)
!939 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !938)
!940 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !938)
!941 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !938)
!942 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !938)
!943 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !938)
!944 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !938)
!945 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !938)
!946 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !938)
!947 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !938)
!948 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !938)
!949 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !938)
!950 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !938)
!951 = distinct !{!951, !949, !952, !669}
!952 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !938)
!953 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !938)
!954 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !938)
!955 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !938)
!956 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !938)
!957 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !938)
!958 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !938)
!959 = !DILocation(line: 151, column: 3, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !139, line: 151, column: 3)
!961 = distinct !DILexicalBlock(scope: !749, file: !139, line: 151, column: 3)
!962 = !DILocation(line: 0, scope: !808, inlinedAt: !963)
!963 = distinct !DILocation(line: 151, column: 3, scope: !960)
!964 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !963)
!965 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !963)
!966 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !963)
!967 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !963)
!968 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !963)
!969 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !963)
!970 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !963)
!971 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !963)
!972 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !963)
!973 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !963)
!974 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !963)
!975 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !963)
!976 = distinct !{!976, !974, !977, !669}
!977 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !963)
!978 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !963)
!979 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !963)
!980 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !963)
!981 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !963)
!982 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !963)
!983 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !963)
!984 = !DILocation(line: 152, column: 3, scope: !749)
!985 = !DILocation(line: 0, scope: !808, inlinedAt: !986)
!986 = distinct !DILocation(line: 152, column: 3, scope: !749)
!987 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !986)
!988 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !986)
!989 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !986)
!990 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !986)
!991 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !986)
!992 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !986)
!993 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !986)
!994 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !986)
!995 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !986)
!996 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !986)
!997 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !986)
!998 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !986)
!999 = distinct !{!999, !997, !1000, !669}
!1000 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !986)
!1001 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !986)
!1002 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !986)
!1003 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !986)
!1004 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !986)
!1005 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !986)
!1006 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !986)
!1007 = !DILocation(line: 152, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !139, line: 152, column: 3)
!1009 = distinct !DILexicalBlock(scope: !749, file: !139, line: 152, column: 3)
!1010 = !DILocation(line: 0, scope: !808, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 152, column: 3, scope: !1008)
!1012 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1011)
!1013 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1011)
!1014 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1011)
!1015 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1011)
!1016 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1011)
!1017 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1011)
!1018 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1011)
!1019 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1011)
!1020 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1011)
!1021 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1011)
!1022 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1011)
!1023 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1011)
!1024 = distinct !{!1024, !1022, !1025, !669}
!1025 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1011)
!1026 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1011)
!1027 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1011)
!1028 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1011)
!1029 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1011)
!1030 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1011)
!1031 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1011)
!1032 = !DILocation(line: 153, column: 3, scope: !749)
!1033 = !DILocation(line: 0, scope: !808, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 153, column: 3, scope: !749)
!1035 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1034)
!1036 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1034)
!1037 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1034)
!1038 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1034)
!1039 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1034)
!1040 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1034)
!1041 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1034)
!1042 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1034)
!1043 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1034)
!1044 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1034)
!1045 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1034)
!1046 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1034)
!1047 = distinct !{!1047, !1045, !1048, !669}
!1048 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1034)
!1049 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1034)
!1050 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1034)
!1051 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1034)
!1052 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1034)
!1053 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1034)
!1054 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1034)
!1055 = !DILocation(line: 154, column: 3, scope: !749)
!1056 = !DILocation(line: 0, scope: !808, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 154, column: 3, scope: !749)
!1058 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1057)
!1059 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1057)
!1060 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1057)
!1061 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1057)
!1062 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1057)
!1063 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1057)
!1064 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1057)
!1065 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1057)
!1066 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1057)
!1067 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1057)
!1068 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1057)
!1069 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1057)
!1070 = distinct !{!1070, !1068, !1071, !669}
!1071 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1057)
!1072 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1057)
!1073 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1057)
!1074 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1057)
!1075 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1057)
!1076 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1057)
!1077 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1057)
!1078 = !DILocation(line: 154, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !139, line: 154, column: 3)
!1080 = distinct !DILexicalBlock(scope: !749, file: !139, line: 154, column: 3)
!1081 = !DILocation(line: 0, scope: !808, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 154, column: 3, scope: !1079)
!1083 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1082)
!1084 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1082)
!1085 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1082)
!1086 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1082)
!1087 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1082)
!1088 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1082)
!1089 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1082)
!1090 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1082)
!1091 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1082)
!1092 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1082)
!1093 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1082)
!1094 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1082)
!1095 = distinct !{!1095, !1093, !1096, !669}
!1096 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1082)
!1097 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1082)
!1098 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1082)
!1099 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1082)
!1100 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1082)
!1101 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1082)
!1102 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1082)
!1103 = !DILocation(line: 155, column: 3, scope: !749)
!1104 = !DILocation(line: 0, scope: !808, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 155, column: 3, scope: !749)
!1106 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1105)
!1107 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1105)
!1108 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1105)
!1109 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1105)
!1110 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1105)
!1111 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1105)
!1112 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1105)
!1113 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1105)
!1114 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1105)
!1115 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1105)
!1116 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1105)
!1117 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1105)
!1118 = distinct !{!1118, !1116, !1119, !669}
!1119 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1105)
!1120 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1105)
!1121 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1105)
!1122 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1105)
!1123 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1105)
!1124 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1105)
!1125 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1105)
!1126 = !DILocation(line: 156, column: 3, scope: !749)
!1127 = !DILocation(line: 0, scope: !808, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 156, column: 3, scope: !749)
!1129 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1128)
!1130 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1128)
!1131 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1128)
!1132 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1128)
!1133 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1128)
!1134 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1128)
!1135 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1128)
!1136 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1128)
!1137 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1128)
!1138 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1128)
!1139 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1128)
!1140 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1128)
!1141 = distinct !{!1141, !1139, !1142, !669}
!1142 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1128)
!1143 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1128)
!1144 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1128)
!1145 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1128)
!1146 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1128)
!1147 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1128)
!1148 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1128)
!1149 = !DILocation(line: 157, column: 3, scope: !749)
!1150 = !DILocation(line: 0, scope: !808, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 157, column: 3, scope: !749)
!1152 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1151)
!1153 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1151)
!1154 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1151)
!1155 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1151)
!1156 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1151)
!1157 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1151)
!1158 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1151)
!1159 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1151)
!1160 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1151)
!1161 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1151)
!1162 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1151)
!1163 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1151)
!1164 = distinct !{!1164, !1162, !1165, !669}
!1165 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1151)
!1166 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1151)
!1167 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1151)
!1168 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1151)
!1169 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1151)
!1170 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1151)
!1171 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1151)
!1172 = !DILocation(line: 157, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !139, line: 157, column: 3)
!1174 = distinct !DILexicalBlock(scope: !749, file: !139, line: 157, column: 3)
!1175 = !DILocation(line: 0, scope: !808, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 157, column: 3, scope: !1173)
!1177 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1176)
!1178 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1176)
!1179 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1176)
!1180 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1176)
!1181 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1176)
!1182 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1176)
!1183 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1176)
!1184 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1176)
!1185 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1176)
!1186 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1176)
!1187 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1176)
!1188 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1176)
!1189 = distinct !{!1189, !1187, !1190, !669}
!1190 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1176)
!1191 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1176)
!1192 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1176)
!1193 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1176)
!1194 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1176)
!1195 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1176)
!1196 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1176)
!1197 = !DILocation(line: 158, column: 3, scope: !749)
!1198 = !DILocation(line: 0, scope: !808, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 158, column: 3, scope: !749)
!1200 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1199)
!1201 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1199)
!1202 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1199)
!1203 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1199)
!1204 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1199)
!1205 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1199)
!1206 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1199)
!1207 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1199)
!1208 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1199)
!1209 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1199)
!1210 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1199)
!1211 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1199)
!1212 = distinct !{!1212, !1210, !1213, !669}
!1213 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1199)
!1214 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1199)
!1215 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1199)
!1216 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1199)
!1217 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1199)
!1218 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1199)
!1219 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1199)
!1220 = !DILocation(line: 158, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !139, line: 158, column: 3)
!1222 = distinct !DILexicalBlock(scope: !749, file: !139, line: 158, column: 3)
!1223 = !DILocation(line: 0, scope: !808, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 158, column: 3, scope: !1221)
!1225 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1224)
!1226 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1224)
!1227 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1224)
!1228 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1224)
!1229 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1224)
!1230 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1224)
!1231 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1224)
!1232 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1224)
!1233 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1224)
!1234 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1224)
!1235 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1224)
!1236 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1224)
!1237 = distinct !{!1237, !1235, !1238, !669}
!1238 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1224)
!1239 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1224)
!1240 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1224)
!1241 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1224)
!1242 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1224)
!1243 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1224)
!1244 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1224)
!1245 = !DILocation(line: 159, column: 3, scope: !749)
!1246 = !DILocation(line: 0, scope: !808, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 159, column: 3, scope: !749)
!1248 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1247)
!1249 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1247)
!1250 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1247)
!1251 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1247)
!1252 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1247)
!1253 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1247)
!1254 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1247)
!1255 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1247)
!1256 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1247)
!1257 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1247)
!1258 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1247)
!1259 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1247)
!1260 = distinct !{!1260, !1258, !1261, !669}
!1261 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1247)
!1262 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1247)
!1263 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1247)
!1264 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1247)
!1265 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1247)
!1266 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1247)
!1267 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1247)
!1268 = !DILocation(line: 160, column: 3, scope: !749)
!1269 = !DILocation(line: 0, scope: !808, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 160, column: 3, scope: !749)
!1271 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1270)
!1272 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1270)
!1273 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1270)
!1274 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1270)
!1275 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1270)
!1276 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1270)
!1277 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1270)
!1278 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1270)
!1279 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1270)
!1280 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1270)
!1281 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1270)
!1282 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1270)
!1283 = distinct !{!1283, !1281, !1284, !669}
!1284 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1270)
!1285 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1270)
!1286 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1270)
!1287 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1270)
!1288 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1270)
!1289 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1270)
!1290 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1270)
!1291 = !DILocation(line: 161, column: 3, scope: !749)
!1292 = !DILocation(line: 0, scope: !808, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 161, column: 3, scope: !749)
!1294 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1293)
!1295 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1293)
!1296 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1293)
!1297 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1293)
!1298 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1293)
!1299 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1293)
!1300 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1293)
!1301 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1293)
!1302 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1293)
!1303 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1293)
!1304 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1293)
!1305 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1293)
!1306 = distinct !{!1306, !1304, !1307, !669}
!1307 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1293)
!1308 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1293)
!1309 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1293)
!1310 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1293)
!1311 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1293)
!1312 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1293)
!1313 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1293)
!1314 = !DILocation(line: 161, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !139, line: 161, column: 3)
!1316 = distinct !DILexicalBlock(scope: !749, file: !139, line: 161, column: 3)
!1317 = !DILocation(line: 0, scope: !808, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 161, column: 3, scope: !1315)
!1319 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1318)
!1320 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1318)
!1321 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1318)
!1322 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1318)
!1323 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1318)
!1324 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1318)
!1325 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1318)
!1326 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1318)
!1327 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1318)
!1328 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1318)
!1329 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1318)
!1330 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1318)
!1331 = distinct !{!1331, !1329, !1332, !669}
!1332 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1318)
!1333 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1318)
!1334 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1318)
!1335 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1318)
!1336 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1318)
!1337 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1318)
!1338 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1318)
!1339 = !DILocation(line: 162, column: 3, scope: !749)
!1340 = !DILocation(line: 0, scope: !808, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 162, column: 3, scope: !749)
!1342 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1341)
!1343 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1341)
!1344 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1341)
!1345 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1341)
!1346 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1341)
!1347 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1341)
!1348 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1341)
!1349 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1341)
!1350 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1341)
!1351 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1341)
!1352 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1341)
!1353 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1341)
!1354 = distinct !{!1354, !1352, !1355, !669}
!1355 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1341)
!1356 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1341)
!1357 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1341)
!1358 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1341)
!1359 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1341)
!1360 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1341)
!1361 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1341)
!1362 = !DILocation(line: 162, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !139, line: 162, column: 3)
!1364 = distinct !DILexicalBlock(scope: !749, file: !139, line: 162, column: 3)
!1365 = !DILocation(line: 0, scope: !808, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 162, column: 3, scope: !1363)
!1367 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1366)
!1368 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1366)
!1369 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1366)
!1370 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1366)
!1371 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1366)
!1372 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1366)
!1373 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1366)
!1374 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1366)
!1375 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1366)
!1376 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1366)
!1377 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1366)
!1378 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1366)
!1379 = distinct !{!1379, !1377, !1380, !669}
!1380 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1366)
!1381 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1366)
!1382 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1366)
!1383 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1366)
!1384 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1366)
!1385 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1366)
!1386 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1366)
!1387 = !DILocation(line: 163, column: 3, scope: !749)
!1388 = !DILocation(line: 0, scope: !808, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 163, column: 3, scope: !749)
!1390 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1389)
!1391 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1389)
!1392 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1389)
!1393 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1389)
!1394 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1389)
!1395 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1389)
!1396 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1389)
!1397 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1389)
!1398 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1389)
!1399 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1389)
!1400 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1389)
!1401 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1389)
!1402 = distinct !{!1402, !1400, !1403, !669}
!1403 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1389)
!1404 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1389)
!1405 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1389)
!1406 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1389)
!1407 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1389)
!1408 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1389)
!1409 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1389)
!1410 = !DILocation(line: 163, column: 3, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !139, line: 163, column: 3)
!1412 = distinct !DILexicalBlock(scope: !749, file: !139, line: 163, column: 3)
!1413 = !DILocation(line: 0, scope: !808, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 163, column: 3, scope: !1411)
!1415 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1414)
!1416 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1414)
!1417 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1414)
!1418 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1414)
!1419 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1414)
!1420 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1414)
!1421 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1414)
!1422 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1414)
!1423 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1414)
!1424 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1414)
!1425 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1414)
!1426 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1414)
!1427 = distinct !{!1427, !1425, !1428, !669}
!1428 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1414)
!1429 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1414)
!1430 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1414)
!1431 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1414)
!1432 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1414)
!1433 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1414)
!1434 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1414)
!1435 = !DILocation(line: 164, column: 3, scope: !749)
!1436 = !DILocation(line: 0, scope: !808, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 164, column: 3, scope: !749)
!1438 = !DILocation(line: 88, column: 20, scope: !808, inlinedAt: !1437)
!1439 = !DILocation(line: 88, column: 27, scope: !808, inlinedAt: !1437)
!1440 = !DILocation(line: 89, column: 26, scope: !808, inlinedAt: !1437)
!1441 = !DILocation(line: 90, column: 22, scope: !808, inlinedAt: !1437)
!1442 = !DILocation(line: 90, column: 20, scope: !808, inlinedAt: !1437)
!1443 = !DILocation(line: 91, column: 3, scope: !808, inlinedAt: !1437)
!1444 = !DILocation(line: 91, column: 14, scope: !808, inlinedAt: !1437)
!1445 = !DILocation(line: 92, column: 11, scope: !808, inlinedAt: !1437)
!1446 = !DILocation(line: 92, column: 10, scope: !808, inlinedAt: !1437)
!1447 = !DILocation(line: 92, column: 15, scope: !808, inlinedAt: !1437)
!1448 = !DILocation(line: 92, column: 3, scope: !808, inlinedAt: !1437)
!1449 = !DILocation(line: 93, column: 8, scope: !808, inlinedAt: !1437)
!1450 = distinct !{!1450, !1448, !1451, !669}
!1451 = !DILocation(line: 93, column: 10, scope: !808, inlinedAt: !1437)
!1452 = !DILocation(line: 94, column: 3, scope: !808, inlinedAt: !1437)
!1453 = !DILocation(line: 95, column: 18, scope: !808, inlinedAt: !1437)
!1454 = !DILocation(line: 96, column: 7, scope: !808, inlinedAt: !1437)
!1455 = !DILocation(line: 97, column: 6, scope: !837, inlinedAt: !1437)
!1456 = !DILocation(line: 97, column: 15, scope: !837, inlinedAt: !1437)
!1457 = !DILocation(line: 97, column: 5, scope: !837, inlinedAt: !1437)
!1458 = !DILocation(line: 167, column: 3, scope: !749)
!1459 = !DILocation(line: 0, scope: !773, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 167, column: 3, scope: !749)
!1461 = !DILocation(line: 110, column: 1, scope: !773, inlinedAt: !1460)
!1462 = !DILocation(line: 0, scope: !773, inlinedAt: !783)
!1463 = !DILocation(line: 168, column: 3, scope: !749)
!1464 = !DILocation(line: 0, scope: !761, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 168, column: 3, scope: !749)
!1466 = !DILocation(line: 111, column: 1, scope: !761, inlinedAt: !1465)
!1467 = !DILocation(line: 0, scope: !761, inlinedAt: !771)
!1468 = !DILocation(line: 169, column: 3, scope: !749)
!1469 = !DILocation(line: 0, scope: !785, inlinedAt: !795)
!1470 = !DILocation(line: 0, scope: !785, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 169, column: 3, scope: !749)
!1472 = !DILocation(line: 112, column: 1, scope: !785, inlinedAt: !1471)
!1473 = !DILocation(line: 172, column: 1, scope: !749)
!1474 = !DILocation(line: 171, column: 3, scope: !749)
!1475 = !DISubprogram(name: "bindtextdomain", scope: !690, file: !690, line: 86, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!42, !9, !9}
!1478 = !DISubprogram(name: "textdomain", scope: !690, file: !690, line: 82, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!42, !9}
!1481 = !DISubprogram(name: "atexit", scope: !1482, file: !1482, line: 595, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1482 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!18, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null}
!1488 = !DISubprogram(name: "puts", scope: !158, file: !158, line: 637, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!18, !9}
!1491 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !3, file: !3, line: 51, type: !639, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1492 = !{!1493}
!1493 = !DILocalVariable(name: "file", arg: 1, scope: !1491, file: !3, line: 51, type: !9)
!1494 = !DILocation(line: 0, scope: !1491)
!1495 = !DILocation(line: 53, column: 13, scope: !1491)
!1496 = !DILocation(line: 54, column: 1, scope: !1491)
!1497 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !3, file: !3, line: 88, type: !1498, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !8}
!1500 = !{!1501}
!1501 = !DILocalVariable(name: "ignore", arg: 1, scope: !1497, file: !3, line: 88, type: !8)
!1502 = !DILocation(line: 0, scope: !1497)
!1503 = !DILocation(line: 90, column: 16, scope: !1497)
!1504 = !{!1505, !1505, i64 0}
!1505 = !{!"_Bool", !629, i64 0}
!1506 = !DILocation(line: 91, column: 1, scope: !1497)
!1507 = distinct !DISubprogram(name: "close_stdout", scope: !3, file: !3, line: 117, type: !1486, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1508 = !{!1509}
!1509 = !DILocalVariable(name: "write_error", scope: !1510, file: !3, line: 122, type: !9)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 121, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 119, column: 7)
!1512 = !DILocation(line: 119, column: 21, scope: !1511)
!1513 = !DILocation(line: 119, column: 7, scope: !1511)
!1514 = !DILocation(line: 119, column: 29, scope: !1511)
!1515 = !DILocation(line: 120, column: 7, scope: !1511)
!1516 = !DILocation(line: 120, column: 12, scope: !1511)
!1517 = !{i8 0, i8 2}
!1518 = !DILocation(line: 120, column: 25, scope: !1511)
!1519 = !DILocation(line: 120, column: 28, scope: !1511)
!1520 = !{!1521, !1521, i64 0}
!1521 = !{!"int", !629, i64 0}
!1522 = !DILocation(line: 120, column: 34, scope: !1511)
!1523 = !DILocation(line: 119, column: 7, scope: !1507)
!1524 = !DILocation(line: 122, column: 33, scope: !1510)
!1525 = !DILocation(line: 0, scope: !1510)
!1526 = !DILocation(line: 123, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 123, column: 11)
!1528 = !DILocation(line: 0, scope: !1527)
!1529 = !DILocation(line: 123, column: 11, scope: !1510)
!1530 = !DILocation(line: 124, column: 36, scope: !1527)
!1531 = !DILocation(line: 124, column: 9, scope: !1527)
!1532 = !DILocation(line: 127, column: 9, scope: !1527)
!1533 = !DILocation(line: 129, column: 14, scope: !1510)
!1534 = !DILocation(line: 129, column: 7, scope: !1510)
!1535 = !DILocation(line: 134, column: 42, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 134, column: 7)
!1537 = !DILocation(line: 134, column: 28, scope: !1536)
!1538 = !DILocation(line: 134, column: 50, scope: !1536)
!1539 = !DILocation(line: 134, column: 7, scope: !1507)
!1540 = !DILocation(line: 135, column: 12, scope: !1536)
!1541 = !DILocation(line: 135, column: 5, scope: !1536)
!1542 = !DILocation(line: 136, column: 1, scope: !1507)
!1543 = !DISubprogram(name: "error", scope: !1544, file: !1544, line: 52, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1544 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !18, !18, !9, null}
!1547 = distinct !DISubprogram(name: "dtoastr", scope: !1548, file: !1548, line: 101, type: !1549, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1551)
!1548 = !DIFile(filename: "./lib/ftoastr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!18, !42, !86, !18, !18, !764}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1560, !1561, !1562, !1563}
!1552 = !DILocalVariable(name: "buf", arg: 1, scope: !1547, file: !1548, line: 101, type: !42)
!1553 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1547, file: !1548, line: 101, type: !86)
!1554 = !DILocalVariable(name: "flags", arg: 3, scope: !1547, file: !1548, line: 101, type: !18)
!1555 = !DILocalVariable(name: "width", arg: 4, scope: !1547, file: !1548, line: 101, type: !18)
!1556 = !DILocalVariable(name: "x", arg: 5, scope: !1547, file: !1548, line: 101, type: !764)
!1557 = !DILocalVariable(name: "promoted_x", scope: !1547, file: !1548, line: 111, type: !764)
!1558 = !DILocalVariable(name: "format", scope: !1547, file: !1548, line: 112, type: !1559)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 88, elements: !128)
!1560 = !DILocalVariable(name: "abs_x", scope: !1547, file: !1548, line: 113, type: !764)
!1561 = !DILocalVariable(name: "prec", scope: !1547, file: !1548, line: 114, type: !18)
!1562 = !DILocalVariable(name: "p", scope: !1547, file: !1548, line: 116, type: !42)
!1563 = !DILocalVariable(name: "n", scope: !1564, file: !1548, line: 134, type: !18)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !1548, line: 133, column: 5)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !1548, line: 132, column: 3)
!1566 = distinct !DILexicalBlock(scope: !1547, file: !1548, line: 132, column: 3)
!1567 = !DILocation(line: 0, scope: !1547)
!1568 = !DILocation(line: 112, column: 3, scope: !1547)
!1569 = !DILocation(line: 112, column: 8, scope: !1547)
!1570 = !DILocation(line: 113, column: 19, scope: !1547)
!1571 = !DILocation(line: 113, column: 17, scope: !1547)
!1572 = !DILocation(line: 117, column: 5, scope: !1547)
!1573 = !DILocation(line: 117, column: 8, scope: !1547)
!1574 = !DILocation(line: 120, column: 6, scope: !1547)
!1575 = !DILocation(line: 120, column: 25, scope: !1547)
!1576 = !DILocation(line: 120, column: 15, scope: !1547)
!1577 = !DILocation(line: 121, column: 6, scope: !1547)
!1578 = !DILocation(line: 121, column: 51, scope: !1547)
!1579 = !DILocation(line: 121, column: 15, scope: !1547)
!1580 = !DILocation(line: 122, column: 6, scope: !1547)
!1581 = !DILocation(line: 122, column: 51, scope: !1547)
!1582 = !DILocation(line: 122, column: 15, scope: !1547)
!1583 = !DILocation(line: 123, column: 6, scope: !1547)
!1584 = !DILocation(line: 123, column: 51, scope: !1547)
!1585 = !DILocation(line: 123, column: 15, scope: !1547)
!1586 = !DILocation(line: 125, column: 5, scope: !1547)
!1587 = !DILocation(line: 125, column: 8, scope: !1547)
!1588 = !DILocation(line: 126, column: 5, scope: !1547)
!1589 = !DILocation(line: 126, column: 8, scope: !1547)
!1590 = !DILocation(line: 127, column: 5, scope: !1547)
!1591 = !DILocation(line: 127, column: 8, scope: !1547)
!1592 = !DILocation(line: 129, column: 16, scope: !1547)
!1593 = !DILocation(line: 129, column: 10, scope: !1547)
!1594 = !DILocation(line: 129, column: 5, scope: !1547)
!1595 = !DILocation(line: 129, column: 8, scope: !1547)
!1596 = !DILocation(line: 130, column: 6, scope: !1547)
!1597 = !DILocation(line: 132, column: 21, scope: !1566)
!1598 = !DILocation(line: 132, column: 15, scope: !1566)
!1599 = !DILocation(line: 134, column: 15, scope: !1564)
!1600 = !DILocation(line: 0, scope: !1564)
!1601 = !DILocation(line: 135, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1564, file: !1548, line: 135, column: 11)
!1603 = !DILocation(line: 136, column: 11, scope: !1602)
!1604 = !DILocation(line: 137, column: 15, scope: !1602)
!1605 = !DILocation(line: 137, column: 17, scope: !1602)
!1606 = !DILocation(line: 137, column: 27, scope: !1602)
!1607 = !DILocation(line: 137, column: 30, scope: !1602)
!1608 = !DILocation(line: 137, column: 49, scope: !1602)
!1609 = !DILocation(line: 135, column: 11, scope: !1564)
!1610 = !DILocation(line: 132, column: 56, scope: !1565)
!1611 = distinct !{!1611, !1612, !1613}
!1612 = !DILocation(line: 132, column: 3, scope: !1566)
!1613 = !DILocation(line: 139, column: 5, scope: !1566)
!1614 = !DILocation(line: 140, column: 1, scope: !1547)
!1615 = distinct !DISubprogram(name: "ftoastr", scope: !175, file: !175, line: 101, type: !1616, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!18, !42, !86, !18, !18, !776}
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1619 = !DILocalVariable(name: "buf", arg: 1, scope: !1615, file: !175, line: 101, type: !42)
!1620 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1615, file: !175, line: 101, type: !86)
!1621 = !DILocalVariable(name: "flags", arg: 3, scope: !1615, file: !175, line: 101, type: !18)
!1622 = !DILocalVariable(name: "width", arg: 4, scope: !1615, file: !175, line: 101, type: !18)
!1623 = !DILocalVariable(name: "x", arg: 5, scope: !1615, file: !175, line: 101, type: !776)
!1624 = !DILocalVariable(name: "promoted_x", scope: !1615, file: !175, line: 111, type: !764)
!1625 = !DILocalVariable(name: "format", scope: !1615, file: !175, line: 112, type: !1559)
!1626 = !DILocalVariable(name: "abs_x", scope: !1615, file: !175, line: 113, type: !776)
!1627 = !DILocalVariable(name: "prec", scope: !1615, file: !175, line: 114, type: !18)
!1628 = !DILocalVariable(name: "p", scope: !1615, file: !175, line: 116, type: !42)
!1629 = !DILocalVariable(name: "n", scope: !1630, file: !175, line: 134, type: !18)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !175, line: 133, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !175, line: 132, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1615, file: !175, line: 132, column: 3)
!1633 = !DILocation(line: 0, scope: !1615)
!1634 = !DILocation(line: 111, column: 31, scope: !1615)
!1635 = !DILocation(line: 112, column: 3, scope: !1615)
!1636 = !DILocation(line: 112, column: 8, scope: !1615)
!1637 = !DILocation(line: 113, column: 19, scope: !1615)
!1638 = !DILocation(line: 113, column: 17, scope: !1615)
!1639 = !DILocation(line: 117, column: 5, scope: !1615)
!1640 = !DILocation(line: 117, column: 8, scope: !1615)
!1641 = !DILocation(line: 120, column: 6, scope: !1615)
!1642 = !DILocation(line: 120, column: 25, scope: !1615)
!1643 = !DILocation(line: 120, column: 15, scope: !1615)
!1644 = !DILocation(line: 121, column: 6, scope: !1615)
!1645 = !DILocation(line: 121, column: 51, scope: !1615)
!1646 = !DILocation(line: 121, column: 15, scope: !1615)
!1647 = !DILocation(line: 122, column: 6, scope: !1615)
!1648 = !DILocation(line: 122, column: 51, scope: !1615)
!1649 = !DILocation(line: 122, column: 15, scope: !1615)
!1650 = !DILocation(line: 123, column: 6, scope: !1615)
!1651 = !DILocation(line: 123, column: 51, scope: !1615)
!1652 = !DILocation(line: 123, column: 15, scope: !1615)
!1653 = !DILocation(line: 125, column: 5, scope: !1615)
!1654 = !DILocation(line: 125, column: 8, scope: !1615)
!1655 = !DILocation(line: 126, column: 5, scope: !1615)
!1656 = !DILocation(line: 126, column: 8, scope: !1615)
!1657 = !DILocation(line: 127, column: 5, scope: !1615)
!1658 = !DILocation(line: 127, column: 8, scope: !1615)
!1659 = !DILocation(line: 129, column: 16, scope: !1615)
!1660 = !DILocation(line: 129, column: 10, scope: !1615)
!1661 = !DILocation(line: 129, column: 5, scope: !1615)
!1662 = !DILocation(line: 129, column: 8, scope: !1615)
!1663 = !DILocation(line: 130, column: 6, scope: !1615)
!1664 = !DILocation(line: 132, column: 21, scope: !1632)
!1665 = !DILocation(line: 132, column: 15, scope: !1632)
!1666 = !DILocation(line: 134, column: 15, scope: !1630)
!1667 = !DILocation(line: 0, scope: !1630)
!1668 = !DILocation(line: 135, column: 13, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1630, file: !175, line: 135, column: 11)
!1670 = !DILocation(line: 136, column: 11, scope: !1669)
!1671 = !DILocation(line: 137, column: 15, scope: !1669)
!1672 = !DILocation(line: 137, column: 17, scope: !1669)
!1673 = !DILocation(line: 137, column: 27, scope: !1669)
!1674 = !DILocation(line: 137, column: 30, scope: !1669)
!1675 = !DILocation(line: 137, column: 49, scope: !1669)
!1676 = !DILocation(line: 135, column: 11, scope: !1630)
!1677 = !DILocation(line: 132, column: 56, scope: !1631)
!1678 = distinct !{!1678, !1679, !1680}
!1679 = !DILocation(line: 132, column: 3, scope: !1632)
!1680 = !DILocation(line: 139, column: 5, scope: !1632)
!1681 = !DILocation(line: 140, column: 1, scope: !1615)
!1682 = distinct !DISubprogram(name: "ldtoastr", scope: !1548, file: !1548, line: 101, type: !1683, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!18, !42, !86, !18, !18, !788}
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1686 = !DILocalVariable(name: "buf", arg: 1, scope: !1682, file: !1548, line: 101, type: !42)
!1687 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1682, file: !1548, line: 101, type: !86)
!1688 = !DILocalVariable(name: "flags", arg: 3, scope: !1682, file: !1548, line: 101, type: !18)
!1689 = !DILocalVariable(name: "width", arg: 4, scope: !1682, file: !1548, line: 101, type: !18)
!1690 = !DILocalVariable(name: "x", arg: 5, scope: !1682, file: !1548, line: 101, type: !788)
!1691 = !DILocalVariable(name: "promoted_x", scope: !1682, file: !1548, line: 111, type: !788)
!1692 = !DILocalVariable(name: "format", scope: !1682, file: !1548, line: 112, type: !1559)
!1693 = !DILocalVariable(name: "abs_x", scope: !1682, file: !1548, line: 113, type: !788)
!1694 = !DILocalVariable(name: "prec", scope: !1682, file: !1548, line: 114, type: !18)
!1695 = !DILocalVariable(name: "p", scope: !1682, file: !1548, line: 116, type: !42)
!1696 = !DILocalVariable(name: "n", scope: !1697, file: !1548, line: 134, type: !18)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1548, line: 133, column: 5)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1548, line: 132, column: 3)
!1699 = distinct !DILexicalBlock(scope: !1682, file: !1548, line: 132, column: 3)
!1700 = !DILocation(line: 111, column: 18, scope: !1682)
!1701 = !DILocation(line: 113, column: 9, scope: !1682)
!1702 = !DILocation(line: 0, scope: !1682)
!1703 = !DILocation(line: 112, column: 3, scope: !1682)
!1704 = !DILocation(line: 112, column: 8, scope: !1682)
!1705 = !DILocation(line: 113, column: 19, scope: !1682)
!1706 = !DILocation(line: 113, column: 17, scope: !1682)
!1707 = !DILocation(line: 117, column: 5, scope: !1682)
!1708 = !DILocation(line: 117, column: 8, scope: !1682)
!1709 = !DILocation(line: 120, column: 6, scope: !1682)
!1710 = !DILocation(line: 120, column: 25, scope: !1682)
!1711 = !DILocation(line: 120, column: 15, scope: !1682)
!1712 = !DILocation(line: 121, column: 6, scope: !1682)
!1713 = !DILocation(line: 121, column: 51, scope: !1682)
!1714 = !DILocation(line: 121, column: 15, scope: !1682)
!1715 = !DILocation(line: 122, column: 6, scope: !1682)
!1716 = !DILocation(line: 122, column: 51, scope: !1682)
!1717 = !DILocation(line: 122, column: 15, scope: !1682)
!1718 = !DILocation(line: 123, column: 6, scope: !1682)
!1719 = !DILocation(line: 123, column: 51, scope: !1682)
!1720 = !DILocation(line: 123, column: 15, scope: !1682)
!1721 = !DILocation(line: 125, column: 5, scope: !1682)
!1722 = !DILocation(line: 125, column: 8, scope: !1682)
!1723 = !DILocation(line: 126, column: 5, scope: !1682)
!1724 = !DILocation(line: 126, column: 8, scope: !1682)
!1725 = !DILocation(line: 127, column: 5, scope: !1682)
!1726 = !DILocation(line: 127, column: 8, scope: !1682)
!1727 = !DILocation(line: 128, column: 6, scope: !1682)
!1728 = !DILocation(line: 128, column: 15, scope: !1682)
!1729 = !DILocation(line: 129, column: 16, scope: !1682)
!1730 = !DILocation(line: 129, column: 10, scope: !1682)
!1731 = !DILocation(line: 129, column: 5, scope: !1682)
!1732 = !DILocation(line: 129, column: 8, scope: !1682)
!1733 = !DILocation(line: 130, column: 6, scope: !1682)
!1734 = !DILocation(line: 132, column: 21, scope: !1699)
!1735 = !DILocation(line: 132, column: 15, scope: !1699)
!1736 = !DILocation(line: 134, column: 15, scope: !1697)
!1737 = !DILocation(line: 0, scope: !1697)
!1738 = !DILocation(line: 135, column: 13, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1697, file: !1548, line: 135, column: 11)
!1740 = !DILocation(line: 136, column: 11, scope: !1739)
!1741 = !DILocation(line: 137, column: 15, scope: !1739)
!1742 = !DILocation(line: 137, column: 17, scope: !1739)
!1743 = !DILocation(line: 137, column: 27, scope: !1739)
!1744 = !DILocation(line: 137, column: 30, scope: !1739)
!1745 = !DILocation(line: 137, column: 49, scope: !1739)
!1746 = !DILocation(line: 135, column: 11, scope: !1697)
!1747 = !DILocation(line: 132, column: 56, scope: !1698)
!1748 = distinct !{!1748, !1749, !1750}
!1749 = !DILocation(line: 132, column: 3, scope: !1699)
!1750 = !DILocation(line: 139, column: 5, scope: !1699)
!1751 = !DILocation(line: 140, column: 1, scope: !1682)
!1752 = distinct !DISubprogram(name: "parse_long_options", scope: !22, file: !22, line: 45, type: !1753, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1756)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !18, !752, !9, !9, !9, !1755, null}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1757 = !DILocalVariable(name: "argc", arg: 1, scope: !1752, file: !22, line: 45, type: !18)
!1758 = !DILocalVariable(name: "argv", arg: 2, scope: !1752, file: !22, line: 46, type: !752)
!1759 = !DILocalVariable(name: "command_name", arg: 3, scope: !1752, file: !22, line: 47, type: !9)
!1760 = !DILocalVariable(name: "package", arg: 4, scope: !1752, file: !22, line: 48, type: !9)
!1761 = !DILocalVariable(name: "version", arg: 5, scope: !1752, file: !22, line: 49, type: !9)
!1762 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1752, file: !22, line: 50, type: !1755)
!1763 = !DILocalVariable(name: "c", scope: !1752, file: !22, line: 53, type: !18)
!1764 = !DILocalVariable(name: "saved_opterr", scope: !1752, file: !22, line: 54, type: !18)
!1765 = !DILocalVariable(name: "authors", scope: !1766, file: !22, line: 72, type: !1770)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !22, line: 71, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !22, line: 65, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !22, line: 63, column: 5)
!1769 = distinct !DILexicalBlock(scope: !1752, file: !22, line: 61, column: 7)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !158, line: 52, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1772, line: 32, baseType: !1773)
!1772 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !22, baseType: !1774)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 192, elements: !724)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1775, file: !22, line: 72, baseType: !51, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1775, file: !22, line: 72, baseType: !51, size: 32, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1775, file: !22, line: 72, baseType: !41, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1775, file: !22, line: 72, baseType: !41, size: 64, offset: 128)
!1781 = !DILocation(line: 0, scope: !1752)
!1782 = !DILocation(line: 56, column: 18, scope: !1752)
!1783 = !DILocation(line: 59, column: 10, scope: !1752)
!1784 = !DILocation(line: 61, column: 12, scope: !1769)
!1785 = !DILocation(line: 62, column: 7, scope: !1769)
!1786 = !DILocation(line: 62, column: 15, scope: !1769)
!1787 = !DILocation(line: 61, column: 7, scope: !1752)
!1788 = !DILocation(line: 67, column: 11, scope: !1767)
!1789 = !DILocation(line: 68, column: 11, scope: !1767)
!1790 = !DILocation(line: 72, column: 13, scope: !1766)
!1791 = !DILocation(line: 72, column: 21, scope: !1766)
!1792 = !DILocation(line: 73, column: 13, scope: !1766)
!1793 = !DILocation(line: 74, column: 29, scope: !1766)
!1794 = !DILocation(line: 74, column: 13, scope: !1766)
!1795 = !DILocation(line: 75, column: 13, scope: !1766)
!1796 = !DILocation(line: 85, column: 10, scope: !1752)
!1797 = !DILocation(line: 89, column: 10, scope: !1752)
!1798 = !DILocation(line: 90, column: 1, scope: !1752)
!1799 = !DISubprogram(name: "getopt_long", scope: !27, file: !27, line: 66, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!18, !18, !1802, !9, !1804, !32}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1805 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !22, file: !22, line: 98, type: !1806, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !18, !752, !9, !9, !9, !8, !1755, null}
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819}
!1809 = !DILocalVariable(name: "argc", arg: 1, scope: !1805, file: !22, line: 98, type: !18)
!1810 = !DILocalVariable(name: "argv", arg: 2, scope: !1805, file: !22, line: 99, type: !752)
!1811 = !DILocalVariable(name: "command_name", arg: 3, scope: !1805, file: !22, line: 100, type: !9)
!1812 = !DILocalVariable(name: "package", arg: 4, scope: !1805, file: !22, line: 101, type: !9)
!1813 = !DILocalVariable(name: "version", arg: 5, scope: !1805, file: !22, line: 102, type: !9)
!1814 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1805, file: !22, line: 103, type: !8)
!1815 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1805, file: !22, line: 104, type: !1755)
!1816 = !DILocalVariable(name: "c", scope: !1805, file: !22, line: 107, type: !18)
!1817 = !DILocalVariable(name: "saved_opterr", scope: !1805, file: !22, line: 108, type: !18)
!1818 = !DILocalVariable(name: "optstring", scope: !1805, file: !22, line: 113, type: !9)
!1819 = !DILocalVariable(name: "authors", scope: !1820, file: !22, line: 125, type: !1770)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !22, line: 124, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !22, line: 118, column: 9)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !22, line: 116, column: 5)
!1823 = distinct !DILexicalBlock(scope: !1805, file: !22, line: 115, column: 7)
!1824 = !DILocation(line: 0, scope: !1805)
!1825 = !DILocation(line: 108, column: 22, scope: !1805)
!1826 = !DILocation(line: 111, column: 10, scope: !1805)
!1827 = !DILocation(line: 113, column: 27, scope: !1805)
!1828 = !DILocation(line: 115, column: 12, scope: !1823)
!1829 = !DILocation(line: 115, column: 7, scope: !1805)
!1830 = !DILocation(line: 125, column: 13, scope: !1820)
!1831 = !DILocation(line: 125, column: 21, scope: !1820)
!1832 = !DILocation(line: 126, column: 13, scope: !1820)
!1833 = !DILocation(line: 127, column: 29, scope: !1820)
!1834 = !DILocation(line: 127, column: 13, scope: !1820)
!1835 = !DILocation(line: 128, column: 13, scope: !1820)
!1836 = !DILocation(line: 132, column: 26, scope: !1821)
!1837 = !DILocation(line: 133, column: 11, scope: !1821)
!1838 = !DILocation(line: 0, scope: !1821)
!1839 = !DILocation(line: 138, column: 10, scope: !1805)
!1840 = !DILocation(line: 139, column: 1, scope: !1805)
!1841 = distinct !DISubprogram(name: "set_program_name", scope: !39, file: !39, line: 39, type: !639, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1842)
!1842 = !{!1843, !1844, !1845}
!1843 = !DILocalVariable(name: "argv0", arg: 1, scope: !1841, file: !39, line: 39, type: !9)
!1844 = !DILocalVariable(name: "slash", scope: !1841, file: !39, line: 46, type: !9)
!1845 = !DILocalVariable(name: "base", scope: !1841, file: !39, line: 47, type: !9)
!1846 = !DILocation(line: 0, scope: !1841)
!1847 = !DILocation(line: 51, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !39, line: 51, column: 7)
!1849 = !DILocation(line: 51, column: 7, scope: !1841)
!1850 = !DILocation(line: 55, column: 14, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !39, line: 52, column: 5)
!1852 = !DILocation(line: 54, column: 7, scope: !1851)
!1853 = !DILocation(line: 56, column: 7, scope: !1851)
!1854 = !DILocation(line: 59, column: 11, scope: !1841)
!1855 = !DILocation(line: 60, column: 17, scope: !1841)
!1856 = !DILocation(line: 60, column: 11, scope: !1841)
!1857 = !DILocation(line: 61, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1841, file: !39, line: 61, column: 7)
!1859 = !DILocation(line: 61, column: 20, scope: !1858)
!1860 = !DILocation(line: 61, column: 25, scope: !1858)
!1861 = !DILocation(line: 61, column: 42, scope: !1858)
!1862 = !DILocation(line: 61, column: 28, scope: !1858)
!1863 = !DILocation(line: 61, column: 61, scope: !1858)
!1864 = !DILocation(line: 61, column: 7, scope: !1841)
!1865 = !DILocation(line: 64, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !39, line: 64, column: 11)
!1867 = distinct !DILexicalBlock(scope: !1858, file: !39, line: 62, column: 5)
!1868 = !DILocation(line: 64, column: 36, scope: !1866)
!1869 = !DILocation(line: 64, column: 11, scope: !1867)
!1870 = !DILocation(line: 66, column: 24, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !39, line: 65, column: 9)
!1872 = !DILocation(line: 70, column: 41, scope: !1871)
!1873 = !DILocation(line: 72, column: 9, scope: !1871)
!1874 = !DILocation(line: 84, column: 16, scope: !1841)
!1875 = !DILocation(line: 90, column: 27, scope: !1841)
!1876 = !DILocation(line: 92, column: 1, scope: !1841)
!1877 = distinct !DISubprogram(name: "clone_quoting_options", scope: !47, file: !47, line: 122, type: !1878, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1881)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1881 = !{!1882, !1883, !1884}
!1882 = !DILocalVariable(name: "o", arg: 1, scope: !1877, file: !47, line: 122, type: !1880)
!1883 = !DILocalVariable(name: "e", scope: !1877, file: !47, line: 124, type: !18)
!1884 = !DILocalVariable(name: "p", scope: !1877, file: !47, line: 125, type: !1880)
!1885 = !DILocation(line: 0, scope: !1877)
!1886 = !DILocation(line: 124, column: 11, scope: !1877)
!1887 = !DILocation(line: 125, column: 40, scope: !1877)
!1888 = !DILocation(line: 125, column: 31, scope: !1877)
!1889 = !DILocation(line: 127, column: 9, scope: !1877)
!1890 = !DILocation(line: 128, column: 3, scope: !1877)
!1891 = distinct !DISubprogram(name: "get_quoting_style", scope: !47, file: !47, line: 133, type: !1892, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1896)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!49, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "o", arg: 1, scope: !1891, file: !47, line: 133, type: !1894)
!1898 = !DILocation(line: 0, scope: !1891)
!1899 = !DILocation(line: 135, column: 11, scope: !1891)
!1900 = !DILocation(line: 135, column: 46, scope: !1891)
!1901 = !{!1902, !629, i64 0}
!1902 = !{!"quoting_options", !629, i64 0, !1521, i64 4, !629, i64 8, !628, i64 40, !628, i64 48}
!1903 = !DILocation(line: 135, column: 3, scope: !1891)
!1904 = distinct !DISubprogram(name: "set_quoting_style", scope: !47, file: !47, line: 141, type: !1905, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1880, !49}
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "o", arg: 1, scope: !1904, file: !47, line: 141, type: !1880)
!1909 = !DILocalVariable(name: "s", arg: 2, scope: !1904, file: !47, line: 141, type: !49)
!1910 = !DILocation(line: 0, scope: !1904)
!1911 = !DILocation(line: 143, column: 4, scope: !1904)
!1912 = !DILocation(line: 143, column: 39, scope: !1904)
!1913 = !DILocation(line: 143, column: 45, scope: !1904)
!1914 = !DILocation(line: 144, column: 1, scope: !1904)
!1915 = distinct !DISubprogram(name: "set_char_quoting", scope: !47, file: !47, line: 152, type: !1916, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!18, !1880, !11, !18}
!1918 = !{!1919, !1920, !1921, !1922, !1924, !1926, !1927}
!1919 = !DILocalVariable(name: "o", arg: 1, scope: !1915, file: !47, line: 152, type: !1880)
!1920 = !DILocalVariable(name: "c", arg: 2, scope: !1915, file: !47, line: 152, type: !11)
!1921 = !DILocalVariable(name: "i", arg: 3, scope: !1915, file: !47, line: 152, type: !18)
!1922 = !DILocalVariable(name: "uc", scope: !1915, file: !47, line: 154, type: !1923)
!1923 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1924 = !DILocalVariable(name: "p", scope: !1915, file: !47, line: 155, type: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1926 = !DILocalVariable(name: "shift", scope: !1915, file: !47, line: 157, type: !18)
!1927 = !DILocalVariable(name: "r", scope: !1915, file: !47, line: 158, type: !18)
!1928 = !DILocation(line: 0, scope: !1915)
!1929 = !DILocation(line: 156, column: 6, scope: !1915)
!1930 = !DILocation(line: 156, column: 62, scope: !1915)
!1931 = !DILocation(line: 156, column: 57, scope: !1915)
!1932 = !DILocation(line: 157, column: 15, scope: !1915)
!1933 = !DILocation(line: 158, column: 12, scope: !1915)
!1934 = !DILocation(line: 158, column: 15, scope: !1915)
!1935 = !DILocation(line: 158, column: 25, scope: !1915)
!1936 = !DILocation(line: 159, column: 13, scope: !1915)
!1937 = !DILocation(line: 159, column: 18, scope: !1915)
!1938 = !DILocation(line: 159, column: 23, scope: !1915)
!1939 = !DILocation(line: 159, column: 6, scope: !1915)
!1940 = !DILocation(line: 160, column: 3, scope: !1915)
!1941 = distinct !DISubprogram(name: "set_quoting_flags", scope: !47, file: !47, line: 168, type: !1942, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!18, !1880, !18}
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "o", arg: 1, scope: !1941, file: !47, line: 168, type: !1880)
!1946 = !DILocalVariable(name: "i", arg: 2, scope: !1941, file: !47, line: 168, type: !18)
!1947 = !DILocalVariable(name: "r", scope: !1941, file: !47, line: 170, type: !18)
!1948 = !DILocation(line: 0, scope: !1941)
!1949 = !DILocation(line: 171, column: 8, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !47, line: 171, column: 7)
!1951 = !DILocation(line: 171, column: 7, scope: !1941)
!1952 = !DILocation(line: 173, column: 10, scope: !1941)
!1953 = !{!1902, !1521, i64 4}
!1954 = !DILocation(line: 174, column: 12, scope: !1941)
!1955 = !DILocation(line: 175, column: 3, scope: !1941)
!1956 = distinct !DISubprogram(name: "set_custom_quoting", scope: !47, file: !47, line: 179, type: !1957, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1880, !9, !9}
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "o", arg: 1, scope: !1956, file: !47, line: 179, type: !1880)
!1961 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1956, file: !47, line: 180, type: !9)
!1962 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1956, file: !47, line: 180, type: !9)
!1963 = !DILocation(line: 0, scope: !1956)
!1964 = !DILocation(line: 182, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !47, line: 182, column: 7)
!1966 = !DILocation(line: 182, column: 7, scope: !1956)
!1967 = !DILocation(line: 184, column: 6, scope: !1956)
!1968 = !DILocation(line: 184, column: 12, scope: !1956)
!1969 = !DILocation(line: 185, column: 8, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1956, file: !47, line: 185, column: 7)
!1971 = !DILocation(line: 185, column: 19, scope: !1970)
!1972 = !DILocation(line: 186, column: 5, scope: !1970)
!1973 = !DILocation(line: 187, column: 6, scope: !1956)
!1974 = !DILocation(line: 187, column: 17, scope: !1956)
!1975 = !{!1902, !628, i64 40}
!1976 = !DILocation(line: 188, column: 6, scope: !1956)
!1977 = !DILocation(line: 188, column: 18, scope: !1956)
!1978 = !{!1902, !628, i64 48}
!1979 = !DILocation(line: 189, column: 1, scope: !1956)
!1980 = distinct !DISubprogram(name: "quotearg_buffer", scope: !47, file: !47, line: 784, type: !1981, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!86, !42, !86, !9, !86, !1894}
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1984 = !DILocalVariable(name: "buffer", arg: 1, scope: !1980, file: !47, line: 784, type: !42)
!1985 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1980, file: !47, line: 784, type: !86)
!1986 = !DILocalVariable(name: "arg", arg: 3, scope: !1980, file: !47, line: 785, type: !9)
!1987 = !DILocalVariable(name: "argsize", arg: 4, scope: !1980, file: !47, line: 785, type: !86)
!1988 = !DILocalVariable(name: "o", arg: 5, scope: !1980, file: !47, line: 786, type: !1894)
!1989 = !DILocalVariable(name: "p", scope: !1980, file: !47, line: 788, type: !1894)
!1990 = !DILocalVariable(name: "e", scope: !1980, file: !47, line: 789, type: !18)
!1991 = !DILocalVariable(name: "r", scope: !1980, file: !47, line: 790, type: !86)
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
!2003 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !47, file: !47, line: 256, type: !2004, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2008)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!86, !42, !86, !9, !86, !49, !18, !2006, !9, !9}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2033, !2034, !2035, !2036, !2037, !2040, !2041, !2059, !2062, !2063, !2070, !2073, !2074, !2075, !2076, !2077, !2078}
!2009 = !DILocalVariable(name: "buffer", arg: 1, scope: !2003, file: !47, line: 256, type: !42)
!2010 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2003, file: !47, line: 256, type: !86)
!2011 = !DILocalVariable(name: "arg", arg: 3, scope: !2003, file: !47, line: 257, type: !9)
!2012 = !DILocalVariable(name: "argsize", arg: 4, scope: !2003, file: !47, line: 257, type: !86)
!2013 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2003, file: !47, line: 258, type: !49)
!2014 = !DILocalVariable(name: "flags", arg: 6, scope: !2003, file: !47, line: 258, type: !18)
!2015 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2003, file: !47, line: 259, type: !2006)
!2016 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2003, file: !47, line: 260, type: !9)
!2017 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2003, file: !47, line: 261, type: !9)
!2018 = !DILocalVariable(name: "i", scope: !2003, file: !47, line: 263, type: !86)
!2019 = !DILocalVariable(name: "len", scope: !2003, file: !47, line: 264, type: !86)
!2020 = !DILocalVariable(name: "orig_buffersize", scope: !2003, file: !47, line: 265, type: !86)
!2021 = !DILocalVariable(name: "quote_string", scope: !2003, file: !47, line: 266, type: !9)
!2022 = !DILocalVariable(name: "quote_string_len", scope: !2003, file: !47, line: 267, type: !86)
!2023 = !DILocalVariable(name: "backslash_escapes", scope: !2003, file: !47, line: 268, type: !8)
!2024 = !DILocalVariable(name: "unibyte_locale", scope: !2003, file: !47, line: 269, type: !8)
!2025 = !DILocalVariable(name: "elide_outer_quotes", scope: !2003, file: !47, line: 270, type: !8)
!2026 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2003, file: !47, line: 271, type: !8)
!2027 = !DILocalVariable(name: "encountered_single_quote", scope: !2003, file: !47, line: 272, type: !8)
!2028 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2003, file: !47, line: 273, type: !8)
!2029 = !DILocalVariable(name: "c", scope: !2030, file: !47, line: 402, type: !1923)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !47, line: 401, column: 5)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !47, line: 400, column: 3)
!2032 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 400, column: 3)
!2033 = !DILocalVariable(name: "esc", scope: !2030, file: !47, line: 403, type: !1923)
!2034 = !DILocalVariable(name: "is_right_quote", scope: !2030, file: !47, line: 404, type: !8)
!2035 = !DILocalVariable(name: "escaping", scope: !2030, file: !47, line: 405, type: !8)
!2036 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2030, file: !47, line: 406, type: !8)
!2037 = !DILocalVariable(name: "m", scope: !2038, file: !47, line: 610, type: !86)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 608, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 426, column: 9)
!2040 = !DILocalVariable(name: "printable", scope: !2038, file: !47, line: 612, type: !8)
!2041 = !DILocalVariable(name: "mbstate", scope: !2042, file: !47, line: 621, type: !2044)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !47, line: 620, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !47, line: 614, column: 17)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 6, baseType: !2046)
!2045 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2047, line: 21, baseType: !2048)
!2047 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2047, line: 13, size: 64, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2048, file: !2047, line: 15, baseType: !18, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2048, file: !2047, line: 20, baseType: !2052, size: 32, offset: 32)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2047, line: 16, size: 32, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2052, file: !2047, line: 18, baseType: !51, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2052, file: !2047, line: 19, baseType: !2056, size: 32)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 4)
!2059 = !DILocalVariable(name: "w", scope: !2060, file: !47, line: 631, type: !2061)
!2060 = distinct !DILexicalBlock(scope: !2042, file: !47, line: 630, column: 19)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !87, line: 74, baseType: !18)
!2062 = !DILocalVariable(name: "bytes", scope: !2060, file: !47, line: 632, type: !86)
!2063 = !DILocalVariable(name: "j", scope: !2064, file: !47, line: 657, type: !86)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !47, line: 656, column: 27)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !47, line: 654, column: 29)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !47, line: 649, column: 23)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !47, line: 641, column: 30)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !47, line: 636, column: 30)
!2069 = distinct !DILexicalBlock(scope: !2060, file: !47, line: 634, column: 25)
!2070 = !DILocalVariable(name: "ilim", scope: !2071, file: !47, line: 684, type: !86)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !47, line: 681, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2038, file: !47, line: 680, column: 17)
!2073 = !DILabel(scope: !2003, name: "process_input", file: !47, line: 314)
!2074 = !DILabel(scope: !2039, name: "c_and_shell_escape", file: !47, line: 512)
!2075 = !DILabel(scope: !2039, name: "c_escape", file: !47, line: 517)
!2076 = !DILabel(scope: !2030, name: "store_escape", file: !47, line: 719)
!2077 = !DILabel(scope: !2030, name: "store_c", file: !47, line: 722)
!2078 = !DILabel(scope: !2003, name: "force_outer_quoting_style", file: !47, line: 763)
!2079 = !DILocation(line: 0, scope: !2003)
!2080 = !DILocation(line: 269, column: 25, scope: !2003)
!2081 = !DILocation(line: 269, column: 36, scope: !2003)
!2082 = !DILocation(line: 270, column: 8, scope: !2003)
!2083 = !DILocation(line: 273, column: 3, scope: !2003)
!2084 = !DILocation(line: 265, column: 10, scope: !2003)
!2085 = !DILocation(line: 266, column: 15, scope: !2003)
!2086 = !DILocation(line: 267, column: 10, scope: !2003)
!2087 = !DILocation(line: 268, column: 8, scope: !2003)
!2088 = !DILocation(line: 271, column: 8, scope: !2003)
!2089 = !DILocation(line: 272, column: 8, scope: !2003)
!2090 = !DILocation(line: 273, column: 8, scope: !2003)
!2091 = !DILocation(line: 314, column: 2, scope: !2003)
!2092 = !DILocation(line: 316, column: 3, scope: !2003)
!2093 = !DILocation(line: 323, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 317, column: 5)
!2095 = !DILocation(line: 323, column: 12, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !47, line: 323, column: 11)
!2097 = !DILocation(line: 324, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !47, line: 324, column: 9)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !47, line: 324, column: 9)
!2100 = !DILocation(line: 324, column: 9, scope: !2099)
!2101 = !DILocation(line: 362, column: 26, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !47, line: 340, column: 11)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !47, line: 339, column: 13)
!2104 = distinct !DILexicalBlock(scope: !2094, file: !47, line: 338, column: 7)
!2105 = !DILocation(line: 363, column: 27, scope: !2102)
!2106 = !DILocation(line: 364, column: 11, scope: !2102)
!2107 = !DILocation(line: 365, column: 14, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !47, line: 365, column: 13)
!2109 = !DILocation(line: 365, column: 13, scope: !2104)
!2110 = !DILocation(line: 366, column: 43, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !47, line: 366, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !47, line: 366, column: 11)
!2113 = !DILocation(line: 366, column: 11, scope: !2112)
!2114 = !DILocation(line: 367, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !47, line: 367, column: 13)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !47, line: 367, column: 13)
!2117 = !DILocation(line: 367, column: 13, scope: !2116)
!2118 = !DILocation(line: 366, column: 70, scope: !2111)
!2119 = distinct !{!2119, !2113, !2120, !669}
!2120 = !DILocation(line: 367, column: 13, scope: !2112)
!2121 = !DILocation(line: 264, column: 10, scope: !2003)
!2122 = !DILocation(line: 370, column: 28, scope: !2104)
!2123 = !DILocation(line: 372, column: 7, scope: !2094)
!2124 = !DILocation(line: 376, column: 7, scope: !2094)
!2125 = !DILocation(line: 379, column: 7, scope: !2094)
!2126 = !DILocation(line: 381, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2094, file: !47, line: 381, column: 11)
!2128 = !DILocation(line: 381, column: 11, scope: !2094)
!2129 = !DILocation(line: 386, column: 12, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2094, file: !47, line: 386, column: 11)
!2131 = !DILocation(line: 386, column: 11, scope: !2094)
!2132 = !DILocation(line: 387, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !47, line: 387, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !47, line: 387, column: 9)
!2135 = !DILocation(line: 387, column: 9, scope: !2134)
!2136 = !DILocation(line: 394, column: 7, scope: !2094)
!2137 = !DILocation(line: 397, column: 7, scope: !2094)
!2138 = !DILocation(line: 400, column: 8, scope: !2032)
!2139 = !DILocation(line: 0, scope: !2032)
!2140 = !DILocation(line: 400, column: 27, scope: !2031)
!2141 = !DILocation(line: 400, column: 19, scope: !2031)
!2142 = !DILocation(line: 400, column: 41, scope: !2031)
!2143 = !DILocation(line: 400, column: 48, scope: !2031)
!2144 = !DILocation(line: 400, column: 3, scope: !2032)
!2145 = !DILocation(line: 400, column: 60, scope: !2031)
!2146 = !DILocation(line: 0, scope: !2030)
!2147 = !DILocation(line: 409, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 408, column: 11)
!2149 = !DILocation(line: 411, column: 17, scope: !2148)
!2150 = !DILocation(line: 412, column: 39, scope: !2148)
!2151 = !DILocation(line: 416, column: 32, scope: !2148)
!2152 = !DILocation(line: 412, column: 19, scope: !2148)
!2153 = !DILocation(line: 412, column: 15, scope: !2148)
!2154 = !DILocation(line: 417, column: 11, scope: !2148)
!2155 = !DILocation(line: 417, column: 26, scope: !2148)
!2156 = !DILocation(line: 417, column: 14, scope: !2148)
!2157 = !DILocation(line: 417, column: 63, scope: !2148)
!2158 = !DILocation(line: 408, column: 11, scope: !2030)
!2159 = !DILocation(line: 424, column: 11, scope: !2030)
!2160 = !DILocation(line: 425, column: 7, scope: !2030)
!2161 = !DILocation(line: 428, column: 15, scope: !2039)
!2162 = !DILocation(line: 430, column: 15, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !47, line: 430, column: 15)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !47, line: 429, column: 13)
!2165 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 428, column: 15)
!2166 = !DILocation(line: 430, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !47, line: 430, column: 15)
!2168 = !DILocation(line: 430, column: 15, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !47, line: 430, column: 15)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !47, line: 430, column: 15)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !47, line: 430, column: 15)
!2172 = !DILocation(line: 430, column: 15, scope: !2170)
!2173 = !DILocation(line: 430, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !47, line: 430, column: 15)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !47, line: 430, column: 15)
!2176 = !DILocation(line: 430, column: 15, scope: !2175)
!2177 = !DILocation(line: 430, column: 15, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !47, line: 430, column: 15)
!2179 = distinct !DILexicalBlock(scope: !2171, file: !47, line: 430, column: 15)
!2180 = !DILocation(line: 430, column: 15, scope: !2179)
!2181 = !DILocation(line: 430, column: 15, scope: !2171)
!2182 = !DILocation(line: 430, column: 15, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !47, line: 430, column: 15)
!2184 = distinct !DILexicalBlock(scope: !2163, file: !47, line: 430, column: 15)
!2185 = !DILocation(line: 430, column: 15, scope: !2184)
!2186 = !DILocation(line: 438, column: 19, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2164, file: !47, line: 437, column: 19)
!2188 = !DILocation(line: 438, column: 48, scope: !2187)
!2189 = !DILocation(line: 438, column: 59, scope: !2187)
!2190 = !DILocation(line: 440, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !47, line: 440, column: 19)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !47, line: 440, column: 19)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !47, line: 439, column: 17)
!2194 = !DILocation(line: 440, column: 19, scope: !2192)
!2195 = !DILocation(line: 441, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !47, line: 441, column: 19)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !47, line: 441, column: 19)
!2198 = !DILocation(line: 441, column: 19, scope: !2197)
!2199 = !DILocation(line: 442, column: 17, scope: !2193)
!2200 = !DILocation(line: 449, column: 20, scope: !2165)
!2201 = !DILocation(line: 454, column: 11, scope: !2039)
!2202 = !DILocation(line: 457, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 455, column: 13)
!2204 = !DILocation(line: 463, column: 19, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !47, line: 462, column: 19)
!2206 = !DILocation(line: 463, column: 47, scope: !2205)
!2207 = !DILocation(line: 463, column: 41, scope: !2205)
!2208 = !DILocation(line: 463, column: 52, scope: !2205)
!2209 = !DILocation(line: 462, column: 19, scope: !2203)
!2210 = !DILocation(line: 464, column: 25, scope: !2205)
!2211 = !DILocation(line: 464, column: 17, scope: !2205)
!2212 = !DILocation(line: 471, column: 25, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2205, file: !47, line: 465, column: 19)
!2214 = !DILocation(line: 475, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !47, line: 475, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !47, line: 475, column: 21)
!2217 = !DILocation(line: 475, column: 21, scope: !2216)
!2218 = !DILocation(line: 476, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !47, line: 476, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2213, file: !47, line: 476, column: 21)
!2221 = !DILocation(line: 476, column: 21, scope: !2220)
!2222 = !DILocation(line: 477, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !47, line: 477, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2213, file: !47, line: 477, column: 21)
!2225 = !DILocation(line: 477, column: 21, scope: !2224)
!2226 = !DILocation(line: 478, column: 21, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !47, line: 478, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2213, file: !47, line: 478, column: 21)
!2229 = !DILocation(line: 478, column: 21, scope: !2228)
!2230 = !DILocation(line: 479, column: 21, scope: !2213)
!2231 = !DILocation(line: 492, column: 31, scope: !2039)
!2232 = !DILocation(line: 493, column: 31, scope: !2039)
!2233 = !DILocation(line: 495, column: 31, scope: !2039)
!2234 = !DILocation(line: 496, column: 31, scope: !2039)
!2235 = !DILocation(line: 497, column: 31, scope: !2039)
!2236 = !DILocation(line: 500, column: 15, scope: !2039)
!2237 = !DILocation(line: 502, column: 19, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !47, line: 501, column: 13)
!2239 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 500, column: 15)
!2240 = !DILocation(line: 509, column: 33, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 509, column: 15)
!2242 = !DILocation(line: 0, scope: !2039)
!2243 = !DILocation(line: 512, column: 9, scope: !2039)
!2244 = !DILocation(line: 514, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 513, column: 15)
!2246 = !DILocation(line: 517, column: 9, scope: !2039)
!2247 = !DILocation(line: 518, column: 15, scope: !2039)
!2248 = !DILocation(line: 526, column: 15, scope: !2039)
!2249 = !DILocation(line: 526, column: 40, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 526, column: 15)
!2251 = !DILocation(line: 526, column: 47, scope: !2250)
!2252 = !DILocation(line: 526, column: 18, scope: !2250)
!2253 = !DILocation(line: 530, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 530, column: 15)
!2255 = !DILocation(line: 530, column: 15, scope: !2039)
!2256 = !DILocation(line: 535, column: 11, scope: !2039)
!2257 = !DILocation(line: 549, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 548, column: 15)
!2259 = !DILocation(line: 556, column: 15, scope: !2039)
!2260 = !DILocation(line: 558, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !47, line: 557, column: 13)
!2262 = distinct !DILexicalBlock(scope: !2039, file: !47, line: 556, column: 15)
!2263 = !DILocation(line: 561, column: 19, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !47, line: 561, column: 19)
!2265 = !DILocation(line: 561, column: 30, scope: !2264)
!2266 = !DILocation(line: 570, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !47, line: 570, column: 15)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !47, line: 570, column: 15)
!2269 = !DILocation(line: 570, column: 15, scope: !2268)
!2270 = !DILocation(line: 571, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !47, line: 571, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !47, line: 571, column: 15)
!2273 = !DILocation(line: 571, column: 15, scope: !2272)
!2274 = !DILocation(line: 572, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !47, line: 572, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2261, file: !47, line: 572, column: 15)
!2277 = !DILocation(line: 572, column: 15, scope: !2276)
!2278 = !DILocation(line: 574, column: 13, scope: !2261)
!2279 = !DILocation(line: 614, column: 17, scope: !2038)
!2280 = !DILocation(line: 0, scope: !2038)
!2281 = !DILocation(line: 617, column: 29, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2043, file: !47, line: 615, column: 15)
!2283 = !{!2284, !2284, i64 0}
!2284 = !{!"short", !629, i64 0}
!2285 = !DILocation(line: 617, column: 27, scope: !2282)
!2286 = !DILocation(line: 678, column: 40, scope: !2038)
!2287 = !DILocation(line: 680, column: 23, scope: !2072)
!2288 = !DILocation(line: 621, column: 17, scope: !2042)
!2289 = !DILocation(line: 621, column: 27, scope: !2042)
!2290 = !DILocalVariable(name: "__dest", arg: 1, scope: !2291, file: !2292, line: 57, type: !41)
!2291 = distinct !DISubprogram(name: "memset", scope: !2292, file: !2292, line: 57, type: !2293, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2295)
!2292 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!41, !41, !18, !86}
!2295 = !{!2290, !2296, !2297}
!2296 = !DILocalVariable(name: "__ch", arg: 2, scope: !2291, file: !2292, line: 57, type: !18)
!2297 = !DILocalVariable(name: "__len", arg: 3, scope: !2291, file: !2292, line: 57, type: !86)
!2298 = !DILocation(line: 0, scope: !2291, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 622, column: 17, scope: !2042)
!2300 = !DILocation(line: 59, column: 10, scope: !2291, inlinedAt: !2299)
!2301 = !DILocation(line: 626, column: 29, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2042, file: !47, line: 626, column: 21)
!2303 = !DILocation(line: 626, column: 21, scope: !2042)
!2304 = !DILocation(line: 627, column: 29, scope: !2302)
!2305 = !DILocation(line: 627, column: 19, scope: !2302)
!2306 = !DILocation(line: 629, column: 17, scope: !2042)
!2307 = !DILocation(line: 624, column: 19, scope: !2042)
!2308 = !DILocation(line: 625, column: 27, scope: !2042)
!2309 = !DILocation(line: 631, column: 21, scope: !2060)
!2310 = !DILocation(line: 632, column: 56, scope: !2060)
!2311 = !DILocation(line: 632, column: 50, scope: !2060)
!2312 = !DILocation(line: 633, column: 53, scope: !2060)
!2313 = !DILocation(line: 0, scope: !2060)
!2314 = !DILocation(line: 632, column: 36, scope: !2060)
!2315 = !DILocation(line: 634, column: 25, scope: !2060)
!2316 = !DILocation(line: 644, column: 38, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2067, file: !47, line: 642, column: 23)
!2318 = !DILocation(line: 644, column: 48, scope: !2317)
!2319 = !DILocation(line: 644, column: 25, scope: !2317)
!2320 = !DILocation(line: 644, column: 51, scope: !2317)
!2321 = !DILocation(line: 645, column: 28, scope: !2317)
!2322 = !DILocation(line: 644, column: 34, scope: !2317)
!2323 = distinct !{!2323, !2319, !2321, !669}
!2324 = !DILocation(line: 655, column: 29, scope: !2065)
!2325 = !DILocation(line: 0, scope: !2064)
!2326 = !DILocation(line: 659, column: 49, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !47, line: 658, column: 29)
!2328 = distinct !DILexicalBlock(scope: !2064, file: !47, line: 658, column: 29)
!2329 = !DILocation(line: 659, column: 39, scope: !2327)
!2330 = !DILocation(line: 659, column: 31, scope: !2327)
!2331 = !DILocation(line: 658, column: 53, scope: !2327)
!2332 = !DILocation(line: 658, column: 43, scope: !2327)
!2333 = !DILocation(line: 658, column: 29, scope: !2328)
!2334 = distinct !{!2334, !2333, !2335, !669}
!2335 = !DILocation(line: 667, column: 33, scope: !2328)
!2336 = !DILocation(line: 674, column: 19, scope: !2042)
!2337 = !DILocation(line: 670, column: 41, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2066, file: !47, line: 670, column: 29)
!2339 = !DILocation(line: 670, column: 31, scope: !2338)
!2340 = !DILocation(line: 670, column: 29, scope: !2066)
!2341 = !DILocation(line: 672, column: 27, scope: !2066)
!2342 = !DILocation(line: 675, column: 26, scope: !2042)
!2343 = !DILocation(line: 675, column: 24, scope: !2042)
!2344 = !DILocation(line: 674, column: 19, scope: !2060)
!2345 = distinct !{!2345, !2306, !2346, !669}
!2346 = !DILocation(line: 675, column: 44, scope: !2042)
!2347 = !DILocation(line: 676, column: 15, scope: !2043)
!2348 = !DILocation(line: 680, column: 19, scope: !2072)
!2349 = !DILocation(line: 680, column: 45, scope: !2072)
!2350 = !DILocation(line: 684, column: 33, scope: !2071)
!2351 = !DILocation(line: 0, scope: !2071)
!2352 = !DILocation(line: 686, column: 17, scope: !2071)
!2353 = !DILocation(line: 405, column: 12, scope: !2030)
!2354 = !DILocation(line: 688, column: 43, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !47, line: 688, column: 25)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !47, line: 687, column: 19)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !47, line: 686, column: 17)
!2358 = distinct !DILexicalBlock(scope: !2071, file: !47, line: 686, column: 17)
!2359 = !DILocation(line: 690, column: 25, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !47, line: 690, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !47, line: 689, column: 23)
!2362 = !DILocation(line: 690, column: 25, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !47, line: 690, column: 25)
!2364 = !DILocation(line: 690, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !47, line: 690, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !47, line: 690, column: 25)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !47, line: 690, column: 25)
!2368 = !DILocation(line: 690, column: 25, scope: !2366)
!2369 = !DILocation(line: 690, column: 25, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !47, line: 690, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !47, line: 690, column: 25)
!2372 = !DILocation(line: 690, column: 25, scope: !2371)
!2373 = !DILocation(line: 690, column: 25, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !47, line: 690, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2367, file: !47, line: 690, column: 25)
!2376 = !DILocation(line: 690, column: 25, scope: !2375)
!2377 = !DILocation(line: 690, column: 25, scope: !2367)
!2378 = !DILocation(line: 690, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !47, line: 690, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2360, file: !47, line: 690, column: 25)
!2381 = !DILocation(line: 690, column: 25, scope: !2380)
!2382 = !DILocation(line: 691, column: 25, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !47, line: 691, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2361, file: !47, line: 691, column: 25)
!2385 = !DILocation(line: 691, column: 25, scope: !2384)
!2386 = !DILocation(line: 692, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !47, line: 692, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2361, file: !47, line: 692, column: 25)
!2389 = !DILocation(line: 692, column: 25, scope: !2388)
!2390 = !DILocation(line: 693, column: 38, scope: !2361)
!2391 = !DILocation(line: 693, column: 33, scope: !2361)
!2392 = !DILocation(line: 694, column: 23, scope: !2361)
!2393 = !DILocation(line: 695, column: 30, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2355, file: !47, line: 695, column: 30)
!2395 = !DILocation(line: 695, column: 30, scope: !2355)
!2396 = !DILocation(line: 697, column: 25, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !47, line: 697, column: 25)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !47, line: 697, column: 25)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !47, line: 696, column: 23)
!2400 = !DILocation(line: 697, column: 25, scope: !2398)
!2401 = !DILocation(line: 699, column: 23, scope: !2399)
!2402 = !DILocation(line: 700, column: 35, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2356, file: !47, line: 700, column: 25)
!2404 = !DILocation(line: 700, column: 30, scope: !2403)
!2405 = !DILocation(line: 700, column: 25, scope: !2356)
!2406 = !DILocation(line: 702, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !47, line: 702, column: 21)
!2408 = distinct !DILexicalBlock(scope: !2356, file: !47, line: 702, column: 21)
!2409 = !DILocation(line: 702, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !47, line: 702, column: 21)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !47, line: 702, column: 21)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !47, line: 702, column: 21)
!2413 = !DILocation(line: 702, column: 21, scope: !2411)
!2414 = !DILocation(line: 702, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !47, line: 702, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !47, line: 702, column: 21)
!2417 = !DILocation(line: 702, column: 21, scope: !2416)
!2418 = !DILocation(line: 702, column: 21, scope: !2412)
!2419 = !DILocation(line: 0, scope: !2356)
!2420 = !DILocation(line: 703, column: 21, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !47, line: 703, column: 21)
!2422 = distinct !DILexicalBlock(scope: !2356, file: !47, line: 703, column: 21)
!2423 = !DILocation(line: 703, column: 21, scope: !2422)
!2424 = !DILocation(line: 704, column: 25, scope: !2356)
!2425 = !DILocation(line: 686, column: 17, scope: !2357)
!2426 = distinct !{!2426, !2427, !2428}
!2427 = !DILocation(line: 686, column: 17, scope: !2358)
!2428 = !DILocation(line: 705, column: 19, scope: !2358)
!2429 = !DILocation(line: 416, column: 30, scope: !2148)
!2430 = !DILocation(line: 712, column: 34, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 712, column: 11)
!2432 = !DILocation(line: 715, column: 35, scope: !2431)
!2433 = !DILocation(line: 715, column: 17, scope: !2431)
!2434 = !DILocation(line: 715, column: 47, scope: !2431)
!2435 = !DILocation(line: 715, column: 65, scope: !2431)
!2436 = !DILocation(line: 716, column: 11, scope: !2431)
!2437 = !DILocation(line: 712, column: 11, scope: !2030)
!2438 = !DILocation(line: 400, column: 10, scope: !2032)
!2439 = !DILocation(line: 719, column: 5, scope: !2030)
!2440 = !DILocation(line: 720, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 720, column: 7)
!2442 = !DILocation(line: 720, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2441, file: !47, line: 720, column: 7)
!2444 = !DILocation(line: 720, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !47, line: 720, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !47, line: 720, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !47, line: 720, column: 7)
!2448 = !DILocation(line: 720, column: 7, scope: !2446)
!2449 = !DILocation(line: 720, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !47, line: 720, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !47, line: 720, column: 7)
!2452 = !DILocation(line: 720, column: 7, scope: !2451)
!2453 = !DILocation(line: 720, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !47, line: 720, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2447, file: !47, line: 720, column: 7)
!2456 = !DILocation(line: 720, column: 7, scope: !2455)
!2457 = !DILocation(line: 720, column: 7, scope: !2447)
!2458 = !DILocation(line: 720, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !47, line: 720, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2441, file: !47, line: 720, column: 7)
!2461 = !DILocation(line: 720, column: 7, scope: !2460)
!2462 = !DILocation(line: 722, column: 5, scope: !2030)
!2463 = !DILocation(line: 723, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !47, line: 723, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 723, column: 7)
!2466 = !DILocation(line: 424, column: 9, scope: !2030)
!2467 = !DILocation(line: 723, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !47, line: 723, column: 7)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !47, line: 723, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !47, line: 723, column: 7)
!2471 = !DILocation(line: 723, column: 7, scope: !2469)
!2472 = !DILocation(line: 723, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !47, line: 723, column: 7)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !47, line: 723, column: 7)
!2475 = !DILocation(line: 723, column: 7, scope: !2474)
!2476 = !DILocation(line: 723, column: 7, scope: !2470)
!2477 = !DILocation(line: 724, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !47, line: 724, column: 7)
!2479 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 724, column: 7)
!2480 = !DILocation(line: 724, column: 7, scope: !2479)
!2481 = !DILocation(line: 726, column: 13, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2030, file: !47, line: 726, column: 11)
!2483 = !DILocation(line: 726, column: 11, scope: !2030)
!2484 = !DILocation(line: 728, column: 5, scope: !2031)
!2485 = !DILocation(line: 400, column: 75, scope: !2031)
!2486 = !DILocation(line: 400, column: 3, scope: !2031)
!2487 = distinct !{!2487, !2144, !2488, !669}
!2488 = !DILocation(line: 728, column: 5, scope: !2032)
!2489 = !DILocation(line: 730, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 730, column: 7)
!2491 = !DILocation(line: 730, column: 16, scope: !2490)
!2492 = !DILocation(line: 738, column: 51, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 738, column: 7)
!2494 = !DILocation(line: 741, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !47, line: 741, column: 11)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !47, line: 740, column: 5)
!2497 = !DILocation(line: 741, column: 11, scope: !2496)
!2498 = !DILocation(line: 742, column: 16, scope: !2495)
!2499 = !DILocation(line: 742, column: 9, scope: !2495)
!2500 = !DILocation(line: 746, column: 18, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !47, line: 746, column: 16)
!2502 = !DILocation(line: 746, column: 29, scope: !2501)
!2503 = !DILocation(line: 755, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 755, column: 7)
!2505 = !DILocation(line: 755, column: 20, scope: !2504)
!2506 = !DILocation(line: 756, column: 12, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !47, line: 756, column: 5)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !47, line: 756, column: 5)
!2509 = !DILocation(line: 756, column: 5, scope: !2508)
!2510 = !DILocation(line: 757, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !47, line: 757, column: 7)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !47, line: 757, column: 7)
!2513 = !DILocation(line: 757, column: 7, scope: !2512)
!2514 = !DILocation(line: 756, column: 39, scope: !2507)
!2515 = distinct !{!2515, !2509, !2516, !669}
!2516 = !DILocation(line: 757, column: 7, scope: !2508)
!2517 = !DILocation(line: 759, column: 11, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 759, column: 7)
!2519 = !DILocation(line: 759, column: 7, scope: !2003)
!2520 = !DILocation(line: 760, column: 5, scope: !2518)
!2521 = !DILocation(line: 760, column: 17, scope: !2518)
!2522 = !DILocation(line: 763, column: 2, scope: !2003)
!2523 = !DILocation(line: 766, column: 51, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2003, file: !47, line: 766, column: 7)
!2525 = !DILocation(line: 766, column: 21, scope: !2524)
!2526 = !DILocation(line: 770, column: 42, scope: !2003)
!2527 = !DILocation(line: 768, column: 10, scope: !2003)
!2528 = !DILocation(line: 768, column: 3, scope: !2003)
!2529 = !DILocation(line: 772, column: 1, scope: !2003)
!2530 = distinct !DISubprogram(name: "gettext_quote", scope: !47, file: !47, line: 207, type: !2531, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!9, !9, !49}
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "msgid", arg: 1, scope: !2530, file: !47, line: 207, type: !9)
!2535 = !DILocalVariable(name: "s", arg: 2, scope: !2530, file: !47, line: 207, type: !49)
!2536 = !DILocalVariable(name: "translation", scope: !2530, file: !47, line: 209, type: !9)
!2537 = !DILocalVariable(name: "locale_code", scope: !2530, file: !47, line: 210, type: !9)
!2538 = !DILocation(line: 0, scope: !2530)
!2539 = !DILocation(line: 209, column: 29, scope: !2530)
!2540 = !DILocation(line: 212, column: 19, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2530, file: !47, line: 212, column: 7)
!2542 = !DILocation(line: 212, column: 7, scope: !2530)
!2543 = !DILocation(line: 233, column: 17, scope: !2530)
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2545, file: !2546, line: 160, type: !9)
!2545 = distinct !DISubprogram(name: "strcaseeq0", scope: !2546, file: !2546, line: 160, type: !2547, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2549)
!2546 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!18, !9, !9, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2549 = !{!2544, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2550 = !DILocalVariable(name: "s2", arg: 2, scope: !2545, file: !2546, line: 160, type: !9)
!2551 = !DILocalVariable(name: "s20", arg: 3, scope: !2545, file: !2546, line: 160, type: !11)
!2552 = !DILocalVariable(name: "s21", arg: 4, scope: !2545, file: !2546, line: 160, type: !11)
!2553 = !DILocalVariable(name: "s22", arg: 5, scope: !2545, file: !2546, line: 160, type: !11)
!2554 = !DILocalVariable(name: "s23", arg: 6, scope: !2545, file: !2546, line: 160, type: !11)
!2555 = !DILocalVariable(name: "s24", arg: 7, scope: !2545, file: !2546, line: 160, type: !11)
!2556 = !DILocalVariable(name: "s25", arg: 8, scope: !2545, file: !2546, line: 160, type: !11)
!2557 = !DILocalVariable(name: "s26", arg: 9, scope: !2545, file: !2546, line: 160, type: !11)
!2558 = !DILocalVariable(name: "s27", arg: 10, scope: !2545, file: !2546, line: 160, type: !11)
!2559 = !DILocalVariable(name: "s28", arg: 11, scope: !2545, file: !2546, line: 160, type: !11)
!2560 = !DILocation(line: 0, scope: !2545, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 234, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2530, file: !47, line: 234, column: 7)
!2563 = !DILocation(line: 162, column: 7, scope: !2564, inlinedAt: !2561)
!2564 = distinct !DILexicalBlock(scope: !2545, file: !2546, line: 162, column: 7)
!2565 = !DILocalVariable(name: "s1", arg: 1, scope: !2566, file: !2546, line: 146, type: !9)
!2566 = distinct !DISubprogram(name: "strcaseeq1", scope: !2546, file: !2546, line: 146, type: !2567, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!18, !9, !9, !11, !11, !11, !11, !11, !11, !11, !11}
!2569 = !{!2565, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2570 = !DILocalVariable(name: "s2", arg: 2, scope: !2566, file: !2546, line: 146, type: !9)
!2571 = !DILocalVariable(name: "s21", arg: 3, scope: !2566, file: !2546, line: 146, type: !11)
!2572 = !DILocalVariable(name: "s22", arg: 4, scope: !2566, file: !2546, line: 146, type: !11)
!2573 = !DILocalVariable(name: "s23", arg: 5, scope: !2566, file: !2546, line: 146, type: !11)
!2574 = !DILocalVariable(name: "s24", arg: 6, scope: !2566, file: !2546, line: 146, type: !11)
!2575 = !DILocalVariable(name: "s25", arg: 7, scope: !2566, file: !2546, line: 146, type: !11)
!2576 = !DILocalVariable(name: "s26", arg: 8, scope: !2566, file: !2546, line: 146, type: !11)
!2577 = !DILocalVariable(name: "s27", arg: 9, scope: !2566, file: !2546, line: 146, type: !11)
!2578 = !DILocalVariable(name: "s28", arg: 10, scope: !2566, file: !2546, line: 146, type: !11)
!2579 = !DILocation(line: 0, scope: !2566, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 167, column: 16, scope: !2581, inlinedAt: !2561)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !2546, line: 164, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2564, file: !2546, line: 163, column: 5)
!2583 = !DILocation(line: 148, column: 7, scope: !2584, inlinedAt: !2580)
!2584 = distinct !DILexicalBlock(scope: !2566, file: !2546, line: 148, column: 7)
!2585 = !DILocalVariable(name: "s1", arg: 1, scope: !2586, file: !2546, line: 132, type: !9)
!2586 = distinct !DISubprogram(name: "strcaseeq2", scope: !2546, file: !2546, line: 132, type: !2587, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!18, !9, !9, !11, !11, !11, !11, !11, !11, !11}
!2589 = !{!2585, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2590 = !DILocalVariable(name: "s2", arg: 2, scope: !2586, file: !2546, line: 132, type: !9)
!2591 = !DILocalVariable(name: "s22", arg: 3, scope: !2586, file: !2546, line: 132, type: !11)
!2592 = !DILocalVariable(name: "s23", arg: 4, scope: !2586, file: !2546, line: 132, type: !11)
!2593 = !DILocalVariable(name: "s24", arg: 5, scope: !2586, file: !2546, line: 132, type: !11)
!2594 = !DILocalVariable(name: "s25", arg: 6, scope: !2586, file: !2546, line: 132, type: !11)
!2595 = !DILocalVariable(name: "s26", arg: 7, scope: !2586, file: !2546, line: 132, type: !11)
!2596 = !DILocalVariable(name: "s27", arg: 8, scope: !2586, file: !2546, line: 132, type: !11)
!2597 = !DILocalVariable(name: "s28", arg: 9, scope: !2586, file: !2546, line: 132, type: !11)
!2598 = !DILocation(line: 0, scope: !2586, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 153, column: 16, scope: !2600, inlinedAt: !2580)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2546, line: 150, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2584, file: !2546, line: 149, column: 5)
!2602 = !DILocation(line: 134, column: 7, scope: !2603, inlinedAt: !2599)
!2603 = distinct !DILexicalBlock(scope: !2586, file: !2546, line: 134, column: 7)
!2604 = !DILocalVariable(name: "s1", arg: 1, scope: !2605, file: !2546, line: 118, type: !9)
!2605 = distinct !DISubprogram(name: "strcaseeq3", scope: !2546, file: !2546, line: 118, type: !2606, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!18, !9, !9, !11, !11, !11, !11, !11, !11}
!2608 = !{!2604, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2609 = !DILocalVariable(name: "s2", arg: 2, scope: !2605, file: !2546, line: 118, type: !9)
!2610 = !DILocalVariable(name: "s23", arg: 3, scope: !2605, file: !2546, line: 118, type: !11)
!2611 = !DILocalVariable(name: "s24", arg: 4, scope: !2605, file: !2546, line: 118, type: !11)
!2612 = !DILocalVariable(name: "s25", arg: 5, scope: !2605, file: !2546, line: 118, type: !11)
!2613 = !DILocalVariable(name: "s26", arg: 6, scope: !2605, file: !2546, line: 118, type: !11)
!2614 = !DILocalVariable(name: "s27", arg: 7, scope: !2605, file: !2546, line: 118, type: !11)
!2615 = !DILocalVariable(name: "s28", arg: 8, scope: !2605, file: !2546, line: 118, type: !11)
!2616 = !DILocation(line: 0, scope: !2605, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 139, column: 16, scope: !2618, inlinedAt: !2599)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2546, line: 136, column: 11)
!2619 = distinct !DILexicalBlock(scope: !2603, file: !2546, line: 135, column: 5)
!2620 = !DILocation(line: 120, column: 7, scope: !2621, inlinedAt: !2617)
!2621 = distinct !DILexicalBlock(scope: !2605, file: !2546, line: 120, column: 7)
!2622 = !DILocation(line: 120, column: 7, scope: !2605, inlinedAt: !2617)
!2623 = !DILocalVariable(name: "s1", arg: 1, scope: !2624, file: !2546, line: 104, type: !9)
!2624 = distinct !DISubprogram(name: "strcaseeq4", scope: !2546, file: !2546, line: 104, type: !2625, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!18, !9, !9, !11, !11, !11, !11, !11}
!2627 = !{!2623, !2628, !2629, !2630, !2631, !2632, !2633}
!2628 = !DILocalVariable(name: "s2", arg: 2, scope: !2624, file: !2546, line: 104, type: !9)
!2629 = !DILocalVariable(name: "s24", arg: 3, scope: !2624, file: !2546, line: 104, type: !11)
!2630 = !DILocalVariable(name: "s25", arg: 4, scope: !2624, file: !2546, line: 104, type: !11)
!2631 = !DILocalVariable(name: "s26", arg: 5, scope: !2624, file: !2546, line: 104, type: !11)
!2632 = !DILocalVariable(name: "s27", arg: 6, scope: !2624, file: !2546, line: 104, type: !11)
!2633 = !DILocalVariable(name: "s28", arg: 7, scope: !2624, file: !2546, line: 104, type: !11)
!2634 = !DILocation(line: 0, scope: !2624, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 125, column: 16, scope: !2636, inlinedAt: !2617)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !2546, line: 122, column: 11)
!2637 = distinct !DILexicalBlock(scope: !2621, file: !2546, line: 121, column: 5)
!2638 = !DILocation(line: 106, column: 7, scope: !2639, inlinedAt: !2635)
!2639 = distinct !DILexicalBlock(scope: !2624, file: !2546, line: 106, column: 7)
!2640 = !DILocation(line: 106, column: 7, scope: !2624, inlinedAt: !2635)
!2641 = !DILocalVariable(name: "s1", arg: 1, scope: !2642, file: !2546, line: 90, type: !9)
!2642 = distinct !DISubprogram(name: "strcaseeq5", scope: !2546, file: !2546, line: 90, type: !2643, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!18, !9, !9, !11, !11, !11, !11}
!2645 = !{!2641, !2646, !2647, !2648, !2649, !2650}
!2646 = !DILocalVariable(name: "s2", arg: 2, scope: !2642, file: !2546, line: 90, type: !9)
!2647 = !DILocalVariable(name: "s25", arg: 3, scope: !2642, file: !2546, line: 90, type: !11)
!2648 = !DILocalVariable(name: "s26", arg: 4, scope: !2642, file: !2546, line: 90, type: !11)
!2649 = !DILocalVariable(name: "s27", arg: 5, scope: !2642, file: !2546, line: 90, type: !11)
!2650 = !DILocalVariable(name: "s28", arg: 6, scope: !2642, file: !2546, line: 90, type: !11)
!2651 = !DILocation(line: 0, scope: !2642, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 111, column: 16, scope: !2653, inlinedAt: !2635)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !2546, line: 108, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2639, file: !2546, line: 107, column: 5)
!2655 = !DILocation(line: 92, column: 7, scope: !2656, inlinedAt: !2652)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !2546, line: 92, column: 7)
!2657 = !DILocation(line: 92, column: 7, scope: !2642, inlinedAt: !2652)
!2658 = !DILocation(line: 235, column: 12, scope: !2562)
!2659 = !DILocation(line: 235, column: 21, scope: !2562)
!2660 = !DILocation(line: 235, column: 5, scope: !2562)
!2661 = !DILocation(line: 0, scope: !2566, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 167, column: 16, scope: !2581, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 236, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2530, file: !47, line: 236, column: 7)
!2665 = !DILocation(line: 148, column: 7, scope: !2584, inlinedAt: !2662)
!2666 = !DILocation(line: 0, scope: !2586, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 153, column: 16, scope: !2600, inlinedAt: !2662)
!2668 = !DILocation(line: 134, column: 7, scope: !2603, inlinedAt: !2667)
!2669 = !DILocation(line: 134, column: 7, scope: !2586, inlinedAt: !2667)
!2670 = !DILocation(line: 0, scope: !2605, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 139, column: 16, scope: !2618, inlinedAt: !2667)
!2672 = !DILocation(line: 120, column: 7, scope: !2621, inlinedAt: !2671)
!2673 = !DILocation(line: 120, column: 7, scope: !2605, inlinedAt: !2671)
!2674 = !DILocation(line: 0, scope: !2624, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 125, column: 16, scope: !2636, inlinedAt: !2671)
!2676 = !DILocation(line: 106, column: 7, scope: !2639, inlinedAt: !2675)
!2677 = !DILocation(line: 106, column: 7, scope: !2624, inlinedAt: !2675)
!2678 = !DILocation(line: 0, scope: !2642, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 111, column: 16, scope: !2653, inlinedAt: !2675)
!2680 = !DILocation(line: 92, column: 7, scope: !2656, inlinedAt: !2679)
!2681 = !DILocation(line: 92, column: 7, scope: !2642, inlinedAt: !2679)
!2682 = !DILocalVariable(name: "s1", arg: 1, scope: !2683, file: !2546, line: 76, type: !9)
!2683 = distinct !DISubprogram(name: "strcaseeq6", scope: !2546, file: !2546, line: 76, type: !2684, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!18, !9, !9, !11, !11, !11}
!2686 = !{!2682, !2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "s2", arg: 2, scope: !2683, file: !2546, line: 76, type: !9)
!2688 = !DILocalVariable(name: "s26", arg: 3, scope: !2683, file: !2546, line: 76, type: !11)
!2689 = !DILocalVariable(name: "s27", arg: 4, scope: !2683, file: !2546, line: 76, type: !11)
!2690 = !DILocalVariable(name: "s28", arg: 5, scope: !2683, file: !2546, line: 76, type: !11)
!2691 = !DILocation(line: 0, scope: !2683, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 97, column: 16, scope: !2693, inlinedAt: !2679)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !2546, line: 94, column: 11)
!2694 = distinct !DILexicalBlock(scope: !2656, file: !2546, line: 93, column: 5)
!2695 = !DILocation(line: 78, column: 7, scope: !2696, inlinedAt: !2692)
!2696 = distinct !DILexicalBlock(scope: !2683, file: !2546, line: 78, column: 7)
!2697 = !DILocation(line: 78, column: 7, scope: !2683, inlinedAt: !2692)
!2698 = !DILocalVariable(name: "s1", arg: 1, scope: !2699, file: !2546, line: 62, type: !9)
!2699 = distinct !DISubprogram(name: "strcaseeq7", scope: !2546, file: !2546, line: 62, type: !2700, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!18, !9, !9, !11, !11}
!2702 = !{!2698, !2703, !2704, !2705}
!2703 = !DILocalVariable(name: "s2", arg: 2, scope: !2699, file: !2546, line: 62, type: !9)
!2704 = !DILocalVariable(name: "s27", arg: 3, scope: !2699, file: !2546, line: 62, type: !11)
!2705 = !DILocalVariable(name: "s28", arg: 4, scope: !2699, file: !2546, line: 62, type: !11)
!2706 = !DILocation(line: 0, scope: !2699, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 83, column: 16, scope: !2708, inlinedAt: !2692)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !2546, line: 80, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2696, file: !2546, line: 79, column: 5)
!2710 = !DILocation(line: 64, column: 7, scope: !2711, inlinedAt: !2707)
!2711 = distinct !DILexicalBlock(scope: !2699, file: !2546, line: 64, column: 7)
!2712 = !DILocation(line: 236, column: 7, scope: !2530)
!2713 = !DILocation(line: 237, column: 12, scope: !2664)
!2714 = !DILocation(line: 237, column: 21, scope: !2664)
!2715 = !DILocation(line: 237, column: 5, scope: !2664)
!2716 = !DILocation(line: 239, column: 13, scope: !2530)
!2717 = !DILocation(line: 239, column: 11, scope: !2530)
!2718 = !DILocation(line: 239, column: 3, scope: !2530)
!2719 = !DILocation(line: 240, column: 1, scope: !2530)
!2720 = !DISubprogram(name: "iswprint", scope: !2721, file: !2721, line: 120, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2721 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!18, !51}
!2724 = !DISubprogram(name: "mbsinit", scope: !2725, file: !2725, line: 292, type: !2726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2725 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!18, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2730 = distinct !DISubprogram(name: "quotearg_alloc", scope: !47, file: !47, line: 799, type: !2731, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!42, !9, !86, !1894}
!2733 = !{!2734, !2735, !2736}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !47, line: 799, type: !9)
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2730, file: !47, line: 799, type: !86)
!2736 = !DILocalVariable(name: "o", arg: 3, scope: !2730, file: !47, line: 800, type: !1894)
!2737 = !DILocation(line: 0, scope: !2730)
!2738 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !47, line: 812, type: !9)
!2739 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !47, file: !47, line: 812, type: !2740, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!42, !9, !86, !193, !1894}
!2742 = !{!2738, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !47, line: 812, type: !86)
!2744 = !DILocalVariable(name: "size", arg: 3, scope: !2739, file: !47, line: 812, type: !193)
!2745 = !DILocalVariable(name: "o", arg: 4, scope: !2739, file: !47, line: 813, type: !1894)
!2746 = !DILocalVariable(name: "p", scope: !2739, file: !47, line: 815, type: !1894)
!2747 = !DILocalVariable(name: "e", scope: !2739, file: !47, line: 816, type: !18)
!2748 = !DILocalVariable(name: "flags", scope: !2739, file: !47, line: 818, type: !18)
!2749 = !DILocalVariable(name: "bufsize", scope: !2739, file: !47, line: 819, type: !86)
!2750 = !DILocalVariable(name: "buf", scope: !2739, file: !47, line: 823, type: !42)
!2751 = !DILocation(line: 0, scope: !2739, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 802, column: 10, scope: !2730)
!2753 = !DILocation(line: 815, column: 37, scope: !2739, inlinedAt: !2752)
!2754 = !DILocation(line: 816, column: 11, scope: !2739, inlinedAt: !2752)
!2755 = !DILocation(line: 818, column: 18, scope: !2739, inlinedAt: !2752)
!2756 = !DILocation(line: 818, column: 24, scope: !2739, inlinedAt: !2752)
!2757 = !DILocation(line: 819, column: 69, scope: !2739, inlinedAt: !2752)
!2758 = !DILocation(line: 820, column: 53, scope: !2739, inlinedAt: !2752)
!2759 = !DILocation(line: 821, column: 49, scope: !2739, inlinedAt: !2752)
!2760 = !DILocation(line: 822, column: 49, scope: !2739, inlinedAt: !2752)
!2761 = !DILocation(line: 819, column: 20, scope: !2739, inlinedAt: !2752)
!2762 = !DILocation(line: 822, column: 62, scope: !2739, inlinedAt: !2752)
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2764, file: !189, line: 216, type: !86)
!2764 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2765, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!42, !86}
!2767 = !{!2763}
!2768 = !DILocation(line: 0, scope: !2764, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 823, column: 15, scope: !2739, inlinedAt: !2752)
!2770 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2769)
!2771 = !DILocation(line: 824, column: 60, scope: !2739, inlinedAt: !2752)
!2772 = !DILocation(line: 826, column: 32, scope: !2739, inlinedAt: !2752)
!2773 = !DILocation(line: 826, column: 47, scope: !2739, inlinedAt: !2752)
!2774 = !DILocation(line: 824, column: 3, scope: !2739, inlinedAt: !2752)
!2775 = !DILocation(line: 827, column: 9, scope: !2739, inlinedAt: !2752)
!2776 = !DILocation(line: 802, column: 3, scope: !2730)
!2777 = !DILocation(line: 0, scope: !2739)
!2778 = !DILocation(line: 815, column: 37, scope: !2739)
!2779 = !DILocation(line: 816, column: 11, scope: !2739)
!2780 = !DILocation(line: 818, column: 18, scope: !2739)
!2781 = !DILocation(line: 818, column: 27, scope: !2739)
!2782 = !DILocation(line: 818, column: 24, scope: !2739)
!2783 = !DILocation(line: 819, column: 69, scope: !2739)
!2784 = !DILocation(line: 820, column: 53, scope: !2739)
!2785 = !DILocation(line: 821, column: 49, scope: !2739)
!2786 = !DILocation(line: 822, column: 49, scope: !2739)
!2787 = !DILocation(line: 819, column: 20, scope: !2739)
!2788 = !DILocation(line: 822, column: 62, scope: !2739)
!2789 = !DILocation(line: 0, scope: !2764, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 823, column: 15, scope: !2739)
!2791 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2790)
!2792 = !DILocation(line: 824, column: 60, scope: !2739)
!2793 = !DILocation(line: 826, column: 32, scope: !2739)
!2794 = !DILocation(line: 826, column: 47, scope: !2739)
!2795 = !DILocation(line: 824, column: 3, scope: !2739)
!2796 = !DILocation(line: 827, column: 9, scope: !2739)
!2797 = !DILocation(line: 828, column: 7, scope: !2739)
!2798 = !DILocation(line: 829, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2739, file: !47, line: 828, column: 7)
!2800 = !{!2801, !2801, i64 0}
!2801 = !{!"long", !629, i64 0}
!2802 = !DILocation(line: 829, column: 5, scope: !2799)
!2803 = !DILocation(line: 830, column: 3, scope: !2739)
!2804 = distinct !DISubprogram(name: "quotearg_free", scope: !47, file: !47, line: 848, type: !1486, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2805)
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "sv", scope: !2804, file: !47, line: 850, type: !117)
!2807 = !DILocalVariable(name: "i", scope: !2804, file: !47, line: 851, type: !18)
!2808 = !DILocation(line: 850, column: 24, scope: !2804)
!2809 = !DILocation(line: 0, scope: !2804)
!2810 = !DILocation(line: 852, column: 19, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !47, line: 852, column: 3)
!2812 = distinct !DILexicalBlock(scope: !2804, file: !47, line: 852, column: 3)
!2813 = !DILocation(line: 852, column: 17, scope: !2811)
!2814 = !DILocation(line: 852, column: 3, scope: !2812)
!2815 = !DILocation(line: 853, column: 17, scope: !2811)
!2816 = !{!2817, !628, i64 8}
!2817 = !{!"slotvec", !2801, i64 0, !628, i64 8}
!2818 = !DILocation(line: 853, column: 5, scope: !2811)
!2819 = !DILocation(line: 852, column: 28, scope: !2811)
!2820 = distinct !{!2820, !2814, !2821, !669}
!2821 = !DILocation(line: 853, column: 20, scope: !2812)
!2822 = !DILocation(line: 854, column: 13, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2804, file: !47, line: 854, column: 7)
!2824 = !DILocation(line: 854, column: 17, scope: !2823)
!2825 = !DILocation(line: 854, column: 7, scope: !2804)
!2826 = !DILocation(line: 856, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !47, line: 855, column: 5)
!2828 = !DILocation(line: 857, column: 21, scope: !2827)
!2829 = !{!2817, !2801, i64 0}
!2830 = !DILocation(line: 858, column: 20, scope: !2827)
!2831 = !DILocation(line: 859, column: 5, scope: !2827)
!2832 = !DILocation(line: 860, column: 10, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2804, file: !47, line: 860, column: 7)
!2834 = !DILocation(line: 860, column: 7, scope: !2804)
!2835 = !DILocation(line: 862, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !47, line: 861, column: 5)
!2837 = !DILocation(line: 862, column: 7, scope: !2836)
!2838 = !DILocation(line: 863, column: 15, scope: !2836)
!2839 = !DILocation(line: 864, column: 5, scope: !2836)
!2840 = !DILocation(line: 865, column: 10, scope: !2804)
!2841 = !DILocation(line: 866, column: 1, scope: !2804)
!2842 = distinct !DISubprogram(name: "quotearg_n", scope: !47, file: !47, line: 931, type: !747, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2843)
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !47, line: 931, type: !18)
!2845 = !DILocalVariable(name: "arg", arg: 2, scope: !2842, file: !47, line: 931, type: !9)
!2846 = !DILocation(line: 0, scope: !2842)
!2847 = !DILocation(line: 933, column: 10, scope: !2842)
!2848 = !DILocation(line: 933, column: 3, scope: !2842)
!2849 = distinct !DISubprogram(name: "quotearg_n_options", scope: !47, file: !47, line: 877, type: !2850, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!42, !18, !9, !86, !1894}
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2862, !2863, !2865, !2866, !2867}
!2853 = !DILocalVariable(name: "n", arg: 1, scope: !2849, file: !47, line: 877, type: !18)
!2854 = !DILocalVariable(name: "arg", arg: 2, scope: !2849, file: !47, line: 877, type: !9)
!2855 = !DILocalVariable(name: "argsize", arg: 3, scope: !2849, file: !47, line: 877, type: !86)
!2856 = !DILocalVariable(name: "options", arg: 4, scope: !2849, file: !47, line: 878, type: !1894)
!2857 = !DILocalVariable(name: "e", scope: !2849, file: !47, line: 880, type: !18)
!2858 = !DILocalVariable(name: "sv", scope: !2849, file: !47, line: 882, type: !117)
!2859 = !DILocalVariable(name: "preallocated", scope: !2860, file: !47, line: 889, type: !8)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !47, line: 888, column: 5)
!2861 = distinct !DILexicalBlock(scope: !2849, file: !47, line: 887, column: 7)
!2862 = !DILocalVariable(name: "nmax", scope: !2860, file: !47, line: 890, type: !18)
!2863 = !DILocalVariable(name: "size", scope: !2864, file: !47, line: 903, type: !86)
!2864 = distinct !DILexicalBlock(scope: !2849, file: !47, line: 902, column: 3)
!2865 = !DILocalVariable(name: "val", scope: !2864, file: !47, line: 904, type: !42)
!2866 = !DILocalVariable(name: "flags", scope: !2864, file: !47, line: 906, type: !18)
!2867 = !DILocalVariable(name: "qsize", scope: !2864, file: !47, line: 907, type: !86)
!2868 = !DILocation(line: 0, scope: !2849)
!2869 = !DILocation(line: 880, column: 11, scope: !2849)
!2870 = !DILocation(line: 882, column: 24, scope: !2849)
!2871 = !DILocation(line: 884, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2849, file: !47, line: 884, column: 7)
!2873 = !DILocation(line: 884, column: 7, scope: !2849)
!2874 = !DILocation(line: 885, column: 5, scope: !2872)
!2875 = !DILocation(line: 887, column: 7, scope: !2861)
!2876 = !DILocation(line: 887, column: 14, scope: !2861)
!2877 = !DILocation(line: 887, column: 7, scope: !2849)
!2878 = !DILocation(line: 889, column: 31, scope: !2860)
!2879 = !DILocation(line: 0, scope: !2860)
!2880 = !DILocation(line: 892, column: 16, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2860, file: !47, line: 892, column: 11)
!2882 = !DILocation(line: 892, column: 11, scope: !2860)
!2883 = !DILocation(line: 893, column: 9, scope: !2881)
!2884 = !DILocation(line: 895, column: 32, scope: !2860)
!2885 = !DILocation(line: 895, column: 61, scope: !2860)
!2886 = !DILocation(line: 895, column: 66, scope: !2860)
!2887 = !DILocation(line: 895, column: 22, scope: !2860)
!2888 = !DILocation(line: 895, column: 15, scope: !2860)
!2889 = !DILocation(line: 896, column: 11, scope: !2860)
!2890 = !DILocation(line: 897, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2860, file: !47, line: 896, column: 11)
!2892 = !{i64 0, i64 8, !2800, i64 8, i64 8, !627}
!2893 = !DILocation(line: 897, column: 9, scope: !2891)
!2894 = !DILocation(line: 898, column: 20, scope: !2860)
!2895 = !DILocation(line: 898, column: 18, scope: !2860)
!2896 = !DILocation(line: 898, column: 15, scope: !2860)
!2897 = !DILocation(line: 898, column: 38, scope: !2860)
!2898 = !DILocation(line: 898, column: 31, scope: !2860)
!2899 = !DILocation(line: 898, column: 48, scope: !2860)
!2900 = !DILocation(line: 0, scope: !2291, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 898, column: 7, scope: !2860)
!2902 = !DILocation(line: 59, column: 10, scope: !2291, inlinedAt: !2901)
!2903 = !DILocation(line: 899, column: 14, scope: !2860)
!2904 = !DILocation(line: 900, column: 5, scope: !2860)
!2905 = !DILocation(line: 903, column: 19, scope: !2864)
!2906 = !DILocation(line: 903, column: 25, scope: !2864)
!2907 = !DILocation(line: 0, scope: !2864)
!2908 = !DILocation(line: 904, column: 23, scope: !2864)
!2909 = !DILocation(line: 906, column: 26, scope: !2864)
!2910 = !DILocation(line: 906, column: 32, scope: !2864)
!2911 = !DILocation(line: 908, column: 55, scope: !2864)
!2912 = !DILocation(line: 909, column: 46, scope: !2864)
!2913 = !DILocation(line: 910, column: 55, scope: !2864)
!2914 = !DILocation(line: 911, column: 55, scope: !2864)
!2915 = !DILocation(line: 907, column: 20, scope: !2864)
!2916 = !DILocation(line: 913, column: 14, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2864, file: !47, line: 913, column: 9)
!2918 = !DILocation(line: 913, column: 9, scope: !2864)
!2919 = !DILocation(line: 915, column: 35, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !47, line: 914, column: 7)
!2921 = !DILocation(line: 915, column: 20, scope: !2920)
!2922 = !DILocation(line: 916, column: 17, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !47, line: 916, column: 13)
!2924 = !DILocation(line: 916, column: 13, scope: !2920)
!2925 = !DILocation(line: 917, column: 11, scope: !2923)
!2926 = !DILocation(line: 0, scope: !2764, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 918, column: 27, scope: !2920)
!2928 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2927)
!2929 = !DILocation(line: 918, column: 19, scope: !2920)
!2930 = !DILocation(line: 919, column: 69, scope: !2920)
!2931 = !DILocation(line: 921, column: 44, scope: !2920)
!2932 = !DILocation(line: 922, column: 44, scope: !2920)
!2933 = !DILocation(line: 919, column: 9, scope: !2920)
!2934 = !DILocation(line: 923, column: 7, scope: !2920)
!2935 = !DILocation(line: 925, column: 11, scope: !2864)
!2936 = !DILocation(line: 926, column: 5, scope: !2864)
!2937 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !47, file: !47, line: 937, type: !2938, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!42, !18, !9, !86}
!2940 = !{!2941, !2942, !2943}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !47, line: 937, type: !18)
!2942 = !DILocalVariable(name: "arg", arg: 2, scope: !2937, file: !47, line: 937, type: !9)
!2943 = !DILocalVariable(name: "argsize", arg: 3, scope: !2937, file: !47, line: 937, type: !86)
!2944 = !DILocation(line: 0, scope: !2937)
!2945 = !DILocation(line: 939, column: 10, scope: !2937)
!2946 = !DILocation(line: 939, column: 3, scope: !2937)
!2947 = distinct !DISubprogram(name: "quotearg", scope: !47, file: !47, line: 943, type: !1479, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2948)
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "arg", arg: 1, scope: !2947, file: !47, line: 943, type: !9)
!2950 = !DILocation(line: 0, scope: !2947)
!2951 = !DILocation(line: 0, scope: !2842, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 945, column: 10, scope: !2947)
!2953 = !DILocation(line: 933, column: 10, scope: !2842, inlinedAt: !2952)
!2954 = !DILocation(line: 945, column: 3, scope: !2947)
!2955 = distinct !DISubprogram(name: "quotearg_mem", scope: !47, file: !47, line: 949, type: !2956, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!42, !9, !86}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !47, line: 949, type: !9)
!2960 = !DILocalVariable(name: "argsize", arg: 2, scope: !2955, file: !47, line: 949, type: !86)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2937, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 951, column: 10, scope: !2955)
!2964 = !DILocation(line: 939, column: 10, scope: !2937, inlinedAt: !2963)
!2965 = !DILocation(line: 951, column: 3, scope: !2955)
!2966 = distinct !DISubprogram(name: "quotearg_n_style", scope: !47, file: !47, line: 955, type: !2967, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!42, !18, !49, !9}
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !47, line: 955, type: !18)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !47, line: 955, type: !49)
!2972 = !DILocalVariable(name: "arg", arg: 3, scope: !2966, file: !47, line: 955, type: !9)
!2973 = !DILocalVariable(name: "o", scope: !2966, file: !47, line: 957, type: !1895)
!2974 = !DILocation(line: 0, scope: !2966)
!2975 = !DILocation(line: 957, column: 3, scope: !2966)
!2976 = !DILocation(line: 957, column: 32, scope: !2966)
!2977 = !{!2978}
!2978 = distinct !{!2978, !2979, !"quoting_options_from_style: argument 0"}
!2979 = distinct !{!2979, !"quoting_options_from_style"}
!2980 = !DILocation(line: 957, column: 36, scope: !2966)
!2981 = !DILocalVariable(name: "style", arg: 1, scope: !2982, file: !47, line: 193, type: !49)
!2982 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !47, file: !47, line: 193, type: !2983, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!98, !49}
!2985 = !{!2981, !2986}
!2986 = !DILocalVariable(name: "o", scope: !2982, file: !47, line: 195, type: !98)
!2987 = !DILocation(line: 0, scope: !2982, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 957, column: 36, scope: !2966)
!2989 = !DILocation(line: 195, column: 26, scope: !2982, inlinedAt: !2988)
!2990 = !DILocation(line: 196, column: 13, scope: !2991, inlinedAt: !2988)
!2991 = distinct !DILexicalBlock(scope: !2982, file: !47, line: 196, column: 7)
!2992 = !DILocation(line: 196, column: 7, scope: !2982, inlinedAt: !2988)
!2993 = !DILocation(line: 197, column: 5, scope: !2991, inlinedAt: !2988)
!2994 = !DILocation(line: 198, column: 5, scope: !2982, inlinedAt: !2988)
!2995 = !DILocation(line: 198, column: 11, scope: !2982, inlinedAt: !2988)
!2996 = !DILocation(line: 958, column: 10, scope: !2966)
!2997 = !DILocation(line: 959, column: 1, scope: !2966)
!2998 = !DILocation(line: 958, column: 3, scope: !2966)
!2999 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !47, file: !47, line: 962, type: !3000, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!42, !18, !49, !9, !86}
!3002 = !{!3003, !3004, !3005, !3006, !3007}
!3003 = !DILocalVariable(name: "n", arg: 1, scope: !2999, file: !47, line: 962, type: !18)
!3004 = !DILocalVariable(name: "s", arg: 2, scope: !2999, file: !47, line: 962, type: !49)
!3005 = !DILocalVariable(name: "arg", arg: 3, scope: !2999, file: !47, line: 963, type: !9)
!3006 = !DILocalVariable(name: "argsize", arg: 4, scope: !2999, file: !47, line: 963, type: !86)
!3007 = !DILocalVariable(name: "o", scope: !2999, file: !47, line: 965, type: !1895)
!3008 = !DILocation(line: 0, scope: !2999)
!3009 = !DILocation(line: 965, column: 3, scope: !2999)
!3010 = !DILocation(line: 965, column: 32, scope: !2999)
!3011 = !{!3012}
!3012 = distinct !{!3012, !3013, !"quoting_options_from_style: argument 0"}
!3013 = distinct !{!3013, !"quoting_options_from_style"}
!3014 = !DILocation(line: 965, column: 36, scope: !2999)
!3015 = !DILocation(line: 0, scope: !2982, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 965, column: 36, scope: !2999)
!3017 = !DILocation(line: 195, column: 26, scope: !2982, inlinedAt: !3016)
!3018 = !DILocation(line: 196, column: 13, scope: !2991, inlinedAt: !3016)
!3019 = !DILocation(line: 196, column: 7, scope: !2982, inlinedAt: !3016)
!3020 = !DILocation(line: 197, column: 5, scope: !2991, inlinedAt: !3016)
!3021 = !DILocation(line: 198, column: 5, scope: !2982, inlinedAt: !3016)
!3022 = !DILocation(line: 198, column: 11, scope: !2982, inlinedAt: !3016)
!3023 = !DILocation(line: 966, column: 10, scope: !2999)
!3024 = !DILocation(line: 967, column: 1, scope: !2999)
!3025 = !DILocation(line: 966, column: 3, scope: !2999)
!3026 = distinct !DISubprogram(name: "quotearg_style", scope: !47, file: !47, line: 970, type: !3027, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!42, !49, !9}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "s", arg: 1, scope: !3026, file: !47, line: 970, type: !49)
!3031 = !DILocalVariable(name: "arg", arg: 2, scope: !3026, file: !47, line: 970, type: !9)
!3032 = !DILocation(line: 0, scope: !3026)
!3033 = !DILocation(line: 0, scope: !2966, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 972, column: 10, scope: !3026)
!3035 = !DILocation(line: 957, column: 3, scope: !2966, inlinedAt: !3034)
!3036 = !DILocation(line: 957, column: 32, scope: !2966, inlinedAt: !3034)
!3037 = !{!3038}
!3038 = distinct !{!3038, !3039, !"quoting_options_from_style: argument 0"}
!3039 = distinct !{!3039, !"quoting_options_from_style"}
!3040 = !DILocation(line: 957, column: 36, scope: !2966, inlinedAt: !3034)
!3041 = !DILocation(line: 0, scope: !2982, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 957, column: 36, scope: !2966, inlinedAt: !3034)
!3043 = !DILocation(line: 195, column: 26, scope: !2982, inlinedAt: !3042)
!3044 = !DILocation(line: 196, column: 13, scope: !2991, inlinedAt: !3042)
!3045 = !DILocation(line: 196, column: 7, scope: !2982, inlinedAt: !3042)
!3046 = !DILocation(line: 197, column: 5, scope: !2991, inlinedAt: !3042)
!3047 = !DILocation(line: 198, column: 5, scope: !2982, inlinedAt: !3042)
!3048 = !DILocation(line: 198, column: 11, scope: !2982, inlinedAt: !3042)
!3049 = !DILocation(line: 958, column: 10, scope: !2966, inlinedAt: !3034)
!3050 = !DILocation(line: 959, column: 1, scope: !2966, inlinedAt: !3034)
!3051 = !DILocation(line: 972, column: 3, scope: !3026)
!3052 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !47, file: !47, line: 976, type: !3053, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!42, !49, !9, !86}
!3055 = !{!3056, !3057, !3058}
!3056 = !DILocalVariable(name: "s", arg: 1, scope: !3052, file: !47, line: 976, type: !49)
!3057 = !DILocalVariable(name: "arg", arg: 2, scope: !3052, file: !47, line: 976, type: !9)
!3058 = !DILocalVariable(name: "argsize", arg: 3, scope: !3052, file: !47, line: 976, type: !86)
!3059 = !DILocation(line: 0, scope: !3052)
!3060 = !DILocation(line: 0, scope: !2999, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 978, column: 10, scope: !3052)
!3062 = !DILocation(line: 965, column: 3, scope: !2999, inlinedAt: !3061)
!3063 = !DILocation(line: 965, column: 32, scope: !2999, inlinedAt: !3061)
!3064 = !{!3065}
!3065 = distinct !{!3065, !3066, !"quoting_options_from_style: argument 0"}
!3066 = distinct !{!3066, !"quoting_options_from_style"}
!3067 = !DILocation(line: 965, column: 36, scope: !2999, inlinedAt: !3061)
!3068 = !DILocation(line: 0, scope: !2982, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 965, column: 36, scope: !2999, inlinedAt: !3061)
!3070 = !DILocation(line: 195, column: 26, scope: !2982, inlinedAt: !3069)
!3071 = !DILocation(line: 196, column: 13, scope: !2991, inlinedAt: !3069)
!3072 = !DILocation(line: 196, column: 7, scope: !2982, inlinedAt: !3069)
!3073 = !DILocation(line: 197, column: 5, scope: !2991, inlinedAt: !3069)
!3074 = !DILocation(line: 198, column: 5, scope: !2982, inlinedAt: !3069)
!3075 = !DILocation(line: 198, column: 11, scope: !2982, inlinedAt: !3069)
!3076 = !DILocation(line: 966, column: 10, scope: !2999, inlinedAt: !3061)
!3077 = !DILocation(line: 967, column: 1, scope: !2999, inlinedAt: !3061)
!3078 = !DILocation(line: 978, column: 3, scope: !3052)
!3079 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !47, file: !47, line: 982, type: !3080, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!42, !9, !86, !11}
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DILocalVariable(name: "arg", arg: 1, scope: !3079, file: !47, line: 982, type: !9)
!3084 = !DILocalVariable(name: "argsize", arg: 2, scope: !3079, file: !47, line: 982, type: !86)
!3085 = !DILocalVariable(name: "ch", arg: 3, scope: !3079, file: !47, line: 982, type: !11)
!3086 = !DILocalVariable(name: "options", scope: !3079, file: !47, line: 984, type: !98)
!3087 = !DILocation(line: 0, scope: !3079)
!3088 = !DILocation(line: 984, column: 3, scope: !3079)
!3089 = !DILocation(line: 984, column: 26, scope: !3079)
!3090 = !DILocation(line: 985, column: 13, scope: !3079)
!3091 = !{i64 0, i64 4, !819, i64 4, i64 4, !1520, i64 8, i64 32, !819, i64 40, i64 8, !627, i64 48, i64 8, !627}
!3092 = !DILocation(line: 0, scope: !1915, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 986, column: 3, scope: !3079)
!3094 = !DILocation(line: 156, column: 62, scope: !1915, inlinedAt: !3093)
!3095 = !DILocation(line: 156, column: 57, scope: !1915, inlinedAt: !3093)
!3096 = !DILocation(line: 157, column: 15, scope: !1915, inlinedAt: !3093)
!3097 = !DILocation(line: 158, column: 12, scope: !1915, inlinedAt: !3093)
!3098 = !DILocation(line: 158, column: 15, scope: !1915, inlinedAt: !3093)
!3099 = !DILocation(line: 158, column: 25, scope: !1915, inlinedAt: !3093)
!3100 = !DILocation(line: 159, column: 18, scope: !1915, inlinedAt: !3093)
!3101 = !DILocation(line: 159, column: 23, scope: !1915, inlinedAt: !3093)
!3102 = !DILocation(line: 159, column: 6, scope: !1915, inlinedAt: !3093)
!3103 = !DILocation(line: 987, column: 10, scope: !3079)
!3104 = !DILocation(line: 988, column: 1, scope: !3079)
!3105 = !DILocation(line: 987, column: 3, scope: !3079)
!3106 = distinct !DISubprogram(name: "quotearg_char", scope: !47, file: !47, line: 991, type: !3107, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!42, !9, !11}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "arg", arg: 1, scope: !3106, file: !47, line: 991, type: !9)
!3111 = !DILocalVariable(name: "ch", arg: 2, scope: !3106, file: !47, line: 991, type: !11)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 0, scope: !3079, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 993, column: 10, scope: !3106)
!3115 = !DILocation(line: 984, column: 3, scope: !3079, inlinedAt: !3114)
!3116 = !DILocation(line: 984, column: 26, scope: !3079, inlinedAt: !3114)
!3117 = !DILocation(line: 985, column: 13, scope: !3079, inlinedAt: !3114)
!3118 = !DILocation(line: 0, scope: !1915, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 986, column: 3, scope: !3079, inlinedAt: !3114)
!3120 = !DILocation(line: 156, column: 62, scope: !1915, inlinedAt: !3119)
!3121 = !DILocation(line: 156, column: 57, scope: !1915, inlinedAt: !3119)
!3122 = !DILocation(line: 157, column: 15, scope: !1915, inlinedAt: !3119)
!3123 = !DILocation(line: 158, column: 12, scope: !1915, inlinedAt: !3119)
!3124 = !DILocation(line: 158, column: 15, scope: !1915, inlinedAt: !3119)
!3125 = !DILocation(line: 158, column: 25, scope: !1915, inlinedAt: !3119)
!3126 = !DILocation(line: 159, column: 18, scope: !1915, inlinedAt: !3119)
!3127 = !DILocation(line: 159, column: 23, scope: !1915, inlinedAt: !3119)
!3128 = !DILocation(line: 159, column: 6, scope: !1915, inlinedAt: !3119)
!3129 = !DILocation(line: 987, column: 10, scope: !3079, inlinedAt: !3114)
!3130 = !DILocation(line: 988, column: 1, scope: !3079, inlinedAt: !3114)
!3131 = !DILocation(line: 993, column: 3, scope: !3106)
!3132 = distinct !DISubprogram(name: "quotearg_colon", scope: !47, file: !47, line: 997, type: !1479, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3133)
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "arg", arg: 1, scope: !3132, file: !47, line: 997, type: !9)
!3135 = !DILocation(line: 0, scope: !3132)
!3136 = !DILocation(line: 0, scope: !3106, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 999, column: 10, scope: !3132)
!3138 = !DILocation(line: 0, scope: !3079, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 993, column: 10, scope: !3106, inlinedAt: !3137)
!3140 = !DILocation(line: 984, column: 3, scope: !3079, inlinedAt: !3139)
!3141 = !DILocation(line: 984, column: 26, scope: !3079, inlinedAt: !3139)
!3142 = !DILocation(line: 985, column: 13, scope: !3079, inlinedAt: !3139)
!3143 = !DILocation(line: 0, scope: !1915, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 986, column: 3, scope: !3079, inlinedAt: !3139)
!3145 = !DILocation(line: 156, column: 57, scope: !1915, inlinedAt: !3144)
!3146 = !DILocation(line: 158, column: 12, scope: !1915, inlinedAt: !3144)
!3147 = !DILocation(line: 159, column: 6, scope: !1915, inlinedAt: !3144)
!3148 = !DILocation(line: 987, column: 10, scope: !3079, inlinedAt: !3139)
!3149 = !DILocation(line: 988, column: 1, scope: !3079, inlinedAt: !3139)
!3150 = !DILocation(line: 999, column: 3, scope: !3132)
!3151 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !47, file: !47, line: 1003, type: !2956, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3152)
!3152 = !{!3153, !3154}
!3153 = !DILocalVariable(name: "arg", arg: 1, scope: !3151, file: !47, line: 1003, type: !9)
!3154 = !DILocalVariable(name: "argsize", arg: 2, scope: !3151, file: !47, line: 1003, type: !86)
!3155 = !DILocation(line: 0, scope: !3151)
!3156 = !DILocation(line: 0, scope: !3079, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 1005, column: 10, scope: !3151)
!3158 = !DILocation(line: 984, column: 3, scope: !3079, inlinedAt: !3157)
!3159 = !DILocation(line: 984, column: 26, scope: !3079, inlinedAt: !3157)
!3160 = !DILocation(line: 985, column: 13, scope: !3079, inlinedAt: !3157)
!3161 = !DILocation(line: 0, scope: !1915, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 986, column: 3, scope: !3079, inlinedAt: !3157)
!3163 = !DILocation(line: 156, column: 57, scope: !1915, inlinedAt: !3162)
!3164 = !DILocation(line: 158, column: 12, scope: !1915, inlinedAt: !3162)
!3165 = !DILocation(line: 159, column: 6, scope: !1915, inlinedAt: !3162)
!3166 = !DILocation(line: 987, column: 10, scope: !3079, inlinedAt: !3157)
!3167 = !DILocation(line: 988, column: 1, scope: !3079, inlinedAt: !3157)
!3168 = !DILocation(line: 1005, column: 3, scope: !3151)
!3169 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !47, file: !47, line: 1009, type: !2967, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3170)
!3170 = !{!3171, !3172, !3173, !3174}
!3171 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !47, line: 1009, type: !18)
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3169, file: !47, line: 1009, type: !49)
!3173 = !DILocalVariable(name: "arg", arg: 3, scope: !3169, file: !47, line: 1009, type: !9)
!3174 = !DILocalVariable(name: "options", scope: !3169, file: !47, line: 1011, type: !98)
!3175 = !DILocation(line: 195, column: 26, scope: !2982, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1012, column: 13, scope: !3169)
!3177 = !DILocation(line: 0, scope: !3169)
!3178 = !DILocation(line: 1011, column: 3, scope: !3169)
!3179 = !DILocation(line: 1011, column: 26, scope: !3169)
!3180 = !DILocation(line: 1012, column: 13, scope: !3169)
!3181 = !{!3182}
!3182 = distinct !{!3182, !3183, !"quoting_options_from_style: argument 0"}
!3183 = distinct !{!3183, !"quoting_options_from_style"}
!3184 = !DILocation(line: 0, scope: !2982, inlinedAt: !3176)
!3185 = !DILocation(line: 196, column: 13, scope: !2991, inlinedAt: !3176)
!3186 = !DILocation(line: 196, column: 7, scope: !2982, inlinedAt: !3176)
!3187 = !DILocation(line: 197, column: 5, scope: !2991, inlinedAt: !3176)
!3188 = !{i64 0, i64 4, !1520, i64 4, i64 32, !819, i64 36, i64 8, !627, i64 44, i64 8, !627}
!3189 = !DILocation(line: 0, scope: !1915, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1013, column: 3, scope: !3169)
!3191 = !DILocation(line: 156, column: 57, scope: !1915, inlinedAt: !3190)
!3192 = !DILocation(line: 158, column: 12, scope: !1915, inlinedAt: !3190)
!3193 = !DILocation(line: 159, column: 6, scope: !1915, inlinedAt: !3190)
!3194 = !DILocation(line: 1014, column: 10, scope: !3169)
!3195 = !DILocation(line: 1015, column: 1, scope: !3169)
!3196 = !DILocation(line: 1014, column: 3, scope: !3169)
!3197 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !47, file: !47, line: 1018, type: !3198, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!42, !18, !9, !9, !9}
!3200 = !{!3201, !3202, !3203, !3204}
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3197, file: !47, line: 1018, type: !18)
!3202 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3197, file: !47, line: 1018, type: !9)
!3203 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3197, file: !47, line: 1019, type: !9)
!3204 = !DILocalVariable(name: "arg", arg: 4, scope: !3197, file: !47, line: 1019, type: !9)
!3205 = !DILocation(line: 0, scope: !3197)
!3206 = !DILocalVariable(name: "n", arg: 1, scope: !3207, file: !47, line: 1026, type: !18)
!3207 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !47, file: !47, line: 1026, type: !3208, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!42, !18, !9, !9, !9, !86}
!3210 = !{!3206, !3211, !3212, !3213, !3214, !3215}
!3211 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3207, file: !47, line: 1026, type: !9)
!3212 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3207, file: !47, line: 1027, type: !9)
!3213 = !DILocalVariable(name: "arg", arg: 4, scope: !3207, file: !47, line: 1028, type: !9)
!3214 = !DILocalVariable(name: "argsize", arg: 5, scope: !3207, file: !47, line: 1028, type: !86)
!3215 = !DILocalVariable(name: "o", scope: !3207, file: !47, line: 1030, type: !98)
!3216 = !DILocation(line: 0, scope: !3207, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 1021, column: 10, scope: !3197)
!3218 = !DILocation(line: 1030, column: 3, scope: !3207, inlinedAt: !3217)
!3219 = !DILocation(line: 1030, column: 26, scope: !3207, inlinedAt: !3217)
!3220 = !DILocation(line: 1030, column: 30, scope: !3207, inlinedAt: !3217)
!3221 = !DILocation(line: 0, scope: !1956, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1031, column: 3, scope: !3207, inlinedAt: !3217)
!3223 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3222)
!3224 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3222)
!3225 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3222)
!3226 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3222)
!3227 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3222)
!3228 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3222)
!3229 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3222)
!3230 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3222)
!3231 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3222)
!3232 = !DILocation(line: 1032, column: 10, scope: !3207, inlinedAt: !3217)
!3233 = !DILocation(line: 1033, column: 1, scope: !3207, inlinedAt: !3217)
!3234 = !DILocation(line: 1021, column: 3, scope: !3197)
!3235 = !DILocation(line: 0, scope: !3207)
!3236 = !DILocation(line: 1030, column: 3, scope: !3207)
!3237 = !DILocation(line: 1030, column: 26, scope: !3207)
!3238 = !DILocation(line: 1030, column: 30, scope: !3207)
!3239 = !DILocation(line: 0, scope: !1956, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1031, column: 3, scope: !3207)
!3241 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3240)
!3242 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3240)
!3243 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3240)
!3244 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3240)
!3245 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3240)
!3246 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3240)
!3247 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3240)
!3248 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3240)
!3249 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3240)
!3250 = !DILocation(line: 1032, column: 10, scope: !3207)
!3251 = !DILocation(line: 1033, column: 1, scope: !3207)
!3252 = !DILocation(line: 1032, column: 3, scope: !3207)
!3253 = distinct !DISubprogram(name: "quotearg_custom", scope: !47, file: !47, line: 1036, type: !3254, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!42, !9, !9, !9}
!3256 = !{!3257, !3258, !3259}
!3257 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3253, file: !47, line: 1036, type: !9)
!3258 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3253, file: !47, line: 1036, type: !9)
!3259 = !DILocalVariable(name: "arg", arg: 3, scope: !3253, file: !47, line: 1037, type: !9)
!3260 = !DILocation(line: 0, scope: !3253)
!3261 = !DILocation(line: 0, scope: !3197, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1039, column: 10, scope: !3253)
!3263 = !DILocation(line: 0, scope: !3207, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1021, column: 10, scope: !3197, inlinedAt: !3262)
!3265 = !DILocation(line: 1030, column: 3, scope: !3207, inlinedAt: !3264)
!3266 = !DILocation(line: 1030, column: 26, scope: !3207, inlinedAt: !3264)
!3267 = !DILocation(line: 1030, column: 30, scope: !3207, inlinedAt: !3264)
!3268 = !DILocation(line: 0, scope: !1956, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1031, column: 3, scope: !3207, inlinedAt: !3264)
!3270 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3269)
!3271 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3269)
!3272 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3269)
!3273 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3269)
!3274 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3269)
!3275 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3269)
!3276 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3269)
!3277 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3269)
!3278 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3269)
!3279 = !DILocation(line: 1032, column: 10, scope: !3207, inlinedAt: !3264)
!3280 = !DILocation(line: 1033, column: 1, scope: !3207, inlinedAt: !3264)
!3281 = !DILocation(line: 1039, column: 3, scope: !3253)
!3282 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !47, file: !47, line: 1043, type: !3283, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!42, !9, !9, !9, !86}
!3285 = !{!3286, !3287, !3288, !3289}
!3286 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3282, file: !47, line: 1043, type: !9)
!3287 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3282, file: !47, line: 1043, type: !9)
!3288 = !DILocalVariable(name: "arg", arg: 3, scope: !3282, file: !47, line: 1044, type: !9)
!3289 = !DILocalVariable(name: "argsize", arg: 4, scope: !3282, file: !47, line: 1044, type: !86)
!3290 = !DILocation(line: 0, scope: !3282)
!3291 = !DILocation(line: 0, scope: !3207, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1046, column: 10, scope: !3282)
!3293 = !DILocation(line: 1030, column: 3, scope: !3207, inlinedAt: !3292)
!3294 = !DILocation(line: 1030, column: 26, scope: !3207, inlinedAt: !3292)
!3295 = !DILocation(line: 1030, column: 30, scope: !3207, inlinedAt: !3292)
!3296 = !DILocation(line: 0, scope: !1956, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1031, column: 3, scope: !3207, inlinedAt: !3292)
!3298 = !DILocation(line: 184, column: 6, scope: !1956, inlinedAt: !3297)
!3299 = !DILocation(line: 184, column: 12, scope: !1956, inlinedAt: !3297)
!3300 = !DILocation(line: 185, column: 8, scope: !1970, inlinedAt: !3297)
!3301 = !DILocation(line: 185, column: 19, scope: !1970, inlinedAt: !3297)
!3302 = !DILocation(line: 186, column: 5, scope: !1970, inlinedAt: !3297)
!3303 = !DILocation(line: 187, column: 6, scope: !1956, inlinedAt: !3297)
!3304 = !DILocation(line: 187, column: 17, scope: !1956, inlinedAt: !3297)
!3305 = !DILocation(line: 188, column: 6, scope: !1956, inlinedAt: !3297)
!3306 = !DILocation(line: 188, column: 18, scope: !1956, inlinedAt: !3297)
!3307 = !DILocation(line: 1032, column: 10, scope: !3207, inlinedAt: !3292)
!3308 = !DILocation(line: 1033, column: 1, scope: !3207, inlinedAt: !3292)
!3309 = !DILocation(line: 1046, column: 3, scope: !3282)
!3310 = distinct !DISubprogram(name: "quote_n_mem", scope: !47, file: !47, line: 1061, type: !3311, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!9, !18, !9, !86}
!3313 = !{!3314, !3315, !3316}
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3310, file: !47, line: 1061, type: !18)
!3315 = !DILocalVariable(name: "arg", arg: 2, scope: !3310, file: !47, line: 1061, type: !9)
!3316 = !DILocalVariable(name: "argsize", arg: 3, scope: !3310, file: !47, line: 1061, type: !86)
!3317 = !DILocation(line: 0, scope: !3310)
!3318 = !DILocation(line: 1063, column: 10, scope: !3310)
!3319 = !DILocation(line: 1063, column: 3, scope: !3310)
!3320 = distinct !DISubprogram(name: "quote_mem", scope: !47, file: !47, line: 1067, type: !3321, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!9, !9, !86}
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "arg", arg: 1, scope: !3320, file: !47, line: 1067, type: !9)
!3325 = !DILocalVariable(name: "argsize", arg: 2, scope: !3320, file: !47, line: 1067, type: !86)
!3326 = !DILocation(line: 0, scope: !3320)
!3327 = !DILocation(line: 0, scope: !3310, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1069, column: 10, scope: !3320)
!3329 = !DILocation(line: 1063, column: 10, scope: !3310, inlinedAt: !3328)
!3330 = !DILocation(line: 1069, column: 3, scope: !3320)
!3331 = distinct !DISubprogram(name: "quote_n", scope: !47, file: !47, line: 1073, type: !3332, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!9, !18, !9}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !47, line: 1073, type: !18)
!3336 = !DILocalVariable(name: "arg", arg: 2, scope: !3331, file: !47, line: 1073, type: !9)
!3337 = !DILocation(line: 0, scope: !3331)
!3338 = !DILocation(line: 0, scope: !3310, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1075, column: 10, scope: !3331)
!3340 = !DILocation(line: 1063, column: 10, scope: !3310, inlinedAt: !3339)
!3341 = !DILocation(line: 1075, column: 3, scope: !3331)
!3342 = distinct !DISubprogram(name: "quote", scope: !47, file: !47, line: 1079, type: !3343, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !46, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!9, !9}
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "arg", arg: 1, scope: !3342, file: !47, line: 1079, type: !9)
!3347 = !DILocation(line: 0, scope: !3342)
!3348 = !DILocation(line: 0, scope: !3331, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1081, column: 10, scope: !3342)
!3350 = !DILocation(line: 0, scope: !3310, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1075, column: 10, scope: !3331, inlinedAt: !3349)
!3352 = !DILocation(line: 1063, column: 10, scope: !3310, inlinedAt: !3351)
!3353 = !DILocation(line: 1081, column: 3, scope: !3342)
!3354 = distinct !DISubprogram(name: "version_etc_arn", scope: !179, file: !179, line: 61, type: !3355, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3393)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3357, !9, !9, !9, !3392, !86}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3359, line: 7, baseType: !3360)
!3359 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3360, file: !698, line: 51, baseType: !18, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3360, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3360, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3360, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3360, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3360, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3360, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3360, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3360, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3360, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3360, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3360, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3360, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3360, file: !698, line: 70, baseType: !3376, size: 64, offset: 832)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3360, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3360, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3360, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3360, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3360, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3360, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3360, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3360, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3360, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3360, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3360, file: !698, line: 93, baseType: !3376, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3360, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3360, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3360, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3360, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399}
!3394 = !DILocalVariable(name: "stream", arg: 1, scope: !3354, file: !179, line: 61, type: !3357)
!3395 = !DILocalVariable(name: "command_name", arg: 2, scope: !3354, file: !179, line: 62, type: !9)
!3396 = !DILocalVariable(name: "package", arg: 3, scope: !3354, file: !179, line: 62, type: !9)
!3397 = !DILocalVariable(name: "version", arg: 4, scope: !3354, file: !179, line: 63, type: !9)
!3398 = !DILocalVariable(name: "authors", arg: 5, scope: !3354, file: !179, line: 64, type: !3392)
!3399 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3354, file: !179, line: 64, type: !86)
!3400 = !DILocation(line: 0, scope: !3354)
!3401 = !DILocation(line: 66, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3354, file: !179, line: 66, column: 7)
!3403 = !DILocation(line: 66, column: 7, scope: !3354)
!3404 = !DILocation(line: 67, column: 5, scope: !3402)
!3405 = !DILocation(line: 69, column: 5, scope: !3402)
!3406 = !DILocation(line: 83, column: 3, scope: !3354)
!3407 = !DILocation(line: 85, column: 3, scope: !3354)
!3408 = !DILocation(line: 88, column: 3, scope: !3354)
!3409 = !DILocation(line: 95, column: 3, scope: !3354)
!3410 = !DILocation(line: 97, column: 3, scope: !3354)
!3411 = !DILocation(line: 105, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3354, file: !179, line: 98, column: 5)
!3413 = !DILocation(line: 106, column: 7, scope: !3412)
!3414 = !DILocation(line: 109, column: 7, scope: !3412)
!3415 = !DILocation(line: 110, column: 7, scope: !3412)
!3416 = !DILocation(line: 113, column: 7, scope: !3412)
!3417 = !DILocation(line: 115, column: 7, scope: !3412)
!3418 = !DILocation(line: 120, column: 7, scope: !3412)
!3419 = !DILocation(line: 122, column: 7, scope: !3412)
!3420 = !DILocation(line: 127, column: 7, scope: !3412)
!3421 = !DILocation(line: 129, column: 7, scope: !3412)
!3422 = !DILocation(line: 134, column: 7, scope: !3412)
!3423 = !DILocation(line: 137, column: 7, scope: !3412)
!3424 = !DILocation(line: 142, column: 7, scope: !3412)
!3425 = !DILocation(line: 145, column: 7, scope: !3412)
!3426 = !DILocation(line: 150, column: 7, scope: !3412)
!3427 = !DILocation(line: 154, column: 7, scope: !3412)
!3428 = !DILocation(line: 159, column: 7, scope: !3412)
!3429 = !DILocation(line: 163, column: 7, scope: !3412)
!3430 = !DILocation(line: 170, column: 7, scope: !3412)
!3431 = !DILocation(line: 174, column: 7, scope: !3412)
!3432 = !DILocation(line: 176, column: 1, scope: !3354)
!3433 = distinct !DISubprogram(name: "version_etc_ar", scope: !179, file: !179, line: 183, type: !3434, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3357, !9, !9, !9, !3392}
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442}
!3437 = !DILocalVariable(name: "stream", arg: 1, scope: !3433, file: !179, line: 183, type: !3357)
!3438 = !DILocalVariable(name: "command_name", arg: 2, scope: !3433, file: !179, line: 184, type: !9)
!3439 = !DILocalVariable(name: "package", arg: 3, scope: !3433, file: !179, line: 184, type: !9)
!3440 = !DILocalVariable(name: "version", arg: 4, scope: !3433, file: !179, line: 185, type: !9)
!3441 = !DILocalVariable(name: "authors", arg: 5, scope: !3433, file: !179, line: 185, type: !3392)
!3442 = !DILocalVariable(name: "n_authors", scope: !3433, file: !179, line: 187, type: !86)
!3443 = !DILocation(line: 0, scope: !3433)
!3444 = !DILocation(line: 189, column: 8, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3433, file: !179, line: 189, column: 3)
!3446 = !DILocation(line: 0, scope: !3445)
!3447 = !DILocation(line: 189, column: 23, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3445, file: !179, line: 189, column: 3)
!3449 = !DILocation(line: 189, column: 3, scope: !3445)
!3450 = !DILocation(line: 189, column: 52, scope: !3448)
!3451 = distinct !{!3451, !3449, !3452, !669}
!3452 = !DILocation(line: 190, column: 5, scope: !3445)
!3453 = !DILocation(line: 191, column: 3, scope: !3433)
!3454 = !DILocation(line: 192, column: 1, scope: !3433)
!3455 = distinct !DISubprogram(name: "version_etc_va", scope: !179, file: !179, line: 199, type: !3456, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3465)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !3357, !9, !9, !9, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3459, file: !179, line: 192, baseType: !51, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3459, file: !179, line: 192, baseType: !51, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3459, file: !179, line: 192, baseType: !41, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3459, file: !179, line: 192, baseType: !41, size: 64, offset: 128)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3466 = !DILocalVariable(name: "stream", arg: 1, scope: !3455, file: !179, line: 199, type: !3357)
!3467 = !DILocalVariable(name: "command_name", arg: 2, scope: !3455, file: !179, line: 200, type: !9)
!3468 = !DILocalVariable(name: "package", arg: 3, scope: !3455, file: !179, line: 200, type: !9)
!3469 = !DILocalVariable(name: "version", arg: 4, scope: !3455, file: !179, line: 201, type: !9)
!3470 = !DILocalVariable(name: "authors", arg: 5, scope: !3455, file: !179, line: 201, type: !3458)
!3471 = !DILocalVariable(name: "n_authors", scope: !3455, file: !179, line: 203, type: !86)
!3472 = !DILocalVariable(name: "authtab", scope: !3455, file: !179, line: 204, type: !3473)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, elements: !94)
!3474 = !DILocation(line: 0, scope: !3455)
!3475 = !DILocation(line: 204, column: 3, scope: !3455)
!3476 = !DILocation(line: 204, column: 15, scope: !3455)
!3477 = !DILocation(line: 208, column: 35, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !179, line: 206, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3455, file: !179, line: 206, column: 3)
!3480 = !DILocation(line: 208, column: 14, scope: !3478)
!3481 = !DILocation(line: 208, column: 33, scope: !3478)
!3482 = !DILocation(line: 208, column: 67, scope: !3478)
!3483 = !DILocation(line: 206, column: 3, scope: !3479)
!3484 = !DILocation(line: 0, scope: !3479)
!3485 = !DILocation(line: 211, column: 3, scope: !3455)
!3486 = !DILocation(line: 213, column: 1, scope: !3455)
!3487 = distinct !DISubprogram(name: "version_etc", scope: !179, file: !179, line: 230, type: !3488, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3357, !9, !9, !9, null}
!3490 = !{!3491, !3492, !3493, !3494, !3495}
!3491 = !DILocalVariable(name: "stream", arg: 1, scope: !3487, file: !179, line: 230, type: !3357)
!3492 = !DILocalVariable(name: "command_name", arg: 2, scope: !3487, file: !179, line: 231, type: !9)
!3493 = !DILocalVariable(name: "package", arg: 3, scope: !3487, file: !179, line: 231, type: !9)
!3494 = !DILocalVariable(name: "version", arg: 4, scope: !3487, file: !179, line: 232, type: !9)
!3495 = !DILocalVariable(name: "authors", scope: !3487, file: !179, line: 234, type: !3496)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !158, line: 52, baseType: !3497)
!3497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1772, line: 32, baseType: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !179, baseType: !3499)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3459, size: 192, elements: !724)
!3500 = !DILocation(line: 0, scope: !3487)
!3501 = !DILocation(line: 234, column: 3, scope: !3487)
!3502 = !DILocation(line: 234, column: 11, scope: !3487)
!3503 = !DILocation(line: 236, column: 3, scope: !3487)
!3504 = !DILocation(line: 237, column: 3, scope: !3487)
!3505 = !DILocation(line: 238, column: 3, scope: !3487)
!3506 = !DILocation(line: 239, column: 1, scope: !3487)
!3507 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !179, file: !179, line: 242, type: !1486, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !4)
!3508 = !DILocation(line: 244, column: 3, scope: !3507)
!3509 = !DILocation(line: 249, column: 3, scope: !3507)
!3510 = !DILocation(line: 255, column: 3, scope: !3507)
!3511 = !DILocation(line: 260, column: 3, scope: !3507)
!3512 = !DILocation(line: 262, column: 1, scope: !3507)
!3513 = distinct !DISubprogram(name: "xnmalloc", scope: !189, file: !189, line: 99, type: !3514, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!41, !86, !86}
!3516 = !{!3517, !3518}
!3517 = !DILocalVariable(name: "n", arg: 1, scope: !3513, file: !189, line: 99, type: !86)
!3518 = !DILocalVariable(name: "s", arg: 2, scope: !3513, file: !189, line: 99, type: !86)
!3519 = !DILocation(line: 0, scope: !3513)
!3520 = !DILocation(line: 101, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3513, file: !189, line: 101, column: 7)
!3522 = !DILocation(line: 101, column: 7, scope: !3513)
!3523 = !DILocation(line: 102, column: 5, scope: !3521)
!3524 = !DILocation(line: 103, column: 21, scope: !3513)
!3525 = !DILocalVariable(name: "n", arg: 1, scope: !3526, file: !186, line: 39, type: !86)
!3526 = distinct !DISubprogram(name: "xmalloc", scope: !186, file: !186, line: 39, type: !3527, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!41, !86}
!3529 = !{!3525, !3530}
!3530 = !DILocalVariable(name: "p", scope: !3526, file: !186, line: 41, type: !41)
!3531 = !DILocation(line: 0, scope: !3526, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 103, column: 10, scope: !3513)
!3533 = !DILocation(line: 41, column: 13, scope: !3526, inlinedAt: !3532)
!3534 = !DILocation(line: 42, column: 8, scope: !3535, inlinedAt: !3532)
!3535 = distinct !DILexicalBlock(scope: !3526, file: !186, line: 42, column: 7)
!3536 = !DILocation(line: 42, column: 10, scope: !3535, inlinedAt: !3532)
!3537 = !DILocation(line: 43, column: 5, scope: !3535, inlinedAt: !3532)
!3538 = !DILocation(line: 103, column: 3, scope: !3513)
!3539 = !DILocation(line: 0, scope: !3526)
!3540 = !DILocation(line: 41, column: 13, scope: !3526)
!3541 = !DILocation(line: 42, column: 8, scope: !3535)
!3542 = !DILocation(line: 42, column: 10, scope: !3535)
!3543 = !DILocation(line: 43, column: 5, scope: !3535)
!3544 = !DILocation(line: 44, column: 3, scope: !3526)
!3545 = distinct !DISubprogram(name: "xnrealloc", scope: !189, file: !189, line: 112, type: !3546, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!41, !41, !86, !86}
!3548 = !{!3549, !3550, !3551}
!3549 = !DILocalVariable(name: "p", arg: 1, scope: !3545, file: !189, line: 112, type: !41)
!3550 = !DILocalVariable(name: "n", arg: 2, scope: !3545, file: !189, line: 112, type: !86)
!3551 = !DILocalVariable(name: "s", arg: 3, scope: !3545, file: !189, line: 112, type: !86)
!3552 = !DILocation(line: 0, scope: !3545)
!3553 = !DILocation(line: 114, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3545, file: !189, line: 114, column: 7)
!3555 = !DILocation(line: 114, column: 7, scope: !3545)
!3556 = !DILocation(line: 115, column: 5, scope: !3554)
!3557 = !DILocation(line: 116, column: 25, scope: !3545)
!3558 = !DILocalVariable(name: "p", arg: 1, scope: !3559, file: !186, line: 51, type: !41)
!3559 = distinct !DISubprogram(name: "xrealloc", scope: !186, file: !186, line: 51, type: !3560, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3562)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!41, !41, !86}
!3562 = !{!3558, !3563}
!3563 = !DILocalVariable(name: "n", arg: 2, scope: !3559, file: !186, line: 51, type: !86)
!3564 = !DILocation(line: 0, scope: !3559, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 116, column: 10, scope: !3545)
!3566 = !DILocation(line: 53, column: 8, scope: !3567, inlinedAt: !3565)
!3567 = distinct !DILexicalBlock(scope: !3559, file: !186, line: 53, column: 7)
!3568 = !DILocation(line: 53, column: 10, scope: !3567, inlinedAt: !3565)
!3569 = !DILocation(line: 57, column: 7, scope: !3570, inlinedAt: !3565)
!3570 = distinct !DILexicalBlock(scope: !3567, file: !186, line: 54, column: 5)
!3571 = !DILocation(line: 58, column: 7, scope: !3570, inlinedAt: !3565)
!3572 = !DILocation(line: 61, column: 7, scope: !3559, inlinedAt: !3565)
!3573 = !DILocation(line: 62, column: 8, scope: !3574, inlinedAt: !3565)
!3574 = distinct !DILexicalBlock(scope: !3559, file: !186, line: 62, column: 7)
!3575 = !DILocation(line: 62, column: 10, scope: !3574, inlinedAt: !3565)
!3576 = !DILocation(line: 63, column: 5, scope: !3574, inlinedAt: !3565)
!3577 = !DILocation(line: 116, column: 3, scope: !3545)
!3578 = !DILocation(line: 0, scope: !3559)
!3579 = !DILocation(line: 53, column: 8, scope: !3567)
!3580 = !DILocation(line: 53, column: 10, scope: !3567)
!3581 = !DILocation(line: 57, column: 7, scope: !3570)
!3582 = !DILocation(line: 58, column: 7, scope: !3570)
!3583 = !DILocation(line: 61, column: 7, scope: !3559)
!3584 = !DILocation(line: 62, column: 8, scope: !3574)
!3585 = !DILocation(line: 62, column: 10, scope: !3574)
!3586 = !DILocation(line: 63, column: 5, scope: !3574)
!3587 = !DILocation(line: 65, column: 1, scope: !3559)
!3588 = !DILocation(line: 0, scope: !190)
!3589 = !DILocation(line: 176, column: 14, scope: !190)
!3590 = !DILocation(line: 178, column: 9, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !190, file: !189, line: 178, column: 7)
!3592 = !DILocation(line: 178, column: 7, scope: !190)
!3593 = !DILocation(line: 180, column: 13, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !189, line: 180, column: 11)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !189, line: 179, column: 5)
!3596 = !DILocation(line: 180, column: 11, scope: !3595)
!3597 = !DILocation(line: 188, column: 30, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !189, line: 181, column: 9)
!3599 = !DILocation(line: 189, column: 16, scope: !3598)
!3600 = !DILocation(line: 189, column: 13, scope: !3598)
!3601 = !DILocation(line: 190, column: 9, scope: !3598)
!3602 = !DILocation(line: 191, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !189, line: 191, column: 11)
!3604 = !DILocation(line: 191, column: 11, scope: !3595)
!3605 = !DILocation(line: 206, column: 7, scope: !190)
!3606 = !DILocation(line: 207, column: 25, scope: !190)
!3607 = !DILocation(line: 0, scope: !3559, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 207, column: 10, scope: !190)
!3609 = !DILocation(line: 53, column: 10, scope: !3567, inlinedAt: !3608)
!3610 = !DILocation(line: 192, column: 9, scope: !3603)
!3611 = !DILocation(line: 200, column: 69, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !189, line: 200, column: 11)
!3613 = distinct !DILexicalBlock(scope: !3591, file: !189, line: 195, column: 5)
!3614 = !DILocation(line: 201, column: 11, scope: !3612)
!3615 = !DILocation(line: 200, column: 11, scope: !3613)
!3616 = !DILocation(line: 202, column: 9, scope: !3612)
!3617 = !DILocation(line: 203, column: 14, scope: !3613)
!3618 = !DILocation(line: 203, column: 18, scope: !3613)
!3619 = !DILocation(line: 203, column: 9, scope: !3613)
!3620 = !DILocation(line: 53, column: 8, scope: !3567, inlinedAt: !3608)
!3621 = !DILocation(line: 57, column: 7, scope: !3570, inlinedAt: !3608)
!3622 = !DILocation(line: 58, column: 7, scope: !3570, inlinedAt: !3608)
!3623 = !DILocation(line: 61, column: 7, scope: !3559, inlinedAt: !3608)
!3624 = !DILocation(line: 62, column: 8, scope: !3574, inlinedAt: !3608)
!3625 = !DILocation(line: 62, column: 10, scope: !3574, inlinedAt: !3608)
!3626 = !DILocation(line: 63, column: 5, scope: !3574, inlinedAt: !3608)
!3627 = !DILocation(line: 207, column: 3, scope: !190)
!3628 = distinct !DISubprogram(name: "xcharalloc", scope: !189, file: !189, line: 216, type: !2765, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3629)
!3629 = !{!3630}
!3630 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !189, line: 216, type: !86)
!3631 = !DILocation(line: 0, scope: !3628)
!3632 = !DILocation(line: 0, scope: !3526, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 218, column: 10, scope: !3628)
!3634 = !DILocation(line: 41, column: 13, scope: !3526, inlinedAt: !3633)
!3635 = !DILocation(line: 42, column: 8, scope: !3535, inlinedAt: !3633)
!3636 = !DILocation(line: 42, column: 10, scope: !3535, inlinedAt: !3633)
!3637 = !DILocation(line: 43, column: 5, scope: !3535, inlinedAt: !3633)
!3638 = !DILocation(line: 218, column: 3, scope: !3628)
!3639 = distinct !DISubprogram(name: "x2realloc", scope: !186, file: !186, line: 74, type: !3640, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!41, !41, !193}
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "p", arg: 1, scope: !3639, file: !186, line: 74, type: !41)
!3644 = !DILocalVariable(name: "pn", arg: 2, scope: !3639, file: !186, line: 74, type: !193)
!3645 = !DILocation(line: 0, scope: !3639)
!3646 = !DILocation(line: 0, scope: !190, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 76, column: 10, scope: !3639)
!3648 = !DILocation(line: 176, column: 14, scope: !190, inlinedAt: !3647)
!3649 = !DILocation(line: 178, column: 9, scope: !3591, inlinedAt: !3647)
!3650 = !DILocation(line: 178, column: 7, scope: !190, inlinedAt: !3647)
!3651 = !DILocation(line: 180, column: 13, scope: !3594, inlinedAt: !3647)
!3652 = !DILocation(line: 180, column: 11, scope: !3595, inlinedAt: !3647)
!3653 = !DILocation(line: 191, column: 11, scope: !3603, inlinedAt: !3647)
!3654 = !DILocation(line: 191, column: 11, scope: !3595, inlinedAt: !3647)
!3655 = !DILocation(line: 192, column: 9, scope: !3603, inlinedAt: !3647)
!3656 = !DILocation(line: 201, column: 11, scope: !3612, inlinedAt: !3647)
!3657 = !DILocation(line: 200, column: 11, scope: !3613, inlinedAt: !3647)
!3658 = !DILocation(line: 202, column: 9, scope: !3612, inlinedAt: !3647)
!3659 = !DILocation(line: 203, column: 14, scope: !3613, inlinedAt: !3647)
!3660 = !DILocation(line: 203, column: 18, scope: !3613, inlinedAt: !3647)
!3661 = !DILocation(line: 203, column: 9, scope: !3613, inlinedAt: !3647)
!3662 = !DILocation(line: 0, scope: !3559, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 207, column: 10, scope: !190, inlinedAt: !3647)
!3664 = !DILocation(line: 53, column: 10, scope: !3567, inlinedAt: !3663)
!3665 = !DILocation(line: 206, column: 7, scope: !190, inlinedAt: !3647)
!3666 = !DILocation(line: 61, column: 7, scope: !3559, inlinedAt: !3663)
!3667 = !DILocation(line: 62, column: 8, scope: !3574, inlinedAt: !3663)
!3668 = !DILocation(line: 62, column: 10, scope: !3574, inlinedAt: !3663)
!3669 = !DILocation(line: 63, column: 5, scope: !3574, inlinedAt: !3663)
!3670 = !DILocation(line: 76, column: 3, scope: !3639)
!3671 = distinct !DISubprogram(name: "xzalloc", scope: !186, file: !186, line: 84, type: !3527, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3672)
!3672 = !{!3673}
!3673 = !DILocalVariable(name: "n", arg: 1, scope: !3671, file: !186, line: 84, type: !86)
!3674 = !DILocation(line: 0, scope: !3671)
!3675 = !DILocalVariable(name: "n", arg: 1, scope: !3676, file: !186, line: 93, type: !86)
!3676 = distinct !DISubprogram(name: "xcalloc", scope: !186, file: !186, line: 93, type: !3514, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3677)
!3677 = !{!3675, !3678, !3679}
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !186, line: 93, type: !86)
!3679 = !DILocalVariable(name: "p", scope: !3676, file: !186, line: 95, type: !41)
!3680 = !DILocation(line: 0, scope: !3676, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 86, column: 10, scope: !3671)
!3682 = !DILocation(line: 100, column: 7, scope: !3683, inlinedAt: !3681)
!3683 = distinct !DILexicalBlock(scope: !3676, file: !186, line: 100, column: 7)
!3684 = !DILocation(line: 101, column: 7, scope: !3683, inlinedAt: !3681)
!3685 = !DILocation(line: 101, column: 18, scope: !3683, inlinedAt: !3681)
!3686 = !DILocation(line: 101, column: 16, scope: !3683, inlinedAt: !3681)
!3687 = !DILocation(line: 100, column: 7, scope: !3676, inlinedAt: !3681)
!3688 = !DILocation(line: 102, column: 5, scope: !3683, inlinedAt: !3681)
!3689 = !DILocation(line: 86, column: 3, scope: !3671)
!3690 = !DILocation(line: 0, scope: !3676)
!3691 = !DILocation(line: 100, column: 7, scope: !3683)
!3692 = !DILocation(line: 101, column: 7, scope: !3683)
!3693 = !DILocation(line: 101, column: 18, scope: !3683)
!3694 = !DILocation(line: 101, column: 16, scope: !3683)
!3695 = !DILocation(line: 100, column: 7, scope: !3676)
!3696 = !DILocation(line: 102, column: 5, scope: !3683)
!3697 = !DILocation(line: 103, column: 3, scope: !3676)
!3698 = distinct !DISubprogram(name: "xmemdup", scope: !186, file: !186, line: 111, type: !3699, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3703)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!41, !3701, !86}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "p", arg: 1, scope: !3698, file: !186, line: 111, type: !3701)
!3705 = !DILocalVariable(name: "s", arg: 2, scope: !3698, file: !186, line: 111, type: !86)
!3706 = !DILocation(line: 0, scope: !3698)
!3707 = !DILocation(line: 0, scope: !3526, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 113, column: 18, scope: !3698)
!3709 = !DILocation(line: 41, column: 13, scope: !3526, inlinedAt: !3708)
!3710 = !DILocation(line: 42, column: 8, scope: !3535, inlinedAt: !3708)
!3711 = !DILocation(line: 42, column: 10, scope: !3535, inlinedAt: !3708)
!3712 = !DILocation(line: 43, column: 5, scope: !3535, inlinedAt: !3708)
!3713 = !DILocalVariable(name: "__dest", arg: 1, scope: !3714, file: !2292, line: 26, type: !3717)
!3714 = distinct !DISubprogram(name: "memcpy", scope: !2292, file: !2292, line: 26, type: !3715, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3719)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!41, !3717, !3718, !86}
!3717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!3718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3701)
!3719 = !{!3713, !3720, !3721}
!3720 = !DILocalVariable(name: "__src", arg: 2, scope: !3714, file: !2292, line: 26, type: !3718)
!3721 = !DILocalVariable(name: "__len", arg: 3, scope: !3714, file: !2292, line: 26, type: !86)
!3722 = !DILocation(line: 0, scope: !3714, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 113, column: 10, scope: !3698)
!3724 = !DILocation(line: 29, column: 10, scope: !3714, inlinedAt: !3723)
!3725 = !DILocation(line: 113, column: 3, scope: !3698)
!3726 = distinct !DISubprogram(name: "xstrdup", scope: !186, file: !186, line: 119, type: !1479, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3727)
!3727 = !{!3728}
!3728 = !DILocalVariable(name: "string", arg: 1, scope: !3726, file: !186, line: 119, type: !9)
!3729 = !DILocation(line: 0, scope: !3726)
!3730 = !DILocation(line: 121, column: 27, scope: !3726)
!3731 = !DILocation(line: 121, column: 43, scope: !3726)
!3732 = !DILocation(line: 0, scope: !3698, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 121, column: 10, scope: !3726)
!3734 = !DILocation(line: 0, scope: !3526, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 113, column: 18, scope: !3698, inlinedAt: !3733)
!3736 = !DILocation(line: 41, column: 13, scope: !3526, inlinedAt: !3735)
!3737 = !DILocation(line: 42, column: 8, scope: !3535, inlinedAt: !3735)
!3738 = !DILocation(line: 42, column: 10, scope: !3535, inlinedAt: !3735)
!3739 = !DILocation(line: 43, column: 5, scope: !3535, inlinedAt: !3735)
!3740 = !DILocation(line: 0, scope: !3714, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 113, column: 10, scope: !3698, inlinedAt: !3733)
!3742 = !DILocation(line: 29, column: 10, scope: !3714, inlinedAt: !3741)
!3743 = !DILocation(line: 121, column: 3, scope: !3726)
!3744 = distinct !DISubprogram(name: "xalloc_die", scope: !203, file: !203, line: 32, type: !1486, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !4)
!3745 = !DILocation(line: 34, column: 10, scope: !3744)
!3746 = !DILocation(line: 34, column: 33, scope: !3744)
!3747 = !DILocation(line: 34, column: 3, scope: !3744)
!3748 = !DILocation(line: 40, column: 3, scope: !3744)
!3749 = distinct !DISubprogram(name: "rpl_calloc", scope: !205, file: !205, line: 42, type: !3514, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !3750)
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "n", arg: 1, scope: !3749, file: !205, line: 42, type: !86)
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3749, file: !205, line: 42, type: !86)
!3753 = !DILocalVariable(name: "result", scope: !3749, file: !205, line: 44, type: !41)
!3754 = !DILocalVariable(name: "bytes", scope: !3755, file: !205, line: 56, type: !86)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !205, line: 53, column: 5)
!3756 = distinct !DILexicalBlock(scope: !3749, file: !205, line: 47, column: 7)
!3757 = !DILocation(line: 0, scope: !3749)
!3758 = !DILocation(line: 47, column: 9, scope: !3756)
!3759 = !DILocation(line: 47, column: 14, scope: !3756)
!3760 = !DILocation(line: 0, scope: !3755)
!3761 = !DILocation(line: 57, column: 21, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3755, file: !205, line: 57, column: 11)
!3763 = !DILocation(line: 57, column: 11, scope: !3755)
!3764 = !DILocation(line: 59, column: 11, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !205, line: 58, column: 9)
!3766 = !DILocation(line: 59, column: 17, scope: !3765)
!3767 = !DILocation(line: 65, column: 12, scope: !3749)
!3768 = !DILocation(line: 72, column: 3, scope: !3749)
!3769 = !DILocation(line: 73, column: 1, scope: !3749)
!3770 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !207, file: !207, line: 86, type: !3771, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3785)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!86, !3773, !9, !86, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 6, baseType: !3776)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2047, line: 21, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2047, line: 13, size: 64, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3777, file: !2047, line: 15, baseType: !18, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3777, file: !2047, line: 20, baseType: !3781, size: 32, offset: 32)
!3781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3777, file: !2047, line: 16, size: 32, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3781, file: !2047, line: 18, baseType: !51, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3781, file: !2047, line: 19, baseType: !2056, size: 32)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792}
!3786 = !DILocalVariable(name: "pwc", arg: 1, scope: !3770, file: !207, line: 86, type: !3773)
!3787 = !DILocalVariable(name: "s", arg: 2, scope: !3770, file: !207, line: 86, type: !9)
!3788 = !DILocalVariable(name: "n", arg: 3, scope: !3770, file: !207, line: 86, type: !86)
!3789 = !DILocalVariable(name: "ps", arg: 4, scope: !3770, file: !207, line: 86, type: !3774)
!3790 = !DILocalVariable(name: "ret", scope: !3770, file: !207, line: 88, type: !86)
!3791 = !DILocalVariable(name: "wc", scope: !3770, file: !207, line: 89, type: !2061)
!3792 = !DILocalVariable(name: "uc", scope: !3793, file: !207, line: 156, type: !1923)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !207, line: 155, column: 5)
!3794 = distinct !DILexicalBlock(scope: !3770, file: !207, line: 154, column: 7)
!3795 = !DILocation(line: 0, scope: !3770)
!3796 = !DILocation(line: 89, column: 3, scope: !3770)
!3797 = !DILocation(line: 105, column: 9, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3770, file: !207, line: 105, column: 7)
!3799 = !DILocation(line: 105, column: 7, scope: !3770)
!3800 = !DILocation(line: 145, column: 9, scope: !3770)
!3801 = !DILocation(line: 154, column: 19, scope: !3794)
!3802 = !DILocation(line: 154, column: 26, scope: !3794)
!3803 = !DILocation(line: 154, column: 41, scope: !3794)
!3804 = !DILocation(line: 154, column: 7, scope: !3770)
!3805 = !DILocation(line: 156, column: 26, scope: !3793)
!3806 = !DILocation(line: 0, scope: !3793)
!3807 = !DILocation(line: 157, column: 14, scope: !3793)
!3808 = !DILocation(line: 157, column: 12, scope: !3793)
!3809 = !DILocation(line: 163, column: 1, scope: !3770)
!3810 = !DISubprogram(name: "mbrtowc", scope: !2725, file: !2725, line: 296, type: !3811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!88, !32, !9, !88, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3814 = distinct !DISubprogram(name: "close_stream", scope: !210, file: !210, line: 56, type: !3815, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3851)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!18, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3359, line: 7, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3819, file: !698, line: 51, baseType: !18, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3819, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3819, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3819, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3819, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3819, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3819, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3819, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3819, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3819, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3819, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3819, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3819, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3819, file: !698, line: 70, baseType: !3835, size: 64, offset: 832)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3819, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3819, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3819, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3819, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3819, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3819, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3819, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3819, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3819, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3819, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3819, file: !698, line: 93, baseType: !3835, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3819, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3819, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3819, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3819, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!3851 = !{!3852, !3853, !3855, !3856}
!3852 = !DILocalVariable(name: "stream", arg: 1, scope: !3814, file: !210, line: 56, type: !3817)
!3853 = !DILocalVariable(name: "some_pending", scope: !3814, file: !210, line: 58, type: !3854)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!3855 = !DILocalVariable(name: "prev_fail", scope: !3814, file: !210, line: 59, type: !3854)
!3856 = !DILocalVariable(name: "fclose_fail", scope: !3814, file: !210, line: 60, type: !3854)
!3857 = !DILocation(line: 0, scope: !3814)
!3858 = !DILocation(line: 58, column: 30, scope: !3814)
!3859 = !DILocalVariable(name: "__stream", arg: 1, scope: !3860, file: !3861, line: 135, type: !3817)
!3860 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3861, file: !3861, line: 135, type: !3815, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3862)
!3861 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3862 = !{!3859}
!3863 = !DILocation(line: 0, scope: !3860, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 59, column: 27, scope: !3814)
!3865 = !DILocation(line: 137, column: 10, scope: !3860, inlinedAt: !3864)
!3866 = !{!3867, !1521, i64 0}
!3867 = !{!"_IO_FILE", !1521, i64 0, !628, i64 8, !628, i64 16, !628, i64 24, !628, i64 32, !628, i64 40, !628, i64 48, !628, i64 56, !628, i64 64, !628, i64 72, !628, i64 80, !628, i64 88, !628, i64 96, !628, i64 104, !1521, i64 112, !1521, i64 116, !2801, i64 120, !2284, i64 128, !629, i64 130, !629, i64 131, !628, i64 136, !2801, i64 144, !628, i64 152, !628, i64 160, !628, i64 168, !628, i64 176, !2801, i64 184, !1521, i64 192, !629, i64 196}
!3868 = !DILocation(line: 59, column: 43, scope: !3814)
!3869 = !DILocation(line: 60, column: 29, scope: !3814)
!3870 = !DILocation(line: 60, column: 45, scope: !3814)
!3871 = !DILocation(line: 70, column: 17, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3814, file: !210, line: 70, column: 7)
!3873 = !DILocation(line: 58, column: 50, scope: !3814)
!3874 = !DILocation(line: 70, column: 33, scope: !3872)
!3875 = !DILocation(line: 70, column: 53, scope: !3872)
!3876 = !DILocation(line: 70, column: 59, scope: !3872)
!3877 = !DILocation(line: 70, column: 7, scope: !3814)
!3878 = !DILocation(line: 72, column: 11, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3872, file: !210, line: 71, column: 5)
!3880 = !DILocation(line: 73, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !210, line: 72, column: 11)
!3882 = !DILocation(line: 73, column: 15, scope: !3881)
!3883 = !DILocation(line: 78, column: 1, scope: !3814)
!3884 = distinct !DISubprogram(name: "hard_locale", scope: !212, file: !212, line: 27, type: !3885, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!8, !18}
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "category", arg: 1, scope: !3884, file: !212, line: 27, type: !18)
!3889 = !DILocalVariable(name: "locale", scope: !3884, file: !212, line: 29, type: !3890)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3891)
!3891 = !{!3892}
!3892 = !DISubrange(count: 257)
!3893 = !DILocation(line: 0, scope: !3884)
!3894 = !DILocation(line: 29, column: 3, scope: !3884)
!3895 = !DILocation(line: 29, column: 8, scope: !3884)
!3896 = !DILocation(line: 31, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3884, file: !212, line: 31, column: 7)
!3898 = !DILocation(line: 31, column: 7, scope: !3884)
!3899 = !DILocation(line: 34, column: 12, scope: !3884)
!3900 = !DILocation(line: 34, column: 38, scope: !3884)
!3901 = !DILocation(line: 34, column: 41, scope: !3884)
!3902 = !DILocation(line: 34, column: 66, scope: !3884)
!3903 = !DILocation(line: 35, column: 1, scope: !3884)
!3904 = distinct !DISubprogram(name: "locale_charset", scope: !214, file: !214, line: 831, type: !3905, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!9}
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "codeset", scope: !3904, file: !214, line: 833, type: !9)
!3909 = !DILocation(line: 847, column: 13, scope: !3904)
!3910 = !DILocation(line: 0, scope: !3904)
!3911 = !DILocation(line: 911, column: 15, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3904, file: !214, line: 911, column: 7)
!3913 = !DILocation(line: 911, column: 7, scope: !3904)
!3914 = !DILocation(line: 1070, column: 13, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !214, line: 1070, column: 13)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !214, line: 1060, column: 7)
!3917 = distinct !DILexicalBlock(scope: !3904, file: !214, line: 1019, column: 3)
!3918 = !DILocation(line: 1070, column: 24, scope: !3915)
!3919 = !DILocation(line: 1070, column: 13, scope: !3916)
!3920 = !DILocation(line: 1158, column: 3, scope: !3904)
!3921 = !DISubprogram(name: "nl_langinfo", scope: !217, file: !217, line: 661, type: !3922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!42, !18}
!3924 = distinct !DISubprogram(name: "setlocale_null_r", scope: !603, file: !603, line: 269, type: !3925, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!18, !18, !42, !86}
!3927 = !{!3928, !3929, !3930}
!3928 = !DILocalVariable(name: "category", arg: 1, scope: !3924, file: !603, line: 269, type: !18)
!3929 = !DILocalVariable(name: "buf", arg: 2, scope: !3924, file: !603, line: 269, type: !42)
!3930 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3924, file: !603, line: 269, type: !86)
!3931 = !DILocation(line: 0, scope: !3924)
!3932 = !DILocalVariable(name: "category", arg: 1, scope: !3933, file: !603, line: 91, type: !18)
!3933 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !603, file: !603, line: 91, type: !3925, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3934)
!3934 = !{!3932, !3935, !3936, !3937, !3938}
!3935 = !DILocalVariable(name: "buf", arg: 2, scope: !3933, file: !603, line: 91, type: !42)
!3936 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3933, file: !603, line: 91, type: !86)
!3937 = !DILocalVariable(name: "result", scope: !3933, file: !603, line: 140, type: !9)
!3938 = !DILocalVariable(name: "length", scope: !3939, file: !603, line: 154, type: !86)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !603, line: 153, column: 5)
!3940 = distinct !DILexicalBlock(scope: !3933, file: !603, line: 142, column: 7)
!3941 = !DILocation(line: 0, scope: !3933, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 274, column: 10, scope: !3924)
!3943 = !DILocalVariable(name: "category", arg: 1, scope: !3944, file: !603, line: 60, type: !18)
!3944 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !603, file: !603, line: 60, type: !3945, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!9, !18}
!3947 = !{!3943, !3948}
!3948 = !DILocalVariable(name: "result", scope: !3944, file: !603, line: 62, type: !9)
!3949 = !DILocation(line: 0, scope: !3944, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 140, column: 24, scope: !3933, inlinedAt: !3942)
!3951 = !DILocation(line: 62, column: 24, scope: !3944, inlinedAt: !3950)
!3952 = !DILocation(line: 142, column: 14, scope: !3940, inlinedAt: !3942)
!3953 = !DILocation(line: 142, column: 7, scope: !3933, inlinedAt: !3942)
!3954 = !DILocation(line: 145, column: 19, scope: !3955, inlinedAt: !3942)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !603, line: 145, column: 11)
!3956 = distinct !DILexicalBlock(scope: !3940, file: !603, line: 143, column: 5)
!3957 = !DILocation(line: 145, column: 11, scope: !3956, inlinedAt: !3942)
!3958 = !DILocation(line: 149, column: 16, scope: !3955, inlinedAt: !3942)
!3959 = !DILocation(line: 149, column: 9, scope: !3955, inlinedAt: !3942)
!3960 = !DILocation(line: 154, column: 23, scope: !3939, inlinedAt: !3942)
!3961 = !DILocation(line: 0, scope: !3939, inlinedAt: !3942)
!3962 = !DILocation(line: 155, column: 18, scope: !3963, inlinedAt: !3942)
!3963 = distinct !DILexicalBlock(scope: !3939, file: !603, line: 155, column: 11)
!3964 = !DILocation(line: 155, column: 11, scope: !3939, inlinedAt: !3942)
!3965 = !DILocation(line: 157, column: 39, scope: !3966, inlinedAt: !3942)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !603, line: 156, column: 9)
!3967 = !DILocalVariable(name: "__dest", arg: 1, scope: !3968, file: !2292, line: 26, type: !3717)
!3968 = distinct !DISubprogram(name: "memcpy", scope: !2292, file: !2292, line: 26, type: !3715, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3969)
!3969 = !{!3967, !3970, !3971}
!3970 = !DILocalVariable(name: "__src", arg: 2, scope: !3968, file: !2292, line: 26, type: !3718)
!3971 = !DILocalVariable(name: "__len", arg: 3, scope: !3968, file: !2292, line: 26, type: !86)
!3972 = !DILocation(line: 0, scope: !3968, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 157, column: 11, scope: !3966, inlinedAt: !3942)
!3974 = !DILocation(line: 29, column: 10, scope: !3968, inlinedAt: !3973)
!3975 = !DILocation(line: 158, column: 11, scope: !3966, inlinedAt: !3942)
!3976 = !DILocation(line: 162, column: 23, scope: !3977, inlinedAt: !3942)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !603, line: 162, column: 15)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !603, line: 161, column: 9)
!3979 = !DILocation(line: 162, column: 15, scope: !3978, inlinedAt: !3942)
!3980 = !DILocation(line: 167, column: 44, scope: !3981, inlinedAt: !3942)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !603, line: 163, column: 13)
!3982 = !DILocation(line: 0, scope: !3968, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 167, column: 15, scope: !3981, inlinedAt: !3942)
!3984 = !DILocation(line: 29, column: 10, scope: !3968, inlinedAt: !3983)
!3985 = !DILocation(line: 168, column: 15, scope: !3981, inlinedAt: !3942)
!3986 = !DILocation(line: 168, column: 32, scope: !3981, inlinedAt: !3942)
!3987 = !DILocation(line: 169, column: 13, scope: !3981, inlinedAt: !3942)
!3988 = !DILocation(line: 0, scope: !3940, inlinedAt: !3942)
!3989 = !DILocation(line: 274, column: 3, scope: !3924)
!3990 = distinct !DISubprogram(name: "setlocale_null", scope: !603, file: !603, line: 301, type: !3945, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3991)
!3991 = !{!3992}
!3992 = !DILocalVariable(name: "category", arg: 1, scope: !3990, file: !603, line: 301, type: !18)
!3993 = !DILocation(line: 0, scope: !3990)
!3994 = !DILocation(line: 0, scope: !3944, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 304, column: 10, scope: !3990)
!3996 = !DILocation(line: 62, column: 24, scope: !3944, inlinedAt: !3995)
!3997 = !DILocation(line: 304, column: 3, scope: !3990)
!3998 = distinct !DISubprogram(name: "rpl_fclose", scope: !605, file: !605, line: 58, type: !3999, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !4035)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!18, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3359, line: 7, baseType: !4003)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !4004)
!4004 = !{!4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4003, file: !698, line: 51, baseType: !18, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4003, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4003, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4003, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4003, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4003, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4003, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4003, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4003, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4003, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4003, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4003, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4003, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4003, file: !698, line: 70, baseType: !4019, size: 64, offset: 832)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4003, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4003, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4003, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4003, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4003, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4003, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4003, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4003, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4003, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4003, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4003, file: !698, line: 93, baseType: !4019, size: 64, offset: 1344)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4003, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4003, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4003, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4003, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DILocalVariable(name: "fp", arg: 1, scope: !3998, file: !605, line: 58, type: !4001)
!4037 = !DILocalVariable(name: "saved_errno", scope: !3998, file: !605, line: 60, type: !18)
!4038 = !DILocalVariable(name: "fd", scope: !3998, file: !605, line: 61, type: !18)
!4039 = !DILocalVariable(name: "result", scope: !3998, file: !605, line: 62, type: !18)
!4040 = !DILocation(line: 0, scope: !3998)
!4041 = !DILocation(line: 65, column: 8, scope: !3998)
!4042 = !DILocation(line: 66, column: 10, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3998, file: !605, line: 66, column: 7)
!4044 = !DILocation(line: 66, column: 7, scope: !3998)
!4045 = !DILocation(line: 67, column: 12, scope: !4043)
!4046 = !DILocation(line: 67, column: 5, scope: !4043)
!4047 = !DILocation(line: 72, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3998, file: !605, line: 72, column: 7)
!4049 = !DILocation(line: 72, column: 23, scope: !4048)
!4050 = !DILocation(line: 72, column: 33, scope: !4048)
!4051 = !DILocation(line: 72, column: 26, scope: !4048)
!4052 = !DILocation(line: 72, column: 59, scope: !4048)
!4053 = !DILocation(line: 73, column: 7, scope: !4048)
!4054 = !DILocation(line: 73, column: 10, scope: !4048)
!4055 = !DILocation(line: 72, column: 7, scope: !3998)
!4056 = !DILocation(line: 100, column: 12, scope: !3998)
!4057 = !DILocation(line: 105, column: 7, scope: !3998)
!4058 = !DILocation(line: 74, column: 19, scope: !4048)
!4059 = !DILocation(line: 105, column: 19, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !3998, file: !605, line: 105, column: 7)
!4061 = !DILocation(line: 107, column: 13, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4060, file: !605, line: 106, column: 5)
!4063 = !DILocation(line: 109, column: 5, scope: !4062)
!4064 = !DILocation(line: 112, column: 1, scope: !3998)
!4065 = !DISubprogram(name: "fileno", scope: !158, file: !158, line: 785, type: !4066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!18, !4019}
!4068 = !DISubprogram(name: "fclose", scope: !158, file: !158, line: 213, type: !4066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4069 = !DISubprogram(name: "lseek", scope: !4070, file: !4070, line: 334, type: !4071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4070 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!156, !18, !156, !18}
!4073 = distinct !DISubprogram(name: "rpl_fflush", scope: !607, file: !607, line: 129, type: !4074, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !4110)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!18, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3359, line: 7, baseType: !4078)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4078, file: !698, line: 51, baseType: !18, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4078, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4078, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4078, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4078, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4078, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4078, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4078, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4078, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4078, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4078, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4078, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4078, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4078, file: !698, line: 70, baseType: !4094, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4078, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4078, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4078, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4078, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4078, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4078, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4078, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4078, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4078, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4078, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4078, file: !698, line: 93, baseType: !4094, size: 64, offset: 1344)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4078, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4078, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4078, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4078, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!4110 = !{!4111}
!4111 = !DILocalVariable(name: "stream", arg: 1, scope: !4073, file: !607, line: 129, type: !4076)
!4112 = !DILocation(line: 0, scope: !4073)
!4113 = !DILocation(line: 150, column: 14, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4073, file: !607, line: 150, column: 7)
!4115 = !DILocation(line: 150, column: 22, scope: !4114)
!4116 = !DILocation(line: 150, column: 27, scope: !4114)
!4117 = !DILocation(line: 150, column: 7, scope: !4073)
!4118 = !DILocation(line: 151, column: 12, scope: !4114)
!4119 = !DILocation(line: 151, column: 5, scope: !4114)
!4120 = !DILocalVariable(name: "fp", arg: 1, scope: !4121, file: !607, line: 41, type: !4076)
!4121 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !607, file: !607, line: 41, type: !4122, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !4076}
!4124 = !{!4120}
!4125 = !DILocation(line: 0, scope: !4121, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 156, column: 3, scope: !4073)
!4127 = !DILocation(line: 43, column: 11, scope: !4128, inlinedAt: !4126)
!4128 = distinct !DILexicalBlock(scope: !4121, file: !607, line: 43, column: 7)
!4129 = !DILocation(line: 43, column: 18, scope: !4128, inlinedAt: !4126)
!4130 = !DILocation(line: 43, column: 7, scope: !4121, inlinedAt: !4126)
!4131 = !DILocation(line: 45, column: 5, scope: !4128, inlinedAt: !4126)
!4132 = !DILocation(line: 158, column: 10, scope: !4073)
!4133 = !DILocation(line: 158, column: 3, scope: !4073)
!4134 = !DILocation(line: 235, column: 1, scope: !4073)
!4135 = !DISubprogram(name: "fflush", scope: !158, file: !158, line: 218, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!18, !4094}
!4138 = distinct !DISubprogram(name: "rpl_fseeko", scope: !609, file: !609, line: 28, type: !4139, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !608, retainedNodes: !4175)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!18, !4141, !170, !18}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3359, line: 7, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !698, line: 49, size: 1728, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4143, file: !698, line: 51, baseType: !18, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4143, file: !698, line: 54, baseType: !42, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4143, file: !698, line: 55, baseType: !42, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4143, file: !698, line: 56, baseType: !42, size: 64, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4143, file: !698, line: 57, baseType: !42, size: 64, offset: 256)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4143, file: !698, line: 58, baseType: !42, size: 64, offset: 320)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4143, file: !698, line: 59, baseType: !42, size: 64, offset: 384)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4143, file: !698, line: 60, baseType: !42, size: 64, offset: 448)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4143, file: !698, line: 61, baseType: !42, size: 64, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4143, file: !698, line: 64, baseType: !42, size: 64, offset: 576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4143, file: !698, line: 65, baseType: !42, size: 64, offset: 640)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4143, file: !698, line: 66, baseType: !42, size: 64, offset: 704)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4143, file: !698, line: 68, baseType: !713, size: 64, offset: 768)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4143, file: !698, line: 70, baseType: !4159, size: 64, offset: 832)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4143, file: !698, line: 72, baseType: !18, size: 32, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4143, file: !698, line: 73, baseType: !18, size: 32, offset: 928)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4143, file: !698, line: 74, baseType: !171, size: 64, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4143, file: !698, line: 77, baseType: !85, size: 16, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4143, file: !698, line: 78, baseType: !721, size: 8, offset: 1040)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4143, file: !698, line: 79, baseType: !723, size: 8, offset: 1048)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4143, file: !698, line: 81, baseType: !727, size: 64, offset: 1088)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4143, file: !698, line: 89, baseType: !730, size: 64, offset: 1152)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4143, file: !698, line: 91, baseType: !732, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4143, file: !698, line: 92, baseType: !735, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4143, file: !698, line: 93, baseType: !4159, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4143, file: !698, line: 94, baseType: !41, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4143, file: !698, line: 95, baseType: !86, size: 64, offset: 1472)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4143, file: !698, line: 96, baseType: !18, size: 32, offset: 1536)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4143, file: !698, line: 98, baseType: !742, size: 160, offset: 1568)
!4175 = !{!4176, !4177, !4178, !4179}
!4176 = !DILocalVariable(name: "fp", arg: 1, scope: !4138, file: !609, line: 28, type: !4141)
!4177 = !DILocalVariable(name: "offset", arg: 2, scope: !4138, file: !609, line: 28, type: !170)
!4178 = !DILocalVariable(name: "whence", arg: 3, scope: !4138, file: !609, line: 28, type: !18)
!4179 = !DILocalVariable(name: "pos", scope: !4180, file: !609, line: 117, type: !170)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !609, line: 113, column: 5)
!4181 = distinct !DILexicalBlock(scope: !4138, file: !609, line: 52, column: 7)
!4182 = !DILocation(line: 0, scope: !4138)
!4183 = !DILocation(line: 52, column: 11, scope: !4181)
!4184 = !{!3867, !628, i64 16}
!4185 = !DILocation(line: 52, column: 31, scope: !4181)
!4186 = !{!3867, !628, i64 8}
!4187 = !DILocation(line: 52, column: 24, scope: !4181)
!4188 = !DILocation(line: 53, column: 7, scope: !4181)
!4189 = !DILocation(line: 53, column: 14, scope: !4181)
!4190 = !{!3867, !628, i64 40}
!4191 = !DILocation(line: 53, column: 35, scope: !4181)
!4192 = !{!3867, !628, i64 32}
!4193 = !DILocation(line: 53, column: 28, scope: !4181)
!4194 = !DILocation(line: 54, column: 7, scope: !4181)
!4195 = !DILocation(line: 54, column: 14, scope: !4181)
!4196 = !{!3867, !628, i64 72}
!4197 = !DILocation(line: 54, column: 28, scope: !4181)
!4198 = !DILocation(line: 52, column: 7, scope: !4138)
!4199 = !DILocation(line: 117, column: 26, scope: !4180)
!4200 = !DILocation(line: 117, column: 19, scope: !4180)
!4201 = !DILocation(line: 0, scope: !4180)
!4202 = !DILocation(line: 118, column: 15, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4180, file: !609, line: 118, column: 11)
!4204 = !DILocation(line: 118, column: 11, scope: !4180)
!4205 = !DILocation(line: 129, column: 11, scope: !4180)
!4206 = !DILocation(line: 129, column: 18, scope: !4180)
!4207 = !DILocation(line: 130, column: 11, scope: !4180)
!4208 = !DILocation(line: 130, column: 19, scope: !4180)
!4209 = !{!3867, !2801, i64 144}
!4210 = !DILocation(line: 161, column: 7, scope: !4180)
!4211 = !DILocation(line: 163, column: 10, scope: !4138)
!4212 = !DILocation(line: 163, column: 3, scope: !4138)
!4213 = !DILocation(line: 164, column: 1, scope: !4138)
!4214 = !DISubprogram(name: "fseeko", scope: !158, file: !158, line: 712, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!18, !4159, !156, !18}
