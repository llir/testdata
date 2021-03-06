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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !85
@.str.89 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !88
@opterr = external local_unnamed_addr global i32, align 4
@.str.102 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.103, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.104, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !94
@optind = external local_unnamed_addr global i32, align 4
@.str.2.103 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.104 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !162
@.str.110 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.111 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.112 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.116, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.122, i32 0, i32 0), i8* null], align 16, !dbg !204
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !317
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !323
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !325
@.str.11.123 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.124 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.125 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.126 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.127 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.128 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.129 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !332
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !339
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !327
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !341
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !347
@.str.1.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1127 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1130, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %0, metadata !1129, metadata !DIExpression()), !dbg !1151
  %3 = icmp eq i32 %0, 0, !dbg !1152
  br i1 %3, label %9, label %4, !dbg !1153

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154, !tbaa !1156
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #14, !dbg !1154
  %7 = load i8*, i8** @program_name, align 8, !dbg !1154, !tbaa !1156
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #14, !dbg !1154
  br label %58, !dbg !1154

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5) #14, !dbg !1160
  %11 = load i8*, i8** @program_name, align 8, !dbg !1160, !tbaa !1156
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #14, !dbg !1160
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #14, !dbg !1161
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1161, !tbaa !1156
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1161
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #14, !dbg !1162
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1162, !tbaa !1156
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1162
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #14, !dbg !1163
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1163, !tbaa !1156
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1163
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !1134, metadata !DIExpression()) #14, !dbg !1164
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1165
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #14, !dbg !1165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #14, !dbg !1147
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !1135, metadata !DIExpression()) #14, !dbg !1164
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1166
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  br label %24, !dbg !1167

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #22, !dbg !1168
  %28 = icmp eq i32 %27, 0, !dbg !1168
  br i1 %28, label %34, label %29, !dbg !1167

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1170
  %32 = load i8*, i8** %31, align 8, !dbg !1170, !tbaa !1171
  %33 = icmp eq i8* %32, null, !dbg !1173
  br i1 %33, label %34, label %24, !dbg !1174, !llvm.loop !1175

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1136, metadata !DIExpression()) #14, !dbg !1164
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1176
  %37 = load i8*, i8** %36, align 8, !dbg !1176, !tbaa !1178
  %38 = icmp eq i8* %37, null, !dbg !1179
  %39 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %39, metadata !1135, metadata !DIExpression()) #14, !dbg !1164
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 5) #14, !dbg !1181
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0)) #14, !dbg !1181
  %42 = tail call i8* @setlocale(i32 5, i8* null) #14, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %42, metadata !1143, metadata !DIExpression()) #14, !dbg !1164
  %43 = icmp eq i8* %42, null, !dbg !1183
  br i1 %43, label %51, label %44, !dbg !1185

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 3) #22, !dbg !1186
  %46 = icmp eq i32 %45, 0, !dbg !1186
  br i1 %46, label %51, label %47, !dbg !1187

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i64 0, i64 0), i32 5) #14, !dbg !1188
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1188, !tbaa !1156
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #14, !dbg !1188
  br label %51, !dbg !1190

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i64 0, i64 0), i32 5) #14, !dbg !1191
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #14, !dbg !1191
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i32 5) #14, !dbg !1192
  %55 = icmp eq i8* %39, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), !dbg !1192
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1192
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #14, !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #14, !dbg !1193
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #23, !dbg !1194
  unreachable, !dbg !1194
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !70 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !367 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !406 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1195 {
  %3 = alloca [40 x i8], align 16
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !1205, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !1205, metadata !DIExpression()), !dbg !1216
  %4 = alloca [31 x i8], align 16
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !1218, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata [31 x i8]* %4, metadata !1218, metadata !DIExpression()), !dbg !1229
  %5 = alloca [45 x i8], align 16
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !1231, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata [45 x i8]* %5, metadata !1231, metadata !DIExpression()), !dbg !1242
  %6 = alloca [22 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1199, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8** %1, metadata !1200, metadata !DIExpression()), !dbg !1244
  %7 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %7) #14, !dbg !1245
  call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !1201, metadata !DIExpression()), !dbg !1246
  %8 = load i8*, i8** %1, align 8, !dbg !1247, !tbaa !1156
  tail call void @set_program_name(i8* %8) #14, !dbg !1248
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #14, !dbg !1249
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !1250
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1251
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #14, !dbg !1252
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* null) #14, !dbg !1253
  %13 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 1, !dbg !1254
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #14, !dbg !1254
  %15 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1264
  %16 = load i8, i8* %13, align 1, !dbg !1266, !tbaa !1267
  %17 = icmp eq i8 %16, 45, !dbg !1268
  call void @llvm.dbg.value(metadata i1 %17, metadata !1260, metadata !DIExpression()) #14, !dbg !1264
  %18 = zext i1 %17 to i64, !dbg !1269
  %19 = getelementptr inbounds i8, i8* %13, i64 %18, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %19, metadata !1261, metadata !DIExpression()) #14, !dbg !1264
  %20 = call i64 @strlen(i8* nonnull %19) #22, !dbg !1270
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %21, metadata !1262, metadata !DIExpression()) #14, !dbg !1264
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1272
  store i8 48, i8* %22, align 1, !dbg !1273, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %21, metadata !1262, metadata !DIExpression()) #14, !dbg !1264
  %23 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1274
  call void @llvm.dbg.value(metadata i8* %23, metadata !1262, metadata !DIExpression()) #14, !dbg !1264
  %24 = load i8, i8* %23, align 1, !dbg !1275, !tbaa !1267
  %25 = icmp eq i8 %24, 57, !dbg !1276
  br i1 %25, label %26, label %31, !dbg !1277

26:                                               ; preds = %2, %26
  %27 = phi i8* [ %28, %26 ], [ %23, %2 ]
  store i8 48, i8* %27, align 1, !dbg !1278, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %27, metadata !1262, metadata !DIExpression()) #14, !dbg !1264
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !1274
  call void @llvm.dbg.value(metadata i8* %28, metadata !1262, metadata !DIExpression()) #14, !dbg !1264
  %29 = load i8, i8* %28, align 1, !dbg !1275, !tbaa !1267
  %30 = icmp eq i8 %29, 57, !dbg !1276
  br i1 %30, label %26, label %31, !dbg !1277, !llvm.loop !1279

31:                                               ; preds = %26, %2
  %32 = phi i8* [ %23, %2 ], [ %28, %26 ], !dbg !1274
  %33 = phi i8 [ %24, %2 ], [ %29, %26 ], !dbg !1275
  %34 = add i8 %33, 1, !dbg !1281
  store i8 %34, i8* %32, align 1, !dbg !1281, !tbaa !1267
  %35 = icmp ult i8* %19, %32, !dbg !1282
  %36 = select i1 %35, i8* %19, i8* %32, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %36, metadata !1263, metadata !DIExpression()) #14, !dbg !1264
  br i1 %17, label %37, label %39, !dbg !1283

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %38, metadata !1263, metadata !DIExpression()) #14, !dbg !1264
  store i8 45, i8* %38, align 1, !dbg !1286, !tbaa !1267
  br label %39, !dbg !1287

39:                                               ; preds = %31, %37
  %40 = phi i8* [ %38, %37 ], [ %36, %31 ], !dbg !1264
  call void @llvm.dbg.value(metadata i8* %40, metadata !1263, metadata !DIExpression()) #14, !dbg !1264
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %40) #14, !dbg !1254
  %42 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #14, !dbg !1288
  %43 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1291
  %44 = load i8, i8* %13, align 1, !dbg !1293, !tbaa !1267
  %45 = icmp eq i8 %44, 45, !dbg !1294
  call void @llvm.dbg.value(metadata i1 %45, metadata !1260, metadata !DIExpression()) #14, !dbg !1291
  %46 = zext i1 %45 to i64, !dbg !1295
  %47 = getelementptr inbounds i8, i8* %13, i64 %46, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %47, metadata !1261, metadata !DIExpression()) #14, !dbg !1291
  %48 = call i64 @strlen(i8* nonnull %47) #22, !dbg !1296
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %49, metadata !1262, metadata !DIExpression()) #14, !dbg !1291
  %50 = getelementptr inbounds i8, i8* %47, i64 -1, !dbg !1298
  store i8 48, i8* %50, align 1, !dbg !1299, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %49, metadata !1262, metadata !DIExpression()) #14, !dbg !1291
  %51 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %51, metadata !1262, metadata !DIExpression()) #14, !dbg !1291
  %52 = load i8, i8* %51, align 1, !dbg !1301, !tbaa !1267
  %53 = icmp eq i8 %52, 57, !dbg !1302
  br i1 %53, label %54, label %59, !dbg !1303

54:                                               ; preds = %39, %54
  %55 = phi i8* [ %56, %54 ], [ %51, %39 ]
  store i8 48, i8* %55, align 1, !dbg !1304, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %55, metadata !1262, metadata !DIExpression()) #14, !dbg !1291
  %56 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %56, metadata !1262, metadata !DIExpression()) #14, !dbg !1291
  %57 = load i8, i8* %56, align 1, !dbg !1301, !tbaa !1267
  %58 = icmp eq i8 %57, 57, !dbg !1302
  br i1 %58, label %54, label %59, !dbg !1303, !llvm.loop !1305

59:                                               ; preds = %54, %39
  %60 = phi i8* [ %51, %39 ], [ %56, %54 ], !dbg !1300
  %61 = phi i8 [ %52, %39 ], [ %57, %54 ], !dbg !1301
  %62 = add i8 %61, 1, !dbg !1307
  store i8 %62, i8* %60, align 1, !dbg !1307, !tbaa !1267
  %63 = icmp ult i8* %47, %60, !dbg !1308
  %64 = select i1 %63, i8* %47, i8* %60, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %64, metadata !1263, metadata !DIExpression()) #14, !dbg !1291
  br i1 %45, label %65, label %67, !dbg !1309

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %66, metadata !1263, metadata !DIExpression()) #14, !dbg !1291
  store i8 45, i8* %66, align 1, !dbg !1311, !tbaa !1267
  br label %67, !dbg !1312

67:                                               ; preds = %59, %65
  %68 = phi i8* [ %66, %65 ], [ %64, %59 ], !dbg !1291
  call void @llvm.dbg.value(metadata i8* %68, metadata !1263, metadata !DIExpression()) #14, !dbg !1291
  %69 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %68) #14, !dbg !1288
  %70 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 127) #14, !dbg !1313
  %71 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1314
  %72 = load i8, i8* %13, align 1, !dbg !1316, !tbaa !1267
  %73 = icmp eq i8 %72, 45, !dbg !1317
  call void @llvm.dbg.value(metadata i1 %73, metadata !1260, metadata !DIExpression()) #14, !dbg !1314
  %74 = zext i1 %73 to i64, !dbg !1318
  %75 = getelementptr inbounds i8, i8* %13, i64 %74, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %75, metadata !1261, metadata !DIExpression()) #14, !dbg !1314
  %76 = call i64 @strlen(i8* nonnull %75) #22, !dbg !1319
  %77 = getelementptr inbounds i8, i8* %75, i64 %76, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %77, metadata !1262, metadata !DIExpression()) #14, !dbg !1314
  %78 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !1321
  store i8 48, i8* %78, align 1, !dbg !1322, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %77, metadata !1262, metadata !DIExpression()) #14, !dbg !1314
  %79 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %79, metadata !1262, metadata !DIExpression()) #14, !dbg !1314
  %80 = load i8, i8* %79, align 1, !dbg !1324, !tbaa !1267
  %81 = icmp eq i8 %80, 57, !dbg !1325
  br i1 %81, label %82, label %87, !dbg !1326

82:                                               ; preds = %67, %82
  %83 = phi i8* [ %84, %82 ], [ %79, %67 ]
  store i8 48, i8* %83, align 1, !dbg !1327, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %83, metadata !1262, metadata !DIExpression()) #14, !dbg !1314
  %84 = getelementptr inbounds i8, i8* %83, i64 -1, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %84, metadata !1262, metadata !DIExpression()) #14, !dbg !1314
  %85 = load i8, i8* %84, align 1, !dbg !1324, !tbaa !1267
  %86 = icmp eq i8 %85, 57, !dbg !1325
  br i1 %86, label %82, label %87, !dbg !1326, !llvm.loop !1328

87:                                               ; preds = %82, %67
  %88 = phi i8* [ %79, %67 ], [ %84, %82 ], !dbg !1323
  %89 = phi i8 [ %80, %67 ], [ %85, %82 ], !dbg !1324
  %90 = add i8 %89, 1, !dbg !1330
  store i8 %90, i8* %88, align 1, !dbg !1330, !tbaa !1267
  %91 = icmp ult i8* %75, %88, !dbg !1331
  %92 = select i1 %91, i8* %75, i8* %88, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %92, metadata !1263, metadata !DIExpression()) #14, !dbg !1314
  br i1 %73, label %93, label %95, !dbg !1332

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %94, metadata !1263, metadata !DIExpression()) #14, !dbg !1314
  store i8 45, i8* %94, align 1, !dbg !1334, !tbaa !1267
  br label %95, !dbg !1335

95:                                               ; preds = %87, %93
  %96 = phi i8* [ %94, %93 ], [ %92, %87 ], !dbg !1314
  call void @llvm.dbg.value(metadata i8* %96, metadata !1263, metadata !DIExpression()) #14, !dbg !1314
  %97 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %96) #14, !dbg !1313
  %98 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -128) #14, !dbg !1336
  %99 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1339
  %100 = load i8, i8* %13, align 1, !dbg !1341, !tbaa !1267
  %101 = icmp eq i8 %100, 45, !dbg !1342
  call void @llvm.dbg.value(metadata i1 %101, metadata !1260, metadata !DIExpression()) #14, !dbg !1339
  %102 = zext i1 %101 to i64, !dbg !1343
  %103 = getelementptr inbounds i8, i8* %13, i64 %102, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %103, metadata !1261, metadata !DIExpression()) #14, !dbg !1339
  %104 = call i64 @strlen(i8* nonnull %103) #22, !dbg !1344
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %105, metadata !1262, metadata !DIExpression()) #14, !dbg !1339
  %106 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !1346
  store i8 48, i8* %106, align 1, !dbg !1347, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %105, metadata !1262, metadata !DIExpression()) #14, !dbg !1339
  %107 = getelementptr inbounds i8, i8* %105, i64 -1, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %107, metadata !1262, metadata !DIExpression()) #14, !dbg !1339
  %108 = load i8, i8* %107, align 1, !dbg !1349, !tbaa !1267
  %109 = icmp eq i8 %108, 57, !dbg !1350
  br i1 %109, label %110, label %115, !dbg !1351

110:                                              ; preds = %95, %110
  %111 = phi i8* [ %112, %110 ], [ %107, %95 ]
  store i8 48, i8* %111, align 1, !dbg !1352, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %111, metadata !1262, metadata !DIExpression()) #14, !dbg !1339
  %112 = getelementptr inbounds i8, i8* %111, i64 -1, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %112, metadata !1262, metadata !DIExpression()) #14, !dbg !1339
  %113 = load i8, i8* %112, align 1, !dbg !1349, !tbaa !1267
  %114 = icmp eq i8 %113, 57, !dbg !1350
  br i1 %114, label %110, label %115, !dbg !1351, !llvm.loop !1353

115:                                              ; preds = %110, %95
  %116 = phi i8* [ %107, %95 ], [ %112, %110 ], !dbg !1348
  %117 = phi i8 [ %108, %95 ], [ %113, %110 ], !dbg !1349
  %118 = add i8 %117, 1, !dbg !1355
  store i8 %118, i8* %116, align 1, !dbg !1355, !tbaa !1267
  %119 = icmp ult i8* %103, %116, !dbg !1356
  %120 = select i1 %119, i8* %103, i8* %116, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %120, metadata !1263, metadata !DIExpression()) #14, !dbg !1339
  br i1 %101, label %121, label %123, !dbg !1357

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, i8* %120, i64 -1, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %122, metadata !1263, metadata !DIExpression()) #14, !dbg !1339
  store i8 45, i8* %122, align 1, !dbg !1359, !tbaa !1267
  br label %123, !dbg !1360

123:                                              ; preds = %115, %121
  %124 = phi i8* [ %122, %121 ], [ %120, %115 ], !dbg !1339
  call void @llvm.dbg.value(metadata i8* %124, metadata !1263, metadata !DIExpression()) #14, !dbg !1339
  %125 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %124) #14, !dbg !1336
  %126 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 255) #14, !dbg !1361
  %127 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1362
  %128 = load i8, i8* %13, align 1, !dbg !1364, !tbaa !1267
  %129 = icmp eq i8 %128, 45, !dbg !1365
  call void @llvm.dbg.value(metadata i1 %129, metadata !1260, metadata !DIExpression()) #14, !dbg !1362
  %130 = zext i1 %129 to i64, !dbg !1366
  %131 = getelementptr inbounds i8, i8* %13, i64 %130, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %131, metadata !1261, metadata !DIExpression()) #14, !dbg !1362
  %132 = call i64 @strlen(i8* nonnull %131) #22, !dbg !1367
  %133 = getelementptr inbounds i8, i8* %131, i64 %132, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %133, metadata !1262, metadata !DIExpression()) #14, !dbg !1362
  %134 = getelementptr inbounds i8, i8* %131, i64 -1, !dbg !1369
  store i8 48, i8* %134, align 1, !dbg !1370, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %133, metadata !1262, metadata !DIExpression()) #14, !dbg !1362
  %135 = getelementptr inbounds i8, i8* %133, i64 -1, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %135, metadata !1262, metadata !DIExpression()) #14, !dbg !1362
  %136 = load i8, i8* %135, align 1, !dbg !1372, !tbaa !1267
  %137 = icmp eq i8 %136, 57, !dbg !1373
  br i1 %137, label %138, label %143, !dbg !1374

138:                                              ; preds = %123, %138
  %139 = phi i8* [ %140, %138 ], [ %135, %123 ]
  store i8 48, i8* %139, align 1, !dbg !1375, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %139, metadata !1262, metadata !DIExpression()) #14, !dbg !1362
  %140 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %140, metadata !1262, metadata !DIExpression()) #14, !dbg !1362
  %141 = load i8, i8* %140, align 1, !dbg !1372, !tbaa !1267
  %142 = icmp eq i8 %141, 57, !dbg !1373
  br i1 %142, label %138, label %143, !dbg !1374, !llvm.loop !1376

143:                                              ; preds = %138, %123
  %144 = phi i8* [ %135, %123 ], [ %140, %138 ], !dbg !1371
  %145 = phi i8 [ %136, %123 ], [ %141, %138 ], !dbg !1372
  %146 = add i8 %145, 1, !dbg !1378
  store i8 %146, i8* %144, align 1, !dbg !1378, !tbaa !1267
  %147 = icmp ult i8* %131, %144, !dbg !1379
  %148 = select i1 %147, i8* %131, i8* %144, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %148, metadata !1263, metadata !DIExpression()) #14, !dbg !1362
  br i1 %129, label %149, label %151, !dbg !1380

149:                                              ; preds = %143
  %150 = getelementptr inbounds i8, i8* %148, i64 -1, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %150, metadata !1263, metadata !DIExpression()) #14, !dbg !1362
  store i8 45, i8* %150, align 1, !dbg !1382, !tbaa !1267
  br label %151, !dbg !1383

151:                                              ; preds = %143, %149
  %152 = phi i8* [ %150, %149 ], [ %148, %143 ], !dbg !1362
  call void @llvm.dbg.value(metadata i8* %152, metadata !1263, metadata !DIExpression()) #14, !dbg !1362
  %153 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %152) #14, !dbg !1361
  %154 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 32767) #14, !dbg !1384
  %155 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1385
  %156 = load i8, i8* %13, align 1, !dbg !1387, !tbaa !1267
  %157 = icmp eq i8 %156, 45, !dbg !1388
  call void @llvm.dbg.value(metadata i1 %157, metadata !1260, metadata !DIExpression()) #14, !dbg !1385
  %158 = zext i1 %157 to i64, !dbg !1389
  %159 = getelementptr inbounds i8, i8* %13, i64 %158, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %159, metadata !1261, metadata !DIExpression()) #14, !dbg !1385
  %160 = call i64 @strlen(i8* nonnull %159) #22, !dbg !1390
  %161 = getelementptr inbounds i8, i8* %159, i64 %160, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %161, metadata !1262, metadata !DIExpression()) #14, !dbg !1385
  %162 = getelementptr inbounds i8, i8* %159, i64 -1, !dbg !1392
  store i8 48, i8* %162, align 1, !dbg !1393, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %161, metadata !1262, metadata !DIExpression()) #14, !dbg !1385
  %163 = getelementptr inbounds i8, i8* %161, i64 -1, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %163, metadata !1262, metadata !DIExpression()) #14, !dbg !1385
  %164 = load i8, i8* %163, align 1, !dbg !1395, !tbaa !1267
  %165 = icmp eq i8 %164, 57, !dbg !1396
  br i1 %165, label %166, label %171, !dbg !1397

166:                                              ; preds = %151, %166
  %167 = phi i8* [ %168, %166 ], [ %163, %151 ]
  store i8 48, i8* %167, align 1, !dbg !1398, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %167, metadata !1262, metadata !DIExpression()) #14, !dbg !1385
  %168 = getelementptr inbounds i8, i8* %167, i64 -1, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %168, metadata !1262, metadata !DIExpression()) #14, !dbg !1385
  %169 = load i8, i8* %168, align 1, !dbg !1395, !tbaa !1267
  %170 = icmp eq i8 %169, 57, !dbg !1396
  br i1 %170, label %166, label %171, !dbg !1397, !llvm.loop !1399

171:                                              ; preds = %166, %151
  %172 = phi i8* [ %163, %151 ], [ %168, %166 ], !dbg !1394
  %173 = phi i8 [ %164, %151 ], [ %169, %166 ], !dbg !1395
  %174 = add i8 %173, 1, !dbg !1401
  store i8 %174, i8* %172, align 1, !dbg !1401, !tbaa !1267
  %175 = icmp ult i8* %159, %172, !dbg !1402
  %176 = select i1 %175, i8* %159, i8* %172, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %176, metadata !1263, metadata !DIExpression()) #14, !dbg !1385
  br i1 %157, label %177, label %179, !dbg !1403

177:                                              ; preds = %171
  %178 = getelementptr inbounds i8, i8* %176, i64 -1, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %178, metadata !1263, metadata !DIExpression()) #14, !dbg !1385
  store i8 45, i8* %178, align 1, !dbg !1405, !tbaa !1267
  br label %179, !dbg !1406

179:                                              ; preds = %171, %177
  %180 = phi i8* [ %178, %177 ], [ %176, %171 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %180, metadata !1263, metadata !DIExpression()) #14, !dbg !1385
  %181 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %180) #14, !dbg !1384
  %182 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -32768) #14, !dbg !1407
  %183 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1410
  %184 = load i8, i8* %13, align 1, !dbg !1412, !tbaa !1267
  %185 = icmp eq i8 %184, 45, !dbg !1413
  call void @llvm.dbg.value(metadata i1 %185, metadata !1260, metadata !DIExpression()) #14, !dbg !1410
  %186 = zext i1 %185 to i64, !dbg !1414
  %187 = getelementptr inbounds i8, i8* %13, i64 %186, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %187, metadata !1261, metadata !DIExpression()) #14, !dbg !1410
  %188 = call i64 @strlen(i8* nonnull %187) #22, !dbg !1415
  %189 = getelementptr inbounds i8, i8* %187, i64 %188, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %189, metadata !1262, metadata !DIExpression()) #14, !dbg !1410
  %190 = getelementptr inbounds i8, i8* %187, i64 -1, !dbg !1417
  store i8 48, i8* %190, align 1, !dbg !1418, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %189, metadata !1262, metadata !DIExpression()) #14, !dbg !1410
  %191 = getelementptr inbounds i8, i8* %189, i64 -1, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %191, metadata !1262, metadata !DIExpression()) #14, !dbg !1410
  %192 = load i8, i8* %191, align 1, !dbg !1420, !tbaa !1267
  %193 = icmp eq i8 %192, 57, !dbg !1421
  br i1 %193, label %194, label %199, !dbg !1422

194:                                              ; preds = %179, %194
  %195 = phi i8* [ %196, %194 ], [ %191, %179 ]
  store i8 48, i8* %195, align 1, !dbg !1423, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %195, metadata !1262, metadata !DIExpression()) #14, !dbg !1410
  %196 = getelementptr inbounds i8, i8* %195, i64 -1, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %196, metadata !1262, metadata !DIExpression()) #14, !dbg !1410
  %197 = load i8, i8* %196, align 1, !dbg !1420, !tbaa !1267
  %198 = icmp eq i8 %197, 57, !dbg !1421
  br i1 %198, label %194, label %199, !dbg !1422, !llvm.loop !1424

199:                                              ; preds = %194, %179
  %200 = phi i8* [ %191, %179 ], [ %196, %194 ], !dbg !1419
  %201 = phi i8 [ %192, %179 ], [ %197, %194 ], !dbg !1420
  %202 = add i8 %201, 1, !dbg !1426
  store i8 %202, i8* %200, align 1, !dbg !1426, !tbaa !1267
  %203 = icmp ult i8* %187, %200, !dbg !1427
  %204 = select i1 %203, i8* %187, i8* %200, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %204, metadata !1263, metadata !DIExpression()) #14, !dbg !1410
  br i1 %185, label %205, label %207, !dbg !1428

205:                                              ; preds = %199
  %206 = getelementptr inbounds i8, i8* %204, i64 -1, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %206, metadata !1263, metadata !DIExpression()) #14, !dbg !1410
  store i8 45, i8* %206, align 1, !dbg !1430, !tbaa !1267
  br label %207, !dbg !1431

207:                                              ; preds = %199, %205
  %208 = phi i8* [ %206, %205 ], [ %204, %199 ], !dbg !1410
  call void @llvm.dbg.value(metadata i8* %208, metadata !1263, metadata !DIExpression()) #14, !dbg !1410
  %209 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %208) #14, !dbg !1407
  %210 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #14, !dbg !1432
  %211 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1433
  %212 = load i8, i8* %13, align 1, !dbg !1435, !tbaa !1267
  %213 = icmp eq i8 %212, 45, !dbg !1436
  call void @llvm.dbg.value(metadata i1 %213, metadata !1260, metadata !DIExpression()) #14, !dbg !1433
  %214 = zext i1 %213 to i64, !dbg !1437
  %215 = getelementptr inbounds i8, i8* %13, i64 %214, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %215, metadata !1261, metadata !DIExpression()) #14, !dbg !1433
  %216 = call i64 @strlen(i8* nonnull %215) #22, !dbg !1438
  %217 = getelementptr inbounds i8, i8* %215, i64 %216, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %217, metadata !1262, metadata !DIExpression()) #14, !dbg !1433
  %218 = getelementptr inbounds i8, i8* %215, i64 -1, !dbg !1440
  store i8 48, i8* %218, align 1, !dbg !1441, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %217, metadata !1262, metadata !DIExpression()) #14, !dbg !1433
  %219 = getelementptr inbounds i8, i8* %217, i64 -1, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %219, metadata !1262, metadata !DIExpression()) #14, !dbg !1433
  %220 = load i8, i8* %219, align 1, !dbg !1443, !tbaa !1267
  %221 = icmp eq i8 %220, 57, !dbg !1444
  br i1 %221, label %222, label %227, !dbg !1445

222:                                              ; preds = %207, %222
  %223 = phi i8* [ %224, %222 ], [ %219, %207 ]
  store i8 48, i8* %223, align 1, !dbg !1446, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %223, metadata !1262, metadata !DIExpression()) #14, !dbg !1433
  %224 = getelementptr inbounds i8, i8* %223, i64 -1, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %224, metadata !1262, metadata !DIExpression()) #14, !dbg !1433
  %225 = load i8, i8* %224, align 1, !dbg !1443, !tbaa !1267
  %226 = icmp eq i8 %225, 57, !dbg !1444
  br i1 %226, label %222, label %227, !dbg !1445, !llvm.loop !1447

227:                                              ; preds = %222, %207
  %228 = phi i8* [ %219, %207 ], [ %224, %222 ], !dbg !1442
  %229 = phi i8 [ %220, %207 ], [ %225, %222 ], !dbg !1443
  %230 = add i8 %229, 1, !dbg !1449
  store i8 %230, i8* %228, align 1, !dbg !1449, !tbaa !1267
  %231 = icmp ult i8* %215, %228, !dbg !1450
  %232 = select i1 %231, i8* %215, i8* %228, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %232, metadata !1263, metadata !DIExpression()) #14, !dbg !1433
  br i1 %213, label %233, label %235, !dbg !1451

233:                                              ; preds = %227
  %234 = getelementptr inbounds i8, i8* %232, i64 -1, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %234, metadata !1263, metadata !DIExpression()) #14, !dbg !1433
  store i8 45, i8* %234, align 1, !dbg !1453, !tbaa !1267
  br label %235, !dbg !1454

235:                                              ; preds = %227, %233
  %236 = phi i8* [ %234, %233 ], [ %232, %227 ], !dbg !1433
  call void @llvm.dbg.value(metadata i8* %236, metadata !1263, metadata !DIExpression()) #14, !dbg !1433
  %237 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %236) #14, !dbg !1432
  %238 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #14, !dbg !1455
  %239 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1458
  %240 = load i8, i8* %13, align 1, !dbg !1460, !tbaa !1267
  %241 = icmp eq i8 %240, 45, !dbg !1461
  call void @llvm.dbg.value(metadata i1 %241, metadata !1260, metadata !DIExpression()) #14, !dbg !1458
  %242 = zext i1 %241 to i64, !dbg !1462
  %243 = getelementptr inbounds i8, i8* %13, i64 %242, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %243, metadata !1261, metadata !DIExpression()) #14, !dbg !1458
  %244 = call i64 @strlen(i8* nonnull %243) #22, !dbg !1463
  %245 = getelementptr inbounds i8, i8* %243, i64 %244, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %245, metadata !1262, metadata !DIExpression()) #14, !dbg !1458
  %246 = getelementptr inbounds i8, i8* %243, i64 -1, !dbg !1465
  store i8 48, i8* %246, align 1, !dbg !1466, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %245, metadata !1262, metadata !DIExpression()) #14, !dbg !1458
  %247 = getelementptr inbounds i8, i8* %245, i64 -1, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %247, metadata !1262, metadata !DIExpression()) #14, !dbg !1458
  %248 = load i8, i8* %247, align 1, !dbg !1468, !tbaa !1267
  %249 = icmp eq i8 %248, 57, !dbg !1469
  br i1 %249, label %250, label %255, !dbg !1470

250:                                              ; preds = %235, %250
  %251 = phi i8* [ %252, %250 ], [ %247, %235 ]
  store i8 48, i8* %251, align 1, !dbg !1471, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %251, metadata !1262, metadata !DIExpression()) #14, !dbg !1458
  %252 = getelementptr inbounds i8, i8* %251, i64 -1, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %252, metadata !1262, metadata !DIExpression()) #14, !dbg !1458
  %253 = load i8, i8* %252, align 1, !dbg !1468, !tbaa !1267
  %254 = icmp eq i8 %253, 57, !dbg !1469
  br i1 %254, label %250, label %255, !dbg !1470, !llvm.loop !1472

255:                                              ; preds = %250, %235
  %256 = phi i8* [ %247, %235 ], [ %252, %250 ], !dbg !1467
  %257 = phi i8 [ %248, %235 ], [ %253, %250 ], !dbg !1468
  %258 = add i8 %257, 1, !dbg !1474
  store i8 %258, i8* %256, align 1, !dbg !1474, !tbaa !1267
  %259 = icmp ult i8* %243, %256, !dbg !1475
  %260 = select i1 %259, i8* %243, i8* %256, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %260, metadata !1263, metadata !DIExpression()) #14, !dbg !1458
  br i1 %241, label %261, label %263, !dbg !1476

261:                                              ; preds = %255
  %262 = getelementptr inbounds i8, i8* %260, i64 -1, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %262, metadata !1263, metadata !DIExpression()) #14, !dbg !1458
  store i8 45, i8* %262, align 1, !dbg !1478, !tbaa !1267
  br label %263, !dbg !1479

263:                                              ; preds = %255, %261
  %264 = phi i8* [ %262, %261 ], [ %260, %255 ], !dbg !1458
  call void @llvm.dbg.value(metadata i8* %264, metadata !1263, metadata !DIExpression()) #14, !dbg !1458
  %265 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %264) #14, !dbg !1455
  %266 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #14, !dbg !1480
  %267 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1481
  %268 = load i8, i8* %13, align 1, !dbg !1483, !tbaa !1267
  %269 = icmp eq i8 %268, 45, !dbg !1484
  call void @llvm.dbg.value(metadata i1 %269, metadata !1260, metadata !DIExpression()) #14, !dbg !1481
  %270 = zext i1 %269 to i64, !dbg !1485
  %271 = getelementptr inbounds i8, i8* %13, i64 %270, !dbg !1485
  call void @llvm.dbg.value(metadata i8* %271, metadata !1261, metadata !DIExpression()) #14, !dbg !1481
  %272 = call i64 @strlen(i8* nonnull %271) #22, !dbg !1486
  %273 = getelementptr inbounds i8, i8* %271, i64 %272, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %273, metadata !1262, metadata !DIExpression()) #14, !dbg !1481
  %274 = getelementptr inbounds i8, i8* %271, i64 -1, !dbg !1488
  store i8 48, i8* %274, align 1, !dbg !1489, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %273, metadata !1262, metadata !DIExpression()) #14, !dbg !1481
  %275 = getelementptr inbounds i8, i8* %273, i64 -1, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %275, metadata !1262, metadata !DIExpression()) #14, !dbg !1481
  %276 = load i8, i8* %275, align 1, !dbg !1491, !tbaa !1267
  %277 = icmp eq i8 %276, 57, !dbg !1492
  br i1 %277, label %278, label %283, !dbg !1493

278:                                              ; preds = %263, %278
  %279 = phi i8* [ %280, %278 ], [ %275, %263 ]
  store i8 48, i8* %279, align 1, !dbg !1494, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %279, metadata !1262, metadata !DIExpression()) #14, !dbg !1481
  %280 = getelementptr inbounds i8, i8* %279, i64 -1, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %280, metadata !1262, metadata !DIExpression()) #14, !dbg !1481
  %281 = load i8, i8* %280, align 1, !dbg !1491, !tbaa !1267
  %282 = icmp eq i8 %281, 57, !dbg !1492
  br i1 %282, label %278, label %283, !dbg !1493, !llvm.loop !1495

283:                                              ; preds = %278, %263
  %284 = phi i8* [ %275, %263 ], [ %280, %278 ], !dbg !1490
  %285 = phi i8 [ %276, %263 ], [ %281, %278 ], !dbg !1491
  %286 = add i8 %285, 1, !dbg !1497
  store i8 %286, i8* %284, align 1, !dbg !1497, !tbaa !1267
  %287 = icmp ult i8* %271, %284, !dbg !1498
  %288 = select i1 %287, i8* %271, i8* %284, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %288, metadata !1263, metadata !DIExpression()) #14, !dbg !1481
  br i1 %269, label %289, label %291, !dbg !1499

289:                                              ; preds = %283
  %290 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %290, metadata !1263, metadata !DIExpression()) #14, !dbg !1481
  store i8 45, i8* %290, align 1, !dbg !1501, !tbaa !1267
  br label %291, !dbg !1502

291:                                              ; preds = %283, %289
  %292 = phi i8* [ %290, %289 ], [ %288, %283 ], !dbg !1481
  call void @llvm.dbg.value(metadata i8* %292, metadata !1263, metadata !DIExpression()) #14, !dbg !1481
  %293 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* %292) #14, !dbg !1480
  %294 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #14, !dbg !1503
  %295 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1503
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1504
  %296 = load i8, i8* %13, align 1, !dbg !1506, !tbaa !1267
  %297 = icmp eq i8 %296, 45, !dbg !1507
  call void @llvm.dbg.value(metadata i1 %297, metadata !1260, metadata !DIExpression()) #14, !dbg !1504
  %298 = zext i1 %297 to i64, !dbg !1508
  %299 = getelementptr inbounds i8, i8* %13, i64 %298, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %299, metadata !1261, metadata !DIExpression()) #14, !dbg !1504
  %300 = call i64 @strlen(i8* nonnull %299) #22, !dbg !1509
  %301 = getelementptr inbounds i8, i8* %299, i64 %300, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %301, metadata !1262, metadata !DIExpression()) #14, !dbg !1504
  %302 = getelementptr inbounds i8, i8* %299, i64 -1, !dbg !1511
  store i8 48, i8* %302, align 1, !dbg !1512, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %301, metadata !1262, metadata !DIExpression()) #14, !dbg !1504
  %303 = getelementptr inbounds i8, i8* %301, i64 -1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %303, metadata !1262, metadata !DIExpression()) #14, !dbg !1504
  %304 = load i8, i8* %303, align 1, !dbg !1514, !tbaa !1267
  %305 = icmp eq i8 %304, 57, !dbg !1515
  br i1 %305, label %306, label %311, !dbg !1516

306:                                              ; preds = %291, %306
  %307 = phi i8* [ %308, %306 ], [ %303, %291 ]
  store i8 48, i8* %307, align 1, !dbg !1517, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %307, metadata !1262, metadata !DIExpression()) #14, !dbg !1504
  %308 = getelementptr inbounds i8, i8* %307, i64 -1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %308, metadata !1262, metadata !DIExpression()) #14, !dbg !1504
  %309 = load i8, i8* %308, align 1, !dbg !1514, !tbaa !1267
  %310 = icmp eq i8 %309, 57, !dbg !1515
  br i1 %310, label %306, label %311, !dbg !1516, !llvm.loop !1518

311:                                              ; preds = %306, %291
  %312 = phi i8* [ %303, %291 ], [ %308, %306 ], !dbg !1513
  %313 = phi i8 [ %304, %291 ], [ %309, %306 ], !dbg !1514
  %314 = add i8 %313, 1, !dbg !1520
  store i8 %314, i8* %312, align 1, !dbg !1520, !tbaa !1267
  %315 = icmp ult i8* %299, %312, !dbg !1521
  %316 = select i1 %315, i8* %299, i8* %312, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %316, metadata !1263, metadata !DIExpression()) #14, !dbg !1504
  br i1 %297, label %317, label %319, !dbg !1522

317:                                              ; preds = %311
  %318 = getelementptr inbounds i8, i8* %316, i64 -1, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %318, metadata !1263, metadata !DIExpression()) #14, !dbg !1504
  store i8 45, i8* %318, align 1, !dbg !1524, !tbaa !1267
  br label %319, !dbg !1525

319:                                              ; preds = %311, %317
  %320 = phi i8* [ %318, %317 ], [ %316, %311 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8* %320, metadata !1263, metadata !DIExpression()) #14, !dbg !1504
  %321 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* %320) #14, !dbg !1503
  %322 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #14, !dbg !1526
  %323 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1529
  %324 = load i8, i8* %13, align 1, !dbg !1531, !tbaa !1267
  %325 = icmp eq i8 %324, 45, !dbg !1532
  call void @llvm.dbg.value(metadata i1 %325, metadata !1260, metadata !DIExpression()) #14, !dbg !1529
  %326 = zext i1 %325 to i64, !dbg !1533
  %327 = getelementptr inbounds i8, i8* %13, i64 %326, !dbg !1533
  call void @llvm.dbg.value(metadata i8* %327, metadata !1261, metadata !DIExpression()) #14, !dbg !1529
  %328 = call i64 @strlen(i8* nonnull %327) #22, !dbg !1534
  %329 = getelementptr inbounds i8, i8* %327, i64 %328, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %329, metadata !1262, metadata !DIExpression()) #14, !dbg !1529
  %330 = getelementptr inbounds i8, i8* %327, i64 -1, !dbg !1536
  store i8 48, i8* %330, align 1, !dbg !1537, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %329, metadata !1262, metadata !DIExpression()) #14, !dbg !1529
  %331 = getelementptr inbounds i8, i8* %329, i64 -1, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %331, metadata !1262, metadata !DIExpression()) #14, !dbg !1529
  %332 = load i8, i8* %331, align 1, !dbg !1539, !tbaa !1267
  %333 = icmp eq i8 %332, 57, !dbg !1540
  br i1 %333, label %334, label %339, !dbg !1541

334:                                              ; preds = %319, %334
  %335 = phi i8* [ %336, %334 ], [ %331, %319 ]
  store i8 48, i8* %335, align 1, !dbg !1542, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %335, metadata !1262, metadata !DIExpression()) #14, !dbg !1529
  %336 = getelementptr inbounds i8, i8* %335, i64 -1, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %336, metadata !1262, metadata !DIExpression()) #14, !dbg !1529
  %337 = load i8, i8* %336, align 1, !dbg !1539, !tbaa !1267
  %338 = icmp eq i8 %337, 57, !dbg !1540
  br i1 %338, label %334, label %339, !dbg !1541, !llvm.loop !1543

339:                                              ; preds = %334, %319
  %340 = phi i8* [ %331, %319 ], [ %336, %334 ], !dbg !1538
  %341 = phi i8 [ %332, %319 ], [ %337, %334 ], !dbg !1539
  %342 = add i8 %341, 1, !dbg !1545
  store i8 %342, i8* %340, align 1, !dbg !1545, !tbaa !1267
  %343 = icmp ult i8* %327, %340, !dbg !1546
  %344 = select i1 %343, i8* %327, i8* %340, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %344, metadata !1263, metadata !DIExpression()) #14, !dbg !1529
  br i1 %325, label %345, label %347, !dbg !1547

345:                                              ; preds = %339
  %346 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %346, metadata !1263, metadata !DIExpression()) #14, !dbg !1529
  store i8 45, i8* %346, align 1, !dbg !1549, !tbaa !1267
  br label %347, !dbg !1550

347:                                              ; preds = %339, %345
  %348 = phi i8* [ %346, %345 ], [ %344, %339 ], !dbg !1529
  call void @llvm.dbg.value(metadata i8* %348, metadata !1263, metadata !DIExpression()) #14, !dbg !1529
  %349 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %348) #14, !dbg !1526
  %350 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #14, !dbg !1551
  %351 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1552
  %352 = load i8, i8* %13, align 1, !dbg !1554, !tbaa !1267
  %353 = icmp eq i8 %352, 45, !dbg !1555
  call void @llvm.dbg.value(metadata i1 %353, metadata !1260, metadata !DIExpression()) #14, !dbg !1552
  %354 = zext i1 %353 to i64, !dbg !1556
  %355 = getelementptr inbounds i8, i8* %13, i64 %354, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %355, metadata !1261, metadata !DIExpression()) #14, !dbg !1552
  %356 = call i64 @strlen(i8* nonnull %355) #22, !dbg !1557
  %357 = getelementptr inbounds i8, i8* %355, i64 %356, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %357, metadata !1262, metadata !DIExpression()) #14, !dbg !1552
  %358 = getelementptr inbounds i8, i8* %355, i64 -1, !dbg !1559
  store i8 48, i8* %358, align 1, !dbg !1560, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %357, metadata !1262, metadata !DIExpression()) #14, !dbg !1552
  %359 = getelementptr inbounds i8, i8* %357, i64 -1, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %359, metadata !1262, metadata !DIExpression()) #14, !dbg !1552
  %360 = load i8, i8* %359, align 1, !dbg !1562, !tbaa !1267
  %361 = icmp eq i8 %360, 57, !dbg !1563
  br i1 %361, label %362, label %367, !dbg !1564

362:                                              ; preds = %347, %362
  %363 = phi i8* [ %364, %362 ], [ %359, %347 ]
  store i8 48, i8* %363, align 1, !dbg !1565, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %363, metadata !1262, metadata !DIExpression()) #14, !dbg !1552
  %364 = getelementptr inbounds i8, i8* %363, i64 -1, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %364, metadata !1262, metadata !DIExpression()) #14, !dbg !1552
  %365 = load i8, i8* %364, align 1, !dbg !1562, !tbaa !1267
  %366 = icmp eq i8 %365, 57, !dbg !1563
  br i1 %366, label %362, label %367, !dbg !1564, !llvm.loop !1566

367:                                              ; preds = %362, %347
  %368 = phi i8* [ %359, %347 ], [ %364, %362 ], !dbg !1561
  %369 = phi i8 [ %360, %347 ], [ %365, %362 ], !dbg !1562
  %370 = add i8 %369, 1, !dbg !1568
  store i8 %370, i8* %368, align 1, !dbg !1568, !tbaa !1267
  %371 = icmp ult i8* %355, %368, !dbg !1569
  %372 = select i1 %371, i8* %355, i8* %368, !dbg !1569
  call void @llvm.dbg.value(metadata i8* %372, metadata !1263, metadata !DIExpression()) #14, !dbg !1552
  br i1 %353, label %373, label %375, !dbg !1570

373:                                              ; preds = %367
  %374 = getelementptr inbounds i8, i8* %372, i64 -1, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %374, metadata !1263, metadata !DIExpression()) #14, !dbg !1552
  store i8 45, i8* %374, align 1, !dbg !1572, !tbaa !1267
  br label %375, !dbg !1573

375:                                              ; preds = %367, %373
  %376 = phi i8* [ %374, %373 ], [ %372, %367 ], !dbg !1552
  call void @llvm.dbg.value(metadata i8* %376, metadata !1263, metadata !DIExpression()) #14, !dbg !1552
  %377 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* %376) #14, !dbg !1551
  %378 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #14, !dbg !1574
  %379 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1575
  %380 = load i8, i8* %13, align 1, !dbg !1577, !tbaa !1267
  %381 = icmp eq i8 %380, 45, !dbg !1578
  call void @llvm.dbg.value(metadata i1 %381, metadata !1260, metadata !DIExpression()) #14, !dbg !1575
  %382 = zext i1 %381 to i64, !dbg !1579
  %383 = getelementptr inbounds i8, i8* %13, i64 %382, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %383, metadata !1261, metadata !DIExpression()) #14, !dbg !1575
  %384 = call i64 @strlen(i8* nonnull %383) #22, !dbg !1580
  %385 = getelementptr inbounds i8, i8* %383, i64 %384, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %385, metadata !1262, metadata !DIExpression()) #14, !dbg !1575
  %386 = getelementptr inbounds i8, i8* %383, i64 -1, !dbg !1582
  store i8 48, i8* %386, align 1, !dbg !1583, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %385, metadata !1262, metadata !DIExpression()) #14, !dbg !1575
  %387 = getelementptr inbounds i8, i8* %385, i64 -1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %387, metadata !1262, metadata !DIExpression()) #14, !dbg !1575
  %388 = load i8, i8* %387, align 1, !dbg !1585, !tbaa !1267
  %389 = icmp eq i8 %388, 57, !dbg !1586
  br i1 %389, label %390, label %395, !dbg !1587

390:                                              ; preds = %375, %390
  %391 = phi i8* [ %392, %390 ], [ %387, %375 ]
  store i8 48, i8* %391, align 1, !dbg !1588, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %391, metadata !1262, metadata !DIExpression()) #14, !dbg !1575
  %392 = getelementptr inbounds i8, i8* %391, i64 -1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %392, metadata !1262, metadata !DIExpression()) #14, !dbg !1575
  %393 = load i8, i8* %392, align 1, !dbg !1585, !tbaa !1267
  %394 = icmp eq i8 %393, 57, !dbg !1586
  br i1 %394, label %390, label %395, !dbg !1587, !llvm.loop !1589

395:                                              ; preds = %390, %375
  %396 = phi i8* [ %387, %375 ], [ %392, %390 ], !dbg !1584
  %397 = phi i8 [ %388, %375 ], [ %393, %390 ], !dbg !1585
  %398 = add i8 %397, 1, !dbg !1591
  store i8 %398, i8* %396, align 1, !dbg !1591, !tbaa !1267
  %399 = icmp ult i8* %383, %396, !dbg !1592
  %400 = select i1 %399, i8* %383, i8* %396, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %400, metadata !1263, metadata !DIExpression()) #14, !dbg !1575
  br i1 %381, label %401, label %403, !dbg !1593

401:                                              ; preds = %395
  %402 = getelementptr inbounds i8, i8* %400, i64 -1, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %402, metadata !1263, metadata !DIExpression()) #14, !dbg !1575
  store i8 45, i8* %402, align 1, !dbg !1595, !tbaa !1267
  br label %403, !dbg !1596

403:                                              ; preds = %395, %401
  %404 = phi i8* [ %402, %401 ], [ %400, %395 ], !dbg !1575
  call void @llvm.dbg.value(metadata i8* %404, metadata !1263, metadata !DIExpression()) #14, !dbg !1575
  %405 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* %404) #14, !dbg !1574
  %406 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #14, !dbg !1597
  %407 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1597
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1598
  %408 = load i8, i8* %13, align 1, !dbg !1600, !tbaa !1267
  %409 = icmp eq i8 %408, 45, !dbg !1601
  call void @llvm.dbg.value(metadata i1 %409, metadata !1260, metadata !DIExpression()) #14, !dbg !1598
  %410 = zext i1 %409 to i64, !dbg !1602
  %411 = getelementptr inbounds i8, i8* %13, i64 %410, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %411, metadata !1261, metadata !DIExpression()) #14, !dbg !1598
  %412 = call i64 @strlen(i8* nonnull %411) #22, !dbg !1603
  %413 = getelementptr inbounds i8, i8* %411, i64 %412, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %413, metadata !1262, metadata !DIExpression()) #14, !dbg !1598
  %414 = getelementptr inbounds i8, i8* %411, i64 -1, !dbg !1605
  store i8 48, i8* %414, align 1, !dbg !1606, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %413, metadata !1262, metadata !DIExpression()) #14, !dbg !1598
  %415 = getelementptr inbounds i8, i8* %413, i64 -1, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %415, metadata !1262, metadata !DIExpression()) #14, !dbg !1598
  %416 = load i8, i8* %415, align 1, !dbg !1608, !tbaa !1267
  %417 = icmp eq i8 %416, 57, !dbg !1609
  br i1 %417, label %418, label %423, !dbg !1610

418:                                              ; preds = %403, %418
  %419 = phi i8* [ %420, %418 ], [ %415, %403 ]
  store i8 48, i8* %419, align 1, !dbg !1611, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %419, metadata !1262, metadata !DIExpression()) #14, !dbg !1598
  %420 = getelementptr inbounds i8, i8* %419, i64 -1, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %420, metadata !1262, metadata !DIExpression()) #14, !dbg !1598
  %421 = load i8, i8* %420, align 1, !dbg !1608, !tbaa !1267
  %422 = icmp eq i8 %421, 57, !dbg !1609
  br i1 %422, label %418, label %423, !dbg !1610, !llvm.loop !1612

423:                                              ; preds = %418, %403
  %424 = phi i8* [ %415, %403 ], [ %420, %418 ], !dbg !1607
  %425 = phi i8 [ %416, %403 ], [ %421, %418 ], !dbg !1608
  %426 = add i8 %425, 1, !dbg !1614
  store i8 %426, i8* %424, align 1, !dbg !1614, !tbaa !1267
  %427 = icmp ult i8* %411, %424, !dbg !1615
  %428 = select i1 %427, i8* %411, i8* %424, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %428, metadata !1263, metadata !DIExpression()) #14, !dbg !1598
  br i1 %409, label %429, label %431, !dbg !1616

429:                                              ; preds = %423
  %430 = getelementptr inbounds i8, i8* %428, i64 -1, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %430, metadata !1263, metadata !DIExpression()) #14, !dbg !1598
  store i8 45, i8* %430, align 1, !dbg !1618, !tbaa !1267
  br label %431, !dbg !1619

431:                                              ; preds = %423, %429
  %432 = phi i8* [ %430, %429 ], [ %428, %423 ], !dbg !1598
  call void @llvm.dbg.value(metadata i8* %432, metadata !1263, metadata !DIExpression()) #14, !dbg !1598
  %433 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %432) #14, !dbg !1597
  %434 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #14, !dbg !1620
  %435 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1623
  %436 = load i8, i8* %13, align 1, !dbg !1625, !tbaa !1267
  %437 = icmp eq i8 %436, 45, !dbg !1626
  call void @llvm.dbg.value(metadata i1 %437, metadata !1260, metadata !DIExpression()) #14, !dbg !1623
  %438 = zext i1 %437 to i64, !dbg !1627
  %439 = getelementptr inbounds i8, i8* %13, i64 %438, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %439, metadata !1261, metadata !DIExpression()) #14, !dbg !1623
  %440 = call i64 @strlen(i8* nonnull %439) #22, !dbg !1628
  %441 = getelementptr inbounds i8, i8* %439, i64 %440, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %441, metadata !1262, metadata !DIExpression()) #14, !dbg !1623
  %442 = getelementptr inbounds i8, i8* %439, i64 -1, !dbg !1630
  store i8 48, i8* %442, align 1, !dbg !1631, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %441, metadata !1262, metadata !DIExpression()) #14, !dbg !1623
  %443 = getelementptr inbounds i8, i8* %441, i64 -1, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %443, metadata !1262, metadata !DIExpression()) #14, !dbg !1623
  %444 = load i8, i8* %443, align 1, !dbg !1633, !tbaa !1267
  %445 = icmp eq i8 %444, 57, !dbg !1634
  br i1 %445, label %446, label %451, !dbg !1635

446:                                              ; preds = %431, %446
  %447 = phi i8* [ %448, %446 ], [ %443, %431 ]
  store i8 48, i8* %447, align 1, !dbg !1636, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %447, metadata !1262, metadata !DIExpression()) #14, !dbg !1623
  %448 = getelementptr inbounds i8, i8* %447, i64 -1, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %448, metadata !1262, metadata !DIExpression()) #14, !dbg !1623
  %449 = load i8, i8* %448, align 1, !dbg !1633, !tbaa !1267
  %450 = icmp eq i8 %449, 57, !dbg !1634
  br i1 %450, label %446, label %451, !dbg !1635, !llvm.loop !1637

451:                                              ; preds = %446, %431
  %452 = phi i8* [ %443, %431 ], [ %448, %446 ], !dbg !1632
  %453 = phi i8 [ %444, %431 ], [ %449, %446 ], !dbg !1633
  %454 = add i8 %453, 1, !dbg !1639
  store i8 %454, i8* %452, align 1, !dbg !1639, !tbaa !1267
  %455 = icmp ult i8* %439, %452, !dbg !1640
  %456 = select i1 %455, i8* %439, i8* %452, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %456, metadata !1263, metadata !DIExpression()) #14, !dbg !1623
  br i1 %437, label %457, label %459, !dbg !1641

457:                                              ; preds = %451
  %458 = getelementptr inbounds i8, i8* %456, i64 -1, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %458, metadata !1263, metadata !DIExpression()) #14, !dbg !1623
  store i8 45, i8* %458, align 1, !dbg !1643, !tbaa !1267
  br label %459, !dbg !1644

459:                                              ; preds = %451, %457
  %460 = phi i8* [ %458, %457 ], [ %456, %451 ], !dbg !1623
  call void @llvm.dbg.value(metadata i8* %460, metadata !1263, metadata !DIExpression()) #14, !dbg !1623
  %461 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %460) #14, !dbg !1620
  %462 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #14, !dbg !1645
  %463 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1646
  %464 = load i8, i8* %13, align 1, !dbg !1648, !tbaa !1267
  %465 = icmp eq i8 %464, 45, !dbg !1649
  call void @llvm.dbg.value(metadata i1 %465, metadata !1260, metadata !DIExpression()) #14, !dbg !1646
  %466 = zext i1 %465 to i64, !dbg !1650
  %467 = getelementptr inbounds i8, i8* %13, i64 %466, !dbg !1650
  call void @llvm.dbg.value(metadata i8* %467, metadata !1261, metadata !DIExpression()) #14, !dbg !1646
  %468 = call i64 @strlen(i8* nonnull %467) #22, !dbg !1651
  %469 = getelementptr inbounds i8, i8* %467, i64 %468, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %469, metadata !1262, metadata !DIExpression()) #14, !dbg !1646
  %470 = getelementptr inbounds i8, i8* %467, i64 -1, !dbg !1653
  store i8 48, i8* %470, align 1, !dbg !1654, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %469, metadata !1262, metadata !DIExpression()) #14, !dbg !1646
  %471 = getelementptr inbounds i8, i8* %469, i64 -1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %471, metadata !1262, metadata !DIExpression()) #14, !dbg !1646
  %472 = load i8, i8* %471, align 1, !dbg !1656, !tbaa !1267
  %473 = icmp eq i8 %472, 57, !dbg !1657
  br i1 %473, label %474, label %479, !dbg !1658

474:                                              ; preds = %459, %474
  %475 = phi i8* [ %476, %474 ], [ %471, %459 ]
  store i8 48, i8* %475, align 1, !dbg !1659, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %475, metadata !1262, metadata !DIExpression()) #14, !dbg !1646
  %476 = getelementptr inbounds i8, i8* %475, i64 -1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %476, metadata !1262, metadata !DIExpression()) #14, !dbg !1646
  %477 = load i8, i8* %476, align 1, !dbg !1656, !tbaa !1267
  %478 = icmp eq i8 %477, 57, !dbg !1657
  br i1 %478, label %474, label %479, !dbg !1658, !llvm.loop !1660

479:                                              ; preds = %474, %459
  %480 = phi i8* [ %471, %459 ], [ %476, %474 ], !dbg !1655
  %481 = phi i8 [ %472, %459 ], [ %477, %474 ], !dbg !1656
  %482 = add i8 %481, 1, !dbg !1662
  store i8 %482, i8* %480, align 1, !dbg !1662, !tbaa !1267
  %483 = icmp ult i8* %467, %480, !dbg !1663
  %484 = select i1 %483, i8* %467, i8* %480, !dbg !1663
  call void @llvm.dbg.value(metadata i8* %484, metadata !1263, metadata !DIExpression()) #14, !dbg !1646
  br i1 %465, label %485, label %487, !dbg !1664

485:                                              ; preds = %479
  %486 = getelementptr inbounds i8, i8* %484, i64 -1, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %486, metadata !1263, metadata !DIExpression()) #14, !dbg !1646
  store i8 45, i8* %486, align 1, !dbg !1666, !tbaa !1267
  br label %487, !dbg !1667

487:                                              ; preds = %479, %485
  %488 = phi i8* [ %486, %485 ], [ %484, %479 ], !dbg !1646
  call void @llvm.dbg.value(metadata i8* %488, metadata !1263, metadata !DIExpression()) #14, !dbg !1646
  %489 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %488) #14, !dbg !1645
  %490 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #14, !dbg !1668
  %491 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1671
  %492 = load i8, i8* %13, align 1, !dbg !1673, !tbaa !1267
  %493 = icmp eq i8 %492, 45, !dbg !1674
  call void @llvm.dbg.value(metadata i1 %493, metadata !1260, metadata !DIExpression()) #14, !dbg !1671
  %494 = zext i1 %493 to i64, !dbg !1675
  %495 = getelementptr inbounds i8, i8* %13, i64 %494, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %495, metadata !1261, metadata !DIExpression()) #14, !dbg !1671
  %496 = call i64 @strlen(i8* nonnull %495) #22, !dbg !1676
  %497 = getelementptr inbounds i8, i8* %495, i64 %496, !dbg !1677
  call void @llvm.dbg.value(metadata i8* %497, metadata !1262, metadata !DIExpression()) #14, !dbg !1671
  %498 = getelementptr inbounds i8, i8* %495, i64 -1, !dbg !1678
  store i8 48, i8* %498, align 1, !dbg !1679, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %497, metadata !1262, metadata !DIExpression()) #14, !dbg !1671
  %499 = getelementptr inbounds i8, i8* %497, i64 -1, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %499, metadata !1262, metadata !DIExpression()) #14, !dbg !1671
  %500 = load i8, i8* %499, align 1, !dbg !1681, !tbaa !1267
  %501 = icmp eq i8 %500, 57, !dbg !1682
  br i1 %501, label %502, label %507, !dbg !1683

502:                                              ; preds = %487, %502
  %503 = phi i8* [ %504, %502 ], [ %499, %487 ]
  store i8 48, i8* %503, align 1, !dbg !1684, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %503, metadata !1262, metadata !DIExpression()) #14, !dbg !1671
  %504 = getelementptr inbounds i8, i8* %503, i64 -1, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %504, metadata !1262, metadata !DIExpression()) #14, !dbg !1671
  %505 = load i8, i8* %504, align 1, !dbg !1681, !tbaa !1267
  %506 = icmp eq i8 %505, 57, !dbg !1682
  br i1 %506, label %502, label %507, !dbg !1683, !llvm.loop !1685

507:                                              ; preds = %502, %487
  %508 = phi i8* [ %499, %487 ], [ %504, %502 ], !dbg !1680
  %509 = phi i8 [ %500, %487 ], [ %505, %502 ], !dbg !1681
  %510 = add i8 %509, 1, !dbg !1687
  store i8 %510, i8* %508, align 1, !dbg !1687, !tbaa !1267
  %511 = icmp ult i8* %495, %508, !dbg !1688
  %512 = select i1 %511, i8* %495, i8* %508, !dbg !1688
  call void @llvm.dbg.value(metadata i8* %512, metadata !1263, metadata !DIExpression()) #14, !dbg !1671
  br i1 %493, label %513, label %515, !dbg !1689

513:                                              ; preds = %507
  %514 = getelementptr inbounds i8, i8* %512, i64 -1, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %514, metadata !1263, metadata !DIExpression()) #14, !dbg !1671
  store i8 45, i8* %514, align 1, !dbg !1691, !tbaa !1267
  br label %515, !dbg !1692

515:                                              ; preds = %507, %513
  %516 = phi i8* [ %514, %513 ], [ %512, %507 ], !dbg !1671
  call void @llvm.dbg.value(metadata i8* %516, metadata !1263, metadata !DIExpression()) #14, !dbg !1671
  %517 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %516) #14, !dbg !1668
  %518 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #14, !dbg !1693
  %519 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1694
  %520 = load i8, i8* %13, align 1, !dbg !1696, !tbaa !1267
  %521 = icmp eq i8 %520, 45, !dbg !1697
  call void @llvm.dbg.value(metadata i1 %521, metadata !1260, metadata !DIExpression()) #14, !dbg !1694
  %522 = zext i1 %521 to i64, !dbg !1698
  %523 = getelementptr inbounds i8, i8* %13, i64 %522, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %523, metadata !1261, metadata !DIExpression()) #14, !dbg !1694
  %524 = call i64 @strlen(i8* nonnull %523) #22, !dbg !1699
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %525, metadata !1262, metadata !DIExpression()) #14, !dbg !1694
  %526 = getelementptr inbounds i8, i8* %523, i64 -1, !dbg !1701
  store i8 48, i8* %526, align 1, !dbg !1702, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %525, metadata !1262, metadata !DIExpression()) #14, !dbg !1694
  %527 = getelementptr inbounds i8, i8* %525, i64 -1, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %527, metadata !1262, metadata !DIExpression()) #14, !dbg !1694
  %528 = load i8, i8* %527, align 1, !dbg !1704, !tbaa !1267
  %529 = icmp eq i8 %528, 57, !dbg !1705
  br i1 %529, label %530, label %535, !dbg !1706

530:                                              ; preds = %515, %530
  %531 = phi i8* [ %532, %530 ], [ %527, %515 ]
  store i8 48, i8* %531, align 1, !dbg !1707, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %531, metadata !1262, metadata !DIExpression()) #14, !dbg !1694
  %532 = getelementptr inbounds i8, i8* %531, i64 -1, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %532, metadata !1262, metadata !DIExpression()) #14, !dbg !1694
  %533 = load i8, i8* %532, align 1, !dbg !1704, !tbaa !1267
  %534 = icmp eq i8 %533, 57, !dbg !1705
  br i1 %534, label %530, label %535, !dbg !1706, !llvm.loop !1708

535:                                              ; preds = %530, %515
  %536 = phi i8* [ %527, %515 ], [ %532, %530 ], !dbg !1703
  %537 = phi i8 [ %528, %515 ], [ %533, %530 ], !dbg !1704
  %538 = add i8 %537, 1, !dbg !1710
  store i8 %538, i8* %536, align 1, !dbg !1710, !tbaa !1267
  %539 = icmp ult i8* %523, %536, !dbg !1711
  %540 = select i1 %539, i8* %523, i8* %536, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %540, metadata !1263, metadata !DIExpression()) #14, !dbg !1694
  br i1 %521, label %541, label %543, !dbg !1712

541:                                              ; preds = %535
  %542 = getelementptr inbounds i8, i8* %540, i64 -1, !dbg !1713
  call void @llvm.dbg.value(metadata i8* %542, metadata !1263, metadata !DIExpression()) #14, !dbg !1694
  store i8 45, i8* %542, align 1, !dbg !1714, !tbaa !1267
  br label %543, !dbg !1715

543:                                              ; preds = %535, %541
  %544 = phi i8* [ %542, %541 ], [ %540, %535 ], !dbg !1694
  call void @llvm.dbg.value(metadata i8* %544, metadata !1263, metadata !DIExpression()) #14, !dbg !1694
  %545 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* %544) #14, !dbg !1693
  %546 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 4294967295) #14, !dbg !1716
  %547 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1717
  %548 = load i8, i8* %13, align 1, !dbg !1719, !tbaa !1267
  %549 = icmp eq i8 %548, 45, !dbg !1720
  call void @llvm.dbg.value(metadata i1 %549, metadata !1260, metadata !DIExpression()) #14, !dbg !1717
  %550 = zext i1 %549 to i64, !dbg !1721
  %551 = getelementptr inbounds i8, i8* %13, i64 %550, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %551, metadata !1261, metadata !DIExpression()) #14, !dbg !1717
  %552 = call i64 @strlen(i8* nonnull %551) #22, !dbg !1722
  %553 = getelementptr inbounds i8, i8* %551, i64 %552, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %553, metadata !1262, metadata !DIExpression()) #14, !dbg !1717
  %554 = getelementptr inbounds i8, i8* %551, i64 -1, !dbg !1724
  store i8 48, i8* %554, align 1, !dbg !1725, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %553, metadata !1262, metadata !DIExpression()) #14, !dbg !1717
  %555 = getelementptr inbounds i8, i8* %553, i64 -1, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %555, metadata !1262, metadata !DIExpression()) #14, !dbg !1717
  %556 = load i8, i8* %555, align 1, !dbg !1727, !tbaa !1267
  %557 = icmp eq i8 %556, 57, !dbg !1728
  br i1 %557, label %558, label %563, !dbg !1729

558:                                              ; preds = %543, %558
  %559 = phi i8* [ %560, %558 ], [ %555, %543 ]
  store i8 48, i8* %559, align 1, !dbg !1730, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %559, metadata !1262, metadata !DIExpression()) #14, !dbg !1717
  %560 = getelementptr inbounds i8, i8* %559, i64 -1, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %560, metadata !1262, metadata !DIExpression()) #14, !dbg !1717
  %561 = load i8, i8* %560, align 1, !dbg !1727, !tbaa !1267
  %562 = icmp eq i8 %561, 57, !dbg !1728
  br i1 %562, label %558, label %563, !dbg !1729, !llvm.loop !1731

563:                                              ; preds = %558, %543
  %564 = phi i8* [ %555, %543 ], [ %560, %558 ], !dbg !1726
  %565 = phi i8 [ %556, %543 ], [ %561, %558 ], !dbg !1727
  %566 = add i8 %565, 1, !dbg !1733
  store i8 %566, i8* %564, align 1, !dbg !1733, !tbaa !1267
  %567 = icmp ult i8* %551, %564, !dbg !1734
  %568 = select i1 %567, i8* %551, i8* %564, !dbg !1734
  call void @llvm.dbg.value(metadata i8* %568, metadata !1263, metadata !DIExpression()) #14, !dbg !1717
  br i1 %549, label %569, label %571, !dbg !1735

569:                                              ; preds = %563
  %570 = getelementptr inbounds i8, i8* %568, i64 -1, !dbg !1736
  call void @llvm.dbg.value(metadata i8* %570, metadata !1263, metadata !DIExpression()) #14, !dbg !1717
  store i8 45, i8* %570, align 1, !dbg !1737, !tbaa !1267
  br label %571, !dbg !1738

571:                                              ; preds = %563, %569
  %572 = phi i8* [ %570, %569 ], [ %568, %563 ], !dbg !1717
  call void @llvm.dbg.value(metadata i8* %572, metadata !1263, metadata !DIExpression()) #14, !dbg !1717
  %573 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* %572) #14, !dbg !1716
  %574 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2147483647) #14, !dbg !1739
  %575 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1740
  %576 = load i8, i8* %13, align 1, !dbg !1742, !tbaa !1267
  %577 = icmp eq i8 %576, 45, !dbg !1743
  call void @llvm.dbg.value(metadata i1 %577, metadata !1260, metadata !DIExpression()) #14, !dbg !1740
  %578 = zext i1 %577 to i64, !dbg !1744
  %579 = getelementptr inbounds i8, i8* %13, i64 %578, !dbg !1744
  call void @llvm.dbg.value(metadata i8* %579, metadata !1261, metadata !DIExpression()) #14, !dbg !1740
  %580 = call i64 @strlen(i8* nonnull %579) #22, !dbg !1745
  %581 = getelementptr inbounds i8, i8* %579, i64 %580, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %581, metadata !1262, metadata !DIExpression()) #14, !dbg !1740
  %582 = getelementptr inbounds i8, i8* %579, i64 -1, !dbg !1747
  store i8 48, i8* %582, align 1, !dbg !1748, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %581, metadata !1262, metadata !DIExpression()) #14, !dbg !1740
  %583 = getelementptr inbounds i8, i8* %581, i64 -1, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %583, metadata !1262, metadata !DIExpression()) #14, !dbg !1740
  %584 = load i8, i8* %583, align 1, !dbg !1750, !tbaa !1267
  %585 = icmp eq i8 %584, 57, !dbg !1751
  br i1 %585, label %586, label %591, !dbg !1752

586:                                              ; preds = %571, %586
  %587 = phi i8* [ %588, %586 ], [ %583, %571 ]
  store i8 48, i8* %587, align 1, !dbg !1753, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %587, metadata !1262, metadata !DIExpression()) #14, !dbg !1740
  %588 = getelementptr inbounds i8, i8* %587, i64 -1, !dbg !1749
  call void @llvm.dbg.value(metadata i8* %588, metadata !1262, metadata !DIExpression()) #14, !dbg !1740
  %589 = load i8, i8* %588, align 1, !dbg !1750, !tbaa !1267
  %590 = icmp eq i8 %589, 57, !dbg !1751
  br i1 %590, label %586, label %591, !dbg !1752, !llvm.loop !1754

591:                                              ; preds = %586, %571
  %592 = phi i8* [ %583, %571 ], [ %588, %586 ], !dbg !1749
  %593 = phi i8 [ %584, %571 ], [ %589, %586 ], !dbg !1750
  %594 = add i8 %593, 1, !dbg !1756
  store i8 %594, i8* %592, align 1, !dbg !1756, !tbaa !1267
  %595 = icmp ult i8* %579, %592, !dbg !1757
  %596 = select i1 %595, i8* %579, i8* %592, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %596, metadata !1263, metadata !DIExpression()) #14, !dbg !1740
  br i1 %577, label %597, label %599, !dbg !1758

597:                                              ; preds = %591
  %598 = getelementptr inbounds i8, i8* %596, i64 -1, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %598, metadata !1263, metadata !DIExpression()) #14, !dbg !1740
  store i8 45, i8* %598, align 1, !dbg !1760, !tbaa !1267
  br label %599, !dbg !1761

599:                                              ; preds = %591, %597
  %600 = phi i8* [ %598, %597 ], [ %596, %591 ], !dbg !1740
  call void @llvm.dbg.value(metadata i8* %600, metadata !1263, metadata !DIExpression()) #14, !dbg !1740
  %601 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %600) #14, !dbg !1739
  %602 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -2147483648) #14, !dbg !1762
  %603 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1765
  %604 = load i8, i8* %13, align 1, !dbg !1767, !tbaa !1267
  %605 = icmp eq i8 %604, 45, !dbg !1768
  call void @llvm.dbg.value(metadata i1 %605, metadata !1260, metadata !DIExpression()) #14, !dbg !1765
  %606 = zext i1 %605 to i64, !dbg !1769
  %607 = getelementptr inbounds i8, i8* %13, i64 %606, !dbg !1769
  call void @llvm.dbg.value(metadata i8* %607, metadata !1261, metadata !DIExpression()) #14, !dbg !1765
  %608 = call i64 @strlen(i8* nonnull %607) #22, !dbg !1770
  %609 = getelementptr inbounds i8, i8* %607, i64 %608, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %609, metadata !1262, metadata !DIExpression()) #14, !dbg !1765
  %610 = getelementptr inbounds i8, i8* %607, i64 -1, !dbg !1772
  store i8 48, i8* %610, align 1, !dbg !1773, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %609, metadata !1262, metadata !DIExpression()) #14, !dbg !1765
  %611 = getelementptr inbounds i8, i8* %609, i64 -1, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %611, metadata !1262, metadata !DIExpression()) #14, !dbg !1765
  %612 = load i8, i8* %611, align 1, !dbg !1775, !tbaa !1267
  %613 = icmp eq i8 %612, 57, !dbg !1776
  br i1 %613, label %614, label %619, !dbg !1777

614:                                              ; preds = %599, %614
  %615 = phi i8* [ %616, %614 ], [ %611, %599 ]
  store i8 48, i8* %615, align 1, !dbg !1778, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %615, metadata !1262, metadata !DIExpression()) #14, !dbg !1765
  %616 = getelementptr inbounds i8, i8* %615, i64 -1, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %616, metadata !1262, metadata !DIExpression()) #14, !dbg !1765
  %617 = load i8, i8* %616, align 1, !dbg !1775, !tbaa !1267
  %618 = icmp eq i8 %617, 57, !dbg !1776
  br i1 %618, label %614, label %619, !dbg !1777, !llvm.loop !1779

619:                                              ; preds = %614, %599
  %620 = phi i8* [ %611, %599 ], [ %616, %614 ], !dbg !1774
  %621 = phi i8 [ %612, %599 ], [ %617, %614 ], !dbg !1775
  %622 = add i8 %621, 1, !dbg !1781
  store i8 %622, i8* %620, align 1, !dbg !1781, !tbaa !1267
  %623 = icmp ult i8* %607, %620, !dbg !1782
  %624 = select i1 %623, i8* %607, i8* %620, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %624, metadata !1263, metadata !DIExpression()) #14, !dbg !1765
  br i1 %605, label %625, label %627, !dbg !1783

625:                                              ; preds = %619
  %626 = getelementptr inbounds i8, i8* %624, i64 -1, !dbg !1784
  call void @llvm.dbg.value(metadata i8* %626, metadata !1263, metadata !DIExpression()) #14, !dbg !1765
  store i8 45, i8* %626, align 1, !dbg !1785, !tbaa !1267
  br label %627, !dbg !1786

627:                                              ; preds = %619, %625
  %628 = phi i8* [ %626, %625 ], [ %624, %619 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8* %628, metadata !1263, metadata !DIExpression()) #14, !dbg !1765
  %629 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0), i8* %628) #14, !dbg !1762
  %630 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #14, !dbg !1787
  %631 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1788
  %632 = load i8, i8* %13, align 1, !dbg !1790, !tbaa !1267
  %633 = icmp eq i8 %632, 45, !dbg !1791
  call void @llvm.dbg.value(metadata i1 %633, metadata !1260, metadata !DIExpression()) #14, !dbg !1788
  %634 = zext i1 %633 to i64, !dbg !1792
  %635 = getelementptr inbounds i8, i8* %13, i64 %634, !dbg !1792
  call void @llvm.dbg.value(metadata i8* %635, metadata !1261, metadata !DIExpression()) #14, !dbg !1788
  %636 = call i64 @strlen(i8* nonnull %635) #22, !dbg !1793
  %637 = getelementptr inbounds i8, i8* %635, i64 %636, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %637, metadata !1262, metadata !DIExpression()) #14, !dbg !1788
  %638 = getelementptr inbounds i8, i8* %635, i64 -1, !dbg !1795
  store i8 48, i8* %638, align 1, !dbg !1796, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %637, metadata !1262, metadata !DIExpression()) #14, !dbg !1788
  %639 = getelementptr inbounds i8, i8* %637, i64 -1, !dbg !1797
  call void @llvm.dbg.value(metadata i8* %639, metadata !1262, metadata !DIExpression()) #14, !dbg !1788
  %640 = load i8, i8* %639, align 1, !dbg !1798, !tbaa !1267
  %641 = icmp eq i8 %640, 57, !dbg !1799
  br i1 %641, label %642, label %647, !dbg !1800

642:                                              ; preds = %627, %642
  %643 = phi i8* [ %644, %642 ], [ %639, %627 ]
  store i8 48, i8* %643, align 1, !dbg !1801, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %643, metadata !1262, metadata !DIExpression()) #14, !dbg !1788
  %644 = getelementptr inbounds i8, i8* %643, i64 -1, !dbg !1797
  call void @llvm.dbg.value(metadata i8* %644, metadata !1262, metadata !DIExpression()) #14, !dbg !1788
  %645 = load i8, i8* %644, align 1, !dbg !1798, !tbaa !1267
  %646 = icmp eq i8 %645, 57, !dbg !1799
  br i1 %646, label %642, label %647, !dbg !1800, !llvm.loop !1802

647:                                              ; preds = %642, %627
  %648 = phi i8* [ %639, %627 ], [ %644, %642 ], !dbg !1797
  %649 = phi i8 [ %640, %627 ], [ %645, %642 ], !dbg !1798
  %650 = add i8 %649, 1, !dbg !1804
  store i8 %650, i8* %648, align 1, !dbg !1804, !tbaa !1267
  %651 = icmp ult i8* %635, %648, !dbg !1805
  %652 = select i1 %651, i8* %635, i8* %648, !dbg !1805
  call void @llvm.dbg.value(metadata i8* %652, metadata !1263, metadata !DIExpression()) #14, !dbg !1788
  br i1 %633, label %653, label %655, !dbg !1806

653:                                              ; preds = %647
  %654 = getelementptr inbounds i8, i8* %652, i64 -1, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %654, metadata !1263, metadata !DIExpression()) #14, !dbg !1788
  store i8 45, i8* %654, align 1, !dbg !1808, !tbaa !1267
  br label %655, !dbg !1809

655:                                              ; preds = %647, %653
  %656 = phi i8* [ %654, %653 ], [ %652, %647 ], !dbg !1788
  call void @llvm.dbg.value(metadata i8* %656, metadata !1263, metadata !DIExpression()) #14, !dbg !1788
  %657 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i8* %656) #14, !dbg !1787
  %658 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #14, !dbg !1810
  %659 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1810
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1813
  %660 = load i8, i8* %13, align 1, !dbg !1815, !tbaa !1267
  %661 = icmp eq i8 %660, 45, !dbg !1816
  call void @llvm.dbg.value(metadata i1 %661, metadata !1260, metadata !DIExpression()) #14, !dbg !1813
  %662 = zext i1 %661 to i64, !dbg !1817
  %663 = getelementptr inbounds i8, i8* %13, i64 %662, !dbg !1817
  call void @llvm.dbg.value(metadata i8* %663, metadata !1261, metadata !DIExpression()) #14, !dbg !1813
  %664 = call i64 @strlen(i8* nonnull %663) #22, !dbg !1818
  %665 = getelementptr inbounds i8, i8* %663, i64 %664, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %665, metadata !1262, metadata !DIExpression()) #14, !dbg !1813
  %666 = getelementptr inbounds i8, i8* %663, i64 -1, !dbg !1820
  store i8 48, i8* %666, align 1, !dbg !1821, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %665, metadata !1262, metadata !DIExpression()) #14, !dbg !1813
  %667 = getelementptr inbounds i8, i8* %665, i64 -1, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %667, metadata !1262, metadata !DIExpression()) #14, !dbg !1813
  %668 = load i8, i8* %667, align 1, !dbg !1823, !tbaa !1267
  %669 = icmp eq i8 %668, 57, !dbg !1824
  br i1 %669, label %670, label %675, !dbg !1825

670:                                              ; preds = %655, %670
  %671 = phi i8* [ %672, %670 ], [ %667, %655 ]
  store i8 48, i8* %671, align 1, !dbg !1826, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %671, metadata !1262, metadata !DIExpression()) #14, !dbg !1813
  %672 = getelementptr inbounds i8, i8* %671, i64 -1, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %672, metadata !1262, metadata !DIExpression()) #14, !dbg !1813
  %673 = load i8, i8* %672, align 1, !dbg !1823, !tbaa !1267
  %674 = icmp eq i8 %673, 57, !dbg !1824
  br i1 %674, label %670, label %675, !dbg !1825, !llvm.loop !1827

675:                                              ; preds = %670, %655
  %676 = phi i8* [ %667, %655 ], [ %672, %670 ], !dbg !1822
  %677 = phi i8 [ %668, %655 ], [ %673, %670 ], !dbg !1823
  %678 = add i8 %677, 1, !dbg !1829
  store i8 %678, i8* %676, align 1, !dbg !1829, !tbaa !1267
  %679 = icmp ult i8* %663, %676, !dbg !1830
  %680 = select i1 %679, i8* %663, i8* %676, !dbg !1830
  call void @llvm.dbg.value(metadata i8* %680, metadata !1263, metadata !DIExpression()) #14, !dbg !1813
  br i1 %661, label %681, label %683, !dbg !1831

681:                                              ; preds = %675
  %682 = getelementptr inbounds i8, i8* %680, i64 -1, !dbg !1832
  call void @llvm.dbg.value(metadata i8* %682, metadata !1263, metadata !DIExpression()) #14, !dbg !1813
  store i8 45, i8* %682, align 1, !dbg !1833, !tbaa !1267
  br label %683, !dbg !1834

683:                                              ; preds = %675, %681
  %684 = phi i8* [ %682, %681 ], [ %680, %675 ], !dbg !1813
  call void @llvm.dbg.value(metadata i8* %684, metadata !1263, metadata !DIExpression()) #14, !dbg !1813
  %685 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* %684) #14, !dbg !1810
  %686 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 9223372036854775807) #14, !dbg !1835
  %687 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1836
  %688 = load i8, i8* %13, align 1, !dbg !1838, !tbaa !1267
  %689 = icmp eq i8 %688, 45, !dbg !1839
  call void @llvm.dbg.value(metadata i1 %689, metadata !1260, metadata !DIExpression()) #14, !dbg !1836
  %690 = zext i1 %689 to i64, !dbg !1840
  %691 = getelementptr inbounds i8, i8* %13, i64 %690, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %691, metadata !1261, metadata !DIExpression()) #14, !dbg !1836
  %692 = call i64 @strlen(i8* nonnull %691) #22, !dbg !1841
  %693 = getelementptr inbounds i8, i8* %691, i64 %692, !dbg !1842
  call void @llvm.dbg.value(metadata i8* %693, metadata !1262, metadata !DIExpression()) #14, !dbg !1836
  %694 = getelementptr inbounds i8, i8* %691, i64 -1, !dbg !1843
  store i8 48, i8* %694, align 1, !dbg !1844, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %693, metadata !1262, metadata !DIExpression()) #14, !dbg !1836
  %695 = getelementptr inbounds i8, i8* %693, i64 -1, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %695, metadata !1262, metadata !DIExpression()) #14, !dbg !1836
  %696 = load i8, i8* %695, align 1, !dbg !1846, !tbaa !1267
  %697 = icmp eq i8 %696, 57, !dbg !1847
  br i1 %697, label %698, label %703, !dbg !1848

698:                                              ; preds = %683, %698
  %699 = phi i8* [ %700, %698 ], [ %695, %683 ]
  store i8 48, i8* %699, align 1, !dbg !1849, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %699, metadata !1262, metadata !DIExpression()) #14, !dbg !1836
  %700 = getelementptr inbounds i8, i8* %699, i64 -1, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %700, metadata !1262, metadata !DIExpression()) #14, !dbg !1836
  %701 = load i8, i8* %700, align 1, !dbg !1846, !tbaa !1267
  %702 = icmp eq i8 %701, 57, !dbg !1847
  br i1 %702, label %698, label %703, !dbg !1848, !llvm.loop !1850

703:                                              ; preds = %698, %683
  %704 = phi i8* [ %695, %683 ], [ %700, %698 ], !dbg !1845
  %705 = phi i8 [ %696, %683 ], [ %701, %698 ], !dbg !1846
  %706 = add i8 %705, 1, !dbg !1852
  store i8 %706, i8* %704, align 1, !dbg !1852, !tbaa !1267
  %707 = icmp ult i8* %691, %704, !dbg !1853
  %708 = select i1 %707, i8* %691, i8* %704, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %708, metadata !1263, metadata !DIExpression()) #14, !dbg !1836
  br i1 %689, label %709, label %711, !dbg !1854

709:                                              ; preds = %703
  %710 = getelementptr inbounds i8, i8* %708, i64 -1, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %710, metadata !1263, metadata !DIExpression()) #14, !dbg !1836
  store i8 45, i8* %710, align 1, !dbg !1856, !tbaa !1267
  br label %711, !dbg !1857

711:                                              ; preds = %703, %709
  %712 = phi i8* [ %710, %709 ], [ %708, %703 ], !dbg !1836
  call void @llvm.dbg.value(metadata i8* %712, metadata !1263, metadata !DIExpression()) #14, !dbg !1836
  %713 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %712) #14, !dbg !1835
  %714 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 -9223372036854775808) #14, !dbg !1858
  %715 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1858
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1861
  %716 = load i8, i8* %13, align 1, !dbg !1863, !tbaa !1267
  %717 = icmp eq i8 %716, 45, !dbg !1864
  call void @llvm.dbg.value(metadata i1 %717, metadata !1260, metadata !DIExpression()) #14, !dbg !1861
  %718 = zext i1 %717 to i64, !dbg !1865
  %719 = getelementptr inbounds i8, i8* %13, i64 %718, !dbg !1865
  call void @llvm.dbg.value(metadata i8* %719, metadata !1261, metadata !DIExpression()) #14, !dbg !1861
  %720 = call i64 @strlen(i8* nonnull %719) #22, !dbg !1866
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %721, metadata !1262, metadata !DIExpression()) #14, !dbg !1861
  %722 = getelementptr inbounds i8, i8* %719, i64 -1, !dbg !1868
  store i8 48, i8* %722, align 1, !dbg !1869, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %721, metadata !1262, metadata !DIExpression()) #14, !dbg !1861
  %723 = getelementptr inbounds i8, i8* %721, i64 -1, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %723, metadata !1262, metadata !DIExpression()) #14, !dbg !1861
  %724 = load i8, i8* %723, align 1, !dbg !1871, !tbaa !1267
  %725 = icmp eq i8 %724, 57, !dbg !1872
  br i1 %725, label %726, label %731, !dbg !1873

726:                                              ; preds = %711, %726
  %727 = phi i8* [ %728, %726 ], [ %723, %711 ]
  store i8 48, i8* %727, align 1, !dbg !1874, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %727, metadata !1262, metadata !DIExpression()) #14, !dbg !1861
  %728 = getelementptr inbounds i8, i8* %727, i64 -1, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %728, metadata !1262, metadata !DIExpression()) #14, !dbg !1861
  %729 = load i8, i8* %728, align 1, !dbg !1871, !tbaa !1267
  %730 = icmp eq i8 %729, 57, !dbg !1872
  br i1 %730, label %726, label %731, !dbg !1873, !llvm.loop !1875

731:                                              ; preds = %726, %711
  %732 = phi i8* [ %723, %711 ], [ %728, %726 ], !dbg !1870
  %733 = phi i8 [ %724, %711 ], [ %729, %726 ], !dbg !1871
  %734 = add i8 %733, 1, !dbg !1877
  store i8 %734, i8* %732, align 1, !dbg !1877, !tbaa !1267
  %735 = icmp ult i8* %719, %732, !dbg !1878
  %736 = select i1 %735, i8* %719, i8* %732, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %736, metadata !1263, metadata !DIExpression()) #14, !dbg !1861
  br i1 %717, label %737, label %739, !dbg !1879

737:                                              ; preds = %731
  %738 = getelementptr inbounds i8, i8* %736, i64 -1, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %738, metadata !1263, metadata !DIExpression()) #14, !dbg !1861
  store i8 45, i8* %738, align 1, !dbg !1881, !tbaa !1267
  br label %739, !dbg !1882

739:                                              ; preds = %731, %737
  %740 = phi i8* [ %738, %737 ], [ %736, %731 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %740, metadata !1263, metadata !DIExpression()) #14, !dbg !1861
  %741 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %740) #14, !dbg !1858
  %742 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %13, i32 1, i64 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 -1) #14, !dbg !1883
  %743 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %13) #14, !dbg !1883
  call void @llvm.dbg.value(metadata i8* %7, metadata !1255, metadata !DIExpression()) #14, !dbg !1884
  %744 = load i8, i8* %13, align 1, !dbg !1886, !tbaa !1267
  %745 = icmp eq i8 %744, 45, !dbg !1887
  call void @llvm.dbg.value(metadata i1 %745, metadata !1260, metadata !DIExpression()) #14, !dbg !1884
  %746 = zext i1 %745 to i64, !dbg !1888
  %747 = getelementptr inbounds i8, i8* %13, i64 %746, !dbg !1888
  call void @llvm.dbg.value(metadata i8* %747, metadata !1261, metadata !DIExpression()) #14, !dbg !1884
  %748 = call i64 @strlen(i8* nonnull %747) #22, !dbg !1889
  %749 = getelementptr inbounds i8, i8* %747, i64 %748, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %749, metadata !1262, metadata !DIExpression()) #14, !dbg !1884
  %750 = getelementptr inbounds i8, i8* %747, i64 -1, !dbg !1891
  store i8 48, i8* %750, align 1, !dbg !1892, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %749, metadata !1262, metadata !DIExpression()) #14, !dbg !1884
  %751 = getelementptr inbounds i8, i8* %749, i64 -1, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %751, metadata !1262, metadata !DIExpression()) #14, !dbg !1884
  %752 = load i8, i8* %751, align 1, !dbg !1894, !tbaa !1267
  %753 = icmp eq i8 %752, 57, !dbg !1895
  br i1 %753, label %754, label %759, !dbg !1896

754:                                              ; preds = %739, %754
  %755 = phi i8* [ %756, %754 ], [ %751, %739 ]
  store i8 48, i8* %755, align 1, !dbg !1897, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %755, metadata !1262, metadata !DIExpression()) #14, !dbg !1884
  %756 = getelementptr inbounds i8, i8* %755, i64 -1, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %756, metadata !1262, metadata !DIExpression()) #14, !dbg !1884
  %757 = load i8, i8* %756, align 1, !dbg !1894, !tbaa !1267
  %758 = icmp eq i8 %757, 57, !dbg !1895
  br i1 %758, label %754, label %759, !dbg !1896, !llvm.loop !1898

759:                                              ; preds = %754, %739
  %760 = phi i8* [ %751, %739 ], [ %756, %754 ], !dbg !1893
  %761 = phi i8 [ %752, %739 ], [ %757, %754 ], !dbg !1894
  %762 = add i8 %761, 1, !dbg !1900
  store i8 %762, i8* %760, align 1, !dbg !1900, !tbaa !1267
  %763 = icmp ult i8* %747, %760, !dbg !1901
  %764 = select i1 %763, i8* %747, i8* %760, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %764, metadata !1263, metadata !DIExpression()) #14, !dbg !1884
  br i1 %745, label %765, label %767, !dbg !1902

765:                                              ; preds = %759
  %766 = getelementptr inbounds i8, i8* %764, i64 -1, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %766, metadata !1263, metadata !DIExpression()) #14, !dbg !1884
  store i8 45, i8* %766, align 1, !dbg !1904, !tbaa !1267
  br label %767, !dbg !1905

767:                                              ; preds = %759, %765
  %768 = phi i8* [ %766, %765 ], [ %764, %759 ], !dbg !1884
  call void @llvm.dbg.value(metadata i8* %768, metadata !1263, metadata !DIExpression()) #14, !dbg !1884
  %769 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0), i8* %768) #14, !dbg !1883
  %770 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0)) #14, !dbg !1906
  call void @llvm.dbg.value(metadata float 0x3810000000000000, metadata !1223, metadata !DIExpression()) #14, !dbg !1907
  %771 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0, !dbg !1229
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %771) #14, !dbg !1229
  %772 = call i32 @ftoastr(i8* nonnull %771, i64 31, i32 1, i32 0, float 0x3810000000000000) #14, !dbg !1229
  %773 = call i32 @puts(i8* nonnull %771) #14, !dbg !1229
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %771) #14, !dbg !1229
  %774 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0)) #14, !dbg !1906
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, metadata !1223, metadata !DIExpression()) #14, !dbg !1908
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %771) #14, !dbg !1227
  %775 = call i32 @ftoastr(i8* nonnull %771, i64 31, i32 1, i32 0, float 0x47EFFFFFE0000000) #14, !dbg !1227
  %776 = call i32 @puts(i8* nonnull %771) #14, !dbg !1227
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %771) #14, !dbg !1227
  %777 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #14, !dbg !1909
  call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !1210, metadata !DIExpression()) #14, !dbg !1910
  %778 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !1216
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %778) #14, !dbg !1216
  %779 = call i32 @dtoastr(i8* nonnull %778, i64 40, i32 1, i32 0, double 0x10000000000000) #14, !dbg !1216
  %780 = call i32 @puts(i8* nonnull %778) #14, !dbg !1216
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %778) #14, !dbg !1216
  %781 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #14, !dbg !1909
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1210, metadata !DIExpression()) #14, !dbg !1911
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %778) #14, !dbg !1214
  %782 = call i32 @dtoastr(i8* nonnull %778, i64 40, i32 1, i32 0, double 0x7FEFFFFFFFFFFFFF) #14, !dbg !1214
  %783 = call i32 @puts(i8* nonnull %778) #14, !dbg !1214
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %778) #14, !dbg !1214
  %784 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #14, !dbg !1912
  call void @llvm.dbg.value(metadata x86_fp80 0xK00018000000000000000, metadata !1236, metadata !DIExpression()) #14, !dbg !1913
  %785 = getelementptr inbounds [45 x i8], [45 x i8]* %5, i64 0, i64 0, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %785) #14, !dbg !1240
  %786 = call i32 @ldtoastr(i8* nonnull %785, i64 45, i32 1, i32 0, x86_fp80 0xK00018000000000000000) #14, !dbg !1240
  %787 = call i32 @puts(i8* nonnull %785) #14, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %785) #14, !dbg !1240
  %788 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #14, !dbg !1912
  call void @llvm.dbg.value(metadata x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF, metadata !1236, metadata !DIExpression()) #14, !dbg !1914
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %785) #14, !dbg !1242
  %789 = call i32 @ldtoastr(i8* nonnull %785, i64 45, i32 1, i32 0, x86_fp80 0xK7FFEFFFFFFFFFFFFFFFF) #14, !dbg !1242
  %790 = call i32 @puts(i8* nonnull %785) #14, !dbg !1242
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %785) #14, !dbg !1242
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %7) #14, !dbg !1915
  ret i32 0, !dbg !1916
}

; Function Attrs: nounwind
declare !dbg !410 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !413 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !414 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !448 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1919, metadata !DIExpression()), !dbg !1920
  store i8* %0, i8** @file_name, align 8, !dbg !1921, !tbaa !1156
  ret void, !dbg !1922
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1923 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1929, !tbaa !1930
  ret void, !dbg !1932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1933 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1938, !tbaa !1156
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #14, !dbg !1939
  %3 = icmp eq i32 %2, 0, !dbg !1940
  br i1 %3, label %22, label %4, !dbg !1941

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1942, !tbaa !1930, !range !1943
  %6 = icmp eq i8 %5, 0, !dbg !1942
  br i1 %6, label %11, label %7, !dbg !1944

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1945
  %9 = load i32, i32* %8, align 4, !dbg !1945, !tbaa !1946
  %10 = icmp eq i32 %9, 32, !dbg !1948
  br i1 %10, label %22, label %11, !dbg !1949

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i32 5) #14, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %12, metadata !1935, metadata !DIExpression()), !dbg !1951
  %13 = load i8*, i8** @file_name, align 8, !dbg !1952, !tbaa !1156
  %14 = icmp eq i8* %13, null, !dbg !1952
  %15 = tail call i32* @__errno_location() #24, !dbg !1954
  %16 = load i32, i32* %15, align 4, !dbg !1954, !tbaa !1946
  br i1 %14, label %19, label %17, !dbg !1955

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #14, !dbg !1956
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %18, i8* %12) #14, !dbg !1957
  br label %20, !dbg !1957

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.91, i64 0, i64 0), i8* %12) #14, !dbg !1958
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1959, !tbaa !1946
  tail call void @_exit(i32 %21) #23, !dbg !1960
  unreachable, !dbg !1960

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1961, !tbaa !1156
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #14, !dbg !1963
  %25 = icmp eq i32 %24, 0, !dbg !1964
  br i1 %25, label %28, label %26, !dbg !1965

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1966, !tbaa !1946
  tail call void @_exit(i32 %27) #23, !dbg !1967
  unreachable, !dbg !1967

28:                                               ; preds = %22
  ret void, !dbg !1968
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #12

declare !dbg !80 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dtoastr(i8* %0, i64 %1, i32 %2, i32 %3, double %4) local_unnamed_addr #8 !dbg !1969 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1974, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i64 %1, metadata !1975, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %2, metadata !1976, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %3, metadata !1977, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata double %4, metadata !1978, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata double %4, metadata !1979, metadata !DIExpression()), !dbg !1989
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1990
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #14, !dbg !1990
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1980, metadata !DIExpression()), !dbg !1991
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1992
  %9 = fneg double %4, !dbg !1993
  %10 = select i1 %8, double %9, double %4, !dbg !1993
  call void @llvm.dbg.value(metadata double %10, metadata !1982, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* %7, metadata !1984, metadata !DIExpression()), !dbg !1989
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %11, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 37, i8* %7, align 1, !dbg !1995, !tbaa !1267
  store i8 45, i8* %11, align 1, !dbg !1996, !tbaa !1267
  %12 = and i32 %2, 1, !dbg !1997
  %13 = zext i32 %12 to i64, !dbg !1998
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %14, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 43, i8* %14, align 1, !dbg !1999, !tbaa !1267
  %15 = lshr i32 %2, 1, !dbg !2000
  %16 = and i32 %15, 1, !dbg !2000
  %17 = zext i32 %16 to i64, !dbg !2001
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %18, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 32, i8* %18, align 1, !dbg !2002, !tbaa !1267
  %19 = lshr i32 %2, 2, !dbg !2003
  %20 = and i32 %19, 1, !dbg !2003
  %21 = zext i32 %20 to i64, !dbg !2004
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !2004
  call void @llvm.dbg.value(metadata i8* %22, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 48, i8* %22, align 1, !dbg !2005, !tbaa !1267
  %23 = lshr i32 %2, 3, !dbg !2006
  %24 = and i32 %23, 1, !dbg !2006
  %25 = zext i32 %24 to i64, !dbg !2007
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %26, metadata !1984, metadata !DIExpression()), !dbg !1989
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %27, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 42, i8* %26, align 1, !dbg !2009, !tbaa !1267
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %28, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 46, i8* %27, align 1, !dbg !2011, !tbaa !1267
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2012
  call void @llvm.dbg.value(metadata i8* %29, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 42, i8* %28, align 1, !dbg !2013, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %29, metadata !1984, metadata !DIExpression()), !dbg !1989
  %30 = and i32 %2, 16, !dbg !2014
  %31 = icmp eq i32 %30, 0, !dbg !2015
  %32 = select i1 %31, i8 103, i8 71, !dbg !2015
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %33, metadata !1984, metadata !DIExpression()), !dbg !1989
  store i8 %32, i8* %29, align 1, !dbg !2017, !tbaa !1267
  store i8 0, i8* %33, align 1, !dbg !2018, !tbaa !1267
  %34 = fcmp olt double %10, 0x10000000000000, !dbg !2019
  %35 = select i1 %34, i32 1, i32 15, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %35, metadata !1983, metadata !DIExpression()), !dbg !1989
  %36 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %35, double %4) #14, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %36, metadata !1985, metadata !DIExpression()), !dbg !2022
  %37 = icmp slt i32 %36, 0, !dbg !2023
  br i1 %37, label %52, label %38, !dbg !2025

38:                                               ; preds = %5, %46
  %39 = phi i32 [ %48, %46 ], [ %36, %5 ]
  %40 = phi i32 [ %47, %46 ], [ %35, %5 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !1983, metadata !DIExpression()), !dbg !1989
  %41 = zext i32 %39 to i64, !dbg !2026
  %42 = icmp ult i64 %41, %1, !dbg !2027
  br i1 %42, label %43, label %46, !dbg !2028

43:                                               ; preds = %38
  %44 = call double @strtod(i8* nocapture %0, i8** null) #14, !dbg !2029
  %45 = fcmp oeq double %44, %4, !dbg !2030
  br i1 %45, label %52, label %46, !dbg !2031

46:                                               ; preds = %43, %38
  %47 = add nuw nsw i32 %40, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %47, metadata !1983, metadata !DIExpression()), !dbg !1989
  %48 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %47, double %4) #14, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %48, metadata !1985, metadata !DIExpression()), !dbg !2022
  %49 = icmp slt i32 %48, 0, !dbg !2023
  %50 = icmp ugt i32 %40, 15, !dbg !2033
  %51 = or i1 %50, %49, !dbg !2025
  br i1 %51, label %52, label %38, !dbg !2025, !llvm.loop !2034

52:                                               ; preds = %46, %43, %5
  %53 = phi i32 [ %36, %5 ], [ %39, %43 ], [ %48, %46 ], !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #14, !dbg !2037
  ret i32 %53, !dbg !2037
}

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ftoastr(i8* %0, i64 %1, i32 %2, i32 %3, float %4) local_unnamed_addr #8 !dbg !2038 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2042, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %1, metadata !2043, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %2, metadata !2044, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %3, metadata !2045, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata float %4, metadata !2046, metadata !DIExpression()), !dbg !2056
  %7 = fpext float %4 to double, !dbg !2057
  call void @llvm.dbg.value(metadata double %7, metadata !2047, metadata !DIExpression()), !dbg !2056
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !2058
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #14, !dbg !2058
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !2048, metadata !DIExpression()), !dbg !2059
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !2060
  %10 = fneg float %4, !dbg !2061
  %11 = select i1 %9, float %10, float %4, !dbg !2061
  call void @llvm.dbg.value(metadata float %11, metadata !2049, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %8, metadata !2051, metadata !DIExpression()), !dbg !2056
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !2062
  call void @llvm.dbg.value(metadata i8* %12, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 37, i8* %8, align 1, !dbg !2063, !tbaa !1267
  store i8 45, i8* %12, align 1, !dbg !2064, !tbaa !1267
  %13 = and i32 %2, 1, !dbg !2065
  %14 = zext i32 %13 to i64, !dbg !2066
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %15, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 43, i8* %15, align 1, !dbg !2067, !tbaa !1267
  %16 = lshr i32 %2, 1, !dbg !2068
  %17 = and i32 %16, 1, !dbg !2068
  %18 = zext i32 %17 to i64, !dbg !2069
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !2069
  call void @llvm.dbg.value(metadata i8* %19, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 32, i8* %19, align 1, !dbg !2070, !tbaa !1267
  %20 = lshr i32 %2, 2, !dbg !2071
  %21 = and i32 %20, 1, !dbg !2071
  %22 = zext i32 %21 to i64, !dbg !2072
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %23, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 48, i8* %23, align 1, !dbg !2073, !tbaa !1267
  %24 = lshr i32 %2, 3, !dbg !2074
  %25 = and i32 %24, 1, !dbg !2074
  %26 = zext i32 %25 to i64, !dbg !2075
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %27, metadata !2051, metadata !DIExpression()), !dbg !2056
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2076
  call void @llvm.dbg.value(metadata i8* %28, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 42, i8* %27, align 1, !dbg !2077, !tbaa !1267
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2078
  call void @llvm.dbg.value(metadata i8* %29, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 46, i8* %28, align 1, !dbg !2079, !tbaa !1267
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %30, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 42, i8* %29, align 1, !dbg !2081, !tbaa !1267
  call void @llvm.dbg.value(metadata i8* %30, metadata !2051, metadata !DIExpression()), !dbg !2056
  %31 = and i32 %2, 16, !dbg !2082
  %32 = icmp eq i32 %31, 0, !dbg !2083
  %33 = select i1 %32, i8 103, i8 71, !dbg !2083
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !2084
  call void @llvm.dbg.value(metadata i8* %34, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i8 %33, i8* %30, align 1, !dbg !2085, !tbaa !1267
  store i8 0, i8* %34, align 1, !dbg !2086, !tbaa !1267
  %35 = fcmp olt float %11, 0x3810000000000000, !dbg !2087
  %36 = select i1 %35, i32 1, i32 6, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %36, metadata !2050, metadata !DIExpression()), !dbg !2056
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %8, i32 %3, i32 %36, double %7) #14, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %37, metadata !2052, metadata !DIExpression()), !dbg !2090
  %38 = icmp slt i32 %37, 0, !dbg !2091
  br i1 %38, label %53, label %39, !dbg !2093

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !2050, metadata !DIExpression()), !dbg !2056
  %42 = zext i32 %40 to i64, !dbg !2094
  %43 = icmp ult i64 %42, %1, !dbg !2095
  br i1 %43, label %44, label %47, !dbg !2096

44:                                               ; preds = %39
  %45 = call float @strtof(i8* nocapture %0, i8** null) #14, !dbg !2097
  %46 = fcmp oeq float %45, %4, !dbg !2098
  br i1 %46, label %53, label %47, !dbg !2099

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %48, metadata !2050, metadata !DIExpression()), !dbg !2056
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %8, i32 %3, i32 %48, double %7) #14, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %49, metadata !2052, metadata !DIExpression()), !dbg !2090
  %50 = icmp slt i32 %49, 0, !dbg !2091
  %51 = icmp ugt i32 %41, 7, !dbg !2101
  %52 = or i1 %51, %50, !dbg !2093
  br i1 %52, label %53, label %39, !dbg !2093, !llvm.loop !2102

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !2089
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #14, !dbg !2105
  ret i32 %54, !dbg !2105
}

; Function Attrs: nofree nounwind
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @ldtoastr(i8* %0, i64 %1, i32 %2, i32 %3, x86_fp80 %4) local_unnamed_addr #8 !dbg !2106 {
  %6 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %2, metadata !2112, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %3, metadata !2113, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !2114, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata x86_fp80 %4, metadata !2115, metadata !DIExpression()), !dbg !2124
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #14, !dbg !2125
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !2116, metadata !DIExpression()), !dbg !2126
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000, !dbg !2127
  %9 = fneg x86_fp80 %4, !dbg !2128
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4, !dbg !2128
  call void @llvm.dbg.value(metadata x86_fp80 %10, metadata !2117, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %7, metadata !2119, metadata !DIExpression()), !dbg !2124
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !2129
  call void @llvm.dbg.value(metadata i8* %11, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 37, i8* %7, align 1, !dbg !2130, !tbaa !1267
  store i8 45, i8* %11, align 1, !dbg !2131, !tbaa !1267
  %12 = and i32 %2, 1, !dbg !2132
  %13 = zext i32 %12 to i64, !dbg !2133
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %14, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 43, i8* %14, align 1, !dbg !2134, !tbaa !1267
  %15 = lshr i32 %2, 1, !dbg !2135
  %16 = and i32 %15, 1, !dbg !2135
  %17 = zext i32 %16 to i64, !dbg !2136
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !2136
  call void @llvm.dbg.value(metadata i8* %18, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 32, i8* %18, align 1, !dbg !2137, !tbaa !1267
  %19 = lshr i32 %2, 2, !dbg !2138
  %20 = and i32 %19, 1, !dbg !2138
  %21 = zext i32 %20 to i64, !dbg !2139
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %22, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 48, i8* %22, align 1, !dbg !2140, !tbaa !1267
  %23 = lshr i32 %2, 3, !dbg !2141
  %24 = and i32 %23, 1, !dbg !2141
  %25 = zext i32 %24 to i64, !dbg !2142
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %26, metadata !2119, metadata !DIExpression()), !dbg !2124
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %27, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 42, i8* %26, align 1, !dbg !2144, !tbaa !1267
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %28, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 46, i8* %27, align 1, !dbg !2146, !tbaa !1267
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %29, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 42, i8* %28, align 1, !dbg !2148, !tbaa !1267
  store i8 76, i8* %29, align 1, !dbg !2149, !tbaa !1267
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %30, metadata !2119, metadata !DIExpression()), !dbg !2124
  %31 = and i32 %2, 16, !dbg !2151
  %32 = icmp eq i32 %31, 0, !dbg !2152
  %33 = select i1 %32, i8 103, i8 71, !dbg !2152
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !2153
  call void @llvm.dbg.value(metadata i8* %34, metadata !2119, metadata !DIExpression()), !dbg !2124
  store i8 %33, i8* %30, align 1, !dbg !2154, !tbaa !1267
  store i8 0, i8* %34, align 1, !dbg !2155, !tbaa !1267
  %35 = fcmp olt x86_fp80 %10, 0xK00018000000000000000, !dbg !2156
  %36 = select i1 %35, i32 1, i32 18, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %36, metadata !2118, metadata !DIExpression()), !dbg !2124
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %36, x86_fp80 %4) #14, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %37, metadata !2120, metadata !DIExpression()), !dbg !2159
  %38 = icmp slt i32 %37, 0, !dbg !2160
  br i1 %38, label %53, label %39, !dbg !2162

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !2118, metadata !DIExpression()), !dbg !2124
  %42 = zext i32 %40 to i64, !dbg !2163
  %43 = icmp ult i64 %42, %1, !dbg !2164
  br i1 %43, label %44, label %47, !dbg !2165

44:                                               ; preds = %39
  %45 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #14, !dbg !2166
  %46 = fcmp oeq x86_fp80 %45, %4, !dbg !2167
  br i1 %46, label %53, label %47, !dbg !2168

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %48, metadata !2118, metadata !DIExpression()), !dbg !2124
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 -1, i8* nonnull %7, i32 %3, i32 %48, x86_fp80 %4) #14, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %49, metadata !2120, metadata !DIExpression()), !dbg !2159
  %50 = icmp slt i32 %49, 0, !dbg !2160
  %51 = icmp ugt i32 %41, 19, !dbg !2170
  %52 = or i1 %51, %50, !dbg !2162
  br i1 %52, label %53, label %39, !dbg !2162, !llvm.loop !2171

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !2158
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #14, !dbg !2174
  ret i32 %54, !dbg !2174
}

; Function Attrs: nofree nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !2175 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2177, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8** %1, metadata !2178, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %2, metadata !2179, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %3, metadata !2180, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %4, metadata !2181, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2182, metadata !DIExpression()), !dbg !2195
  %8 = load i32, i32* @opterr, align 4, !dbg !2196, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %8, metadata !2184, metadata !DIExpression()), !dbg !2195
  store i32 0, i32* @opterr, align 4, !dbg !2197, !tbaa !1946
  %9 = icmp eq i32 %0, 2, !dbg !2198
  br i1 %9, label %10, label %17, !dbg !2199

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %11, metadata !2183, metadata !DIExpression()), !dbg !2195
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2201

12:                                               ; preds = %10
  tail call void %5(i32 0) #14, !dbg !2202
  br label %17, !dbg !2203

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #14, !dbg !2204
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2185, metadata !DIExpression()), !dbg !2205
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2206
  call void @llvm.va_start(i8* nonnull %14), !dbg !2206
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2207, !tbaa !1156
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #14, !dbg !2208
  call void @exit(i32 0) #23, !dbg !2209
  unreachable, !dbg !2209

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2210, !tbaa !1946
  store i32 0, i32* @optind, align 4, !dbg !2211, !tbaa !1946
  ret void, !dbg !2212
}

; Function Attrs: nounwind
declare !dbg !99 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !2213 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2217, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8** %1, metadata !2218, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %2, metadata !2219, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %3, metadata !2220, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %4, metadata !2221, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i1 %5, metadata !2222, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !2223, metadata !DIExpression()), !dbg !2232
  %9 = load i32, i32* @opterr, align 4, !dbg !2233, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %9, metadata !2225, metadata !DIExpression()), !dbg !2232
  store i32 1, i32* @opterr, align 4, !dbg !2234, !tbaa !1946
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.105, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), !dbg !2235
  call void @llvm.dbg.value(metadata i8* %10, metadata !2226, metadata !DIExpression()), !dbg !2232
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !2236
  call void @llvm.dbg.value(metadata i32 %11, metadata !2224, metadata !DIExpression()), !dbg !2232
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !2237

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #14, !dbg !2238
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !2227, metadata !DIExpression()), !dbg !2239
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !2240
  call void @llvm.va_start(i8* nonnull %13), !dbg !2240
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2241, !tbaa !1156
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #14, !dbg !2242
  call void @exit(i32 0) #23, !dbg !2243
  unreachable, !dbg !2243

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !2244, !tbaa !1946
  br label %18, !dbg !2245

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #14, !dbg !2246
  br label %20, !dbg !2247

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !2247, !tbaa !1946
  ret void, !dbg !2248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2254
  %2 = icmp eq i8* %0, null, !dbg !2255
  br i1 %2, label %3, label %6, !dbg !2257

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2258, !tbaa !1156
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.110, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2260
  tail call void @abort() #23, !dbg !2261
  unreachable, !dbg !2261

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %7, metadata !2252, metadata !DIExpression()), !dbg !2254
  %8 = icmp eq i8* %7, null, !dbg !2263
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2264
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2264
  call void @llvm.dbg.value(metadata i8* %10, metadata !2253, metadata !DIExpression()), !dbg !2254
  %11 = ptrtoint i8* %10 to i64, !dbg !2265
  %12 = ptrtoint i8* %0 to i64, !dbg !2265
  %13 = sub i64 %11, %12, !dbg !2265
  %14 = icmp sgt i64 %13, 6, !dbg !2267
  br i1 %14, label %15, label %24, !dbg !2268

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2269
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.111, i64 0, i64 0), i64 7) #22, !dbg !2270
  %18 = icmp eq i32 %17, 0, !dbg !2271
  br i1 %18, label %19, label %24, !dbg !2272

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2251, metadata !DIExpression()), !dbg !2254
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.112, i64 0, i64 0), i64 3) #22, !dbg !2273
  %21 = icmp eq i32 %20, 0, !dbg !2276
  br i1 %21, label %22, label %24, !dbg !2277

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %23, metadata !2251, metadata !DIExpression()), !dbg !2254
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2280, !tbaa !1156
  br label %24, !dbg !2281

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2251, metadata !DIExpression()), !dbg !2254
  store i8* %25, i8** @program_name, align 8, !dbg !2282, !tbaa !1156
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2283, !tbaa !1156
  ret void, !dbg !2284
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2285 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2290, metadata !DIExpression()), !dbg !2293
  %2 = tail call i32* @__errno_location() #24, !dbg !2294
  %3 = load i32, i32* %2, align 4, !dbg !2294, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %3, metadata !2291, metadata !DIExpression()), !dbg !2293
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2295
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2295
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2295
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #14, !dbg !2296
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2292, metadata !DIExpression()), !dbg !2293
  store i32 %3, i32* %2, align 4, !dbg !2297, !tbaa !1946
  ret %struct.quoting_options* %8, !dbg !2298
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2299 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2303, metadata !DIExpression()), !dbg !2304
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2305
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2305
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2306
  %5 = load i32, i32* %4, align 8, !dbg !2306, !tbaa !2307
  ret i32 %5, !dbg !2309
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2310 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2314, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1, metadata !2315, metadata !DIExpression()), !dbg !2316
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2317
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2317
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2318
  store i32 %1, i32* %5, align 8, !dbg !2319, !tbaa !2307
  ret void, !dbg !2320
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2321 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2325, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %2, metadata !2327, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8 %1, metadata !2328, metadata !DIExpression()), !dbg !2334
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2335
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2335
  %6 = lshr i8 %1, 5, !dbg !2336
  %7 = zext i8 %6 to i64, !dbg !2336
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2337
  call void @llvm.dbg.value(metadata i32* %8, metadata !2330, metadata !DIExpression()), !dbg !2334
  %9 = and i8 %1, 31, !dbg !2338
  %10 = zext i8 %9 to i32, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %10, metadata !2332, metadata !DIExpression()), !dbg !2334
  %11 = load i32, i32* %8, align 4, !dbg !2339, !tbaa !1946
  %12 = lshr i32 %11, %10, !dbg !2340
  %13 = and i32 %12, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %13, metadata !2333, metadata !DIExpression()), !dbg !2334
  %14 = and i32 %2, 1, !dbg !2342
  %15 = xor i32 %13, %14, !dbg !2343
  %16 = shl i32 %15, %10, !dbg !2344
  %17 = xor i32 %16, %11, !dbg !2345
  store i32 %17, i32* %8, align 4, !dbg !2345, !tbaa !1946
  ret i32 %13, !dbg !2346
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2347 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2351, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 %1, metadata !2352, metadata !DIExpression()), !dbg !2354
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2355
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2351, metadata !DIExpression()), !dbg !2354
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2358
  %6 = load i32, i32* %5, align 4, !dbg !2358, !tbaa !2359
  call void @llvm.dbg.value(metadata i32 %6, metadata !2353, metadata !DIExpression()), !dbg !2354
  store i32 %1, i32* %5, align 4, !dbg !2360, !tbaa !2359
  ret i32 %6, !dbg !2361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2362 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %2, metadata !2368, metadata !DIExpression()), !dbg !2369
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2370
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()), !dbg !2369
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2373
  store i32 10, i32* %6, align 8, !dbg !2374, !tbaa !2307
  %7 = icmp ne i8* %1, null, !dbg !2375
  %8 = icmp ne i8* %2, null, !dbg !2377
  %9 = and i1 %7, %8, !dbg !2378
  br i1 %9, label %11, label %10, !dbg !2378

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2379
  unreachable, !dbg !2379

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2380
  store i8* %1, i8** %12, align 8, !dbg !2381, !tbaa !2382
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2383
  store i8* %2, i8** %13, align 8, !dbg !2384, !tbaa !2385
  ret void, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* %2, metadata !2393, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %3, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2395, metadata !DIExpression()), !dbg !2399
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2400
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2396, metadata !DIExpression()), !dbg !2399
  %8 = tail call i32* @__errno_location() #24, !dbg !2401
  %9 = load i32, i32* %8, align 4, !dbg !2401, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %9, metadata !2397, metadata !DIExpression()), !dbg !2399
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2402
  %11 = load i32, i32* %10, align 8, !dbg !2402, !tbaa !2307
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2403
  %13 = load i32, i32* %12, align 4, !dbg !2403, !tbaa !2359
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2404
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2405
  %16 = load i8*, i8** %15, align 8, !dbg !2405, !tbaa !2382
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2406
  %18 = load i8*, i8** %17, align 8, !dbg !2406, !tbaa !2385
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %19, metadata !2398, metadata !DIExpression()), !dbg !2399
  store i32 %9, i32* %8, align 4, !dbg !2408, !tbaa !1946
  ret i64 %19, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2410 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2416, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %1, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %3, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %4, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %5, metadata !2421, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32* %6, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %7, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %8, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* null, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2474
  %13 = tail call i64 @__ctype_get_mb_cur_max() #14, !dbg !2475
  %14 = icmp eq i64 %13, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i1 %14, metadata !2431, metadata !DIExpression()), !dbg !2474
  %15 = lshr i32 %5, 1, !dbg !2477
  %16 = trunc i32 %15 to i8, !dbg !2477
  %17 = and i8 %16, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i8 %17, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2435, metadata !DIExpression()), !dbg !2474
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2478
  %19 = and i32 %5, 4, !dbg !2480
  %20 = icmp eq i32 %19, 0, !dbg !2480
  %21 = and i32 %5, 1, !dbg !2483
  %22 = icmp eq i32 %21, 0, !dbg !2483
  %23 = bitcast i64* %10 to i8*, !dbg !2486
  %24 = bitcast i32* %12 to i8*, !dbg !2487
  %25 = icmp eq i32* %6, null, !dbg !2488
  br label %26, !dbg !2490

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2491
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2492
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2493
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2494
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2474
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2495
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2496
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2497
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %38, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %37, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %36, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %35, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %34, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %33, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %32, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %31, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %30, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %29, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %28, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %27, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2468), !dbg !2498
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
  ], !dbg !2499

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %35, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 5, metadata !2420, metadata !DIExpression()), !dbg !2474
  br label %92, !dbg !2500

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 5, metadata !2420, metadata !DIExpression()), !dbg !2474
  %42 = and i8 %35, 1, !dbg !2502
  %43 = icmp eq i8 %42, 0, !dbg !2502
  br i1 %43, label %44, label %92, !dbg !2500

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2504
  br i1 %45, label %92, label %46, !dbg !2507

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2504, !tbaa !1267
  br label %92, !dbg !2504

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), i32 %27), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %48, metadata !2423, metadata !DIExpression()), !dbg !2474
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), i32 %27), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %49, metadata !2424, metadata !DIExpression()), !dbg !2474
  br label %50, !dbg !2513

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %51, metadata !2423, metadata !DIExpression()), !dbg !2474
  %53 = and i8 %35, 1, !dbg !2514
  %54 = icmp eq i8 %53, 0, !dbg !2514
  br i1 %54, label %55, label %70, !dbg !2516

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2426, metadata !DIExpression()), !dbg !2474
  %56 = load i8, i8* %51, align 1, !dbg !2517, !tbaa !1267
  %57 = icmp eq i8 %56, 0, !dbg !2520
  br i1 %57, label %70, label %58, !dbg !2520

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %61, metadata !2426, metadata !DIExpression()), !dbg !2474
  %62 = icmp ult i64 %61, %39, !dbg !2521
  br i1 %62, label %63, label %65, !dbg !2524

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2521
  store i8 %59, i8* %64, align 1, !dbg !2521, !tbaa !1267
  br label %65, !dbg !2521

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %66, metadata !2426, metadata !DIExpression()), !dbg !2474
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %67, metadata !2428, metadata !DIExpression()), !dbg !2474
  %68 = load i8, i8* %67, align 1, !dbg !2517, !tbaa !1267
  %69 = icmp eq i8 %68, 0, !dbg !2520
  br i1 %69, label %70, label %58, !dbg !2520, !llvm.loop !2526

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2528
  call void @llvm.dbg.value(metadata i64 %71, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %52, metadata !2428, metadata !DIExpression()), !dbg !2474
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %72, metadata !2429, metadata !DIExpression()), !dbg !2474
  br label %92, !dbg !2530

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %74, !dbg !2531

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %75, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2432, metadata !DIExpression()), !dbg !2474
  br label %76, !dbg !2532

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2494
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %78, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %77, metadata !2430, metadata !DIExpression()), !dbg !2474
  %79 = and i8 %78, 1, !dbg !2533
  %80 = icmp eq i8 %79, 0, !dbg !2533
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2535
  br label %82, !dbg !2535

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2474
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2477
  call void @llvm.dbg.value(metadata i8 %84, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %83, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  %85 = and i8 %84, 1, !dbg !2536
  %86 = icmp eq i8 %85, 0, !dbg !2536
  br i1 %86, label %87, label %92, !dbg !2538

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2539
  br i1 %88, label %92, label %89, !dbg !2542

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2539, !tbaa !1267
  br label %92, !dbg !2539

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2474
  br label %92, !dbg !2543

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2544
  unreachable, !dbg !2544

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2528
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %40 ], !dbg !2474
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2474
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2474
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %100, metadata !2432, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %98, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %96, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %93, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2425, metadata !DIExpression()), !dbg !2474
  %101 = and i8 %99, 1, !dbg !2545
  %102 = icmp ne i8 %101, 0, !dbg !2545
  %103 = icmp ne i32 %93, 2, !dbg !2545
  %104 = and i1 %103, %102, !dbg !2545
  %105 = icmp ne i64 %98, 0, !dbg !2545
  %106 = and i1 %105, %104, !dbg !2545
  %107 = icmp ugt i64 %98, 1, !dbg !2545
  %108 = and i8 %100, 1, !dbg !2547
  %109 = icmp eq i8 %108, 0, !dbg !2547
  %110 = icmp eq i32 %93, 2, !dbg !2550
  %111 = or i1 %103, %109, !dbg !2552
  %112 = icmp ne i8 %108, 0, !dbg !2554
  %113 = and i1 %110, %112, !dbg !2554
  %114 = xor i1 %102, true, !dbg !2555
  %115 = xor i1 %104, true, !dbg !2488
  %116 = and i1 %109, %115, !dbg !2488
  %117 = or i1 %25, %116, !dbg !2488
  %118 = and i8 %99, %100, !dbg !2556
  %119 = and i8 %118, 1, !dbg !2556
  %120 = icmp ne i8 %119, 0, !dbg !2556
  %121 = and i1 %120, %105, !dbg !2556
  br label %122, !dbg !2558

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2559
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2528
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2491
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2495
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2496
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2497
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %126, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %123, metadata !2425, metadata !DIExpression()), !dbg !2474
  %131 = icmp eq i64 %126, -1, !dbg !2560
  br i1 %131, label %132, label %136, !dbg !2561

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2562
  %134 = load i8, i8* %133, align 1, !dbg !2562, !tbaa !1267
  %135 = icmp eq i8 %134, 0, !dbg !2563
  br i1 %135, label %581, label %138, !dbg !2564

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2565
  br i1 %137, label %581, label %138, !dbg !2564

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2443, metadata !DIExpression()), !dbg !2566
  br i1 %106, label %139, label %154, !dbg !2567

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2568
  %141 = and i1 %107, %131, !dbg !2569
  br i1 %141, label %142, label %144, !dbg !2569

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %143, metadata !2419, metadata !DIExpression()), !dbg !2474
  br label %144, !dbg !2571

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2419, metadata !DIExpression()), !dbg !2474
  %146 = icmp ugt i64 %140, %145, !dbg !2572
  br i1 %146, label %154, label %147, !dbg !2573

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2574
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2575
  %150 = icmp ne i32 %149, 0, !dbg !2576
  %151 = or i1 %150, %109, !dbg !2577
  %152 = xor i1 %150, true, !dbg !2577
  %153 = zext i1 %152 to i8, !dbg !2577
  br i1 %151, label %154, label %639, !dbg !2577

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2566
  call void @llvm.dbg.value(metadata i8 %156, metadata !2441, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %155, metadata !2419, metadata !DIExpression()), !dbg !2474
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2578
  %158 = load i8, i8* %157, align 1, !dbg !2578, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %158, metadata !2436, metadata !DIExpression()), !dbg !2566
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
  ], !dbg !2579

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2580

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2581

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2566
  %162 = and i8 %127, 1, !dbg !2584
  %163 = icmp eq i8 %162, 0, !dbg !2584
  %164 = and i1 %110, %163, !dbg !2584
  br i1 %164, label %165, label %181, !dbg !2584

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2586
  br i1 %166, label %167, label %169, !dbg !2590

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2586
  store i8 39, i8* %168, align 1, !dbg !2586, !tbaa !1267
  br label %169, !dbg !2586

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %170, metadata !2426, metadata !DIExpression()), !dbg !2474
  %171 = icmp ult i64 %170, %130, !dbg !2591
  br i1 %171, label %172, label %174, !dbg !2594

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2591
  store i8 36, i8* %173, align 1, !dbg !2591, !tbaa !1267
  br label %174, !dbg !2591

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %175, metadata !2426, metadata !DIExpression()), !dbg !2474
  %176 = icmp ult i64 %175, %130, !dbg !2595
  br i1 %176, label %177, label %179, !dbg !2598

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2595
  store i8 39, i8* %178, align 1, !dbg !2595, !tbaa !1267
  br label %179, !dbg !2595

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %180, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %181, !dbg !2599

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2474
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %183, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %182, metadata !2426, metadata !DIExpression()), !dbg !2474
  %184 = icmp ult i64 %182, %130, !dbg !2600
  br i1 %184, label %185, label %187, !dbg !2603

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2600
  store i8 92, i8* %186, align 1, !dbg !2600, !tbaa !1267
  br label %187, !dbg !2600

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %188, metadata !2426, metadata !DIExpression()), !dbg !2474
  br i1 %103, label %189, label %463, !dbg !2604

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2606
  %191 = icmp ult i64 %190, %155, !dbg !2607
  br i1 %191, label %192, label %463, !dbg !2608

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2609
  %194 = load i8, i8* %193, align 1, !dbg !2609, !tbaa !1267
  %195 = add i8 %194, -48, !dbg !2610
  %196 = icmp ult i8 %195, 10, !dbg !2610
  br i1 %196, label %197, label %463, !dbg !2610

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2611
  br i1 %198, label %199, label %201, !dbg !2615

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2611
  store i8 48, i8* %200, align 1, !dbg !2611, !tbaa !1267
  br label %201, !dbg !2611

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %202, metadata !2426, metadata !DIExpression()), !dbg !2474
  %203 = icmp ult i64 %202, %130, !dbg !2616
  br i1 %203, label %204, label %206, !dbg !2619

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2616
  store i8 48, i8* %205, align 1, !dbg !2616, !tbaa !1267
  br label %206, !dbg !2616

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %207, metadata !2426, metadata !DIExpression()), !dbg !2474
  br label %463, !dbg !2620

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2621

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2622

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2623

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2624

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2625
  %214 = icmp ult i64 %213, %155, !dbg !2626
  br i1 %214, label %215, label %463, !dbg !2627

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2628
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2629
  %218 = load i8, i8* %217, align 1, !dbg !2629, !tbaa !1267
  %219 = icmp eq i8 %218, 63, !dbg !2630
  br i1 %219, label %220, label %463, !dbg !2631

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2632
  %222 = load i8, i8* %221, align 1, !dbg !2632, !tbaa !1267
  %223 = sext i8 %222 to i32, !dbg !2632
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
  ], !dbg !2633

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2634

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %213, metadata !2425, metadata !DIExpression()), !dbg !2474
  %226 = icmp ult i64 %124, %130, !dbg !2636
  br i1 %226, label %227, label %229, !dbg !2639

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2636
  store i8 63, i8* %228, align 1, !dbg !2636, !tbaa !1267
  br label %229, !dbg !2636

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %230, metadata !2426, metadata !DIExpression()), !dbg !2474
  %231 = icmp ult i64 %230, %130, !dbg !2640
  br i1 %231, label %232, label %234, !dbg !2643

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2640
  store i8 34, i8* %233, align 1, !dbg !2640, !tbaa !1267
  br label %234, !dbg !2640

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %235, metadata !2426, metadata !DIExpression()), !dbg !2474
  %236 = icmp ult i64 %235, %130, !dbg !2644
  br i1 %236, label %237, label %239, !dbg !2647

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2644
  store i8 34, i8* %238, align 1, !dbg !2644, !tbaa !1267
  br label %239, !dbg !2644

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %240, metadata !2426, metadata !DIExpression()), !dbg !2474
  %241 = icmp ult i64 %240, %130, !dbg !2648
  br i1 %241, label %242, label %244, !dbg !2651

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2648
  store i8 63, i8* %243, align 1, !dbg !2648, !tbaa !1267
  br label %244, !dbg !2648

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %245, metadata !2426, metadata !DIExpression()), !dbg !2474
  br label %463, !dbg !2652

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2440, metadata !DIExpression()), !dbg !2566
  br label %256, !dbg !2653

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2440, metadata !DIExpression()), !dbg !2566
  br label %256, !dbg !2654

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2440, metadata !DIExpression()), !dbg !2566
  br label %254, !dbg !2655

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2440, metadata !DIExpression()), !dbg !2566
  br label %254, !dbg !2656

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2440, metadata !DIExpression()), !dbg !2566
  br label %256, !dbg !2657

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2440, metadata !DIExpression()), !dbg !2566
  br i1 %110, label %252, label %253, !dbg !2658

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2659

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2662

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2663
  call void @llvm.dbg.value(metadata i8 %255, metadata !2440, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2469), !dbg !2664
  br i1 %111, label %256, label %625, !dbg !2665

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2663
  call void @llvm.dbg.value(metadata i8 %257, metadata !2440, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2470), !dbg !2667
  br i1 %102, label %488, label %463, !dbg !2668

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2669

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2670, !tbaa !1267
  %261 = icmp eq i8 %260, 0, !dbg !2671
  br i1 %261, label %262, label %463, !dbg !2672

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2673
  br i1 %263, label %264, label %463, !dbg !2675

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2443, metadata !DIExpression()), !dbg !2566
  br label %265, !dbg !2676

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2566
  call void @llvm.dbg.value(metadata i8 %266, metadata !2443, metadata !DIExpression()), !dbg !2566
  br i1 %111, label %463, label %625, !dbg !2677

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2443, metadata !DIExpression()), !dbg !2566
  br i1 %110, label %268, label %463, !dbg !2678

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2679

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2681
  %271 = icmp ne i64 %125, 0, !dbg !2683
  %272 = or i1 %271, %270, !dbg !2684
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2684
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %274, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %273, metadata !2427, metadata !DIExpression()), !dbg !2474
  %275 = icmp ult i64 %124, %274, !dbg !2685
  br i1 %275, label %276, label %278, !dbg !2688

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2685
  store i8 39, i8* %277, align 1, !dbg !2685, !tbaa !1267
  br label %278, !dbg !2685

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %279, metadata !2426, metadata !DIExpression()), !dbg !2474
  %280 = icmp ult i64 %279, %274, !dbg !2689
  br i1 %280, label %281, label %283, !dbg !2692

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2689
  store i8 92, i8* %282, align 1, !dbg !2689, !tbaa !1267
  br label %283, !dbg !2689

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %284, metadata !2426, metadata !DIExpression()), !dbg !2474
  %285 = icmp ult i64 %284, %274, !dbg !2693
  br i1 %285, label %286, label %288, !dbg !2696

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2693
  store i8 39, i8* %287, align 1, !dbg !2693, !tbaa !1267
  br label %288, !dbg !2693

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %289, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %463, !dbg !2697

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2698

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2444, metadata !DIExpression()), !dbg !2699
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2700
  %293 = load i16*, i16** %292, align 8, !dbg !2700, !tbaa !1156
  %294 = zext i8 %158 to i64, !dbg !2700
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2700
  %296 = load i16, i16* %295, align 2, !dbg !2700, !tbaa !2702
  %297 = lshr i16 %296, 14, !dbg !2704
  %298 = trunc i16 %297 to i8, !dbg !2704
  %299 = and i8 %298, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i8 %299, metadata !2447, metadata !DIExpression()), !dbg !2699
  br label %355, !dbg !2705

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2706
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2448, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %23, metadata !2708, metadata !DIExpression()) #14, !dbg !2716
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()) #14, !dbg !2716
  call void @llvm.dbg.value(metadata i64 8, metadata !2715, metadata !DIExpression()) #14, !dbg !2716
  store i64 0, i64* %10, align 8, !dbg !2718
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 1, metadata !2447, metadata !DIExpression()), !dbg !2699
  %301 = icmp eq i64 %155, -1, !dbg !2719
  br i1 %301, label %302, label %304, !dbg !2721

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %303, metadata !2419, metadata !DIExpression()), !dbg !2474
  br label %304, !dbg !2723

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2566
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  br label %306, !dbg !2724

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2725
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2726
  call void @llvm.dbg.value(metadata i8 %308, metadata !2447, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2727
  %309 = add i64 %307, %123, !dbg !2728
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2729
  %311 = sub i64 %305, %309, !dbg !2730
  call void @llvm.dbg.value(metadata i32* %12, metadata !2454, metadata !DIExpression(DW_OP_deref)), !dbg !2487
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #14, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %312, metadata !2457, metadata !DIExpression()), !dbg !2487
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2732

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  %314 = icmp ugt i64 %305, %309, !dbg !2733
  br i1 %314, label %315, label %340, !dbg !2735

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2736
  br label %317, !dbg !2736

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2444, metadata !DIExpression()), !dbg !2699
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2737
  %321 = load i8, i8* %320, align 1, !dbg !2737, !tbaa !1267
  %322 = icmp eq i8 %321, 0, !dbg !2735
  br i1 %322, label %340, label %323, !dbg !2736

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2738
  call void @llvm.dbg.value(metadata i64 %324, metadata !2444, metadata !DIExpression()), !dbg !2699
  %325 = add i64 %324, %123, !dbg !2739
  %326 = icmp ult i64 %325, %305, !dbg !2733
  br i1 %326, label %317, label %340, !dbg !2735, !llvm.loop !2740

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2741
  %329 = and i1 %113, %328, !dbg !2744
  call void @llvm.dbg.value(metadata i64 1, metadata !2458, metadata !DIExpression()), !dbg !2745
  br i1 %329, label %330, label %343, !dbg !2744

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2458, metadata !DIExpression()), !dbg !2745
  %332 = add i64 %331, %309, !dbg !2746
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2747
  %334 = load i8, i8* %333, align 1, !dbg !2747, !tbaa !1267
  %335 = sext i8 %334 to i32, !dbg !2747
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2748

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %337, metadata !2458, metadata !DIExpression()), !dbg !2745
  %338 = icmp eq i64 %337, %312, !dbg !2741
  br i1 %338, label %343, label %330, !dbg !2750, !llvm.loop !2751

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 %308, metadata !2447, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %307, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 %308, metadata !2447, metadata !DIExpression()), !dbg !2699
  br label %340, !dbg !2753

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2753
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2754, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %344, metadata !2454, metadata !DIExpression()), !dbg !2487
  %345 = call i32 @iswprint(i32 %344) #14, !dbg !2756
  %346 = icmp eq i32 %345, 0, !dbg !2756
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2757
  call void @llvm.dbg.value(metadata i8 %347, metadata !2447, metadata !DIExpression()), !dbg !2699
  %348 = add i64 %312, %307, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %348, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 %347, metadata !2447, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %348, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2753
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2759
  %350 = icmp eq i32 %349, 0, !dbg !2760
  br i1 %350, label %306, label %351, !dbg !2761, !llvm.loop !2762

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2764
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %99, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %305, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2764
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2566
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2765
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2765
  call void @llvm.dbg.value(metadata i8 %358, metadata !2447, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %357, metadata !2444, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %356, metadata !2419, metadata !DIExpression()), !dbg !2474
  %359 = and i8 %358, 1, !dbg !2766
  %360 = icmp ne i8 %359, 0, !dbg !2766
  call void @llvm.dbg.value(metadata i8 %359, metadata !2443, metadata !DIExpression()), !dbg !2566
  %361 = icmp ult i64 %357, 2, !dbg !2767
  %362 = or i1 %360, %114, !dbg !2768
  %363 = and i1 %361, %362, !dbg !2769
  br i1 %363, label %463, label %364, !dbg !2769

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %365, metadata !2465, metadata !DIExpression()), !dbg !2771
  br label %366, !dbg !2772

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2559
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2474
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2495
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2566
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2566
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2773
  call void @llvm.dbg.value(metadata i8 %372, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %371, metadata !2441, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %370, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %369, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %368, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %367, metadata !2425, metadata !DIExpression()), !dbg !2474
  br i1 %362, label %419, label %373, !dbg !2774

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2779

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2566
  %375 = and i8 %369, 1, !dbg !2782
  %376 = icmp eq i8 %375, 0, !dbg !2782
  %377 = and i1 %110, %376, !dbg !2782
  br i1 %377, label %378, label %394, !dbg !2782

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2784
  br i1 %379, label %380, label %382, !dbg !2788

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2784
  store i8 39, i8* %381, align 1, !dbg !2784, !tbaa !1267
  br label %382, !dbg !2784

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %383, metadata !2426, metadata !DIExpression()), !dbg !2474
  %384 = icmp ult i64 %383, %130, !dbg !2789
  br i1 %384, label %385, label %387, !dbg !2792

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2789
  store i8 36, i8* %386, align 1, !dbg !2789, !tbaa !1267
  br label %387, !dbg !2789

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %388, metadata !2426, metadata !DIExpression()), !dbg !2474
  %389 = icmp ult i64 %388, %130, !dbg !2793
  br i1 %389, label %390, label %392, !dbg !2796

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2793
  store i8 39, i8* %391, align 1, !dbg !2793, !tbaa !1267
  br label %392, !dbg !2793

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %393, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %394, !dbg !2797

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2474
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %396, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %395, metadata !2426, metadata !DIExpression()), !dbg !2474
  %397 = icmp ult i64 %395, %130, !dbg !2798
  br i1 %397, label %398, label %400, !dbg !2801

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2798
  store i8 92, i8* %399, align 1, !dbg !2798, !tbaa !1267
  br label %400, !dbg !2798

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %401, metadata !2426, metadata !DIExpression()), !dbg !2474
  %402 = icmp ult i64 %401, %130, !dbg !2802
  br i1 %402, label %403, label %407, !dbg !2805

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2802
  %405 = or i8 %404, 48, !dbg !2802
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2802
  store i8 %405, i8* %406, align 1, !dbg !2802, !tbaa !1267
  br label %407, !dbg !2802

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %408, metadata !2426, metadata !DIExpression()), !dbg !2474
  %409 = icmp ult i64 %408, %130, !dbg !2806
  br i1 %409, label %410, label %415, !dbg !2809

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2806
  %412 = and i8 %411, 7, !dbg !2806
  %413 = or i8 %412, 48, !dbg !2806
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2806
  store i8 %413, i8* %414, align 1, !dbg !2806, !tbaa !1267
  br label %415, !dbg !2806

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %416, metadata !2426, metadata !DIExpression()), !dbg !2474
  %417 = and i8 %370, 7, !dbg !2810
  %418 = or i8 %417, 48, !dbg !2811
  call void @llvm.dbg.value(metadata i8 %418, metadata !2436, metadata !DIExpression()), !dbg !2566
  br label %428, !dbg !2812

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2813
  %421 = icmp eq i8 %420, 0, !dbg !2813
  br i1 %421, label %428, label %422, !dbg !2815

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2816
  br i1 %423, label %424, label %426, !dbg !2820

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2816
  store i8 92, i8* %425, align 1, !dbg !2816, !tbaa !1267
  br label %426, !dbg !2816

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %427, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2566
  br label %428, !dbg !2821

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2474
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2495
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2566
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2566
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2566
  call void @llvm.dbg.value(metadata i8 %433, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %432, metadata !2441, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %431, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %430, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %429, metadata !2426, metadata !DIExpression()), !dbg !2474
  %434 = add i64 %367, 1, !dbg !2822
  %435 = icmp ugt i64 %365, %434, !dbg !2824
  br i1 %435, label %436, label %526, !dbg !2825

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2826
  %438 = icmp ne i8 %437, 0, !dbg !2826
  %439 = and i8 %433, 1, !dbg !2826
  %440 = icmp eq i8 %439, 0, !dbg !2826
  %441 = and i1 %438, %440, !dbg !2826
  br i1 %441, label %442, label %453, !dbg !2826

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2829
  br i1 %443, label %444, label %446, !dbg !2833

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2829
  store i8 39, i8* %445, align 1, !dbg !2829, !tbaa !1267
  br label %446, !dbg !2829

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %447, metadata !2426, metadata !DIExpression()), !dbg !2474
  %448 = icmp ult i64 %447, %130, !dbg !2834
  br i1 %448, label %449, label %451, !dbg !2837

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2834
  store i8 39, i8* %450, align 1, !dbg !2834, !tbaa !1267
  br label %451, !dbg !2834

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %452, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %453, !dbg !2838

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2839
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %455, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %454, metadata !2426, metadata !DIExpression()), !dbg !2474
  %456 = icmp ult i64 %454, %130, !dbg !2840
  br i1 %456, label %457, label %459, !dbg !2843

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2840
  store i8 %431, i8* %458, align 1, !dbg !2840, !tbaa !1267
  br label %459, !dbg !2840

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %460, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %434, metadata !2425, metadata !DIExpression()), !dbg !2474
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2844
  %462 = load i8, i8* %461, align 1, !dbg !2844, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %462, metadata !2436, metadata !DIExpression()), !dbg !2566
  br label %366, !dbg !2845, !llvm.loop !2846

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2559
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2474
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2491
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2849
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2474
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2474
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2566
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2566
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2566
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %472, metadata !2443, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %471, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %156, metadata !2441, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %470, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %469, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %468, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %467, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %466, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %465, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %464, metadata !2425, metadata !DIExpression()), !dbg !2474
  br i1 %117, label %486, label %474, !dbg !2850

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2851
  %476 = zext i8 %475 to i64, !dbg !2851
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2852
  %478 = load i32, i32* %477, align 4, !dbg !2852, !tbaa !1946
  %479 = and i8 %470, 31, !dbg !2853
  %480 = zext i8 %479 to i32, !dbg !2853
  %481 = shl nuw i32 1, %480, !dbg !2854
  %482 = and i32 %478, %481, !dbg !2854
  %483 = icmp eq i32 %482, 0, !dbg !2854
  %484 = icmp eq i8 %156, 0, !dbg !2855
  %485 = and i1 %484, %483, !dbg !2856
  br i1 %485, label %526, label %488, !dbg !2856

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2855
  br i1 %487, label %526, label %488, !dbg !2857

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2858
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2474
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2491
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2849
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2495
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2496
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2566
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2566
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %496, metadata !2443, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %495, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %494, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %493, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %492, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %491, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %490, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %489, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2471), !dbg !2859
  br i1 %109, label %498, label %629, !dbg !2860

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2566
  %499 = and i8 %493, 1, !dbg !2862
  %500 = icmp eq i8 %499, 0, !dbg !2862
  %501 = and i1 %110, %500, !dbg !2862
  br i1 %501, label %502, label %518, !dbg !2862

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2864
  br i1 %503, label %504, label %506, !dbg !2868

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2864
  store i8 39, i8* %505, align 1, !dbg !2864, !tbaa !1267
  br label %506, !dbg !2864

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %507, metadata !2426, metadata !DIExpression()), !dbg !2474
  %508 = icmp ult i64 %507, %497, !dbg !2869
  br i1 %508, label %509, label %511, !dbg !2872

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2869
  store i8 36, i8* %510, align 1, !dbg !2869, !tbaa !1267
  br label %511, !dbg !2869

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %512, metadata !2426, metadata !DIExpression()), !dbg !2474
  %513 = icmp ult i64 %512, %497, !dbg !2873
  br i1 %513, label %514, label %516, !dbg !2876

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2873
  store i8 39, i8* %515, align 1, !dbg !2873, !tbaa !1267
  br label %516, !dbg !2873

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %517, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %518, !dbg !2877

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2566
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %520, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %519, metadata !2426, metadata !DIExpression()), !dbg !2474
  %521 = icmp ult i64 %519, %497, !dbg !2878
  br i1 %521, label %522, label %524, !dbg !2881

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2878
  store i8 92, i8* %523, align 1, !dbg !2878, !tbaa !1267
  br label %524, !dbg !2878

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %525, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %536, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %535, metadata !2443, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %534, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %533, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %532, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %531, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %530, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %529, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %528, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %527, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2472), !dbg !2882
  br label %553, !dbg !2883

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2858
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2474
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2491
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2849
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2495
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2496
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2886
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2566
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2566
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %535, metadata !2443, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %534, metadata !2442, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %533, metadata !2436, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %532, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %531, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %530, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %529, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %528, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %527, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2472), !dbg !2882
  %537 = and i8 %531, 1, !dbg !2883
  %538 = icmp ne i8 %537, 0, !dbg !2883
  %539 = and i8 %534, 1, !dbg !2883
  %540 = icmp eq i8 %539, 0, !dbg !2883
  %541 = and i1 %538, %540, !dbg !2883
  br i1 %541, label %542, label %553, !dbg !2883

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2887
  br i1 %543, label %544, label %546, !dbg !2891

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2887
  store i8 39, i8* %545, align 1, !dbg !2887, !tbaa !1267
  br label %546, !dbg !2887

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %547, metadata !2426, metadata !DIExpression()), !dbg !2474
  %548 = icmp ult i64 %547, %536, !dbg !2892
  br i1 %548, label %549, label %551, !dbg !2895

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2892
  store i8 39, i8* %550, align 1, !dbg !2892, !tbaa !1267
  br label %551, !dbg !2892

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %552, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %553, !dbg !2896

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2566
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %562, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %561, metadata !2426, metadata !DIExpression()), !dbg !2474
  %563 = icmp ult i64 %561, %554, !dbg !2897
  br i1 %563, label %564, label %566, !dbg !2900

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2897
  store i8 %556, i8* %565, align 1, !dbg !2897, !tbaa !1267
  br label %566, !dbg !2897

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %567, metadata !2426, metadata !DIExpression()), !dbg !2474
  %568 = and i8 %555, 1, !dbg !2901
  %569 = icmp eq i8 %568, 0, !dbg !2901
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2903
  call void @llvm.dbg.value(metadata i8 %570, metadata !2435, metadata !DIExpression()), !dbg !2474
  br label %571, !dbg !2904

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2858
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2474
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2491
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2849
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2495
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2474
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2497
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %578, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %577, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %576, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %575, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %574, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %573, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %572, metadata !2425, metadata !DIExpression()), !dbg !2474
  %580 = add i64 %572, 1, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %580, metadata !2425, metadata !DIExpression()), !dbg !2474
  br label %122, !dbg !2906, !llvm.loop !2907

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %127, metadata !2433, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %128, metadata !2434, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %129, metadata !2435, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  %583 = icmp eq i64 %124, 0, !dbg !2909
  %584 = and i1 %110, %583, !dbg !2911
  %585 = xor i1 %584, true, !dbg !2911
  %586 = or i1 %109, %585, !dbg !2911
  br i1 %586, label %587, label %629, !dbg !2911

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2912
  %589 = xor i1 %588, true, !dbg !2912
  %590 = and i8 %128, 1, !dbg !2914
  %591 = icmp eq i8 %590, 0, !dbg !2914
  %592 = or i1 %591, %589, !dbg !2912
  br i1 %592, label %602, label %593, !dbg !2912

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2915
  %595 = icmp eq i8 %594, 0, !dbg !2915
  br i1 %595, label %598, label %596, !dbg !2918

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %94, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %95, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %125, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %582, metadata !2419, metadata !DIExpression()), !dbg !2474
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2919
  br label %645, !dbg !2920

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2921
  %600 = icmp ne i64 %125, 0, !dbg !2923
  %601 = and i1 %600, %599, !dbg !2924
  br i1 %601, label %26, label %602, !dbg !2924

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %130, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  %603 = icmp ne i8* %97, null, !dbg !2925
  %604 = and i1 %603, %109, !dbg !2927
  br i1 %604, label %605, label %620, !dbg !2927

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %124, metadata !2426, metadata !DIExpression()), !dbg !2474
  %606 = load i8, i8* %97, align 1, !dbg !2928, !tbaa !1267
  %607 = icmp eq i8 %606, 0, !dbg !2931
  br i1 %607, label %620, label %608, !dbg !2931

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %611, metadata !2426, metadata !DIExpression()), !dbg !2474
  %612 = icmp ult i64 %611, %130, !dbg !2932
  br i1 %612, label %613, label %615, !dbg !2935

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2932
  store i8 %609, i8* %614, align 1, !dbg !2932, !tbaa !1267
  br label %615, !dbg !2932

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %616, metadata !2426, metadata !DIExpression()), !dbg !2474
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %617, metadata !2428, metadata !DIExpression()), !dbg !2474
  %618 = load i8, i8* %617, align 1, !dbg !2928, !tbaa !1267
  %619 = icmp eq i8 %618, 0, !dbg !2931
  br i1 %619, label %620, label %608, !dbg !2931, !llvm.loop !2937

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2528
  call void @llvm.dbg.value(metadata i64 %621, metadata !2426, metadata !DIExpression()), !dbg !2474
  %622 = icmp ult i64 %621, %130, !dbg !2939
  br i1 %622, label %623, label %645, !dbg !2941

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2942
  store i8 0, i8* %624, align 1, !dbg !2943, !tbaa !1267
  br label %645, !dbg !2942

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %630, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2473), !dbg !2944
  %627 = icmp eq i8 %101, 0, !dbg !2945
  %628 = select i1 %627, i32 2, i32 4, !dbg !2945
  br label %635, !dbg !2945

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %630, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2473), !dbg !2944
  %632 = icmp eq i32 %93, 2, !dbg !2947
  %633 = icmp eq i8 %101, 0, !dbg !2945
  %634 = select i1 %633, i32 2, i32 4, !dbg !2945
  br i1 %632, label %635, label %639, !dbg !2945

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2945

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2420, metadata !DIExpression()), !dbg !2474
  %643 = and i32 %5, -3, !dbg !2948
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2949
  br label %645, !dbg !2950

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2951
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2956, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %1, metadata !2957, metadata !DIExpression()), !dbg !2960
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #14, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %3, metadata !2958, metadata !DIExpression()), !dbg !2960
  %4 = icmp eq i8* %3, %0, !dbg !2962
  br i1 %4, label %5, label %71, !dbg !2964

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #14, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %6, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %6, metadata !2966, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* undef, metadata !2972, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 85, metadata !2973, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 84, metadata !2974, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 70, metadata !2975, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 45, metadata !2976, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 56, metadata !2977, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !2982
  %7 = load i8, i8* %6, align 1, !dbg !2985, !tbaa !1267
  %8 = and i8 %7, -33, !dbg !2985
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2985

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2987, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8* undef, metadata !2992, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 84, metadata !2993, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 70, metadata !2994, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 45, metadata !2995, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 56, metadata !2996, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 0, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 0, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3001
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3005
  %11 = load i8, i8* %10, align 1, !dbg !3005, !tbaa !1267
  %12 = and i8 %11, -33, !dbg !3005
  %13 = icmp eq i8 %12, 84, !dbg !3005
  br i1 %13, label %14, label %68, !dbg !3005

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3007, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8* undef, metadata !3012, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 70, metadata !3013, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 45, metadata !3014, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 56, metadata !3015, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 0, metadata !3016, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 0, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3020
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3024
  %16 = load i8, i8* %15, align 1, !dbg !3024, !tbaa !1267
  %17 = and i8 %16, -33, !dbg !3024
  %18 = icmp eq i8 %17, 70, !dbg !3024
  br i1 %18, label %19, label %68, !dbg !3024

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3026, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* undef, metadata !3031, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 45, metadata !3032, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 56, metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3034, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3037, metadata !DIExpression()), !dbg !3038
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3042
  %21 = load i8, i8* %20, align 1, !dbg !3042, !tbaa !1267
  %22 = icmp eq i8 %21, 45, !dbg !3042
  br i1 %22, label %23, label %68, !dbg !3044

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3045, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8* undef, metadata !3050, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 56, metadata !3051, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !3052, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !3053, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i8 0, metadata !3055, metadata !DIExpression()), !dbg !3056
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3060
  %25 = load i8, i8* %24, align 1, !dbg !3060, !tbaa !1267
  %26 = icmp eq i8 %25, 56, !dbg !3060
  br i1 %26, label %27, label %68, !dbg !3062

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3063, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* undef, metadata !3068, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !3069, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !3072, metadata !DIExpression()), !dbg !3073
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3077
  %29 = load i8, i8* %28, align 1, !dbg !3077, !tbaa !1267
  %30 = icmp eq i8 %29, 0, !dbg !3077
  br i1 %30, label %31, label %68, !dbg !3079

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3080, !tbaa !1267
  %33 = icmp eq i8 %32, 96, !dbg !3081
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.126, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.127, i64 0, i64 0), !dbg !3080
  br label %71, !dbg !3082

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2987, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* undef, metadata !2992, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 66, metadata !2993, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 49, metadata !2994, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 56, metadata !2995, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 48, metadata !2996, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 51, metadata !2997, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 48, metadata !2998, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 0, metadata !2999, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3083
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3087
  %37 = load i8, i8* %36, align 1, !dbg !3087, !tbaa !1267
  %38 = and i8 %37, -33, !dbg !3087
  %39 = icmp eq i8 %38, 66, !dbg !3087
  br i1 %39, label %40, label %68, !dbg !3087

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3007, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* undef, metadata !3012, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 49, metadata !3013, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 56, metadata !3014, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 48, metadata !3015, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 51, metadata !3016, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 48, metadata !3017, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3088
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3090
  %42 = load i8, i8* %41, align 1, !dbg !3090, !tbaa !1267
  %43 = icmp eq i8 %42, 49, !dbg !3090
  br i1 %43, label %44, label %68, !dbg !3091

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3026, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8* undef, metadata !3031, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 56, metadata !3032, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 48, metadata !3033, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 51, metadata !3034, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 48, metadata !3035, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 0, metadata !3036, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 0, metadata !3037, metadata !DIExpression()), !dbg !3092
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3094
  %46 = load i8, i8* %45, align 1, !dbg !3094, !tbaa !1267
  %47 = icmp eq i8 %46, 56, !dbg !3094
  br i1 %47, label %48, label %68, !dbg !3095

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3045, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* undef, metadata !3050, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 48, metadata !3051, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 51, metadata !3052, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 48, metadata !3053, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3054, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !3055, metadata !DIExpression()), !dbg !3096
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3098
  %50 = load i8, i8* %49, align 1, !dbg !3098, !tbaa !1267
  %51 = icmp eq i8 %50, 48, !dbg !3098
  br i1 %51, label %52, label %68, !dbg !3099

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3063, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* undef, metadata !3068, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 51, metadata !3069, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 48, metadata !3070, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3071, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3072, metadata !DIExpression()), !dbg !3100
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3102
  %54 = load i8, i8* %53, align 1, !dbg !3102, !tbaa !1267
  %55 = icmp eq i8 %54, 51, !dbg !3102
  br i1 %55, label %56, label %68, !dbg !3103

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3104, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* undef, metadata !3109, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 48, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 0, metadata !3112, metadata !DIExpression()), !dbg !3113
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3117
  %58 = load i8, i8* %57, align 1, !dbg !3117, !tbaa !1267
  %59 = icmp eq i8 %58, 48, !dbg !3117
  br i1 %59, label %60, label %68, !dbg !3119

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3120, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* undef, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 0, metadata !3127, metadata !DIExpression()), !dbg !3128
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3132
  %62 = load i8, i8* %61, align 1, !dbg !3132, !tbaa !1267
  %63 = icmp eq i8 %62, 0, !dbg !3132
  br i1 %63, label %64, label %68, !dbg !3134

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3135, !tbaa !1267
  %66 = icmp eq i8 %65, 96, !dbg !3136
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.128, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.129, i64 0, i64 0), !dbg !3135
  br label %71, !dbg !3137

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3138
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.124, i64 0, i64 0), !dbg !3139
  br label %71, !dbg !3140

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2960
  ret i8* %72, !dbg !3141
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !289 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !293 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3142 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()) #14, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3155, metadata !DIExpression()) #14, !dbg !3163
  call void @llvm.dbg.value(metadata i64* null, metadata !3156, metadata !DIExpression()) #14, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3157, metadata !DIExpression()) #14, !dbg !3163
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3165
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3158, metadata !DIExpression()) #14, !dbg !3163
  %6 = tail call i32* @__errno_location() #24, !dbg !3166
  %7 = load i32, i32* %6, align 4, !dbg !3166, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %7, metadata !3159, metadata !DIExpression()) #14, !dbg !3163
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3167
  %9 = load i32, i32* %8, align 4, !dbg !3167, !tbaa !2359
  %10 = or i32 %9, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %10, metadata !3160, metadata !DIExpression()) #14, !dbg !3163
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3169
  %12 = load i32, i32* %11, align 8, !dbg !3169, !tbaa !2307
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3170
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3171
  %15 = load i8*, i8** %14, align 8, !dbg !3171, !tbaa !2382
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3172
  %17 = load i8*, i8** %16, align 8, !dbg !3172, !tbaa !2385
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #14, !dbg !3173
  %19 = add i64 %18, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %19, metadata !3161, metadata !DIExpression()) #14, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %19, metadata !3175, metadata !DIExpression()) #14, !dbg !3180
  %20 = tail call noalias i8* @xmalloc(i64 %19) #14, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %20, metadata !3162, metadata !DIExpression()) #14, !dbg !3163
  %21 = load i32, i32* %11, align 8, !dbg !3183, !tbaa !2307
  %22 = load i8*, i8** %14, align 8, !dbg !3184, !tbaa !2382
  %23 = load i8*, i8** %16, align 8, !dbg !3185, !tbaa !2385
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #14, !dbg !3186
  store i32 %7, i32* %6, align 4, !dbg !3187, !tbaa !1946
  ret i8* %20, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %1, metadata !3155, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64* %2, metadata !3156, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3157, metadata !DIExpression()), !dbg !3189
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3190
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3158, metadata !DIExpression()), !dbg !3189
  %7 = tail call i32* @__errno_location() #24, !dbg !3191
  %8 = load i32, i32* %7, align 4, !dbg !3191, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %8, metadata !3159, metadata !DIExpression()), !dbg !3189
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3192
  %10 = load i32, i32* %9, align 4, !dbg !3192, !tbaa !2359
  %11 = icmp ne i64* %2, null, !dbg !3193
  %12 = xor i1 %11, true, !dbg !3193
  %13 = zext i1 %12 to i32, !dbg !3193
  %14 = or i32 %10, %13, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %14, metadata !3160, metadata !DIExpression()), !dbg !3189
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3195
  %16 = load i32, i32* %15, align 8, !dbg !3195, !tbaa !2307
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3196
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3197
  %19 = load i8*, i8** %18, align 8, !dbg !3197, !tbaa !2382
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3198
  %21 = load i8*, i8** %20, align 8, !dbg !3198, !tbaa !2385
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3199
  %23 = add i64 %22, 1, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %23, metadata !3161, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %23, metadata !3175, metadata !DIExpression()) #14, !dbg !3201
  %24 = tail call noalias i8* @xmalloc(i64 %23) #14, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %24, metadata !3162, metadata !DIExpression()), !dbg !3189
  %25 = load i32, i32* %15, align 8, !dbg !3204, !tbaa !2307
  %26 = load i8*, i8** %18, align 8, !dbg !3205, !tbaa !2382
  %27 = load i8*, i8** %20, align 8, !dbg !3206, !tbaa !2385
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3207
  store i32 %8, i32* %7, align 4, !dbg !3208, !tbaa !1946
  br i1 %11, label %29, label %30, !dbg !3209

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3210, !tbaa !3212
  br label %30, !dbg !3214

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3216 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3220, !tbaa !1156
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3218, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 1, metadata !3219, metadata !DIExpression()), !dbg !3221
  %2 = load i32, i32* @nslots, align 4, !dbg !3222, !tbaa !1946
  %3 = icmp sgt i32 %2, 1, !dbg !3225
  br i1 %3, label %4, label %12, !dbg !3226

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3219, metadata !DIExpression()), !dbg !3221
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3227
  %7 = load i8*, i8** %6, align 8, !dbg !3227, !tbaa !3228
  tail call void @free(i8* %7) #14, !dbg !3230
  %8 = add nuw nsw i64 %5, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %8, metadata !3219, metadata !DIExpression()), !dbg !3221
  %9 = load i32, i32* @nslots, align 4, !dbg !3222, !tbaa !1946
  %10 = sext i32 %9 to i64, !dbg !3225
  %11 = icmp slt i64 %8, %10, !dbg !3225
  br i1 %11, label %4, label %12, !dbg !3226, !llvm.loop !3232

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3234
  %14 = load i8*, i8** %13, align 8, !dbg !3234, !tbaa !3228
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3236
  br i1 %15, label %17, label %16, !dbg !3237

16:                                               ; preds = %12
  tail call void @free(i8* %14) #14, !dbg !3238
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3240, !tbaa !3241
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3242, !tbaa !3228
  br label %17, !dbg !3243

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3244
  br i1 %18, label %21, label %19, !dbg !3246

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3247
  tail call void @free(i8* %20) #14, !dbg !3249
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3250, !tbaa !1156
  br label %21, !dbg !3251

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3252, !tbaa !1946
  ret void, !dbg !3253
}

; Function Attrs: nounwind
declare !dbg !265 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()), !dbg !3258
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3259
  ret i8* %3, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3265, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %2, metadata !3267, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3268, metadata !DIExpression()), !dbg !3280
  %5 = tail call i32* @__errno_location() #24, !dbg !3281
  %6 = load i32, i32* %5, align 4, !dbg !3281, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %6, metadata !3269, metadata !DIExpression()), !dbg !3280
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3282, !tbaa !1156
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3270, metadata !DIExpression()), !dbg !3280
  %8 = icmp slt i32 %0, 0, !dbg !3283
  br i1 %8, label %9, label %10, !dbg !3285

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3286
  unreachable, !dbg !3286

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3287, !tbaa !1946
  %12 = icmp sgt i32 %11, %0, !dbg !3288
  br i1 %12, label %34, label %13, !dbg !3289

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3290
  call void @llvm.dbg.value(metadata i1 %14, metadata !3271, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3274, metadata !DIExpression()), !dbg !3291
  %15 = icmp eq i32 %0, 2147483647, !dbg !3292
  br i1 %15, label %16, label %17, !dbg !3294

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3295
  unreachable, !dbg !3295

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3296
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3296
  %20 = add nuw nsw i32 %0, 1, !dbg !3297
  %21 = sext i32 %20 to i64, !dbg !3298
  %22 = shl nuw nsw i64 %21, 4, !dbg !3299
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #14, !dbg !3300
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3270, metadata !DIExpression()), !dbg !3280
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3301, !tbaa !1156
  br i1 %14, label %25, label %26, !dbg !3302

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3303, !tbaa.struct !3305
  br label %26, !dbg !3306

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3307, !tbaa !1946
  %28 = sext i32 %27 to i64, !dbg !3308
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3308
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3309
  %31 = sub nsw i32 %20, %27, !dbg !3310
  %32 = sext i32 %31 to i64, !dbg !3311
  %33 = shl nsw i64 %32, 4, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %30, metadata !2708, metadata !DIExpression()) #14, !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()) #14, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %33, metadata !2715, metadata !DIExpression()) #14, !dbg !3313
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #14, !dbg !3315
  store i32 %20, i32* @nslots, align 4, !dbg !3316, !tbaa !1946
  br label %34, !dbg !3317

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3280
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3270, metadata !DIExpression()), !dbg !3280
  %36 = zext i32 %0 to i64, !dbg !3318
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3319
  %38 = load i64, i64* %37, align 8, !dbg !3319, !tbaa !3241
  call void @llvm.dbg.value(metadata i64 %38, metadata !3275, metadata !DIExpression()), !dbg !3320
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3321
  %40 = load i8*, i8** %39, align 8, !dbg !3321, !tbaa !3228
  call void @llvm.dbg.value(metadata i8* %40, metadata !3277, metadata !DIExpression()), !dbg !3320
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3322
  %42 = load i32, i32* %41, align 4, !dbg !3322, !tbaa !2359
  %43 = or i32 %42, 1, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %43, metadata !3278, metadata !DIExpression()), !dbg !3320
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3324
  %45 = load i32, i32* %44, align 8, !dbg !3324, !tbaa !2307
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3325
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3326
  %48 = load i8*, i8** %47, align 8, !dbg !3326, !tbaa !2382
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3327
  %50 = load i8*, i8** %49, align 8, !dbg !3327, !tbaa !2385
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %51, metadata !3279, metadata !DIExpression()), !dbg !3320
  %52 = icmp ugt i64 %38, %51, !dbg !3329
  br i1 %52, label %63, label %53, !dbg !3331

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %54, metadata !3275, metadata !DIExpression()), !dbg !3320
  store i64 %54, i64* %37, align 8, !dbg !3334, !tbaa !3241
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3335
  br i1 %55, label %57, label %56, !dbg !3337

56:                                               ; preds = %53
  tail call void @free(i8* %40) #14, !dbg !3338
  br label %57, !dbg !3338

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3175, metadata !DIExpression()) #14, !dbg !3339
  %58 = tail call noalias i8* @xmalloc(i64 %54) #14, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %58, metadata !3277, metadata !DIExpression()), !dbg !3320
  store i8* %58, i8** %39, align 8, !dbg !3342, !tbaa !3228
  %59 = load i32, i32* %44, align 8, !dbg !3343, !tbaa !2307
  %60 = load i8*, i8** %47, align 8, !dbg !3344, !tbaa !2382
  %61 = load i8*, i8** %49, align 8, !dbg !3345, !tbaa !2385
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3346
  br label %63, !dbg !3347

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3320
  call void @llvm.dbg.value(metadata i8* %64, metadata !3277, metadata !DIExpression()), !dbg !3320
  store i32 %6, i32* %5, align 4, !dbg !3348, !tbaa !1946
  ret i8* %64, !dbg !3349
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %2, metadata !3356, metadata !DIExpression()), !dbg !3357
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3358
  ret i8* %4, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()) #14, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #14, !dbg !3364
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !3366
  ret i8* %2, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 0, metadata !3354, metadata !DIExpression()) #14, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()) #14, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %1, metadata !3356, metadata !DIExpression()) #14, !dbg !3375
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !3377
  ret i8* %3, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3379 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %1, metadata !3384, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3385, metadata !DIExpression()), !dbg !3387
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3388
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #14, !dbg !3396
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3395, metadata !DIExpression()) #14, !dbg !3398
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !3398, !alias.scope !3399
  %6 = icmp eq i32 %1, 10, !dbg !3402
  br i1 %6, label %7, label %8, !dbg !3404

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3405, !noalias !3399
  unreachable, !dbg !3405

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3406
  store i32 %1, i32* %9, align 8, !dbg !3407, !tbaa !2307, !alias.scope !3399
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3408
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3409
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
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #14, !dbg !3423
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3395, metadata !DIExpression()) #14, !dbg !3425
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #14, !dbg !3425, !alias.scope !3426
  %7 = icmp eq i32 %1, 10, !dbg !3429
  br i1 %7, label %8, label %9, !dbg !3430

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3431, !noalias !3426
  unreachable, !dbg !3431

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3432
  store i32 %1, i32* %10, align 8, !dbg !3433, !tbaa !2307, !alias.scope !3426
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3435
  ret i8* %11, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3437 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3395, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3386, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* %1, metadata !3442, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()) #14, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()) #14, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !3385, metadata !DIExpression()) #14, !dbg !3448
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()) #14, !dbg !3450
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14, !dbg !3443, !alias.scope !3451
  %5 = icmp eq i32 %0, 10, !dbg !3454
  br i1 %5, label %6, label %7, !dbg !3455

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3456, !noalias !3451
  unreachable, !dbg !3456

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3457
  store i32 %0, i32* %8, align 8, !dbg !3458, !tbaa !2307, !alias.scope !3451
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !3459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3460
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
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()) #14, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()) #14, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()) #14, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()) #14, !dbg !3474
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()) #14, !dbg !3476
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !3469, !alias.scope !3477
  %6 = icmp eq i32 %0, 10, !dbg !3480
  br i1 %6, label %7, label %8, !dbg !3481

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3482, !noalias !3477
  unreachable, !dbg !3482

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3483
  store i32 %0, i32* %9, align 8, !dbg !3484, !tbaa !2307, !alias.scope !3477
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #14, !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3486
  ret i8* %10, !dbg !3487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3488 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 %2, metadata !3494, metadata !DIExpression()), !dbg !3496
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3495, metadata !DIExpression()), !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3499, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2325, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 %2, metadata !2326, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 %2, metadata !2328, metadata !DIExpression()), !dbg !3501
  %6 = lshr i8 %2, 5, !dbg !3503
  %7 = zext i8 %6 to i64, !dbg !3503
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3504
  call void @llvm.dbg.value(metadata i32* %8, metadata !2330, metadata !DIExpression()), !dbg !3501
  %9 = and i8 %2, 31, !dbg !3505
  %10 = zext i8 %9 to i32, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %10, metadata !2332, metadata !DIExpression()), !dbg !3501
  %11 = load i32, i32* %8, align 4, !dbg !3506, !tbaa !1946
  %12 = lshr i32 %11, %10, !dbg !3507
  %13 = and i32 %12, 1, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %13, metadata !2333, metadata !DIExpression()), !dbg !3501
  %14 = xor i32 %13, 1, !dbg !3509
  %15 = shl i32 %14, %10, !dbg !3510
  %16 = xor i32 %15, %11, !dbg !3511
  store i32 %16, i32* %8, align 4, !dbg !3511, !tbaa !1946
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3513
  ret i8* %17, !dbg !3514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3515 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3495, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 %1, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #14, !dbg !3524
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #14, !dbg !3524
  call void @llvm.dbg.value(metadata i8 %1, metadata !3494, metadata !DIExpression()) #14, !dbg !3524
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3526, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2325, metadata !DIExpression()) #14, !dbg !3527
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()) #14, !dbg !3527
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()) #14, !dbg !3527
  call void @llvm.dbg.value(metadata i8 %1, metadata !2328, metadata !DIExpression()) #14, !dbg !3527
  %5 = lshr i8 %1, 5, !dbg !3529
  %6 = zext i8 %5 to i64, !dbg !3529
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3530
  call void @llvm.dbg.value(metadata i32* %7, metadata !2330, metadata !DIExpression()) #14, !dbg !3527
  %8 = and i8 %1, 31, !dbg !3531
  %9 = zext i8 %8 to i32, !dbg !3531
  call void @llvm.dbg.value(metadata i32 %9, metadata !2332, metadata !DIExpression()) #14, !dbg !3527
  %10 = load i32, i32* %7, align 4, !dbg !3532, !tbaa !1946
  %11 = lshr i32 %10, %9, !dbg !3533
  %12 = and i32 %11, 1, !dbg !3534
  call void @llvm.dbg.value(metadata i32 %12, metadata !2333, metadata !DIExpression()) #14, !dbg !3527
  %13 = xor i32 %12, 1, !dbg !3535
  %14 = shl i32 %13, %9, !dbg !3536
  %15 = xor i32 %14, %10, !dbg !3537
  store i32 %15, i32* %7, align 4, !dbg !3537, !tbaa !1946
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !3538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3539
  ret i8* %16, !dbg !3540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3541 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3495, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()) #14, !dbg !3548
  call void @llvm.dbg.value(metadata i8 58, metadata !3520, metadata !DIExpression()) #14, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #14, !dbg !3549
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #14, !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !3494, metadata !DIExpression()) #14, !dbg !3549
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3550
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #14, !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3551, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2325, metadata !DIExpression()) #14, !dbg !3552
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #14, !dbg !3552
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()) #14, !dbg !3552
  call void @llvm.dbg.value(metadata i8 58, metadata !2328, metadata !DIExpression()) #14, !dbg !3552
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3554
  call void @llvm.dbg.value(metadata i32* %4, metadata !2330, metadata !DIExpression()) #14, !dbg !3552
  call void @llvm.dbg.value(metadata i32 26, metadata !2332, metadata !DIExpression()) #14, !dbg !3552
  %5 = load i32, i32* %4, align 4, !dbg !3555, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %5, metadata !2333, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !3552
  %6 = or i32 %5, 67108864, !dbg !3556
  store i32 %6, i32* %4, align 4, !dbg !3556, !tbaa !1946
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #14, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #14, !dbg !3558
  ret i8* %7, !dbg !3559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3560 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3495, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #14, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()) #14, !dbg !3567
  call void @llvm.dbg.value(metadata i8 58, metadata !3494, metadata !DIExpression()) #14, !dbg !3567
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3568
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3569, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2325, metadata !DIExpression()) #14, !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #14, !dbg !3570
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()) #14, !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2328, metadata !DIExpression()) #14, !dbg !3570
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3572
  call void @llvm.dbg.value(metadata i32* %5, metadata !2330, metadata !DIExpression()) #14, !dbg !3570
  call void @llvm.dbg.value(metadata i32 26, metadata !2332, metadata !DIExpression()) #14, !dbg !3570
  %6 = load i32, i32* %5, align 4, !dbg !3573, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %6, metadata !2333, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !3570
  %7 = or i32 %6, 67108864, !dbg !3574
  store i32 %7, i32* %5, align 4, !dbg !3574, !tbaa !1946
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #14, !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3576
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
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3587
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3583, metadata !DIExpression()), !dbg !3588
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()) #14, !dbg !3590
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
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2325, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8 58, metadata !2328, metadata !DIExpression()), !dbg !3597
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3599
  call void @llvm.dbg.value(metadata i32* %14, metadata !2330, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 26, metadata !2332, metadata !DIExpression()), !dbg !3597
  %15 = load i32, i32* %14, align 4, !dbg !3600, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %15, metadata !2333, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3597
  %16 = or i32 %15, 67108864, !dbg !3601
  store i32 %16, i32* %14, align 4, !dbg !3601, !tbaa !1946
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3603
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #14, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %1, metadata !3619, metadata !DIExpression()) #14, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %2, metadata !3620, metadata !DIExpression()) #14, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %3, metadata !3621, metadata !DIExpression()) #14, !dbg !3626
  call void @llvm.dbg.value(metadata i64 -1, metadata !3622, metadata !DIExpression()) #14, !dbg !3626
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3628, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #14, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2367, metadata !DIExpression()) #14, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2368, metadata !DIExpression()) #14, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #14, !dbg !3629
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3631
  store i32 10, i32* %7, align 8, !dbg !3632, !tbaa !2307
  %8 = icmp ne i8* %1, null, !dbg !3633
  %9 = icmp ne i8* %2, null, !dbg !3634
  %10 = and i1 %8, %9, !dbg !3635
  br i1 %10, label %12, label %11, !dbg !3635

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3636
  unreachable, !dbg !3636

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3637
  store i8* %1, i8** %13, align 8, !dbg !3638, !tbaa !2382
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3639
  store i8* %2, i8** %14, align 8, !dbg !3640, !tbaa !2385
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #14, !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3642
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
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3645
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3613, metadata !DIExpression()), !dbg !3646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3647, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2366, metadata !DIExpression()) #14, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2367, metadata !DIExpression()) #14, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2368, metadata !DIExpression()) #14, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2366, metadata !DIExpression()) #14, !dbg !3648
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3650
  store i32 10, i32* %8, align 8, !dbg !3651, !tbaa !2307
  %9 = icmp ne i8* %1, null, !dbg !3652
  %10 = icmp ne i8* %2, null, !dbg !3653
  %11 = and i1 %9, %10, !dbg !3654
  br i1 %11, label %13, label %12, !dbg !3654

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3655
  unreachable, !dbg !3655

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3656
  store i8* %1, i8** %14, align 8, !dbg !3657, !tbaa !2382
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3658
  store i8* %2, i8** %15, align 8, !dbg !3659, !tbaa !2385
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3661
  ret i8* %16, !dbg !3662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3663 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3613, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %0, metadata !3667, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3669, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #14, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %0, metadata !3610, metadata !DIExpression()) #14, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()) #14, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %2, metadata !3612, metadata !DIExpression()) #14, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #14, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #14, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()) #14, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()) #14, !dbg !3675
  call void @llvm.dbg.value(metadata i64 -1, metadata !3622, metadata !DIExpression()) #14, !dbg !3675
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3677, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2366, metadata !DIExpression()) #14, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()) #14, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !2368, metadata !DIExpression()) #14, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2366, metadata !DIExpression()) #14, !dbg !3678
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3680
  store i32 10, i32* %6, align 8, !dbg !3681, !tbaa !2307
  %7 = icmp ne i8* %0, null, !dbg !3682
  %8 = icmp ne i8* %1, null, !dbg !3683
  %9 = and i1 %7, %8, !dbg !3684
  br i1 %9, label %11, label %10, !dbg !3684

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3685
  unreachable, !dbg !3685

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3686
  store i8* %0, i8** %12, align 8, !dbg !3687, !tbaa !2382
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3688
  store i8* %1, i8** %13, align 8, !dbg !3689, !tbaa !2385
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #14, !dbg !3690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3691
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
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()) #14, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %0, metadata !3619, metadata !DIExpression()) #14, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()) #14, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()) #14, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3622, metadata !DIExpression()) #14, !dbg !3704
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3705
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3706, !tbaa.struct !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #14, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()) #14, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2368, metadata !DIExpression()) #14, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #14, !dbg !3707
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3709
  store i32 10, i32* %7, align 8, !dbg !3710, !tbaa !2307
  %8 = icmp ne i8* %0, null, !dbg !3711
  %9 = icmp ne i8* %1, null, !dbg !3712
  %10 = and i1 %8, %9, !dbg !3713
  br i1 %10, label %12, label %11, !dbg !3713

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3714
  unreachable, !dbg !3714

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3715
  store i8* %0, i8** %13, align 8, !dbg !3716, !tbaa !2382
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3717
  store i8* %1, i8** %14, align 8, !dbg !3718, !tbaa !2385
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #14, !dbg !3719
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3720
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
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()) #14, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #14, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()) #14, !dbg !3739
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3741
  ret i8* %3, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()) #14, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()) #14, !dbg !3750
  call void @llvm.dbg.value(metadata i64 -1, metadata !3728, metadata !DIExpression()) #14, !dbg !3750
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3752
  ret i8* %3, !dbg !3753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 0, metadata !3747, metadata !DIExpression()) #14, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %0, metadata !3748, metadata !DIExpression()) #14, !dbg !3760
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()) #14, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()) #14, !dbg !3762
  call void @llvm.dbg.value(metadata i64 -1, metadata !3728, metadata !DIExpression()) #14, !dbg !3762
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3764
  ret i8* %2, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3766 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3774, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %2, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8** %4, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %5, metadata !3779, metadata !DIExpression()), !dbg !3780
  %7 = icmp eq i8* %1, null, !dbg !3781
  br i1 %7, label %10, label %8, !dbg !3783

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #14, !dbg !3784
  br label %12, !dbg !3784

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i64 0, i64 0), i8* %2, i8* %3) #14, !dbg !3785
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.134, i64 0, i64 0), i32 5) #14, !dbg !3786
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #14, !dbg !3786
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3787
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.136, i64 0, i64 0), i32 5) #14, !dbg !3788
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.137, i64 0, i64 0)) #14, !dbg !3788
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3789
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
  ], !dbg !3790

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.138, i64 0, i64 0), i32 5) #14, !dbg !3791
  %21 = load i8*, i8** %4, align 8, !dbg !3791, !tbaa !1156
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #14, !dbg !3791
  br label %147, !dbg !3793

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.139, i64 0, i64 0), i32 5) #14, !dbg !3794
  %25 = load i8*, i8** %4, align 8, !dbg !3794, !tbaa !1156
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3794
  %27 = load i8*, i8** %26, align 8, !dbg !3794, !tbaa !1156
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #14, !dbg !3794
  br label %147, !dbg !3795

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.140, i64 0, i64 0), i32 5) #14, !dbg !3796
  %31 = load i8*, i8** %4, align 8, !dbg !3796, !tbaa !1156
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3796
  %33 = load i8*, i8** %32, align 8, !dbg !3796, !tbaa !1156
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3796
  %35 = load i8*, i8** %34, align 8, !dbg !3796, !tbaa !1156
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #14, !dbg !3796
  br label %147, !dbg !3797

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.141, i64 0, i64 0), i32 5) #14, !dbg !3798
  %39 = load i8*, i8** %4, align 8, !dbg !3798, !tbaa !1156
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3798
  %41 = load i8*, i8** %40, align 8, !dbg !3798, !tbaa !1156
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3798
  %43 = load i8*, i8** %42, align 8, !dbg !3798, !tbaa !1156
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3798
  %45 = load i8*, i8** %44, align 8, !dbg !3798, !tbaa !1156
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #14, !dbg !3798
  br label %147, !dbg !3799

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.142, i64 0, i64 0), i32 5) #14, !dbg !3800
  %49 = load i8*, i8** %4, align 8, !dbg !3800, !tbaa !1156
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3800
  %51 = load i8*, i8** %50, align 8, !dbg !3800, !tbaa !1156
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3800
  %53 = load i8*, i8** %52, align 8, !dbg !3800, !tbaa !1156
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3800
  %55 = load i8*, i8** %54, align 8, !dbg !3800, !tbaa !1156
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3800
  %57 = load i8*, i8** %56, align 8, !dbg !3800, !tbaa !1156
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #14, !dbg !3800
  br label %147, !dbg !3801

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.143, i64 0, i64 0), i32 5) #14, !dbg !3802
  %61 = load i8*, i8** %4, align 8, !dbg !3802, !tbaa !1156
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3802
  %63 = load i8*, i8** %62, align 8, !dbg !3802, !tbaa !1156
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3802
  %65 = load i8*, i8** %64, align 8, !dbg !3802, !tbaa !1156
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3802
  %67 = load i8*, i8** %66, align 8, !dbg !3802, !tbaa !1156
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3802
  %69 = load i8*, i8** %68, align 8, !dbg !3802, !tbaa !1156
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3802
  %71 = load i8*, i8** %70, align 8, !dbg !3802, !tbaa !1156
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #14, !dbg !3802
  br label %147, !dbg !3803

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.144, i64 0, i64 0), i32 5) #14, !dbg !3804
  %75 = load i8*, i8** %4, align 8, !dbg !3804, !tbaa !1156
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3804
  %77 = load i8*, i8** %76, align 8, !dbg !3804, !tbaa !1156
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3804
  %79 = load i8*, i8** %78, align 8, !dbg !3804, !tbaa !1156
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3804
  %81 = load i8*, i8** %80, align 8, !dbg !3804, !tbaa !1156
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3804
  %83 = load i8*, i8** %82, align 8, !dbg !3804, !tbaa !1156
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3804
  %85 = load i8*, i8** %84, align 8, !dbg !3804, !tbaa !1156
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3804
  %87 = load i8*, i8** %86, align 8, !dbg !3804, !tbaa !1156
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #14, !dbg !3804
  br label %147, !dbg !3805

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.145, i64 0, i64 0), i32 5) #14, !dbg !3806
  %91 = load i8*, i8** %4, align 8, !dbg !3806, !tbaa !1156
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3806
  %93 = load i8*, i8** %92, align 8, !dbg !3806, !tbaa !1156
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3806
  %95 = load i8*, i8** %94, align 8, !dbg !3806, !tbaa !1156
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3806
  %97 = load i8*, i8** %96, align 8, !dbg !3806, !tbaa !1156
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3806
  %99 = load i8*, i8** %98, align 8, !dbg !3806, !tbaa !1156
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3806
  %101 = load i8*, i8** %100, align 8, !dbg !3806, !tbaa !1156
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3806
  %103 = load i8*, i8** %102, align 8, !dbg !3806, !tbaa !1156
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3806
  %105 = load i8*, i8** %104, align 8, !dbg !3806, !tbaa !1156
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #14, !dbg !3806
  br label %147, !dbg !3807

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.146, i64 0, i64 0), i32 5) #14, !dbg !3808
  %109 = load i8*, i8** %4, align 8, !dbg !3808, !tbaa !1156
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3808
  %111 = load i8*, i8** %110, align 8, !dbg !3808, !tbaa !1156
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3808
  %113 = load i8*, i8** %112, align 8, !dbg !3808, !tbaa !1156
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3808
  %115 = load i8*, i8** %114, align 8, !dbg !3808, !tbaa !1156
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3808
  %117 = load i8*, i8** %116, align 8, !dbg !3808, !tbaa !1156
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3808
  %119 = load i8*, i8** %118, align 8, !dbg !3808, !tbaa !1156
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3808
  %121 = load i8*, i8** %120, align 8, !dbg !3808, !tbaa !1156
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3808
  %123 = load i8*, i8** %122, align 8, !dbg !3808, !tbaa !1156
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3808
  %125 = load i8*, i8** %124, align 8, !dbg !3808, !tbaa !1156
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #14, !dbg !3808
  br label %147, !dbg !3809

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.147, i64 0, i64 0), i32 5) #14, !dbg !3810
  %129 = load i8*, i8** %4, align 8, !dbg !3810, !tbaa !1156
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3810
  %131 = load i8*, i8** %130, align 8, !dbg !3810, !tbaa !1156
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3810
  %133 = load i8*, i8** %132, align 8, !dbg !3810, !tbaa !1156
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3810
  %135 = load i8*, i8** %134, align 8, !dbg !3810, !tbaa !1156
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3810
  %137 = load i8*, i8** %136, align 8, !dbg !3810, !tbaa !1156
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3810
  %139 = load i8*, i8** %138, align 8, !dbg !3810, !tbaa !1156
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3810
  %141 = load i8*, i8** %140, align 8, !dbg !3810, !tbaa !1156
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3810
  %143 = load i8*, i8** %142, align 8, !dbg !3810, !tbaa !1156
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3810
  %145 = load i8*, i8** %144, align 8, !dbg !3810, !tbaa !1156
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #14, !dbg !3810
  br label %147, !dbg !3811

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3813 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3817, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %1, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %2, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %3, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8** %4, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 0, metadata !3822, metadata !DIExpression()), !dbg !3823
  br label %6, !dbg !3824

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3826
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3827
  %9 = load i8*, i8** %8, align 8, !dbg !3827, !tbaa !1156
  %10 = icmp eq i8* %9, null, !dbg !3829
  %11 = add i64 %7, 1, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %11, metadata !3822, metadata !DIExpression()), !dbg !3823
  br i1 %10, label %12, label %6, !dbg !3829, !llvm.loop !3831

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3833
  ret void, !dbg !3834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3835 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3846, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i8* %1, metadata !3847, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i8* %2, metadata !3848, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i8* %3, metadata !3849, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3850, metadata !DIExpression()), !dbg !3854
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3855
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3855
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3852, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 0, metadata !3851, metadata !DIExpression()), !dbg !3854
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3857
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3857
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3857
  %11 = load i32, i32* %8, align 8, !dbg !3860
  %12 = icmp ult i32 %11, 41, !dbg !3860
  br i1 %12, label %13, label %18, !dbg !3860

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3860
  %15 = zext i32 %11 to i64, !dbg !3860
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3860
  %17 = add nuw nsw i32 %11, 8, !dbg !3860
  store i32 %17, i32* %8, align 8, !dbg !3860
  br label %21, !dbg !3860

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3860
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3860
  store i8* %20, i8** %9, align 8, !dbg !3860
  br label %21, !dbg !3860

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3860
  %25 = load i8*, i8** %24, align 8, !dbg !3860
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3861
  store i8* %25, i8** %26, align 16, !dbg !3862, !tbaa !1156
  %27 = icmp eq i8* %25, null, !dbg !3863
  br i1 %27, label %30, label %28, !dbg !3864

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3851, metadata !DIExpression()), !dbg !3854
  %29 = icmp ult i32 %22, 41, !dbg !3860
  br i1 %29, label %35, label %32, !dbg !3860

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3865
  call void @llvm.dbg.value(metadata i64 %31, metadata !3851, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %31, metadata !3851, metadata !DIExpression()), !dbg !3854
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3866
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3867
  ret void, !dbg !3867

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3860
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3860
  store i8* %34, i8** %9, align 8, !dbg !3860
  br label %40, !dbg !3860

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3860
  %37 = zext i32 %22 to i64, !dbg !3860
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3860
  %39 = add nuw nsw i32 %22, 8, !dbg !3860
  store i32 %39, i32* %8, align 8, !dbg !3860
  br label %40, !dbg !3860

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3860
  %44 = load i8*, i8** %43, align 8, !dbg !3860
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3861
  store i8* %44, i8** %45, align 8, !dbg !3862, !tbaa !1156
  %46 = icmp eq i8* %44, null, !dbg !3863
  br i1 %46, label %30, label %47, !dbg !3864

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3851, metadata !DIExpression()), !dbg !3854
  %48 = icmp ult i32 %41, 41, !dbg !3860
  br i1 %48, label %52, label %49, !dbg !3860

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3860
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3860
  store i8* %51, i8** %9, align 8, !dbg !3860
  br label %57, !dbg !3860

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3860
  %54 = zext i32 %41 to i64, !dbg !3860
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3860
  %56 = add nuw nsw i32 %41, 8, !dbg !3860
  store i32 %56, i32* %8, align 8, !dbg !3860
  br label %57, !dbg !3860

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3860
  %61 = load i8*, i8** %60, align 8, !dbg !3860
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3861
  store i8* %61, i8** %62, align 16, !dbg !3862, !tbaa !1156
  %63 = icmp eq i8* %61, null, !dbg !3863
  br i1 %63, label %30, label %64, !dbg !3864

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3851, metadata !DIExpression()), !dbg !3854
  %65 = icmp ult i32 %58, 41, !dbg !3860
  br i1 %65, label %69, label %66, !dbg !3860

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3860
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3860
  store i8* %68, i8** %9, align 8, !dbg !3860
  br label %74, !dbg !3860

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3860
  %71 = zext i32 %58 to i64, !dbg !3860
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3860
  %73 = add nuw nsw i32 %58, 8, !dbg !3860
  store i32 %73, i32* %8, align 8, !dbg !3860
  br label %74, !dbg !3860

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3860
  %78 = load i8*, i8** %77, align 8, !dbg !3860
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3861
  store i8* %78, i8** %79, align 8, !dbg !3862, !tbaa !1156
  %80 = icmp eq i8* %78, null, !dbg !3863
  br i1 %80, label %30, label %81, !dbg !3864

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3851, metadata !DIExpression()), !dbg !3854
  %82 = icmp ult i32 %75, 41, !dbg !3860
  br i1 %82, label %86, label %83, !dbg !3860

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3860
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3860
  store i8* %85, i8** %9, align 8, !dbg !3860
  br label %91, !dbg !3860

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3860
  %88 = zext i32 %75 to i64, !dbg !3860
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3860
  %90 = add nuw nsw i32 %75, 8, !dbg !3860
  store i32 %90, i32* %8, align 8, !dbg !3860
  br label %91, !dbg !3860

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3860
  %95 = load i8*, i8** %94, align 8, !dbg !3860
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3861
  store i8* %95, i8** %96, align 16, !dbg !3862, !tbaa !1156
  %97 = icmp eq i8* %95, null, !dbg !3863
  br i1 %97, label %30, label %98, !dbg !3864

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3851, metadata !DIExpression()), !dbg !3854
  %99 = icmp ult i32 %92, 41, !dbg !3860
  br i1 %99, label %103, label %100, !dbg !3860

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3860
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3860
  store i8* %102, i8** %9, align 8, !dbg !3860
  br label %108, !dbg !3860

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3860
  %105 = zext i32 %92 to i64, !dbg !3860
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3860
  %107 = add nuw nsw i32 %92, 8, !dbg !3860
  store i32 %107, i32* %8, align 8, !dbg !3860
  br label %108, !dbg !3860

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3860
  %111 = load i8*, i8** %110, align 8, !dbg !3860
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3861
  store i8* %111, i8** %112, align 8, !dbg !3862, !tbaa !1156
  %113 = icmp eq i8* %111, null, !dbg !3863
  br i1 %113, label %30, label %114, !dbg !3864

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3851, metadata !DIExpression()), !dbg !3854
  %115 = load i8*, i8** %9, align 8, !dbg !3860
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3860
  store i8* %116, i8** %9, align 8, !dbg !3860
  %117 = bitcast i8* %115 to i8**, !dbg !3860
  %118 = load i8*, i8** %117, align 8, !dbg !3860
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3861
  store i8* %118, i8** %119, align 16, !dbg !3862, !tbaa !1156
  %120 = icmp eq i8* %118, null, !dbg !3863
  br i1 %120, label %30, label %121, !dbg !3864

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3851, metadata !DIExpression()), !dbg !3854
  %122 = load i8*, i8** %9, align 8, !dbg !3860
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3860
  store i8* %123, i8** %9, align 8, !dbg !3860
  %124 = bitcast i8* %122 to i8**, !dbg !3860
  %125 = load i8*, i8** %124, align 8, !dbg !3860
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3861
  store i8* %125, i8** %126, align 8, !dbg !3862, !tbaa !1156
  %127 = icmp eq i8* %125, null, !dbg !3863
  br i1 %127, label %30, label %128, !dbg !3864

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3851, metadata !DIExpression()), !dbg !3854
  %129 = load i8*, i8** %9, align 8, !dbg !3860
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3860
  store i8* %130, i8** %9, align 8, !dbg !3860
  %131 = bitcast i8* %129 to i8**, !dbg !3860
  %132 = load i8*, i8** %131, align 8, !dbg !3860
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3861
  store i8* %132, i8** %133, align 16, !dbg !3862, !tbaa !1156
  %134 = icmp eq i8* %132, null, !dbg !3863
  br i1 %134, label %30, label %135, !dbg !3864

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3851, metadata !DIExpression()), !dbg !3854
  %136 = load i8*, i8** %9, align 8, !dbg !3860
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3860
  store i8* %137, i8** %9, align 8, !dbg !3860
  %138 = bitcast i8* %136 to i8**, !dbg !3860
  %139 = load i8*, i8** %138, align 8, !dbg !3860
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3861
  store i8* %139, i8** %140, align 8, !dbg !3862, !tbaa !1156
  %141 = icmp eq i8* %139, null, !dbg !3863
  %142 = select i1 %141, i64 9, i64 10, !dbg !3864
  br label %30, !dbg !3864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3868 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3872, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3873, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3874, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %3, metadata !3875, metadata !DIExpression()), !dbg !3881
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3882
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3876, metadata !DIExpression()), !dbg !3883
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3884
  call void @llvm.va_start(i8* nonnull %6), !dbg !3884
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3885
  call void @llvm.va_end(i8* nonnull %6), !dbg !3886
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3887
  ret void, !dbg !3887
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3888 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3889, !tbaa !1156
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.135, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3889
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.150, i64 0, i64 0), i32 5) #14, !dbg !3890
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.151, i64 0, i64 0)) #14, !dbg !3890
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.152, i64 0, i64 0), i32 5) #14, !dbg !3891
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.153, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.154, i64 0, i64 0)) #14, !dbg !3891
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.155, i64 0, i64 0), i32 5) #14, !dbg !3892
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.156, i64 0, i64 0)) #14, !dbg !3892
  ret void, !dbg !3893
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %1, metadata !3899, metadata !DIExpression()), !dbg !3900
  %3 = udiv i64 9223372036854775807, %1, !dbg !3901
  %4 = icmp ult i64 %3, %0, !dbg !3901
  br i1 %4, label %5, label %6, !dbg !3903

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3904
  unreachable, !dbg !3904

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %7, metadata !3906, metadata !DIExpression()) #14, !dbg !3912
  %8 = tail call noalias i8* @malloc(i64 %7) #14, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %8, metadata !3911, metadata !DIExpression()) #14, !dbg !3912
  %9 = icmp eq i8* %8, null, !dbg !3915
  %10 = icmp ne i64 %7, 0, !dbg !3917
  %11 = and i1 %10, %9, !dbg !3918
  br i1 %11, label %12, label %13, !dbg !3918

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3919
  unreachable, !dbg !3919

13:                                               ; preds = %6
  ret i8* %8, !dbg !3920
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3907 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3906, metadata !DIExpression()), !dbg !3921
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()), !dbg !3921
  %3 = icmp eq i8* %2, null, !dbg !3923
  %4 = icmp ne i64 %0, 0, !dbg !3924
  %5 = and i1 %4, %3, !dbg !3925
  br i1 %5, label %6, label %7, !dbg !3925

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3926
  unreachable, !dbg !3926

7:                                                ; preds = %1
  ret i8* %2, !dbg !3927
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3928 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %1, metadata !3933, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %2, metadata !3934, metadata !DIExpression()), !dbg !3935
  %4 = udiv i64 9223372036854775807, %2, !dbg !3936
  %5 = icmp ult i64 %4, %1, !dbg !3936
  br i1 %5, label %6, label %7, !dbg !3938

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3939
  unreachable, !dbg !3939

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()) #14, !dbg !3947
  call void @llvm.dbg.value(metadata i64 %8, metadata !3946, metadata !DIExpression()) #14, !dbg !3947
  %9 = icmp eq i64 %8, 0, !dbg !3949
  %10 = icmp ne i8* %0, null, !dbg !3951
  %11 = and i1 %10, %9, !dbg !3952
  br i1 %11, label %12, label %13, !dbg !3952

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #14, !dbg !3953
  br label %19, !dbg !3955

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #14, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %14, metadata !3941, metadata !DIExpression()) #14, !dbg !3947
  %15 = icmp eq i8* %14, null, !dbg !3957
  %16 = icmp ne i64 %8, 0, !dbg !3959
  %17 = and i1 %16, %15, !dbg !3960
  br i1 %17, label %18, label %19, !dbg !3960

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3961
  unreachable, !dbg !3961

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3947
  ret i8* %20, !dbg !3962
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !3963
  %3 = icmp eq i64 %1, 0, !dbg !3964
  %4 = icmp ne i8* %0, null, !dbg !3965
  %5 = and i1 %4, %3, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3966

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #14, !dbg !3967
  br label %13, !dbg !3968

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #14, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %8, metadata !3941, metadata !DIExpression()), !dbg !3963
  %9 = icmp eq i8* %8, null, !dbg !3970
  %10 = icmp ne i64 %1, 0, !dbg !3971
  %11 = and i1 %10, %9, !dbg !3972
  br i1 %11, label %12, label %13, !dbg !3972

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3973
  unreachable, !dbg !3973

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3963
  ret i8* %14, !dbg !3974
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !516, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64* %1, metadata !517, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %2, metadata !518, metadata !DIExpression()), !dbg !3975
  %4 = load i64, i64* %1, align 8, !dbg !3976, !tbaa !3212
  call void @llvm.dbg.value(metadata i64 %4, metadata !519, metadata !DIExpression()), !dbg !3975
  %5 = icmp eq i8* %0, null, !dbg !3977
  br i1 %5, label %6, label %20, !dbg !3979

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3980
  br i1 %7, label %8, label %13, !dbg !3983

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %9, metadata !519, metadata !DIExpression()), !dbg !3975
  %10 = icmp ugt i64 %2, 128, !dbg !3986
  %11 = zext i1 %10 to i64, !dbg !3986
  %12 = add nuw nsw i64 %9, %11, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %12, metadata !519, metadata !DIExpression()), !dbg !3975
  br label %13, !dbg !3988

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3975
  call void @llvm.dbg.value(metadata i64 %14, metadata !519, metadata !DIExpression()), !dbg !3975
  %15 = udiv i64 9223372036854775807, %2, !dbg !3989
  %16 = icmp ult i64 %15, %14, !dbg !3989
  br i1 %16, label %19, label %17, !dbg !3991

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !519, metadata !DIExpression()), !dbg !3975
  store i64 %14, i64* %1, align 8, !dbg !3992, !tbaa !3212
  %18 = mul i64 %14, %2, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()) #14, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %28, metadata !3946, metadata !DIExpression()) #14, !dbg !3994
  br label %31, !dbg !3996

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3997
  unreachable, !dbg !3997

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3998
  %22 = icmp ugt i64 %21, %4, !dbg !4001
  br i1 %22, label %24, label %23, !dbg !4002

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !4003
  unreachable, !dbg !4003

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4004
  %26 = add nuw i64 %4, 1, !dbg !4005
  %27 = add i64 %26, %25, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %27, metadata !519, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %27, metadata !519, metadata !DIExpression()), !dbg !3975
  store i64 %27, i64* %1, align 8, !dbg !3992, !tbaa !3212
  %28 = mul i64 %27, %2, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()) #14, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %28, metadata !3946, metadata !DIExpression()) #14, !dbg !3994
  %29 = icmp eq i64 %28, 0, !dbg !4007
  br i1 %29, label %30, label %31, !dbg !3996

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #14, !dbg !4008
  br label %38, !dbg !4009

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #14, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %33, metadata !3941, metadata !DIExpression()) #14, !dbg !3994
  %34 = icmp eq i8* %33, null, !dbg !4011
  %35 = icmp ne i64 %32, 0, !dbg !4012
  %36 = and i1 %35, %34, !dbg !4013
  br i1 %36, label %37, label %38, !dbg !4013

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4014
  unreachable, !dbg !4014

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3994
  ret i8* %39, !dbg !4015
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4016 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %0, metadata !3906, metadata !DIExpression()) #14, !dbg !4020
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #14, !dbg !4020
  %3 = icmp eq i8* %2, null, !dbg !4023
  %4 = icmp ne i64 %0, 0, !dbg !4024
  %5 = and i1 %4, %3, !dbg !4025
  br i1 %5, label %6, label %7, !dbg !4025

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4026
  unreachable, !dbg !4026

7:                                                ; preds = %1
  ret i8* %2, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64* %1, metadata !4033, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8* %0, metadata !516, metadata !DIExpression()) #14, !dbg !4035
  call void @llvm.dbg.value(metadata i64* %1, metadata !517, metadata !DIExpression()) #14, !dbg !4035
  call void @llvm.dbg.value(metadata i64 1, metadata !518, metadata !DIExpression()) #14, !dbg !4035
  %3 = load i64, i64* %1, align 8, !dbg !4037, !tbaa !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !519, metadata !DIExpression()) #14, !dbg !4035
  %4 = icmp eq i8* %0, null, !dbg !4038
  br i1 %4, label %5, label %12, !dbg !4039

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4040
  br i1 %6, label %9, label %7, !dbg !4041

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !519, metadata !DIExpression()) #14, !dbg !4035
  %8 = icmp slt i64 %3, 0, !dbg !4042
  br i1 %8, label %11, label %9, !dbg !4043

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !519, metadata !DIExpression()) #14, !dbg !4035
  store i64 %10, i64* %1, align 8, !dbg !4044, !tbaa !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()) #14, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %18, metadata !3946, metadata !DIExpression()) #14, !dbg !4045
  br label %21, !dbg !4047

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4048
  unreachable, !dbg !4048

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4049
  br i1 %13, label %15, label %14, !dbg !4050

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4051
  unreachable, !dbg !4051

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4052
  %17 = add nuw nsw i64 %3, 1, !dbg !4053
  %18 = add nuw nsw i64 %17, %16, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %18, metadata !519, metadata !DIExpression()) #14, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %18, metadata !519, metadata !DIExpression()) #14, !dbg !4035
  store i64 %18, i64* %1, align 8, !dbg !4044, !tbaa !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3941, metadata !DIExpression()) #14, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %18, metadata !3946, metadata !DIExpression()) #14, !dbg !4045
  %19 = icmp eq i64 %18, 0, !dbg !4055
  br i1 %19, label %20, label %21, !dbg !4047

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #14, !dbg !4056
  br label %28, !dbg !4057

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #14, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %23, metadata !3941, metadata !DIExpression()) #14, !dbg !4045
  %24 = icmp eq i8* %23, null, !dbg !4059
  %25 = icmp ne i64 %22, 0, !dbg !4060
  %26 = and i1 %25, %24, !dbg !4061
  br i1 %26, label %27, label %28, !dbg !4061

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4062
  unreachable, !dbg !4062

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4045
  ret i8* %29, !dbg !4063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4064 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %0, metadata !4068, metadata !DIExpression()) #14, !dbg !4073
  call void @llvm.dbg.value(metadata i64 1, metadata !4071, metadata !DIExpression()) #14, !dbg !4073
  %2 = icmp slt i64 %0, 0, !dbg !4075
  br i1 %2, label %6, label %3, !dbg !4077

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #14, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %4, metadata !4072, metadata !DIExpression()) #14, !dbg !4073
  %5 = icmp eq i8* %4, null, !dbg !4079
  br i1 %5, label %6, label %7, !dbg !4080

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4081
  unreachable, !dbg !4081

7:                                                ; preds = %3
  ret i8* %4, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4069 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4068, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4071, metadata !DIExpression()), !dbg !4083
  %3 = udiv i64 9223372036854775807, %1, !dbg !4084
  %4 = icmp ult i64 %3, %0, !dbg !4084
  br i1 %4, label %8, label %5, !dbg !4085

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #14, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %6, metadata !4072, metadata !DIExpression()), !dbg !4083
  %7 = icmp eq i8* %6, null, !dbg !4087
  br i1 %7, label %8, label %9, !dbg !4088

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4089
  unreachable, !dbg !4089

9:                                                ; preds = %5
  ret i8* %6, !dbg !4090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %1, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()) #14, !dbg !4098
  %3 = tail call noalias i8* @malloc(i64 %1) #14, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #14, !dbg !4098
  %4 = icmp eq i8* %3, null, !dbg !4101
  %5 = icmp ne i64 %1, 0, !dbg !4102
  %6 = and i1 %5, %4, !dbg !4103
  br i1 %6, label %7, label %8, !dbg !4103

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4104
  unreachable, !dbg !4104

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4105, metadata !DIExpression()) #14, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %0, metadata !4112, metadata !DIExpression()) #14, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %1, metadata !4113, metadata !DIExpression()) #14, !dbg !4114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #14, !dbg !4116
  ret i8* %3, !dbg !4117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4120, metadata !DIExpression()), !dbg !4121
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4122
  %3 = add i64 %2, 1, !dbg !4123
  call void @llvm.dbg.value(metadata i8* %0, metadata !4095, metadata !DIExpression()) #14, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %3, metadata !4096, metadata !DIExpression()) #14, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %3, metadata !3906, metadata !DIExpression()) #14, !dbg !4126
  %4 = tail call noalias i8* @malloc(i64 %3) #14, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #14, !dbg !4126
  %5 = icmp eq i8* %4, null, !dbg !4129
  %6 = icmp ne i64 %3, 0, !dbg !4130
  %7 = and i1 %6, %5, !dbg !4131
  br i1 %7, label %8, label %9, !dbg !4131

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4132
  unreachable, !dbg !4132

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4105, metadata !DIExpression()) #14, !dbg !4133
  call void @llvm.dbg.value(metadata i8* %0, metadata !4112, metadata !DIExpression()) #14, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %3, metadata !4113, metadata !DIExpression()) #14, !dbg !4133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #14, !dbg !4135
  ret i8* %4, !dbg !4136
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4137 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4138, !tbaa !1946
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.167, i64 0, i64 0), i32 5) #14, !dbg !4139
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i64 0, i64 0), i8* %2) #14, !dbg !4140
  tail call void @abort() #23, !dbg !4141
  unreachable, !dbg !4141
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4142 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i64 %1, metadata !4145, metadata !DIExpression()), !dbg !4150
  %3 = icmp eq i64 %0, 0, !dbg !4151
  %4 = icmp eq i64 %1, 0, !dbg !4152
  %5 = or i1 %3, %4, !dbg !4153
  br i1 %5, label %11, label %6, !dbg !4153

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4147, metadata !DIExpression()), !dbg !4154
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4155
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4155
  br i1 %8, label %9, label %11, !dbg !4157

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4158
  store i32 12, i32* %10, align 4, !dbg !4160, !tbaa !1946
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i64 %12, metadata !4145, metadata !DIExpression()), !dbg !4150
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #14, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %14, metadata !4146, metadata !DIExpression()), !dbg !4150
  br label %15, !dbg !4162

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4150
  ret i8* %16, !dbg !4163
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4164 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4172, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i8* %1, metadata !4173, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i64 %2, metadata !4174, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4175, metadata !DIExpression()), !dbg !4181
  %6 = bitcast i32* %5 to i8*, !dbg !4182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4182
  %7 = icmp eq i32* %0, null, !dbg !4183
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4185
  call void @llvm.dbg.value(metadata i32* %8, metadata !4172, metadata !DIExpression()), !dbg !4181
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #14, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %9, metadata !4176, metadata !DIExpression()), !dbg !4181
  %10 = icmp ugt i64 %9, -3, !dbg !4187
  %11 = icmp ne i64 %2, 0, !dbg !4188
  %12 = and i1 %11, %10, !dbg !4189
  br i1 %12, label %13, label %18, !dbg !4189

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #14, !dbg !4190
  br i1 %14, label %18, label %15, !dbg !4191

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4192, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %16, metadata !4178, metadata !DIExpression()), !dbg !4193
  %17 = zext i8 %16 to i32, !dbg !4194
  store i32 %17, i32* %8, align 4, !dbg !4195, !tbaa !1946
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4196
  ret i64 %19, !dbg !4196
}

; Function Attrs: nounwind
declare !dbg !537 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4197 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4203, metadata !DIExpression()), !dbg !4208
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #14, !dbg !4209
  call void @llvm.dbg.value(metadata i1 undef, metadata !4204, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4210, metadata !DIExpression()), !dbg !4214
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4216
  %4 = load i32, i32* %3, align 8, !dbg !4216, !tbaa !4217
  %5 = and i32 %4, 32, !dbg !4216
  %6 = icmp eq i32 %5, 0, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %6, metadata !4206, metadata !DIExpression()), !dbg !4208
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #14, !dbg !4220
  %8 = icmp ne i32 %7, 0, !dbg !4221
  call void @llvm.dbg.value(metadata i1 %8, metadata !4207, metadata !DIExpression()), !dbg !4208
  br i1 %6, label %9, label %19, !dbg !4222

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4224
  call void @llvm.dbg.value(metadata i1 %10, metadata !4204, metadata !DIExpression()), !dbg !4208
  %11 = xor i1 %8, true, !dbg !4225
  %12 = or i1 %10, %11, !dbg !4225
  %13 = sext i1 %8 to i32, !dbg !4225
  br i1 %12, label %22, label %14, !dbg !4225

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4226
  %16 = load i32, i32* %15, align 4, !dbg !4226, !tbaa !1946
  %17 = icmp ne i32 %16, 9, !dbg !4227
  %18 = sext i1 %17 to i32, !dbg !4228
  br label %22, !dbg !4228

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4229

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4231
  store i32 0, i32* %21, align 4, !dbg !4233, !tbaa !1946
  br label %22, !dbg !4231

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4208
  ret i32 %23, !dbg !4234
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4235 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4237, metadata !DIExpression()), !dbg !4242
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4243
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #14, !dbg !4243
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4238, metadata !DIExpression()), !dbg !4244
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #14, !dbg !4245
  %5 = icmp eq i32 %4, 0, !dbg !4245
  br i1 %5, label %6, label %13, !dbg !4247

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4248
  %8 = load i16, i16* %7, align 16, !dbg !4248
  %9 = icmp eq i16 %8, 67, !dbg !4248
  br i1 %9, label %13, label %10, !dbg !4249

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0), i64 6), !dbg !4250
  %12 = icmp ne i32 %11, 0, !dbg !4251
  br label %13, !dbg !4249

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4242
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #14, !dbg !4252
  ret i1 %14, !dbg !4252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4253 {
  %1 = tail call i8* @nl_langinfo(i32 14) #14, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %1, metadata !4255, metadata !DIExpression()), !dbg !4257
  %2 = icmp eq i8* %1, null, !dbg !4258
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* %1, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %3, metadata !4255, metadata !DIExpression()), !dbg !4257
  %4 = load i8, i8* %3, align 1, !dbg !4261, !tbaa !1267
  %5 = icmp eq i8 %4, 0, !dbg !4265
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %3, !dbg !4266
  call void @llvm.dbg.value(metadata i8* %6, metadata !4255, metadata !DIExpression()), !dbg !4257
  ret i8* %6, !dbg !4267
}

; Function Attrs: nounwind
declare !dbg !989 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4272, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i8* %1, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %2, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %0, metadata !4276, metadata !DIExpression()) #14, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %1, metadata !4279, metadata !DIExpression()) #14, !dbg !4285
  call void @llvm.dbg.value(metadata i64 %2, metadata !4280, metadata !DIExpression()) #14, !dbg !4285
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()) #14, !dbg !4293
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !4295
  call void @llvm.dbg.value(metadata i8* %4, metadata !4292, metadata !DIExpression()) #14, !dbg !4293
  call void @llvm.dbg.value(metadata i8* %4, metadata !4281, metadata !DIExpression()) #14, !dbg !4285
  %5 = icmp eq i8* %4, null, !dbg !4296
  br i1 %5, label %6, label %9, !dbg !4297

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4298
  br i1 %7, label %19, label %8, !dbg !4301

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4302, !tbaa !1267
  br label %19, !dbg !4303

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %10, metadata !4282, metadata !DIExpression()) #14, !dbg !4305
  %11 = icmp ult i64 %10, %2, !dbg !4306
  br i1 %11, label %12, label %14, !dbg !4308

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4309
  call void @llvm.dbg.value(metadata i8* %1, metadata !4311, metadata !DIExpression()) #14, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %4, metadata !4314, metadata !DIExpression()) #14, !dbg !4316
  call void @llvm.dbg.value(metadata i64 %13, metadata !4315, metadata !DIExpression()) #14, !dbg !4316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #14, !dbg !4318
  br label %19, !dbg !4319

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4320
  br i1 %15, label %19, label %16, !dbg !4323

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4324
  call void @llvm.dbg.value(metadata i8* %1, metadata !4311, metadata !DIExpression()) #14, !dbg !4326
  call void @llvm.dbg.value(metadata i8* %4, metadata !4314, metadata !DIExpression()) #14, !dbg !4326
  call void @llvm.dbg.value(metadata i64 %17, metadata !4315, metadata !DIExpression()) #14, !dbg !4326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #14, !dbg !4328
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4329
  store i8 0, i8* %18, align 1, !dbg !4330, !tbaa !1267
  br label %19, !dbg !4331

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4332
  ret i32 %20, !dbg !4333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4334 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4336, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()) #14, !dbg !4338
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !4340
  call void @llvm.dbg.value(metadata i8* %2, metadata !4292, metadata !DIExpression()) #14, !dbg !4338
  ret i8* %2, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4342 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4348, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4349, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4351, metadata !DIExpression()), !dbg !4352
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4353
  call void @llvm.dbg.value(metadata i32 %2, metadata !4350, metadata !DIExpression()), !dbg !4352
  %3 = icmp slt i32 %2, 0, !dbg !4354
  br i1 %3, label %4, label %6, !dbg !4356

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4357
  br label %24, !dbg !4358

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !4359
  %8 = icmp eq i32 %7, 0, !dbg !4359
  br i1 %8, label %13, label %9, !dbg !4361

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4362
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #14, !dbg !4363
  %12 = icmp eq i64 %11, -1, !dbg !4364
  br i1 %12, label %16, label %13, !dbg !4365

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #14, !dbg !4366
  %15 = icmp eq i32 %14, 0, !dbg !4366
  br i1 %15, label %16, label %18, !dbg !4367

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4349, metadata !DIExpression()), !dbg !4352
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4368
  call void @llvm.dbg.value(metadata i32 %21, metadata !4351, metadata !DIExpression()), !dbg !4352
  br label %24, !dbg !4369

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4370
  %20 = load i32, i32* %19, align 4, !dbg !4370, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 %20, metadata !4349, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 %20, metadata !4349, metadata !DIExpression()), !dbg !4352
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4368
  call void @llvm.dbg.value(metadata i32 %21, metadata !4351, metadata !DIExpression()), !dbg !4352
  %22 = icmp eq i32 %20, 0, !dbg !4371
  br i1 %22, label %24, label %23, !dbg !4369

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4373, !tbaa !1946
  call void @llvm.dbg.value(metadata i32 -1, metadata !4351, metadata !DIExpression()), !dbg !4352
  br label %24, !dbg !4375

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4352
  ret i32 %25, !dbg !4376
}

; Function Attrs: nofree nounwind
declare !dbg !998 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1033 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1034 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4377 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4383, metadata !DIExpression()), !dbg !4384
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4385
  br i1 %2, label %6, label %3, !dbg !4387

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !4388
  %5 = icmp eq i32 %4, 0, !dbg !4388
  br i1 %5, label %6, label %8, !dbg !4389

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4390
  br label %17, !dbg !4391

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4392, metadata !DIExpression()) #14, !dbg !4397
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4399
  %10 = load i32, i32* %9, align 8, !dbg !4399, !tbaa !4217
  %11 = and i32 %10, 256, !dbg !4401
  %12 = icmp eq i32 %11, 0, !dbg !4401
  br i1 %12, label %15, label %13, !dbg !4402

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #14, !dbg !4403
  br label %15, !dbg !4403

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4404
  br label %17, !dbg !4405

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4384
  ret i32 %18, !dbg !4406
}

; Function Attrs: nofree nounwind
declare !dbg !1042 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4407 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4413, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %1, metadata !4414, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i32 %2, metadata !4415, metadata !DIExpression()), !dbg !4419
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4420
  %5 = load i8*, i8** %4, align 8, !dbg !4420, !tbaa !4421
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4422
  %7 = load i8*, i8** %6, align 8, !dbg !4422, !tbaa !4423
  %8 = icmp eq i8* %5, %7, !dbg !4424
  br i1 %8, label %9, label %28, !dbg !4425

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4426
  %11 = load i8*, i8** %10, align 8, !dbg !4426, !tbaa !4427
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4428
  %13 = load i8*, i8** %12, align 8, !dbg !4428, !tbaa !4429
  %14 = icmp eq i8* %11, %13, !dbg !4430
  br i1 %14, label %15, label %28, !dbg !4431

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4432
  %17 = load i8*, i8** %16, align 8, !dbg !4432, !tbaa !4433
  %18 = icmp eq i8* %17, null, !dbg !4434
  br i1 %18, label %19, label %28, !dbg !4435

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4436
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #14, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %21, metadata !4416, metadata !DIExpression()), !dbg !4438
  %22 = icmp eq i64 %21, -1, !dbg !4439
  br i1 %22, label %30, label %23, !dbg !4441

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4442
  %25 = load i32, i32* %24, align 8, !dbg !4443, !tbaa !4217
  %26 = and i32 %25, -17, !dbg !4443
  store i32 %26, i32* %24, align 8, !dbg !4443, !tbaa !4217
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4444
  store i64 %21, i64* %27, align 8, !dbg !4445, !tbaa !4446
  br label %30, !dbg !4447

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4448
  br label %30, !dbg !4449

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4419
  ret i32 %31, !dbg !4450
}

; Function Attrs: nofree nounwind
declare !dbg !1118 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!355, !2, !459, !90, !461, !463, !96, !164, !206, !465, !349, !507, !528, !531, !534, !553, !592, !599, !992, !995, !1039, !1080}
!llvm.ident = !{!1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121, !1121}
!llvm.module.flags = !{!1122, !1123, !1124, !1125, !1126}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !3, line: 46, type: !74, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !84, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !70, !76, !80}
!6 = !DISubprogram(name: "close_stream", scope: !7, file: !7, line: 2, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !14)
!13 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!14 = !{!15, !16, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !32, !33, !34, !35, !39, !41, !43, !47, !50, !52, !55, !58, !59, !61, !65, !66}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !13, line: 51, baseType: !10, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !12, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !12, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !12, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !12, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !12, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !12, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !12, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !12, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !12, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !12, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !12, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !12, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !13, line: 36, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !12, file: !13, line: 70, baseType: !11, size: 64, offset: 832)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !12, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !12, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !12, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 152, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !12, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !12, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!42 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !12, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !12, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !13, line: 43, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 153, baseType: !38)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !12, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !13, line: 37, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !12, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !13, line: 38, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !12, file: !13, line: 93, baseType: !11, size: 64, offset: 1344)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !12, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !12, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!64 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !12, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !12, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20)
!70 = !DISubprogram(name: "dcgettext", scope: !71, file: !71, line: 51, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!71 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!72 = !DISubroutineType(types: !73)
!73 = !{!17, !74, !74, !10}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!76 = !DISubprogram(name: "quotearg_colon", scope: !77, file: !77, line: 391, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!77 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !DISubroutineType(types: !79)
!79 = !{!17, !74}
!80 = !DISubprogram(name: "error", scope: !81, file: !81, line: 52, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !10, !10, !74, null}
!84 = !{!0, !85}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !3, line: 56, type: !87, isLocal: true, isDefinition: true)
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "exit_failure", scope: !90, file: !91, line: 24, type: !93, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !92, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!92 = !{!88}
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "long_options", scope: !96, file: !97, line: 34, type: !159, isLocal: true, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !158, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!98 = !{!99, !114}
!99 = !DISubprogram(name: "getopt_long", scope: !100, file: !100, line: 66, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!100 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!101 = !DISubroutineType(types: !102)
!102 = !{!10, !10, !103, !74, !105, !112}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !100, line: 50, size: 256, elements: !108)
!108 = !{!109, !110, !111, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !100, line: 52, baseType: !74, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !107, file: !100, line: 55, baseType: !10, size: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !107, file: !100, line: 56, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !107, file: !100, line: 57, baseType: !10, size: 32, offset: 192)
!114 = !DISubprogram(name: "version_etc_va", scope: !115, file: !115, line: 63, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!115 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118, !74, !74, !74, !150}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !119, file: !13, line: 51, baseType: !10, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !119, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !119, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !119, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !119, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !119, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !119, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !119, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !119, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !119, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !119, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !119, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !119, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !119, file: !13, line: 70, baseType: !118, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !119, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !119, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !119, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !119, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !119, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !119, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !119, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !119, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !119, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !119, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !119, file: !13, line: 93, baseType: !118, size: 64, offset: 1344)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !119, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !119, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !119, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !119, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !97, line: 72, size: 192, elements: !152)
!152 = !{!153, !155, !156, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !151, file: !97, line: 72, baseType: !154, size: 32)
!154 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !151, file: !97, line: 72, baseType: !154, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !151, file: !97, line: 72, baseType: !60, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !151, file: !97, line: 72, baseType: !60, size: 64, offset: 128)
!158 = !{!94}
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 768, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "program_name", scope: !164, file: !165, line: 33, type: !74, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !166, globals: !203, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !{!60, !167, !17}
!167 = !DISubprogram(name: "fputs", scope: !168, file: !168, line: 626, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!169 = !DISubroutineType(types: !170)
!170 = !{!10, !74, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !13, line: 51, baseType: !10, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !13, line: 70, baseType: !171, size: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !172, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !172, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !172, file: !13, line: 93, baseType: !171, size: 64, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !172, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!203 = !{!162}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !206, file: !207, line: 85, type: !343, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !208, retainedTypes: !242, globals: !316, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!209, !222, !227}
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !77, line: 32, baseType: !154, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!211 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!212 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!213 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!214 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!215 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!216 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!217 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!218 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!219 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!220 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!221 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !77, line: 242, baseType: !154, size: 32, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!226 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !228, line: 46, baseType: !154, size: 32, elements: !229)
!228 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!230 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!231 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!232 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!233 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!234 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!235 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!238 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!241 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!242 = !{!243, !249, !265, !269, !10, !40, !272, !62, !289, !293, !70, !299, !303, !17, !307, !310, !313}
!243 = !DISubprogram(name: "xmemdup", scope: !244, file: !244, line: 62, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!244 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = !DISubroutineType(types: !246)
!246 = !{!60, !247, !64}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DISubprogram(name: "quotearg_alloc_mem", scope: !77, file: !77, line: 342, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!250 = !DISubroutineType(types: !251)
!251 = !{!17, !74, !64, !252, !253}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !207, line: 65, size: 448, elements: !256)
!256 = !{!257, !258, !259, !263, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !255, file: !207, line: 68, baseType: !209, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !207, line: 71, baseType: !10, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !255, file: !207, line: 75, baseType: !260, size: 256, offset: 64)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !255, file: !207, line: 78, baseType: !74, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !255, file: !207, line: 81, baseType: !74, size: 64, offset: 384)
!265 = !DISubprogram(name: "free", scope: !266, file: !266, line: 565, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!266 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!267 = !DISubroutineType(types: !268)
!268 = !{null, !60}
!269 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !77, file: !77, line: 408, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!270 = !DISubroutineType(types: !271)
!271 = !{!17, !10, !74, !74, !74, !64}
!272 = !DISubprogram(name: "rpl_mbrtowc", scope: !273, file: !273, line: 717, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!273 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!274 = !DISubroutineType(types: !275)
!275 = !{!64, !112, !74, !64, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 13, size: 64, elements: !279)
!278 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !277, file: !278, line: 15, baseType: !10, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !277, file: !278, line: 20, baseType: !282, size: 32, offset: 32)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 16, size: 32, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !282, file: !278, line: 18, baseType: !154, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !282, file: !278, line: 19, baseType: !286, size: 32)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 4)
!289 = !DISubprogram(name: "iswprint", scope: !290, file: !290, line: 120, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!290 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!291 = !DISubroutineType(types: !292)
!292 = !{!10, !154}
!293 = !DISubprogram(name: "mbsinit", scope: !294, file: !294, line: 292, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!294 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!295 = !DISubroutineType(types: !296)
!296 = !{!10, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!299 = !DISubprogram(name: "locale_charset", scope: !300, file: !300, line: 35, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!300 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !DISubroutineType(types: !302)
!302 = !{!74}
!303 = !DISubprogram(name: "c_strcasecmp", scope: !304, file: !304, line: 42, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!304 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!305 = !DISubroutineType(types: !306)
!306 = !{!10, !74, !74}
!307 = !DISubprogram(name: "xmalloc", scope: !244, file: !244, line: 53, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!308 = !DISubroutineType(types: !309)
!309 = !{!60, !64}
!310 = !DISubprogram(name: "xalloc_die", scope: !244, file: !244, line: 51, type: !311, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!311 = !DISubroutineType(types: !312)
!312 = !{null}
!313 = !DISubprogram(name: "xrealloc", scope: !244, file: !244, line: 59, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{!60, !60, !64}
!316 = !{!204, !317, !323, !325, !327, !332, !339, !341}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !206, file: !207, line: 101, type: !319, isLocal: false, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 320, elements: !321)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!321 = !{!322}
!322 = !DISubrange(count: 10)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !206, file: !207, line: 1052, type: !255, isLocal: false, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !206, file: !207, line: 116, type: !255, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "slot0", scope: !206, file: !207, line: 842, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 256)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slotvec", scope: !206, file: !207, line: 845, type: !334, isLocal: true, isDefinition: true)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !207, line: 834, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !335, file: !207, line: 836, baseType: !62, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !207, line: 837, baseType: !17, size: 64, offset: 64)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "nslots", scope: !206, file: !207, line: 843, type: !10, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "slotvec0", scope: !206, file: !207, line: 844, type: !335, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 704, elements: !345)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!345 = !{!346}
!346 = !DISubrange(count: 11)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !349, file: !350, line: 26, type: !352, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !351, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!351 = !{!347}
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 47)
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "src/getlimits.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!357 = !{!358}
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !359, line: 52, baseType: !154, size: 32, elements: !360)
!359 = !DIFile(filename: "./lib/ftoastr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1, isUnsigned: true)
!362 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2, isUnsigned: true)
!363 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4, isUnsigned: true)
!364 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8, isUnsigned: true)
!365 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16, isUnsigned: true)
!366 = !{!70, !367, !402, !406, !410, !413, !414, !74, !60, !418, !426, !429, !431, !433, !436, !439, !441, !443, !444, !448, !451, !455}
!367 = !DISubprogram(name: "fputs_unlocked", scope: !168, file: !168, line: 662, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{!10, !74, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !371, file: !13, line: 51, baseType: !10, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !371, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !371, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !371, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !371, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !371, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !371, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !371, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !371, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !371, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !371, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !371, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !371, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !371, file: !13, line: 70, baseType: !370, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !371, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !371, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !371, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !371, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !371, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !371, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !371, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !371, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !371, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !371, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !371, file: !13, line: 93, baseType: !370, size: 64, offset: 1344)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !371, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !371, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !371, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !371, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!402 = !DISubprogram(name: "set_program_name", scope: !403, file: !403, line: 37, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!403 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!404 = !DISubroutineType(types: !405)
!405 = !{null, !74}
!406 = !DISubprogram(name: "setlocale", scope: !407, file: !407, line: 122, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!407 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!408 = !DISubroutineType(types: !409)
!409 = !{!17, !10, !74}
!410 = !DISubprogram(name: "bindtextdomain", scope: !71, file: !71, line: 86, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{!17, !74, !74}
!413 = !DISubprogram(name: "textdomain", scope: !71, file: !71, line: 82, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!414 = !DISubprogram(name: "atexit", scope: !266, file: !266, line: 595, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{!10, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!418 = !DISubprogram(name: "parse_long_options", scope: !419, file: !419, line: 25, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!419 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = !DISubroutineType(types: !421)
!421 = !{null, !10, !422, !74, !74, !74, !423, null}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !10}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !427, line: 102, baseType: !428)
!427 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 73, baseType: !64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !427, line: 101, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !37, line: 72, baseType: !38)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 77, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 193, baseType: !38)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !434, line: 7, baseType: !435)
!434 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 160, baseType: !38)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !437, line: 79, baseType: !438)
!437 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 146, baseType: !154)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !437, line: 64, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 147, baseType: !154)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !437, line: 97, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !37, line: 154, baseType: !10)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !168, line: 63, baseType: !36)
!444 = !DISubprogram(name: "ftoastr", scope: !359, file: !359, line: 47, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{!10, !17, !64, !10, !10, !447}
!447 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!448 = !DISubprogram(name: "puts", scope: !168, file: !168, line: 632, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!449 = !DISubroutineType(types: !450)
!450 = !{!10, !74}
!451 = !DISubprogram(name: "dtoastr", scope: !359, file: !359, line: 48, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!452 = !DISubroutineType(types: !453)
!453 = !{!10, !17, !64, !10, !10, !454}
!454 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!455 = !DISubprogram(name: "ldtoastr", scope: !359, file: !359, line: 49, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{!10, !17, !64, !10, !10, !458}
!458 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/dtoastr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/ldtoastr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !467, retainedTypes: !471, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!468}
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !466, line: 40, baseType: !154, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!471 = !{!70, !472, !60}
!472 = !DISubprogram(name: "fputs_unlocked", scope: !168, file: !168, line: 662, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{!10, !74, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !476, file: !13, line: 51, baseType: !10, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !476, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !476, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !476, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !476, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !476, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !476, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !476, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !476, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !476, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !476, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !476, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !476, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !476, file: !13, line: 70, baseType: !475, size: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !476, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !476, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !476, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !476, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !476, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !476, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !476, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !476, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !476, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !476, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !476, file: !13, line: 93, baseType: !475, size: 64, offset: 1344)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !476, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !476, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !476, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !476, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !509, retainedTypes: !522, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!509 = !{!510}
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !511, file: !244, line: 186, baseType: !154, size: 32, elements: !520)
!511 = distinct !DISubprogram(name: "x2nrealloc", scope: !244, file: !244, line: 174, type: !512, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !515)
!512 = !DISubroutineType(types: !513)
!513 = !{!60, !60, !514, !62}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!515 = !{!516, !517, !518, !519}
!516 = !DILocalVariable(name: "p", arg: 1, scope: !511, file: !244, line: 174, type: !60)
!517 = !DILocalVariable(name: "pn", arg: 2, scope: !511, file: !244, line: 174, type: !514)
!518 = !DILocalVariable(name: "s", arg: 3, scope: !511, file: !244, line: 174, type: !62)
!519 = !DILocalVariable(name: "n", scope: !511, file: !244, line: 176, type: !62)
!520 = !{!521}
!521 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!522 = !{!62, !310, !307, !313, !17, !265, !60, !523, !526}
!523 = !DISubprogram(name: "xcalloc", scope: !244, file: !244, line: 57, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{!60, !64, !64}
!526 = !DISubprogram(name: "rpl_calloc", scope: !527, file: !527, line: 688, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!527 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!530 = !{!70, !80}
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !533, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!533 = !{!60}
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536, splitDebugInlining: false, nameTableKind: None)
!535 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!536 = !{!537, !62, !549}
!537 = !DISubprogram(name: "mbrtowc", scope: !294, file: !294, line: 296, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!538 = !DISubroutineType(types: !539)
!539 = !{!64, !112, !74, !64, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 13, size: 64, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !541, file: !278, line: 15, baseType: !10, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !541, file: !278, line: 20, baseType: !545, size: 32, offset: 32)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !278, line: 16, size: 32, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !545, file: !278, line: 18, baseType: !154, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !545, file: !278, line: 19, baseType: !286, size: 32)
!549 = !DISubprogram(name: "hard_locale", scope: !550, file: !550, line: 26, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!550 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!551 = !DISubroutineType(types: !552)
!552 = !{!87, !10}
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !555, splitDebugInlining: false, nameTableKind: None)
!554 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!555 = !{!556}
!556 = !DISubprogram(name: "rpl_fclose", scope: !557, file: !557, line: 672, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!557 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!558 = !DISubroutineType(types: !559)
!559 = !{!10, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !561, file: !13, line: 51, baseType: !10, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !561, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !561, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !561, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !561, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !561, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !561, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !561, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !561, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !561, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !561, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !561, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !561, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !561, file: !13, line: 70, baseType: !560, size: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !561, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !561, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !561, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !561, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !561, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !561, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !561, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !561, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !561, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !561, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !561, file: !13, line: 93, baseType: !560, size: 64, offset: 1344)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !561, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !561, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !561, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !561, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!594 = !{!595}
!595 = !DISubprogram(name: "setlocale_null_r", scope: !596, file: !596, line: 64, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!596 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !DISubroutineType(types: !598)
!598 = !{!10, !10, !17, !64}
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !601, retainedTypes: !988, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !{!602}
!602 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !603, line: 41, baseType: !154, size: 32, elements: !604)
!603 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987}
!605 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!606 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!607 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!608 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!609 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!610 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!611 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!612 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!613 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!614 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!615 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!616 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!617 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!618 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!619 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!620 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!621 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!622 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!623 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!624 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!625 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!626 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!627 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!628 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!629 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!630 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!631 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!632 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!633 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!634 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!635 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!636 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!637 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!638 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!639 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!640 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!641 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!642 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!643 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!644 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!645 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!646 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!647 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!648 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!649 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!650 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!651 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!652 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!653 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!654 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!713 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!716 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!717 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!718 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!719 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!720 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!721 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!722 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!723 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!724 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!725 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!726 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!727 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!800 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!873 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!874 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!875 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!876 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!877 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!878 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!879 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!880 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!881 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!882 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!883 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!884 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!885 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!886 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!887 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!889 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!890 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!891 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!892 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!893 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!894 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!920 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!921 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!922 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!923 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!924 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!929 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!930 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!931 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!932 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!988 = !{!989, !60}
!989 = !DISubprogram(name: "nl_langinfo", scope: !603, file: !603, line: 661, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!990 = !DISubroutineType(types: !991)
!991 = !{!17, !10}
!992 = distinct !DICompileUnit(language: DW_LANG_C99, file: !993, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !994, splitDebugInlining: false, nameTableKind: None)
!993 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!994 = !{!60, !406}
!995 = distinct !DICompileUnit(language: DW_LANG_C99, file: !996, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!997 = !{!998, !1033, !1034, !1038}
!998 = !DISubprogram(name: "fileno", scope: !168, file: !168, line: 786, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!10, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1002, file: !13, line: 51, baseType: !10, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1002, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1002, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1002, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1002, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1002, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1002, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1002, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1002, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1002, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1002, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1002, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1002, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1002, file: !13, line: 70, baseType: !1001, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1002, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1002, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1002, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1002, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1002, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1002, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1002, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1002, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1002, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1002, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1002, file: !13, line: 93, baseType: !1001, size: 64, offset: 1344)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1002, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1002, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1002, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1002, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!1033 = !DISubprogram(name: "fclose", scope: !168, file: !168, line: 213, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1034 = !DISubprogram(name: "lseek", scope: !1035, file: !1035, line: 334, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1035 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!38, !10, !38, !10}
!1038 = !DISubprogram(name: "rpl_fflush", scope: !557, file: !557, line: 718, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1039 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1040, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1041, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1041 = !{!60, !1042, !1077}
!1042 = !DISubprogram(name: "fflush", scope: !168, file: !168, line: 218, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!10, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1046, file: !13, line: 51, baseType: !10, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1046, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1046, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1046, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1046, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1046, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1046, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1046, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1046, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1046, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1046, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1046, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1046, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1046, file: !13, line: 70, baseType: !1045, size: 64, offset: 832)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1046, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1046, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1046, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1046, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1046, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1046, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1046, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1046, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1046, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1046, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1046, file: !13, line: 93, baseType: !1045, size: 64, offset: 1344)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1046, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1046, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1046, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1046, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!1077 = !DISubprogram(name: "rpl_fseeko", scope: !557, file: !557, line: 1034, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!10, !1045, !38, !10}
!1080 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1081, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1082, splitDebugInlining: false, nameTableKind: None)
!1081 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1082 = !{!60, !1083, !1034, !1118}
!1083 = !DISubprogram(name: "fileno", scope: !168, file: !168, line: 786, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!10, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1087, file: !13, line: 51, baseType: !10, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1087, file: !13, line: 54, baseType: !17, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1087, file: !13, line: 55, baseType: !17, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1087, file: !13, line: 56, baseType: !17, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1087, file: !13, line: 57, baseType: !17, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1087, file: !13, line: 58, baseType: !17, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1087, file: !13, line: 59, baseType: !17, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1087, file: !13, line: 60, baseType: !17, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1087, file: !13, line: 61, baseType: !17, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1087, file: !13, line: 64, baseType: !17, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1087, file: !13, line: 65, baseType: !17, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1087, file: !13, line: 66, baseType: !17, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1087, file: !13, line: 68, baseType: !30, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1087, file: !13, line: 70, baseType: !1086, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1087, file: !13, line: 72, baseType: !10, size: 32, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1087, file: !13, line: 73, baseType: !10, size: 32, offset: 928)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1087, file: !13, line: 74, baseType: !36, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1087, file: !13, line: 77, baseType: !40, size: 16, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1087, file: !13, line: 78, baseType: !42, size: 8, offset: 1040)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1087, file: !13, line: 79, baseType: !44, size: 8, offset: 1048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1087, file: !13, line: 81, baseType: !48, size: 64, offset: 1088)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1087, file: !13, line: 89, baseType: !51, size: 64, offset: 1152)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1087, file: !13, line: 91, baseType: !53, size: 64, offset: 1216)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1087, file: !13, line: 92, baseType: !56, size: 64, offset: 1280)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1087, file: !13, line: 93, baseType: !1086, size: 64, offset: 1344)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1087, file: !13, line: 94, baseType: !60, size: 64, offset: 1408)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1087, file: !13, line: 95, baseType: !62, size: 64, offset: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1087, file: !13, line: 96, baseType: !10, size: 32, offset: 1536)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1087, file: !13, line: 98, baseType: !67, size: 160, offset: 1568)
!1118 = !DISubprogram(name: "fseeko", scope: !168, file: !168, line: 707, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!10, !1086, !38, !10}
!1121 = !{!"clang version 10.0.0 "}
!1122 = !{i32 7, !"Dwarf Version", i32 4}
!1123 = !{i32 2, !"Debug Info Version", i32 3}
!1124 = !{i32 1, !"wchar_size", i32 4}
!1125 = !{i32 7, !"PIC Level", i32 2}
!1126 = !{i32 7, !"PIE Level", i32 2}
!1127 = distinct !DISubprogram(name: "usage", scope: !356, file: !356, line: 60, type: !424, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1128)
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "status", arg: 1, scope: !1127, file: !356, line: 60, type: !10)
!1130 = !DILocalVariable(name: "infomap", scope: !1131, file: !1132, line: 636, type: !1144)
!1131 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1132, file: !1132, line: 634, type: !404, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1133)
!1132 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1133 = !{!1134, !1130, !1135, !1136, !1143}
!1134 = !DILocalVariable(name: "program", arg: 1, scope: !1131, file: !1132, line: 634, type: !74)
!1135 = !DILocalVariable(name: "node", scope: !1131, file: !1132, line: 646, type: !74)
!1136 = !DILocalVariable(name: "map_prog", scope: !1131, file: !1132, line: 647, type: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1131, file: !1132, line: 636, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1139, file: !1132, line: 636, baseType: !74, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1139, file: !1132, line: 636, baseType: !74, size: 64, offset: 64)
!1143 = !DILocalVariable(name: "lc_messages", scope: !1131, file: !1132, line: 659, type: !74)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 896, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 7)
!1147 = !DILocation(line: 636, column: 67, scope: !1131, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 76, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !356, line: 65, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1127, file: !356, line: 62, column: 7)
!1151 = !DILocation(line: 0, scope: !1127)
!1152 = !DILocation(line: 62, column: 14, scope: !1150)
!1153 = !DILocation(line: 62, column: 7, scope: !1127)
!1154 = !DILocation(line: 63, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !356, line: 63, column: 5)
!1156 = !{!1157, !1157, i64 0}
!1157 = !{!"any pointer", !1158, i64 0}
!1158 = !{!"omnipotent char", !1159, i64 0}
!1159 = !{!"Simple C/C++ TBAA"}
!1160 = !DILocation(line: 66, column: 7, scope: !1149)
!1161 = !DILocation(line: 70, column: 7, scope: !1149)
!1162 = !DILocation(line: 74, column: 7, scope: !1149)
!1163 = !DILocation(line: 75, column: 7, scope: !1149)
!1164 = !DILocation(line: 0, scope: !1131, inlinedAt: !1148)
!1165 = !DILocation(line: 636, column: 3, scope: !1131, inlinedAt: !1148)
!1166 = !DILocation(line: 647, column: 36, scope: !1131, inlinedAt: !1148)
!1167 = !DILocation(line: 649, column: 3, scope: !1131, inlinedAt: !1148)
!1168 = !DILocation(line: 649, column: 33, scope: !1131, inlinedAt: !1148)
!1169 = !DILocation(line: 650, column: 13, scope: !1131, inlinedAt: !1148)
!1170 = !DILocation(line: 649, column: 20, scope: !1131, inlinedAt: !1148)
!1171 = !{!1172, !1157, i64 0}
!1172 = !{!"infomap", !1157, i64 0, !1157, i64 8}
!1173 = !DILocation(line: 649, column: 10, scope: !1131, inlinedAt: !1148)
!1174 = !DILocation(line: 649, column: 28, scope: !1131, inlinedAt: !1148)
!1175 = distinct !{!1175, !1167, !1169}
!1176 = !DILocation(line: 652, column: 17, scope: !1177, inlinedAt: !1148)
!1177 = distinct !DILexicalBlock(scope: !1131, file: !1132, line: 652, column: 7)
!1178 = !{!1172, !1157, i64 8}
!1179 = !DILocation(line: 652, column: 7, scope: !1177, inlinedAt: !1148)
!1180 = !DILocation(line: 652, column: 7, scope: !1131, inlinedAt: !1148)
!1181 = !DILocation(line: 655, column: 3, scope: !1131, inlinedAt: !1148)
!1182 = !DILocation(line: 659, column: 29, scope: !1131, inlinedAt: !1148)
!1183 = !DILocation(line: 660, column: 7, scope: !1184, inlinedAt: !1148)
!1184 = distinct !DILexicalBlock(scope: !1131, file: !1132, line: 660, column: 7)
!1185 = !DILocation(line: 660, column: 19, scope: !1184, inlinedAt: !1148)
!1186 = !DILocation(line: 660, column: 22, scope: !1184, inlinedAt: !1148)
!1187 = !DILocation(line: 660, column: 7, scope: !1131, inlinedAt: !1148)
!1188 = !DILocation(line: 666, column: 7, scope: !1189, inlinedAt: !1148)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !1132, line: 661, column: 5)
!1190 = !DILocation(line: 668, column: 5, scope: !1189, inlinedAt: !1148)
!1191 = !DILocation(line: 669, column: 3, scope: !1131, inlinedAt: !1148)
!1192 = !DILocation(line: 671, column: 3, scope: !1131, inlinedAt: !1148)
!1193 = !DILocation(line: 673, column: 1, scope: !1131, inlinedAt: !1148)
!1194 = !DILocation(line: 78, column: 3, scope: !1127)
!1195 = distinct !DISubprogram(name: "main", scope: !356, file: !356, line: 115, type: !1196, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!10, !10, !422}
!1198 = !{!1199, !1200, !1201}
!1199 = !DILocalVariable(name: "argc", arg: 1, scope: !1195, file: !356, line: 115, type: !10)
!1200 = !DILocalVariable(name: "argv", arg: 2, scope: !1195, file: !356, line: 115, type: !422)
!1201 = !DILocalVariable(name: "limit", scope: !1195, file: !356, line: 117, type: !1202)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 176, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 22)
!1205 = !DILocalVariable(name: "buf", scope: !1206, file: !356, line: 111, type: !1211)
!1206 = distinct !DISubprogram(name: "print_DBL", scope: !356, file: !356, line: 111, type: !1207, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !454}
!1209 = !{!1210, !1205}
!1210 = !DILocalVariable(name: "x", arg: 1, scope: !1206, file: !356, line: 111, type: !454)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 40)
!1214 = !DILocation(line: 111, column: 1, scope: !1206, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 168, column: 3, scope: !1195)
!1216 = !DILocation(line: 111, column: 1, scope: !1206, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 168, column: 3, scope: !1195)
!1218 = !DILocalVariable(name: "buf", scope: !1219, file: !356, line: 110, type: !1224)
!1219 = distinct !DISubprogram(name: "print_FLT", scope: !356, file: !356, line: 110, type: !1220, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !447}
!1222 = !{!1223, !1218}
!1223 = !DILocalVariable(name: "x", arg: 1, scope: !1219, file: !356, line: 110, type: !447)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 248, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 31)
!1227 = !DILocation(line: 110, column: 1, scope: !1219, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 167, column: 3, scope: !1195)
!1229 = !DILocation(line: 110, column: 1, scope: !1219, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 167, column: 3, scope: !1195)
!1231 = !DILocalVariable(name: "buf", scope: !1232, file: !356, line: 112, type: !1237)
!1232 = distinct !DISubprogram(name: "print_LDBL", scope: !356, file: !356, line: 112, type: !1233, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !458}
!1235 = !{!1236, !1231}
!1236 = !DILocalVariable(name: "x", arg: 1, scope: !1232, file: !356, line: 112, type: !458)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 360, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 45)
!1240 = !DILocation(line: 112, column: 1, scope: !1232, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 169, column: 3, scope: !1195)
!1242 = !DILocation(line: 112, column: 1, scope: !1232, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 169, column: 3, scope: !1195)
!1244 = !DILocation(line: 0, scope: !1195)
!1245 = !DILocation(line: 117, column: 3, scope: !1195)
!1246 = !DILocation(line: 117, column: 8, scope: !1195)
!1247 = !DILocation(line: 121, column: 21, scope: !1195)
!1248 = !DILocation(line: 121, column: 3, scope: !1195)
!1249 = !DILocation(line: 122, column: 3, scope: !1195)
!1250 = !DILocation(line: 123, column: 3, scope: !1195)
!1251 = !DILocation(line: 124, column: 3, scope: !1195)
!1252 = !DILocation(line: 127, column: 3, scope: !1195)
!1253 = !DILocation(line: 129, column: 3, scope: !1195)
!1254 = !DILocation(line: 148, column: 3, scope: !1195)
!1255 = !DILocalVariable(name: "buf", arg: 1, scope: !1256, file: !356, line: 86, type: !17)
!1256 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !356, file: !356, line: 86, type: !1257, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!74, !17}
!1259 = !{!1255, !1260, !1261, !1262, !1263}
!1260 = !DILocalVariable(name: "negative", scope: !1256, file: !356, line: 88, type: !87)
!1261 = !DILocalVariable(name: "absnum", scope: !1256, file: !356, line: 89, type: !17)
!1262 = !DILocalVariable(name: "p", scope: !1256, file: !356, line: 90, type: !17)
!1263 = !DILocalVariable(name: "result", scope: !1256, file: !356, line: 95, type: !17)
!1264 = !DILocation(line: 0, scope: !1256, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 148, column: 3, scope: !1195)
!1266 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1265)
!1267 = !{!1158, !1158, i64 0}
!1268 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1265)
!1269 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1265)
!1270 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1265)
!1271 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1265)
!1272 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1265)
!1273 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1265)
!1274 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1265)
!1275 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1265)
!1276 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1265)
!1277 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1265)
!1278 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1265)
!1279 = distinct !{!1279, !1277, !1280}
!1280 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1265)
!1281 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1265)
!1282 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1265)
!1283 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1265)
!1284 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1265)
!1285 = distinct !DILexicalBlock(scope: !1256, file: !356, line: 96, column: 7)
!1286 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1265)
!1287 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1265)
!1288 = !DILocation(line: 148, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !356, line: 148, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 148, column: 3)
!1291 = !DILocation(line: 0, scope: !1256, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 148, column: 3, scope: !1289)
!1293 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1292)
!1294 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1292)
!1295 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1292)
!1296 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1292)
!1297 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1292)
!1298 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1292)
!1299 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1292)
!1300 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1292)
!1301 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1292)
!1302 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1292)
!1303 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1292)
!1304 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1292)
!1305 = distinct !{!1305, !1303, !1306}
!1306 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1292)
!1307 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1292)
!1308 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1292)
!1309 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1292)
!1310 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1292)
!1311 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1292)
!1312 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1292)
!1313 = !DILocation(line: 149, column: 3, scope: !1195)
!1314 = !DILocation(line: 0, scope: !1256, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 149, column: 3, scope: !1195)
!1316 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1315)
!1317 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1315)
!1318 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1315)
!1319 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1315)
!1320 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1315)
!1321 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1315)
!1322 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1315)
!1323 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1315)
!1324 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1315)
!1325 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1315)
!1326 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1315)
!1327 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1315)
!1328 = distinct !{!1328, !1326, !1329}
!1329 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1315)
!1330 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1315)
!1331 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1315)
!1332 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1315)
!1333 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1315)
!1334 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1315)
!1335 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1315)
!1336 = !DILocation(line: 149, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !356, line: 149, column: 3)
!1338 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 149, column: 3)
!1339 = !DILocation(line: 0, scope: !1256, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 149, column: 3, scope: !1337)
!1341 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1340)
!1342 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1340)
!1343 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1340)
!1344 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1340)
!1345 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1340)
!1346 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1340)
!1347 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1340)
!1348 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1340)
!1349 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1340)
!1350 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1340)
!1351 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1340)
!1352 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1340)
!1353 = distinct !{!1353, !1351, !1354}
!1354 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1340)
!1355 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1340)
!1356 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1340)
!1357 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1340)
!1358 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1340)
!1359 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1340)
!1360 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1340)
!1361 = !DILocation(line: 150, column: 3, scope: !1195)
!1362 = !DILocation(line: 0, scope: !1256, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 150, column: 3, scope: !1195)
!1364 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1363)
!1365 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1363)
!1366 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1363)
!1367 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1363)
!1368 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1363)
!1369 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1363)
!1370 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1363)
!1371 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1363)
!1372 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1363)
!1373 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1363)
!1374 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1363)
!1375 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1363)
!1376 = distinct !{!1376, !1374, !1377}
!1377 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1363)
!1378 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1363)
!1379 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1363)
!1380 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1363)
!1381 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1363)
!1382 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1363)
!1383 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1363)
!1384 = !DILocation(line: 151, column: 3, scope: !1195)
!1385 = !DILocation(line: 0, scope: !1256, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 151, column: 3, scope: !1195)
!1387 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1386)
!1388 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1386)
!1389 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1386)
!1390 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1386)
!1391 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1386)
!1392 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1386)
!1393 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1386)
!1394 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1386)
!1395 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1386)
!1396 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1386)
!1397 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1386)
!1398 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1386)
!1399 = distinct !{!1399, !1397, !1400}
!1400 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1386)
!1401 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1386)
!1402 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1386)
!1403 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1386)
!1404 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1386)
!1405 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1386)
!1406 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1386)
!1407 = !DILocation(line: 151, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !356, line: 151, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 151, column: 3)
!1410 = !DILocation(line: 0, scope: !1256, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 151, column: 3, scope: !1408)
!1412 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1411)
!1413 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1411)
!1414 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1411)
!1415 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1411)
!1416 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1411)
!1417 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1411)
!1418 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1411)
!1419 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1411)
!1420 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1411)
!1421 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1411)
!1422 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1411)
!1423 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1411)
!1424 = distinct !{!1424, !1422, !1425}
!1425 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1411)
!1426 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1411)
!1427 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1411)
!1428 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1411)
!1429 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1411)
!1430 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1411)
!1431 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1411)
!1432 = !DILocation(line: 152, column: 3, scope: !1195)
!1433 = !DILocation(line: 0, scope: !1256, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 152, column: 3, scope: !1195)
!1435 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1434)
!1436 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1434)
!1437 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1434)
!1438 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1434)
!1439 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1434)
!1440 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1434)
!1441 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1434)
!1442 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1434)
!1443 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1434)
!1444 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1434)
!1445 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1434)
!1446 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1434)
!1447 = distinct !{!1447, !1445, !1448}
!1448 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1434)
!1449 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1434)
!1450 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1434)
!1451 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1434)
!1452 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1434)
!1453 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1434)
!1454 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1434)
!1455 = !DILocation(line: 152, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !356, line: 152, column: 3)
!1457 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 152, column: 3)
!1458 = !DILocation(line: 0, scope: !1256, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 152, column: 3, scope: !1456)
!1460 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1459)
!1461 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1459)
!1462 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1459)
!1463 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1459)
!1464 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1459)
!1465 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1459)
!1466 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1459)
!1467 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1459)
!1468 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1459)
!1469 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1459)
!1470 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1459)
!1471 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1459)
!1472 = distinct !{!1472, !1470, !1473}
!1473 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1459)
!1474 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1459)
!1475 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1459)
!1476 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1459)
!1477 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1459)
!1478 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1459)
!1479 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1459)
!1480 = !DILocation(line: 153, column: 3, scope: !1195)
!1481 = !DILocation(line: 0, scope: !1256, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 153, column: 3, scope: !1195)
!1483 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1482)
!1484 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1482)
!1485 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1482)
!1486 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1482)
!1487 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1482)
!1488 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1482)
!1489 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1482)
!1490 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1482)
!1491 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1482)
!1492 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1482)
!1493 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1482)
!1494 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1482)
!1495 = distinct !{!1495, !1493, !1496}
!1496 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1482)
!1497 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1482)
!1498 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1482)
!1499 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1482)
!1500 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1482)
!1501 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1482)
!1502 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1482)
!1503 = !DILocation(line: 154, column: 3, scope: !1195)
!1504 = !DILocation(line: 0, scope: !1256, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 154, column: 3, scope: !1195)
!1506 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1505)
!1507 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1505)
!1508 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1505)
!1509 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1505)
!1510 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1505)
!1511 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1505)
!1512 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1505)
!1513 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1505)
!1514 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1505)
!1515 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1505)
!1516 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1505)
!1517 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1505)
!1518 = distinct !{!1518, !1516, !1519}
!1519 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1505)
!1520 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1505)
!1521 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1505)
!1522 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1505)
!1523 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1505)
!1524 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1505)
!1525 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1505)
!1526 = !DILocation(line: 154, column: 3, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !356, line: 154, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 154, column: 3)
!1529 = !DILocation(line: 0, scope: !1256, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 154, column: 3, scope: !1527)
!1531 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1530)
!1532 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1530)
!1533 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1530)
!1534 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1530)
!1535 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1530)
!1536 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1530)
!1537 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1530)
!1538 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1530)
!1539 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1530)
!1540 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1530)
!1541 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1530)
!1542 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1530)
!1543 = distinct !{!1543, !1541, !1544}
!1544 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1530)
!1545 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1530)
!1546 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1530)
!1547 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1530)
!1548 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1530)
!1549 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1530)
!1550 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1530)
!1551 = !DILocation(line: 155, column: 3, scope: !1195)
!1552 = !DILocation(line: 0, scope: !1256, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 155, column: 3, scope: !1195)
!1554 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1553)
!1555 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1553)
!1556 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1553)
!1557 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1553)
!1558 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1553)
!1559 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1553)
!1560 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1553)
!1561 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1553)
!1562 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1553)
!1563 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1553)
!1564 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1553)
!1565 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1553)
!1566 = distinct !{!1566, !1564, !1567}
!1567 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1553)
!1568 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1553)
!1569 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1553)
!1570 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1553)
!1571 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1553)
!1572 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1553)
!1573 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1553)
!1574 = !DILocation(line: 156, column: 3, scope: !1195)
!1575 = !DILocation(line: 0, scope: !1256, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 156, column: 3, scope: !1195)
!1577 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1576)
!1578 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1576)
!1579 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1576)
!1580 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1576)
!1581 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1576)
!1582 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1576)
!1583 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1576)
!1584 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1576)
!1585 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1576)
!1586 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1576)
!1587 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1576)
!1588 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1576)
!1589 = distinct !{!1589, !1587, !1590}
!1590 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1576)
!1591 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1576)
!1592 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1576)
!1593 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1576)
!1594 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1576)
!1595 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1576)
!1596 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1576)
!1597 = !DILocation(line: 157, column: 3, scope: !1195)
!1598 = !DILocation(line: 0, scope: !1256, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 157, column: 3, scope: !1195)
!1600 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1599)
!1601 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1599)
!1602 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1599)
!1603 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1599)
!1604 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1599)
!1605 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1599)
!1606 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1599)
!1607 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1599)
!1608 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1599)
!1609 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1599)
!1610 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1599)
!1611 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1599)
!1612 = distinct !{!1612, !1610, !1613}
!1613 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1599)
!1614 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1599)
!1615 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1599)
!1616 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1599)
!1617 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1599)
!1618 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1599)
!1619 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1599)
!1620 = !DILocation(line: 157, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !356, line: 157, column: 3)
!1622 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 157, column: 3)
!1623 = !DILocation(line: 0, scope: !1256, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 157, column: 3, scope: !1621)
!1625 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1624)
!1626 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1624)
!1627 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1624)
!1628 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1624)
!1629 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1624)
!1630 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1624)
!1631 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1624)
!1632 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1624)
!1633 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1624)
!1634 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1624)
!1635 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1624)
!1636 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1624)
!1637 = distinct !{!1637, !1635, !1638}
!1638 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1624)
!1639 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1624)
!1640 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1624)
!1641 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1624)
!1642 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1624)
!1643 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1624)
!1644 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1624)
!1645 = !DILocation(line: 158, column: 3, scope: !1195)
!1646 = !DILocation(line: 0, scope: !1256, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 158, column: 3, scope: !1195)
!1648 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1647)
!1649 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1647)
!1650 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1647)
!1651 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1647)
!1652 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1647)
!1653 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1647)
!1654 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1647)
!1655 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1647)
!1656 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1647)
!1657 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1647)
!1658 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1647)
!1659 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1647)
!1660 = distinct !{!1660, !1658, !1661}
!1661 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1647)
!1662 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1647)
!1663 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1647)
!1664 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1647)
!1665 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1647)
!1666 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1647)
!1667 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1647)
!1668 = !DILocation(line: 158, column: 3, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !356, line: 158, column: 3)
!1670 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 158, column: 3)
!1671 = !DILocation(line: 0, scope: !1256, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 158, column: 3, scope: !1669)
!1673 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1672)
!1674 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1672)
!1675 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1672)
!1676 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1672)
!1677 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1672)
!1678 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1672)
!1679 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1672)
!1680 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1672)
!1681 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1672)
!1682 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1672)
!1683 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1672)
!1684 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1672)
!1685 = distinct !{!1685, !1683, !1686}
!1686 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1672)
!1687 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1672)
!1688 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1672)
!1689 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1672)
!1690 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1672)
!1691 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1672)
!1692 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1672)
!1693 = !DILocation(line: 159, column: 3, scope: !1195)
!1694 = !DILocation(line: 0, scope: !1256, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 159, column: 3, scope: !1195)
!1696 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1695)
!1697 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1695)
!1698 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1695)
!1699 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1695)
!1700 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1695)
!1701 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1695)
!1702 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1695)
!1703 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1695)
!1704 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1695)
!1705 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1695)
!1706 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1695)
!1707 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1695)
!1708 = distinct !{!1708, !1706, !1709}
!1709 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1695)
!1710 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1695)
!1711 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1695)
!1712 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1695)
!1713 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1695)
!1714 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1695)
!1715 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1695)
!1716 = !DILocation(line: 160, column: 3, scope: !1195)
!1717 = !DILocation(line: 0, scope: !1256, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 160, column: 3, scope: !1195)
!1719 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1718)
!1720 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1718)
!1721 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1718)
!1722 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1718)
!1723 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1718)
!1724 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1718)
!1725 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1718)
!1726 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1718)
!1727 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1718)
!1728 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1718)
!1729 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1718)
!1730 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1718)
!1731 = distinct !{!1731, !1729, !1732}
!1732 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1718)
!1733 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1718)
!1734 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1718)
!1735 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1718)
!1736 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1718)
!1737 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1718)
!1738 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1718)
!1739 = !DILocation(line: 161, column: 3, scope: !1195)
!1740 = !DILocation(line: 0, scope: !1256, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 161, column: 3, scope: !1195)
!1742 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1741)
!1743 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1741)
!1744 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1741)
!1745 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1741)
!1746 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1741)
!1747 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1741)
!1748 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1741)
!1749 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1741)
!1750 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1741)
!1751 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1741)
!1752 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1741)
!1753 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1741)
!1754 = distinct !{!1754, !1752, !1755}
!1755 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1741)
!1756 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1741)
!1757 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1741)
!1758 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1741)
!1759 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1741)
!1760 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1741)
!1761 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1741)
!1762 = !DILocation(line: 161, column: 3, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !356, line: 161, column: 3)
!1764 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 161, column: 3)
!1765 = !DILocation(line: 0, scope: !1256, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 161, column: 3, scope: !1763)
!1767 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1766)
!1768 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1766)
!1769 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1766)
!1770 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1766)
!1771 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1766)
!1772 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1766)
!1773 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1766)
!1774 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1766)
!1775 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1766)
!1776 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1766)
!1777 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1766)
!1778 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1766)
!1779 = distinct !{!1779, !1777, !1780}
!1780 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1766)
!1781 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1766)
!1782 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1766)
!1783 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1766)
!1784 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1766)
!1785 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1766)
!1786 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1766)
!1787 = !DILocation(line: 162, column: 3, scope: !1195)
!1788 = !DILocation(line: 0, scope: !1256, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 162, column: 3, scope: !1195)
!1790 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1789)
!1791 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1789)
!1792 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1789)
!1793 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1789)
!1794 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1789)
!1795 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1789)
!1796 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1789)
!1797 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1789)
!1798 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1789)
!1799 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1789)
!1800 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1789)
!1801 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1789)
!1802 = distinct !{!1802, !1800, !1803}
!1803 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1789)
!1804 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1789)
!1805 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1789)
!1806 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1789)
!1807 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1789)
!1808 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1789)
!1809 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1789)
!1810 = !DILocation(line: 162, column: 3, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !356, line: 162, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 162, column: 3)
!1813 = !DILocation(line: 0, scope: !1256, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 162, column: 3, scope: !1811)
!1815 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1814)
!1816 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1814)
!1817 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1814)
!1818 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1814)
!1819 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1814)
!1820 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1814)
!1821 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1814)
!1822 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1814)
!1823 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1814)
!1824 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1814)
!1825 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1814)
!1826 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1814)
!1827 = distinct !{!1827, !1825, !1828}
!1828 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1814)
!1829 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1814)
!1830 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1814)
!1831 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1814)
!1832 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1814)
!1833 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1814)
!1834 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1814)
!1835 = !DILocation(line: 163, column: 3, scope: !1195)
!1836 = !DILocation(line: 0, scope: !1256, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 163, column: 3, scope: !1195)
!1838 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1837)
!1839 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1837)
!1840 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1837)
!1841 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1837)
!1842 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1837)
!1843 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1837)
!1844 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1837)
!1845 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1837)
!1846 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1837)
!1847 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1837)
!1848 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1837)
!1849 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1837)
!1850 = distinct !{!1850, !1848, !1851}
!1851 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1837)
!1852 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1837)
!1853 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1837)
!1854 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1837)
!1855 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1837)
!1856 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1837)
!1857 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1837)
!1858 = !DILocation(line: 163, column: 3, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !356, line: 163, column: 3)
!1860 = distinct !DILexicalBlock(scope: !1195, file: !356, line: 163, column: 3)
!1861 = !DILocation(line: 0, scope: !1256, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 163, column: 3, scope: !1859)
!1863 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1862)
!1864 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1862)
!1865 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1862)
!1866 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1862)
!1867 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1862)
!1868 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1862)
!1869 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1862)
!1870 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1862)
!1871 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1862)
!1872 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1862)
!1873 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1862)
!1874 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1862)
!1875 = distinct !{!1875, !1873, !1876}
!1876 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1862)
!1877 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1862)
!1878 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1862)
!1879 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1862)
!1880 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1862)
!1881 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1862)
!1882 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1862)
!1883 = !DILocation(line: 164, column: 3, scope: !1195)
!1884 = !DILocation(line: 0, scope: !1256, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 164, column: 3, scope: !1195)
!1886 = !DILocation(line: 88, column: 20, scope: !1256, inlinedAt: !1885)
!1887 = !DILocation(line: 88, column: 27, scope: !1256, inlinedAt: !1885)
!1888 = !DILocation(line: 89, column: 26, scope: !1256, inlinedAt: !1885)
!1889 = !DILocation(line: 90, column: 22, scope: !1256, inlinedAt: !1885)
!1890 = !DILocation(line: 90, column: 20, scope: !1256, inlinedAt: !1885)
!1891 = !DILocation(line: 91, column: 3, scope: !1256, inlinedAt: !1885)
!1892 = !DILocation(line: 91, column: 14, scope: !1256, inlinedAt: !1885)
!1893 = !DILocation(line: 92, column: 11, scope: !1256, inlinedAt: !1885)
!1894 = !DILocation(line: 92, column: 10, scope: !1256, inlinedAt: !1885)
!1895 = !DILocation(line: 92, column: 15, scope: !1256, inlinedAt: !1885)
!1896 = !DILocation(line: 92, column: 3, scope: !1256, inlinedAt: !1885)
!1897 = !DILocation(line: 93, column: 8, scope: !1256, inlinedAt: !1885)
!1898 = distinct !{!1898, !1896, !1899}
!1899 = !DILocation(line: 93, column: 10, scope: !1256, inlinedAt: !1885)
!1900 = !DILocation(line: 94, column: 3, scope: !1256, inlinedAt: !1885)
!1901 = !DILocation(line: 95, column: 18, scope: !1256, inlinedAt: !1885)
!1902 = !DILocation(line: 96, column: 7, scope: !1256, inlinedAt: !1885)
!1903 = !DILocation(line: 97, column: 6, scope: !1285, inlinedAt: !1885)
!1904 = !DILocation(line: 97, column: 15, scope: !1285, inlinedAt: !1885)
!1905 = !DILocation(line: 97, column: 5, scope: !1285, inlinedAt: !1885)
!1906 = !DILocation(line: 167, column: 3, scope: !1195)
!1907 = !DILocation(line: 0, scope: !1219, inlinedAt: !1230)
!1908 = !DILocation(line: 0, scope: !1219, inlinedAt: !1228)
!1909 = !DILocation(line: 168, column: 3, scope: !1195)
!1910 = !DILocation(line: 0, scope: !1206, inlinedAt: !1217)
!1911 = !DILocation(line: 0, scope: !1206, inlinedAt: !1215)
!1912 = !DILocation(line: 169, column: 3, scope: !1195)
!1913 = !DILocation(line: 0, scope: !1232, inlinedAt: !1241)
!1914 = !DILocation(line: 0, scope: !1232, inlinedAt: !1243)
!1915 = !DILocation(line: 172, column: 1, scope: !1195)
!1916 = !DILocation(line: 171, column: 3, scope: !1195)
!1917 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !3, file: !3, line: 51, type: !404, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "file", arg: 1, scope: !1917, file: !3, line: 51, type: !74)
!1920 = !DILocation(line: 0, scope: !1917)
!1921 = !DILocation(line: 53, column: 13, scope: !1917)
!1922 = !DILocation(line: 54, column: 1, scope: !1917)
!1923 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !3, file: !3, line: 88, type: !1924, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !87}
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "ignore", arg: 1, scope: !1923, file: !3, line: 88, type: !87)
!1928 = !DILocation(line: 0, scope: !1923)
!1929 = !DILocation(line: 90, column: 16, scope: !1923)
!1930 = !{!1931, !1931, i64 0}
!1931 = !{!"_Bool", !1158, i64 0}
!1932 = !DILocation(line: 91, column: 1, scope: !1923)
!1933 = distinct !DISubprogram(name: "close_stdout", scope: !3, file: !3, line: 117, type: !311, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "write_error", scope: !1936, file: !3, line: 122, type: !74)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 121, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 119, column: 7)
!1938 = !DILocation(line: 119, column: 21, scope: !1937)
!1939 = !DILocation(line: 119, column: 7, scope: !1937)
!1940 = !DILocation(line: 119, column: 29, scope: !1937)
!1941 = !DILocation(line: 120, column: 7, scope: !1937)
!1942 = !DILocation(line: 120, column: 12, scope: !1937)
!1943 = !{i8 0, i8 2}
!1944 = !DILocation(line: 120, column: 25, scope: !1937)
!1945 = !DILocation(line: 120, column: 28, scope: !1937)
!1946 = !{!1947, !1947, i64 0}
!1947 = !{!"int", !1158, i64 0}
!1948 = !DILocation(line: 120, column: 34, scope: !1937)
!1949 = !DILocation(line: 119, column: 7, scope: !1933)
!1950 = !DILocation(line: 122, column: 33, scope: !1936)
!1951 = !DILocation(line: 0, scope: !1936)
!1952 = !DILocation(line: 123, column: 11, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 123, column: 11)
!1954 = !DILocation(line: 0, scope: !1953)
!1955 = !DILocation(line: 123, column: 11, scope: !1936)
!1956 = !DILocation(line: 124, column: 36, scope: !1953)
!1957 = !DILocation(line: 124, column: 9, scope: !1953)
!1958 = !DILocation(line: 127, column: 9, scope: !1953)
!1959 = !DILocation(line: 129, column: 14, scope: !1936)
!1960 = !DILocation(line: 129, column: 7, scope: !1936)
!1961 = !DILocation(line: 134, column: 42, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 134, column: 7)
!1963 = !DILocation(line: 134, column: 28, scope: !1962)
!1964 = !DILocation(line: 134, column: 50, scope: !1962)
!1965 = !DILocation(line: 134, column: 7, scope: !1933)
!1966 = !DILocation(line: 135, column: 12, scope: !1962)
!1967 = !DILocation(line: 135, column: 5, scope: !1962)
!1968 = !DILocation(line: 136, column: 1, scope: !1933)
!1969 = distinct !DISubprogram(name: "dtoastr", scope: !1970, file: !1970, line: 101, type: !1971, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1973)
!1970 = !DIFile(filename: "./lib/ftoastr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!10, !17, !62, !10, !10, !454}
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1982, !1983, !1984, !1985}
!1974 = !DILocalVariable(name: "buf", arg: 1, scope: !1969, file: !1970, line: 101, type: !17)
!1975 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1969, file: !1970, line: 101, type: !62)
!1976 = !DILocalVariable(name: "flags", arg: 3, scope: !1969, file: !1970, line: 101, type: !10)
!1977 = !DILocalVariable(name: "width", arg: 4, scope: !1969, file: !1970, line: 101, type: !10)
!1978 = !DILocalVariable(name: "x", arg: 5, scope: !1969, file: !1970, line: 101, type: !454)
!1979 = !DILocalVariable(name: "promoted_x", scope: !1969, file: !1970, line: 111, type: !454)
!1980 = !DILocalVariable(name: "format", scope: !1969, file: !1970, line: 112, type: !1981)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, elements: !345)
!1982 = !DILocalVariable(name: "abs_x", scope: !1969, file: !1970, line: 113, type: !454)
!1983 = !DILocalVariable(name: "prec", scope: !1969, file: !1970, line: 114, type: !10)
!1984 = !DILocalVariable(name: "p", scope: !1969, file: !1970, line: 116, type: !17)
!1985 = !DILocalVariable(name: "n", scope: !1986, file: !1970, line: 134, type: !10)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !1970, line: 133, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !1970, line: 132, column: 3)
!1988 = distinct !DILexicalBlock(scope: !1969, file: !1970, line: 132, column: 3)
!1989 = !DILocation(line: 0, scope: !1969)
!1990 = !DILocation(line: 112, column: 3, scope: !1969)
!1991 = !DILocation(line: 112, column: 8, scope: !1969)
!1992 = !DILocation(line: 113, column: 19, scope: !1969)
!1993 = !DILocation(line: 113, column: 17, scope: !1969)
!1994 = !DILocation(line: 117, column: 5, scope: !1969)
!1995 = !DILocation(line: 117, column: 8, scope: !1969)
!1996 = !DILocation(line: 120, column: 6, scope: !1969)
!1997 = !DILocation(line: 120, column: 25, scope: !1969)
!1998 = !DILocation(line: 120, column: 15, scope: !1969)
!1999 = !DILocation(line: 121, column: 6, scope: !1969)
!2000 = !DILocation(line: 121, column: 51, scope: !1969)
!2001 = !DILocation(line: 121, column: 15, scope: !1969)
!2002 = !DILocation(line: 122, column: 6, scope: !1969)
!2003 = !DILocation(line: 122, column: 51, scope: !1969)
!2004 = !DILocation(line: 122, column: 15, scope: !1969)
!2005 = !DILocation(line: 123, column: 6, scope: !1969)
!2006 = !DILocation(line: 123, column: 51, scope: !1969)
!2007 = !DILocation(line: 123, column: 15, scope: !1969)
!2008 = !DILocation(line: 125, column: 5, scope: !1969)
!2009 = !DILocation(line: 125, column: 8, scope: !1969)
!2010 = !DILocation(line: 126, column: 5, scope: !1969)
!2011 = !DILocation(line: 126, column: 8, scope: !1969)
!2012 = !DILocation(line: 127, column: 5, scope: !1969)
!2013 = !DILocation(line: 127, column: 8, scope: !1969)
!2014 = !DILocation(line: 129, column: 16, scope: !1969)
!2015 = !DILocation(line: 129, column: 10, scope: !1969)
!2016 = !DILocation(line: 129, column: 5, scope: !1969)
!2017 = !DILocation(line: 129, column: 8, scope: !1969)
!2018 = !DILocation(line: 130, column: 6, scope: !1969)
!2019 = !DILocation(line: 132, column: 21, scope: !1988)
!2020 = !DILocation(line: 132, column: 15, scope: !1988)
!2021 = !DILocation(line: 134, column: 15, scope: !1986)
!2022 = !DILocation(line: 0, scope: !1986)
!2023 = !DILocation(line: 135, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1986, file: !1970, line: 135, column: 11)
!2025 = !DILocation(line: 136, column: 11, scope: !2024)
!2026 = !DILocation(line: 137, column: 15, scope: !2024)
!2027 = !DILocation(line: 137, column: 17, scope: !2024)
!2028 = !DILocation(line: 137, column: 27, scope: !2024)
!2029 = !DILocation(line: 137, column: 30, scope: !2024)
!2030 = !DILocation(line: 137, column: 49, scope: !2024)
!2031 = !DILocation(line: 135, column: 11, scope: !1986)
!2032 = !DILocation(line: 132, column: 56, scope: !1987)
!2033 = !DILocation(line: 136, column: 31, scope: !2024)
!2034 = distinct !{!2034, !2035, !2036}
!2035 = !DILocation(line: 132, column: 3, scope: !1988)
!2036 = !DILocation(line: 139, column: 5, scope: !1988)
!2037 = !DILocation(line: 140, column: 1, scope: !1969)
!2038 = distinct !DISubprogram(name: "ftoastr", scope: !462, file: !462, line: 101, type: !2039, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!10, !17, !62, !10, !10, !447}
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2042 = !DILocalVariable(name: "buf", arg: 1, scope: !2038, file: !462, line: 101, type: !17)
!2043 = !DILocalVariable(name: "bufsize", arg: 2, scope: !2038, file: !462, line: 101, type: !62)
!2044 = !DILocalVariable(name: "flags", arg: 3, scope: !2038, file: !462, line: 101, type: !10)
!2045 = !DILocalVariable(name: "width", arg: 4, scope: !2038, file: !462, line: 101, type: !10)
!2046 = !DILocalVariable(name: "x", arg: 5, scope: !2038, file: !462, line: 101, type: !447)
!2047 = !DILocalVariable(name: "promoted_x", scope: !2038, file: !462, line: 111, type: !454)
!2048 = !DILocalVariable(name: "format", scope: !2038, file: !462, line: 112, type: !1981)
!2049 = !DILocalVariable(name: "abs_x", scope: !2038, file: !462, line: 113, type: !447)
!2050 = !DILocalVariable(name: "prec", scope: !2038, file: !462, line: 114, type: !10)
!2051 = !DILocalVariable(name: "p", scope: !2038, file: !462, line: 116, type: !17)
!2052 = !DILocalVariable(name: "n", scope: !2053, file: !462, line: 134, type: !10)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !462, line: 133, column: 5)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !462, line: 132, column: 3)
!2055 = distinct !DILexicalBlock(scope: !2038, file: !462, line: 132, column: 3)
!2056 = !DILocation(line: 0, scope: !2038)
!2057 = !DILocation(line: 111, column: 31, scope: !2038)
!2058 = !DILocation(line: 112, column: 3, scope: !2038)
!2059 = !DILocation(line: 112, column: 8, scope: !2038)
!2060 = !DILocation(line: 113, column: 19, scope: !2038)
!2061 = !DILocation(line: 113, column: 17, scope: !2038)
!2062 = !DILocation(line: 117, column: 5, scope: !2038)
!2063 = !DILocation(line: 117, column: 8, scope: !2038)
!2064 = !DILocation(line: 120, column: 6, scope: !2038)
!2065 = !DILocation(line: 120, column: 25, scope: !2038)
!2066 = !DILocation(line: 120, column: 15, scope: !2038)
!2067 = !DILocation(line: 121, column: 6, scope: !2038)
!2068 = !DILocation(line: 121, column: 51, scope: !2038)
!2069 = !DILocation(line: 121, column: 15, scope: !2038)
!2070 = !DILocation(line: 122, column: 6, scope: !2038)
!2071 = !DILocation(line: 122, column: 51, scope: !2038)
!2072 = !DILocation(line: 122, column: 15, scope: !2038)
!2073 = !DILocation(line: 123, column: 6, scope: !2038)
!2074 = !DILocation(line: 123, column: 51, scope: !2038)
!2075 = !DILocation(line: 123, column: 15, scope: !2038)
!2076 = !DILocation(line: 125, column: 5, scope: !2038)
!2077 = !DILocation(line: 125, column: 8, scope: !2038)
!2078 = !DILocation(line: 126, column: 5, scope: !2038)
!2079 = !DILocation(line: 126, column: 8, scope: !2038)
!2080 = !DILocation(line: 127, column: 5, scope: !2038)
!2081 = !DILocation(line: 127, column: 8, scope: !2038)
!2082 = !DILocation(line: 129, column: 16, scope: !2038)
!2083 = !DILocation(line: 129, column: 10, scope: !2038)
!2084 = !DILocation(line: 129, column: 5, scope: !2038)
!2085 = !DILocation(line: 129, column: 8, scope: !2038)
!2086 = !DILocation(line: 130, column: 6, scope: !2038)
!2087 = !DILocation(line: 132, column: 21, scope: !2055)
!2088 = !DILocation(line: 132, column: 15, scope: !2055)
!2089 = !DILocation(line: 134, column: 15, scope: !2053)
!2090 = !DILocation(line: 0, scope: !2053)
!2091 = !DILocation(line: 135, column: 13, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2053, file: !462, line: 135, column: 11)
!2093 = !DILocation(line: 136, column: 11, scope: !2092)
!2094 = !DILocation(line: 137, column: 15, scope: !2092)
!2095 = !DILocation(line: 137, column: 17, scope: !2092)
!2096 = !DILocation(line: 137, column: 27, scope: !2092)
!2097 = !DILocation(line: 137, column: 30, scope: !2092)
!2098 = !DILocation(line: 137, column: 49, scope: !2092)
!2099 = !DILocation(line: 135, column: 11, scope: !2053)
!2100 = !DILocation(line: 132, column: 56, scope: !2054)
!2101 = !DILocation(line: 136, column: 31, scope: !2092)
!2102 = distinct !{!2102, !2103, !2104}
!2103 = !DILocation(line: 132, column: 3, scope: !2055)
!2104 = !DILocation(line: 139, column: 5, scope: !2055)
!2105 = !DILocation(line: 140, column: 1, scope: !2038)
!2106 = distinct !DISubprogram(name: "ldtoastr", scope: !1970, file: !1970, line: 101, type: !2107, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!10, !17, !62, !10, !10, !458}
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!2110 = !DILocalVariable(name: "buf", arg: 1, scope: !2106, file: !1970, line: 101, type: !17)
!2111 = !DILocalVariable(name: "bufsize", arg: 2, scope: !2106, file: !1970, line: 101, type: !62)
!2112 = !DILocalVariable(name: "flags", arg: 3, scope: !2106, file: !1970, line: 101, type: !10)
!2113 = !DILocalVariable(name: "width", arg: 4, scope: !2106, file: !1970, line: 101, type: !10)
!2114 = !DILocalVariable(name: "x", arg: 5, scope: !2106, file: !1970, line: 101, type: !458)
!2115 = !DILocalVariable(name: "promoted_x", scope: !2106, file: !1970, line: 111, type: !458)
!2116 = !DILocalVariable(name: "format", scope: !2106, file: !1970, line: 112, type: !1981)
!2117 = !DILocalVariable(name: "abs_x", scope: !2106, file: !1970, line: 113, type: !458)
!2118 = !DILocalVariable(name: "prec", scope: !2106, file: !1970, line: 114, type: !10)
!2119 = !DILocalVariable(name: "p", scope: !2106, file: !1970, line: 116, type: !17)
!2120 = !DILocalVariable(name: "n", scope: !2121, file: !1970, line: 134, type: !10)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !1970, line: 133, column: 5)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !1970, line: 132, column: 3)
!2123 = distinct !DILexicalBlock(scope: !2106, file: !1970, line: 132, column: 3)
!2124 = !DILocation(line: 0, scope: !2106)
!2125 = !DILocation(line: 112, column: 3, scope: !2106)
!2126 = !DILocation(line: 112, column: 8, scope: !2106)
!2127 = !DILocation(line: 113, column: 19, scope: !2106)
!2128 = !DILocation(line: 113, column: 17, scope: !2106)
!2129 = !DILocation(line: 117, column: 5, scope: !2106)
!2130 = !DILocation(line: 117, column: 8, scope: !2106)
!2131 = !DILocation(line: 120, column: 6, scope: !2106)
!2132 = !DILocation(line: 120, column: 25, scope: !2106)
!2133 = !DILocation(line: 120, column: 15, scope: !2106)
!2134 = !DILocation(line: 121, column: 6, scope: !2106)
!2135 = !DILocation(line: 121, column: 51, scope: !2106)
!2136 = !DILocation(line: 121, column: 15, scope: !2106)
!2137 = !DILocation(line: 122, column: 6, scope: !2106)
!2138 = !DILocation(line: 122, column: 51, scope: !2106)
!2139 = !DILocation(line: 122, column: 15, scope: !2106)
!2140 = !DILocation(line: 123, column: 6, scope: !2106)
!2141 = !DILocation(line: 123, column: 51, scope: !2106)
!2142 = !DILocation(line: 123, column: 15, scope: !2106)
!2143 = !DILocation(line: 125, column: 5, scope: !2106)
!2144 = !DILocation(line: 125, column: 8, scope: !2106)
!2145 = !DILocation(line: 126, column: 5, scope: !2106)
!2146 = !DILocation(line: 126, column: 8, scope: !2106)
!2147 = !DILocation(line: 127, column: 5, scope: !2106)
!2148 = !DILocation(line: 127, column: 8, scope: !2106)
!2149 = !DILocation(line: 128, column: 6, scope: !2106)
!2150 = !DILocation(line: 128, column: 15, scope: !2106)
!2151 = !DILocation(line: 129, column: 16, scope: !2106)
!2152 = !DILocation(line: 129, column: 10, scope: !2106)
!2153 = !DILocation(line: 129, column: 5, scope: !2106)
!2154 = !DILocation(line: 129, column: 8, scope: !2106)
!2155 = !DILocation(line: 130, column: 6, scope: !2106)
!2156 = !DILocation(line: 132, column: 21, scope: !2123)
!2157 = !DILocation(line: 132, column: 15, scope: !2123)
!2158 = !DILocation(line: 134, column: 15, scope: !2121)
!2159 = !DILocation(line: 0, scope: !2121)
!2160 = !DILocation(line: 135, column: 13, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2121, file: !1970, line: 135, column: 11)
!2162 = !DILocation(line: 136, column: 11, scope: !2161)
!2163 = !DILocation(line: 137, column: 15, scope: !2161)
!2164 = !DILocation(line: 137, column: 17, scope: !2161)
!2165 = !DILocation(line: 137, column: 27, scope: !2161)
!2166 = !DILocation(line: 137, column: 30, scope: !2161)
!2167 = !DILocation(line: 137, column: 49, scope: !2161)
!2168 = !DILocation(line: 135, column: 11, scope: !2121)
!2169 = !DILocation(line: 132, column: 56, scope: !2122)
!2170 = !DILocation(line: 136, column: 31, scope: !2161)
!2171 = distinct !{!2171, !2172, !2173}
!2172 = !DILocation(line: 132, column: 3, scope: !2123)
!2173 = !DILocation(line: 139, column: 5, scope: !2123)
!2174 = !DILocation(line: 140, column: 1, scope: !2106)
!2175 = distinct !DISubprogram(name: "parse_long_options", scope: !97, file: !97, line: 45, type: !420, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2177 = !DILocalVariable(name: "argc", arg: 1, scope: !2175, file: !97, line: 45, type: !10)
!2178 = !DILocalVariable(name: "argv", arg: 2, scope: !2175, file: !97, line: 46, type: !422)
!2179 = !DILocalVariable(name: "command_name", arg: 3, scope: !2175, file: !97, line: 47, type: !74)
!2180 = !DILocalVariable(name: "package", arg: 4, scope: !2175, file: !97, line: 48, type: !74)
!2181 = !DILocalVariable(name: "version", arg: 5, scope: !2175, file: !97, line: 49, type: !74)
!2182 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2175, file: !97, line: 50, type: !423)
!2183 = !DILocalVariable(name: "c", scope: !2175, file: !97, line: 53, type: !10)
!2184 = !DILocalVariable(name: "saved_opterr", scope: !2175, file: !97, line: 54, type: !10)
!2185 = !DILocalVariable(name: "authors", scope: !2186, file: !97, line: 72, type: !2190)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !97, line: 71, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !97, line: 65, column: 9)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !97, line: 63, column: 5)
!2189 = distinct !DILexicalBlock(scope: !2175, file: !97, line: 61, column: 7)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 52, baseType: !2191)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2192, line: 32, baseType: !2193)
!2192 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !97, line: 72, baseType: !2194)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, elements: !45)
!2195 = !DILocation(line: 0, scope: !2175)
!2196 = !DILocation(line: 56, column: 18, scope: !2175)
!2197 = !DILocation(line: 59, column: 10, scope: !2175)
!2198 = !DILocation(line: 61, column: 12, scope: !2189)
!2199 = !DILocation(line: 62, column: 7, scope: !2189)
!2200 = !DILocation(line: 62, column: 15, scope: !2189)
!2201 = !DILocation(line: 61, column: 7, scope: !2175)
!2202 = !DILocation(line: 67, column: 11, scope: !2187)
!2203 = !DILocation(line: 68, column: 11, scope: !2187)
!2204 = !DILocation(line: 72, column: 13, scope: !2186)
!2205 = !DILocation(line: 72, column: 21, scope: !2186)
!2206 = !DILocation(line: 73, column: 13, scope: !2186)
!2207 = !DILocation(line: 74, column: 29, scope: !2186)
!2208 = !DILocation(line: 74, column: 13, scope: !2186)
!2209 = !DILocation(line: 75, column: 13, scope: !2186)
!2210 = !DILocation(line: 85, column: 10, scope: !2175)
!2211 = !DILocation(line: 89, column: 10, scope: !2175)
!2212 = !DILocation(line: 90, column: 1, scope: !2175)
!2213 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !97, file: !97, line: 98, type: !2214, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !10, !422, !74, !74, !74, !87, !423, null}
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227}
!2217 = !DILocalVariable(name: "argc", arg: 1, scope: !2213, file: !97, line: 98, type: !10)
!2218 = !DILocalVariable(name: "argv", arg: 2, scope: !2213, file: !97, line: 99, type: !422)
!2219 = !DILocalVariable(name: "command_name", arg: 3, scope: !2213, file: !97, line: 100, type: !74)
!2220 = !DILocalVariable(name: "package", arg: 4, scope: !2213, file: !97, line: 101, type: !74)
!2221 = !DILocalVariable(name: "version", arg: 5, scope: !2213, file: !97, line: 102, type: !74)
!2222 = !DILocalVariable(name: "scan_all", arg: 6, scope: !2213, file: !97, line: 103, type: !87)
!2223 = !DILocalVariable(name: "usage_func", arg: 7, scope: !2213, file: !97, line: 104, type: !423)
!2224 = !DILocalVariable(name: "c", scope: !2213, file: !97, line: 107, type: !10)
!2225 = !DILocalVariable(name: "saved_opterr", scope: !2213, file: !97, line: 108, type: !10)
!2226 = !DILocalVariable(name: "optstring", scope: !2213, file: !97, line: 113, type: !74)
!2227 = !DILocalVariable(name: "authors", scope: !2228, file: !97, line: 125, type: !2190)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !97, line: 124, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !97, line: 118, column: 9)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !97, line: 116, column: 5)
!2231 = distinct !DILexicalBlock(scope: !2213, file: !97, line: 115, column: 7)
!2232 = !DILocation(line: 0, scope: !2213)
!2233 = !DILocation(line: 108, column: 22, scope: !2213)
!2234 = !DILocation(line: 111, column: 10, scope: !2213)
!2235 = !DILocation(line: 113, column: 27, scope: !2213)
!2236 = !DILocation(line: 115, column: 12, scope: !2231)
!2237 = !DILocation(line: 115, column: 7, scope: !2213)
!2238 = !DILocation(line: 125, column: 13, scope: !2228)
!2239 = !DILocation(line: 125, column: 21, scope: !2228)
!2240 = !DILocation(line: 126, column: 13, scope: !2228)
!2241 = !DILocation(line: 127, column: 29, scope: !2228)
!2242 = !DILocation(line: 127, column: 13, scope: !2228)
!2243 = !DILocation(line: 128, column: 13, scope: !2228)
!2244 = !DILocation(line: 132, column: 26, scope: !2229)
!2245 = !DILocation(line: 133, column: 11, scope: !2229)
!2246 = !DILocation(line: 0, scope: !2229)
!2247 = !DILocation(line: 138, column: 10, scope: !2213)
!2248 = !DILocation(line: 139, column: 1, scope: !2213)
!2249 = distinct !DISubprogram(name: "set_program_name", scope: !165, file: !165, line: 39, type: !404, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2250)
!2250 = !{!2251, !2252, !2253}
!2251 = !DILocalVariable(name: "argv0", arg: 1, scope: !2249, file: !165, line: 39, type: !74)
!2252 = !DILocalVariable(name: "slash", scope: !2249, file: !165, line: 46, type: !74)
!2253 = !DILocalVariable(name: "base", scope: !2249, file: !165, line: 47, type: !74)
!2254 = !DILocation(line: 0, scope: !2249)
!2255 = !DILocation(line: 51, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !165, line: 51, column: 7)
!2257 = !DILocation(line: 51, column: 7, scope: !2249)
!2258 = !DILocation(line: 55, column: 14, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !165, line: 52, column: 5)
!2260 = !DILocation(line: 54, column: 7, scope: !2259)
!2261 = !DILocation(line: 56, column: 7, scope: !2259)
!2262 = !DILocation(line: 59, column: 11, scope: !2249)
!2263 = !DILocation(line: 60, column: 17, scope: !2249)
!2264 = !DILocation(line: 60, column: 11, scope: !2249)
!2265 = !DILocation(line: 61, column: 12, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2249, file: !165, line: 61, column: 7)
!2267 = !DILocation(line: 61, column: 20, scope: !2266)
!2268 = !DILocation(line: 61, column: 25, scope: !2266)
!2269 = !DILocation(line: 61, column: 42, scope: !2266)
!2270 = !DILocation(line: 61, column: 28, scope: !2266)
!2271 = !DILocation(line: 61, column: 61, scope: !2266)
!2272 = !DILocation(line: 61, column: 7, scope: !2249)
!2273 = !DILocation(line: 64, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !165, line: 64, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2266, file: !165, line: 62, column: 5)
!2276 = !DILocation(line: 64, column: 36, scope: !2274)
!2277 = !DILocation(line: 64, column: 11, scope: !2275)
!2278 = !DILocation(line: 66, column: 24, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !165, line: 65, column: 9)
!2280 = !DILocation(line: 70, column: 41, scope: !2279)
!2281 = !DILocation(line: 72, column: 9, scope: !2279)
!2282 = !DILocation(line: 84, column: 16, scope: !2249)
!2283 = !DILocation(line: 90, column: 27, scope: !2249)
!2284 = !DILocation(line: 92, column: 1, scope: !2249)
!2285 = distinct !DISubprogram(name: "clone_quoting_options", scope: !207, file: !207, line: 122, type: !2286, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2289)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2288, !2288}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "o", arg: 1, scope: !2285, file: !207, line: 122, type: !2288)
!2291 = !DILocalVariable(name: "e", scope: !2285, file: !207, line: 124, type: !10)
!2292 = !DILocalVariable(name: "p", scope: !2285, file: !207, line: 125, type: !2288)
!2293 = !DILocation(line: 0, scope: !2285)
!2294 = !DILocation(line: 124, column: 11, scope: !2285)
!2295 = !DILocation(line: 125, column: 40, scope: !2285)
!2296 = !DILocation(line: 125, column: 31, scope: !2285)
!2297 = !DILocation(line: 127, column: 9, scope: !2285)
!2298 = !DILocation(line: 128, column: 3, scope: !2285)
!2299 = distinct !DISubprogram(name: "get_quoting_style", scope: !207, file: !207, line: 133, type: !2300, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!209, !253}
!2302 = !{!2303}
!2303 = !DILocalVariable(name: "o", arg: 1, scope: !2299, file: !207, line: 133, type: !253)
!2304 = !DILocation(line: 0, scope: !2299)
!2305 = !DILocation(line: 135, column: 11, scope: !2299)
!2306 = !DILocation(line: 135, column: 46, scope: !2299)
!2307 = !{!2308, !1158, i64 0}
!2308 = !{!"quoting_options", !1158, i64 0, !1947, i64 4, !1158, i64 8, !1157, i64 40, !1157, i64 48}
!2309 = !DILocation(line: 135, column: 3, scope: !2299)
!2310 = distinct !DISubprogram(name: "set_quoting_style", scope: !207, file: !207, line: 141, type: !2311, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2288, !209}
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "o", arg: 1, scope: !2310, file: !207, line: 141, type: !2288)
!2315 = !DILocalVariable(name: "s", arg: 2, scope: !2310, file: !207, line: 141, type: !209)
!2316 = !DILocation(line: 0, scope: !2310)
!2317 = !DILocation(line: 143, column: 4, scope: !2310)
!2318 = !DILocation(line: 143, column: 39, scope: !2310)
!2319 = !DILocation(line: 143, column: 45, scope: !2310)
!2320 = !DILocation(line: 144, column: 1, scope: !2310)
!2321 = distinct !DISubprogram(name: "set_char_quoting", scope: !207, file: !207, line: 152, type: !2322, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!10, !2288, !18, !10}
!2324 = !{!2325, !2326, !2327, !2328, !2330, !2332, !2333}
!2325 = !DILocalVariable(name: "o", arg: 1, scope: !2321, file: !207, line: 152, type: !2288)
!2326 = !DILocalVariable(name: "c", arg: 2, scope: !2321, file: !207, line: 152, type: !18)
!2327 = !DILocalVariable(name: "i", arg: 3, scope: !2321, file: !207, line: 152, type: !10)
!2328 = !DILocalVariable(name: "uc", scope: !2321, file: !207, line: 154, type: !2329)
!2329 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2330 = !DILocalVariable(name: "p", scope: !2321, file: !207, line: 155, type: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2332 = !DILocalVariable(name: "shift", scope: !2321, file: !207, line: 157, type: !10)
!2333 = !DILocalVariable(name: "r", scope: !2321, file: !207, line: 158, type: !10)
!2334 = !DILocation(line: 0, scope: !2321)
!2335 = !DILocation(line: 156, column: 6, scope: !2321)
!2336 = !DILocation(line: 156, column: 62, scope: !2321)
!2337 = !DILocation(line: 156, column: 57, scope: !2321)
!2338 = !DILocation(line: 157, column: 15, scope: !2321)
!2339 = !DILocation(line: 158, column: 12, scope: !2321)
!2340 = !DILocation(line: 158, column: 15, scope: !2321)
!2341 = !DILocation(line: 158, column: 25, scope: !2321)
!2342 = !DILocation(line: 159, column: 13, scope: !2321)
!2343 = !DILocation(line: 159, column: 18, scope: !2321)
!2344 = !DILocation(line: 159, column: 23, scope: !2321)
!2345 = !DILocation(line: 159, column: 6, scope: !2321)
!2346 = !DILocation(line: 160, column: 3, scope: !2321)
!2347 = distinct !DISubprogram(name: "set_quoting_flags", scope: !207, file: !207, line: 168, type: !2348, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!10, !2288, !10}
!2350 = !{!2351, !2352, !2353}
!2351 = !DILocalVariable(name: "o", arg: 1, scope: !2347, file: !207, line: 168, type: !2288)
!2352 = !DILocalVariable(name: "i", arg: 2, scope: !2347, file: !207, line: 168, type: !10)
!2353 = !DILocalVariable(name: "r", scope: !2347, file: !207, line: 170, type: !10)
!2354 = !DILocation(line: 0, scope: !2347)
!2355 = !DILocation(line: 171, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !207, line: 171, column: 7)
!2357 = !DILocation(line: 171, column: 7, scope: !2347)
!2358 = !DILocation(line: 173, column: 10, scope: !2347)
!2359 = !{!2308, !1947, i64 4}
!2360 = !DILocation(line: 174, column: 12, scope: !2347)
!2361 = !DILocation(line: 175, column: 3, scope: !2347)
!2362 = distinct !DISubprogram(name: "set_custom_quoting", scope: !207, file: !207, line: 179, type: !2363, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2288, !74, !74}
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "o", arg: 1, scope: !2362, file: !207, line: 179, type: !2288)
!2367 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2362, file: !207, line: 180, type: !74)
!2368 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2362, file: !207, line: 180, type: !74)
!2369 = !DILocation(line: 0, scope: !2362)
!2370 = !DILocation(line: 182, column: 8, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2362, file: !207, line: 182, column: 7)
!2372 = !DILocation(line: 182, column: 7, scope: !2362)
!2373 = !DILocation(line: 184, column: 6, scope: !2362)
!2374 = !DILocation(line: 184, column: 12, scope: !2362)
!2375 = !DILocation(line: 185, column: 8, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2362, file: !207, line: 185, column: 7)
!2377 = !DILocation(line: 185, column: 23, scope: !2376)
!2378 = !DILocation(line: 185, column: 19, scope: !2376)
!2379 = !DILocation(line: 186, column: 5, scope: !2376)
!2380 = !DILocation(line: 187, column: 6, scope: !2362)
!2381 = !DILocation(line: 187, column: 17, scope: !2362)
!2382 = !{!2308, !1157, i64 40}
!2383 = !DILocation(line: 188, column: 6, scope: !2362)
!2384 = !DILocation(line: 188, column: 18, scope: !2362)
!2385 = !{!2308, !1157, i64 48}
!2386 = !DILocation(line: 189, column: 1, scope: !2362)
!2387 = distinct !DISubprogram(name: "quotearg_buffer", scope: !207, file: !207, line: 784, type: !2388, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!62, !17, !62, !74, !62, !253}
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2391 = !DILocalVariable(name: "buffer", arg: 1, scope: !2387, file: !207, line: 784, type: !17)
!2392 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2387, file: !207, line: 784, type: !62)
!2393 = !DILocalVariable(name: "arg", arg: 3, scope: !2387, file: !207, line: 785, type: !74)
!2394 = !DILocalVariable(name: "argsize", arg: 4, scope: !2387, file: !207, line: 785, type: !62)
!2395 = !DILocalVariable(name: "o", arg: 5, scope: !2387, file: !207, line: 786, type: !253)
!2396 = !DILocalVariable(name: "p", scope: !2387, file: !207, line: 788, type: !253)
!2397 = !DILocalVariable(name: "e", scope: !2387, file: !207, line: 789, type: !10)
!2398 = !DILocalVariable(name: "r", scope: !2387, file: !207, line: 790, type: !62)
!2399 = !DILocation(line: 0, scope: !2387)
!2400 = !DILocation(line: 788, column: 37, scope: !2387)
!2401 = !DILocation(line: 789, column: 11, scope: !2387)
!2402 = !DILocation(line: 791, column: 43, scope: !2387)
!2403 = !DILocation(line: 791, column: 53, scope: !2387)
!2404 = !DILocation(line: 791, column: 60, scope: !2387)
!2405 = !DILocation(line: 792, column: 43, scope: !2387)
!2406 = !DILocation(line: 792, column: 58, scope: !2387)
!2407 = !DILocation(line: 790, column: 14, scope: !2387)
!2408 = !DILocation(line: 793, column: 9, scope: !2387)
!2409 = !DILocation(line: 794, column: 3, scope: !2387)
!2410 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !207, file: !207, line: 256, type: !2411, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2415)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!62, !17, !62, !74, !62, !209, !10, !2413, !74, !74}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2440, !2441, !2442, !2443, !2444, !2447, !2448, !2454, !2457, !2458, !2465, !2468, !2469, !2470, !2471, !2472, !2473}
!2416 = !DILocalVariable(name: "buffer", arg: 1, scope: !2410, file: !207, line: 256, type: !17)
!2417 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2410, file: !207, line: 256, type: !62)
!2418 = !DILocalVariable(name: "arg", arg: 3, scope: !2410, file: !207, line: 257, type: !74)
!2419 = !DILocalVariable(name: "argsize", arg: 4, scope: !2410, file: !207, line: 257, type: !62)
!2420 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2410, file: !207, line: 258, type: !209)
!2421 = !DILocalVariable(name: "flags", arg: 6, scope: !2410, file: !207, line: 258, type: !10)
!2422 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2410, file: !207, line: 259, type: !2413)
!2423 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2410, file: !207, line: 260, type: !74)
!2424 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2410, file: !207, line: 261, type: !74)
!2425 = !DILocalVariable(name: "i", scope: !2410, file: !207, line: 263, type: !62)
!2426 = !DILocalVariable(name: "len", scope: !2410, file: !207, line: 264, type: !62)
!2427 = !DILocalVariable(name: "orig_buffersize", scope: !2410, file: !207, line: 265, type: !62)
!2428 = !DILocalVariable(name: "quote_string", scope: !2410, file: !207, line: 266, type: !74)
!2429 = !DILocalVariable(name: "quote_string_len", scope: !2410, file: !207, line: 267, type: !62)
!2430 = !DILocalVariable(name: "backslash_escapes", scope: !2410, file: !207, line: 268, type: !87)
!2431 = !DILocalVariable(name: "unibyte_locale", scope: !2410, file: !207, line: 269, type: !87)
!2432 = !DILocalVariable(name: "elide_outer_quotes", scope: !2410, file: !207, line: 270, type: !87)
!2433 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2410, file: !207, line: 271, type: !87)
!2434 = !DILocalVariable(name: "encountered_single_quote", scope: !2410, file: !207, line: 272, type: !87)
!2435 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2410, file: !207, line: 273, type: !87)
!2436 = !DILocalVariable(name: "c", scope: !2437, file: !207, line: 402, type: !2329)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !207, line: 401, column: 5)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !207, line: 400, column: 3)
!2439 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 400, column: 3)
!2440 = !DILocalVariable(name: "esc", scope: !2437, file: !207, line: 403, type: !2329)
!2441 = !DILocalVariable(name: "is_right_quote", scope: !2437, file: !207, line: 404, type: !87)
!2442 = !DILocalVariable(name: "escaping", scope: !2437, file: !207, line: 405, type: !87)
!2443 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2437, file: !207, line: 406, type: !87)
!2444 = !DILocalVariable(name: "m", scope: !2445, file: !207, line: 610, type: !62)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 608, column: 11)
!2446 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 426, column: 9)
!2447 = !DILocalVariable(name: "printable", scope: !2445, file: !207, line: 612, type: !87)
!2448 = !DILocalVariable(name: "mbstate", scope: !2449, file: !207, line: 621, type: !2451)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !207, line: 620, column: 15)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !207, line: 614, column: 17)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2452, line: 6, baseType: !2453)
!2452 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !278, line: 21, baseType: !277)
!2454 = !DILocalVariable(name: "w", scope: !2455, file: !207, line: 631, type: !2456)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !207, line: 630, column: 19)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 74, baseType: !10)
!2457 = !DILocalVariable(name: "bytes", scope: !2455, file: !207, line: 632, type: !62)
!2458 = !DILocalVariable(name: "j", scope: !2459, file: !207, line: 657, type: !62)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !207, line: 656, column: 27)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !207, line: 654, column: 29)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !207, line: 649, column: 23)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !207, line: 641, column: 30)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !207, line: 636, column: 30)
!2464 = distinct !DILexicalBlock(scope: !2455, file: !207, line: 634, column: 25)
!2465 = !DILocalVariable(name: "ilim", scope: !2466, file: !207, line: 684, type: !62)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !207, line: 681, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2445, file: !207, line: 680, column: 17)
!2468 = !DILabel(scope: !2410, name: "process_input", file: !207, line: 314)
!2469 = !DILabel(scope: !2446, name: "c_and_shell_escape", file: !207, line: 512)
!2470 = !DILabel(scope: !2446, name: "c_escape", file: !207, line: 517)
!2471 = !DILabel(scope: !2437, name: "store_escape", file: !207, line: 719)
!2472 = !DILabel(scope: !2437, name: "store_c", file: !207, line: 722)
!2473 = !DILabel(scope: !2410, name: "force_outer_quoting_style", file: !207, line: 763)
!2474 = !DILocation(line: 0, scope: !2410)
!2475 = !DILocation(line: 269, column: 25, scope: !2410)
!2476 = !DILocation(line: 269, column: 36, scope: !2410)
!2477 = !DILocation(line: 270, column: 8, scope: !2410)
!2478 = !DILocation(line: 0, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 526, column: 15)
!2480 = !DILocation(line: 0, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !207, line: 462, column: 19)
!2482 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 455, column: 13)
!2483 = !DILocation(line: 0, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !207, line: 449, column: 20)
!2485 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 428, column: 15)
!2486 = !DILocation(line: 0, scope: !2449)
!2487 = !DILocation(line: 0, scope: !2455)
!2488 = !DILocation(line: 0, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 712, column: 11)
!2490 = !DILocation(line: 273, column: 3, scope: !2410)
!2491 = !DILocation(line: 265, column: 10, scope: !2410)
!2492 = !DILocation(line: 266, column: 15, scope: !2410)
!2493 = !DILocation(line: 267, column: 10, scope: !2410)
!2494 = !DILocation(line: 268, column: 8, scope: !2410)
!2495 = !DILocation(line: 271, column: 8, scope: !2410)
!2496 = !DILocation(line: 272, column: 8, scope: !2410)
!2497 = !DILocation(line: 273, column: 8, scope: !2410)
!2498 = !DILocation(line: 314, column: 2, scope: !2410)
!2499 = !DILocation(line: 316, column: 3, scope: !2410)
!2500 = !DILocation(line: 323, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 317, column: 5)
!2502 = !DILocation(line: 323, column: 12, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2501, file: !207, line: 323, column: 11)
!2504 = !DILocation(line: 324, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !207, line: 324, column: 9)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !207, line: 324, column: 9)
!2507 = !DILocation(line: 324, column: 9, scope: !2506)
!2508 = !DILocation(line: 362, column: 26, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !207, line: 340, column: 11)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !207, line: 339, column: 13)
!2511 = distinct !DILexicalBlock(scope: !2501, file: !207, line: 338, column: 7)
!2512 = !DILocation(line: 363, column: 27, scope: !2509)
!2513 = !DILocation(line: 364, column: 11, scope: !2509)
!2514 = !DILocation(line: 365, column: 14, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !207, line: 365, column: 13)
!2516 = !DILocation(line: 365, column: 13, scope: !2511)
!2517 = !DILocation(line: 366, column: 43, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !207, line: 366, column: 11)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !207, line: 366, column: 11)
!2520 = !DILocation(line: 366, column: 11, scope: !2519)
!2521 = !DILocation(line: 367, column: 13, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !207, line: 367, column: 13)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !207, line: 367, column: 13)
!2524 = !DILocation(line: 367, column: 13, scope: !2523)
!2525 = !DILocation(line: 366, column: 70, scope: !2518)
!2526 = distinct !{!2526, !2520, !2527}
!2527 = !DILocation(line: 367, column: 13, scope: !2519)
!2528 = !DILocation(line: 264, column: 10, scope: !2410)
!2529 = !DILocation(line: 370, column: 28, scope: !2511)
!2530 = !DILocation(line: 372, column: 7, scope: !2501)
!2531 = !DILocation(line: 376, column: 7, scope: !2501)
!2532 = !DILocation(line: 379, column: 7, scope: !2501)
!2533 = !DILocation(line: 381, column: 12, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2501, file: !207, line: 381, column: 11)
!2535 = !DILocation(line: 381, column: 11, scope: !2501)
!2536 = !DILocation(line: 386, column: 12, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2501, file: !207, line: 386, column: 11)
!2538 = !DILocation(line: 386, column: 11, scope: !2501)
!2539 = !DILocation(line: 387, column: 9, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !207, line: 387, column: 9)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !207, line: 387, column: 9)
!2542 = !DILocation(line: 387, column: 9, scope: !2541)
!2543 = !DILocation(line: 394, column: 7, scope: !2501)
!2544 = !DILocation(line: 397, column: 7, scope: !2501)
!2545 = !DILocation(line: 0, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 408, column: 11)
!2547 = !DILocation(line: 0, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !207, line: 419, column: 15)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !207, line: 418, column: 9)
!2550 = !DILocation(line: 0, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 556, column: 15)
!2552 = !DILocation(line: 0, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 548, column: 15)
!2554 = !DILocation(line: 0, scope: !2460)
!2555 = !DILocation(line: 0, scope: !2467)
!2556 = !DILocation(line: 0, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 509, column: 15)
!2558 = !DILocation(line: 400, column: 8, scope: !2439)
!2559 = !DILocation(line: 0, scope: !2439)
!2560 = !DILocation(line: 400, column: 27, scope: !2438)
!2561 = !DILocation(line: 400, column: 19, scope: !2438)
!2562 = !DILocation(line: 400, column: 41, scope: !2438)
!2563 = !DILocation(line: 400, column: 48, scope: !2438)
!2564 = !DILocation(line: 400, column: 3, scope: !2439)
!2565 = !DILocation(line: 400, column: 60, scope: !2438)
!2566 = !DILocation(line: 0, scope: !2437)
!2567 = !DILocation(line: 409, column: 11, scope: !2546)
!2568 = !DILocation(line: 411, column: 17, scope: !2546)
!2569 = !DILocation(line: 412, column: 39, scope: !2546)
!2570 = !DILocation(line: 416, column: 32, scope: !2546)
!2571 = !DILocation(line: 412, column: 19, scope: !2546)
!2572 = !DILocation(line: 412, column: 15, scope: !2546)
!2573 = !DILocation(line: 417, column: 11, scope: !2546)
!2574 = !DILocation(line: 417, column: 26, scope: !2546)
!2575 = !DILocation(line: 417, column: 14, scope: !2546)
!2576 = !DILocation(line: 417, column: 63, scope: !2546)
!2577 = !DILocation(line: 408, column: 11, scope: !2437)
!2578 = !DILocation(line: 424, column: 11, scope: !2437)
!2579 = !DILocation(line: 425, column: 7, scope: !2437)
!2580 = !DILocation(line: 428, column: 15, scope: !2446)
!2581 = !DILocation(line: 430, column: 15, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !207, line: 430, column: 15)
!2583 = distinct !DILexicalBlock(scope: !2485, file: !207, line: 429, column: 13)
!2584 = !DILocation(line: 430, column: 15, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !207, line: 430, column: 15)
!2586 = !DILocation(line: 430, column: 15, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !207, line: 430, column: 15)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !207, line: 430, column: 15)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !207, line: 430, column: 15)
!2590 = !DILocation(line: 430, column: 15, scope: !2588)
!2591 = !DILocation(line: 430, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !207, line: 430, column: 15)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !207, line: 430, column: 15)
!2594 = !DILocation(line: 430, column: 15, scope: !2593)
!2595 = !DILocation(line: 430, column: 15, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !207, line: 430, column: 15)
!2597 = distinct !DILexicalBlock(scope: !2589, file: !207, line: 430, column: 15)
!2598 = !DILocation(line: 430, column: 15, scope: !2597)
!2599 = !DILocation(line: 430, column: 15, scope: !2589)
!2600 = !DILocation(line: 430, column: 15, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !207, line: 430, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2582, file: !207, line: 430, column: 15)
!2603 = !DILocation(line: 430, column: 15, scope: !2602)
!2604 = !DILocation(line: 438, column: 19, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2583, file: !207, line: 437, column: 19)
!2606 = !DILocation(line: 438, column: 24, scope: !2605)
!2607 = !DILocation(line: 438, column: 28, scope: !2605)
!2608 = !DILocation(line: 438, column: 38, scope: !2605)
!2609 = !DILocation(line: 438, column: 48, scope: !2605)
!2610 = !DILocation(line: 438, column: 59, scope: !2605)
!2611 = !DILocation(line: 440, column: 19, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !207, line: 440, column: 19)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !207, line: 440, column: 19)
!2614 = distinct !DILexicalBlock(scope: !2605, file: !207, line: 439, column: 17)
!2615 = !DILocation(line: 440, column: 19, scope: !2613)
!2616 = !DILocation(line: 441, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !207, line: 441, column: 19)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !207, line: 441, column: 19)
!2619 = !DILocation(line: 441, column: 19, scope: !2618)
!2620 = !DILocation(line: 442, column: 17, scope: !2614)
!2621 = !DILocation(line: 449, column: 20, scope: !2485)
!2622 = !DILocation(line: 454, column: 11, scope: !2446)
!2623 = !DILocation(line: 457, column: 19, scope: !2482)
!2624 = !DILocation(line: 463, column: 19, scope: !2481)
!2625 = !DILocation(line: 463, column: 24, scope: !2481)
!2626 = !DILocation(line: 463, column: 28, scope: !2481)
!2627 = !DILocation(line: 463, column: 38, scope: !2481)
!2628 = !DILocation(line: 463, column: 47, scope: !2481)
!2629 = !DILocation(line: 463, column: 41, scope: !2481)
!2630 = !DILocation(line: 463, column: 52, scope: !2481)
!2631 = !DILocation(line: 462, column: 19, scope: !2482)
!2632 = !DILocation(line: 464, column: 25, scope: !2481)
!2633 = !DILocation(line: 464, column: 17, scope: !2481)
!2634 = !DILocation(line: 471, column: 25, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2481, file: !207, line: 465, column: 19)
!2636 = !DILocation(line: 475, column: 21, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !207, line: 475, column: 21)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !207, line: 475, column: 21)
!2639 = !DILocation(line: 475, column: 21, scope: !2638)
!2640 = !DILocation(line: 476, column: 21, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !207, line: 476, column: 21)
!2642 = distinct !DILexicalBlock(scope: !2635, file: !207, line: 476, column: 21)
!2643 = !DILocation(line: 476, column: 21, scope: !2642)
!2644 = !DILocation(line: 477, column: 21, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !207, line: 477, column: 21)
!2646 = distinct !DILexicalBlock(scope: !2635, file: !207, line: 477, column: 21)
!2647 = !DILocation(line: 477, column: 21, scope: !2646)
!2648 = !DILocation(line: 478, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !207, line: 478, column: 21)
!2650 = distinct !DILexicalBlock(scope: !2635, file: !207, line: 478, column: 21)
!2651 = !DILocation(line: 478, column: 21, scope: !2650)
!2652 = !DILocation(line: 479, column: 21, scope: !2635)
!2653 = !DILocation(line: 492, column: 31, scope: !2446)
!2654 = !DILocation(line: 493, column: 31, scope: !2446)
!2655 = !DILocation(line: 495, column: 31, scope: !2446)
!2656 = !DILocation(line: 496, column: 31, scope: !2446)
!2657 = !DILocation(line: 497, column: 31, scope: !2446)
!2658 = !DILocation(line: 500, column: 15, scope: !2446)
!2659 = !DILocation(line: 502, column: 19, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !207, line: 501, column: 13)
!2661 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 500, column: 15)
!2662 = !DILocation(line: 509, column: 33, scope: !2557)
!2663 = !DILocation(line: 0, scope: !2446)
!2664 = !DILocation(line: 512, column: 9, scope: !2446)
!2665 = !DILocation(line: 514, column: 15, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 513, column: 15)
!2667 = !DILocation(line: 517, column: 9, scope: !2446)
!2668 = !DILocation(line: 518, column: 15, scope: !2446)
!2669 = !DILocation(line: 526, column: 15, scope: !2446)
!2670 = !DILocation(line: 526, column: 40, scope: !2479)
!2671 = !DILocation(line: 526, column: 47, scope: !2479)
!2672 = !DILocation(line: 526, column: 18, scope: !2479)
!2673 = !DILocation(line: 530, column: 17, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2446, file: !207, line: 530, column: 15)
!2675 = !DILocation(line: 530, column: 15, scope: !2446)
!2676 = !DILocation(line: 535, column: 11, scope: !2446)
!2677 = !DILocation(line: 549, column: 15, scope: !2553)
!2678 = !DILocation(line: 556, column: 15, scope: !2446)
!2679 = !DILocation(line: 558, column: 19, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2551, file: !207, line: 557, column: 13)
!2681 = !DILocation(line: 561, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2680, file: !207, line: 561, column: 19)
!2683 = !DILocation(line: 561, column: 35, scope: !2682)
!2684 = !DILocation(line: 561, column: 30, scope: !2682)
!2685 = !DILocation(line: 570, column: 15, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !207, line: 570, column: 15)
!2687 = distinct !DILexicalBlock(scope: !2680, file: !207, line: 570, column: 15)
!2688 = !DILocation(line: 570, column: 15, scope: !2687)
!2689 = !DILocation(line: 571, column: 15, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !207, line: 571, column: 15)
!2691 = distinct !DILexicalBlock(scope: !2680, file: !207, line: 571, column: 15)
!2692 = !DILocation(line: 571, column: 15, scope: !2691)
!2693 = !DILocation(line: 572, column: 15, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !207, line: 572, column: 15)
!2695 = distinct !DILexicalBlock(scope: !2680, file: !207, line: 572, column: 15)
!2696 = !DILocation(line: 572, column: 15, scope: !2695)
!2697 = !DILocation(line: 574, column: 13, scope: !2680)
!2698 = !DILocation(line: 614, column: 17, scope: !2445)
!2699 = !DILocation(line: 0, scope: !2445)
!2700 = !DILocation(line: 617, column: 29, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2450, file: !207, line: 615, column: 15)
!2702 = !{!2703, !2703, i64 0}
!2703 = !{!"short", !1158, i64 0}
!2704 = !DILocation(line: 617, column: 27, scope: !2701)
!2705 = !DILocation(line: 618, column: 15, scope: !2701)
!2706 = !DILocation(line: 621, column: 17, scope: !2449)
!2707 = !DILocation(line: 621, column: 27, scope: !2449)
!2708 = !DILocalVariable(name: "__dest", arg: 1, scope: !2709, file: !2710, line: 59, type: !60)
!2709 = distinct !DISubprogram(name: "memset", scope: !2710, file: !2710, line: 59, type: !2711, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2713)
!2710 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!60, !60, !10, !62}
!2713 = !{!2708, !2714, !2715}
!2714 = !DILocalVariable(name: "__ch", arg: 2, scope: !2709, file: !2710, line: 59, type: !10)
!2715 = !DILocalVariable(name: "__len", arg: 3, scope: !2709, file: !2710, line: 59, type: !62)
!2716 = !DILocation(line: 0, scope: !2709, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 622, column: 17, scope: !2449)
!2718 = !DILocation(line: 71, column: 10, scope: !2709, inlinedAt: !2717)
!2719 = !DILocation(line: 626, column: 29, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2449, file: !207, line: 626, column: 21)
!2721 = !DILocation(line: 626, column: 21, scope: !2449)
!2722 = !DILocation(line: 627, column: 29, scope: !2720)
!2723 = !DILocation(line: 627, column: 19, scope: !2720)
!2724 = !DILocation(line: 629, column: 17, scope: !2449)
!2725 = !DILocation(line: 624, column: 19, scope: !2449)
!2726 = !DILocation(line: 625, column: 27, scope: !2449)
!2727 = !DILocation(line: 631, column: 21, scope: !2455)
!2728 = !DILocation(line: 632, column: 56, scope: !2455)
!2729 = !DILocation(line: 632, column: 50, scope: !2455)
!2730 = !DILocation(line: 633, column: 53, scope: !2455)
!2731 = !DILocation(line: 632, column: 36, scope: !2455)
!2732 = !DILocation(line: 634, column: 25, scope: !2455)
!2733 = !DILocation(line: 644, column: 38, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2462, file: !207, line: 642, column: 23)
!2735 = !DILocation(line: 644, column: 48, scope: !2734)
!2736 = !DILocation(line: 644, column: 25, scope: !2734)
!2737 = !DILocation(line: 644, column: 51, scope: !2734)
!2738 = !DILocation(line: 645, column: 28, scope: !2734)
!2739 = !DILocation(line: 644, column: 34, scope: !2734)
!2740 = distinct !{!2740, !2736, !2738}
!2741 = !DILocation(line: 658, column: 43, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !207, line: 658, column: 29)
!2743 = distinct !DILexicalBlock(scope: !2459, file: !207, line: 658, column: 29)
!2744 = !DILocation(line: 655, column: 29, scope: !2460)
!2745 = !DILocation(line: 0, scope: !2459)
!2746 = !DILocation(line: 659, column: 49, scope: !2742)
!2747 = !DILocation(line: 659, column: 39, scope: !2742)
!2748 = !DILocation(line: 659, column: 31, scope: !2742)
!2749 = !DILocation(line: 658, column: 53, scope: !2742)
!2750 = !DILocation(line: 658, column: 29, scope: !2743)
!2751 = distinct !{!2751, !2750, !2752}
!2752 = !DILocation(line: 667, column: 33, scope: !2743)
!2753 = !DILocation(line: 674, column: 19, scope: !2449)
!2754 = !DILocation(line: 670, column: 41, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2461, file: !207, line: 670, column: 29)
!2756 = !DILocation(line: 670, column: 31, scope: !2755)
!2757 = !DILocation(line: 670, column: 29, scope: !2461)
!2758 = !DILocation(line: 672, column: 27, scope: !2461)
!2759 = !DILocation(line: 675, column: 26, scope: !2449)
!2760 = !DILocation(line: 675, column: 24, scope: !2449)
!2761 = !DILocation(line: 674, column: 19, scope: !2455)
!2762 = distinct !{!2762, !2724, !2763}
!2763 = !DILocation(line: 675, column: 44, scope: !2449)
!2764 = !DILocation(line: 676, column: 15, scope: !2450)
!2765 = !DILocation(line: 0, scope: !2450)
!2766 = !DILocation(line: 678, column: 40, scope: !2445)
!2767 = !DILocation(line: 680, column: 19, scope: !2467)
!2768 = !DILocation(line: 680, column: 45, scope: !2467)
!2769 = !DILocation(line: 680, column: 23, scope: !2467)
!2770 = !DILocation(line: 684, column: 33, scope: !2466)
!2771 = !DILocation(line: 0, scope: !2466)
!2772 = !DILocation(line: 686, column: 17, scope: !2466)
!2773 = !DILocation(line: 405, column: 12, scope: !2437)
!2774 = !DILocation(line: 688, column: 43, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !207, line: 688, column: 25)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !207, line: 687, column: 19)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !207, line: 686, column: 17)
!2778 = distinct !DILexicalBlock(scope: !2466, file: !207, line: 686, column: 17)
!2779 = !DILocation(line: 690, column: 25, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !207, line: 690, column: 25)
!2781 = distinct !DILexicalBlock(scope: !2775, file: !207, line: 689, column: 23)
!2782 = !DILocation(line: 690, column: 25, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !207, line: 690, column: 25)
!2784 = !DILocation(line: 690, column: 25, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !207, line: 690, column: 25)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !207, line: 690, column: 25)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !207, line: 690, column: 25)
!2788 = !DILocation(line: 690, column: 25, scope: !2786)
!2789 = !DILocation(line: 690, column: 25, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !207, line: 690, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !207, line: 690, column: 25)
!2792 = !DILocation(line: 690, column: 25, scope: !2791)
!2793 = !DILocation(line: 690, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !207, line: 690, column: 25)
!2795 = distinct !DILexicalBlock(scope: !2787, file: !207, line: 690, column: 25)
!2796 = !DILocation(line: 690, column: 25, scope: !2795)
!2797 = !DILocation(line: 690, column: 25, scope: !2787)
!2798 = !DILocation(line: 690, column: 25, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !207, line: 690, column: 25)
!2800 = distinct !DILexicalBlock(scope: !2780, file: !207, line: 690, column: 25)
!2801 = !DILocation(line: 690, column: 25, scope: !2800)
!2802 = !DILocation(line: 691, column: 25, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !207, line: 691, column: 25)
!2804 = distinct !DILexicalBlock(scope: !2781, file: !207, line: 691, column: 25)
!2805 = !DILocation(line: 691, column: 25, scope: !2804)
!2806 = !DILocation(line: 692, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !207, line: 692, column: 25)
!2808 = distinct !DILexicalBlock(scope: !2781, file: !207, line: 692, column: 25)
!2809 = !DILocation(line: 692, column: 25, scope: !2808)
!2810 = !DILocation(line: 693, column: 38, scope: !2781)
!2811 = !DILocation(line: 693, column: 33, scope: !2781)
!2812 = !DILocation(line: 694, column: 23, scope: !2781)
!2813 = !DILocation(line: 695, column: 30, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2775, file: !207, line: 695, column: 30)
!2815 = !DILocation(line: 695, column: 30, scope: !2775)
!2816 = !DILocation(line: 697, column: 25, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !207, line: 697, column: 25)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !207, line: 697, column: 25)
!2819 = distinct !DILexicalBlock(scope: !2814, file: !207, line: 696, column: 23)
!2820 = !DILocation(line: 697, column: 25, scope: !2818)
!2821 = !DILocation(line: 699, column: 23, scope: !2819)
!2822 = !DILocation(line: 700, column: 35, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2776, file: !207, line: 700, column: 25)
!2824 = !DILocation(line: 700, column: 30, scope: !2823)
!2825 = !DILocation(line: 700, column: 25, scope: !2776)
!2826 = !DILocation(line: 702, column: 21, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !207, line: 702, column: 21)
!2828 = distinct !DILexicalBlock(scope: !2776, file: !207, line: 702, column: 21)
!2829 = !DILocation(line: 702, column: 21, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !207, line: 702, column: 21)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !207, line: 702, column: 21)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !207, line: 702, column: 21)
!2833 = !DILocation(line: 702, column: 21, scope: !2831)
!2834 = !DILocation(line: 702, column: 21, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !207, line: 702, column: 21)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !207, line: 702, column: 21)
!2837 = !DILocation(line: 702, column: 21, scope: !2836)
!2838 = !DILocation(line: 702, column: 21, scope: !2832)
!2839 = !DILocation(line: 0, scope: !2776)
!2840 = !DILocation(line: 703, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !207, line: 703, column: 21)
!2842 = distinct !DILexicalBlock(scope: !2776, file: !207, line: 703, column: 21)
!2843 = !DILocation(line: 703, column: 21, scope: !2842)
!2844 = !DILocation(line: 704, column: 25, scope: !2776)
!2845 = !DILocation(line: 686, column: 17, scope: !2777)
!2846 = distinct !{!2846, !2847, !2848}
!2847 = !DILocation(line: 686, column: 17, scope: !2778)
!2848 = !DILocation(line: 705, column: 19, scope: !2778)
!2849 = !DILocation(line: 416, column: 30, scope: !2546)
!2850 = !DILocation(line: 712, column: 34, scope: !2489)
!2851 = !DILocation(line: 715, column: 35, scope: !2489)
!2852 = !DILocation(line: 715, column: 17, scope: !2489)
!2853 = !DILocation(line: 715, column: 47, scope: !2489)
!2854 = !DILocation(line: 715, column: 65, scope: !2489)
!2855 = !DILocation(line: 716, column: 15, scope: !2489)
!2856 = !DILocation(line: 716, column: 11, scope: !2489)
!2857 = !DILocation(line: 712, column: 11, scope: !2437)
!2858 = !DILocation(line: 400, column: 10, scope: !2439)
!2859 = !DILocation(line: 719, column: 5, scope: !2437)
!2860 = !DILocation(line: 720, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 720, column: 7)
!2862 = !DILocation(line: 720, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2861, file: !207, line: 720, column: 7)
!2864 = !DILocation(line: 720, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !207, line: 720, column: 7)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !207, line: 720, column: 7)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !207, line: 720, column: 7)
!2868 = !DILocation(line: 720, column: 7, scope: !2866)
!2869 = !DILocation(line: 720, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !207, line: 720, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !207, line: 720, column: 7)
!2872 = !DILocation(line: 720, column: 7, scope: !2871)
!2873 = !DILocation(line: 720, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !207, line: 720, column: 7)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !207, line: 720, column: 7)
!2876 = !DILocation(line: 720, column: 7, scope: !2875)
!2877 = !DILocation(line: 720, column: 7, scope: !2867)
!2878 = !DILocation(line: 720, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !207, line: 720, column: 7)
!2880 = distinct !DILexicalBlock(scope: !2861, file: !207, line: 720, column: 7)
!2881 = !DILocation(line: 720, column: 7, scope: !2880)
!2882 = !DILocation(line: 722, column: 5, scope: !2437)
!2883 = !DILocation(line: 723, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !207, line: 723, column: 7)
!2885 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 723, column: 7)
!2886 = !DILocation(line: 424, column: 9, scope: !2437)
!2887 = !DILocation(line: 723, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !207, line: 723, column: 7)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !207, line: 723, column: 7)
!2890 = distinct !DILexicalBlock(scope: !2884, file: !207, line: 723, column: 7)
!2891 = !DILocation(line: 723, column: 7, scope: !2889)
!2892 = !DILocation(line: 723, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !207, line: 723, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !207, line: 723, column: 7)
!2895 = !DILocation(line: 723, column: 7, scope: !2894)
!2896 = !DILocation(line: 723, column: 7, scope: !2890)
!2897 = !DILocation(line: 724, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !207, line: 724, column: 7)
!2899 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 724, column: 7)
!2900 = !DILocation(line: 724, column: 7, scope: !2899)
!2901 = !DILocation(line: 726, column: 13, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2437, file: !207, line: 726, column: 11)
!2903 = !DILocation(line: 726, column: 11, scope: !2437)
!2904 = !DILocation(line: 728, column: 5, scope: !2438)
!2905 = !DILocation(line: 400, column: 75, scope: !2438)
!2906 = !DILocation(line: 400, column: 3, scope: !2438)
!2907 = distinct !{!2907, !2564, !2908}
!2908 = !DILocation(line: 728, column: 5, scope: !2439)
!2909 = !DILocation(line: 730, column: 11, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 730, column: 7)
!2911 = !DILocation(line: 730, column: 16, scope: !2910)
!2912 = !DILocation(line: 738, column: 51, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 738, column: 7)
!2914 = !DILocation(line: 739, column: 10, scope: !2913)
!2915 = !DILocation(line: 741, column: 11, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !207, line: 741, column: 11)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !207, line: 740, column: 5)
!2918 = !DILocation(line: 741, column: 11, scope: !2917)
!2919 = !DILocation(line: 742, column: 16, scope: !2916)
!2920 = !DILocation(line: 742, column: 9, scope: !2916)
!2921 = !DILocation(line: 746, column: 18, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2916, file: !207, line: 746, column: 16)
!2923 = !DILocation(line: 746, column: 32, scope: !2922)
!2924 = !DILocation(line: 746, column: 29, scope: !2922)
!2925 = !DILocation(line: 755, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 755, column: 7)
!2927 = !DILocation(line: 755, column: 20, scope: !2926)
!2928 = !DILocation(line: 756, column: 12, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !207, line: 756, column: 5)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !207, line: 756, column: 5)
!2931 = !DILocation(line: 756, column: 5, scope: !2930)
!2932 = !DILocation(line: 757, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !207, line: 757, column: 7)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !207, line: 757, column: 7)
!2935 = !DILocation(line: 757, column: 7, scope: !2934)
!2936 = !DILocation(line: 756, column: 39, scope: !2929)
!2937 = distinct !{!2937, !2931, !2938}
!2938 = !DILocation(line: 757, column: 7, scope: !2930)
!2939 = !DILocation(line: 759, column: 11, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 759, column: 7)
!2941 = !DILocation(line: 759, column: 7, scope: !2410)
!2942 = !DILocation(line: 760, column: 5, scope: !2940)
!2943 = !DILocation(line: 760, column: 17, scope: !2940)
!2944 = !DILocation(line: 763, column: 2, scope: !2410)
!2945 = !DILocation(line: 766, column: 51, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2410, file: !207, line: 766, column: 7)
!2947 = !DILocation(line: 766, column: 21, scope: !2946)
!2948 = !DILocation(line: 770, column: 42, scope: !2410)
!2949 = !DILocation(line: 768, column: 10, scope: !2410)
!2950 = !DILocation(line: 768, column: 3, scope: !2410)
!2951 = !DILocation(line: 772, column: 1, scope: !2410)
!2952 = distinct !DISubprogram(name: "gettext_quote", scope: !207, file: !207, line: 207, type: !2953, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!74, !74, !209}
!2955 = !{!2956, !2957, !2958, !2959}
!2956 = !DILocalVariable(name: "msgid", arg: 1, scope: !2952, file: !207, line: 207, type: !74)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !207, line: 207, type: !209)
!2958 = !DILocalVariable(name: "translation", scope: !2952, file: !207, line: 209, type: !74)
!2959 = !DILocalVariable(name: "locale_code", scope: !2952, file: !207, line: 210, type: !74)
!2960 = !DILocation(line: 0, scope: !2952)
!2961 = !DILocation(line: 209, column: 29, scope: !2952)
!2962 = !DILocation(line: 212, column: 19, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2952, file: !207, line: 212, column: 7)
!2964 = !DILocation(line: 212, column: 7, scope: !2952)
!2965 = !DILocation(line: 233, column: 17, scope: !2952)
!2966 = !DILocalVariable(name: "s1", arg: 1, scope: !2967, file: !2968, line: 160, type: !74)
!2967 = distinct !DISubprogram(name: "strcaseeq0", scope: !2968, file: !2968, line: 160, type: !2969, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2971)
!2968 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!10, !74, !74, !18, !18, !18, !18, !18, !18, !18, !18, !18}
!2971 = !{!2966, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2972 = !DILocalVariable(name: "s2", arg: 2, scope: !2967, file: !2968, line: 160, type: !74)
!2973 = !DILocalVariable(name: "s20", arg: 3, scope: !2967, file: !2968, line: 160, type: !18)
!2974 = !DILocalVariable(name: "s21", arg: 4, scope: !2967, file: !2968, line: 160, type: !18)
!2975 = !DILocalVariable(name: "s22", arg: 5, scope: !2967, file: !2968, line: 160, type: !18)
!2976 = !DILocalVariable(name: "s23", arg: 6, scope: !2967, file: !2968, line: 160, type: !18)
!2977 = !DILocalVariable(name: "s24", arg: 7, scope: !2967, file: !2968, line: 160, type: !18)
!2978 = !DILocalVariable(name: "s25", arg: 8, scope: !2967, file: !2968, line: 160, type: !18)
!2979 = !DILocalVariable(name: "s26", arg: 9, scope: !2967, file: !2968, line: 160, type: !18)
!2980 = !DILocalVariable(name: "s27", arg: 10, scope: !2967, file: !2968, line: 160, type: !18)
!2981 = !DILocalVariable(name: "s28", arg: 11, scope: !2967, file: !2968, line: 160, type: !18)
!2982 = !DILocation(line: 0, scope: !2967, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 234, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2952, file: !207, line: 234, column: 7)
!2985 = !DILocation(line: 162, column: 7, scope: !2986, inlinedAt: !2983)
!2986 = distinct !DILexicalBlock(scope: !2967, file: !2968, line: 162, column: 7)
!2987 = !DILocalVariable(name: "s1", arg: 1, scope: !2988, file: !2968, line: 146, type: !74)
!2988 = distinct !DISubprogram(name: "strcaseeq1", scope: !2968, file: !2968, line: 146, type: !2989, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!10, !74, !74, !18, !18, !18, !18, !18, !18, !18, !18}
!2991 = !{!2987, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!2992 = !DILocalVariable(name: "s2", arg: 2, scope: !2988, file: !2968, line: 146, type: !74)
!2993 = !DILocalVariable(name: "s21", arg: 3, scope: !2988, file: !2968, line: 146, type: !18)
!2994 = !DILocalVariable(name: "s22", arg: 4, scope: !2988, file: !2968, line: 146, type: !18)
!2995 = !DILocalVariable(name: "s23", arg: 5, scope: !2988, file: !2968, line: 146, type: !18)
!2996 = !DILocalVariable(name: "s24", arg: 6, scope: !2988, file: !2968, line: 146, type: !18)
!2997 = !DILocalVariable(name: "s25", arg: 7, scope: !2988, file: !2968, line: 146, type: !18)
!2998 = !DILocalVariable(name: "s26", arg: 8, scope: !2988, file: !2968, line: 146, type: !18)
!2999 = !DILocalVariable(name: "s27", arg: 9, scope: !2988, file: !2968, line: 146, type: !18)
!3000 = !DILocalVariable(name: "s28", arg: 10, scope: !2988, file: !2968, line: 146, type: !18)
!3001 = !DILocation(line: 0, scope: !2988, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 167, column: 16, scope: !3003, inlinedAt: !2983)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !2968, line: 164, column: 11)
!3004 = distinct !DILexicalBlock(scope: !2986, file: !2968, line: 163, column: 5)
!3005 = !DILocation(line: 148, column: 7, scope: !3006, inlinedAt: !3002)
!3006 = distinct !DILexicalBlock(scope: !2988, file: !2968, line: 148, column: 7)
!3007 = !DILocalVariable(name: "s1", arg: 1, scope: !3008, file: !2968, line: 132, type: !74)
!3008 = distinct !DISubprogram(name: "strcaseeq2", scope: !2968, file: !2968, line: 132, type: !3009, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!10, !74, !74, !18, !18, !18, !18, !18, !18, !18}
!3011 = !{!3007, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!3012 = !DILocalVariable(name: "s2", arg: 2, scope: !3008, file: !2968, line: 132, type: !74)
!3013 = !DILocalVariable(name: "s22", arg: 3, scope: !3008, file: !2968, line: 132, type: !18)
!3014 = !DILocalVariable(name: "s23", arg: 4, scope: !3008, file: !2968, line: 132, type: !18)
!3015 = !DILocalVariable(name: "s24", arg: 5, scope: !3008, file: !2968, line: 132, type: !18)
!3016 = !DILocalVariable(name: "s25", arg: 6, scope: !3008, file: !2968, line: 132, type: !18)
!3017 = !DILocalVariable(name: "s26", arg: 7, scope: !3008, file: !2968, line: 132, type: !18)
!3018 = !DILocalVariable(name: "s27", arg: 8, scope: !3008, file: !2968, line: 132, type: !18)
!3019 = !DILocalVariable(name: "s28", arg: 9, scope: !3008, file: !2968, line: 132, type: !18)
!3020 = !DILocation(line: 0, scope: !3008, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 153, column: 16, scope: !3022, inlinedAt: !3002)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !2968, line: 150, column: 11)
!3023 = distinct !DILexicalBlock(scope: !3006, file: !2968, line: 149, column: 5)
!3024 = !DILocation(line: 134, column: 7, scope: !3025, inlinedAt: !3021)
!3025 = distinct !DILexicalBlock(scope: !3008, file: !2968, line: 134, column: 7)
!3026 = !DILocalVariable(name: "s1", arg: 1, scope: !3027, file: !2968, line: 118, type: !74)
!3027 = distinct !DISubprogram(name: "strcaseeq3", scope: !2968, file: !2968, line: 118, type: !3028, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!10, !74, !74, !18, !18, !18, !18, !18, !18}
!3030 = !{!3026, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!3031 = !DILocalVariable(name: "s2", arg: 2, scope: !3027, file: !2968, line: 118, type: !74)
!3032 = !DILocalVariable(name: "s23", arg: 3, scope: !3027, file: !2968, line: 118, type: !18)
!3033 = !DILocalVariable(name: "s24", arg: 4, scope: !3027, file: !2968, line: 118, type: !18)
!3034 = !DILocalVariable(name: "s25", arg: 5, scope: !3027, file: !2968, line: 118, type: !18)
!3035 = !DILocalVariable(name: "s26", arg: 6, scope: !3027, file: !2968, line: 118, type: !18)
!3036 = !DILocalVariable(name: "s27", arg: 7, scope: !3027, file: !2968, line: 118, type: !18)
!3037 = !DILocalVariable(name: "s28", arg: 8, scope: !3027, file: !2968, line: 118, type: !18)
!3038 = !DILocation(line: 0, scope: !3027, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 139, column: 16, scope: !3040, inlinedAt: !3021)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !2968, line: 136, column: 11)
!3041 = distinct !DILexicalBlock(scope: !3025, file: !2968, line: 135, column: 5)
!3042 = !DILocation(line: 120, column: 7, scope: !3043, inlinedAt: !3039)
!3043 = distinct !DILexicalBlock(scope: !3027, file: !2968, line: 120, column: 7)
!3044 = !DILocation(line: 120, column: 7, scope: !3027, inlinedAt: !3039)
!3045 = !DILocalVariable(name: "s1", arg: 1, scope: !3046, file: !2968, line: 104, type: !74)
!3046 = distinct !DISubprogram(name: "strcaseeq4", scope: !2968, file: !2968, line: 104, type: !3047, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!10, !74, !74, !18, !18, !18, !18, !18}
!3049 = !{!3045, !3050, !3051, !3052, !3053, !3054, !3055}
!3050 = !DILocalVariable(name: "s2", arg: 2, scope: !3046, file: !2968, line: 104, type: !74)
!3051 = !DILocalVariable(name: "s24", arg: 3, scope: !3046, file: !2968, line: 104, type: !18)
!3052 = !DILocalVariable(name: "s25", arg: 4, scope: !3046, file: !2968, line: 104, type: !18)
!3053 = !DILocalVariable(name: "s26", arg: 5, scope: !3046, file: !2968, line: 104, type: !18)
!3054 = !DILocalVariable(name: "s27", arg: 6, scope: !3046, file: !2968, line: 104, type: !18)
!3055 = !DILocalVariable(name: "s28", arg: 7, scope: !3046, file: !2968, line: 104, type: !18)
!3056 = !DILocation(line: 0, scope: !3046, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 125, column: 16, scope: !3058, inlinedAt: !3039)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !2968, line: 122, column: 11)
!3059 = distinct !DILexicalBlock(scope: !3043, file: !2968, line: 121, column: 5)
!3060 = !DILocation(line: 106, column: 7, scope: !3061, inlinedAt: !3057)
!3061 = distinct !DILexicalBlock(scope: !3046, file: !2968, line: 106, column: 7)
!3062 = !DILocation(line: 106, column: 7, scope: !3046, inlinedAt: !3057)
!3063 = !DILocalVariable(name: "s1", arg: 1, scope: !3064, file: !2968, line: 90, type: !74)
!3064 = distinct !DISubprogram(name: "strcaseeq5", scope: !2968, file: !2968, line: 90, type: !3065, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!10, !74, !74, !18, !18, !18, !18}
!3067 = !{!3063, !3068, !3069, !3070, !3071, !3072}
!3068 = !DILocalVariable(name: "s2", arg: 2, scope: !3064, file: !2968, line: 90, type: !74)
!3069 = !DILocalVariable(name: "s25", arg: 3, scope: !3064, file: !2968, line: 90, type: !18)
!3070 = !DILocalVariable(name: "s26", arg: 4, scope: !3064, file: !2968, line: 90, type: !18)
!3071 = !DILocalVariable(name: "s27", arg: 5, scope: !3064, file: !2968, line: 90, type: !18)
!3072 = !DILocalVariable(name: "s28", arg: 6, scope: !3064, file: !2968, line: 90, type: !18)
!3073 = !DILocation(line: 0, scope: !3064, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 111, column: 16, scope: !3075, inlinedAt: !3057)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !2968, line: 108, column: 11)
!3076 = distinct !DILexicalBlock(scope: !3061, file: !2968, line: 107, column: 5)
!3077 = !DILocation(line: 92, column: 7, scope: !3078, inlinedAt: !3074)
!3078 = distinct !DILexicalBlock(scope: !3064, file: !2968, line: 92, column: 7)
!3079 = !DILocation(line: 92, column: 7, scope: !3064, inlinedAt: !3074)
!3080 = !DILocation(line: 235, column: 12, scope: !2984)
!3081 = !DILocation(line: 235, column: 21, scope: !2984)
!3082 = !DILocation(line: 235, column: 5, scope: !2984)
!3083 = !DILocation(line: 0, scope: !2988, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 167, column: 16, scope: !3003, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 236, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2952, file: !207, line: 236, column: 7)
!3087 = !DILocation(line: 148, column: 7, scope: !3006, inlinedAt: !3084)
!3088 = !DILocation(line: 0, scope: !3008, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 153, column: 16, scope: !3022, inlinedAt: !3084)
!3090 = !DILocation(line: 134, column: 7, scope: !3025, inlinedAt: !3089)
!3091 = !DILocation(line: 134, column: 7, scope: !3008, inlinedAt: !3089)
!3092 = !DILocation(line: 0, scope: !3027, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 139, column: 16, scope: !3040, inlinedAt: !3089)
!3094 = !DILocation(line: 120, column: 7, scope: !3043, inlinedAt: !3093)
!3095 = !DILocation(line: 120, column: 7, scope: !3027, inlinedAt: !3093)
!3096 = !DILocation(line: 0, scope: !3046, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 125, column: 16, scope: !3058, inlinedAt: !3093)
!3098 = !DILocation(line: 106, column: 7, scope: !3061, inlinedAt: !3097)
!3099 = !DILocation(line: 106, column: 7, scope: !3046, inlinedAt: !3097)
!3100 = !DILocation(line: 0, scope: !3064, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 111, column: 16, scope: !3075, inlinedAt: !3097)
!3102 = !DILocation(line: 92, column: 7, scope: !3078, inlinedAt: !3101)
!3103 = !DILocation(line: 92, column: 7, scope: !3064, inlinedAt: !3101)
!3104 = !DILocalVariable(name: "s1", arg: 1, scope: !3105, file: !2968, line: 76, type: !74)
!3105 = distinct !DISubprogram(name: "strcaseeq6", scope: !2968, file: !2968, line: 76, type: !3106, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!10, !74, !74, !18, !18, !18}
!3108 = !{!3104, !3109, !3110, !3111, !3112}
!3109 = !DILocalVariable(name: "s2", arg: 2, scope: !3105, file: !2968, line: 76, type: !74)
!3110 = !DILocalVariable(name: "s26", arg: 3, scope: !3105, file: !2968, line: 76, type: !18)
!3111 = !DILocalVariable(name: "s27", arg: 4, scope: !3105, file: !2968, line: 76, type: !18)
!3112 = !DILocalVariable(name: "s28", arg: 5, scope: !3105, file: !2968, line: 76, type: !18)
!3113 = !DILocation(line: 0, scope: !3105, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 97, column: 16, scope: !3115, inlinedAt: !3101)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !2968, line: 94, column: 11)
!3116 = distinct !DILexicalBlock(scope: !3078, file: !2968, line: 93, column: 5)
!3117 = !DILocation(line: 78, column: 7, scope: !3118, inlinedAt: !3114)
!3118 = distinct !DILexicalBlock(scope: !3105, file: !2968, line: 78, column: 7)
!3119 = !DILocation(line: 78, column: 7, scope: !3105, inlinedAt: !3114)
!3120 = !DILocalVariable(name: "s1", arg: 1, scope: !3121, file: !2968, line: 62, type: !74)
!3121 = distinct !DISubprogram(name: "strcaseeq7", scope: !2968, file: !2968, line: 62, type: !3122, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!10, !74, !74, !18, !18}
!3124 = !{!3120, !3125, !3126, !3127}
!3125 = !DILocalVariable(name: "s2", arg: 2, scope: !3121, file: !2968, line: 62, type: !74)
!3126 = !DILocalVariable(name: "s27", arg: 3, scope: !3121, file: !2968, line: 62, type: !18)
!3127 = !DILocalVariable(name: "s28", arg: 4, scope: !3121, file: !2968, line: 62, type: !18)
!3128 = !DILocation(line: 0, scope: !3121, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 83, column: 16, scope: !3130, inlinedAt: !3114)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !2968, line: 80, column: 11)
!3131 = distinct !DILexicalBlock(scope: !3118, file: !2968, line: 79, column: 5)
!3132 = !DILocation(line: 64, column: 7, scope: !3133, inlinedAt: !3129)
!3133 = distinct !DILexicalBlock(scope: !3121, file: !2968, line: 64, column: 7)
!3134 = !DILocation(line: 236, column: 7, scope: !2952)
!3135 = !DILocation(line: 237, column: 12, scope: !3086)
!3136 = !DILocation(line: 237, column: 21, scope: !3086)
!3137 = !DILocation(line: 237, column: 5, scope: !3086)
!3138 = !DILocation(line: 239, column: 13, scope: !2952)
!3139 = !DILocation(line: 239, column: 11, scope: !2952)
!3140 = !DILocation(line: 239, column: 3, scope: !2952)
!3141 = !DILocation(line: 240, column: 1, scope: !2952)
!3142 = distinct !DISubprogram(name: "quotearg_alloc", scope: !207, file: !207, line: 799, type: !3143, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!17, !74, !62, !253}
!3145 = !{!3146, !3147, !3148}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3142, file: !207, line: 799, type: !74)
!3147 = !DILocalVariable(name: "argsize", arg: 2, scope: !3142, file: !207, line: 799, type: !62)
!3148 = !DILocalVariable(name: "o", arg: 3, scope: !3142, file: !207, line: 800, type: !253)
!3149 = !DILocation(line: 0, scope: !3142)
!3150 = !DILocalVariable(name: "arg", arg: 1, scope: !3151, file: !207, line: 812, type: !74)
!3151 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !207, file: !207, line: 812, type: !3152, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!17, !74, !62, !514, !253}
!3154 = !{!3150, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3155 = !DILocalVariable(name: "argsize", arg: 2, scope: !3151, file: !207, line: 812, type: !62)
!3156 = !DILocalVariable(name: "size", arg: 3, scope: !3151, file: !207, line: 812, type: !514)
!3157 = !DILocalVariable(name: "o", arg: 4, scope: !3151, file: !207, line: 813, type: !253)
!3158 = !DILocalVariable(name: "p", scope: !3151, file: !207, line: 815, type: !253)
!3159 = !DILocalVariable(name: "e", scope: !3151, file: !207, line: 816, type: !10)
!3160 = !DILocalVariable(name: "flags", scope: !3151, file: !207, line: 818, type: !10)
!3161 = !DILocalVariable(name: "bufsize", scope: !3151, file: !207, line: 819, type: !62)
!3162 = !DILocalVariable(name: "buf", scope: !3151, file: !207, line: 823, type: !17)
!3163 = !DILocation(line: 0, scope: !3151, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 802, column: 10, scope: !3142)
!3165 = !DILocation(line: 815, column: 37, scope: !3151, inlinedAt: !3164)
!3166 = !DILocation(line: 816, column: 11, scope: !3151, inlinedAt: !3164)
!3167 = !DILocation(line: 818, column: 18, scope: !3151, inlinedAt: !3164)
!3168 = !DILocation(line: 818, column: 24, scope: !3151, inlinedAt: !3164)
!3169 = !DILocation(line: 819, column: 69, scope: !3151, inlinedAt: !3164)
!3170 = !DILocation(line: 820, column: 53, scope: !3151, inlinedAt: !3164)
!3171 = !DILocation(line: 821, column: 49, scope: !3151, inlinedAt: !3164)
!3172 = !DILocation(line: 822, column: 49, scope: !3151, inlinedAt: !3164)
!3173 = !DILocation(line: 819, column: 20, scope: !3151, inlinedAt: !3164)
!3174 = !DILocation(line: 822, column: 62, scope: !3151, inlinedAt: !3164)
!3175 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !244, line: 216, type: !62)
!3176 = distinct !DISubprogram(name: "xcharalloc", scope: !244, file: !244, line: 216, type: !3177, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!17, !62}
!3179 = !{!3175}
!3180 = !DILocation(line: 0, scope: !3176, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 823, column: 15, scope: !3151, inlinedAt: !3164)
!3182 = !DILocation(line: 218, column: 10, scope: !3176, inlinedAt: !3181)
!3183 = !DILocation(line: 824, column: 60, scope: !3151, inlinedAt: !3164)
!3184 = !DILocation(line: 826, column: 32, scope: !3151, inlinedAt: !3164)
!3185 = !DILocation(line: 826, column: 47, scope: !3151, inlinedAt: !3164)
!3186 = !DILocation(line: 824, column: 3, scope: !3151, inlinedAt: !3164)
!3187 = !DILocation(line: 827, column: 9, scope: !3151, inlinedAt: !3164)
!3188 = !DILocation(line: 802, column: 3, scope: !3142)
!3189 = !DILocation(line: 0, scope: !3151)
!3190 = !DILocation(line: 815, column: 37, scope: !3151)
!3191 = !DILocation(line: 816, column: 11, scope: !3151)
!3192 = !DILocation(line: 818, column: 18, scope: !3151)
!3193 = !DILocation(line: 818, column: 27, scope: !3151)
!3194 = !DILocation(line: 818, column: 24, scope: !3151)
!3195 = !DILocation(line: 819, column: 69, scope: !3151)
!3196 = !DILocation(line: 820, column: 53, scope: !3151)
!3197 = !DILocation(line: 821, column: 49, scope: !3151)
!3198 = !DILocation(line: 822, column: 49, scope: !3151)
!3199 = !DILocation(line: 819, column: 20, scope: !3151)
!3200 = !DILocation(line: 822, column: 62, scope: !3151)
!3201 = !DILocation(line: 0, scope: !3176, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 823, column: 15, scope: !3151)
!3203 = !DILocation(line: 218, column: 10, scope: !3176, inlinedAt: !3202)
!3204 = !DILocation(line: 824, column: 60, scope: !3151)
!3205 = !DILocation(line: 826, column: 32, scope: !3151)
!3206 = !DILocation(line: 826, column: 47, scope: !3151)
!3207 = !DILocation(line: 824, column: 3, scope: !3151)
!3208 = !DILocation(line: 827, column: 9, scope: !3151)
!3209 = !DILocation(line: 828, column: 7, scope: !3151)
!3210 = !DILocation(line: 829, column: 11, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3151, file: !207, line: 828, column: 7)
!3212 = !{!3213, !3213, i64 0}
!3213 = !{!"long", !1158, i64 0}
!3214 = !DILocation(line: 829, column: 5, scope: !3211)
!3215 = !DILocation(line: 830, column: 3, scope: !3151)
!3216 = distinct !DISubprogram(name: "quotearg_free", scope: !207, file: !207, line: 848, type: !311, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3217)
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "sv", scope: !3216, file: !207, line: 850, type: !334)
!3219 = !DILocalVariable(name: "i", scope: !3216, file: !207, line: 851, type: !10)
!3220 = !DILocation(line: 850, column: 24, scope: !3216)
!3221 = !DILocation(line: 0, scope: !3216)
!3222 = !DILocation(line: 852, column: 19, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !207, line: 852, column: 3)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !207, line: 852, column: 3)
!3225 = !DILocation(line: 852, column: 17, scope: !3223)
!3226 = !DILocation(line: 852, column: 3, scope: !3224)
!3227 = !DILocation(line: 853, column: 17, scope: !3223)
!3228 = !{!3229, !1157, i64 8}
!3229 = !{!"slotvec", !3213, i64 0, !1157, i64 8}
!3230 = !DILocation(line: 853, column: 5, scope: !3223)
!3231 = !DILocation(line: 852, column: 28, scope: !3223)
!3232 = distinct !{!3232, !3226, !3233}
!3233 = !DILocation(line: 853, column: 20, scope: !3224)
!3234 = !DILocation(line: 854, column: 13, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3216, file: !207, line: 854, column: 7)
!3236 = !DILocation(line: 854, column: 17, scope: !3235)
!3237 = !DILocation(line: 854, column: 7, scope: !3216)
!3238 = !DILocation(line: 856, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !207, line: 855, column: 5)
!3240 = !DILocation(line: 857, column: 21, scope: !3239)
!3241 = !{!3229, !3213, i64 0}
!3242 = !DILocation(line: 858, column: 20, scope: !3239)
!3243 = !DILocation(line: 859, column: 5, scope: !3239)
!3244 = !DILocation(line: 860, column: 10, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3216, file: !207, line: 860, column: 7)
!3246 = !DILocation(line: 860, column: 7, scope: !3216)
!3247 = !DILocation(line: 862, column: 13, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !207, line: 861, column: 5)
!3249 = !DILocation(line: 862, column: 7, scope: !3248)
!3250 = !DILocation(line: 863, column: 15, scope: !3248)
!3251 = !DILocation(line: 864, column: 5, scope: !3248)
!3252 = !DILocation(line: 865, column: 10, scope: !3216)
!3253 = !DILocation(line: 866, column: 1, scope: !3216)
!3254 = distinct !DISubprogram(name: "quotearg_n", scope: !207, file: !207, line: 931, type: !408, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3255)
!3255 = !{!3256, !3257}
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !207, line: 931, type: !10)
!3257 = !DILocalVariable(name: "arg", arg: 2, scope: !3254, file: !207, line: 931, type: !74)
!3258 = !DILocation(line: 0, scope: !3254)
!3259 = !DILocation(line: 933, column: 10, scope: !3254)
!3260 = !DILocation(line: 933, column: 3, scope: !3254)
!3261 = distinct !DISubprogram(name: "quotearg_n_options", scope: !207, file: !207, line: 877, type: !3262, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!17, !10, !74, !62, !253}
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3274, !3275, !3277, !3278, !3279}
!3265 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !207, line: 877, type: !10)
!3266 = !DILocalVariable(name: "arg", arg: 2, scope: !3261, file: !207, line: 877, type: !74)
!3267 = !DILocalVariable(name: "argsize", arg: 3, scope: !3261, file: !207, line: 877, type: !62)
!3268 = !DILocalVariable(name: "options", arg: 4, scope: !3261, file: !207, line: 878, type: !253)
!3269 = !DILocalVariable(name: "e", scope: !3261, file: !207, line: 880, type: !10)
!3270 = !DILocalVariable(name: "sv", scope: !3261, file: !207, line: 882, type: !334)
!3271 = !DILocalVariable(name: "preallocated", scope: !3272, file: !207, line: 889, type: !87)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !207, line: 888, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3261, file: !207, line: 887, column: 7)
!3274 = !DILocalVariable(name: "nmax", scope: !3272, file: !207, line: 890, type: !10)
!3275 = !DILocalVariable(name: "size", scope: !3276, file: !207, line: 903, type: !62)
!3276 = distinct !DILexicalBlock(scope: !3261, file: !207, line: 902, column: 3)
!3277 = !DILocalVariable(name: "val", scope: !3276, file: !207, line: 904, type: !17)
!3278 = !DILocalVariable(name: "flags", scope: !3276, file: !207, line: 906, type: !10)
!3279 = !DILocalVariable(name: "qsize", scope: !3276, file: !207, line: 907, type: !62)
!3280 = !DILocation(line: 0, scope: !3261)
!3281 = !DILocation(line: 880, column: 11, scope: !3261)
!3282 = !DILocation(line: 882, column: 24, scope: !3261)
!3283 = !DILocation(line: 884, column: 9, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3261, file: !207, line: 884, column: 7)
!3285 = !DILocation(line: 884, column: 7, scope: !3261)
!3286 = !DILocation(line: 885, column: 5, scope: !3284)
!3287 = !DILocation(line: 887, column: 7, scope: !3273)
!3288 = !DILocation(line: 887, column: 14, scope: !3273)
!3289 = !DILocation(line: 887, column: 7, scope: !3261)
!3290 = !DILocation(line: 889, column: 31, scope: !3272)
!3291 = !DILocation(line: 0, scope: !3272)
!3292 = !DILocation(line: 892, column: 16, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3272, file: !207, line: 892, column: 11)
!3294 = !DILocation(line: 892, column: 11, scope: !3272)
!3295 = !DILocation(line: 893, column: 9, scope: !3293)
!3296 = !DILocation(line: 895, column: 32, scope: !3272)
!3297 = !DILocation(line: 895, column: 61, scope: !3272)
!3298 = !DILocation(line: 895, column: 58, scope: !3272)
!3299 = !DILocation(line: 895, column: 66, scope: !3272)
!3300 = !DILocation(line: 895, column: 22, scope: !3272)
!3301 = !DILocation(line: 895, column: 15, scope: !3272)
!3302 = !DILocation(line: 896, column: 11, scope: !3272)
!3303 = !DILocation(line: 897, column: 15, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3272, file: !207, line: 896, column: 11)
!3305 = !{i64 0, i64 8, !3212, i64 8, i64 8, !1156}
!3306 = !DILocation(line: 897, column: 9, scope: !3304)
!3307 = !DILocation(line: 898, column: 20, scope: !3272)
!3308 = !DILocation(line: 898, column: 18, scope: !3272)
!3309 = !DILocation(line: 898, column: 15, scope: !3272)
!3310 = !DILocation(line: 898, column: 38, scope: !3272)
!3311 = !DILocation(line: 898, column: 31, scope: !3272)
!3312 = !DILocation(line: 898, column: 48, scope: !3272)
!3313 = !DILocation(line: 0, scope: !2709, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 898, column: 7, scope: !3272)
!3315 = !DILocation(line: 71, column: 10, scope: !2709, inlinedAt: !3314)
!3316 = !DILocation(line: 899, column: 14, scope: !3272)
!3317 = !DILocation(line: 900, column: 5, scope: !3272)
!3318 = !DILocation(line: 903, column: 19, scope: !3276)
!3319 = !DILocation(line: 903, column: 25, scope: !3276)
!3320 = !DILocation(line: 0, scope: !3276)
!3321 = !DILocation(line: 904, column: 23, scope: !3276)
!3322 = !DILocation(line: 906, column: 26, scope: !3276)
!3323 = !DILocation(line: 906, column: 32, scope: !3276)
!3324 = !DILocation(line: 908, column: 55, scope: !3276)
!3325 = !DILocation(line: 909, column: 46, scope: !3276)
!3326 = !DILocation(line: 910, column: 55, scope: !3276)
!3327 = !DILocation(line: 911, column: 55, scope: !3276)
!3328 = !DILocation(line: 907, column: 20, scope: !3276)
!3329 = !DILocation(line: 913, column: 14, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3276, file: !207, line: 913, column: 9)
!3331 = !DILocation(line: 913, column: 9, scope: !3276)
!3332 = !DILocation(line: 915, column: 35, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !207, line: 914, column: 7)
!3334 = !DILocation(line: 915, column: 20, scope: !3333)
!3335 = !DILocation(line: 916, column: 17, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !207, line: 916, column: 13)
!3337 = !DILocation(line: 916, column: 13, scope: !3333)
!3338 = !DILocation(line: 917, column: 11, scope: !3336)
!3339 = !DILocation(line: 0, scope: !3176, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 918, column: 27, scope: !3333)
!3341 = !DILocation(line: 218, column: 10, scope: !3176, inlinedAt: !3340)
!3342 = !DILocation(line: 918, column: 19, scope: !3333)
!3343 = !DILocation(line: 919, column: 69, scope: !3333)
!3344 = !DILocation(line: 921, column: 44, scope: !3333)
!3345 = !DILocation(line: 922, column: 44, scope: !3333)
!3346 = !DILocation(line: 919, column: 9, scope: !3333)
!3347 = !DILocation(line: 923, column: 7, scope: !3333)
!3348 = !DILocation(line: 925, column: 11, scope: !3276)
!3349 = !DILocation(line: 926, column: 5, scope: !3276)
!3350 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !207, file: !207, line: 937, type: !3351, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!17, !10, !74, !62}
!3353 = !{!3354, !3355, !3356}
!3354 = !DILocalVariable(name: "n", arg: 1, scope: !3350, file: !207, line: 937, type: !10)
!3355 = !DILocalVariable(name: "arg", arg: 2, scope: !3350, file: !207, line: 937, type: !74)
!3356 = !DILocalVariable(name: "argsize", arg: 3, scope: !3350, file: !207, line: 937, type: !62)
!3357 = !DILocation(line: 0, scope: !3350)
!3358 = !DILocation(line: 939, column: 10, scope: !3350)
!3359 = !DILocation(line: 939, column: 3, scope: !3350)
!3360 = distinct !DISubprogram(name: "quotearg", scope: !207, file: !207, line: 943, type: !78, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3361)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "arg", arg: 1, scope: !3360, file: !207, line: 943, type: !74)
!3363 = !DILocation(line: 0, scope: !3360)
!3364 = !DILocation(line: 0, scope: !3254, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 945, column: 10, scope: !3360)
!3366 = !DILocation(line: 933, column: 10, scope: !3254, inlinedAt: !3365)
!3367 = !DILocation(line: 945, column: 3, scope: !3360)
!3368 = distinct !DISubprogram(name: "quotearg_mem", scope: !207, file: !207, line: 949, type: !3369, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!17, !74, !62}
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "arg", arg: 1, scope: !3368, file: !207, line: 949, type: !74)
!3373 = !DILocalVariable(name: "argsize", arg: 2, scope: !3368, file: !207, line: 949, type: !62)
!3374 = !DILocation(line: 0, scope: !3368)
!3375 = !DILocation(line: 0, scope: !3350, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 951, column: 10, scope: !3368)
!3377 = !DILocation(line: 939, column: 10, scope: !3350, inlinedAt: !3376)
!3378 = !DILocation(line: 951, column: 3, scope: !3368)
!3379 = distinct !DISubprogram(name: "quotearg_n_style", scope: !207, file: !207, line: 955, type: !3380, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!17, !10, !209, !74}
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !207, line: 955, type: !10)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !207, line: 955, type: !209)
!3385 = !DILocalVariable(name: "arg", arg: 3, scope: !3379, file: !207, line: 955, type: !74)
!3386 = !DILocalVariable(name: "o", scope: !3379, file: !207, line: 957, type: !254)
!3387 = !DILocation(line: 0, scope: !3379)
!3388 = !DILocation(line: 957, column: 3, scope: !3379)
!3389 = !DILocation(line: 957, column: 32, scope: !3379)
!3390 = !DILocalVariable(name: "style", arg: 1, scope: !3391, file: !207, line: 193, type: !209)
!3391 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !207, file: !207, line: 193, type: !3392, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!255, !209}
!3394 = !{!3390, !3395}
!3395 = !DILocalVariable(name: "o", scope: !3391, file: !207, line: 195, type: !255)
!3396 = !DILocation(line: 0, scope: !3391, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 957, column: 36, scope: !3379)
!3398 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3397)
!3399 = !{!3400}
!3400 = distinct !{!3400, !3401, !"quoting_options_from_style: argument 0"}
!3401 = distinct !{!3401, !"quoting_options_from_style"}
!3402 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3397)
!3403 = distinct !DILexicalBlock(scope: !3391, file: !207, line: 196, column: 7)
!3404 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3397)
!3405 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3397)
!3406 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3397)
!3407 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3397)
!3408 = !DILocation(line: 958, column: 10, scope: !3379)
!3409 = !DILocation(line: 959, column: 1, scope: !3379)
!3410 = !DILocation(line: 958, column: 3, scope: !3379)
!3411 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !207, file: !207, line: 962, type: !3412, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!17, !10, !209, !74, !62}
!3414 = !{!3415, !3416, !3417, !3418, !3419}
!3415 = !DILocalVariable(name: "n", arg: 1, scope: !3411, file: !207, line: 962, type: !10)
!3416 = !DILocalVariable(name: "s", arg: 2, scope: !3411, file: !207, line: 962, type: !209)
!3417 = !DILocalVariable(name: "arg", arg: 3, scope: !3411, file: !207, line: 963, type: !74)
!3418 = !DILocalVariable(name: "argsize", arg: 4, scope: !3411, file: !207, line: 963, type: !62)
!3419 = !DILocalVariable(name: "o", scope: !3411, file: !207, line: 965, type: !254)
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
!3437 = distinct !DISubprogram(name: "quotearg_style", scope: !207, file: !207, line: 970, type: !3438, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!17, !209, !74}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "s", arg: 1, scope: !3437, file: !207, line: 970, type: !209)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !207, line: 970, type: !74)
!3443 = !DILocation(line: 195, column: 26, scope: !3391, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 957, column: 36, scope: !3379, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 972, column: 10, scope: !3437)
!3446 = !DILocation(line: 957, column: 32, scope: !3379, inlinedAt: !3445)
!3447 = !DILocation(line: 0, scope: !3437)
!3448 = !DILocation(line: 0, scope: !3379, inlinedAt: !3445)
!3449 = !DILocation(line: 957, column: 3, scope: !3379, inlinedAt: !3445)
!3450 = !DILocation(line: 0, scope: !3391, inlinedAt: !3444)
!3451 = !{!3452}
!3452 = distinct !{!3452, !3453, !"quoting_options_from_style: argument 0"}
!3453 = distinct !{!3453, !"quoting_options_from_style"}
!3454 = !DILocation(line: 196, column: 13, scope: !3403, inlinedAt: !3444)
!3455 = !DILocation(line: 196, column: 7, scope: !3391, inlinedAt: !3444)
!3456 = !DILocation(line: 197, column: 5, scope: !3403, inlinedAt: !3444)
!3457 = !DILocation(line: 198, column: 5, scope: !3391, inlinedAt: !3444)
!3458 = !DILocation(line: 198, column: 11, scope: !3391, inlinedAt: !3444)
!3459 = !DILocation(line: 958, column: 10, scope: !3379, inlinedAt: !3445)
!3460 = !DILocation(line: 959, column: 1, scope: !3379, inlinedAt: !3445)
!3461 = !DILocation(line: 972, column: 3, scope: !3437)
!3462 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !207, file: !207, line: 976, type: !3463, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!17, !209, !74, !62}
!3465 = !{!3466, !3467, !3468}
!3466 = !DILocalVariable(name: "s", arg: 1, scope: !3462, file: !207, line: 976, type: !209)
!3467 = !DILocalVariable(name: "arg", arg: 2, scope: !3462, file: !207, line: 976, type: !74)
!3468 = !DILocalVariable(name: "argsize", arg: 3, scope: !3462, file: !207, line: 976, type: !62)
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
!3488 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !207, file: !207, line: 982, type: !3489, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!17, !74, !62, !18}
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DILocalVariable(name: "arg", arg: 1, scope: !3488, file: !207, line: 982, type: !74)
!3493 = !DILocalVariable(name: "argsize", arg: 2, scope: !3488, file: !207, line: 982, type: !62)
!3494 = !DILocalVariable(name: "ch", arg: 3, scope: !3488, file: !207, line: 982, type: !18)
!3495 = !DILocalVariable(name: "options", scope: !3488, file: !207, line: 984, type: !255)
!3496 = !DILocation(line: 0, scope: !3488)
!3497 = !DILocation(line: 984, column: 3, scope: !3488)
!3498 = !DILocation(line: 984, column: 26, scope: !3488)
!3499 = !DILocation(line: 985, column: 13, scope: !3488)
!3500 = !{i64 0, i64 4, !1267, i64 4, i64 4, !1946, i64 8, i64 32, !1267, i64 40, i64 8, !1156, i64 48, i64 8, !1156}
!3501 = !DILocation(line: 0, scope: !2321, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 986, column: 3, scope: !3488)
!3503 = !DILocation(line: 156, column: 62, scope: !2321, inlinedAt: !3502)
!3504 = !DILocation(line: 156, column: 57, scope: !2321, inlinedAt: !3502)
!3505 = !DILocation(line: 157, column: 15, scope: !2321, inlinedAt: !3502)
!3506 = !DILocation(line: 158, column: 12, scope: !2321, inlinedAt: !3502)
!3507 = !DILocation(line: 158, column: 15, scope: !2321, inlinedAt: !3502)
!3508 = !DILocation(line: 158, column: 25, scope: !2321, inlinedAt: !3502)
!3509 = !DILocation(line: 159, column: 18, scope: !2321, inlinedAt: !3502)
!3510 = !DILocation(line: 159, column: 23, scope: !2321, inlinedAt: !3502)
!3511 = !DILocation(line: 159, column: 6, scope: !2321, inlinedAt: !3502)
!3512 = !DILocation(line: 987, column: 10, scope: !3488)
!3513 = !DILocation(line: 988, column: 1, scope: !3488)
!3514 = !DILocation(line: 987, column: 3, scope: !3488)
!3515 = distinct !DISubprogram(name: "quotearg_char", scope: !207, file: !207, line: 991, type: !3516, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!17, !74, !18}
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "arg", arg: 1, scope: !3515, file: !207, line: 991, type: !74)
!3520 = !DILocalVariable(name: "ch", arg: 2, scope: !3515, file: !207, line: 991, type: !18)
!3521 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 993, column: 10, scope: !3515)
!3523 = !DILocation(line: 0, scope: !3515)
!3524 = !DILocation(line: 0, scope: !3488, inlinedAt: !3522)
!3525 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3522)
!3526 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3522)
!3527 = !DILocation(line: 0, scope: !2321, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3522)
!3529 = !DILocation(line: 156, column: 62, scope: !2321, inlinedAt: !3528)
!3530 = !DILocation(line: 156, column: 57, scope: !2321, inlinedAt: !3528)
!3531 = !DILocation(line: 157, column: 15, scope: !2321, inlinedAt: !3528)
!3532 = !DILocation(line: 158, column: 12, scope: !2321, inlinedAt: !3528)
!3533 = !DILocation(line: 158, column: 15, scope: !2321, inlinedAt: !3528)
!3534 = !DILocation(line: 158, column: 25, scope: !2321, inlinedAt: !3528)
!3535 = !DILocation(line: 159, column: 18, scope: !2321, inlinedAt: !3528)
!3536 = !DILocation(line: 159, column: 23, scope: !2321, inlinedAt: !3528)
!3537 = !DILocation(line: 159, column: 6, scope: !2321, inlinedAt: !3528)
!3538 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3522)
!3539 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3522)
!3540 = !DILocation(line: 993, column: 3, scope: !3515)
!3541 = distinct !DISubprogram(name: "quotearg_colon", scope: !207, file: !207, line: 997, type: !78, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3542)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3541, file: !207, line: 997, type: !74)
!3544 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 993, column: 10, scope: !3515, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 999, column: 10, scope: !3541)
!3547 = !DILocation(line: 0, scope: !3541)
!3548 = !DILocation(line: 0, scope: !3515, inlinedAt: !3546)
!3549 = !DILocation(line: 0, scope: !3488, inlinedAt: !3545)
!3550 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3545)
!3551 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3545)
!3552 = !DILocation(line: 0, scope: !2321, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3545)
!3554 = !DILocation(line: 156, column: 57, scope: !2321, inlinedAt: !3553)
!3555 = !DILocation(line: 158, column: 12, scope: !2321, inlinedAt: !3553)
!3556 = !DILocation(line: 159, column: 6, scope: !2321, inlinedAt: !3553)
!3557 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3545)
!3558 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3545)
!3559 = !DILocation(line: 999, column: 3, scope: !3541)
!3560 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !207, file: !207, line: 1003, type: !3369, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3561)
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "arg", arg: 1, scope: !3560, file: !207, line: 1003, type: !74)
!3563 = !DILocalVariable(name: "argsize", arg: 2, scope: !3560, file: !207, line: 1003, type: !62)
!3564 = !DILocation(line: 984, column: 26, scope: !3488, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1005, column: 10, scope: !3560)
!3566 = !DILocation(line: 0, scope: !3560)
!3567 = !DILocation(line: 0, scope: !3488, inlinedAt: !3565)
!3568 = !DILocation(line: 984, column: 3, scope: !3488, inlinedAt: !3565)
!3569 = !DILocation(line: 985, column: 13, scope: !3488, inlinedAt: !3565)
!3570 = !DILocation(line: 0, scope: !2321, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 986, column: 3, scope: !3488, inlinedAt: !3565)
!3572 = !DILocation(line: 156, column: 57, scope: !2321, inlinedAt: !3571)
!3573 = !DILocation(line: 158, column: 12, scope: !2321, inlinedAt: !3571)
!3574 = !DILocation(line: 159, column: 6, scope: !2321, inlinedAt: !3571)
!3575 = !DILocation(line: 987, column: 10, scope: !3488, inlinedAt: !3565)
!3576 = !DILocation(line: 988, column: 1, scope: !3488, inlinedAt: !3565)
!3577 = !DILocation(line: 1005, column: 3, scope: !3560)
!3578 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !207, file: !207, line: 1009, type: !3380, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !207, line: 1009, type: !10)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3578, file: !207, line: 1009, type: !209)
!3582 = !DILocalVariable(name: "arg", arg: 3, scope: !3578, file: !207, line: 1009, type: !74)
!3583 = !DILocalVariable(name: "options", scope: !3578, file: !207, line: 1011, type: !255)
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
!3597 = !DILocation(line: 0, scope: !2321, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1013, column: 3, scope: !3578)
!3599 = !DILocation(line: 156, column: 57, scope: !2321, inlinedAt: !3598)
!3600 = !DILocation(line: 158, column: 12, scope: !2321, inlinedAt: !3598)
!3601 = !DILocation(line: 159, column: 6, scope: !2321, inlinedAt: !3598)
!3602 = !DILocation(line: 1014, column: 10, scope: !3578)
!3603 = !DILocation(line: 1015, column: 1, scope: !3578)
!3604 = !DILocation(line: 1014, column: 3, scope: !3578)
!3605 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !207, file: !207, line: 1018, type: !3606, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!17, !10, !74, !74, !74}
!3608 = !{!3609, !3610, !3611, !3612}
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !207, line: 1018, type: !10)
!3610 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3605, file: !207, line: 1018, type: !74)
!3611 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3605, file: !207, line: 1019, type: !74)
!3612 = !DILocalVariable(name: "arg", arg: 4, scope: !3605, file: !207, line: 1019, type: !74)
!3613 = !DILocalVariable(name: "o", scope: !3614, file: !207, line: 1030, type: !255)
!3614 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !207, file: !207, line: 1026, type: !3615, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!17, !10, !74, !74, !74, !62}
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3613}
!3618 = !DILocalVariable(name: "n", arg: 1, scope: !3614, file: !207, line: 1026, type: !10)
!3619 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3614, file: !207, line: 1026, type: !74)
!3620 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3614, file: !207, line: 1027, type: !74)
!3621 = !DILocalVariable(name: "arg", arg: 4, scope: !3614, file: !207, line: 1028, type: !74)
!3622 = !DILocalVariable(name: "argsize", arg: 5, scope: !3614, file: !207, line: 1028, type: !62)
!3623 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1021, column: 10, scope: !3605)
!3625 = !DILocation(line: 0, scope: !3605)
!3626 = !DILocation(line: 0, scope: !3614, inlinedAt: !3624)
!3627 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3624)
!3628 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3624)
!3629 = !DILocation(line: 0, scope: !2362, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3624)
!3631 = !DILocation(line: 184, column: 6, scope: !2362, inlinedAt: !3630)
!3632 = !DILocation(line: 184, column: 12, scope: !2362, inlinedAt: !3630)
!3633 = !DILocation(line: 185, column: 8, scope: !2376, inlinedAt: !3630)
!3634 = !DILocation(line: 185, column: 23, scope: !2376, inlinedAt: !3630)
!3635 = !DILocation(line: 185, column: 19, scope: !2376, inlinedAt: !3630)
!3636 = !DILocation(line: 186, column: 5, scope: !2376, inlinedAt: !3630)
!3637 = !DILocation(line: 187, column: 6, scope: !2362, inlinedAt: !3630)
!3638 = !DILocation(line: 187, column: 17, scope: !2362, inlinedAt: !3630)
!3639 = !DILocation(line: 188, column: 6, scope: !2362, inlinedAt: !3630)
!3640 = !DILocation(line: 188, column: 18, scope: !2362, inlinedAt: !3630)
!3641 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3624)
!3642 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3624)
!3643 = !DILocation(line: 1021, column: 3, scope: !3605)
!3644 = !DILocation(line: 0, scope: !3614)
!3645 = !DILocation(line: 1030, column: 3, scope: !3614)
!3646 = !DILocation(line: 1030, column: 26, scope: !3614)
!3647 = !DILocation(line: 1030, column: 30, scope: !3614)
!3648 = !DILocation(line: 0, scope: !2362, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 1031, column: 3, scope: !3614)
!3650 = !DILocation(line: 184, column: 6, scope: !2362, inlinedAt: !3649)
!3651 = !DILocation(line: 184, column: 12, scope: !2362, inlinedAt: !3649)
!3652 = !DILocation(line: 185, column: 8, scope: !2376, inlinedAt: !3649)
!3653 = !DILocation(line: 185, column: 23, scope: !2376, inlinedAt: !3649)
!3654 = !DILocation(line: 185, column: 19, scope: !2376, inlinedAt: !3649)
!3655 = !DILocation(line: 186, column: 5, scope: !2376, inlinedAt: !3649)
!3656 = !DILocation(line: 187, column: 6, scope: !2362, inlinedAt: !3649)
!3657 = !DILocation(line: 187, column: 17, scope: !2362, inlinedAt: !3649)
!3658 = !DILocation(line: 188, column: 6, scope: !2362, inlinedAt: !3649)
!3659 = !DILocation(line: 188, column: 18, scope: !2362, inlinedAt: !3649)
!3660 = !DILocation(line: 1032, column: 10, scope: !3614)
!3661 = !DILocation(line: 1033, column: 1, scope: !3614)
!3662 = !DILocation(line: 1032, column: 3, scope: !3614)
!3663 = distinct !DISubprogram(name: "quotearg_custom", scope: !207, file: !207, line: 1036, type: !3664, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!17, !74, !74, !74}
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3663, file: !207, line: 1036, type: !74)
!3668 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3663, file: !207, line: 1036, type: !74)
!3669 = !DILocalVariable(name: "arg", arg: 3, scope: !3663, file: !207, line: 1037, type: !74)
!3670 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1021, column: 10, scope: !3605, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 1039, column: 10, scope: !3663)
!3673 = !DILocation(line: 0, scope: !3663)
!3674 = !DILocation(line: 0, scope: !3605, inlinedAt: !3672)
!3675 = !DILocation(line: 0, scope: !3614, inlinedAt: !3671)
!3676 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3671)
!3677 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3671)
!3678 = !DILocation(line: 0, scope: !2362, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3671)
!3680 = !DILocation(line: 184, column: 6, scope: !2362, inlinedAt: !3679)
!3681 = !DILocation(line: 184, column: 12, scope: !2362, inlinedAt: !3679)
!3682 = !DILocation(line: 185, column: 8, scope: !2376, inlinedAt: !3679)
!3683 = !DILocation(line: 185, column: 23, scope: !2376, inlinedAt: !3679)
!3684 = !DILocation(line: 185, column: 19, scope: !2376, inlinedAt: !3679)
!3685 = !DILocation(line: 186, column: 5, scope: !2376, inlinedAt: !3679)
!3686 = !DILocation(line: 187, column: 6, scope: !2362, inlinedAt: !3679)
!3687 = !DILocation(line: 187, column: 17, scope: !2362, inlinedAt: !3679)
!3688 = !DILocation(line: 188, column: 6, scope: !2362, inlinedAt: !3679)
!3689 = !DILocation(line: 188, column: 18, scope: !2362, inlinedAt: !3679)
!3690 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3671)
!3691 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3671)
!3692 = !DILocation(line: 1039, column: 3, scope: !3663)
!3693 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !207, file: !207, line: 1043, type: !3694, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!17, !74, !74, !74, !62}
!3696 = !{!3697, !3698, !3699, !3700}
!3697 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3693, file: !207, line: 1043, type: !74)
!3698 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3693, file: !207, line: 1043, type: !74)
!3699 = !DILocalVariable(name: "arg", arg: 3, scope: !3693, file: !207, line: 1044, type: !74)
!3700 = !DILocalVariable(name: "argsize", arg: 4, scope: !3693, file: !207, line: 1044, type: !62)
!3701 = !DILocation(line: 1030, column: 26, scope: !3614, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1046, column: 10, scope: !3693)
!3703 = !DILocation(line: 0, scope: !3693)
!3704 = !DILocation(line: 0, scope: !3614, inlinedAt: !3702)
!3705 = !DILocation(line: 1030, column: 3, scope: !3614, inlinedAt: !3702)
!3706 = !DILocation(line: 1030, column: 30, scope: !3614, inlinedAt: !3702)
!3707 = !DILocation(line: 0, scope: !2362, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1031, column: 3, scope: !3614, inlinedAt: !3702)
!3709 = !DILocation(line: 184, column: 6, scope: !2362, inlinedAt: !3708)
!3710 = !DILocation(line: 184, column: 12, scope: !2362, inlinedAt: !3708)
!3711 = !DILocation(line: 185, column: 8, scope: !2376, inlinedAt: !3708)
!3712 = !DILocation(line: 185, column: 23, scope: !2376, inlinedAt: !3708)
!3713 = !DILocation(line: 185, column: 19, scope: !2376, inlinedAt: !3708)
!3714 = !DILocation(line: 186, column: 5, scope: !2376, inlinedAt: !3708)
!3715 = !DILocation(line: 187, column: 6, scope: !2362, inlinedAt: !3708)
!3716 = !DILocation(line: 187, column: 17, scope: !2362, inlinedAt: !3708)
!3717 = !DILocation(line: 188, column: 6, scope: !2362, inlinedAt: !3708)
!3718 = !DILocation(line: 188, column: 18, scope: !2362, inlinedAt: !3708)
!3719 = !DILocation(line: 1032, column: 10, scope: !3614, inlinedAt: !3702)
!3720 = !DILocation(line: 1033, column: 1, scope: !3614, inlinedAt: !3702)
!3721 = !DILocation(line: 1046, column: 3, scope: !3693)
!3722 = distinct !DISubprogram(name: "quote_n_mem", scope: !207, file: !207, line: 1061, type: !3723, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!74, !10, !74, !62}
!3725 = !{!3726, !3727, !3728}
!3726 = !DILocalVariable(name: "n", arg: 1, scope: !3722, file: !207, line: 1061, type: !10)
!3727 = !DILocalVariable(name: "arg", arg: 2, scope: !3722, file: !207, line: 1061, type: !74)
!3728 = !DILocalVariable(name: "argsize", arg: 3, scope: !3722, file: !207, line: 1061, type: !62)
!3729 = !DILocation(line: 0, scope: !3722)
!3730 = !DILocation(line: 1063, column: 10, scope: !3722)
!3731 = !DILocation(line: 1063, column: 3, scope: !3722)
!3732 = distinct !DISubprogram(name: "quote_mem", scope: !207, file: !207, line: 1067, type: !3733, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!74, !74, !62}
!3735 = !{!3736, !3737}
!3736 = !DILocalVariable(name: "arg", arg: 1, scope: !3732, file: !207, line: 1067, type: !74)
!3737 = !DILocalVariable(name: "argsize", arg: 2, scope: !3732, file: !207, line: 1067, type: !62)
!3738 = !DILocation(line: 0, scope: !3732)
!3739 = !DILocation(line: 0, scope: !3722, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 1069, column: 10, scope: !3732)
!3741 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3740)
!3742 = !DILocation(line: 1069, column: 3, scope: !3732)
!3743 = distinct !DISubprogram(name: "quote_n", scope: !207, file: !207, line: 1073, type: !3744, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!74, !10, !74}
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "n", arg: 1, scope: !3743, file: !207, line: 1073, type: !10)
!3748 = !DILocalVariable(name: "arg", arg: 2, scope: !3743, file: !207, line: 1073, type: !74)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 0, scope: !3722, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 1075, column: 10, scope: !3743)
!3752 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3751)
!3753 = !DILocation(line: 1075, column: 3, scope: !3743)
!3754 = distinct !DISubprogram(name: "quote", scope: !207, file: !207, line: 1079, type: !3755, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!74, !74}
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "arg", arg: 1, scope: !3754, file: !207, line: 1079, type: !74)
!3759 = !DILocation(line: 0, scope: !3754)
!3760 = !DILocation(line: 0, scope: !3743, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 1081, column: 10, scope: !3754)
!3762 = !DILocation(line: 0, scope: !3722, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1075, column: 10, scope: !3743, inlinedAt: !3761)
!3764 = !DILocation(line: 1063, column: 10, scope: !3722, inlinedAt: !3763)
!3765 = !DILocation(line: 1081, column: 3, scope: !3754)
!3766 = distinct !DISubprogram(name: "version_etc_arn", scope: !466, file: !466, line: 61, type: !3767, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3773)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3769, !74, !74, !74, !3772, !62}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3771, line: 7, baseType: !476)
!3771 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779}
!3774 = !DILocalVariable(name: "stream", arg: 1, scope: !3766, file: !466, line: 61, type: !3769)
!3775 = !DILocalVariable(name: "command_name", arg: 2, scope: !3766, file: !466, line: 62, type: !74)
!3776 = !DILocalVariable(name: "package", arg: 3, scope: !3766, file: !466, line: 62, type: !74)
!3777 = !DILocalVariable(name: "version", arg: 4, scope: !3766, file: !466, line: 63, type: !74)
!3778 = !DILocalVariable(name: "authors", arg: 5, scope: !3766, file: !466, line: 64, type: !3772)
!3779 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3766, file: !466, line: 64, type: !62)
!3780 = !DILocation(line: 0, scope: !3766)
!3781 = !DILocation(line: 66, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3766, file: !466, line: 66, column: 7)
!3783 = !DILocation(line: 66, column: 7, scope: !3766)
!3784 = !DILocation(line: 67, column: 5, scope: !3782)
!3785 = !DILocation(line: 69, column: 5, scope: !3782)
!3786 = !DILocation(line: 83, column: 3, scope: !3766)
!3787 = !DILocation(line: 85, column: 3, scope: !3766)
!3788 = !DILocation(line: 88, column: 3, scope: !3766)
!3789 = !DILocation(line: 95, column: 3, scope: !3766)
!3790 = !DILocation(line: 97, column: 3, scope: !3766)
!3791 = !DILocation(line: 105, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3766, file: !466, line: 98, column: 5)
!3793 = !DILocation(line: 106, column: 7, scope: !3792)
!3794 = !DILocation(line: 109, column: 7, scope: !3792)
!3795 = !DILocation(line: 110, column: 7, scope: !3792)
!3796 = !DILocation(line: 113, column: 7, scope: !3792)
!3797 = !DILocation(line: 115, column: 7, scope: !3792)
!3798 = !DILocation(line: 120, column: 7, scope: !3792)
!3799 = !DILocation(line: 122, column: 7, scope: !3792)
!3800 = !DILocation(line: 127, column: 7, scope: !3792)
!3801 = !DILocation(line: 129, column: 7, scope: !3792)
!3802 = !DILocation(line: 134, column: 7, scope: !3792)
!3803 = !DILocation(line: 137, column: 7, scope: !3792)
!3804 = !DILocation(line: 142, column: 7, scope: !3792)
!3805 = !DILocation(line: 145, column: 7, scope: !3792)
!3806 = !DILocation(line: 150, column: 7, scope: !3792)
!3807 = !DILocation(line: 154, column: 7, scope: !3792)
!3808 = !DILocation(line: 159, column: 7, scope: !3792)
!3809 = !DILocation(line: 163, column: 7, scope: !3792)
!3810 = !DILocation(line: 170, column: 7, scope: !3792)
!3811 = !DILocation(line: 174, column: 7, scope: !3792)
!3812 = !DILocation(line: 176, column: 1, scope: !3766)
!3813 = distinct !DISubprogram(name: "version_etc_ar", scope: !466, file: !466, line: 183, type: !3814, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3769, !74, !74, !74, !3772}
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822}
!3817 = !DILocalVariable(name: "stream", arg: 1, scope: !3813, file: !466, line: 183, type: !3769)
!3818 = !DILocalVariable(name: "command_name", arg: 2, scope: !3813, file: !466, line: 184, type: !74)
!3819 = !DILocalVariable(name: "package", arg: 3, scope: !3813, file: !466, line: 184, type: !74)
!3820 = !DILocalVariable(name: "version", arg: 4, scope: !3813, file: !466, line: 185, type: !74)
!3821 = !DILocalVariable(name: "authors", arg: 5, scope: !3813, file: !466, line: 185, type: !3772)
!3822 = !DILocalVariable(name: "n_authors", scope: !3813, file: !466, line: 187, type: !62)
!3823 = !DILocation(line: 0, scope: !3813)
!3824 = !DILocation(line: 189, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3813, file: !466, line: 189, column: 3)
!3826 = !DILocation(line: 0, scope: !3825)
!3827 = !DILocation(line: 189, column: 23, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !466, line: 189, column: 3)
!3829 = !DILocation(line: 189, column: 3, scope: !3825)
!3830 = !DILocation(line: 189, column: 52, scope: !3828)
!3831 = distinct !{!3831, !3829, !3832}
!3832 = !DILocation(line: 190, column: 5, scope: !3825)
!3833 = !DILocation(line: 191, column: 3, scope: !3813)
!3834 = !DILocation(line: 192, column: 1, scope: !3813)
!3835 = distinct !DISubprogram(name: "version_etc_va", scope: !466, file: !466, line: 199, type: !3836, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3845)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3769, !74, !74, !74, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !466, line: 192, size: 192, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3839, file: !466, line: 192, baseType: !154, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3839, file: !466, line: 192, baseType: !154, size: 32, offset: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3839, file: !466, line: 192, baseType: !60, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3839, file: !466, line: 192, baseType: !60, size: 64, offset: 128)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852}
!3846 = !DILocalVariable(name: "stream", arg: 1, scope: !3835, file: !466, line: 199, type: !3769)
!3847 = !DILocalVariable(name: "command_name", arg: 2, scope: !3835, file: !466, line: 200, type: !74)
!3848 = !DILocalVariable(name: "package", arg: 3, scope: !3835, file: !466, line: 200, type: !74)
!3849 = !DILocalVariable(name: "version", arg: 4, scope: !3835, file: !466, line: 201, type: !74)
!3850 = !DILocalVariable(name: "authors", arg: 5, scope: !3835, file: !466, line: 201, type: !3838)
!3851 = !DILocalVariable(name: "n_authors", scope: !3835, file: !466, line: 203, type: !62)
!3852 = !DILocalVariable(name: "authtab", scope: !3835, file: !466, line: 204, type: !3853)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !321)
!3854 = !DILocation(line: 0, scope: !3835)
!3855 = !DILocation(line: 204, column: 3, scope: !3835)
!3856 = !DILocation(line: 204, column: 15, scope: !3835)
!3857 = !DILocation(line: 0, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !466, line: 206, column: 3)
!3859 = distinct !DILexicalBlock(scope: !3835, file: !466, line: 206, column: 3)
!3860 = !DILocation(line: 208, column: 35, scope: !3858)
!3861 = !DILocation(line: 208, column: 14, scope: !3858)
!3862 = !DILocation(line: 208, column: 33, scope: !3858)
!3863 = !DILocation(line: 208, column: 67, scope: !3858)
!3864 = !DILocation(line: 206, column: 3, scope: !3859)
!3865 = !DILocation(line: 0, scope: !3859)
!3866 = !DILocation(line: 211, column: 3, scope: !3835)
!3867 = !DILocation(line: 213, column: 1, scope: !3835)
!3868 = distinct !DISubprogram(name: "version_etc", scope: !466, file: !466, line: 230, type: !3869, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3769, !74, !74, !74, null}
!3871 = !{!3872, !3873, !3874, !3875, !3876}
!3872 = !DILocalVariable(name: "stream", arg: 1, scope: !3868, file: !466, line: 230, type: !3769)
!3873 = !DILocalVariable(name: "command_name", arg: 2, scope: !3868, file: !466, line: 231, type: !74)
!3874 = !DILocalVariable(name: "package", arg: 3, scope: !3868, file: !466, line: 231, type: !74)
!3875 = !DILocalVariable(name: "version", arg: 4, scope: !3868, file: !466, line: 232, type: !74)
!3876 = !DILocalVariable(name: "authors", scope: !3868, file: !466, line: 234, type: !3877)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 52, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2192, line: 32, baseType: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !466, line: 234, baseType: !3880)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3839, size: 192, elements: !45)
!3881 = !DILocation(line: 0, scope: !3868)
!3882 = !DILocation(line: 234, column: 3, scope: !3868)
!3883 = !DILocation(line: 234, column: 11, scope: !3868)
!3884 = !DILocation(line: 236, column: 3, scope: !3868)
!3885 = !DILocation(line: 237, column: 3, scope: !3868)
!3886 = !DILocation(line: 238, column: 3, scope: !3868)
!3887 = !DILocation(line: 239, column: 1, scope: !3868)
!3888 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !466, file: !466, line: 242, type: !311, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4)
!3889 = !DILocation(line: 244, column: 3, scope: !3888)
!3890 = !DILocation(line: 249, column: 3, scope: !3888)
!3891 = !DILocation(line: 255, column: 3, scope: !3888)
!3892 = !DILocation(line: 260, column: 3, scope: !3888)
!3893 = !DILocation(line: 262, column: 1, scope: !3888)
!3894 = distinct !DISubprogram(name: "xnmalloc", scope: !244, file: !244, line: 99, type: !3895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!60, !62, !62}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !244, line: 99, type: !62)
!3899 = !DILocalVariable(name: "s", arg: 2, scope: !3894, file: !244, line: 99, type: !62)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 101, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !244, line: 101, column: 7)
!3903 = !DILocation(line: 101, column: 7, scope: !3894)
!3904 = !DILocation(line: 102, column: 5, scope: !3902)
!3905 = !DILocation(line: 103, column: 21, scope: !3894)
!3906 = !DILocalVariable(name: "n", arg: 1, scope: !3907, file: !508, line: 39, type: !62)
!3907 = distinct !DISubprogram(name: "xmalloc", scope: !508, file: !508, line: 39, type: !3908, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!60, !62}
!3910 = !{!3906, !3911}
!3911 = !DILocalVariable(name: "p", scope: !3907, file: !508, line: 41, type: !60)
!3912 = !DILocation(line: 0, scope: !3907, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 103, column: 10, scope: !3894)
!3914 = !DILocation(line: 41, column: 13, scope: !3907, inlinedAt: !3913)
!3915 = !DILocation(line: 42, column: 8, scope: !3916, inlinedAt: !3913)
!3916 = distinct !DILexicalBlock(scope: !3907, file: !508, line: 42, column: 7)
!3917 = !DILocation(line: 42, column: 15, scope: !3916, inlinedAt: !3913)
!3918 = !DILocation(line: 42, column: 10, scope: !3916, inlinedAt: !3913)
!3919 = !DILocation(line: 43, column: 5, scope: !3916, inlinedAt: !3913)
!3920 = !DILocation(line: 103, column: 3, scope: !3894)
!3921 = !DILocation(line: 0, scope: !3907)
!3922 = !DILocation(line: 41, column: 13, scope: !3907)
!3923 = !DILocation(line: 42, column: 8, scope: !3916)
!3924 = !DILocation(line: 42, column: 15, scope: !3916)
!3925 = !DILocation(line: 42, column: 10, scope: !3916)
!3926 = !DILocation(line: 43, column: 5, scope: !3916)
!3927 = !DILocation(line: 44, column: 3, scope: !3907)
!3928 = distinct !DISubprogram(name: "xnrealloc", scope: !244, file: !244, line: 112, type: !3929, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!60, !60, !62, !62}
!3931 = !{!3932, !3933, !3934}
!3932 = !DILocalVariable(name: "p", arg: 1, scope: !3928, file: !244, line: 112, type: !60)
!3933 = !DILocalVariable(name: "n", arg: 2, scope: !3928, file: !244, line: 112, type: !62)
!3934 = !DILocalVariable(name: "s", arg: 3, scope: !3928, file: !244, line: 112, type: !62)
!3935 = !DILocation(line: 0, scope: !3928)
!3936 = !DILocation(line: 114, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3928, file: !244, line: 114, column: 7)
!3938 = !DILocation(line: 114, column: 7, scope: !3928)
!3939 = !DILocation(line: 115, column: 5, scope: !3937)
!3940 = !DILocation(line: 116, column: 25, scope: !3928)
!3941 = !DILocalVariable(name: "p", arg: 1, scope: !3942, file: !508, line: 51, type: !60)
!3942 = distinct !DISubprogram(name: "xrealloc", scope: !508, file: !508, line: 51, type: !3943, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!60, !60, !62}
!3945 = !{!3941, !3946}
!3946 = !DILocalVariable(name: "n", arg: 2, scope: !3942, file: !508, line: 51, type: !62)
!3947 = !DILocation(line: 0, scope: !3942, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 116, column: 10, scope: !3928)
!3949 = !DILocation(line: 53, column: 8, scope: !3950, inlinedAt: !3948)
!3950 = distinct !DILexicalBlock(scope: !3942, file: !508, line: 53, column: 7)
!3951 = !DILocation(line: 53, column: 13, scope: !3950, inlinedAt: !3948)
!3952 = !DILocation(line: 53, column: 10, scope: !3950, inlinedAt: !3948)
!3953 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !3948)
!3954 = distinct !DILexicalBlock(scope: !3950, file: !508, line: 54, column: 5)
!3955 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !3948)
!3956 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !3948)
!3957 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !3948)
!3958 = distinct !DILexicalBlock(scope: !3942, file: !508, line: 62, column: 7)
!3959 = !DILocation(line: 62, column: 13, scope: !3958, inlinedAt: !3948)
!3960 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !3948)
!3961 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !3948)
!3962 = !DILocation(line: 116, column: 3, scope: !3928)
!3963 = !DILocation(line: 0, scope: !3942)
!3964 = !DILocation(line: 53, column: 8, scope: !3950)
!3965 = !DILocation(line: 53, column: 13, scope: !3950)
!3966 = !DILocation(line: 53, column: 10, scope: !3950)
!3967 = !DILocation(line: 57, column: 7, scope: !3954)
!3968 = !DILocation(line: 58, column: 7, scope: !3954)
!3969 = !DILocation(line: 61, column: 7, scope: !3942)
!3970 = !DILocation(line: 62, column: 8, scope: !3958)
!3971 = !DILocation(line: 62, column: 13, scope: !3958)
!3972 = !DILocation(line: 62, column: 10, scope: !3958)
!3973 = !DILocation(line: 63, column: 5, scope: !3958)
!3974 = !DILocation(line: 65, column: 1, scope: !3942)
!3975 = !DILocation(line: 0, scope: !511)
!3976 = !DILocation(line: 176, column: 14, scope: !511)
!3977 = !DILocation(line: 178, column: 9, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !511, file: !244, line: 178, column: 7)
!3979 = !DILocation(line: 178, column: 7, scope: !511)
!3980 = !DILocation(line: 180, column: 13, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !244, line: 180, column: 11)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !244, line: 179, column: 5)
!3983 = !DILocation(line: 180, column: 11, scope: !3982)
!3984 = !DILocation(line: 188, column: 30, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3981, file: !244, line: 181, column: 9)
!3986 = !DILocation(line: 189, column: 16, scope: !3985)
!3987 = !DILocation(line: 189, column: 13, scope: !3985)
!3988 = !DILocation(line: 190, column: 9, scope: !3985)
!3989 = !DILocation(line: 191, column: 11, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3982, file: !244, line: 191, column: 11)
!3991 = !DILocation(line: 191, column: 11, scope: !3982)
!3992 = !DILocation(line: 206, column: 7, scope: !511)
!3993 = !DILocation(line: 207, column: 25, scope: !511)
!3994 = !DILocation(line: 0, scope: !3942, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 207, column: 10, scope: !511)
!3996 = !DILocation(line: 53, column: 10, scope: !3950, inlinedAt: !3995)
!3997 = !DILocation(line: 192, column: 9, scope: !3990)
!3998 = !DILocation(line: 200, column: 69, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !244, line: 200, column: 11)
!4000 = distinct !DILexicalBlock(scope: !3978, file: !244, line: 195, column: 5)
!4001 = !DILocation(line: 201, column: 11, scope: !3999)
!4002 = !DILocation(line: 200, column: 11, scope: !4000)
!4003 = !DILocation(line: 202, column: 9, scope: !3999)
!4004 = !DILocation(line: 203, column: 14, scope: !4000)
!4005 = !DILocation(line: 203, column: 18, scope: !4000)
!4006 = !DILocation(line: 203, column: 9, scope: !4000)
!4007 = !DILocation(line: 53, column: 8, scope: !3950, inlinedAt: !3995)
!4008 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !3995)
!4009 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !3995)
!4010 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !3995)
!4011 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !3995)
!4012 = !DILocation(line: 62, column: 13, scope: !3958, inlinedAt: !3995)
!4013 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !3995)
!4014 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !3995)
!4015 = !DILocation(line: 207, column: 3, scope: !511)
!4016 = distinct !DISubprogram(name: "xcharalloc", scope: !244, file: !244, line: 216, type: !3177, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4017)
!4017 = !{!4018}
!4018 = !DILocalVariable(name: "n", arg: 1, scope: !4016, file: !244, line: 216, type: !62)
!4019 = !DILocation(line: 0, scope: !4016)
!4020 = !DILocation(line: 0, scope: !3907, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 218, column: 10, scope: !4016)
!4022 = !DILocation(line: 41, column: 13, scope: !3907, inlinedAt: !4021)
!4023 = !DILocation(line: 42, column: 8, scope: !3916, inlinedAt: !4021)
!4024 = !DILocation(line: 42, column: 15, scope: !3916, inlinedAt: !4021)
!4025 = !DILocation(line: 42, column: 10, scope: !3916, inlinedAt: !4021)
!4026 = !DILocation(line: 43, column: 5, scope: !3916, inlinedAt: !4021)
!4027 = !DILocation(line: 218, column: 3, scope: !4016)
!4028 = distinct !DISubprogram(name: "x2realloc", scope: !508, file: !508, line: 74, type: !4029, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!60, !60, !514}
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "p", arg: 1, scope: !4028, file: !508, line: 74, type: !60)
!4033 = !DILocalVariable(name: "pn", arg: 2, scope: !4028, file: !508, line: 74, type: !514)
!4034 = !DILocation(line: 0, scope: !4028)
!4035 = !DILocation(line: 0, scope: !511, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 76, column: 10, scope: !4028)
!4037 = !DILocation(line: 176, column: 14, scope: !511, inlinedAt: !4036)
!4038 = !DILocation(line: 178, column: 9, scope: !3978, inlinedAt: !4036)
!4039 = !DILocation(line: 178, column: 7, scope: !511, inlinedAt: !4036)
!4040 = !DILocation(line: 180, column: 13, scope: !3981, inlinedAt: !4036)
!4041 = !DILocation(line: 180, column: 11, scope: !3982, inlinedAt: !4036)
!4042 = !DILocation(line: 191, column: 11, scope: !3990, inlinedAt: !4036)
!4043 = !DILocation(line: 191, column: 11, scope: !3982, inlinedAt: !4036)
!4044 = !DILocation(line: 206, column: 7, scope: !511, inlinedAt: !4036)
!4045 = !DILocation(line: 0, scope: !3942, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 207, column: 10, scope: !511, inlinedAt: !4036)
!4047 = !DILocation(line: 53, column: 10, scope: !3950, inlinedAt: !4046)
!4048 = !DILocation(line: 192, column: 9, scope: !3990, inlinedAt: !4036)
!4049 = !DILocation(line: 201, column: 11, scope: !3999, inlinedAt: !4036)
!4050 = !DILocation(line: 200, column: 11, scope: !4000, inlinedAt: !4036)
!4051 = !DILocation(line: 202, column: 9, scope: !3999, inlinedAt: !4036)
!4052 = !DILocation(line: 203, column: 14, scope: !4000, inlinedAt: !4036)
!4053 = !DILocation(line: 203, column: 18, scope: !4000, inlinedAt: !4036)
!4054 = !DILocation(line: 203, column: 9, scope: !4000, inlinedAt: !4036)
!4055 = !DILocation(line: 53, column: 8, scope: !3950, inlinedAt: !4046)
!4056 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !4046)
!4057 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !4046)
!4058 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !4046)
!4059 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !4046)
!4060 = !DILocation(line: 62, column: 13, scope: !3958, inlinedAt: !4046)
!4061 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !4046)
!4062 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !4046)
!4063 = !DILocation(line: 76, column: 3, scope: !4028)
!4064 = distinct !DISubprogram(name: "xzalloc", scope: !508, file: !508, line: 84, type: !3908, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4065)
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "n", arg: 1, scope: !4064, file: !508, line: 84, type: !62)
!4067 = !DILocation(line: 0, scope: !4064)
!4068 = !DILocalVariable(name: "n", arg: 1, scope: !4069, file: !508, line: 93, type: !62)
!4069 = distinct !DISubprogram(name: "xcalloc", scope: !508, file: !508, line: 93, type: !3895, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4070)
!4070 = !{!4068, !4071, !4072}
!4071 = !DILocalVariable(name: "s", arg: 2, scope: !4069, file: !508, line: 93, type: !62)
!4072 = !DILocalVariable(name: "p", scope: !4069, file: !508, line: 95, type: !60)
!4073 = !DILocation(line: 0, scope: !4069, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 86, column: 10, scope: !4064)
!4075 = !DILocation(line: 100, column: 7, scope: !4076, inlinedAt: !4074)
!4076 = distinct !DILexicalBlock(scope: !4069, file: !508, line: 100, column: 7)
!4077 = !DILocation(line: 101, column: 7, scope: !4076, inlinedAt: !4074)
!4078 = !DILocation(line: 101, column: 18, scope: !4076, inlinedAt: !4074)
!4079 = !DILocation(line: 101, column: 16, scope: !4076, inlinedAt: !4074)
!4080 = !DILocation(line: 100, column: 7, scope: !4069, inlinedAt: !4074)
!4081 = !DILocation(line: 102, column: 5, scope: !4076, inlinedAt: !4074)
!4082 = !DILocation(line: 86, column: 3, scope: !4064)
!4083 = !DILocation(line: 0, scope: !4069)
!4084 = !DILocation(line: 100, column: 7, scope: !4076)
!4085 = !DILocation(line: 101, column: 7, scope: !4076)
!4086 = !DILocation(line: 101, column: 18, scope: !4076)
!4087 = !DILocation(line: 101, column: 16, scope: !4076)
!4088 = !DILocation(line: 100, column: 7, scope: !4069)
!4089 = !DILocation(line: 102, column: 5, scope: !4076)
!4090 = !DILocation(line: 103, column: 3, scope: !4069)
!4091 = distinct !DISubprogram(name: "xmemdup", scope: !508, file: !508, line: 111, type: !4092, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!60, !247, !62}
!4094 = !{!4095, !4096}
!4095 = !DILocalVariable(name: "p", arg: 1, scope: !4091, file: !508, line: 111, type: !247)
!4096 = !DILocalVariable(name: "s", arg: 2, scope: !4091, file: !508, line: 111, type: !62)
!4097 = !DILocation(line: 0, scope: !4091)
!4098 = !DILocation(line: 0, scope: !3907, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 113, column: 18, scope: !4091)
!4100 = !DILocation(line: 41, column: 13, scope: !3907, inlinedAt: !4099)
!4101 = !DILocation(line: 42, column: 8, scope: !3916, inlinedAt: !4099)
!4102 = !DILocation(line: 42, column: 15, scope: !3916, inlinedAt: !4099)
!4103 = !DILocation(line: 42, column: 10, scope: !3916, inlinedAt: !4099)
!4104 = !DILocation(line: 43, column: 5, scope: !3916, inlinedAt: !4099)
!4105 = !DILocalVariable(name: "__dest", arg: 1, scope: !4106, file: !2710, line: 31, type: !4109)
!4106 = distinct !DISubprogram(name: "memcpy", scope: !2710, file: !2710, line: 31, type: !4107, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4111)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!60, !4109, !4110, !62}
!4109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!4110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!4111 = !{!4105, !4112, !4113}
!4112 = !DILocalVariable(name: "__src", arg: 2, scope: !4106, file: !2710, line: 31, type: !4110)
!4113 = !DILocalVariable(name: "__len", arg: 3, scope: !4106, file: !2710, line: 31, type: !62)
!4114 = !DILocation(line: 0, scope: !4106, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 113, column: 10, scope: !4091)
!4116 = !DILocation(line: 34, column: 10, scope: !4106, inlinedAt: !4115)
!4117 = !DILocation(line: 113, column: 3, scope: !4091)
!4118 = distinct !DISubprogram(name: "xstrdup", scope: !508, file: !508, line: 119, type: !78, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4119)
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "string", arg: 1, scope: !4118, file: !508, line: 119, type: !74)
!4121 = !DILocation(line: 0, scope: !4118)
!4122 = !DILocation(line: 121, column: 27, scope: !4118)
!4123 = !DILocation(line: 121, column: 43, scope: !4118)
!4124 = !DILocation(line: 0, scope: !4091, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 121, column: 10, scope: !4118)
!4126 = !DILocation(line: 0, scope: !3907, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 113, column: 18, scope: !4091, inlinedAt: !4125)
!4128 = !DILocation(line: 41, column: 13, scope: !3907, inlinedAt: !4127)
!4129 = !DILocation(line: 42, column: 8, scope: !3916, inlinedAt: !4127)
!4130 = !DILocation(line: 42, column: 15, scope: !3916, inlinedAt: !4127)
!4131 = !DILocation(line: 42, column: 10, scope: !3916, inlinedAt: !4127)
!4132 = !DILocation(line: 43, column: 5, scope: !3916, inlinedAt: !4127)
!4133 = !DILocation(line: 0, scope: !4106, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 113, column: 10, scope: !4091, inlinedAt: !4125)
!4135 = !DILocation(line: 34, column: 10, scope: !4106, inlinedAt: !4134)
!4136 = !DILocation(line: 121, column: 3, scope: !4118)
!4137 = distinct !DISubprogram(name: "xalloc_die", scope: !529, file: !529, line: 32, type: !311, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !4)
!4138 = !DILocation(line: 34, column: 10, scope: !4137)
!4139 = !DILocation(line: 34, column: 33, scope: !4137)
!4140 = !DILocation(line: 34, column: 3, scope: !4137)
!4141 = !DILocation(line: 40, column: 3, scope: !4137)
!4142 = distinct !DISubprogram(name: "rpl_calloc", scope: !532, file: !532, line: 42, type: !3895, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4143)
!4143 = !{!4144, !4145, !4146, !4147}
!4144 = !DILocalVariable(name: "n", arg: 1, scope: !4142, file: !532, line: 42, type: !62)
!4145 = !DILocalVariable(name: "s", arg: 2, scope: !4142, file: !532, line: 42, type: !62)
!4146 = !DILocalVariable(name: "result", scope: !4142, file: !532, line: 44, type: !60)
!4147 = !DILocalVariable(name: "bytes", scope: !4148, file: !532, line: 56, type: !62)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !532, line: 53, column: 5)
!4149 = distinct !DILexicalBlock(scope: !4142, file: !532, line: 47, column: 7)
!4150 = !DILocation(line: 0, scope: !4142)
!4151 = !DILocation(line: 47, column: 9, scope: !4149)
!4152 = !DILocation(line: 47, column: 19, scope: !4149)
!4153 = !DILocation(line: 47, column: 14, scope: !4149)
!4154 = !DILocation(line: 0, scope: !4148)
!4155 = !DILocation(line: 57, column: 21, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !532, line: 57, column: 11)
!4157 = !DILocation(line: 57, column: 11, scope: !4148)
!4158 = !DILocation(line: 59, column: 11, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4156, file: !532, line: 58, column: 9)
!4160 = !DILocation(line: 59, column: 17, scope: !4159)
!4161 = !DILocation(line: 65, column: 12, scope: !4142)
!4162 = !DILocation(line: 72, column: 3, scope: !4142)
!4163 = !DILocation(line: 73, column: 1, scope: !4142)
!4164 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !535, file: !535, line: 86, type: !4165, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !4171)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!62, !4167, !74, !62, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2452, line: 6, baseType: !4170)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !278, line: 21, baseType: !541)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178}
!4172 = !DILocalVariable(name: "pwc", arg: 1, scope: !4164, file: !535, line: 86, type: !4167)
!4173 = !DILocalVariable(name: "s", arg: 2, scope: !4164, file: !535, line: 86, type: !74)
!4174 = !DILocalVariable(name: "n", arg: 3, scope: !4164, file: !535, line: 86, type: !62)
!4175 = !DILocalVariable(name: "ps", arg: 4, scope: !4164, file: !535, line: 86, type: !4168)
!4176 = !DILocalVariable(name: "ret", scope: !4164, file: !535, line: 88, type: !62)
!4177 = !DILocalVariable(name: "wc", scope: !4164, file: !535, line: 89, type: !2456)
!4178 = !DILocalVariable(name: "uc", scope: !4179, file: !535, line: 156, type: !2329)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !535, line: 155, column: 5)
!4180 = distinct !DILexicalBlock(scope: !4164, file: !535, line: 154, column: 7)
!4181 = !DILocation(line: 0, scope: !4164)
!4182 = !DILocation(line: 89, column: 3, scope: !4164)
!4183 = !DILocation(line: 105, column: 9, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4164, file: !535, line: 105, column: 7)
!4185 = !DILocation(line: 105, column: 7, scope: !4164)
!4186 = !DILocation(line: 145, column: 9, scope: !4164)
!4187 = !DILocation(line: 154, column: 19, scope: !4180)
!4188 = !DILocation(line: 154, column: 31, scope: !4180)
!4189 = !DILocation(line: 154, column: 26, scope: !4180)
!4190 = !DILocation(line: 154, column: 41, scope: !4180)
!4191 = !DILocation(line: 154, column: 7, scope: !4164)
!4192 = !DILocation(line: 156, column: 26, scope: !4179)
!4193 = !DILocation(line: 0, scope: !4179)
!4194 = !DILocation(line: 157, column: 14, scope: !4179)
!4195 = !DILocation(line: 157, column: 12, scope: !4179)
!4196 = !DILocation(line: 163, column: 1, scope: !4164)
!4197 = distinct !DISubprogram(name: "close_stream", scope: !554, file: !554, line: 56, type: !4198, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !4202)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!10, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3771, line: 7, baseType: !561)
!4202 = !{!4203, !4204, !4206, !4207}
!4203 = !DILocalVariable(name: "stream", arg: 1, scope: !4197, file: !554, line: 56, type: !4200)
!4204 = !DILocalVariable(name: "some_pending", scope: !4197, file: !554, line: 58, type: !4205)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4206 = !DILocalVariable(name: "prev_fail", scope: !4197, file: !554, line: 59, type: !4205)
!4207 = !DILocalVariable(name: "fclose_fail", scope: !4197, file: !554, line: 60, type: !4205)
!4208 = !DILocation(line: 0, scope: !4197)
!4209 = !DILocation(line: 58, column: 30, scope: !4197)
!4210 = !DILocalVariable(name: "__stream", arg: 1, scope: !4211, file: !4212, line: 135, type: !4200)
!4211 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4212, file: !4212, line: 135, type: !4198, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !4213)
!4212 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4213 = !{!4210}
!4214 = !DILocation(line: 0, scope: !4211, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 59, column: 27, scope: !4197)
!4216 = !DILocation(line: 137, column: 10, scope: !4211, inlinedAt: !4215)
!4217 = !{!4218, !1947, i64 0}
!4218 = !{!"_IO_FILE", !1947, i64 0, !1157, i64 8, !1157, i64 16, !1157, i64 24, !1157, i64 32, !1157, i64 40, !1157, i64 48, !1157, i64 56, !1157, i64 64, !1157, i64 72, !1157, i64 80, !1157, i64 88, !1157, i64 96, !1157, i64 104, !1947, i64 112, !1947, i64 116, !3213, i64 120, !2703, i64 128, !1158, i64 130, !1158, i64 131, !1157, i64 136, !3213, i64 144, !1157, i64 152, !1157, i64 160, !1157, i64 168, !1157, i64 176, !3213, i64 184, !1947, i64 192, !1158, i64 196}
!4219 = !DILocation(line: 59, column: 43, scope: !4197)
!4220 = !DILocation(line: 60, column: 29, scope: !4197)
!4221 = !DILocation(line: 60, column: 45, scope: !4197)
!4222 = !DILocation(line: 70, column: 17, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4197, file: !554, line: 70, column: 7)
!4224 = !DILocation(line: 58, column: 50, scope: !4197)
!4225 = !DILocation(line: 70, column: 33, scope: !4223)
!4226 = !DILocation(line: 70, column: 53, scope: !4223)
!4227 = !DILocation(line: 70, column: 59, scope: !4223)
!4228 = !DILocation(line: 70, column: 7, scope: !4197)
!4229 = !DILocation(line: 72, column: 11, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4223, file: !554, line: 71, column: 5)
!4231 = !DILocation(line: 73, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4230, file: !554, line: 72, column: 11)
!4233 = !DILocation(line: 73, column: 15, scope: !4232)
!4234 = !DILocation(line: 78, column: 1, scope: !4197)
!4235 = distinct !DISubprogram(name: "hard_locale", scope: !593, file: !593, line: 27, type: !551, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4236)
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "category", arg: 1, scope: !4235, file: !593, line: 27, type: !10)
!4238 = !DILocalVariable(name: "locale", scope: !4235, file: !593, line: 29, type: !4239)
!4239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2056, elements: !4240)
!4240 = !{!4241}
!4241 = !DISubrange(count: 257)
!4242 = !DILocation(line: 0, scope: !4235)
!4243 = !DILocation(line: 29, column: 3, scope: !4235)
!4244 = !DILocation(line: 29, column: 8, scope: !4235)
!4245 = !DILocation(line: 31, column: 7, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4235, file: !593, line: 31, column: 7)
!4247 = !DILocation(line: 31, column: 7, scope: !4235)
!4248 = !DILocation(line: 34, column: 12, scope: !4235)
!4249 = !DILocation(line: 34, column: 38, scope: !4235)
!4250 = !DILocation(line: 34, column: 41, scope: !4235)
!4251 = !DILocation(line: 34, column: 66, scope: !4235)
!4252 = !DILocation(line: 35, column: 1, scope: !4235)
!4253 = distinct !DISubprogram(name: "locale_charset", scope: !600, file: !600, line: 831, type: !301, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !4254)
!4254 = !{!4255}
!4255 = !DILocalVariable(name: "codeset", scope: !4253, file: !600, line: 833, type: !74)
!4256 = !DILocation(line: 847, column: 13, scope: !4253)
!4257 = !DILocation(line: 0, scope: !4253)
!4258 = !DILocation(line: 911, column: 15, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4253, file: !600, line: 911, column: 7)
!4260 = !DILocation(line: 911, column: 7, scope: !4253)
!4261 = !DILocation(line: 1070, column: 13, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !600, line: 1070, column: 13)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !600, line: 1060, column: 7)
!4264 = distinct !DILexicalBlock(scope: !4253, file: !600, line: 1019, column: 3)
!4265 = !DILocation(line: 1070, column: 24, scope: !4262)
!4266 = !DILocation(line: 1070, column: 13, scope: !4263)
!4267 = !DILocation(line: 1158, column: 3, scope: !4253)
!4268 = distinct !DISubprogram(name: "setlocale_null_r", scope: !993, file: !993, line: 269, type: !4269, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!10, !10, !17, !62}
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "category", arg: 1, scope: !4268, file: !993, line: 269, type: !10)
!4273 = !DILocalVariable(name: "buf", arg: 2, scope: !4268, file: !993, line: 269, type: !17)
!4274 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4268, file: !993, line: 269, type: !62)
!4275 = !DILocation(line: 0, scope: !4268)
!4276 = !DILocalVariable(name: "category", arg: 1, scope: !4277, file: !993, line: 91, type: !10)
!4277 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !993, file: !993, line: 91, type: !4269, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4278)
!4278 = !{!4276, !4279, !4280, !4281, !4282}
!4279 = !DILocalVariable(name: "buf", arg: 2, scope: !4277, file: !993, line: 91, type: !17)
!4280 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4277, file: !993, line: 91, type: !62)
!4281 = !DILocalVariable(name: "result", scope: !4277, file: !993, line: 140, type: !74)
!4282 = !DILocalVariable(name: "length", scope: !4283, file: !993, line: 154, type: !62)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !993, line: 153, column: 5)
!4284 = distinct !DILexicalBlock(scope: !4277, file: !993, line: 142, column: 7)
!4285 = !DILocation(line: 0, scope: !4277, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 274, column: 10, scope: !4268)
!4287 = !DILocalVariable(name: "category", arg: 1, scope: !4288, file: !993, line: 60, type: !10)
!4288 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !993, file: !993, line: 60, type: !4289, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!74, !10}
!4291 = !{!4287, !4292}
!4292 = !DILocalVariable(name: "result", scope: !4288, file: !993, line: 62, type: !74)
!4293 = !DILocation(line: 0, scope: !4288, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 140, column: 24, scope: !4277, inlinedAt: !4286)
!4295 = !DILocation(line: 62, column: 24, scope: !4288, inlinedAt: !4294)
!4296 = !DILocation(line: 142, column: 14, scope: !4284, inlinedAt: !4286)
!4297 = !DILocation(line: 142, column: 7, scope: !4277, inlinedAt: !4286)
!4298 = !DILocation(line: 145, column: 19, scope: !4299, inlinedAt: !4286)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !993, line: 145, column: 11)
!4300 = distinct !DILexicalBlock(scope: !4284, file: !993, line: 143, column: 5)
!4301 = !DILocation(line: 145, column: 11, scope: !4300, inlinedAt: !4286)
!4302 = !DILocation(line: 149, column: 16, scope: !4299, inlinedAt: !4286)
!4303 = !DILocation(line: 149, column: 9, scope: !4299, inlinedAt: !4286)
!4304 = !DILocation(line: 154, column: 23, scope: !4283, inlinedAt: !4286)
!4305 = !DILocation(line: 0, scope: !4283, inlinedAt: !4286)
!4306 = !DILocation(line: 155, column: 18, scope: !4307, inlinedAt: !4286)
!4307 = distinct !DILexicalBlock(scope: !4283, file: !993, line: 155, column: 11)
!4308 = !DILocation(line: 155, column: 11, scope: !4283, inlinedAt: !4286)
!4309 = !DILocation(line: 157, column: 39, scope: !4310, inlinedAt: !4286)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !993, line: 156, column: 9)
!4311 = !DILocalVariable(name: "__dest", arg: 1, scope: !4312, file: !2710, line: 31, type: !4109)
!4312 = distinct !DISubprogram(name: "memcpy", scope: !2710, file: !2710, line: 31, type: !4107, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4313)
!4313 = !{!4311, !4314, !4315}
!4314 = !DILocalVariable(name: "__src", arg: 2, scope: !4312, file: !2710, line: 31, type: !4110)
!4315 = !DILocalVariable(name: "__len", arg: 3, scope: !4312, file: !2710, line: 31, type: !62)
!4316 = !DILocation(line: 0, scope: !4312, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 157, column: 11, scope: !4310, inlinedAt: !4286)
!4318 = !DILocation(line: 34, column: 10, scope: !4312, inlinedAt: !4317)
!4319 = !DILocation(line: 158, column: 11, scope: !4310, inlinedAt: !4286)
!4320 = !DILocation(line: 162, column: 23, scope: !4321, inlinedAt: !4286)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !993, line: 162, column: 15)
!4322 = distinct !DILexicalBlock(scope: !4307, file: !993, line: 161, column: 9)
!4323 = !DILocation(line: 162, column: 15, scope: !4322, inlinedAt: !4286)
!4324 = !DILocation(line: 167, column: 44, scope: !4325, inlinedAt: !4286)
!4325 = distinct !DILexicalBlock(scope: !4321, file: !993, line: 163, column: 13)
!4326 = !DILocation(line: 0, scope: !4312, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 167, column: 15, scope: !4325, inlinedAt: !4286)
!4328 = !DILocation(line: 34, column: 10, scope: !4312, inlinedAt: !4327)
!4329 = !DILocation(line: 168, column: 15, scope: !4325, inlinedAt: !4286)
!4330 = !DILocation(line: 168, column: 32, scope: !4325, inlinedAt: !4286)
!4331 = !DILocation(line: 169, column: 13, scope: !4325, inlinedAt: !4286)
!4332 = !DILocation(line: 0, scope: !4284, inlinedAt: !4286)
!4333 = !DILocation(line: 274, column: 3, scope: !4268)
!4334 = distinct !DISubprogram(name: "setlocale_null", scope: !993, file: !993, line: 301, type: !4289, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4335)
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "category", arg: 1, scope: !4334, file: !993, line: 301, type: !10)
!4337 = !DILocation(line: 0, scope: !4334)
!4338 = !DILocation(line: 0, scope: !4288, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 304, column: 10, scope: !4334)
!4340 = !DILocation(line: 62, column: 24, scope: !4288, inlinedAt: !4339)
!4341 = !DILocation(line: 304, column: 3, scope: !4334)
!4342 = distinct !DISubprogram(name: "rpl_fclose", scope: !996, file: !996, line: 58, type: !4343, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4347)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!10, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3771, line: 7, baseType: !1002)
!4347 = !{!4348, !4349, !4350, !4351}
!4348 = !DILocalVariable(name: "fp", arg: 1, scope: !4342, file: !996, line: 58, type: !4345)
!4349 = !DILocalVariable(name: "saved_errno", scope: !4342, file: !996, line: 60, type: !10)
!4350 = !DILocalVariable(name: "fd", scope: !4342, file: !996, line: 61, type: !10)
!4351 = !DILocalVariable(name: "result", scope: !4342, file: !996, line: 62, type: !10)
!4352 = !DILocation(line: 0, scope: !4342)
!4353 = !DILocation(line: 65, column: 8, scope: !4342)
!4354 = !DILocation(line: 66, column: 10, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4342, file: !996, line: 66, column: 7)
!4356 = !DILocation(line: 66, column: 7, scope: !4342)
!4357 = !DILocation(line: 67, column: 12, scope: !4355)
!4358 = !DILocation(line: 67, column: 5, scope: !4355)
!4359 = !DILocation(line: 72, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4342, file: !996, line: 72, column: 7)
!4361 = !DILocation(line: 72, column: 23, scope: !4360)
!4362 = !DILocation(line: 72, column: 33, scope: !4360)
!4363 = !DILocation(line: 72, column: 26, scope: !4360)
!4364 = !DILocation(line: 72, column: 59, scope: !4360)
!4365 = !DILocation(line: 73, column: 7, scope: !4360)
!4366 = !DILocation(line: 73, column: 10, scope: !4360)
!4367 = !DILocation(line: 72, column: 7, scope: !4342)
!4368 = !DILocation(line: 100, column: 12, scope: !4342)
!4369 = !DILocation(line: 105, column: 7, scope: !4342)
!4370 = !DILocation(line: 74, column: 19, scope: !4360)
!4371 = !DILocation(line: 105, column: 19, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4342, file: !996, line: 105, column: 7)
!4373 = !DILocation(line: 107, column: 13, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4372, file: !996, line: 106, column: 5)
!4375 = !DILocation(line: 109, column: 5, scope: !4374)
!4376 = !DILocation(line: 112, column: 1, scope: !4342)
!4377 = distinct !DISubprogram(name: "rpl_fflush", scope: !1040, file: !1040, line: 129, type: !4378, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !4382)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!10, !4380}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3771, line: 7, baseType: !1046)
!4382 = !{!4383}
!4383 = !DILocalVariable(name: "stream", arg: 1, scope: !4377, file: !1040, line: 129, type: !4380)
!4384 = !DILocation(line: 0, scope: !4377)
!4385 = !DILocation(line: 150, column: 14, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4377, file: !1040, line: 150, column: 7)
!4387 = !DILocation(line: 150, column: 22, scope: !4386)
!4388 = !DILocation(line: 150, column: 27, scope: !4386)
!4389 = !DILocation(line: 150, column: 7, scope: !4377)
!4390 = !DILocation(line: 151, column: 12, scope: !4386)
!4391 = !DILocation(line: 151, column: 5, scope: !4386)
!4392 = !DILocalVariable(name: "fp", arg: 1, scope: !4393, file: !1040, line: 41, type: !4380)
!4393 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1040, file: !1040, line: 41, type: !4394, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !4380}
!4396 = !{!4392}
!4397 = !DILocation(line: 0, scope: !4393, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 156, column: 3, scope: !4377)
!4399 = !DILocation(line: 43, column: 11, scope: !4400, inlinedAt: !4398)
!4400 = distinct !DILexicalBlock(scope: !4393, file: !1040, line: 43, column: 7)
!4401 = !DILocation(line: 43, column: 18, scope: !4400, inlinedAt: !4398)
!4402 = !DILocation(line: 43, column: 7, scope: !4393, inlinedAt: !4398)
!4403 = !DILocation(line: 45, column: 5, scope: !4400, inlinedAt: !4398)
!4404 = !DILocation(line: 158, column: 10, scope: !4377)
!4405 = !DILocation(line: 158, column: 3, scope: !4377)
!4406 = !DILocation(line: 235, column: 1, scope: !4377)
!4407 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1081, file: !1081, line: 28, type: !4408, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !4412)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!10, !4410, !443, !10}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3771, line: 7, baseType: !1087)
!4412 = !{!4413, !4414, !4415, !4416}
!4413 = !DILocalVariable(name: "fp", arg: 1, scope: !4407, file: !1081, line: 28, type: !4410)
!4414 = !DILocalVariable(name: "offset", arg: 2, scope: !4407, file: !1081, line: 28, type: !443)
!4415 = !DILocalVariable(name: "whence", arg: 3, scope: !4407, file: !1081, line: 28, type: !10)
!4416 = !DILocalVariable(name: "pos", scope: !4417, file: !1081, line: 117, type: !443)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !1081, line: 113, column: 5)
!4418 = distinct !DILexicalBlock(scope: !4407, file: !1081, line: 52, column: 7)
!4419 = !DILocation(line: 0, scope: !4407)
!4420 = !DILocation(line: 52, column: 11, scope: !4418)
!4421 = !{!4218, !1157, i64 16}
!4422 = !DILocation(line: 52, column: 31, scope: !4418)
!4423 = !{!4218, !1157, i64 8}
!4424 = !DILocation(line: 52, column: 24, scope: !4418)
!4425 = !DILocation(line: 53, column: 7, scope: !4418)
!4426 = !DILocation(line: 53, column: 14, scope: !4418)
!4427 = !{!4218, !1157, i64 40}
!4428 = !DILocation(line: 53, column: 35, scope: !4418)
!4429 = !{!4218, !1157, i64 32}
!4430 = !DILocation(line: 53, column: 28, scope: !4418)
!4431 = !DILocation(line: 54, column: 7, scope: !4418)
!4432 = !DILocation(line: 54, column: 14, scope: !4418)
!4433 = !{!4218, !1157, i64 72}
!4434 = !DILocation(line: 54, column: 28, scope: !4418)
!4435 = !DILocation(line: 52, column: 7, scope: !4407)
!4436 = !DILocation(line: 117, column: 26, scope: !4417)
!4437 = !DILocation(line: 117, column: 19, scope: !4417)
!4438 = !DILocation(line: 0, scope: !4417)
!4439 = !DILocation(line: 118, column: 15, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4417, file: !1081, line: 118, column: 11)
!4441 = !DILocation(line: 118, column: 11, scope: !4417)
!4442 = !DILocation(line: 129, column: 11, scope: !4417)
!4443 = !DILocation(line: 129, column: 18, scope: !4417)
!4444 = !DILocation(line: 130, column: 11, scope: !4417)
!4445 = !DILocation(line: 130, column: 19, scope: !4417)
!4446 = !{!4218, !3213, i64 144}
!4447 = !DILocation(line: 161, column: 7, scope: !4417)
!4448 = !DILocation(line: 163, column: 10, scope: !4407)
!4449 = !DILocation(line: 163, column: 3, scope: !4407)
!4450 = !DILocation(line: 164, column: 1, scope: !4407)
