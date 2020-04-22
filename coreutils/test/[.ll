; ModuleID = 'coreutils-8.32/src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [360 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -N FILE     FILE exists and has been modified since it was last read\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and read permission is granted\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [287 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and write permission is granted\0A  -x FILE     FILE exists and execute (or search) permission is granted\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal unnamed_addr global i32 0, align 4, !dbg !168
@pos = internal unnamed_addr global i32 0, align 4, !dbg !166
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !171
@.str.73 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !176
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !224
@.str.76 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !227
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !233
@.str.87 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.99, i32 0, i32 0), i8* null], align 16, !dbg !274
@.str.90 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.91 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.92 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.93 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.94 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.95 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.96 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.97 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.98 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.99 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !368
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !374
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !376
@.str.11.100 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.103 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.104 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.105 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.106 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !383
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !390
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !378
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !392
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.121 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.122 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.123 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.124 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.125 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.126 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.127 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.128 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.129 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.130 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.131 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.132 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.133 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.134 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.137 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.138 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.139 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.140 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.141 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.142 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.143 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !398
@.str.1.154 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.166 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.170 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1098 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1103, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i32 %0, metadata !1102, metadata !DIExpression()), !dbg !1124
  %3 = icmp eq i32 %0, 0, !dbg !1125
  br i1 %3, label %9, label %4, !dbg !1126

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1127, !tbaa !1129
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1127
  %7 = load i8*, i8** @program_name, align 8, !dbg !1127, !tbaa !1129
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #13, !dbg !1127
  br label %97, !dbg !1127

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1133
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1133, !tbaa !1129
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !1133
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1134
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1134, !tbaa !1129
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1134
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1135
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !1129
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1135
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1136
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1129
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1136
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #13, !dbg !1137
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !1129
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1137
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #13, !dbg !1138
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1138, !tbaa !1129
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1138
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #13, !dbg !1139
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !1129
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1139
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #13, !dbg !1140
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !1129
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1140
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #13, !dbg !1141
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1141, !tbaa !1129
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1141
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #13, !dbg !1142
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1142, !tbaa !1129
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1142
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #13, !dbg !1143
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !1129
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1143
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.12, i64 0, i64 0), i32 5) #13, !dbg !1144
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1129
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1144
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #13, !dbg !1145
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !1129
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !1145
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #13, !dbg !1146
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1146, !tbaa !1129
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1146
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #13, !dbg !1147
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1147, !tbaa !1129
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !1147
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #13, !dbg !1148
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1148, !tbaa !1129
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !1148
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #13, !dbg !1149
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #13, !dbg !1149
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #13, !dbg !1149
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !1107, metadata !DIExpression()) #13, !dbg !1150
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1151
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #13, !dbg !1151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %61, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #13, !dbg !1120
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !1108, metadata !DIExpression()) #13, !dbg !1150
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  br label %63, !dbg !1153

63:                                               ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #23, !dbg !1154
  %67 = icmp eq i32 %66, 0, !dbg !1154
  br i1 %67, label %73, label %68, !dbg !1153

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !1155
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !1156
  %71 = load i8*, i8** %70, align 8, !dbg !1156, !tbaa !1157
  %72 = icmp eq i8* %71, null, !dbg !1159
  br i1 %72, label %73, label %63, !dbg !1160, !llvm.loop !1161

73:                                               ; preds = %68, %63
  %74 = phi %struct.infomap* [ %69, %68 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !1109, metadata !DIExpression()) #13, !dbg !1150
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !1162
  %76 = load i8*, i8** %75, align 8, !dbg !1162, !tbaa !1164
  %77 = icmp eq i8* %76, null, !dbg !1165
  %78 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %78, metadata !1108, metadata !DIExpression()) #13, !dbg !1150
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #13, !dbg !1167
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #13, !dbg !1167
  %81 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %81, metadata !1116, metadata !DIExpression()) #13, !dbg !1150
  %82 = icmp eq i8* %81, null, !dbg !1169
  br i1 %82, label %90, label %83, !dbg !1171

83:                                               ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #23, !dbg !1172
  %85 = icmp eq i32 %84, 0, !dbg !1172
  br i1 %85, label %90, label %86, !dbg !1173

86:                                               ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 5) #13, !dbg !1174
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1174, !tbaa !1129
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #13, !dbg !1174
  br label %90, !dbg !1176

90:                                               ; preds = %73, %83, %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 5) #13, !dbg !1177
  %92 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #13, !dbg !1177
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #13, !dbg !1178
  %94 = icmp eq i8* %78, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), !dbg !1178
  %95 = select i1 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !1178
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %93, i8* %78, i8* %95) #13, !dbg !1178
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #13, !dbg !1179
  br label %97

97:                                               ; preds = %90, %4
  tail call void @exit(i32 %0) #24, !dbg !1180
  unreachable, !dbg !1180
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !32 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !42 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !107 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1185, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8** %1, metadata !1186, metadata !DIExpression()), !dbg !1188
  %3 = load i8*, i8** %1, align 8, !dbg !1189, !tbaa !1129
  tail call void @set_program_name(i8* %3) #13, !dbg !1190
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #13, !dbg !1191
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #13, !dbg !1192
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #13, !dbg !1193
  call void @llvm.dbg.value(metadata i32 2, metadata !1194, metadata !DIExpression()), !dbg !1197
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !1199, !tbaa !1201
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1203
  store i8** %1, i8*** @argv, align 8, !dbg !1204, !tbaa !1129
  %8 = icmp eq i32 %0, 2, !dbg !1205
  br i1 %8, label %9, label %21, !dbg !1209

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1210
  %11 = load i8*, i8** %10, align 8, !dbg !1210, !tbaa !1129
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #23, !dbg !1210
  %13 = icmp eq i32 %12, 0, !dbg !1210
  br i1 %13, label %14, label %15, !dbg !1213

14:                                               ; preds = %9
  tail call void @usage(i32 0) #25, !dbg !1214
  unreachable, !dbg !1214

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #23, !dbg !1215
  %17 = icmp eq i32 %16, 0, !dbg !1215
  br i1 %17, label %18, label %23, !dbg !1217

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1218, !tbaa !1129
  %20 = load i8*, i8** @Version, align 8, !dbg !1220, !tbaa !1129
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* null) #13, !dbg !1221
  br label %52, !dbg !1222

21:                                               ; preds = %2
  %22 = icmp slt i32 %0, 2, !dbg !1223
  br i1 %22, label %30, label %23, !dbg !1225

23:                                               ; preds = %15, %21
  %24 = add nsw i32 %0, -1, !dbg !1226
  %25 = sext i32 %24 to i64, !dbg !1226
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !1226
  %27 = load i8*, i8** %26, align 8, !dbg !1226, !tbaa !1129
  %28 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %27, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #23, !dbg !1226
  %29 = icmp eq i32 %28, 0, !dbg !1226
  br i1 %29, label %33, label %30, !dbg !1227

30:                                               ; preds = %23, %21
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 5) #13, !dbg !1228
  %32 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #13, !dbg !1229
  tail call void (i8*, ...) @test_syntax_error(i8* %31, i8* %32) #25, !dbg !1230
  unreachable, !dbg !1230

33:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !1185, metadata !DIExpression()), !dbg !1188
  store i32 %24, i32* @argc, align 4, !dbg !1231, !tbaa !1201
  store i32 1, i32* @pos, align 4, !dbg !1232, !tbaa !1201
  %34 = icmp slt i32 %0, 3, !dbg !1233
  br i1 %34, label %52, label %35, !dbg !1235

35:                                               ; preds = %33
  %36 = add nsw i32 %0, -2, !dbg !1236
  %37 = tail call fastcc zeroext i1 @posixtest(i32 %36), !dbg !1237
  call void @llvm.dbg.value(metadata i1 %37, metadata !1187, metadata !DIExpression()), !dbg !1188
  %38 = load i32, i32* @pos, align 4, !dbg !1238, !tbaa !1201
  %39 = load i32, i32* @argc, align 4, !dbg !1240, !tbaa !1201
  %40 = icmp eq i32 %38, %39, !dbg !1241
  br i1 %40, label %49, label %41, !dbg !1242

41:                                               ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5) #13, !dbg !1243
  %43 = load i8**, i8*** @argv, align 8, !dbg !1244, !tbaa !1129
  %44 = load i32, i32* @pos, align 4, !dbg !1245, !tbaa !1201
  %45 = sext i32 %44 to i64, !dbg !1244
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !1244
  %47 = load i8*, i8** %46, align 8, !dbg !1244, !tbaa !1129
  %48 = tail call i8* @quote(i8* %47) #13, !dbg !1246
  tail call void (i8*, ...) @test_syntax_error(i8* %42, i8* %48) #25, !dbg !1247
  unreachable, !dbg !1247

49:                                               ; preds = %35
  %50 = xor i1 %37, true, !dbg !1248
  %51 = zext i1 %50 to i32, !dbg !1248
  br label %52, !dbg !1248

52:                                               ; preds = %33, %49, %18
  %53 = phi i32 [ 0, %18 ], [ %51, %49 ], [ 1, %33 ], !dbg !1188
  ret i32 %53, !dbg !1249
}

; Function Attrs: nounwind
declare !dbg !111 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !114 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !117 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8* %0, ...) unnamed_addr #0 !dbg !1250 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1254, metadata !DIExpression()), !dbg !1261
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1262
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #13, !dbg !1262
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !1255, metadata !DIExpression()), !dbg !1263
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1264
  call void @llvm.va_start(i8* nonnull %3), !dbg !1264
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #13, !dbg !1265
  call void @exit(i32 2) #24, !dbg !1266
  unreachable, !dbg !1266
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32 %0) unnamed_addr #8 !dbg !1267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1269, metadata !DIExpression()), !dbg !1271
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !1272

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !1273, !tbaa !1129
  %4 = load i32, i32* @pos, align 4, !dbg !1279, !tbaa !1201
  %5 = add nsw i32 %4, 1, !dbg !1279
  store i32 %5, i32* @pos, align 4, !dbg !1279, !tbaa !1201
  %6 = sext i32 %4 to i64, !dbg !1273
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !1273
  %8 = load i8*, i8** %7, align 8, !dbg !1273, !tbaa !1129
  %9 = load i8, i8* %8, align 1, !dbg !1273, !tbaa !1280
  %10 = icmp ne i8 %9, 0, !dbg !1281
  call void @llvm.dbg.value(metadata i1 %10, metadata !1270, metadata !DIExpression()), !dbg !1271
  br label %151, !dbg !1282

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !1283, !tbaa !1129
  %13 = load i32, i32* @pos, align 4, !dbg !1283, !tbaa !1201
  %14 = sext i32 %13 to i64, !dbg !1283
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !1283
  %16 = load i8*, i8** %15, align 8, !dbg !1283, !tbaa !1129
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %16, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1283
  %18 = icmp eq i32 %17, 0, !dbg !1283
  br i1 %18, label %19, label %27, !dbg !1289

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1295
  %20 = add nsw i32 %13, 1, !dbg !1298
  %21 = add nsw i32 %13, 2, !dbg !1299
  store i32 %21, i32* @pos, align 4, !dbg !1299, !tbaa !1201
  %22 = sext i32 %20 to i64, !dbg !1301
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !1301
  %24 = load i8*, i8** %23, align 8, !dbg !1301, !tbaa !1129
  %25 = load i8, i8* %24, align 1, !dbg !1301, !tbaa !1280
  %26 = icmp eq i8 %25, 0, !dbg !1302
  call void @llvm.dbg.value(metadata i1 %26, metadata !1287, metadata !DIExpression()) #13, !dbg !1303
  br label %151, !dbg !1304

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !1305, !tbaa !1280
  %29 = icmp eq i8 %28, 45, !dbg !1307
  br i1 %29, label %30, label %40, !dbg !1308

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1309
  %32 = load i8, i8* %31, align 1, !dbg !1309, !tbaa !1280
  %33 = icmp eq i8 %32, 0, !dbg !1310
  br i1 %33, label %40, label %34, !dbg !1311

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1312
  %36 = load i8, i8* %35, align 1, !dbg !1312, !tbaa !1280
  %37 = icmp eq i8 %36, 0, !dbg !1313
  br i1 %37, label %38, label %40, !dbg !1314

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator() #13, !dbg !1315
  call void @llvm.dbg.value(metadata i1 %39, metadata !1287, metadata !DIExpression()) #13, !dbg !1303
  br label %151

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #24, !dbg !1317
  unreachable, !dbg !1317

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1318
  call void @llvm.dbg.value(metadata i1 %42, metadata !1270, metadata !DIExpression()), !dbg !1271
  br label %151, !dbg !1319

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !1320, !tbaa !1129
  %45 = load i32, i32* @pos, align 4, !dbg !1320, !tbaa !1201
  %46 = sext i32 %45 to i64, !dbg !1320
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !1320
  %48 = load i8*, i8** %47, align 8, !dbg !1320, !tbaa !1129
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1320
  %50 = icmp eq i32 %49, 0, !dbg !1320
  br i1 %50, label %51, label %59, !dbg !1322

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1323
  %52 = add nsw i32 %45, 1, !dbg !1326
  store i32 %52, i32* @pos, align 4, !dbg !1326, !tbaa !1201
  %53 = load i32, i32* @argc, align 4, !dbg !1327
  %54 = icmp slt i32 %52, %53, !dbg !1329
  br i1 %54, label %56, label %55, !dbg !1330

55:                                               ; preds = %51
  tail call fastcc void @beyond() #24, !dbg !1331
  unreachable, !dbg !1331

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1332
  %58 = xor i1 %57, true, !dbg !1333
  call void @llvm.dbg.value(metadata i1 %58, metadata !1270, metadata !DIExpression()), !dbg !1271
  br label %151, !dbg !1334

59:                                               ; preds = %43
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1335
  %61 = icmp eq i32 %60, 0, !dbg !1335
  br i1 %61, label %62, label %107, !dbg !1337

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1338
  %64 = sext i32 %63 to i64, !dbg !1338
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !1338
  %66 = load i8*, i8** %65, align 8, !dbg !1338, !tbaa !1129
  %67 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !1338
  %68 = icmp eq i32 %67, 0, !dbg !1338
  br i1 %68, label %69, label %107, !dbg !1339

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !1340
  %70 = add nsw i32 %45, 1, !dbg !1343
  store i32 %70, i32* @pos, align 4, !dbg !1343, !tbaa !1201
  %71 = sext i32 %70 to i64, !dbg !1344
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !1344
  %73 = load i8*, i8** %72, align 8, !dbg !1344, !tbaa !1129
  %74 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %73, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1344
  %75 = icmp eq i32 %74, 0, !dbg !1344
  br i1 %75, label %76, label %83, !dbg !1346

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1347
  %77 = add nsw i32 %45, 2, !dbg !1349
  store i32 %63, i32* @pos, align 4, !dbg !1350, !tbaa !1201
  %78 = sext i32 %77 to i64, !dbg !1352
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !1352
  %80 = load i8*, i8** %79, align 8, !dbg !1352, !tbaa !1129
  %81 = load i8, i8* %80, align 1, !dbg !1352, !tbaa !1280
  %82 = icmp eq i8 %81, 0, !dbg !1353
  call void @llvm.dbg.value(metadata i1 %82, metadata !1287, metadata !DIExpression()) #13, !dbg !1354
  br label %98, !dbg !1355

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !1356, !tbaa !1280
  %85 = icmp eq i8 %84, 45, !dbg !1357
  br i1 %85, label %86, label %97, !dbg !1358

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !1359
  %88 = load i8, i8* %87, align 1, !dbg !1359, !tbaa !1280
  %89 = icmp eq i8 %88, 0, !dbg !1360
  br i1 %89, label %97, label %90, !dbg !1361

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !1362
  %92 = load i8, i8* %91, align 1, !dbg !1362, !tbaa !1280
  %93 = icmp eq i8 %92, 0, !dbg !1363
  br i1 %93, label %94, label %97, !dbg !1364

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator() #13, !dbg !1365
  call void @llvm.dbg.value(metadata i1 %95, metadata !1287, metadata !DIExpression()) #13, !dbg !1354
  %96 = load i32, i32* @pos, align 4, !dbg !1366, !tbaa !1201
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #24, !dbg !1368
  unreachable, !dbg !1368

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1366
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1287, metadata !DIExpression()) #13, !dbg !1354
  call void @llvm.dbg.value(metadata i1 %100, metadata !1270, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !1369
  %101 = add nsw i32 %99, 1, !dbg !1366
  store i32 %101, i32* @pos, align 4, !dbg !1366, !tbaa !1201
  br label %151, !dbg !1370

102:                                              ; preds = %1
  %103 = icmp slt i32 %0, 1, !dbg !1371
  br i1 %103, label %106, label %104, !dbg !1373

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !1374, !tbaa !1201
  br label %107, !dbg !1373

106:                                              ; preds = %102
  tail call void @abort() #24, !dbg !1378
  unreachable, !dbg !1378

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1374
  %109 = load i32, i32* @argc, align 4, !dbg !1379, !tbaa !1201
  %110 = icmp slt i32 %108, %109, !dbg !1380
  br i1 %110, label %111, label %116, !dbg !1381

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()) #13, !dbg !1385
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %112 = tail call fastcc zeroext i1 @term() #13, !dbg !1393
  call void @llvm.dbg.value(metadata i1 %112, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %113 = load i32, i32* @pos, align 4, !dbg !1395, !tbaa !1201
  %114 = load i32, i32* @argc, align 4, !dbg !1397, !tbaa !1201
  %115 = icmp slt i32 %113, %114, !dbg !1398
  br i1 %115, label %117, label %137, !dbg !1399

116:                                              ; preds = %107
  tail call fastcc void @beyond() #24, !dbg !1400
  unreachable, !dbg !1400

117:                                              ; preds = %111, %145
  %118 = phi i32 [ %148, %145 ], [ %113, %111 ]
  %119 = phi i1 [ %147, %145 ], [ %112, %111 ]
  %120 = phi i1 [ %142, %145 ], [ false, %111 ]
  br label %121, !dbg !1399

121:                                              ; preds = %117, %130
  %122 = phi i32 [ %118, %117 ], [ %134, %130 ]
  %123 = phi i1 [ %119, %117 ], [ %133, %130 ]
  %124 = load i8**, i8*** @argv, align 8, !dbg !1401, !tbaa !1129
  %125 = sext i32 %122 to i64, !dbg !1401
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125, !dbg !1401
  %127 = load i8*, i8** %126, align 8, !dbg !1401, !tbaa !1129
  %128 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #23, !dbg !1401
  %129 = icmp eq i32 %128, 0, !dbg !1401
  br i1 %129, label %130, label %141, !dbg !1402

130:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1403
  %131 = add nsw i32 %122, 1, !dbg !1405
  store i32 %131, i32* @pos, align 4, !dbg !1405, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %132 = tail call fastcc zeroext i1 @term() #13, !dbg !1393
  %133 = and i1 %123, %132, !dbg !1406
  call void @llvm.dbg.value(metadata i1 %133, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %134 = load i32, i32* @pos, align 4, !dbg !1395, !tbaa !1201
  %135 = load i32, i32* @argc, align 4, !dbg !1397, !tbaa !1201
  %136 = icmp slt i32 %134, %135, !dbg !1398
  br i1 %136, label %121, label %137, !dbg !1399, !llvm.loop !1407

137:                                              ; preds = %145, %130, %111
  %138 = phi i1 [ false, %111 ], [ %120, %130 ], [ %142, %145 ], !dbg !1385
  %139 = phi i1 [ %112, %111 ], [ %133, %130 ], [ %147, %145 ], !dbg !1406
  %140 = or i1 %138, %139, !dbg !1410
  call void @llvm.dbg.value(metadata i1 %140, metadata !1382, metadata !DIExpression()) #13, !dbg !1385
  br label %151

141:                                              ; preds = %121
  %142 = or i1 %120, %123, !dbg !1410
  call void @llvm.dbg.value(metadata i1 %140, metadata !1382, metadata !DIExpression()) #13, !dbg !1385
  %143 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #23, !dbg !1411
  %144 = icmp eq i32 %143, 0, !dbg !1411
  br i1 %144, label %145, label %151, !dbg !1413

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1414
  %146 = add nsw i32 %122, 1, !dbg !1416
  store i32 %146, i32* @pos, align 4, !dbg !1416, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()) #13, !dbg !1385
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %147 = tail call fastcc zeroext i1 @term() #13, !dbg !1393
  call void @llvm.dbg.value(metadata i1 %147, metadata !1387, metadata !DIExpression()) #13, !dbg !1390
  %148 = load i32, i32* @pos, align 4, !dbg !1395, !tbaa !1201
  %149 = load i32, i32* @argc, align 4, !dbg !1397, !tbaa !1201
  %150 = icmp slt i32 %148, %149, !dbg !1398
  br i1 %150, label %117, label %137, !dbg !1399, !llvm.loop !1417

151:                                              ; preds = %141, %137, %38, %19, %98, %56, %41, %2
  %152 = phi i1 [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ], [ %140, %137 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i1 %152, metadata !1270, metadata !DIExpression()), !dbg !1271
  ret i1 %152, !dbg !1420
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #8 !dbg !1421 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1476
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #13, !dbg !1476
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1423, metadata !DIExpression()), !dbg !1477
  %3 = load i8**, i8*** @argv, align 8, !dbg !1478, !tbaa !1129
  %4 = load i32, i32* @pos, align 4, !dbg !1479, !tbaa !1201
  %5 = sext i32 %4 to i64, !dbg !1478
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1478
  %7 = load i8*, i8** %6, align 8, !dbg !1478, !tbaa !1129
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1478
  %9 = load i8, i8* %8, align 1, !dbg !1478, !tbaa !1280
  %10 = sext i8 %9 to i32, !dbg !1478
  switch i32 %10, label %11 [
    i32 101, label %19
    i32 114, label %31
    i32 119, label %43
    i32 120, label %55
    i32 78, label %67
    i32 79, label %99
    i32 71, label %122
    i32 102, label %145
    i32 100, label %162
    i32 115, label %179
    i32 83, label %195
    i32 99, label %212
    i32 98, label %229
    i32 112, label %246
    i32 76, label %263
    i32 104, label %263
    i32 117, label %280
    i32 103, label %297
    i32 107, label %314
    i32 116, label %331
    i32 110, label %352
    i32 122, label %364
  ], !dbg !1480

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #13, !dbg !1481
  %13 = load i8**, i8*** @argv, align 8, !dbg !1482, !tbaa !1129
  %14 = load i32, i32* @pos, align 4, !dbg !1483, !tbaa !1201
  %15 = sext i32 %14 to i64, !dbg !1482
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !1482
  %17 = load i8*, i8** %16, align 8, !dbg !1482, !tbaa !1129
  %18 = tail call i8* @quote(i8* %17) #13, !dbg !1484
  tail call void (i8*, ...) @test_syntax_error(i8* %12, i8* %18) #25, !dbg !1485
  unreachable, !dbg !1485

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1486
  %20 = add nsw i32 %4, 1, !dbg !1490
  store i32 %20, i32* @pos, align 4, !dbg !1490, !tbaa !1201
  %21 = load i32, i32* @argc, align 4, !dbg !1491
  %22 = icmp slt i32 %20, %21, !dbg !1492
  br i1 %22, label %24, label %23, !dbg !1493

23:                                               ; preds = %19
  tail call fastcc void @beyond() #24, !dbg !1494
  unreachable, !dbg !1494

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1495
  store i32 %25, i32* @pos, align 4, !dbg !1495, !tbaa !1201
  %26 = sext i32 %20 to i64, !dbg !1496
  %27 = getelementptr inbounds i8*, i8** %3, i64 %26, !dbg !1496
  %28 = load i8*, i8** %27, align 8, !dbg !1496, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %28, metadata !1497, metadata !DIExpression()) #13, !dbg !1505
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1505
  %29 = call i32 @__xstat(i32 1, i8* nonnull %28, %struct.stat* nonnull %1) #13, !dbg !1507
  %30 = icmp eq i32 %29, 0, !dbg !1508
  br label %376, !dbg !1509

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1510
  %32 = add nsw i32 %4, 1, !dbg !1513
  store i32 %32, i32* @pos, align 4, !dbg !1513, !tbaa !1201
  %33 = load i32, i32* @argc, align 4, !dbg !1514
  %34 = icmp slt i32 %32, %33, !dbg !1515
  br i1 %34, label %36, label %35, !dbg !1516

35:                                               ; preds = %31
  tail call fastcc void @beyond() #24, !dbg !1517
  unreachable, !dbg !1517

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1518
  store i32 %37, i32* @pos, align 4, !dbg !1518, !tbaa !1201
  %38 = sext i32 %32 to i64, !dbg !1519
  %39 = getelementptr inbounds i8*, i8** %3, i64 %38, !dbg !1519
  %40 = load i8*, i8** %39, align 8, !dbg !1519, !tbaa !1129
  %41 = tail call i32 @euidaccess(i8* %40, i32 4) #13, !dbg !1520
  %42 = icmp eq i32 %41, 0, !dbg !1521
  br label %376, !dbg !1522

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1523
  %44 = add nsw i32 %4, 1, !dbg !1526
  store i32 %44, i32* @pos, align 4, !dbg !1526, !tbaa !1201
  %45 = load i32, i32* @argc, align 4, !dbg !1527
  %46 = icmp slt i32 %44, %45, !dbg !1528
  br i1 %46, label %48, label %47, !dbg !1529

47:                                               ; preds = %43
  tail call fastcc void @beyond() #24, !dbg !1530
  unreachable, !dbg !1530

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1531
  store i32 %49, i32* @pos, align 4, !dbg !1531, !tbaa !1201
  %50 = sext i32 %44 to i64, !dbg !1532
  %51 = getelementptr inbounds i8*, i8** %3, i64 %50, !dbg !1532
  %52 = load i8*, i8** %51, align 8, !dbg !1532, !tbaa !1129
  %53 = tail call i32 @euidaccess(i8* %52, i32 2) #13, !dbg !1533
  %54 = icmp eq i32 %53, 0, !dbg !1534
  br label %376, !dbg !1535

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1536
  %56 = add nsw i32 %4, 1, !dbg !1539
  store i32 %56, i32* @pos, align 4, !dbg !1539, !tbaa !1201
  %57 = load i32, i32* @argc, align 4, !dbg !1540
  %58 = icmp slt i32 %56, %57, !dbg !1541
  br i1 %58, label %60, label %59, !dbg !1542

59:                                               ; preds = %55
  tail call fastcc void @beyond() #24, !dbg !1543
  unreachable, !dbg !1543

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1544
  store i32 %61, i32* @pos, align 4, !dbg !1544, !tbaa !1201
  %62 = sext i32 %56 to i64, !dbg !1545
  %63 = getelementptr inbounds i8*, i8** %3, i64 %62, !dbg !1545
  %64 = load i8*, i8** %63, align 8, !dbg !1545, !tbaa !1129
  %65 = tail call i32 @euidaccess(i8* %64, i32 1) #13, !dbg !1546
  %66 = icmp eq i32 %65, 0, !dbg !1547
  br label %376, !dbg !1548

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1549
  %68 = add nsw i32 %4, 1, !dbg !1552
  store i32 %68, i32* @pos, align 4, !dbg !1552, !tbaa !1201
  %69 = load i32, i32* @argc, align 4, !dbg !1553
  %70 = icmp slt i32 %68, %69, !dbg !1554
  br i1 %70, label %72, label %71, !dbg !1555

71:                                               ; preds = %67
  tail call fastcc void @beyond() #24, !dbg !1556
  unreachable, !dbg !1556

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1557
  store i32 %73, i32* @pos, align 4, !dbg !1557, !tbaa !1201
  %74 = sext i32 %68 to i64, !dbg !1558
  %75 = getelementptr inbounds i8*, i8** %3, i64 %74, !dbg !1558
  %76 = load i8*, i8** %75, align 8, !dbg !1558, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %76, metadata !1497, metadata !DIExpression()) #13, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1560
  %77 = call i32 @__xstat(i32 1, i8* nonnull %76, %struct.stat* nonnull %1) #13, !dbg !1562
  %78 = icmp eq i32 %77, 0, !dbg !1563
  br i1 %78, label %79, label %376, !dbg !1564

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1565, metadata !DIExpression()), !dbg !1573
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 0, !dbg !1575
  %81 = load i64, i64* %80, align 8, !dbg !1575, !tbaa.struct !1576
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 1, !dbg !1575
  %83 = load i64, i64* %82, align 8, !dbg !1575, !tbaa.struct !1576
  call void @llvm.dbg.value(metadata i64 %81, metadata !1460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %83, metadata !1460, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1580, metadata !DIExpression()), !dbg !1583
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 0, !dbg !1585
  %85 = load i64, i64* %84, align 8, !dbg !1585, !tbaa.struct !1576
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 1, !dbg !1585
  %87 = load i64, i64* %86, align 8, !dbg !1585, !tbaa.struct !1576
  call void @llvm.dbg.value(metadata i64 %85, metadata !1463, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %87, metadata !1463, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %85, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %87, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %81, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %83, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !1592
  %88 = icmp slt i64 %85, %81, !dbg !1594
  br i1 %88, label %376, label %89, !dbg !1596

89:                                               ; preds = %79
  %90 = icmp sgt i64 %85, %81, !dbg !1597
  br i1 %90, label %376, label %91, !dbg !1599

91:                                               ; preds = %89
  %92 = icmp sgt i64 %87, -2, !dbg !1600
  call void @llvm.assume(i1 %92) #13, !dbg !1600
  %93 = icmp slt i64 %87, 2000000001, !dbg !1600
  call void @llvm.assume(i1 %93) #13, !dbg !1600
  %94 = icmp sgt i64 %83, -2, !dbg !1601
  call void @llvm.assume(i1 %94) #13, !dbg !1601
  %95 = icmp slt i64 %83, 2000000001, !dbg !1601
  call void @llvm.assume(i1 %95) #13, !dbg !1601
  %96 = sub nsw i64 %87, %83, !dbg !1602
  %97 = trunc i64 %96 to i32, !dbg !1603
  %98 = icmp sgt i32 %97, 0, !dbg !1604
  br label %376, !dbg !1604

99:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1605
  %100 = add nsw i32 %4, 1, !dbg !1608
  store i32 %100, i32* @pos, align 4, !dbg !1608, !tbaa !1201
  %101 = load i32, i32* @argc, align 4, !dbg !1609
  %102 = icmp slt i32 %100, %101, !dbg !1610
  br i1 %102, label %104, label %103, !dbg !1611

103:                                              ; preds = %99
  tail call fastcc void @beyond() #24, !dbg !1612
  unreachable, !dbg !1612

104:                                              ; preds = %99
  %105 = add nsw i32 %4, 2, !dbg !1613
  store i32 %105, i32* @pos, align 4, !dbg !1613, !tbaa !1201
  %106 = sext i32 %100 to i64, !dbg !1614
  %107 = getelementptr inbounds i8*, i8** %3, i64 %106, !dbg !1614
  %108 = load i8*, i8** %107, align 8, !dbg !1614, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %108, metadata !1497, metadata !DIExpression()) #13, !dbg !1616
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1616
  %109 = call i32 @__xstat(i32 1, i8* nonnull %108, %struct.stat* nonnull %1) #13, !dbg !1618
  %110 = icmp eq i32 %109, 0, !dbg !1619
  br i1 %110, label %111, label %376, !dbg !1620

111:                                              ; preds = %104
  %112 = tail call i32* @__errno_location() #26, !dbg !1621
  store i32 0, i32* %112, align 4, !dbg !1622, !tbaa !1201
  %113 = call i32 @geteuid() #13, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %113, metadata !1464, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i32 -1, metadata !1468, metadata !DIExpression()), !dbg !1624
  %114 = icmp eq i32 %113, -1, !dbg !1625
  br i1 %114, label %115, label %118, !dbg !1626

115:                                              ; preds = %111
  %116 = load i32, i32* %112, align 4, !dbg !1627, !tbaa !1201
  %117 = icmp eq i32 %116, 0, !dbg !1627
  br i1 %117, label %118, label %376, !dbg !1628

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1629
  %120 = load i32, i32* %119, align 4, !dbg !1629, !tbaa !1630
  %121 = icmp eq i32 %113, %120, !dbg !1633
  br label %376

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1634
  %123 = add nsw i32 %4, 1, !dbg !1637
  store i32 %123, i32* @pos, align 4, !dbg !1637, !tbaa !1201
  %124 = load i32, i32* @argc, align 4, !dbg !1638
  %125 = icmp slt i32 %123, %124, !dbg !1639
  br i1 %125, label %127, label %126, !dbg !1640

126:                                              ; preds = %122
  tail call fastcc void @beyond() #24, !dbg !1641
  unreachable, !dbg !1641

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1642
  store i32 %128, i32* @pos, align 4, !dbg !1642, !tbaa !1201
  %129 = sext i32 %123 to i64, !dbg !1643
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1643
  %131 = load i8*, i8** %130, align 8, !dbg !1643, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %131, metadata !1497, metadata !DIExpression()) #13, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1645
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #13, !dbg !1647
  %133 = icmp eq i32 %132, 0, !dbg !1648
  br i1 %133, label %134, label %376, !dbg !1649

134:                                              ; preds = %127
  %135 = tail call i32* @__errno_location() #26, !dbg !1650
  store i32 0, i32* %135, align 4, !dbg !1651, !tbaa !1201
  %136 = call i32 @getegid() #13, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %136, metadata !1469, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 -1, metadata !1472, metadata !DIExpression()), !dbg !1653
  %137 = icmp eq i32 %136, -1, !dbg !1654
  br i1 %137, label %138, label %141, !dbg !1655

138:                                              ; preds = %134
  %139 = load i32, i32* %135, align 4, !dbg !1656, !tbaa !1201
  %140 = icmp eq i32 %139, 0, !dbg !1656
  br i1 %140, label %141, label %376, !dbg !1657

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1658
  %143 = load i32, i32* %142, align 8, !dbg !1658, !tbaa !1659
  %144 = icmp eq i32 %136, %143, !dbg !1660
  br label %376

145:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1661
  %146 = add nsw i32 %4, 1, !dbg !1664
  store i32 %146, i32* @pos, align 4, !dbg !1664, !tbaa !1201
  %147 = load i32, i32* @argc, align 4, !dbg !1665
  %148 = icmp slt i32 %146, %147, !dbg !1666
  br i1 %148, label %150, label %149, !dbg !1667

149:                                              ; preds = %145
  tail call fastcc void @beyond() #24, !dbg !1668
  unreachable, !dbg !1668

150:                                              ; preds = %145
  %151 = add nsw i32 %4, 2, !dbg !1669
  store i32 %151, i32* @pos, align 4, !dbg !1669, !tbaa !1201
  %152 = sext i32 %146 to i64, !dbg !1670
  %153 = getelementptr inbounds i8*, i8** %3, i64 %152, !dbg !1670
  %154 = load i8*, i8** %153, align 8, !dbg !1670, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %154, metadata !1497, metadata !DIExpression()) #13, !dbg !1671
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1671
  %155 = call i32 @__xstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %1) #13, !dbg !1673
  %156 = icmp eq i32 %155, 0, !dbg !1674
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1675
  %158 = load i32, i32* %157, align 8, !dbg !1675
  %159 = and i32 %158, 61440, !dbg !1675
  %160 = icmp eq i32 %159, 32768, !dbg !1675
  %161 = and i1 %156, %160, !dbg !1675
  br label %376, !dbg !1676

162:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1677
  %163 = add nsw i32 %4, 1, !dbg !1680
  store i32 %163, i32* @pos, align 4, !dbg !1680, !tbaa !1201
  %164 = load i32, i32* @argc, align 4, !dbg !1681
  %165 = icmp slt i32 %163, %164, !dbg !1682
  br i1 %165, label %167, label %166, !dbg !1683

166:                                              ; preds = %162
  tail call fastcc void @beyond() #24, !dbg !1684
  unreachable, !dbg !1684

167:                                              ; preds = %162
  %168 = add nsw i32 %4, 2, !dbg !1685
  store i32 %168, i32* @pos, align 4, !dbg !1685, !tbaa !1201
  %169 = sext i32 %163 to i64, !dbg !1686
  %170 = getelementptr inbounds i8*, i8** %3, i64 %169, !dbg !1686
  %171 = load i8*, i8** %170, align 8, !dbg !1686, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %171, metadata !1497, metadata !DIExpression()) #13, !dbg !1687
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1687
  %172 = call i32 @__xstat(i32 1, i8* nonnull %171, %struct.stat* nonnull %1) #13, !dbg !1689
  %173 = icmp eq i32 %172, 0, !dbg !1690
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1691
  %175 = load i32, i32* %174, align 8, !dbg !1691
  %176 = and i32 %175, 61440, !dbg !1691
  %177 = icmp eq i32 %176, 16384, !dbg !1691
  %178 = and i1 %173, %177, !dbg !1691
  br label %376, !dbg !1692

179:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1693
  %180 = add nsw i32 %4, 1, !dbg !1696
  store i32 %180, i32* @pos, align 4, !dbg !1696, !tbaa !1201
  %181 = load i32, i32* @argc, align 4, !dbg !1697
  %182 = icmp slt i32 %180, %181, !dbg !1698
  br i1 %182, label %184, label %183, !dbg !1699

183:                                              ; preds = %179
  tail call fastcc void @beyond() #24, !dbg !1700
  unreachable, !dbg !1700

184:                                              ; preds = %179
  %185 = add nsw i32 %4, 2, !dbg !1701
  store i32 %185, i32* @pos, align 4, !dbg !1701, !tbaa !1201
  %186 = sext i32 %180 to i64, !dbg !1702
  %187 = getelementptr inbounds i8*, i8** %3, i64 %186, !dbg !1702
  %188 = load i8*, i8** %187, align 8, !dbg !1702, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %188, metadata !1497, metadata !DIExpression()) #13, !dbg !1703
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1703
  %189 = call i32 @__xstat(i32 1, i8* nonnull %188, %struct.stat* nonnull %1) #13, !dbg !1705
  %190 = icmp eq i32 %189, 0, !dbg !1706
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1707
  %192 = load i64, i64* %191, align 8, !dbg !1707
  %193 = icmp sgt i64 %192, 0, !dbg !1707
  %194 = and i1 %190, %193, !dbg !1707
  br label %376, !dbg !1708

195:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1709
  %196 = add nsw i32 %4, 1, !dbg !1712
  store i32 %196, i32* @pos, align 4, !dbg !1712, !tbaa !1201
  %197 = load i32, i32* @argc, align 4, !dbg !1713
  %198 = icmp slt i32 %196, %197, !dbg !1714
  br i1 %198, label %200, label %199, !dbg !1715

199:                                              ; preds = %195
  tail call fastcc void @beyond() #24, !dbg !1716
  unreachable, !dbg !1716

200:                                              ; preds = %195
  %201 = add nsw i32 %4, 2, !dbg !1717
  store i32 %201, i32* @pos, align 4, !dbg !1717, !tbaa !1201
  %202 = sext i32 %196 to i64, !dbg !1718
  %203 = getelementptr inbounds i8*, i8** %3, i64 %202, !dbg !1718
  %204 = load i8*, i8** %203, align 8, !dbg !1718, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %204, metadata !1497, metadata !DIExpression()) #13, !dbg !1719
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1719
  %205 = call i32 @__xstat(i32 1, i8* nonnull %204, %struct.stat* nonnull %1) #13, !dbg !1721
  %206 = icmp eq i32 %205, 0, !dbg !1722
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1723
  %208 = load i32, i32* %207, align 8, !dbg !1723
  %209 = and i32 %208, 61440, !dbg !1723
  %210 = icmp eq i32 %209, 49152, !dbg !1723
  %211 = and i1 %206, %210, !dbg !1723
  br label %376, !dbg !1724

212:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1725
  %213 = add nsw i32 %4, 1, !dbg !1728
  store i32 %213, i32* @pos, align 4, !dbg !1728, !tbaa !1201
  %214 = load i32, i32* @argc, align 4, !dbg !1729
  %215 = icmp slt i32 %213, %214, !dbg !1730
  br i1 %215, label %217, label %216, !dbg !1731

216:                                              ; preds = %212
  tail call fastcc void @beyond() #24, !dbg !1732
  unreachable, !dbg !1732

217:                                              ; preds = %212
  %218 = add nsw i32 %4, 2, !dbg !1733
  store i32 %218, i32* @pos, align 4, !dbg !1733, !tbaa !1201
  %219 = sext i32 %213 to i64, !dbg !1734
  %220 = getelementptr inbounds i8*, i8** %3, i64 %219, !dbg !1734
  %221 = load i8*, i8** %220, align 8, !dbg !1734, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %221, metadata !1497, metadata !DIExpression()) #13, !dbg !1735
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1735
  %222 = call i32 @__xstat(i32 1, i8* nonnull %221, %struct.stat* nonnull %1) #13, !dbg !1737
  %223 = icmp eq i32 %222, 0, !dbg !1738
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1739
  %225 = load i32, i32* %224, align 8, !dbg !1739
  %226 = and i32 %225, 61440, !dbg !1739
  %227 = icmp eq i32 %226, 8192, !dbg !1739
  %228 = and i1 %223, %227, !dbg !1739
  br label %376, !dbg !1740

229:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1741
  %230 = add nsw i32 %4, 1, !dbg !1744
  store i32 %230, i32* @pos, align 4, !dbg !1744, !tbaa !1201
  %231 = load i32, i32* @argc, align 4, !dbg !1745
  %232 = icmp slt i32 %230, %231, !dbg !1746
  br i1 %232, label %234, label %233, !dbg !1747

233:                                              ; preds = %229
  tail call fastcc void @beyond() #24, !dbg !1748
  unreachable, !dbg !1748

234:                                              ; preds = %229
  %235 = add nsw i32 %4, 2, !dbg !1749
  store i32 %235, i32* @pos, align 4, !dbg !1749, !tbaa !1201
  %236 = sext i32 %230 to i64, !dbg !1750
  %237 = getelementptr inbounds i8*, i8** %3, i64 %236, !dbg !1750
  %238 = load i8*, i8** %237, align 8, !dbg !1750, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %238, metadata !1497, metadata !DIExpression()) #13, !dbg !1751
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1751
  %239 = call i32 @__xstat(i32 1, i8* nonnull %238, %struct.stat* nonnull %1) #13, !dbg !1753
  %240 = icmp eq i32 %239, 0, !dbg !1754
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1755
  %242 = load i32, i32* %241, align 8, !dbg !1755
  %243 = and i32 %242, 61440, !dbg !1755
  %244 = icmp eq i32 %243, 24576, !dbg !1755
  %245 = and i1 %240, %244, !dbg !1755
  br label %376, !dbg !1756

246:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1757
  %247 = add nsw i32 %4, 1, !dbg !1760
  store i32 %247, i32* @pos, align 4, !dbg !1760, !tbaa !1201
  %248 = load i32, i32* @argc, align 4, !dbg !1761
  %249 = icmp slt i32 %247, %248, !dbg !1762
  br i1 %249, label %251, label %250, !dbg !1763

250:                                              ; preds = %246
  tail call fastcc void @beyond() #24, !dbg !1764
  unreachable, !dbg !1764

251:                                              ; preds = %246
  %252 = add nsw i32 %4, 2, !dbg !1765
  store i32 %252, i32* @pos, align 4, !dbg !1765, !tbaa !1201
  %253 = sext i32 %247 to i64, !dbg !1766
  %254 = getelementptr inbounds i8*, i8** %3, i64 %253, !dbg !1766
  %255 = load i8*, i8** %254, align 8, !dbg !1766, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %255, metadata !1497, metadata !DIExpression()) #13, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1767
  %256 = call i32 @__xstat(i32 1, i8* nonnull %255, %struct.stat* nonnull %1) #13, !dbg !1769
  %257 = icmp eq i32 %256, 0, !dbg !1770
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1771
  %259 = load i32, i32* %258, align 8, !dbg !1771
  %260 = and i32 %259, 61440, !dbg !1771
  %261 = icmp eq i32 %260, 4096, !dbg !1771
  %262 = and i1 %257, %261, !dbg !1771
  br label %376, !dbg !1772

263:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1773
  %264 = add nsw i32 %4, 1, !dbg !1776
  store i32 %264, i32* @pos, align 4, !dbg !1776, !tbaa !1201
  %265 = load i32, i32* @argc, align 4, !dbg !1777
  %266 = icmp slt i32 %264, %265, !dbg !1778
  br i1 %266, label %268, label %267, !dbg !1779

267:                                              ; preds = %263
  tail call fastcc void @beyond() #24, !dbg !1780
  unreachable, !dbg !1780

268:                                              ; preds = %263
  %269 = add nsw i32 %4, 2, !dbg !1781
  store i32 %269, i32* @pos, align 4, !dbg !1781, !tbaa !1201
  %270 = sext i32 %264 to i64, !dbg !1782
  %271 = getelementptr inbounds i8*, i8** %3, i64 %270, !dbg !1782
  %272 = load i8*, i8** %271, align 8, !dbg !1782, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %272, metadata !1783, metadata !DIExpression()) #13, !dbg !1787
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1786, metadata !DIExpression()) #13, !dbg !1787
  %273 = call i32 @__lxstat(i32 1, i8* nonnull %272, %struct.stat* nonnull %1) #13, !dbg !1789
  %274 = icmp eq i32 %273, 0, !dbg !1790
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1791
  %276 = load i32, i32* %275, align 8, !dbg !1791
  %277 = and i32 %276, 61440, !dbg !1791
  %278 = icmp eq i32 %277, 40960, !dbg !1791
  %279 = and i1 %274, %278, !dbg !1791
  br label %376, !dbg !1792

280:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1793
  %281 = add nsw i32 %4, 1, !dbg !1796
  store i32 %281, i32* @pos, align 4, !dbg !1796, !tbaa !1201
  %282 = load i32, i32* @argc, align 4, !dbg !1797
  %283 = icmp slt i32 %281, %282, !dbg !1798
  br i1 %283, label %285, label %284, !dbg !1799

284:                                              ; preds = %280
  tail call fastcc void @beyond() #24, !dbg !1800
  unreachable, !dbg !1800

285:                                              ; preds = %280
  %286 = add nsw i32 %4, 2, !dbg !1801
  store i32 %286, i32* @pos, align 4, !dbg !1801, !tbaa !1201
  %287 = sext i32 %281 to i64, !dbg !1802
  %288 = getelementptr inbounds i8*, i8** %3, i64 %287, !dbg !1802
  %289 = load i8*, i8** %288, align 8, !dbg !1802, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %289, metadata !1497, metadata !DIExpression()) #13, !dbg !1803
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1803
  %290 = call i32 @__xstat(i32 1, i8* nonnull %289, %struct.stat* nonnull %1) #13, !dbg !1805
  %291 = icmp eq i32 %290, 0, !dbg !1806
  %292 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1807
  %293 = load i32, i32* %292, align 8, !dbg !1807
  %294 = and i32 %293, 2048, !dbg !1807
  %295 = icmp ne i32 %294, 0, !dbg !1807
  %296 = and i1 %291, %295, !dbg !1807
  br label %376, !dbg !1808

297:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1809
  %298 = add nsw i32 %4, 1, !dbg !1812
  store i32 %298, i32* @pos, align 4, !dbg !1812, !tbaa !1201
  %299 = load i32, i32* @argc, align 4, !dbg !1813
  %300 = icmp slt i32 %298, %299, !dbg !1814
  br i1 %300, label %302, label %301, !dbg !1815

301:                                              ; preds = %297
  tail call fastcc void @beyond() #24, !dbg !1816
  unreachable, !dbg !1816

302:                                              ; preds = %297
  %303 = add nsw i32 %4, 2, !dbg !1817
  store i32 %303, i32* @pos, align 4, !dbg !1817, !tbaa !1201
  %304 = sext i32 %298 to i64, !dbg !1818
  %305 = getelementptr inbounds i8*, i8** %3, i64 %304, !dbg !1818
  %306 = load i8*, i8** %305, align 8, !dbg !1818, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %306, metadata !1497, metadata !DIExpression()) #13, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1819
  %307 = call i32 @__xstat(i32 1, i8* nonnull %306, %struct.stat* nonnull %1) #13, !dbg !1821
  %308 = icmp eq i32 %307, 0, !dbg !1822
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1823
  %310 = load i32, i32* %309, align 8, !dbg !1823
  %311 = and i32 %310, 1024, !dbg !1823
  %312 = icmp ne i32 %311, 0, !dbg !1823
  %313 = and i1 %308, %312, !dbg !1823
  br label %376, !dbg !1824

314:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1825
  %315 = add nsw i32 %4, 1, !dbg !1828
  store i32 %315, i32* @pos, align 4, !dbg !1828, !tbaa !1201
  %316 = load i32, i32* @argc, align 4, !dbg !1829
  %317 = icmp slt i32 %315, %316, !dbg !1830
  br i1 %317, label %319, label %318, !dbg !1831

318:                                              ; preds = %314
  tail call fastcc void @beyond() #24, !dbg !1832
  unreachable, !dbg !1832

319:                                              ; preds = %314
  %320 = add nsw i32 %4, 2, !dbg !1833
  store i32 %320, i32* @pos, align 4, !dbg !1833, !tbaa !1201
  %321 = sext i32 %315 to i64, !dbg !1834
  %322 = getelementptr inbounds i8*, i8** %3, i64 %321, !dbg !1834
  %323 = load i8*, i8** %322, align 8, !dbg !1834, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %323, metadata !1497, metadata !DIExpression()) #13, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()) #13, !dbg !1835
  %324 = call i32 @__xstat(i32 1, i8* nonnull %323, %struct.stat* nonnull %1) #13, !dbg !1837
  %325 = icmp eq i32 %324, 0, !dbg !1838
  %326 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1839
  %327 = load i32, i32* %326, align 8, !dbg !1839
  %328 = and i32 %327, 512, !dbg !1839
  %329 = icmp ne i32 %328, 0, !dbg !1839
  %330 = and i1 %325, %329, !dbg !1839
  br label %376, !dbg !1840

331:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1841
  %332 = add nsw i32 %4, 1, !dbg !1844
  store i32 %332, i32* @pos, align 4, !dbg !1844, !tbaa !1201
  %333 = load i32, i32* @argc, align 4, !dbg !1845
  %334 = icmp slt i32 %332, %333, !dbg !1846
  br i1 %334, label %336, label %335, !dbg !1847

335:                                              ; preds = %331
  tail call fastcc void @beyond() #24, !dbg !1848
  unreachable, !dbg !1848

336:                                              ; preds = %331
  %337 = add nsw i32 %4, 2, !dbg !1849
  store i32 %337, i32* @pos, align 4, !dbg !1849, !tbaa !1201
  %338 = sext i32 %332 to i64, !dbg !1850
  %339 = getelementptr inbounds i8*, i8** %3, i64 %338, !dbg !1850
  %340 = load i8*, i8** %339, align 8, !dbg !1850, !tbaa !1129
  %341 = tail call fastcc i8* @find_int(i8* %340), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %341, metadata !1475, metadata !DIExpression()), !dbg !1852
  %342 = tail call i32* @__errno_location() #26, !dbg !1853
  store i32 0, i32* %342, align 4, !dbg !1854, !tbaa !1201
  %343 = tail call i64 @strtol(i8* nocapture %341, i8** null, i32 10) #13, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %343, metadata !1473, metadata !DIExpression()), !dbg !1852
  %344 = load i32, i32* %342, align 4, !dbg !1856, !tbaa !1201
  %345 = icmp ne i32 %344, 34, !dbg !1857
  %346 = icmp ult i64 %343, 2147483648, !dbg !1858
  %347 = and i1 %346, %345, !dbg !1858
  br i1 %347, label %348, label %376, !dbg !1858

348:                                              ; preds = %336
  %349 = trunc i64 %343 to i32, !dbg !1859
  %350 = tail call i32 @isatty(i32 %349) #13, !dbg !1860
  %351 = icmp ne i32 %350, 0, !dbg !1861
  br label %376

352:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1862
  %353 = add nsw i32 %4, 1, !dbg !1865
  store i32 %353, i32* @pos, align 4, !dbg !1865, !tbaa !1201
  %354 = load i32, i32* @argc, align 4, !dbg !1866
  %355 = icmp slt i32 %353, %354, !dbg !1867
  br i1 %355, label %357, label %356, !dbg !1868

356:                                              ; preds = %352
  tail call fastcc void @beyond() #24, !dbg !1869
  unreachable, !dbg !1869

357:                                              ; preds = %352
  %358 = add nsw i32 %4, 2, !dbg !1870
  store i32 %358, i32* @pos, align 4, !dbg !1870, !tbaa !1201
  %359 = sext i32 %353 to i64, !dbg !1871
  %360 = getelementptr inbounds i8*, i8** %3, i64 %359, !dbg !1871
  %361 = load i8*, i8** %360, align 8, !dbg !1871, !tbaa !1129
  %362 = load i8, i8* %361, align 1, !dbg !1871, !tbaa !1280
  %363 = icmp ne i8 %362, 0, !dbg !1872
  br label %376, !dbg !1873

364:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1874
  %365 = add nsw i32 %4, 1, !dbg !1877
  store i32 %365, i32* @pos, align 4, !dbg !1877, !tbaa !1201
  %366 = load i32, i32* @argc, align 4, !dbg !1878
  %367 = icmp slt i32 %365, %366, !dbg !1879
  br i1 %367, label %369, label %368, !dbg !1880

368:                                              ; preds = %364
  tail call fastcc void @beyond() #24, !dbg !1881
  unreachable, !dbg !1881

369:                                              ; preds = %364
  %370 = add nsw i32 %4, 2, !dbg !1882
  store i32 %370, i32* @pos, align 4, !dbg !1882, !tbaa !1201
  %371 = sext i32 %365 to i64, !dbg !1883
  %372 = getelementptr inbounds i8*, i8** %3, i64 %371, !dbg !1883
  %373 = load i8*, i8** %372, align 8, !dbg !1883, !tbaa !1129
  %374 = load i8, i8* %373, align 1, !dbg !1883, !tbaa !1280
  %375 = icmp eq i8 %374, 0, !dbg !1884
  br label %376, !dbg !1885

376:                                              ; preds = %91, %89, %79, %336, %348, %141, %138, %127, %118, %115, %104, %72, %369, %357, %319, %302, %285, %268, %251, %234, %217, %200, %184, %167, %150, %60, %48, %36, %24
  %377 = phi i1 [ %375, %369 ], [ %363, %357 ], [ %330, %319 ], [ %313, %302 ], [ %296, %285 ], [ %279, %268 ], [ %262, %251 ], [ %245, %234 ], [ %228, %217 ], [ %211, %200 ], [ %194, %184 ], [ %178, %167 ], [ %161, %150 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %104 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %138 ], [ %144, %141 ], [ false, %336 ], [ %351, %348 ], [ %98, %91 ], [ false, %79 ], [ true, %89 ], !dbg !1886
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #13, !dbg !1887
  ret i1 %377, !dbg !1887
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1888 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i32 5) #13, !dbg !1889
  %2 = load i8**, i8*** @argv, align 8, !dbg !1890, !tbaa !1129
  %3 = load i32, i32* @argc, align 4, !dbg !1891, !tbaa !1201
  %4 = add nsw i32 %3, -1, !dbg !1892
  %5 = sext i32 %4 to i64, !dbg !1890
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1890
  %7 = load i8*, i8** %6, align 8, !dbg !1890, !tbaa !1129
  %8 = tail call i8* @quote(i8* %7) #13, !dbg !1893
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #25, !dbg !1894
  unreachable, !dbg !1894
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #8 !dbg !1895 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1898, !tbaa !1129
  %2 = load i32, i32* @pos, align 4, !dbg !1900, !tbaa !1201
  %3 = add nsw i32 %2, 1, !dbg !1901
  %4 = sext i32 %3 to i64, !dbg !1898
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1898
  %6 = load i8*, i8** %5, align 8, !dbg !1898, !tbaa !1129
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1902
  br i1 %7, label %8, label %10, !dbg !1903

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1904
  call void @llvm.dbg.value(metadata i1 %9, metadata !1897, metadata !DIExpression()), !dbg !1905
  br label %120, !dbg !1906

10:                                               ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !1907
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1907
  %13 = load i8*, i8** %12, align 8, !dbg !1907, !tbaa !1129
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1907
  %15 = icmp eq i32 %14, 0, !dbg !1907
  br i1 %15, label %16, label %48, !dbg !1909

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !1910
  store i32 %3, i32* @pos, align 4, !dbg !1913, !tbaa !1201
  %17 = load i32, i32* @argc, align 4, !dbg !1914
  %18 = icmp slt i32 %3, %17, !dbg !1915
  br i1 %18, label %20, label %19, !dbg !1916

19:                                               ; preds = %16
  tail call fastcc void @beyond() #24, !dbg !1917
  unreachable, !dbg !1917

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1918
  %22 = icmp eq i32 %21, 0, !dbg !1918
  br i1 %22, label %23, label %31, !dbg !1920

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1921
  %24 = add nsw i32 %2, 2, !dbg !1923
  %25 = add nsw i32 %2, 3, !dbg !1924
  store i32 %25, i32* @pos, align 4, !dbg !1924, !tbaa !1201
  %26 = sext i32 %24 to i64, !dbg !1926
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !1926
  %28 = load i8*, i8** %27, align 8, !dbg !1926, !tbaa !1129
  %29 = load i8, i8* %28, align 1, !dbg !1926, !tbaa !1280
  %30 = icmp eq i8 %29, 0, !dbg !1927
  call void @llvm.dbg.value(metadata i1 %30, metadata !1287, metadata !DIExpression()) #13, !dbg !1928
  br label %45, !dbg !1929

31:                                               ; preds = %20
  %32 = load i8, i8* %6, align 1, !dbg !1930, !tbaa !1280
  %33 = icmp eq i8 %32, 45, !dbg !1931
  br i1 %33, label %34, label %44, !dbg !1932

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1933
  %36 = load i8, i8* %35, align 1, !dbg !1933, !tbaa !1280
  %37 = icmp eq i8 %36, 0, !dbg !1934
  br i1 %37, label %44, label %38, !dbg !1935

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1936
  %40 = load i8, i8* %39, align 1, !dbg !1936, !tbaa !1280
  %41 = icmp eq i8 %40, 0, !dbg !1937
  br i1 %41, label %42, label %44, !dbg !1938

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator() #13, !dbg !1939
  call void @llvm.dbg.value(metadata i1 %43, metadata !1287, metadata !DIExpression()) #13, !dbg !1928
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #24, !dbg !1940
  unreachable, !dbg !1940

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1287, metadata !DIExpression()) #13, !dbg !1928
  %47 = xor i1 %46, true, !dbg !1941
  call void @llvm.dbg.value(metadata i1 %47, metadata !1897, metadata !DIExpression()), !dbg !1905
  br label %120, !dbg !1942

48:                                               ; preds = %10
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1943
  %50 = icmp eq i32 %49, 0, !dbg !1943
  br i1 %50, label %51, label %62, !dbg !1945

51:                                               ; preds = %48
  %52 = add nsw i32 %2, 2, !dbg !1946
  %53 = sext i32 %52 to i64, !dbg !1946
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !1946
  %55 = load i8*, i8** %54, align 8, !dbg !1946, !tbaa !1129
  %56 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !1946
  %57 = icmp eq i32 %56, 0, !dbg !1946
  br i1 %57, label %58, label %62, !dbg !1947

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !1948
  %59 = load i8, i8* %6, align 1, !dbg !1951, !tbaa !1280
  %60 = icmp ne i8 %59, 0, !dbg !1953
  call void @llvm.dbg.value(metadata i1 %60, metadata !1897, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !1954
  %61 = add nsw i32 %2, 3, !dbg !1956
  store i32 %61, i32* @pos, align 4, !dbg !1956, !tbaa !1201
  br label %120, !dbg !1957

62:                                               ; preds = %51, %48
  %63 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #23, !dbg !1958
  %64 = icmp eq i32 %63, 0, !dbg !1958
  br i1 %64, label %68, label %65, !dbg !1960

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #23, !dbg !1961
  %67 = icmp eq i32 %66, 0, !dbg !1961
  br i1 %67, label %68, label %111, !dbg !1962

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @argc, align 4, !dbg !1963, !tbaa !1201
  %70 = icmp slt i32 %2, %69, !dbg !1965
  br i1 %70, label %71, label %76, !dbg !1966

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()) #13, !dbg !1967
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %72 = tail call fastcc zeroext i1 @term() #13, !dbg !1971
  call void @llvm.dbg.value(metadata i1 %72, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %73 = load i32, i32* @pos, align 4, !dbg !1972, !tbaa !1201
  %74 = load i32, i32* @argc, align 4, !dbg !1973, !tbaa !1201
  %75 = icmp slt i32 %73, %74, !dbg !1974
  br i1 %75, label %77, label %97, !dbg !1975

76:                                               ; preds = %68
  tail call fastcc void @beyond() #24, !dbg !1976
  unreachable, !dbg !1976

77:                                               ; preds = %71, %105
  %78 = phi i32 [ %108, %105 ], [ %73, %71 ]
  %79 = phi i1 [ %107, %105 ], [ %72, %71 ]
  %80 = phi i1 [ %102, %105 ], [ false, %71 ]
  br label %81, !dbg !1975

81:                                               ; preds = %77, %90
  %82 = phi i32 [ %78, %77 ], [ %94, %90 ]
  %83 = phi i1 [ %79, %77 ], [ %93, %90 ]
  %84 = load i8**, i8*** @argv, align 8, !dbg !1977, !tbaa !1129
  %85 = sext i32 %82 to i64, !dbg !1977
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85, !dbg !1977
  %87 = load i8*, i8** %86, align 8, !dbg !1977, !tbaa !1129
  %88 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #23, !dbg !1977
  %89 = icmp eq i32 %88, 0, !dbg !1977
  br i1 %89, label %90, label %101, !dbg !1978

90:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1979
  %91 = add nsw i32 %82, 1, !dbg !1981
  store i32 %91, i32* @pos, align 4, !dbg !1981, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %92 = tail call fastcc zeroext i1 @term() #13, !dbg !1971
  %93 = and i1 %83, %92, !dbg !1982
  call void @llvm.dbg.value(metadata i1 %93, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %94 = load i32, i32* @pos, align 4, !dbg !1972, !tbaa !1201
  %95 = load i32, i32* @argc, align 4, !dbg !1973, !tbaa !1201
  %96 = icmp slt i32 %94, %95, !dbg !1974
  br i1 %96, label %81, label %97, !dbg !1975, !llvm.loop !1983

97:                                               ; preds = %105, %90, %71
  %98 = phi i1 [ false, %71 ], [ %80, %90 ], [ %102, %105 ], !dbg !1967
  %99 = phi i1 [ %72, %71 ], [ %93, %90 ], [ %107, %105 ], !dbg !1982
  %100 = or i1 %98, %99, !dbg !1986
  call void @llvm.dbg.value(metadata i1 %100, metadata !1382, metadata !DIExpression()) #13, !dbg !1967
  br label %120

101:                                              ; preds = %81
  %102 = or i1 %80, %83, !dbg !1986
  call void @llvm.dbg.value(metadata i1 %100, metadata !1382, metadata !DIExpression()) #13, !dbg !1967
  %103 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #23, !dbg !1987
  %104 = icmp eq i32 %103, 0, !dbg !1987
  br i1 %104, label %105, label %120, !dbg !1988

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()) #13, !dbg !1989
  %106 = add nsw i32 %82, 1, !dbg !1991
  store i32 %106, i32* @pos, align 4, !dbg !1991, !tbaa !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()) #13, !dbg !1967
  call void @llvm.dbg.value(metadata i8 undef, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %107 = tail call fastcc zeroext i1 @term() #13, !dbg !1971
  call void @llvm.dbg.value(metadata i1 %107, metadata !1387, metadata !DIExpression()) #13, !dbg !1969
  %108 = load i32, i32* @pos, align 4, !dbg !1972, !tbaa !1201
  %109 = load i32, i32* @argc, align 4, !dbg !1973, !tbaa !1201
  %110 = icmp slt i32 %108, %109, !dbg !1974
  br i1 %110, label %77, label %97, !dbg !1975, !llvm.loop !1992

111:                                              ; preds = %65
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 5) #13, !dbg !1995
  %113 = load i8**, i8*** @argv, align 8, !dbg !1996, !tbaa !1129
  %114 = load i32, i32* @pos, align 4, !dbg !1997, !tbaa !1201
  %115 = add nsw i32 %114, 1, !dbg !1998
  %116 = sext i32 %115 to i64, !dbg !1996
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116, !dbg !1996
  %118 = load i8*, i8** %117, align 8, !dbg !1996, !tbaa !1129
  %119 = tail call i8* @quote(i8* %118) #13, !dbg !1999
  tail call void (i8*, ...) @test_syntax_error(i8* %112, i8* %119) #25, !dbg !2000
  unreachable, !dbg !2000

120:                                              ; preds = %101, %97, %45, %58, %8
  %121 = phi i1 [ %9, %8 ], [ %47, %45 ], [ %60, %58 ], [ %100, %97 ], [ %102, %101 ]
  call void @llvm.dbg.value(metadata i1 %121, metadata !1897, metadata !DIExpression()), !dbg !1905
  ret i1 %121, !dbg !2001
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #8 !dbg !2002 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 undef, metadata !2005, metadata !DIExpression()), !dbg !2009
  %1 = load i32, i32* @pos, align 4, !dbg !2010, !tbaa !1201
  %2 = load i32, i32* @argc, align 4, !dbg !2011, !tbaa !1201
  %3 = icmp sgt i32 %2, %1, !dbg !2012
  br i1 %3, label %4, label %30, !dbg !2013

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !dbg !2009, !tbaa !1129
  %6 = sext i32 %1 to i64, !dbg !2014
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !2014
  %8 = load i8*, i8** %7, align 8, !dbg !2014, !tbaa !1129
  %9 = load i8, i8* %8, align 1, !dbg !2014, !tbaa !1280
  %10 = icmp eq i8 %9, 33, !dbg !2015
  br i1 %10, label %11, label %31, !dbg !2016

11:                                               ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2017
  %17 = load i8, i8* %16, align 1, !dbg !2017, !tbaa !1280
  %18 = icmp eq i8 %17, 0, !dbg !2018
  br i1 %18, label %19, label %100, !dbg !2019

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !2020
  %20 = add nsw i32 %15, 1, !dbg !2023
  store i32 %20, i32* @pos, align 4, !dbg !2023, !tbaa !1201
  %21 = icmp slt i32 %20, %2, !dbg !2024
  br i1 %21, label %23, label %22, !dbg !2025

22:                                               ; preds = %19
  tail call fastcc void @beyond() #24, !dbg !2026
  unreachable, !dbg !2026

23:                                               ; preds = %19
  %24 = xor i1 %14, true, !dbg !2027
  call void @llvm.dbg.value(metadata i8 undef, metadata !2005, metadata !DIExpression()), !dbg !2009
  %25 = sext i32 %20 to i64, !dbg !2014
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !2014
  %27 = load i8*, i8** %26, align 8, !dbg !2014, !tbaa !1129
  %28 = load i8, i8* %27, align 1, !dbg !2014, !tbaa !1280
  %29 = icmp eq i8 %28, 33, !dbg !2015
  br i1 %29, label %11, label %31, !dbg !2016

30:                                               ; preds = %0
  tail call fastcc void @beyond() #25, !dbg !2028
  unreachable, !dbg !2028

31:                                               ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !2014
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !2014
  %36 = icmp eq i8 %35, 40, !dbg !2030
  br i1 %36, label %37, label %100, !dbg !2031

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !2032
  %39 = load i8, i8* %38, align 1, !dbg !2032, !tbaa !1280
  %40 = icmp eq i8 %39, 0, !dbg !2033
  br i1 %40, label %41, label %100, !dbg !2034

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !1290, metadata !DIExpression()) #13, !dbg !2035
  %42 = add nsw i32 %32, 1, !dbg !2037
  store i32 %42, i32* @pos, align 4, !dbg !2037, !tbaa !1201
  %43 = icmp sgt i32 %2, %42, !dbg !2038
  br i1 %43, label %44, label %52, !dbg !2039

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !2006, metadata !DIExpression()), !dbg !2040
  %45 = add nsw i32 %32, 2, !dbg !2041
  %46 = icmp slt i32 %45, %2, !dbg !2044
  br i1 %46, label %47, label %70, !dbg !2045

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !2046
  %49 = xor i32 %32, -1, !dbg !2046
  %50 = add i32 %2, %49, !dbg !2046
  %51 = zext i32 %50 to i64, !dbg !2044
  br label %53, !dbg !2046

52:                                               ; preds = %41
  tail call fastcc void @beyond() #24, !dbg !2047
  unreachable, !dbg !2047

53:                                               ; preds = %64, %47
  %54 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %55 = phi i64 [ %48, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !2006, metadata !DIExpression()), !dbg !2040
  %56 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !2048
  %57 = load i8*, i8** %56, align 8, !dbg !2048, !tbaa !1129
  %58 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %57, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !2048
  %59 = icmp eq i32 %58, 0, !dbg !2048
  br i1 %59, label %68, label %60, !dbg !2046

60:                                               ; preds = %53
  %61 = icmp eq i64 %54, 4, !dbg !2049
  br i1 %61, label %62, label %64, !dbg !2051

62:                                               ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %63, metadata !2006, metadata !DIExpression()), !dbg !2040
  br label %70, !dbg !2054

64:                                               ; preds = %60
  %65 = add nuw nsw i64 %54, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %65, metadata !2006, metadata !DIExpression()), !dbg !2040
  %66 = add nsw i64 %55, 1, !dbg !2041
  %67 = icmp eq i64 %65, %51, !dbg !2044
  br i1 %67, label %70, label %53, !dbg !2045, !llvm.loop !2056

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2006, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %54, metadata !2006, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %54, metadata !2006, metadata !DIExpression()), !dbg !2040
  %69 = trunc i64 %54 to i32, !dbg !2046
  br label %70, !dbg !2058

70:                                               ; preds = %64, %68, %44, %62
  %71 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %69, %68 ], [ %50, %64 ], !dbg !2059
  call void @llvm.dbg.value(metadata i32 %71, metadata !2006, metadata !DIExpression()), !dbg !2040
  %72 = tail call fastcc zeroext i1 @posixtest(i32 %71), !dbg !2058
  call void @llvm.dbg.value(metadata i1 %72, metadata !2004, metadata !DIExpression()), !dbg !2009
  %73 = load i8**, i8*** @argv, align 8, !dbg !2060, !tbaa !1129
  %74 = load i32, i32* @pos, align 4, !dbg !2062, !tbaa !1201
  %75 = sext i32 %74 to i64, !dbg !2060
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75, !dbg !2060
  %77 = load i8*, i8** %76, align 8, !dbg !2060, !tbaa !1129
  %78 = icmp eq i8* %77, null, !dbg !2063
  br i1 %78, label %79, label %82, !dbg !2064

79:                                               ; preds = %70
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #13, !dbg !2065
  %81 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #13, !dbg !2066
  tail call void (i8*, ...) @test_syntax_error(i8* %80, i8* %81) #25, !dbg !2067
  unreachable, !dbg !2067

82:                                               ; preds = %70
  %83 = load i8, i8* %77, align 1, !dbg !2068, !tbaa !1280
  %84 = icmp eq i8 %83, 41, !dbg !2070
  br i1 %84, label %85, label %89, !dbg !2071

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !2072
  %87 = load i8, i8* %86, align 1, !dbg !2072, !tbaa !1280
  %88 = icmp eq i8 %87, 0, !dbg !2072
  br i1 %88, label %98, label %89, !dbg !2073

89:                                               ; preds = %85, %82
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0), i32 5) #13, !dbg !2074
  %91 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #13, !dbg !2075
  %92 = load i8**, i8*** @argv, align 8, !dbg !2076, !tbaa !1129
  %93 = load i32, i32* @pos, align 4, !dbg !2077, !tbaa !1201
  %94 = sext i32 %93 to i64, !dbg !2076
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94, !dbg !2076
  %96 = load i8*, i8** %95, align 8, !dbg !2076, !tbaa !1129
  %97 = tail call i8* @quote_n(i32 1, i8* %96) #13, !dbg !2078
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91, i8* %97) #25, !dbg !2079
  unreachable, !dbg !2079

98:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !2080
  %99 = add nsw i32 %74, 1, !dbg !2082
  store i32 %99, i32* @pos, align 4, !dbg !2082, !tbaa !1201
  br label %143, !dbg !2083

100:                                              ; preds = %11, %37, %31
  %101 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %102 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %103 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %104 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %105 = sub nsw i32 %2, %101, !dbg !2084
  %106 = icmp sgt i32 %105, 3, !dbg !2086
  br i1 %106, label %107, label %118, !dbg !2087

107:                                              ; preds = %100
  %108 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %103, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #23, !dbg !2088
  %109 = icmp eq i32 %108, 0, !dbg !2088
  br i1 %109, label %110, label %120, !dbg !2089

110:                                              ; preds = %107
  %111 = add nsw i32 %101, 2, !dbg !2090
  %112 = sext i32 %111 to i64, !dbg !2091
  %113 = getelementptr inbounds i8*, i8** %5, i64 %112, !dbg !2091
  %114 = load i8*, i8** %113, align 8, !dbg !2091, !tbaa !1129
  %115 = tail call fastcc zeroext i1 @binop(i8* %114), !dbg !2092
  br i1 %115, label %116, label %120, !dbg !2093

116:                                              ; preds = %110
  %117 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !2094
  call void @llvm.dbg.value(metadata i1 %117, metadata !2004, metadata !DIExpression()), !dbg !2009
  br label %143, !dbg !2095

118:                                              ; preds = %100
  %119 = icmp eq i32 %105, 3, !dbg !2096
  br i1 %119, label %120, label %128, !dbg !2098

120:                                              ; preds = %107, %110, %118
  %121 = add nsw i32 %101, 1, !dbg !2099
  %122 = sext i32 %121 to i64, !dbg !2100
  %123 = getelementptr inbounds i8*, i8** %5, i64 %122, !dbg !2100
  %124 = load i8*, i8** %123, align 8, !dbg !2100, !tbaa !1129
  %125 = tail call fastcc zeroext i1 @binop(i8* %124), !dbg !2101
  br i1 %125, label %126, label %128, !dbg !2102

126:                                              ; preds = %120
  %127 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !2103
  call void @llvm.dbg.value(metadata i1 %127, metadata !2004, metadata !DIExpression()), !dbg !2009
  br label %143, !dbg !2104

128:                                              ; preds = %120, %118
  %129 = icmp eq i8 %104, 45, !dbg !2105
  br i1 %129, label %130, label %140, !dbg !2107

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !2108
  %132 = load i8, i8* %131, align 1, !dbg !2108, !tbaa !1280
  %133 = icmp eq i8 %132, 0, !dbg !2108
  br i1 %133, label %140, label %134, !dbg !2109

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !2110
  %136 = load i8, i8* %135, align 1, !dbg !2110, !tbaa !1280
  %137 = icmp eq i8 %136, 0, !dbg !2111
  br i1 %137, label %138, label %140, !dbg !2112

138:                                              ; preds = %134
  %139 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2113
  call void @llvm.dbg.value(metadata i1 %139, metadata !2004, metadata !DIExpression()), !dbg !2009
  br label %143, !dbg !2114

140:                                              ; preds = %130, %134, %128
  %141 = icmp ne i8 %104, 0, !dbg !2115
  call void @llvm.dbg.value(metadata i1 %141, metadata !2004, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !2117
  %142 = add nsw i32 %101, 1, !dbg !2119
  store i32 %142, i32* @pos, align 4, !dbg !2119, !tbaa !1201
  br label %143

143:                                              ; preds = %116, %138, %140, %126, %98
  %144 = phi i1 [ %33, %98 ], [ %102, %116 ], [ %102, %126 ], [ %102, %138 ], [ %102, %140 ]
  %145 = phi i1 [ %72, %98 ], [ %117, %116 ], [ %127, %126 ], [ %139, %138 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i1 %145, metadata !2004, metadata !DIExpression()), !dbg !2009
  %146 = xor i1 %144, %145, !dbg !2120
  ret i1 %146, !dbg !2121
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly %0) unnamed_addr #9 !dbg !2122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2126, metadata !DIExpression()), !dbg !2127
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #23, !dbg !2128
  %3 = icmp eq i32 %2, 0, !dbg !2128
  br i1 %3, label %37, label %4, !dbg !2129

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #23, !dbg !2130
  %6 = icmp eq i32 %5, 0, !dbg !2130
  br i1 %6, label %37, label %7, !dbg !2131

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #23, !dbg !2132
  %9 = icmp eq i32 %8, 0, !dbg !2132
  br i1 %9, label %37, label %10, !dbg !2133

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #23, !dbg !2134
  %12 = icmp eq i32 %11, 0, !dbg !2134
  br i1 %12, label %37, label %13, !dbg !2135

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #23, !dbg !2136
  %15 = icmp eq i32 %14, 0, !dbg !2136
  br i1 %15, label %37, label %16, !dbg !2137

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #23, !dbg !2138
  %18 = icmp eq i32 %17, 0, !dbg !2138
  br i1 %18, label %37, label %19, !dbg !2139

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #23, !dbg !2140
  %21 = icmp eq i32 %20, 0, !dbg !2140
  br i1 %21, label %37, label %22, !dbg !2141

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #23, !dbg !2142
  %24 = icmp eq i32 %23, 0, !dbg !2142
  br i1 %24, label %37, label %25, !dbg !2143

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #23, !dbg !2144
  %27 = icmp eq i32 %26, 0, !dbg !2144
  br i1 %27, label %37, label %28, !dbg !2145

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #23, !dbg !2146
  %30 = icmp eq i32 %29, 0, !dbg !2146
  br i1 %30, label %37, label %31, !dbg !2147

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #23, !dbg !2148
  %33 = icmp eq i32 %32, 0, !dbg !2148
  br i1 %33, label %37, label %34, !dbg !2149

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)) #23, !dbg !2150
  %36 = icmp eq i32 %35, 0, !dbg !2150
  br label %37, !dbg !2149

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !2151
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext %0) unnamed_addr #8 !dbg !2152 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2193, metadata !DIExpression()), !dbg !2202
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !2193, metadata !DIExpression()), !dbg !2204
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2193, metadata !DIExpression()), !dbg !2206
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !2193, metadata !DIExpression()), !dbg !2208
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !2156, metadata !DIExpression()), !dbg !2210
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !2211
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #13, !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !2158, metadata !DIExpression()), !dbg !2212
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !2211
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #13, !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !2159, metadata !DIExpression()), !dbg !2213
  %12 = load i32, i32* @pos, align 4, !dbg !2210, !tbaa !1201
  br i1 %0, label %13, label %15, !dbg !2214

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !2215
  %14 = add nsw i32 %12, 1, !dbg !2218
  store i32 %14, i32* @pos, align 4, !dbg !2218, !tbaa !1201
  br label %15, !dbg !2219

15:                                               ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !2220
  %17 = add nsw i32 %16, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %17, metadata !2157, metadata !DIExpression()), !dbg !2210
  %18 = load i32, i32* @argc, align 4, !dbg !2222, !tbaa !1201
  %19 = add nsw i32 %18, -2, !dbg !2224
  %20 = icmp slt i32 %17, %19, !dbg !2225
  %21 = load i8**, i8*** @argv, align 8, !dbg !2210, !tbaa !1129
  br i1 %20, label %22, label %30, !dbg !2226

22:                                               ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !2227
  %24 = sext i32 %23 to i64, !dbg !2227
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !2227
  %26 = load i8*, i8** %25, align 8, !dbg !2227, !tbaa !1129
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %26, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #23, !dbg !2227
  %28 = icmp eq i32 %27, 0, !dbg !2227
  br i1 %28, label %29, label %30, !dbg !2228

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !2160, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i1 false, metadata !1290, metadata !DIExpression()), !dbg !2229
  store i32 %17, i32* @pos, align 4, !dbg !2232, !tbaa !1201
  br label %30, !dbg !2233

30:                                               ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2160, metadata !DIExpression()), !dbg !2210
  %33 = sext i32 %17 to i64, !dbg !2234
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !2234
  %35 = load i8*, i8** %34, align 8, !dbg !2234, !tbaa !1129
  %36 = load i8, i8* %35, align 1, !dbg !2234, !tbaa !1280
  switch i8 %36, label %272 [
    i8 45, label %37
    i8 61, label %254
  ], !dbg !2235

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2236
  %39 = load i8, i8* %38, align 1, !dbg !2236, !tbaa !1280
  switch i8 %39, label %106 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !2237

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2238
  %42 = load i8, i8* %41, align 1, !dbg !2238, !tbaa !1280
  switch i8 %42, label %106 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !2239

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2240
  %45 = load i8, i8* %44, align 1, !dbg !2240, !tbaa !1280
  %46 = icmp eq i8 %45, 113, !dbg !2241
  br i1 %46, label %51, label %106, !dbg !2242

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2243
  %49 = load i8, i8* %48, align 1, !dbg !2243, !tbaa !1280
  %50 = icmp eq i8 %49, 101, !dbg !2244
  br i1 %50, label %51, label %106, !dbg !2245

51:                                               ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2246
  %53 = load i8, i8* %52, align 1, !dbg !2246, !tbaa !1280
  %54 = icmp eq i8 %53, 0, !dbg !2246
  br i1 %54, label %55, label %106, !dbg !2247

55:                                               ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #13, !dbg !2248
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !2161, metadata !DIExpression()), !dbg !2249
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #13, !dbg !2250
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !2169, metadata !DIExpression()), !dbg !2251
  %58 = sext i32 %16 to i64, !dbg !2252
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !2252
  %60 = load i8*, i8** %59, align 8, !dbg !2252, !tbaa !1129
  br i1 %0, label %61, label %64, !dbg !2253

61:                                               ; preds = %55
  %62 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %60) #23, !dbg !2254
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #13, !dbg !2255
  br label %66, !dbg !2253

64:                                               ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !2256
  br label %66, !dbg !2253

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !2253
  call void @llvm.dbg.value(metadata i8* %67, metadata !2170, metadata !DIExpression()), !dbg !2252
  %68 = load i8**, i8*** @argv, align 8, !dbg !2252, !tbaa !1129
  br i1 %32, label %69, label %76, !dbg !2257

69:                                               ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !2258
  %71 = sext i32 %70 to i64, !dbg !2259
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !2259
  %73 = load i8*, i8** %72, align 8, !dbg !2259, !tbaa !1129
  %74 = call i64 @strlen(i8* nonnull dereferenceable(1) %73) #23, !dbg !2260
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #13, !dbg !2261
  br label %82, !dbg !2257

76:                                               ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !2262
  %78 = sext i32 %77 to i64, !dbg !2263
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !2263
  %80 = load i8*, i8** %79, align 8, !dbg !2263, !tbaa !1129
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !2264
  br label %82, !dbg !2257

82:                                               ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !2257
  call void @llvm.dbg.value(metadata i8* %83, metadata !2171, metadata !DIExpression()), !dbg !2252
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #23, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %84, metadata !2172, metadata !DIExpression()), !dbg !2252
  %85 = load i8**, i8*** @argv, align 8, !dbg !2266, !tbaa !1129
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !2266
  %87 = load i8*, i8** %86, align 8, !dbg !2266, !tbaa !1129
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !2266
  %89 = load i8, i8* %88, align 1, !dbg !2266, !tbaa !1280
  %90 = icmp eq i8 %89, 101, !dbg !2267
  call void @llvm.dbg.value(metadata i1 %90, metadata !2173, metadata !DIExpression()), !dbg !2252
  %91 = load i32, i32* @pos, align 4, !dbg !2268, !tbaa !1201
  %92 = add nsw i32 %91, 3, !dbg !2268
  store i32 %92, i32* @pos, align 4, !dbg !2268, !tbaa !1201
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2269
  %94 = load i8, i8* %93, align 1, !dbg !2269, !tbaa !1280
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !2269

95:                                               ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !2270
  %97 = icmp slt i32 %84, %96, !dbg !2271
  br label %104, !dbg !2269

98:                                               ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !2272
  %100 = icmp sgt i32 %84, %99, !dbg !2273
  br label %104, !dbg !2274

101:                                              ; preds = %82
  %102 = icmp eq i32 %84, 0, !dbg !2275
  %103 = xor i1 %102, %90, !dbg !2276
  br label %104, !dbg !2274

104:                                              ; preds = %98, %101, %95
  %105 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #13, !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #13, !dbg !2277
  br label %287

106:                                              ; preds = %37, %40, %43, %51, %47
  %107 = sext i8 %39 to i32, !dbg !2278
  switch i32 %107, label %248 [
    i32 110, label %108
    i32 101, label %159
    i32 111, label %198
  ], !dbg !2279

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2280
  %110 = load i8, i8* %109, align 1, !dbg !2280, !tbaa !1280
  %111 = icmp eq i8 %110, 116, !dbg !2281
  br i1 %111, label %112, label %248, !dbg !2282

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2283
  %114 = load i8, i8* %113, align 1, !dbg !2283, !tbaa !1280
  %115 = icmp eq i8 %114, 0, !dbg !2283
  br i1 %115, label %116, label %248, !dbg !2284

116:                                              ; preds = %112
  %117 = add nsw i32 %31, 3, !dbg !2285
  store i32 %117, i32* @pos, align 4, !dbg !2285, !tbaa !1201
  %118 = or i1 %32, %0, !dbg !2286
  br i1 %118, label %119, label %121, !dbg !2286

119:                                              ; preds = %116
  %120 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #13, !dbg !2288
  tail call void (i8*, ...) @test_syntax_error(i8* %120, i8* null) #25, !dbg !2289
  unreachable, !dbg !2289

121:                                              ; preds = %116
  %122 = sext i32 %16 to i64, !dbg !2290
  %123 = getelementptr inbounds i8*, i8** %21, i64 %122, !dbg !2290
  %124 = load i8*, i8** %123, align 8, !dbg !2290, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %124, metadata !2199, metadata !DIExpression()) #13, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2200, metadata !DIExpression()) #13, !dbg !2291
  %125 = bitcast %struct.stat* %4 to i8*, !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %125) #13, !dbg !2292
  call void @llvm.dbg.value(metadata i8* %124, metadata !1497, metadata !DIExpression()) #13, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1504, metadata !DIExpression()) #13, !dbg !2293
  %126 = call i32 @__xstat(i32 1, i8* nonnull %124, %struct.stat* nonnull %4) #13, !dbg !2295
  %127 = icmp eq i32 %126, 0, !dbg !2296
  call void @llvm.dbg.value(metadata i1 %127, metadata !2201, metadata !DIExpression()) #13, !dbg !2291
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !2297
  %129 = load i64, i64* %128, align 8, !dbg !2297
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !2297
  %131 = load i64, i64* %130, align 8, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %129, metadata !2174, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %131, metadata !2174, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %125) #13, !dbg !2299
  call void @llvm.dbg.value(metadata i1 %127, metadata !2179, metadata !DIExpression()), !dbg !2298
  %132 = load i8**, i8*** @argv, align 8, !dbg !2300, !tbaa !1129
  %133 = add nsw i32 %16, 2, !dbg !2301
  %134 = sext i32 %133 to i64, !dbg !2300
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134, !dbg !2300
  %136 = load i8*, i8** %135, align 8, !dbg !2300, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %136, metadata !2199, metadata !DIExpression()) #13, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2200, metadata !DIExpression()) #13, !dbg !2302
  %137 = bitcast %struct.stat* %3 to i8*, !dbg !2303
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %137) #13, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %136, metadata !1497, metadata !DIExpression()) #13, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1504, metadata !DIExpression()) #13, !dbg !2304
  %138 = call i32 @__xstat(i32 1, i8* nonnull %136, %struct.stat* nonnull %3) #13, !dbg !2306
  %139 = icmp eq i32 %138, 0, !dbg !2307
  call void @llvm.dbg.value(metadata i1 %139, metadata !2201, metadata !DIExpression()) #13, !dbg !2302
  br i1 %139, label %141, label %140, !dbg !2308

140:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 %143, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %145, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %137) #13, !dbg !2309
  call void @llvm.dbg.value(metadata i1 %139, metadata !2180, metadata !DIExpression()), !dbg !2298
  br label %287, !dbg !2310

141:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1580, metadata !DIExpression()) #13, !dbg !2311
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !2314
  %143 = load i64, i64* %142, align 8, !dbg !2314, !tbaa.struct !1576
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !2314
  %145 = load i64, i64* %144, align 8, !dbg !2314, !tbaa.struct !1576
  call void @llvm.dbg.value(metadata i64 %143, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %145, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %143, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %145, metadata !2178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %137) #13, !dbg !2309
  call void @llvm.dbg.value(metadata i1 %139, metadata !2180, metadata !DIExpression()), !dbg !2298
  %146 = xor i1 %127, true, !dbg !2310
  %147 = icmp slt i64 %129, %143, !dbg !2315
  %148 = or i1 %147, %146, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %129, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %131, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %143, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %145, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !2317
  br i1 %148, label %287, label %149, !dbg !2310

149:                                              ; preds = %141
  %150 = icmp sgt i64 %129, %143, !dbg !2318
  br i1 %150, label %287, label %151, !dbg !2319

151:                                              ; preds = %149
  %152 = icmp sgt i64 %131, -2, !dbg !2320
  call void @llvm.assume(i1 %152) #13, !dbg !2320
  %153 = icmp slt i64 %131, 2000000001, !dbg !2320
  call void @llvm.assume(i1 %153) #13, !dbg !2320
  %154 = icmp sgt i64 %145, -2, !dbg !2321
  call void @llvm.assume(i1 %154) #13, !dbg !2321
  %155 = icmp slt i64 %145, 2000000001, !dbg !2321
  call void @llvm.assume(i1 %155) #13, !dbg !2321
  %156 = sub nsw i64 %131, %145, !dbg !2322
  %157 = trunc i64 %156 to i32, !dbg !2323
  %158 = icmp sgt i32 %157, 0, !dbg !2324
  br label %287, !dbg !2324

159:                                              ; preds = %106
  %160 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2325
  %161 = load i8, i8* %160, align 1, !dbg !2325, !tbaa !1280
  %162 = icmp eq i8 %161, 102, !dbg !2327
  br i1 %162, label %163, label %248, !dbg !2328

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2329
  %165 = load i8, i8* %164, align 1, !dbg !2329, !tbaa !1280
  %166 = icmp eq i8 %165, 0, !dbg !2329
  br i1 %166, label %167, label %248, !dbg !2330

167:                                              ; preds = %163
  %168 = add nsw i32 %31, 3, !dbg !2331
  store i32 %168, i32* @pos, align 4, !dbg !2331, !tbaa !1201
  %169 = or i1 %32, %0, !dbg !2333
  br i1 %169, label %170, label %172, !dbg !2333

170:                                              ; preds = %167
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 5) #13, !dbg !2335
  tail call void (i8*, ...) @test_syntax_error(i8* %171, i8* null) #25, !dbg !2336
  unreachable, !dbg !2336

172:                                              ; preds = %167
  %173 = sext i32 %16 to i64, !dbg !2337
  %174 = getelementptr inbounds i8*, i8** %21, i64 %173, !dbg !2337
  %175 = load i8*, i8** %174, align 8, !dbg !2337, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %175, metadata !1497, metadata !DIExpression()) #13, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1504, metadata !DIExpression()) #13, !dbg !2338
  %176 = call i32 @__xstat(i32 1, i8* nonnull %175, %struct.stat* nonnull %6) #13, !dbg !2340
  %177 = icmp eq i32 %176, 0, !dbg !2341
  br i1 %177, label %178, label %287, !dbg !2342

178:                                              ; preds = %172
  %179 = load i8**, i8*** @argv, align 8, !dbg !2343, !tbaa !1129
  %180 = add nsw i32 %16, 2, !dbg !2344
  %181 = sext i32 %180 to i64, !dbg !2343
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181, !dbg !2343
  %183 = load i8*, i8** %182, align 8, !dbg !2343, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %183, metadata !1497, metadata !DIExpression()) #13, !dbg !2345
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1504, metadata !DIExpression()) #13, !dbg !2345
  %184 = call i32 @__xstat(i32 1, i8* nonnull %183, %struct.stat* nonnull %7) #13, !dbg !2347
  %185 = icmp eq i32 %184, 0, !dbg !2348
  br i1 %185, label %186, label %287, !dbg !2349

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !2350
  %188 = load i64, i64* %187, align 8, !dbg !2350, !tbaa !2351
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !2352
  %190 = load i64, i64* %189, align 8, !dbg !2352, !tbaa !2351
  %191 = icmp eq i64 %188, %190, !dbg !2353
  br i1 %191, label %192, label %287, !dbg !2354

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !2355
  %194 = load i64, i64* %193, align 8, !dbg !2355, !tbaa !2356
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !2357
  %196 = load i64, i64* %195, align 8, !dbg !2357, !tbaa !2356
  %197 = icmp eq i64 %194, %196, !dbg !2358
  br label %287

198:                                              ; preds = %106
  %199 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2359
  %200 = load i8, i8* %199, align 1, !dbg !2359, !tbaa !1280
  %201 = icmp eq i8 %200, 116, !dbg !2360
  br i1 %201, label %202, label %248, !dbg !2361

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2362
  %204 = load i8, i8* %203, align 1, !dbg !2362, !tbaa !1280
  %205 = icmp eq i8 %204, 0, !dbg !2363
  br i1 %205, label %206, label %248, !dbg !2364

206:                                              ; preds = %202
  %207 = add nsw i32 %31, 3, !dbg !2365
  store i32 %207, i32* @pos, align 4, !dbg !2365, !tbaa !1201
  %208 = or i1 %32, %0, !dbg !2366
  br i1 %208, label %209, label %211, !dbg !2366

209:                                              ; preds = %206
  %210 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 5) #13, !dbg !2368
  tail call void (i8*, ...) @test_syntax_error(i8* %210, i8* null) #25, !dbg !2369
  unreachable, !dbg !2369

211:                                              ; preds = %206
  %212 = sext i32 %16 to i64, !dbg !2370
  %213 = getelementptr inbounds i8*, i8** %21, i64 %212, !dbg !2370
  %214 = load i8*, i8** %213, align 8, !dbg !2370, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %214, metadata !2199, metadata !DIExpression()) #13, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2200, metadata !DIExpression()) #13, !dbg !2371
  %215 = bitcast %struct.stat* %2 to i8*, !dbg !2372
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %215) #13, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %214, metadata !1497, metadata !DIExpression()) #13, !dbg !2373
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1504, metadata !DIExpression()) #13, !dbg !2373
  %216 = call i32 @__xstat(i32 1, i8* nonnull %214, %struct.stat* nonnull %2) #13, !dbg !2375
  call void @llvm.dbg.value(metadata i1 undef, metadata !2201, metadata !DIExpression()) #13, !dbg !2371
  %217 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !2376
  %218 = load i64, i64* %217, align 8, !dbg !2376
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !2376
  %220 = load i64, i64* %219, align 8, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %218, metadata !2181, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %220, metadata !2181, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %215) #13, !dbg !2378
  call void @llvm.dbg.value(metadata i1 undef, metadata !2185, metadata !DIExpression()), !dbg !2377
  %221 = load i8**, i8*** @argv, align 8, !dbg !2379, !tbaa !1129
  %222 = add nsw i32 %16, 2, !dbg !2380
  %223 = sext i32 %222 to i64, !dbg !2379
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223, !dbg !2379
  %225 = load i8*, i8** %224, align 8, !dbg !2379, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %225, metadata !2199, metadata !DIExpression()) #13, !dbg !2381
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2200, metadata !DIExpression()) #13, !dbg !2381
  %226 = bitcast %struct.stat* %5 to i8*, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %226) #13, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %225, metadata !1497, metadata !DIExpression()) #13, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1504, metadata !DIExpression()) #13, !dbg !2383
  %227 = call i32 @__xstat(i32 1, i8* nonnull %225, %struct.stat* nonnull %5) #13, !dbg !2385
  %228 = icmp eq i32 %227, 0, !dbg !2386
  call void @llvm.dbg.value(metadata i1 %228, metadata !2201, metadata !DIExpression()) #13, !dbg !2381
  br i1 %228, label %230, label %229, !dbg !2387

229:                                              ; preds = %211
  call void @llvm.dbg.value(metadata i64 %233, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %235, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %226) #13, !dbg !2388
  call void @llvm.dbg.value(metadata i1 %228, metadata !2186, metadata !DIExpression()), !dbg !2377
  br label %287, !dbg !2389

230:                                              ; preds = %211
  %231 = icmp ne i32 %216, 0, !dbg !2390
  call void @llvm.dbg.value(metadata i1 %231, metadata !2201, metadata !DIExpression()) #13, !dbg !2371
  call void @llvm.dbg.value(metadata i1 %231, metadata !2185, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1580, metadata !DIExpression()) #13, !dbg !2391
  %232 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !2393
  %233 = load i64, i64* %232, align 8, !dbg !2393, !tbaa.struct !1576
  %234 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !2393
  %235 = load i64, i64* %234, align 8, !dbg !2393, !tbaa.struct !1576
  call void @llvm.dbg.value(metadata i64 %233, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %235, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %233, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %235, metadata !2184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %226) #13, !dbg !2388
  call void @llvm.dbg.value(metadata i1 %228, metadata !2186, metadata !DIExpression()), !dbg !2377
  %236 = icmp slt i64 %218, %233, !dbg !2394
  %237 = or i1 %231, %236, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %218, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %220, metadata !1586, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %233, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #13, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %235, metadata !1591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #13, !dbg !2396
  br i1 %237, label %287, label %238, !dbg !2389

238:                                              ; preds = %230
  %239 = icmp sgt i64 %218, %233, !dbg !2397
  br i1 %239, label %287, label %240, !dbg !2398

240:                                              ; preds = %238
  %241 = icmp sgt i64 %220, -2, !dbg !2399
  call void @llvm.assume(i1 %241) #13, !dbg !2399
  %242 = icmp slt i64 %220, 2000000001, !dbg !2399
  call void @llvm.assume(i1 %242) #13, !dbg !2399
  %243 = icmp sgt i64 %235, -2, !dbg !2400
  call void @llvm.assume(i1 %243) #13, !dbg !2400
  %244 = icmp slt i64 %235, 2000000001, !dbg !2400
  call void @llvm.assume(i1 %244) #13, !dbg !2400
  %245 = sub nsw i64 %220, %235, !dbg !2401
  %246 = trunc i64 %245 to i32, !dbg !2402
  %247 = icmp slt i32 %246, 0, !dbg !2403
  br label %287, !dbg !2403

248:                                              ; preds = %112, %163, %198, %202, %159, %108, %106
  %249 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #13, !dbg !2404
  %250 = load i8**, i8*** @argv, align 8, !dbg !2405, !tbaa !1129
  %251 = getelementptr inbounds i8*, i8** %250, i64 %33, !dbg !2405
  %252 = load i8*, i8** %251, align 8, !dbg !2405, !tbaa !1129
  %253 = tail call i8* @quote(i8* %252) #13, !dbg !2406
  tail call void (i8*, ...) @test_syntax_error(i8* %249, i8* %253) #25, !dbg !2407
  unreachable, !dbg !2407

254:                                              ; preds = %30
  %255 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2408
  %256 = load i8, i8* %255, align 1, !dbg !2408, !tbaa !1280
  switch i8 %256, label %272 [
    i8 0, label %261
    i8 61, label %257
  ], !dbg !2409

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2410
  %259 = load i8, i8* %258, align 1, !dbg !2410, !tbaa !1280
  %260 = icmp eq i8 %259, 0, !dbg !2410
  br i1 %260, label %261, label %272, !dbg !2411

261:                                              ; preds = %254, %257
  %262 = sext i32 %31 to i64, !dbg !2412
  %263 = getelementptr inbounds i8*, i8** %21, i64 %262, !dbg !2412
  %264 = load i8*, i8** %263, align 8, !dbg !2412, !tbaa !1129
  %265 = add nsw i32 %31, 2, !dbg !2412
  %266 = sext i32 %265 to i64, !dbg !2412
  %267 = getelementptr inbounds i8*, i8** %21, i64 %266, !dbg !2412
  %268 = load i8*, i8** %267, align 8, !dbg !2412, !tbaa !1129
  %269 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %264, i8* nonnull dereferenceable(1) %268) #23, !dbg !2412
  %270 = icmp eq i32 %269, 0, !dbg !2412
  call void @llvm.dbg.value(metadata i1 %270, metadata !2187, metadata !DIExpression()), !dbg !2413
  %271 = add nsw i32 %31, 3, !dbg !2414
  store i32 %271, i32* @pos, align 4, !dbg !2414, !tbaa !1201
  br label %287

272:                                              ; preds = %254, %30, %257
  %273 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %35, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #23, !dbg !2415
  %274 = icmp eq i32 %273, 0, !dbg !2415
  br i1 %274, label %275, label %286, !dbg !2416

275:                                              ; preds = %272
  %276 = sext i32 %31 to i64, !dbg !2417
  %277 = getelementptr inbounds i8*, i8** %21, i64 %276, !dbg !2417
  %278 = load i8*, i8** %277, align 8, !dbg !2417, !tbaa !1129
  %279 = add nsw i32 %31, 2, !dbg !2417
  %280 = sext i32 %279 to i64, !dbg !2417
  %281 = getelementptr inbounds i8*, i8** %21, i64 %280, !dbg !2417
  %282 = load i8*, i8** %281, align 8, !dbg !2417, !tbaa !1129
  %283 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %278, i8* nonnull dereferenceable(1) %282) #23, !dbg !2417
  %284 = icmp ne i32 %283, 0, !dbg !2417
  call void @llvm.dbg.value(metadata i1 %284, metadata !2190, metadata !DIExpression()), !dbg !2418
  %285 = add nsw i32 %31, 3, !dbg !2419
  store i32 %285, i32* @pos, align 4, !dbg !2419, !tbaa !1201
  br label %287

286:                                              ; preds = %272
  tail call void @abort() #24, !dbg !2420
  unreachable, !dbg !2420

287:                                              ; preds = %230, %141, %240, %238, %151, %149, %229, %140, %172, %178, %186, %192, %275, %261, %104
  %288 = phi i1 [ %105, %104 ], [ %284, %275 ], [ %270, %261 ], [ false, %186 ], [ false, %178 ], [ false, %172 ], [ %197, %192 ], [ false, %141 ], [ %127, %140 ], [ true, %230 ], [ false, %229 ], [ %158, %151 ], [ true, %149 ], [ %247, %240 ], [ false, %238 ], !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #13, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #13, !dbg !2421
  ret i1 %288, !dbg !2421
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8* %0) unnamed_addr #8 !dbg !2422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()), !dbg !2427
  %2 = tail call i16** @__ctype_b_loc() #26, !dbg !2428
  %3 = load i16*, i16** %2, align 8, !dbg !2428, !tbaa !1129
  br label %4, !dbg !2431

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  %6 = load i8, i8* %5, align 1, !dbg !2433, !tbaa !1280
  %7 = zext i8 %6 to i64, !dbg !2433
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !2433
  %9 = load i16, i16* %8, align 2, !dbg !2433, !tbaa !2434
  %10 = and i16 %9, 1, !dbg !2433
  %11 = icmp eq i16 %10, 0, !dbg !2436
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %12, metadata !2425, metadata !DIExpression()), !dbg !2427
  br i1 %11, label %13, label %4, !dbg !2436, !llvm.loop !2438

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  %14 = icmp eq i8 %6, 43, !dbg !2440
  %15 = icmp eq i8 %6, 45, !dbg !2442
  %16 = zext i1 %15 to i64, !dbg !2442
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !2442
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !2442
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %19, metadata !2426, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %18, metadata !2425, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2427
  %20 = load i8, i8* %18, align 1, !dbg !2443, !tbaa !1280
  %21 = sext i8 %20 to i32, !dbg !2443
  %22 = add nsw i32 %21, -48, !dbg !2443
  %23 = icmp ult i32 %22, 10, !dbg !2443
  br i1 %23, label %24, label %50, !dbg !2445

24:                                               ; preds = %13, %24
  %25 = phi i8* [ %26, %24 ], [ %18, %13 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %26, metadata !2425, metadata !DIExpression()), !dbg !2427
  %27 = load i8, i8* %26, align 1, !dbg !2447, !tbaa !1280
  %28 = sext i8 %27 to i32, !dbg !2447
  %29 = add nsw i32 %28, -48, !dbg !2447
  %30 = icmp ult i32 %29, 10, !dbg !2447
  br i1 %30, label %24, label %31, !dbg !2449, !llvm.loop !2450

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %26, metadata !2425, metadata !DIExpression()), !dbg !2427
  %32 = zext i8 %27 to i64, !dbg !2452
  %33 = getelementptr inbounds i16, i16* %3, i64 %32, !dbg !2452
  %34 = load i16, i16* %33, align 2, !dbg !2452, !tbaa !2434
  %35 = and i16 %34, 1, !dbg !2452
  %36 = icmp eq i16 %35, 0, !dbg !2453
  br i1 %36, label %46, label %37, !dbg !2453

37:                                               ; preds = %31, %37
  %38 = phi i8* [ %39, %37 ], [ %26, %31 ]
  call void @llvm.dbg.value(metadata i8* %38, metadata !2425, metadata !DIExpression()), !dbg !2427
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %39, metadata !2425, metadata !DIExpression()), !dbg !2427
  %40 = load i8, i8* %39, align 1, !dbg !2452, !tbaa !1280
  %41 = zext i8 %40 to i64, !dbg !2452
  %42 = getelementptr inbounds i16, i16* %3, i64 %41, !dbg !2452
  %43 = load i16, i16* %42, align 2, !dbg !2452, !tbaa !2434
  %44 = and i16 %43, 1, !dbg !2452
  %45 = icmp eq i16 %44, 0, !dbg !2453
  br i1 %45, label %46, label %37, !dbg !2453, !llvm.loop !2455

46:                                               ; preds = %37, %31
  %47 = phi i8 [ %27, %31 ], [ %40, %37 ], !dbg !2452
  %48 = icmp eq i8 %47, 0, !dbg !2456
  br i1 %48, label %49, label %50, !dbg !2458

49:                                               ; preds = %46
  ret i8* %19, !dbg !2459

50:                                               ; preds = %46, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i32 5) #13, !dbg !2460
  %52 = tail call i8* @quote(i8* %0) #13, !dbg !2461
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #25, !dbg !2462
  unreachable, !dbg !2462
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #11

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !143 i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !147 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !150 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !151 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i8* %0, i8** @file_name, align 8, !dbg !2467, !tbaa !1129
  ret void, !dbg !2468
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !2469 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2473, !tbaa !2474
  ret void, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2477 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2482, !tbaa !1129
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !2483
  %3 = icmp eq i32 %2, 0, !dbg !2484
  br i1 %3, label %22, label %4, !dbg !2485

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2486, !tbaa !2474, !range !2487
  %6 = icmp eq i8 %5, 0, !dbg !2486
  br i1 %6, label %11, label %7, !dbg !2488

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !2489
  %9 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !1201
  %10 = icmp eq i32 %9, 32, !dbg !2490
  br i1 %10, label %22, label %11, !dbg !2491

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i32 5) #13, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %12, metadata !2479, metadata !DIExpression()), !dbg !2493
  %13 = load i8*, i8** @file_name, align 8, !dbg !2494, !tbaa !1129
  %14 = icmp eq i8* %13, null, !dbg !2494
  %15 = tail call i32* @__errno_location() #26, !dbg !2496
  %16 = load i32, i32* %15, align 4, !dbg !2496, !tbaa !1201
  br i1 %14, label %19, label %17, !dbg !2497

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !2498
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %18, i8* %12) #13, !dbg !2499
  br label %20, !dbg !2499

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.78, i64 0, i64 0), i8* %12) #13, !dbg !2500
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2501, !tbaa !1201
  tail call void @_exit(i32 %21) #24, !dbg !2502
  unreachable, !dbg !2502

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2503, !tbaa !1129
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #13, !dbg !2505
  %25 = icmp eq i32 %24, 0, !dbg !2506
  br i1 %25, label %28, label %26, !dbg !2507

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2508, !tbaa !1201
  tail call void @_exit(i32 %27) #24, !dbg !2509
  unreachable, !dbg !2509

28:                                               ; preds = %22
  ret void, !dbg !2510
}

declare !dbg !219 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #14 !dbg !2511 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %1, metadata !2517, metadata !DIExpression()), !dbg !2519
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %3, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i8 0, i8* %3, align 1, !dbg !2521, !tbaa !1280
  br label %4, !dbg !2522

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2519
  call void @llvm.dbg.value(metadata i8* %6, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %5, metadata !2516, metadata !DIExpression()), !dbg !2519
  %7 = urem i64 %5, 10, !dbg !2523
  %8 = trunc i64 %7 to i8, !dbg !2526
  %9 = or i8 %8, 48, !dbg !2526
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %10, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i8 %9, i8* %10, align 1, !dbg !2528, !tbaa !1280
  %11 = udiv i64 %5, 10, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %11, metadata !2516, metadata !DIExpression()), !dbg !2519
  %12 = icmp ugt i64 %5, 9, !dbg !2530
  br i1 %12, label %4, label %13, !dbg !2531, !llvm.loop !2532

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2518, metadata !DIExpression()), !dbg !2519
  ret i8* %10, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  %2 = icmp eq i8* %0, null, !dbg !2542
  br i1 %2, label %3, label %6, !dbg !2544

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2545, !tbaa !1129
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.87, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2547
  tail call void @abort() #24, !dbg !2548
  unreachable, !dbg !2548

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %7, metadata !2539, metadata !DIExpression()), !dbg !2541
  %8 = icmp eq i8* %7, null, !dbg !2550
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2551
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %10, metadata !2540, metadata !DIExpression()), !dbg !2541
  %11 = ptrtoint i8* %10 to i64, !dbg !2552
  %12 = ptrtoint i8* %0 to i64, !dbg !2552
  %13 = sub i64 %11, %12, !dbg !2552
  %14 = icmp sgt i64 %13, 6, !dbg !2554
  br i1 %14, label %15, label %24, !dbg !2555

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2556
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.88, i64 0, i64 0), i64 7) #23, !dbg !2557
  %18 = icmp eq i32 %17, 0, !dbg !2558
  br i1 %18, label %19, label %24, !dbg !2559

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2538, metadata !DIExpression()), !dbg !2541
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i64 3) #23, !dbg !2560
  %21 = icmp eq i32 %20, 0, !dbg !2563
  br i1 %21, label %22, label %24, !dbg !2564

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %23, metadata !2538, metadata !DIExpression()), !dbg !2541
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2567, !tbaa !1129
  br label %24, !dbg !2568

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2538, metadata !DIExpression()), !dbg !2541
  store i8* %25, i8** @program_name, align 8, !dbg !2569, !tbaa !1129
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2570, !tbaa !1129
  ret void, !dbg !2571
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2572 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2577, metadata !DIExpression()), !dbg !2580
  %2 = tail call i32* @__errno_location() #26, !dbg !2581
  %3 = load i32, i32* %2, align 4, !dbg !2581, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %3, metadata !2578, metadata !DIExpression()), !dbg !2580
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2582
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2582
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2582
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !2583
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i32 %3, i32* %2, align 4, !dbg !2584, !tbaa !1201
  ret %struct.quoting_options* %8, !dbg !2585
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2586 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2590, metadata !DIExpression()), !dbg !2591
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2592
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2592
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2593
  %5 = load i32, i32* %4, align 8, !dbg !2593, !tbaa !2594
  ret i32 %5, !dbg !2596
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2597 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression()), !dbg !2603
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2604
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2604
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2605
  store i32 %1, i32* %5, align 8, !dbg !2606, !tbaa !2594
  ret void, !dbg !2607
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2608 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2612, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %1, metadata !2613, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %2, metadata !2614, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %1, metadata !2615, metadata !DIExpression()), !dbg !2621
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2622
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2622
  %6 = lshr i8 %1, 5, !dbg !2623
  %7 = zext i8 %6 to i64, !dbg !2623
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2624
  call void @llvm.dbg.value(metadata i32* %8, metadata !2617, metadata !DIExpression()), !dbg !2621
  %9 = and i8 %1, 31, !dbg !2625
  %10 = zext i8 %9 to i32, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %10, metadata !2619, metadata !DIExpression()), !dbg !2621
  %11 = load i32, i32* %8, align 4, !dbg !2626, !tbaa !1201
  %12 = lshr i32 %11, %10, !dbg !2627
  %13 = and i32 %12, 1, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %13, metadata !2620, metadata !DIExpression()), !dbg !2621
  %14 = and i32 %2, 1, !dbg !2629
  %15 = xor i32 %13, %14, !dbg !2630
  %16 = shl i32 %15, %10, !dbg !2631
  %17 = xor i32 %16, %11, !dbg !2632
  store i32 %17, i32* %8, align 4, !dbg !2632, !tbaa !1201
  ret i32 %13, !dbg !2633
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2634 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1, metadata !2639, metadata !DIExpression()), !dbg !2641
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2642
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()), !dbg !2641
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2645
  %6 = load i32, i32* %5, align 4, !dbg !2645, !tbaa !2646
  call void @llvm.dbg.value(metadata i32 %6, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i32 %1, i32* %5, align 4, !dbg !2647, !tbaa !2646
  ret i32 %6, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2649 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2653, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()), !dbg !2656
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2657
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2653, metadata !DIExpression()), !dbg !2656
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %6, align 8, !dbg !2661, !tbaa !2594
  %7 = icmp ne i8* %1, null, !dbg !2662
  %8 = icmp ne i8* %2, null, !dbg !2664
  %9 = and i1 %7, %8, !dbg !2665
  br i1 %9, label %11, label %10, !dbg !2665

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2666
  unreachable, !dbg !2666

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2667
  store i8* %1, i8** %12, align 8, !dbg !2668, !tbaa !2669
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2670
  store i8* %2, i8** %13, align 8, !dbg !2671, !tbaa !2672
  ret void, !dbg !2673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %3, metadata !2681, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2682, metadata !DIExpression()), !dbg !2686
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2687
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2683, metadata !DIExpression()), !dbg !2686
  %8 = tail call i32* @__errno_location() #26, !dbg !2688
  %9 = load i32, i32* %8, align 4, !dbg !2688, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %9, metadata !2684, metadata !DIExpression()), !dbg !2686
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2689
  %11 = load i32, i32* %10, align 8, !dbg !2689, !tbaa !2594
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2690
  %13 = load i32, i32* %12, align 4, !dbg !2690, !tbaa !2646
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2691
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2692
  %16 = load i8*, i8** %15, align 8, !dbg !2692, !tbaa !2669
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2693
  %18 = load i8*, i8** %17, align 8, !dbg !2693, !tbaa !2672
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %19, metadata !2685, metadata !DIExpression()), !dbg !2686
  store i32 %9, i32* %8, align 4, !dbg !2695, !tbaa !1201
  ret i64 %19, !dbg !2696
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2697 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2703, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %2, metadata !2705, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %3, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %4, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %5, metadata !2708, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32* %6, metadata !2709, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %7, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %8, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* null, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2761
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !2762
  %14 = icmp eq i64 %13, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i1 %14, metadata !2718, metadata !DIExpression()), !dbg !2761
  %15 = lshr i32 %5, 1, !dbg !2764
  %16 = trunc i32 %15 to i8, !dbg !2764
  %17 = and i8 %16, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %17, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2722, metadata !DIExpression()), !dbg !2761
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2765
  %19 = and i32 %5, 4, !dbg !2767
  %20 = icmp eq i32 %19, 0, !dbg !2767
  %21 = and i32 %5, 1, !dbg !2770
  %22 = icmp eq i32 %21, 0, !dbg !2770
  %23 = bitcast i64* %10 to i8*, !dbg !2773
  %24 = bitcast i32* %12 to i8*, !dbg !2774
  %25 = icmp eq i32* %6, null, !dbg !2775
  br label %26, !dbg !2777

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2778
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2779
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2780
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2781
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2761
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2782
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2783
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2784
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %38, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %37, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %36, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %35, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %34, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %33, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %32, metadata !2716, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %31, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %30, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %29, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %28, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %27, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2755), !dbg !2785
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
  ], !dbg !2786

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %35, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 5, metadata !2707, metadata !DIExpression()), !dbg !2761
  br label %92, !dbg !2787

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 5, metadata !2707, metadata !DIExpression()), !dbg !2761
  %42 = and i8 %35, 1, !dbg !2789
  %43 = icmp eq i8 %42, 0, !dbg !2789
  br i1 %43, label %44, label %92, !dbg !2787

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2791
  br i1 %45, label %92, label %46, !dbg !2794

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2791, !tbaa !1280
  br label %92, !dbg !2791

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.100, i64 0, i64 0), i32 %27), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %48, metadata !2710, metadata !DIExpression()), !dbg !2761
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i32 %27), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %49, metadata !2711, metadata !DIExpression()), !dbg !2761
  br label %50, !dbg !2800

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %51, metadata !2710, metadata !DIExpression()), !dbg !2761
  %53 = and i8 %35, 1, !dbg !2801
  %54 = icmp eq i8 %53, 0, !dbg !2801
  br i1 %54, label %55, label %70, !dbg !2803

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2713, metadata !DIExpression()), !dbg !2761
  %56 = load i8, i8* %51, align 1, !dbg !2804, !tbaa !1280
  %57 = icmp eq i8 %56, 0, !dbg !2807
  br i1 %57, label %70, label %58, !dbg !2807

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %61, metadata !2713, metadata !DIExpression()), !dbg !2761
  %62 = icmp ult i64 %61, %39, !dbg !2808
  br i1 %62, label %63, label %65, !dbg !2811

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2808
  store i8 %59, i8* %64, align 1, !dbg !2808, !tbaa !1280
  br label %65, !dbg !2808

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %66, metadata !2713, metadata !DIExpression()), !dbg !2761
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %67, metadata !2715, metadata !DIExpression()), !dbg !2761
  %68 = load i8, i8* %67, align 1, !dbg !2804, !tbaa !1280
  %69 = icmp eq i8 %68, 0, !dbg !2807
  br i1 %69, label %70, label %58, !dbg !2807, !llvm.loop !2813

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2815
  call void @llvm.dbg.value(metadata i64 %71, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %52, metadata !2715, metadata !DIExpression()), !dbg !2761
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %72, metadata !2716, metadata !DIExpression()), !dbg !2761
  br label %92, !dbg !2817

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2761
  br label %74, !dbg !2818

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %75, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2719, metadata !DIExpression()), !dbg !2761
  br label %76, !dbg !2819

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2781
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %78, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %77, metadata !2717, metadata !DIExpression()), !dbg !2761
  %79 = and i8 %78, 1, !dbg !2820
  %80 = icmp eq i8 %79, 0, !dbg !2820
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2822
  br label %82, !dbg !2822

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2761
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2764
  call void @llvm.dbg.value(metadata i8 %84, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %83, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  %85 = and i8 %84, 1, !dbg !2823
  %86 = icmp eq i8 %85, 0, !dbg !2823
  br i1 %86, label %87, label %92, !dbg !2825

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2826
  br i1 %88, label %92, label %89, !dbg !2829

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2826, !tbaa !1280
  br label %92, !dbg !2826

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2719, metadata !DIExpression()), !dbg !2761
  br label %92, !dbg !2830

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2831
  unreachable, !dbg !2831

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2815
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %40 ], !dbg !2761
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2761
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2761
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %100, metadata !2719, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %98, metadata !2716, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %96, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %93, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 0, metadata !2712, metadata !DIExpression()), !dbg !2761
  %101 = and i8 %99, 1, !dbg !2832
  %102 = icmp ne i8 %101, 0, !dbg !2832
  %103 = icmp ne i32 %93, 2, !dbg !2832
  %104 = and i1 %103, %102, !dbg !2832
  %105 = icmp ne i64 %98, 0, !dbg !2832
  %106 = and i1 %105, %104, !dbg !2832
  %107 = icmp ugt i64 %98, 1, !dbg !2832
  %108 = and i8 %100, 1, !dbg !2834
  %109 = icmp eq i8 %108, 0, !dbg !2834
  %110 = icmp eq i32 %93, 2, !dbg !2837
  %111 = or i1 %103, %109, !dbg !2839
  %112 = icmp ne i8 %108, 0, !dbg !2841
  %113 = and i1 %110, %112, !dbg !2841
  %114 = xor i1 %102, true, !dbg !2842
  %115 = xor i1 %104, true, !dbg !2775
  %116 = and i1 %109, %115, !dbg !2775
  %117 = or i1 %25, %116, !dbg !2775
  %118 = and i8 %99, %100, !dbg !2843
  %119 = and i8 %118, 1, !dbg !2843
  %120 = icmp ne i8 %119, 0, !dbg !2843
  %121 = and i1 %120, %105, !dbg !2843
  br label %122, !dbg !2845

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2846
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2815
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2778
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2782
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2783
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2784
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %126, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %123, metadata !2712, metadata !DIExpression()), !dbg !2761
  %131 = icmp eq i64 %126, -1, !dbg !2847
  br i1 %131, label %132, label %136, !dbg !2848

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2849
  %134 = load i8, i8* %133, align 1, !dbg !2849, !tbaa !1280
  %135 = icmp eq i8 %134, 0, !dbg !2850
  br i1 %135, label %581, label %138, !dbg !2851

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2852
  br i1 %137, label %581, label %138, !dbg !2851

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2853
  br i1 %106, label %139, label %154, !dbg !2854

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2855
  %141 = and i1 %107, %131, !dbg !2856
  br i1 %141, label %142, label %144, !dbg !2856

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %143, metadata !2706, metadata !DIExpression()), !dbg !2761
  br label %144, !dbg !2858

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2706, metadata !DIExpression()), !dbg !2761
  %146 = icmp ugt i64 %140, %145, !dbg !2859
  br i1 %146, label %154, label %147, !dbg !2860

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2861
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2862
  %150 = icmp ne i32 %149, 0, !dbg !2863
  %151 = or i1 %150, %109, !dbg !2864
  %152 = xor i1 %150, true, !dbg !2864
  %153 = zext i1 %152 to i8, !dbg !2864
  br i1 %151, label %154, label %639, !dbg !2864

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2853
  call void @llvm.dbg.value(metadata i8 %156, metadata !2728, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %155, metadata !2706, metadata !DIExpression()), !dbg !2761
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2865
  %158 = load i8, i8* %157, align 1, !dbg !2865, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %158, metadata !2723, metadata !DIExpression()), !dbg !2853
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
  ], !dbg !2866

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2867

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2868

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2729, metadata !DIExpression()), !dbg !2853
  %162 = and i8 %127, 1, !dbg !2871
  %163 = icmp eq i8 %162, 0, !dbg !2871
  %164 = and i1 %110, %163, !dbg !2871
  br i1 %164, label %165, label %181, !dbg !2871

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2873
  br i1 %166, label %167, label %169, !dbg !2877

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2873
  store i8 39, i8* %168, align 1, !dbg !2873, !tbaa !1280
  br label %169, !dbg !2873

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %170, metadata !2713, metadata !DIExpression()), !dbg !2761
  %171 = icmp ult i64 %170, %130, !dbg !2878
  br i1 %171, label %172, label %174, !dbg !2881

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2878
  store i8 36, i8* %173, align 1, !dbg !2878, !tbaa !1280
  br label %174, !dbg !2878

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %175, metadata !2713, metadata !DIExpression()), !dbg !2761
  %176 = icmp ult i64 %175, %130, !dbg !2882
  br i1 %176, label %177, label %179, !dbg !2885

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2882
  store i8 39, i8* %178, align 1, !dbg !2882, !tbaa !1280
  br label %179, !dbg !2882

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %180, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %181, !dbg !2886

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2761
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %183, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %182, metadata !2713, metadata !DIExpression()), !dbg !2761
  %184 = icmp ult i64 %182, %130, !dbg !2887
  br i1 %184, label %185, label %187, !dbg !2890

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2887
  store i8 92, i8* %186, align 1, !dbg !2887, !tbaa !1280
  br label %187, !dbg !2887

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %188, metadata !2713, metadata !DIExpression()), !dbg !2761
  br i1 %103, label %189, label %463, !dbg !2891

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2893
  %191 = icmp ult i64 %190, %155, !dbg !2894
  br i1 %191, label %192, label %463, !dbg !2895

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2896
  %194 = load i8, i8* %193, align 1, !dbg !2896, !tbaa !1280
  %195 = add i8 %194, -48, !dbg !2897
  %196 = icmp ult i8 %195, 10, !dbg !2897
  br i1 %196, label %197, label %463, !dbg !2897

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2898
  br i1 %198, label %199, label %201, !dbg !2902

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2898
  store i8 48, i8* %200, align 1, !dbg !2898, !tbaa !1280
  br label %201, !dbg !2898

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %202, metadata !2713, metadata !DIExpression()), !dbg !2761
  %203 = icmp ult i64 %202, %130, !dbg !2903
  br i1 %203, label %204, label %206, !dbg !2906

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2903
  store i8 48, i8* %205, align 1, !dbg !2903, !tbaa !1280
  br label %206, !dbg !2903

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %207, metadata !2713, metadata !DIExpression()), !dbg !2761
  br label %463, !dbg !2907

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2908

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2909

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2910

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2911

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2912
  %214 = icmp ult i64 %213, %155, !dbg !2913
  br i1 %214, label %215, label %463, !dbg !2914

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2915
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2916
  %218 = load i8, i8* %217, align 1, !dbg !2916, !tbaa !1280
  %219 = icmp eq i8 %218, 63, !dbg !2917
  br i1 %219, label %220, label %463, !dbg !2918

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2919
  %222 = load i8, i8* %221, align 1, !dbg !2919, !tbaa !1280
  %223 = sext i8 %222 to i32, !dbg !2919
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
  ], !dbg !2920

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2921

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %213, metadata !2712, metadata !DIExpression()), !dbg !2761
  %226 = icmp ult i64 %124, %130, !dbg !2923
  br i1 %226, label %227, label %229, !dbg !2926

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2923
  store i8 63, i8* %228, align 1, !dbg !2923, !tbaa !1280
  br label %229, !dbg !2923

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %230, metadata !2713, metadata !DIExpression()), !dbg !2761
  %231 = icmp ult i64 %230, %130, !dbg !2927
  br i1 %231, label %232, label %234, !dbg !2930

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2927
  store i8 34, i8* %233, align 1, !dbg !2927, !tbaa !1280
  br label %234, !dbg !2927

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %235, metadata !2713, metadata !DIExpression()), !dbg !2761
  %236 = icmp ult i64 %235, %130, !dbg !2931
  br i1 %236, label %237, label %239, !dbg !2934

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2931
  store i8 34, i8* %238, align 1, !dbg !2931, !tbaa !1280
  br label %239, !dbg !2931

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %240, metadata !2713, metadata !DIExpression()), !dbg !2761
  %241 = icmp ult i64 %240, %130, !dbg !2935
  br i1 %241, label %242, label %244, !dbg !2938

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2935
  store i8 63, i8* %243, align 1, !dbg !2935, !tbaa !1280
  br label %244, !dbg !2935

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %245, metadata !2713, metadata !DIExpression()), !dbg !2761
  br label %463, !dbg !2939

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2727, metadata !DIExpression()), !dbg !2853
  br label %256, !dbg !2940

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2727, metadata !DIExpression()), !dbg !2853
  br label %256, !dbg !2941

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2727, metadata !DIExpression()), !dbg !2853
  br label %254, !dbg !2942

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2727, metadata !DIExpression()), !dbg !2853
  br label %254, !dbg !2943

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2727, metadata !DIExpression()), !dbg !2853
  br label %256, !dbg !2944

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2727, metadata !DIExpression()), !dbg !2853
  br i1 %110, label %252, label %253, !dbg !2945

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2946

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2949

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2950
  call void @llvm.dbg.value(metadata i8 %255, metadata !2727, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.label(metadata !2756), !dbg !2951
  br i1 %111, label %256, label %625, !dbg !2952

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2950
  call void @llvm.dbg.value(metadata i8 %257, metadata !2727, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.label(metadata !2757), !dbg !2954
  br i1 %102, label %488, label %463, !dbg !2955

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2956

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2957, !tbaa !1280
  %261 = icmp eq i8 %260, 0, !dbg !2958
  br i1 %261, label %262, label %463, !dbg !2959

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2960
  br i1 %263, label %264, label %463, !dbg !2962

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2730, metadata !DIExpression()), !dbg !2853
  br label %265, !dbg !2963

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2853
  call void @llvm.dbg.value(metadata i8 %266, metadata !2730, metadata !DIExpression()), !dbg !2853
  br i1 %111, label %463, label %625, !dbg !2964

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2730, metadata !DIExpression()), !dbg !2853
  br i1 %110, label %268, label %463, !dbg !2965

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2966

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2968
  %271 = icmp ne i64 %125, 0, !dbg !2970
  %272 = or i1 %271, %270, !dbg !2971
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2971
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %274, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %273, metadata !2714, metadata !DIExpression()), !dbg !2761
  %275 = icmp ult i64 %124, %274, !dbg !2972
  br i1 %275, label %276, label %278, !dbg !2975

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2972
  store i8 39, i8* %277, align 1, !dbg !2972, !tbaa !1280
  br label %278, !dbg !2972

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %279, metadata !2713, metadata !DIExpression()), !dbg !2761
  %280 = icmp ult i64 %279, %274, !dbg !2976
  br i1 %280, label %281, label %283, !dbg !2979

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2976
  store i8 92, i8* %282, align 1, !dbg !2976, !tbaa !1280
  br label %283, !dbg !2976

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %284, metadata !2713, metadata !DIExpression()), !dbg !2761
  %285 = icmp ult i64 %284, %274, !dbg !2980
  br i1 %285, label %286, label %288, !dbg !2983

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2980
  store i8 39, i8* %287, align 1, !dbg !2980, !tbaa !1280
  br label %288, !dbg !2980

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %289, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %463, !dbg !2984

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2985

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2731, metadata !DIExpression()), !dbg !2986
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2987
  %293 = load i16*, i16** %292, align 8, !dbg !2987, !tbaa !1129
  %294 = zext i8 %158 to i64, !dbg !2987
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2987
  %296 = load i16, i16* %295, align 2, !dbg !2987, !tbaa !2434
  %297 = lshr i16 %296, 14, !dbg !2989
  %298 = trunc i16 %297 to i8, !dbg !2989
  %299 = and i8 %298, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %299, metadata !2734, metadata !DIExpression()), !dbg !2986
  br label %355, !dbg !2990

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #13, !dbg !2991
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2735, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %23, metadata !2993, metadata !DIExpression()) #13, !dbg !3001
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #13, !dbg !3001
  call void @llvm.dbg.value(metadata i64 8, metadata !3000, metadata !DIExpression()) #13, !dbg !3001
  store i64 0, i64* %10, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2986
  %301 = icmp eq i64 %155, -1, !dbg !3004
  br i1 %301, label %302, label %304, !dbg !3006

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %303, metadata !2706, metadata !DIExpression()), !dbg !2761
  br label %304, !dbg !3008

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2853
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  br label %306, !dbg !3009

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3010
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3011
  call void @llvm.dbg.value(metadata i8 %308, metadata !2734, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3012
  %309 = add i64 %307, %123, !dbg !3013
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3014
  %311 = sub i64 %305, %309, !dbg !3015
  call void @llvm.dbg.value(metadata i32* %12, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2774
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #13, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %312, metadata !2744, metadata !DIExpression()), !dbg !2774
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3017

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  %314 = icmp ugt i64 %305, %309, !dbg !3018
  br i1 %314, label %315, label %340, !dbg !3020

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3021
  br label %317, !dbg !3021

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2731, metadata !DIExpression()), !dbg !2986
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3022
  %321 = load i8, i8* %320, align 1, !dbg !3022, !tbaa !1280
  %322 = icmp eq i8 %321, 0, !dbg !3020
  br i1 %322, label %340, label %323, !dbg !3021

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %324, metadata !2731, metadata !DIExpression()), !dbg !2986
  %325 = add i64 %324, %123, !dbg !3024
  %326 = icmp ult i64 %325, %305, !dbg !3018
  br i1 %326, label %317, label %340, !dbg !3020, !llvm.loop !3025

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3026
  %329 = and i1 %113, %328, !dbg !3029
  call void @llvm.dbg.value(metadata i64 1, metadata !2745, metadata !DIExpression()), !dbg !3030
  br i1 %329, label %330, label %343, !dbg !3029

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2745, metadata !DIExpression()), !dbg !3030
  %332 = add i64 %331, %309, !dbg !3031
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3032
  %334 = load i8, i8* %333, align 1, !dbg !3032, !tbaa !1280
  %335 = sext i8 %334 to i32, !dbg !3032
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3033

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %337, metadata !2745, metadata !DIExpression()), !dbg !3030
  %338 = icmp eq i64 %337, %312, !dbg !3026
  br i1 %338, label %343, label %330, !dbg !3035, !llvm.loop !3036

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %308, metadata !2734, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %307, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %308, metadata !2734, metadata !DIExpression()), !dbg !2986
  br label %340, !dbg !3038

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3038
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3039, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %344, metadata !2741, metadata !DIExpression()), !dbg !2774
  %345 = call i32 @iswprint(i32 %344) #13, !dbg !3041
  %346 = icmp eq i32 %345, 0, !dbg !3041
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3042
  call void @llvm.dbg.value(metadata i8 %347, metadata !2734, metadata !DIExpression()), !dbg !2986
  %348 = add i64 %312, %307, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %348, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %347, metadata !2734, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %348, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3038
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !3044
  %350 = icmp eq i32 %349, 0, !dbg !3045
  br i1 %350, label %306, label %351, !dbg !3046, !llvm.loop !3047

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !3049
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 2, metadata !2707, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %99, metadata !2717, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %305, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !3049
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2853
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3050
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3050
  call void @llvm.dbg.value(metadata i8 %358, metadata !2734, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %357, metadata !2731, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %356, metadata !2706, metadata !DIExpression()), !dbg !2761
  %359 = and i8 %358, 1, !dbg !3051
  %360 = icmp ne i8 %359, 0, !dbg !3051
  call void @llvm.dbg.value(metadata i8 %359, metadata !2730, metadata !DIExpression()), !dbg !2853
  %361 = icmp ult i64 %357, 2, !dbg !3052
  %362 = or i1 %360, %114, !dbg !3053
  %363 = and i1 %361, %362, !dbg !3054
  br i1 %363, label %463, label %364, !dbg !3054

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %365, metadata !2752, metadata !DIExpression()), !dbg !3056
  br label %366, !dbg !3057

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2846
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2761
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2782
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2853
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2853
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3058
  call void @llvm.dbg.value(metadata i8 %372, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %371, metadata !2728, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %370, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %369, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %368, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %367, metadata !2712, metadata !DIExpression()), !dbg !2761
  br i1 %362, label %419, label %373, !dbg !3059

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3064

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2729, metadata !DIExpression()), !dbg !2853
  %375 = and i8 %369, 1, !dbg !3067
  %376 = icmp eq i8 %375, 0, !dbg !3067
  %377 = and i1 %110, %376, !dbg !3067
  br i1 %377, label %378, label %394, !dbg !3067

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3069
  br i1 %379, label %380, label %382, !dbg !3073

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3069
  store i8 39, i8* %381, align 1, !dbg !3069, !tbaa !1280
  br label %382, !dbg !3069

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %383, metadata !2713, metadata !DIExpression()), !dbg !2761
  %384 = icmp ult i64 %383, %130, !dbg !3074
  br i1 %384, label %385, label %387, !dbg !3077

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3074
  store i8 36, i8* %386, align 1, !dbg !3074, !tbaa !1280
  br label %387, !dbg !3074

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %388, metadata !2713, metadata !DIExpression()), !dbg !2761
  %389 = icmp ult i64 %388, %130, !dbg !3078
  br i1 %389, label %390, label %392, !dbg !3081

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3078
  store i8 39, i8* %391, align 1, !dbg !3078, !tbaa !1280
  br label %392, !dbg !3078

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %393, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %394, !dbg !3082

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2761
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %396, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %395, metadata !2713, metadata !DIExpression()), !dbg !2761
  %397 = icmp ult i64 %395, %130, !dbg !3083
  br i1 %397, label %398, label %400, !dbg !3086

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3083
  store i8 92, i8* %399, align 1, !dbg !3083, !tbaa !1280
  br label %400, !dbg !3083

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %401, metadata !2713, metadata !DIExpression()), !dbg !2761
  %402 = icmp ult i64 %401, %130, !dbg !3087
  br i1 %402, label %403, label %407, !dbg !3090

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3087
  %405 = or i8 %404, 48, !dbg !3087
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3087
  store i8 %405, i8* %406, align 1, !dbg !3087, !tbaa !1280
  br label %407, !dbg !3087

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %408, metadata !2713, metadata !DIExpression()), !dbg !2761
  %409 = icmp ult i64 %408, %130, !dbg !3091
  br i1 %409, label %410, label %415, !dbg !3094

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3091
  %412 = and i8 %411, 7, !dbg !3091
  %413 = or i8 %412, 48, !dbg !3091
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3091
  store i8 %413, i8* %414, align 1, !dbg !3091, !tbaa !1280
  br label %415, !dbg !3091

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %416, metadata !2713, metadata !DIExpression()), !dbg !2761
  %417 = and i8 %370, 7, !dbg !3095
  %418 = or i8 %417, 48, !dbg !3096
  call void @llvm.dbg.value(metadata i8 %418, metadata !2723, metadata !DIExpression()), !dbg !2853
  br label %428, !dbg !3097

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3098
  %421 = icmp eq i8 %420, 0, !dbg !3098
  br i1 %421, label %428, label %422, !dbg !3100

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3101
  br i1 %423, label %424, label %426, !dbg !3105

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3101
  store i8 92, i8* %425, align 1, !dbg !3101, !tbaa !1280
  br label %426, !dbg !3101

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %427, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2853
  br label %428, !dbg !3106

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2761
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2782
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2853
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2853
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2853
  call void @llvm.dbg.value(metadata i8 %433, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %432, metadata !2728, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %431, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %430, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %429, metadata !2713, metadata !DIExpression()), !dbg !2761
  %434 = add i64 %367, 1, !dbg !3107
  %435 = icmp ugt i64 %365, %434, !dbg !3109
  br i1 %435, label %436, label %526, !dbg !3110

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3111
  %438 = icmp ne i8 %437, 0, !dbg !3111
  %439 = and i8 %433, 1, !dbg !3111
  %440 = icmp eq i8 %439, 0, !dbg !3111
  %441 = and i1 %438, %440, !dbg !3111
  br i1 %441, label %442, label %453, !dbg !3111

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3114
  br i1 %443, label %444, label %446, !dbg !3118

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3114
  store i8 39, i8* %445, align 1, !dbg !3114, !tbaa !1280
  br label %446, !dbg !3114

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %447, metadata !2713, metadata !DIExpression()), !dbg !2761
  %448 = icmp ult i64 %447, %130, !dbg !3119
  br i1 %448, label %449, label %451, !dbg !3122

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3119
  store i8 39, i8* %450, align 1, !dbg !3119, !tbaa !1280
  br label %451, !dbg !3119

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %452, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %453, !dbg !3123

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3124
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %455, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %454, metadata !2713, metadata !DIExpression()), !dbg !2761
  %456 = icmp ult i64 %454, %130, !dbg !3125
  br i1 %456, label %457, label %459, !dbg !3128

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3125
  store i8 %431, i8* %458, align 1, !dbg !3125, !tbaa !1280
  br label %459, !dbg !3125

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %460, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %434, metadata !2712, metadata !DIExpression()), !dbg !2761
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3129
  %462 = load i8, i8* %461, align 1, !dbg !3129, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %462, metadata !2723, metadata !DIExpression()), !dbg !2853
  br label %366, !dbg !3130, !llvm.loop !3131

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2846
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2761
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2778
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3134
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2761
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2761
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2853
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2853
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2853
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %472, metadata !2730, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %471, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %156, metadata !2728, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %470, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %469, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %468, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %467, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %466, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %465, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %464, metadata !2712, metadata !DIExpression()), !dbg !2761
  br i1 %117, label %486, label %474, !dbg !3135

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3136
  %476 = zext i8 %475 to i64, !dbg !3136
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3137
  %478 = load i32, i32* %477, align 4, !dbg !3137, !tbaa !1201
  %479 = and i8 %470, 31, !dbg !3138
  %480 = zext i8 %479 to i32, !dbg !3138
  %481 = shl nuw i32 1, %480, !dbg !3139
  %482 = and i32 %478, %481, !dbg !3139
  %483 = icmp eq i32 %482, 0, !dbg !3139
  %484 = icmp eq i8 %156, 0, !dbg !3140
  %485 = and i1 %484, %483, !dbg !3141
  br i1 %485, label %526, label %488, !dbg !3141

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3140
  br i1 %487, label %526, label %488, !dbg !3142

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3143
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2761
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2778
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3134
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2782
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2783
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2853
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2853
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %496, metadata !2730, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %495, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %494, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %493, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %492, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %491, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %490, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %489, metadata !2712, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2758), !dbg !3144
  br i1 %109, label %498, label %629, !dbg !3145

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2729, metadata !DIExpression()), !dbg !2853
  %499 = and i8 %493, 1, !dbg !3147
  %500 = icmp eq i8 %499, 0, !dbg !3147
  %501 = and i1 %110, %500, !dbg !3147
  br i1 %501, label %502, label %518, !dbg !3147

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3149
  br i1 %503, label %504, label %506, !dbg !3153

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3149
  store i8 39, i8* %505, align 1, !dbg !3149, !tbaa !1280
  br label %506, !dbg !3149

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %507, metadata !2713, metadata !DIExpression()), !dbg !2761
  %508 = icmp ult i64 %507, %497, !dbg !3154
  br i1 %508, label %509, label %511, !dbg !3157

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3154
  store i8 36, i8* %510, align 1, !dbg !3154, !tbaa !1280
  br label %511, !dbg !3154

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %512, metadata !2713, metadata !DIExpression()), !dbg !2761
  %513 = icmp ult i64 %512, %497, !dbg !3158
  br i1 %513, label %514, label %516, !dbg !3161

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3158
  store i8 39, i8* %515, align 1, !dbg !3158, !tbaa !1280
  br label %516, !dbg !3158

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %517, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 1, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %518, !dbg !3162

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2853
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %520, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %519, metadata !2713, metadata !DIExpression()), !dbg !2761
  %521 = icmp ult i64 %519, %497, !dbg !3163
  br i1 %521, label %522, label %524, !dbg !3166

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3163
  store i8 92, i8* %523, align 1, !dbg !3163, !tbaa !1280
  br label %524, !dbg !3163

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %525, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %536, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %535, metadata !2730, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %534, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %533, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %532, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %531, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %530, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %529, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %528, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %527, metadata !2712, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2759), !dbg !3167
  br label %553, !dbg !3168

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3143
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2761
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2778
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3134
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2782
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2783
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3171
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2853
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2853
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %535, metadata !2730, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %534, metadata !2729, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %533, metadata !2723, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8 %532, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %531, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %530, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %529, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %528, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %527, metadata !2712, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2759), !dbg !3167
  %537 = and i8 %531, 1, !dbg !3168
  %538 = icmp ne i8 %537, 0, !dbg !3168
  %539 = and i8 %534, 1, !dbg !3168
  %540 = icmp eq i8 %539, 0, !dbg !3168
  %541 = and i1 %538, %540, !dbg !3168
  br i1 %541, label %542, label %553, !dbg !3168

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3172
  br i1 %543, label %544, label %546, !dbg !3176

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3172
  store i8 39, i8* %545, align 1, !dbg !3172, !tbaa !1280
  br label %546, !dbg !3172

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %547, metadata !2713, metadata !DIExpression()), !dbg !2761
  %548 = icmp ult i64 %547, %536, !dbg !3177
  br i1 %548, label %549, label %551, !dbg !3180

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3177
  store i8 39, i8* %550, align 1, !dbg !3177, !tbaa !1280
  br label %551, !dbg !3177

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %552, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2761
  br label %553, !dbg !3181

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2853
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %562, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %561, metadata !2713, metadata !DIExpression()), !dbg !2761
  %563 = icmp ult i64 %561, %554, !dbg !3182
  br i1 %563, label %564, label %566, !dbg !3185

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3182
  store i8 %556, i8* %565, align 1, !dbg !3182, !tbaa !1280
  br label %566, !dbg !3182

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %567, metadata !2713, metadata !DIExpression()), !dbg !2761
  %568 = and i8 %555, 1, !dbg !3186
  %569 = icmp eq i8 %568, 0, !dbg !3186
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3188
  call void @llvm.dbg.value(metadata i8 %570, metadata !2722, metadata !DIExpression()), !dbg !2761
  br label %571, !dbg !3189

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3143
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2761
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2778
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3134
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2782
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2761
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2784
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %578, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %577, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %576, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %575, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %574, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %573, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %572, metadata !2712, metadata !DIExpression()), !dbg !2761
  %580 = add i64 %572, 1, !dbg !3190
  call void @llvm.dbg.value(metadata i64 %580, metadata !2712, metadata !DIExpression()), !dbg !2761
  br label %122, !dbg !3191, !llvm.loop !3192

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %127, metadata !2720, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %128, metadata !2721, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %129, metadata !2722, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  %583 = icmp eq i64 %124, 0, !dbg !3194
  %584 = and i1 %110, %583, !dbg !3196
  %585 = xor i1 %584, true, !dbg !3196
  %586 = or i1 %109, %585, !dbg !3196
  br i1 %586, label %587, label %629, !dbg !3196

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3197
  %589 = xor i1 %588, true, !dbg !3197
  %590 = and i8 %128, 1, !dbg !3199
  %591 = icmp eq i8 %590, 0, !dbg !3199
  %592 = or i1 %591, %589, !dbg !3197
  br i1 %592, label %602, label %593, !dbg !3197

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3200
  %595 = icmp eq i8 %594, 0, !dbg !3200
  br i1 %595, label %598, label %596, !dbg !3203

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %94, metadata !2710, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %95, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %125, metadata !2714, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %582, metadata !2706, metadata !DIExpression()), !dbg !2761
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3204
  br label %645, !dbg !3205

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3206
  %600 = icmp ne i64 %125, 0, !dbg !3208
  %601 = and i1 %600, %599, !dbg !3209
  br i1 %601, label %26, label %602, !dbg !3209

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %130, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  %603 = icmp ne i8* %97, null, !dbg !3210
  %604 = and i1 %603, %109, !dbg !3212
  br i1 %604, label %605, label %620, !dbg !3212

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %124, metadata !2713, metadata !DIExpression()), !dbg !2761
  %606 = load i8, i8* %97, align 1, !dbg !3213, !tbaa !1280
  %607 = icmp eq i8 %606, 0, !dbg !3216
  br i1 %607, label %620, label %608, !dbg !3216

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2715, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %611, metadata !2713, metadata !DIExpression()), !dbg !2761
  %612 = icmp ult i64 %611, %130, !dbg !3217
  br i1 %612, label %613, label %615, !dbg !3220

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3217
  store i8 %609, i8* %614, align 1, !dbg !3217, !tbaa !1280
  br label %615, !dbg !3217

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %616, metadata !2713, metadata !DIExpression()), !dbg !2761
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %617, metadata !2715, metadata !DIExpression()), !dbg !2761
  %618 = load i8, i8* %617, align 1, !dbg !3213, !tbaa !1280
  %619 = icmp eq i8 %618, 0, !dbg !3216
  br i1 %619, label %620, label %608, !dbg !3216, !llvm.loop !3222

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2815
  call void @llvm.dbg.value(metadata i64 %621, metadata !2713, metadata !DIExpression()), !dbg !2761
  %622 = icmp ult i64 %621, %130, !dbg !3224
  br i1 %622, label %623, label %645, !dbg !3226

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3227
  store i8 0, i8* %624, align 1, !dbg !3228, !tbaa !1280
  br label %645, !dbg !3227

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %630, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2760), !dbg !3229
  %627 = icmp eq i8 %101, 0, !dbg !3230
  %628 = select i1 %627, i32 2, i32 4, !dbg !3230
  br label %635, !dbg !3230

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %630, metadata !2706, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.label(metadata !2760), !dbg !3229
  %632 = icmp eq i32 %93, 2, !dbg !3232
  %633 = icmp eq i8 %101, 0, !dbg !3230
  %634 = select i1 %633, i32 2, i32 4, !dbg !3230
  br i1 %632, label %635, label %639, !dbg !3230

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3230

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2707, metadata !DIExpression()), !dbg !2761
  %643 = and i32 %5, -3, !dbg !3233
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3234
  br label %645, !dbg !3235

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3236
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 %1, metadata !3242, metadata !DIExpression()), !dbg !3245
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %3, metadata !3243, metadata !DIExpression()), !dbg !3245
  %4 = icmp eq i8* %3, %0, !dbg !3247
  br i1 %4, label %5, label %71, !dbg !3249

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %6, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %6, metadata !3251, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8* undef, metadata !3257, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 85, metadata !3258, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 84, metadata !3259, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 70, metadata !3260, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 45, metadata !3261, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 56, metadata !3262, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 0, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 0, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 0, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 0, metadata !3266, metadata !DIExpression()), !dbg !3267
  %7 = load i8, i8* %6, align 1, !dbg !3270, !tbaa !1280
  %8 = and i8 %7, -33, !dbg !3270
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3270

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3272, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* undef, metadata !3277, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 84, metadata !3278, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 70, metadata !3279, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 45, metadata !3280, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 56, metadata !3281, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 0, metadata !3282, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 0, metadata !3283, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 0, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 0, metadata !3285, metadata !DIExpression()), !dbg !3286
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3290
  %11 = load i8, i8* %10, align 1, !dbg !3290, !tbaa !1280
  %12 = and i8 %11, -33, !dbg !3290
  %13 = icmp eq i8 %12, 84, !dbg !3290
  br i1 %13, label %14, label %68, !dbg !3290

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3292, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* undef, metadata !3297, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 70, metadata !3298, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 45, metadata !3299, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 56, metadata !3300, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 0, metadata !3301, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 0, metadata !3302, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 0, metadata !3303, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 0, metadata !3304, metadata !DIExpression()), !dbg !3305
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3309
  %16 = load i8, i8* %15, align 1, !dbg !3309, !tbaa !1280
  %17 = and i8 %16, -33, !dbg !3309
  %18 = icmp eq i8 %17, 70, !dbg !3309
  br i1 %18, label %19, label %68, !dbg !3309

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3311, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* undef, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 45, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 56, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3319, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 0, metadata !3322, metadata !DIExpression()), !dbg !3323
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3327
  %21 = load i8, i8* %20, align 1, !dbg !3327, !tbaa !1280
  %22 = icmp eq i8 %21, 45, !dbg !3327
  br i1 %22, label %23, label %68, !dbg !3329

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3330, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* undef, metadata !3335, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 56, metadata !3336, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 0, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 0, metadata !3340, metadata !DIExpression()), !dbg !3341
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3345
  %25 = load i8, i8* %24, align 1, !dbg !3345, !tbaa !1280
  %26 = icmp eq i8 %25, 56, !dbg !3345
  br i1 %26, label %27, label %68, !dbg !3347

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3348, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* undef, metadata !3353, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 0, metadata !3357, metadata !DIExpression()), !dbg !3358
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3362
  %29 = load i8, i8* %28, align 1, !dbg !3362, !tbaa !1280
  %30 = icmp eq i8 %29, 0, !dbg !3362
  br i1 %30, label %31, label %68, !dbg !3364

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3365, !tbaa !1280
  %33 = icmp eq i8 %32, 96, !dbg !3366
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.104, i64 0, i64 0), !dbg !3365
  br label %71, !dbg !3367

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3272, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8* undef, metadata !3277, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 66, metadata !3278, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 49, metadata !3279, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 56, metadata !3280, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 48, metadata !3281, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 51, metadata !3282, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 48, metadata !3283, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 0, metadata !3284, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8 0, metadata !3285, metadata !DIExpression()), !dbg !3368
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3372
  %37 = load i8, i8* %36, align 1, !dbg !3372, !tbaa !1280
  %38 = and i8 %37, -33, !dbg !3372
  %39 = icmp eq i8 %38, 66, !dbg !3372
  br i1 %39, label %40, label %68, !dbg !3372

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3292, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8* undef, metadata !3297, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 49, metadata !3298, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 56, metadata !3299, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 48, metadata !3300, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 51, metadata !3301, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 48, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3304, metadata !DIExpression()), !dbg !3373
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3375
  %42 = load i8, i8* %41, align 1, !dbg !3375, !tbaa !1280
  %43 = icmp eq i8 %42, 49, !dbg !3375
  br i1 %43, label %44, label %68, !dbg !3376

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3311, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* undef, metadata !3316, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 56, metadata !3317, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 48, metadata !3318, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 51, metadata !3319, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 48, metadata !3320, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3321, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8 0, metadata !3322, metadata !DIExpression()), !dbg !3377
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3379
  %46 = load i8, i8* %45, align 1, !dbg !3379, !tbaa !1280
  %47 = icmp eq i8 %46, 56, !dbg !3379
  br i1 %47, label %48, label %68, !dbg !3380

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* undef, metadata !3335, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 48, metadata !3336, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 51, metadata !3337, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 48, metadata !3338, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8 0, metadata !3340, metadata !DIExpression()), !dbg !3381
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3383
  %50 = load i8, i8* %49, align 1, !dbg !3383, !tbaa !1280
  %51 = icmp eq i8 %50, 48, !dbg !3383
  br i1 %51, label %52, label %68, !dbg !3384

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3348, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* undef, metadata !3353, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 51, metadata !3354, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 48, metadata !3355, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 0, metadata !3357, metadata !DIExpression()), !dbg !3385
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3387
  %54 = load i8, i8* %53, align 1, !dbg !3387, !tbaa !1280
  %55 = icmp eq i8 %54, 51, !dbg !3387
  br i1 %55, label %56, label %68, !dbg !3388

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3389, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* undef, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8 48, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8 0, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8 0, metadata !3397, metadata !DIExpression()), !dbg !3398
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3402
  %58 = load i8, i8* %57, align 1, !dbg !3402, !tbaa !1280
  %59 = icmp eq i8 %58, 48, !dbg !3402
  br i1 %59, label %60, label %68, !dbg !3404

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3405, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8* undef, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8 0, metadata !3411, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8 0, metadata !3412, metadata !DIExpression()), !dbg !3413
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3417
  %62 = load i8, i8* %61, align 1, !dbg !3417, !tbaa !1280
  %63 = icmp eq i8 %62, 0, !dbg !3417
  br i1 %63, label %64, label %68, !dbg !3419

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3420, !tbaa !1280
  %66 = icmp eq i8 %65, 96, !dbg !3421
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.106, i64 0, i64 0), !dbg !3420
  br label %71, !dbg !3422

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3423
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), !dbg !3424
  br label %71, !dbg !3425

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3245
  ret i8* %72, !dbg !3426
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !344 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !348 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3427 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()) #13, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %1, metadata !3440, metadata !DIExpression()) #13, !dbg !3448
  call void @llvm.dbg.value(metadata i64* null, metadata !3441, metadata !DIExpression()) #13, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3442, metadata !DIExpression()) #13, !dbg !3448
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3450
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3443, metadata !DIExpression()) #13, !dbg !3448
  %6 = tail call i32* @__errno_location() #26, !dbg !3451
  %7 = load i32, i32* %6, align 4, !dbg !3451, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %7, metadata !3444, metadata !DIExpression()) #13, !dbg !3448
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3452
  %9 = load i32, i32* %8, align 4, !dbg !3452, !tbaa !2646
  %10 = or i32 %9, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %10, metadata !3445, metadata !DIExpression()) #13, !dbg !3448
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3454
  %12 = load i32, i32* %11, align 8, !dbg !3454, !tbaa !2594
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3455
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3456
  %15 = load i8*, i8** %14, align 8, !dbg !3456, !tbaa !2669
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3457
  %17 = load i8*, i8** %16, align 8, !dbg !3457, !tbaa !2672
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #13, !dbg !3458
  %19 = add i64 %18, 1, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %19, metadata !3446, metadata !DIExpression()) #13, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %19, metadata !3460, metadata !DIExpression()) #13, !dbg !3465
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %20, metadata !3447, metadata !DIExpression()) #13, !dbg !3448
  %21 = load i32, i32* %11, align 8, !dbg !3468, !tbaa !2594
  %22 = load i8*, i8** %14, align 8, !dbg !3469, !tbaa !2669
  %23 = load i8*, i8** %16, align 8, !dbg !3470, !tbaa !2672
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #13, !dbg !3471
  store i32 %7, i32* %6, align 4, !dbg !3472, !tbaa !1201
  ret i8* %20, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3440, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64* %2, metadata !3441, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3442, metadata !DIExpression()), !dbg !3474
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3475
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3443, metadata !DIExpression()), !dbg !3474
  %7 = tail call i32* @__errno_location() #26, !dbg !3476
  %8 = load i32, i32* %7, align 4, !dbg !3476, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %8, metadata !3444, metadata !DIExpression()), !dbg !3474
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3477
  %10 = load i32, i32* %9, align 4, !dbg !3477, !tbaa !2646
  %11 = icmp ne i64* %2, null, !dbg !3478
  %12 = xor i1 %11, true, !dbg !3478
  %13 = zext i1 %12 to i32, !dbg !3478
  %14 = or i32 %10, %13, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %14, metadata !3445, metadata !DIExpression()), !dbg !3474
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3480
  %16 = load i32, i32* %15, align 8, !dbg !3480, !tbaa !2594
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3481
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3482
  %19 = load i8*, i8** %18, align 8, !dbg !3482, !tbaa !2669
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3483
  %21 = load i8*, i8** %20, align 8, !dbg !3483, !tbaa !2672
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3484
  %23 = add i64 %22, 1, !dbg !3485
  call void @llvm.dbg.value(metadata i64 %23, metadata !3446, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %23, metadata !3460, metadata !DIExpression()) #13, !dbg !3486
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %24, metadata !3447, metadata !DIExpression()), !dbg !3474
  %25 = load i32, i32* %15, align 8, !dbg !3489, !tbaa !2594
  %26 = load i8*, i8** %18, align 8, !dbg !3490, !tbaa !2669
  %27 = load i8*, i8** %20, align 8, !dbg !3491, !tbaa !2672
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3492
  store i32 %8, i32* %7, align 4, !dbg !3493, !tbaa !1201
  br i1 %11, label %29, label %30, !dbg !3494

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3495, !tbaa !1577
  br label %30, !dbg !3497

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3499 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3503, !tbaa !1129
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 1, metadata !3502, metadata !DIExpression()), !dbg !3504
  %2 = load i32, i32* @nslots, align 4, !dbg !3505, !tbaa !1201
  %3 = icmp sgt i32 %2, 1, !dbg !3508
  br i1 %3, label %4, label %12, !dbg !3509

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3502, metadata !DIExpression()), !dbg !3504
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3510
  %7 = load i8*, i8** %6, align 8, !dbg !3510, !tbaa !3511
  tail call void @free(i8* %7) #13, !dbg !3513
  %8 = add nuw nsw i64 %5, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %8, metadata !3502, metadata !DIExpression()), !dbg !3504
  %9 = load i32, i32* @nslots, align 4, !dbg !3505, !tbaa !1201
  %10 = sext i32 %9 to i64, !dbg !3508
  %11 = icmp slt i64 %8, %10, !dbg !3508
  br i1 %11, label %4, label %12, !dbg !3509, !llvm.loop !3515

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3517
  %14 = load i8*, i8** %13, align 8, !dbg !3517, !tbaa !3511
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3519
  br i1 %15, label %17, label %16, !dbg !3520

16:                                               ; preds = %12
  tail call void @free(i8* %14) #13, !dbg !3521
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3523, !tbaa !3524
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3525, !tbaa !3511
  br label %17, !dbg !3526

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3527
  br i1 %18, label %21, label %19, !dbg !3529

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3530
  tail call void @free(i8* %20) #13, !dbg !3532
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3533, !tbaa !1129
  br label %21, !dbg !3534

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3535, !tbaa !1201
  ret void, !dbg !3536
}

; Function Attrs: nounwind
declare !dbg !320 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3539, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3540, metadata !DIExpression()), !dbg !3541
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3542
  ret i8* %3, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %2, metadata !3550, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3551, metadata !DIExpression()), !dbg !3563
  %5 = tail call i32* @__errno_location() #26, !dbg !3564
  %6 = load i32, i32* %5, align 4, !dbg !3564, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %6, metadata !3552, metadata !DIExpression()), !dbg !3563
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3565, !tbaa !1129
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3553, metadata !DIExpression()), !dbg !3563
  %8 = icmp slt i32 %0, 0, !dbg !3566
  br i1 %8, label %9, label %10, !dbg !3568

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3569
  unreachable, !dbg !3569

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3570, !tbaa !1201
  %12 = icmp sgt i32 %11, %0, !dbg !3571
  br i1 %12, label %34, label %13, !dbg !3572

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3573
  call void @llvm.dbg.value(metadata i1 %14, metadata !3554, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3557, metadata !DIExpression()), !dbg !3574
  %15 = icmp eq i32 %0, 2147483647, !dbg !3575
  br i1 %15, label %16, label %17, !dbg !3577

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3578
  unreachable, !dbg !3578

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3579
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3579
  %20 = add nuw nsw i32 %0, 1, !dbg !3580
  %21 = sext i32 %20 to i64, !dbg !3581
  %22 = shl nuw nsw i64 %21, 4, !dbg !3582
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !3583
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3583
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3553, metadata !DIExpression()), !dbg !3563
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3584, !tbaa !1129
  br i1 %14, label %25, label %26, !dbg !3585

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3586, !tbaa.struct !3588
  br label %26, !dbg !3589

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3590, !tbaa !1201
  %28 = sext i32 %27 to i64, !dbg !3591
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3591
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3592
  %31 = sub nsw i32 %20, %27, !dbg !3593
  %32 = sext i32 %31 to i64, !dbg !3594
  %33 = shl nsw i64 %32, 4, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %30, metadata !2993, metadata !DIExpression()) #13, !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #13, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %33, metadata !3000, metadata !DIExpression()) #13, !dbg !3596
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #13, !dbg !3598
  store i32 %20, i32* @nslots, align 4, !dbg !3599, !tbaa !1201
  br label %34, !dbg !3600

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3563
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3553, metadata !DIExpression()), !dbg !3563
  %36 = zext i32 %0 to i64, !dbg !3601
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3602
  %38 = load i64, i64* %37, align 8, !dbg !3602, !tbaa !3524
  call void @llvm.dbg.value(metadata i64 %38, metadata !3558, metadata !DIExpression()), !dbg !3603
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3604
  %40 = load i8*, i8** %39, align 8, !dbg !3604, !tbaa !3511
  call void @llvm.dbg.value(metadata i8* %40, metadata !3560, metadata !DIExpression()), !dbg !3603
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3605
  %42 = load i32, i32* %41, align 4, !dbg !3605, !tbaa !2646
  %43 = or i32 %42, 1, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %43, metadata !3561, metadata !DIExpression()), !dbg !3603
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3607
  %45 = load i32, i32* %44, align 8, !dbg !3607, !tbaa !2594
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3608
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3609
  %48 = load i8*, i8** %47, align 8, !dbg !3609, !tbaa !2669
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3610
  %50 = load i8*, i8** %49, align 8, !dbg !3610, !tbaa !2672
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %51, metadata !3562, metadata !DIExpression()), !dbg !3603
  %52 = icmp ugt i64 %38, %51, !dbg !3612
  br i1 %52, label %63, label %53, !dbg !3614

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %54, metadata !3558, metadata !DIExpression()), !dbg !3603
  store i64 %54, i64* %37, align 8, !dbg !3617, !tbaa !3524
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3618
  br i1 %55, label %57, label %56, !dbg !3620

56:                                               ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !3621
  br label %57, !dbg !3621

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3460, metadata !DIExpression()) #13, !dbg !3622
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %58, metadata !3560, metadata !DIExpression()), !dbg !3603
  store i8* %58, i8** %39, align 8, !dbg !3625, !tbaa !3511
  %59 = load i32, i32* %44, align 8, !dbg !3626, !tbaa !2594
  %60 = load i8*, i8** %47, align 8, !dbg !3627, !tbaa !2669
  %61 = load i8*, i8** %49, align 8, !dbg !3628, !tbaa !2672
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3629
  br label %63, !dbg !3630

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3603
  call void @llvm.dbg.value(metadata i8* %64, metadata !3560, metadata !DIExpression()), !dbg !3603
  store i32 %6, i32* %5, align 4, !dbg !3631, !tbaa !1201
  ret i8* %64, !dbg !3632
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %1, metadata !3638, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %2, metadata !3639, metadata !DIExpression()), !dbg !3640
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3641
  ret i8* %4, !dbg !3642
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3539, metadata !DIExpression()) #13, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %0, metadata !3540, metadata !DIExpression()) #13, !dbg !3647
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3649
  ret i8* %2, !dbg !3650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()) #13, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()) #13, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %1, metadata !3639, metadata !DIExpression()) #13, !dbg !3658
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !3660
  ret i8* %3, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3662 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %1, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %2, metadata !3668, metadata !DIExpression()), !dbg !3670
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3671
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3671
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3669, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression()) #13, !dbg !3679
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3678, metadata !DIExpression()) #13, !dbg !3681
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !3681, !alias.scope !3682
  %6 = icmp eq i32 %1, 10, !dbg !3685
  br i1 %6, label %7, label %8, !dbg !3687

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3688, !noalias !3682
  unreachable, !dbg !3688

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3689
  store i32 %1, i32* %9, align 8, !dbg !3690, !tbaa !2594, !alias.scope !3682
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3691
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3692
  ret i8* %10, !dbg !3693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3694 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 %1, metadata !3699, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i8* %2, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %3, metadata !3701, metadata !DIExpression()), !dbg !3703
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3704
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3704
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3702, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression()) #13, !dbg !3706
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3678, metadata !DIExpression()) #13, !dbg !3708
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #13, !dbg !3708, !alias.scope !3709
  %7 = icmp eq i32 %1, 10, !dbg !3712
  br i1 %7, label %8, label %9, !dbg !3713

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3714, !noalias !3709
  unreachable, !dbg !3714

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3715
  store i32 %1, i32* %10, align 8, !dbg !3716, !tbaa !2594, !alias.scope !3709
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3717
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3718
  ret i8* %11, !dbg !3719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3720 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3678, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3669, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* %1, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3666, metadata !DIExpression()) #13, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %0, metadata !3667, metadata !DIExpression()) #13, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression()) #13, !dbg !3731
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()) #13, !dbg !3733
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #13, !dbg !3726, !alias.scope !3734
  %5 = icmp eq i32 %0, 10, !dbg !3737
  br i1 %5, label %6, label %7, !dbg !3738

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3739, !noalias !3734
  unreachable, !dbg !3739

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3740
  store i32 %0, i32* %8, align 8, !dbg !3741, !tbaa !2594, !alias.scope !3734
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !3742
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3743
  ret i8* %9, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3745 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3678, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3702, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 %0, metadata !3749, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i8* %1, metadata !3750, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %2, metadata !3751, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()) #13, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %0, metadata !3699, metadata !DIExpression()) #13, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %1, metadata !3700, metadata !DIExpression()) #13, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3701, metadata !DIExpression()) #13, !dbg !3757
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3758
  call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()) #13, !dbg !3759
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !3752, !alias.scope !3760
  %6 = icmp eq i32 %0, 10, !dbg !3763
  br i1 %6, label %7, label %8, !dbg !3764

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3765, !noalias !3760
  unreachable, !dbg !3765

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3766
  store i32 %0, i32* %9, align 8, !dbg !3767, !tbaa !2594, !alias.scope !3760
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #13, !dbg !3768
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3769
  ret i8* %10, !dbg !3770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3771 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3775, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8 %2, metadata !3777, metadata !DIExpression()), !dbg !3779
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3780
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3780
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3782, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2612, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %2, metadata !2613, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %2, metadata !2615, metadata !DIExpression()), !dbg !3784
  %6 = lshr i8 %2, 5, !dbg !3786
  %7 = zext i8 %6 to i64, !dbg !3786
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3787
  call void @llvm.dbg.value(metadata i32* %8, metadata !2617, metadata !DIExpression()), !dbg !3784
  %9 = and i8 %2, 31, !dbg !3788
  %10 = zext i8 %9 to i32, !dbg !3788
  call void @llvm.dbg.value(metadata i32 %10, metadata !2619, metadata !DIExpression()), !dbg !3784
  %11 = load i32, i32* %8, align 4, !dbg !3789, !tbaa !1201
  %12 = lshr i32 %11, %10, !dbg !3790
  %13 = and i32 %12, 1, !dbg !3791
  call void @llvm.dbg.value(metadata i32 %13, metadata !2620, metadata !DIExpression()), !dbg !3784
  %14 = xor i32 %13, 1, !dbg !3792
  %15 = shl i32 %14, %10, !dbg !3793
  %16 = xor i32 %15, %11, !dbg !3794
  store i32 %16, i32* %8, align 4, !dbg !3794, !tbaa !1201
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3795
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3796
  ret i8* %17, !dbg !3797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3798 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3778, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 %1, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %0, metadata !3775, metadata !DIExpression()) #13, !dbg !3807
  call void @llvm.dbg.value(metadata i64 -1, metadata !3776, metadata !DIExpression()) #13, !dbg !3807
  call void @llvm.dbg.value(metadata i8 %1, metadata !3777, metadata !DIExpression()) #13, !dbg !3807
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3808
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3809, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2612, metadata !DIExpression()) #13, !dbg !3810
  call void @llvm.dbg.value(metadata i8 %1, metadata !2613, metadata !DIExpression()) #13, !dbg !3810
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()) #13, !dbg !3810
  call void @llvm.dbg.value(metadata i8 %1, metadata !2615, metadata !DIExpression()) #13, !dbg !3810
  %5 = lshr i8 %1, 5, !dbg !3812
  %6 = zext i8 %5 to i64, !dbg !3812
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3813
  call void @llvm.dbg.value(metadata i32* %7, metadata !2617, metadata !DIExpression()) #13, !dbg !3810
  %8 = and i8 %1, 31, !dbg !3814
  %9 = zext i8 %8 to i32, !dbg !3814
  call void @llvm.dbg.value(metadata i32 %9, metadata !2619, metadata !DIExpression()) #13, !dbg !3810
  %10 = load i32, i32* %7, align 4, !dbg !3815, !tbaa !1201
  %11 = lshr i32 %10, %9, !dbg !3816
  %12 = and i32 %11, 1, !dbg !3817
  call void @llvm.dbg.value(metadata i32 %12, metadata !2620, metadata !DIExpression()) #13, !dbg !3810
  %13 = xor i32 %12, 1, !dbg !3818
  %14 = shl i32 %13, %9, !dbg !3819
  %15 = xor i32 %14, %10, !dbg !3820
  store i32 %15, i32* %7, align 4, !dbg !3820, !tbaa !1201
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3822
  ret i8* %16, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3824 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3778, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %0, metadata !3826, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #13, !dbg !3831
  call void @llvm.dbg.value(metadata i8 58, metadata !3803, metadata !DIExpression()) #13, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3775, metadata !DIExpression()) #13, !dbg !3832
  call void @llvm.dbg.value(metadata i64 -1, metadata !3776, metadata !DIExpression()) #13, !dbg !3832
  call void @llvm.dbg.value(metadata i8 58, metadata !3777, metadata !DIExpression()) #13, !dbg !3832
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3833
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !3833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3834, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2612, metadata !DIExpression()) #13, !dbg !3835
  call void @llvm.dbg.value(metadata i8 58, metadata !2613, metadata !DIExpression()) #13, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()) #13, !dbg !3835
  call void @llvm.dbg.value(metadata i8 58, metadata !2615, metadata !DIExpression()) #13, !dbg !3835
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3837
  call void @llvm.dbg.value(metadata i32* %4, metadata !2617, metadata !DIExpression()) #13, !dbg !3835
  call void @llvm.dbg.value(metadata i32 26, metadata !2619, metadata !DIExpression()) #13, !dbg !3835
  %5 = load i32, i32* %4, align 4, !dbg !3838, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %5, metadata !2620, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !3835
  %6 = or i32 %5, 67108864, !dbg !3839
  store i32 %6, i32* %4, align 4, !dbg !3839, !tbaa !1201
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !3840
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !3841
  ret i8* %7, !dbg !3842
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3843 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3778, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i8* %0, metadata !3845, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %1, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i8* %0, metadata !3775, metadata !DIExpression()) #13, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3776, metadata !DIExpression()) #13, !dbg !3850
  call void @llvm.dbg.value(metadata i8 58, metadata !3777, metadata !DIExpression()) #13, !dbg !3850
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3851
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3851
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3852, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2612, metadata !DIExpression()) #13, !dbg !3853
  call void @llvm.dbg.value(metadata i8 58, metadata !2613, metadata !DIExpression()) #13, !dbg !3853
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()) #13, !dbg !3853
  call void @llvm.dbg.value(metadata i8 58, metadata !2615, metadata !DIExpression()) #13, !dbg !3853
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3855
  call void @llvm.dbg.value(metadata i32* %5, metadata !2617, metadata !DIExpression()) #13, !dbg !3853
  call void @llvm.dbg.value(metadata i32 26, metadata !2619, metadata !DIExpression()) #13, !dbg !3853
  %6 = load i32, i32* %5, align 4, !dbg !3856, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %6, metadata !2620, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !3853
  %7 = or i32 %6, 67108864, !dbg !3857
  store i32 %7, i32* %5, align 4, !dbg !3857, !tbaa !1201
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !3858
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !3859
  ret i8* %8, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3861 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3678, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3867
  call void @llvm.dbg.value(metadata i32 %0, metadata !3863, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %1, metadata !3864, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()), !dbg !3869
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3870
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3866, metadata !DIExpression()), !dbg !3871
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3872
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression()) #13, !dbg !3873
  call void @llvm.dbg.value(metadata i32 0, metadata !3678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3873
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3867, !alias.scope !3874
  %8 = icmp eq i32 %1, 10, !dbg !3877
  br i1 %8, label %9, label %10, !dbg !3878

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3879, !noalias !3874
  unreachable, !dbg !3879

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3873
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3872
  store i32 %1, i32* %11, align 8, !dbg !3872, !tbaa.struct !3783
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3872
  %13 = bitcast i32* %12 to i8*, !dbg !3872
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3872, !tbaa.struct !3783
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2612, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 58, metadata !2613, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 58, metadata !2615, metadata !DIExpression()), !dbg !3880
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3882
  call void @llvm.dbg.value(metadata i32* %14, metadata !2617, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 26, metadata !2619, metadata !DIExpression()), !dbg !3880
  %15 = load i32, i32* %14, align 4, !dbg !3883, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %15, metadata !2620, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3880
  %16 = or i32 %15, 67108864, !dbg !3884
  store i32 %16, i32* %14, align 4, !dbg !3884, !tbaa !1201
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3885
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3886
  ret i8* %17, !dbg !3887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3888 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3896, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %0, metadata !3892, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i8* %1, metadata !3893, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i8* %2, metadata !3894, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i8* %3, metadata !3895, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()) #13, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3902, metadata !DIExpression()) #13, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %2, metadata !3903, metadata !DIExpression()) #13, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %3, metadata !3904, metadata !DIExpression()) #13, !dbg !3909
  call void @llvm.dbg.value(metadata i64 -1, metadata !3905, metadata !DIExpression()) #13, !dbg !3909
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3911, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2653, metadata !DIExpression()) #13, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()) #13, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()) #13, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2653, metadata !DIExpression()) #13, !dbg !3912
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3914
  store i32 10, i32* %7, align 8, !dbg !3915, !tbaa !2594
  %8 = icmp ne i8* %1, null, !dbg !3916
  %9 = icmp ne i8* %2, null, !dbg !3917
  %10 = and i1 %8, %9, !dbg !3918
  br i1 %10, label %12, label %11, !dbg !3918

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3919
  unreachable, !dbg !3919

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3920
  store i8* %1, i8** %13, align 8, !dbg !3921, !tbaa !2669
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3922
  store i8* %2, i8** %14, align 8, !dbg !3923, !tbaa !2672
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !3924
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3925
  ret i8* %15, !dbg !3926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3897 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %1, metadata !3902, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %2, metadata !3903, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %3, metadata !3904, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %4, metadata !3905, metadata !DIExpression()), !dbg !3927
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3928
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !3928
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3896, metadata !DIExpression()), !dbg !3929
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3930, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2653, metadata !DIExpression()) #13, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()) #13, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()) #13, !dbg !3931
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2653, metadata !DIExpression()) #13, !dbg !3931
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3933
  store i32 10, i32* %8, align 8, !dbg !3934, !tbaa !2594
  %9 = icmp ne i8* %1, null, !dbg !3935
  %10 = icmp ne i8* %2, null, !dbg !3936
  %11 = and i1 %9, %10, !dbg !3937
  br i1 %11, label %13, label %12, !dbg !3937

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3938
  unreachable, !dbg !3938

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3939
  store i8* %1, i8** %14, align 8, !dbg !3940, !tbaa !2669
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3941
  store i8* %2, i8** %15, align 8, !dbg !3942, !tbaa !2672
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3943
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !3944
  ret i8* %16, !dbg !3945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3946 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3896, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %0, metadata !3950, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %1, metadata !3951, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 0, metadata !3892, metadata !DIExpression()) #13, !dbg !3957
  call void @llvm.dbg.value(metadata i8* %0, metadata !3893, metadata !DIExpression()) #13, !dbg !3957
  call void @llvm.dbg.value(metadata i8* %1, metadata !3894, metadata !DIExpression()) #13, !dbg !3957
  call void @llvm.dbg.value(metadata i8* %2, metadata !3895, metadata !DIExpression()) #13, !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()) #13, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %0, metadata !3902, metadata !DIExpression()) #13, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !3903, metadata !DIExpression()) #13, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %2, metadata !3904, metadata !DIExpression()) #13, !dbg !3958
  call void @llvm.dbg.value(metadata i64 -1, metadata !3905, metadata !DIExpression()) #13, !dbg !3958
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3960, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2653, metadata !DIExpression()) #13, !dbg !3961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #13, !dbg !3961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()) #13, !dbg !3961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2653, metadata !DIExpression()) #13, !dbg !3961
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3963
  store i32 10, i32* %6, align 8, !dbg !3964, !tbaa !2594
  %7 = icmp ne i8* %0, null, !dbg !3965
  %8 = icmp ne i8* %1, null, !dbg !3966
  %9 = and i1 %7, %8, !dbg !3967
  br i1 %9, label %11, label %10, !dbg !3967

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3968
  unreachable, !dbg !3968

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3969
  store i8* %0, i8** %12, align 8, !dbg !3970, !tbaa !2669
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3971
  store i8* %1, i8** %13, align 8, !dbg !3972, !tbaa !2672
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !3973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !3974
  ret i8* %14, !dbg !3975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3976 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3896, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i8* %1, metadata !3981, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i8* %2, metadata !3982, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %3, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()) #13, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %0, metadata !3902, metadata !DIExpression()) #13, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %1, metadata !3903, metadata !DIExpression()) #13, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %2, metadata !3904, metadata !DIExpression()) #13, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %3, metadata !3905, metadata !DIExpression()) #13, !dbg !3987
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3988
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !3988
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !3989, !tbaa.struct !3783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2653, metadata !DIExpression()) #13, !dbg !3990
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #13, !dbg !3990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()) #13, !dbg !3990
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2653, metadata !DIExpression()) #13, !dbg !3990
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3992
  store i32 10, i32* %7, align 8, !dbg !3993, !tbaa !2594
  %8 = icmp ne i8* %0, null, !dbg !3994
  %9 = icmp ne i8* %1, null, !dbg !3995
  %10 = and i1 %8, %9, !dbg !3996
  br i1 %10, label %12, label %11, !dbg !3996

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3997
  unreachable, !dbg !3997

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3998
  store i8* %0, i8** %13, align 8, !dbg !3999, !tbaa !2669
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4000
  store i8* %1, i8** %14, align 8, !dbg !4001, !tbaa !2672
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !4002
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !4003
  ret i8* %15, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i8* %1, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4013
  ret i8* %4, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !4009, metadata !DIExpression()) #13, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %0, metadata !4010, metadata !DIExpression()) #13, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()) #13, !dbg !4022
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4024
  ret i8* %3, !dbg !4025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression()) #13, !dbg !4031
  call void @llvm.dbg.value(metadata i8* %1, metadata !4010, metadata !DIExpression()) #13, !dbg !4031
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()) #13, !dbg !4031
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4033
  ret i8* %3, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4035 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 0, metadata !4028, metadata !DIExpression()) #13, !dbg !4039
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()) #13, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4009, metadata !DIExpression()) #13, !dbg !4041
  call void @llvm.dbg.value(metadata i8* %0, metadata !4010, metadata !DIExpression()) #13, !dbg !4041
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()) #13, !dbg !4041
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !4043
  ret i8* %2, !dbg !4044
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @strintcmp(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #17 !dbg !4045 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8* %1, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 -1, metadata !4057, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 -1, metadata !4058, metadata !DIExpression()), !dbg !4064
  %3 = load i8, i8* %0, align 1, !dbg !4066, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  %4 = load i8, i8* %1, align 1, !dbg !4067, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  %5 = icmp eq i8 %3, 45, !dbg !4068
  br i1 %5, label %6, label %95, !dbg !4070

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !4050, metadata !DIExpression()), !dbg !4064
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %8, metadata !4050, metadata !DIExpression()), !dbg !4064
  %9 = load i8, i8* %8, align 1, !dbg !4073, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  %10 = icmp eq i8 %9, 48, !dbg !4074
  br i1 %10, label %6, label %11, !dbg !4075, !llvm.loop !4076

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4079
  br i1 %12, label %30, label %13, !dbg !4081

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  %14 = zext i8 %9 to i32, !dbg !4082
  %15 = add nsw i32 %14, -48, !dbg !4082
  %16 = icmp ult i32 %15, 10, !dbg !4082
  br i1 %16, label %197, label %17, !dbg !4085

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  %18 = icmp eq i8 %4, 48, !dbg !4086
  br i1 %18, label %19, label %24, !dbg !4087

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !4056, metadata !DIExpression()), !dbg !4064
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %21, metadata !4056, metadata !DIExpression()), !dbg !4064
  %22 = load i8, i8* %21, align 1, !dbg !4089, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %22, metadata !4060, metadata !DIExpression()), !dbg !4064
  %23 = icmp eq i8 %22, 48, !dbg !4086
  br i1 %23, label %19, label %24, !dbg !4087, !llvm.loop !4090

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %25, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %25, metadata !4060, metadata !DIExpression()), !dbg !4064
  %26 = zext i8 %25 to i32, !dbg !4092
  %27 = add nsw i32 %26, -48, !dbg !4092
  %28 = icmp ult i32 %27, 10, !dbg !4092
  %29 = sext i1 %28 to i32, !dbg !4093
  br label %197, !dbg !4094

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !4056, metadata !DIExpression()), !dbg !4064
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %32, metadata !4056, metadata !DIExpression()), !dbg !4064
  %33 = load i8, i8* %32, align 1, !dbg !4096, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %33, metadata !4060, metadata !DIExpression()), !dbg !4064
  %34 = icmp eq i8 %33, 48, !dbg !4097
  br i1 %34, label %30, label %35, !dbg !4098, !llvm.loop !4099

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %8, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %32, metadata !4056, metadata !DIExpression()), !dbg !4064
  %36 = zext i8 %9 to i32, !dbg !4102
  %37 = icmp eq i8 %33, %9, !dbg !4103
  %38 = add nsw i32 %36, -48, !dbg !4104
  %39 = icmp ult i32 %38, 10, !dbg !4104
  %40 = and i1 %39, %37, !dbg !4104
  br i1 %40, label %41, label %55, !dbg !4105

41:                                               ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %42, metadata !4050, metadata !DIExpression()), !dbg !4064
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !4106
  call void @llvm.dbg.value(metadata i8* %44, metadata !4050, metadata !DIExpression()), !dbg !4064
  %45 = load i8, i8* %44, align 1, !dbg !4108, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %45, metadata !4059, metadata !DIExpression()), !dbg !4064
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !4109
  call void @llvm.dbg.value(metadata i8* %46, metadata !4056, metadata !DIExpression()), !dbg !4064
  %47 = load i8, i8* %46, align 1, !dbg !4110, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %47, metadata !4060, metadata !DIExpression()), !dbg !4064
  %48 = zext i8 %45 to i32, !dbg !4102
  %49 = icmp eq i8 %47, %45, !dbg !4103
  %50 = add nsw i32 %48, -48, !dbg !4104
  %51 = icmp ult i32 %50, 10, !dbg !4104
  %52 = and i1 %49, %51, !dbg !4104
  br i1 %52, label %41, label %53, !dbg !4105

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !4102
  br label %55, !dbg !4111

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4112
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !4115
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !4115
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4115
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4102
  call void @llvm.dbg.value(metadata i8* %57, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %58, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %59, metadata !4060, metadata !DIExpression()), !dbg !4064
  %61 = zext i8 %59 to i32, !dbg !4111
  %62 = sub nsw i32 %61, %60, !dbg !4116
  call void @llvm.dbg.value(metadata i32 %62, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %58, metadata !4050, metadata !DIExpression()), !dbg !4064
  %63 = icmp ult i32 %56, 10, !dbg !4112
  br i1 %63, label %68, label %64, !dbg !4117

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4118
  call void @llvm.dbg.value(metadata i64 %65, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %59, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %57, metadata !4056, metadata !DIExpression()), !dbg !4064
  %66 = add nsw i32 %61, -48, !dbg !4119
  %67 = icmp ult i32 %66, 10, !dbg !4119
  br i1 %67, label %77, label %86, !dbg !4122

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %70, metadata !4050, metadata !DIExpression()), !dbg !4064
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !4123
  call void @llvm.dbg.value(metadata i8* %71, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  %72 = load i8, i8* %71, align 1, !dbg !4124, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %72, metadata !4059, metadata !DIExpression()), !dbg !4064
  %73 = add i64 %69, 1, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %73, metadata !4062, metadata !DIExpression()), !dbg !4064
  %74 = zext i8 %72 to i32, !dbg !4112
  %75 = add nsw i32 %74, -48, !dbg !4112
  %76 = icmp ult i32 %75, 10, !dbg !4112
  br i1 %76, label %68, label %64, !dbg !4117, !llvm.loop !4126

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %79, metadata !4056, metadata !DIExpression()), !dbg !4064
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %80, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4060, metadata !DIExpression()), !dbg !4064
  %81 = load i8, i8* %80, align 1, !dbg !4129, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %81, metadata !4060, metadata !DIExpression()), !dbg !4064
  %82 = add i64 %78, 1, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %82, metadata !4063, metadata !DIExpression()), !dbg !4064
  %83 = zext i8 %81 to i32, !dbg !4119
  %84 = add nsw i32 %83, -48, !dbg !4119
  %85 = icmp ult i32 %84, 10, !dbg !4119
  br i1 %85, label %77, label %86, !dbg !4122, !llvm.loop !4131

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 %87, metadata !4063, metadata !DIExpression()), !dbg !4064
  %88 = icmp eq i64 %65, %87, !dbg !4134
  br i1 %88, label %92, label %89, !dbg !4136

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4137
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4138
  br label %197, !dbg !4139

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4140
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4115
  br label %197, !dbg !4115

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4142
  br i1 %96, label %99, label %97, !dbg !4144

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  %98 = icmp eq i8 %3, 48, !dbg !4145
  br i1 %98, label %125, label %121, !dbg !4147

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !4056, metadata !DIExpression()), !dbg !4064
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %101, metadata !4056, metadata !DIExpression()), !dbg !4064
  %102 = load i8, i8* %101, align 1, !dbg !4150, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %102, metadata !4060, metadata !DIExpression()), !dbg !4064
  %103 = icmp eq i8 %102, 48, !dbg !4151
  br i1 %103, label %99, label %104, !dbg !4152, !llvm.loop !4153

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4060, metadata !DIExpression()), !dbg !4064
  %105 = zext i8 %102 to i32, !dbg !4156
  %106 = add nsw i32 %105, -48, !dbg !4156
  %107 = icmp ult i32 %106, 10, !dbg !4156
  br i1 %107, label %197, label %108, !dbg !4158

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  %109 = icmp eq i8 %3, 48, !dbg !4159
  br i1 %109, label %110, label %115, !dbg !4160

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !4050, metadata !DIExpression()), !dbg !4064
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %112, metadata !4050, metadata !DIExpression()), !dbg !4064
  %113 = load i8, i8* %112, align 1, !dbg !4162, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %113, metadata !4059, metadata !DIExpression()), !dbg !4064
  %114 = icmp eq i8 %113, 48, !dbg !4159
  br i1 %114, label %110, label %115, !dbg !4160, !llvm.loop !4163

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %116, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %116, metadata !4059, metadata !DIExpression()), !dbg !4064
  %117 = zext i8 %116 to i32, !dbg !4165
  %118 = add nsw i32 %117, -48, !dbg !4165
  %119 = icmp ult i32 %118, 10, !dbg !4165
  %120 = zext i1 %119 to i32, !dbg !4165
  br label %197, !dbg !4166

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8* %122, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %123, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  %124 = icmp eq i8 %4, 48, !dbg !4167
  br i1 %124, label %138, label %130, !dbg !4168

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !4050, metadata !DIExpression()), !dbg !4064
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %127, metadata !4050, metadata !DIExpression()), !dbg !4064
  %128 = load i8, i8* %127, align 1, !dbg !4170, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %128, metadata !4059, metadata !DIExpression()), !dbg !4064
  %129 = icmp eq i8 %128, 48, !dbg !4145
  br i1 %129, label %125, label %121, !dbg !4147, !llvm.loop !4171

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8* %131, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %132, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %123, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %122, metadata !4050, metadata !DIExpression()), !dbg !4064
  %133 = zext i8 %123 to i32, !dbg !4173
  %134 = icmp eq i8 %123, %132, !dbg !4174
  %135 = add nsw i32 %133, -48, !dbg !4175
  %136 = icmp ult i32 %135, 10, !dbg !4175
  %137 = and i1 %136, %134, !dbg !4175
  br i1 %137, label %143, label %157, !dbg !4176

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !4056, metadata !DIExpression()), !dbg !4064
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !4177
  call void @llvm.dbg.value(metadata i8* %140, metadata !4056, metadata !DIExpression()), !dbg !4064
  %141 = load i8, i8* %140, align 1, !dbg !4178, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %141, metadata !4060, metadata !DIExpression()), !dbg !4064
  %142 = icmp eq i8 %141, 48, !dbg !4167
  br i1 %142, label %138, label %130, !dbg !4168, !llvm.loop !4179

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %144, metadata !4050, metadata !DIExpression()), !dbg !4064
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %146, metadata !4050, metadata !DIExpression()), !dbg !4064
  %147 = load i8, i8* %146, align 1, !dbg !4183, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %147, metadata !4059, metadata !DIExpression()), !dbg !4064
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4184
  call void @llvm.dbg.value(metadata i8* %148, metadata !4056, metadata !DIExpression()), !dbg !4064
  %149 = load i8, i8* %148, align 1, !dbg !4185, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %149, metadata !4060, metadata !DIExpression()), !dbg !4064
  %150 = zext i8 %147 to i32, !dbg !4173
  %151 = icmp eq i8 %147, %149, !dbg !4174
  %152 = add nsw i32 %150, -48, !dbg !4175
  %153 = icmp ult i32 %152, 10, !dbg !4175
  %154 = and i1 %151, %153, !dbg !4175
  br i1 %154, label %143, label %155, !dbg !4176

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !4173
  br label %157, !dbg !4186

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4187
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4064
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4173
  call void @llvm.dbg.value(metadata i8* %159, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %160, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %161, metadata !4060, metadata !DIExpression()), !dbg !4064
  %163 = zext i8 %161 to i32, !dbg !4186
  %164 = sub nsw i32 %162, %163, !dbg !4190
  call void @llvm.dbg.value(metadata i32 %164, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %160, metadata !4050, metadata !DIExpression()), !dbg !4064
  %165 = icmp ult i32 %158, 10, !dbg !4187
  br i1 %165, label %170, label %166, !dbg !4191

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4192
  call void @llvm.dbg.value(metadata i64 %167, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %161, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %159, metadata !4056, metadata !DIExpression()), !dbg !4064
  %168 = add nsw i32 %163, -48, !dbg !4193
  %169 = icmp ult i32 %168, 10, !dbg !4193
  br i1 %169, label %179, label %188, !dbg !4196

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %172, metadata !4050, metadata !DIExpression()), !dbg !4064
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %173, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4059, metadata !DIExpression()), !dbg !4064
  %174 = load i8, i8* %173, align 1, !dbg !4198, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %174, metadata !4059, metadata !DIExpression()), !dbg !4064
  %175 = add i64 %171, 1, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %175, metadata !4062, metadata !DIExpression()), !dbg !4064
  %176 = zext i8 %174 to i32, !dbg !4187
  %177 = add nsw i32 %176, -48, !dbg !4187
  %178 = icmp ult i32 %177, 10, !dbg !4187
  br i1 %178, label %170, label %166, !dbg !4191, !llvm.loop !4200

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %181, metadata !4056, metadata !DIExpression()), !dbg !4064
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !4202
  call void @llvm.dbg.value(metadata i8* %182, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 undef, metadata !4060, metadata !DIExpression()), !dbg !4064
  %183 = load i8, i8* %182, align 1, !dbg !4203, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %183, metadata !4060, metadata !DIExpression()), !dbg !4064
  %184 = add i64 %180, 1, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %184, metadata !4063, metadata !DIExpression()), !dbg !4064
  %185 = zext i8 %183 to i32, !dbg !4193
  %186 = add nsw i32 %185, -48, !dbg !4193
  %187 = icmp ult i32 %186, 10, !dbg !4193
  br i1 %187, label %179, label %188, !dbg !4196, !llvm.loop !4205

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4207
  call void @llvm.dbg.value(metadata i64 %189, metadata !4063, metadata !DIExpression()), !dbg !4064
  %190 = icmp eq i64 %167, %189, !dbg !4208
  br i1 %190, label %194, label %191, !dbg !4210

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4211
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4212
  br label %197, !dbg !4213

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4214
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4216
  br label %197, !dbg !4216

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4217
  ret i32 %198, !dbg !4218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32 %0, i32 %1, i8* %2, %struct.__va_list_tag* %3) local_unnamed_addr #8 !dbg !4219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4223, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i32 %1, metadata !4224, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8* %2, metadata !4225, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !4226, metadata !DIExpression()), !dbg !4227
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.__va_list_tag* %5) local_unnamed_addr #8 !dbg !4230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4232, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 %1, metadata !4233, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i8* %2, metadata !4234, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 %3, metadata !4235, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i8* %4, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4237, metadata !DIExpression()), !dbg !4239
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #13, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %7, metadata !4238, metadata !DIExpression()), !dbg !4239
  %8 = icmp eq i8* %7, null, !dbg !4241
  br i1 %8, label %13, label %9, !dbg !4243

9:                                                ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !4244
  br i1 %10, label %12, label %11, !dbg !4247

11:                                               ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #13, !dbg !4248
  br label %17, !dbg !4248

12:                                               ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #13, !dbg !4249
  br label %17

13:                                               ; preds = %6
  %14 = tail call i32* @__errno_location() #26, !dbg !4250
  %15 = load i32, i32* %14, align 4, !dbg !4250, !tbaa !1201
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #13, !dbg !4252
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #13, !dbg !4253
  tail call void @abort() #24, !dbg !4254
  unreachable, !dbg !4254

17:                                               ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #13, !dbg !4255
  ret void, !dbg !4256
}

declare !dbg !431 void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4257 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4265, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8* %1, metadata !4266, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8* %2, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8* %3, metadata !4268, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i8** %4, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %5, metadata !4270, metadata !DIExpression()), !dbg !4271
  %7 = icmp eq i8* %1, null, !dbg !4272
  br i1 %7, label %10, label %8, !dbg !4274

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !4275
  br label %12, !dbg !4275

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !4276
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.121, i64 0, i64 0), i32 5) #13, !dbg !4277
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #13, !dbg !4277
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4278
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.123, i64 0, i64 0), i32 5) #13, !dbg !4279
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.124, i64 0, i64 0)) #13, !dbg !4279
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4280
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
  ], !dbg !4281

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.125, i64 0, i64 0), i32 5) #13, !dbg !4282
  %21 = load i8*, i8** %4, align 8, !dbg !4282, !tbaa !1129
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #13, !dbg !4282
  br label %147, !dbg !4284

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.126, i64 0, i64 0), i32 5) #13, !dbg !4285
  %25 = load i8*, i8** %4, align 8, !dbg !4285, !tbaa !1129
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4285
  %27 = load i8*, i8** %26, align 8, !dbg !4285, !tbaa !1129
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #13, !dbg !4285
  br label %147, !dbg !4286

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.127, i64 0, i64 0), i32 5) #13, !dbg !4287
  %31 = load i8*, i8** %4, align 8, !dbg !4287, !tbaa !1129
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4287
  %33 = load i8*, i8** %32, align 8, !dbg !4287, !tbaa !1129
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4287
  %35 = load i8*, i8** %34, align 8, !dbg !4287, !tbaa !1129
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #13, !dbg !4287
  br label %147, !dbg !4288

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.128, i64 0, i64 0), i32 5) #13, !dbg !4289
  %39 = load i8*, i8** %4, align 8, !dbg !4289, !tbaa !1129
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4289
  %41 = load i8*, i8** %40, align 8, !dbg !4289, !tbaa !1129
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4289
  %43 = load i8*, i8** %42, align 8, !dbg !4289, !tbaa !1129
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4289
  %45 = load i8*, i8** %44, align 8, !dbg !4289, !tbaa !1129
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #13, !dbg !4289
  br label %147, !dbg !4290

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.129, i64 0, i64 0), i32 5) #13, !dbg !4291
  %49 = load i8*, i8** %4, align 8, !dbg !4291, !tbaa !1129
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4291
  %51 = load i8*, i8** %50, align 8, !dbg !4291, !tbaa !1129
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4291
  %53 = load i8*, i8** %52, align 8, !dbg !4291, !tbaa !1129
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4291
  %55 = load i8*, i8** %54, align 8, !dbg !4291, !tbaa !1129
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4291
  %57 = load i8*, i8** %56, align 8, !dbg !4291, !tbaa !1129
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #13, !dbg !4291
  br label %147, !dbg !4292

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.130, i64 0, i64 0), i32 5) #13, !dbg !4293
  %61 = load i8*, i8** %4, align 8, !dbg !4293, !tbaa !1129
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4293
  %63 = load i8*, i8** %62, align 8, !dbg !4293, !tbaa !1129
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4293
  %65 = load i8*, i8** %64, align 8, !dbg !4293, !tbaa !1129
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4293
  %67 = load i8*, i8** %66, align 8, !dbg !4293, !tbaa !1129
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4293
  %69 = load i8*, i8** %68, align 8, !dbg !4293, !tbaa !1129
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4293
  %71 = load i8*, i8** %70, align 8, !dbg !4293, !tbaa !1129
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #13, !dbg !4293
  br label %147, !dbg !4294

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.131, i64 0, i64 0), i32 5) #13, !dbg !4295
  %75 = load i8*, i8** %4, align 8, !dbg !4295, !tbaa !1129
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4295
  %77 = load i8*, i8** %76, align 8, !dbg !4295, !tbaa !1129
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4295
  %79 = load i8*, i8** %78, align 8, !dbg !4295, !tbaa !1129
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4295
  %81 = load i8*, i8** %80, align 8, !dbg !4295, !tbaa !1129
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4295
  %83 = load i8*, i8** %82, align 8, !dbg !4295, !tbaa !1129
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4295
  %85 = load i8*, i8** %84, align 8, !dbg !4295, !tbaa !1129
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4295
  %87 = load i8*, i8** %86, align 8, !dbg !4295, !tbaa !1129
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #13, !dbg !4295
  br label %147, !dbg !4296

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.132, i64 0, i64 0), i32 5) #13, !dbg !4297
  %91 = load i8*, i8** %4, align 8, !dbg !4297, !tbaa !1129
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4297
  %93 = load i8*, i8** %92, align 8, !dbg !4297, !tbaa !1129
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4297
  %95 = load i8*, i8** %94, align 8, !dbg !4297, !tbaa !1129
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4297
  %97 = load i8*, i8** %96, align 8, !dbg !4297, !tbaa !1129
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4297
  %99 = load i8*, i8** %98, align 8, !dbg !4297, !tbaa !1129
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4297
  %101 = load i8*, i8** %100, align 8, !dbg !4297, !tbaa !1129
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4297
  %103 = load i8*, i8** %102, align 8, !dbg !4297, !tbaa !1129
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4297
  %105 = load i8*, i8** %104, align 8, !dbg !4297, !tbaa !1129
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #13, !dbg !4297
  br label %147, !dbg !4298

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.133, i64 0, i64 0), i32 5) #13, !dbg !4299
  %109 = load i8*, i8** %4, align 8, !dbg !4299, !tbaa !1129
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4299
  %111 = load i8*, i8** %110, align 8, !dbg !4299, !tbaa !1129
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4299
  %113 = load i8*, i8** %112, align 8, !dbg !4299, !tbaa !1129
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4299
  %115 = load i8*, i8** %114, align 8, !dbg !4299, !tbaa !1129
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4299
  %117 = load i8*, i8** %116, align 8, !dbg !4299, !tbaa !1129
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4299
  %119 = load i8*, i8** %118, align 8, !dbg !4299, !tbaa !1129
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4299
  %121 = load i8*, i8** %120, align 8, !dbg !4299, !tbaa !1129
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4299
  %123 = load i8*, i8** %122, align 8, !dbg !4299, !tbaa !1129
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4299
  %125 = load i8*, i8** %124, align 8, !dbg !4299, !tbaa !1129
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #13, !dbg !4299
  br label %147, !dbg !4300

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.134, i64 0, i64 0), i32 5) #13, !dbg !4301
  %129 = load i8*, i8** %4, align 8, !dbg !4301, !tbaa !1129
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4301
  %131 = load i8*, i8** %130, align 8, !dbg !4301, !tbaa !1129
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4301
  %133 = load i8*, i8** %132, align 8, !dbg !4301, !tbaa !1129
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4301
  %135 = load i8*, i8** %134, align 8, !dbg !4301, !tbaa !1129
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4301
  %137 = load i8*, i8** %136, align 8, !dbg !4301, !tbaa !1129
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4301
  %139 = load i8*, i8** %138, align 8, !dbg !4301, !tbaa !1129
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4301
  %141 = load i8*, i8** %140, align 8, !dbg !4301, !tbaa !1129
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4301
  %143 = load i8*, i8** %142, align 8, !dbg !4301, !tbaa !1129
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4301
  %145 = load i8*, i8** %144, align 8, !dbg !4301, !tbaa !1129
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #13, !dbg !4301
  br label %147, !dbg !4302

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4304 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4308, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8* %1, metadata !4309, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8* %2, metadata !4310, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8* %3, metadata !4311, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i8** %4, metadata !4312, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 0, metadata !4313, metadata !DIExpression()), !dbg !4314
  br label %6, !dbg !4315

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4317
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4318
  %9 = load i8*, i8** %8, align 8, !dbg !4318, !tbaa !1129
  %10 = icmp eq i8* %9, null, !dbg !4320
  %11 = add i64 %7, 1, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %11, metadata !4313, metadata !DIExpression()), !dbg !4314
  br i1 %10, label %12, label %6, !dbg !4320, !llvm.loop !4322

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %7, metadata !4313, metadata !DIExpression()), !dbg !4314
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4324
  ret void, !dbg !4325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4326 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4337, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i8* %1, metadata !4338, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i8* %2, metadata !4339, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i8* %3, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4341, metadata !DIExpression()), !dbg !4345
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4346
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4346
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4343, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 0, metadata !4342, metadata !DIExpression()), !dbg !4345
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4348
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4348
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4348
  %11 = load i32, i32* %8, align 8, !dbg !4351
  %12 = icmp ult i32 %11, 41, !dbg !4351
  br i1 %12, label %13, label %18, !dbg !4351

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4351
  %15 = zext i32 %11 to i64, !dbg !4351
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4351
  %17 = add nuw nsw i32 %11, 8, !dbg !4351
  store i32 %17, i32* %8, align 8, !dbg !4351
  br label %21, !dbg !4351

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4351
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4351
  store i8* %20, i8** %9, align 8, !dbg !4351
  br label %21, !dbg !4351

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4351
  %25 = load i8*, i8** %24, align 8, !dbg !4351
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4352
  store i8* %25, i8** %26, align 16, !dbg !4353, !tbaa !1129
  %27 = icmp eq i8* %25, null, !dbg !4354
  br i1 %27, label %30, label %28, !dbg !4355

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4342, metadata !DIExpression()), !dbg !4345
  %29 = icmp ult i32 %22, 41, !dbg !4351
  br i1 %29, label %35, label %32, !dbg !4351

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4356
  call void @llvm.dbg.value(metadata i64 %31, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 %31, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4357
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !4358
  ret void, !dbg !4358

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4351
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4351
  store i8* %34, i8** %9, align 8, !dbg !4351
  br label %40, !dbg !4351

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4351
  %37 = zext i32 %22 to i64, !dbg !4351
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4351
  %39 = add nuw nsw i32 %22, 8, !dbg !4351
  store i32 %39, i32* %8, align 8, !dbg !4351
  br label %40, !dbg !4351

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4351
  %44 = load i8*, i8** %43, align 8, !dbg !4351
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4352
  store i8* %44, i8** %45, align 8, !dbg !4353, !tbaa !1129
  %46 = icmp eq i8* %44, null, !dbg !4354
  br i1 %46, label %30, label %47, !dbg !4355

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4342, metadata !DIExpression()), !dbg !4345
  %48 = icmp ult i32 %41, 41, !dbg !4351
  br i1 %48, label %52, label %49, !dbg !4351

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4351
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4351
  store i8* %51, i8** %9, align 8, !dbg !4351
  br label %57, !dbg !4351

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4351
  %54 = zext i32 %41 to i64, !dbg !4351
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4351
  %56 = add nuw nsw i32 %41, 8, !dbg !4351
  store i32 %56, i32* %8, align 8, !dbg !4351
  br label %57, !dbg !4351

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4351
  %61 = load i8*, i8** %60, align 8, !dbg !4351
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4352
  store i8* %61, i8** %62, align 16, !dbg !4353, !tbaa !1129
  %63 = icmp eq i8* %61, null, !dbg !4354
  br i1 %63, label %30, label %64, !dbg !4355

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4342, metadata !DIExpression()), !dbg !4345
  %65 = icmp ult i32 %58, 41, !dbg !4351
  br i1 %65, label %69, label %66, !dbg !4351

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4351
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4351
  store i8* %68, i8** %9, align 8, !dbg !4351
  br label %74, !dbg !4351

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4351
  %71 = zext i32 %58 to i64, !dbg !4351
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4351
  %73 = add nuw nsw i32 %58, 8, !dbg !4351
  store i32 %73, i32* %8, align 8, !dbg !4351
  br label %74, !dbg !4351

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4351
  %78 = load i8*, i8** %77, align 8, !dbg !4351
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4352
  store i8* %78, i8** %79, align 8, !dbg !4353, !tbaa !1129
  %80 = icmp eq i8* %78, null, !dbg !4354
  br i1 %80, label %30, label %81, !dbg !4355

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4342, metadata !DIExpression()), !dbg !4345
  %82 = icmp ult i32 %75, 41, !dbg !4351
  br i1 %82, label %86, label %83, !dbg !4351

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4351
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4351
  store i8* %85, i8** %9, align 8, !dbg !4351
  br label %91, !dbg !4351

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4351
  %88 = zext i32 %75 to i64, !dbg !4351
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4351
  %90 = add nuw nsw i32 %75, 8, !dbg !4351
  store i32 %90, i32* %8, align 8, !dbg !4351
  br label %91, !dbg !4351

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4351
  %95 = load i8*, i8** %94, align 8, !dbg !4351
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4352
  store i8* %95, i8** %96, align 16, !dbg !4353, !tbaa !1129
  %97 = icmp eq i8* %95, null, !dbg !4354
  br i1 %97, label %30, label %98, !dbg !4355

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4342, metadata !DIExpression()), !dbg !4345
  %99 = icmp ult i32 %92, 41, !dbg !4351
  br i1 %99, label %103, label %100, !dbg !4351

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4351
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4351
  store i8* %102, i8** %9, align 8, !dbg !4351
  br label %108, !dbg !4351

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4351
  %105 = zext i32 %92 to i64, !dbg !4351
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4351
  %107 = add nuw nsw i32 %92, 8, !dbg !4351
  store i32 %107, i32* %8, align 8, !dbg !4351
  br label %108, !dbg !4351

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4351
  %111 = load i8*, i8** %110, align 8, !dbg !4351
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4352
  store i8* %111, i8** %112, align 8, !dbg !4353, !tbaa !1129
  %113 = icmp eq i8* %111, null, !dbg !4354
  br i1 %113, label %30, label %114, !dbg !4355

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4342, metadata !DIExpression()), !dbg !4345
  %115 = load i8*, i8** %9, align 8, !dbg !4351
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4351
  store i8* %116, i8** %9, align 8, !dbg !4351
  %117 = bitcast i8* %115 to i8**, !dbg !4351
  %118 = load i8*, i8** %117, align 8, !dbg !4351
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4352
  store i8* %118, i8** %119, align 16, !dbg !4353, !tbaa !1129
  %120 = icmp eq i8* %118, null, !dbg !4354
  br i1 %120, label %30, label %121, !dbg !4355

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4342, metadata !DIExpression()), !dbg !4345
  %122 = load i8*, i8** %9, align 8, !dbg !4351
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4351
  store i8* %123, i8** %9, align 8, !dbg !4351
  %124 = bitcast i8* %122 to i8**, !dbg !4351
  %125 = load i8*, i8** %124, align 8, !dbg !4351
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4352
  store i8* %125, i8** %126, align 8, !dbg !4353, !tbaa !1129
  %127 = icmp eq i8* %125, null, !dbg !4354
  br i1 %127, label %30, label %128, !dbg !4355

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4342, metadata !DIExpression()), !dbg !4345
  %129 = load i8*, i8** %9, align 8, !dbg !4351
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4351
  store i8* %130, i8** %9, align 8, !dbg !4351
  %131 = bitcast i8* %129 to i8**, !dbg !4351
  %132 = load i8*, i8** %131, align 8, !dbg !4351
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4352
  store i8* %132, i8** %133, align 16, !dbg !4353, !tbaa !1129
  %134 = icmp eq i8* %132, null, !dbg !4354
  br i1 %134, label %30, label %135, !dbg !4355

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4342, metadata !DIExpression()), !dbg !4345
  %136 = load i8*, i8** %9, align 8, !dbg !4351
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4351
  store i8* %137, i8** %9, align 8, !dbg !4351
  %138 = bitcast i8* %136 to i8**, !dbg !4351
  %139 = load i8*, i8** %138, align 8, !dbg !4351
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4352
  store i8* %139, i8** %140, align 8, !dbg !4353, !tbaa !1129
  %141 = icmp eq i8* %139, null, !dbg !4354
  %142 = select i1 %141, i64 9, i64 10, !dbg !4355
  br label %30, !dbg !4355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4359 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4363, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i8* %1, metadata !4364, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i8* %2, metadata !4365, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i8* %3, metadata !4366, metadata !DIExpression()), !dbg !4372
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4373
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4367, metadata !DIExpression()), !dbg !4374
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4375
  call void @llvm.va_start(i8* nonnull %6), !dbg !4375
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4376
  call void @llvm.va_end(i8* nonnull %6), !dbg !4377
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !4378
  ret void, !dbg !4378
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4379 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4380, !tbaa !1129
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4380
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.137, i64 0, i64 0), i32 5) #13, !dbg !4381
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.138, i64 0, i64 0)) #13, !dbg !4381
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.139, i64 0, i64 0), i32 5) #13, !dbg !4382
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.140, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.141, i64 0, i64 0)) #13, !dbg !4382
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.142, i64 0, i64 0), i32 5) #13, !dbg !4383
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.143, i64 0, i64 0)) #13, !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4385 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4389, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %1, metadata !4390, metadata !DIExpression()), !dbg !4391
  %3 = udiv i64 9223372036854775807, %1, !dbg !4392
  %4 = icmp ult i64 %3, %0, !dbg !4392
  br i1 %4, label %5, label %6, !dbg !4394

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4395
  unreachable, !dbg !4395

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %7, metadata !4397, metadata !DIExpression()) #13, !dbg !4403
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !4405
  call void @llvm.dbg.value(metadata i8* %8, metadata !4402, metadata !DIExpression()) #13, !dbg !4403
  %9 = icmp eq i8* %8, null, !dbg !4406
  %10 = icmp ne i64 %7, 0, !dbg !4408
  %11 = and i1 %10, %9, !dbg !4409
  br i1 %11, label %12, label %13, !dbg !4409

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !4410
  unreachable, !dbg !4410

13:                                               ; preds = %6
  ret i8* %8, !dbg !4411
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4398 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4397, metadata !DIExpression()), !dbg !4412
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4413
  call void @llvm.dbg.value(metadata i8* %2, metadata !4402, metadata !DIExpression()), !dbg !4412
  %3 = icmp eq i8* %2, null, !dbg !4414
  %4 = icmp ne i64 %0, 0, !dbg !4415
  %5 = and i1 %4, %3, !dbg !4416
  br i1 %5, label %6, label %7, !dbg !4416

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4417
  unreachable, !dbg !4417

7:                                                ; preds = %1
  ret i8* %2, !dbg !4418
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !4419 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4423, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4424, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %2, metadata !4425, metadata !DIExpression()), !dbg !4426
  %4 = udiv i64 9223372036854775807, %2, !dbg !4427
  %5 = icmp ult i64 %4, %1, !dbg !4427
  br i1 %5, label %6, label %7, !dbg !4429

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !4430
  unreachable, !dbg !4430

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4431
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()) #13, !dbg !4438
  call void @llvm.dbg.value(metadata i64 %8, metadata !4437, metadata !DIExpression()) #13, !dbg !4438
  %9 = icmp eq i64 %8, 0, !dbg !4440
  %10 = icmp ne i8* %0, null, !dbg !4442
  %11 = and i1 %10, %9, !dbg !4443
  br i1 %11, label %12, label %13, !dbg !4443

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !4444
  br label %19, !dbg !4446

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !4447
  call void @llvm.dbg.value(metadata i8* %14, metadata !4432, metadata !DIExpression()) #13, !dbg !4438
  %15 = icmp eq i8* %14, null, !dbg !4448
  %16 = icmp ne i64 %8, 0, !dbg !4450
  %17 = and i1 %16, %15, !dbg !4451
  br i1 %17, label %18, label %19, !dbg !4451

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4452
  unreachable, !dbg !4452

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4438
  ret i8* %20, !dbg !4453
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4433 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4437, metadata !DIExpression()), !dbg !4454
  %3 = icmp eq i64 %1, 0, !dbg !4455
  %4 = icmp ne i8* %0, null, !dbg !4456
  %5 = and i1 %4, %3, !dbg !4457
  br i1 %5, label %6, label %7, !dbg !4457

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !4458
  br label %13, !dbg !4459

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %8, metadata !4432, metadata !DIExpression()), !dbg !4454
  %9 = icmp eq i8* %8, null, !dbg !4461
  %10 = icmp ne i64 %1, 0, !dbg !4462
  %11 = and i1 %10, %9, !dbg !4463
  br i1 %11, label %12, label %13, !dbg !4463

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4464
  unreachable, !dbg !4464

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4454
  ret i8* %14, !dbg !4465
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !480 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !485, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64* %1, metadata !486, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %2, metadata !487, metadata !DIExpression()), !dbg !4466
  %4 = load i64, i64* %1, align 8, !dbg !4467, !tbaa !1577
  call void @llvm.dbg.value(metadata i64 %4, metadata !488, metadata !DIExpression()), !dbg !4466
  %5 = icmp eq i8* %0, null, !dbg !4468
  br i1 %5, label %6, label %20, !dbg !4470

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4471
  br i1 %7, label %8, label %13, !dbg !4474

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %9, metadata !488, metadata !DIExpression()), !dbg !4466
  %10 = icmp ugt i64 %2, 128, !dbg !4477
  %11 = zext i1 %10 to i64, !dbg !4477
  %12 = add nuw nsw i64 %9, %11, !dbg !4478
  call void @llvm.dbg.value(metadata i64 %12, metadata !488, metadata !DIExpression()), !dbg !4466
  br label %13, !dbg !4479

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4466
  call void @llvm.dbg.value(metadata i64 %14, metadata !488, metadata !DIExpression()), !dbg !4466
  %15 = udiv i64 9223372036854775807, %2, !dbg !4480
  %16 = icmp ult i64 %15, %14, !dbg !4480
  br i1 %16, label %19, label %17, !dbg !4482

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !4466
  store i64 %14, i64* %1, align 8, !dbg !4483, !tbaa !1577
  %18 = mul i64 %14, %2, !dbg !4484
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()) #13, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %28, metadata !4437, metadata !DIExpression()) #13, !dbg !4485
  br label %31, !dbg !4487

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4488
  unreachable, !dbg !4488

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4489
  %22 = icmp ugt i64 %21, %4, !dbg !4492
  br i1 %22, label %24, label %23, !dbg !4493

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !4494
  unreachable, !dbg !4494

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4495
  %26 = add nuw i64 %4, 1, !dbg !4496
  %27 = add i64 %26, %25, !dbg !4497
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !4466
  store i64 %27, i64* %1, align 8, !dbg !4483, !tbaa !1577
  %28 = mul i64 %27, %2, !dbg !4484
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()) #13, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %28, metadata !4437, metadata !DIExpression()) #13, !dbg !4485
  %29 = icmp eq i64 %28, 0, !dbg !4498
  br i1 %29, label %30, label %31, !dbg !4487

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #13, !dbg !4499
  br label %38, !dbg !4500

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #13, !dbg !4501
  call void @llvm.dbg.value(metadata i8* %33, metadata !4432, metadata !DIExpression()) #13, !dbg !4485
  %34 = icmp eq i8* %33, null, !dbg !4502
  %35 = icmp ne i64 %32, 0, !dbg !4503
  %36 = and i1 %35, %34, !dbg !4504
  br i1 %36, label %37, label %38, !dbg !4504

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !4505
  unreachable, !dbg !4505

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4485
  ret i8* %39, !dbg !4506
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4507 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %0, metadata !4397, metadata !DIExpression()) #13, !dbg !4511
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !4513
  call void @llvm.dbg.value(metadata i8* %2, metadata !4402, metadata !DIExpression()) #13, !dbg !4511
  %3 = icmp eq i8* %2, null, !dbg !4514
  %4 = icmp ne i64 %0, 0, !dbg !4515
  %5 = and i1 %4, %3, !dbg !4516
  br i1 %5, label %6, label %7, !dbg !4516

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4517
  unreachable, !dbg !4517

7:                                                ; preds = %1
  ret i8* %2, !dbg !4518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4519 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4523, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64* %1, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i8* %0, metadata !485, metadata !DIExpression()) #13, !dbg !4526
  call void @llvm.dbg.value(metadata i64* %1, metadata !486, metadata !DIExpression()) #13, !dbg !4526
  call void @llvm.dbg.value(metadata i64 1, metadata !487, metadata !DIExpression()) #13, !dbg !4526
  %3 = load i64, i64* %1, align 8, !dbg !4528, !tbaa !1577
  call void @llvm.dbg.value(metadata i64 %3, metadata !488, metadata !DIExpression()) #13, !dbg !4526
  %4 = icmp eq i8* %0, null, !dbg !4529
  br i1 %4, label %5, label %12, !dbg !4530

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4531
  br i1 %6, label %9, label %7, !dbg !4532

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !488, metadata !DIExpression()) #13, !dbg !4526
  %8 = icmp slt i64 %3, 0, !dbg !4533
  br i1 %8, label %11, label %9, !dbg !4534

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #13, !dbg !4526
  store i64 %10, i64* %1, align 8, !dbg !4535, !tbaa !1577
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()) #13, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %18, metadata !4437, metadata !DIExpression()) #13, !dbg !4536
  br label %21, !dbg !4538

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4539
  unreachable, !dbg !4539

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4540
  br i1 %13, label %15, label %14, !dbg !4541

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !4542
  unreachable, !dbg !4542

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4543
  %17 = add nuw nsw i64 %3, 1, !dbg !4544
  %18 = add nuw nsw i64 %17, %16, !dbg !4545
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #13, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #13, !dbg !4526
  store i64 %18, i64* %1, align 8, !dbg !4535, !tbaa !1577
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()) #13, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %18, metadata !4437, metadata !DIExpression()) #13, !dbg !4536
  %19 = icmp eq i64 %18, 0, !dbg !4546
  br i1 %19, label %20, label %21, !dbg !4538

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #13, !dbg !4547
  br label %28, !dbg !4548

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #13, !dbg !4549
  call void @llvm.dbg.value(metadata i8* %23, metadata !4432, metadata !DIExpression()) #13, !dbg !4536
  %24 = icmp eq i8* %23, null, !dbg !4550
  %25 = icmp ne i64 %22, 0, !dbg !4551
  %26 = and i1 %25, %24, !dbg !4552
  br i1 %26, label %27, label %28, !dbg !4552

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !4553
  unreachable, !dbg !4553

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4536
  ret i8* %29, !dbg !4554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4555 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %0, metadata !4559, metadata !DIExpression()) #13, !dbg !4564
  call void @llvm.dbg.value(metadata i64 1, metadata !4562, metadata !DIExpression()) #13, !dbg !4564
  %2 = icmp slt i64 %0, 0, !dbg !4566
  br i1 %2, label %6, label %3, !dbg !4568

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #13, !dbg !4569
  call void @llvm.dbg.value(metadata i8* %4, metadata !4563, metadata !DIExpression()) #13, !dbg !4564
  %5 = icmp eq i8* %4, null, !dbg !4570
  br i1 %5, label %6, label %7, !dbg !4571

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !4572
  unreachable, !dbg !4572

7:                                                ; preds = %3
  ret i8* %4, !dbg !4573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4560 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4559, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %1, metadata !4562, metadata !DIExpression()), !dbg !4574
  %3 = udiv i64 9223372036854775807, %1, !dbg !4575
  %4 = icmp ult i64 %3, %0, !dbg !4575
  br i1 %4, label %8, label %5, !dbg !4576

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !4577
  call void @llvm.dbg.value(metadata i8* %6, metadata !4563, metadata !DIExpression()), !dbg !4574
  %7 = icmp eq i8* %6, null, !dbg !4578
  br i1 %7, label %8, label %9, !dbg !4579

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !4580
  unreachable, !dbg !4580

9:                                                ; preds = %5
  ret i8* %6, !dbg !4581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4586, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %1, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %1, metadata !4397, metadata !DIExpression()) #13, !dbg !4589
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %3, metadata !4402, metadata !DIExpression()) #13, !dbg !4589
  %4 = icmp eq i8* %3, null, !dbg !4592
  %5 = icmp ne i64 %1, 0, !dbg !4593
  %6 = and i1 %5, %4, !dbg !4594
  br i1 %6, label %7, label %8, !dbg !4594

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4595
  unreachable, !dbg !4595

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4596, metadata !DIExpression()) #13, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %0, metadata !4603, metadata !DIExpression()) #13, !dbg !4605
  call void @llvm.dbg.value(metadata i64 %1, metadata !4604, metadata !DIExpression()) #13, !dbg !4605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #13, !dbg !4607
  ret i8* %3, !dbg !4608
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4609 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4611, metadata !DIExpression()), !dbg !4612
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4613
  %3 = add i64 %2, 1, !dbg !4614
  call void @llvm.dbg.value(metadata i8* %0, metadata !4586, metadata !DIExpression()) #13, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %3, metadata !4587, metadata !DIExpression()) #13, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %3, metadata !4397, metadata !DIExpression()) #13, !dbg !4617
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !4619
  call void @llvm.dbg.value(metadata i8* %4, metadata !4402, metadata !DIExpression()) #13, !dbg !4617
  %5 = icmp eq i8* %4, null, !dbg !4620
  %6 = icmp ne i64 %3, 0, !dbg !4621
  %7 = and i1 %6, %5, !dbg !4622
  br i1 %7, label %8, label %9, !dbg !4622

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4623
  unreachable, !dbg !4623

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4596, metadata !DIExpression()) #13, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %0, metadata !4603, metadata !DIExpression()) #13, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %3, metadata !4604, metadata !DIExpression()) #13, !dbg !4624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #13, !dbg !4626
  ret i8* %4, !dbg !4627
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4628 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4629, !tbaa !1201
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #13, !dbg !4630
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i64 0, i64 0), i8* %2) #13, !dbg !4631
  tail call void @abort() #24, !dbg !4632
  unreachable, !dbg !4632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8* %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !4633 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4650, metadata !DIExpression()), !dbg !4674
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4644, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4645, metadata !DIExpression()), !dbg !4680
  %5 = bitcast i8** %4 to i8*, !dbg !4681
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13, !dbg !4681
  call void @llvm.dbg.value(metadata i64 0, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i8* %0, metadata !4649, metadata !DIExpression()), !dbg !4682
  br label %6, !dbg !4683

6:                                                ; preds = %81, %2
  %7 = phi i64 [ 0, %2 ], [ %83, %81 ], !dbg !4682
  %8 = phi i8* [ %0, %2 ], [ %82, %81 ], !dbg !4684
  call void @llvm.dbg.value(metadata i8* %8, metadata !4649, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  %9 = load i8, i8* %8, align 1, !dbg !4685, !tbaa !1280
  switch i8 %9, label %86 [
    i8 0, label %10
    i8 37, label %77
  ], !dbg !4686

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4647, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %7, metadata !4655, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4656, metadata !DIExpression()) #13, !dbg !4687
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4688
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #13, !dbg !4688
  call void @llvm.dbg.value(metadata i64 0, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4689
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #13, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %7, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i64 0, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  %13 = icmp eq i64 %7, 0, !dbg !4690
  br i1 %13, label %14, label %16, !dbg !4691

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %40, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.va_end(i8* nonnull %11) #13, !dbg !4692
  %15 = call noalias i8* @xmalloc(i64 1) #13, !dbg !4693
  call void @llvm.dbg.value(metadata i8* %49, metadata !4657, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %49, metadata !4660, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %7, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  br label %74, !dbg !4694

16:                                               ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4695
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4695
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4695
  %20 = load i8*, i8** %19, align 16, !dbg !4695
  %21 = load i32, i32* %17, align 16, !dbg !4696
  br label %22, !dbg !4691

22:                                               ; preds = %34, %16
  %23 = phi i32 [ %21, %16 ], [ %35, %34 ], !dbg !4696
  %24 = phi i64 [ 0, %16 ], [ %40, %34 ]
  %25 = phi i64 [ %7, %16 ], [ %41, %34 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %25, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  %26 = icmp ult i32 %23, 41, !dbg !4696
  br i1 %26, label %27, label %31, !dbg !4696

27:                                               ; preds = %22
  %28 = zext i32 %23 to i64, !dbg !4696
  %29 = getelementptr i8, i8* %20, i64 %28, !dbg !4696
  %30 = add nuw nsw i32 %23, 8, !dbg !4696
  store i32 %30, i32* %17, align 16, !dbg !4696
  br label %34, !dbg !4696

31:                                               ; preds = %22
  %32 = load i8*, i8** %18, align 8, !dbg !4696
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !4696
  store i8* %33, i8** %18, align 8, !dbg !4696
  br label %34, !dbg !4696

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %23, %31 ]
  %36 = phi i8* [ %29, %27 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !4696
  %38 = load i8*, i8** %37, align 8, !dbg !4696
  call void @llvm.dbg.value(metadata i8* %38, metadata !4661, metadata !DIExpression()) #13, !dbg !4695
  %39 = call i64 @strlen(i8* nonnull dereferenceable(1) %38) #23, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %24, metadata !4698, metadata !DIExpression()) #13, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %39, metadata !4704, metadata !DIExpression()) #13, !dbg !4706
  call void @llvm.dbg.value(metadata i64 undef, metadata !4705, metadata !DIExpression()) #13, !dbg !4706
  %40 = call i64 @llvm.uadd.sat.i64(i64 %24, i64 %39) #13, !dbg !4708
  call void @llvm.dbg.value(metadata i64 %40, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  %41 = add i64 %25, -1, !dbg !4709
  call void @llvm.dbg.value(metadata i64 %41, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  %42 = icmp eq i64 %41, 0, !dbg !4690
  br i1 %42, label %43, label %22, !dbg !4691, !llvm.loop !4710

43:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %40, metadata !4658, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.va_end(i8* nonnull %11) #13, !dbg !4692
  %44 = icmp ugt i64 %40, 2147483647, !dbg !4712
  br i1 %44, label %45, label %47, !dbg !4714

45:                                               ; preds = %43
  %46 = tail call i32* @__errno_location() #26, !dbg !4715
  store i32 75, i32* %46, align 4, !dbg !4717, !tbaa !1201
  br label %84, !dbg !4718

47:                                               ; preds = %43
  %48 = add nuw nsw i64 %40, 1, !dbg !4693
  %49 = call noalias i8* @xmalloc(i64 %48) #13, !dbg !4693
  call void @llvm.dbg.value(metadata i8* %49, metadata !4657, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %49, metadata !4660, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %7, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0, !dbg !4719
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2, !dbg !4719
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3, !dbg !4719
  br label %53, !dbg !4694

53:                                               ; preds = %66, %47
  %54 = phi i64 [ %7, %47 ], [ %72, %66 ]
  %55 = phi i8* [ %49, %47 ], [ %71, %66 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %55, metadata !4660, metadata !DIExpression()) #13, !dbg !4687
  %56 = load i32, i32* %50, align 8, !dbg !4720
  %57 = icmp ult i32 %56, 41, !dbg !4720
  br i1 %57, label %58, label %63, !dbg !4720

58:                                               ; preds = %53
  %59 = load i8*, i8** %52, align 8, !dbg !4720
  %60 = zext i32 %56 to i64, !dbg !4720
  %61 = getelementptr i8, i8* %59, i64 %60, !dbg !4720
  %62 = add nuw nsw i32 %56, 8, !dbg !4720
  store i32 %62, i32* %50, align 8, !dbg !4720
  br label %66, !dbg !4720

63:                                               ; preds = %53
  %64 = load i8*, i8** %51, align 8, !dbg !4720
  %65 = getelementptr i8, i8* %64, i64 8, !dbg !4720
  store i8* %65, i8** %51, align 8, !dbg !4720
  br label %66, !dbg !4720

66:                                               ; preds = %63, %58
  %67 = phi i8* [ %61, %58 ], [ %64, %63 ]
  %68 = bitcast i8* %67 to i8**, !dbg !4720
  %69 = load i8*, i8** %68, align 8, !dbg !4720
  call void @llvm.dbg.value(metadata i8* %69, metadata !4665, metadata !DIExpression()) #13, !dbg !4719
  %70 = call i64 @strlen(i8* nonnull dereferenceable(1) %69) #23, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %70, metadata !4669, metadata !DIExpression()) #13, !dbg !4719
  call void @llvm.dbg.value(metadata i8* %55, metadata !4722, metadata !DIExpression()) #13, !dbg !4727
  call void @llvm.dbg.value(metadata i8* %69, metadata !4725, metadata !DIExpression()) #13, !dbg !4727
  call void @llvm.dbg.value(metadata i64 %70, metadata !4726, metadata !DIExpression()) #13, !dbg !4727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %55, i8* nonnull align 1 %69, i64 %70, i1 false) #13, !dbg !4729
  %71 = getelementptr inbounds i8, i8* %55, i64 %70, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %71, metadata !4660, metadata !DIExpression()) #13, !dbg !4687
  %72 = add i64 %54, -1, !dbg !4731
  call void @llvm.dbg.value(metadata i64 %72, metadata !4659, metadata !DIExpression()) #13, !dbg !4687
  %73 = icmp eq i64 %72, 0, !dbg !4732
  br i1 %73, label %74, label %53, !dbg !4694, !llvm.loop !4733

74:                                               ; preds = %66, %14
  %75 = phi i8* [ %15, %14 ], [ %49, %66 ]
  %76 = phi i8* [ %15, %14 ], [ %71, %66 ], !dbg !4687
  call void @llvm.dbg.value(metadata i8* %76, metadata !4660, metadata !DIExpression()) #13, !dbg !4687
  store i8 0, i8* %76, align 1, !dbg !4735, !tbaa !1280
  br label %84, !dbg !4736

77:                                               ; preds = %6
  %78 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4737
  call void @llvm.dbg.value(metadata i8* %78, metadata !4649, metadata !DIExpression()), !dbg !4682
  %79 = load i8, i8* %78, align 1, !dbg !4738, !tbaa !1280
  %80 = icmp eq i8 %79, 115, !dbg !4740
  br i1 %80, label %81, label %86, !dbg !4741

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4742
  call void @llvm.dbg.value(metadata i8* %82, metadata !4649, metadata !DIExpression()), !dbg !4682
  %83 = add i64 %7, 1, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %83, metadata !4647, metadata !DIExpression()), !dbg !4682
  br label %6, !dbg !4744, !llvm.loop !4745

84:                                               ; preds = %74, %45
  %85 = phi i8* [ null, %45 ], [ %75, %74 ], !dbg !4687
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #13, !dbg !4748
  br label %96

86:                                               ; preds = %6, %77
  call void @llvm.dbg.value(metadata i8** %4, metadata !4646, metadata !DIExpression(DW_OP_deref)), !dbg !4680
  call void @llvm.dbg.value(metadata i8** %4, metadata !4749, metadata !DIExpression()) #13, !dbg !4759
  call void @llvm.dbg.value(metadata i8* %0, metadata !4757, metadata !DIExpression()) #13, !dbg !4759
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4758, metadata !DIExpression()) #13, !dbg !4759
  %87 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #13, !dbg !4762
  %88 = icmp slt i32 %87, 0, !dbg !4763
  br i1 %88, label %89, label %94, !dbg !4764

89:                                               ; preds = %86
  %90 = tail call i32* @__errno_location() #26, !dbg !4765
  %91 = load i32, i32* %90, align 4, !dbg !4765, !tbaa !1201
  %92 = icmp eq i32 %91, 12, !dbg !4768
  br i1 %92, label %93, label %96, !dbg !4769

93:                                               ; preds = %89
  call void @xalloc_die() #24, !dbg !4770
  unreachable, !dbg !4770

94:                                               ; preds = %86
  %95 = load i8*, i8** %4, align 8, !dbg !4771, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %95, metadata !4646, metadata !DIExpression()), !dbg !4680
  br label %96, !dbg !4772

96:                                               ; preds = %84, %89, %94
  %97 = phi i8* [ %95, %94 ], [ %85, %84 ], [ null, %89 ], !dbg !4680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13, !dbg !4773
  ret i8* %97, !dbg !4773
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #13

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4774 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4776, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i64 %1, metadata !4777, metadata !DIExpression()), !dbg !4782
  %3 = icmp eq i64 %0, 0, !dbg !4783
  %4 = icmp eq i64 %1, 0, !dbg !4784
  %5 = or i1 %3, %4, !dbg !4785
  br i1 %5, label %11, label %6, !dbg !4785

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4779, metadata !DIExpression()), !dbg !4786
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4787
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4787
  br i1 %8, label %9, label %11, !dbg !4789

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4790
  store i32 12, i32* %10, align 4, !dbg !4792, !tbaa !1201
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4776, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i64 %12, metadata !4777, metadata !DIExpression()), !dbg !4782
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #13, !dbg !4793
  call void @llvm.dbg.value(metadata i8* %14, metadata !4778, metadata !DIExpression()), !dbg !4782
  br label %15, !dbg !4794

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4782
  ret i8* %16, !dbg !4795
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4796 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4804, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i8* %1, metadata !4805, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %2, metadata !4806, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4807, metadata !DIExpression()), !dbg !4813
  %6 = bitcast i32* %5 to i8*, !dbg !4814
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4814
  %7 = icmp eq i32* %0, null, !dbg !4815
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4817
  call void @llvm.dbg.value(metadata i32* %8, metadata !4804, metadata !DIExpression()), !dbg !4813
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %9, metadata !4808, metadata !DIExpression()), !dbg !4813
  %10 = icmp ugt i64 %9, -3, !dbg !4819
  %11 = icmp ne i64 %2, 0, !dbg !4820
  %12 = and i1 %11, %10, !dbg !4821
  br i1 %12, label %13, label %18, !dbg !4821

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !4822
  br i1 %14, label %18, label %15, !dbg !4823

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4824, !tbaa !1280
  call void @llvm.dbg.value(metadata i8 %16, metadata !4810, metadata !DIExpression()), !dbg !4825
  %17 = zext i8 %16 to i32, !dbg !4826
  store i32 %17, i32* %8, align 4, !dbg !4827, !tbaa !1201
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4813
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4828
  ret i64 %19, !dbg !4828
}

; Function Attrs: nounwind
declare !dbg !509 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4829 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4835, metadata !DIExpression()), !dbg !4840
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !4841
  call void @llvm.dbg.value(metadata i1 undef, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4842, metadata !DIExpression()), !dbg !4846
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4848
  %4 = load i32, i32* %3, align 8, !dbg !4848, !tbaa !4849
  %5 = and i32 %4, 32, !dbg !4848
  %6 = icmp eq i32 %5, 0, !dbg !4851
  call void @llvm.dbg.value(metadata i1 %6, metadata !4838, metadata !DIExpression()), !dbg !4840
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !4852
  %8 = icmp ne i32 %7, 0, !dbg !4853
  call void @llvm.dbg.value(metadata i1 %8, metadata !4839, metadata !DIExpression()), !dbg !4840
  br i1 %6, label %9, label %19, !dbg !4854

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4856
  call void @llvm.dbg.value(metadata i1 %10, metadata !4836, metadata !DIExpression()), !dbg !4840
  %11 = xor i1 %8, true, !dbg !4857
  %12 = or i1 %10, %11, !dbg !4857
  %13 = sext i1 %8 to i32, !dbg !4857
  br i1 %12, label %22, label %14, !dbg !4857

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4858
  %16 = load i32, i32* %15, align 4, !dbg !4858, !tbaa !1201
  %17 = icmp ne i32 %16, 9, !dbg !4859
  %18 = sext i1 %17 to i32, !dbg !4860
  br label %22, !dbg !4860

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4861

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4863
  store i32 0, i32* %21, align 4, !dbg !4865, !tbaa !1201
  br label %22, !dbg !4863

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4840
  ret i32 %23, !dbg !4866
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4867 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4869, metadata !DIExpression()), !dbg !4874
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4875
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #13, !dbg !4875
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4870, metadata !DIExpression()), !dbg !4876
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #13, !dbg !4877
  %5 = icmp eq i32 %4, 0, !dbg !4877
  br i1 %5, label %6, label %13, !dbg !4879

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4880
  %8 = load i16, i16* %7, align 16, !dbg !4880
  %9 = icmp eq i16 %8, 67, !dbg !4880
  br i1 %9, label %13, label %10, !dbg !4881

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.166, i64 0, i64 0), i64 6), !dbg !4882
  %12 = icmp ne i32 %11, 0, !dbg !4883
  br label %13, !dbg !4881

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4874
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #13, !dbg !4884
  ret i1 %14, !dbg !4884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4885 {
  %1 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !4888
  call void @llvm.dbg.value(metadata i8* %1, metadata !4887, metadata !DIExpression()), !dbg !4889
  %2 = icmp eq i8* %1, null, !dbg !4890
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.169, i64 0, i64 0), i8* %1, !dbg !4892
  call void @llvm.dbg.value(metadata i8* %3, metadata !4887, metadata !DIExpression()), !dbg !4889
  %4 = load i8, i8* %3, align 1, !dbg !4893, !tbaa !1280
  %5 = icmp eq i8 %4, 0, !dbg !4897
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0), i8* %3, !dbg !4898
  call void @llvm.dbg.value(metadata i8* %6, metadata !4887, metadata !DIExpression()), !dbg !4889
  ret i8* %6, !dbg !4899
}

; Function Attrs: nounwind
declare !dbg !961 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i8* %1, metadata !4905, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i64 %2, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 %0, metadata !4908, metadata !DIExpression()) #13, !dbg !4917
  call void @llvm.dbg.value(metadata i8* %1, metadata !4911, metadata !DIExpression()) #13, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %2, metadata !4912, metadata !DIExpression()) #13, !dbg !4917
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()) #13, !dbg !4925
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !4927
  call void @llvm.dbg.value(metadata i8* %4, metadata !4924, metadata !DIExpression()) #13, !dbg !4925
  call void @llvm.dbg.value(metadata i8* %4, metadata !4913, metadata !DIExpression()) #13, !dbg !4917
  %5 = icmp eq i8* %4, null, !dbg !4928
  br i1 %5, label %6, label %9, !dbg !4929

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4930
  br i1 %7, label %19, label %8, !dbg !4933

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4934, !tbaa !1280
  br label %19, !dbg !4935

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4936
  call void @llvm.dbg.value(metadata i64 %10, metadata !4914, metadata !DIExpression()) #13, !dbg !4937
  %11 = icmp ult i64 %10, %2, !dbg !4938
  br i1 %11, label %12, label %14, !dbg !4940

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4941
  call void @llvm.dbg.value(metadata i8* %1, metadata !4943, metadata !DIExpression()) #13, !dbg !4948
  call void @llvm.dbg.value(metadata i8* %4, metadata !4946, metadata !DIExpression()) #13, !dbg !4948
  call void @llvm.dbg.value(metadata i64 %13, metadata !4947, metadata !DIExpression()) #13, !dbg !4948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #13, !dbg !4950
  br label %19, !dbg !4951

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4952
  br i1 %15, label %19, label %16, !dbg !4955

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4956
  call void @llvm.dbg.value(metadata i8* %1, metadata !4943, metadata !DIExpression()) #13, !dbg !4958
  call void @llvm.dbg.value(metadata i8* %4, metadata !4946, metadata !DIExpression()) #13, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %17, metadata !4947, metadata !DIExpression()) #13, !dbg !4958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #13, !dbg !4960
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4961
  store i8 0, i8* %18, align 1, !dbg !4962, !tbaa !1280
  br label %19, !dbg !4963

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4964
  ret i32 %20, !dbg !4965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4968, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()) #13, !dbg !4970
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !4972
  call void @llvm.dbg.value(metadata i8* %2, metadata !4924, metadata !DIExpression()) #13, !dbg !4970
  ret i8* %2, !dbg !4973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4974 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4980, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 0, metadata !4981, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 0, metadata !4983, metadata !DIExpression()), !dbg !4984
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4985
  call void @llvm.dbg.value(metadata i32 %2, metadata !4982, metadata !DIExpression()), !dbg !4984
  %3 = icmp slt i32 %2, 0, !dbg !4986
  br i1 %3, label %4, label %6, !dbg !4988

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4989
  br label %24, !dbg !4990

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !4991
  %8 = icmp eq i32 %7, 0, !dbg !4991
  br i1 %8, label %13, label %9, !dbg !4993

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !4994
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !4995
  %12 = icmp eq i64 %11, -1, !dbg !4996
  br i1 %12, label %16, label %13, !dbg !4997

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !4998
  %15 = icmp eq i32 %14, 0, !dbg !4998
  br i1 %15, label %16, label %18, !dbg !4999

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4981, metadata !DIExpression()), !dbg !4984
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %21, metadata !4983, metadata !DIExpression()), !dbg !4984
  br label %24, !dbg !5001

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !5002
  %20 = load i32, i32* %19, align 4, !dbg !5002, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 %20, metadata !4981, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 %20, metadata !4981, metadata !DIExpression()), !dbg !4984
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %21, metadata !4983, metadata !DIExpression()), !dbg !4984
  %22 = icmp eq i32 %20, 0, !dbg !5003
  br i1 %22, label %24, label %23, !dbg !5001

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5005, !tbaa !1201
  call void @llvm.dbg.value(metadata i32 -1, metadata !4983, metadata !DIExpression()), !dbg !4984
  br label %24, !dbg !5007

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4984
  ret i32 %25, !dbg !5008
}

; Function Attrs: nofree nounwind
declare !dbg !970 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1005 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1006 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5009 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5015, metadata !DIExpression()), !dbg !5016
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5017
  br i1 %2, label %6, label %3, !dbg !5019

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !5020
  %5 = icmp eq i32 %4, 0, !dbg !5020
  br i1 %5, label %6, label %8, !dbg !5021

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5022
  br label %17, !dbg !5023

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5024, metadata !DIExpression()) #13, !dbg !5029
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5031
  %10 = load i32, i32* %9, align 8, !dbg !5031, !tbaa !4849
  %11 = and i32 %10, 256, !dbg !5033
  %12 = icmp eq i32 %11, 0, !dbg !5033
  br i1 %12, label %15, label %13, !dbg !5034

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !5035
  br label %15, !dbg !5035

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5036
  br label %17, !dbg !5037

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5016
  ret i32 %18, !dbg !5038
}

; Function Attrs: nofree nounwind
declare !dbg !1013 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !5039 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5046, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata i64 %1, metadata !5047, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata i32 %2, metadata !5048, metadata !DIExpression()), !dbg !5052
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5053
  %5 = load i8*, i8** %4, align 8, !dbg !5053, !tbaa !5054
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5055
  %7 = load i8*, i8** %6, align 8, !dbg !5055, !tbaa !5056
  %8 = icmp eq i8* %5, %7, !dbg !5057
  br i1 %8, label %9, label %28, !dbg !5058

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5059
  %11 = load i8*, i8** %10, align 8, !dbg !5059, !tbaa !5060
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5061
  %13 = load i8*, i8** %12, align 8, !dbg !5061, !tbaa !5062
  %14 = icmp eq i8* %11, %13, !dbg !5063
  br i1 %14, label %15, label %28, !dbg !5064

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5065
  %17 = load i8*, i8** %16, align 8, !dbg !5065, !tbaa !5066
  %18 = icmp eq i8* %17, null, !dbg !5067
  br i1 %18, label %19, label %28, !dbg !5068

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !5069
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !5070
  call void @llvm.dbg.value(metadata i64 %21, metadata !5049, metadata !DIExpression()), !dbg !5071
  %22 = icmp eq i64 %21, -1, !dbg !5072
  br i1 %22, label %30, label %23, !dbg !5074

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5075
  %25 = load i32, i32* %24, align 8, !dbg !5076, !tbaa !4849
  %26 = and i32 %25, -17, !dbg !5076
  store i32 %26, i32* %24, align 8, !dbg !5076, !tbaa !4849
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5077
  store i64 %21, i64* %27, align 8, !dbg !5078, !tbaa !5079
  br label %30, !dbg !5080

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5081
  br label %30, !dbg !5082

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5052
  ret i32 %31, !dbg !5083
}

; Function Attrs: nofree nounwind
declare !dbg !1089 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind willreturn }
attributes #12 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind readonly }
attributes #20 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !173, !178, !229, !406, !235, !276, !412, !414, !434, !400, !476, !497, !500, !503, !506, !525, !564, !571, !964, !967, !1010, !1051}
!llvm.ident = !{!1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092, !1092}
!llvm.module.flags = !{!1093, !1094, !1095, !1096, !1097}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 73, type: !170, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !165, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !12, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 59, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 42, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!14 = !{!15}
!15 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!19 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!31 = !{!32, !42, !103, !107, !111, !114, !117, !36, !93, !124, !128, !132, !143, !147, !150, !151, !40, !73, !7, !154, !158, !162}
!32 = !DISubprogram(name: "dcgettext", scope: !33, file: !33, line: 51, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!33 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !38, !38, !40}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{}
!42 = !DISubprogram(name: "fputs_unlocked", scope: !43, file: !43, line: 662, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!43 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!44 = !DISubroutineType(types: !45)
!45 = !{!40, !38, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !65, !66, !67, !68, !72, !74, !76, !80, !83, !85, !88, !91, !92, !94, !98, !99}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !40, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !46, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 152, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 153, baseType: !71)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !46, size: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !97)
!96 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 20)
!103 = !DISubprogram(name: "set_program_name", scope: !104, file: !104, line: 37, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!104 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!105 = !DISubroutineType(types: !106)
!106 = !{null, !38}
!107 = !DISubprogram(name: "setlocale", scope: !108, file: !108, line: 122, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!108 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!109 = !DISubroutineType(types: !110)
!110 = !{!36, !40, !38}
!111 = !DISubprogram(name: "bindtextdomain", scope: !33, file: !33, line: 86, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!112 = !DISubroutineType(types: !113)
!113 = !{!36, !38, !38}
!114 = !DISubprogram(name: "textdomain", scope: !33, file: !33, line: 82, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!115 = !DISubroutineType(types: !116)
!116 = !{!36, !38}
!117 = !DISubprogram(name: "atexit", scope: !118, file: !118, line: 595, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!118 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!119 = !DISubroutineType(types: !120)
!120 = !{!40, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DISubprogram(name: "version_etc", scope: !125, file: !125, line: 69, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!125 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubroutineType(types: !127)
!127 = !{null, !46, !38, !38, !38, null}
!128 = !DISubprogram(name: "quote", scope: !129, file: !129, line: 44, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!129 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{!38, !38}
!132 = !DISubprogram(name: "verror", scope: !133, file: !133, line: 34, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!133 = !DIFile(filename: "./lib/verror.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !40, !40, !38, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 93, size: 192, elements: !138)
!138 = !{!139, !140, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !137, file: !3, line: 93, baseType: !7, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !137, file: !3, line: 93, baseType: !7, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !137, file: !3, line: 93, baseType: !93, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !137, file: !3, line: 93, baseType: !93, size: 64, offset: 128)
!143 = !DISubprogram(name: "euidaccess", scope: !144, file: !144, line: 292, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!144 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!145 = !DISubroutineType(types: !146)
!146 = !{!40, !38, !40}
!147 = !DISubprogram(name: "geteuid", scope: !144, file: !144, line: 678, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!148 = !DISubroutineType(types: !149)
!149 = !{!7}
!150 = !DISubprogram(name: "getegid", scope: !144, file: !144, line: 684, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!151 = !DISubprogram(name: "isatty", scope: !144, file: !144, line: 779, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!152 = !DISubroutineType(types: !153)
!153 = !{!40, !40}
!154 = !DISubprogram(name: "umaxtostr", scope: !155, file: !155, line: 46, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!155 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !DISubroutineType(types: !157)
!157 = !{!36, !97, !36}
!158 = !DISubprogram(name: "strintcmp", scope: !159, file: !159, line: 1, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!159 = !DIFile(filename: "./lib/strnumcmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = !DISubroutineType(types: !161)
!161 = !{!40, !38, !38}
!162 = !DISubprogram(name: "quote_n", scope: !129, file: !129, line: 40, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!163 = !DISubroutineType(types: !164)
!164 = !{!38, !40, !38}
!165 = !{!166, !168, !0}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 71, type: !40, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 72, type: !40, isLocal: true, isDefinition: true)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "Version", scope: !173, file: !174, line: 2, type: !38, isLocal: false, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, globals: !175, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = !{!171}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "file_name", scope: !178, file: !179, line: 46, type: !38, isLocal: true, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !180, globals: !223, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181, !32, !217, !219}
!181 = !DISubprogram(name: "close_stream", scope: !182, file: !182, line: 2, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!182 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !DISubroutineType(types: !184)
!184 = !{!40, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !186, file: !48, line: 51, baseType: !40, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !186, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !186, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !186, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !186, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !186, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !186, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !186, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !186, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !186, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !186, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !186, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !186, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !186, file: !48, line: 70, baseType: !185, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !186, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !186, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !186, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !186, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !186, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !186, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !186, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !186, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !186, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !186, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !186, file: !48, line: 93, baseType: !185, size: 64, offset: 1344)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !186, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !186, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !186, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !186, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!217 = !DISubprogram(name: "quotearg_colon", scope: !218, file: !218, line: 391, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!218 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!219 = !DISubprogram(name: "error", scope: !220, file: !220, line: 52, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!220 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !DISubroutineType(types: !222)
!222 = !{null, !40, !40, !38, null}
!223 = !{!176, !224}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !178, file: !179, line: 56, type: !226, isLocal: true, isDefinition: true)
!226 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "exit_failure", scope: !229, file: !230, line: 24, type: !232, isLocal: false, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, globals: !231, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !{!227}
!232 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "program_name", scope: !235, file: !236, line: 33, type: !38, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !237, globals: !273, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = !{!93, !238, !36}
!238 = !DISubprogram(name: "fputs", scope: !43, file: !43, line: 626, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!239 = !DISubroutineType(types: !240)
!240 = !{!40, !38, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !242, file: !48, line: 51, baseType: !40, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !242, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !242, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !242, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !242, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !242, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !242, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !242, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !242, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !242, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !242, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !242, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !242, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !242, file: !48, line: 70, baseType: !241, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !242, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !242, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !242, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !242, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !242, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !242, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !242, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !242, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !242, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !242, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !242, file: !48, line: 93, baseType: !241, size: 64, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !242, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !242, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !242, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !242, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!273 = !{!233}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !276, file: !277, line: 85, type: !394, isLocal: false, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !278, retainedTypes: !297, globals: !367, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !{!279, !292, !16}
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !218, line: 32, baseType: !7, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!281 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!282 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!283 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!284 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!285 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!286 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!287 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!288 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!289 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!290 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!291 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !218, line: 242, baseType: !7, size: 32, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!295 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!296 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!297 = !{!298, !304, !320, !323, !40, !73, !326, !95, !344, !348, !32, !354, !358, !36, !360, !363, !364}
!298 = !DISubprogram(name: "xmemdup", scope: !299, file: !299, line: 62, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!299 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!300 = !DISubroutineType(types: !301)
!301 = !{!93, !302, !97}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!304 = !DISubprogram(name: "quotearg_alloc_mem", scope: !218, file: !218, line: 342, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!305 = !DISubroutineType(types: !306)
!306 = !{!36, !38, !97, !307, !308}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !277, line: 65, size: 448, elements: !311)
!311 = !{!312, !313, !314, !318, !319}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !310, file: !277, line: 68, baseType: !279, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !277, line: 71, baseType: !40, size: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !310, file: !277, line: 75, baseType: !315, size: 256, offset: 64)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !310, file: !277, line: 78, baseType: !38, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !310, file: !277, line: 81, baseType: !38, size: 64, offset: 384)
!320 = !DISubprogram(name: "free", scope: !118, file: !118, line: 565, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !93}
!323 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !218, file: !218, line: 408, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!324 = !DISubroutineType(types: !325)
!325 = !{!36, !40, !38, !38, !38, !97}
!326 = !DISubprogram(name: "rpl_mbrtowc", scope: !327, file: !327, line: 717, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!327 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!328 = !DISubroutineType(types: !329)
!329 = !{!97, !330, !38, !97, !331}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 13, size: 64, elements: !334)
!333 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !332, file: !333, line: 15, baseType: !40, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !332, file: !333, line: 20, baseType: !337, size: 32, offset: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 16, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !337, file: !333, line: 18, baseType: !7, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !337, file: !333, line: 19, baseType: !341, size: 32)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 4)
!344 = !DISubprogram(name: "iswprint", scope: !345, file: !345, line: 120, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!345 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!346 = !DISubroutineType(types: !347)
!347 = !{!40, !7}
!348 = !DISubprogram(name: "mbsinit", scope: !349, file: !349, line: 292, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!349 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!350 = !DISubroutineType(types: !351)
!351 = !{!40, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!354 = !DISubprogram(name: "locale_charset", scope: !355, file: !355, line: 35, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!355 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!356 = !DISubroutineType(types: !357)
!357 = !{!38}
!358 = !DISubprogram(name: "c_strcasecmp", scope: !359, file: !359, line: 42, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!359 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!360 = !DISubprogram(name: "xmalloc", scope: !299, file: !299, line: 53, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!361 = !DISubroutineType(types: !362)
!362 = !{!93, !97}
!363 = !DISubprogram(name: "xalloc_die", scope: !299, file: !299, line: 51, type: !122, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !41)
!364 = !DISubprogram(name: "xrealloc", scope: !299, file: !299, line: 59, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!365 = !DISubroutineType(types: !366)
!366 = !{!93, !93, !97}
!367 = !{!274, !368, !374, !376, !378, !383, !390, !392}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !276, file: !277, line: 101, type: !370, isLocal: false, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 320, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!372 = !{!373}
!373 = !DISubrange(count: 10)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !276, file: !277, line: 1052, type: !310, isLocal: false, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !276, file: !277, line: 116, type: !310, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "slot0", scope: !276, file: !277, line: 842, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 256)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "slotvec", scope: !276, file: !277, line: 845, type: !385, isLocal: true, isDefinition: true)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !277, line: 834, size: 128, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !386, file: !277, line: 836, baseType: !95, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !277, line: 837, baseType: !36, size: 64, offset: 64)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "nslots", scope: !276, file: !277, line: 843, type: !40, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "slotvec0", scope: !276, file: !277, line: 844, type: !386, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 704, elements: !396)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!396 = !{!397}
!397 = !DISubrange(count: 11)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !400, file: !401, line: 26, type: !403, isLocal: false, isDefinition: true)
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, globals: !402, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!402 = !{!398}
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 47)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !410, line: 102, baseType: !411)
!410 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !70, line: 73, baseType: !97)
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !416, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !{!417, !427, !431, !219, !32, !320}
!417 = !DISubprogram(name: "verror_at_line", scope: !133, file: !133, line: 45, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !40, !40, !38, !7, !38, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !415, size: 192, elements: !422)
!422 = !{!423, !424, !425, !426}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !421, file: !415, baseType: !7, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !421, file: !415, baseType: !7, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !421, file: !415, baseType: !93, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !421, file: !415, baseType: !93, size: 64, offset: 128)
!427 = !DISubprogram(name: "xvasprintf", scope: !428, file: !428, line: 48, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!428 = !DIFile(filename: "./lib/xvasprintf.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!429 = !DISubroutineType(types: !430)
!430 = !{!36, !38, !420}
!431 = !DISubprogram(name: "error_at_line", scope: !220, file: !220, line: 55, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !40, !40, !38, !7, !38, null}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!437}
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !435, line: 40, baseType: !7, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!440 = !{!32, !441, !93}
!441 = !DISubprogram(name: "fputs_unlocked", scope: !43, file: !43, line: 662, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!442 = !DISubroutineType(types: !443)
!443 = !{!40, !38, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !445, file: !48, line: 51, baseType: !40, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !445, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !445, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !445, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !445, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !445, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !445, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !445, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !445, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !445, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !445, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !445, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !445, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !445, file: !48, line: 70, baseType: !444, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !445, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !445, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !445, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !445, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !445, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !445, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !445, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !445, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !445, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !445, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !445, file: !48, line: 93, baseType: !444, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !445, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !445, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !445, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !445, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !491, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!478 = !{!479}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !480, file: !299, line: 186, baseType: !7, size: 32, elements: !489)
!480 = distinct !DISubprogram(name: "x2nrealloc", scope: !299, file: !299, line: 174, type: !481, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !484)
!481 = !DISubroutineType(types: !482)
!482 = !{!93, !93, !483, !95}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!484 = !{!485, !486, !487, !488}
!485 = !DILocalVariable(name: "p", arg: 1, scope: !480, file: !299, line: 174, type: !93)
!486 = !DILocalVariable(name: "pn", arg: 2, scope: !480, file: !299, line: 174, type: !483)
!487 = !DILocalVariable(name: "s", arg: 3, scope: !480, file: !299, line: 174, type: !95)
!488 = !DILocalVariable(name: "n", scope: !480, file: !299, line: 176, type: !95)
!489 = !{!490}
!490 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!491 = !{!95, !363, !360, !364, !36, !320, !93, !492, !495}
!492 = !DISubprogram(name: "xcalloc", scope: !299, file: !299, line: 57, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!493 = !DISubroutineType(types: !494)
!494 = !{!93, !97, !97}
!495 = !DISubprogram(name: "rpl_calloc", scope: !496, file: !496, line: 688, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!496 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!32, !219}
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !502, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !{!363, !36, !360}
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!93}
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !508, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!509, !95, !521}
!509 = !DISubprogram(name: "mbrtowc", scope: !349, file: !349, line: 296, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!510 = !DISubroutineType(types: !511)
!511 = !{!97, !330, !38, !97, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 13, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !513, file: !333, line: 15, baseType: !40, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !513, file: !333, line: 20, baseType: !517, size: 32, offset: 32)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !333, line: 16, size: 32, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !517, file: !333, line: 18, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !517, file: !333, line: 19, baseType: !341, size: 32)
!521 = !DISubprogram(name: "hard_locale", scope: !522, file: !522, line: 26, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!522 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!523 = !DISubroutineType(types: !524)
!524 = !{!226, !40}
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !527, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!527 = !{!528}
!528 = !DISubprogram(name: "rpl_fclose", scope: !529, file: !529, line: 672, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!529 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!530 = !DISubroutineType(types: !531)
!531 = !{!40, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !533, file: !48, line: 51, baseType: !40, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !533, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !533, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !533, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !533, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !533, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !533, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !533, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !533, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !533, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !533, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !533, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !533, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !533, file: !48, line: 70, baseType: !532, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !533, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !533, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !533, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !533, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !533, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !533, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !533, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !533, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !533, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !533, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !533, file: !48, line: 93, baseType: !532, size: 64, offset: 1344)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !533, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !533, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !533, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !533, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !566, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!567}
!567 = !DISubprogram(name: "setlocale_null_r", scope: !568, file: !568, line: 64, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!568 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !DISubroutineType(types: !570)
!570 = !{!40, !40, !36, !97}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !960, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!574}
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !575, line: 41, baseType: !7, size: 32, elements: !576)
!575 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959}
!577 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!578 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!579 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!580 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!581 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!582 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!583 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!584 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!585 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!586 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!587 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!588 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!589 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!590 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!596 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!599 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!600 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!601 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!602 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!608 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!611 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!612 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!613 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!614 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!615 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!616 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!617 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!618 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!619 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!620 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!621 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!622 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!623 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!624 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!625 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!626 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!685 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!693 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!696 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!697 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!698 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!699 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!772 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!845 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!846 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!847 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!848 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!849 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!850 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!851 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!852 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!853 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!854 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!855 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!856 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!857 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!858 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!859 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!861 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!862 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!863 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!864 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!865 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!866 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!892 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!893 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!894 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!895 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!896 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!901 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!902 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!903 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!904 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!960 = !{!961, !93}
!961 = !DISubprogram(name: "nl_langinfo", scope: !575, file: !575, line: 661, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!962 = !DISubroutineType(types: !963)
!963 = !{!36, !40}
!964 = distinct !DICompileUnit(language: DW_LANG_C99, file: !965, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!966 = !{!93, !107}
!967 = distinct !DICompileUnit(language: DW_LANG_C99, file: !968, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !969, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!969 = !{!970, !1005, !1006, !1009}
!970 = !DISubprogram(name: "fileno", scope: !43, file: !43, line: 786, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!971 = !DISubroutineType(types: !972)
!972 = !{!40, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !974, file: !48, line: 51, baseType: !40, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !974, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !974, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !974, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !974, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !974, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !974, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !974, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !974, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !974, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !974, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !974, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !974, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !974, file: !48, line: 70, baseType: !973, size: 64, offset: 832)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !974, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !974, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !974, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !974, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !974, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !974, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !974, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !974, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !974, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !974, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !974, file: !48, line: 93, baseType: !973, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !974, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !974, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !974, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !974, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!1005 = !DISubprogram(name: "fclose", scope: !43, file: !43, line: 213, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1006 = !DISubprogram(name: "lseek", scope: !144, file: !144, line: 334, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!71, !40, !71, !40}
!1009 = !DISubprogram(name: "rpl_fflush", scope: !529, file: !529, line: 718, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1010 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1011, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !1012, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1012 = !{!93, !1013, !1048}
!1013 = !DISubprogram(name: "fflush", scope: !43, file: !43, line: 218, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!40, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1017, file: !48, line: 51, baseType: !40, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1017, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1017, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1017, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1017, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1017, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1017, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1017, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1017, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1017, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1017, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1017, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1017, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1017, file: !48, line: 70, baseType: !1016, size: 64, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1017, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1017, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1017, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1017, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1017, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1017, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1017, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1017, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1017, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1017, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1017, file: !48, line: 93, baseType: !1016, size: 64, offset: 1344)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1017, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1017, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1017, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1017, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!1048 = !DISubprogram(name: "rpl_fseeko", scope: !529, file: !529, line: 1034, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!40, !1016, !71, !40}
!1051 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1052, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !1053, splitDebugInlining: false, nameTableKind: None)
!1052 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1053 = !{!93, !1054, !1006, !1089}
!1054 = !DISubprogram(name: "fileno", scope: !43, file: !43, line: 786, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!40, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1058, file: !48, line: 51, baseType: !40, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1058, file: !48, line: 54, baseType: !36, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1058, file: !48, line: 55, baseType: !36, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1058, file: !48, line: 56, baseType: !36, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1058, file: !48, line: 57, baseType: !36, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1058, file: !48, line: 58, baseType: !36, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1058, file: !48, line: 59, baseType: !36, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1058, file: !48, line: 60, baseType: !36, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1058, file: !48, line: 61, baseType: !36, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1058, file: !48, line: 64, baseType: !36, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1058, file: !48, line: 65, baseType: !36, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1058, file: !48, line: 66, baseType: !36, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1058, file: !48, line: 68, baseType: !63, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1058, file: !48, line: 70, baseType: !1057, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1058, file: !48, line: 72, baseType: !40, size: 32, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1058, file: !48, line: 73, baseType: !40, size: 32, offset: 928)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1058, file: !48, line: 74, baseType: !69, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1058, file: !48, line: 77, baseType: !73, size: 16, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1058, file: !48, line: 78, baseType: !75, size: 8, offset: 1040)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1058, file: !48, line: 79, baseType: !77, size: 8, offset: 1048)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1058, file: !48, line: 81, baseType: !81, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1058, file: !48, line: 89, baseType: !84, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1058, file: !48, line: 91, baseType: !86, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1058, file: !48, line: 92, baseType: !89, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1058, file: !48, line: 93, baseType: !1057, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1058, file: !48, line: 94, baseType: !93, size: 64, offset: 1408)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1058, file: !48, line: 95, baseType: !95, size: 64, offset: 1472)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1058, file: !48, line: 96, baseType: !40, size: 32, offset: 1536)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1058, file: !48, line: 98, baseType: !100, size: 160, offset: 1568)
!1089 = !DISubprogram(name: "fseeko", scope: !43, file: !43, line: 707, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!40, !1057, !71, !40}
!1092 = !{!"clang version 10.0.0 "}
!1093 = !{i32 7, !"Dwarf Version", i32 4}
!1094 = !{i32 2, !"Debug Info Version", i32 3}
!1095 = !{i32 1, !"wchar_size", i32 4}
!1096 = !{i32 7, !"PIC Level", i32 2}
!1097 = !{i32 7, !"PIE Level", i32 2}
!1098 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 684, type: !1099, scopeLine: 685, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !40}
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "status", arg: 1, scope: !1098, file: !6, line: 684, type: !40)
!1103 = !DILocalVariable(name: "infomap", scope: !1104, file: !1105, line: 636, type: !1117)
!1104 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1105, file: !1105, line: 634, type: !105, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1105 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1106 = !{!1107, !1103, !1108, !1109, !1116}
!1107 = !DILocalVariable(name: "program", arg: 1, scope: !1104, file: !1105, line: 634, type: !38)
!1108 = !DILocalVariable(name: "node", scope: !1104, file: !1105, line: 646, type: !38)
!1109 = !DILocalVariable(name: "map_prog", scope: !1104, file: !1105, line: 647, type: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1104, file: !1105, line: 636, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1112, file: !1105, line: 636, baseType: !38, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !1105, line: 636, baseType: !38, size: 64, offset: 64)
!1116 = !DILocalVariable(name: "lc_messages", scope: !1104, file: !1105, line: 659, type: !38)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 896, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 7)
!1120 = !DILocation(line: 636, column: 67, scope: !1104, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 784, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !6, line: 689, column: 5)
!1123 = distinct !DILexicalBlock(scope: !1098, file: !6, line: 686, column: 7)
!1124 = !DILocation(line: 0, scope: !1098)
!1125 = !DILocation(line: 686, column: 14, scope: !1123)
!1126 = !DILocation(line: 686, column: 7, scope: !1098)
!1127 = !DILocation(line: 687, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !6, line: 687, column: 5)
!1129 = !{!1130, !1130, i64 0}
!1130 = !{!"any pointer", !1131, i64 0}
!1131 = !{!"omnipotent char", !1132, i64 0}
!1132 = !{!"Simple C/C++ TBAA"}
!1133 = !DILocation(line: 690, column: 7, scope: !1122)
!1134 = !DILocation(line: 697, column: 7, scope: !1122)
!1135 = !DILocation(line: 701, column: 7, scope: !1122)
!1136 = !DILocation(line: 702, column: 7, scope: !1122)
!1137 = !DILocation(line: 703, column: 7, scope: !1122)
!1138 = !DILocation(line: 708, column: 7, scope: !1122)
!1139 = !DILocation(line: 715, column: 7, scope: !1122)
!1140 = !DILocation(line: 723, column: 7, scope: !1122)
!1141 = !DILocation(line: 732, column: 7, scope: !1122)
!1142 = !DILocation(line: 738, column: 7, scope: !1122)
!1143 = !DILocation(line: 745, column: 7, scope: !1122)
!1144 = !DILocation(line: 752, column: 7, scope: !1122)
!1145 = !DILocation(line: 760, column: 7, scope: !1122)
!1146 = !DILocation(line: 767, column: 7, scope: !1122)
!1147 = !DILocation(line: 773, column: 7, scope: !1122)
!1148 = !DILocation(line: 778, column: 7, scope: !1122)
!1149 = !DILocation(line: 783, column: 7, scope: !1122)
!1150 = !DILocation(line: 0, scope: !1104, inlinedAt: !1121)
!1151 = !DILocation(line: 636, column: 3, scope: !1104, inlinedAt: !1121)
!1152 = !DILocation(line: 647, column: 36, scope: !1104, inlinedAt: !1121)
!1153 = !DILocation(line: 649, column: 3, scope: !1104, inlinedAt: !1121)
!1154 = !DILocation(line: 649, column: 33, scope: !1104, inlinedAt: !1121)
!1155 = !DILocation(line: 650, column: 13, scope: !1104, inlinedAt: !1121)
!1156 = !DILocation(line: 649, column: 20, scope: !1104, inlinedAt: !1121)
!1157 = !{!1158, !1130, i64 0}
!1158 = !{!"infomap", !1130, i64 0, !1130, i64 8}
!1159 = !DILocation(line: 649, column: 10, scope: !1104, inlinedAt: !1121)
!1160 = !DILocation(line: 649, column: 28, scope: !1104, inlinedAt: !1121)
!1161 = distinct !{!1161, !1153, !1155}
!1162 = !DILocation(line: 652, column: 17, scope: !1163, inlinedAt: !1121)
!1163 = distinct !DILexicalBlock(scope: !1104, file: !1105, line: 652, column: 7)
!1164 = !{!1158, !1130, i64 8}
!1165 = !DILocation(line: 652, column: 7, scope: !1163, inlinedAt: !1121)
!1166 = !DILocation(line: 652, column: 7, scope: !1104, inlinedAt: !1121)
!1167 = !DILocation(line: 655, column: 3, scope: !1104, inlinedAt: !1121)
!1168 = !DILocation(line: 659, column: 29, scope: !1104, inlinedAt: !1121)
!1169 = !DILocation(line: 660, column: 7, scope: !1170, inlinedAt: !1121)
!1170 = distinct !DILexicalBlock(scope: !1104, file: !1105, line: 660, column: 7)
!1171 = !DILocation(line: 660, column: 19, scope: !1170, inlinedAt: !1121)
!1172 = !DILocation(line: 660, column: 22, scope: !1170, inlinedAt: !1121)
!1173 = !DILocation(line: 660, column: 7, scope: !1104, inlinedAt: !1121)
!1174 = !DILocation(line: 666, column: 7, scope: !1175, inlinedAt: !1121)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !1105, line: 661, column: 5)
!1176 = !DILocation(line: 668, column: 5, scope: !1175, inlinedAt: !1121)
!1177 = !DILocation(line: 669, column: 3, scope: !1104, inlinedAt: !1121)
!1178 = !DILocation(line: 671, column: 3, scope: !1104, inlinedAt: !1121)
!1179 = !DILocation(line: 673, column: 1, scope: !1104, inlinedAt: !1121)
!1180 = !DILocation(line: 786, column: 3, scope: !1098)
!1181 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 805, type: !1182, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!40, !40, !170}
!1184 = !{!1185, !1186, !1187}
!1185 = !DILocalVariable(name: "margc", arg: 1, scope: !1181, file: !6, line: 805, type: !40)
!1186 = !DILocalVariable(name: "margv", arg: 2, scope: !1181, file: !6, line: 805, type: !170)
!1187 = !DILocalVariable(name: "value", scope: !1181, file: !6, line: 807, type: !226)
!1188 = !DILocation(line: 0, scope: !1181)
!1189 = !DILocation(line: 818, column: 21, scope: !1181)
!1190 = !DILocation(line: 818, column: 3, scope: !1181)
!1191 = !DILocation(line: 819, column: 3, scope: !1181)
!1192 = !DILocation(line: 820, column: 3, scope: !1181)
!1193 = !DILocation(line: 821, column: 3, scope: !1181)
!1194 = !DILocalVariable(name: "status", arg: 1, scope: !1195, file: !1105, line: 99, type: !40)
!1195 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !1105, file: !1105, line: 99, type: !1099, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1196 = !{!1194}
!1197 = !DILocation(line: 0, scope: !1195, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 823, column: 3, scope: !1181)
!1199 = !DILocation(line: 102, column: 18, scope: !1200, inlinedAt: !1198)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !1105, line: 101, column: 7)
!1201 = !{!1202, !1202, i64 0}
!1202 = !{!"int", !1131, i64 0}
!1203 = !DILocation(line: 824, column: 3, scope: !1181)
!1204 = !DILocation(line: 827, column: 8, scope: !1181)
!1205 = !DILocation(line: 837, column: 17, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !6, line: 837, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !6, line: 830, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1181, file: !6, line: 829, column: 7)
!1209 = !DILocation(line: 837, column: 11, scope: !1207)
!1210 = !DILocation(line: 839, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !6, line: 839, column: 15)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !6, line: 838, column: 9)
!1213 = !DILocation(line: 839, column: 15, scope: !1212)
!1214 = !DILocation(line: 840, column: 13, scope: !1211)
!1215 = !DILocation(line: 842, column: 15, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !6, line: 842, column: 15)
!1217 = !DILocation(line: 842, column: 15, scope: !1212)
!1218 = !DILocation(line: 844, column: 28, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !6, line: 843, column: 13)
!1220 = !DILocation(line: 844, column: 64, scope: !1219)
!1221 = !DILocation(line: 844, column: 15, scope: !1219)
!1222 = !DILocation(line: 846, column: 15, scope: !1219)
!1223 = !DILocation(line: 849, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1207, file: !6, line: 849, column: 11)
!1225 = !DILocation(line: 849, column: 21, scope: !1224)
!1226 = !DILocation(line: 849, column: 25, scope: !1224)
!1227 = !DILocation(line: 849, column: 11, scope: !1207)
!1228 = !DILocation(line: 850, column: 28, scope: !1224)
!1229 = !DILocation(line: 850, column: 45, scope: !1224)
!1230 = !DILocation(line: 850, column: 9, scope: !1224)
!1231 = !DILocation(line: 855, column: 8, scope: !1181)
!1232 = !DILocation(line: 856, column: 7, scope: !1181)
!1233 = !DILocation(line: 858, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1181, file: !6, line: 858, column: 7)
!1235 = !DILocation(line: 858, column: 7, scope: !1181)
!1236 = !DILocation(line: 861, column: 27, scope: !1181)
!1237 = !DILocation(line: 861, column: 11, scope: !1181)
!1238 = !DILocation(line: 863, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1181, file: !6, line: 863, column: 7)
!1240 = !DILocation(line: 863, column: 14, scope: !1239)
!1241 = !DILocation(line: 863, column: 11, scope: !1239)
!1242 = !DILocation(line: 863, column: 7, scope: !1181)
!1243 = !DILocation(line: 864, column: 24, scope: !1239)
!1244 = !DILocation(line: 864, column: 55, scope: !1239)
!1245 = !DILocation(line: 864, column: 60, scope: !1239)
!1246 = !DILocation(line: 864, column: 48, scope: !1239)
!1247 = !DILocation(line: 864, column: 5, scope: !1239)
!1248 = !DILocation(line: 866, column: 3, scope: !1181)
!1249 = !DILocation(line: 867, column: 1, scope: !1181)
!1250 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 91, type: !1251, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !38, null}
!1253 = !{!1254, !1255}
!1254 = !DILocalVariable(name: "format", arg: 1, scope: !1250, file: !6, line: 91, type: !38)
!1255 = !DILocalVariable(name: "ap", scope: !1250, file: !6, line: 93, type: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !43, line: 52, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1258, line: 32, baseType: !1259)
!1258 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 93, baseType: !1260)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !78)
!1261 = !DILocation(line: 0, scope: !1250)
!1262 = !DILocation(line: 93, column: 3, scope: !1250)
!1263 = !DILocation(line: 93, column: 11, scope: !1250)
!1264 = !DILocation(line: 94, column: 3, scope: !1250)
!1265 = !DILocation(line: 95, column: 3, scope: !1250)
!1266 = !DILocation(line: 96, column: 3, scope: !1250)
!1267 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 638, type: !523, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1268 = !{!1269, !1270}
!1269 = !DILocalVariable(name: "nargs", arg: 1, scope: !1267, file: !6, line: 638, type: !40)
!1270 = !DILocalVariable(name: "value", scope: !1267, file: !6, line: 640, type: !226)
!1271 = !DILocation(line: 0, scope: !1267)
!1272 = !DILocation(line: 642, column: 3, scope: !1267)
!1273 = !DILocation(line: 587, column: 10, scope: !1274, inlinedAt: !1277)
!1274 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 585, type: !1275, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!226}
!1277 = distinct !DILocation(line: 645, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 643, column: 5)
!1279 = !DILocation(line: 587, column: 18, scope: !1274, inlinedAt: !1277)
!1280 = !{!1131, !1131, i64 0}
!1281 = !DILocation(line: 587, column: 25, scope: !1274, inlinedAt: !1277)
!1282 = !DILocation(line: 646, column: 9, scope: !1278)
!1283 = !DILocation(line: 595, column: 7, scope: !1284, inlinedAt: !1288)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !6, line: 595, column: 7)
!1285 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 591, type: !1275, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "value", scope: !1285, file: !6, line: 593, type: !226)
!1288 = distinct !DILocation(line: 649, column: 17, scope: !1278)
!1289 = !DILocation(line: 595, column: 7, scope: !1285, inlinedAt: !1288)
!1290 = !DILocalVariable(name: "f", arg: 1, scope: !1291, file: !6, line: 104, type: !226)
!1291 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 104, type: !1292, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !226}
!1294 = !{!1290}
!1295 = !DILocation(line: 0, scope: !1291, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 597, column: 7, scope: !1297, inlinedAt: !1288)
!1297 = distinct !DILexicalBlock(scope: !1284, file: !6, line: 596, column: 5)
!1298 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1296)
!1299 = !DILocation(line: 587, column: 18, scope: !1274, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 598, column: 17, scope: !1297, inlinedAt: !1288)
!1301 = !DILocation(line: 587, column: 10, scope: !1274, inlinedAt: !1300)
!1302 = !DILocation(line: 587, column: 25, scope: !1274, inlinedAt: !1300)
!1303 = !DILocation(line: 0, scope: !1285, inlinedAt: !1288)
!1304 = !DILocation(line: 599, column: 5, scope: !1297, inlinedAt: !1288)
!1305 = !DILocation(line: 600, column: 12, scope: !1306, inlinedAt: !1288)
!1306 = distinct !DILexicalBlock(scope: !1284, file: !6, line: 600, column: 12)
!1307 = !DILocation(line: 600, column: 25, scope: !1306, inlinedAt: !1288)
!1308 = !DILocation(line: 601, column: 12, scope: !1306, inlinedAt: !1288)
!1309 = !DILocation(line: 601, column: 15, scope: !1306, inlinedAt: !1288)
!1310 = !DILocation(line: 601, column: 28, scope: !1306, inlinedAt: !1288)
!1311 = !DILocation(line: 602, column: 12, scope: !1306, inlinedAt: !1288)
!1312 = !DILocation(line: 602, column: 15, scope: !1306, inlinedAt: !1288)
!1313 = !DILocation(line: 602, column: 28, scope: !1306, inlinedAt: !1288)
!1314 = !DILocation(line: 600, column: 12, scope: !1284, inlinedAt: !1288)
!1315 = !DILocation(line: 604, column: 15, scope: !1316, inlinedAt: !1288)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !6, line: 603, column: 5)
!1317 = !DILocation(line: 607, column: 5, scope: !1306, inlinedAt: !1288)
!1318 = !DILocation(line: 653, column: 17, scope: !1278)
!1319 = !DILocation(line: 654, column: 9, scope: !1278)
!1320 = !DILocation(line: 657, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1278, file: !6, line: 657, column: 13)
!1322 = !DILocation(line: 657, column: 13, scope: !1278)
!1323 = !DILocation(line: 0, scope: !1291, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 659, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !6, line: 658, column: 11)
!1326 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1324)
!1327 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1324)
!1328 = distinct !DILexicalBlock(scope: !1291, file: !6, line: 108, column: 7)
!1329 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1324)
!1330 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1324)
!1331 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1324)
!1332 = !DILocation(line: 660, column: 22, scope: !1325)
!1333 = !DILocation(line: 660, column: 21, scope: !1325)
!1334 = !DILocation(line: 661, column: 13, scope: !1325)
!1335 = !DILocation(line: 663, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1278, file: !6, line: 663, column: 13)
!1337 = !DILocation(line: 663, column: 36, scope: !1336)
!1338 = !DILocation(line: 663, column: 39, scope: !1336)
!1339 = !DILocation(line: 663, column: 13, scope: !1278)
!1340 = !DILocation(line: 0, scope: !1291, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 665, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !6, line: 664, column: 11)
!1343 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1341)
!1344 = !DILocation(line: 595, column: 7, scope: !1284, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 666, column: 21, scope: !1342)
!1346 = !DILocation(line: 595, column: 7, scope: !1285, inlinedAt: !1345)
!1347 = !DILocation(line: 0, scope: !1291, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 597, column: 7, scope: !1297, inlinedAt: !1345)
!1349 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1348)
!1350 = !DILocation(line: 587, column: 18, scope: !1274, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 598, column: 17, scope: !1297, inlinedAt: !1345)
!1352 = !DILocation(line: 587, column: 10, scope: !1274, inlinedAt: !1351)
!1353 = !DILocation(line: 587, column: 25, scope: !1274, inlinedAt: !1351)
!1354 = !DILocation(line: 0, scope: !1285, inlinedAt: !1345)
!1355 = !DILocation(line: 599, column: 5, scope: !1297, inlinedAt: !1345)
!1356 = !DILocation(line: 600, column: 12, scope: !1306, inlinedAt: !1345)
!1357 = !DILocation(line: 600, column: 25, scope: !1306, inlinedAt: !1345)
!1358 = !DILocation(line: 601, column: 12, scope: !1306, inlinedAt: !1345)
!1359 = !DILocation(line: 601, column: 15, scope: !1306, inlinedAt: !1345)
!1360 = !DILocation(line: 601, column: 28, scope: !1306, inlinedAt: !1345)
!1361 = !DILocation(line: 602, column: 12, scope: !1306, inlinedAt: !1345)
!1362 = !DILocation(line: 602, column: 15, scope: !1306, inlinedAt: !1345)
!1363 = !DILocation(line: 602, column: 28, scope: !1306, inlinedAt: !1345)
!1364 = !DILocation(line: 600, column: 12, scope: !1284, inlinedAt: !1345)
!1365 = !DILocation(line: 604, column: 15, scope: !1316, inlinedAt: !1345)
!1366 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 667, column: 13, scope: !1342)
!1368 = !DILocation(line: 607, column: 5, scope: !1306, inlinedAt: !1345)
!1369 = !DILocation(line: 0, scope: !1291, inlinedAt: !1367)
!1370 = !DILocation(line: 668, column: 13, scope: !1342)
!1371 = !DILocation(line: 673, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1278, file: !6, line: 673, column: 13)
!1373 = !DILocation(line: 673, column: 13, scope: !1278)
!1374 = !DILocation(line: 578, column: 7, scope: !1375, inlinedAt: !1377)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !6, line: 578, column: 7)
!1376 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 576, type: !1275, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!1377 = distinct !DILocation(line: 675, column: 17, scope: !1278)
!1378 = !DILocation(line: 674, column: 11, scope: !1372)
!1379 = !DILocation(line: 578, column: 14, scope: !1375, inlinedAt: !1377)
!1380 = !DILocation(line: 578, column: 11, scope: !1375, inlinedAt: !1377)
!1381 = !DILocation(line: 578, column: 7, scope: !1376, inlinedAt: !1377)
!1382 = !DILocalVariable(name: "value", scope: !1383, file: !6, line: 560, type: !226)
!1383 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 558, type: !1275, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1384)
!1384 = !{!1382}
!1385 = !DILocation(line: 0, scope: !1383, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 581, column: 10, scope: !1376, inlinedAt: !1377)
!1387 = !DILocalVariable(name: "value", scope: !1388, file: !6, line: 541, type: !226)
!1388 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 539, type: !1275, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1389 = !{!1387}
!1390 = !DILocation(line: 0, scope: !1388, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 564, column: 16, scope: !1392, inlinedAt: !1386)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !6, line: 563, column: 5)
!1393 = !DILocation(line: 545, column: 16, scope: !1394, inlinedAt: !1391)
!1394 = distinct !DILexicalBlock(scope: !1388, file: !6, line: 544, column: 5)
!1395 = !DILocation(line: 546, column: 14, scope: !1396, inlinedAt: !1391)
!1396 = distinct !DILexicalBlock(scope: !1394, file: !6, line: 546, column: 11)
!1397 = !DILocation(line: 546, column: 20, scope: !1396, inlinedAt: !1391)
!1398 = !DILocation(line: 546, column: 18, scope: !1396, inlinedAt: !1391)
!1399 = !DILocation(line: 546, column: 25, scope: !1396, inlinedAt: !1391)
!1400 = !DILocation(line: 579, column: 5, scope: !1375, inlinedAt: !1377)
!1401 = !DILocation(line: 546, column: 28, scope: !1396, inlinedAt: !1391)
!1402 = !DILocation(line: 546, column: 11, scope: !1394, inlinedAt: !1391)
!1403 = !DILocation(line: 0, scope: !1291, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 548, column: 7, scope: !1394, inlinedAt: !1391)
!1405 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1404)
!1406 = !DILocation(line: 545, column: 13, scope: !1394, inlinedAt: !1391)
!1407 = distinct !{!1407, !1408, !1409}
!1408 = !DILocation(line: 543, column: 3, scope: !1388, inlinedAt: !1391)
!1409 = !DILocation(line: 549, column: 5, scope: !1388, inlinedAt: !1391)
!1410 = !DILocation(line: 564, column: 13, scope: !1392, inlinedAt: !1386)
!1411 = !DILocation(line: 565, column: 28, scope: !1412, inlinedAt: !1386)
!1412 = distinct !DILexicalBlock(scope: !1392, file: !6, line: 565, column: 11)
!1413 = !DILocation(line: 565, column: 11, scope: !1392, inlinedAt: !1386)
!1414 = !DILocation(line: 0, scope: !1291, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 567, column: 7, scope: !1392, inlinedAt: !1386)
!1416 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1415)
!1417 = distinct !{!1417, !1418, !1419}
!1418 = !DILocation(line: 562, column: 3, scope: !1383, inlinedAt: !1386)
!1419 = !DILocation(line: 568, column: 5, scope: !1383, inlinedAt: !1386)
!1420 = !DILocation(line: 678, column: 3, scope: !1267)
!1421 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 389, type: !1275, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1422)
!1422 = !{!1423, !1460, !1463, !1464, !1468, !1469, !1472, !1473, !1475}
!1423 = !DILocalVariable(name: "stat_buf", scope: !1421, file: !6, line: 391, type: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1425, line: 46, size: 1152, elements: !1426)
!1425 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1426 = !{!1427, !1429, !1431, !1433, !1435, !1437, !1439, !1440, !1441, !1442, !1444, !1446, !1454, !1455, !1456}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1424, file: !1425, line: 48, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !70, line: 145, baseType: !97)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1424, file: !1425, line: 53, baseType: !1430, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !70, line: 148, baseType: !97)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1424, file: !1425, line: 61, baseType: !1432, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !70, line: 151, baseType: !97)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1424, file: !1425, line: 62, baseType: !1434, size: 32, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !70, line: 150, baseType: !7)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1424, file: !1425, line: 64, baseType: !1436, size: 32, offset: 224)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !70, line: 146, baseType: !7)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1424, file: !1425, line: 65, baseType: !1438, size: 32, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !70, line: 147, baseType: !7)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1424, file: !1425, line: 67, baseType: !40, size: 32, offset: 288)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1424, file: !1425, line: 69, baseType: !1428, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1424, file: !1425, line: 74, baseType: !69, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1424, file: !1425, line: 78, baseType: !1443, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !70, line: 174, baseType: !71)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1424, file: !1425, line: 80, baseType: !1445, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !70, line: 179, baseType: !71)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1424, file: !1425, line: 91, baseType: !1447, size: 128, offset: 576)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1448, line: 10, size: 128, elements: !1449)
!1448 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1449 = !{!1450, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1447, file: !1448, line: 12, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !70, line: 160, baseType: !71)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1447, file: !1448, line: 16, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !70, line: 196, baseType: !71)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1424, file: !1425, line: 92, baseType: !1447, size: 128, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1424, file: !1425, line: 93, baseType: !1447, size: 128, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1424, file: !1425, line: 106, baseType: !1457, size: 192, offset: 960)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 192, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 3)
!1460 = !DILocalVariable(name: "atime", scope: !1461, file: !6, line: 425, type: !1447)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !6, line: 421, column: 7)
!1462 = distinct !DILexicalBlock(scope: !1421, file: !6, line: 394, column: 5)
!1463 = !DILocalVariable(name: "mtime", scope: !1461, file: !6, line: 426, type: !1447)
!1464 = !DILocalVariable(name: "euid", scope: !1465, file: !6, line: 436, type: !1466)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !6, line: 431, column: 7)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1467, line: 79, baseType: !1436)
!1467 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1468 = !DILocalVariable(name: "NO_UID", scope: !1465, file: !6, line: 437, type: !1466)
!1469 = !DILocalVariable(name: "egid", scope: !1470, file: !6, line: 447, type: !1471)
!1470 = distinct !DILexicalBlock(scope: !1462, file: !6, line: 442, column: 7)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1467, line: 64, baseType: !1438)
!1472 = !DILocalVariable(name: "NO_GID", scope: !1470, file: !6, line: 448, type: !1471)
!1473 = !DILocalVariable(name: "fd", scope: !1474, file: !6, line: 514, type: !71)
!1474 = distinct !DILexicalBlock(scope: !1462, file: !6, line: 513, column: 7)
!1475 = !DILocalVariable(name: "arg", scope: !1474, file: !6, line: 515, type: !38)
!1476 = !DILocation(line: 391, column: 3, scope: !1421)
!1477 = !DILocation(line: 391, column: 15, scope: !1421)
!1478 = !DILocation(line: 393, column: 11, scope: !1421)
!1479 = !DILocation(line: 393, column: 16, scope: !1421)
!1480 = !DILocation(line: 393, column: 3, scope: !1421)
!1481 = !DILocation(line: 396, column: 26, scope: !1462)
!1482 = !DILocation(line: 396, column: 67, scope: !1462)
!1483 = !DILocation(line: 396, column: 72, scope: !1462)
!1484 = !DILocation(line: 396, column: 60, scope: !1462)
!1485 = !DILocation(line: 396, column: 7, scope: !1462)
!1486 = !DILocation(line: 0, scope: !1291, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1489)
!1488 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 113, type: !122, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!1489 = distinct !DILocation(line: 405, column: 7, scope: !1462)
!1490 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1487)
!1491 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1487)
!1492 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1487)
!1493 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1487)
!1494 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1487)
!1495 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1489)
!1496 = !DILocation(line: 406, column: 20, scope: !1462)
!1497 = !DILocalVariable(name: "__path", arg: 1, scope: !1498, file: !1499, line: 453, type: !38)
!1498 = distinct !DISubprogram(name: "stat", scope: !1499, file: !1499, line: 453, type: !1500, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1503)
!1499 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!40, !38, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1503 = !{!1497, !1504}
!1504 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1498, file: !1499, line: 453, type: !1502)
!1505 = !DILocation(line: 0, scope: !1498, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 406, column: 14, scope: !1462)
!1507 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1506)
!1508 = !DILocation(line: 406, column: 46, scope: !1462)
!1509 = !DILocation(line: 406, column: 7, scope: !1462)
!1510 = !DILocation(line: 0, scope: !1291, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 409, column: 7, scope: !1462)
!1513 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1511)
!1514 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1511)
!1515 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1511)
!1516 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1511)
!1517 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1511)
!1518 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1512)
!1519 = !DILocation(line: 410, column: 26, scope: !1462)
!1520 = !DILocation(line: 410, column: 14, scope: !1462)
!1521 = !DILocation(line: 410, column: 47, scope: !1462)
!1522 = !DILocation(line: 410, column: 7, scope: !1462)
!1523 = !DILocation(line: 0, scope: !1291, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 413, column: 7, scope: !1462)
!1526 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1524)
!1527 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1524)
!1528 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1524)
!1529 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1524)
!1530 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1524)
!1531 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1525)
!1532 = !DILocation(line: 414, column: 26, scope: !1462)
!1533 = !DILocation(line: 414, column: 14, scope: !1462)
!1534 = !DILocation(line: 414, column: 47, scope: !1462)
!1535 = !DILocation(line: 414, column: 7, scope: !1462)
!1536 = !DILocation(line: 0, scope: !1291, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 417, column: 7, scope: !1462)
!1539 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1537)
!1540 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1537)
!1541 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1537)
!1542 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1537)
!1543 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1537)
!1544 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1538)
!1545 = !DILocation(line: 418, column: 26, scope: !1462)
!1546 = !DILocation(line: 418, column: 14, scope: !1462)
!1547 = !DILocation(line: 418, column: 47, scope: !1462)
!1548 = !DILocation(line: 418, column: 7, scope: !1462)
!1549 = !DILocation(line: 0, scope: !1291, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 422, column: 9, scope: !1461)
!1552 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1550)
!1553 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1550)
!1554 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1550)
!1555 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1550)
!1556 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1550)
!1557 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1551)
!1558 = !DILocation(line: 423, column: 19, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1461, file: !6, line: 423, column: 13)
!1560 = !DILocation(line: 0, scope: !1498, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 423, column: 13, scope: !1559)
!1562 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1561)
!1563 = !DILocation(line: 423, column: 45, scope: !1559)
!1564 = !DILocation(line: 423, column: 13, scope: !1461)
!1565 = !DILocalVariable(name: "st", arg: 1, scope: !1566, file: !1567, line: 118, type: !1570)
!1566 = distinct !DISubprogram(name: "get_stat_atime", scope: !1567, file: !1567, line: 118, type: !1568, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1567 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1447, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1572 = !{!1565}
!1573 = !DILocation(line: 0, scope: !1566, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 425, column: 33, scope: !1461)
!1575 = !DILocation(line: 121, column: 10, scope: !1566, inlinedAt: !1574)
!1576 = !{i64 0, i64 8, !1577, i64 8, i64 8, !1577}
!1577 = !{!1578, !1578, i64 0}
!1578 = !{!"long", !1131, i64 0}
!1579 = !DILocation(line: 0, scope: !1461)
!1580 = !DILocalVariable(name: "st", arg: 1, scope: !1581, file: !1567, line: 146, type: !1570)
!1581 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1567, file: !1567, line: 146, type: !1568, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1582 = !{!1580}
!1583 = !DILocation(line: 0, scope: !1581, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 426, column: 33, scope: !1461)
!1585 = !DILocation(line: 149, column: 10, scope: !1581, inlinedAt: !1584)
!1586 = !DILocalVariable(name: "a", arg: 1, scope: !1587, file: !13, line: 89, type: !1447)
!1587 = distinct !DISubprogram(name: "timespec_cmp", scope: !13, file: !13, line: 89, type: !1588, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!40, !1447, !1447}
!1590 = !{!1586, !1591}
!1591 = !DILocalVariable(name: "b", arg: 2, scope: !1587, file: !13, line: 89, type: !1447)
!1592 = !DILocation(line: 0, scope: !1587, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 427, column: 17, scope: !1461)
!1594 = !DILocation(line: 91, column: 16, scope: !1595, inlinedAt: !1593)
!1595 = distinct !DILexicalBlock(scope: !1587, file: !13, line: 91, column: 7)
!1596 = !DILocation(line: 91, column: 7, scope: !1587, inlinedAt: !1593)
!1597 = !DILocation(line: 93, column: 16, scope: !1598, inlinedAt: !1593)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !13, line: 93, column: 7)
!1599 = !DILocation(line: 93, column: 7, scope: !1587, inlinedAt: !1593)
!1600 = !DILocation(line: 98, column: 3, scope: !1587, inlinedAt: !1593)
!1601 = !DILocation(line: 99, column: 3, scope: !1587, inlinedAt: !1593)
!1602 = !DILocation(line: 101, column: 20, scope: !1587, inlinedAt: !1593)
!1603 = !DILocation(line: 101, column: 10, scope: !1587, inlinedAt: !1593)
!1604 = !DILocation(line: 101, column: 3, scope: !1587, inlinedAt: !1593)
!1605 = !DILocation(line: 0, scope: !1291, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 432, column: 9, scope: !1465)
!1608 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1606)
!1609 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1606)
!1610 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1606)
!1611 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1606)
!1612 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1606)
!1613 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1607)
!1614 = !DILocation(line: 433, column: 19, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1465, file: !6, line: 433, column: 13)
!1616 = !DILocation(line: 0, scope: !1498, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 433, column: 13, scope: !1615)
!1618 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1617)
!1619 = !DILocation(line: 433, column: 45, scope: !1615)
!1620 = !DILocation(line: 433, column: 13, scope: !1465)
!1621 = !DILocation(line: 435, column: 9, scope: !1465)
!1622 = !DILocation(line: 435, column: 15, scope: !1465)
!1623 = !DILocation(line: 436, column: 22, scope: !1465)
!1624 = !DILocation(line: 0, scope: !1465)
!1625 = !DILocation(line: 438, column: 24, scope: !1465)
!1626 = !DILocation(line: 438, column: 34, scope: !1465)
!1627 = !DILocation(line: 438, column: 37, scope: !1465)
!1628 = !DILocation(line: 438, column: 44, scope: !1465)
!1629 = !DILocation(line: 438, column: 64, scope: !1465)
!1630 = !{!1631, !1202, i64 28}
!1631 = !{!"stat", !1578, i64 0, !1578, i64 8, !1578, i64 16, !1202, i64 24, !1202, i64 28, !1202, i64 32, !1202, i64 36, !1578, i64 40, !1578, i64 48, !1578, i64 56, !1578, i64 64, !1632, i64 72, !1632, i64 88, !1632, i64 104, !1131, i64 120}
!1632 = !{!"timespec", !1578, i64 0, !1578, i64 8}
!1633 = !DILocation(line: 438, column: 52, scope: !1465)
!1634 = !DILocation(line: 0, scope: !1291, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 443, column: 9, scope: !1470)
!1637 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1635)
!1638 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1635)
!1639 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1635)
!1640 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1635)
!1641 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1635)
!1642 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1636)
!1643 = !DILocation(line: 444, column: 19, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 444, column: 13)
!1645 = !DILocation(line: 0, scope: !1498, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 444, column: 13, scope: !1644)
!1647 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1646)
!1648 = !DILocation(line: 444, column: 45, scope: !1644)
!1649 = !DILocation(line: 444, column: 13, scope: !1470)
!1650 = !DILocation(line: 446, column: 9, scope: !1470)
!1651 = !DILocation(line: 446, column: 15, scope: !1470)
!1652 = !DILocation(line: 447, column: 22, scope: !1470)
!1653 = !DILocation(line: 0, scope: !1470)
!1654 = !DILocation(line: 449, column: 24, scope: !1470)
!1655 = !DILocation(line: 449, column: 34, scope: !1470)
!1656 = !DILocation(line: 449, column: 37, scope: !1470)
!1657 = !DILocation(line: 449, column: 44, scope: !1470)
!1658 = !DILocation(line: 449, column: 64, scope: !1470)
!1659 = !{!1631, !1202, i64 32}
!1660 = !DILocation(line: 449, column: 52, scope: !1470)
!1661 = !DILocation(line: 0, scope: !1291, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 453, column: 7, scope: !1462)
!1664 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1662)
!1665 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1662)
!1666 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1662)
!1667 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1662)
!1668 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1662)
!1669 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1663)
!1670 = !DILocation(line: 456, column: 21, scope: !1462)
!1671 = !DILocation(line: 0, scope: !1498, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 456, column: 15, scope: !1462)
!1673 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1672)
!1674 = !DILocation(line: 456, column: 47, scope: !1462)
!1675 = !DILocation(line: 457, column: 15, scope: !1462)
!1676 = !DILocation(line: 456, column: 7, scope: !1462)
!1677 = !DILocation(line: 0, scope: !1291, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 460, column: 7, scope: !1462)
!1680 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1678)
!1681 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1678)
!1682 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1678)
!1683 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1678)
!1684 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1678)
!1685 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1679)
!1686 = !DILocation(line: 461, column: 21, scope: !1462)
!1687 = !DILocation(line: 0, scope: !1498, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 461, column: 15, scope: !1462)
!1689 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1688)
!1690 = !DILocation(line: 461, column: 47, scope: !1462)
!1691 = !DILocation(line: 462, column: 15, scope: !1462)
!1692 = !DILocation(line: 461, column: 7, scope: !1462)
!1693 = !DILocation(line: 0, scope: !1291, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 465, column: 7, scope: !1462)
!1696 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1694)
!1697 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1694)
!1698 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1694)
!1699 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1694)
!1700 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1694)
!1701 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1695)
!1702 = !DILocation(line: 466, column: 21, scope: !1462)
!1703 = !DILocation(line: 0, scope: !1498, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 466, column: 15, scope: !1462)
!1705 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1704)
!1706 = !DILocation(line: 466, column: 47, scope: !1462)
!1707 = !DILocation(line: 467, column: 15, scope: !1462)
!1708 = !DILocation(line: 466, column: 7, scope: !1462)
!1709 = !DILocation(line: 0, scope: !1291, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 470, column: 7, scope: !1462)
!1712 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1710)
!1713 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1710)
!1714 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1710)
!1715 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1710)
!1716 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1710)
!1717 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1711)
!1718 = !DILocation(line: 471, column: 21, scope: !1462)
!1719 = !DILocation(line: 0, scope: !1498, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 471, column: 15, scope: !1462)
!1721 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1720)
!1722 = !DILocation(line: 471, column: 47, scope: !1462)
!1723 = !DILocation(line: 472, column: 15, scope: !1462)
!1724 = !DILocation(line: 471, column: 7, scope: !1462)
!1725 = !DILocation(line: 0, scope: !1291, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 475, column: 7, scope: !1462)
!1728 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1726)
!1729 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1726)
!1730 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1726)
!1731 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1726)
!1732 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1726)
!1733 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1727)
!1734 = !DILocation(line: 476, column: 21, scope: !1462)
!1735 = !DILocation(line: 0, scope: !1498, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 476, column: 15, scope: !1462)
!1737 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1736)
!1738 = !DILocation(line: 476, column: 47, scope: !1462)
!1739 = !DILocation(line: 477, column: 15, scope: !1462)
!1740 = !DILocation(line: 476, column: 7, scope: !1462)
!1741 = !DILocation(line: 0, scope: !1291, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 480, column: 7, scope: !1462)
!1744 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1742)
!1745 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1742)
!1746 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1742)
!1747 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1742)
!1748 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1742)
!1749 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1743)
!1750 = !DILocation(line: 481, column: 21, scope: !1462)
!1751 = !DILocation(line: 0, scope: !1498, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 481, column: 15, scope: !1462)
!1753 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1752)
!1754 = !DILocation(line: 481, column: 47, scope: !1462)
!1755 = !DILocation(line: 482, column: 15, scope: !1462)
!1756 = !DILocation(line: 481, column: 7, scope: !1462)
!1757 = !DILocation(line: 0, scope: !1291, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 485, column: 7, scope: !1462)
!1760 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1758)
!1761 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1758)
!1762 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1758)
!1763 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1758)
!1764 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1758)
!1765 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1759)
!1766 = !DILocation(line: 486, column: 21, scope: !1462)
!1767 = !DILocation(line: 0, scope: !1498, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 486, column: 15, scope: !1462)
!1769 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1768)
!1770 = !DILocation(line: 486, column: 47, scope: !1462)
!1771 = !DILocation(line: 487, column: 15, scope: !1462)
!1772 = !DILocation(line: 486, column: 7, scope: !1462)
!1773 = !DILocation(line: 0, scope: !1291, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 493, column: 7, scope: !1462)
!1776 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1774)
!1777 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1774)
!1778 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1774)
!1779 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1774)
!1780 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1774)
!1781 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1775)
!1782 = !DILocation(line: 494, column: 22, scope: !1462)
!1783 = !DILocalVariable(name: "__path", arg: 1, scope: !1784, file: !1499, line: 460, type: !38)
!1784 = distinct !DISubprogram(name: "lstat", scope: !1499, file: !1499, line: 460, type: !1500, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1785)
!1785 = !{!1783, !1786}
!1786 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1784, file: !1499, line: 460, type: !1502)
!1787 = !DILocation(line: 0, scope: !1784, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 494, column: 15, scope: !1462)
!1789 = !DILocation(line: 462, column: 10, scope: !1784, inlinedAt: !1788)
!1790 = !DILocation(line: 494, column: 48, scope: !1462)
!1791 = !DILocation(line: 495, column: 15, scope: !1462)
!1792 = !DILocation(line: 494, column: 7, scope: !1462)
!1793 = !DILocation(line: 0, scope: !1291, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 498, column: 7, scope: !1462)
!1796 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1794)
!1797 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1794)
!1798 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1794)
!1799 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1794)
!1800 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1794)
!1801 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1795)
!1802 = !DILocation(line: 499, column: 21, scope: !1462)
!1803 = !DILocation(line: 0, scope: !1498, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 499, column: 15, scope: !1462)
!1805 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1804)
!1806 = !DILocation(line: 499, column: 47, scope: !1462)
!1807 = !DILocation(line: 500, column: 15, scope: !1462)
!1808 = !DILocation(line: 499, column: 7, scope: !1462)
!1809 = !DILocation(line: 0, scope: !1291, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 503, column: 7, scope: !1462)
!1812 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1810)
!1813 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1810)
!1814 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1810)
!1815 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1810)
!1816 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1810)
!1817 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1811)
!1818 = !DILocation(line: 504, column: 21, scope: !1462)
!1819 = !DILocation(line: 0, scope: !1498, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 504, column: 15, scope: !1462)
!1821 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1820)
!1822 = !DILocation(line: 504, column: 47, scope: !1462)
!1823 = !DILocation(line: 505, column: 15, scope: !1462)
!1824 = !DILocation(line: 504, column: 7, scope: !1462)
!1825 = !DILocation(line: 0, scope: !1291, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 508, column: 7, scope: !1462)
!1828 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1826)
!1829 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1826)
!1830 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1826)
!1831 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1826)
!1832 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1826)
!1833 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1827)
!1834 = !DILocation(line: 509, column: 21, scope: !1462)
!1835 = !DILocation(line: 0, scope: !1498, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 509, column: 15, scope: !1462)
!1837 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !1836)
!1838 = !DILocation(line: 509, column: 47, scope: !1462)
!1839 = !DILocation(line: 510, column: 15, scope: !1462)
!1840 = !DILocation(line: 509, column: 7, scope: !1462)
!1841 = !DILocation(line: 0, scope: !1291, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 516, column: 9, scope: !1474)
!1844 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1842)
!1845 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1842)
!1846 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1842)
!1847 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1842)
!1848 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1842)
!1849 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1843)
!1850 = !DILocation(line: 517, column: 25, scope: !1474)
!1851 = !DILocation(line: 517, column: 15, scope: !1474)
!1852 = !DILocation(line: 0, scope: !1474)
!1853 = !DILocation(line: 518, column: 9, scope: !1474)
!1854 = !DILocation(line: 518, column: 15, scope: !1474)
!1855 = !DILocation(line: 519, column: 14, scope: !1474)
!1856 = !DILocation(line: 520, column: 17, scope: !1474)
!1857 = !DILocation(line: 520, column: 23, scope: !1474)
!1858 = !DILocation(line: 520, column: 33, scope: !1474)
!1859 = !DILocation(line: 520, column: 72, scope: !1474)
!1860 = !DILocation(line: 520, column: 64, scope: !1474)
!1861 = !DILocation(line: 520, column: 61, scope: !1474)
!1862 = !DILocation(line: 0, scope: !1291, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 524, column: 7, scope: !1462)
!1865 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1863)
!1866 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1863)
!1867 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1863)
!1868 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1863)
!1869 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1863)
!1870 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1864)
!1871 = !DILocation(line: 525, column: 14, scope: !1462)
!1872 = !DILocation(line: 525, column: 31, scope: !1462)
!1873 = !DILocation(line: 525, column: 7, scope: !1462)
!1874 = !DILocation(line: 0, scope: !1291, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 115, column: 3, scope: !1488, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 528, column: 7, scope: !1462)
!1877 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1875)
!1878 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1875)
!1879 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1875)
!1880 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1875)
!1881 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1875)
!1882 = !DILocation(line: 116, column: 3, scope: !1488, inlinedAt: !1876)
!1883 = !DILocation(line: 529, column: 14, scope: !1462)
!1884 = !DILocation(line: 529, column: 31, scope: !1462)
!1885 = !DILocation(line: 529, column: 7, scope: !1462)
!1886 = !DILocation(line: 0, scope: !1462)
!1887 = !DILocation(line: 531, column: 1, scope: !1421)
!1888 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 124, type: !122, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!1889 = !DILocation(line: 126, column: 22, scope: !1888)
!1890 = !DILocation(line: 126, column: 61, scope: !1888)
!1891 = !DILocation(line: 126, column: 66, scope: !1888)
!1892 = !DILocation(line: 126, column: 71, scope: !1888)
!1893 = !DILocation(line: 126, column: 54, scope: !1888)
!1894 = !DILocation(line: 126, column: 3, scope: !1888)
!1895 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 612, type: !1275, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "value", scope: !1895, file: !6, line: 614, type: !226)
!1898 = !DILocation(line: 616, column: 14, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !6, line: 616, column: 7)
!1900 = !DILocation(line: 616, column: 19, scope: !1899)
!1901 = !DILocation(line: 616, column: 23, scope: !1899)
!1902 = !DILocation(line: 616, column: 7, scope: !1899)
!1903 = !DILocation(line: 616, column: 7, scope: !1895)
!1904 = !DILocation(line: 617, column: 13, scope: !1899)
!1905 = !DILocation(line: 0, scope: !1895)
!1906 = !DILocation(line: 617, column: 5, scope: !1899)
!1907 = !DILocation(line: 618, column: 12, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1899, file: !6, line: 618, column: 12)
!1909 = !DILocation(line: 618, column: 12, scope: !1899)
!1910 = !DILocation(line: 0, scope: !1291, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 620, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 619, column: 5)
!1913 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1911)
!1914 = !DILocation(line: 108, column: 19, scope: !1328, inlinedAt: !1911)
!1915 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !1911)
!1916 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !1911)
!1917 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !1911)
!1918 = !DILocation(line: 595, column: 7, scope: !1284, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 621, column: 16, scope: !1912)
!1920 = !DILocation(line: 595, column: 7, scope: !1285, inlinedAt: !1919)
!1921 = !DILocation(line: 0, scope: !1291, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 597, column: 7, scope: !1297, inlinedAt: !1919)
!1923 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1922)
!1924 = !DILocation(line: 587, column: 18, scope: !1274, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 598, column: 17, scope: !1297, inlinedAt: !1919)
!1926 = !DILocation(line: 587, column: 10, scope: !1274, inlinedAt: !1925)
!1927 = !DILocation(line: 587, column: 25, scope: !1274, inlinedAt: !1925)
!1928 = !DILocation(line: 0, scope: !1285, inlinedAt: !1919)
!1929 = !DILocation(line: 599, column: 5, scope: !1297, inlinedAt: !1919)
!1930 = !DILocation(line: 600, column: 12, scope: !1306, inlinedAt: !1919)
!1931 = !DILocation(line: 600, column: 25, scope: !1306, inlinedAt: !1919)
!1932 = !DILocation(line: 601, column: 12, scope: !1306, inlinedAt: !1919)
!1933 = !DILocation(line: 601, column: 15, scope: !1306, inlinedAt: !1919)
!1934 = !DILocation(line: 601, column: 28, scope: !1306, inlinedAt: !1919)
!1935 = !DILocation(line: 602, column: 12, scope: !1306, inlinedAt: !1919)
!1936 = !DILocation(line: 602, column: 15, scope: !1306, inlinedAt: !1919)
!1937 = !DILocation(line: 602, column: 28, scope: !1306, inlinedAt: !1919)
!1938 = !DILocation(line: 600, column: 12, scope: !1284, inlinedAt: !1919)
!1939 = !DILocation(line: 604, column: 15, scope: !1316, inlinedAt: !1919)
!1940 = !DILocation(line: 607, column: 5, scope: !1306, inlinedAt: !1919)
!1941 = !DILocation(line: 621, column: 15, scope: !1912)
!1942 = !DILocation(line: 622, column: 5, scope: !1912)
!1943 = !DILocation(line: 623, column: 12, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 623, column: 12)
!1945 = !DILocation(line: 623, column: 35, scope: !1944)
!1946 = !DILocation(line: 623, column: 38, scope: !1944)
!1947 = !DILocation(line: 623, column: 12, scope: !1908)
!1948 = !DILocation(line: 0, scope: !1291, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 625, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1944, file: !6, line: 624, column: 5)
!1951 = !DILocation(line: 587, column: 10, scope: !1274, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 626, column: 15, scope: !1950)
!1953 = !DILocation(line: 587, column: 25, scope: !1274, inlinedAt: !1952)
!1954 = !DILocation(line: 0, scope: !1291, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 627, column: 7, scope: !1950)
!1956 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1955)
!1957 = !DILocation(line: 628, column: 5, scope: !1950)
!1958 = !DILocation(line: 629, column: 12, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1944, file: !6, line: 629, column: 12)
!1960 = !DILocation(line: 629, column: 40, scope: !1959)
!1961 = !DILocation(line: 629, column: 43, scope: !1959)
!1962 = !DILocation(line: 629, column: 12, scope: !1944)
!1963 = !DILocation(line: 578, column: 14, scope: !1375, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 630, column: 13, scope: !1959)
!1965 = !DILocation(line: 578, column: 11, scope: !1375, inlinedAt: !1964)
!1966 = !DILocation(line: 578, column: 7, scope: !1376, inlinedAt: !1964)
!1967 = !DILocation(line: 0, scope: !1383, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 581, column: 10, scope: !1376, inlinedAt: !1964)
!1969 = !DILocation(line: 0, scope: !1388, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 564, column: 16, scope: !1392, inlinedAt: !1968)
!1971 = !DILocation(line: 545, column: 16, scope: !1394, inlinedAt: !1970)
!1972 = !DILocation(line: 546, column: 14, scope: !1396, inlinedAt: !1970)
!1973 = !DILocation(line: 546, column: 20, scope: !1396, inlinedAt: !1970)
!1974 = !DILocation(line: 546, column: 18, scope: !1396, inlinedAt: !1970)
!1975 = !DILocation(line: 546, column: 25, scope: !1396, inlinedAt: !1970)
!1976 = !DILocation(line: 579, column: 5, scope: !1375, inlinedAt: !1964)
!1977 = !DILocation(line: 546, column: 28, scope: !1396, inlinedAt: !1970)
!1978 = !DILocation(line: 546, column: 11, scope: !1394, inlinedAt: !1970)
!1979 = !DILocation(line: 0, scope: !1291, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 548, column: 7, scope: !1394, inlinedAt: !1970)
!1981 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1980)
!1982 = !DILocation(line: 545, column: 13, scope: !1394, inlinedAt: !1970)
!1983 = distinct !{!1983, !1984, !1985}
!1984 = !DILocation(line: 543, column: 3, scope: !1388, inlinedAt: !1970)
!1985 = !DILocation(line: 549, column: 5, scope: !1388, inlinedAt: !1970)
!1986 = !DILocation(line: 564, column: 13, scope: !1392, inlinedAt: !1968)
!1987 = !DILocation(line: 565, column: 28, scope: !1412, inlinedAt: !1968)
!1988 = !DILocation(line: 565, column: 11, scope: !1392, inlinedAt: !1968)
!1989 = !DILocation(line: 0, scope: !1291, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 567, column: 7, scope: !1392, inlinedAt: !1968)
!1991 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !1990)
!1992 = distinct !{!1992, !1993, !1994}
!1993 = !DILocation(line: 562, column: 3, scope: !1383, inlinedAt: !1968)
!1994 = !DILocation(line: 568, column: 5, scope: !1383, inlinedAt: !1968)
!1995 = !DILocation(line: 632, column: 24, scope: !1959)
!1996 = !DILocation(line: 632, column: 66, scope: !1959)
!1997 = !DILocation(line: 632, column: 71, scope: !1959)
!1998 = !DILocation(line: 632, column: 74, scope: !1959)
!1999 = !DILocation(line: 632, column: 59, scope: !1959)
!2000 = !DILocation(line: 632, column: 5, scope: !1959)
!2001 = !DILocation(line: 633, column: 3, scope: !1895)
!2002 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 211, type: !1275, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "value", scope: !2002, file: !6, line: 213, type: !226)
!2005 = !DILocalVariable(name: "negated", scope: !2002, file: !6, line: 214, type: !226)
!2006 = !DILocalVariable(name: "nargs", scope: !2007, file: !6, line: 229, type: !40)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !6, line: 228, column: 5)
!2008 = distinct !DILexicalBlock(scope: !2002, file: !6, line: 227, column: 7)
!2009 = !DILocation(line: 0, scope: !2002)
!2010 = !DILocation(line: 217, column: 10, scope: !2002)
!2011 = !DILocation(line: 217, column: 16, scope: !2002)
!2012 = !DILocation(line: 217, column: 14, scope: !2002)
!2013 = !DILocation(line: 217, column: 21, scope: !2002)
!2014 = !DILocation(line: 217, column: 24, scope: !2002)
!2015 = !DILocation(line: 217, column: 37, scope: !2002)
!2016 = !DILocation(line: 217, column: 44, scope: !2002)
!2017 = !DILocation(line: 217, column: 47, scope: !2002)
!2018 = !DILocation(line: 217, column: 60, scope: !2002)
!2019 = !DILocation(line: 217, column: 3, scope: !2002)
!2020 = !DILocation(line: 0, scope: !1291, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 219, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2002, file: !6, line: 218, column: 5)
!2023 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2021)
!2024 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !2021)
!2025 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !2021)
!2026 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !2021)
!2027 = !DILocation(line: 220, column: 17, scope: !2022)
!2028 = !DILocation(line: 224, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2002, file: !6, line: 223, column: 7)
!2030 = !DILocation(line: 227, column: 20, scope: !2008)
!2031 = !DILocation(line: 227, column: 27, scope: !2008)
!2032 = !DILocation(line: 227, column: 30, scope: !2008)
!2033 = !DILocation(line: 227, column: 43, scope: !2008)
!2034 = !DILocation(line: 227, column: 7, scope: !2002)
!2035 = !DILocation(line: 0, scope: !1291, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 231, column: 7, scope: !2007)
!2037 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2036)
!2038 = !DILocation(line: 108, column: 16, scope: !1328, inlinedAt: !2036)
!2039 = !DILocation(line: 108, column: 9, scope: !1328, inlinedAt: !2036)
!2040 = !DILocation(line: 0, scope: !2007)
!2041 = !DILocation(line: 234, column: 16, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !6, line: 233, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2007, file: !6, line: 233, column: 7)
!2044 = !DILocation(line: 234, column: 24, scope: !2042)
!2045 = !DILocation(line: 234, column: 31, scope: !2042)
!2046 = !DILocation(line: 233, column: 7, scope: !2043)
!2047 = !DILocation(line: 109, column: 5, scope: !1328, inlinedAt: !2036)
!2048 = !DILocation(line: 234, column: 36, scope: !2042)
!2049 = !DILocation(line: 236, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2042, file: !6, line: 236, column: 13)
!2051 = !DILocation(line: 236, column: 13, scope: !2042)
!2052 = !DILocation(line: 238, column: 26, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !6, line: 237, column: 11)
!2054 = !DILocation(line: 239, column: 13, scope: !2053)
!2055 = !DILocation(line: 235, column: 17, scope: !2042)
!2056 = distinct !{!2056, !2046, !2057}
!2057 = !DILocation(line: 240, column: 11, scope: !2043)
!2058 = !DILocation(line: 242, column: 15, scope: !2007)
!2059 = !DILocation(line: 0, scope: !2043)
!2060 = !DILocation(line: 243, column: 11, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2007, file: !6, line: 243, column: 11)
!2062 = !DILocation(line: 243, column: 16, scope: !2061)
!2063 = !DILocation(line: 243, column: 21, scope: !2061)
!2064 = !DILocation(line: 243, column: 11, scope: !2007)
!2065 = !DILocation(line: 244, column: 28, scope: !2061)
!2066 = !DILocation(line: 244, column: 46, scope: !2061)
!2067 = !DILocation(line: 244, column: 9, scope: !2061)
!2068 = !DILocation(line: 246, column: 13, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !6, line: 246, column: 13)
!2070 = !DILocation(line: 246, column: 26, scope: !2069)
!2071 = !DILocation(line: 246, column: 33, scope: !2069)
!2072 = !DILocation(line: 246, column: 36, scope: !2069)
!2073 = !DILocation(line: 246, column: 13, scope: !2061)
!2074 = !DILocation(line: 247, column: 30, scope: !2069)
!2075 = !DILocation(line: 248, column: 30, scope: !2069)
!2076 = !DILocation(line: 248, column: 60, scope: !2069)
!2077 = !DILocation(line: 248, column: 65, scope: !2069)
!2078 = !DILocation(line: 248, column: 48, scope: !2069)
!2079 = !DILocation(line: 247, column: 11, scope: !2069)
!2080 = !DILocation(line: 0, scope: !1291, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 249, column: 7, scope: !2007)
!2082 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2081)
!2083 = !DILocation(line: 250, column: 5, scope: !2007)
!2084 = !DILocation(line: 253, column: 22, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2008, file: !6, line: 253, column: 12)
!2086 = !DILocation(line: 253, column: 14, scope: !2085)
!2087 = !DILocation(line: 253, column: 28, scope: !2085)
!2088 = !DILocation(line: 253, column: 31, scope: !2085)
!2089 = !DILocation(line: 253, column: 55, scope: !2085)
!2090 = !DILocation(line: 253, column: 74, scope: !2085)
!2091 = !DILocation(line: 253, column: 65, scope: !2085)
!2092 = !DILocation(line: 253, column: 58, scope: !2085)
!2093 = !DILocation(line: 253, column: 12, scope: !2008)
!2094 = !DILocation(line: 254, column: 13, scope: !2085)
!2095 = !DILocation(line: 254, column: 5, scope: !2085)
!2096 = !DILocation(line: 255, column: 14, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !6, line: 255, column: 12)
!2098 = !DILocation(line: 255, column: 28, scope: !2097)
!2099 = !DILocation(line: 255, column: 47, scope: !2097)
!2100 = !DILocation(line: 255, column: 38, scope: !2097)
!2101 = !DILocation(line: 255, column: 31, scope: !2097)
!2102 = !DILocation(line: 255, column: 12, scope: !2085)
!2103 = !DILocation(line: 256, column: 13, scope: !2097)
!2104 = !DILocation(line: 256, column: 5, scope: !2097)
!2105 = !DILocation(line: 259, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !6, line: 259, column: 12)
!2107 = !DILocation(line: 259, column: 32, scope: !2106)
!2108 = !DILocation(line: 259, column: 35, scope: !2106)
!2109 = !DILocation(line: 259, column: 48, scope: !2106)
!2110 = !DILocation(line: 259, column: 51, scope: !2106)
!2111 = !DILocation(line: 259, column: 64, scope: !2106)
!2112 = !DILocation(line: 259, column: 12, scope: !2097)
!2113 = !DILocation(line: 260, column: 13, scope: !2106)
!2114 = !DILocation(line: 260, column: 5, scope: !2106)
!2115 = !DILocation(line: 263, column: 29, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2106, file: !6, line: 262, column: 5)
!2117 = !DILocation(line: 0, scope: !1291, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 264, column: 7, scope: !2116)
!2119 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2118)
!2120 = !DILocation(line: 267, column: 18, scope: !2002)
!2121 = !DILocation(line: 267, column: 3, scope: !2002)
!2122 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 183, type: !2123, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!226, !38}
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "s", arg: 1, scope: !2122, file: !6, line: 183, type: !38)
!2127 = !DILocation(line: 0, scope: !2122)
!2128 = !DILocation(line: 185, column: 12, scope: !2122)
!2129 = !DILocation(line: 185, column: 30, scope: !2122)
!2130 = !DILocation(line: 185, column: 34, scope: !2122)
!2131 = !DILocation(line: 185, column: 52, scope: !2122)
!2132 = !DILocation(line: 185, column: 56, scope: !2122)
!2133 = !DILocation(line: 185, column: 73, scope: !2122)
!2134 = !DILocation(line: 186, column: 12, scope: !2122)
!2135 = !DILocation(line: 186, column: 32, scope: !2122)
!2136 = !DILocation(line: 187, column: 12, scope: !2122)
!2137 = !DILocation(line: 187, column: 30, scope: !2122)
!2138 = !DILocation(line: 187, column: 34, scope: !2122)
!2139 = !DILocation(line: 187, column: 52, scope: !2122)
!2140 = !DILocation(line: 187, column: 56, scope: !2122)
!2141 = !DILocation(line: 187, column: 74, scope: !2122)
!2142 = !DILocation(line: 188, column: 12, scope: !2122)
!2143 = !DILocation(line: 188, column: 30, scope: !2122)
!2144 = !DILocation(line: 188, column: 34, scope: !2122)
!2145 = !DILocation(line: 188, column: 52, scope: !2122)
!2146 = !DILocation(line: 188, column: 56, scope: !2122)
!2147 = !DILocation(line: 188, column: 74, scope: !2122)
!2148 = !DILocation(line: 189, column: 12, scope: !2122)
!2149 = !DILocation(line: 189, column: 30, scope: !2122)
!2150 = !DILocation(line: 189, column: 34, scope: !2122)
!2151 = !DILocation(line: 185, column: 3, scope: !2122)
!2152 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 271, type: !2153, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!226, !226}
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2169, !2170, !2171, !2172, !2173, !2174, !2178, !2179, !2180, !2181, !2184, !2185, !2186, !2187, !2190}
!2156 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2152, file: !6, line: 271, type: !226)
!2157 = !DILocalVariable(name: "op", scope: !2152, file: !6, line: 273, type: !40)
!2158 = !DILocalVariable(name: "stat_buf", scope: !2152, file: !6, line: 274, type: !1424)
!2159 = !DILocalVariable(name: "stat_spare", scope: !2152, file: !6, line: 274, type: !1424)
!2160 = !DILocalVariable(name: "r_is_l", scope: !2152, file: !6, line: 276, type: !226)
!2161 = !DILocalVariable(name: "lbuf", scope: !2162, file: !6, line: 299, type: !2166)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !6, line: 298, column: 9)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !6, line: 293, column: 11)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !6, line: 291, column: 5)
!2165 = distinct !DILexicalBlock(scope: !2152, file: !6, line: 290, column: 7)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 168, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 21)
!2169 = !DILocalVariable(name: "rbuf", scope: !2162, file: !6, line: 300, type: !2166)
!2170 = !DILocalVariable(name: "l", scope: !2162, file: !6, line: 301, type: !38)
!2171 = !DILocalVariable(name: "r", scope: !2162, file: !6, line: 304, type: !38)
!2172 = !DILocalVariable(name: "cmp", scope: !2162, file: !6, line: 307, type: !40)
!2173 = !DILocalVariable(name: "xe_operator", scope: !2162, file: !6, line: 308, type: !226)
!2174 = !DILocalVariable(name: "lt", scope: !2175, file: !6, line: 324, type: !1447)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !6, line: 322, column: 13)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !6, line: 321, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2164, file: !6, line: 316, column: 9)
!2178 = !DILocalVariable(name: "rt", scope: !2175, file: !6, line: 324, type: !1447)
!2179 = !DILocalVariable(name: "le", scope: !2175, file: !6, line: 325, type: !226)
!2180 = !DILocalVariable(name: "re", scope: !2175, file: !6, line: 325, type: !226)
!2181 = !DILocalVariable(name: "lt", scope: !2182, file: !6, line: 353, type: !1447)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !6, line: 351, column: 13)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !6, line: 350, column: 15)
!2184 = !DILocalVariable(name: "rt", scope: !2182, file: !6, line: 353, type: !1447)
!2185 = !DILocalVariable(name: "le", scope: !2182, file: !6, line: 354, type: !226)
!2186 = !DILocalVariable(name: "re", scope: !2182, file: !6, line: 354, type: !226)
!2187 = !DILocalVariable(name: "value", scope: !2188, file: !6, line: 372, type: !226)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !6, line: 371, column: 5)
!2189 = distinct !DILexicalBlock(scope: !2152, file: !6, line: 369, column: 7)
!2190 = !DILocalVariable(name: "value", scope: !2191, file: !6, line: 379, type: !226)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !6, line: 378, column: 5)
!2192 = distinct !DILexicalBlock(scope: !2152, file: !6, line: 377, column: 7)
!2193 = !DILocalVariable(name: "finfo", scope: !2194, file: !6, line: 170, type: !1424)
!2194 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 168, type: !2195, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!226, !38, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!2198 = !{!2199, !2200, !2193, !2201}
!2199 = !DILocalVariable(name: "filename", arg: 1, scope: !2194, file: !6, line: 168, type: !38)
!2200 = !DILocalVariable(name: "mtime", arg: 2, scope: !2194, file: !6, line: 168, type: !2197)
!2201 = !DILocalVariable(name: "ok", scope: !2194, file: !6, line: 171, type: !226)
!2202 = !DILocation(line: 170, column: 15, scope: !2194, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 358, column: 20, scope: !2182)
!2204 = !DILocation(line: 170, column: 15, scope: !2194, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 330, column: 20, scope: !2175)
!2206 = !DILocation(line: 170, column: 15, scope: !2194, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 329, column: 20, scope: !2175)
!2208 = !DILocation(line: 170, column: 15, scope: !2194, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 359, column: 20, scope: !2182)
!2210 = !DILocation(line: 0, scope: !2152)
!2211 = !DILocation(line: 274, column: 3, scope: !2152)
!2212 = !DILocation(line: 274, column: 15, scope: !2152)
!2213 = !DILocation(line: 274, column: 25, scope: !2152)
!2214 = !DILocation(line: 278, column: 7, scope: !2152)
!2215 = !DILocation(line: 0, scope: !1291, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 279, column: 5, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2152, file: !6, line: 278, column: 7)
!2218 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2216)
!2219 = !DILocation(line: 279, column: 5, scope: !2217)
!2220 = !DILocation(line: 280, column: 8, scope: !2152)
!2221 = !DILocation(line: 280, column: 12, scope: !2152)
!2222 = !DILocation(line: 282, column: 13, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2152, file: !6, line: 282, column: 7)
!2224 = !DILocation(line: 282, column: 18, scope: !2223)
!2225 = !DILocation(line: 282, column: 11, scope: !2223)
!2226 = !DILocation(line: 282, column: 23, scope: !2223)
!2227 = !DILocation(line: 282, column: 26, scope: !2223)
!2228 = !DILocation(line: 282, column: 7, scope: !2152)
!2229 = !DILocation(line: 0, scope: !1291, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 285, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !6, line: 283, column: 5)
!2232 = !DILocation(line: 106, column: 3, scope: !1291, inlinedAt: !2230)
!2233 = !DILocation(line: 286, column: 5, scope: !2231)
!2234 = !DILocation(line: 290, column: 7, scope: !2165)
!2235 = !DILocation(line: 290, column: 7, scope: !2152)
!2236 = !DILocation(line: 293, column: 14, scope: !2163)
!2237 = !DILocation(line: 293, column: 33, scope: !2163)
!2238 = !DILocation(line: 294, column: 17, scope: !2163)
!2239 = !DILocation(line: 294, column: 36, scope: !2163)
!2240 = !DILocation(line: 295, column: 38, scope: !2163)
!2241 = !DILocation(line: 295, column: 50, scope: !2163)
!2242 = !DILocation(line: 296, column: 12, scope: !2163)
!2243 = !DILocation(line: 296, column: 38, scope: !2163)
!2244 = !DILocation(line: 296, column: 50, scope: !2163)
!2245 = !DILocation(line: 297, column: 11, scope: !2163)
!2246 = !DILocation(line: 297, column: 15, scope: !2163)
!2247 = !DILocation(line: 293, column: 11, scope: !2164)
!2248 = !DILocation(line: 299, column: 11, scope: !2162)
!2249 = !DILocation(line: 299, column: 16, scope: !2162)
!2250 = !DILocation(line: 300, column: 11, scope: !2162)
!2251 = !DILocation(line: 300, column: 16, scope: !2162)
!2252 = !DILocation(line: 0, scope: !2162)
!2253 = !DILocation(line: 301, column: 28, scope: !2162)
!2254 = !DILocation(line: 302, column: 41, scope: !2162)
!2255 = !DILocation(line: 302, column: 30, scope: !2162)
!2256 = !DILocation(line: 303, column: 30, scope: !2162)
!2257 = !DILocation(line: 304, column: 28, scope: !2162)
!2258 = !DILocation(line: 305, column: 57, scope: !2162)
!2259 = !DILocation(line: 305, column: 49, scope: !2162)
!2260 = !DILocation(line: 305, column: 41, scope: !2162)
!2261 = !DILocation(line: 305, column: 30, scope: !2162)
!2262 = !DILocation(line: 306, column: 48, scope: !2162)
!2263 = !DILocation(line: 306, column: 40, scope: !2162)
!2264 = !DILocation(line: 306, column: 30, scope: !2162)
!2265 = !DILocation(line: 307, column: 21, scope: !2162)
!2266 = !DILocation(line: 308, column: 31, scope: !2162)
!2267 = !DILocation(line: 308, column: 43, scope: !2162)
!2268 = !DILocation(line: 309, column: 15, scope: !2162)
!2269 = !DILocation(line: 310, column: 19, scope: !2162)
!2270 = !DILocation(line: 310, column: 46, scope: !2162)
!2271 = !DILocation(line: 310, column: 44, scope: !2162)
!2272 = !DILocation(line: 311, column: 48, scope: !2162)
!2273 = !DILocation(line: 311, column: 46, scope: !2162)
!2274 = !DILocation(line: 311, column: 21, scope: !2162)
!2275 = !DILocation(line: 312, column: 26, scope: !2162)
!2276 = !DILocation(line: 312, column: 32, scope: !2162)
!2277 = !DILocation(line: 313, column: 9, scope: !2163)
!2278 = !DILocation(line: 315, column: 15, scope: !2164)
!2279 = !DILocation(line: 315, column: 7, scope: !2164)
!2280 = !DILocation(line: 321, column: 15, scope: !2176)
!2281 = !DILocation(line: 321, column: 27, scope: !2176)
!2282 = !DILocation(line: 321, column: 34, scope: !2176)
!2283 = !DILocation(line: 321, column: 38, scope: !2176)
!2284 = !DILocation(line: 321, column: 15, scope: !2177)
!2285 = !DILocation(line: 326, column: 19, scope: !2175)
!2286 = !DILocation(line: 327, column: 26, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2175, file: !6, line: 327, column: 19)
!2288 = !DILocation(line: 328, column: 36, scope: !2287)
!2289 = !DILocation(line: 328, column: 17, scope: !2287)
!2290 = !DILocation(line: 329, column: 31, scope: !2175)
!2291 = !DILocation(line: 0, scope: !2194, inlinedAt: !2207)
!2292 = !DILocation(line: 170, column: 3, scope: !2194, inlinedAt: !2207)
!2293 = !DILocation(line: 0, scope: !1498, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 171, column: 14, scope: !2194, inlinedAt: !2207)
!2295 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2294)
!2296 = !DILocation(line: 171, column: 38, scope: !2194, inlinedAt: !2207)
!2297 = !DILocation(line: 176, column: 7, scope: !2194, inlinedAt: !2207)
!2298 = !DILocation(line: 0, scope: !2175)
!2299 = !DILocation(line: 179, column: 1, scope: !2194, inlinedAt: !2207)
!2300 = !DILocation(line: 330, column: 31, scope: !2175)
!2301 = !DILocation(line: 330, column: 39, scope: !2175)
!2302 = !DILocation(line: 0, scope: !2194, inlinedAt: !2205)
!2303 = !DILocation(line: 170, column: 3, scope: !2194, inlinedAt: !2205)
!2304 = !DILocation(line: 0, scope: !1498, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 171, column: 14, scope: !2194, inlinedAt: !2205)
!2306 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2305)
!2307 = !DILocation(line: 171, column: 38, scope: !2194, inlinedAt: !2205)
!2308 = !DILocation(line: 176, column: 7, scope: !2194, inlinedAt: !2205)
!2309 = !DILocation(line: 179, column: 1, scope: !2194, inlinedAt: !2205)
!2310 = !DILocation(line: 331, column: 25, scope: !2175)
!2311 = !DILocation(line: 0, scope: !1581, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 177, column: 14, scope: !2313, inlinedAt: !2205)
!2313 = distinct !DILexicalBlock(scope: !2194, file: !6, line: 176, column: 7)
!2314 = !DILocation(line: 149, column: 10, scope: !1581, inlinedAt: !2312)
!2315 = !DILocation(line: 91, column: 16, scope: !1595, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 331, column: 36, scope: !2175)
!2317 = !DILocation(line: 0, scope: !1587, inlinedAt: !2316)
!2318 = !DILocation(line: 93, column: 16, scope: !1598, inlinedAt: !2316)
!2319 = !DILocation(line: 93, column: 7, scope: !1587, inlinedAt: !2316)
!2320 = !DILocation(line: 98, column: 3, scope: !1587, inlinedAt: !2316)
!2321 = !DILocation(line: 99, column: 3, scope: !1587, inlinedAt: !2316)
!2322 = !DILocation(line: 101, column: 20, scope: !1587, inlinedAt: !2316)
!2323 = !DILocation(line: 101, column: 10, scope: !1587, inlinedAt: !2316)
!2324 = !DILocation(line: 101, column: 3, scope: !1587, inlinedAt: !2316)
!2325 = !DILocation(line: 336, column: 15, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2177, file: !6, line: 336, column: 15)
!2327 = !DILocation(line: 336, column: 27, scope: !2326)
!2328 = !DILocation(line: 336, column: 34, scope: !2326)
!2329 = !DILocation(line: 336, column: 38, scope: !2326)
!2330 = !DILocation(line: 336, column: 15, scope: !2177)
!2331 = !DILocation(line: 339, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !6, line: 337, column: 13)
!2333 = !DILocation(line: 340, column: 26, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !6, line: 340, column: 19)
!2335 = !DILocation(line: 341, column: 36, scope: !2334)
!2336 = !DILocation(line: 341, column: 17, scope: !2334)
!2337 = !DILocation(line: 342, column: 29, scope: !2332)
!2338 = !DILocation(line: 0, scope: !1498, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 342, column: 23, scope: !2332)
!2340 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2339)
!2341 = !DILocation(line: 342, column: 54, scope: !2332)
!2342 = !DILocation(line: 343, column: 23, scope: !2332)
!2343 = !DILocation(line: 343, column: 32, scope: !2332)
!2344 = !DILocation(line: 343, column: 40, scope: !2332)
!2345 = !DILocation(line: 0, scope: !1498, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 343, column: 26, scope: !2332)
!2347 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2346)
!2348 = !DILocation(line: 343, column: 59, scope: !2332)
!2349 = !DILocation(line: 344, column: 23, scope: !2332)
!2350 = !DILocation(line: 344, column: 35, scope: !2332)
!2351 = !{!1631, !1578, i64 0}
!2352 = !DILocation(line: 344, column: 56, scope: !2332)
!2353 = !DILocation(line: 344, column: 42, scope: !2332)
!2354 = !DILocation(line: 345, column: 23, scope: !2332)
!2355 = !DILocation(line: 345, column: 35, scope: !2332)
!2356 = !{!1631, !1578, i64 8}
!2357 = !DILocation(line: 345, column: 56, scope: !2332)
!2358 = !DILocation(line: 345, column: 42, scope: !2332)
!2359 = !DILocation(line: 350, column: 22, scope: !2183)
!2360 = !DILocation(line: 350, column: 19, scope: !2183)
!2361 = !DILocation(line: 350, column: 34, scope: !2183)
!2362 = !DILocation(line: 350, column: 47, scope: !2183)
!2363 = !DILocation(line: 350, column: 44, scope: !2183)
!2364 = !DILocation(line: 350, column: 15, scope: !2177)
!2365 = !DILocation(line: 355, column: 19, scope: !2182)
!2366 = !DILocation(line: 356, column: 26, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2182, file: !6, line: 356, column: 19)
!2368 = !DILocation(line: 357, column: 36, scope: !2367)
!2369 = !DILocation(line: 357, column: 17, scope: !2367)
!2370 = !DILocation(line: 358, column: 31, scope: !2182)
!2371 = !DILocation(line: 0, scope: !2194, inlinedAt: !2203)
!2372 = !DILocation(line: 170, column: 3, scope: !2194, inlinedAt: !2203)
!2373 = !DILocation(line: 0, scope: !1498, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 171, column: 14, scope: !2194, inlinedAt: !2203)
!2375 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2374)
!2376 = !DILocation(line: 176, column: 7, scope: !2194, inlinedAt: !2203)
!2377 = !DILocation(line: 0, scope: !2182)
!2378 = !DILocation(line: 179, column: 1, scope: !2194, inlinedAt: !2203)
!2379 = !DILocation(line: 359, column: 31, scope: !2182)
!2380 = !DILocation(line: 359, column: 39, scope: !2182)
!2381 = !DILocation(line: 0, scope: !2194, inlinedAt: !2209)
!2382 = !DILocation(line: 170, column: 3, scope: !2194, inlinedAt: !2209)
!2383 = !DILocation(line: 0, scope: !1498, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 171, column: 14, scope: !2194, inlinedAt: !2209)
!2385 = !DILocation(line: 455, column: 10, scope: !1498, inlinedAt: !2384)
!2386 = !DILocation(line: 171, column: 38, scope: !2194, inlinedAt: !2209)
!2387 = !DILocation(line: 176, column: 7, scope: !2194, inlinedAt: !2209)
!2388 = !DILocation(line: 179, column: 1, scope: !2194, inlinedAt: !2209)
!2389 = !DILocation(line: 360, column: 25, scope: !2182)
!2390 = !DILocation(line: 171, column: 38, scope: !2194, inlinedAt: !2203)
!2391 = !DILocation(line: 0, scope: !1581, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 177, column: 14, scope: !2313, inlinedAt: !2209)
!2393 = !DILocation(line: 149, column: 10, scope: !1581, inlinedAt: !2392)
!2394 = !DILocation(line: 91, column: 16, scope: !1595, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 360, column: 36, scope: !2182)
!2396 = !DILocation(line: 0, scope: !1587, inlinedAt: !2395)
!2397 = !DILocation(line: 93, column: 16, scope: !1598, inlinedAt: !2395)
!2398 = !DILocation(line: 93, column: 7, scope: !1587, inlinedAt: !2395)
!2399 = !DILocation(line: 98, column: 3, scope: !1587, inlinedAt: !2395)
!2400 = !DILocation(line: 99, column: 3, scope: !1587, inlinedAt: !2395)
!2401 = !DILocation(line: 101, column: 20, scope: !1587, inlinedAt: !2395)
!2402 = !DILocation(line: 101, column: 10, scope: !1587, inlinedAt: !2395)
!2403 = !DILocation(line: 101, column: 3, scope: !1587, inlinedAt: !2395)
!2404 = !DILocation(line: 366, column: 26, scope: !2164)
!2405 = !DILocation(line: 366, column: 67, scope: !2164)
!2406 = !DILocation(line: 366, column: 60, scope: !2164)
!2407 = !DILocation(line: 366, column: 7, scope: !2164)
!2408 = !DILocation(line: 370, column: 12, scope: !2189)
!2409 = !DILocation(line: 370, column: 24, scope: !2189)
!2410 = !DILocation(line: 370, column: 53, scope: !2189)
!2411 = !DILocation(line: 369, column: 7, scope: !2152)
!2412 = !DILocation(line: 372, column: 20, scope: !2188)
!2413 = !DILocation(line: 0, scope: !2188)
!2414 = !DILocation(line: 373, column: 11, scope: !2188)
!2415 = !DILocation(line: 377, column: 7, scope: !2192)
!2416 = !DILocation(line: 377, column: 7, scope: !2152)
!2417 = !DILocation(line: 379, column: 21, scope: !2191)
!2418 = !DILocation(line: 0, scope: !2191)
!2419 = !DILocation(line: 380, column: 11, scope: !2191)
!2420 = !DILocation(line: 385, column: 3, scope: !2152)
!2421 = !DILocation(line: 386, column: 1, scope: !2152)
!2422 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 133, type: !130, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DILocalVariable(name: "string", arg: 1, scope: !2422, file: !6, line: 133, type: !38)
!2425 = !DILocalVariable(name: "p", scope: !2422, file: !6, line: 135, type: !38)
!2426 = !DILocalVariable(name: "number_start", scope: !2422, file: !6, line: 136, type: !38)
!2427 = !DILocation(line: 0, scope: !2422)
!2428 = !DILocation(line: 0, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !6, line: 138, column: 3)
!2430 = distinct !DILexicalBlock(scope: !2422, file: !6, line: 138, column: 3)
!2431 = !DILocation(line: 138, column: 8, scope: !2430)
!2432 = !DILocation(line: 0, scope: !2430)
!2433 = !DILocation(line: 138, column: 20, scope: !2429)
!2434 = !{!2435, !2435, i64 0}
!2435 = !{!"short", !1131, i64 0}
!2436 = !DILocation(line: 138, column: 3, scope: !2430)
!2437 = !DILocation(line: 138, column: 46, scope: !2429)
!2438 = distinct !{!2438, !2436, !2439}
!2439 = !DILocation(line: 139, column: 5, scope: !2430)
!2440 = !DILocation(line: 141, column: 10, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2422, file: !6, line: 141, column: 7)
!2442 = !DILocation(line: 141, column: 7, scope: !2422)
!2443 = !DILocation(line: 152, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2422, file: !6, line: 152, column: 7)
!2445 = !DILocation(line: 152, column: 7, scope: !2422)
!2446 = !DILocation(line: 0, scope: !2444)
!2447 = !DILocation(line: 154, column: 14, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !6, line: 153, column: 5)
!2449 = !DILocation(line: 154, column: 7, scope: !2448)
!2450 = distinct !{!2450, !2449, !2451}
!2451 = !DILocation(line: 155, column: 10, scope: !2448)
!2452 = !DILocation(line: 156, column: 14, scope: !2448)
!2453 = !DILocation(line: 156, column: 7, scope: !2448)
!2454 = !DILocation(line: 157, column: 10, scope: !2448)
!2455 = distinct !{!2455, !2453, !2454}
!2456 = !DILocation(line: 158, column: 12, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2448, file: !6, line: 158, column: 11)
!2458 = !DILocation(line: 158, column: 11, scope: !2448)
!2459 = !DILocation(line: 159, column: 9, scope: !2457)
!2460 = !DILocation(line: 162, column: 22, scope: !2422)
!2461 = !DILocation(line: 162, column: 47, scope: !2422)
!2462 = !DILocation(line: 162, column: 3, scope: !2422)
!2463 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !179, file: !179, line: 51, type: !105, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2464)
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "file", arg: 1, scope: !2463, file: !179, line: 51, type: !38)
!2466 = !DILocation(line: 0, scope: !2463)
!2467 = !DILocation(line: 53, column: 13, scope: !2463)
!2468 = !DILocation(line: 54, column: 1, scope: !2463)
!2469 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !179, file: !179, line: 88, type: !1292, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2470)
!2470 = !{!2471}
!2471 = !DILocalVariable(name: "ignore", arg: 1, scope: !2469, file: !179, line: 88, type: !226)
!2472 = !DILocation(line: 0, scope: !2469)
!2473 = !DILocation(line: 90, column: 16, scope: !2469)
!2474 = !{!2475, !2475, i64 0}
!2475 = !{!"_Bool", !1131, i64 0}
!2476 = !DILocation(line: 91, column: 1, scope: !2469)
!2477 = distinct !DISubprogram(name: "close_stdout", scope: !179, file: !179, line: 117, type: !122, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2478)
!2478 = !{!2479}
!2479 = !DILocalVariable(name: "write_error", scope: !2480, file: !179, line: 122, type: !38)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !179, line: 121, column: 5)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !179, line: 119, column: 7)
!2482 = !DILocation(line: 119, column: 21, scope: !2481)
!2483 = !DILocation(line: 119, column: 7, scope: !2481)
!2484 = !DILocation(line: 119, column: 29, scope: !2481)
!2485 = !DILocation(line: 120, column: 7, scope: !2481)
!2486 = !DILocation(line: 120, column: 12, scope: !2481)
!2487 = !{i8 0, i8 2}
!2488 = !DILocation(line: 120, column: 25, scope: !2481)
!2489 = !DILocation(line: 120, column: 28, scope: !2481)
!2490 = !DILocation(line: 120, column: 34, scope: !2481)
!2491 = !DILocation(line: 119, column: 7, scope: !2477)
!2492 = !DILocation(line: 122, column: 33, scope: !2480)
!2493 = !DILocation(line: 0, scope: !2480)
!2494 = !DILocation(line: 123, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2480, file: !179, line: 123, column: 11)
!2496 = !DILocation(line: 0, scope: !2495)
!2497 = !DILocation(line: 123, column: 11, scope: !2480)
!2498 = !DILocation(line: 124, column: 36, scope: !2495)
!2499 = !DILocation(line: 124, column: 9, scope: !2495)
!2500 = !DILocation(line: 127, column: 9, scope: !2495)
!2501 = !DILocation(line: 129, column: 14, scope: !2480)
!2502 = !DILocation(line: 129, column: 7, scope: !2480)
!2503 = !DILocation(line: 134, column: 42, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2477, file: !179, line: 134, column: 7)
!2505 = !DILocation(line: 134, column: 28, scope: !2504)
!2506 = !DILocation(line: 134, column: 50, scope: !2504)
!2507 = !DILocation(line: 134, column: 7, scope: !2477)
!2508 = !DILocation(line: 135, column: 12, scope: !2504)
!2509 = !DILocation(line: 135, column: 5, scope: !2504)
!2510 = !DILocation(line: 136, column: 1, scope: !2477)
!2511 = distinct !DISubprogram(name: "umaxtostr", scope: !2512, file: !2512, line: 36, type: !2513, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !2515)
!2512 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!36, !409, !36}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "i", arg: 1, scope: !2511, file: !2512, line: 36, type: !409)
!2517 = !DILocalVariable(name: "buf", arg: 2, scope: !2511, file: !2512, line: 36, type: !36)
!2518 = !DILocalVariable(name: "p", scope: !2511, file: !2512, line: 38, type: !36)
!2519 = !DILocation(line: 0, scope: !2511)
!2520 = !DILocation(line: 38, column: 17, scope: !2511)
!2521 = !DILocation(line: 39, column: 6, scope: !2511)
!2522 = !DILocation(line: 41, column: 7, scope: !2511)
!2523 = !DILocation(line: 52, column: 24, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2512, line: 50, column: 5)
!2525 = distinct !DILexicalBlock(scope: !2511, file: !2512, line: 41, column: 7)
!2526 = !DILocation(line: 52, column: 16, scope: !2524)
!2527 = !DILocation(line: 52, column: 10, scope: !2524)
!2528 = !DILocation(line: 52, column: 14, scope: !2524)
!2529 = !DILocation(line: 53, column: 17, scope: !2524)
!2530 = !DILocation(line: 53, column: 24, scope: !2524)
!2531 = !DILocation(line: 52, column: 9, scope: !2524)
!2532 = distinct !{!2532, !2533, !2534}
!2533 = !DILocation(line: 51, column: 7, scope: !2524)
!2534 = !DILocation(line: 53, column: 28, scope: !2524)
!2535 = !DILocation(line: 56, column: 3, scope: !2511)
!2536 = distinct !DISubprogram(name: "set_program_name", scope: !236, file: !236, line: 39, type: !105, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "argv0", arg: 1, scope: !2536, file: !236, line: 39, type: !38)
!2539 = !DILocalVariable(name: "slash", scope: !2536, file: !236, line: 46, type: !38)
!2540 = !DILocalVariable(name: "base", scope: !2536, file: !236, line: 47, type: !38)
!2541 = !DILocation(line: 0, scope: !2536)
!2542 = !DILocation(line: 51, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !236, line: 51, column: 7)
!2544 = !DILocation(line: 51, column: 7, scope: !2536)
!2545 = !DILocation(line: 55, column: 14, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !236, line: 52, column: 5)
!2547 = !DILocation(line: 54, column: 7, scope: !2546)
!2548 = !DILocation(line: 56, column: 7, scope: !2546)
!2549 = !DILocation(line: 59, column: 11, scope: !2536)
!2550 = !DILocation(line: 60, column: 17, scope: !2536)
!2551 = !DILocation(line: 60, column: 11, scope: !2536)
!2552 = !DILocation(line: 61, column: 12, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2536, file: !236, line: 61, column: 7)
!2554 = !DILocation(line: 61, column: 20, scope: !2553)
!2555 = !DILocation(line: 61, column: 25, scope: !2553)
!2556 = !DILocation(line: 61, column: 42, scope: !2553)
!2557 = !DILocation(line: 61, column: 28, scope: !2553)
!2558 = !DILocation(line: 61, column: 61, scope: !2553)
!2559 = !DILocation(line: 61, column: 7, scope: !2536)
!2560 = !DILocation(line: 64, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !236, line: 64, column: 11)
!2562 = distinct !DILexicalBlock(scope: !2553, file: !236, line: 62, column: 5)
!2563 = !DILocation(line: 64, column: 36, scope: !2561)
!2564 = !DILocation(line: 64, column: 11, scope: !2562)
!2565 = !DILocation(line: 66, column: 24, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2561, file: !236, line: 65, column: 9)
!2567 = !DILocation(line: 70, column: 41, scope: !2566)
!2568 = !DILocation(line: 72, column: 9, scope: !2566)
!2569 = !DILocation(line: 84, column: 16, scope: !2536)
!2570 = !DILocation(line: 90, column: 27, scope: !2536)
!2571 = !DILocation(line: 92, column: 1, scope: !2536)
!2572 = distinct !DISubprogram(name: "clone_quoting_options", scope: !277, file: !277, line: 122, type: !2573, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2576)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!2575, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!2576 = !{!2577, !2578, !2579}
!2577 = !DILocalVariable(name: "o", arg: 1, scope: !2572, file: !277, line: 122, type: !2575)
!2578 = !DILocalVariable(name: "e", scope: !2572, file: !277, line: 124, type: !40)
!2579 = !DILocalVariable(name: "p", scope: !2572, file: !277, line: 125, type: !2575)
!2580 = !DILocation(line: 0, scope: !2572)
!2581 = !DILocation(line: 124, column: 11, scope: !2572)
!2582 = !DILocation(line: 125, column: 40, scope: !2572)
!2583 = !DILocation(line: 125, column: 31, scope: !2572)
!2584 = !DILocation(line: 127, column: 9, scope: !2572)
!2585 = !DILocation(line: 128, column: 3, scope: !2572)
!2586 = distinct !DISubprogram(name: "get_quoting_style", scope: !277, file: !277, line: 133, type: !2587, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!279, !308}
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "o", arg: 1, scope: !2586, file: !277, line: 133, type: !308)
!2591 = !DILocation(line: 0, scope: !2586)
!2592 = !DILocation(line: 135, column: 11, scope: !2586)
!2593 = !DILocation(line: 135, column: 46, scope: !2586)
!2594 = !{!2595, !1131, i64 0}
!2595 = !{!"quoting_options", !1131, i64 0, !1202, i64 4, !1131, i64 8, !1130, i64 40, !1130, i64 48}
!2596 = !DILocation(line: 135, column: 3, scope: !2586)
!2597 = distinct !DISubprogram(name: "set_quoting_style", scope: !277, file: !277, line: 141, type: !2598, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2575, !279}
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "o", arg: 1, scope: !2597, file: !277, line: 141, type: !2575)
!2602 = !DILocalVariable(name: "s", arg: 2, scope: !2597, file: !277, line: 141, type: !279)
!2603 = !DILocation(line: 0, scope: !2597)
!2604 = !DILocation(line: 143, column: 4, scope: !2597)
!2605 = !DILocation(line: 143, column: 39, scope: !2597)
!2606 = !DILocation(line: 143, column: 45, scope: !2597)
!2607 = !DILocation(line: 144, column: 1, scope: !2597)
!2608 = distinct !DISubprogram(name: "set_char_quoting", scope: !277, file: !277, line: 152, type: !2609, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!40, !2575, !37, !40}
!2611 = !{!2612, !2613, !2614, !2615, !2617, !2619, !2620}
!2612 = !DILocalVariable(name: "o", arg: 1, scope: !2608, file: !277, line: 152, type: !2575)
!2613 = !DILocalVariable(name: "c", arg: 2, scope: !2608, file: !277, line: 152, type: !37)
!2614 = !DILocalVariable(name: "i", arg: 3, scope: !2608, file: !277, line: 152, type: !40)
!2615 = !DILocalVariable(name: "uc", scope: !2608, file: !277, line: 154, type: !2616)
!2616 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2617 = !DILocalVariable(name: "p", scope: !2608, file: !277, line: 155, type: !2618)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2619 = !DILocalVariable(name: "shift", scope: !2608, file: !277, line: 157, type: !40)
!2620 = !DILocalVariable(name: "r", scope: !2608, file: !277, line: 158, type: !40)
!2621 = !DILocation(line: 0, scope: !2608)
!2622 = !DILocation(line: 156, column: 6, scope: !2608)
!2623 = !DILocation(line: 156, column: 62, scope: !2608)
!2624 = !DILocation(line: 156, column: 57, scope: !2608)
!2625 = !DILocation(line: 157, column: 15, scope: !2608)
!2626 = !DILocation(line: 158, column: 12, scope: !2608)
!2627 = !DILocation(line: 158, column: 15, scope: !2608)
!2628 = !DILocation(line: 158, column: 25, scope: !2608)
!2629 = !DILocation(line: 159, column: 13, scope: !2608)
!2630 = !DILocation(line: 159, column: 18, scope: !2608)
!2631 = !DILocation(line: 159, column: 23, scope: !2608)
!2632 = !DILocation(line: 159, column: 6, scope: !2608)
!2633 = !DILocation(line: 160, column: 3, scope: !2608)
!2634 = distinct !DISubprogram(name: "set_quoting_flags", scope: !277, file: !277, line: 168, type: !2635, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!40, !2575, !40}
!2637 = !{!2638, !2639, !2640}
!2638 = !DILocalVariable(name: "o", arg: 1, scope: !2634, file: !277, line: 168, type: !2575)
!2639 = !DILocalVariable(name: "i", arg: 2, scope: !2634, file: !277, line: 168, type: !40)
!2640 = !DILocalVariable(name: "r", scope: !2634, file: !277, line: 170, type: !40)
!2641 = !DILocation(line: 0, scope: !2634)
!2642 = !DILocation(line: 171, column: 8, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2634, file: !277, line: 171, column: 7)
!2644 = !DILocation(line: 171, column: 7, scope: !2634)
!2645 = !DILocation(line: 173, column: 10, scope: !2634)
!2646 = !{!2595, !1202, i64 4}
!2647 = !DILocation(line: 174, column: 12, scope: !2634)
!2648 = !DILocation(line: 175, column: 3, scope: !2634)
!2649 = distinct !DISubprogram(name: "set_custom_quoting", scope: !277, file: !277, line: 179, type: !2650, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2575, !38, !38}
!2652 = !{!2653, !2654, !2655}
!2653 = !DILocalVariable(name: "o", arg: 1, scope: !2649, file: !277, line: 179, type: !2575)
!2654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2649, file: !277, line: 180, type: !38)
!2655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2649, file: !277, line: 180, type: !38)
!2656 = !DILocation(line: 0, scope: !2649)
!2657 = !DILocation(line: 182, column: 8, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2649, file: !277, line: 182, column: 7)
!2659 = !DILocation(line: 182, column: 7, scope: !2649)
!2660 = !DILocation(line: 184, column: 6, scope: !2649)
!2661 = !DILocation(line: 184, column: 12, scope: !2649)
!2662 = !DILocation(line: 185, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2649, file: !277, line: 185, column: 7)
!2664 = !DILocation(line: 185, column: 23, scope: !2663)
!2665 = !DILocation(line: 185, column: 19, scope: !2663)
!2666 = !DILocation(line: 186, column: 5, scope: !2663)
!2667 = !DILocation(line: 187, column: 6, scope: !2649)
!2668 = !DILocation(line: 187, column: 17, scope: !2649)
!2669 = !{!2595, !1130, i64 40}
!2670 = !DILocation(line: 188, column: 6, scope: !2649)
!2671 = !DILocation(line: 188, column: 18, scope: !2649)
!2672 = !{!2595, !1130, i64 48}
!2673 = !DILocation(line: 189, column: 1, scope: !2649)
!2674 = distinct !DISubprogram(name: "quotearg_buffer", scope: !277, file: !277, line: 784, type: !2675, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!95, !36, !95, !38, !95, !308}
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!2678 = !DILocalVariable(name: "buffer", arg: 1, scope: !2674, file: !277, line: 784, type: !36)
!2679 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2674, file: !277, line: 784, type: !95)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2674, file: !277, line: 785, type: !38)
!2681 = !DILocalVariable(name: "argsize", arg: 4, scope: !2674, file: !277, line: 785, type: !95)
!2682 = !DILocalVariable(name: "o", arg: 5, scope: !2674, file: !277, line: 786, type: !308)
!2683 = !DILocalVariable(name: "p", scope: !2674, file: !277, line: 788, type: !308)
!2684 = !DILocalVariable(name: "e", scope: !2674, file: !277, line: 789, type: !40)
!2685 = !DILocalVariable(name: "r", scope: !2674, file: !277, line: 790, type: !95)
!2686 = !DILocation(line: 0, scope: !2674)
!2687 = !DILocation(line: 788, column: 37, scope: !2674)
!2688 = !DILocation(line: 789, column: 11, scope: !2674)
!2689 = !DILocation(line: 791, column: 43, scope: !2674)
!2690 = !DILocation(line: 791, column: 53, scope: !2674)
!2691 = !DILocation(line: 791, column: 60, scope: !2674)
!2692 = !DILocation(line: 792, column: 43, scope: !2674)
!2693 = !DILocation(line: 792, column: 58, scope: !2674)
!2694 = !DILocation(line: 790, column: 14, scope: !2674)
!2695 = !DILocation(line: 793, column: 9, scope: !2674)
!2696 = !DILocation(line: 794, column: 3, scope: !2674)
!2697 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !277, file: !277, line: 256, type: !2698, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2702)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!95, !36, !95, !38, !95, !279, !40, !2700, !38, !38}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2727, !2728, !2729, !2730, !2731, !2734, !2735, !2741, !2744, !2745, !2752, !2755, !2756, !2757, !2758, !2759, !2760}
!2703 = !DILocalVariable(name: "buffer", arg: 1, scope: !2697, file: !277, line: 256, type: !36)
!2704 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2697, file: !277, line: 256, type: !95)
!2705 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !277, line: 257, type: !38)
!2706 = !DILocalVariable(name: "argsize", arg: 4, scope: !2697, file: !277, line: 257, type: !95)
!2707 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2697, file: !277, line: 258, type: !279)
!2708 = !DILocalVariable(name: "flags", arg: 6, scope: !2697, file: !277, line: 258, type: !40)
!2709 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2697, file: !277, line: 259, type: !2700)
!2710 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2697, file: !277, line: 260, type: !38)
!2711 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2697, file: !277, line: 261, type: !38)
!2712 = !DILocalVariable(name: "i", scope: !2697, file: !277, line: 263, type: !95)
!2713 = !DILocalVariable(name: "len", scope: !2697, file: !277, line: 264, type: !95)
!2714 = !DILocalVariable(name: "orig_buffersize", scope: !2697, file: !277, line: 265, type: !95)
!2715 = !DILocalVariable(name: "quote_string", scope: !2697, file: !277, line: 266, type: !38)
!2716 = !DILocalVariable(name: "quote_string_len", scope: !2697, file: !277, line: 267, type: !95)
!2717 = !DILocalVariable(name: "backslash_escapes", scope: !2697, file: !277, line: 268, type: !226)
!2718 = !DILocalVariable(name: "unibyte_locale", scope: !2697, file: !277, line: 269, type: !226)
!2719 = !DILocalVariable(name: "elide_outer_quotes", scope: !2697, file: !277, line: 270, type: !226)
!2720 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2697, file: !277, line: 271, type: !226)
!2721 = !DILocalVariable(name: "encountered_single_quote", scope: !2697, file: !277, line: 272, type: !226)
!2722 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2697, file: !277, line: 273, type: !226)
!2723 = !DILocalVariable(name: "c", scope: !2724, file: !277, line: 402, type: !2616)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !277, line: 401, column: 5)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !277, line: 400, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 400, column: 3)
!2727 = !DILocalVariable(name: "esc", scope: !2724, file: !277, line: 403, type: !2616)
!2728 = !DILocalVariable(name: "is_right_quote", scope: !2724, file: !277, line: 404, type: !226)
!2729 = !DILocalVariable(name: "escaping", scope: !2724, file: !277, line: 405, type: !226)
!2730 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2724, file: !277, line: 406, type: !226)
!2731 = !DILocalVariable(name: "m", scope: !2732, file: !277, line: 610, type: !95)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 608, column: 11)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 426, column: 9)
!2734 = !DILocalVariable(name: "printable", scope: !2732, file: !277, line: 612, type: !226)
!2735 = !DILocalVariable(name: "mbstate", scope: !2736, file: !277, line: 621, type: !2738)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !277, line: 620, column: 15)
!2737 = distinct !DILexicalBlock(scope: !2732, file: !277, line: 614, column: 17)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2739, line: 6, baseType: !2740)
!2739 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !333, line: 21, baseType: !332)
!2741 = !DILocalVariable(name: "w", scope: !2742, file: !277, line: 631, type: !2743)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !277, line: 630, column: 19)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !96, line: 74, baseType: !40)
!2744 = !DILocalVariable(name: "bytes", scope: !2742, file: !277, line: 632, type: !95)
!2745 = !DILocalVariable(name: "j", scope: !2746, file: !277, line: 657, type: !95)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !277, line: 656, column: 27)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !277, line: 654, column: 29)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !277, line: 649, column: 23)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !277, line: 641, column: 30)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !277, line: 636, column: 30)
!2751 = distinct !DILexicalBlock(scope: !2742, file: !277, line: 634, column: 25)
!2752 = !DILocalVariable(name: "ilim", scope: !2753, file: !277, line: 684, type: !95)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !277, line: 681, column: 15)
!2754 = distinct !DILexicalBlock(scope: !2732, file: !277, line: 680, column: 17)
!2755 = !DILabel(scope: !2697, name: "process_input", file: !277, line: 314)
!2756 = !DILabel(scope: !2733, name: "c_and_shell_escape", file: !277, line: 512)
!2757 = !DILabel(scope: !2733, name: "c_escape", file: !277, line: 517)
!2758 = !DILabel(scope: !2724, name: "store_escape", file: !277, line: 719)
!2759 = !DILabel(scope: !2724, name: "store_c", file: !277, line: 722)
!2760 = !DILabel(scope: !2697, name: "force_outer_quoting_style", file: !277, line: 763)
!2761 = !DILocation(line: 0, scope: !2697)
!2762 = !DILocation(line: 269, column: 25, scope: !2697)
!2763 = !DILocation(line: 269, column: 36, scope: !2697)
!2764 = !DILocation(line: 270, column: 8, scope: !2697)
!2765 = !DILocation(line: 0, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 526, column: 15)
!2767 = !DILocation(line: 0, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !277, line: 462, column: 19)
!2769 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 455, column: 13)
!2770 = !DILocation(line: 0, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !277, line: 449, column: 20)
!2772 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 428, column: 15)
!2773 = !DILocation(line: 0, scope: !2736)
!2774 = !DILocation(line: 0, scope: !2742)
!2775 = !DILocation(line: 0, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 712, column: 11)
!2777 = !DILocation(line: 273, column: 3, scope: !2697)
!2778 = !DILocation(line: 265, column: 10, scope: !2697)
!2779 = !DILocation(line: 266, column: 15, scope: !2697)
!2780 = !DILocation(line: 267, column: 10, scope: !2697)
!2781 = !DILocation(line: 268, column: 8, scope: !2697)
!2782 = !DILocation(line: 271, column: 8, scope: !2697)
!2783 = !DILocation(line: 272, column: 8, scope: !2697)
!2784 = !DILocation(line: 273, column: 8, scope: !2697)
!2785 = !DILocation(line: 314, column: 2, scope: !2697)
!2786 = !DILocation(line: 316, column: 3, scope: !2697)
!2787 = !DILocation(line: 323, column: 11, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 317, column: 5)
!2789 = !DILocation(line: 323, column: 12, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2788, file: !277, line: 323, column: 11)
!2791 = !DILocation(line: 324, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !277, line: 324, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !277, line: 324, column: 9)
!2794 = !DILocation(line: 324, column: 9, scope: !2793)
!2795 = !DILocation(line: 362, column: 26, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !277, line: 340, column: 11)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !277, line: 339, column: 13)
!2798 = distinct !DILexicalBlock(scope: !2788, file: !277, line: 338, column: 7)
!2799 = !DILocation(line: 363, column: 27, scope: !2796)
!2800 = !DILocation(line: 364, column: 11, scope: !2796)
!2801 = !DILocation(line: 365, column: 14, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !277, line: 365, column: 13)
!2803 = !DILocation(line: 365, column: 13, scope: !2798)
!2804 = !DILocation(line: 366, column: 43, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !277, line: 366, column: 11)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !277, line: 366, column: 11)
!2807 = !DILocation(line: 366, column: 11, scope: !2806)
!2808 = !DILocation(line: 367, column: 13, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !277, line: 367, column: 13)
!2810 = distinct !DILexicalBlock(scope: !2805, file: !277, line: 367, column: 13)
!2811 = !DILocation(line: 367, column: 13, scope: !2810)
!2812 = !DILocation(line: 366, column: 70, scope: !2805)
!2813 = distinct !{!2813, !2807, !2814}
!2814 = !DILocation(line: 367, column: 13, scope: !2806)
!2815 = !DILocation(line: 264, column: 10, scope: !2697)
!2816 = !DILocation(line: 370, column: 28, scope: !2798)
!2817 = !DILocation(line: 372, column: 7, scope: !2788)
!2818 = !DILocation(line: 376, column: 7, scope: !2788)
!2819 = !DILocation(line: 379, column: 7, scope: !2788)
!2820 = !DILocation(line: 381, column: 12, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2788, file: !277, line: 381, column: 11)
!2822 = !DILocation(line: 381, column: 11, scope: !2788)
!2823 = !DILocation(line: 386, column: 12, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2788, file: !277, line: 386, column: 11)
!2825 = !DILocation(line: 386, column: 11, scope: !2788)
!2826 = !DILocation(line: 387, column: 9, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !277, line: 387, column: 9)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !277, line: 387, column: 9)
!2829 = !DILocation(line: 387, column: 9, scope: !2828)
!2830 = !DILocation(line: 394, column: 7, scope: !2788)
!2831 = !DILocation(line: 397, column: 7, scope: !2788)
!2832 = !DILocation(line: 0, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 408, column: 11)
!2834 = !DILocation(line: 0, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !277, line: 419, column: 15)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !277, line: 418, column: 9)
!2837 = !DILocation(line: 0, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 556, column: 15)
!2839 = !DILocation(line: 0, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 548, column: 15)
!2841 = !DILocation(line: 0, scope: !2747)
!2842 = !DILocation(line: 0, scope: !2754)
!2843 = !DILocation(line: 0, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 509, column: 15)
!2845 = !DILocation(line: 400, column: 8, scope: !2726)
!2846 = !DILocation(line: 0, scope: !2726)
!2847 = !DILocation(line: 400, column: 27, scope: !2725)
!2848 = !DILocation(line: 400, column: 19, scope: !2725)
!2849 = !DILocation(line: 400, column: 41, scope: !2725)
!2850 = !DILocation(line: 400, column: 48, scope: !2725)
!2851 = !DILocation(line: 400, column: 3, scope: !2726)
!2852 = !DILocation(line: 400, column: 60, scope: !2725)
!2853 = !DILocation(line: 0, scope: !2724)
!2854 = !DILocation(line: 409, column: 11, scope: !2833)
!2855 = !DILocation(line: 411, column: 17, scope: !2833)
!2856 = !DILocation(line: 412, column: 39, scope: !2833)
!2857 = !DILocation(line: 416, column: 32, scope: !2833)
!2858 = !DILocation(line: 412, column: 19, scope: !2833)
!2859 = !DILocation(line: 412, column: 15, scope: !2833)
!2860 = !DILocation(line: 417, column: 11, scope: !2833)
!2861 = !DILocation(line: 417, column: 26, scope: !2833)
!2862 = !DILocation(line: 417, column: 14, scope: !2833)
!2863 = !DILocation(line: 417, column: 63, scope: !2833)
!2864 = !DILocation(line: 408, column: 11, scope: !2724)
!2865 = !DILocation(line: 424, column: 11, scope: !2724)
!2866 = !DILocation(line: 425, column: 7, scope: !2724)
!2867 = !DILocation(line: 428, column: 15, scope: !2733)
!2868 = !DILocation(line: 430, column: 15, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !277, line: 430, column: 15)
!2870 = distinct !DILexicalBlock(scope: !2772, file: !277, line: 429, column: 13)
!2871 = !DILocation(line: 430, column: 15, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !277, line: 430, column: 15)
!2873 = !DILocation(line: 430, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !277, line: 430, column: 15)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !277, line: 430, column: 15)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !277, line: 430, column: 15)
!2877 = !DILocation(line: 430, column: 15, scope: !2875)
!2878 = !DILocation(line: 430, column: 15, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !277, line: 430, column: 15)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !277, line: 430, column: 15)
!2881 = !DILocation(line: 430, column: 15, scope: !2880)
!2882 = !DILocation(line: 430, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !277, line: 430, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2876, file: !277, line: 430, column: 15)
!2885 = !DILocation(line: 430, column: 15, scope: !2884)
!2886 = !DILocation(line: 430, column: 15, scope: !2876)
!2887 = !DILocation(line: 430, column: 15, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !277, line: 430, column: 15)
!2889 = distinct !DILexicalBlock(scope: !2869, file: !277, line: 430, column: 15)
!2890 = !DILocation(line: 430, column: 15, scope: !2889)
!2891 = !DILocation(line: 438, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2870, file: !277, line: 437, column: 19)
!2893 = !DILocation(line: 438, column: 24, scope: !2892)
!2894 = !DILocation(line: 438, column: 28, scope: !2892)
!2895 = !DILocation(line: 438, column: 38, scope: !2892)
!2896 = !DILocation(line: 438, column: 48, scope: !2892)
!2897 = !DILocation(line: 438, column: 59, scope: !2892)
!2898 = !DILocation(line: 440, column: 19, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !277, line: 440, column: 19)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !277, line: 440, column: 19)
!2901 = distinct !DILexicalBlock(scope: !2892, file: !277, line: 439, column: 17)
!2902 = !DILocation(line: 440, column: 19, scope: !2900)
!2903 = !DILocation(line: 441, column: 19, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !277, line: 441, column: 19)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !277, line: 441, column: 19)
!2906 = !DILocation(line: 441, column: 19, scope: !2905)
!2907 = !DILocation(line: 442, column: 17, scope: !2901)
!2908 = !DILocation(line: 449, column: 20, scope: !2772)
!2909 = !DILocation(line: 454, column: 11, scope: !2733)
!2910 = !DILocation(line: 457, column: 19, scope: !2769)
!2911 = !DILocation(line: 463, column: 19, scope: !2768)
!2912 = !DILocation(line: 463, column: 24, scope: !2768)
!2913 = !DILocation(line: 463, column: 28, scope: !2768)
!2914 = !DILocation(line: 463, column: 38, scope: !2768)
!2915 = !DILocation(line: 463, column: 47, scope: !2768)
!2916 = !DILocation(line: 463, column: 41, scope: !2768)
!2917 = !DILocation(line: 463, column: 52, scope: !2768)
!2918 = !DILocation(line: 462, column: 19, scope: !2769)
!2919 = !DILocation(line: 464, column: 25, scope: !2768)
!2920 = !DILocation(line: 464, column: 17, scope: !2768)
!2921 = !DILocation(line: 471, column: 25, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2768, file: !277, line: 465, column: 19)
!2923 = !DILocation(line: 475, column: 21, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !277, line: 475, column: 21)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !277, line: 475, column: 21)
!2926 = !DILocation(line: 475, column: 21, scope: !2925)
!2927 = !DILocation(line: 476, column: 21, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !277, line: 476, column: 21)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !277, line: 476, column: 21)
!2930 = !DILocation(line: 476, column: 21, scope: !2929)
!2931 = !DILocation(line: 477, column: 21, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !277, line: 477, column: 21)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !277, line: 477, column: 21)
!2934 = !DILocation(line: 477, column: 21, scope: !2933)
!2935 = !DILocation(line: 478, column: 21, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !277, line: 478, column: 21)
!2937 = distinct !DILexicalBlock(scope: !2922, file: !277, line: 478, column: 21)
!2938 = !DILocation(line: 478, column: 21, scope: !2937)
!2939 = !DILocation(line: 479, column: 21, scope: !2922)
!2940 = !DILocation(line: 492, column: 31, scope: !2733)
!2941 = !DILocation(line: 493, column: 31, scope: !2733)
!2942 = !DILocation(line: 495, column: 31, scope: !2733)
!2943 = !DILocation(line: 496, column: 31, scope: !2733)
!2944 = !DILocation(line: 497, column: 31, scope: !2733)
!2945 = !DILocation(line: 500, column: 15, scope: !2733)
!2946 = !DILocation(line: 502, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !277, line: 501, column: 13)
!2948 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 500, column: 15)
!2949 = !DILocation(line: 509, column: 33, scope: !2844)
!2950 = !DILocation(line: 0, scope: !2733)
!2951 = !DILocation(line: 512, column: 9, scope: !2733)
!2952 = !DILocation(line: 514, column: 15, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 513, column: 15)
!2954 = !DILocation(line: 517, column: 9, scope: !2733)
!2955 = !DILocation(line: 518, column: 15, scope: !2733)
!2956 = !DILocation(line: 526, column: 15, scope: !2733)
!2957 = !DILocation(line: 526, column: 40, scope: !2766)
!2958 = !DILocation(line: 526, column: 47, scope: !2766)
!2959 = !DILocation(line: 526, column: 18, scope: !2766)
!2960 = !DILocation(line: 530, column: 17, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2733, file: !277, line: 530, column: 15)
!2962 = !DILocation(line: 530, column: 15, scope: !2733)
!2963 = !DILocation(line: 535, column: 11, scope: !2733)
!2964 = !DILocation(line: 549, column: 15, scope: !2840)
!2965 = !DILocation(line: 556, column: 15, scope: !2733)
!2966 = !DILocation(line: 558, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2838, file: !277, line: 557, column: 13)
!2968 = !DILocation(line: 561, column: 19, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 561, column: 19)
!2970 = !DILocation(line: 561, column: 35, scope: !2969)
!2971 = !DILocation(line: 561, column: 30, scope: !2969)
!2972 = !DILocation(line: 570, column: 15, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !277, line: 570, column: 15)
!2974 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 570, column: 15)
!2975 = !DILocation(line: 570, column: 15, scope: !2974)
!2976 = !DILocation(line: 571, column: 15, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !277, line: 571, column: 15)
!2978 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 571, column: 15)
!2979 = !DILocation(line: 571, column: 15, scope: !2978)
!2980 = !DILocation(line: 572, column: 15, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !277, line: 572, column: 15)
!2982 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 572, column: 15)
!2983 = !DILocation(line: 572, column: 15, scope: !2982)
!2984 = !DILocation(line: 574, column: 13, scope: !2967)
!2985 = !DILocation(line: 614, column: 17, scope: !2732)
!2986 = !DILocation(line: 0, scope: !2732)
!2987 = !DILocation(line: 617, column: 29, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2737, file: !277, line: 615, column: 15)
!2989 = !DILocation(line: 617, column: 27, scope: !2988)
!2990 = !DILocation(line: 618, column: 15, scope: !2988)
!2991 = !DILocation(line: 621, column: 17, scope: !2736)
!2992 = !DILocation(line: 621, column: 27, scope: !2736)
!2993 = !DILocalVariable(name: "__dest", arg: 1, scope: !2994, file: !2995, line: 59, type: !93)
!2994 = distinct !DISubprogram(name: "memset", scope: !2995, file: !2995, line: 59, type: !2996, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2998)
!2995 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!93, !93, !40, !95}
!2998 = !{!2993, !2999, !3000}
!2999 = !DILocalVariable(name: "__ch", arg: 2, scope: !2994, file: !2995, line: 59, type: !40)
!3000 = !DILocalVariable(name: "__len", arg: 3, scope: !2994, file: !2995, line: 59, type: !95)
!3001 = !DILocation(line: 0, scope: !2994, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 622, column: 17, scope: !2736)
!3003 = !DILocation(line: 71, column: 10, scope: !2994, inlinedAt: !3002)
!3004 = !DILocation(line: 626, column: 29, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2736, file: !277, line: 626, column: 21)
!3006 = !DILocation(line: 626, column: 21, scope: !2736)
!3007 = !DILocation(line: 627, column: 29, scope: !3005)
!3008 = !DILocation(line: 627, column: 19, scope: !3005)
!3009 = !DILocation(line: 629, column: 17, scope: !2736)
!3010 = !DILocation(line: 624, column: 19, scope: !2736)
!3011 = !DILocation(line: 625, column: 27, scope: !2736)
!3012 = !DILocation(line: 631, column: 21, scope: !2742)
!3013 = !DILocation(line: 632, column: 56, scope: !2742)
!3014 = !DILocation(line: 632, column: 50, scope: !2742)
!3015 = !DILocation(line: 633, column: 53, scope: !2742)
!3016 = !DILocation(line: 632, column: 36, scope: !2742)
!3017 = !DILocation(line: 634, column: 25, scope: !2742)
!3018 = !DILocation(line: 644, column: 38, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2749, file: !277, line: 642, column: 23)
!3020 = !DILocation(line: 644, column: 48, scope: !3019)
!3021 = !DILocation(line: 644, column: 25, scope: !3019)
!3022 = !DILocation(line: 644, column: 51, scope: !3019)
!3023 = !DILocation(line: 645, column: 28, scope: !3019)
!3024 = !DILocation(line: 644, column: 34, scope: !3019)
!3025 = distinct !{!3025, !3021, !3023}
!3026 = !DILocation(line: 658, column: 43, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !277, line: 658, column: 29)
!3028 = distinct !DILexicalBlock(scope: !2746, file: !277, line: 658, column: 29)
!3029 = !DILocation(line: 655, column: 29, scope: !2747)
!3030 = !DILocation(line: 0, scope: !2746)
!3031 = !DILocation(line: 659, column: 49, scope: !3027)
!3032 = !DILocation(line: 659, column: 39, scope: !3027)
!3033 = !DILocation(line: 659, column: 31, scope: !3027)
!3034 = !DILocation(line: 658, column: 53, scope: !3027)
!3035 = !DILocation(line: 658, column: 29, scope: !3028)
!3036 = distinct !{!3036, !3035, !3037}
!3037 = !DILocation(line: 667, column: 33, scope: !3028)
!3038 = !DILocation(line: 674, column: 19, scope: !2736)
!3039 = !DILocation(line: 670, column: 41, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2748, file: !277, line: 670, column: 29)
!3041 = !DILocation(line: 670, column: 31, scope: !3040)
!3042 = !DILocation(line: 670, column: 29, scope: !2748)
!3043 = !DILocation(line: 672, column: 27, scope: !2748)
!3044 = !DILocation(line: 675, column: 26, scope: !2736)
!3045 = !DILocation(line: 675, column: 24, scope: !2736)
!3046 = !DILocation(line: 674, column: 19, scope: !2742)
!3047 = distinct !{!3047, !3009, !3048}
!3048 = !DILocation(line: 675, column: 44, scope: !2736)
!3049 = !DILocation(line: 676, column: 15, scope: !2737)
!3050 = !DILocation(line: 0, scope: !2737)
!3051 = !DILocation(line: 678, column: 40, scope: !2732)
!3052 = !DILocation(line: 680, column: 19, scope: !2754)
!3053 = !DILocation(line: 680, column: 45, scope: !2754)
!3054 = !DILocation(line: 680, column: 23, scope: !2754)
!3055 = !DILocation(line: 684, column: 33, scope: !2753)
!3056 = !DILocation(line: 0, scope: !2753)
!3057 = !DILocation(line: 686, column: 17, scope: !2753)
!3058 = !DILocation(line: 405, column: 12, scope: !2724)
!3059 = !DILocation(line: 688, column: 43, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !277, line: 688, column: 25)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !277, line: 687, column: 19)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !277, line: 686, column: 17)
!3063 = distinct !DILexicalBlock(scope: !2753, file: !277, line: 686, column: 17)
!3064 = !DILocation(line: 690, column: 25, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !277, line: 690, column: 25)
!3066 = distinct !DILexicalBlock(scope: !3060, file: !277, line: 689, column: 23)
!3067 = !DILocation(line: 690, column: 25, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !277, line: 690, column: 25)
!3069 = !DILocation(line: 690, column: 25, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !277, line: 690, column: 25)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !277, line: 690, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !277, line: 690, column: 25)
!3073 = !DILocation(line: 690, column: 25, scope: !3071)
!3074 = !DILocation(line: 690, column: 25, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !277, line: 690, column: 25)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !277, line: 690, column: 25)
!3077 = !DILocation(line: 690, column: 25, scope: !3076)
!3078 = !DILocation(line: 690, column: 25, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !277, line: 690, column: 25)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !277, line: 690, column: 25)
!3081 = !DILocation(line: 690, column: 25, scope: !3080)
!3082 = !DILocation(line: 690, column: 25, scope: !3072)
!3083 = !DILocation(line: 690, column: 25, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !277, line: 690, column: 25)
!3085 = distinct !DILexicalBlock(scope: !3065, file: !277, line: 690, column: 25)
!3086 = !DILocation(line: 690, column: 25, scope: !3085)
!3087 = !DILocation(line: 691, column: 25, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !277, line: 691, column: 25)
!3089 = distinct !DILexicalBlock(scope: !3066, file: !277, line: 691, column: 25)
!3090 = !DILocation(line: 691, column: 25, scope: !3089)
!3091 = !DILocation(line: 692, column: 25, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !277, line: 692, column: 25)
!3093 = distinct !DILexicalBlock(scope: !3066, file: !277, line: 692, column: 25)
!3094 = !DILocation(line: 692, column: 25, scope: !3093)
!3095 = !DILocation(line: 693, column: 38, scope: !3066)
!3096 = !DILocation(line: 693, column: 33, scope: !3066)
!3097 = !DILocation(line: 694, column: 23, scope: !3066)
!3098 = !DILocation(line: 695, column: 30, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3060, file: !277, line: 695, column: 30)
!3100 = !DILocation(line: 695, column: 30, scope: !3060)
!3101 = !DILocation(line: 697, column: 25, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !277, line: 697, column: 25)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !277, line: 697, column: 25)
!3104 = distinct !DILexicalBlock(scope: !3099, file: !277, line: 696, column: 23)
!3105 = !DILocation(line: 697, column: 25, scope: !3103)
!3106 = !DILocation(line: 699, column: 23, scope: !3104)
!3107 = !DILocation(line: 700, column: 35, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3061, file: !277, line: 700, column: 25)
!3109 = !DILocation(line: 700, column: 30, scope: !3108)
!3110 = !DILocation(line: 700, column: 25, scope: !3061)
!3111 = !DILocation(line: 702, column: 21, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !277, line: 702, column: 21)
!3113 = distinct !DILexicalBlock(scope: !3061, file: !277, line: 702, column: 21)
!3114 = !DILocation(line: 702, column: 21, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !277, line: 702, column: 21)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !277, line: 702, column: 21)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !277, line: 702, column: 21)
!3118 = !DILocation(line: 702, column: 21, scope: !3116)
!3119 = !DILocation(line: 702, column: 21, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !277, line: 702, column: 21)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !277, line: 702, column: 21)
!3122 = !DILocation(line: 702, column: 21, scope: !3121)
!3123 = !DILocation(line: 702, column: 21, scope: !3117)
!3124 = !DILocation(line: 0, scope: !3061)
!3125 = !DILocation(line: 703, column: 21, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !277, line: 703, column: 21)
!3127 = distinct !DILexicalBlock(scope: !3061, file: !277, line: 703, column: 21)
!3128 = !DILocation(line: 703, column: 21, scope: !3127)
!3129 = !DILocation(line: 704, column: 25, scope: !3061)
!3130 = !DILocation(line: 686, column: 17, scope: !3062)
!3131 = distinct !{!3131, !3132, !3133}
!3132 = !DILocation(line: 686, column: 17, scope: !3063)
!3133 = !DILocation(line: 705, column: 19, scope: !3063)
!3134 = !DILocation(line: 416, column: 30, scope: !2833)
!3135 = !DILocation(line: 712, column: 34, scope: !2776)
!3136 = !DILocation(line: 715, column: 35, scope: !2776)
!3137 = !DILocation(line: 715, column: 17, scope: !2776)
!3138 = !DILocation(line: 715, column: 47, scope: !2776)
!3139 = !DILocation(line: 715, column: 65, scope: !2776)
!3140 = !DILocation(line: 716, column: 15, scope: !2776)
!3141 = !DILocation(line: 716, column: 11, scope: !2776)
!3142 = !DILocation(line: 712, column: 11, scope: !2724)
!3143 = !DILocation(line: 400, column: 10, scope: !2726)
!3144 = !DILocation(line: 719, column: 5, scope: !2724)
!3145 = !DILocation(line: 720, column: 7, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 720, column: 7)
!3147 = !DILocation(line: 720, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3146, file: !277, line: 720, column: 7)
!3149 = !DILocation(line: 720, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !277, line: 720, column: 7)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !277, line: 720, column: 7)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !277, line: 720, column: 7)
!3153 = !DILocation(line: 720, column: 7, scope: !3151)
!3154 = !DILocation(line: 720, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !277, line: 720, column: 7)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !277, line: 720, column: 7)
!3157 = !DILocation(line: 720, column: 7, scope: !3156)
!3158 = !DILocation(line: 720, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !277, line: 720, column: 7)
!3160 = distinct !DILexicalBlock(scope: !3152, file: !277, line: 720, column: 7)
!3161 = !DILocation(line: 720, column: 7, scope: !3160)
!3162 = !DILocation(line: 720, column: 7, scope: !3152)
!3163 = !DILocation(line: 720, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !277, line: 720, column: 7)
!3165 = distinct !DILexicalBlock(scope: !3146, file: !277, line: 720, column: 7)
!3166 = !DILocation(line: 720, column: 7, scope: !3165)
!3167 = !DILocation(line: 722, column: 5, scope: !2724)
!3168 = !DILocation(line: 723, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !277, line: 723, column: 7)
!3170 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 723, column: 7)
!3171 = !DILocation(line: 424, column: 9, scope: !2724)
!3172 = !DILocation(line: 723, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !277, line: 723, column: 7)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !277, line: 723, column: 7)
!3175 = distinct !DILexicalBlock(scope: !3169, file: !277, line: 723, column: 7)
!3176 = !DILocation(line: 723, column: 7, scope: !3174)
!3177 = !DILocation(line: 723, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !277, line: 723, column: 7)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !277, line: 723, column: 7)
!3180 = !DILocation(line: 723, column: 7, scope: !3179)
!3181 = !DILocation(line: 723, column: 7, scope: !3175)
!3182 = !DILocation(line: 724, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !277, line: 724, column: 7)
!3184 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 724, column: 7)
!3185 = !DILocation(line: 724, column: 7, scope: !3184)
!3186 = !DILocation(line: 726, column: 13, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2724, file: !277, line: 726, column: 11)
!3188 = !DILocation(line: 726, column: 11, scope: !2724)
!3189 = !DILocation(line: 728, column: 5, scope: !2725)
!3190 = !DILocation(line: 400, column: 75, scope: !2725)
!3191 = !DILocation(line: 400, column: 3, scope: !2725)
!3192 = distinct !{!3192, !2851, !3193}
!3193 = !DILocation(line: 728, column: 5, scope: !2726)
!3194 = !DILocation(line: 730, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 730, column: 7)
!3196 = !DILocation(line: 730, column: 16, scope: !3195)
!3197 = !DILocation(line: 738, column: 51, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 738, column: 7)
!3199 = !DILocation(line: 739, column: 10, scope: !3198)
!3200 = !DILocation(line: 741, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !277, line: 741, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !277, line: 740, column: 5)
!3203 = !DILocation(line: 741, column: 11, scope: !3202)
!3204 = !DILocation(line: 742, column: 16, scope: !3201)
!3205 = !DILocation(line: 742, column: 9, scope: !3201)
!3206 = !DILocation(line: 746, column: 18, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3201, file: !277, line: 746, column: 16)
!3208 = !DILocation(line: 746, column: 32, scope: !3207)
!3209 = !DILocation(line: 746, column: 29, scope: !3207)
!3210 = !DILocation(line: 755, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 755, column: 7)
!3212 = !DILocation(line: 755, column: 20, scope: !3211)
!3213 = !DILocation(line: 756, column: 12, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !277, line: 756, column: 5)
!3215 = distinct !DILexicalBlock(scope: !3211, file: !277, line: 756, column: 5)
!3216 = !DILocation(line: 756, column: 5, scope: !3215)
!3217 = !DILocation(line: 757, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !277, line: 757, column: 7)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !277, line: 757, column: 7)
!3220 = !DILocation(line: 757, column: 7, scope: !3219)
!3221 = !DILocation(line: 756, column: 39, scope: !3214)
!3222 = distinct !{!3222, !3216, !3223}
!3223 = !DILocation(line: 757, column: 7, scope: !3215)
!3224 = !DILocation(line: 759, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 759, column: 7)
!3226 = !DILocation(line: 759, column: 7, scope: !2697)
!3227 = !DILocation(line: 760, column: 5, scope: !3225)
!3228 = !DILocation(line: 760, column: 17, scope: !3225)
!3229 = !DILocation(line: 763, column: 2, scope: !2697)
!3230 = !DILocation(line: 766, column: 51, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !2697, file: !277, line: 766, column: 7)
!3232 = !DILocation(line: 766, column: 21, scope: !3231)
!3233 = !DILocation(line: 770, column: 42, scope: !2697)
!3234 = !DILocation(line: 768, column: 10, scope: !2697)
!3235 = !DILocation(line: 768, column: 3, scope: !2697)
!3236 = !DILocation(line: 772, column: 1, scope: !2697)
!3237 = distinct !DISubprogram(name: "gettext_quote", scope: !277, file: !277, line: 207, type: !3238, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!38, !38, !279}
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DILocalVariable(name: "msgid", arg: 1, scope: !3237, file: !277, line: 207, type: !38)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !277, line: 207, type: !279)
!3243 = !DILocalVariable(name: "translation", scope: !3237, file: !277, line: 209, type: !38)
!3244 = !DILocalVariable(name: "locale_code", scope: !3237, file: !277, line: 210, type: !38)
!3245 = !DILocation(line: 0, scope: !3237)
!3246 = !DILocation(line: 209, column: 29, scope: !3237)
!3247 = !DILocation(line: 212, column: 19, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3237, file: !277, line: 212, column: 7)
!3249 = !DILocation(line: 212, column: 7, scope: !3237)
!3250 = !DILocation(line: 233, column: 17, scope: !3237)
!3251 = !DILocalVariable(name: "s1", arg: 1, scope: !3252, file: !3253, line: 160, type: !38)
!3252 = distinct !DISubprogram(name: "strcaseeq0", scope: !3253, file: !3253, line: 160, type: !3254, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3256)
!3253 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!40, !38, !38, !37, !37, !37, !37, !37, !37, !37, !37, !37}
!3256 = !{!3251, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3257 = !DILocalVariable(name: "s2", arg: 2, scope: !3252, file: !3253, line: 160, type: !38)
!3258 = !DILocalVariable(name: "s20", arg: 3, scope: !3252, file: !3253, line: 160, type: !37)
!3259 = !DILocalVariable(name: "s21", arg: 4, scope: !3252, file: !3253, line: 160, type: !37)
!3260 = !DILocalVariable(name: "s22", arg: 5, scope: !3252, file: !3253, line: 160, type: !37)
!3261 = !DILocalVariable(name: "s23", arg: 6, scope: !3252, file: !3253, line: 160, type: !37)
!3262 = !DILocalVariable(name: "s24", arg: 7, scope: !3252, file: !3253, line: 160, type: !37)
!3263 = !DILocalVariable(name: "s25", arg: 8, scope: !3252, file: !3253, line: 160, type: !37)
!3264 = !DILocalVariable(name: "s26", arg: 9, scope: !3252, file: !3253, line: 160, type: !37)
!3265 = !DILocalVariable(name: "s27", arg: 10, scope: !3252, file: !3253, line: 160, type: !37)
!3266 = !DILocalVariable(name: "s28", arg: 11, scope: !3252, file: !3253, line: 160, type: !37)
!3267 = !DILocation(line: 0, scope: !3252, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 234, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3237, file: !277, line: 234, column: 7)
!3270 = !DILocation(line: 162, column: 7, scope: !3271, inlinedAt: !3268)
!3271 = distinct !DILexicalBlock(scope: !3252, file: !3253, line: 162, column: 7)
!3272 = !DILocalVariable(name: "s1", arg: 1, scope: !3273, file: !3253, line: 146, type: !38)
!3273 = distinct !DISubprogram(name: "strcaseeq1", scope: !3253, file: !3253, line: 146, type: !3274, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!40, !38, !38, !37, !37, !37, !37, !37, !37, !37, !37}
!3276 = !{!3272, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3277 = !DILocalVariable(name: "s2", arg: 2, scope: !3273, file: !3253, line: 146, type: !38)
!3278 = !DILocalVariable(name: "s21", arg: 3, scope: !3273, file: !3253, line: 146, type: !37)
!3279 = !DILocalVariable(name: "s22", arg: 4, scope: !3273, file: !3253, line: 146, type: !37)
!3280 = !DILocalVariable(name: "s23", arg: 5, scope: !3273, file: !3253, line: 146, type: !37)
!3281 = !DILocalVariable(name: "s24", arg: 6, scope: !3273, file: !3253, line: 146, type: !37)
!3282 = !DILocalVariable(name: "s25", arg: 7, scope: !3273, file: !3253, line: 146, type: !37)
!3283 = !DILocalVariable(name: "s26", arg: 8, scope: !3273, file: !3253, line: 146, type: !37)
!3284 = !DILocalVariable(name: "s27", arg: 9, scope: !3273, file: !3253, line: 146, type: !37)
!3285 = !DILocalVariable(name: "s28", arg: 10, scope: !3273, file: !3253, line: 146, type: !37)
!3286 = !DILocation(line: 0, scope: !3273, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 167, column: 16, scope: !3288, inlinedAt: !3268)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3253, line: 164, column: 11)
!3289 = distinct !DILexicalBlock(scope: !3271, file: !3253, line: 163, column: 5)
!3290 = !DILocation(line: 148, column: 7, scope: !3291, inlinedAt: !3287)
!3291 = distinct !DILexicalBlock(scope: !3273, file: !3253, line: 148, column: 7)
!3292 = !DILocalVariable(name: "s1", arg: 1, scope: !3293, file: !3253, line: 132, type: !38)
!3293 = distinct !DISubprogram(name: "strcaseeq2", scope: !3253, file: !3253, line: 132, type: !3294, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!40, !38, !38, !37, !37, !37, !37, !37, !37, !37}
!3296 = !{!3292, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304}
!3297 = !DILocalVariable(name: "s2", arg: 2, scope: !3293, file: !3253, line: 132, type: !38)
!3298 = !DILocalVariable(name: "s22", arg: 3, scope: !3293, file: !3253, line: 132, type: !37)
!3299 = !DILocalVariable(name: "s23", arg: 4, scope: !3293, file: !3253, line: 132, type: !37)
!3300 = !DILocalVariable(name: "s24", arg: 5, scope: !3293, file: !3253, line: 132, type: !37)
!3301 = !DILocalVariable(name: "s25", arg: 6, scope: !3293, file: !3253, line: 132, type: !37)
!3302 = !DILocalVariable(name: "s26", arg: 7, scope: !3293, file: !3253, line: 132, type: !37)
!3303 = !DILocalVariable(name: "s27", arg: 8, scope: !3293, file: !3253, line: 132, type: !37)
!3304 = !DILocalVariable(name: "s28", arg: 9, scope: !3293, file: !3253, line: 132, type: !37)
!3305 = !DILocation(line: 0, scope: !3293, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 153, column: 16, scope: !3307, inlinedAt: !3287)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !3253, line: 150, column: 11)
!3308 = distinct !DILexicalBlock(scope: !3291, file: !3253, line: 149, column: 5)
!3309 = !DILocation(line: 134, column: 7, scope: !3310, inlinedAt: !3306)
!3310 = distinct !DILexicalBlock(scope: !3293, file: !3253, line: 134, column: 7)
!3311 = !DILocalVariable(name: "s1", arg: 1, scope: !3312, file: !3253, line: 118, type: !38)
!3312 = distinct !DISubprogram(name: "strcaseeq3", scope: !3253, file: !3253, line: 118, type: !3313, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!40, !38, !38, !37, !37, !37, !37, !37, !37}
!3315 = !{!3311, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3316 = !DILocalVariable(name: "s2", arg: 2, scope: !3312, file: !3253, line: 118, type: !38)
!3317 = !DILocalVariable(name: "s23", arg: 3, scope: !3312, file: !3253, line: 118, type: !37)
!3318 = !DILocalVariable(name: "s24", arg: 4, scope: !3312, file: !3253, line: 118, type: !37)
!3319 = !DILocalVariable(name: "s25", arg: 5, scope: !3312, file: !3253, line: 118, type: !37)
!3320 = !DILocalVariable(name: "s26", arg: 6, scope: !3312, file: !3253, line: 118, type: !37)
!3321 = !DILocalVariable(name: "s27", arg: 7, scope: !3312, file: !3253, line: 118, type: !37)
!3322 = !DILocalVariable(name: "s28", arg: 8, scope: !3312, file: !3253, line: 118, type: !37)
!3323 = !DILocation(line: 0, scope: !3312, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 139, column: 16, scope: !3325, inlinedAt: !3306)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3253, line: 136, column: 11)
!3326 = distinct !DILexicalBlock(scope: !3310, file: !3253, line: 135, column: 5)
!3327 = !DILocation(line: 120, column: 7, scope: !3328, inlinedAt: !3324)
!3328 = distinct !DILexicalBlock(scope: !3312, file: !3253, line: 120, column: 7)
!3329 = !DILocation(line: 120, column: 7, scope: !3312, inlinedAt: !3324)
!3330 = !DILocalVariable(name: "s1", arg: 1, scope: !3331, file: !3253, line: 104, type: !38)
!3331 = distinct !DISubprogram(name: "strcaseeq4", scope: !3253, file: !3253, line: 104, type: !3332, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!40, !38, !38, !37, !37, !37, !37, !37}
!3334 = !{!3330, !3335, !3336, !3337, !3338, !3339, !3340}
!3335 = !DILocalVariable(name: "s2", arg: 2, scope: !3331, file: !3253, line: 104, type: !38)
!3336 = !DILocalVariable(name: "s24", arg: 3, scope: !3331, file: !3253, line: 104, type: !37)
!3337 = !DILocalVariable(name: "s25", arg: 4, scope: !3331, file: !3253, line: 104, type: !37)
!3338 = !DILocalVariable(name: "s26", arg: 5, scope: !3331, file: !3253, line: 104, type: !37)
!3339 = !DILocalVariable(name: "s27", arg: 6, scope: !3331, file: !3253, line: 104, type: !37)
!3340 = !DILocalVariable(name: "s28", arg: 7, scope: !3331, file: !3253, line: 104, type: !37)
!3341 = !DILocation(line: 0, scope: !3331, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 125, column: 16, scope: !3343, inlinedAt: !3324)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3253, line: 122, column: 11)
!3344 = distinct !DILexicalBlock(scope: !3328, file: !3253, line: 121, column: 5)
!3345 = !DILocation(line: 106, column: 7, scope: !3346, inlinedAt: !3342)
!3346 = distinct !DILexicalBlock(scope: !3331, file: !3253, line: 106, column: 7)
!3347 = !DILocation(line: 106, column: 7, scope: !3331, inlinedAt: !3342)
!3348 = !DILocalVariable(name: "s1", arg: 1, scope: !3349, file: !3253, line: 90, type: !38)
!3349 = distinct !DISubprogram(name: "strcaseeq5", scope: !3253, file: !3253, line: 90, type: !3350, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!40, !38, !38, !37, !37, !37, !37}
!3352 = !{!3348, !3353, !3354, !3355, !3356, !3357}
!3353 = !DILocalVariable(name: "s2", arg: 2, scope: !3349, file: !3253, line: 90, type: !38)
!3354 = !DILocalVariable(name: "s25", arg: 3, scope: !3349, file: !3253, line: 90, type: !37)
!3355 = !DILocalVariable(name: "s26", arg: 4, scope: !3349, file: !3253, line: 90, type: !37)
!3356 = !DILocalVariable(name: "s27", arg: 5, scope: !3349, file: !3253, line: 90, type: !37)
!3357 = !DILocalVariable(name: "s28", arg: 6, scope: !3349, file: !3253, line: 90, type: !37)
!3358 = !DILocation(line: 0, scope: !3349, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 111, column: 16, scope: !3360, inlinedAt: !3342)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3253, line: 108, column: 11)
!3361 = distinct !DILexicalBlock(scope: !3346, file: !3253, line: 107, column: 5)
!3362 = !DILocation(line: 92, column: 7, scope: !3363, inlinedAt: !3359)
!3363 = distinct !DILexicalBlock(scope: !3349, file: !3253, line: 92, column: 7)
!3364 = !DILocation(line: 92, column: 7, scope: !3349, inlinedAt: !3359)
!3365 = !DILocation(line: 235, column: 12, scope: !3269)
!3366 = !DILocation(line: 235, column: 21, scope: !3269)
!3367 = !DILocation(line: 235, column: 5, scope: !3269)
!3368 = !DILocation(line: 0, scope: !3273, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 167, column: 16, scope: !3288, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 236, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3237, file: !277, line: 236, column: 7)
!3372 = !DILocation(line: 148, column: 7, scope: !3291, inlinedAt: !3369)
!3373 = !DILocation(line: 0, scope: !3293, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 153, column: 16, scope: !3307, inlinedAt: !3369)
!3375 = !DILocation(line: 134, column: 7, scope: !3310, inlinedAt: !3374)
!3376 = !DILocation(line: 134, column: 7, scope: !3293, inlinedAt: !3374)
!3377 = !DILocation(line: 0, scope: !3312, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 139, column: 16, scope: !3325, inlinedAt: !3374)
!3379 = !DILocation(line: 120, column: 7, scope: !3328, inlinedAt: !3378)
!3380 = !DILocation(line: 120, column: 7, scope: !3312, inlinedAt: !3378)
!3381 = !DILocation(line: 0, scope: !3331, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 125, column: 16, scope: !3343, inlinedAt: !3378)
!3383 = !DILocation(line: 106, column: 7, scope: !3346, inlinedAt: !3382)
!3384 = !DILocation(line: 106, column: 7, scope: !3331, inlinedAt: !3382)
!3385 = !DILocation(line: 0, scope: !3349, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 111, column: 16, scope: !3360, inlinedAt: !3382)
!3387 = !DILocation(line: 92, column: 7, scope: !3363, inlinedAt: !3386)
!3388 = !DILocation(line: 92, column: 7, scope: !3349, inlinedAt: !3386)
!3389 = !DILocalVariable(name: "s1", arg: 1, scope: !3390, file: !3253, line: 76, type: !38)
!3390 = distinct !DISubprogram(name: "strcaseeq6", scope: !3253, file: !3253, line: 76, type: !3391, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!40, !38, !38, !37, !37, !37}
!3393 = !{!3389, !3394, !3395, !3396, !3397}
!3394 = !DILocalVariable(name: "s2", arg: 2, scope: !3390, file: !3253, line: 76, type: !38)
!3395 = !DILocalVariable(name: "s26", arg: 3, scope: !3390, file: !3253, line: 76, type: !37)
!3396 = !DILocalVariable(name: "s27", arg: 4, scope: !3390, file: !3253, line: 76, type: !37)
!3397 = !DILocalVariable(name: "s28", arg: 5, scope: !3390, file: !3253, line: 76, type: !37)
!3398 = !DILocation(line: 0, scope: !3390, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 97, column: 16, scope: !3400, inlinedAt: !3386)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3253, line: 94, column: 11)
!3401 = distinct !DILexicalBlock(scope: !3363, file: !3253, line: 93, column: 5)
!3402 = !DILocation(line: 78, column: 7, scope: !3403, inlinedAt: !3399)
!3403 = distinct !DILexicalBlock(scope: !3390, file: !3253, line: 78, column: 7)
!3404 = !DILocation(line: 78, column: 7, scope: !3390, inlinedAt: !3399)
!3405 = !DILocalVariable(name: "s1", arg: 1, scope: !3406, file: !3253, line: 62, type: !38)
!3406 = distinct !DISubprogram(name: "strcaseeq7", scope: !3253, file: !3253, line: 62, type: !3407, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!40, !38, !38, !37, !37}
!3409 = !{!3405, !3410, !3411, !3412}
!3410 = !DILocalVariable(name: "s2", arg: 2, scope: !3406, file: !3253, line: 62, type: !38)
!3411 = !DILocalVariable(name: "s27", arg: 3, scope: !3406, file: !3253, line: 62, type: !37)
!3412 = !DILocalVariable(name: "s28", arg: 4, scope: !3406, file: !3253, line: 62, type: !37)
!3413 = !DILocation(line: 0, scope: !3406, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 83, column: 16, scope: !3415, inlinedAt: !3399)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !3253, line: 80, column: 11)
!3416 = distinct !DILexicalBlock(scope: !3403, file: !3253, line: 79, column: 5)
!3417 = !DILocation(line: 64, column: 7, scope: !3418, inlinedAt: !3414)
!3418 = distinct !DILexicalBlock(scope: !3406, file: !3253, line: 64, column: 7)
!3419 = !DILocation(line: 236, column: 7, scope: !3237)
!3420 = !DILocation(line: 237, column: 12, scope: !3371)
!3421 = !DILocation(line: 237, column: 21, scope: !3371)
!3422 = !DILocation(line: 237, column: 5, scope: !3371)
!3423 = !DILocation(line: 239, column: 13, scope: !3237)
!3424 = !DILocation(line: 239, column: 11, scope: !3237)
!3425 = !DILocation(line: 239, column: 3, scope: !3237)
!3426 = !DILocation(line: 240, column: 1, scope: !3237)
!3427 = distinct !DISubprogram(name: "quotearg_alloc", scope: !277, file: !277, line: 799, type: !3428, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!36, !38, !95, !308}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "arg", arg: 1, scope: !3427, file: !277, line: 799, type: !38)
!3432 = !DILocalVariable(name: "argsize", arg: 2, scope: !3427, file: !277, line: 799, type: !95)
!3433 = !DILocalVariable(name: "o", arg: 3, scope: !3427, file: !277, line: 800, type: !308)
!3434 = !DILocation(line: 0, scope: !3427)
!3435 = !DILocalVariable(name: "arg", arg: 1, scope: !3436, file: !277, line: 812, type: !38)
!3436 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !277, file: !277, line: 812, type: !3437, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!36, !38, !95, !483, !308}
!3439 = !{!3435, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3440 = !DILocalVariable(name: "argsize", arg: 2, scope: !3436, file: !277, line: 812, type: !95)
!3441 = !DILocalVariable(name: "size", arg: 3, scope: !3436, file: !277, line: 812, type: !483)
!3442 = !DILocalVariable(name: "o", arg: 4, scope: !3436, file: !277, line: 813, type: !308)
!3443 = !DILocalVariable(name: "p", scope: !3436, file: !277, line: 815, type: !308)
!3444 = !DILocalVariable(name: "e", scope: !3436, file: !277, line: 816, type: !40)
!3445 = !DILocalVariable(name: "flags", scope: !3436, file: !277, line: 818, type: !40)
!3446 = !DILocalVariable(name: "bufsize", scope: !3436, file: !277, line: 819, type: !95)
!3447 = !DILocalVariable(name: "buf", scope: !3436, file: !277, line: 823, type: !36)
!3448 = !DILocation(line: 0, scope: !3436, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 802, column: 10, scope: !3427)
!3450 = !DILocation(line: 815, column: 37, scope: !3436, inlinedAt: !3449)
!3451 = !DILocation(line: 816, column: 11, scope: !3436, inlinedAt: !3449)
!3452 = !DILocation(line: 818, column: 18, scope: !3436, inlinedAt: !3449)
!3453 = !DILocation(line: 818, column: 24, scope: !3436, inlinedAt: !3449)
!3454 = !DILocation(line: 819, column: 69, scope: !3436, inlinedAt: !3449)
!3455 = !DILocation(line: 820, column: 53, scope: !3436, inlinedAt: !3449)
!3456 = !DILocation(line: 821, column: 49, scope: !3436, inlinedAt: !3449)
!3457 = !DILocation(line: 822, column: 49, scope: !3436, inlinedAt: !3449)
!3458 = !DILocation(line: 819, column: 20, scope: !3436, inlinedAt: !3449)
!3459 = !DILocation(line: 822, column: 62, scope: !3436, inlinedAt: !3449)
!3460 = !DILocalVariable(name: "n", arg: 1, scope: !3461, file: !299, line: 216, type: !95)
!3461 = distinct !DISubprogram(name: "xcharalloc", scope: !299, file: !299, line: 216, type: !3462, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!36, !95}
!3464 = !{!3460}
!3465 = !DILocation(line: 0, scope: !3461, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 823, column: 15, scope: !3436, inlinedAt: !3449)
!3467 = !DILocation(line: 218, column: 10, scope: !3461, inlinedAt: !3466)
!3468 = !DILocation(line: 824, column: 60, scope: !3436, inlinedAt: !3449)
!3469 = !DILocation(line: 826, column: 32, scope: !3436, inlinedAt: !3449)
!3470 = !DILocation(line: 826, column: 47, scope: !3436, inlinedAt: !3449)
!3471 = !DILocation(line: 824, column: 3, scope: !3436, inlinedAt: !3449)
!3472 = !DILocation(line: 827, column: 9, scope: !3436, inlinedAt: !3449)
!3473 = !DILocation(line: 802, column: 3, scope: !3427)
!3474 = !DILocation(line: 0, scope: !3436)
!3475 = !DILocation(line: 815, column: 37, scope: !3436)
!3476 = !DILocation(line: 816, column: 11, scope: !3436)
!3477 = !DILocation(line: 818, column: 18, scope: !3436)
!3478 = !DILocation(line: 818, column: 27, scope: !3436)
!3479 = !DILocation(line: 818, column: 24, scope: !3436)
!3480 = !DILocation(line: 819, column: 69, scope: !3436)
!3481 = !DILocation(line: 820, column: 53, scope: !3436)
!3482 = !DILocation(line: 821, column: 49, scope: !3436)
!3483 = !DILocation(line: 822, column: 49, scope: !3436)
!3484 = !DILocation(line: 819, column: 20, scope: !3436)
!3485 = !DILocation(line: 822, column: 62, scope: !3436)
!3486 = !DILocation(line: 0, scope: !3461, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 823, column: 15, scope: !3436)
!3488 = !DILocation(line: 218, column: 10, scope: !3461, inlinedAt: !3487)
!3489 = !DILocation(line: 824, column: 60, scope: !3436)
!3490 = !DILocation(line: 826, column: 32, scope: !3436)
!3491 = !DILocation(line: 826, column: 47, scope: !3436)
!3492 = !DILocation(line: 824, column: 3, scope: !3436)
!3493 = !DILocation(line: 827, column: 9, scope: !3436)
!3494 = !DILocation(line: 828, column: 7, scope: !3436)
!3495 = !DILocation(line: 829, column: 11, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3436, file: !277, line: 828, column: 7)
!3497 = !DILocation(line: 829, column: 5, scope: !3496)
!3498 = !DILocation(line: 830, column: 3, scope: !3436)
!3499 = distinct !DISubprogram(name: "quotearg_free", scope: !277, file: !277, line: 848, type: !122, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3500)
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "sv", scope: !3499, file: !277, line: 850, type: !385)
!3502 = !DILocalVariable(name: "i", scope: !3499, file: !277, line: 851, type: !40)
!3503 = !DILocation(line: 850, column: 24, scope: !3499)
!3504 = !DILocation(line: 0, scope: !3499)
!3505 = !DILocation(line: 852, column: 19, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !277, line: 852, column: 3)
!3507 = distinct !DILexicalBlock(scope: !3499, file: !277, line: 852, column: 3)
!3508 = !DILocation(line: 852, column: 17, scope: !3506)
!3509 = !DILocation(line: 852, column: 3, scope: !3507)
!3510 = !DILocation(line: 853, column: 17, scope: !3506)
!3511 = !{!3512, !1130, i64 8}
!3512 = !{!"slotvec", !1578, i64 0, !1130, i64 8}
!3513 = !DILocation(line: 853, column: 5, scope: !3506)
!3514 = !DILocation(line: 852, column: 28, scope: !3506)
!3515 = distinct !{!3515, !3509, !3516}
!3516 = !DILocation(line: 853, column: 20, scope: !3507)
!3517 = !DILocation(line: 854, column: 13, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3499, file: !277, line: 854, column: 7)
!3519 = !DILocation(line: 854, column: 17, scope: !3518)
!3520 = !DILocation(line: 854, column: 7, scope: !3499)
!3521 = !DILocation(line: 856, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3518, file: !277, line: 855, column: 5)
!3523 = !DILocation(line: 857, column: 21, scope: !3522)
!3524 = !{!3512, !1578, i64 0}
!3525 = !DILocation(line: 858, column: 20, scope: !3522)
!3526 = !DILocation(line: 859, column: 5, scope: !3522)
!3527 = !DILocation(line: 860, column: 10, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3499, file: !277, line: 860, column: 7)
!3529 = !DILocation(line: 860, column: 7, scope: !3499)
!3530 = !DILocation(line: 862, column: 13, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3528, file: !277, line: 861, column: 5)
!3532 = !DILocation(line: 862, column: 7, scope: !3531)
!3533 = !DILocation(line: 863, column: 15, scope: !3531)
!3534 = !DILocation(line: 864, column: 5, scope: !3531)
!3535 = !DILocation(line: 865, column: 10, scope: !3499)
!3536 = !DILocation(line: 866, column: 1, scope: !3499)
!3537 = distinct !DISubprogram(name: "quotearg_n", scope: !277, file: !277, line: 931, type: !109, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3538)
!3538 = !{!3539, !3540}
!3539 = !DILocalVariable(name: "n", arg: 1, scope: !3537, file: !277, line: 931, type: !40)
!3540 = !DILocalVariable(name: "arg", arg: 2, scope: !3537, file: !277, line: 931, type: !38)
!3541 = !DILocation(line: 0, scope: !3537)
!3542 = !DILocation(line: 933, column: 10, scope: !3537)
!3543 = !DILocation(line: 933, column: 3, scope: !3537)
!3544 = distinct !DISubprogram(name: "quotearg_n_options", scope: !277, file: !277, line: 877, type: !3545, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!36, !40, !38, !95, !308}
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3557, !3558, !3560, !3561, !3562}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3544, file: !277, line: 877, type: !40)
!3549 = !DILocalVariable(name: "arg", arg: 2, scope: !3544, file: !277, line: 877, type: !38)
!3550 = !DILocalVariable(name: "argsize", arg: 3, scope: !3544, file: !277, line: 877, type: !95)
!3551 = !DILocalVariable(name: "options", arg: 4, scope: !3544, file: !277, line: 878, type: !308)
!3552 = !DILocalVariable(name: "e", scope: !3544, file: !277, line: 880, type: !40)
!3553 = !DILocalVariable(name: "sv", scope: !3544, file: !277, line: 882, type: !385)
!3554 = !DILocalVariable(name: "preallocated", scope: !3555, file: !277, line: 889, type: !226)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !277, line: 888, column: 5)
!3556 = distinct !DILexicalBlock(scope: !3544, file: !277, line: 887, column: 7)
!3557 = !DILocalVariable(name: "nmax", scope: !3555, file: !277, line: 890, type: !40)
!3558 = !DILocalVariable(name: "size", scope: !3559, file: !277, line: 903, type: !95)
!3559 = distinct !DILexicalBlock(scope: !3544, file: !277, line: 902, column: 3)
!3560 = !DILocalVariable(name: "val", scope: !3559, file: !277, line: 904, type: !36)
!3561 = !DILocalVariable(name: "flags", scope: !3559, file: !277, line: 906, type: !40)
!3562 = !DILocalVariable(name: "qsize", scope: !3559, file: !277, line: 907, type: !95)
!3563 = !DILocation(line: 0, scope: !3544)
!3564 = !DILocation(line: 880, column: 11, scope: !3544)
!3565 = !DILocation(line: 882, column: 24, scope: !3544)
!3566 = !DILocation(line: 884, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3544, file: !277, line: 884, column: 7)
!3568 = !DILocation(line: 884, column: 7, scope: !3544)
!3569 = !DILocation(line: 885, column: 5, scope: !3567)
!3570 = !DILocation(line: 887, column: 7, scope: !3556)
!3571 = !DILocation(line: 887, column: 14, scope: !3556)
!3572 = !DILocation(line: 887, column: 7, scope: !3544)
!3573 = !DILocation(line: 889, column: 31, scope: !3555)
!3574 = !DILocation(line: 0, scope: !3555)
!3575 = !DILocation(line: 892, column: 16, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3555, file: !277, line: 892, column: 11)
!3577 = !DILocation(line: 892, column: 11, scope: !3555)
!3578 = !DILocation(line: 893, column: 9, scope: !3576)
!3579 = !DILocation(line: 895, column: 32, scope: !3555)
!3580 = !DILocation(line: 895, column: 61, scope: !3555)
!3581 = !DILocation(line: 895, column: 58, scope: !3555)
!3582 = !DILocation(line: 895, column: 66, scope: !3555)
!3583 = !DILocation(line: 895, column: 22, scope: !3555)
!3584 = !DILocation(line: 895, column: 15, scope: !3555)
!3585 = !DILocation(line: 896, column: 11, scope: !3555)
!3586 = !DILocation(line: 897, column: 15, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3555, file: !277, line: 896, column: 11)
!3588 = !{i64 0, i64 8, !1577, i64 8, i64 8, !1129}
!3589 = !DILocation(line: 897, column: 9, scope: !3587)
!3590 = !DILocation(line: 898, column: 20, scope: !3555)
!3591 = !DILocation(line: 898, column: 18, scope: !3555)
!3592 = !DILocation(line: 898, column: 15, scope: !3555)
!3593 = !DILocation(line: 898, column: 38, scope: !3555)
!3594 = !DILocation(line: 898, column: 31, scope: !3555)
!3595 = !DILocation(line: 898, column: 48, scope: !3555)
!3596 = !DILocation(line: 0, scope: !2994, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 898, column: 7, scope: !3555)
!3598 = !DILocation(line: 71, column: 10, scope: !2994, inlinedAt: !3597)
!3599 = !DILocation(line: 899, column: 14, scope: !3555)
!3600 = !DILocation(line: 900, column: 5, scope: !3555)
!3601 = !DILocation(line: 903, column: 19, scope: !3559)
!3602 = !DILocation(line: 903, column: 25, scope: !3559)
!3603 = !DILocation(line: 0, scope: !3559)
!3604 = !DILocation(line: 904, column: 23, scope: !3559)
!3605 = !DILocation(line: 906, column: 26, scope: !3559)
!3606 = !DILocation(line: 906, column: 32, scope: !3559)
!3607 = !DILocation(line: 908, column: 55, scope: !3559)
!3608 = !DILocation(line: 909, column: 46, scope: !3559)
!3609 = !DILocation(line: 910, column: 55, scope: !3559)
!3610 = !DILocation(line: 911, column: 55, scope: !3559)
!3611 = !DILocation(line: 907, column: 20, scope: !3559)
!3612 = !DILocation(line: 913, column: 14, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3559, file: !277, line: 913, column: 9)
!3614 = !DILocation(line: 913, column: 9, scope: !3559)
!3615 = !DILocation(line: 915, column: 35, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3613, file: !277, line: 914, column: 7)
!3617 = !DILocation(line: 915, column: 20, scope: !3616)
!3618 = !DILocation(line: 916, column: 17, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !277, line: 916, column: 13)
!3620 = !DILocation(line: 916, column: 13, scope: !3616)
!3621 = !DILocation(line: 917, column: 11, scope: !3619)
!3622 = !DILocation(line: 0, scope: !3461, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 918, column: 27, scope: !3616)
!3624 = !DILocation(line: 218, column: 10, scope: !3461, inlinedAt: !3623)
!3625 = !DILocation(line: 918, column: 19, scope: !3616)
!3626 = !DILocation(line: 919, column: 69, scope: !3616)
!3627 = !DILocation(line: 921, column: 44, scope: !3616)
!3628 = !DILocation(line: 922, column: 44, scope: !3616)
!3629 = !DILocation(line: 919, column: 9, scope: !3616)
!3630 = !DILocation(line: 923, column: 7, scope: !3616)
!3631 = !DILocation(line: 925, column: 11, scope: !3559)
!3632 = !DILocation(line: 926, column: 5, scope: !3559)
!3633 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !277, file: !277, line: 937, type: !3634, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!36, !40, !38, !95}
!3636 = !{!3637, !3638, !3639}
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3633, file: !277, line: 937, type: !40)
!3638 = !DILocalVariable(name: "arg", arg: 2, scope: !3633, file: !277, line: 937, type: !38)
!3639 = !DILocalVariable(name: "argsize", arg: 3, scope: !3633, file: !277, line: 937, type: !95)
!3640 = !DILocation(line: 0, scope: !3633)
!3641 = !DILocation(line: 939, column: 10, scope: !3633)
!3642 = !DILocation(line: 939, column: 3, scope: !3633)
!3643 = distinct !DISubprogram(name: "quotearg", scope: !277, file: !277, line: 943, type: !115, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3644)
!3644 = !{!3645}
!3645 = !DILocalVariable(name: "arg", arg: 1, scope: !3643, file: !277, line: 943, type: !38)
!3646 = !DILocation(line: 0, scope: !3643)
!3647 = !DILocation(line: 0, scope: !3537, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 945, column: 10, scope: !3643)
!3649 = !DILocation(line: 933, column: 10, scope: !3537, inlinedAt: !3648)
!3650 = !DILocation(line: 945, column: 3, scope: !3643)
!3651 = distinct !DISubprogram(name: "quotearg_mem", scope: !277, file: !277, line: 949, type: !3652, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!36, !38, !95}
!3654 = !{!3655, !3656}
!3655 = !DILocalVariable(name: "arg", arg: 1, scope: !3651, file: !277, line: 949, type: !38)
!3656 = !DILocalVariable(name: "argsize", arg: 2, scope: !3651, file: !277, line: 949, type: !95)
!3657 = !DILocation(line: 0, scope: !3651)
!3658 = !DILocation(line: 0, scope: !3633, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 951, column: 10, scope: !3651)
!3660 = !DILocation(line: 939, column: 10, scope: !3633, inlinedAt: !3659)
!3661 = !DILocation(line: 951, column: 3, scope: !3651)
!3662 = distinct !DISubprogram(name: "quotearg_n_style", scope: !277, file: !277, line: 955, type: !3663, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!36, !40, !279, !38}
!3665 = !{!3666, !3667, !3668, !3669}
!3666 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !277, line: 955, type: !40)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !277, line: 955, type: !279)
!3668 = !DILocalVariable(name: "arg", arg: 3, scope: !3662, file: !277, line: 955, type: !38)
!3669 = !DILocalVariable(name: "o", scope: !3662, file: !277, line: 957, type: !309)
!3670 = !DILocation(line: 0, scope: !3662)
!3671 = !DILocation(line: 957, column: 3, scope: !3662)
!3672 = !DILocation(line: 957, column: 32, scope: !3662)
!3673 = !DILocalVariable(name: "style", arg: 1, scope: !3674, file: !277, line: 193, type: !279)
!3674 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !277, file: !277, line: 193, type: !3675, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!310, !279}
!3677 = !{!3673, !3678}
!3678 = !DILocalVariable(name: "o", scope: !3674, file: !277, line: 195, type: !310)
!3679 = !DILocation(line: 0, scope: !3674, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 957, column: 36, scope: !3662)
!3681 = !DILocation(line: 195, column: 26, scope: !3674, inlinedAt: !3680)
!3682 = !{!3683}
!3683 = distinct !{!3683, !3684, !"quoting_options_from_style: argument 0"}
!3684 = distinct !{!3684, !"quoting_options_from_style"}
!3685 = !DILocation(line: 196, column: 13, scope: !3686, inlinedAt: !3680)
!3686 = distinct !DILexicalBlock(scope: !3674, file: !277, line: 196, column: 7)
!3687 = !DILocation(line: 196, column: 7, scope: !3674, inlinedAt: !3680)
!3688 = !DILocation(line: 197, column: 5, scope: !3686, inlinedAt: !3680)
!3689 = !DILocation(line: 198, column: 5, scope: !3674, inlinedAt: !3680)
!3690 = !DILocation(line: 198, column: 11, scope: !3674, inlinedAt: !3680)
!3691 = !DILocation(line: 958, column: 10, scope: !3662)
!3692 = !DILocation(line: 959, column: 1, scope: !3662)
!3693 = !DILocation(line: 958, column: 3, scope: !3662)
!3694 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !277, file: !277, line: 962, type: !3695, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!36, !40, !279, !38, !95}
!3697 = !{!3698, !3699, !3700, !3701, !3702}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !277, line: 962, type: !40)
!3699 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !277, line: 962, type: !279)
!3700 = !DILocalVariable(name: "arg", arg: 3, scope: !3694, file: !277, line: 963, type: !38)
!3701 = !DILocalVariable(name: "argsize", arg: 4, scope: !3694, file: !277, line: 963, type: !95)
!3702 = !DILocalVariable(name: "o", scope: !3694, file: !277, line: 965, type: !309)
!3703 = !DILocation(line: 0, scope: !3694)
!3704 = !DILocation(line: 965, column: 3, scope: !3694)
!3705 = !DILocation(line: 965, column: 32, scope: !3694)
!3706 = !DILocation(line: 0, scope: !3674, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 965, column: 36, scope: !3694)
!3708 = !DILocation(line: 195, column: 26, scope: !3674, inlinedAt: !3707)
!3709 = !{!3710}
!3710 = distinct !{!3710, !3711, !"quoting_options_from_style: argument 0"}
!3711 = distinct !{!3711, !"quoting_options_from_style"}
!3712 = !DILocation(line: 196, column: 13, scope: !3686, inlinedAt: !3707)
!3713 = !DILocation(line: 196, column: 7, scope: !3674, inlinedAt: !3707)
!3714 = !DILocation(line: 197, column: 5, scope: !3686, inlinedAt: !3707)
!3715 = !DILocation(line: 198, column: 5, scope: !3674, inlinedAt: !3707)
!3716 = !DILocation(line: 198, column: 11, scope: !3674, inlinedAt: !3707)
!3717 = !DILocation(line: 966, column: 10, scope: !3694)
!3718 = !DILocation(line: 967, column: 1, scope: !3694)
!3719 = !DILocation(line: 966, column: 3, scope: !3694)
!3720 = distinct !DISubprogram(name: "quotearg_style", scope: !277, file: !277, line: 970, type: !3721, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!36, !279, !38}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "s", arg: 1, scope: !3720, file: !277, line: 970, type: !279)
!3725 = !DILocalVariable(name: "arg", arg: 2, scope: !3720, file: !277, line: 970, type: !38)
!3726 = !DILocation(line: 195, column: 26, scope: !3674, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 957, column: 36, scope: !3662, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 972, column: 10, scope: !3720)
!3729 = !DILocation(line: 957, column: 32, scope: !3662, inlinedAt: !3728)
!3730 = !DILocation(line: 0, scope: !3720)
!3731 = !DILocation(line: 0, scope: !3662, inlinedAt: !3728)
!3732 = !DILocation(line: 957, column: 3, scope: !3662, inlinedAt: !3728)
!3733 = !DILocation(line: 0, scope: !3674, inlinedAt: !3727)
!3734 = !{!3735}
!3735 = distinct !{!3735, !3736, !"quoting_options_from_style: argument 0"}
!3736 = distinct !{!3736, !"quoting_options_from_style"}
!3737 = !DILocation(line: 196, column: 13, scope: !3686, inlinedAt: !3727)
!3738 = !DILocation(line: 196, column: 7, scope: !3674, inlinedAt: !3727)
!3739 = !DILocation(line: 197, column: 5, scope: !3686, inlinedAt: !3727)
!3740 = !DILocation(line: 198, column: 5, scope: !3674, inlinedAt: !3727)
!3741 = !DILocation(line: 198, column: 11, scope: !3674, inlinedAt: !3727)
!3742 = !DILocation(line: 958, column: 10, scope: !3662, inlinedAt: !3728)
!3743 = !DILocation(line: 959, column: 1, scope: !3662, inlinedAt: !3728)
!3744 = !DILocation(line: 972, column: 3, scope: !3720)
!3745 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !277, file: !277, line: 976, type: !3746, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!36, !279, !38, !95}
!3748 = !{!3749, !3750, !3751}
!3749 = !DILocalVariable(name: "s", arg: 1, scope: !3745, file: !277, line: 976, type: !279)
!3750 = !DILocalVariable(name: "arg", arg: 2, scope: !3745, file: !277, line: 976, type: !38)
!3751 = !DILocalVariable(name: "argsize", arg: 3, scope: !3745, file: !277, line: 976, type: !95)
!3752 = !DILocation(line: 195, column: 26, scope: !3674, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 965, column: 36, scope: !3694, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 978, column: 10, scope: !3745)
!3755 = !DILocation(line: 965, column: 32, scope: !3694, inlinedAt: !3754)
!3756 = !DILocation(line: 0, scope: !3745)
!3757 = !DILocation(line: 0, scope: !3694, inlinedAt: !3754)
!3758 = !DILocation(line: 965, column: 3, scope: !3694, inlinedAt: !3754)
!3759 = !DILocation(line: 0, scope: !3674, inlinedAt: !3753)
!3760 = !{!3761}
!3761 = distinct !{!3761, !3762, !"quoting_options_from_style: argument 0"}
!3762 = distinct !{!3762, !"quoting_options_from_style"}
!3763 = !DILocation(line: 196, column: 13, scope: !3686, inlinedAt: !3753)
!3764 = !DILocation(line: 196, column: 7, scope: !3674, inlinedAt: !3753)
!3765 = !DILocation(line: 197, column: 5, scope: !3686, inlinedAt: !3753)
!3766 = !DILocation(line: 198, column: 5, scope: !3674, inlinedAt: !3753)
!3767 = !DILocation(line: 198, column: 11, scope: !3674, inlinedAt: !3753)
!3768 = !DILocation(line: 966, column: 10, scope: !3694, inlinedAt: !3754)
!3769 = !DILocation(line: 967, column: 1, scope: !3694, inlinedAt: !3754)
!3770 = !DILocation(line: 978, column: 3, scope: !3745)
!3771 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !277, file: !277, line: 982, type: !3772, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!36, !38, !95, !37}
!3774 = !{!3775, !3776, !3777, !3778}
!3775 = !DILocalVariable(name: "arg", arg: 1, scope: !3771, file: !277, line: 982, type: !38)
!3776 = !DILocalVariable(name: "argsize", arg: 2, scope: !3771, file: !277, line: 982, type: !95)
!3777 = !DILocalVariable(name: "ch", arg: 3, scope: !3771, file: !277, line: 982, type: !37)
!3778 = !DILocalVariable(name: "options", scope: !3771, file: !277, line: 984, type: !310)
!3779 = !DILocation(line: 0, scope: !3771)
!3780 = !DILocation(line: 984, column: 3, scope: !3771)
!3781 = !DILocation(line: 984, column: 26, scope: !3771)
!3782 = !DILocation(line: 985, column: 13, scope: !3771)
!3783 = !{i64 0, i64 4, !1280, i64 4, i64 4, !1201, i64 8, i64 32, !1280, i64 40, i64 8, !1129, i64 48, i64 8, !1129}
!3784 = !DILocation(line: 0, scope: !2608, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 986, column: 3, scope: !3771)
!3786 = !DILocation(line: 156, column: 62, scope: !2608, inlinedAt: !3785)
!3787 = !DILocation(line: 156, column: 57, scope: !2608, inlinedAt: !3785)
!3788 = !DILocation(line: 157, column: 15, scope: !2608, inlinedAt: !3785)
!3789 = !DILocation(line: 158, column: 12, scope: !2608, inlinedAt: !3785)
!3790 = !DILocation(line: 158, column: 15, scope: !2608, inlinedAt: !3785)
!3791 = !DILocation(line: 158, column: 25, scope: !2608, inlinedAt: !3785)
!3792 = !DILocation(line: 159, column: 18, scope: !2608, inlinedAt: !3785)
!3793 = !DILocation(line: 159, column: 23, scope: !2608, inlinedAt: !3785)
!3794 = !DILocation(line: 159, column: 6, scope: !2608, inlinedAt: !3785)
!3795 = !DILocation(line: 987, column: 10, scope: !3771)
!3796 = !DILocation(line: 988, column: 1, scope: !3771)
!3797 = !DILocation(line: 987, column: 3, scope: !3771)
!3798 = distinct !DISubprogram(name: "quotearg_char", scope: !277, file: !277, line: 991, type: !3799, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!36, !38, !37}
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "arg", arg: 1, scope: !3798, file: !277, line: 991, type: !38)
!3803 = !DILocalVariable(name: "ch", arg: 2, scope: !3798, file: !277, line: 991, type: !37)
!3804 = !DILocation(line: 984, column: 26, scope: !3771, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 993, column: 10, scope: !3798)
!3806 = !DILocation(line: 0, scope: !3798)
!3807 = !DILocation(line: 0, scope: !3771, inlinedAt: !3805)
!3808 = !DILocation(line: 984, column: 3, scope: !3771, inlinedAt: !3805)
!3809 = !DILocation(line: 985, column: 13, scope: !3771, inlinedAt: !3805)
!3810 = !DILocation(line: 0, scope: !2608, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 986, column: 3, scope: !3771, inlinedAt: !3805)
!3812 = !DILocation(line: 156, column: 62, scope: !2608, inlinedAt: !3811)
!3813 = !DILocation(line: 156, column: 57, scope: !2608, inlinedAt: !3811)
!3814 = !DILocation(line: 157, column: 15, scope: !2608, inlinedAt: !3811)
!3815 = !DILocation(line: 158, column: 12, scope: !2608, inlinedAt: !3811)
!3816 = !DILocation(line: 158, column: 15, scope: !2608, inlinedAt: !3811)
!3817 = !DILocation(line: 158, column: 25, scope: !2608, inlinedAt: !3811)
!3818 = !DILocation(line: 159, column: 18, scope: !2608, inlinedAt: !3811)
!3819 = !DILocation(line: 159, column: 23, scope: !2608, inlinedAt: !3811)
!3820 = !DILocation(line: 159, column: 6, scope: !2608, inlinedAt: !3811)
!3821 = !DILocation(line: 987, column: 10, scope: !3771, inlinedAt: !3805)
!3822 = !DILocation(line: 988, column: 1, scope: !3771, inlinedAt: !3805)
!3823 = !DILocation(line: 993, column: 3, scope: !3798)
!3824 = distinct !DISubprogram(name: "quotearg_colon", scope: !277, file: !277, line: 997, type: !115, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3825)
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "arg", arg: 1, scope: !3824, file: !277, line: 997, type: !38)
!3827 = !DILocation(line: 984, column: 26, scope: !3771, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 993, column: 10, scope: !3798, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 999, column: 10, scope: !3824)
!3830 = !DILocation(line: 0, scope: !3824)
!3831 = !DILocation(line: 0, scope: !3798, inlinedAt: !3829)
!3832 = !DILocation(line: 0, scope: !3771, inlinedAt: !3828)
!3833 = !DILocation(line: 984, column: 3, scope: !3771, inlinedAt: !3828)
!3834 = !DILocation(line: 985, column: 13, scope: !3771, inlinedAt: !3828)
!3835 = !DILocation(line: 0, scope: !2608, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 986, column: 3, scope: !3771, inlinedAt: !3828)
!3837 = !DILocation(line: 156, column: 57, scope: !2608, inlinedAt: !3836)
!3838 = !DILocation(line: 158, column: 12, scope: !2608, inlinedAt: !3836)
!3839 = !DILocation(line: 159, column: 6, scope: !2608, inlinedAt: !3836)
!3840 = !DILocation(line: 987, column: 10, scope: !3771, inlinedAt: !3828)
!3841 = !DILocation(line: 988, column: 1, scope: !3771, inlinedAt: !3828)
!3842 = !DILocation(line: 999, column: 3, scope: !3824)
!3843 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !277, file: !277, line: 1003, type: !3652, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3844)
!3844 = !{!3845, !3846}
!3845 = !DILocalVariable(name: "arg", arg: 1, scope: !3843, file: !277, line: 1003, type: !38)
!3846 = !DILocalVariable(name: "argsize", arg: 2, scope: !3843, file: !277, line: 1003, type: !95)
!3847 = !DILocation(line: 984, column: 26, scope: !3771, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 1005, column: 10, scope: !3843)
!3849 = !DILocation(line: 0, scope: !3843)
!3850 = !DILocation(line: 0, scope: !3771, inlinedAt: !3848)
!3851 = !DILocation(line: 984, column: 3, scope: !3771, inlinedAt: !3848)
!3852 = !DILocation(line: 985, column: 13, scope: !3771, inlinedAt: !3848)
!3853 = !DILocation(line: 0, scope: !2608, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 986, column: 3, scope: !3771, inlinedAt: !3848)
!3855 = !DILocation(line: 156, column: 57, scope: !2608, inlinedAt: !3854)
!3856 = !DILocation(line: 158, column: 12, scope: !2608, inlinedAt: !3854)
!3857 = !DILocation(line: 159, column: 6, scope: !2608, inlinedAt: !3854)
!3858 = !DILocation(line: 987, column: 10, scope: !3771, inlinedAt: !3848)
!3859 = !DILocation(line: 988, column: 1, scope: !3771, inlinedAt: !3848)
!3860 = !DILocation(line: 1005, column: 3, scope: !3843)
!3861 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !277, file: !277, line: 1009, type: !3663, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3862)
!3862 = !{!3863, !3864, !3865, !3866}
!3863 = !DILocalVariable(name: "n", arg: 1, scope: !3861, file: !277, line: 1009, type: !40)
!3864 = !DILocalVariable(name: "s", arg: 2, scope: !3861, file: !277, line: 1009, type: !279)
!3865 = !DILocalVariable(name: "arg", arg: 3, scope: !3861, file: !277, line: 1009, type: !38)
!3866 = !DILocalVariable(name: "options", scope: !3861, file: !277, line: 1011, type: !310)
!3867 = !DILocation(line: 195, column: 26, scope: !3674, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 1012, column: 13, scope: !3861)
!3869 = !DILocation(line: 0, scope: !3861)
!3870 = !DILocation(line: 1011, column: 3, scope: !3861)
!3871 = !DILocation(line: 1011, column: 26, scope: !3861)
!3872 = !DILocation(line: 1012, column: 13, scope: !3861)
!3873 = !DILocation(line: 0, scope: !3674, inlinedAt: !3868)
!3874 = !{!3875}
!3875 = distinct !{!3875, !3876, !"quoting_options_from_style: argument 0"}
!3876 = distinct !{!3876, !"quoting_options_from_style"}
!3877 = !DILocation(line: 196, column: 13, scope: !3686, inlinedAt: !3868)
!3878 = !DILocation(line: 196, column: 7, scope: !3674, inlinedAt: !3868)
!3879 = !DILocation(line: 197, column: 5, scope: !3686, inlinedAt: !3868)
!3880 = !DILocation(line: 0, scope: !2608, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 1013, column: 3, scope: !3861)
!3882 = !DILocation(line: 156, column: 57, scope: !2608, inlinedAt: !3881)
!3883 = !DILocation(line: 158, column: 12, scope: !2608, inlinedAt: !3881)
!3884 = !DILocation(line: 159, column: 6, scope: !2608, inlinedAt: !3881)
!3885 = !DILocation(line: 1014, column: 10, scope: !3861)
!3886 = !DILocation(line: 1015, column: 1, scope: !3861)
!3887 = !DILocation(line: 1014, column: 3, scope: !3861)
!3888 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !277, file: !277, line: 1018, type: !3889, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!36, !40, !38, !38, !38}
!3891 = !{!3892, !3893, !3894, !3895}
!3892 = !DILocalVariable(name: "n", arg: 1, scope: !3888, file: !277, line: 1018, type: !40)
!3893 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3888, file: !277, line: 1018, type: !38)
!3894 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3888, file: !277, line: 1019, type: !38)
!3895 = !DILocalVariable(name: "arg", arg: 4, scope: !3888, file: !277, line: 1019, type: !38)
!3896 = !DILocalVariable(name: "o", scope: !3897, file: !277, line: 1030, type: !310)
!3897 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !277, file: !277, line: 1026, type: !3898, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!36, !40, !38, !38, !38, !95}
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3896}
!3901 = !DILocalVariable(name: "n", arg: 1, scope: !3897, file: !277, line: 1026, type: !40)
!3902 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3897, file: !277, line: 1026, type: !38)
!3903 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3897, file: !277, line: 1027, type: !38)
!3904 = !DILocalVariable(name: "arg", arg: 4, scope: !3897, file: !277, line: 1028, type: !38)
!3905 = !DILocalVariable(name: "argsize", arg: 5, scope: !3897, file: !277, line: 1028, type: !95)
!3906 = !DILocation(line: 1030, column: 26, scope: !3897, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 1021, column: 10, scope: !3888)
!3908 = !DILocation(line: 0, scope: !3888)
!3909 = !DILocation(line: 0, scope: !3897, inlinedAt: !3907)
!3910 = !DILocation(line: 1030, column: 3, scope: !3897, inlinedAt: !3907)
!3911 = !DILocation(line: 1030, column: 30, scope: !3897, inlinedAt: !3907)
!3912 = !DILocation(line: 0, scope: !2649, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1031, column: 3, scope: !3897, inlinedAt: !3907)
!3914 = !DILocation(line: 184, column: 6, scope: !2649, inlinedAt: !3913)
!3915 = !DILocation(line: 184, column: 12, scope: !2649, inlinedAt: !3913)
!3916 = !DILocation(line: 185, column: 8, scope: !2663, inlinedAt: !3913)
!3917 = !DILocation(line: 185, column: 23, scope: !2663, inlinedAt: !3913)
!3918 = !DILocation(line: 185, column: 19, scope: !2663, inlinedAt: !3913)
!3919 = !DILocation(line: 186, column: 5, scope: !2663, inlinedAt: !3913)
!3920 = !DILocation(line: 187, column: 6, scope: !2649, inlinedAt: !3913)
!3921 = !DILocation(line: 187, column: 17, scope: !2649, inlinedAt: !3913)
!3922 = !DILocation(line: 188, column: 6, scope: !2649, inlinedAt: !3913)
!3923 = !DILocation(line: 188, column: 18, scope: !2649, inlinedAt: !3913)
!3924 = !DILocation(line: 1032, column: 10, scope: !3897, inlinedAt: !3907)
!3925 = !DILocation(line: 1033, column: 1, scope: !3897, inlinedAt: !3907)
!3926 = !DILocation(line: 1021, column: 3, scope: !3888)
!3927 = !DILocation(line: 0, scope: !3897)
!3928 = !DILocation(line: 1030, column: 3, scope: !3897)
!3929 = !DILocation(line: 1030, column: 26, scope: !3897)
!3930 = !DILocation(line: 1030, column: 30, scope: !3897)
!3931 = !DILocation(line: 0, scope: !2649, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 1031, column: 3, scope: !3897)
!3933 = !DILocation(line: 184, column: 6, scope: !2649, inlinedAt: !3932)
!3934 = !DILocation(line: 184, column: 12, scope: !2649, inlinedAt: !3932)
!3935 = !DILocation(line: 185, column: 8, scope: !2663, inlinedAt: !3932)
!3936 = !DILocation(line: 185, column: 23, scope: !2663, inlinedAt: !3932)
!3937 = !DILocation(line: 185, column: 19, scope: !2663, inlinedAt: !3932)
!3938 = !DILocation(line: 186, column: 5, scope: !2663, inlinedAt: !3932)
!3939 = !DILocation(line: 187, column: 6, scope: !2649, inlinedAt: !3932)
!3940 = !DILocation(line: 187, column: 17, scope: !2649, inlinedAt: !3932)
!3941 = !DILocation(line: 188, column: 6, scope: !2649, inlinedAt: !3932)
!3942 = !DILocation(line: 188, column: 18, scope: !2649, inlinedAt: !3932)
!3943 = !DILocation(line: 1032, column: 10, scope: !3897)
!3944 = !DILocation(line: 1033, column: 1, scope: !3897)
!3945 = !DILocation(line: 1032, column: 3, scope: !3897)
!3946 = distinct !DISubprogram(name: "quotearg_custom", scope: !277, file: !277, line: 1036, type: !3947, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!36, !38, !38, !38}
!3949 = !{!3950, !3951, !3952}
!3950 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3946, file: !277, line: 1036, type: !38)
!3951 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3946, file: !277, line: 1036, type: !38)
!3952 = !DILocalVariable(name: "arg", arg: 3, scope: !3946, file: !277, line: 1037, type: !38)
!3953 = !DILocation(line: 1030, column: 26, scope: !3897, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 1021, column: 10, scope: !3888, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1039, column: 10, scope: !3946)
!3956 = !DILocation(line: 0, scope: !3946)
!3957 = !DILocation(line: 0, scope: !3888, inlinedAt: !3955)
!3958 = !DILocation(line: 0, scope: !3897, inlinedAt: !3954)
!3959 = !DILocation(line: 1030, column: 3, scope: !3897, inlinedAt: !3954)
!3960 = !DILocation(line: 1030, column: 30, scope: !3897, inlinedAt: !3954)
!3961 = !DILocation(line: 0, scope: !2649, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 1031, column: 3, scope: !3897, inlinedAt: !3954)
!3963 = !DILocation(line: 184, column: 6, scope: !2649, inlinedAt: !3962)
!3964 = !DILocation(line: 184, column: 12, scope: !2649, inlinedAt: !3962)
!3965 = !DILocation(line: 185, column: 8, scope: !2663, inlinedAt: !3962)
!3966 = !DILocation(line: 185, column: 23, scope: !2663, inlinedAt: !3962)
!3967 = !DILocation(line: 185, column: 19, scope: !2663, inlinedAt: !3962)
!3968 = !DILocation(line: 186, column: 5, scope: !2663, inlinedAt: !3962)
!3969 = !DILocation(line: 187, column: 6, scope: !2649, inlinedAt: !3962)
!3970 = !DILocation(line: 187, column: 17, scope: !2649, inlinedAt: !3962)
!3971 = !DILocation(line: 188, column: 6, scope: !2649, inlinedAt: !3962)
!3972 = !DILocation(line: 188, column: 18, scope: !2649, inlinedAt: !3962)
!3973 = !DILocation(line: 1032, column: 10, scope: !3897, inlinedAt: !3954)
!3974 = !DILocation(line: 1033, column: 1, scope: !3897, inlinedAt: !3954)
!3975 = !DILocation(line: 1039, column: 3, scope: !3946)
!3976 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !277, file: !277, line: 1043, type: !3977, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!36, !38, !38, !38, !95}
!3979 = !{!3980, !3981, !3982, !3983}
!3980 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3976, file: !277, line: 1043, type: !38)
!3981 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3976, file: !277, line: 1043, type: !38)
!3982 = !DILocalVariable(name: "arg", arg: 3, scope: !3976, file: !277, line: 1044, type: !38)
!3983 = !DILocalVariable(name: "argsize", arg: 4, scope: !3976, file: !277, line: 1044, type: !95)
!3984 = !DILocation(line: 1030, column: 26, scope: !3897, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 1046, column: 10, scope: !3976)
!3986 = !DILocation(line: 0, scope: !3976)
!3987 = !DILocation(line: 0, scope: !3897, inlinedAt: !3985)
!3988 = !DILocation(line: 1030, column: 3, scope: !3897, inlinedAt: !3985)
!3989 = !DILocation(line: 1030, column: 30, scope: !3897, inlinedAt: !3985)
!3990 = !DILocation(line: 0, scope: !2649, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 1031, column: 3, scope: !3897, inlinedAt: !3985)
!3992 = !DILocation(line: 184, column: 6, scope: !2649, inlinedAt: !3991)
!3993 = !DILocation(line: 184, column: 12, scope: !2649, inlinedAt: !3991)
!3994 = !DILocation(line: 185, column: 8, scope: !2663, inlinedAt: !3991)
!3995 = !DILocation(line: 185, column: 23, scope: !2663, inlinedAt: !3991)
!3996 = !DILocation(line: 185, column: 19, scope: !2663, inlinedAt: !3991)
!3997 = !DILocation(line: 186, column: 5, scope: !2663, inlinedAt: !3991)
!3998 = !DILocation(line: 187, column: 6, scope: !2649, inlinedAt: !3991)
!3999 = !DILocation(line: 187, column: 17, scope: !2649, inlinedAt: !3991)
!4000 = !DILocation(line: 188, column: 6, scope: !2649, inlinedAt: !3991)
!4001 = !DILocation(line: 188, column: 18, scope: !2649, inlinedAt: !3991)
!4002 = !DILocation(line: 1032, column: 10, scope: !3897, inlinedAt: !3985)
!4003 = !DILocation(line: 1033, column: 1, scope: !3897, inlinedAt: !3985)
!4004 = !DILocation(line: 1046, column: 3, scope: !3976)
!4005 = distinct !DISubprogram(name: "quote_n_mem", scope: !277, file: !277, line: 1061, type: !4006, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!38, !40, !38, !95}
!4008 = !{!4009, !4010, !4011}
!4009 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !277, line: 1061, type: !40)
!4010 = !DILocalVariable(name: "arg", arg: 2, scope: !4005, file: !277, line: 1061, type: !38)
!4011 = !DILocalVariable(name: "argsize", arg: 3, scope: !4005, file: !277, line: 1061, type: !95)
!4012 = !DILocation(line: 0, scope: !4005)
!4013 = !DILocation(line: 1063, column: 10, scope: !4005)
!4014 = !DILocation(line: 1063, column: 3, scope: !4005)
!4015 = distinct !DISubprogram(name: "quote_mem", scope: !277, file: !277, line: 1067, type: !4016, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!38, !38, !95}
!4018 = !{!4019, !4020}
!4019 = !DILocalVariable(name: "arg", arg: 1, scope: !4015, file: !277, line: 1067, type: !38)
!4020 = !DILocalVariable(name: "argsize", arg: 2, scope: !4015, file: !277, line: 1067, type: !95)
!4021 = !DILocation(line: 0, scope: !4015)
!4022 = !DILocation(line: 0, scope: !4005, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1069, column: 10, scope: !4015)
!4024 = !DILocation(line: 1063, column: 10, scope: !4005, inlinedAt: !4023)
!4025 = !DILocation(line: 1069, column: 3, scope: !4015)
!4026 = distinct !DISubprogram(name: "quote_n", scope: !277, file: !277, line: 1073, type: !163, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !4027)
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "n", arg: 1, scope: !4026, file: !277, line: 1073, type: !40)
!4029 = !DILocalVariable(name: "arg", arg: 2, scope: !4026, file: !277, line: 1073, type: !38)
!4030 = !DILocation(line: 0, scope: !4026)
!4031 = !DILocation(line: 0, scope: !4005, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1075, column: 10, scope: !4026)
!4033 = !DILocation(line: 1063, column: 10, scope: !4005, inlinedAt: !4032)
!4034 = !DILocation(line: 1075, column: 3, scope: !4026)
!4035 = distinct !DISubprogram(name: "quote", scope: !277, file: !277, line: 1079, type: !130, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !4036)
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "arg", arg: 1, scope: !4035, file: !277, line: 1079, type: !38)
!4038 = !DILocation(line: 0, scope: !4035)
!4039 = !DILocation(line: 0, scope: !4026, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 1081, column: 10, scope: !4035)
!4041 = !DILocation(line: 0, scope: !4005, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1075, column: 10, scope: !4026, inlinedAt: !4040)
!4043 = !DILocation(line: 1063, column: 10, scope: !4005, inlinedAt: !4042)
!4044 = !DILocation(line: 1081, column: 3, scope: !4035)
!4045 = distinct !DISubprogram(name: "strintcmp", scope: !413, file: !413, line: 29, type: !160, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !4046)
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "a", arg: 1, scope: !4045, file: !413, line: 29, type: !38)
!4048 = !DILocalVariable(name: "b", arg: 2, scope: !4045, file: !413, line: 29, type: !38)
!4049 = !DILocation(line: 0, scope: !4045)
!4050 = !DILocalVariable(name: "a", arg: 1, scope: !4051, file: !4052, line: 114, type: !38)
!4051 = distinct !DISubprogram(name: "numcompare", scope: !4052, file: !4052, line: 114, type: !4053, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !4055)
!4052 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!40, !38, !38, !40, !40}
!4055 = !{!4050, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4056 = !DILocalVariable(name: "b", arg: 2, scope: !4051, file: !4052, line: 114, type: !38)
!4057 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4051, file: !4052, line: 115, type: !40)
!4058 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4051, file: !4052, line: 115, type: !40)
!4059 = !DILocalVariable(name: "tmpa", scope: !4051, file: !4052, line: 117, type: !2616)
!4060 = !DILocalVariable(name: "tmpb", scope: !4051, file: !4052, line: 118, type: !2616)
!4061 = !DILocalVariable(name: "tmp", scope: !4051, file: !4052, line: 119, type: !40)
!4062 = !DILocalVariable(name: "log_a", scope: !4051, file: !4052, line: 120, type: !95)
!4063 = !DILocalVariable(name: "log_b", scope: !4051, file: !4052, line: 121, type: !95)
!4064 = !DILocation(line: 0, scope: !4051, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 31, column: 10, scope: !4045)
!4066 = !DILocation(line: 117, column: 24, scope: !4051, inlinedAt: !4065)
!4067 = !DILocation(line: 118, column: 24, scope: !4051, inlinedAt: !4065)
!4068 = !DILocation(line: 123, column: 12, scope: !4069, inlinedAt: !4065)
!4069 = distinct !DILexicalBlock(scope: !4051, file: !4052, line: 123, column: 7)
!4070 = !DILocation(line: 123, column: 7, scope: !4051, inlinedAt: !4065)
!4071 = !DILocation(line: 126, column: 17, scope: !4072, inlinedAt: !4065)
!4072 = distinct !DILexicalBlock(scope: !4069, file: !4052, line: 124, column: 5)
!4073 = !DILocation(line: 126, column: 16, scope: !4072, inlinedAt: !4065)
!4074 = !DILocation(line: 127, column: 19, scope: !4072, inlinedAt: !4065)
!4075 = !DILocation(line: 126, column: 9, scope: !4072, inlinedAt: !4065)
!4076 = distinct !{!4076, !4077, !4078}
!4077 = !DILocation(line: 125, column: 7, scope: !4072, inlinedAt: !4065)
!4078 = !DILocation(line: 127, column: 59, scope: !4072, inlinedAt: !4065)
!4079 = !DILocation(line: 128, column: 16, scope: !4080, inlinedAt: !4065)
!4080 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 128, column: 11)
!4081 = !DILocation(line: 128, column: 11, scope: !4072, inlinedAt: !4065)
!4082 = !DILocation(line: 134, column: 15, scope: !4083, inlinedAt: !4065)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !4052, line: 134, column: 15)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !4052, line: 129, column: 9)
!4085 = !DILocation(line: 134, column: 15, scope: !4084, inlinedAt: !4065)
!4086 = !DILocation(line: 136, column: 23, scope: !4084, inlinedAt: !4065)
!4087 = !DILocation(line: 136, column: 11, scope: !4084, inlinedAt: !4065)
!4088 = !DILocation(line: 137, column: 21, scope: !4084, inlinedAt: !4065)
!4089 = !DILocation(line: 137, column: 20, scope: !4084, inlinedAt: !4065)
!4090 = distinct !{!4090, !4087, !4091}
!4091 = !DILocation(line: 137, column: 23, scope: !4084, inlinedAt: !4065)
!4092 = !DILocation(line: 142, column: 20, scope: !4084, inlinedAt: !4065)
!4093 = !DILocation(line: 142, column: 18, scope: !4084, inlinedAt: !4065)
!4094 = !DILocation(line: 142, column: 11, scope: !4084, inlinedAt: !4065)
!4095 = !DILocation(line: 145, column: 17, scope: !4072, inlinedAt: !4065)
!4096 = !DILocation(line: 145, column: 16, scope: !4072, inlinedAt: !4065)
!4097 = !DILocation(line: 146, column: 19, scope: !4072, inlinedAt: !4065)
!4098 = !DILocation(line: 145, column: 9, scope: !4072, inlinedAt: !4065)
!4099 = distinct !{!4099, !4100, !4101}
!4100 = !DILocation(line: 144, column: 7, scope: !4072, inlinedAt: !4065)
!4101 = !DILocation(line: 146, column: 59, scope: !4072, inlinedAt: !4065)
!4102 = !DILocation(line: 148, column: 14, scope: !4072, inlinedAt: !4065)
!4103 = !DILocation(line: 148, column: 19, scope: !4072, inlinedAt: !4065)
!4104 = !DILocation(line: 148, column: 27, scope: !4072, inlinedAt: !4065)
!4105 = !DILocation(line: 148, column: 7, scope: !4072, inlinedAt: !4065)
!4106 = !DILocation(line: 151, column: 21, scope: !4107, inlinedAt: !4065)
!4107 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 149, column: 9)
!4108 = !DILocation(line: 151, column: 20, scope: !4107, inlinedAt: !4065)
!4109 = !DILocation(line: 154, column: 21, scope: !4107, inlinedAt: !4065)
!4110 = !DILocation(line: 154, column: 20, scope: !4107, inlinedAt: !4065)
!4111 = !DILocation(line: 148, column: 22, scope: !4072, inlinedAt: !4065)
!4112 = !DILocation(line: 164, column: 23, scope: !4113, inlinedAt: !4065)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !4052, line: 164, column: 7)
!4114 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 164, column: 7)
!4115 = !DILocation(line: 0, scope: !4072, inlinedAt: !4065)
!4116 = !DILocation(line: 162, column: 18, scope: !4072, inlinedAt: !4065)
!4117 = !DILocation(line: 164, column: 7, scope: !4114, inlinedAt: !4065)
!4118 = !DILocation(line: 0, scope: !4114, inlinedAt: !4065)
!4119 = !DILocation(line: 169, column: 23, scope: !4120, inlinedAt: !4065)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !4052, line: 169, column: 7)
!4121 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 169, column: 7)
!4122 = !DILocation(line: 169, column: 7, scope: !4121, inlinedAt: !4065)
!4123 = !DILocation(line: 166, column: 19, scope: !4113, inlinedAt: !4065)
!4124 = !DILocation(line: 166, column: 18, scope: !4113, inlinedAt: !4065)
!4125 = !DILocation(line: 164, column: 39, scope: !4113, inlinedAt: !4065)
!4126 = distinct !{!4126, !4117, !4127}
!4127 = !DILocation(line: 167, column: 37, scope: !4114, inlinedAt: !4065)
!4128 = !DILocation(line: 171, column: 19, scope: !4120, inlinedAt: !4065)
!4129 = !DILocation(line: 171, column: 18, scope: !4120, inlinedAt: !4065)
!4130 = !DILocation(line: 169, column: 39, scope: !4120, inlinedAt: !4065)
!4131 = distinct !{!4131, !4122, !4132}
!4132 = !DILocation(line: 172, column: 37, scope: !4121, inlinedAt: !4065)
!4133 = !DILocation(line: 0, scope: !4121, inlinedAt: !4065)
!4134 = !DILocation(line: 174, column: 17, scope: !4135, inlinedAt: !4065)
!4135 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 174, column: 11)
!4136 = !DILocation(line: 174, column: 11, scope: !4072, inlinedAt: !4065)
!4137 = !DILocation(line: 175, column: 22, scope: !4135, inlinedAt: !4065)
!4138 = !DILocation(line: 175, column: 16, scope: !4135, inlinedAt: !4065)
!4139 = !DILocation(line: 175, column: 9, scope: !4135, inlinedAt: !4065)
!4140 = !DILocation(line: 177, column: 12, scope: !4141, inlinedAt: !4065)
!4141 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 177, column: 11)
!4142 = !DILocation(line: 182, column: 17, scope: !4143, inlinedAt: !4065)
!4143 = distinct !DILexicalBlock(scope: !4069, file: !4052, line: 182, column: 12)
!4144 = !DILocation(line: 182, column: 12, scope: !4069, inlinedAt: !4065)
!4145 = !DILocation(line: 203, column: 19, scope: !4146, inlinedAt: !4065)
!4146 = distinct !DILexicalBlock(scope: !4143, file: !4052, line: 202, column: 5)
!4147 = !DILocation(line: 203, column: 7, scope: !4146, inlinedAt: !4065)
!4148 = !DILocation(line: 185, column: 17, scope: !4149, inlinedAt: !4065)
!4149 = distinct !DILexicalBlock(scope: !4143, file: !4052, line: 183, column: 5)
!4150 = !DILocation(line: 185, column: 16, scope: !4149, inlinedAt: !4065)
!4151 = !DILocation(line: 186, column: 19, scope: !4149, inlinedAt: !4065)
!4152 = !DILocation(line: 185, column: 9, scope: !4149, inlinedAt: !4065)
!4153 = distinct !{!4153, !4154, !4155}
!4154 = !DILocation(line: 184, column: 7, scope: !4149, inlinedAt: !4065)
!4155 = !DILocation(line: 186, column: 59, scope: !4149, inlinedAt: !4065)
!4156 = !DILocation(line: 191, column: 11, scope: !4157, inlinedAt: !4065)
!4157 = distinct !DILexicalBlock(scope: !4149, file: !4052, line: 191, column: 11)
!4158 = !DILocation(line: 191, column: 11, scope: !4149, inlinedAt: !4065)
!4159 = !DILocation(line: 193, column: 19, scope: !4149, inlinedAt: !4065)
!4160 = !DILocation(line: 193, column: 7, scope: !4149, inlinedAt: !4065)
!4161 = !DILocation(line: 194, column: 17, scope: !4149, inlinedAt: !4065)
!4162 = !DILocation(line: 194, column: 16, scope: !4149, inlinedAt: !4065)
!4163 = distinct !{!4163, !4160, !4164}
!4164 = !DILocation(line: 194, column: 19, scope: !4149, inlinedAt: !4065)
!4165 = !DILocation(line: 199, column: 14, scope: !4149, inlinedAt: !4065)
!4166 = !DILocation(line: 199, column: 7, scope: !4149, inlinedAt: !4065)
!4167 = !DILocation(line: 205, column: 19, scope: !4146, inlinedAt: !4065)
!4168 = !DILocation(line: 205, column: 7, scope: !4146, inlinedAt: !4065)
!4169 = !DILocation(line: 204, column: 17, scope: !4146, inlinedAt: !4065)
!4170 = !DILocation(line: 204, column: 16, scope: !4146, inlinedAt: !4065)
!4171 = distinct !{!4171, !4147, !4172}
!4172 = !DILocation(line: 204, column: 19, scope: !4146, inlinedAt: !4065)
!4173 = !DILocation(line: 208, column: 14, scope: !4146, inlinedAt: !4065)
!4174 = !DILocation(line: 208, column: 19, scope: !4146, inlinedAt: !4065)
!4175 = !DILocation(line: 208, column: 27, scope: !4146, inlinedAt: !4065)
!4176 = !DILocation(line: 208, column: 7, scope: !4146, inlinedAt: !4065)
!4177 = !DILocation(line: 206, column: 17, scope: !4146, inlinedAt: !4065)
!4178 = !DILocation(line: 206, column: 16, scope: !4146, inlinedAt: !4065)
!4179 = distinct !{!4179, !4168, !4180}
!4180 = !DILocation(line: 206, column: 19, scope: !4146, inlinedAt: !4065)
!4181 = !DILocation(line: 211, column: 21, scope: !4182, inlinedAt: !4065)
!4182 = distinct !DILexicalBlock(scope: !4146, file: !4052, line: 209, column: 9)
!4183 = !DILocation(line: 211, column: 20, scope: !4182, inlinedAt: !4065)
!4184 = !DILocation(line: 214, column: 21, scope: !4182, inlinedAt: !4065)
!4185 = !DILocation(line: 214, column: 20, scope: !4182, inlinedAt: !4065)
!4186 = !DILocation(line: 208, column: 22, scope: !4146, inlinedAt: !4065)
!4187 = !DILocation(line: 224, column: 23, scope: !4188, inlinedAt: !4065)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !4052, line: 224, column: 7)
!4189 = distinct !DILexicalBlock(scope: !4146, file: !4052, line: 224, column: 7)
!4190 = !DILocation(line: 222, column: 18, scope: !4146, inlinedAt: !4065)
!4191 = !DILocation(line: 224, column: 7, scope: !4189, inlinedAt: !4065)
!4192 = !DILocation(line: 0, scope: !4189, inlinedAt: !4065)
!4193 = !DILocation(line: 229, column: 23, scope: !4194, inlinedAt: !4065)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !4052, line: 229, column: 7)
!4195 = distinct !DILexicalBlock(scope: !4146, file: !4052, line: 229, column: 7)
!4196 = !DILocation(line: 229, column: 7, scope: !4195, inlinedAt: !4065)
!4197 = !DILocation(line: 226, column: 19, scope: !4188, inlinedAt: !4065)
!4198 = !DILocation(line: 226, column: 18, scope: !4188, inlinedAt: !4065)
!4199 = !DILocation(line: 224, column: 39, scope: !4188, inlinedAt: !4065)
!4200 = distinct !{!4200, !4191, !4201}
!4201 = !DILocation(line: 227, column: 37, scope: !4189, inlinedAt: !4065)
!4202 = !DILocation(line: 231, column: 19, scope: !4194, inlinedAt: !4065)
!4203 = !DILocation(line: 231, column: 18, scope: !4194, inlinedAt: !4065)
!4204 = !DILocation(line: 229, column: 39, scope: !4194, inlinedAt: !4065)
!4205 = distinct !{!4205, !4196, !4206}
!4206 = !DILocation(line: 232, column: 37, scope: !4195, inlinedAt: !4065)
!4207 = !DILocation(line: 0, scope: !4195, inlinedAt: !4065)
!4208 = !DILocation(line: 234, column: 17, scope: !4209, inlinedAt: !4065)
!4209 = distinct !DILexicalBlock(scope: !4146, file: !4052, line: 234, column: 11)
!4210 = !DILocation(line: 234, column: 11, scope: !4146, inlinedAt: !4065)
!4211 = !DILocation(line: 235, column: 22, scope: !4209, inlinedAt: !4065)
!4212 = !DILocation(line: 235, column: 16, scope: !4209, inlinedAt: !4065)
!4213 = !DILocation(line: 235, column: 9, scope: !4209, inlinedAt: !4065)
!4214 = !DILocation(line: 237, column: 12, scope: !4215, inlinedAt: !4065)
!4215 = distinct !DILexicalBlock(scope: !4146, file: !4052, line: 237, column: 11)
!4216 = !DILocation(line: 0, scope: !4146, inlinedAt: !4065)
!4217 = !DILocation(line: 0, scope: !4069, inlinedAt: !4065)
!4218 = !DILocation(line: 31, column: 3, scope: !4045)
!4219 = distinct !DISubprogram(name: "verror", scope: !415, file: !415, line: 43, type: !4220, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !40, !40, !38, !420}
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DILocalVariable(name: "status", arg: 1, scope: !4219, file: !415, line: 43, type: !40)
!4224 = !DILocalVariable(name: "errnum", arg: 2, scope: !4219, file: !415, line: 43, type: !40)
!4225 = !DILocalVariable(name: "format", arg: 3, scope: !4219, file: !415, line: 43, type: !38)
!4226 = !DILocalVariable(name: "args", arg: 4, scope: !4219, file: !415, line: 43, type: !420)
!4227 = !DILocation(line: 0, scope: !4219)
!4228 = !DILocation(line: 45, column: 3, scope: !4219)
!4229 = !DILocation(line: 46, column: 1, scope: !4219)
!4230 = distinct !DISubprogram(name: "verror_at_line", scope: !415, file: !415, line: 55, type: !418, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4232 = !DILocalVariable(name: "status", arg: 1, scope: !4230, file: !415, line: 55, type: !40)
!4233 = !DILocalVariable(name: "errnum", arg: 2, scope: !4230, file: !415, line: 55, type: !40)
!4234 = !DILocalVariable(name: "file", arg: 3, scope: !4230, file: !415, line: 55, type: !38)
!4235 = !DILocalVariable(name: "line_number", arg: 4, scope: !4230, file: !415, line: 56, type: !7)
!4236 = !DILocalVariable(name: "format", arg: 5, scope: !4230, file: !415, line: 56, type: !38)
!4237 = !DILocalVariable(name: "args", arg: 6, scope: !4230, file: !415, line: 56, type: !420)
!4238 = !DILocalVariable(name: "message", scope: !4230, file: !415, line: 58, type: !36)
!4239 = !DILocation(line: 0, scope: !4230)
!4240 = !DILocation(line: 58, column: 19, scope: !4230)
!4241 = !DILocation(line: 59, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4230, file: !415, line: 59, column: 7)
!4243 = !DILocation(line: 59, column: 7, scope: !4230)
!4244 = !DILocation(line: 64, column: 11, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !415, line: 64, column: 11)
!4246 = distinct !DILexicalBlock(scope: !4242, file: !415, line: 60, column: 5)
!4247 = !DILocation(line: 64, column: 11, scope: !4246)
!4248 = !DILocation(line: 65, column: 9, scope: !4245)
!4249 = !DILocation(line: 67, column: 9, scope: !4245)
!4250 = !DILocation(line: 73, column: 17, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4242, file: !415, line: 70, column: 5)
!4252 = !DILocation(line: 73, column: 24, scope: !4251)
!4253 = !DILocation(line: 73, column: 7, scope: !4251)
!4254 = !DILocation(line: 74, column: 7, scope: !4251)
!4255 = !DILocation(line: 76, column: 3, scope: !4230)
!4256 = !DILocation(line: 77, column: 1, scope: !4230)
!4257 = distinct !DISubprogram(name: "version_etc_arn", scope: !435, file: !435, line: 61, type: !4258, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4264)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4260, !38, !38, !38, !4263, !95}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4262, line: 7, baseType: !445)
!4262 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270}
!4265 = !DILocalVariable(name: "stream", arg: 1, scope: !4257, file: !435, line: 61, type: !4260)
!4266 = !DILocalVariable(name: "command_name", arg: 2, scope: !4257, file: !435, line: 62, type: !38)
!4267 = !DILocalVariable(name: "package", arg: 3, scope: !4257, file: !435, line: 62, type: !38)
!4268 = !DILocalVariable(name: "version", arg: 4, scope: !4257, file: !435, line: 63, type: !38)
!4269 = !DILocalVariable(name: "authors", arg: 5, scope: !4257, file: !435, line: 64, type: !4263)
!4270 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4257, file: !435, line: 64, type: !95)
!4271 = !DILocation(line: 0, scope: !4257)
!4272 = !DILocation(line: 66, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4257, file: !435, line: 66, column: 7)
!4274 = !DILocation(line: 66, column: 7, scope: !4257)
!4275 = !DILocation(line: 67, column: 5, scope: !4273)
!4276 = !DILocation(line: 69, column: 5, scope: !4273)
!4277 = !DILocation(line: 83, column: 3, scope: !4257)
!4278 = !DILocation(line: 85, column: 3, scope: !4257)
!4279 = !DILocation(line: 88, column: 3, scope: !4257)
!4280 = !DILocation(line: 95, column: 3, scope: !4257)
!4281 = !DILocation(line: 97, column: 3, scope: !4257)
!4282 = !DILocation(line: 105, column: 7, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4257, file: !435, line: 98, column: 5)
!4284 = !DILocation(line: 106, column: 7, scope: !4283)
!4285 = !DILocation(line: 109, column: 7, scope: !4283)
!4286 = !DILocation(line: 110, column: 7, scope: !4283)
!4287 = !DILocation(line: 113, column: 7, scope: !4283)
!4288 = !DILocation(line: 115, column: 7, scope: !4283)
!4289 = !DILocation(line: 120, column: 7, scope: !4283)
!4290 = !DILocation(line: 122, column: 7, scope: !4283)
!4291 = !DILocation(line: 127, column: 7, scope: !4283)
!4292 = !DILocation(line: 129, column: 7, scope: !4283)
!4293 = !DILocation(line: 134, column: 7, scope: !4283)
!4294 = !DILocation(line: 137, column: 7, scope: !4283)
!4295 = !DILocation(line: 142, column: 7, scope: !4283)
!4296 = !DILocation(line: 145, column: 7, scope: !4283)
!4297 = !DILocation(line: 150, column: 7, scope: !4283)
!4298 = !DILocation(line: 154, column: 7, scope: !4283)
!4299 = !DILocation(line: 159, column: 7, scope: !4283)
!4300 = !DILocation(line: 163, column: 7, scope: !4283)
!4301 = !DILocation(line: 170, column: 7, scope: !4283)
!4302 = !DILocation(line: 174, column: 7, scope: !4283)
!4303 = !DILocation(line: 176, column: 1, scope: !4257)
!4304 = distinct !DISubprogram(name: "version_etc_ar", scope: !435, file: !435, line: 183, type: !4305, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !4260, !38, !38, !38, !4263}
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313}
!4308 = !DILocalVariable(name: "stream", arg: 1, scope: !4304, file: !435, line: 183, type: !4260)
!4309 = !DILocalVariable(name: "command_name", arg: 2, scope: !4304, file: !435, line: 184, type: !38)
!4310 = !DILocalVariable(name: "package", arg: 3, scope: !4304, file: !435, line: 184, type: !38)
!4311 = !DILocalVariable(name: "version", arg: 4, scope: !4304, file: !435, line: 185, type: !38)
!4312 = !DILocalVariable(name: "authors", arg: 5, scope: !4304, file: !435, line: 185, type: !4263)
!4313 = !DILocalVariable(name: "n_authors", scope: !4304, file: !435, line: 187, type: !95)
!4314 = !DILocation(line: 0, scope: !4304)
!4315 = !DILocation(line: 189, column: 8, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4304, file: !435, line: 189, column: 3)
!4317 = !DILocation(line: 0, scope: !4316)
!4318 = !DILocation(line: 189, column: 23, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !435, line: 189, column: 3)
!4320 = !DILocation(line: 189, column: 3, scope: !4316)
!4321 = !DILocation(line: 189, column: 52, scope: !4319)
!4322 = distinct !{!4322, !4320, !4323}
!4323 = !DILocation(line: 190, column: 5, scope: !4316)
!4324 = !DILocation(line: 191, column: 3, scope: !4304)
!4325 = !DILocation(line: 192, column: 1, scope: !4304)
!4326 = distinct !DISubprogram(name: "version_etc_va", scope: !435, file: !435, line: 199, type: !4327, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4336)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4260, !38, !38, !38, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !435, line: 192, size: 192, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4330, file: !435, line: 192, baseType: !7, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4330, file: !435, line: 192, baseType: !7, size: 32, offset: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4330, file: !435, line: 192, baseType: !93, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4330, file: !435, line: 192, baseType: !93, size: 64, offset: 128)
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343}
!4337 = !DILocalVariable(name: "stream", arg: 1, scope: !4326, file: !435, line: 199, type: !4260)
!4338 = !DILocalVariable(name: "command_name", arg: 2, scope: !4326, file: !435, line: 200, type: !38)
!4339 = !DILocalVariable(name: "package", arg: 3, scope: !4326, file: !435, line: 200, type: !38)
!4340 = !DILocalVariable(name: "version", arg: 4, scope: !4326, file: !435, line: 201, type: !38)
!4341 = !DILocalVariable(name: "authors", arg: 5, scope: !4326, file: !435, line: 201, type: !4329)
!4342 = !DILocalVariable(name: "n_authors", scope: !4326, file: !435, line: 203, type: !95)
!4343 = !DILocalVariable(name: "authtab", scope: !4326, file: !435, line: 204, type: !4344)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !372)
!4345 = !DILocation(line: 0, scope: !4326)
!4346 = !DILocation(line: 204, column: 3, scope: !4326)
!4347 = !DILocation(line: 204, column: 15, scope: !4326)
!4348 = !DILocation(line: 0, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !435, line: 206, column: 3)
!4350 = distinct !DILexicalBlock(scope: !4326, file: !435, line: 206, column: 3)
!4351 = !DILocation(line: 208, column: 35, scope: !4349)
!4352 = !DILocation(line: 208, column: 14, scope: !4349)
!4353 = !DILocation(line: 208, column: 33, scope: !4349)
!4354 = !DILocation(line: 208, column: 67, scope: !4349)
!4355 = !DILocation(line: 206, column: 3, scope: !4350)
!4356 = !DILocation(line: 0, scope: !4350)
!4357 = !DILocation(line: 211, column: 3, scope: !4326)
!4358 = !DILocation(line: 213, column: 1, scope: !4326)
!4359 = distinct !DISubprogram(name: "version_etc", scope: !435, file: !435, line: 230, type: !4360, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4260, !38, !38, !38, null}
!4362 = !{!4363, !4364, !4365, !4366, !4367}
!4363 = !DILocalVariable(name: "stream", arg: 1, scope: !4359, file: !435, line: 230, type: !4260)
!4364 = !DILocalVariable(name: "command_name", arg: 2, scope: !4359, file: !435, line: 231, type: !38)
!4365 = !DILocalVariable(name: "package", arg: 3, scope: !4359, file: !435, line: 231, type: !38)
!4366 = !DILocalVariable(name: "version", arg: 4, scope: !4359, file: !435, line: 232, type: !38)
!4367 = !DILocalVariable(name: "authors", scope: !4359, file: !435, line: 234, type: !4368)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !43, line: 52, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1258, line: 32, baseType: !4370)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !435, line: 234, baseType: !4371)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4330, size: 192, elements: !78)
!4372 = !DILocation(line: 0, scope: !4359)
!4373 = !DILocation(line: 234, column: 3, scope: !4359)
!4374 = !DILocation(line: 234, column: 11, scope: !4359)
!4375 = !DILocation(line: 236, column: 3, scope: !4359)
!4376 = !DILocation(line: 237, column: 3, scope: !4359)
!4377 = !DILocation(line: 238, column: 3, scope: !4359)
!4378 = !DILocation(line: 239, column: 1, scope: !4359)
!4379 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !435, file: !435, line: 242, type: !122, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !41)
!4380 = !DILocation(line: 244, column: 3, scope: !4379)
!4381 = !DILocation(line: 249, column: 3, scope: !4379)
!4382 = !DILocation(line: 255, column: 3, scope: !4379)
!4383 = !DILocation(line: 260, column: 3, scope: !4379)
!4384 = !DILocation(line: 262, column: 1, scope: !4379)
!4385 = distinct !DISubprogram(name: "xnmalloc", scope: !299, file: !299, line: 99, type: !4386, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!93, !95, !95}
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "n", arg: 1, scope: !4385, file: !299, line: 99, type: !95)
!4390 = !DILocalVariable(name: "s", arg: 2, scope: !4385, file: !299, line: 99, type: !95)
!4391 = !DILocation(line: 0, scope: !4385)
!4392 = !DILocation(line: 101, column: 7, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4385, file: !299, line: 101, column: 7)
!4394 = !DILocation(line: 101, column: 7, scope: !4385)
!4395 = !DILocation(line: 102, column: 5, scope: !4393)
!4396 = !DILocation(line: 103, column: 21, scope: !4385)
!4397 = !DILocalVariable(name: "n", arg: 1, scope: !4398, file: !477, line: 39, type: !95)
!4398 = distinct !DISubprogram(name: "xmalloc", scope: !477, file: !477, line: 39, type: !4399, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4401)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!93, !95}
!4401 = !{!4397, !4402}
!4402 = !DILocalVariable(name: "p", scope: !4398, file: !477, line: 41, type: !93)
!4403 = !DILocation(line: 0, scope: !4398, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 103, column: 10, scope: !4385)
!4405 = !DILocation(line: 41, column: 13, scope: !4398, inlinedAt: !4404)
!4406 = !DILocation(line: 42, column: 8, scope: !4407, inlinedAt: !4404)
!4407 = distinct !DILexicalBlock(scope: !4398, file: !477, line: 42, column: 7)
!4408 = !DILocation(line: 42, column: 15, scope: !4407, inlinedAt: !4404)
!4409 = !DILocation(line: 42, column: 10, scope: !4407, inlinedAt: !4404)
!4410 = !DILocation(line: 43, column: 5, scope: !4407, inlinedAt: !4404)
!4411 = !DILocation(line: 103, column: 3, scope: !4385)
!4412 = !DILocation(line: 0, scope: !4398)
!4413 = !DILocation(line: 41, column: 13, scope: !4398)
!4414 = !DILocation(line: 42, column: 8, scope: !4407)
!4415 = !DILocation(line: 42, column: 15, scope: !4407)
!4416 = !DILocation(line: 42, column: 10, scope: !4407)
!4417 = !DILocation(line: 43, column: 5, scope: !4407)
!4418 = !DILocation(line: 44, column: 3, scope: !4398)
!4419 = distinct !DISubprogram(name: "xnrealloc", scope: !299, file: !299, line: 112, type: !4420, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!93, !93, !95, !95}
!4422 = !{!4423, !4424, !4425}
!4423 = !DILocalVariable(name: "p", arg: 1, scope: !4419, file: !299, line: 112, type: !93)
!4424 = !DILocalVariable(name: "n", arg: 2, scope: !4419, file: !299, line: 112, type: !95)
!4425 = !DILocalVariable(name: "s", arg: 3, scope: !4419, file: !299, line: 112, type: !95)
!4426 = !DILocation(line: 0, scope: !4419)
!4427 = !DILocation(line: 114, column: 7, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4419, file: !299, line: 114, column: 7)
!4429 = !DILocation(line: 114, column: 7, scope: !4419)
!4430 = !DILocation(line: 115, column: 5, scope: !4428)
!4431 = !DILocation(line: 116, column: 25, scope: !4419)
!4432 = !DILocalVariable(name: "p", arg: 1, scope: !4433, file: !477, line: 51, type: !93)
!4433 = distinct !DISubprogram(name: "xrealloc", scope: !477, file: !477, line: 51, type: !4434, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!93, !93, !95}
!4436 = !{!4432, !4437}
!4437 = !DILocalVariable(name: "n", arg: 2, scope: !4433, file: !477, line: 51, type: !95)
!4438 = !DILocation(line: 0, scope: !4433, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 116, column: 10, scope: !4419)
!4440 = !DILocation(line: 53, column: 8, scope: !4441, inlinedAt: !4439)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !477, line: 53, column: 7)
!4442 = !DILocation(line: 53, column: 13, scope: !4441, inlinedAt: !4439)
!4443 = !DILocation(line: 53, column: 10, scope: !4441, inlinedAt: !4439)
!4444 = !DILocation(line: 57, column: 7, scope: !4445, inlinedAt: !4439)
!4445 = distinct !DILexicalBlock(scope: !4441, file: !477, line: 54, column: 5)
!4446 = !DILocation(line: 58, column: 7, scope: !4445, inlinedAt: !4439)
!4447 = !DILocation(line: 61, column: 7, scope: !4433, inlinedAt: !4439)
!4448 = !DILocation(line: 62, column: 8, scope: !4449, inlinedAt: !4439)
!4449 = distinct !DILexicalBlock(scope: !4433, file: !477, line: 62, column: 7)
!4450 = !DILocation(line: 62, column: 13, scope: !4449, inlinedAt: !4439)
!4451 = !DILocation(line: 62, column: 10, scope: !4449, inlinedAt: !4439)
!4452 = !DILocation(line: 63, column: 5, scope: !4449, inlinedAt: !4439)
!4453 = !DILocation(line: 116, column: 3, scope: !4419)
!4454 = !DILocation(line: 0, scope: !4433)
!4455 = !DILocation(line: 53, column: 8, scope: !4441)
!4456 = !DILocation(line: 53, column: 13, scope: !4441)
!4457 = !DILocation(line: 53, column: 10, scope: !4441)
!4458 = !DILocation(line: 57, column: 7, scope: !4445)
!4459 = !DILocation(line: 58, column: 7, scope: !4445)
!4460 = !DILocation(line: 61, column: 7, scope: !4433)
!4461 = !DILocation(line: 62, column: 8, scope: !4449)
!4462 = !DILocation(line: 62, column: 13, scope: !4449)
!4463 = !DILocation(line: 62, column: 10, scope: !4449)
!4464 = !DILocation(line: 63, column: 5, scope: !4449)
!4465 = !DILocation(line: 65, column: 1, scope: !4433)
!4466 = !DILocation(line: 0, scope: !480)
!4467 = !DILocation(line: 176, column: 14, scope: !480)
!4468 = !DILocation(line: 178, column: 9, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !480, file: !299, line: 178, column: 7)
!4470 = !DILocation(line: 178, column: 7, scope: !480)
!4471 = !DILocation(line: 180, column: 13, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !299, line: 180, column: 11)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !299, line: 179, column: 5)
!4474 = !DILocation(line: 180, column: 11, scope: !4473)
!4475 = !DILocation(line: 188, column: 30, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !299, line: 181, column: 9)
!4477 = !DILocation(line: 189, column: 16, scope: !4476)
!4478 = !DILocation(line: 189, column: 13, scope: !4476)
!4479 = !DILocation(line: 190, column: 9, scope: !4476)
!4480 = !DILocation(line: 191, column: 11, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4473, file: !299, line: 191, column: 11)
!4482 = !DILocation(line: 191, column: 11, scope: !4473)
!4483 = !DILocation(line: 206, column: 7, scope: !480)
!4484 = !DILocation(line: 207, column: 25, scope: !480)
!4485 = !DILocation(line: 0, scope: !4433, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 207, column: 10, scope: !480)
!4487 = !DILocation(line: 53, column: 10, scope: !4441, inlinedAt: !4486)
!4488 = !DILocation(line: 192, column: 9, scope: !4481)
!4489 = !DILocation(line: 200, column: 69, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4491, file: !299, line: 200, column: 11)
!4491 = distinct !DILexicalBlock(scope: !4469, file: !299, line: 195, column: 5)
!4492 = !DILocation(line: 201, column: 11, scope: !4490)
!4493 = !DILocation(line: 200, column: 11, scope: !4491)
!4494 = !DILocation(line: 202, column: 9, scope: !4490)
!4495 = !DILocation(line: 203, column: 14, scope: !4491)
!4496 = !DILocation(line: 203, column: 18, scope: !4491)
!4497 = !DILocation(line: 203, column: 9, scope: !4491)
!4498 = !DILocation(line: 53, column: 8, scope: !4441, inlinedAt: !4486)
!4499 = !DILocation(line: 57, column: 7, scope: !4445, inlinedAt: !4486)
!4500 = !DILocation(line: 58, column: 7, scope: !4445, inlinedAt: !4486)
!4501 = !DILocation(line: 61, column: 7, scope: !4433, inlinedAt: !4486)
!4502 = !DILocation(line: 62, column: 8, scope: !4449, inlinedAt: !4486)
!4503 = !DILocation(line: 62, column: 13, scope: !4449, inlinedAt: !4486)
!4504 = !DILocation(line: 62, column: 10, scope: !4449, inlinedAt: !4486)
!4505 = !DILocation(line: 63, column: 5, scope: !4449, inlinedAt: !4486)
!4506 = !DILocation(line: 207, column: 3, scope: !480)
!4507 = distinct !DISubprogram(name: "xcharalloc", scope: !299, file: !299, line: 216, type: !3462, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4508)
!4508 = !{!4509}
!4509 = !DILocalVariable(name: "n", arg: 1, scope: !4507, file: !299, line: 216, type: !95)
!4510 = !DILocation(line: 0, scope: !4507)
!4511 = !DILocation(line: 0, scope: !4398, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 218, column: 10, scope: !4507)
!4513 = !DILocation(line: 41, column: 13, scope: !4398, inlinedAt: !4512)
!4514 = !DILocation(line: 42, column: 8, scope: !4407, inlinedAt: !4512)
!4515 = !DILocation(line: 42, column: 15, scope: !4407, inlinedAt: !4512)
!4516 = !DILocation(line: 42, column: 10, scope: !4407, inlinedAt: !4512)
!4517 = !DILocation(line: 43, column: 5, scope: !4407, inlinedAt: !4512)
!4518 = !DILocation(line: 218, column: 3, scope: !4507)
!4519 = distinct !DISubprogram(name: "x2realloc", scope: !477, file: !477, line: 74, type: !4520, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!93, !93, !483}
!4522 = !{!4523, !4524}
!4523 = !DILocalVariable(name: "p", arg: 1, scope: !4519, file: !477, line: 74, type: !93)
!4524 = !DILocalVariable(name: "pn", arg: 2, scope: !4519, file: !477, line: 74, type: !483)
!4525 = !DILocation(line: 0, scope: !4519)
!4526 = !DILocation(line: 0, scope: !480, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 76, column: 10, scope: !4519)
!4528 = !DILocation(line: 176, column: 14, scope: !480, inlinedAt: !4527)
!4529 = !DILocation(line: 178, column: 9, scope: !4469, inlinedAt: !4527)
!4530 = !DILocation(line: 178, column: 7, scope: !480, inlinedAt: !4527)
!4531 = !DILocation(line: 180, column: 13, scope: !4472, inlinedAt: !4527)
!4532 = !DILocation(line: 180, column: 11, scope: !4473, inlinedAt: !4527)
!4533 = !DILocation(line: 191, column: 11, scope: !4481, inlinedAt: !4527)
!4534 = !DILocation(line: 191, column: 11, scope: !4473, inlinedAt: !4527)
!4535 = !DILocation(line: 206, column: 7, scope: !480, inlinedAt: !4527)
!4536 = !DILocation(line: 0, scope: !4433, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 207, column: 10, scope: !480, inlinedAt: !4527)
!4538 = !DILocation(line: 53, column: 10, scope: !4441, inlinedAt: !4537)
!4539 = !DILocation(line: 192, column: 9, scope: !4481, inlinedAt: !4527)
!4540 = !DILocation(line: 201, column: 11, scope: !4490, inlinedAt: !4527)
!4541 = !DILocation(line: 200, column: 11, scope: !4491, inlinedAt: !4527)
!4542 = !DILocation(line: 202, column: 9, scope: !4490, inlinedAt: !4527)
!4543 = !DILocation(line: 203, column: 14, scope: !4491, inlinedAt: !4527)
!4544 = !DILocation(line: 203, column: 18, scope: !4491, inlinedAt: !4527)
!4545 = !DILocation(line: 203, column: 9, scope: !4491, inlinedAt: !4527)
!4546 = !DILocation(line: 53, column: 8, scope: !4441, inlinedAt: !4537)
!4547 = !DILocation(line: 57, column: 7, scope: !4445, inlinedAt: !4537)
!4548 = !DILocation(line: 58, column: 7, scope: !4445, inlinedAt: !4537)
!4549 = !DILocation(line: 61, column: 7, scope: !4433, inlinedAt: !4537)
!4550 = !DILocation(line: 62, column: 8, scope: !4449, inlinedAt: !4537)
!4551 = !DILocation(line: 62, column: 13, scope: !4449, inlinedAt: !4537)
!4552 = !DILocation(line: 62, column: 10, scope: !4449, inlinedAt: !4537)
!4553 = !DILocation(line: 63, column: 5, scope: !4449, inlinedAt: !4537)
!4554 = !DILocation(line: 76, column: 3, scope: !4519)
!4555 = distinct !DISubprogram(name: "xzalloc", scope: !477, file: !477, line: 84, type: !4399, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4556)
!4556 = !{!4557}
!4557 = !DILocalVariable(name: "n", arg: 1, scope: !4555, file: !477, line: 84, type: !95)
!4558 = !DILocation(line: 0, scope: !4555)
!4559 = !DILocalVariable(name: "n", arg: 1, scope: !4560, file: !477, line: 93, type: !95)
!4560 = distinct !DISubprogram(name: "xcalloc", scope: !477, file: !477, line: 93, type: !4386, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4561)
!4561 = !{!4559, !4562, !4563}
!4562 = !DILocalVariable(name: "s", arg: 2, scope: !4560, file: !477, line: 93, type: !95)
!4563 = !DILocalVariable(name: "p", scope: !4560, file: !477, line: 95, type: !93)
!4564 = !DILocation(line: 0, scope: !4560, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 86, column: 10, scope: !4555)
!4566 = !DILocation(line: 100, column: 7, scope: !4567, inlinedAt: !4565)
!4567 = distinct !DILexicalBlock(scope: !4560, file: !477, line: 100, column: 7)
!4568 = !DILocation(line: 101, column: 7, scope: !4567, inlinedAt: !4565)
!4569 = !DILocation(line: 101, column: 18, scope: !4567, inlinedAt: !4565)
!4570 = !DILocation(line: 101, column: 16, scope: !4567, inlinedAt: !4565)
!4571 = !DILocation(line: 100, column: 7, scope: !4560, inlinedAt: !4565)
!4572 = !DILocation(line: 102, column: 5, scope: !4567, inlinedAt: !4565)
!4573 = !DILocation(line: 86, column: 3, scope: !4555)
!4574 = !DILocation(line: 0, scope: !4560)
!4575 = !DILocation(line: 100, column: 7, scope: !4567)
!4576 = !DILocation(line: 101, column: 7, scope: !4567)
!4577 = !DILocation(line: 101, column: 18, scope: !4567)
!4578 = !DILocation(line: 101, column: 16, scope: !4567)
!4579 = !DILocation(line: 100, column: 7, scope: !4560)
!4580 = !DILocation(line: 102, column: 5, scope: !4567)
!4581 = !DILocation(line: 103, column: 3, scope: !4560)
!4582 = distinct !DISubprogram(name: "xmemdup", scope: !477, file: !477, line: 111, type: !4583, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!93, !302, !95}
!4585 = !{!4586, !4587}
!4586 = !DILocalVariable(name: "p", arg: 1, scope: !4582, file: !477, line: 111, type: !302)
!4587 = !DILocalVariable(name: "s", arg: 2, scope: !4582, file: !477, line: 111, type: !95)
!4588 = !DILocation(line: 0, scope: !4582)
!4589 = !DILocation(line: 0, scope: !4398, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 113, column: 18, scope: !4582)
!4591 = !DILocation(line: 41, column: 13, scope: !4398, inlinedAt: !4590)
!4592 = !DILocation(line: 42, column: 8, scope: !4407, inlinedAt: !4590)
!4593 = !DILocation(line: 42, column: 15, scope: !4407, inlinedAt: !4590)
!4594 = !DILocation(line: 42, column: 10, scope: !4407, inlinedAt: !4590)
!4595 = !DILocation(line: 43, column: 5, scope: !4407, inlinedAt: !4590)
!4596 = !DILocalVariable(name: "__dest", arg: 1, scope: !4597, file: !2995, line: 31, type: !4600)
!4597 = distinct !DISubprogram(name: "memcpy", scope: !2995, file: !2995, line: 31, type: !4598, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4602)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!93, !4600, !4601, !95}
!4600 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!4601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !302)
!4602 = !{!4596, !4603, !4604}
!4603 = !DILocalVariable(name: "__src", arg: 2, scope: !4597, file: !2995, line: 31, type: !4601)
!4604 = !DILocalVariable(name: "__len", arg: 3, scope: !4597, file: !2995, line: 31, type: !95)
!4605 = !DILocation(line: 0, scope: !4597, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 113, column: 10, scope: !4582)
!4607 = !DILocation(line: 34, column: 10, scope: !4597, inlinedAt: !4606)
!4608 = !DILocation(line: 113, column: 3, scope: !4582)
!4609 = distinct !DISubprogram(name: "xstrdup", scope: !477, file: !477, line: 119, type: !115, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4610)
!4610 = !{!4611}
!4611 = !DILocalVariable(name: "string", arg: 1, scope: !4609, file: !477, line: 119, type: !38)
!4612 = !DILocation(line: 0, scope: !4609)
!4613 = !DILocation(line: 121, column: 27, scope: !4609)
!4614 = !DILocation(line: 121, column: 43, scope: !4609)
!4615 = !DILocation(line: 0, scope: !4582, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 121, column: 10, scope: !4609)
!4617 = !DILocation(line: 0, scope: !4398, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 113, column: 18, scope: !4582, inlinedAt: !4616)
!4619 = !DILocation(line: 41, column: 13, scope: !4398, inlinedAt: !4618)
!4620 = !DILocation(line: 42, column: 8, scope: !4407, inlinedAt: !4618)
!4621 = !DILocation(line: 42, column: 15, scope: !4407, inlinedAt: !4618)
!4622 = !DILocation(line: 42, column: 10, scope: !4407, inlinedAt: !4618)
!4623 = !DILocation(line: 43, column: 5, scope: !4407, inlinedAt: !4618)
!4624 = !DILocation(line: 0, scope: !4597, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 113, column: 10, scope: !4582, inlinedAt: !4616)
!4626 = !DILocation(line: 34, column: 10, scope: !4597, inlinedAt: !4625)
!4627 = !DILocation(line: 121, column: 3, scope: !4609)
!4628 = distinct !DISubprogram(name: "xalloc_die", scope: !498, file: !498, line: 32, type: !122, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !41)
!4629 = !DILocation(line: 34, column: 10, scope: !4628)
!4630 = !DILocation(line: 34, column: 33, scope: !4628)
!4631 = !DILocation(line: 34, column: 3, scope: !4628)
!4632 = !DILocation(line: 40, column: 3, scope: !4628)
!4633 = distinct !DISubprogram(name: "xvasprintf", scope: !501, file: !501, line: 76, type: !4634, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4643)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!36, !38, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !501, size: 192, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4637, file: !501, baseType: !7, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4637, file: !501, baseType: !7, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4637, file: !501, baseType: !93, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4637, file: !501, baseType: !93, size: 64, offset: 128)
!4643 = !{!4644, !4645, !4646, !4647, !4649}
!4644 = !DILocalVariable(name: "format", arg: 1, scope: !4633, file: !501, line: 76, type: !38)
!4645 = !DILocalVariable(name: "args", arg: 2, scope: !4633, file: !501, line: 76, type: !4636)
!4646 = !DILocalVariable(name: "result", scope: !4633, file: !501, line: 78, type: !36)
!4647 = !DILocalVariable(name: "argcount", scope: !4648, file: !501, line: 84, type: !95)
!4648 = distinct !DILexicalBlock(scope: !4633, file: !501, line: 83, column: 3)
!4649 = !DILocalVariable(name: "f", scope: !4648, file: !501, line: 85, type: !38)
!4650 = !DILocalVariable(name: "ap", scope: !4651, file: !501, line: 36, type: !4670)
!4651 = distinct !DISubprogram(name: "xstrcat", scope: !501, file: !501, line: 33, type: !4652, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!36, !95, !4636}
!4654 = !{!4655, !4656, !4657, !4650, !4658, !4659, !4660, !4661, !4665, !4669}
!4655 = !DILocalVariable(name: "argcount", arg: 1, scope: !4651, file: !501, line: 33, type: !95)
!4656 = !DILocalVariable(name: "args", arg: 2, scope: !4651, file: !501, line: 33, type: !4636)
!4657 = !DILocalVariable(name: "result", scope: !4651, file: !501, line: 35, type: !36)
!4658 = !DILocalVariable(name: "totalsize", scope: !4651, file: !501, line: 37, type: !95)
!4659 = !DILocalVariable(name: "i", scope: !4651, file: !501, line: 38, type: !95)
!4660 = !DILocalVariable(name: "p", scope: !4651, file: !501, line: 39, type: !36)
!4661 = !DILocalVariable(name: "next", scope: !4662, file: !501, line: 46, type: !38)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !501, line: 45, column: 5)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !501, line: 44, column: 3)
!4664 = distinct !DILexicalBlock(scope: !4651, file: !501, line: 44, column: 3)
!4665 = !DILocalVariable(name: "next", scope: !4666, file: !501, line: 65, type: !38)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !501, line: 64, column: 5)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !501, line: 63, column: 3)
!4668 = distinct !DILexicalBlock(scope: !4651, file: !501, line: 63, column: 3)
!4669 = !DILocalVariable(name: "len", scope: !4666, file: !501, line: 66, type: !95)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !43, line: 52, baseType: !4671)
!4671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1258, line: 32, baseType: !4672)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !501, line: 36, baseType: !4673)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4637, size: 192, elements: !78)
!4674 = !DILocation(line: 36, column: 11, scope: !4651, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 91, column: 18, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !501, line: 89, column: 13)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !501, line: 88, column: 7)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !501, line: 87, column: 5)
!4679 = distinct !DILexicalBlock(scope: !4648, file: !501, line: 87, column: 5)
!4680 = !DILocation(line: 0, scope: !4633)
!4681 = !DILocation(line: 78, column: 3, scope: !4633)
!4682 = !DILocation(line: 0, scope: !4648)
!4683 = !DILocation(line: 87, column: 10, scope: !4679)
!4684 = !DILocation(line: 0, scope: !4679)
!4685 = !DILocation(line: 89, column: 13, scope: !4676)
!4686 = !DILocation(line: 89, column: 13, scope: !4677)
!4687 = !DILocation(line: 0, scope: !4651, inlinedAt: !4675)
!4688 = !DILocation(line: 36, column: 3, scope: !4651, inlinedAt: !4675)
!4689 = !DILocation(line: 43, column: 3, scope: !4651, inlinedAt: !4675)
!4690 = !DILocation(line: 44, column: 24, scope: !4663, inlinedAt: !4675)
!4691 = !DILocation(line: 44, column: 3, scope: !4664, inlinedAt: !4675)
!4692 = !DILocation(line: 49, column: 3, scope: !4651, inlinedAt: !4675)
!4693 = !DILocation(line: 61, column: 12, scope: !4651, inlinedAt: !4675)
!4694 = !DILocation(line: 63, column: 3, scope: !4668, inlinedAt: !4675)
!4695 = !DILocation(line: 0, scope: !4662, inlinedAt: !4675)
!4696 = !DILocation(line: 46, column: 26, scope: !4662, inlinedAt: !4675)
!4697 = !DILocation(line: 47, column: 36, scope: !4662, inlinedAt: !4675)
!4698 = !DILocalVariable(name: "size1", arg: 1, scope: !4699, file: !4700, line: 63, type: !95)
!4699 = distinct !DISubprogram(name: "xsum", scope: !4700, file: !4700, line: 63, type: !4701, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4703)
!4700 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!95, !95, !95}
!4703 = !{!4698, !4704, !4705}
!4704 = !DILocalVariable(name: "size2", arg: 2, scope: !4699, file: !4700, line: 63, type: !95)
!4705 = !DILocalVariable(name: "sum", scope: !4699, file: !4700, line: 65, type: !95)
!4706 = !DILocation(line: 0, scope: !4699, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 47, column: 19, scope: !4662, inlinedAt: !4675)
!4708 = !DILocation(line: 66, column: 11, scope: !4699, inlinedAt: !4707)
!4709 = !DILocation(line: 44, column: 30, scope: !4663, inlinedAt: !4675)
!4710 = distinct !{!4710, !4691, !4711}
!4711 = !DILocation(line: 48, column: 5, scope: !4664, inlinedAt: !4675)
!4712 = !DILocation(line: 54, column: 42, scope: !4713, inlinedAt: !4675)
!4713 = distinct !DILexicalBlock(scope: !4651, file: !501, line: 54, column: 7)
!4714 = !DILocation(line: 54, column: 29, scope: !4713, inlinedAt: !4675)
!4715 = !DILocation(line: 56, column: 7, scope: !4716, inlinedAt: !4675)
!4716 = distinct !DILexicalBlock(scope: !4713, file: !501, line: 55, column: 5)
!4717 = !DILocation(line: 56, column: 13, scope: !4716, inlinedAt: !4675)
!4718 = !DILocation(line: 57, column: 7, scope: !4716, inlinedAt: !4675)
!4719 = !DILocation(line: 0, scope: !4666, inlinedAt: !4675)
!4720 = !DILocation(line: 65, column: 26, scope: !4666, inlinedAt: !4675)
!4721 = !DILocation(line: 66, column: 20, scope: !4666, inlinedAt: !4675)
!4722 = !DILocalVariable(name: "__dest", arg: 1, scope: !4723, file: !2995, line: 31, type: !4600)
!4723 = distinct !DISubprogram(name: "memcpy", scope: !2995, file: !2995, line: 31, type: !4598, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4724)
!4724 = !{!4722, !4725, !4726}
!4725 = !DILocalVariable(name: "__src", arg: 2, scope: !4723, file: !2995, line: 31, type: !4601)
!4726 = !DILocalVariable(name: "__len", arg: 3, scope: !4723, file: !2995, line: 31, type: !95)
!4727 = !DILocation(line: 0, scope: !4723, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 67, column: 7, scope: !4666, inlinedAt: !4675)
!4729 = !DILocation(line: 34, column: 10, scope: !4723, inlinedAt: !4728)
!4730 = !DILocation(line: 68, column: 9, scope: !4666, inlinedAt: !4675)
!4731 = !DILocation(line: 63, column: 30, scope: !4667, inlinedAt: !4675)
!4732 = !DILocation(line: 63, column: 24, scope: !4667, inlinedAt: !4675)
!4733 = distinct !{!4733, !4694, !4734}
!4734 = !DILocation(line: 69, column: 5, scope: !4668, inlinedAt: !4675)
!4735 = !DILocation(line: 70, column: 6, scope: !4651, inlinedAt: !4675)
!4736 = !DILocation(line: 72, column: 3, scope: !4651, inlinedAt: !4675)
!4737 = !DILocation(line: 94, column: 10, scope: !4677)
!4738 = !DILocation(line: 95, column: 13, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4677, file: !501, line: 95, column: 13)
!4740 = !DILocation(line: 95, column: 16, scope: !4739)
!4741 = !DILocation(line: 95, column: 13, scope: !4677)
!4742 = !DILocation(line: 97, column: 10, scope: !4677)
!4743 = !DILocation(line: 98, column: 17, scope: !4677)
!4744 = !DILocation(line: 87, column: 5, scope: !4678)
!4745 = distinct !{!4745, !4746, !4747}
!4746 = !DILocation(line: 87, column: 5, scope: !4679)
!4747 = !DILocation(line: 99, column: 7, scope: !4679)
!4748 = !DILocation(line: 73, column: 1, scope: !4651, inlinedAt: !4675)
!4749 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4750, file: !4751, line: 210, type: !4754)
!4750 = distinct !DISubprogram(name: "vasprintf", scope: !4751, file: !4751, line: 210, type: !4752, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4756)
!4751 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!40, !4754, !4755, !4636}
!4754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !170)
!4755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!4756 = !{!4749, !4757, !4758}
!4757 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4750, file: !4751, line: 210, type: !4755)
!4758 = !DILocalVariable(name: "__ap", arg: 3, scope: !4750, file: !4751, line: 210, type: !4636)
!4759 = !DILocation(line: 0, scope: !4750, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 102, column: 7, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4633, file: !501, line: 102, column: 7)
!4762 = !DILocation(line: 213, column: 10, scope: !4750, inlinedAt: !4760)
!4763 = !DILocation(line: 102, column: 41, scope: !4761)
!4764 = !DILocation(line: 102, column: 7, scope: !4633)
!4765 = !DILocation(line: 104, column: 11, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !501, line: 104, column: 11)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !501, line: 103, column: 5)
!4768 = !DILocation(line: 104, column: 17, scope: !4766)
!4769 = !DILocation(line: 104, column: 11, scope: !4767)
!4770 = !DILocation(line: 105, column: 9, scope: !4766)
!4771 = !DILocation(line: 109, column: 10, scope: !4633)
!4772 = !DILocation(line: 109, column: 3, scope: !4633)
!4773 = !DILocation(line: 110, column: 1, scope: !4633)
!4774 = distinct !DISubprogram(name: "rpl_calloc", scope: !504, file: !504, line: 42, type: !4386, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4775)
!4775 = !{!4776, !4777, !4778, !4779}
!4776 = !DILocalVariable(name: "n", arg: 1, scope: !4774, file: !504, line: 42, type: !95)
!4777 = !DILocalVariable(name: "s", arg: 2, scope: !4774, file: !504, line: 42, type: !95)
!4778 = !DILocalVariable(name: "result", scope: !4774, file: !504, line: 44, type: !93)
!4779 = !DILocalVariable(name: "bytes", scope: !4780, file: !504, line: 56, type: !95)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !504, line: 53, column: 5)
!4781 = distinct !DILexicalBlock(scope: !4774, file: !504, line: 47, column: 7)
!4782 = !DILocation(line: 0, scope: !4774)
!4783 = !DILocation(line: 47, column: 9, scope: !4781)
!4784 = !DILocation(line: 47, column: 19, scope: !4781)
!4785 = !DILocation(line: 47, column: 14, scope: !4781)
!4786 = !DILocation(line: 0, scope: !4780)
!4787 = !DILocation(line: 57, column: 21, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4780, file: !504, line: 57, column: 11)
!4789 = !DILocation(line: 57, column: 11, scope: !4780)
!4790 = !DILocation(line: 59, column: 11, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4788, file: !504, line: 58, column: 9)
!4792 = !DILocation(line: 59, column: 17, scope: !4791)
!4793 = !DILocation(line: 65, column: 12, scope: !4774)
!4794 = !DILocation(line: 72, column: 3, scope: !4774)
!4795 = !DILocation(line: 73, column: 1, scope: !4774)
!4796 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !507, file: !507, line: 86, type: !4797, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4803)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!95, !4799, !38, !95, !4800}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2739, line: 6, baseType: !4802)
!4802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !333, line: 21, baseType: !513)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810}
!4804 = !DILocalVariable(name: "pwc", arg: 1, scope: !4796, file: !507, line: 86, type: !4799)
!4805 = !DILocalVariable(name: "s", arg: 2, scope: !4796, file: !507, line: 86, type: !38)
!4806 = !DILocalVariable(name: "n", arg: 3, scope: !4796, file: !507, line: 86, type: !95)
!4807 = !DILocalVariable(name: "ps", arg: 4, scope: !4796, file: !507, line: 86, type: !4800)
!4808 = !DILocalVariable(name: "ret", scope: !4796, file: !507, line: 88, type: !95)
!4809 = !DILocalVariable(name: "wc", scope: !4796, file: !507, line: 89, type: !2743)
!4810 = !DILocalVariable(name: "uc", scope: !4811, file: !507, line: 156, type: !2616)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !507, line: 155, column: 5)
!4812 = distinct !DILexicalBlock(scope: !4796, file: !507, line: 154, column: 7)
!4813 = !DILocation(line: 0, scope: !4796)
!4814 = !DILocation(line: 89, column: 3, scope: !4796)
!4815 = !DILocation(line: 105, column: 9, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4796, file: !507, line: 105, column: 7)
!4817 = !DILocation(line: 105, column: 7, scope: !4796)
!4818 = !DILocation(line: 145, column: 9, scope: !4796)
!4819 = !DILocation(line: 154, column: 19, scope: !4812)
!4820 = !DILocation(line: 154, column: 31, scope: !4812)
!4821 = !DILocation(line: 154, column: 26, scope: !4812)
!4822 = !DILocation(line: 154, column: 41, scope: !4812)
!4823 = !DILocation(line: 154, column: 7, scope: !4796)
!4824 = !DILocation(line: 156, column: 26, scope: !4811)
!4825 = !DILocation(line: 0, scope: !4811)
!4826 = !DILocation(line: 157, column: 14, scope: !4811)
!4827 = !DILocation(line: 157, column: 12, scope: !4811)
!4828 = !DILocation(line: 163, column: 1, scope: !4796)
!4829 = distinct !DISubprogram(name: "close_stream", scope: !526, file: !526, line: 56, type: !4830, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4834)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!40, !4832}
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4262, line: 7, baseType: !533)
!4834 = !{!4835, !4836, !4838, !4839}
!4835 = !DILocalVariable(name: "stream", arg: 1, scope: !4829, file: !526, line: 56, type: !4832)
!4836 = !DILocalVariable(name: "some_pending", scope: !4829, file: !526, line: 58, type: !4837)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!4838 = !DILocalVariable(name: "prev_fail", scope: !4829, file: !526, line: 59, type: !4837)
!4839 = !DILocalVariable(name: "fclose_fail", scope: !4829, file: !526, line: 60, type: !4837)
!4840 = !DILocation(line: 0, scope: !4829)
!4841 = !DILocation(line: 58, column: 30, scope: !4829)
!4842 = !DILocalVariable(name: "__stream", arg: 1, scope: !4843, file: !4844, line: 135, type: !4832)
!4843 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4844, file: !4844, line: 135, type: !4830, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4845)
!4844 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4845 = !{!4842}
!4846 = !DILocation(line: 0, scope: !4843, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 59, column: 27, scope: !4829)
!4848 = !DILocation(line: 137, column: 10, scope: !4843, inlinedAt: !4847)
!4849 = !{!4850, !1202, i64 0}
!4850 = !{!"_IO_FILE", !1202, i64 0, !1130, i64 8, !1130, i64 16, !1130, i64 24, !1130, i64 32, !1130, i64 40, !1130, i64 48, !1130, i64 56, !1130, i64 64, !1130, i64 72, !1130, i64 80, !1130, i64 88, !1130, i64 96, !1130, i64 104, !1202, i64 112, !1202, i64 116, !1578, i64 120, !2435, i64 128, !1131, i64 130, !1131, i64 131, !1130, i64 136, !1578, i64 144, !1130, i64 152, !1130, i64 160, !1130, i64 168, !1130, i64 176, !1578, i64 184, !1202, i64 192, !1131, i64 196}
!4851 = !DILocation(line: 59, column: 43, scope: !4829)
!4852 = !DILocation(line: 60, column: 29, scope: !4829)
!4853 = !DILocation(line: 60, column: 45, scope: !4829)
!4854 = !DILocation(line: 70, column: 17, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4829, file: !526, line: 70, column: 7)
!4856 = !DILocation(line: 58, column: 50, scope: !4829)
!4857 = !DILocation(line: 70, column: 33, scope: !4855)
!4858 = !DILocation(line: 70, column: 53, scope: !4855)
!4859 = !DILocation(line: 70, column: 59, scope: !4855)
!4860 = !DILocation(line: 70, column: 7, scope: !4829)
!4861 = !DILocation(line: 72, column: 11, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4855, file: !526, line: 71, column: 5)
!4863 = !DILocation(line: 73, column: 9, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4862, file: !526, line: 72, column: 11)
!4865 = !DILocation(line: 73, column: 15, scope: !4864)
!4866 = !DILocation(line: 78, column: 1, scope: !4829)
!4867 = distinct !DISubprogram(name: "hard_locale", scope: !565, file: !565, line: 27, type: !523, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !4868)
!4868 = !{!4869, !4870}
!4869 = !DILocalVariable(name: "category", arg: 1, scope: !4867, file: !565, line: 27, type: !40)
!4870 = !DILocalVariable(name: "locale", scope: !4867, file: !565, line: 29, type: !4871)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2056, elements: !4872)
!4872 = !{!4873}
!4873 = !DISubrange(count: 257)
!4874 = !DILocation(line: 0, scope: !4867)
!4875 = !DILocation(line: 29, column: 3, scope: !4867)
!4876 = !DILocation(line: 29, column: 8, scope: !4867)
!4877 = !DILocation(line: 31, column: 7, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4867, file: !565, line: 31, column: 7)
!4879 = !DILocation(line: 31, column: 7, scope: !4867)
!4880 = !DILocation(line: 34, column: 12, scope: !4867)
!4881 = !DILocation(line: 34, column: 38, scope: !4867)
!4882 = !DILocation(line: 34, column: 41, scope: !4867)
!4883 = !DILocation(line: 34, column: 66, scope: !4867)
!4884 = !DILocation(line: 35, column: 1, scope: !4867)
!4885 = distinct !DISubprogram(name: "locale_charset", scope: !572, file: !572, line: 831, type: !356, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4886)
!4886 = !{!4887}
!4887 = !DILocalVariable(name: "codeset", scope: !4885, file: !572, line: 833, type: !38)
!4888 = !DILocation(line: 847, column: 13, scope: !4885)
!4889 = !DILocation(line: 0, scope: !4885)
!4890 = !DILocation(line: 911, column: 15, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4885, file: !572, line: 911, column: 7)
!4892 = !DILocation(line: 911, column: 7, scope: !4885)
!4893 = !DILocation(line: 1070, column: 13, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !572, line: 1070, column: 13)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !572, line: 1060, column: 7)
!4896 = distinct !DILexicalBlock(scope: !4885, file: !572, line: 1019, column: 3)
!4897 = !DILocation(line: 1070, column: 24, scope: !4894)
!4898 = !DILocation(line: 1070, column: 13, scope: !4895)
!4899 = !DILocation(line: 1158, column: 3, scope: !4885)
!4900 = distinct !DISubprogram(name: "setlocale_null_r", scope: !965, file: !965, line: 269, type: !4901, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4903)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!40, !40, !36, !95}
!4903 = !{!4904, !4905, !4906}
!4904 = !DILocalVariable(name: "category", arg: 1, scope: !4900, file: !965, line: 269, type: !40)
!4905 = !DILocalVariable(name: "buf", arg: 2, scope: !4900, file: !965, line: 269, type: !36)
!4906 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4900, file: !965, line: 269, type: !95)
!4907 = !DILocation(line: 0, scope: !4900)
!4908 = !DILocalVariable(name: "category", arg: 1, scope: !4909, file: !965, line: 91, type: !40)
!4909 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !965, file: !965, line: 91, type: !4901, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4910)
!4910 = !{!4908, !4911, !4912, !4913, !4914}
!4911 = !DILocalVariable(name: "buf", arg: 2, scope: !4909, file: !965, line: 91, type: !36)
!4912 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4909, file: !965, line: 91, type: !95)
!4913 = !DILocalVariable(name: "result", scope: !4909, file: !965, line: 140, type: !38)
!4914 = !DILocalVariable(name: "length", scope: !4915, file: !965, line: 154, type: !95)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !965, line: 153, column: 5)
!4916 = distinct !DILexicalBlock(scope: !4909, file: !965, line: 142, column: 7)
!4917 = !DILocation(line: 0, scope: !4909, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 274, column: 10, scope: !4900)
!4919 = !DILocalVariable(name: "category", arg: 1, scope: !4920, file: !965, line: 60, type: !40)
!4920 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !965, file: !965, line: 60, type: !4921, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!38, !40}
!4923 = !{!4919, !4924}
!4924 = !DILocalVariable(name: "result", scope: !4920, file: !965, line: 62, type: !38)
!4925 = !DILocation(line: 0, scope: !4920, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 140, column: 24, scope: !4909, inlinedAt: !4918)
!4927 = !DILocation(line: 62, column: 24, scope: !4920, inlinedAt: !4926)
!4928 = !DILocation(line: 142, column: 14, scope: !4916, inlinedAt: !4918)
!4929 = !DILocation(line: 142, column: 7, scope: !4909, inlinedAt: !4918)
!4930 = !DILocation(line: 145, column: 19, scope: !4931, inlinedAt: !4918)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !965, line: 145, column: 11)
!4932 = distinct !DILexicalBlock(scope: !4916, file: !965, line: 143, column: 5)
!4933 = !DILocation(line: 145, column: 11, scope: !4932, inlinedAt: !4918)
!4934 = !DILocation(line: 149, column: 16, scope: !4931, inlinedAt: !4918)
!4935 = !DILocation(line: 149, column: 9, scope: !4931, inlinedAt: !4918)
!4936 = !DILocation(line: 154, column: 23, scope: !4915, inlinedAt: !4918)
!4937 = !DILocation(line: 0, scope: !4915, inlinedAt: !4918)
!4938 = !DILocation(line: 155, column: 18, scope: !4939, inlinedAt: !4918)
!4939 = distinct !DILexicalBlock(scope: !4915, file: !965, line: 155, column: 11)
!4940 = !DILocation(line: 155, column: 11, scope: !4915, inlinedAt: !4918)
!4941 = !DILocation(line: 157, column: 39, scope: !4942, inlinedAt: !4918)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !965, line: 156, column: 9)
!4943 = !DILocalVariable(name: "__dest", arg: 1, scope: !4944, file: !2995, line: 31, type: !4600)
!4944 = distinct !DISubprogram(name: "memcpy", scope: !2995, file: !2995, line: 31, type: !4598, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4945)
!4945 = !{!4943, !4946, !4947}
!4946 = !DILocalVariable(name: "__src", arg: 2, scope: !4944, file: !2995, line: 31, type: !4601)
!4947 = !DILocalVariable(name: "__len", arg: 3, scope: !4944, file: !2995, line: 31, type: !95)
!4948 = !DILocation(line: 0, scope: !4944, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 157, column: 11, scope: !4942, inlinedAt: !4918)
!4950 = !DILocation(line: 34, column: 10, scope: !4944, inlinedAt: !4949)
!4951 = !DILocation(line: 158, column: 11, scope: !4942, inlinedAt: !4918)
!4952 = !DILocation(line: 162, column: 23, scope: !4953, inlinedAt: !4918)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !965, line: 162, column: 15)
!4954 = distinct !DILexicalBlock(scope: !4939, file: !965, line: 161, column: 9)
!4955 = !DILocation(line: 162, column: 15, scope: !4954, inlinedAt: !4918)
!4956 = !DILocation(line: 167, column: 44, scope: !4957, inlinedAt: !4918)
!4957 = distinct !DILexicalBlock(scope: !4953, file: !965, line: 163, column: 13)
!4958 = !DILocation(line: 0, scope: !4944, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 167, column: 15, scope: !4957, inlinedAt: !4918)
!4960 = !DILocation(line: 34, column: 10, scope: !4944, inlinedAt: !4959)
!4961 = !DILocation(line: 168, column: 15, scope: !4957, inlinedAt: !4918)
!4962 = !DILocation(line: 168, column: 32, scope: !4957, inlinedAt: !4918)
!4963 = !DILocation(line: 169, column: 13, scope: !4957, inlinedAt: !4918)
!4964 = !DILocation(line: 0, scope: !4916, inlinedAt: !4918)
!4965 = !DILocation(line: 274, column: 3, scope: !4900)
!4966 = distinct !DISubprogram(name: "setlocale_null", scope: !965, file: !965, line: 301, type: !4921, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4967)
!4967 = !{!4968}
!4968 = !DILocalVariable(name: "category", arg: 1, scope: !4966, file: !965, line: 301, type: !40)
!4969 = !DILocation(line: 0, scope: !4966)
!4970 = !DILocation(line: 0, scope: !4920, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 304, column: 10, scope: !4966)
!4972 = !DILocation(line: 62, column: 24, scope: !4920, inlinedAt: !4971)
!4973 = !DILocation(line: 304, column: 3, scope: !4966)
!4974 = distinct !DISubprogram(name: "rpl_fclose", scope: !968, file: !968, line: 58, type: !4975, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4979)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!40, !4977}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4262, line: 7, baseType: !974)
!4979 = !{!4980, !4981, !4982, !4983}
!4980 = !DILocalVariable(name: "fp", arg: 1, scope: !4974, file: !968, line: 58, type: !4977)
!4981 = !DILocalVariable(name: "saved_errno", scope: !4974, file: !968, line: 60, type: !40)
!4982 = !DILocalVariable(name: "fd", scope: !4974, file: !968, line: 61, type: !40)
!4983 = !DILocalVariable(name: "result", scope: !4974, file: !968, line: 62, type: !40)
!4984 = !DILocation(line: 0, scope: !4974)
!4985 = !DILocation(line: 65, column: 8, scope: !4974)
!4986 = !DILocation(line: 66, column: 10, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4974, file: !968, line: 66, column: 7)
!4988 = !DILocation(line: 66, column: 7, scope: !4974)
!4989 = !DILocation(line: 67, column: 12, scope: !4987)
!4990 = !DILocation(line: 67, column: 5, scope: !4987)
!4991 = !DILocation(line: 72, column: 9, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4974, file: !968, line: 72, column: 7)
!4993 = !DILocation(line: 72, column: 23, scope: !4992)
!4994 = !DILocation(line: 72, column: 33, scope: !4992)
!4995 = !DILocation(line: 72, column: 26, scope: !4992)
!4996 = !DILocation(line: 72, column: 59, scope: !4992)
!4997 = !DILocation(line: 73, column: 7, scope: !4992)
!4998 = !DILocation(line: 73, column: 10, scope: !4992)
!4999 = !DILocation(line: 72, column: 7, scope: !4974)
!5000 = !DILocation(line: 100, column: 12, scope: !4974)
!5001 = !DILocation(line: 105, column: 7, scope: !4974)
!5002 = !DILocation(line: 74, column: 19, scope: !4992)
!5003 = !DILocation(line: 105, column: 19, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4974, file: !968, line: 105, column: 7)
!5005 = !DILocation(line: 107, column: 13, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5004, file: !968, line: 106, column: 5)
!5007 = !DILocation(line: 109, column: 5, scope: !5006)
!5008 = !DILocation(line: 112, column: 1, scope: !4974)
!5009 = distinct !DISubprogram(name: "rpl_fflush", scope: !1011, file: !1011, line: 129, type: !5010, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !5014)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!40, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4262, line: 7, baseType: !1017)
!5014 = !{!5015}
!5015 = !DILocalVariable(name: "stream", arg: 1, scope: !5009, file: !1011, line: 129, type: !5012)
!5016 = !DILocation(line: 0, scope: !5009)
!5017 = !DILocation(line: 150, column: 14, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5009, file: !1011, line: 150, column: 7)
!5019 = !DILocation(line: 150, column: 22, scope: !5018)
!5020 = !DILocation(line: 150, column: 27, scope: !5018)
!5021 = !DILocation(line: 150, column: 7, scope: !5009)
!5022 = !DILocation(line: 151, column: 12, scope: !5018)
!5023 = !DILocation(line: 151, column: 5, scope: !5018)
!5024 = !DILocalVariable(name: "fp", arg: 1, scope: !5025, file: !1011, line: 41, type: !5012)
!5025 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1011, file: !1011, line: 41, type: !5026, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !5028)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !5012}
!5028 = !{!5024}
!5029 = !DILocation(line: 0, scope: !5025, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 156, column: 3, scope: !5009)
!5031 = !DILocation(line: 43, column: 11, scope: !5032, inlinedAt: !5030)
!5032 = distinct !DILexicalBlock(scope: !5025, file: !1011, line: 43, column: 7)
!5033 = !DILocation(line: 43, column: 18, scope: !5032, inlinedAt: !5030)
!5034 = !DILocation(line: 43, column: 7, scope: !5025, inlinedAt: !5030)
!5035 = !DILocation(line: 45, column: 5, scope: !5032, inlinedAt: !5030)
!5036 = !DILocation(line: 158, column: 10, scope: !5009)
!5037 = !DILocation(line: 158, column: 3, scope: !5009)
!5038 = !DILocation(line: 235, column: 1, scope: !5009)
!5039 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1052, file: !1052, line: 28, type: !5040, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !5045)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!40, !5042, !5044, !40}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4262, line: 7, baseType: !1058)
!5044 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !43, line: 63, baseType: !69)
!5045 = !{!5046, !5047, !5048, !5049}
!5046 = !DILocalVariable(name: "fp", arg: 1, scope: !5039, file: !1052, line: 28, type: !5042)
!5047 = !DILocalVariable(name: "offset", arg: 2, scope: !5039, file: !1052, line: 28, type: !5044)
!5048 = !DILocalVariable(name: "whence", arg: 3, scope: !5039, file: !1052, line: 28, type: !40)
!5049 = !DILocalVariable(name: "pos", scope: !5050, file: !1052, line: 117, type: !5044)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !1052, line: 113, column: 5)
!5051 = distinct !DILexicalBlock(scope: !5039, file: !1052, line: 52, column: 7)
!5052 = !DILocation(line: 0, scope: !5039)
!5053 = !DILocation(line: 52, column: 11, scope: !5051)
!5054 = !{!4850, !1130, i64 16}
!5055 = !DILocation(line: 52, column: 31, scope: !5051)
!5056 = !{!4850, !1130, i64 8}
!5057 = !DILocation(line: 52, column: 24, scope: !5051)
!5058 = !DILocation(line: 53, column: 7, scope: !5051)
!5059 = !DILocation(line: 53, column: 14, scope: !5051)
!5060 = !{!4850, !1130, i64 40}
!5061 = !DILocation(line: 53, column: 35, scope: !5051)
!5062 = !{!4850, !1130, i64 32}
!5063 = !DILocation(line: 53, column: 28, scope: !5051)
!5064 = !DILocation(line: 54, column: 7, scope: !5051)
!5065 = !DILocation(line: 54, column: 14, scope: !5051)
!5066 = !{!4850, !1130, i64 72}
!5067 = !DILocation(line: 54, column: 28, scope: !5051)
!5068 = !DILocation(line: 52, column: 7, scope: !5039)
!5069 = !DILocation(line: 117, column: 26, scope: !5050)
!5070 = !DILocation(line: 117, column: 19, scope: !5050)
!5071 = !DILocation(line: 0, scope: !5050)
!5072 = !DILocation(line: 118, column: 15, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5050, file: !1052, line: 118, column: 11)
!5074 = !DILocation(line: 118, column: 11, scope: !5050)
!5075 = !DILocation(line: 129, column: 11, scope: !5050)
!5076 = !DILocation(line: 129, column: 18, scope: !5050)
!5077 = !DILocation(line: 130, column: 11, scope: !5050)
!5078 = !DILocation(line: 130, column: 19, scope: !5050)
!5079 = !{!4850, !1578, i64 144}
!5080 = !DILocation(line: 161, column: 7, scope: !5050)
!5081 = !DILocation(line: 163, column: 10, scope: !5039)
!5082 = !DILocation(line: 163, column: 3, scope: !5039)
!5083 = !DILocation(line: 164, column: 1, scope: !5039)
