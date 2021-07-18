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
@argc = internal unnamed_addr global i32 0, align 4, !dbg !40
@pos = internal unnamed_addr global i32 0, align 4, !dbg !38
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), align 8, !dbg !43
@.str.73 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !51
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !56
@.str.76 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !59
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !65
@.str.87 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.99, i32 0, i32 0), i8* null], align 16, !dbg !71
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !100
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !106
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.100 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.103 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.104 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.105 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.106 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.154 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.166 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.170 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !601 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = icmp eq i32 %0, 0, !dbg !607
  br i1 %3, label %9, label %4, !dbg !609

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !610, !tbaa !612
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !610
  %7 = load i8*, i8** @program_name, align 8, !dbg !610, !tbaa !612
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !610
  br label %97, !dbg !610

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !616
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !612
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !616
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !618
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !612
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !618
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !619
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !612
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !619
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !620
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !612
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !620
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !621
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !612
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !621
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !622
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !612
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !622
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !623
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !612
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !623
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #27, !dbg !624
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !612
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !624
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #27, !dbg !625
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !612
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !625
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #27, !dbg !626
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !612
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !626
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #27, !dbg !627
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !612
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !627
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.12, i64 0, i64 0), i32 5) #27, !dbg !628
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !612
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !628
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #27, !dbg !629
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !612
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !629
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !630
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !612
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !630
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #27, !dbg !631
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !612
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !631
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #27, !dbg !632
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !612
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !632
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !633
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !633
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #27, !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !634, metadata !DIExpression()) #27, !dbg !653
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !655
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #27, !dbg !655
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !640, metadata !DIExpression()) #27, !dbg !656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %61, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !649, metadata !DIExpression()) #27, !dbg !653
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !650, metadata !DIExpression()) #27, !dbg !653
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !657
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !650, metadata !DIExpression()) #27, !dbg !653
  br label %63, !dbg !658

63:                                               ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !650, metadata !DIExpression()) #27, !dbg !653
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #28, !dbg !659
  %67 = icmp eq i32 %66, 0, !dbg !659
  br i1 %67, label %73, label %68, !dbg !658

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !660
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !650, metadata !DIExpression()) #27, !dbg !653
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !661
  %71 = load i8*, i8** %70, align 8, !dbg !661, !tbaa !662
  %72 = icmp eq i8* %71, null, !dbg !664
  br i1 %72, label %73, label %63, !dbg !665, !llvm.loop !666

73:                                               ; preds = %68, %63
  %74 = phi %struct.infomap* [ %65, %63 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !668
  %76 = load i8*, i8** %75, align 8, !dbg !668, !tbaa !670
  %77 = icmp eq i8* %76, null, !dbg !671
  %78 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !672
  call void @llvm.dbg.value(metadata i8* %78, metadata !649, metadata !DIExpression()) #27, !dbg !653
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #27, !dbg !673
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #27, !dbg !673
  %81 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !674
  call void @llvm.dbg.value(metadata i8* %81, metadata !652, metadata !DIExpression()) #27, !dbg !653
  %82 = icmp eq i8* %81, null, !dbg !675
  br i1 %82, label %90, label %83, !dbg !677

83:                                               ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #28, !dbg !678
  %85 = icmp eq i32 %84, 0, !dbg !678
  br i1 %85, label %90, label %86, !dbg !679

86:                                               ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 5) #27, !dbg !680
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !612
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #27, !dbg !680
  br label %90, !dbg !682

90:                                               ; preds = %73, %83, %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 5) #27, !dbg !683
  %92 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #27, !dbg !683
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !684
  %94 = icmp eq i8* %78, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), !dbg !684
  %95 = select i1 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !684
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %93, i8* %78, i8* %95) #27, !dbg !684
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #27, !dbg !685
  br label %97

97:                                               ; preds = %90, %4
  tail call void @exit(i32 %0) #29, !dbg !686
  unreachable, !dbg !686
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !687 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !691 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !746 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !750 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !754, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i8** %1, metadata !755, metadata !DIExpression()), !dbg !757
  %3 = load i8*, i8** %1, align 8, !dbg !758, !tbaa !612
  tail call void @set_program_name(i8* %3) #27, !dbg !759
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #27, !dbg !760
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #27, !dbg !761
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #27, !dbg !762
  call void @llvm.dbg.value(metadata i32 2, metadata !763, metadata !DIExpression()), !dbg !766
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !768, !tbaa !770
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !772
  store i8** %1, i8*** @argv, align 8, !dbg !773, !tbaa !612
  %8 = icmp eq i32 %0, 2, !dbg !774
  br i1 %8, label %9, label %21, !dbg !778

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !779
  %11 = load i8*, i8** %10, align 8, !dbg !779, !tbaa !612
  %12 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #28, !dbg !779
  %13 = icmp eq i32 %12, 0, !dbg !779
  br i1 %13, label %14, label %15, !dbg !782

14:                                               ; preds = %9
  tail call void @usage(i32 0) #30, !dbg !783
  unreachable, !dbg !783

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %11, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #28, !dbg !784
  %17 = icmp eq i32 %16, 0, !dbg !784
  br i1 %17, label %18, label %23, !dbg !786

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !612
  %20 = load i8*, i8** @Version, align 8, !dbg !789, !tbaa !612
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* null) #27, !dbg !790
  br label %52, !dbg !791

21:                                               ; preds = %2
  %22 = icmp slt i32 %0, 2, !dbg !792
  br i1 %22, label %30, label %23, !dbg !794

23:                                               ; preds = %15, %21
  %24 = add nsw i32 %0, -1, !dbg !795
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !795
  %27 = load i8*, i8** %26, align 8, !dbg !795, !tbaa !612
  %28 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %27, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #28, !dbg !795
  %29 = icmp eq i32 %28, 0, !dbg !795
  br i1 %29, label %33, label %30, !dbg !796

30:                                               ; preds = %23, %21
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 5) #27, !dbg !797
  %32 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #27, !dbg !798
  tail call void (i8*, ...) @test_syntax_error(i8* %31, i8* %32) #30, !dbg !799
  unreachable, !dbg !799

33:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !754, metadata !DIExpression()), !dbg !757
  store i32 %24, i32* @argc, align 4, !dbg !800, !tbaa !770
  store i32 1, i32* @pos, align 4, !dbg !801, !tbaa !770
  %34 = icmp slt i32 %0, 3, !dbg !802
  br i1 %34, label %52, label %35, !dbg !804

35:                                               ; preds = %33
  %36 = add nsw i32 %0, -2, !dbg !805
  %37 = tail call fastcc zeroext i1 @posixtest(i32 %36), !dbg !806
  call void @llvm.dbg.value(metadata i1 %37, metadata !756, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !757
  %38 = load i32, i32* @pos, align 4, !dbg !807, !tbaa !770
  %39 = load i32, i32* @argc, align 4, !dbg !809, !tbaa !770
  %40 = icmp eq i32 %38, %39, !dbg !810
  br i1 %40, label %49, label %41, !dbg !811

41:                                               ; preds = %35
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5) #27, !dbg !812
  %43 = load i8**, i8*** @argv, align 8, !dbg !813, !tbaa !612
  %44 = load i32, i32* @pos, align 4, !dbg !814, !tbaa !770
  %45 = sext i32 %44 to i64, !dbg !813
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !813
  %47 = load i8*, i8** %46, align 8, !dbg !813, !tbaa !612
  %48 = tail call i8* @quote(i8* %47) #27, !dbg !815
  tail call void (i8*, ...) @test_syntax_error(i8* %42, i8* %48) #30, !dbg !816
  unreachable, !dbg !816

49:                                               ; preds = %35
  %50 = xor i1 %37, true, !dbg !817
  %51 = zext i1 %50 to i32, !dbg !817
  br label %52, !dbg !817

52:                                               ; preds = %33, %49, %18
  %53 = phi i32 [ 0, %18 ], [ %51, %49 ], [ 1, %33 ], !dbg !757
  ret i32 %53, !dbg !818
}

; Function Attrs: nounwind
declare !dbg !819 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !822 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !825 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8* %0, ...) unnamed_addr #0 !dbg !832 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !836, metadata !DIExpression()), !dbg !849
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #27, !dbg !850
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !837, metadata !DIExpression()), !dbg !851
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !852
  call void @llvm.va_start(i8* nonnull %3), !dbg !852
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #27, !dbg !853
  call void @exit(i32 2) #29, !dbg !854
  unreachable, !dbg !854
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32 %0) unnamed_addr #8 !dbg !855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !859, metadata !DIExpression()), !dbg !861
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !862

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !863, !tbaa !612
  %4 = load i32, i32* @pos, align 4, !dbg !869, !tbaa !770
  %5 = add nsw i32 %4, 1, !dbg !869
  store i32 %5, i32* @pos, align 4, !dbg !869, !tbaa !770
  %6 = sext i32 %4 to i64, !dbg !863
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !863
  %8 = load i8*, i8** %7, align 8, !dbg !863, !tbaa !612
  %9 = load i8, i8* %8, align 1, !dbg !863, !tbaa !870
  %10 = icmp ne i8 %9, 0, !dbg !871
  call void @llvm.dbg.value(metadata i1 %10, metadata !860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !861
  br label %151, !dbg !872

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !873, !tbaa !612
  %13 = load i32, i32* @pos, align 4, !dbg !873, !tbaa !770
  %14 = sext i32 %13 to i64, !dbg !873
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !873
  %16 = load i8*, i8** %15, align 8, !dbg !873, !tbaa !612
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %16, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !873
  %18 = icmp eq i32 %17, 0, !dbg !873
  br i1 %18, label %19, label %27, !dbg !879

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !885
  %20 = add nsw i32 %13, 1, !dbg !888
  %21 = add nsw i32 %13, 2, !dbg !889
  store i32 %21, i32* @pos, align 4, !dbg !889, !tbaa !770
  %22 = sext i32 %20 to i64, !dbg !891
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !891
  %24 = load i8*, i8** %23, align 8, !dbg !891, !tbaa !612
  %25 = load i8, i8* %24, align 1, !dbg !891, !tbaa !870
  %26 = icmp eq i8 %25, 0, !dbg !892
  call void @llvm.dbg.value(metadata i1 %26, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !893
  br label %151, !dbg !894

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !895, !tbaa !870
  %29 = icmp eq i8 %28, 45, !dbg !897
  br i1 %29, label %30, label %40, !dbg !898

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !899
  %32 = load i8, i8* %31, align 1, !dbg !899, !tbaa !870
  %33 = icmp eq i8 %32, 0, !dbg !900
  br i1 %33, label %40, label %34, !dbg !901

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !902
  %36 = load i8, i8* %35, align 1, !dbg !902, !tbaa !870
  %37 = icmp eq i8 %36, 0, !dbg !903
  br i1 %37, label %38, label %40, !dbg !904

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !905
  call void @llvm.dbg.value(metadata i1 %39, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !893
  br label %151

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #29, !dbg !907
  unreachable, !dbg !907

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !908
  call void @llvm.dbg.value(metadata i1 %42, metadata !860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !861
  br label %151, !dbg !909

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !910, !tbaa !612
  %45 = load i32, i32* @pos, align 4, !dbg !910, !tbaa !770
  %46 = sext i32 %45 to i64, !dbg !910
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !910
  %48 = load i8*, i8** %47, align 8, !dbg !910, !tbaa !612
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !910
  %50 = icmp eq i32 %49, 0, !dbg !910
  br i1 %50, label %51, label %59, !dbg !912

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !913
  %52 = add nsw i32 %45, 1, !dbg !916
  store i32 %52, i32* @pos, align 4, !dbg !916, !tbaa !770
  %53 = load i32, i32* @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !917

55:                                               ; preds = %51
  tail call fastcc void @beyond() #29, !dbg !919
  unreachable, !dbg !919

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !920
  %58 = xor i1 %57, true, !dbg !921
  call void @llvm.dbg.value(metadata i1 %58, metadata !860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !861
  br label %151, !dbg !922

59:                                               ; preds = %43
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !923
  %61 = icmp eq i32 %60, 0, !dbg !923
  br i1 %61, label %62, label %107, !dbg !925

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !926
  %64 = sext i32 %63 to i64, !dbg !926
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !926
  %66 = load i8*, i8** %65, align 8, !dbg !926, !tbaa !612
  %67 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !926
  %68 = icmp eq i32 %67, 0, !dbg !926
  br i1 %68, label %69, label %107, !dbg !927

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !928
  %70 = add nsw i32 %45, 1, !dbg !931
  store i32 %70, i32* @pos, align 4, !dbg !931, !tbaa !770
  %71 = sext i32 %70 to i64, !dbg !932
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !932
  %73 = load i8*, i8** %72, align 8, !dbg !932, !tbaa !612
  %74 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %73, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !932
  %75 = icmp eq i32 %74, 0, !dbg !932
  br i1 %75, label %76, label %83, !dbg !934

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !935
  %77 = add nsw i32 %45, 2, !dbg !937
  %78 = sext i32 %77 to i64, !dbg !938
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !938
  %80 = load i8*, i8** %79, align 8, !dbg !938, !tbaa !612
  %81 = load i8, i8* %80, align 1, !dbg !938, !tbaa !870
  %82 = icmp eq i8 %81, 0, !dbg !940
  call void @llvm.dbg.value(metadata i1 %82, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !941
  br label %98, !dbg !942

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !943, !tbaa !870
  %85 = icmp eq i8 %84, 45, !dbg !944
  br i1 %85, label %86, label %97, !dbg !945

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !946
  %88 = load i8, i8* %87, align 1, !dbg !946, !tbaa !870
  %89 = icmp eq i8 %88, 0, !dbg !947
  br i1 %89, label %97, label %90, !dbg !948

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !949
  %92 = load i8, i8* %91, align 1, !dbg !949, !tbaa !870
  %93 = icmp eq i8 %92, 0, !dbg !950
  br i1 %93, label %94, label %97, !dbg !951

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !952
  call void @llvm.dbg.value(metadata i1 %95, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !941
  %96 = load i32, i32* @pos, align 4, !dbg !953, !tbaa !770
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #29, !dbg !955
  unreachable, !dbg !955

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !953
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !941
  call void @llvm.dbg.value(metadata i1 %100, metadata !860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !861
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !956
  %101 = add nsw i32 %99, 1, !dbg !953
  store i32 %101, i32* @pos, align 4, !dbg !953, !tbaa !770
  br label %151, !dbg !957

102:                                              ; preds = %1
  %103 = icmp slt i32 %0, 1, !dbg !958
  br i1 %103, label %106, label %104, !dbg !960

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !961, !tbaa !770
  br label %107, !dbg !960

106:                                              ; preds = %102
  tail call void @abort() #29, !dbg !965
  unreachable, !dbg !965

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !961
  %109 = load i32, i32* @argc, align 4, !dbg !966, !tbaa !770
  %110 = icmp slt i32 %108, %109, !dbg !967
  br i1 %110, label %111, label %116, !dbg !968

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 undef, metadata !969, metadata !DIExpression()) #27, !dbg !972
  call void @llvm.dbg.value(metadata i8 1, metadata !974, metadata !DIExpression()) #27, !dbg !977
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !977
  %112 = tail call fastcc zeroext i1 @term() #27, !dbg !980
  call void @llvm.dbg.value(metadata i1 %112, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !977
  %113 = load i32, i32* @pos, align 4, !dbg !982, !tbaa !770
  %114 = load i32, i32* @argc, align 4, !dbg !984, !tbaa !770
  %115 = icmp slt i32 %113, %114, !dbg !985
  br i1 %115, label %117, label %137, !dbg !986

116:                                              ; preds = %107
  tail call fastcc void @beyond() #29, !dbg !987
  unreachable, !dbg !987

117:                                              ; preds = %111, %145
  %118 = phi i32 [ %148, %145 ], [ %113, %111 ]
  %119 = phi i1 [ %147, %145 ], [ %112, %111 ]
  %120 = phi i1 [ %142, %145 ], [ false, %111 ]
  br label %121, !dbg !986

121:                                              ; preds = %117, %130
  %122 = phi i32 [ %118, %117 ], [ %134, %130 ]
  %123 = phi i1 [ %119, %117 ], [ %133, %130 ]
  %124 = load i8**, i8*** @argv, align 8, !dbg !988, !tbaa !612
  %125 = sext i32 %122 to i64, !dbg !988
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125, !dbg !988
  %127 = load i8*, i8** %126, align 8, !dbg !988, !tbaa !612
  %128 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #28, !dbg !988
  %129 = icmp eq i32 %128, 0, !dbg !988
  br i1 %129, label %130, label %141, !dbg !989

130:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !990
  %131 = add nsw i32 %122, 1, !dbg !992
  store i32 %131, i32* @pos, align 4, !dbg !992, !tbaa !770
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !977
  %132 = tail call fastcc zeroext i1 @term() #27, !dbg !980
  %133 = and i1 %123, %132, !dbg !993
  call void @llvm.dbg.value(metadata i1 %133, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !977
  %134 = load i32, i32* @pos, align 4, !dbg !982, !tbaa !770
  %135 = load i32, i32* @argc, align 4, !dbg !984, !tbaa !770
  %136 = icmp slt i32 %134, %135, !dbg !985
  br i1 %136, label %121, label %137, !dbg !986, !llvm.loop !994

137:                                              ; preds = %145, %130, %111
  %138 = phi i1 [ false, %111 ], [ %120, %130 ], [ %142, %145 ], !dbg !972
  %139 = phi i1 [ %112, %111 ], [ %133, %130 ], [ %147, %145 ], !dbg !993
  %140 = or i1 %138, %139, !dbg !997
  call void @llvm.dbg.value(metadata i1 %140, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !972
  br label %151

141:                                              ; preds = %121
  %142 = or i1 %120, %123, !dbg !997
  call void @llvm.dbg.value(metadata i1 %140, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !972
  %143 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #28, !dbg !998
  %144 = icmp eq i32 %143, 0, !dbg !998
  br i1 %144, label %145, label %151, !dbg !1000

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1001
  %146 = add nsw i32 %122, 1, !dbg !1003
  store i32 %146, i32* @pos, align 4, !dbg !1003, !tbaa !770
  call void @llvm.dbg.value(metadata i8 undef, metadata !969, metadata !DIExpression()) #27, !dbg !972
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !977
  %147 = tail call fastcc zeroext i1 @term() #27, !dbg !980
  call void @llvm.dbg.value(metadata i1 %147, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !977
  %148 = load i32, i32* @pos, align 4, !dbg !982, !tbaa !770
  %149 = load i32, i32* @argc, align 4, !dbg !984, !tbaa !770
  %150 = icmp slt i32 %148, %149, !dbg !985
  br i1 %150, label %117, label %137, !dbg !986, !llvm.loop !1004

151:                                              ; preds = %141, %137, %38, %19, %98, %56, %41, %2
  %152 = phi i1 [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ], [ %140, %137 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i1 %152, metadata !860, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !861
  ret i1 %152, !dbg !1007
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #8 !dbg !1008 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #27, !dbg !1063
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1010, metadata !DIExpression()), !dbg !1064
  %3 = load i8**, i8*** @argv, align 8, !dbg !1065, !tbaa !612
  %4 = load i32, i32* @pos, align 4, !dbg !1066, !tbaa !770
  %5 = sext i32 %4 to i64, !dbg !1065
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1065
  %7 = load i8*, i8** %6, align 8, !dbg !1065, !tbaa !612
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1065
  %9 = load i8, i8* %8, align 1, !dbg !1065, !tbaa !870
  %10 = sext i8 %9 to i32, !dbg !1065
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
  ], !dbg !1067

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #27, !dbg !1068
  %13 = load i8**, i8*** @argv, align 8, !dbg !1069, !tbaa !612
  %14 = load i32, i32* @pos, align 4, !dbg !1070, !tbaa !770
  %15 = sext i32 %14 to i64, !dbg !1069
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !1069
  %17 = load i8*, i8** %16, align 8, !dbg !1069, !tbaa !612
  %18 = tail call i8* @quote(i8* %17) #27, !dbg !1071
  tail call void (i8*, ...) @test_syntax_error(i8* %12, i8* %18) #30, !dbg !1072
  unreachable, !dbg !1072

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1073
  %20 = add nsw i32 %4, 1, !dbg !1077
  store i32 %20, i32* @pos, align 4, !dbg !1077, !tbaa !770
  %21 = load i32, i32* @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !1078

23:                                               ; preds = %19
  tail call fastcc void @beyond() #29, !dbg !1079
  unreachable, !dbg !1079

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1080
  store i32 %25, i32* @pos, align 4, !dbg !1080, !tbaa !770
  %26 = sext i32 %20 to i64, !dbg !1081
  %27 = getelementptr inbounds i8*, i8** %3, i64 %26, !dbg !1081
  %28 = load i8*, i8** %27, align 8, !dbg !1081, !tbaa !612
  %29 = call i32 @stat(i8* %28, %struct.stat* nonnull %1) #27, !dbg !1082
  %30 = icmp eq i32 %29, 0, !dbg !1083
  br label %376, !dbg !1084

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1085
  %32 = add nsw i32 %4, 1, !dbg !1088
  store i32 %32, i32* @pos, align 4, !dbg !1088, !tbaa !770
  %33 = load i32, i32* @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1089

35:                                               ; preds = %31
  tail call fastcc void @beyond() #29, !dbg !1090
  unreachable, !dbg !1090

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1091
  store i32 %37, i32* @pos, align 4, !dbg !1091, !tbaa !770
  %38 = sext i32 %32 to i64, !dbg !1092
  %39 = getelementptr inbounds i8*, i8** %3, i64 %38, !dbg !1092
  %40 = load i8*, i8** %39, align 8, !dbg !1092, !tbaa !612
  %41 = tail call i32 @euidaccess(i8* %40, i32 4) #27, !dbg !1093
  %42 = icmp eq i32 %41, 0, !dbg !1094
  br label %376, !dbg !1095

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1096
  %44 = add nsw i32 %4, 1, !dbg !1099
  store i32 %44, i32* @pos, align 4, !dbg !1099, !tbaa !770
  %45 = load i32, i32* @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !1100

47:                                               ; preds = %43
  tail call fastcc void @beyond() #29, !dbg !1101
  unreachable, !dbg !1101

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1102
  store i32 %49, i32* @pos, align 4, !dbg !1102, !tbaa !770
  %50 = sext i32 %44 to i64, !dbg !1103
  %51 = getelementptr inbounds i8*, i8** %3, i64 %50, !dbg !1103
  %52 = load i8*, i8** %51, align 8, !dbg !1103, !tbaa !612
  %53 = tail call i32 @euidaccess(i8* %52, i32 2) #27, !dbg !1104
  %54 = icmp eq i32 %53, 0, !dbg !1105
  br label %376, !dbg !1106

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1107
  %56 = add nsw i32 %4, 1, !dbg !1110
  store i32 %56, i32* @pos, align 4, !dbg !1110, !tbaa !770
  %57 = load i32, i32* @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !1111

59:                                               ; preds = %55
  tail call fastcc void @beyond() #29, !dbg !1112
  unreachable, !dbg !1112

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1113
  store i32 %61, i32* @pos, align 4, !dbg !1113, !tbaa !770
  %62 = sext i32 %56 to i64, !dbg !1114
  %63 = getelementptr inbounds i8*, i8** %3, i64 %62, !dbg !1114
  %64 = load i8*, i8** %63, align 8, !dbg !1114, !tbaa !612
  %65 = tail call i32 @euidaccess(i8* %64, i32 1) #27, !dbg !1115
  %66 = icmp eq i32 %65, 0, !dbg !1116
  br label %376, !dbg !1117

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1118
  %68 = add nsw i32 %4, 1, !dbg !1121
  store i32 %68, i32* @pos, align 4, !dbg !1121, !tbaa !770
  %69 = load i32, i32* @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !1122

71:                                               ; preds = %67
  tail call fastcc void @beyond() #29, !dbg !1123
  unreachable, !dbg !1123

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1124
  store i32 %73, i32* @pos, align 4, !dbg !1124, !tbaa !770
  %74 = sext i32 %68 to i64, !dbg !1125
  %75 = getelementptr inbounds i8*, i8** %3, i64 %74, !dbg !1125
  %76 = load i8*, i8** %75, align 8, !dbg !1125, !tbaa !612
  %77 = call i32 @stat(i8* %76, %struct.stat* nonnull %1) #27, !dbg !1127
  %78 = icmp eq i32 %77, 0, !dbg !1128
  br i1 %78, label %79, label %376, !dbg !1129

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1130, metadata !DIExpression()), !dbg !1138
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 0, !dbg !1140
  %81 = load i64, i64* %80, align 8, !dbg !1140, !tbaa.struct !1141
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 1, !dbg !1140
  %83 = load i64, i64* %82, align 8, !dbg !1140, !tbaa.struct !1144
  call void @llvm.dbg.value(metadata i64 %81, metadata !1047, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %83, metadata !1047, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1146, metadata !DIExpression()), !dbg !1149
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 0, !dbg !1151
  %85 = load i64, i64* %84, align 8, !dbg !1151, !tbaa.struct !1141
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 1, !dbg !1151
  %87 = load i64, i64* %86, align 8, !dbg !1151, !tbaa.struct !1144
  call void @llvm.dbg.value(metadata i64 %85, metadata !1050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %87, metadata !1050, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %85, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %87, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %81, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %83, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1158
  %88 = icmp slt i64 %85, %81, !dbg !1160
  br i1 %88, label %376, label %89, !dbg !1162

89:                                               ; preds = %79
  %90 = icmp sgt i64 %85, %81, !dbg !1163
  br i1 %90, label %376, label %91, !dbg !1165

91:                                               ; preds = %89
  %92 = icmp sgt i64 %87, -2, !dbg !1166
  tail call void @llvm.assume(i1 %92) #27, !dbg !1166
  %93 = icmp slt i64 %87, 2000000001, !dbg !1166
  tail call void @llvm.assume(i1 %93) #27, !dbg !1166
  %94 = icmp sgt i64 %83, -2, !dbg !1167
  tail call void @llvm.assume(i1 %94) #27, !dbg !1167
  %95 = icmp slt i64 %83, 2000000001, !dbg !1167
  tail call void @llvm.assume(i1 %95) #27, !dbg !1167
  %96 = sub nsw i64 %87, %83, !dbg !1168
  %97 = trunc i64 %96 to i32, !dbg !1169
  %98 = icmp sgt i32 %97, 0, !dbg !1170
  br label %376, !dbg !1170

99:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1171
  %100 = add nsw i32 %4, 1, !dbg !1174
  store i32 %100, i32* @pos, align 4, !dbg !1174, !tbaa !770
  %101 = load i32, i32* @argc, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %104, label %103, !dbg !1175

103:                                              ; preds = %99
  tail call fastcc void @beyond() #29, !dbg !1176
  unreachable, !dbg !1176

104:                                              ; preds = %99
  %105 = add nsw i32 %4, 2, !dbg !1177
  store i32 %105, i32* @pos, align 4, !dbg !1177, !tbaa !770
  %106 = sext i32 %100 to i64, !dbg !1178
  %107 = getelementptr inbounds i8*, i8** %3, i64 %106, !dbg !1178
  %108 = load i8*, i8** %107, align 8, !dbg !1178, !tbaa !612
  %109 = call i32 @stat(i8* %108, %struct.stat* nonnull %1) #27, !dbg !1180
  %110 = icmp eq i32 %109, 0, !dbg !1181
  br i1 %110, label %111, label %376, !dbg !1182

111:                                              ; preds = %104
  %112 = tail call i32* @__errno_location() #31, !dbg !1183
  store i32 0, i32* %112, align 4, !dbg !1184, !tbaa !770
  %113 = tail call i32 @geteuid() #27, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %113, metadata !1051, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 -1, metadata !1055, metadata !DIExpression()), !dbg !1186
  %114 = icmp eq i32 %113, -1, !dbg !1187
  br i1 %114, label %115, label %118, !dbg !1188

115:                                              ; preds = %111
  %116 = load i32, i32* %112, align 4, !dbg !1189, !tbaa !770
  %117 = icmp eq i32 %116, 0, !dbg !1189
  br i1 %117, label %118, label %376, !dbg !1190

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1191
  %120 = load i32, i32* %119, align 4, !dbg !1191, !tbaa !1192
  %121 = icmp eq i32 %113, %120, !dbg !1195
  br label %376

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1196
  %123 = add nsw i32 %4, 1, !dbg !1199
  store i32 %123, i32* @pos, align 4, !dbg !1199, !tbaa !770
  %124 = load i32, i32* @argc, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %127, label %126, !dbg !1200

126:                                              ; preds = %122
  tail call fastcc void @beyond() #29, !dbg !1201
  unreachable, !dbg !1201

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1202
  store i32 %128, i32* @pos, align 4, !dbg !1202, !tbaa !770
  %129 = sext i32 %123 to i64, !dbg !1203
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1203
  %131 = load i8*, i8** %130, align 8, !dbg !1203, !tbaa !612
  %132 = call i32 @stat(i8* %131, %struct.stat* nonnull %1) #27, !dbg !1205
  %133 = icmp eq i32 %132, 0, !dbg !1206
  br i1 %133, label %134, label %376, !dbg !1207

134:                                              ; preds = %127
  %135 = tail call i32* @__errno_location() #31, !dbg !1208
  store i32 0, i32* %135, align 4, !dbg !1209, !tbaa !770
  %136 = tail call i32 @getegid() #27, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %136, metadata !1056, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 -1, metadata !1059, metadata !DIExpression()), !dbg !1211
  %137 = icmp eq i32 %136, -1, !dbg !1212
  br i1 %137, label %138, label %141, !dbg !1213

138:                                              ; preds = %134
  %139 = load i32, i32* %135, align 4, !dbg !1214, !tbaa !770
  %140 = icmp eq i32 %139, 0, !dbg !1214
  br i1 %140, label %141, label %376, !dbg !1215

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1216
  %143 = load i32, i32* %142, align 8, !dbg !1216, !tbaa !1217
  %144 = icmp eq i32 %136, %143, !dbg !1218
  br label %376

145:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1219
  %146 = add nsw i32 %4, 1, !dbg !1222
  store i32 %146, i32* @pos, align 4, !dbg !1222, !tbaa !770
  %147 = load i32, i32* @argc, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %150, label %149, !dbg !1223

149:                                              ; preds = %145
  tail call fastcc void @beyond() #29, !dbg !1224
  unreachable, !dbg !1224

150:                                              ; preds = %145
  %151 = add nsw i32 %4, 2, !dbg !1225
  store i32 %151, i32* @pos, align 4, !dbg !1225, !tbaa !770
  %152 = sext i32 %146 to i64, !dbg !1226
  %153 = getelementptr inbounds i8*, i8** %3, i64 %152, !dbg !1226
  %154 = load i8*, i8** %153, align 8, !dbg !1226, !tbaa !612
  %155 = call i32 @stat(i8* %154, %struct.stat* nonnull %1) #27, !dbg !1227
  %156 = icmp eq i32 %155, 0, !dbg !1228
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1229
  %158 = load i32, i32* %157, align 8, !dbg !1229
  %159 = and i32 %158, 61440, !dbg !1229
  %160 = icmp eq i32 %159, 32768, !dbg !1229
  %161 = and i1 %156, %160, !dbg !1229
  br label %376, !dbg !1230

162:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1231
  %163 = add nsw i32 %4, 1, !dbg !1234
  store i32 %163, i32* @pos, align 4, !dbg !1234, !tbaa !770
  %164 = load i32, i32* @argc, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %167, label %166, !dbg !1235

166:                                              ; preds = %162
  tail call fastcc void @beyond() #29, !dbg !1236
  unreachable, !dbg !1236

167:                                              ; preds = %162
  %168 = add nsw i32 %4, 2, !dbg !1237
  store i32 %168, i32* @pos, align 4, !dbg !1237, !tbaa !770
  %169 = sext i32 %163 to i64, !dbg !1238
  %170 = getelementptr inbounds i8*, i8** %3, i64 %169, !dbg !1238
  %171 = load i8*, i8** %170, align 8, !dbg !1238, !tbaa !612
  %172 = call i32 @stat(i8* %171, %struct.stat* nonnull %1) #27, !dbg !1239
  %173 = icmp eq i32 %172, 0, !dbg !1240
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1241
  %175 = load i32, i32* %174, align 8, !dbg !1241
  %176 = and i32 %175, 61440, !dbg !1241
  %177 = icmp eq i32 %176, 16384, !dbg !1241
  %178 = and i1 %173, %177, !dbg !1241
  br label %376, !dbg !1242

179:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1243
  %180 = add nsw i32 %4, 1, !dbg !1246
  store i32 %180, i32* @pos, align 4, !dbg !1246, !tbaa !770
  %181 = load i32, i32* @argc, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %184, label %183, !dbg !1247

183:                                              ; preds = %179
  tail call fastcc void @beyond() #29, !dbg !1248
  unreachable, !dbg !1248

184:                                              ; preds = %179
  %185 = add nsw i32 %4, 2, !dbg !1249
  store i32 %185, i32* @pos, align 4, !dbg !1249, !tbaa !770
  %186 = sext i32 %180 to i64, !dbg !1250
  %187 = getelementptr inbounds i8*, i8** %3, i64 %186, !dbg !1250
  %188 = load i8*, i8** %187, align 8, !dbg !1250, !tbaa !612
  %189 = call i32 @stat(i8* %188, %struct.stat* nonnull %1) #27, !dbg !1251
  %190 = icmp eq i32 %189, 0, !dbg !1252
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1253
  %192 = load i64, i64* %191, align 8, !dbg !1253
  %193 = icmp sgt i64 %192, 0, !dbg !1253
  %194 = and i1 %190, %193, !dbg !1253
  br label %376, !dbg !1254

195:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1255
  %196 = add nsw i32 %4, 1, !dbg !1258
  store i32 %196, i32* @pos, align 4, !dbg !1258, !tbaa !770
  %197 = load i32, i32* @argc, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %200, label %199, !dbg !1259

199:                                              ; preds = %195
  tail call fastcc void @beyond() #29, !dbg !1260
  unreachable, !dbg !1260

200:                                              ; preds = %195
  %201 = add nsw i32 %4, 2, !dbg !1261
  store i32 %201, i32* @pos, align 4, !dbg !1261, !tbaa !770
  %202 = sext i32 %196 to i64, !dbg !1262
  %203 = getelementptr inbounds i8*, i8** %3, i64 %202, !dbg !1262
  %204 = load i8*, i8** %203, align 8, !dbg !1262, !tbaa !612
  %205 = call i32 @stat(i8* %204, %struct.stat* nonnull %1) #27, !dbg !1263
  %206 = icmp eq i32 %205, 0, !dbg !1264
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1265
  %208 = load i32, i32* %207, align 8, !dbg !1265
  %209 = and i32 %208, 61440, !dbg !1265
  %210 = icmp eq i32 %209, 49152, !dbg !1265
  %211 = and i1 %206, %210, !dbg !1265
  br label %376, !dbg !1266

212:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1267
  %213 = add nsw i32 %4, 1, !dbg !1270
  store i32 %213, i32* @pos, align 4, !dbg !1270, !tbaa !770
  %214 = load i32, i32* @argc, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %217, label %216, !dbg !1271

216:                                              ; preds = %212
  tail call fastcc void @beyond() #29, !dbg !1272
  unreachable, !dbg !1272

217:                                              ; preds = %212
  %218 = add nsw i32 %4, 2, !dbg !1273
  store i32 %218, i32* @pos, align 4, !dbg !1273, !tbaa !770
  %219 = sext i32 %213 to i64, !dbg !1274
  %220 = getelementptr inbounds i8*, i8** %3, i64 %219, !dbg !1274
  %221 = load i8*, i8** %220, align 8, !dbg !1274, !tbaa !612
  %222 = call i32 @stat(i8* %221, %struct.stat* nonnull %1) #27, !dbg !1275
  %223 = icmp eq i32 %222, 0, !dbg !1276
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1277
  %225 = load i32, i32* %224, align 8, !dbg !1277
  %226 = and i32 %225, 61440, !dbg !1277
  %227 = icmp eq i32 %226, 8192, !dbg !1277
  %228 = and i1 %223, %227, !dbg !1277
  br label %376, !dbg !1278

229:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1279
  %230 = add nsw i32 %4, 1, !dbg !1282
  store i32 %230, i32* @pos, align 4, !dbg !1282, !tbaa !770
  %231 = load i32, i32* @argc, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %234, label %233, !dbg !1283

233:                                              ; preds = %229
  tail call fastcc void @beyond() #29, !dbg !1284
  unreachable, !dbg !1284

234:                                              ; preds = %229
  %235 = add nsw i32 %4, 2, !dbg !1285
  store i32 %235, i32* @pos, align 4, !dbg !1285, !tbaa !770
  %236 = sext i32 %230 to i64, !dbg !1286
  %237 = getelementptr inbounds i8*, i8** %3, i64 %236, !dbg !1286
  %238 = load i8*, i8** %237, align 8, !dbg !1286, !tbaa !612
  %239 = call i32 @stat(i8* %238, %struct.stat* nonnull %1) #27, !dbg !1287
  %240 = icmp eq i32 %239, 0, !dbg !1288
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1289
  %242 = load i32, i32* %241, align 8, !dbg !1289
  %243 = and i32 %242, 61440, !dbg !1289
  %244 = icmp eq i32 %243, 24576, !dbg !1289
  %245 = and i1 %240, %244, !dbg !1289
  br label %376, !dbg !1290

246:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1291
  %247 = add nsw i32 %4, 1, !dbg !1294
  store i32 %247, i32* @pos, align 4, !dbg !1294, !tbaa !770
  %248 = load i32, i32* @argc, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %251, label %250, !dbg !1295

250:                                              ; preds = %246
  tail call fastcc void @beyond() #29, !dbg !1296
  unreachable, !dbg !1296

251:                                              ; preds = %246
  %252 = add nsw i32 %4, 2, !dbg !1297
  store i32 %252, i32* @pos, align 4, !dbg !1297, !tbaa !770
  %253 = sext i32 %247 to i64, !dbg !1298
  %254 = getelementptr inbounds i8*, i8** %3, i64 %253, !dbg !1298
  %255 = load i8*, i8** %254, align 8, !dbg !1298, !tbaa !612
  %256 = call i32 @stat(i8* %255, %struct.stat* nonnull %1) #27, !dbg !1299
  %257 = icmp eq i32 %256, 0, !dbg !1300
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1301
  %259 = load i32, i32* %258, align 8, !dbg !1301
  %260 = and i32 %259, 61440, !dbg !1301
  %261 = icmp eq i32 %260, 4096, !dbg !1301
  %262 = and i1 %257, %261, !dbg !1301
  br label %376, !dbg !1302

263:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1303
  %264 = add nsw i32 %4, 1, !dbg !1306
  store i32 %264, i32* @pos, align 4, !dbg !1306, !tbaa !770
  %265 = load i32, i32* @argc, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %268, label %267, !dbg !1307

267:                                              ; preds = %263
  tail call fastcc void @beyond() #29, !dbg !1308
  unreachable, !dbg !1308

268:                                              ; preds = %263
  %269 = add nsw i32 %4, 2, !dbg !1309
  store i32 %269, i32* @pos, align 4, !dbg !1309, !tbaa !770
  %270 = sext i32 %264 to i64, !dbg !1310
  %271 = getelementptr inbounds i8*, i8** %3, i64 %270, !dbg !1310
  %272 = load i8*, i8** %271, align 8, !dbg !1310, !tbaa !612
  %273 = call i32 @lstat(i8* %272, %struct.stat* nonnull %1) #27, !dbg !1311
  %274 = icmp eq i32 %273, 0, !dbg !1312
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1313
  %276 = load i32, i32* %275, align 8, !dbg !1313
  %277 = and i32 %276, 61440, !dbg !1313
  %278 = icmp eq i32 %277, 40960, !dbg !1313
  %279 = and i1 %274, %278, !dbg !1313
  br label %376, !dbg !1314

280:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1315
  %281 = add nsw i32 %4, 1, !dbg !1318
  store i32 %281, i32* @pos, align 4, !dbg !1318, !tbaa !770
  %282 = load i32, i32* @argc, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %285, label %284, !dbg !1319

284:                                              ; preds = %280
  tail call fastcc void @beyond() #29, !dbg !1320
  unreachable, !dbg !1320

285:                                              ; preds = %280
  %286 = add nsw i32 %4, 2, !dbg !1321
  store i32 %286, i32* @pos, align 4, !dbg !1321, !tbaa !770
  %287 = sext i32 %281 to i64, !dbg !1322
  %288 = getelementptr inbounds i8*, i8** %3, i64 %287, !dbg !1322
  %289 = load i8*, i8** %288, align 8, !dbg !1322, !tbaa !612
  %290 = call i32 @stat(i8* %289, %struct.stat* nonnull %1) #27, !dbg !1323
  %291 = icmp eq i32 %290, 0, !dbg !1324
  %292 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1325
  %293 = load i32, i32* %292, align 8, !dbg !1325
  %294 = and i32 %293, 2048, !dbg !1325
  %295 = icmp ne i32 %294, 0, !dbg !1325
  %296 = and i1 %291, %295, !dbg !1325
  br label %376, !dbg !1326

297:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1327
  %298 = add nsw i32 %4, 1, !dbg !1330
  store i32 %298, i32* @pos, align 4, !dbg !1330, !tbaa !770
  %299 = load i32, i32* @argc, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %302, label %301, !dbg !1331

301:                                              ; preds = %297
  tail call fastcc void @beyond() #29, !dbg !1332
  unreachable, !dbg !1332

302:                                              ; preds = %297
  %303 = add nsw i32 %4, 2, !dbg !1333
  store i32 %303, i32* @pos, align 4, !dbg !1333, !tbaa !770
  %304 = sext i32 %298 to i64, !dbg !1334
  %305 = getelementptr inbounds i8*, i8** %3, i64 %304, !dbg !1334
  %306 = load i8*, i8** %305, align 8, !dbg !1334, !tbaa !612
  %307 = call i32 @stat(i8* %306, %struct.stat* nonnull %1) #27, !dbg !1335
  %308 = icmp eq i32 %307, 0, !dbg !1336
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1337
  %310 = load i32, i32* %309, align 8, !dbg !1337
  %311 = and i32 %310, 1024, !dbg !1337
  %312 = icmp ne i32 %311, 0, !dbg !1337
  %313 = and i1 %308, %312, !dbg !1337
  br label %376, !dbg !1338

314:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1339
  %315 = add nsw i32 %4, 1, !dbg !1342
  store i32 %315, i32* @pos, align 4, !dbg !1342, !tbaa !770
  %316 = load i32, i32* @argc, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %319, label %318, !dbg !1343

318:                                              ; preds = %314
  tail call fastcc void @beyond() #29, !dbg !1344
  unreachable, !dbg !1344

319:                                              ; preds = %314
  %320 = add nsw i32 %4, 2, !dbg !1345
  store i32 %320, i32* @pos, align 4, !dbg !1345, !tbaa !770
  %321 = sext i32 %315 to i64, !dbg !1346
  %322 = getelementptr inbounds i8*, i8** %3, i64 %321, !dbg !1346
  %323 = load i8*, i8** %322, align 8, !dbg !1346, !tbaa !612
  %324 = call i32 @stat(i8* %323, %struct.stat* nonnull %1) #27, !dbg !1347
  %325 = icmp eq i32 %324, 0, !dbg !1348
  %326 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1349
  %327 = load i32, i32* %326, align 8, !dbg !1349
  %328 = and i32 %327, 512, !dbg !1349
  %329 = icmp ne i32 %328, 0, !dbg !1349
  %330 = and i1 %325, %329, !dbg !1349
  br label %376, !dbg !1350

331:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1351
  %332 = add nsw i32 %4, 1, !dbg !1354
  store i32 %332, i32* @pos, align 4, !dbg !1354, !tbaa !770
  %333 = load i32, i32* @argc, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %336, label %335, !dbg !1355

335:                                              ; preds = %331
  tail call fastcc void @beyond() #29, !dbg !1356
  unreachable, !dbg !1356

336:                                              ; preds = %331
  %337 = add nsw i32 %4, 2, !dbg !1357
  store i32 %337, i32* @pos, align 4, !dbg !1357, !tbaa !770
  %338 = sext i32 %332 to i64, !dbg !1358
  %339 = getelementptr inbounds i8*, i8** %3, i64 %338, !dbg !1358
  %340 = load i8*, i8** %339, align 8, !dbg !1358, !tbaa !612
  %341 = tail call fastcc i8* @find_int(i8* %340), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %341, metadata !1062, metadata !DIExpression()), !dbg !1360
  %342 = tail call i32* @__errno_location() #31, !dbg !1361
  store i32 0, i32* %342, align 4, !dbg !1362, !tbaa !770
  %343 = tail call i64 @strtol(i8* nocapture %341, i8** null, i32 10) #27, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %343, metadata !1060, metadata !DIExpression()), !dbg !1360
  %344 = load i32, i32* %342, align 4, !dbg !1364, !tbaa !770
  %345 = icmp ne i32 %344, 34, !dbg !1365
  %346 = icmp ult i64 %343, 2147483648, !dbg !1366
  %347 = and i1 %346, %345, !dbg !1366
  br i1 %347, label %348, label %376, !dbg !1366

348:                                              ; preds = %336
  %349 = trunc i64 %343 to i32, !dbg !1367
  %350 = tail call i32 @isatty(i32 %349) #27, !dbg !1368
  %351 = icmp ne i32 %350, 0, !dbg !1369
  br label %376

352:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1370
  %353 = add nsw i32 %4, 1, !dbg !1373
  store i32 %353, i32* @pos, align 4, !dbg !1373, !tbaa !770
  %354 = load i32, i32* @argc, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %357, label %356, !dbg !1374

356:                                              ; preds = %352
  tail call fastcc void @beyond() #29, !dbg !1375
  unreachable, !dbg !1375

357:                                              ; preds = %352
  %358 = add nsw i32 %4, 2, !dbg !1376
  store i32 %358, i32* @pos, align 4, !dbg !1376, !tbaa !770
  %359 = sext i32 %353 to i64, !dbg !1377
  %360 = getelementptr inbounds i8*, i8** %3, i64 %359, !dbg !1377
  %361 = load i8*, i8** %360, align 8, !dbg !1377, !tbaa !612
  %362 = load i8, i8* %361, align 1, !dbg !1377, !tbaa !870
  %363 = icmp ne i8 %362, 0, !dbg !1378
  br label %376, !dbg !1379

364:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1380
  %365 = add nsw i32 %4, 1, !dbg !1383
  store i32 %365, i32* @pos, align 4, !dbg !1383, !tbaa !770
  %366 = load i32, i32* @argc, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %369, label %368, !dbg !1384

368:                                              ; preds = %364
  tail call fastcc void @beyond() #29, !dbg !1385
  unreachable, !dbg !1385

369:                                              ; preds = %364
  %370 = add nsw i32 %4, 2, !dbg !1386
  store i32 %370, i32* @pos, align 4, !dbg !1386, !tbaa !770
  %371 = sext i32 %365 to i64, !dbg !1387
  %372 = getelementptr inbounds i8*, i8** %3, i64 %371, !dbg !1387
  %373 = load i8*, i8** %372, align 8, !dbg !1387, !tbaa !612
  %374 = load i8, i8* %373, align 1, !dbg !1387, !tbaa !870
  %375 = icmp eq i8 %374, 0, !dbg !1388
  br label %376, !dbg !1389

376:                                              ; preds = %91, %89, %79, %336, %348, %138, %141, %127, %115, %118, %104, %72, %369, %357, %319, %302, %285, %268, %251, %234, %217, %200, %184, %167, %150, %60, %48, %36, %24
  %377 = phi i1 [ %375, %369 ], [ %363, %357 ], [ %330, %319 ], [ %313, %302 ], [ %296, %285 ], [ %279, %268 ], [ %262, %251 ], [ %245, %234 ], [ %228, %217 ], [ %211, %200 ], [ %194, %184 ], [ %178, %167 ], [ %161, %150 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %104 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %138 ], [ %144, %141 ], [ false, %336 ], [ %351, %348 ], [ %98, %91 ], [ false, %79 ], [ true, %89 ], !dbg !1390
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #27, !dbg !1391
  ret i1 %377, !dbg !1391
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1392 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i32 5) #27, !dbg !1393
  %2 = load i8**, i8*** @argv, align 8, !dbg !1394, !tbaa !612
  %3 = load i32, i32* @argc, align 4, !dbg !1395, !tbaa !770
  %4 = add nsw i32 %3, -1, !dbg !1396
  %5 = sext i32 %4 to i64, !dbg !1394
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1394
  %7 = load i8*, i8** %6, align 8, !dbg !1394, !tbaa !612
  %8 = tail call i8* @quote(i8* %7) #27, !dbg !1397
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #30, !dbg !1398
  unreachable, !dbg !1398
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #8 !dbg !1399 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1402, !tbaa !612
  %2 = load i32, i32* @pos, align 4, !dbg !1404, !tbaa !770
  %3 = add nsw i32 %2, 1, !dbg !1405
  %4 = sext i32 %3 to i64, !dbg !1402
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1402
  %6 = load i8*, i8** %5, align 8, !dbg !1402, !tbaa !612
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1406
  br i1 %7, label %8, label %10, !dbg !1407

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1408
  call void @llvm.dbg.value(metadata i1 %9, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1409
  br label %120, !dbg !1410

10:                                               ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !1411
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1411
  %13 = load i8*, i8** %12, align 8, !dbg !1411, !tbaa !612
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !1411
  %15 = icmp eq i32 %14, 0, !dbg !1411
  br i1 %15, label %16, label %48, !dbg !1413

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1414
  store i32 %3, i32* @pos, align 4, !dbg !1417, !tbaa !770
  %17 = load i32, i32* @argc, align 4
  %18 = icmp slt i32 %3, %17
  br i1 %18, label %20, label %19, !dbg !1418

19:                                               ; preds = %16
  tail call fastcc void @beyond() #29, !dbg !1419
  unreachable, !dbg !1419

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #28, !dbg !1420
  %22 = icmp eq i32 %21, 0, !dbg !1420
  br i1 %22, label %23, label %31, !dbg !1422

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1423
  %24 = add nsw i32 %2, 2, !dbg !1425
  %25 = add nsw i32 %2, 3, !dbg !1426
  store i32 %25, i32* @pos, align 4, !dbg !1426, !tbaa !770
  %26 = sext i32 %24 to i64, !dbg !1428
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !1428
  %28 = load i8*, i8** %27, align 8, !dbg !1428, !tbaa !612
  %29 = load i8, i8* %28, align 1, !dbg !1428, !tbaa !870
  %30 = icmp eq i8 %29, 0, !dbg !1429
  call void @llvm.dbg.value(metadata i1 %30, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1430
  br label %45, !dbg !1431

31:                                               ; preds = %20
  %32 = load i8, i8* %6, align 1, !dbg !1432, !tbaa !870
  %33 = icmp eq i8 %32, 45, !dbg !1433
  br i1 %33, label %34, label %44, !dbg !1434

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1435
  %36 = load i8, i8* %35, align 1, !dbg !1435, !tbaa !870
  %37 = icmp eq i8 %36, 0, !dbg !1436
  br i1 %37, label %44, label %38, !dbg !1437

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1438
  %40 = load i8, i8* %39, align 1, !dbg !1438, !tbaa !870
  %41 = icmp eq i8 %40, 0, !dbg !1439
  br i1 %41, label %42, label %44, !dbg !1440

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !1441
  call void @llvm.dbg.value(metadata i1 %43, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1430
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #29, !dbg !1442
  unreachable, !dbg !1442

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1430
  %47 = xor i1 %46, true, !dbg !1443
  call void @llvm.dbg.value(metadata i1 %47, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1409
  br label %120, !dbg !1444

48:                                               ; preds = %10
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1445
  %50 = icmp eq i32 %49, 0, !dbg !1445
  br i1 %50, label %51, label %62, !dbg !1447

51:                                               ; preds = %48
  %52 = add nsw i32 %2, 2, !dbg !1448
  %53 = sext i32 %52 to i64, !dbg !1448
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !1448
  %55 = load i8*, i8** %54, align 8, !dbg !1448, !tbaa !612
  %56 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !1448
  %57 = icmp eq i32 %56, 0, !dbg !1448
  br i1 %57, label %58, label %62, !dbg !1449

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1450
  %59 = load i8, i8* %6, align 1, !dbg !1453, !tbaa !870
  %60 = icmp ne i8 %59, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i1 %60, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1409
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1456
  %61 = add nsw i32 %2, 3, !dbg !1458
  store i32 %61, i32* @pos, align 4, !dbg !1458, !tbaa !770
  br label %120, !dbg !1459

62:                                               ; preds = %51, %48
  %63 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #28, !dbg !1460
  %64 = icmp eq i32 %63, 0, !dbg !1460
  br i1 %64, label %68, label %65, !dbg !1462

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #28, !dbg !1463
  %67 = icmp eq i32 %66, 0, !dbg !1463
  br i1 %67, label %68, label %111, !dbg !1464

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @argc, align 4, !dbg !1465, !tbaa !770
  %70 = icmp slt i32 %2, %69, !dbg !1467
  br i1 %70, label %71, label %76, !dbg !1468

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 undef, metadata !969, metadata !DIExpression()) #27, !dbg !1469
  call void @llvm.dbg.value(metadata i8 1, metadata !974, metadata !DIExpression()) #27, !dbg !1471
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !1471
  %72 = tail call fastcc zeroext i1 @term() #27, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %72, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1471
  %73 = load i32, i32* @pos, align 4, !dbg !1474, !tbaa !770
  %74 = load i32, i32* @argc, align 4, !dbg !1475, !tbaa !770
  %75 = icmp slt i32 %73, %74, !dbg !1476
  br i1 %75, label %77, label %97, !dbg !1477

76:                                               ; preds = %68
  tail call fastcc void @beyond() #29, !dbg !1478
  unreachable, !dbg !1478

77:                                               ; preds = %71, %105
  %78 = phi i32 [ %108, %105 ], [ %73, %71 ]
  %79 = phi i1 [ %107, %105 ], [ %72, %71 ]
  %80 = phi i1 [ %102, %105 ], [ false, %71 ]
  br label %81, !dbg !1477

81:                                               ; preds = %77, %90
  %82 = phi i32 [ %78, %77 ], [ %94, %90 ]
  %83 = phi i1 [ %79, %77 ], [ %93, %90 ]
  %84 = load i8**, i8*** @argv, align 8, !dbg !1479, !tbaa !612
  %85 = sext i32 %82 to i64, !dbg !1479
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85, !dbg !1479
  %87 = load i8*, i8** %86, align 8, !dbg !1479, !tbaa !612
  %88 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #28, !dbg !1479
  %89 = icmp eq i32 %88, 0, !dbg !1479
  br i1 %89, label %90, label %101, !dbg !1480

90:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1481
  %91 = add nsw i32 %82, 1, !dbg !1483
  store i32 %91, i32* @pos, align 4, !dbg !1483, !tbaa !770
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !1471
  %92 = tail call fastcc zeroext i1 @term() #27, !dbg !1473
  %93 = and i1 %83, %92, !dbg !1484
  call void @llvm.dbg.value(metadata i1 %93, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1471
  %94 = load i32, i32* @pos, align 4, !dbg !1474, !tbaa !770
  %95 = load i32, i32* @argc, align 4, !dbg !1475, !tbaa !770
  %96 = icmp slt i32 %94, %95, !dbg !1476
  br i1 %96, label %81, label %97, !dbg !1477, !llvm.loop !1485

97:                                               ; preds = %105, %90, %71
  %98 = phi i1 [ false, %71 ], [ %80, %90 ], [ %102, %105 ], !dbg !1469
  %99 = phi i1 [ %72, %71 ], [ %93, %90 ], [ %107, %105 ], !dbg !1484
  %100 = or i1 %98, %99, !dbg !1488
  call void @llvm.dbg.value(metadata i1 %100, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1469
  br label %120

101:                                              ; preds = %81
  %102 = or i1 %80, %83, !dbg !1488
  call void @llvm.dbg.value(metadata i1 %100, metadata !969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1469
  %103 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #28, !dbg !1489
  %104 = icmp eq i32 %103, 0, !dbg !1489
  br i1 %104, label %105, label %120, !dbg !1490

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1491
  %106 = add nsw i32 %82, 1, !dbg !1493
  store i32 %106, i32* @pos, align 4, !dbg !1493, !tbaa !770
  call void @llvm.dbg.value(metadata i8 undef, metadata !969, metadata !DIExpression()) #27, !dbg !1469
  call void @llvm.dbg.value(metadata i8 undef, metadata !974, metadata !DIExpression()) #27, !dbg !1471
  %107 = tail call fastcc zeroext i1 @term() #27, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %107, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1471
  %108 = load i32, i32* @pos, align 4, !dbg !1474, !tbaa !770
  %109 = load i32, i32* @argc, align 4, !dbg !1475, !tbaa !770
  %110 = icmp slt i32 %108, %109, !dbg !1476
  br i1 %110, label %77, label %97, !dbg !1477, !llvm.loop !1494

111:                                              ; preds = %65
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 5) #27, !dbg !1497
  %113 = load i8**, i8*** @argv, align 8, !dbg !1498, !tbaa !612
  %114 = load i32, i32* @pos, align 4, !dbg !1499, !tbaa !770
  %115 = add nsw i32 %114, 1, !dbg !1500
  %116 = sext i32 %115 to i64, !dbg !1498
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116, !dbg !1498
  %118 = load i8*, i8** %117, align 8, !dbg !1498, !tbaa !612
  %119 = tail call i8* @quote(i8* %118) #27, !dbg !1501
  tail call void (i8*, ...) @test_syntax_error(i8* %112, i8* %119) #30, !dbg !1502
  unreachable, !dbg !1502

120:                                              ; preds = %101, %97, %45, %58, %8
  %121 = phi i1 [ %9, %8 ], [ %47, %45 ], [ %60, %58 ], [ %100, %97 ], [ %102, %101 ]
  call void @llvm.dbg.value(metadata i1 %121, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1409
  ret i1 %121, !dbg !1503
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #8 !dbg !1504 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 undef, metadata !1507, metadata !DIExpression()), !dbg !1511
  %1 = load i32, i32* @pos, align 4, !dbg !1512, !tbaa !770
  %2 = load i32, i32* @argc, align 4, !dbg !1513, !tbaa !770
  %3 = icmp sgt i32 %2, %1, !dbg !1514
  br i1 %3, label %4, label %30, !dbg !1515

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !612
  %6 = sext i32 %1 to i64, !dbg !1516
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1516
  %8 = load i8*, i8** %7, align 8, !dbg !1516, !tbaa !612
  %9 = load i8, i8* %8, align 1, !dbg !1516, !tbaa !870
  %10 = icmp eq i8 %9, 33, !dbg !1517
  br i1 %10, label %11, label %31, !dbg !1518

11:                                               ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1519
  %17 = load i8, i8* %16, align 1, !dbg !1519, !tbaa !870
  %18 = icmp eq i8 %17, 0, !dbg !1520
  br i1 %18, label %19, label %100, !dbg !1521

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1522
  %20 = add nsw i32 %15, 1, !dbg !1525
  store i32 %20, i32* @pos, align 4, !dbg !1525, !tbaa !770
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %23, label %22, !dbg !1526

22:                                               ; preds = %19
  tail call fastcc void @beyond() #29, !dbg !1527
  unreachable, !dbg !1527

23:                                               ; preds = %19
  %24 = xor i1 %14, true, !dbg !1528
  call void @llvm.dbg.value(metadata i8 undef, metadata !1507, metadata !DIExpression()), !dbg !1511
  %25 = sext i32 %20 to i64, !dbg !1516
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1516
  %27 = load i8*, i8** %26, align 8, !dbg !1516, !tbaa !612
  %28 = load i8, i8* %27, align 1, !dbg !1516, !tbaa !870
  %29 = icmp eq i8 %28, 33, !dbg !1517
  br i1 %29, label %11, label %31, !dbg !1518

30:                                               ; preds = %0
  tail call fastcc void @beyond() #30, !dbg !1529
  unreachable, !dbg !1529

31:                                               ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !1516
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !1516
  %36 = icmp eq i8 %35, 40, !dbg !1531
  br i1 %36, label %37, label %100, !dbg !1532

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1533
  %39 = load i8, i8* %38, align 1, !dbg !1533, !tbaa !870
  %40 = icmp eq i8 %39, 0, !dbg !1534
  br i1 %40, label %41, label %100, !dbg !1535

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1536
  %42 = add nsw i32 %32, 1, !dbg !1538
  store i32 %42, i32* @pos, align 4, !dbg !1538, !tbaa !770
  %43 = icmp sgt i32 %2, %42
  br i1 %43, label %44, label %52, !dbg !1539

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !1508, metadata !DIExpression()), !dbg !1540
  %45 = add nsw i32 %32, 2, !dbg !1541
  %46 = icmp slt i32 %45, %2, !dbg !1544
  br i1 %46, label %47, label %70, !dbg !1545

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !1546
  %49 = xor i32 %32, -1, !dbg !1546
  %50 = add i32 %2, %49, !dbg !1546
  %51 = zext i32 %50 to i64, !dbg !1544
  br label %53, !dbg !1546

52:                                               ; preds = %41
  tail call fastcc void @beyond() #29, !dbg !1547
  unreachable, !dbg !1547

53:                                               ; preds = %47, %64
  %54 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %55 = phi i64 [ %48, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1508, metadata !DIExpression()), !dbg !1540
  %56 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !1548
  %57 = load i8*, i8** %56, align 8, !dbg !1548, !tbaa !612
  %58 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %57, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !1548
  %59 = icmp eq i32 %58, 0, !dbg !1548
  br i1 %59, label %68, label %60, !dbg !1546

60:                                               ; preds = %53
  %61 = icmp eq i64 %54, 4, !dbg !1549
  br i1 %61, label %62, label %64, !dbg !1551

62:                                               ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %63, metadata !1508, metadata !DIExpression()), !dbg !1540
  br label %70, !dbg !1554

64:                                               ; preds = %60
  %65 = add nuw nsw i64 %54, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %65, metadata !1508, metadata !DIExpression()), !dbg !1540
  %66 = add nsw i64 %55, 1, !dbg !1541
  %67 = icmp eq i64 %65, %51, !dbg !1544
  br i1 %67, label %70, label %53, !dbg !1545, !llvm.loop !1556

68:                                               ; preds = %53
  %69 = trunc i64 %54 to i32, !dbg !1546
  br label %70, !dbg !1558

70:                                               ; preds = %64, %68, %44, %62
  %71 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %69, %68 ], [ %50, %64 ], !dbg !1559
  call void @llvm.dbg.value(metadata i32 %71, metadata !1508, metadata !DIExpression()), !dbg !1540
  %72 = tail call fastcc zeroext i1 @posixtest(i32 %71), !dbg !1558
  call void @llvm.dbg.value(metadata i1 %72, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  %73 = load i8**, i8*** @argv, align 8, !dbg !1560, !tbaa !612
  %74 = load i32, i32* @pos, align 4, !dbg !1562, !tbaa !770
  %75 = sext i32 %74 to i64, !dbg !1560
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75, !dbg !1560
  %77 = load i8*, i8** %76, align 8, !dbg !1560, !tbaa !612
  %78 = icmp eq i8* %77, null, !dbg !1563
  br i1 %78, label %79, label %82, !dbg !1564

79:                                               ; preds = %70
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #27, !dbg !1565
  %81 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #27, !dbg !1566
  tail call void (i8*, ...) @test_syntax_error(i8* %80, i8* %81) #30, !dbg !1567
  unreachable, !dbg !1567

82:                                               ; preds = %70
  %83 = load i8, i8* %77, align 1, !dbg !1568, !tbaa !870
  %84 = icmp eq i8 %83, 41, !dbg !1570
  br i1 %84, label %85, label %89, !dbg !1571

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1572
  %87 = load i8, i8* %86, align 1, !dbg !1572, !tbaa !870
  %88 = icmp eq i8 %87, 0, !dbg !1572
  br i1 %88, label %98, label %89, !dbg !1573

89:                                               ; preds = %85, %82
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0), i32 5) #27, !dbg !1574
  %91 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #27, !dbg !1575
  %92 = load i8**, i8*** @argv, align 8, !dbg !1576, !tbaa !612
  %93 = load i32, i32* @pos, align 4, !dbg !1577, !tbaa !770
  %94 = sext i32 %93 to i64, !dbg !1576
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94, !dbg !1576
  %96 = load i8*, i8** %95, align 8, !dbg !1576, !tbaa !612
  %97 = tail call i8* @quote_n(i32 1, i8* %96) #27, !dbg !1578
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91, i8* %97) #30, !dbg !1579
  unreachable, !dbg !1579

98:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1580
  %99 = add nsw i32 %74, 1, !dbg !1582
  store i32 %99, i32* @pos, align 4, !dbg !1582, !tbaa !770
  br label %143, !dbg !1583

100:                                              ; preds = %11, %37, %31
  %101 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %102 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %103 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %104 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %105 = sub nsw i32 %2, %101, !dbg !1584
  %106 = icmp sgt i32 %105, 3, !dbg !1586
  br i1 %106, label %107, label %118, !dbg !1587

107:                                              ; preds = %100
  %108 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %103, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #28, !dbg !1588
  %109 = icmp eq i32 %108, 0, !dbg !1588
  br i1 %109, label %110, label %120, !dbg !1589

110:                                              ; preds = %107
  %111 = add nsw i32 %101, 2, !dbg !1590
  %112 = sext i32 %111 to i64, !dbg !1591
  %113 = getelementptr inbounds i8*, i8** %5, i64 %112, !dbg !1591
  %114 = load i8*, i8** %113, align 8, !dbg !1591, !tbaa !612
  %115 = tail call fastcc zeroext i1 @binop(i8* %114), !dbg !1592
  br i1 %115, label %116, label %120, !dbg !1593

116:                                              ; preds = %110
  %117 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1594
  call void @llvm.dbg.value(metadata i1 %117, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %143, !dbg !1595

118:                                              ; preds = %100
  %119 = icmp eq i32 %105, 3, !dbg !1596
  br i1 %119, label %120, label %128, !dbg !1598

120:                                              ; preds = %107, %110, %118
  %121 = add nsw i32 %101, 1, !dbg !1599
  %122 = sext i32 %121 to i64, !dbg !1600
  %123 = getelementptr inbounds i8*, i8** %5, i64 %122, !dbg !1600
  %124 = load i8*, i8** %123, align 8, !dbg !1600, !tbaa !612
  %125 = tail call fastcc zeroext i1 @binop(i8* %124), !dbg !1601
  br i1 %125, label %126, label %128, !dbg !1602

126:                                              ; preds = %120
  %127 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1603
  call void @llvm.dbg.value(metadata i1 %127, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %143, !dbg !1604

128:                                              ; preds = %120, %118
  %129 = icmp eq i8 %104, 45, !dbg !1605
  br i1 %129, label %130, label %140, !dbg !1607

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1608
  %132 = load i8, i8* %131, align 1, !dbg !1608, !tbaa !870
  %133 = icmp eq i8 %132, 0, !dbg !1608
  br i1 %133, label %140, label %134, !dbg !1609

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !1610
  %136 = load i8, i8* %135, align 1, !dbg !1610, !tbaa !870
  %137 = icmp eq i8 %136, 0, !dbg !1611
  br i1 %137, label %138, label %140, !dbg !1612

138:                                              ; preds = %134
  %139 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1613
  call void @llvm.dbg.value(metadata i1 %139, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %143, !dbg !1614

140:                                              ; preds = %134, %130, %128
  %141 = icmp ne i8 %104, 0, !dbg !1615
  call void @llvm.dbg.value(metadata i1 %141, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1617
  %142 = add nsw i32 %101, 1, !dbg !1619
  store i32 %142, i32* @pos, align 4, !dbg !1619, !tbaa !770
  br label %143

143:                                              ; preds = %116, %138, %140, %126, %98
  %144 = phi i1 [ %33, %98 ], [ %102, %116 ], [ %102, %126 ], [ %102, %138 ], [ %102, %140 ]
  %145 = phi i1 [ %72, %98 ], [ %117, %116 ], [ %127, %126 ], [ %139, %138 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i1 %145, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  %146 = xor i1 %144, %145, !dbg !1620
  ret i1 %146, !dbg !1621
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define internal fastcc zeroext i1 @binop(i8* nocapture readonly %0) unnamed_addr #9 !dbg !1622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1626, metadata !DIExpression()), !dbg !1627
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #28, !dbg !1628
  %3 = icmp eq i32 %2, 0, !dbg !1628
  br i1 %3, label %37, label %4, !dbg !1629

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #28, !dbg !1630
  %6 = icmp eq i32 %5, 0, !dbg !1630
  br i1 %6, label %37, label %7, !dbg !1631

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #28, !dbg !1632
  %9 = icmp eq i32 %8, 0, !dbg !1632
  br i1 %9, label %37, label %10, !dbg !1633

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #28, !dbg !1634
  %12 = icmp eq i32 %11, 0, !dbg !1634
  br i1 %12, label %37, label %13, !dbg !1635

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #28, !dbg !1636
  %15 = icmp eq i32 %14, 0, !dbg !1636
  br i1 %15, label %37, label %16, !dbg !1637

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #28, !dbg !1638
  %18 = icmp eq i32 %17, 0, !dbg !1638
  br i1 %18, label %37, label %19, !dbg !1639

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #28, !dbg !1640
  %21 = icmp eq i32 %20, 0, !dbg !1640
  br i1 %21, label %37, label %22, !dbg !1641

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0)) #28, !dbg !1642
  %24 = icmp eq i32 %23, 0, !dbg !1642
  br i1 %24, label %37, label %25, !dbg !1643

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #28, !dbg !1644
  %27 = icmp eq i32 %26, 0, !dbg !1644
  br i1 %27, label %37, label %28, !dbg !1645

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #28, !dbg !1646
  %30 = icmp eq i32 %29, 0, !dbg !1646
  br i1 %30, label %37, label %31, !dbg !1647

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #28, !dbg !1648
  %33 = icmp eq i32 %32, 0, !dbg !1648
  br i1 %33, label %37, label %34, !dbg !1649

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)) #28, !dbg !1650
  %36 = icmp eq i32 %35, 0, !dbg !1650
  br label %37, !dbg !1649

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1651
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext %0) unnamed_addr #8 !dbg !1652 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !1656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1693
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #27, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1658, metadata !DIExpression()), !dbg !1695
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #27, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1659, metadata !DIExpression()), !dbg !1696
  %12 = load i32, i32* @pos, align 4, !dbg !1693, !tbaa !770
  br i1 %0, label %13, label %15, !dbg !1697

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1698
  %14 = add nsw i32 %12, 1, !dbg !1701
  store i32 %14, i32* @pos, align 4, !dbg !1701, !tbaa !770
  br label %15, !dbg !1702

15:                                               ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1703
  %17 = add nsw i32 %16, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %17, metadata !1657, metadata !DIExpression()), !dbg !1693
  %18 = load i32, i32* @argc, align 4, !dbg !1705, !tbaa !770
  %19 = add nsw i32 %18, -2, !dbg !1707
  %20 = icmp slt i32 %17, %19, !dbg !1708
  %21 = load i8**, i8*** @argv, align 8, !dbg !1693, !tbaa !612
  br i1 %20, label %22, label %30, !dbg !1709

22:                                               ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1710
  %24 = sext i32 %23 to i64, !dbg !1710
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1710
  %26 = load i8*, i8** %25, align 8, !dbg !1710, !tbaa !612
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %26, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #28, !dbg !1710
  %28 = icmp eq i32 %27, 0, !dbg !1710
  br i1 %28, label %29, label %30, !dbg !1711

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1660, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i1 false, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1712
  store i32 %17, i32* @pos, align 4, !dbg !1715, !tbaa !770
  br label %30, !dbg !1716

30:                                               ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1660, metadata !DIExpression()), !dbg !1693
  %33 = sext i32 %17 to i64, !dbg !1717
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1717
  %35 = load i8*, i8** %34, align 8, !dbg !1717, !tbaa !612
  %36 = load i8, i8* %35, align 1, !dbg !1717, !tbaa !870
  switch i8 %36, label %279 [
    i8 45, label %37
    i8 61, label %261
  ], !dbg !1718

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1719
  %39 = load i8, i8* %38, align 1, !dbg !1719, !tbaa !870
  switch i8 %39, label %106 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1720

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1721
  %42 = load i8, i8* %41, align 1, !dbg !1721, !tbaa !870
  switch i8 %42, label %106 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1722

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1723
  %45 = load i8, i8* %44, align 1, !dbg !1723, !tbaa !870
  %46 = icmp eq i8 %45, 113, !dbg !1724
  br i1 %46, label %51, label %165, !dbg !1725

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1726
  %49 = load i8, i8* %48, align 1, !dbg !1726, !tbaa !870
  %50 = icmp eq i8 %49, 101, !dbg !1727
  br i1 %50, label %51, label %114, !dbg !1728

51:                                               ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1729
  %53 = load i8, i8* %52, align 1, !dbg !1729, !tbaa !870
  %54 = icmp eq i8 %53, 0, !dbg !1729
  br i1 %54, label %55, label %106, !dbg !1730

55:                                               ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1731
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #27, !dbg !1731
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1661, metadata !DIExpression()), !dbg !1732
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1733
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #27, !dbg !1733
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1669, metadata !DIExpression()), !dbg !1734
  %58 = sext i32 %16 to i64, !dbg !1735
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !1735
  %60 = load i8*, i8** %59, align 8, !dbg !1735, !tbaa !612
  br i1 %0, label %61, label %64, !dbg !1736

61:                                               ; preds = %55
  %62 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %60) #28, !dbg !1737
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #27, !dbg !1738
  br label %66, !dbg !1736

64:                                               ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1739
  br label %66, !dbg !1736

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1736
  call void @llvm.dbg.value(metadata i8* %67, metadata !1670, metadata !DIExpression()), !dbg !1735
  %68 = load i8**, i8*** @argv, align 8, !dbg !1735, !tbaa !612
  br i1 %32, label %69, label %76, !dbg !1740

69:                                               ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1741
  %71 = sext i32 %70 to i64, !dbg !1742
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1742
  %73 = load i8*, i8** %72, align 8, !dbg !1742, !tbaa !612
  %74 = call i64 @strlen(i8* nonnull dereferenceable(1) %73) #28, !dbg !1743
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #27, !dbg !1744
  br label %82, !dbg !1740

76:                                               ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1745
  %78 = sext i32 %77 to i64, !dbg !1746
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1746
  %80 = load i8*, i8** %79, align 8, !dbg !1746, !tbaa !612
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1747
  br label %82, !dbg !1740

82:                                               ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1740
  call void @llvm.dbg.value(metadata i8* %83, metadata !1671, metadata !DIExpression()), !dbg !1735
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #28, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %84, metadata !1672, metadata !DIExpression()), !dbg !1735
  %85 = load i8**, i8*** @argv, align 8, !dbg !1749, !tbaa !612
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1749
  %87 = load i8*, i8** %86, align 8, !dbg !1749, !tbaa !612
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1749
  %89 = load i8, i8* %88, align 1, !dbg !1749, !tbaa !870
  %90 = icmp eq i8 %89, 101, !dbg !1750
  call void @llvm.dbg.value(metadata i1 %90, metadata !1673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  %91 = load i32, i32* @pos, align 4, !dbg !1751, !tbaa !770
  %92 = add nsw i32 %91, 3, !dbg !1751
  store i32 %92, i32* @pos, align 4, !dbg !1751, !tbaa !770
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1752
  %94 = load i8, i8* %93, align 1, !dbg !1752, !tbaa !870
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1752

95:                                               ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1753
  %97 = icmp slt i32 %84, %96, !dbg !1754
  br label %104, !dbg !1752

98:                                               ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1755
  %100 = icmp sgt i32 %84, %99, !dbg !1756
  br label %104, !dbg !1757

101:                                              ; preds = %82
  %102 = icmp eq i32 %84, 0, !dbg !1758
  %103 = xor i1 %102, %90, !dbg !1759
  br label %104, !dbg !1757

104:                                              ; preds = %98, %101, %95
  %105 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #27, !dbg !1760
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #27, !dbg !1760
  br label %294

106:                                              ; preds = %37, %40, %51
  %107 = sext i8 %39 to i32, !dbg !1761
  switch i32 %107, label %255 [
    i32 110, label %108
    i32 101, label %111
    i32 111, label %203
  ], !dbg !1762

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, i8* %35, i64 2
  %110 = load i8, i8* %109, align 1, !dbg !1763, !tbaa !870
  br label %114, !dbg !1762

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %35, i64 2
  %113 = load i8, i8* %112, align 1, !dbg !1764, !tbaa !870
  br label %165, !dbg !1762

114:                                              ; preds = %108, %47
  %115 = phi i8 [ %110, %108 ], [ %49, %47 ], !dbg !1763
  %116 = icmp eq i8 %115, 116, !dbg !1766
  br i1 %116, label %117, label %255, !dbg !1767

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1768
  %119 = load i8, i8* %118, align 1, !dbg !1768, !tbaa !870
  %120 = icmp eq i8 %119, 0, !dbg !1768
  br i1 %120, label %121, label %255, !dbg !1769

121:                                              ; preds = %117
  %122 = add nsw i32 %31, 3, !dbg !1770
  store i32 %122, i32* @pos, align 4, !dbg !1770, !tbaa !770
  %123 = or i1 %32, %0, !dbg !1771
  br i1 %123, label %124, label %126, !dbg !1771

124:                                              ; preds = %121
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #27, !dbg !1773
  tail call void (i8*, ...) @test_syntax_error(i8* %125, i8* null) #30, !dbg !1774
  unreachable, !dbg !1774

126:                                              ; preds = %121
  %127 = sext i32 %16 to i64, !dbg !1775
  %128 = getelementptr inbounds i8*, i8** %21, i64 %127, !dbg !1775
  %129 = load i8*, i8** %128, align 8, !dbg !1775, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %129, metadata !1776, metadata !DIExpression()) #27, !dbg !1785
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1782, metadata !DIExpression()) #27, !dbg !1785
  %130 = bitcast %struct.stat* %4 to i8*, !dbg !1787
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %130) #27, !dbg !1787
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1783, metadata !DIExpression()) #27, !dbg !1788
  %131 = call i32 @stat(i8* %129, %struct.stat* nonnull %4) #27, !dbg !1789
  %132 = icmp eq i32 %131, 0, !dbg !1790
  call void @llvm.dbg.value(metadata i1 %132, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1785
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1791
  %134 = load i64, i64* %133, align 8, !dbg !1791
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1791
  %136 = load i64, i64* %135, align 8, !dbg !1791
  %137 = select i1 %132, i64 %136, i64 undef, !dbg !1791
  %138 = select i1 %132, i64 %134, i64 undef, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %138, metadata !1674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %137, metadata !1674, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1792
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %130) #27, !dbg !1793
  call void @llvm.dbg.value(metadata i1 %132, metadata !1679, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  %139 = load i8**, i8*** @argv, align 8, !dbg !1794, !tbaa !612
  %140 = add nsw i32 %16, 2, !dbg !1795
  %141 = sext i32 %140 to i64, !dbg !1794
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141, !dbg !1794
  %143 = load i8*, i8** %142, align 8, !dbg !1794, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %143, metadata !1776, metadata !DIExpression()) #27, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1782, metadata !DIExpression()) #27, !dbg !1796
  %144 = bitcast %struct.stat* %3 to i8*, !dbg !1798
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1798
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1783, metadata !DIExpression()) #27, !dbg !1799
  %145 = call i32 @stat(i8* %143, %struct.stat* nonnull %3) #27, !dbg !1800
  %146 = icmp eq i32 %145, 0, !dbg !1801
  call void @llvm.dbg.value(metadata i1 %146, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1796
  br i1 %146, label %148, label %147, !dbg !1802

147:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %150, metadata !1678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %152, metadata !1678, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1792
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1803
  call void @llvm.dbg.value(metadata i1 %146, metadata !1680, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  br label %294, !dbg !1804

148:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1146, metadata !DIExpression()) #27, !dbg !1805
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1808
  %150 = load i64, i64* %149, align 8, !dbg !1808, !tbaa.struct !1141
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1808
  %152 = load i64, i64* %151, align 8, !dbg !1808, !tbaa.struct !1144
  call void @llvm.dbg.value(metadata i64 %150, metadata !1678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %152, metadata !1678, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1792
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1803
  call void @llvm.dbg.value(metadata i1 %146, metadata !1680, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  %153 = icmp sge i64 %138, %150
  %154 = and i1 %132, %153, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %138, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %137, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %150, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %152, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1809
  br i1 %154, label %155, label %294, !dbg !1804

155:                                              ; preds = %148
  %156 = icmp sgt i64 %138, %150, !dbg !1811
  br i1 %156, label %294, label %157, !dbg !1812

157:                                              ; preds = %155
  %158 = icmp sgt i64 %137, -2, !dbg !1813
  tail call void @llvm.assume(i1 %158) #27, !dbg !1813
  %159 = icmp slt i64 %137, 2000000001, !dbg !1813
  tail call void @llvm.assume(i1 %159) #27, !dbg !1813
  %160 = icmp sgt i64 %152, -2, !dbg !1814
  tail call void @llvm.assume(i1 %160) #27, !dbg !1814
  %161 = icmp slt i64 %152, 2000000001, !dbg !1814
  tail call void @llvm.assume(i1 %161) #27, !dbg !1814
  %162 = sub nsw i64 %137, %152, !dbg !1815
  %163 = trunc i64 %162 to i32, !dbg !1816
  %164 = icmp sgt i32 %163, 0, !dbg !1817
  br label %294, !dbg !1817

165:                                              ; preds = %111, %43
  %166 = phi i8 [ %113, %111 ], [ %45, %43 ], !dbg !1764
  %167 = icmp eq i8 %166, 102, !dbg !1818
  br i1 %167, label %168, label %255, !dbg !1819

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1820
  %170 = load i8, i8* %169, align 1, !dbg !1820, !tbaa !870
  %171 = icmp eq i8 %170, 0, !dbg !1820
  br i1 %171, label %172, label %255, !dbg !1821

172:                                              ; preds = %168
  %173 = add nsw i32 %31, 3, !dbg !1822
  store i32 %173, i32* @pos, align 4, !dbg !1822, !tbaa !770
  %174 = or i1 %32, %0, !dbg !1824
  br i1 %174, label %175, label %177, !dbg !1824

175:                                              ; preds = %172
  %176 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 5) #27, !dbg !1826
  tail call void (i8*, ...) @test_syntax_error(i8* %176, i8* null) #30, !dbg !1827
  unreachable, !dbg !1827

177:                                              ; preds = %172
  %178 = sext i32 %16 to i64, !dbg !1828
  %179 = getelementptr inbounds i8*, i8** %21, i64 %178, !dbg !1828
  %180 = load i8*, i8** %179, align 8, !dbg !1828, !tbaa !612
  %181 = call i32 @stat(i8* %180, %struct.stat* nonnull %6) #27, !dbg !1829
  %182 = icmp eq i32 %181, 0, !dbg !1830
  br i1 %182, label %183, label %294, !dbg !1831

183:                                              ; preds = %177
  %184 = load i8**, i8*** @argv, align 8, !dbg !1832, !tbaa !612
  %185 = add nsw i32 %16, 2, !dbg !1833
  %186 = sext i32 %185 to i64, !dbg !1832
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186, !dbg !1832
  %188 = load i8*, i8** %187, align 8, !dbg !1832, !tbaa !612
  %189 = call i32 @stat(i8* %188, %struct.stat* nonnull %7) #27, !dbg !1834
  %190 = icmp eq i32 %189, 0, !dbg !1835
  br i1 %190, label %191, label %294, !dbg !1836

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1837
  %193 = load i64, i64* %192, align 8, !dbg !1837, !tbaa !1838
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1839
  %195 = load i64, i64* %194, align 8, !dbg !1839, !tbaa !1838
  %196 = icmp eq i64 %193, %195, !dbg !1840
  br i1 %196, label %197, label %294, !dbg !1841

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1842
  %199 = load i64, i64* %198, align 8, !dbg !1842, !tbaa !1843
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1844
  %201 = load i64, i64* %200, align 8, !dbg !1844, !tbaa !1843
  %202 = icmp eq i64 %199, %201, !dbg !1845
  br label %294

203:                                              ; preds = %106
  %204 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1846
  %205 = load i8, i8* %204, align 1, !dbg !1846, !tbaa !870
  %206 = icmp eq i8 %205, 116, !dbg !1847
  br i1 %206, label %207, label %255, !dbg !1848

207:                                              ; preds = %203
  %208 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1849
  %209 = load i8, i8* %208, align 1, !dbg !1849, !tbaa !870
  %210 = icmp eq i8 %209, 0, !dbg !1850
  br i1 %210, label %211, label %255, !dbg !1851

211:                                              ; preds = %207
  %212 = add nsw i32 %31, 3, !dbg !1852
  store i32 %212, i32* @pos, align 4, !dbg !1852, !tbaa !770
  %213 = or i1 %32, %0, !dbg !1853
  br i1 %213, label %214, label %216, !dbg !1853

214:                                              ; preds = %211
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 5) #27, !dbg !1855
  tail call void (i8*, ...) @test_syntax_error(i8* %215, i8* null) #30, !dbg !1856
  unreachable, !dbg !1856

216:                                              ; preds = %211
  %217 = sext i32 %16 to i64, !dbg !1857
  %218 = getelementptr inbounds i8*, i8** %21, i64 %217, !dbg !1857
  %219 = load i8*, i8** %218, align 8, !dbg !1857, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %219, metadata !1776, metadata !DIExpression()) #27, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1782, metadata !DIExpression()) #27, !dbg !1858
  %220 = bitcast %struct.stat* %2 to i8*, !dbg !1860
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %220) #27, !dbg !1860
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1783, metadata !DIExpression()) #27, !dbg !1861
  %221 = call i32 @stat(i8* %219, %struct.stat* nonnull %2) #27, !dbg !1862
  %222 = icmp eq i32 %221, 0, !dbg !1863
  call void @llvm.dbg.value(metadata i1 %222, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1858
  %223 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1864
  %224 = load i64, i64* %223, align 8, !dbg !1864
  %225 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1864
  %226 = load i64, i64* %225, align 8, !dbg !1864
  %227 = select i1 %222, i64 %226, i64 undef, !dbg !1864
  %228 = select i1 %222, i64 %224, i64 undef, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %228, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %227, metadata !1681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %220) #27, !dbg !1866
  call void @llvm.dbg.value(metadata i1 %222, metadata !1685, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1865
  %229 = load i8**, i8*** @argv, align 8, !dbg !1867, !tbaa !612
  %230 = add nsw i32 %16, 2, !dbg !1868
  %231 = sext i32 %230 to i64, !dbg !1867
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231, !dbg !1867
  %233 = load i8*, i8** %232, align 8, !dbg !1867, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %233, metadata !1776, metadata !DIExpression()) #27, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1782, metadata !DIExpression()) #27, !dbg !1869
  %234 = bitcast %struct.stat* %5 to i8*, !dbg !1871
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1871
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1783, metadata !DIExpression()) #27, !dbg !1872
  %235 = call i32 @stat(i8* %233, %struct.stat* nonnull %5) #27, !dbg !1873
  %236 = icmp eq i32 %235, 0, !dbg !1874
  call void @llvm.dbg.value(metadata i1 %236, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1869
  br i1 %236, label %238, label %237, !dbg !1875

237:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i64 %240, metadata !1684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %242, metadata !1684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1876
  call void @llvm.dbg.value(metadata i1 %236, metadata !1686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1865
  br label %294, !dbg !1877

238:                                              ; preds = %216
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1146, metadata !DIExpression()) #27, !dbg !1878
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1880
  %240 = load i64, i64* %239, align 8, !dbg !1880, !tbaa.struct !1141
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1880
  %242 = load i64, i64* %241, align 8, !dbg !1880, !tbaa.struct !1144
  call void @llvm.dbg.value(metadata i64 %240, metadata !1684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %242, metadata !1684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1876
  call void @llvm.dbg.value(metadata i1 %236, metadata !1686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1865
  %243 = icmp sge i64 %228, %240
  %244 = and i1 %222, %243, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %228, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %227, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %240, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %242, metadata !1157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1881
  br i1 %244, label %245, label %294, !dbg !1877

245:                                              ; preds = %238
  %246 = icmp sgt i64 %228, %240, !dbg !1883
  br i1 %246, label %294, label %247, !dbg !1884

247:                                              ; preds = %245
  %248 = icmp sgt i64 %227, -2, !dbg !1885
  tail call void @llvm.assume(i1 %248) #27, !dbg !1885
  %249 = icmp slt i64 %227, 2000000001, !dbg !1885
  tail call void @llvm.assume(i1 %249) #27, !dbg !1885
  %250 = icmp sgt i64 %242, -2, !dbg !1886
  tail call void @llvm.assume(i1 %250) #27, !dbg !1886
  %251 = icmp slt i64 %242, 2000000001, !dbg !1886
  tail call void @llvm.assume(i1 %251) #27, !dbg !1886
  %252 = sub nsw i64 %227, %242, !dbg !1887
  %253 = trunc i64 %252 to i32, !dbg !1888
  %254 = icmp slt i32 %253, 0, !dbg !1889
  br label %294, !dbg !1889

255:                                              ; preds = %203, %207, %165, %168, %114, %117, %106
  %256 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #27, !dbg !1890
  %257 = load i8**, i8*** @argv, align 8, !dbg !1891, !tbaa !612
  %258 = getelementptr inbounds i8*, i8** %257, i64 %33, !dbg !1891
  %259 = load i8*, i8** %258, align 8, !dbg !1891, !tbaa !612
  %260 = tail call i8* @quote(i8* %259) #27, !dbg !1892
  tail call void (i8*, ...) @test_syntax_error(i8* %256, i8* %260) #30, !dbg !1893
  unreachable, !dbg !1893

261:                                              ; preds = %30
  %262 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1894
  %263 = load i8, i8* %262, align 1, !dbg !1894, !tbaa !870
  switch i8 %263, label %279 [
    i8 0, label %268
    i8 61, label %264
  ], !dbg !1895

264:                                              ; preds = %261
  %265 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1896
  %266 = load i8, i8* %265, align 1, !dbg !1896, !tbaa !870
  %267 = icmp eq i8 %266, 0, !dbg !1896
  br i1 %267, label %268, label %279, !dbg !1897

268:                                              ; preds = %261, %264
  %269 = sext i32 %31 to i64, !dbg !1898
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1898
  %271 = load i8*, i8** %270, align 8, !dbg !1898, !tbaa !612
  %272 = add nsw i32 %31, 2, !dbg !1898
  %273 = sext i32 %272 to i64, !dbg !1898
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1898
  %275 = load i8*, i8** %274, align 8, !dbg !1898, !tbaa !612
  %276 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %271, i8* nonnull dereferenceable(1) %275) #28, !dbg !1898
  %277 = icmp eq i32 %276, 0, !dbg !1898
  call void @llvm.dbg.value(metadata i1 %277, metadata !1687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1899
  %278 = add nsw i32 %31, 3, !dbg !1900
  store i32 %278, i32* @pos, align 4, !dbg !1900, !tbaa !770
  br label %294

279:                                              ; preds = %261, %30, %264
  %280 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %35, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #28, !dbg !1901
  %281 = icmp eq i32 %280, 0, !dbg !1901
  br i1 %281, label %282, label %293, !dbg !1902

282:                                              ; preds = %279
  %283 = sext i32 %31 to i64, !dbg !1903
  %284 = getelementptr inbounds i8*, i8** %21, i64 %283, !dbg !1903
  %285 = load i8*, i8** %284, align 8, !dbg !1903, !tbaa !612
  %286 = add nsw i32 %31, 2, !dbg !1903
  %287 = sext i32 %286 to i64, !dbg !1903
  %288 = getelementptr inbounds i8*, i8** %21, i64 %287, !dbg !1903
  %289 = load i8*, i8** %288, align 8, !dbg !1903, !tbaa !612
  %290 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %285, i8* nonnull dereferenceable(1) %289) #28, !dbg !1903
  %291 = icmp ne i32 %290, 0, !dbg !1903
  call void @llvm.dbg.value(metadata i1 %291, metadata !1690, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1904
  %292 = add nsw i32 %31, 3, !dbg !1905
  store i32 %292, i32* @pos, align 4, !dbg !1905, !tbaa !770
  br label %294

293:                                              ; preds = %279
  tail call void @abort() #29, !dbg !1906
  unreachable, !dbg !1906

294:                                              ; preds = %247, %245, %157, %155, %238, %237, %148, %147, %177, %183, %191, %197, %282, %268, %104
  %295 = phi i1 [ %105, %104 ], [ %291, %282 ], [ %277, %268 ], [ false, %191 ], [ false, %183 ], [ false, %177 ], [ %202, %197 ], [ false, %148 ], [ %132, %147 ], [ true, %238 ], [ false, %237 ], [ %164, %157 ], [ true, %155 ], [ %254, %247 ], [ false, %245 ], !dbg !1693
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #27, !dbg !1907
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #27, !dbg !1907
  ret i1 %295, !dbg !1907
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8* %0) unnamed_addr #8 !dbg !1908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1912, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8* %0, metadata !1913, metadata !DIExpression()), !dbg !1915
  %2 = tail call i16** @__ctype_b_loc() #31, !dbg !1915
  %3 = load i16*, i16** %2, align 8, !tbaa !612
  br label %4, !dbg !1916

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1918
  call void @llvm.dbg.value(metadata i8* %5, metadata !1913, metadata !DIExpression()), !dbg !1915
  %6 = load i8, i8* %5, align 1, !dbg !1919, !tbaa !870
  %7 = zext i8 %6 to i64, !dbg !1919
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1919
  %9 = load i16, i16* %8, align 2, !dbg !1919, !tbaa !1921
  %10 = and i16 %9, 1, !dbg !1919
  %11 = icmp eq i16 %10, 0, !dbg !1923
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %12, metadata !1913, metadata !DIExpression()), !dbg !1915
  br i1 %11, label %13, label %4, !dbg !1923, !llvm.loop !1925

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1927
  %15 = icmp eq i8 %6, 45, !dbg !1929
  %16 = zext i1 %15 to i64, !dbg !1929
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1929
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1929
  call void @llvm.dbg.value(metadata i8* undef, metadata !1914, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8* %18, metadata !1913, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8* %18, metadata !1913, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1915
  %19 = load i8, i8* %18, align 1, !dbg !1930, !tbaa !870
  %20 = sext i8 %19 to i32, !dbg !1930
  %21 = add nsw i32 %20, -48, !dbg !1930
  %22 = icmp ult i32 %21, 10, !dbg !1930
  br i1 %22, label %23, label %50, !dbg !1932

23:                                               ; preds = %13, %23
  %24 = phi i8* [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1933
  call void @llvm.dbg.value(metadata i8* %25, metadata !1913, metadata !DIExpression()), !dbg !1915
  %26 = load i8, i8* %25, align 1, !dbg !1934, !tbaa !870
  %27 = sext i8 %26 to i32, !dbg !1934
  %28 = add nsw i32 %27, -48, !dbg !1934
  %29 = icmp ult i32 %28, 10, !dbg !1934
  br i1 %29, label %23, label %30, !dbg !1936, !llvm.loop !1937

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %25, metadata !1913, metadata !DIExpression()), !dbg !1915
  %31 = zext i8 %26 to i64, !dbg !1939
  %32 = getelementptr inbounds i16, i16* %3, i64 %31, !dbg !1939
  %33 = load i16, i16* %32, align 2, !dbg !1939, !tbaa !1921
  %34 = and i16 %33, 1, !dbg !1939
  %35 = icmp eq i16 %34, 0, !dbg !1940
  br i1 %35, label %45, label %36, !dbg !1940

36:                                               ; preds = %30, %36
  %37 = phi i8* [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata i8* %37, metadata !1913, metadata !DIExpression()), !dbg !1915
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %38, metadata !1913, metadata !DIExpression()), !dbg !1915
  %39 = load i8, i8* %38, align 1, !dbg !1939, !tbaa !870
  %40 = zext i8 %39 to i64, !dbg !1939
  %41 = getelementptr inbounds i16, i16* %3, i64 %40, !dbg !1939
  %42 = load i16, i16* %41, align 2, !dbg !1939, !tbaa !1921
  %43 = and i16 %42, 1, !dbg !1939
  %44 = icmp eq i16 %43, 0, !dbg !1940
  br i1 %44, label %45, label %36, !dbg !1940, !llvm.loop !1942

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !1939
  %47 = icmp eq i8 %46, 0, !dbg !1943
  br i1 %47, label %48, label %50, !dbg !1945

48:                                               ; preds = %45
  %49 = select i1 %14, i8* %12, i8* %5, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %49, metadata !1914, metadata !DIExpression()), !dbg !1915
  ret i8* %49, !dbg !1946

50:                                               ; preds = %45, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i32 5) #27, !dbg !1947
  %52 = tail call i8* @quote(i8* %0) #27, !dbg !1948
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #30, !dbg !1949
  unreachable, !dbg !1949
}

; Function Attrs: nofree nounwind
declare !dbg !1950 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1955 i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1959 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1961 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1962 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1963 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1968, metadata !DIExpression()), !dbg !1969
  store i8* %0, i8** @file_name, align 8, !dbg !1970, !tbaa !612
  ret void, !dbg !1971
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1972 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1974, metadata !DIExpression()), !dbg !1975
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1976, !tbaa !1977
  ret void, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1980 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1985, !tbaa !612
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1986
  %3 = icmp eq i32 %2, 0, !dbg !1987
  br i1 %3, label %22, label %4, !dbg !1988

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1989, !tbaa !1977, !range !1990
  %6 = icmp eq i8 %5, 0, !dbg !1989
  br i1 %6, label %11, label %7, !dbg !1991

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1992
  %9 = load i32, i32* %8, align 4, !dbg !1992, !tbaa !770
  %10 = icmp eq i32 %9, 32, !dbg !1993
  br i1 %10, label %22, label %11, !dbg !1994

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i32 5) #27, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %12, metadata !1982, metadata !DIExpression()), !dbg !1996
  %13 = load i8*, i8** @file_name, align 8, !dbg !1997, !tbaa !612
  %14 = icmp eq i8* %13, null, !dbg !1997
  %15 = tail call i32* @__errno_location() #31, !dbg !1999
  %16 = load i32, i32* %15, align 4, !dbg !1999, !tbaa !770
  br i1 %14, label %19, label %17, !dbg !2000

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !2001
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !2002
  br label %20, !dbg !2002

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.78, i64 0, i64 0), i8* %12) #27, !dbg !2003
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2004, !tbaa !770
  tail call void @_exit(i32 %21) #29, !dbg !2005
  unreachable, !dbg !2005

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2006, !tbaa !612
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !2008
  %25 = icmp eq i32 %24, 0, !dbg !2009
  br i1 %25, label %28, label %26, !dbg !2010

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2011, !tbaa !770
  tail call void @_exit(i32 %27) #29, !dbg !2012
  unreachable, !dbg !2012

28:                                               ; preds = %22
  ret void, !dbg !2013
}

declare !dbg !2014 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #15 !dbg !2018 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* %1, metadata !2024, metadata !DIExpression()), !dbg !2026
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %3, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i8 0, i8* %3, align 1, !dbg !2028, !tbaa !870
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2026
  call void @llvm.dbg.value(metadata i8* %6, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %5, metadata !2023, metadata !DIExpression()), !dbg !2026
  %7 = urem i64 %5, 10, !dbg !2029
  %8 = trunc i64 %7 to i8, !dbg !2032
  %9 = or i8 %8, 48, !dbg !2032
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %10, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i8 %9, i8* %10, align 1, !dbg !2034, !tbaa !870
  %11 = udiv i64 %5, 10, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %11, metadata !2023, metadata !DIExpression()), !dbg !2026
  %12 = icmp ult i64 %5, 10, !dbg !2036
  br i1 %12, label %13, label %4, !dbg !2037, !llvm.loop !2038

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2025, metadata !DIExpression()), !dbg !2026
  ret i8* %10, !dbg !2041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2044, metadata !DIExpression()), !dbg !2047
  %2 = icmp eq i8* %0, null, !dbg !2048
  br i1 %2, label %3, label %6, !dbg !2050

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2051, !tbaa !612
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.87, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !2053
  tail call void @abort() #29, !dbg !2054
  unreachable, !dbg !2054

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %7, metadata !2045, metadata !DIExpression()), !dbg !2047
  %8 = icmp eq i8* %7, null, !dbg !2056
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2057
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %10, metadata !2046, metadata !DIExpression()), !dbg !2047
  %11 = ptrtoint i8* %10 to i64, !dbg !2058
  %12 = ptrtoint i8* %0 to i64, !dbg !2058
  %13 = sub i64 %11, %12, !dbg !2058
  %14 = icmp sgt i64 %13, 6, !dbg !2060
  br i1 %14, label %15, label %24, !dbg !2061

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2062
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.88, i64 0, i64 0), i64 7) #28, !dbg !2063
  %18 = icmp eq i32 %17, 0, !dbg !2064
  br i1 %18, label %19, label %24, !dbg !2065

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2044, metadata !DIExpression()), !dbg !2047
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i64 3) #28, !dbg !2066
  %21 = icmp eq i32 %20, 0, !dbg !2069
  br i1 %21, label %22, label %24, !dbg !2070

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %23, metadata !2044, metadata !DIExpression()), !dbg !2047
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2073, !tbaa !612
  br label %24, !dbg !2074

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2044, metadata !DIExpression()), !dbg !2047
  store i8* %25, i8** @program_name, align 8, !dbg !2075, !tbaa !612
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2076, !tbaa !612
  ret void, !dbg !2077
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2078 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2083, metadata !DIExpression()), !dbg !2086
  %2 = tail call i32* @__errno_location() #31, !dbg !2087
  %3 = load i32, i32* %2, align 4, !dbg !2087, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %3, metadata !2084, metadata !DIExpression()), !dbg !2086
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2088
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2088
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2088
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !2089
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2089
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2085, metadata !DIExpression()), !dbg !2086
  store i32 %3, i32* %2, align 4, !dbg !2090, !tbaa !770
  ret %struct.quoting_options* %8, !dbg !2091
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2092 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2098, metadata !DIExpression()), !dbg !2099
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2100
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2100
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2101
  %5 = load i32, i32* %4, align 8, !dbg !2101, !tbaa !2102
  ret i32 %5, !dbg !2104
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2105 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 %1, metadata !2110, metadata !DIExpression()), !dbg !2111
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2112
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2112
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2113
  store i32 %1, i32* %5, align 8, !dbg !2114, !tbaa !2102
  ret void, !dbg !2115
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2116 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2120, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %1, metadata !2121, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %2, metadata !2122, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %1, metadata !2123, metadata !DIExpression()), !dbg !2129
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2130
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2130
  %6 = lshr i8 %1, 5, !dbg !2131
  %7 = zext i8 %6 to i64, !dbg !2131
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2132
  call void @llvm.dbg.value(metadata i32* %8, metadata !2125, metadata !DIExpression()), !dbg !2129
  %9 = and i8 %1, 31, !dbg !2133
  %10 = zext i8 %9 to i32, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %10, metadata !2127, metadata !DIExpression()), !dbg !2129
  %11 = load i32, i32* %8, align 4, !dbg !2134, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !2135
  %13 = and i32 %12, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %13, metadata !2128, metadata !DIExpression()), !dbg !2129
  %14 = and i32 %2, 1, !dbg !2137
  %15 = xor i32 %13, %14, !dbg !2138
  %16 = shl i32 %15, %10, !dbg !2139
  %17 = xor i32 %16, %11, !dbg !2140
  store i32 %17, i32* %8, align 4, !dbg !2140, !tbaa !770
  ret i32 %13, !dbg !2141
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2142 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2146, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1, metadata !2147, metadata !DIExpression()), !dbg !2149
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2150
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2152
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2146, metadata !DIExpression()), !dbg !2149
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2153
  %6 = load i32, i32* %5, align 4, !dbg !2153, !tbaa !2154
  call void @llvm.dbg.value(metadata i32 %6, metadata !2148, metadata !DIExpression()), !dbg !2149
  store i32 %1, i32* %5, align 4, !dbg !2155, !tbaa !2154
  ret i32 %6, !dbg !2156
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2157 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %1, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %2, metadata !2163, metadata !DIExpression()), !dbg !2164
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2165
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression()), !dbg !2164
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2168
  store i32 10, i32* %6, align 8, !dbg !2169, !tbaa !2102
  %7 = icmp ne i8* %1, null, !dbg !2170
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2172
  br i1 %9, label %11, label %10, !dbg !2172

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2173
  unreachable, !dbg !2173

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2174
  store i8* %1, i8** %12, align 8, !dbg !2175, !tbaa !2176
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2177
  store i8* %2, i8** %13, align 8, !dbg !2178, !tbaa !2179
  ret void, !dbg !2180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2185, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %1, metadata !2186, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %2, metadata !2187, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %3, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2189, metadata !DIExpression()), !dbg !2193
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2194
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2190, metadata !DIExpression()), !dbg !2193
  %8 = tail call i32* @__errno_location() #31, !dbg !2195
  %9 = load i32, i32* %8, align 4, !dbg !2195, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %9, metadata !2191, metadata !DIExpression()), !dbg !2193
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2196
  %11 = load i32, i32* %10, align 8, !dbg !2196, !tbaa !2102
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2197
  %13 = load i32, i32* %12, align 4, !dbg !2197, !tbaa !2154
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2198
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2199
  %16 = load i8*, i8** %15, align 8, !dbg !2199, !tbaa !2176
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2200
  %18 = load i8*, i8** %17, align 8, !dbg !2200, !tbaa !2179
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2201
  call void @llvm.dbg.value(metadata i64 %19, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i32 %9, i32* %8, align 4, !dbg !2202, !tbaa !770
  ret i64 %19, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2204 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %1, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %2, metadata !2212, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %3, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %4, metadata !2214, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %5, metadata !2215, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32* %6, metadata !2216, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %7, metadata !2217, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %8, metadata !2218, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* null, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2223, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2280
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2281
  %14 = icmp eq i64 %13, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i1 %14, metadata !2225, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2280
  %15 = lshr i32 %5, 1, !dbg !2283
  %16 = trunc i32 %15 to i8, !dbg !2283
  %17 = and i8 %16, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i8 %17, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2229, metadata !DIExpression()), !dbg !2280
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2284

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2285
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2286
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2287
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2288
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2280
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2289
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2290
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2291
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %38, metadata !2229, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %37, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %36, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %35, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %34, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %33, metadata !2224, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %32, metadata !2223, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %31, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %30, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %29, metadata !2218, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %28, metadata !2217, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %27, metadata !2214, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2274), !dbg !2292
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
  ], !dbg !2293

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 5, metadata !2214, metadata !DIExpression()), !dbg !2280
  br label %92, !dbg !2294

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 5, metadata !2214, metadata !DIExpression()), !dbg !2280
  %42 = and i8 %35, 1, !dbg !2296
  %43 = icmp eq i8 %42, 0, !dbg !2296
  br i1 %43, label %44, label %92, !dbg !2294

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2298
  br i1 %45, label %92, label %46, !dbg !2301

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2298, !tbaa !870
  br label %92, !dbg !2298

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.100, i64 0, i64 0), i32 %27), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %48, metadata !2217, metadata !DIExpression()), !dbg !2280
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i32 %27), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %49, metadata !2218, metadata !DIExpression()), !dbg !2280
  br label %50, !dbg !2307

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2218, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %51, metadata !2217, metadata !DIExpression()), !dbg !2280
  %53 = and i8 %35, 1, !dbg !2308
  %54 = icmp eq i8 %53, 0, !dbg !2308
  br i1 %54, label %55, label %70, !dbg !2310

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2220, metadata !DIExpression()), !dbg !2280
  %56 = load i8, i8* %51, align 1, !dbg !2311, !tbaa !870
  %57 = icmp eq i8 %56, 0, !dbg !2314
  br i1 %57, label %70, label %58, !dbg !2314

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %61, metadata !2220, metadata !DIExpression()), !dbg !2280
  %62 = icmp ult i64 %61, %39, !dbg !2315
  br i1 %62, label %63, label %65, !dbg !2318

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2315
  store i8 %59, i8* %64, align 1, !dbg !2315, !tbaa !870
  br label %65, !dbg !2315

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %66, metadata !2220, metadata !DIExpression()), !dbg !2280
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2319
  call void @llvm.dbg.value(metadata i8* %67, metadata !2222, metadata !DIExpression()), !dbg !2280
  %68 = load i8, i8* %67, align 1, !dbg !2311, !tbaa !870
  %69 = icmp eq i8 %68, 0, !dbg !2314
  br i1 %69, label %70, label %58, !dbg !2314, !llvm.loop !2320

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2322
  call void @llvm.dbg.value(metadata i64 %71, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2224, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %52, metadata !2222, metadata !DIExpression()), !dbg !2280
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %72, metadata !2223, metadata !DIExpression()), !dbg !2280
  br label %92, !dbg !2324

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2224, metadata !DIExpression()), !dbg !2280
  br label %74, !dbg !2325

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %75, metadata !2224, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2226, metadata !DIExpression()), !dbg !2280
  br label %76, !dbg !2326

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2288
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %78, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %77, metadata !2224, metadata !DIExpression()), !dbg !2280
  %79 = and i8 %78, 1, !dbg !2327
  %80 = icmp eq i8 %79, 0, !dbg !2327
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2329
  br label %82, !dbg !2329

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2280
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8 %84, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %83, metadata !2224, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 2, metadata !2214, metadata !DIExpression()), !dbg !2280
  %85 = and i8 %84, 1, !dbg !2330
  %86 = icmp eq i8 %85, 0, !dbg !2330
  br i1 %86, label %87, label %92, !dbg !2332

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2333
  br i1 %88, label %92, label %89, !dbg !2336

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2333, !tbaa !870
  br label %92, !dbg !2333

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2226, metadata !DIExpression()), !dbg !2280
  br label %92, !dbg !2337

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2338
  unreachable, !dbg !2338

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2322
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %40 ], !dbg !2280
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2280
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2280
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %100, metadata !2226, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %99, metadata !2224, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %98, metadata !2223, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %97, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %96, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %95, metadata !2218, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %94, metadata !2217, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %93, metadata !2214, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !2219, metadata !DIExpression()), !dbg !2280
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
  br label %121, !dbg !2339

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2340
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2322
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2285
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2289
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2290
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2291
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %128, metadata !2229, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %127, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %126, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %125, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %124, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %123, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %122, metadata !2219, metadata !DIExpression()), !dbg !2280
  %130 = icmp eq i64 %125, -1, !dbg !2341
  br i1 %130, label %131, label %135, !dbg !2342

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2343
  %133 = load i8, i8* %132, align 1, !dbg !2343, !tbaa !870
  %134 = icmp eq i8 %133, 0, !dbg !2344
  br i1 %134, label %587, label %137, !dbg !2345

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2346
  br i1 %136, label %587, label %137, !dbg !2345

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2237, metadata !DIExpression()), !dbg !2347
  br i1 %106, label %138, label %153, !dbg !2348

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2350
  %140 = and i1 %107, %130, !dbg !2351
  br i1 %140, label %141, label %143, !dbg !2351

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %142, metadata !2213, metadata !DIExpression()), !dbg !2280
  br label %143, !dbg !2353

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2353
  call void @llvm.dbg.value(metadata i64 %144, metadata !2213, metadata !DIExpression()), !dbg !2280
  %145 = icmp ugt i64 %139, %144, !dbg !2354
  br i1 %145, label %153, label %146, !dbg !2355

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2356
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2357
  %149 = icmp ne i32 %148, 0, !dbg !2358
  %150 = or i1 %149, %109, !dbg !2359
  %151 = xor i1 %149, true, !dbg !2359
  %152 = zext i1 %151 to i8, !dbg !2359
  br i1 %150, label %153, label %646, !dbg !2359

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2347
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2347
  call void @llvm.dbg.value(metadata i8 %156, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %154, metadata !2213, metadata !DIExpression()), !dbg !2280
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2360
  %158 = load i8, i8* %157, align 1, !dbg !2360, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %158, metadata !2230, metadata !DIExpression()), !dbg !2347
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
  ], !dbg !2361

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2362

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2363

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2236, metadata !DIExpression()), !dbg !2347
  %162 = and i8 %126, 1, !dbg !2367
  %163 = icmp eq i8 %162, 0, !dbg !2367
  %164 = and i1 %110, %163, !dbg !2367
  br i1 %164, label %165, label %181, !dbg !2367

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2369
  br i1 %166, label %167, label %169, !dbg !2373

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2369
  store i8 39, i8* %168, align 1, !dbg !2369, !tbaa !870
  br label %169, !dbg !2369

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %170, metadata !2220, metadata !DIExpression()), !dbg !2280
  %171 = icmp ult i64 %170, %129, !dbg !2374
  br i1 %171, label %172, label %174, !dbg !2377

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2374
  store i8 36, i8* %173, align 1, !dbg !2374, !tbaa !870
  br label %174, !dbg !2374

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %175, metadata !2220, metadata !DIExpression()), !dbg !2280
  %176 = icmp ult i64 %175, %129, !dbg !2378
  br i1 %176, label %177, label %179, !dbg !2381

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2378
  store i8 39, i8* %178, align 1, !dbg !2378, !tbaa !870
  br label %179, !dbg !2378

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %180, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %181, !dbg !2382

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2280
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %183, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %182, metadata !2220, metadata !DIExpression()), !dbg !2280
  %184 = icmp ult i64 %182, %129, !dbg !2383
  br i1 %184, label %185, label %187, !dbg !2386

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2383
  store i8 92, i8* %186, align 1, !dbg !2383, !tbaa !870
  br label %187, !dbg !2383

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %188, metadata !2220, metadata !DIExpression()), !dbg !2280
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2387
  br i1 %191, label %192, label %473, !dbg !2387

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2389
  %194 = load i8, i8* %193, align 1, !dbg !2389, !tbaa !870
  %195 = add i8 %194, -48, !dbg !2390
  %196 = icmp ult i8 %195, 10, !dbg !2390
  br i1 %196, label %197, label %473, !dbg !2390

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2391
  br i1 %198, label %199, label %201, !dbg !2395

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2391
  store i8 48, i8* %200, align 1, !dbg !2391, !tbaa !870
  br label %201, !dbg !2391

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %202, metadata !2220, metadata !DIExpression()), !dbg !2280
  %203 = icmp ult i64 %202, %129, !dbg !2396
  br i1 %203, label %204, label %206, !dbg !2399

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2396
  store i8 48, i8* %205, align 1, !dbg !2396, !tbaa !870
  br label %206, !dbg !2396

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %207, metadata !2220, metadata !DIExpression()), !dbg !2280
  br label %473, !dbg !2400

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2401

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2402

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2403

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2405
  br i1 %214, label %215, label %473, !dbg !2405

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2407
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2408
  %218 = load i8, i8* %217, align 1, !dbg !2408, !tbaa !870
  %219 = icmp eq i8 %218, 63, !dbg !2409
  br i1 %219, label %220, label %473, !dbg !2410

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2411
  %222 = load i8, i8* %221, align 1, !dbg !2411, !tbaa !870
  %223 = sext i8 %222 to i32, !dbg !2411
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
  ], !dbg !2412

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2413

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 undef, metadata !2219, metadata !DIExpression()), !dbg !2280
  %226 = icmp ult i64 %123, %129, !dbg !2415
  br i1 %226, label %227, label %229, !dbg !2418

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2415
  store i8 63, i8* %228, align 1, !dbg !2415, !tbaa !870
  br label %229, !dbg !2415

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %230, metadata !2220, metadata !DIExpression()), !dbg !2280
  %231 = icmp ult i64 %230, %129, !dbg !2419
  br i1 %231, label %232, label %234, !dbg !2422

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2419
  store i8 34, i8* %233, align 1, !dbg !2419, !tbaa !870
  br label %234, !dbg !2419

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %235, metadata !2220, metadata !DIExpression()), !dbg !2280
  %236 = icmp ult i64 %235, %129, !dbg !2423
  br i1 %236, label %237, label %239, !dbg !2426

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2423
  store i8 34, i8* %238, align 1, !dbg !2423, !tbaa !870
  br label %239, !dbg !2423

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %240, metadata !2220, metadata !DIExpression()), !dbg !2280
  %241 = icmp ult i64 %240, %129, !dbg !2427
  br i1 %241, label %242, label %244, !dbg !2430

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2427
  store i8 63, i8* %243, align 1, !dbg !2427, !tbaa !870
  br label %244, !dbg !2427

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %245, metadata !2220, metadata !DIExpression()), !dbg !2280
  br label %473, !dbg !2431

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2234, metadata !DIExpression()), !dbg !2347
  br label %256, !dbg !2432

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2234, metadata !DIExpression()), !dbg !2347
  br label %256, !dbg !2433

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2234, metadata !DIExpression()), !dbg !2347
  br label %254, !dbg !2434

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2234, metadata !DIExpression()), !dbg !2347
  br label %254, !dbg !2435

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2234, metadata !DIExpression()), !dbg !2347
  br label %256, !dbg !2436

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2234, metadata !DIExpression()), !dbg !2347
  br i1 %110, label %252, label %253, !dbg !2437

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2438

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2441

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2443
  call void @llvm.dbg.value(metadata i8 %255, metadata !2234, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2275), !dbg !2444
  br i1 %111, label %256, label %631, !dbg !2445

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2443
  call void @llvm.dbg.value(metadata i8 %257, metadata !2234, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.label(metadata !2276), !dbg !2447
  br i1 %102, label %495, label %473, !dbg !2448

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2449

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2450, !tbaa !870
  %261 = icmp eq i8 %260, 0, !dbg !2452
  br i1 %261, label %262, label %473, !dbg !2453

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2454
  br i1 %263, label %264, label %473, !dbg !2456

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2237, metadata !DIExpression()), !dbg !2347
  br label %265, !dbg !2457

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2347
  call void @llvm.dbg.value(metadata i8 %266, metadata !2237, metadata !DIExpression()), !dbg !2347
  br i1 %111, label %473, label %631, !dbg !2458

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2237, metadata !DIExpression()), !dbg !2347
  br i1 %110, label %268, label %473, !dbg !2460

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2461

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2464
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2466
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2466
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %274, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %273, metadata !2221, metadata !DIExpression()), !dbg !2280
  %275 = icmp ult i64 %123, %274, !dbg !2467
  br i1 %275, label %276, label %278, !dbg !2470

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2467
  store i8 39, i8* %277, align 1, !dbg !2467, !tbaa !870
  br label %278, !dbg !2467

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %279, metadata !2220, metadata !DIExpression()), !dbg !2280
  %280 = icmp ult i64 %279, %274, !dbg !2471
  br i1 %280, label %281, label %283, !dbg !2474

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2471
  store i8 92, i8* %282, align 1, !dbg !2471, !tbaa !870
  br label %283, !dbg !2471

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %284, metadata !2220, metadata !DIExpression()), !dbg !2280
  %285 = icmp ult i64 %284, %274, !dbg !2475
  br i1 %285, label %286, label %288, !dbg !2478

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2475
  store i8 39, i8* %287, align 1, !dbg !2475, !tbaa !870
  br label %288, !dbg !2475

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %289, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %473, !dbg !2479

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2480

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2238, metadata !DIExpression()), !dbg !2481
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2482
  %293 = load i16*, i16** %292, align 8, !dbg !2482, !tbaa !612
  %294 = zext i8 %158 to i64, !dbg !2482
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2482
  %296 = load i16, i16* %295, align 2, !dbg !2482, !tbaa !1921
  %297 = lshr i16 %296, 14, !dbg !2484
  %298 = trunc i16 %297 to i8, !dbg !2484
  %299 = and i8 %298, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i8 %354, metadata !2241, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %355, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %306, metadata !2213, metadata !DIExpression()), !dbg !2280
  %300 = icmp eq i8 %299, 0, !dbg !2485
  call void @llvm.dbg.value(metadata i1 %357, metadata !2237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2347
  br label %359, !dbg !2486

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2242, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %23, metadata !2489, metadata !DIExpression()) #27, !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #27, !dbg !2497
  call void @llvm.dbg.value(metadata i64 8, metadata !2496, metadata !DIExpression()) #27, !dbg !2497
  store i64 0, i64* %10, align 8, !dbg !2499
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 1, metadata !2241, metadata !DIExpression()), !dbg !2481
  %302 = icmp eq i64 %154, -1, !dbg !2500
  br i1 %302, label %303, label %305, !dbg !2502

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %304, metadata !2213, metadata !DIExpression()), !dbg !2280
  br label %305, !dbg !2504

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2347
  call void @llvm.dbg.value(metadata i64 %306, metadata !2213, metadata !DIExpression()), !dbg !2280
  br label %307, !dbg !2505

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2506
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2507
  call void @llvm.dbg.value(metadata i8 %309, metadata !2241, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %308, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2508
  %310 = add i64 %308, %122, !dbg !2509
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2510
  %312 = sub i64 %306, %310, !dbg !2511
  call void @llvm.dbg.value(metadata i32* %12, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2512
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %313, metadata !2263, metadata !DIExpression()), !dbg !2512
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2514

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2238, metadata !DIExpression()), !dbg !2481
  %315 = icmp ugt i64 %306, %310, !dbg !2515
  br i1 %315, label %316, label %341, !dbg !2517

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2518
  br label %318, !dbg !2518

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2238, metadata !DIExpression()), !dbg !2481
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2519
  %322 = load i8, i8* %321, align 1, !dbg !2519, !tbaa !870
  %323 = icmp eq i8 %322, 0, !dbg !2517
  br i1 %323, label %341, label %324, !dbg !2518

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %325, metadata !2238, metadata !DIExpression()), !dbg !2481
  %326 = add i64 %325, %122, !dbg !2521
  %327 = icmp ult i64 %326, %306, !dbg !2515
  br i1 %327, label %318, label %341, !dbg !2517, !llvm.loop !2522

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2523
  call void @llvm.dbg.value(metadata i64 1, metadata !2264, metadata !DIExpression()), !dbg !2524
  br i1 %330, label %331, label %344, !dbg !2523

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2264, metadata !DIExpression()), !dbg !2524
  %333 = add i64 %332, %310, !dbg !2525
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2528
  %335 = load i8, i8* %334, align 1, !dbg !2528, !tbaa !870
  %336 = sext i8 %335 to i32, !dbg !2528
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2529

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %338, metadata !2264, metadata !DIExpression()), !dbg !2524
  %339 = icmp eq i64 %338, %313, !dbg !2531
  br i1 %339, label %344, label %331, !dbg !2532, !llvm.loop !2533

340:                                              ; preds = %307
  br label %341, !dbg !2535

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2241, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 undef, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2535
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2536, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %345, metadata !2260, metadata !DIExpression()), !dbg !2512
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2538
  %347 = icmp eq i32 %346, 0, !dbg !2538
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2539
  call void @llvm.dbg.value(metadata i8 %348, metadata !2241, metadata !DIExpression()), !dbg !2481
  %349 = add i64 %313, %308, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %349, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2535
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2541
  %351 = icmp eq i32 %350, 0, !dbg !2542
  br i1 %351, label %307, label %353, !dbg !2543, !llvm.loop !2544

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2241, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 undef, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2546
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2546
  call void @llvm.dbg.value(metadata i8 %354, metadata !2241, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %355, metadata !2238, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %306, metadata !2213, metadata !DIExpression()), !dbg !2280
  %356 = and i8 %354, 1, !dbg !2485
  %357 = icmp eq i8 %356, 0, !dbg !2485
  call void @llvm.dbg.value(metadata i1 %357, metadata !2237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2347
  %358 = icmp ugt i64 %355, 1, !dbg !2547
  br i1 %358, label %367, label %359, !dbg !2486

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2548
  br i1 %364, label %367, label %365, !dbg !2548

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %472, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %441, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %440, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %439, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %438, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %371, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %437, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %375, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %372, metadata !2271, metadata !DIExpression()), !dbg !2550
  %373 = and i1 %102, %368
  br label %374, !dbg !2551

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2340
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2280
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2289
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2347
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2347
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2552
  call void @llvm.dbg.value(metadata i8 %380, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %379, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %378, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %377, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %376, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %375, metadata !2219, metadata !DIExpression()), !dbg !2280
  br i1 %373, label %381, label %427, !dbg !2553

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2558

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2236, metadata !DIExpression()), !dbg !2347
  %383 = and i8 %377, 1, !dbg !2561
  %384 = icmp eq i8 %383, 0, !dbg !2561
  %385 = and i1 %110, %384, !dbg !2561
  br i1 %385, label %386, label %402, !dbg !2561

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2563
  br i1 %387, label %388, label %390, !dbg !2567

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2563
  store i8 39, i8* %389, align 1, !dbg !2563, !tbaa !870
  br label %390, !dbg !2563

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %391, metadata !2220, metadata !DIExpression()), !dbg !2280
  %392 = icmp ult i64 %391, %129, !dbg !2568
  br i1 %392, label %393, label %395, !dbg !2571

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2568
  store i8 36, i8* %394, align 1, !dbg !2568, !tbaa !870
  br label %395, !dbg !2568

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %396, metadata !2220, metadata !DIExpression()), !dbg !2280
  %397 = icmp ult i64 %396, %129, !dbg !2572
  br i1 %397, label %398, label %400, !dbg !2575

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2572
  store i8 39, i8* %399, align 1, !dbg !2572, !tbaa !870
  br label %400, !dbg !2572

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %401, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %402, !dbg !2576

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2280
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %404, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %403, metadata !2220, metadata !DIExpression()), !dbg !2280
  %405 = icmp ult i64 %403, %129, !dbg !2577
  br i1 %405, label %406, label %408, !dbg !2580

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2577
  store i8 92, i8* %407, align 1, !dbg !2577, !tbaa !870
  br label %408, !dbg !2577

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %409, metadata !2220, metadata !DIExpression()), !dbg !2280
  %410 = icmp ult i64 %409, %129, !dbg !2581
  br i1 %410, label %411, label %415, !dbg !2584

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2581
  %413 = or i8 %412, 48, !dbg !2581
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2581
  store i8 %413, i8* %414, align 1, !dbg !2581, !tbaa !870
  br label %415, !dbg !2581

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %416, metadata !2220, metadata !DIExpression()), !dbg !2280
  %417 = icmp ult i64 %416, %129, !dbg !2585
  br i1 %417, label %418, label %423, !dbg !2588

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2585
  %420 = and i8 %419, 7, !dbg !2585
  %421 = or i8 %420, 48, !dbg !2585
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2585
  store i8 %421, i8* %422, align 1, !dbg !2585, !tbaa !870
  br label %423, !dbg !2585

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %424, metadata !2220, metadata !DIExpression()), !dbg !2280
  %425 = and i8 %378, 7, !dbg !2589
  %426 = or i8 %425, 48, !dbg !2590
  call void @llvm.dbg.value(metadata i8 %426, metadata !2230, metadata !DIExpression()), !dbg !2347
  br label %436, !dbg !2591

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2592
  %429 = icmp eq i8 %428, 0, !dbg !2592
  br i1 %429, label %436, label %430, !dbg !2594

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2595
  br i1 %431, label %432, label %434, !dbg !2599

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2595
  store i8 92, i8* %433, align 1, !dbg !2595, !tbaa !870
  br label %434, !dbg !2595

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %435, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2347
  br label %436, !dbg !2600

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2280
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2289
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2347
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2347
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2347
  call void @llvm.dbg.value(metadata i8 %441, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %440, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %439, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %438, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %437, metadata !2220, metadata !DIExpression()), !dbg !2280
  %442 = add i64 %375, 1, !dbg !2601
  %443 = icmp ugt i64 %372, %442, !dbg !2603
  br i1 %443, label %444, label %471, !dbg !2604

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2605
  %446 = icmp ne i8 %445, 0, !dbg !2605
  %447 = and i8 %441, 1, !dbg !2605
  %448 = icmp eq i8 %447, 0, !dbg !2605
  %449 = and i1 %446, %448, !dbg !2605
  br i1 %449, label %450, label %461, !dbg !2605

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2608
  br i1 %451, label %452, label %454, !dbg !2612

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2608
  store i8 39, i8* %453, align 1, !dbg !2608, !tbaa !870
  br label %454, !dbg !2608

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %455, metadata !2220, metadata !DIExpression()), !dbg !2280
  %456 = icmp ult i64 %455, %129, !dbg !2613
  br i1 %456, label %457, label %459, !dbg !2616

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2613
  store i8 39, i8* %458, align 1, !dbg !2613, !tbaa !870
  br label %459, !dbg !2613

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %460, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %461, !dbg !2617

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2618
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %463, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %462, metadata !2220, metadata !DIExpression()), !dbg !2280
  %464 = icmp ult i64 %462, %129, !dbg !2619
  br i1 %464, label %465, label %467, !dbg !2622

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2619
  store i8 %439, i8* %466, align 1, !dbg !2619, !tbaa !870
  br label %467, !dbg !2619

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %468, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %442, metadata !2219, metadata !DIExpression()), !dbg !2280
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2623
  %470 = load i8, i8* %469, align 1, !dbg !2623, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %470, metadata !2230, metadata !DIExpression()), !dbg !2347
  br label %374, !dbg !2624, !llvm.loop !2625

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %472, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %441, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %440, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %439, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %438, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %371, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %437, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %375, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2340
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2280
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2285
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2628
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2280
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2280
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2347
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2347
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2347
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %482, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %481, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %156, metadata !2235, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %480, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %479, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %478, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %477, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %476, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %475, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %474, metadata !2219, metadata !DIExpression()), !dbg !2280
  br i1 %116, label %494, label %484, !dbg !2629

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2631
  %486 = zext i8 %485 to i64, !dbg !2631
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2632
  %488 = load i32, i32* %487, align 4, !dbg !2632, !tbaa !770
  %489 = and i8 %480, 31, !dbg !2633
  %490 = zext i8 %489 to i32, !dbg !2633
  %491 = shl nuw i32 1, %490, !dbg !2634
  %492 = and i32 %488, %491, !dbg !2634
  %493 = icmp eq i32 %492, 0, !dbg !2634
  br i1 %493, label %494, label %495, !dbg !2635

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2636

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2637
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2280
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2285
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2628
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2289
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2290
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2347
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2347
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %503, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %502, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %501, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %500, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %499, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %498, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %497, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %496, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2277), !dbg !2638
  br i1 %109, label %505, label %635, !dbg !2639

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2236, metadata !DIExpression()), !dbg !2347
  %506 = and i8 %500, 1, !dbg !2641
  %507 = icmp eq i8 %506, 0, !dbg !2641
  %508 = and i1 %110, %507, !dbg !2641
  br i1 %508, label %509, label %525, !dbg !2641

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2643
  br i1 %510, label %511, label %513, !dbg !2647

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2643
  store i8 39, i8* %512, align 1, !dbg !2643, !tbaa !870
  br label %513, !dbg !2643

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %514, metadata !2220, metadata !DIExpression()), !dbg !2280
  %515 = icmp ult i64 %514, %504, !dbg !2648
  br i1 %515, label %516, label %518, !dbg !2651

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2648
  store i8 36, i8* %517, align 1, !dbg !2648, !tbaa !870
  br label %518, !dbg !2648

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %519, metadata !2220, metadata !DIExpression()), !dbg !2280
  %520 = icmp ult i64 %519, %504, !dbg !2652
  br i1 %520, label %521, label %523, !dbg !2655

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2652
  store i8 39, i8* %522, align 1, !dbg !2652, !tbaa !870
  br label %523, !dbg !2652

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %524, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 1, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %525, !dbg !2656

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2347
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %527, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %526, metadata !2220, metadata !DIExpression()), !dbg !2280
  %528 = icmp ult i64 %526, %504, !dbg !2657
  br i1 %528, label %529, label %531, !dbg !2660

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2657
  store i8 92, i8* %530, align 1, !dbg !2657, !tbaa !870
  br label %531, !dbg !2657

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %543, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %542, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %541, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %540, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %539, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %538, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %537, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %536, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %535, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %534, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2278), !dbg !2661
  br label %560, !dbg !2662

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2637
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2280
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2285
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2628
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2289
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2290
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2665
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2347
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2347
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %542, metadata !2237, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %541, metadata !2236, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %540, metadata !2230, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 %539, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %538, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %537, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %536, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %535, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %534, metadata !2219, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2278), !dbg !2661
  %544 = and i8 %538, 1, !dbg !2662
  %545 = icmp ne i8 %544, 0, !dbg !2662
  %546 = and i8 %541, 1, !dbg !2662
  %547 = icmp eq i8 %546, 0, !dbg !2662
  %548 = and i1 %545, %547, !dbg !2662
  br i1 %548, label %549, label %560, !dbg !2662

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2666
  br i1 %550, label %551, label %553, !dbg !2670

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2666
  store i8 39, i8* %552, align 1, !dbg !2666, !tbaa !870
  br label %553, !dbg !2666

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %554, metadata !2220, metadata !DIExpression()), !dbg !2280
  %555 = icmp ult i64 %554, %543, !dbg !2671
  br i1 %555, label %556, label %558, !dbg !2674

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2671
  store i8 39, i8* %557, align 1, !dbg !2671, !tbaa !870
  br label %558, !dbg !2671

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %559, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2280
  br label %560, !dbg !2675

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2347
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8 %569, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %568, metadata !2220, metadata !DIExpression()), !dbg !2280
  %570 = icmp ult i64 %568, %561, !dbg !2676
  br i1 %570, label %571, label %573, !dbg !2679

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2676
  store i8 %563, i8* %572, align 1, !dbg !2676, !tbaa !870
  br label %573, !dbg !2676

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %574, metadata !2220, metadata !DIExpression()), !dbg !2280
  %575 = icmp eq i8 %562, 0, !dbg !2680
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2682
  call void @llvm.dbg.value(metadata i8 %576, metadata !2229, metadata !DIExpression()), !dbg !2280
  br label %577, !dbg !2683

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2637
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2280
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2285
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2628
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2289
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2280
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2291
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %584, metadata !2229, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %583, metadata !2228, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %582, metadata !2227, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %581, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %580, metadata !2221, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %579, metadata !2220, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %578, metadata !2219, metadata !DIExpression()), !dbg !2280
  %586 = add i64 %578, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %586, metadata !2219, metadata !DIExpression()), !dbg !2280
  br label %121, !dbg !2685, !llvm.loop !2686

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2688
  %590 = and i1 %110, %589, !dbg !2690
  %591 = xor i1 %590, true, !dbg !2690
  %592 = or i1 %109, %591, !dbg !2690
  br i1 %592, label %593, label %635, !dbg !2690

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2691
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2691
  br i1 %597, label %598, label %607, !dbg !2691

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2693
  %600 = icmp eq i8 %599, 0, !dbg !2693
  br i1 %600, label %603, label %601, !dbg !2696

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2697
  br label %652, !dbg !2698

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2699
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2701
  br i1 %606, label %26, label %607, !dbg !2701

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2702
  %610 = and i1 %609, %608, !dbg !2704
  br i1 %610, label %611, label %626, !dbg !2704

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %123, metadata !2220, metadata !DIExpression()), !dbg !2280
  %612 = load i8, i8* %97, align 1, !dbg !2705, !tbaa !870
  %613 = icmp eq i8 %612, 0, !dbg !2708
  br i1 %613, label %626, label %614, !dbg !2708

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2222, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %617, metadata !2220, metadata !DIExpression()), !dbg !2280
  %618 = icmp ult i64 %617, %129, !dbg !2709
  br i1 %618, label %619, label %621, !dbg !2712

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2709
  store i8 %615, i8* %620, align 1, !dbg !2709, !tbaa !870
  br label %621, !dbg !2709

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %622, metadata !2220, metadata !DIExpression()), !dbg !2280
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %623, metadata !2222, metadata !DIExpression()), !dbg !2280
  %624 = load i8, i8* %623, align 1, !dbg !2705, !tbaa !870
  %625 = icmp eq i8 %624, 0, !dbg !2708
  br i1 %625, label %626, label %614, !dbg !2708, !llvm.loop !2714

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2322
  call void @llvm.dbg.value(metadata i64 %627, metadata !2220, metadata !DIExpression()), !dbg !2280
  %628 = icmp ult i64 %627, %129, !dbg !2716
  br i1 %628, label %629, label %652, !dbg !2718

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2719
  store i8 0, i8* %630, align 1, !dbg !2720, !tbaa !870
  br label %652, !dbg !2719

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %637, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2279), !dbg !2721
  %633 = icmp eq i8 %101, 0, !dbg !2722
  %634 = select i1 %633, i32 2, i32 4, !dbg !2722
  br label %642, !dbg !2722

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2211, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %637, metadata !2213, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.label(metadata !2279), !dbg !2721
  %639 = icmp eq i32 %93, 2, !dbg !2724
  %640 = icmp eq i8 %636, 0, !dbg !2722
  %641 = select i1 %640, i32 2, i32 4, !dbg !2722
  br i1 %639, label %642, label %646, !dbg !2722

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2722

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2214, metadata !DIExpression()), !dbg !2280
  %650 = and i32 %5, -3, !dbg !2725
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2726
  br label %652, !dbg !2727

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2728
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %1, metadata !2734, metadata !DIExpression()), !dbg !2737
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %3, metadata !2735, metadata !DIExpression()), !dbg !2737
  %4 = icmp eq i8* %3, %0, !dbg !2739
  br i1 %4, label %5, label %72, !dbg !2741

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2742
  call void @llvm.dbg.value(metadata i8* %6, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %6, metadata !2743, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* undef, metadata !2749, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 85, metadata !2750, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 84, metadata !2751, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 70, metadata !2752, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 45, metadata !2753, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 56, metadata !2754, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %7 = load i8, i8* %6, align 1, !dbg !2762, !tbaa !870
  %8 = and i8 %7, -33, !dbg !2762
  %9 = sext i8 %8 to i32, !dbg !2762
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2762

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2764, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* undef, metadata !2769, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 84, metadata !2770, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 70, metadata !2771, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 45, metadata !2772, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 56, metadata !2773, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2775, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 0, metadata !2777, metadata !DIExpression()), !dbg !2778
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2782
  %12 = load i8, i8* %11, align 1, !dbg !2782, !tbaa !870
  %13 = and i8 %12, -33, !dbg !2782
  %14 = icmp eq i8 %13, 84, !dbg !2782
  br i1 %14, label %15, label %69, !dbg !2782

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2784, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* undef, metadata !2789, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 70, metadata !2790, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 45, metadata !2791, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 56, metadata !2792, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2794, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2795, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2797
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2801
  %17 = load i8, i8* %16, align 1, !dbg !2801, !tbaa !870
  %18 = and i8 %17, -33, !dbg !2801
  %19 = icmp eq i8 %18, 70, !dbg !2801
  br i1 %19, label %20, label %69, !dbg !2801

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2803, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* undef, metadata !2808, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 45, metadata !2809, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 56, metadata !2810, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2815
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2819
  %22 = load i8, i8* %21, align 1, !dbg !2819, !tbaa !870
  %23 = icmp eq i8 %22, 45, !dbg !2819
  br i1 %23, label %24, label %69, !dbg !2821

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2822, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* undef, metadata !2827, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 56, metadata !2828, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2829, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2832, metadata !DIExpression()), !dbg !2833
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2837
  %26 = load i8, i8* %25, align 1, !dbg !2837, !tbaa !870
  %27 = icmp eq i8 %26, 56, !dbg !2837
  br i1 %27, label %28, label %69, !dbg !2839

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2840, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* undef, metadata !2845, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 0, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 0, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 0, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 0, metadata !2849, metadata !DIExpression()), !dbg !2850
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2854
  %30 = load i8, i8* %29, align 1, !dbg !2854, !tbaa !870
  %31 = icmp eq i8 %30, 0, !dbg !2854
  br i1 %31, label %32, label %69, !dbg !2856

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2857, !tbaa !870
  %34 = icmp eq i8 %33, 96, !dbg !2858
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.104, i64 0, i64 0), !dbg !2857
  br label %72, !dbg !2859

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2764, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* undef, metadata !2769, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 66, metadata !2770, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 49, metadata !2771, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 56, metadata !2772, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 48, metadata !2773, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 51, metadata !2774, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 48, metadata !2775, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 0, metadata !2776, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 0, metadata !2777, metadata !DIExpression()), !dbg !2860
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2864
  %38 = load i8, i8* %37, align 1, !dbg !2864, !tbaa !870
  %39 = and i8 %38, -33, !dbg !2864
  %40 = icmp eq i8 %39, 66, !dbg !2864
  br i1 %40, label %41, label %69, !dbg !2864

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2784, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* undef, metadata !2789, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 49, metadata !2790, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 56, metadata !2791, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 48, metadata !2792, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 51, metadata !2793, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 48, metadata !2794, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 0, metadata !2795, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2865
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2867
  %43 = load i8, i8* %42, align 1, !dbg !2867, !tbaa !870
  %44 = icmp eq i8 %43, 49, !dbg !2867
  br i1 %44, label %45, label %69, !dbg !2868

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2803, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* undef, metadata !2808, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 56, metadata !2809, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 48, metadata !2810, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 51, metadata !2811, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 48, metadata !2812, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2869
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2871
  %47 = load i8, i8* %46, align 1, !dbg !2871, !tbaa !870
  %48 = icmp eq i8 %47, 56, !dbg !2871
  br i1 %48, label %49, label %69, !dbg !2872

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2822, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* undef, metadata !2827, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 48, metadata !2828, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 51, metadata !2829, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 48, metadata !2830, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2831, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2832, metadata !DIExpression()), !dbg !2873
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2875
  %51 = load i8, i8* %50, align 1, !dbg !2875, !tbaa !870
  %52 = icmp eq i8 %51, 48, !dbg !2875
  br i1 %52, label %53, label %69, !dbg !2876

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2840, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* undef, metadata !2845, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 51, metadata !2846, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 48, metadata !2847, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2848, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2849, metadata !DIExpression()), !dbg !2877
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2879
  %55 = load i8, i8* %54, align 1, !dbg !2879, !tbaa !870
  %56 = icmp eq i8 %55, 51, !dbg !2879
  br i1 %56, label %57, label %69, !dbg !2880

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2881, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* undef, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 48, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2890
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2894
  %59 = load i8, i8* %58, align 1, !dbg !2894, !tbaa !870
  %60 = icmp eq i8 %59, 48, !dbg !2894
  br i1 %60, label %61, label %69, !dbg !2896

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2897, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* undef, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !2905
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2909
  %63 = load i8, i8* %62, align 1, !dbg !2909, !tbaa !870
  %64 = icmp eq i8 %63, 0, !dbg !2909
  br i1 %64, label %65, label %69, !dbg !2911

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2912, !tbaa !870
  %67 = icmp eq i8 %66, 96, !dbg !2913
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.106, i64 0, i64 0), !dbg !2912
  br label %72, !dbg !2914

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2915
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), !dbg !2916
  br label %72, !dbg !2917

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2737
  ret i8* %73, !dbg !2918
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !2919 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2923 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #27, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #27, !dbg !2950
  call void @llvm.dbg.value(metadata i64* null, metadata !2943, metadata !DIExpression()) #27, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2944, metadata !DIExpression()) #27, !dbg !2950
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2952
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2952
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2945, metadata !DIExpression()) #27, !dbg !2950
  %6 = tail call i32* @__errno_location() #31, !dbg !2953
  %7 = load i32, i32* %6, align 4, !dbg !2953, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %7, metadata !2946, metadata !DIExpression()) #27, !dbg !2950
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2954
  %9 = load i32, i32* %8, align 4, !dbg !2954, !tbaa !2154
  %10 = or i32 %9, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %10, metadata !2947, metadata !DIExpression()) #27, !dbg !2950
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2956
  %12 = load i32, i32* %11, align 8, !dbg !2956, !tbaa !2102
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2957
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2958
  %15 = load i8*, i8** %14, align 8, !dbg !2958, !tbaa !2176
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2959
  %17 = load i8*, i8** %16, align 8, !dbg !2959, !tbaa !2179
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2960
  %19 = add i64 %18, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %19, metadata !2948, metadata !DIExpression()) #27, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %19, metadata !2962, metadata !DIExpression()) #27, !dbg !2967
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %20, metadata !2949, metadata !DIExpression()) #27, !dbg !2950
  %21 = load i32, i32* %11, align 8, !dbg !2970, !tbaa !2102
  %22 = load i8*, i8** %14, align 8, !dbg !2971, !tbaa !2176
  %23 = load i8*, i8** %16, align 8, !dbg !2972, !tbaa !2179
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2973
  store i32 %7, i32* %6, align 4, !dbg !2974, !tbaa !770
  ret i8* %20, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64* %2, metadata !2943, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2944, metadata !DIExpression()), !dbg !2976
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2977
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2945, metadata !DIExpression()), !dbg !2976
  %7 = tail call i32* @__errno_location() #31, !dbg !2978
  %8 = load i32, i32* %7, align 4, !dbg !2978, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %8, metadata !2946, metadata !DIExpression()), !dbg !2976
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2979
  %10 = load i32, i32* %9, align 4, !dbg !2979, !tbaa !2154
  %11 = icmp eq i64* %2, null, !dbg !2980
  %12 = zext i1 %11 to i32, !dbg !2980
  %13 = or i32 %10, %12, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %13, metadata !2947, metadata !DIExpression()), !dbg !2976
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2982
  %15 = load i32, i32* %14, align 8, !dbg !2982, !tbaa !2102
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2983
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2984
  %18 = load i8*, i8** %17, align 8, !dbg !2984, !tbaa !2176
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2985
  %20 = load i8*, i8** %19, align 8, !dbg !2985, !tbaa !2179
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2986
  %22 = add i64 %21, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %22, metadata !2948, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %22, metadata !2962, metadata !DIExpression()) #27, !dbg !2988
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %23, metadata !2949, metadata !DIExpression()), !dbg !2976
  %24 = load i32, i32* %14, align 8, !dbg !2991, !tbaa !2102
  %25 = load i8*, i8** %17, align 8, !dbg !2992, !tbaa !2176
  %26 = load i8*, i8** %19, align 8, !dbg !2993, !tbaa !2179
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2994
  store i32 %8, i32* %7, align 4, !dbg !2995, !tbaa !770
  br i1 %11, label %29, label %28, !dbg !2996

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2997, !tbaa !1142
  br label %29, !dbg !2999

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3001 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3005, !tbaa !612
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3003, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !3006
  %2 = load i32, i32* @nslots, align 4, !dbg !3007, !tbaa !770
  %3 = icmp sgt i32 %2, 1, !dbg !3010
  br i1 %3, label %4, label %12, !dbg !3011

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3010
  br label %6, !dbg !3011

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3004, metadata !DIExpression()), !dbg !3006
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3012
  %9 = load i8*, i8** %8, align 8, !dbg !3012, !tbaa !3013
  tail call void @free(i8* %9) #27, !dbg !3015
  %10 = add nuw nsw i64 %7, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %10, metadata !3004, metadata !DIExpression()), !dbg !3006
  %11 = icmp eq i64 %10, %5, !dbg !3010
  br i1 %11, label %12, label %6, !dbg !3011, !llvm.loop !3017

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3019
  %14 = load i8*, i8** %13, align 8, !dbg !3019, !tbaa !3013
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3021
  br i1 %15, label %17, label %16, !dbg !3022

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !3023
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3025, !tbaa !3026
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3027, !tbaa !3013
  br label %17, !dbg !3028

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3029
  br i1 %18, label %21, label %19, !dbg !3031

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3032
  tail call void @free(i8* %20) #27, !dbg !3034
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3035, !tbaa !612
  br label %21, !dbg !3036

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3037, !tbaa !770
  ret void, !dbg !3038
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()), !dbg !3043
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3044
  ret i8* %3, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3050, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %1, metadata !3051, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %2, metadata !3052, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3053, metadata !DIExpression()), !dbg !3065
  %5 = tail call i32* @__errno_location() #31, !dbg !3066
  %6 = load i32, i32* %5, align 4, !dbg !3066, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %6, metadata !3054, metadata !DIExpression()), !dbg !3065
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3067, !tbaa !612
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3055, metadata !DIExpression()), !dbg !3065
  %8 = icmp slt i32 %0, 0, !dbg !3068
  br i1 %8, label %9, label %10, !dbg !3070

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3071
  unreachable, !dbg !3071

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3072, !tbaa !770
  %12 = icmp sgt i32 %11, %0, !dbg !3073
  br i1 %12, label %34, label %13, !dbg !3074

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3075
  call void @llvm.dbg.value(metadata i1 %14, metadata !3056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3076
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3059, metadata !DIExpression()), !dbg !3076
  %15 = icmp eq i32 %0, 2147483647, !dbg !3077
  br i1 %15, label %16, label %17, !dbg !3079

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3080
  unreachable, !dbg !3080

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3081
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3081
  %20 = add nuw nsw i32 %0, 1, !dbg !3082
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3083
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !3084
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3084
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3055, metadata !DIExpression()), !dbg !3065
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3085, !tbaa !612
  br i1 %14, label %25, label %26, !dbg !3086

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3087, !tbaa.struct !3089
  br label %26, !dbg !3090

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3091, !tbaa !770
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3092
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3093
  %31 = sub nsw i32 %20, %27, !dbg !3094
  %32 = sext i32 %31 to i64, !dbg !3095
  %33 = shl nsw i64 %32, 4, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %30, metadata !2489, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %33, metadata !2496, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !3099
  store i32 %20, i32* @nslots, align 4, !dbg !3100, !tbaa !770
  br label %34, !dbg !3101

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3065
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3055, metadata !DIExpression()), !dbg !3065
  %36 = zext i32 %0 to i64, !dbg !3102
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3103
  %38 = load i64, i64* %37, align 8, !dbg !3103, !tbaa !3026
  call void @llvm.dbg.value(metadata i64 %38, metadata !3060, metadata !DIExpression()), !dbg !3104
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3105
  %40 = load i8*, i8** %39, align 8, !dbg !3105, !tbaa !3013
  call void @llvm.dbg.value(metadata i8* %40, metadata !3062, metadata !DIExpression()), !dbg !3104
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3106
  %42 = load i32, i32* %41, align 4, !dbg !3106, !tbaa !2154
  %43 = or i32 %42, 1, !dbg !3107
  call void @llvm.dbg.value(metadata i32 %43, metadata !3063, metadata !DIExpression()), !dbg !3104
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3108
  %45 = load i32, i32* %44, align 8, !dbg !3108, !tbaa !2102
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3109
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3110
  %48 = load i8*, i8** %47, align 8, !dbg !3110, !tbaa !2176
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3111
  %50 = load i8*, i8** %49, align 8, !dbg !3111, !tbaa !2179
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %51, metadata !3064, metadata !DIExpression()), !dbg !3104
  %52 = icmp ugt i64 %38, %51, !dbg !3113
  br i1 %52, label %63, label %53, !dbg !3115

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %54, metadata !3060, metadata !DIExpression()), !dbg !3104
  store i64 %54, i64* %37, align 8, !dbg !3118, !tbaa !3026
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3119
  br i1 %55, label %57, label %56, !dbg !3121

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !3122
  br label %57, !dbg !3122

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2962, metadata !DIExpression()) #27, !dbg !3123
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %58, metadata !3062, metadata !DIExpression()), !dbg !3104
  store i8* %58, i8** %39, align 8, !dbg !3126, !tbaa !3013
  %59 = load i32, i32* %44, align 8, !dbg !3127, !tbaa !2102
  %60 = load i8*, i8** %47, align 8, !dbg !3128, !tbaa !2176
  %61 = load i8*, i8** %49, align 8, !dbg !3129, !tbaa !2179
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3130
  br label %63, !dbg !3131

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3104
  call void @llvm.dbg.value(metadata i8* %64, metadata !3062, metadata !DIExpression()), !dbg !3104
  store i32 %6, i32* %5, align 4, !dbg !3132, !tbaa !770
  ret i8* %64, !dbg !3133
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %1, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %2, metadata !3140, metadata !DIExpression()), !dbg !3141
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3142
  ret i8* %4, !dbg !3143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 0, metadata !3041, metadata !DIExpression()) #27, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()) #27, !dbg !3148
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3150
  ret i8* %2, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression()) #27, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()) #27, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()) #27, !dbg !3159
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3161
  ret i8* %3, !dbg !3162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3163 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %1, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3169, metadata !DIExpression()), !dbg !3171
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3170, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %1, metadata !3178, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3183, metadata !DIExpression()) #27, !dbg !3186
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3186, !alias.scope !3174
  %6 = icmp eq i32 %1, 10, !dbg !3187
  br i1 %6, label %7, label %8, !dbg !3189

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3190, !noalias !3174
  unreachable, !dbg !3190

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3191
  store i32 %1, i32* %9, align 8, !dbg !3192, !tbaa !2102, !alias.scope !3174
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3194
  ret i8* %10, !dbg !3195
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3196 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3200, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %1, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %3, metadata !3203, metadata !DIExpression()), !dbg !3205
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3206
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3204, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %1, metadata !3178, metadata !DIExpression()) #27, !dbg !3212
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3183, metadata !DIExpression()) #27, !dbg !3214
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !3214, !alias.scope !3208
  %7 = icmp eq i32 %1, 10, !dbg !3215
  br i1 %7, label %8, label %9, !dbg !3216

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3217, !noalias !3208
  unreachable, !dbg !3217

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3218
  store i32 %1, i32* %10, align 8, !dbg !3219, !tbaa !2102, !alias.scope !3208
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3221
  ret i8* %11, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3223 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 0, metadata !3167, metadata !DIExpression()) #27, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()) #27, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()) #27, !dbg !3230
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3170, metadata !DIExpression()) #27, !dbg !3233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3234) #27, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()) #27, !dbg !3238
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3183, metadata !DIExpression()) #27, !dbg !3240
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !3240, !alias.scope !3234
  %5 = icmp eq i32 %0, 10, !dbg !3241
  br i1 %5, label %6, label %7, !dbg !3242

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !3243, !noalias !3234
  unreachable, !dbg !3243

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3244
  store i32 %0, i32* %8, align 8, !dbg !3245, !tbaa !2102, !alias.scope !3234
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3247
  ret i8* %9, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3249 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %2, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3200, metadata !DIExpression()) #27, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()) #27, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %1, metadata !3202, metadata !DIExpression()) #27, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %2, metadata !3203, metadata !DIExpression()) #27, !dbg !3257
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3259
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3204, metadata !DIExpression()) #27, !dbg !3260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3261) #27, !dbg !3264
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()) #27, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3183, metadata !DIExpression()) #27, !dbg !3267
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3267, !alias.scope !3261
  %6 = icmp eq i32 %0, 10, !dbg !3268
  br i1 %6, label %7, label %8, !dbg !3269

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3270, !noalias !3261
  unreachable, !dbg !3270

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3271
  store i32 %0, i32* %9, align 8, !dbg !3272, !tbaa !2102, !alias.scope !3261
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3274
  ret i8* %10, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3276 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 %2, metadata !3282, metadata !DIExpression()), !dbg !3284
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3283, metadata !DIExpression()), !dbg !3286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3287, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2120, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %2, metadata !2121, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 1, metadata !2122, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %2, metadata !2123, metadata !DIExpression()), !dbg !3289
  %6 = lshr i8 %2, 5, !dbg !3291
  %7 = zext i8 %6 to i64, !dbg !3291
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3292
  call void @llvm.dbg.value(metadata i32* %8, metadata !2125, metadata !DIExpression()), !dbg !3289
  %9 = and i8 %2, 31, !dbg !3293
  %10 = zext i8 %9 to i32, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %10, metadata !2127, metadata !DIExpression()), !dbg !3289
  %11 = load i32, i32* %8, align 4, !dbg !3294, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !3295
  %13 = and i32 %12, 1, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %13, metadata !2128, metadata !DIExpression()), !dbg !3289
  %14 = xor i32 %13, 1, !dbg !3297
  %15 = shl i32 %14, %10, !dbg !3298
  %16 = xor i32 %15, %11, !dbg !3299
  store i32 %16, i32* %8, align 4, !dbg !3299, !tbaa !770
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3301
  ret i8* %17, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3303 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8 %1, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #27, !dbg !3310
  call void @llvm.dbg.value(metadata i64 -1, metadata !3281, metadata !DIExpression()) #27, !dbg !3310
  call void @llvm.dbg.value(metadata i8 %1, metadata !3282, metadata !DIExpression()) #27, !dbg !3310
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3312
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3283, metadata !DIExpression()) #27, !dbg !3313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3314, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2120, metadata !DIExpression()) #27, !dbg !3315
  call void @llvm.dbg.value(metadata i8 %1, metadata !2121, metadata !DIExpression()) #27, !dbg !3315
  call void @llvm.dbg.value(metadata i32 1, metadata !2122, metadata !DIExpression()) #27, !dbg !3315
  call void @llvm.dbg.value(metadata i8 %1, metadata !2123, metadata !DIExpression()) #27, !dbg !3315
  %5 = lshr i8 %1, 5, !dbg !3317
  %6 = zext i8 %5 to i64, !dbg !3317
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3318
  call void @llvm.dbg.value(metadata i32* %7, metadata !2125, metadata !DIExpression()) #27, !dbg !3315
  %8 = and i8 %1, 31, !dbg !3319
  %9 = zext i8 %8 to i32, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %9, metadata !2127, metadata !DIExpression()) #27, !dbg !3315
  %10 = load i32, i32* %7, align 4, !dbg !3320, !tbaa !770
  %11 = lshr i32 %10, %9, !dbg !3321
  %12 = and i32 %11, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %12, metadata !2128, metadata !DIExpression()) #27, !dbg !3315
  %13 = xor i32 %12, 1, !dbg !3323
  %14 = shl i32 %13, %9, !dbg !3324
  %15 = xor i32 %14, %10, !dbg !3325
  store i32 %15, i32* %7, align 4, !dbg !3325, !tbaa !770
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3327
  ret i8* %16, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3329 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()) #27, !dbg !3333
  call void @llvm.dbg.value(metadata i8 58, metadata !3308, metadata !DIExpression()) #27, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #27, !dbg !3335
  call void @llvm.dbg.value(metadata i64 -1, metadata !3281, metadata !DIExpression()) #27, !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !3282, metadata !DIExpression()) #27, !dbg !3335
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3283, metadata !DIExpression()) #27, !dbg !3338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3339, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2120, metadata !DIExpression()) #27, !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2121, metadata !DIExpression()) #27, !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !2122, metadata !DIExpression()) #27, !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2123, metadata !DIExpression()) #27, !dbg !3340
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3342
  call void @llvm.dbg.value(metadata i32* %4, metadata !2125, metadata !DIExpression()) #27, !dbg !3340
  call void @llvm.dbg.value(metadata i32 26, metadata !2127, metadata !DIExpression()) #27, !dbg !3340
  %5 = load i32, i32* %4, align 4, !dbg !3343, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %5, metadata !2128, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3340
  %6 = or i32 %5, 67108864, !dbg !3344
  store i32 %6, i32* %4, align 4, !dbg !3344, !tbaa !770
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3346
  ret i8* %7, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3348 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #27, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()) #27, !dbg !3353
  call void @llvm.dbg.value(metadata i8 58, metadata !3282, metadata !DIExpression()) #27, !dbg !3353
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3283, metadata !DIExpression()) #27, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3357, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2120, metadata !DIExpression()) #27, !dbg !3358
  call void @llvm.dbg.value(metadata i8 58, metadata !2121, metadata !DIExpression()) #27, !dbg !3358
  call void @llvm.dbg.value(metadata i32 1, metadata !2122, metadata !DIExpression()) #27, !dbg !3358
  call void @llvm.dbg.value(metadata i8 58, metadata !2123, metadata !DIExpression()) #27, !dbg !3358
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3360
  call void @llvm.dbg.value(metadata i32* %5, metadata !2125, metadata !DIExpression()) #27, !dbg !3358
  call void @llvm.dbg.value(metadata i32 26, metadata !2127, metadata !DIExpression()) #27, !dbg !3358
  %6 = load i32, i32* %5, align 4, !dbg !3361, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %6, metadata !2128, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3358
  %7 = or i32 %6, 67108864, !dbg !3362
  store i32 %7, i32* %5, align 4, !dbg !3362, !tbaa !770
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3363
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3364
  ret i8* %8, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3366 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3183, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %2, metadata !3370, metadata !DIExpression()), !dbg !3374
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3375
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3371, metadata !DIExpression()), !dbg !3376
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3378), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %1, metadata !3178, metadata !DIExpression()) #27, !dbg !3381
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3381
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3372, !alias.scope !3378
  %8 = icmp eq i32 %1, 10, !dbg !3382
  br i1 %8, label %9, label %10, !dbg !3383

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3384, !noalias !3378
  unreachable, !dbg !3384

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3381
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3377
  store i32 %1, i32* %11, align 8, !dbg !3377, !tbaa.struct !3288
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3377
  %13 = bitcast i32* %12 to i8*, !dbg !3377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3377, !tbaa.struct !3385
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2120, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !2121, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 1, metadata !2122, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !2123, metadata !DIExpression()), !dbg !3386
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32* %14, metadata !2125, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 26, metadata !2127, metadata !DIExpression()), !dbg !3386
  %15 = load i32, i32* %14, align 4, !dbg !3389, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %15, metadata !2128, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3386
  %16 = or i32 %15, 67108864, !dbg !3390
  store i32 %16, i32* %14, align 4, !dbg !3390, !tbaa !770
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3392
  ret i8* %17, !dbg !3393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3394 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %1, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %2, metadata !3400, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %3, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 %0, metadata !3403, metadata !DIExpression()) #27, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %1, metadata !3408, metadata !DIExpression()) #27, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()) #27, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %3, metadata !3410, metadata !DIExpression()) #27, !dbg !3413
  call void @llvm.dbg.value(metadata i64 -1, metadata !3411, metadata !DIExpression()) #27, !dbg !3413
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3412, metadata !DIExpression()) #27, !dbg !3416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3417, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression()) #27, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %1, metadata !2162, metadata !DIExpression()) #27, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %2, metadata !2163, metadata !DIExpression()) #27, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression()) #27, !dbg !3418
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3420
  store i32 10, i32* %7, align 8, !dbg !3421, !tbaa !2102
  %8 = icmp ne i8* %1, null, !dbg !3422
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3423
  br i1 %10, label %12, label %11, !dbg !3423

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3424
  unreachable, !dbg !3424

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3425
  store i8* %1, i8** %13, align 8, !dbg !3426, !tbaa !2176
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3427
  store i8* %2, i8** %14, align 8, !dbg !3428, !tbaa !2179
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3429
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3430
  ret i8* %15, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3404 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3403, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* %1, metadata !3408, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* %3, metadata !3410, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %4, metadata !3411, metadata !DIExpression()), !dbg !3432
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3433
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3412, metadata !DIExpression()), !dbg !3434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3435, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2161, metadata !DIExpression()) #27, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2162, metadata !DIExpression()) #27, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %2, metadata !2163, metadata !DIExpression()) #27, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2161, metadata !DIExpression()) #27, !dbg !3436
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3438
  store i32 10, i32* %8, align 8, !dbg !3439, !tbaa !2102
  %9 = icmp ne i8* %1, null, !dbg !3440
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3441
  br i1 %11, label %13, label %12, !dbg !3441

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3442
  unreachable, !dbg !3442

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3443
  store i8* %1, i8** %14, align 8, !dbg !3444, !tbaa !2176
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3445
  store i8* %2, i8** %15, align 8, !dbg !3446, !tbaa !2179
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3447
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3448
  ret i8* %16, !dbg !3449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3450 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression()) #27, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()) #27, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %1, metadata !3400, metadata !DIExpression()) #27, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %2, metadata !3401, metadata !DIExpression()) #27, !dbg !3458
  call void @llvm.dbg.value(metadata i32 0, metadata !3403, metadata !DIExpression()) #27, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()) #27, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()) #27, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()) #27, !dbg !3460
  call void @llvm.dbg.value(metadata i64 -1, metadata !3411, metadata !DIExpression()) #27, !dbg !3460
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3412, metadata !DIExpression()) #27, !dbg !3463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3464, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2161, metadata !DIExpression()) #27, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()) #27, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %1, metadata !2163, metadata !DIExpression()) #27, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2161, metadata !DIExpression()) #27, !dbg !3465
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3467
  store i32 10, i32* %6, align 8, !dbg !3468, !tbaa !2102
  %7 = icmp ne i8* %0, null, !dbg !3469
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3470
  br i1 %9, label %11, label %10, !dbg !3470

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3471
  unreachable, !dbg !3471

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3472
  store i8* %0, i8** %12, align 8, !dbg !3473, !tbaa !2176
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3474
  store i8* %1, i8** %13, align 8, !dbg !3475, !tbaa !2179
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3476
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3477
  ret i8* %14, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3479 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %1, metadata !3484, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %2, metadata !3485, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %3, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 0, metadata !3403, metadata !DIExpression()) #27, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()) #27, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()) #27, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()) #27, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %3, metadata !3411, metadata !DIExpression()) #27, !dbg !3488
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3490
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3490
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3412, metadata !DIExpression()) #27, !dbg !3491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3492, !tbaa.struct !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !2163, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression()) #27, !dbg !3493
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3495
  store i32 10, i32* %7, align 8, !dbg !3496, !tbaa !2102
  %8 = icmp ne i8* %0, null, !dbg !3497
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3498
  br i1 %10, label %12, label %11, !dbg !3498

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3499
  unreachable, !dbg !3499

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3500
  store i8* %0, i8** %13, align 8, !dbg !3501, !tbaa !2176
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3502
  store i8* %1, i8** %14, align 8, !dbg !3503, !tbaa !2179
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3505
  ret i8* %15, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %1, metadata !3512, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %2, metadata !3513, metadata !DIExpression()), !dbg !3514
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3515
  ret i8* %4, !dbg !3516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()) #27, !dbg !3524
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()) #27, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %1, metadata !3513, metadata !DIExpression()) #27, !dbg !3524
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3526
  ret i8* %3, !dbg !3527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()) #27, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3512, metadata !DIExpression()) #27, !dbg !3535
  call void @llvm.dbg.value(metadata i64 -1, metadata !3513, metadata !DIExpression()) #27, !dbg !3535
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3537
  ret i8* %3, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()) #27, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %0, metadata !3533, metadata !DIExpression()) #27, !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()) #27, !dbg !3545
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()) #27, !dbg !3545
  call void @llvm.dbg.value(metadata i64 -1, metadata !3513, metadata !DIExpression()) #27, !dbg !3545
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3547
  ret i8* %2, !dbg !3548
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @strintcmp(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #17 !dbg !3549 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3562, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 -1, metadata !3563, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 -1, metadata !3564, metadata !DIExpression()), !dbg !3570
  %3 = load i8, i8* %0, align 1, !dbg !3572, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %3, metadata !3565, metadata !DIExpression()), !dbg !3570
  %4 = load i8, i8* %1, align 1, !dbg !3573, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %4, metadata !3566, metadata !DIExpression()), !dbg !3570
  %5 = icmp eq i8 %3, 45, !dbg !3574
  br i1 %5, label %6, label %95, !dbg !3576

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3556, metadata !DIExpression()), !dbg !3570
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %8, metadata !3556, metadata !DIExpression()), !dbg !3570
  %9 = load i8, i8* %8, align 1, !dbg !3579, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %9, metadata !3565, metadata !DIExpression()), !dbg !3570
  %10 = icmp eq i8 %9, 48, !dbg !3580
  br i1 %10, label %6, label %11, !dbg !3581, !llvm.loop !3582

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3585
  br i1 %12, label %30, label %13, !dbg !3587

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3565, metadata !DIExpression()), !dbg !3570
  %14 = zext i8 %9 to i32, !dbg !3588
  %15 = add nsw i32 %14, -48, !dbg !3588
  %16 = icmp ult i32 %15, 10, !dbg !3588
  br i1 %16, label %197, label %17, !dbg !3591

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3562, metadata !DIExpression()), !dbg !3570
  %18 = icmp eq i8 %4, 48, !dbg !3592
  br i1 %18, label %19, label %24, !dbg !3593

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3562, metadata !DIExpression()), !dbg !3570
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %21, metadata !3562, metadata !DIExpression()), !dbg !3570
  %22 = load i8, i8* %21, align 1, !dbg !3595, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %22, metadata !3566, metadata !DIExpression()), !dbg !3570
  %23 = icmp eq i8 %22, 48, !dbg !3592
  br i1 %23, label %19, label %24, !dbg !3593, !llvm.loop !3596

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3570
  call void @llvm.dbg.value(metadata i8 %25, metadata !3566, metadata !DIExpression()), !dbg !3570
  %26 = zext i8 %25 to i32, !dbg !3598
  %27 = add nsw i32 %26, -48, !dbg !3598
  %28 = icmp ult i32 %27, 10, !dbg !3598
  %29 = sext i1 %28 to i32, !dbg !3598
  br label %197, !dbg !3599

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3562, metadata !DIExpression()), !dbg !3570
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %32, metadata !3562, metadata !DIExpression()), !dbg !3570
  %33 = load i8, i8* %32, align 1, !dbg !3601, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %33, metadata !3566, metadata !DIExpression()), !dbg !3570
  %34 = icmp eq i8 %33, 48, !dbg !3602
  br i1 %34, label %30, label %35, !dbg !3603, !llvm.loop !3604

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 %9, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %8, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %32, metadata !3562, metadata !DIExpression()), !dbg !3570
  %36 = zext i8 %9 to i32, !dbg !3607
  %37 = icmp eq i8 %33, %9, !dbg !3608
  %38 = add nsw i32 %36, -48, !dbg !3609
  %39 = icmp ult i32 %38, 10, !dbg !3609
  %40 = and i1 %39, %37, !dbg !3609
  br i1 %40, label %50, label %43, !dbg !3610

41:                                               ; preds = %50
  %42 = zext i8 %54 to i32, !dbg !3607
  br label %43, !dbg !3611

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %38, %35 ], [ %59, %41 ], !dbg !3611
  %45 = phi i8* [ %32, %35 ], [ %55, %41 ], !dbg !3614
  %46 = phi i8* [ %8, %35 ], [ %53, %41 ], !dbg !3614
  %47 = phi i8 [ %33, %35 ], [ %56, %41 ], !dbg !3614
  %48 = phi i32 [ %36, %35 ], [ %42, %41 ], !dbg !3607
  call void @llvm.dbg.value(metadata i64 0, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %46, metadata !3556, metadata !DIExpression()), !dbg !3570
  %49 = icmp ult i32 %44, 10, !dbg !3611
  br i1 %49, label %67, label %62, !dbg !3615

50:                                               ; preds = %35, %50
  %51 = phi i8* [ %53, %50 ], [ %8, %35 ]
  %52 = phi i8* [ %55, %50 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3562, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %51, metadata !3556, metadata !DIExpression()), !dbg !3570
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %53, metadata !3556, metadata !DIExpression()), !dbg !3570
  %54 = load i8, i8* %53, align 1, !dbg !3618, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %54, metadata !3565, metadata !DIExpression()), !dbg !3570
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %55, metadata !3562, metadata !DIExpression()), !dbg !3570
  %56 = load i8, i8* %55, align 1, !dbg !3620, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %56, metadata !3566, metadata !DIExpression()), !dbg !3570
  %57 = zext i8 %54 to i32, !dbg !3607
  %58 = icmp eq i8 %56, %54, !dbg !3608
  %59 = add nsw i32 %57, -48, !dbg !3609
  %60 = icmp ult i32 %59, 10, !dbg !3609
  %61 = and i1 %58, %60, !dbg !3609
  br i1 %61, label %50, label %41, !dbg !3610

62:                                               ; preds = %67, %43
  %63 = phi i64 [ 0, %43 ], [ %72, %67 ], !dbg !3621
  call void @llvm.dbg.value(metadata i64 0, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 %47, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %45, metadata !3562, metadata !DIExpression()), !dbg !3570
  %64 = zext i8 %47 to i32, !dbg !3622
  %65 = add nsw i32 %64, -48, !dbg !3622
  %66 = icmp ult i32 %65, 10, !dbg !3622
  br i1 %66, label %76, label %85, !dbg !3625

67:                                               ; preds = %43, %67
  %68 = phi i64 [ %72, %67 ], [ 0, %43 ]
  %69 = phi i8* [ %70, %67 ], [ %46, %43 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %69, metadata !3556, metadata !DIExpression()), !dbg !3570
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %70, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3565, metadata !DIExpression()), !dbg !3570
  %71 = load i8, i8* %70, align 1, !dbg !3627, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %71, metadata !3565, metadata !DIExpression()), !dbg !3570
  %72 = add i64 %68, 1, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %72, metadata !3568, metadata !DIExpression()), !dbg !3570
  %73 = zext i8 %71 to i32, !dbg !3611
  %74 = add nsw i32 %73, -48, !dbg !3611
  %75 = icmp ult i32 %74, 10, !dbg !3611
  br i1 %75, label %67, label %62, !dbg !3615, !llvm.loop !3629

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %81, %76 ], [ 0, %62 ]
  %78 = phi i8* [ %79, %76 ], [ %45, %62 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %78, metadata !3562, metadata !DIExpression()), !dbg !3570
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %79, metadata !3562, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3566, metadata !DIExpression()), !dbg !3570
  %80 = load i8, i8* %79, align 1, !dbg !3632, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %80, metadata !3566, metadata !DIExpression()), !dbg !3570
  %81 = add i64 %77, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %81, metadata !3569, metadata !DIExpression()), !dbg !3570
  %82 = zext i8 %80 to i32, !dbg !3622
  %83 = add nsw i32 %82, -48, !dbg !3622
  %84 = icmp ult i32 %83, 10, !dbg !3622
  br i1 %84, label %76, label %85, !dbg !3625, !llvm.loop !3634

85:                                               ; preds = %76, %62
  %86 = phi i64 [ 0, %62 ], [ %81, %76 ], !dbg !3636
  %87 = icmp eq i64 %63, %86, !dbg !3637
  br i1 %87, label %91, label %88, !dbg !3639

88:                                               ; preds = %85
  %89 = icmp ult i64 %63, %86, !dbg !3640
  %90 = select i1 %89, i32 1, i32 -1, !dbg !3641
  br label %197, !dbg !3642

91:                                               ; preds = %85
  %92 = sub nsw i32 %64, %48, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %92, metadata !3567, metadata !DIExpression()), !dbg !3570
  %93 = icmp eq i64 %63, 0, !dbg !3644
  %94 = select i1 %93, i32 0, i32 %92, !dbg !3646
  br label %197, !dbg !3646

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3647
  br i1 %96, label %99, label %97, !dbg !3649

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()), !dbg !3570
  %98 = icmp eq i8 %3, 48, !dbg !3650
  br i1 %98, label %125, label %121, !dbg !3652

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3562, metadata !DIExpression()), !dbg !3570
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %101, metadata !3562, metadata !DIExpression()), !dbg !3570
  %102 = load i8, i8* %101, align 1, !dbg !3655, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %102, metadata !3566, metadata !DIExpression()), !dbg !3570
  %103 = icmp eq i8 %102, 48, !dbg !3656
  br i1 %103, label %99, label %104, !dbg !3657, !llvm.loop !3658

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3566, metadata !DIExpression()), !dbg !3570
  %105 = zext i8 %102 to i32, !dbg !3661
  %106 = add nsw i32 %105, -48, !dbg !3661
  %107 = icmp ult i32 %106, 10, !dbg !3661
  br i1 %107, label %197, label %108, !dbg !3663

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()), !dbg !3570
  %109 = icmp eq i8 %3, 48, !dbg !3664
  br i1 %109, label %110, label %115, !dbg !3665

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3556, metadata !DIExpression()), !dbg !3570
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %112, metadata !3556, metadata !DIExpression()), !dbg !3570
  %113 = load i8, i8* %112, align 1, !dbg !3667, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %113, metadata !3565, metadata !DIExpression()), !dbg !3570
  %114 = icmp eq i8 %113, 48, !dbg !3664
  br i1 %114, label %110, label %115, !dbg !3665, !llvm.loop !3668

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3570
  call void @llvm.dbg.value(metadata i8 %116, metadata !3565, metadata !DIExpression()), !dbg !3570
  %117 = zext i8 %116 to i32, !dbg !3670
  %118 = add nsw i32 %117, -48, !dbg !3670
  %119 = icmp ult i32 %118, 10, !dbg !3670
  %120 = zext i1 %119 to i32, !dbg !3670
  br label %197, !dbg !3671

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3570
  call void @llvm.dbg.value(metadata i8 %4, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3562, metadata !DIExpression()), !dbg !3570
  %124 = icmp eq i8 %4, 48, !dbg !3672
  br i1 %124, label %138, label %130, !dbg !3673

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3556, metadata !DIExpression()), !dbg !3570
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %127, metadata !3556, metadata !DIExpression()), !dbg !3570
  %128 = load i8, i8* %127, align 1, !dbg !3675, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %128, metadata !3565, metadata !DIExpression()), !dbg !3570
  %129 = icmp eq i8 %128, 48, !dbg !3650
  br i1 %129, label %125, label %121, !dbg !3652, !llvm.loop !3676

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3570
  call void @llvm.dbg.value(metadata i8 %132, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 %123, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %122, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %131, metadata !3562, metadata !DIExpression()), !dbg !3570
  %133 = zext i8 %123 to i32, !dbg !3678
  %134 = icmp eq i8 %123, %132, !dbg !3679
  %135 = add nsw i32 %133, -48, !dbg !3680
  %136 = icmp ult i32 %135, 10, !dbg !3680
  %137 = and i1 %136, %134, !dbg !3680
  br i1 %137, label %143, label %157, !dbg !3681

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3562, metadata !DIExpression()), !dbg !3570
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %140, metadata !3562, metadata !DIExpression()), !dbg !3570
  %141 = load i8, i8* %140, align 1, !dbg !3683, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %141, metadata !3566, metadata !DIExpression()), !dbg !3570
  %142 = icmp eq i8 %141, 48, !dbg !3672
  br i1 %142, label %138, label %130, !dbg !3673, !llvm.loop !3684

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !3562, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %144, metadata !3556, metadata !DIExpression()), !dbg !3570
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %146, metadata !3556, metadata !DIExpression()), !dbg !3570
  %147 = load i8, i8* %146, align 1, !dbg !3688, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %147, metadata !3565, metadata !DIExpression()), !dbg !3570
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %148, metadata !3562, metadata !DIExpression()), !dbg !3570
  %149 = load i8, i8* %148, align 1, !dbg !3690, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %149, metadata !3566, metadata !DIExpression()), !dbg !3570
  %150 = zext i8 %147 to i32, !dbg !3678
  %151 = icmp eq i8 %147, %149, !dbg !3679
  %152 = add nsw i32 %150, -48, !dbg !3680
  %153 = icmp ult i32 %152, 10, !dbg !3680
  %154 = and i1 %151, %153, !dbg !3680
  br i1 %154, label %143, label %155, !dbg !3681

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3678
  br label %157, !dbg !3691

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3692
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3570
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3678
  %163 = zext i8 %161 to i32, !dbg !3691
  %164 = sub nsw i32 %162, %163, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %164, metadata !3567, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 0, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3565, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %160, metadata !3556, metadata !DIExpression()), !dbg !3570
  %165 = icmp ult i32 %158, 10, !dbg !3692
  br i1 %165, label %170, label %166, !dbg !3696

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3697
  call void @llvm.dbg.value(metadata i64 0, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 %161, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %159, metadata !3562, metadata !DIExpression()), !dbg !3570
  %168 = add nsw i32 %163, -48, !dbg !3698
  %169 = icmp ult i32 %168, 10, !dbg !3698
  br i1 %169, label %179, label %188, !dbg !3701

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %172, metadata !3556, metadata !DIExpression()), !dbg !3570
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %173, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3565, metadata !DIExpression()), !dbg !3570
  %174 = load i8, i8* %173, align 1, !dbg !3703, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %174, metadata !3565, metadata !DIExpression()), !dbg !3570
  %175 = add i64 %171, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %175, metadata !3568, metadata !DIExpression()), !dbg !3570
  %176 = zext i8 %174 to i32, !dbg !3692
  %177 = add nsw i32 %176, -48, !dbg !3692
  %178 = icmp ult i32 %177, 10, !dbg !3692
  br i1 %178, label %170, label %166, !dbg !3696, !llvm.loop !3705

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %181, metadata !3562, metadata !DIExpression()), !dbg !3570
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %182, metadata !3562, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 undef, metadata !3566, metadata !DIExpression()), !dbg !3570
  %183 = load i8, i8* %182, align 1, !dbg !3708, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %183, metadata !3566, metadata !DIExpression()), !dbg !3570
  %184 = add i64 %180, 1, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %184, metadata !3569, metadata !DIExpression()), !dbg !3570
  %185 = zext i8 %183 to i32, !dbg !3698
  %186 = add nsw i32 %185, -48, !dbg !3698
  %187 = icmp ult i32 %186, 10, !dbg !3698
  br i1 %187, label %179, label %188, !dbg !3701, !llvm.loop !3710

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3712
  %190 = icmp eq i64 %167, %189, !dbg !3713
  br i1 %190, label %194, label %191, !dbg !3715

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3716
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3717
  br label %197, !dbg !3718

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3719
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3721
  br label %197, !dbg !3721

197:                                              ; preds = %13, %24, %88, %104, %115, %191, %194, %91
  %198 = phi i32 [ %94, %91 ], [ %29, %24 ], [ %90, %88 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ 1, %104 ], [ %196, %194 ]
  ret i32 %198, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32 %0, i32 %1, i8* %2, %struct.__va_list_tag* %3) local_unnamed_addr #8 !dbg !3723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !3737, metadata !DIExpression()), !dbg !3738
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !3739
  ret void, !dbg !3740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.__va_list_tag* %5) local_unnamed_addr #8 !dbg !3741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3745, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %1, metadata !3746, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %2, metadata !3747, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %3, metadata !3748, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %4, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !3750, metadata !DIExpression()), !dbg !3752
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #27, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %7, metadata !3751, metadata !DIExpression()), !dbg !3752
  %8 = icmp eq i8* %7, null, !dbg !3754
  br i1 %8, label %13, label %9, !dbg !3756

9:                                                ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !3757
  br i1 %10, label %12, label %11, !dbg !3760

11:                                               ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #27, !dbg !3761
  br label %17, !dbg !3761

12:                                               ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* nonnull %7) #27, !dbg !3762
  br label %17

13:                                               ; preds = %6
  %14 = tail call i32* @__errno_location() #31, !dbg !3763
  %15 = load i32, i32* %14, align 4, !dbg !3763, !tbaa !770
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #27, !dbg !3765
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #27, !dbg !3766
  tail call void @abort() #29, !dbg !3767
  unreachable, !dbg !3767

17:                                               ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #27, !dbg !3768
  ret void, !dbg !3769
}

declare !dbg !3770 void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3773 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %1, metadata !3814, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %2, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8* %3, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8** %4, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %5, metadata !3818, metadata !DIExpression()), !dbg !3819
  %7 = icmp eq i8* %1, null, !dbg !3820
  br i1 %7, label %10, label %8, !dbg !3822

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3823
  br label %12, !dbg !3823

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3824
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.121, i64 0, i64 0), i32 5) #27, !dbg !3825
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3825
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3826
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.123, i64 0, i64 0), i32 5) #27, !dbg !3827
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.124, i64 0, i64 0)) #27, !dbg !3827
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3828
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
  ], !dbg !3829

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.125, i64 0, i64 0), i32 5) #27, !dbg !3830
  %21 = load i8*, i8** %4, align 8, !dbg !3830, !tbaa !612
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3830
  br label %147, !dbg !3832

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.126, i64 0, i64 0), i32 5) #27, !dbg !3833
  %25 = load i8*, i8** %4, align 8, !dbg !3833, !tbaa !612
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3833
  %27 = load i8*, i8** %26, align 8, !dbg !3833, !tbaa !612
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3833
  br label %147, !dbg !3834

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.127, i64 0, i64 0), i32 5) #27, !dbg !3835
  %31 = load i8*, i8** %4, align 8, !dbg !3835, !tbaa !612
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3835
  %33 = load i8*, i8** %32, align 8, !dbg !3835, !tbaa !612
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3835
  %35 = load i8*, i8** %34, align 8, !dbg !3835, !tbaa !612
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3835
  br label %147, !dbg !3836

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.128, i64 0, i64 0), i32 5) #27, !dbg !3837
  %39 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !612
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3837
  %41 = load i8*, i8** %40, align 8, !dbg !3837, !tbaa !612
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3837
  %43 = load i8*, i8** %42, align 8, !dbg !3837, !tbaa !612
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3837
  %45 = load i8*, i8** %44, align 8, !dbg !3837, !tbaa !612
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3837
  br label %147, !dbg !3838

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.129, i64 0, i64 0), i32 5) #27, !dbg !3839
  %49 = load i8*, i8** %4, align 8, !dbg !3839, !tbaa !612
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3839
  %51 = load i8*, i8** %50, align 8, !dbg !3839, !tbaa !612
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3839
  %53 = load i8*, i8** %52, align 8, !dbg !3839, !tbaa !612
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3839
  %55 = load i8*, i8** %54, align 8, !dbg !3839, !tbaa !612
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3839
  %57 = load i8*, i8** %56, align 8, !dbg !3839, !tbaa !612
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3839
  br label %147, !dbg !3840

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.130, i64 0, i64 0), i32 5) #27, !dbg !3841
  %61 = load i8*, i8** %4, align 8, !dbg !3841, !tbaa !612
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3841
  %63 = load i8*, i8** %62, align 8, !dbg !3841, !tbaa !612
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3841
  %65 = load i8*, i8** %64, align 8, !dbg !3841, !tbaa !612
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3841
  %67 = load i8*, i8** %66, align 8, !dbg !3841, !tbaa !612
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3841
  %69 = load i8*, i8** %68, align 8, !dbg !3841, !tbaa !612
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3841
  %71 = load i8*, i8** %70, align 8, !dbg !3841, !tbaa !612
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3841
  br label %147, !dbg !3842

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.131, i64 0, i64 0), i32 5) #27, !dbg !3843
  %75 = load i8*, i8** %4, align 8, !dbg !3843, !tbaa !612
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3843
  %77 = load i8*, i8** %76, align 8, !dbg !3843, !tbaa !612
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3843
  %79 = load i8*, i8** %78, align 8, !dbg !3843, !tbaa !612
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3843
  %81 = load i8*, i8** %80, align 8, !dbg !3843, !tbaa !612
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3843
  %83 = load i8*, i8** %82, align 8, !dbg !3843, !tbaa !612
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3843
  %85 = load i8*, i8** %84, align 8, !dbg !3843, !tbaa !612
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3843
  %87 = load i8*, i8** %86, align 8, !dbg !3843, !tbaa !612
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3843
  br label %147, !dbg !3844

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.132, i64 0, i64 0), i32 5) #27, !dbg !3845
  %91 = load i8*, i8** %4, align 8, !dbg !3845, !tbaa !612
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3845
  %93 = load i8*, i8** %92, align 8, !dbg !3845, !tbaa !612
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3845
  %95 = load i8*, i8** %94, align 8, !dbg !3845, !tbaa !612
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3845
  %97 = load i8*, i8** %96, align 8, !dbg !3845, !tbaa !612
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3845
  %99 = load i8*, i8** %98, align 8, !dbg !3845, !tbaa !612
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3845
  %101 = load i8*, i8** %100, align 8, !dbg !3845, !tbaa !612
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3845
  %103 = load i8*, i8** %102, align 8, !dbg !3845, !tbaa !612
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3845
  %105 = load i8*, i8** %104, align 8, !dbg !3845, !tbaa !612
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3845
  br label %147, !dbg !3846

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.133, i64 0, i64 0), i32 5) #27, !dbg !3847
  %109 = load i8*, i8** %4, align 8, !dbg !3847, !tbaa !612
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3847
  %111 = load i8*, i8** %110, align 8, !dbg !3847, !tbaa !612
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3847
  %113 = load i8*, i8** %112, align 8, !dbg !3847, !tbaa !612
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3847
  %115 = load i8*, i8** %114, align 8, !dbg !3847, !tbaa !612
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3847
  %117 = load i8*, i8** %116, align 8, !dbg !3847, !tbaa !612
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3847
  %119 = load i8*, i8** %118, align 8, !dbg !3847, !tbaa !612
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3847
  %121 = load i8*, i8** %120, align 8, !dbg !3847, !tbaa !612
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3847
  %123 = load i8*, i8** %122, align 8, !dbg !3847, !tbaa !612
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3847
  %125 = load i8*, i8** %124, align 8, !dbg !3847, !tbaa !612
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3847
  br label %147, !dbg !3848

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.134, i64 0, i64 0), i32 5) #27, !dbg !3849
  %129 = load i8*, i8** %4, align 8, !dbg !3849, !tbaa !612
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3849
  %131 = load i8*, i8** %130, align 8, !dbg !3849, !tbaa !612
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3849
  %133 = load i8*, i8** %132, align 8, !dbg !3849, !tbaa !612
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3849
  %135 = load i8*, i8** %134, align 8, !dbg !3849, !tbaa !612
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3849
  %137 = load i8*, i8** %136, align 8, !dbg !3849, !tbaa !612
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3849
  %139 = load i8*, i8** %138, align 8, !dbg !3849, !tbaa !612
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3849
  %141 = load i8*, i8** %140, align 8, !dbg !3849, !tbaa !612
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3849
  %143 = load i8*, i8** %142, align 8, !dbg !3849, !tbaa !612
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3849
  %145 = load i8*, i8** %144, align 8, !dbg !3849, !tbaa !612
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3849
  br label %147, !dbg !3850

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3852 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3856, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %1, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %2, metadata !3858, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %3, metadata !3859, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8** %4, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 0, metadata !3861, metadata !DIExpression()), !dbg !3862
  br label %6, !dbg !3863

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3865
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3862
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3866
  %9 = load i8*, i8** %8, align 8, !dbg !3866, !tbaa !612
  %10 = icmp eq i8* %9, null, !dbg !3868
  %11 = add i64 %7, 1, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %11, metadata !3861, metadata !DIExpression()), !dbg !3862
  br i1 %10, label %12, label %6, !dbg !3868, !llvm.loop !3870

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3872
  ret void, !dbg !3873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3874 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3885, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %2, metadata !3887, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %3, metadata !3888, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3889, metadata !DIExpression()), !dbg !3893
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3894
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3894
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3891, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 0, metadata !3890, metadata !DIExpression()), !dbg !3893
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3890, metadata !DIExpression()), !dbg !3893
  %11 = load i32, i32* %8, align 8, !dbg !3896
  %12 = icmp ult i32 %11, 41, !dbg !3896
  br i1 %12, label %13, label %18, !dbg !3896

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3896
  %15 = zext i32 %11 to i64, !dbg !3896
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3896
  %17 = add nuw nsw i32 %11, 8, !dbg !3896
  store i32 %17, i32* %8, align 8, !dbg !3896
  br label %21, !dbg !3896

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3896
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3896
  store i8* %20, i8** %9, align 8, !dbg !3896
  br label %21, !dbg !3896

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3896
  %25 = load i8*, i8** %24, align 8, !dbg !3896
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3899
  store i8* %25, i8** %26, align 16, !dbg !3900, !tbaa !612
  %27 = icmp eq i8* %25, null, !dbg !3901
  br i1 %27, label %30, label %28, !dbg !3902

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 1, metadata !3890, metadata !DIExpression()), !dbg !3893
  %29 = icmp ult i32 %22, 41, !dbg !3896
  br i1 %29, label %35, label %32, !dbg !3896

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3903
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3904
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3905
  ret void, !dbg !3905

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3896
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3896
  store i8* %34, i8** %9, align 8, !dbg !3896
  br label %40, !dbg !3896

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3896
  %37 = zext i32 %22 to i64, !dbg !3896
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3896
  %39 = add nuw nsw i32 %22, 8, !dbg !3896
  store i32 %39, i32* %8, align 8, !dbg !3896
  br label %40, !dbg !3896

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3896
  %44 = load i8*, i8** %43, align 8, !dbg !3896
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3899
  store i8* %44, i8** %45, align 8, !dbg !3900, !tbaa !612
  %46 = icmp eq i8* %44, null, !dbg !3901
  br i1 %46, label %30, label %47, !dbg !3902

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 2, metadata !3890, metadata !DIExpression()), !dbg !3893
  %48 = icmp ult i32 %41, 41, !dbg !3896
  br i1 %48, label %52, label %49, !dbg !3896

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3896
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3896
  store i8* %51, i8** %9, align 8, !dbg !3896
  br label %57, !dbg !3896

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3896
  %54 = zext i32 %41 to i64, !dbg !3896
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3896
  %56 = add nuw nsw i32 %41, 8, !dbg !3896
  store i32 %56, i32* %8, align 8, !dbg !3896
  br label %57, !dbg !3896

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3896
  %61 = load i8*, i8** %60, align 8, !dbg !3896
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3899
  store i8* %61, i8** %62, align 16, !dbg !3900, !tbaa !612
  %63 = icmp eq i8* %61, null, !dbg !3901
  br i1 %63, label %30, label %64, !dbg !3902

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 3, metadata !3890, metadata !DIExpression()), !dbg !3893
  %65 = icmp ult i32 %58, 41, !dbg !3896
  br i1 %65, label %69, label %66, !dbg !3896

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3896
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3896
  store i8* %68, i8** %9, align 8, !dbg !3896
  br label %74, !dbg !3896

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3896
  %71 = zext i32 %58 to i64, !dbg !3896
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3896
  %73 = add nuw nsw i32 %58, 8, !dbg !3896
  store i32 %73, i32* %8, align 8, !dbg !3896
  br label %74, !dbg !3896

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3896
  %78 = load i8*, i8** %77, align 8, !dbg !3896
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3899
  store i8* %78, i8** %79, align 8, !dbg !3900, !tbaa !612
  %80 = icmp eq i8* %78, null, !dbg !3901
  br i1 %80, label %30, label %81, !dbg !3902

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 4, metadata !3890, metadata !DIExpression()), !dbg !3893
  %82 = icmp ult i32 %75, 41, !dbg !3896
  br i1 %82, label %86, label %83, !dbg !3896

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3896
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3896
  store i8* %85, i8** %9, align 8, !dbg !3896
  br label %91, !dbg !3896

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3896
  %88 = zext i32 %75 to i64, !dbg !3896
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3896
  %90 = add nuw nsw i32 %75, 8, !dbg !3896
  store i32 %90, i32* %8, align 8, !dbg !3896
  br label %91, !dbg !3896

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3896
  %95 = load i8*, i8** %94, align 8, !dbg !3896
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3899
  store i8* %95, i8** %96, align 16, !dbg !3900, !tbaa !612
  %97 = icmp eq i8* %95, null, !dbg !3901
  br i1 %97, label %30, label %98, !dbg !3902

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 5, metadata !3890, metadata !DIExpression()), !dbg !3893
  %99 = icmp ult i32 %92, 41, !dbg !3896
  br i1 %99, label %103, label %100, !dbg !3896

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3896
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3896
  store i8* %102, i8** %9, align 8, !dbg !3896
  br label %108, !dbg !3896

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3896
  %105 = zext i32 %92 to i64, !dbg !3896
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3896
  %107 = add nuw nsw i32 %92, 8, !dbg !3896
  store i32 %107, i32* %8, align 8, !dbg !3896
  br label %108, !dbg !3896

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3896
  %111 = load i8*, i8** %110, align 8, !dbg !3896
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3899
  store i8* %111, i8** %112, align 8, !dbg !3900, !tbaa !612
  %113 = icmp eq i8* %111, null, !dbg !3901
  br i1 %113, label %30, label %114, !dbg !3902

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3890, metadata !DIExpression()), !dbg !3893
  %115 = load i8*, i8** %9, align 8, !dbg !3896
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3896
  store i8* %116, i8** %9, align 8, !dbg !3896
  %117 = bitcast i8* %115 to i8**, !dbg !3896
  %118 = load i8*, i8** %117, align 8, !dbg !3896
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3899
  store i8* %118, i8** %119, align 16, !dbg !3900, !tbaa !612
  %120 = icmp eq i8* %118, null, !dbg !3901
  br i1 %120, label %30, label %121, !dbg !3902

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3890, metadata !DIExpression()), !dbg !3893
  %122 = load i8*, i8** %9, align 8, !dbg !3896
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3896
  store i8* %123, i8** %9, align 8, !dbg !3896
  %124 = bitcast i8* %122 to i8**, !dbg !3896
  %125 = load i8*, i8** %124, align 8, !dbg !3896
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3899
  store i8* %125, i8** %126, align 8, !dbg !3900, !tbaa !612
  %127 = icmp eq i8* %125, null, !dbg !3901
  br i1 %127, label %30, label %128, !dbg !3902

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3890, metadata !DIExpression()), !dbg !3893
  %129 = load i8*, i8** %9, align 8, !dbg !3896
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3896
  store i8* %130, i8** %9, align 8, !dbg !3896
  %131 = bitcast i8* %129 to i8**, !dbg !3896
  %132 = load i8*, i8** %131, align 8, !dbg !3896
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3899
  store i8* %132, i8** %133, align 16, !dbg !3900, !tbaa !612
  %134 = icmp eq i8* %132, null, !dbg !3901
  br i1 %134, label %30, label %135, !dbg !3902

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3890, metadata !DIExpression()), !dbg !3893
  %136 = load i8*, i8** %9, align 8, !dbg !3896
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3896
  store i8* %137, i8** %9, align 8, !dbg !3896
  %138 = bitcast i8* %136 to i8**, !dbg !3896
  %139 = load i8*, i8** %138, align 8, !dbg !3896
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3899
  store i8* %139, i8** %140, align 8, !dbg !3900, !tbaa !612
  %141 = icmp eq i8* %139, null, !dbg !3901
  %142 = select i1 %141, i64 9, i64 10, !dbg !3902
  br label %30, !dbg !3902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3906 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3910, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8* %1, metadata !3911, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8* %3, metadata !3913, metadata !DIExpression()), !dbg !3919
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3920
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3914, metadata !DIExpression()), !dbg !3921
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3922
  call void @llvm.va_start(i8* nonnull %6), !dbg !3922
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3923
  call void @llvm.va_end(i8* nonnull %6), !dbg !3924
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3925
  ret void, !dbg !3925
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3926 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3927, !tbaa !612
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.122, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3927
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.137, i64 0, i64 0), i32 5) #27, !dbg !3928
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.138, i64 0, i64 0)) #27, !dbg !3928
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.139, i64 0, i64 0), i32 5) #27, !dbg !3929
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.140, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.141, i64 0, i64 0)) #27, !dbg !3929
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.142, i64 0, i64 0), i32 5) #27, !dbg !3930
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.143, i64 0, i64 0)) #27, !dbg !3930
  ret void, !dbg !3931
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3938
  %3 = udiv i64 9223372036854775807, %1, !dbg !3939
  %4 = icmp ult i64 %3, %0, !dbg !3939
  br i1 %4, label %5, label %6, !dbg !3941

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3942
  unreachable, !dbg !3942

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %7, metadata !3944, metadata !DIExpression()) #27, !dbg !3950
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %8, metadata !3949, metadata !DIExpression()) #27, !dbg !3950
  %9 = icmp eq i8* %8, null, !dbg !3953
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3955
  br i1 %11, label %12, label %13, !dbg !3955

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3956
  unreachable, !dbg !3956

13:                                               ; preds = %6
  ret i8* %8, !dbg !3957
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3945 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3944, metadata !DIExpression()), !dbg !3958
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3959
  call void @llvm.dbg.value(metadata i8* %2, metadata !3949, metadata !DIExpression()), !dbg !3958
  %3 = icmp eq i8* %2, null, !dbg !3960
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3961
  br i1 %5, label %6, label %7, !dbg !3961

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3962
  unreachable, !dbg !3962

7:                                                ; preds = %1
  ret i8* %2, !dbg !3963
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %1, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %2, metadata !3970, metadata !DIExpression()), !dbg !3971
  %4 = udiv i64 9223372036854775807, %2, !dbg !3972
  %5 = icmp ult i64 %4, %1, !dbg !3972
  br i1 %5, label %6, label %7, !dbg !3974

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3975
  unreachable, !dbg !3975

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3976
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()) #27, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %8, metadata !3982, metadata !DIExpression()) #27, !dbg !3983
  %9 = icmp eq i64 %8, 0, !dbg !3985
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3987
  br i1 %11, label %12, label %13, !dbg !3987

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3988
  br label %19, !dbg !3990

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3991
  call void @llvm.dbg.value(metadata i8* %14, metadata !3977, metadata !DIExpression()) #27, !dbg !3983
  %15 = icmp eq i8* %14, null, !dbg !3992
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3994
  br i1 %17, label %18, label %19, !dbg !3994

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3995
  unreachable, !dbg !3995

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3983
  ret i8* %20, !dbg !3996
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3997
  %3 = icmp eq i64 %1, 0, !dbg !3998
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3999
  br i1 %5, label %6, label %7, !dbg !3999

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !4000
  br label %13, !dbg !4001

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %8, metadata !3977, metadata !DIExpression()), !dbg !3997
  %9 = icmp eq i8* %8, null, !dbg !4003
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4004
  br i1 %11, label %12, label %13, !dbg !4004

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !4005
  unreachable, !dbg !4005

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3997
  ret i8* %14, !dbg !4006
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64* %1, metadata !178, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %2, metadata !179, metadata !DIExpression()), !dbg !4007
  %4 = load i64, i64* %1, align 8, !dbg !4008, !tbaa !1142
  call void @llvm.dbg.value(metadata i64 %4, metadata !180, metadata !DIExpression()), !dbg !4007
  %5 = icmp eq i8* %0, null, !dbg !4009
  br i1 %5, label %6, label %20, !dbg !4011

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4012
  br i1 %7, label %8, label %13, !dbg !4015

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %9, metadata !180, metadata !DIExpression()), !dbg !4007
  %10 = icmp ugt i64 %2, 128, !dbg !4018
  %11 = zext i1 %10 to i64, !dbg !4018
  %12 = add nuw nsw i64 %9, %11, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !4007
  br label %13, !dbg !4020

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4007
  call void @llvm.dbg.value(metadata i64 %14, metadata !180, metadata !DIExpression()), !dbg !4007
  %15 = udiv i64 9223372036854775807, %2, !dbg !4021
  %16 = icmp ult i64 %15, %14, !dbg !4021
  br i1 %16, label %19, label %17, !dbg !4023

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !180, metadata !DIExpression()), !dbg !4007
  store i64 %14, i64* %1, align 8, !dbg !4024, !tbaa !1142
  %18 = mul i64 %14, %2, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()) #27, !dbg !4026
  call void @llvm.dbg.value(metadata i64 %28, metadata !3982, metadata !DIExpression()) #27, !dbg !4026
  br label %31, !dbg !4028

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !4029
  unreachable, !dbg !4029

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4030
  %22 = icmp ugt i64 %21, %4, !dbg !4033
  br i1 %22, label %24, label %23, !dbg !4034

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !4035
  unreachable, !dbg !4035

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4036
  %26 = add nuw i64 %4, 1, !dbg !4037
  %27 = add i64 %26, %25, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %27, metadata !180, metadata !DIExpression()), !dbg !4007
  store i64 %27, i64* %1, align 8, !dbg !4024, !tbaa !1142
  %28 = mul i64 %27, %2, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()) #27, !dbg !4026
  call void @llvm.dbg.value(metadata i64 %28, metadata !3982, metadata !DIExpression()) #27, !dbg !4026
  %29 = icmp eq i64 %28, 0, !dbg !4039
  br i1 %29, label %30, label %31, !dbg !4028

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !4040
  br label %38, !dbg !4041

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %33, metadata !3977, metadata !DIExpression()) #27, !dbg !4026
  %34 = icmp eq i8* %33, null, !dbg !4043
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4044
  br i1 %36, label %37, label %38, !dbg !4044

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !4045
  unreachable, !dbg !4045

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4026
  ret i8* %39, !dbg !4046
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !4047 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %0, metadata !3944, metadata !DIExpression()) #27, !dbg !4051
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %2, metadata !3949, metadata !DIExpression()) #27, !dbg !4051
  %3 = icmp eq i8* %2, null, !dbg !4054
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4055
  br i1 %5, label %6, label %7, !dbg !4055

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !4056
  unreachable, !dbg !4056

7:                                                ; preds = %1
  ret i8* %2, !dbg !4057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64* %1, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()) #27, !dbg !4065
  call void @llvm.dbg.value(metadata i64* %1, metadata !178, metadata !DIExpression()) #27, !dbg !4065
  call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()) #27, !dbg !4065
  %3 = load i64, i64* %1, align 8, !dbg !4067, !tbaa !1142
  call void @llvm.dbg.value(metadata i64 %3, metadata !180, metadata !DIExpression()) #27, !dbg !4065
  %4 = icmp eq i8* %0, null, !dbg !4068
  br i1 %4, label %5, label %10, !dbg !4069

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4070
  br i1 %6, label %17, label %7, !dbg !4071

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !180, metadata !DIExpression()) #27, !dbg !4065
  %8 = icmp slt i64 %3, 0, !dbg !4072
  br i1 %8, label %9, label %17, !dbg !4073

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !4074
  unreachable, !dbg !4074

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4075
  br i1 %11, label %13, label %12, !dbg !4076

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !4077
  unreachable, !dbg !4077

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4078
  %15 = add nuw nsw i64 %3, 1, !dbg !4079
  %16 = add nuw nsw i64 %15, %14, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %16, metadata !180, metadata !DIExpression()) #27, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3977, metadata !DIExpression()) #27, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %16, metadata !3982, metadata !DIExpression()) #27, !dbg !4081
  br label %17, !dbg !4083

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4084
  store i64 %18, i64* %1, align 8, !dbg !4084, !tbaa !1142
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !4085
  call void @llvm.dbg.value(metadata i8* %19, metadata !3977, metadata !DIExpression()) #27, !dbg !4081
  %20 = icmp eq i8* %19, null, !dbg !4086
  br i1 %20, label %21, label %22, !dbg !4087

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !4088
  unreachable, !dbg !4088

22:                                               ; preds = %17
  ret i8* %19, !dbg !4089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4090 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %0, metadata !4094, metadata !DIExpression()) #27, !dbg !4099
  call void @llvm.dbg.value(metadata i64 1, metadata !4097, metadata !DIExpression()) #27, !dbg !4099
  %2 = icmp slt i64 %0, 0, !dbg !4101
  br i1 %2, label %6, label %3, !dbg !4103

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %4, metadata !4098, metadata !DIExpression()) #27, !dbg !4099
  %5 = icmp eq i8* %4, null, !dbg !4105
  br i1 %5, label %6, label %7, !dbg !4106

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !4107
  unreachable, !dbg !4107

7:                                                ; preds = %3
  ret i8* %4, !dbg !4108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4094, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4109
  %3 = udiv i64 9223372036854775807, %1, !dbg !4110
  %4 = icmp ult i64 %3, %0, !dbg !4110
  br i1 %4, label %8, label %5, !dbg !4111

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !4112
  call void @llvm.dbg.value(metadata i8* %6, metadata !4098, metadata !DIExpression()), !dbg !4109
  %7 = icmp eq i8* %6, null, !dbg !4113
  br i1 %7, label %8, label %9, !dbg !4114

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !4115
  unreachable, !dbg !4115

9:                                                ; preds = %5
  ret i8* %6, !dbg !4116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3944, metadata !DIExpression()) #27, !dbg !4126
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %3, metadata !3949, metadata !DIExpression()) #27, !dbg !4126
  %4 = icmp eq i8* %3, null, !dbg !4129
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4130
  br i1 %6, label %7, label %8, !dbg !4130

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !4131
  unreachable, !dbg !4131

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4132, metadata !DIExpression()) #27, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %0, metadata !4139, metadata !DIExpression()) #27, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()) #27, !dbg !4141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !4143
  ret i8* %3, !dbg !4144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4145 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4147, metadata !DIExpression()), !dbg !4148
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !4149
  %3 = add i64 %2, 1, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()) #27, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %3, metadata !4124, metadata !DIExpression()) #27, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %3, metadata !3944, metadata !DIExpression()) #27, !dbg !4153
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !4155
  call void @llvm.dbg.value(metadata i8* %4, metadata !3949, metadata !DIExpression()) #27, !dbg !4153
  %5 = icmp eq i8* %4, null, !dbg !4156
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4157
  br i1 %7, label %8, label %9, !dbg !4157

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !4158
  unreachable, !dbg !4158

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4132, metadata !DIExpression()) #27, !dbg !4159
  call void @llvm.dbg.value(metadata i8* %0, metadata !4139, metadata !DIExpression()) #27, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %3, metadata !4140, metadata !DIExpression()) #27, !dbg !4159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !4161
  ret i8* %4, !dbg !4162
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4163 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4164, !tbaa !770
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #27, !dbg !4165
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i64 0, i64 0), i8* %2) #27, !dbg !4166
  tail call void @abort() #29, !dbg !4167
  unreachable, !dbg !4167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8* %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !4168 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4180, metadata !DIExpression()), !dbg !4185
  %5 = bitcast i8** %4 to i8*, !dbg !4186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27, !dbg !4186
  call void @llvm.dbg.value(metadata i64 0, metadata !4182, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %0, metadata !4184, metadata !DIExpression()), !dbg !4187
  %6 = load i8, i8* %0, align 1, !dbg !4188, !tbaa !870
  %7 = icmp eq i8 %6, 0, !dbg !4193
  br i1 %7, label %8, label %80, !dbg !4194

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 %91, metadata !4195, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4200, metadata !DIExpression()) #27, !dbg !4219
  %9 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #27, !dbg !4221
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4202, metadata !DIExpression()) #27, !dbg !4222
  call void @llvm.dbg.value(metadata i64 0, metadata !4207, metadata !DIExpression()) #27, !dbg !4219
  %10 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4223
  call void @llvm.va_copy(i8* nonnull %9, i8* %10) #27, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %91, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  br label %15, !dbg !4224

11:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %91, metadata !4195, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4200, metadata !DIExpression()) #27, !dbg !4219
  %12 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #27, !dbg !4221
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4202, metadata !DIExpression()) #27, !dbg !4222
  call void @llvm.dbg.value(metadata i64 0, metadata !4207, metadata !DIExpression()) #27, !dbg !4219
  %13 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4223
  call void @llvm.va_copy(i8* nonnull %12, i8* %13) #27, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %91, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  %14 = icmp eq i64 %91, 0, !dbg !4225
  br i1 %14, label %15, label %18, !dbg !4224

15:                                               ; preds = %8, %11
  %16 = phi i8* [ %9, %8 ], [ %12, %11 ]
  call void @llvm.va_end(i8* nonnull %16) #27, !dbg !4226
  %17 = call noalias i8* @xmalloc(i64 1) #27, !dbg !4227
  call void @llvm.dbg.value(metadata i8* %51, metadata !4201, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %51, metadata !4209, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i64 undef, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  br label %76, !dbg !4228

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = load i32, i32* %19, align 16, !dbg !4229
  br label %24, !dbg !4224

24:                                               ; preds = %36, %18
  %25 = phi i32 [ %23, %18 ], [ %37, %36 ], !dbg !4229
  %26 = phi i64 [ 0, %18 ], [ %42, %36 ]
  %27 = phi i64 [ %91, %18 ], [ %43, %36 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !4207, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %27, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  %28 = icmp ult i32 %25, 41, !dbg !4229
  br i1 %28, label %29, label %33, !dbg !4229

29:                                               ; preds = %24
  %30 = zext i32 %25 to i64, !dbg !4229
  %31 = getelementptr i8, i8* %22, i64 %30, !dbg !4229
  %32 = add nuw nsw i32 %25, 8, !dbg !4229
  store i32 %32, i32* %19, align 16, !dbg !4229
  br label %36, !dbg !4229

33:                                               ; preds = %24
  %34 = load i8*, i8** %20, align 8, !dbg !4229
  %35 = getelementptr i8, i8* %34, i64 8, !dbg !4229
  store i8* %35, i8** %20, align 8, !dbg !4229
  br label %36, !dbg !4229

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %25, %33 ]
  %38 = phi i8* [ %31, %29 ], [ %34, %33 ]
  %39 = bitcast i8* %38 to i8**, !dbg !4229
  %40 = load i8*, i8** %39, align 8, !dbg !4229
  call void @llvm.dbg.value(metadata i8* %40, metadata !4210, metadata !DIExpression()) #27, !dbg !4230
  %41 = call i64 @strlen(i8* nonnull dereferenceable(1) %40) #28, !dbg !4231
  call void @llvm.dbg.value(metadata i64 %26, metadata !4232, metadata !DIExpression()) #27, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %41, metadata !4238, metadata !DIExpression()) #27, !dbg !4240
  call void @llvm.dbg.value(metadata i64 undef, metadata !4239, metadata !DIExpression()) #27, !dbg !4240
  %42 = call i64 @llvm.uadd.sat.i64(i64 %26, i64 %41) #27, !dbg !4242
  call void @llvm.dbg.value(metadata i64 %42, metadata !4207, metadata !DIExpression()) #27, !dbg !4219
  %43 = add i64 %27, -1, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %43, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  %44 = icmp eq i64 %43, 0, !dbg !4225
  br i1 %44, label %45, label %24, !dbg !4224, !llvm.loop !4244

45:                                               ; preds = %36
  call void @llvm.va_end(i8* nonnull %12) #27, !dbg !4226
  %46 = icmp ugt i64 %42, 2147483647
  br i1 %46, label %47, label %49, !dbg !4246

47:                                               ; preds = %45
  %48 = tail call i32* @__errno_location() #31, !dbg !4248
  store i32 75, i32* %48, align 4, !dbg !4250, !tbaa !770
  br label %94, !dbg !4251

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %42, 1, !dbg !4227
  %51 = call noalias i8* @xmalloc(i64 %50) #27, !dbg !4227
  call void @llvm.dbg.value(metadata i8* %51, metadata !4201, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %51, metadata !4209, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %91, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  br label %55, !dbg !4228

55:                                               ; preds = %68, %49
  %56 = phi i64 [ %91, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %57, metadata !4209, metadata !DIExpression()) #27, !dbg !4219
  %58 = load i32, i32* %52, align 8, !dbg !4252
  %59 = icmp ult i32 %58, 41, !dbg !4252
  br i1 %59, label %60, label %65, !dbg !4252

60:                                               ; preds = %55
  %61 = load i8*, i8** %54, align 8, !dbg !4252
  %62 = zext i32 %58 to i64, !dbg !4252
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4252
  %64 = add nuw nsw i32 %58, 8, !dbg !4252
  store i32 %64, i32* %52, align 8, !dbg !4252
  br label %68, !dbg !4252

65:                                               ; preds = %55
  %66 = load i8*, i8** %53, align 8, !dbg !4252
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !4252
  store i8* %67, i8** %53, align 8, !dbg !4252
  br label %68, !dbg !4252

68:                                               ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !4252
  %71 = load i8*, i8** %70, align 8, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %71, metadata !4214, metadata !DIExpression()) #27, !dbg !4253
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %71) #28, !dbg !4254
  call void @llvm.dbg.value(metadata i64 %72, metadata !4218, metadata !DIExpression()) #27, !dbg !4253
  call void @llvm.dbg.value(metadata i8* %57, metadata !4255, metadata !DIExpression()) #27, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %71, metadata !4258, metadata !DIExpression()) #27, !dbg !4260
  call void @llvm.dbg.value(metadata i64 %72, metadata !4259, metadata !DIExpression()) #27, !dbg !4260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %57, i8* nonnull align 1 %71, i64 %72, i1 false) #27, !dbg !4262
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %73, metadata !4209, metadata !DIExpression()) #27, !dbg !4219
  %74 = add i64 %56, -1, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %74, metadata !4208, metadata !DIExpression()) #27, !dbg !4219
  %75 = icmp eq i64 %74, 0, !dbg !4265
  br i1 %75, label %76, label %55, !dbg !4228, !llvm.loop !4266

76:                                               ; preds = %68, %15
  %77 = phi i8* [ %16, %15 ], [ %12, %68 ]
  %78 = phi i8* [ %17, %15 ], [ %51, %68 ]
  %79 = phi i8* [ %17, %15 ], [ %73, %68 ], !dbg !4219
  store i8 0, i8* %79, align 1, !dbg !4268, !tbaa !870
  br label %94, !dbg !4269

80:                                               ; preds = %2, %89
  %81 = phi i8 [ %92, %89 ], [ %6, %2 ]
  %82 = phi i8* [ %90, %89 ], [ %0, %2 ]
  %83 = phi i64 [ %91, %89 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i8* %82, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %83, metadata !4182, metadata !DIExpression()), !dbg !4187
  %84 = icmp eq i8 %81, 37, !dbg !4270
  br i1 %84, label %85, label %97, !dbg !4272

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %86, metadata !4184, metadata !DIExpression()), !dbg !4187
  %87 = load i8, i8* %86, align 1, !dbg !4274, !tbaa !870
  %88 = icmp eq i8 %87, 115, !dbg !4276
  br i1 %88, label %89, label %97, !dbg !4277

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, i8* %82, i64 2, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %90, metadata !4184, metadata !DIExpression()), !dbg !4187
  %91 = add i64 %83, 1, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %91, metadata !4182, metadata !DIExpression()), !dbg !4187
  %92 = load i8, i8* %90, align 1, !dbg !4188, !tbaa !870
  %93 = icmp eq i8 %92, 0, !dbg !4193
  br i1 %93, label %11, label %80, !dbg !4194, !llvm.loop !4280

94:                                               ; preds = %76, %47
  %95 = phi i8* [ %12, %47 ], [ %77, %76 ]
  %96 = phi i8* [ null, %47 ], [ %78, %76 ], !dbg !4219
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #27, !dbg !4283
  br label %107

97:                                               ; preds = %85, %80
  call void @llvm.dbg.value(metadata i8** %4, metadata !4181, metadata !DIExpression(DW_OP_deref)), !dbg !4185
  call void @llvm.dbg.value(metadata i8** %4, metadata !4284, metadata !DIExpression()) #27, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %0, metadata !4292, metadata !DIExpression()) #27, !dbg !4294
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4293, metadata !DIExpression()) #27, !dbg !4294
  %98 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* nonnull %0, %struct.__va_list_tag* %1) #27, !dbg !4297
  %99 = icmp slt i32 %98, 0, !dbg !4298
  br i1 %99, label %100, label %105, !dbg !4299

100:                                              ; preds = %97
  %101 = tail call i32* @__errno_location() #31, !dbg !4300
  %102 = load i32, i32* %101, align 4, !dbg !4300, !tbaa !770
  %103 = icmp eq i32 %102, 12, !dbg !4303
  br i1 %103, label %104, label %107, !dbg !4304

104:                                              ; preds = %100
  call void @xalloc_die() #29, !dbg !4305
  unreachable, !dbg !4305

105:                                              ; preds = %97
  %106 = load i8*, i8** %4, align 8, !dbg !4306, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %106, metadata !4181, metadata !DIExpression()), !dbg !4185
  br label %107, !dbg !4307

107:                                              ; preds = %94, %100, %105
  %108 = phi i8* [ %106, %105 ], [ %96, %94 ], [ null, %100 ], !dbg !4185
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27, !dbg !4308
  ret i8* %108, !dbg !4308
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !4309 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4311, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4312, metadata !DIExpression()), !dbg !4317
  %3 = icmp eq i64 %0, 0, !dbg !4318
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4319
  br i1 %5, label %11, label %6, !dbg !4319

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4314, metadata !DIExpression()), !dbg !4320
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4321
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4321
  br i1 %8, label %9, label %11, !dbg !4323

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !4324
  store i32 12, i32* %10, align 4, !dbg !4326, !tbaa !770
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4311, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %12, metadata !4312, metadata !DIExpression()), !dbg !4317
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %14, metadata !4313, metadata !DIExpression()), !dbg !4317
  br label %15, !dbg !4328

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4317
  ret i8* %16, !dbg !4329
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4330 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4346, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i8* %1, metadata !4347, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %2, metadata !4348, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4349, metadata !DIExpression()), !dbg !4355
  %6 = bitcast i32* %5 to i8*, !dbg !4356
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4356
  %7 = icmp eq i32* %0, null, !dbg !4357
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4359
  call void @llvm.dbg.value(metadata i32* %8, metadata !4346, metadata !DIExpression()), !dbg !4355
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %9, metadata !4350, metadata !DIExpression()), !dbg !4355
  %10 = icmp ugt i64 %9, -3, !dbg !4361
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4362
  br i1 %12, label %13, label %18, !dbg !4362

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !4363
  br i1 %14, label %18, label %15, !dbg !4364

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4365, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %16, metadata !4352, metadata !DIExpression()), !dbg !4366
  %17 = zext i8 %16 to i32, !dbg !4367
  store i32 %17, i32* %8, align 4, !dbg !4368, !tbaa !770
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4369
  ret i64 %19, !dbg !4369
}

; Function Attrs: nounwind
declare !dbg !4370 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4375 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4413, metadata !DIExpression()), !dbg !4418
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4419
  call void @llvm.dbg.value(metadata i1 undef, metadata !4414, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4420, metadata !DIExpression()), !dbg !4424
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4426
  %4 = load i32, i32* %3, align 8, !dbg !4426, !tbaa !4427
  %5 = and i32 %4, 32, !dbg !4429
  %6 = icmp eq i32 %5, 0, !dbg !4429
  call void @llvm.dbg.value(metadata i1 %6, metadata !4416, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4418
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4430
  %8 = icmp eq i32 %7, 0, !dbg !4431
  call void @llvm.dbg.value(metadata i1 %8, metadata !4417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4418
  br i1 %6, label %9, label %19, !dbg !4432

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4434
  call void @llvm.dbg.value(metadata i1 %10, metadata !4414, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4418
  %11 = or i1 %10, %8, !dbg !4435
  %12 = xor i1 %8, true, !dbg !4435
  %13 = sext i1 %12 to i32, !dbg !4435
  br i1 %11, label %22, label %14, !dbg !4435

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4436
  %16 = load i32, i32* %15, align 4, !dbg !4436, !tbaa !770
  %17 = icmp ne i32 %16, 9, !dbg !4437
  %18 = sext i1 %17 to i32, !dbg !4438
  br label %22, !dbg !4438

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4439

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4441
  store i32 0, i32* %21, align 4, !dbg !4443, !tbaa !770
  br label %22, !dbg !4441

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4418
  ret i32 %23, !dbg !4444
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4445 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4447, metadata !DIExpression()), !dbg !4452
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4453
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4453
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4448, metadata !DIExpression()), !dbg !4454
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4455
  %5 = icmp eq i32 %4, 0, !dbg !4455
  br i1 %5, label %6, label %13, !dbg !4457

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4458
  %8 = load i16, i16* %7, align 16, !dbg !4458
  %9 = icmp eq i16 %8, 67, !dbg !4458
  br i1 %9, label %13, label %10, !dbg !4459

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.166, i64 0, i64 0), i64 6), !dbg !4460
  %12 = icmp ne i32 %11, 0, !dbg !4461
  br label %13, !dbg !4459

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4452
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4462
  ret i1 %14, !dbg !4462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4463 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4468
  call void @llvm.dbg.value(metadata i8* %1, metadata !4467, metadata !DIExpression()), !dbg !4469
  %2 = icmp eq i8* %1, null, !dbg !4470
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.169, i64 0, i64 0), i8* %1, !dbg !4472
  call void @llvm.dbg.value(metadata i8* %3, metadata !4467, metadata !DIExpression()), !dbg !4469
  %4 = load i8, i8* %3, align 1, !dbg !4473, !tbaa !870
  %5 = icmp eq i8 %4, 0, !dbg !4477
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0), i8* %3, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %6, metadata !4467, metadata !DIExpression()), !dbg !4469
  ret i8* %6, !dbg !4479
}

; Function Attrs: nounwind
declare !dbg !4480 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4487, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8* %1, metadata !4488, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %2, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()) #27, !dbg !4500
  call void @llvm.dbg.value(metadata i8* %1, metadata !4494, metadata !DIExpression()) #27, !dbg !4500
  call void @llvm.dbg.value(metadata i64 %2, metadata !4495, metadata !DIExpression()) #27, !dbg !4500
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()) #27, !dbg !4508
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4510
  call void @llvm.dbg.value(metadata i8* %4, metadata !4507, metadata !DIExpression()) #27, !dbg !4508
  call void @llvm.dbg.value(metadata i8* %4, metadata !4496, metadata !DIExpression()) #27, !dbg !4500
  %5 = icmp eq i8* %4, null, !dbg !4511
  br i1 %5, label %6, label %9, !dbg !4512

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4513
  br i1 %7, label %19, label %8, !dbg !4516

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4517, !tbaa !870
  br label %19, !dbg !4518

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4519
  call void @llvm.dbg.value(metadata i64 %10, metadata !4497, metadata !DIExpression()) #27, !dbg !4520
  %11 = icmp ult i64 %10, %2, !dbg !4521
  br i1 %11, label %12, label %14, !dbg !4523

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %1, metadata !4526, metadata !DIExpression()) #27, !dbg !4531
  call void @llvm.dbg.value(metadata i8* %4, metadata !4529, metadata !DIExpression()) #27, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %13, metadata !4530, metadata !DIExpression()) #27, !dbg !4531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4533
  br label %19, !dbg !4534

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4535
  br i1 %15, label %19, label %16, !dbg !4538

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4539
  call void @llvm.dbg.value(metadata i8* %1, metadata !4526, metadata !DIExpression()) #27, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %4, metadata !4529, metadata !DIExpression()) #27, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %17, metadata !4530, metadata !DIExpression()) #27, !dbg !4541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4543
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4544
  store i8 0, i8* %18, align 1, !dbg !4545, !tbaa !870
  br label %19, !dbg !4546

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4547
  ret i32 %20, !dbg !4548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()) #27, !dbg !4553
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4555
  call void @llvm.dbg.value(metadata i8* %2, metadata !4507, metadata !DIExpression()) #27, !dbg !4553
  ret i8* %2, !dbg !4556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4557 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4595, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4596, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4598, metadata !DIExpression()), !dbg !4599
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %2, metadata !4597, metadata !DIExpression()), !dbg !4599
  %3 = icmp slt i32 %2, 0, !dbg !4601
  br i1 %3, label %4, label %6, !dbg !4603

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4604
  br label %24, !dbg !4605

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4606
  %8 = icmp eq i32 %7, 0, !dbg !4606
  br i1 %8, label %13, label %9, !dbg !4608

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4609
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4610
  %12 = icmp eq i64 %11, -1, !dbg !4611
  br i1 %12, label %16, label %13, !dbg !4612

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4613
  %15 = icmp eq i32 %14, 0, !dbg !4613
  br i1 %15, label %16, label %18, !dbg !4614

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4596, metadata !DIExpression()), !dbg !4599
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4615
  call void @llvm.dbg.value(metadata i32 %21, metadata !4598, metadata !DIExpression()), !dbg !4599
  br label %24, !dbg !4616

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4617
  %20 = load i32, i32* %19, align 4, !dbg !4617, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %20, metadata !4596, metadata !DIExpression()), !dbg !4599
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4615
  call void @llvm.dbg.value(metadata i32 %21, metadata !4598, metadata !DIExpression()), !dbg !4599
  %22 = icmp eq i32 %20, 0, !dbg !4618
  br i1 %22, label %24, label %23, !dbg !4616

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4620, !tbaa !770
  call void @llvm.dbg.value(metadata i32 -1, metadata !4598, metadata !DIExpression()), !dbg !4599
  br label %24, !dbg !4622

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4599
  ret i32 %25, !dbg !4623
}

; Function Attrs: nofree nounwind
declare !dbg !4624 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4627 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4628 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4631 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4671
  br i1 %2, label %6, label %3, !dbg !4673

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4674
  %5 = icmp eq i32 %4, 0, !dbg !4674
  br i1 %5, label %6, label %8, !dbg !4675

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4676
  br label %17, !dbg !4677

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4678, metadata !DIExpression()) #27, !dbg !4683
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4685
  %10 = load i32, i32* %9, align 8, !dbg !4685, !tbaa !4427
  %11 = and i32 %10, 256, !dbg !4687
  %12 = icmp eq i32 %11, 0, !dbg !4687
  br i1 %12, label %15, label %13, !dbg !4688

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4689
  br label %15, !dbg !4689

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4690
  br label %17, !dbg !4691

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4670
  ret i32 %18, !dbg !4692
}

; Function Attrs: nofree nounwind
declare !dbg !4693 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4696 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4735, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %1, metadata !4736, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %2, metadata !4737, metadata !DIExpression()), !dbg !4741
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4742
  %5 = load i8*, i8** %4, align 8, !dbg !4742, !tbaa !4743
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4744
  %7 = load i8*, i8** %6, align 8, !dbg !4744, !tbaa !4745
  %8 = icmp eq i8* %5, %7, !dbg !4746
  br i1 %8, label %9, label %28, !dbg !4747

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4748
  %11 = load i8*, i8** %10, align 8, !dbg !4748, !tbaa !4749
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4750
  %13 = load i8*, i8** %12, align 8, !dbg !4750, !tbaa !4751
  %14 = icmp eq i8* %11, %13, !dbg !4752
  br i1 %14, label %15, label %28, !dbg !4753

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4754
  %17 = load i8*, i8** %16, align 8, !dbg !4754, !tbaa !4755
  %18 = icmp eq i8* %17, null, !dbg !4756
  br i1 %18, label %19, label %28, !dbg !4757

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4758
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4759
  call void @llvm.dbg.value(metadata i64 %21, metadata !4738, metadata !DIExpression()), !dbg !4760
  %22 = icmp eq i64 %21, -1, !dbg !4761
  br i1 %22, label %30, label %23, !dbg !4763

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4764
  %25 = load i32, i32* %24, align 8, !dbg !4765, !tbaa !4427
  %26 = and i32 %25, -17, !dbg !4765
  store i32 %26, i32* %24, align 8, !dbg !4765, !tbaa !4427
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4766
  store i64 %21, i64* %27, align 8, !dbg !4767, !tbaa !4768
  br label %30, !dbg !4769

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4770
  br label %30, !dbg !4771

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4741
  ret i32 %31, !dbg !4772
}

; Function Attrs: nofree nounwind
declare !dbg !4773 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !45, !53, !61, !148, !67, !73, !155, !158, !160, !142, !167, !184, !186, !189, !191, !194, !196, !198, !587, !589, !591, !593}
!llvm.ident = !{!595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595}
!llvm.module.flags = !{!596, !597, !598, !599, !600}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 73, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !12, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 59, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/test.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 42, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!31 = !{!32, !34, !35, !36, !7}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{!38, !40, !0}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 71, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 72, type: !35, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Version", scope: !45, file: !46, line: 2, type: !49, isLocal: false, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !48, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!47 = !{}
!48 = !{!43}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "file_name", scope: !53, file: !54, line: 46, type: !49, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !55, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!55 = !{!51, !56}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !53, file: !54, line: 56, type: !58, isLocal: true, isDefinition: true)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "exit_failure", scope: !61, file: !62, line: 24, type: !64, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !63, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!59}
!64 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "program_name", scope: !67, file: !68, line: 33, type: !49, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !69, globals: !70, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!69 = !{!34, !32}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !73, file: !74, line: 85, type: !136, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !95, globals: !99, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!75 = !{!76, !90, !16}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !77, line: 32, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!79 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!85 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!86 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!87 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!88 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!89 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !77, line: 242, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!94 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!95 = !{!35, !36, !96, !32}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!71, !100, !106, !118, !120, !125, !132, !134}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !73, file: !74, line: 101, type: !102, isLocal: false, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 320, elements: !104)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!104 = !{!105}
!105 = !DISubrange(count: 10)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !73, file: !74, line: 1052, type: !108, isLocal: false, isDefinition: true)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !74, line: 65, size: 448, elements: !109)
!109 = !{!110, !111, !112, !116, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !108, file: !74, line: 68, baseType: !76, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !74, line: 71, baseType: !35, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !108, file: !74, line: 75, baseType: !113, size: 256, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !108, file: !74, line: 78, baseType: !49, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !108, file: !74, line: 81, baseType: !49, size: 64, offset: 384)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !73, file: !74, line: 116, type: !108, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slot0", scope: !73, file: !74, line: 842, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "slotvec", scope: !73, file: !74, line: 845, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !74, line: 834, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !74, line: 836, baseType: !96, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !74, line: 837, baseType: !32, size: 64, offset: 64)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "nslots", scope: !73, file: !74, line: 843, type: !35, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "slotvec0", scope: !73, file: !74, line: 844, type: !128, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 704, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !142, file: !143, line: 26, type: !145, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !144, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!144 = !{!140}
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 376, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 47)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !150, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !152, line: 102, baseType: !153)
!152 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !154, line: 73, baseType: !98)
!154 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !{!7}
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "lib/verror.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !162, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!163}
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 40, baseType: !7, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!166 = !{!34}
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !{!170}
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !172, file: !171, line: 186, baseType: !7, size: 32, elements: !181)
!171 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = distinct !DISubprogram(name: "x2nrealloc", scope: !171, file: !171, line: 174, type: !173, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{!34, !34, !175, !96}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(name: "p", arg: 1, scope: !172, file: !171, line: 174, type: !34)
!178 = !DILocalVariable(name: "pn", arg: 2, scope: !172, file: !171, line: 174, type: !175)
!179 = !DILocalVariable(name: "s", arg: 3, scope: !172, file: !171, line: 174, type: !96)
!180 = !DILocalVariable(name: "n", scope: !172, file: !171, line: 176, type: !96)
!181 = !{!182}
!182 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!183 = !{!96, !32, !34}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !188, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = !{!32}
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !193, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = !{!96}
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !{!201}
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 41, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!204 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!205 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!206 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!207 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!211 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!212 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!242 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!243 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!244 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!245 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!246 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!247 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!248 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!249 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!250 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!251 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!252 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!253 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!312 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!399 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!473 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!474 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!475 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!476 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!477 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!478 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!480 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!481 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!482 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!483 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!484 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!485 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!519 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!520 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!521 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!522 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!523 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!528 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!529 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!530 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!531 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!588 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, splitDebugInlining: false, nameTableKind: None)
!590 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = !{!"clang version 12.0.1"}
!596 = !{i32 7, !"Dwarf Version", i32 4}
!597 = !{i32 2, !"Debug Info Version", i32 3}
!598 = !{i32 1, !"wchar_size", i32 4}
!599 = !{i32 7, !"PIC Level", i32 2}
!600 = !{i32 7, !"PIE Level", i32 2}
!601 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 684, type: !602, scopeLine: 685, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !35}
!604 = !{!605}
!605 = !DILocalVariable(name: "status", arg: 1, scope: !601, file: !6, line: 684, type: !35)
!606 = !DILocation(line: 0, scope: !601)
!607 = !DILocation(line: 686, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !6, line: 686, column: 7)
!609 = !DILocation(line: 686, column: 7, scope: !601)
!610 = !DILocation(line: 687, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !6, line: 687, column: 5)
!612 = !{!613, !613, i64 0}
!613 = !{!"any pointer", !614, i64 0}
!614 = !{!"omnipotent char", !615, i64 0}
!615 = !{!"Simple C/C++ TBAA"}
!616 = !DILocation(line: 690, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !6, line: 689, column: 5)
!618 = !DILocation(line: 697, column: 7, scope: !617)
!619 = !DILocation(line: 701, column: 7, scope: !617)
!620 = !DILocation(line: 702, column: 7, scope: !617)
!621 = !DILocation(line: 703, column: 7, scope: !617)
!622 = !DILocation(line: 708, column: 7, scope: !617)
!623 = !DILocation(line: 715, column: 7, scope: !617)
!624 = !DILocation(line: 723, column: 7, scope: !617)
!625 = !DILocation(line: 732, column: 7, scope: !617)
!626 = !DILocation(line: 738, column: 7, scope: !617)
!627 = !DILocation(line: 745, column: 7, scope: !617)
!628 = !DILocation(line: 752, column: 7, scope: !617)
!629 = !DILocation(line: 760, column: 7, scope: !617)
!630 = !DILocation(line: 767, column: 7, scope: !617)
!631 = !DILocation(line: 773, column: 7, scope: !617)
!632 = !DILocation(line: 778, column: 7, scope: !617)
!633 = !DILocation(line: 783, column: 7, scope: !617)
!634 = !DILocalVariable(name: "program", arg: 1, scope: !635, file: !636, line: 634, type: !49)
!635 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !636, file: !636, line: 634, type: !637, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!636 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!637 = !DISubroutineType(types: !638)
!638 = !{null, !49}
!639 = !{!634, !640, !649, !650, !652}
!640 = !DILocalVariable(name: "infomap", scope: !635, file: !636, line: 636, type: !641)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 896, elements: !647)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !635, file: !636, line: 636, size: 128, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !643, file: !636, line: 636, baseType: !49, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !636, line: 636, baseType: !49, size: 64, offset: 64)
!647 = !{!648}
!648 = !DISubrange(count: 7)
!649 = !DILocalVariable(name: "node", scope: !635, file: !636, line: 646, type: !49)
!650 = !DILocalVariable(name: "map_prog", scope: !635, file: !636, line: 647, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!652 = !DILocalVariable(name: "lc_messages", scope: !635, file: !636, line: 659, type: !49)
!653 = !DILocation(line: 0, scope: !635, inlinedAt: !654)
!654 = distinct !DILocation(line: 784, column: 7, scope: !617)
!655 = !DILocation(line: 636, column: 3, scope: !635, inlinedAt: !654)
!656 = !DILocation(line: 636, column: 67, scope: !635, inlinedAt: !654)
!657 = !DILocation(line: 647, column: 36, scope: !635, inlinedAt: !654)
!658 = !DILocation(line: 649, column: 3, scope: !635, inlinedAt: !654)
!659 = !DILocation(line: 649, column: 33, scope: !635, inlinedAt: !654)
!660 = !DILocation(line: 650, column: 13, scope: !635, inlinedAt: !654)
!661 = !DILocation(line: 649, column: 20, scope: !635, inlinedAt: !654)
!662 = !{!663, !613, i64 0}
!663 = !{!"infomap", !613, i64 0, !613, i64 8}
!664 = !DILocation(line: 649, column: 10, scope: !635, inlinedAt: !654)
!665 = !DILocation(line: 649, column: 28, scope: !635, inlinedAt: !654)
!666 = distinct !{!666, !658, !660, !667}
!667 = !{!"llvm.loop.mustprogress"}
!668 = !DILocation(line: 652, column: 17, scope: !669, inlinedAt: !654)
!669 = distinct !DILexicalBlock(scope: !635, file: !636, line: 652, column: 7)
!670 = !{!663, !613, i64 8}
!671 = !DILocation(line: 652, column: 7, scope: !669, inlinedAt: !654)
!672 = !DILocation(line: 652, column: 7, scope: !635, inlinedAt: !654)
!673 = !DILocation(line: 655, column: 3, scope: !635, inlinedAt: !654)
!674 = !DILocation(line: 659, column: 29, scope: !635, inlinedAt: !654)
!675 = !DILocation(line: 660, column: 7, scope: !676, inlinedAt: !654)
!676 = distinct !DILexicalBlock(scope: !635, file: !636, line: 660, column: 7)
!677 = !DILocation(line: 660, column: 19, scope: !676, inlinedAt: !654)
!678 = !DILocation(line: 660, column: 22, scope: !676, inlinedAt: !654)
!679 = !DILocation(line: 660, column: 7, scope: !635, inlinedAt: !654)
!680 = !DILocation(line: 666, column: 7, scope: !681, inlinedAt: !654)
!681 = distinct !DILexicalBlock(scope: !676, file: !636, line: 661, column: 5)
!682 = !DILocation(line: 668, column: 5, scope: !681, inlinedAt: !654)
!683 = !DILocation(line: 669, column: 3, scope: !635, inlinedAt: !654)
!684 = !DILocation(line: 671, column: 3, scope: !635, inlinedAt: !654)
!685 = !DILocation(line: 673, column: 1, scope: !635, inlinedAt: !654)
!686 = !DILocation(line: 786, column: 3, scope: !601)
!687 = !DISubprogram(name: "dcgettext", scope: !688, file: !688, line: 51, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!688 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!689 = !DISubroutineType(types: !690)
!690 = !{!32, !49, !49, !35}
!691 = !DISubprogram(name: "fputs_unlocked", scope: !692, file: !692, line: 667, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!692 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!693 = !DISubroutineType(types: !694)
!694 = !{!35, !49, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !698)
!697 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !714, !715, !716, !717, !720, !721, !723, !727, !730, !732, !735, !738, !739, !740, !741, !742}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !696, file: !697, line: 51, baseType: !35, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !696, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !696, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !696, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !696, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !696, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !696, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !696, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !696, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !696, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !696, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !696, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !696, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !697, line: 36, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !696, file: !697, line: 70, baseType: !695, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !696, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !696, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !696, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !154, line: 152, baseType: !719)
!719 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !696, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !696, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!722 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !696, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 1)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !696, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !697, line: 43, baseType: null)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !696, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !154, line: 153, baseType: !719)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !696, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !697, line: 37, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !696, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !697, line: 38, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !696, file: !697, line: 93, baseType: !695, size: 64, offset: 1344)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !696, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !696, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !696, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !696, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 20)
!746 = !DISubprogram(name: "setlocale", scope: !747, file: !747, line: 122, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!747 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!748 = !DISubroutineType(types: !749)
!749 = !{!32, !35, !49}
!750 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 805, type: !751, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!35, !35, !42}
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "margc", arg: 1, scope: !750, file: !6, line: 805, type: !35)
!755 = !DILocalVariable(name: "margv", arg: 2, scope: !750, file: !6, line: 805, type: !42)
!756 = !DILocalVariable(name: "value", scope: !750, file: !6, line: 807, type: !58)
!757 = !DILocation(line: 0, scope: !750)
!758 = !DILocation(line: 818, column: 21, scope: !750)
!759 = !DILocation(line: 818, column: 3, scope: !750)
!760 = !DILocation(line: 819, column: 3, scope: !750)
!761 = !DILocation(line: 820, column: 3, scope: !750)
!762 = !DILocation(line: 821, column: 3, scope: !750)
!763 = !DILocalVariable(name: "status", arg: 1, scope: !764, file: !636, line: 99, type: !35)
!764 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !636, file: !636, line: 99, type: !602, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!765 = !{!763}
!766 = !DILocation(line: 0, scope: !764, inlinedAt: !767)
!767 = distinct !DILocation(line: 823, column: 3, scope: !750)
!768 = !DILocation(line: 102, column: 18, scope: !769, inlinedAt: !767)
!769 = distinct !DILexicalBlock(scope: !764, file: !636, line: 101, column: 7)
!770 = !{!771, !771, i64 0}
!771 = !{!"int", !614, i64 0}
!772 = !DILocation(line: 824, column: 3, scope: !750)
!773 = !DILocation(line: 827, column: 8, scope: !750)
!774 = !DILocation(line: 837, column: 17, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !6, line: 837, column: 11)
!776 = distinct !DILexicalBlock(scope: !777, file: !6, line: 830, column: 5)
!777 = distinct !DILexicalBlock(scope: !750, file: !6, line: 829, column: 7)
!778 = !DILocation(line: 837, column: 11, scope: !776)
!779 = !DILocation(line: 839, column: 15, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !6, line: 839, column: 15)
!781 = distinct !DILexicalBlock(scope: !775, file: !6, line: 838, column: 9)
!782 = !DILocation(line: 839, column: 15, scope: !781)
!783 = !DILocation(line: 840, column: 13, scope: !780)
!784 = !DILocation(line: 842, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !6, line: 842, column: 15)
!786 = !DILocation(line: 842, column: 15, scope: !781)
!787 = !DILocation(line: 844, column: 28, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !6, line: 843, column: 13)
!789 = !DILocation(line: 844, column: 64, scope: !788)
!790 = !DILocation(line: 844, column: 15, scope: !788)
!791 = !DILocation(line: 846, column: 15, scope: !788)
!792 = !DILocation(line: 849, column: 17, scope: !793)
!793 = distinct !DILexicalBlock(scope: !776, file: !6, line: 849, column: 11)
!794 = !DILocation(line: 849, column: 21, scope: !793)
!795 = !DILocation(line: 849, column: 25, scope: !793)
!796 = !DILocation(line: 849, column: 11, scope: !776)
!797 = !DILocation(line: 850, column: 28, scope: !793)
!798 = !DILocation(line: 850, column: 45, scope: !793)
!799 = !DILocation(line: 850, column: 9, scope: !793)
!800 = !DILocation(line: 855, column: 8, scope: !750)
!801 = !DILocation(line: 856, column: 7, scope: !750)
!802 = !DILocation(line: 858, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !750, file: !6, line: 858, column: 7)
!804 = !DILocation(line: 858, column: 7, scope: !750)
!805 = !DILocation(line: 861, column: 27, scope: !750)
!806 = !DILocation(line: 861, column: 11, scope: !750)
!807 = !DILocation(line: 863, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !750, file: !6, line: 863, column: 7)
!809 = !DILocation(line: 863, column: 14, scope: !808)
!810 = !DILocation(line: 863, column: 11, scope: !808)
!811 = !DILocation(line: 863, column: 7, scope: !750)
!812 = !DILocation(line: 864, column: 24, scope: !808)
!813 = !DILocation(line: 864, column: 55, scope: !808)
!814 = !DILocation(line: 864, column: 60, scope: !808)
!815 = !DILocation(line: 864, column: 48, scope: !808)
!816 = !DILocation(line: 864, column: 5, scope: !808)
!817 = !DILocation(line: 866, column: 3, scope: !750)
!818 = !DILocation(line: 867, column: 1, scope: !750)
!819 = !DISubprogram(name: "bindtextdomain", scope: !688, file: !688, line: 86, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!820 = !DISubroutineType(types: !821)
!821 = !{!32, !49, !49}
!822 = !DISubprogram(name: "textdomain", scope: !688, file: !688, line: 82, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!823 = !DISubroutineType(types: !824)
!824 = !{!32, !49}
!825 = !DISubprogram(name: "atexit", scope: !826, file: !826, line: 595, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!826 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!827 = !DISubroutineType(types: !828)
!828 = !{!35, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null}
!832 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 91, type: !833, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !49, null}
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "format", arg: 1, scope: !832, file: !6, line: 91, type: !49)
!837 = !DILocalVariable(name: "ap", scope: !832, file: !6, line: 93, type: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !692, line: 52, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !840, line: 32, baseType: !841)
!840 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !842)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 192, elements: !725)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !844)
!844 = !{!845, !846, !847, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !843, file: !3, line: 93, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !843, file: !3, line: 93, baseType: !7, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !843, file: !3, line: 93, baseType: !34, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !843, file: !3, line: 93, baseType: !34, size: 64, offset: 128)
!849 = !DILocation(line: 0, scope: !832)
!850 = !DILocation(line: 93, column: 3, scope: !832)
!851 = !DILocation(line: 93, column: 11, scope: !832)
!852 = !DILocation(line: 94, column: 3, scope: !832)
!853 = !DILocation(line: 95, column: 3, scope: !832)
!854 = !DILocation(line: 96, column: 3, scope: !832)
!855 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 638, type: !856, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!58, !35}
!858 = !{!859, !860}
!859 = !DILocalVariable(name: "nargs", arg: 1, scope: !855, file: !6, line: 638, type: !35)
!860 = !DILocalVariable(name: "value", scope: !855, file: !6, line: 640, type: !58)
!861 = !DILocation(line: 0, scope: !855)
!862 = !DILocation(line: 642, column: 3, scope: !855)
!863 = !DILocation(line: 587, column: 10, scope: !864, inlinedAt: !867)
!864 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 585, type: !865, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!865 = !DISubroutineType(types: !866)
!866 = !{!58}
!867 = distinct !DILocation(line: 645, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !855, file: !6, line: 643, column: 5)
!869 = !DILocation(line: 587, column: 18, scope: !864, inlinedAt: !867)
!870 = !{!614, !614, i64 0}
!871 = !DILocation(line: 587, column: 25, scope: !864, inlinedAt: !867)
!872 = !DILocation(line: 646, column: 9, scope: !868)
!873 = !DILocation(line: 595, column: 7, scope: !874, inlinedAt: !878)
!874 = distinct !DILexicalBlock(scope: !875, file: !6, line: 595, column: 7)
!875 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 591, type: !865, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!876 = !{!877}
!877 = !DILocalVariable(name: "value", scope: !875, file: !6, line: 593, type: !58)
!878 = distinct !DILocation(line: 649, column: 17, scope: !868)
!879 = !DILocation(line: 595, column: 7, scope: !875, inlinedAt: !878)
!880 = !DILocalVariable(name: "f", arg: 1, scope: !881, file: !6, line: 104, type: !58)
!881 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 104, type: !882, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !58}
!884 = !{!880}
!885 = !DILocation(line: 0, scope: !881, inlinedAt: !886)
!886 = distinct !DILocation(line: 597, column: 7, scope: !887, inlinedAt: !878)
!887 = distinct !DILexicalBlock(scope: !874, file: !6, line: 596, column: 5)
!888 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !886)
!889 = !DILocation(line: 587, column: 18, scope: !864, inlinedAt: !890)
!890 = distinct !DILocation(line: 598, column: 17, scope: !887, inlinedAt: !878)
!891 = !DILocation(line: 587, column: 10, scope: !864, inlinedAt: !890)
!892 = !DILocation(line: 587, column: 25, scope: !864, inlinedAt: !890)
!893 = !DILocation(line: 0, scope: !875, inlinedAt: !878)
!894 = !DILocation(line: 599, column: 5, scope: !887, inlinedAt: !878)
!895 = !DILocation(line: 600, column: 12, scope: !896, inlinedAt: !878)
!896 = distinct !DILexicalBlock(scope: !874, file: !6, line: 600, column: 12)
!897 = !DILocation(line: 600, column: 25, scope: !896, inlinedAt: !878)
!898 = !DILocation(line: 601, column: 12, scope: !896, inlinedAt: !878)
!899 = !DILocation(line: 601, column: 15, scope: !896, inlinedAt: !878)
!900 = !DILocation(line: 601, column: 28, scope: !896, inlinedAt: !878)
!901 = !DILocation(line: 602, column: 12, scope: !896, inlinedAt: !878)
!902 = !DILocation(line: 602, column: 15, scope: !896, inlinedAt: !878)
!903 = !DILocation(line: 602, column: 28, scope: !896, inlinedAt: !878)
!904 = !DILocation(line: 600, column: 12, scope: !874, inlinedAt: !878)
!905 = !DILocation(line: 604, column: 15, scope: !906, inlinedAt: !878)
!906 = distinct !DILexicalBlock(scope: !896, file: !6, line: 603, column: 5)
!907 = !DILocation(line: 607, column: 5, scope: !896, inlinedAt: !878)
!908 = !DILocation(line: 653, column: 17, scope: !868)
!909 = !DILocation(line: 654, column: 9, scope: !868)
!910 = !DILocation(line: 657, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !868, file: !6, line: 657, column: 13)
!912 = !DILocation(line: 657, column: 13, scope: !868)
!913 = !DILocation(line: 0, scope: !881, inlinedAt: !914)
!914 = distinct !DILocation(line: 659, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !6, line: 658, column: 11)
!916 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !914)
!917 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !914)
!918 = distinct !DILexicalBlock(scope: !881, file: !6, line: 108, column: 7)
!919 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !914)
!920 = !DILocation(line: 660, column: 22, scope: !915)
!921 = !DILocation(line: 660, column: 21, scope: !915)
!922 = !DILocation(line: 661, column: 13, scope: !915)
!923 = !DILocation(line: 663, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !868, file: !6, line: 663, column: 13)
!925 = !DILocation(line: 663, column: 36, scope: !924)
!926 = !DILocation(line: 663, column: 39, scope: !924)
!927 = !DILocation(line: 663, column: 13, scope: !868)
!928 = !DILocation(line: 0, scope: !881, inlinedAt: !929)
!929 = distinct !DILocation(line: 665, column: 13, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !6, line: 664, column: 11)
!931 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !929)
!932 = !DILocation(line: 595, column: 7, scope: !874, inlinedAt: !933)
!933 = distinct !DILocation(line: 666, column: 21, scope: !930)
!934 = !DILocation(line: 595, column: 7, scope: !875, inlinedAt: !933)
!935 = !DILocation(line: 0, scope: !881, inlinedAt: !936)
!936 = distinct !DILocation(line: 597, column: 7, scope: !887, inlinedAt: !933)
!937 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !936)
!938 = !DILocation(line: 587, column: 10, scope: !864, inlinedAt: !939)
!939 = distinct !DILocation(line: 598, column: 17, scope: !887, inlinedAt: !933)
!940 = !DILocation(line: 587, column: 25, scope: !864, inlinedAt: !939)
!941 = !DILocation(line: 0, scope: !875, inlinedAt: !933)
!942 = !DILocation(line: 599, column: 5, scope: !887, inlinedAt: !933)
!943 = !DILocation(line: 600, column: 12, scope: !896, inlinedAt: !933)
!944 = !DILocation(line: 600, column: 25, scope: !896, inlinedAt: !933)
!945 = !DILocation(line: 601, column: 12, scope: !896, inlinedAt: !933)
!946 = !DILocation(line: 601, column: 15, scope: !896, inlinedAt: !933)
!947 = !DILocation(line: 601, column: 28, scope: !896, inlinedAt: !933)
!948 = !DILocation(line: 602, column: 12, scope: !896, inlinedAt: !933)
!949 = !DILocation(line: 602, column: 15, scope: !896, inlinedAt: !933)
!950 = !DILocation(line: 602, column: 28, scope: !896, inlinedAt: !933)
!951 = !DILocation(line: 600, column: 12, scope: !874, inlinedAt: !933)
!952 = !DILocation(line: 604, column: 15, scope: !906, inlinedAt: !933)
!953 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !954)
!954 = distinct !DILocation(line: 667, column: 13, scope: !930)
!955 = !DILocation(line: 607, column: 5, scope: !896, inlinedAt: !933)
!956 = !DILocation(line: 0, scope: !881, inlinedAt: !954)
!957 = !DILocation(line: 668, column: 13, scope: !930)
!958 = !DILocation(line: 673, column: 19, scope: !959)
!959 = distinct !DILexicalBlock(scope: !868, file: !6, line: 673, column: 13)
!960 = !DILocation(line: 673, column: 13, scope: !868)
!961 = !DILocation(line: 578, column: 7, scope: !962, inlinedAt: !964)
!962 = distinct !DILexicalBlock(scope: !963, file: !6, line: 578, column: 7)
!963 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 576, type: !865, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!964 = distinct !DILocation(line: 675, column: 17, scope: !868)
!965 = !DILocation(line: 674, column: 11, scope: !959)
!966 = !DILocation(line: 578, column: 14, scope: !962, inlinedAt: !964)
!967 = !DILocation(line: 578, column: 11, scope: !962, inlinedAt: !964)
!968 = !DILocation(line: 578, column: 7, scope: !963, inlinedAt: !964)
!969 = !DILocalVariable(name: "value", scope: !970, file: !6, line: 560, type: !58)
!970 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 558, type: !865, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!971 = !{!969}
!972 = !DILocation(line: 0, scope: !970, inlinedAt: !973)
!973 = distinct !DILocation(line: 581, column: 10, scope: !963, inlinedAt: !964)
!974 = !DILocalVariable(name: "value", scope: !975, file: !6, line: 541, type: !58)
!975 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 539, type: !865, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!976 = !{!974}
!977 = !DILocation(line: 0, scope: !975, inlinedAt: !978)
!978 = distinct !DILocation(line: 564, column: 16, scope: !979, inlinedAt: !973)
!979 = distinct !DILexicalBlock(scope: !970, file: !6, line: 563, column: 5)
!980 = !DILocation(line: 545, column: 16, scope: !981, inlinedAt: !978)
!981 = distinct !DILexicalBlock(scope: !975, file: !6, line: 544, column: 5)
!982 = !DILocation(line: 546, column: 14, scope: !983, inlinedAt: !978)
!983 = distinct !DILexicalBlock(scope: !981, file: !6, line: 546, column: 11)
!984 = !DILocation(line: 546, column: 20, scope: !983, inlinedAt: !978)
!985 = !DILocation(line: 546, column: 18, scope: !983, inlinedAt: !978)
!986 = !DILocation(line: 546, column: 25, scope: !983, inlinedAt: !978)
!987 = !DILocation(line: 579, column: 5, scope: !962, inlinedAt: !964)
!988 = !DILocation(line: 546, column: 28, scope: !983, inlinedAt: !978)
!989 = !DILocation(line: 546, column: 11, scope: !981, inlinedAt: !978)
!990 = !DILocation(line: 0, scope: !881, inlinedAt: !991)
!991 = distinct !DILocation(line: 548, column: 7, scope: !981, inlinedAt: !978)
!992 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !991)
!993 = !DILocation(line: 545, column: 13, scope: !981, inlinedAt: !978)
!994 = distinct !{!994, !995, !996}
!995 = !DILocation(line: 543, column: 3, scope: !975, inlinedAt: !978)
!996 = !DILocation(line: 549, column: 5, scope: !975, inlinedAt: !978)
!997 = !DILocation(line: 564, column: 13, scope: !979, inlinedAt: !973)
!998 = !DILocation(line: 565, column: 28, scope: !999, inlinedAt: !973)
!999 = distinct !DILexicalBlock(scope: !979, file: !6, line: 565, column: 11)
!1000 = !DILocation(line: 565, column: 11, scope: !979, inlinedAt: !973)
!1001 = !DILocation(line: 0, scope: !881, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 567, column: 7, scope: !979, inlinedAt: !973)
!1003 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1002)
!1004 = distinct !{!1004, !1005, !1006}
!1005 = !DILocation(line: 562, column: 3, scope: !970, inlinedAt: !973)
!1006 = !DILocation(line: 568, column: 5, scope: !970, inlinedAt: !973)
!1007 = !DILocation(line: 678, column: 3, scope: !855)
!1008 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 389, type: !865, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1009 = !{!1010, !1047, !1050, !1051, !1055, !1056, !1059, !1060, !1062}
!1010 = !DILocalVariable(name: "stat_buf", scope: !1008, file: !6, line: 391, type: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1012, line: 26, size: 1152, elements: !1013)
!1012 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1013 = !{!1014, !1016, !1018, !1020, !1022, !1024, !1026, !1027, !1028, !1029, !1031, !1033, !1041, !1042, !1043}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1011, file: !1012, line: 28, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !154, line: 145, baseType: !98)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1011, file: !1012, line: 33, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !154, line: 148, baseType: !98)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1011, file: !1012, line: 41, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !154, line: 151, baseType: !98)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1011, file: !1012, line: 42, baseType: !1021, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !154, line: 150, baseType: !7)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1011, file: !1012, line: 44, baseType: !1023, size: 32, offset: 224)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !154, line: 146, baseType: !7)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1011, file: !1012, line: 45, baseType: !1025, size: 32, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !154, line: 147, baseType: !7)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1011, file: !1012, line: 47, baseType: !35, size: 32, offset: 288)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1011, file: !1012, line: 49, baseType: !1015, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1011, file: !1012, line: 54, baseType: !718, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1011, file: !1012, line: 58, baseType: !1030, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !154, line: 175, baseType: !719)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1011, file: !1012, line: 60, baseType: !1032, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !154, line: 180, baseType: !719)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1011, file: !1012, line: 71, baseType: !1034, size: 128, offset: 576)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1035, line: 10, size: 128, elements: !1036)
!1035 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1036 = !{!1037, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1034, file: !1035, line: 12, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !154, line: 160, baseType: !719)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1034, file: !1035, line: 16, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !154, line: 197, baseType: !719)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1011, file: !1012, line: 72, baseType: !1034, size: 128, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1011, file: !1012, line: 73, baseType: !1034, size: 128, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1011, file: !1012, line: 86, baseType: !1044, size: 192, offset: 960)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 192, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 3)
!1047 = !DILocalVariable(name: "atime", scope: !1048, file: !6, line: 425, type: !1034)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 421, column: 7)
!1049 = distinct !DILexicalBlock(scope: !1008, file: !6, line: 394, column: 5)
!1050 = !DILocalVariable(name: "mtime", scope: !1048, file: !6, line: 426, type: !1034)
!1051 = !DILocalVariable(name: "euid", scope: !1052, file: !6, line: 436, type: !1053)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 431, column: 7)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1054, line: 79, baseType: !1023)
!1054 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1055 = !DILocalVariable(name: "NO_UID", scope: !1052, file: !6, line: 437, type: !1053)
!1056 = !DILocalVariable(name: "egid", scope: !1057, file: !6, line: 447, type: !1058)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 442, column: 7)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1054, line: 64, baseType: !1025)
!1059 = !DILocalVariable(name: "NO_GID", scope: !1057, file: !6, line: 448, type: !1058)
!1060 = !DILocalVariable(name: "fd", scope: !1061, file: !6, line: 514, type: !719)
!1061 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 513, column: 7)
!1062 = !DILocalVariable(name: "arg", scope: !1061, file: !6, line: 515, type: !49)
!1063 = !DILocation(line: 391, column: 3, scope: !1008)
!1064 = !DILocation(line: 391, column: 15, scope: !1008)
!1065 = !DILocation(line: 393, column: 11, scope: !1008)
!1066 = !DILocation(line: 393, column: 16, scope: !1008)
!1067 = !DILocation(line: 393, column: 3, scope: !1008)
!1068 = !DILocation(line: 396, column: 26, scope: !1049)
!1069 = !DILocation(line: 396, column: 67, scope: !1049)
!1070 = !DILocation(line: 396, column: 72, scope: !1049)
!1071 = !DILocation(line: 396, column: 60, scope: !1049)
!1072 = !DILocation(line: 396, column: 7, scope: !1049)
!1073 = !DILocation(line: 0, scope: !881, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1076)
!1075 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 113, type: !830, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!1076 = distinct !DILocation(line: 405, column: 7, scope: !1049)
!1077 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1074)
!1078 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1074)
!1079 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1074)
!1080 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1076)
!1081 = !DILocation(line: 406, column: 20, scope: !1049)
!1082 = !DILocation(line: 406, column: 14, scope: !1049)
!1083 = !DILocation(line: 406, column: 46, scope: !1049)
!1084 = !DILocation(line: 406, column: 7, scope: !1049)
!1085 = !DILocation(line: 0, scope: !881, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 409, column: 7, scope: !1049)
!1088 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1086)
!1089 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1086)
!1090 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1086)
!1091 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1087)
!1092 = !DILocation(line: 410, column: 26, scope: !1049)
!1093 = !DILocation(line: 410, column: 14, scope: !1049)
!1094 = !DILocation(line: 410, column: 47, scope: !1049)
!1095 = !DILocation(line: 410, column: 7, scope: !1049)
!1096 = !DILocation(line: 0, scope: !881, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 413, column: 7, scope: !1049)
!1099 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1097)
!1100 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1097)
!1101 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1097)
!1102 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1098)
!1103 = !DILocation(line: 414, column: 26, scope: !1049)
!1104 = !DILocation(line: 414, column: 14, scope: !1049)
!1105 = !DILocation(line: 414, column: 47, scope: !1049)
!1106 = !DILocation(line: 414, column: 7, scope: !1049)
!1107 = !DILocation(line: 0, scope: !881, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 417, column: 7, scope: !1049)
!1110 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1108)
!1111 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1108)
!1112 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1108)
!1113 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1109)
!1114 = !DILocation(line: 418, column: 26, scope: !1049)
!1115 = !DILocation(line: 418, column: 14, scope: !1049)
!1116 = !DILocation(line: 418, column: 47, scope: !1049)
!1117 = !DILocation(line: 418, column: 7, scope: !1049)
!1118 = !DILocation(line: 0, scope: !881, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 422, column: 9, scope: !1048)
!1121 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1119)
!1122 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1119)
!1123 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1119)
!1124 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1120)
!1125 = !DILocation(line: 423, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1048, file: !6, line: 423, column: 13)
!1127 = !DILocation(line: 423, column: 13, scope: !1126)
!1128 = !DILocation(line: 423, column: 45, scope: !1126)
!1129 = !DILocation(line: 423, column: 13, scope: !1048)
!1130 = !DILocalVariable(name: "st", arg: 1, scope: !1131, file: !1132, line: 118, type: !1135)
!1131 = distinct !DISubprogram(name: "get_stat_atime", scope: !1132, file: !1132, line: 118, type: !1133, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1132 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1034, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1137 = !{!1130}
!1138 = !DILocation(line: 0, scope: !1131, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 425, column: 33, scope: !1048)
!1140 = !DILocation(line: 121, column: 10, scope: !1131, inlinedAt: !1139)
!1141 = !{i64 0, i64 8, !1142, i64 8, i64 8, !1142}
!1142 = !{!1143, !1143, i64 0}
!1143 = !{!"long", !614, i64 0}
!1144 = !{i64 0, i64 8, !1142}
!1145 = !DILocation(line: 0, scope: !1048)
!1146 = !DILocalVariable(name: "st", arg: 1, scope: !1147, file: !1132, line: 146, type: !1135)
!1147 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1132, file: !1132, line: 146, type: !1133, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1148 = !{!1146}
!1149 = !DILocation(line: 0, scope: !1147, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 426, column: 33, scope: !1048)
!1151 = !DILocation(line: 149, column: 10, scope: !1147, inlinedAt: !1150)
!1152 = !DILocalVariable(name: "a", arg: 1, scope: !1153, file: !13, line: 89, type: !1034)
!1153 = distinct !DISubprogram(name: "timespec_cmp", scope: !13, file: !13, line: 89, type: !1154, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!35, !1034, !1034}
!1156 = !{!1152, !1157}
!1157 = !DILocalVariable(name: "b", arg: 2, scope: !1153, file: !13, line: 89, type: !1034)
!1158 = !DILocation(line: 0, scope: !1153, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 427, column: 17, scope: !1048)
!1160 = !DILocation(line: 91, column: 16, scope: !1161, inlinedAt: !1159)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !13, line: 91, column: 7)
!1162 = !DILocation(line: 91, column: 7, scope: !1153, inlinedAt: !1159)
!1163 = !DILocation(line: 93, column: 16, scope: !1164, inlinedAt: !1159)
!1164 = distinct !DILexicalBlock(scope: !1153, file: !13, line: 93, column: 7)
!1165 = !DILocation(line: 93, column: 7, scope: !1153, inlinedAt: !1159)
!1166 = !DILocation(line: 98, column: 3, scope: !1153, inlinedAt: !1159)
!1167 = !DILocation(line: 99, column: 3, scope: !1153, inlinedAt: !1159)
!1168 = !DILocation(line: 101, column: 20, scope: !1153, inlinedAt: !1159)
!1169 = !DILocation(line: 101, column: 10, scope: !1153, inlinedAt: !1159)
!1170 = !DILocation(line: 101, column: 3, scope: !1153, inlinedAt: !1159)
!1171 = !DILocation(line: 0, scope: !881, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 432, column: 9, scope: !1052)
!1174 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1172)
!1175 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1172)
!1176 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1172)
!1177 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1173)
!1178 = !DILocation(line: 433, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1052, file: !6, line: 433, column: 13)
!1180 = !DILocation(line: 433, column: 13, scope: !1179)
!1181 = !DILocation(line: 433, column: 45, scope: !1179)
!1182 = !DILocation(line: 433, column: 13, scope: !1052)
!1183 = !DILocation(line: 435, column: 9, scope: !1052)
!1184 = !DILocation(line: 435, column: 15, scope: !1052)
!1185 = !DILocation(line: 436, column: 22, scope: !1052)
!1186 = !DILocation(line: 0, scope: !1052)
!1187 = !DILocation(line: 438, column: 24, scope: !1052)
!1188 = !DILocation(line: 438, column: 34, scope: !1052)
!1189 = !DILocation(line: 438, column: 37, scope: !1052)
!1190 = !DILocation(line: 438, column: 44, scope: !1052)
!1191 = !DILocation(line: 438, column: 64, scope: !1052)
!1192 = !{!1193, !771, i64 28}
!1193 = !{!"stat", !1143, i64 0, !1143, i64 8, !1143, i64 16, !771, i64 24, !771, i64 28, !771, i64 32, !771, i64 36, !1143, i64 40, !1143, i64 48, !1143, i64 56, !1143, i64 64, !1194, i64 72, !1194, i64 88, !1194, i64 104, !614, i64 120}
!1194 = !{!"timespec", !1143, i64 0, !1143, i64 8}
!1195 = !DILocation(line: 438, column: 52, scope: !1052)
!1196 = !DILocation(line: 0, scope: !881, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 443, column: 9, scope: !1057)
!1199 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1197)
!1200 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1197)
!1201 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1197)
!1202 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1198)
!1203 = !DILocation(line: 444, column: 19, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1057, file: !6, line: 444, column: 13)
!1205 = !DILocation(line: 444, column: 13, scope: !1204)
!1206 = !DILocation(line: 444, column: 45, scope: !1204)
!1207 = !DILocation(line: 444, column: 13, scope: !1057)
!1208 = !DILocation(line: 446, column: 9, scope: !1057)
!1209 = !DILocation(line: 446, column: 15, scope: !1057)
!1210 = !DILocation(line: 447, column: 22, scope: !1057)
!1211 = !DILocation(line: 0, scope: !1057)
!1212 = !DILocation(line: 449, column: 24, scope: !1057)
!1213 = !DILocation(line: 449, column: 34, scope: !1057)
!1214 = !DILocation(line: 449, column: 37, scope: !1057)
!1215 = !DILocation(line: 449, column: 44, scope: !1057)
!1216 = !DILocation(line: 449, column: 64, scope: !1057)
!1217 = !{!1193, !771, i64 32}
!1218 = !DILocation(line: 449, column: 52, scope: !1057)
!1219 = !DILocation(line: 0, scope: !881, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 453, column: 7, scope: !1049)
!1222 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1220)
!1223 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1220)
!1224 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1220)
!1225 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1221)
!1226 = !DILocation(line: 456, column: 21, scope: !1049)
!1227 = !DILocation(line: 456, column: 15, scope: !1049)
!1228 = !DILocation(line: 456, column: 47, scope: !1049)
!1229 = !DILocation(line: 457, column: 15, scope: !1049)
!1230 = !DILocation(line: 456, column: 7, scope: !1049)
!1231 = !DILocation(line: 0, scope: !881, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 460, column: 7, scope: !1049)
!1234 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1232)
!1235 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1232)
!1236 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1232)
!1237 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1233)
!1238 = !DILocation(line: 461, column: 21, scope: !1049)
!1239 = !DILocation(line: 461, column: 15, scope: !1049)
!1240 = !DILocation(line: 461, column: 47, scope: !1049)
!1241 = !DILocation(line: 462, column: 15, scope: !1049)
!1242 = !DILocation(line: 461, column: 7, scope: !1049)
!1243 = !DILocation(line: 0, scope: !881, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 465, column: 7, scope: !1049)
!1246 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1244)
!1247 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1244)
!1248 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1244)
!1249 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1245)
!1250 = !DILocation(line: 466, column: 21, scope: !1049)
!1251 = !DILocation(line: 466, column: 15, scope: !1049)
!1252 = !DILocation(line: 466, column: 47, scope: !1049)
!1253 = !DILocation(line: 467, column: 15, scope: !1049)
!1254 = !DILocation(line: 466, column: 7, scope: !1049)
!1255 = !DILocation(line: 0, scope: !881, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 470, column: 7, scope: !1049)
!1258 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1256)
!1259 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1256)
!1260 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1256)
!1261 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1257)
!1262 = !DILocation(line: 471, column: 21, scope: !1049)
!1263 = !DILocation(line: 471, column: 15, scope: !1049)
!1264 = !DILocation(line: 471, column: 47, scope: !1049)
!1265 = !DILocation(line: 472, column: 15, scope: !1049)
!1266 = !DILocation(line: 471, column: 7, scope: !1049)
!1267 = !DILocation(line: 0, scope: !881, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 475, column: 7, scope: !1049)
!1270 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1268)
!1271 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1268)
!1272 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1268)
!1273 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1269)
!1274 = !DILocation(line: 476, column: 21, scope: !1049)
!1275 = !DILocation(line: 476, column: 15, scope: !1049)
!1276 = !DILocation(line: 476, column: 47, scope: !1049)
!1277 = !DILocation(line: 477, column: 15, scope: !1049)
!1278 = !DILocation(line: 476, column: 7, scope: !1049)
!1279 = !DILocation(line: 0, scope: !881, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 480, column: 7, scope: !1049)
!1282 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1280)
!1283 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1280)
!1284 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1280)
!1285 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1281)
!1286 = !DILocation(line: 481, column: 21, scope: !1049)
!1287 = !DILocation(line: 481, column: 15, scope: !1049)
!1288 = !DILocation(line: 481, column: 47, scope: !1049)
!1289 = !DILocation(line: 482, column: 15, scope: !1049)
!1290 = !DILocation(line: 481, column: 7, scope: !1049)
!1291 = !DILocation(line: 0, scope: !881, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 485, column: 7, scope: !1049)
!1294 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1292)
!1295 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1292)
!1296 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1292)
!1297 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1293)
!1298 = !DILocation(line: 486, column: 21, scope: !1049)
!1299 = !DILocation(line: 486, column: 15, scope: !1049)
!1300 = !DILocation(line: 486, column: 47, scope: !1049)
!1301 = !DILocation(line: 487, column: 15, scope: !1049)
!1302 = !DILocation(line: 486, column: 7, scope: !1049)
!1303 = !DILocation(line: 0, scope: !881, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 493, column: 7, scope: !1049)
!1306 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1304)
!1307 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1304)
!1308 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1304)
!1309 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1305)
!1310 = !DILocation(line: 494, column: 22, scope: !1049)
!1311 = !DILocation(line: 494, column: 15, scope: !1049)
!1312 = !DILocation(line: 494, column: 48, scope: !1049)
!1313 = !DILocation(line: 495, column: 15, scope: !1049)
!1314 = !DILocation(line: 494, column: 7, scope: !1049)
!1315 = !DILocation(line: 0, scope: !881, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 498, column: 7, scope: !1049)
!1318 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1316)
!1319 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1316)
!1320 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1316)
!1321 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1317)
!1322 = !DILocation(line: 499, column: 21, scope: !1049)
!1323 = !DILocation(line: 499, column: 15, scope: !1049)
!1324 = !DILocation(line: 499, column: 47, scope: !1049)
!1325 = !DILocation(line: 500, column: 15, scope: !1049)
!1326 = !DILocation(line: 499, column: 7, scope: !1049)
!1327 = !DILocation(line: 0, scope: !881, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 503, column: 7, scope: !1049)
!1330 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1328)
!1331 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1328)
!1332 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1328)
!1333 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1329)
!1334 = !DILocation(line: 504, column: 21, scope: !1049)
!1335 = !DILocation(line: 504, column: 15, scope: !1049)
!1336 = !DILocation(line: 504, column: 47, scope: !1049)
!1337 = !DILocation(line: 505, column: 15, scope: !1049)
!1338 = !DILocation(line: 504, column: 7, scope: !1049)
!1339 = !DILocation(line: 0, scope: !881, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 508, column: 7, scope: !1049)
!1342 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1340)
!1343 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1340)
!1344 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1340)
!1345 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1341)
!1346 = !DILocation(line: 509, column: 21, scope: !1049)
!1347 = !DILocation(line: 509, column: 15, scope: !1049)
!1348 = !DILocation(line: 509, column: 47, scope: !1049)
!1349 = !DILocation(line: 510, column: 15, scope: !1049)
!1350 = !DILocation(line: 509, column: 7, scope: !1049)
!1351 = !DILocation(line: 0, scope: !881, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 516, column: 9, scope: !1061)
!1354 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1352)
!1355 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1352)
!1356 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1352)
!1357 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1353)
!1358 = !DILocation(line: 517, column: 25, scope: !1061)
!1359 = !DILocation(line: 517, column: 15, scope: !1061)
!1360 = !DILocation(line: 0, scope: !1061)
!1361 = !DILocation(line: 518, column: 9, scope: !1061)
!1362 = !DILocation(line: 518, column: 15, scope: !1061)
!1363 = !DILocation(line: 519, column: 14, scope: !1061)
!1364 = !DILocation(line: 520, column: 17, scope: !1061)
!1365 = !DILocation(line: 520, column: 23, scope: !1061)
!1366 = !DILocation(line: 520, column: 33, scope: !1061)
!1367 = !DILocation(line: 520, column: 72, scope: !1061)
!1368 = !DILocation(line: 520, column: 64, scope: !1061)
!1369 = !DILocation(line: 520, column: 61, scope: !1061)
!1370 = !DILocation(line: 0, scope: !881, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 524, column: 7, scope: !1049)
!1373 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1371)
!1374 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1371)
!1375 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1371)
!1376 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1372)
!1377 = !DILocation(line: 525, column: 14, scope: !1049)
!1378 = !DILocation(line: 525, column: 31, scope: !1049)
!1379 = !DILocation(line: 525, column: 7, scope: !1049)
!1380 = !DILocation(line: 0, scope: !881, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 115, column: 3, scope: !1075, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 528, column: 7, scope: !1049)
!1383 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1381)
!1384 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1381)
!1385 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1381)
!1386 = !DILocation(line: 116, column: 3, scope: !1075, inlinedAt: !1382)
!1387 = !DILocation(line: 529, column: 14, scope: !1049)
!1388 = !DILocation(line: 529, column: 31, scope: !1049)
!1389 = !DILocation(line: 529, column: 7, scope: !1049)
!1390 = !DILocation(line: 0, scope: !1049)
!1391 = !DILocation(line: 531, column: 1, scope: !1008)
!1392 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 124, type: !830, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!1393 = !DILocation(line: 126, column: 22, scope: !1392)
!1394 = !DILocation(line: 126, column: 61, scope: !1392)
!1395 = !DILocation(line: 126, column: 66, scope: !1392)
!1396 = !DILocation(line: 126, column: 71, scope: !1392)
!1397 = !DILocation(line: 126, column: 54, scope: !1392)
!1398 = !DILocation(line: 126, column: 3, scope: !1392)
!1399 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 612, type: !865, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "value", scope: !1399, file: !6, line: 614, type: !58)
!1402 = !DILocation(line: 616, column: 14, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 616, column: 7)
!1404 = !DILocation(line: 616, column: 19, scope: !1403)
!1405 = !DILocation(line: 616, column: 23, scope: !1403)
!1406 = !DILocation(line: 616, column: 7, scope: !1403)
!1407 = !DILocation(line: 616, column: 7, scope: !1399)
!1408 = !DILocation(line: 617, column: 13, scope: !1403)
!1409 = !DILocation(line: 0, scope: !1399)
!1410 = !DILocation(line: 617, column: 5, scope: !1403)
!1411 = !DILocation(line: 618, column: 12, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1403, file: !6, line: 618, column: 12)
!1413 = !DILocation(line: 618, column: 12, scope: !1403)
!1414 = !DILocation(line: 0, scope: !881, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 620, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !6, line: 619, column: 5)
!1417 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1415)
!1418 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1415)
!1419 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1415)
!1420 = !DILocation(line: 595, column: 7, scope: !874, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 621, column: 16, scope: !1416)
!1422 = !DILocation(line: 595, column: 7, scope: !875, inlinedAt: !1421)
!1423 = !DILocation(line: 0, scope: !881, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 597, column: 7, scope: !887, inlinedAt: !1421)
!1425 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1424)
!1426 = !DILocation(line: 587, column: 18, scope: !864, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 598, column: 17, scope: !887, inlinedAt: !1421)
!1428 = !DILocation(line: 587, column: 10, scope: !864, inlinedAt: !1427)
!1429 = !DILocation(line: 587, column: 25, scope: !864, inlinedAt: !1427)
!1430 = !DILocation(line: 0, scope: !875, inlinedAt: !1421)
!1431 = !DILocation(line: 599, column: 5, scope: !887, inlinedAt: !1421)
!1432 = !DILocation(line: 600, column: 12, scope: !896, inlinedAt: !1421)
!1433 = !DILocation(line: 600, column: 25, scope: !896, inlinedAt: !1421)
!1434 = !DILocation(line: 601, column: 12, scope: !896, inlinedAt: !1421)
!1435 = !DILocation(line: 601, column: 15, scope: !896, inlinedAt: !1421)
!1436 = !DILocation(line: 601, column: 28, scope: !896, inlinedAt: !1421)
!1437 = !DILocation(line: 602, column: 12, scope: !896, inlinedAt: !1421)
!1438 = !DILocation(line: 602, column: 15, scope: !896, inlinedAt: !1421)
!1439 = !DILocation(line: 602, column: 28, scope: !896, inlinedAt: !1421)
!1440 = !DILocation(line: 600, column: 12, scope: !874, inlinedAt: !1421)
!1441 = !DILocation(line: 604, column: 15, scope: !906, inlinedAt: !1421)
!1442 = !DILocation(line: 607, column: 5, scope: !896, inlinedAt: !1421)
!1443 = !DILocation(line: 621, column: 15, scope: !1416)
!1444 = !DILocation(line: 622, column: 5, scope: !1416)
!1445 = !DILocation(line: 623, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1412, file: !6, line: 623, column: 12)
!1447 = !DILocation(line: 623, column: 35, scope: !1446)
!1448 = !DILocation(line: 623, column: 38, scope: !1446)
!1449 = !DILocation(line: 623, column: 12, scope: !1412)
!1450 = !DILocation(line: 0, scope: !881, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 625, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1446, file: !6, line: 624, column: 5)
!1453 = !DILocation(line: 587, column: 10, scope: !864, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 626, column: 15, scope: !1452)
!1455 = !DILocation(line: 587, column: 25, scope: !864, inlinedAt: !1454)
!1456 = !DILocation(line: 0, scope: !881, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 627, column: 7, scope: !1452)
!1458 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1457)
!1459 = !DILocation(line: 628, column: 5, scope: !1452)
!1460 = !DILocation(line: 629, column: 12, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1446, file: !6, line: 629, column: 12)
!1462 = !DILocation(line: 629, column: 40, scope: !1461)
!1463 = !DILocation(line: 629, column: 43, scope: !1461)
!1464 = !DILocation(line: 629, column: 12, scope: !1446)
!1465 = !DILocation(line: 578, column: 14, scope: !962, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 630, column: 13, scope: !1461)
!1467 = !DILocation(line: 578, column: 11, scope: !962, inlinedAt: !1466)
!1468 = !DILocation(line: 578, column: 7, scope: !963, inlinedAt: !1466)
!1469 = !DILocation(line: 0, scope: !970, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 581, column: 10, scope: !963, inlinedAt: !1466)
!1471 = !DILocation(line: 0, scope: !975, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 564, column: 16, scope: !979, inlinedAt: !1470)
!1473 = !DILocation(line: 545, column: 16, scope: !981, inlinedAt: !1472)
!1474 = !DILocation(line: 546, column: 14, scope: !983, inlinedAt: !1472)
!1475 = !DILocation(line: 546, column: 20, scope: !983, inlinedAt: !1472)
!1476 = !DILocation(line: 546, column: 18, scope: !983, inlinedAt: !1472)
!1477 = !DILocation(line: 546, column: 25, scope: !983, inlinedAt: !1472)
!1478 = !DILocation(line: 579, column: 5, scope: !962, inlinedAt: !1466)
!1479 = !DILocation(line: 546, column: 28, scope: !983, inlinedAt: !1472)
!1480 = !DILocation(line: 546, column: 11, scope: !981, inlinedAt: !1472)
!1481 = !DILocation(line: 0, scope: !881, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 548, column: 7, scope: !981, inlinedAt: !1472)
!1483 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1482)
!1484 = !DILocation(line: 545, column: 13, scope: !981, inlinedAt: !1472)
!1485 = distinct !{!1485, !1486, !1487}
!1486 = !DILocation(line: 543, column: 3, scope: !975, inlinedAt: !1472)
!1487 = !DILocation(line: 549, column: 5, scope: !975, inlinedAt: !1472)
!1488 = !DILocation(line: 564, column: 13, scope: !979, inlinedAt: !1470)
!1489 = !DILocation(line: 565, column: 28, scope: !999, inlinedAt: !1470)
!1490 = !DILocation(line: 565, column: 11, scope: !979, inlinedAt: !1470)
!1491 = !DILocation(line: 0, scope: !881, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 567, column: 7, scope: !979, inlinedAt: !1470)
!1493 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1492)
!1494 = distinct !{!1494, !1495, !1496}
!1495 = !DILocation(line: 562, column: 3, scope: !970, inlinedAt: !1470)
!1496 = !DILocation(line: 568, column: 5, scope: !970, inlinedAt: !1470)
!1497 = !DILocation(line: 632, column: 24, scope: !1461)
!1498 = !DILocation(line: 632, column: 66, scope: !1461)
!1499 = !DILocation(line: 632, column: 71, scope: !1461)
!1500 = !DILocation(line: 632, column: 74, scope: !1461)
!1501 = !DILocation(line: 632, column: 59, scope: !1461)
!1502 = !DILocation(line: 632, column: 5, scope: !1461)
!1503 = !DILocation(line: 633, column: 3, scope: !1399)
!1504 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 211, type: !865, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DILocalVariable(name: "value", scope: !1504, file: !6, line: 213, type: !58)
!1507 = !DILocalVariable(name: "negated", scope: !1504, file: !6, line: 214, type: !58)
!1508 = !DILocalVariable(name: "nargs", scope: !1509, file: !6, line: 229, type: !35)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !6, line: 228, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 227, column: 7)
!1511 = !DILocation(line: 0, scope: !1504)
!1512 = !DILocation(line: 217, column: 10, scope: !1504)
!1513 = !DILocation(line: 217, column: 16, scope: !1504)
!1514 = !DILocation(line: 217, column: 14, scope: !1504)
!1515 = !DILocation(line: 217, column: 21, scope: !1504)
!1516 = !DILocation(line: 217, column: 24, scope: !1504)
!1517 = !DILocation(line: 217, column: 37, scope: !1504)
!1518 = !DILocation(line: 217, column: 44, scope: !1504)
!1519 = !DILocation(line: 217, column: 47, scope: !1504)
!1520 = !DILocation(line: 217, column: 60, scope: !1504)
!1521 = !DILocation(line: 217, column: 3, scope: !1504)
!1522 = !DILocation(line: 0, scope: !881, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 219, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 218, column: 5)
!1525 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1523)
!1526 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1523)
!1527 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1523)
!1528 = !DILocation(line: 220, column: 17, scope: !1524)
!1529 = !DILocation(line: 224, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1504, file: !6, line: 223, column: 7)
!1531 = !DILocation(line: 227, column: 20, scope: !1510)
!1532 = !DILocation(line: 227, column: 27, scope: !1510)
!1533 = !DILocation(line: 227, column: 30, scope: !1510)
!1534 = !DILocation(line: 227, column: 43, scope: !1510)
!1535 = !DILocation(line: 227, column: 7, scope: !1504)
!1536 = !DILocation(line: 0, scope: !881, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 231, column: 7, scope: !1509)
!1538 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1537)
!1539 = !DILocation(line: 108, column: 9, scope: !918, inlinedAt: !1537)
!1540 = !DILocation(line: 0, scope: !1509)
!1541 = !DILocation(line: 234, column: 16, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !6, line: 233, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1509, file: !6, line: 233, column: 7)
!1544 = !DILocation(line: 234, column: 24, scope: !1542)
!1545 = !DILocation(line: 234, column: 31, scope: !1542)
!1546 = !DILocation(line: 233, column: 7, scope: !1543)
!1547 = !DILocation(line: 109, column: 5, scope: !918, inlinedAt: !1537)
!1548 = !DILocation(line: 234, column: 36, scope: !1542)
!1549 = !DILocation(line: 236, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !6, line: 236, column: 13)
!1551 = !DILocation(line: 236, column: 13, scope: !1542)
!1552 = !DILocation(line: 238, column: 26, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !6, line: 237, column: 11)
!1554 = !DILocation(line: 239, column: 13, scope: !1553)
!1555 = !DILocation(line: 235, column: 17, scope: !1542)
!1556 = distinct !{!1556, !1546, !1557, !667}
!1557 = !DILocation(line: 240, column: 11, scope: !1543)
!1558 = !DILocation(line: 242, column: 15, scope: !1509)
!1559 = !DILocation(line: 0, scope: !1543)
!1560 = !DILocation(line: 243, column: 11, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1509, file: !6, line: 243, column: 11)
!1562 = !DILocation(line: 243, column: 16, scope: !1561)
!1563 = !DILocation(line: 243, column: 21, scope: !1561)
!1564 = !DILocation(line: 243, column: 11, scope: !1509)
!1565 = !DILocation(line: 244, column: 28, scope: !1561)
!1566 = !DILocation(line: 244, column: 46, scope: !1561)
!1567 = !DILocation(line: 244, column: 9, scope: !1561)
!1568 = !DILocation(line: 246, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1561, file: !6, line: 246, column: 13)
!1570 = !DILocation(line: 246, column: 26, scope: !1569)
!1571 = !DILocation(line: 246, column: 33, scope: !1569)
!1572 = !DILocation(line: 246, column: 36, scope: !1569)
!1573 = !DILocation(line: 246, column: 13, scope: !1561)
!1574 = !DILocation(line: 247, column: 30, scope: !1569)
!1575 = !DILocation(line: 248, column: 30, scope: !1569)
!1576 = !DILocation(line: 248, column: 60, scope: !1569)
!1577 = !DILocation(line: 248, column: 65, scope: !1569)
!1578 = !DILocation(line: 248, column: 48, scope: !1569)
!1579 = !DILocation(line: 247, column: 11, scope: !1569)
!1580 = !DILocation(line: 0, scope: !881, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 249, column: 7, scope: !1509)
!1582 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1581)
!1583 = !DILocation(line: 250, column: 5, scope: !1509)
!1584 = !DILocation(line: 253, column: 22, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1510, file: !6, line: 253, column: 12)
!1586 = !DILocation(line: 253, column: 14, scope: !1585)
!1587 = !DILocation(line: 253, column: 28, scope: !1585)
!1588 = !DILocation(line: 253, column: 31, scope: !1585)
!1589 = !DILocation(line: 253, column: 55, scope: !1585)
!1590 = !DILocation(line: 253, column: 74, scope: !1585)
!1591 = !DILocation(line: 253, column: 65, scope: !1585)
!1592 = !DILocation(line: 253, column: 58, scope: !1585)
!1593 = !DILocation(line: 253, column: 12, scope: !1510)
!1594 = !DILocation(line: 254, column: 13, scope: !1585)
!1595 = !DILocation(line: 254, column: 5, scope: !1585)
!1596 = !DILocation(line: 255, column: 14, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1585, file: !6, line: 255, column: 12)
!1598 = !DILocation(line: 255, column: 28, scope: !1597)
!1599 = !DILocation(line: 255, column: 47, scope: !1597)
!1600 = !DILocation(line: 255, column: 38, scope: !1597)
!1601 = !DILocation(line: 255, column: 31, scope: !1597)
!1602 = !DILocation(line: 255, column: 12, scope: !1585)
!1603 = !DILocation(line: 256, column: 13, scope: !1597)
!1604 = !DILocation(line: 256, column: 5, scope: !1597)
!1605 = !DILocation(line: 259, column: 25, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1597, file: !6, line: 259, column: 12)
!1607 = !DILocation(line: 259, column: 32, scope: !1606)
!1608 = !DILocation(line: 259, column: 35, scope: !1606)
!1609 = !DILocation(line: 259, column: 48, scope: !1606)
!1610 = !DILocation(line: 259, column: 51, scope: !1606)
!1611 = !DILocation(line: 259, column: 64, scope: !1606)
!1612 = !DILocation(line: 259, column: 12, scope: !1597)
!1613 = !DILocation(line: 260, column: 13, scope: !1606)
!1614 = !DILocation(line: 260, column: 5, scope: !1606)
!1615 = !DILocation(line: 263, column: 29, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 262, column: 5)
!1617 = !DILocation(line: 0, scope: !881, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 264, column: 7, scope: !1616)
!1619 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1618)
!1620 = !DILocation(line: 267, column: 18, scope: !1504)
!1621 = !DILocation(line: 267, column: 3, scope: !1504)
!1622 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 183, type: !1623, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!58, !49}
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "s", arg: 1, scope: !1622, file: !6, line: 183, type: !49)
!1627 = !DILocation(line: 0, scope: !1622)
!1628 = !DILocation(line: 185, column: 12, scope: !1622)
!1629 = !DILocation(line: 185, column: 30, scope: !1622)
!1630 = !DILocation(line: 185, column: 34, scope: !1622)
!1631 = !DILocation(line: 185, column: 52, scope: !1622)
!1632 = !DILocation(line: 185, column: 56, scope: !1622)
!1633 = !DILocation(line: 185, column: 73, scope: !1622)
!1634 = !DILocation(line: 186, column: 12, scope: !1622)
!1635 = !DILocation(line: 186, column: 32, scope: !1622)
!1636 = !DILocation(line: 187, column: 12, scope: !1622)
!1637 = !DILocation(line: 187, column: 30, scope: !1622)
!1638 = !DILocation(line: 187, column: 34, scope: !1622)
!1639 = !DILocation(line: 187, column: 52, scope: !1622)
!1640 = !DILocation(line: 187, column: 56, scope: !1622)
!1641 = !DILocation(line: 187, column: 74, scope: !1622)
!1642 = !DILocation(line: 188, column: 12, scope: !1622)
!1643 = !DILocation(line: 188, column: 30, scope: !1622)
!1644 = !DILocation(line: 188, column: 34, scope: !1622)
!1645 = !DILocation(line: 188, column: 52, scope: !1622)
!1646 = !DILocation(line: 188, column: 56, scope: !1622)
!1647 = !DILocation(line: 188, column: 74, scope: !1622)
!1648 = !DILocation(line: 189, column: 12, scope: !1622)
!1649 = !DILocation(line: 189, column: 30, scope: !1622)
!1650 = !DILocation(line: 189, column: 34, scope: !1622)
!1651 = !DILocation(line: 185, column: 3, scope: !1622)
!1652 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 271, type: !1653, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!58, !58}
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1669, !1670, !1671, !1672, !1673, !1674, !1678, !1679, !1680, !1681, !1684, !1685, !1686, !1687, !1690}
!1656 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1652, file: !6, line: 271, type: !58)
!1657 = !DILocalVariable(name: "op", scope: !1652, file: !6, line: 273, type: !35)
!1658 = !DILocalVariable(name: "stat_buf", scope: !1652, file: !6, line: 274, type: !1011)
!1659 = !DILocalVariable(name: "stat_spare", scope: !1652, file: !6, line: 274, type: !1011)
!1660 = !DILocalVariable(name: "r_is_l", scope: !1652, file: !6, line: 276, type: !58)
!1661 = !DILocalVariable(name: "lbuf", scope: !1662, file: !6, line: 299, type: !1666)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !6, line: 298, column: 9)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !6, line: 293, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !6, line: 291, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 290, column: 7)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 21)
!1669 = !DILocalVariable(name: "rbuf", scope: !1662, file: !6, line: 300, type: !1666)
!1670 = !DILocalVariable(name: "l", scope: !1662, file: !6, line: 301, type: !49)
!1671 = !DILocalVariable(name: "r", scope: !1662, file: !6, line: 304, type: !49)
!1672 = !DILocalVariable(name: "cmp", scope: !1662, file: !6, line: 307, type: !35)
!1673 = !DILocalVariable(name: "xe_operator", scope: !1662, file: !6, line: 308, type: !58)
!1674 = !DILocalVariable(name: "lt", scope: !1675, file: !6, line: 324, type: !1034)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !6, line: 322, column: 13)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 321, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1664, file: !6, line: 316, column: 9)
!1678 = !DILocalVariable(name: "rt", scope: !1675, file: !6, line: 324, type: !1034)
!1679 = !DILocalVariable(name: "le", scope: !1675, file: !6, line: 325, type: !58)
!1680 = !DILocalVariable(name: "re", scope: !1675, file: !6, line: 325, type: !58)
!1681 = !DILocalVariable(name: "lt", scope: !1682, file: !6, line: 353, type: !1034)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !6, line: 351, column: 13)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 350, column: 15)
!1684 = !DILocalVariable(name: "rt", scope: !1682, file: !6, line: 353, type: !1034)
!1685 = !DILocalVariable(name: "le", scope: !1682, file: !6, line: 354, type: !58)
!1686 = !DILocalVariable(name: "re", scope: !1682, file: !6, line: 354, type: !58)
!1687 = !DILocalVariable(name: "value", scope: !1688, file: !6, line: 372, type: !58)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 371, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 369, column: 7)
!1690 = !DILocalVariable(name: "value", scope: !1691, file: !6, line: 379, type: !58)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !6, line: 378, column: 5)
!1692 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 377, column: 7)
!1693 = !DILocation(line: 0, scope: !1652)
!1694 = !DILocation(line: 274, column: 3, scope: !1652)
!1695 = !DILocation(line: 274, column: 15, scope: !1652)
!1696 = !DILocation(line: 274, column: 25, scope: !1652)
!1697 = !DILocation(line: 278, column: 7, scope: !1652)
!1698 = !DILocation(line: 0, scope: !881, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 279, column: 5, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 278, column: 7)
!1701 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1699)
!1702 = !DILocation(line: 279, column: 5, scope: !1700)
!1703 = !DILocation(line: 280, column: 8, scope: !1652)
!1704 = !DILocation(line: 280, column: 12, scope: !1652)
!1705 = !DILocation(line: 282, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 282, column: 7)
!1707 = !DILocation(line: 282, column: 18, scope: !1706)
!1708 = !DILocation(line: 282, column: 11, scope: !1706)
!1709 = !DILocation(line: 282, column: 23, scope: !1706)
!1710 = !DILocation(line: 282, column: 26, scope: !1706)
!1711 = !DILocation(line: 282, column: 7, scope: !1652)
!1712 = !DILocation(line: 0, scope: !881, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 285, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !6, line: 283, column: 5)
!1715 = !DILocation(line: 106, column: 3, scope: !881, inlinedAt: !1713)
!1716 = !DILocation(line: 286, column: 5, scope: !1714)
!1717 = !DILocation(line: 290, column: 7, scope: !1665)
!1718 = !DILocation(line: 290, column: 7, scope: !1652)
!1719 = !DILocation(line: 293, column: 14, scope: !1663)
!1720 = !DILocation(line: 293, column: 33, scope: !1663)
!1721 = !DILocation(line: 294, column: 17, scope: !1663)
!1722 = !DILocation(line: 294, column: 36, scope: !1663)
!1723 = !DILocation(line: 295, column: 38, scope: !1663)
!1724 = !DILocation(line: 295, column: 50, scope: !1663)
!1725 = !DILocation(line: 296, column: 12, scope: !1663)
!1726 = !DILocation(line: 296, column: 38, scope: !1663)
!1727 = !DILocation(line: 296, column: 50, scope: !1663)
!1728 = !DILocation(line: 297, column: 11, scope: !1663)
!1729 = !DILocation(line: 297, column: 15, scope: !1663)
!1730 = !DILocation(line: 293, column: 11, scope: !1664)
!1731 = !DILocation(line: 299, column: 11, scope: !1662)
!1732 = !DILocation(line: 299, column: 16, scope: !1662)
!1733 = !DILocation(line: 300, column: 11, scope: !1662)
!1734 = !DILocation(line: 300, column: 16, scope: !1662)
!1735 = !DILocation(line: 0, scope: !1662)
!1736 = !DILocation(line: 301, column: 28, scope: !1662)
!1737 = !DILocation(line: 302, column: 41, scope: !1662)
!1738 = !DILocation(line: 302, column: 30, scope: !1662)
!1739 = !DILocation(line: 303, column: 30, scope: !1662)
!1740 = !DILocation(line: 304, column: 28, scope: !1662)
!1741 = !DILocation(line: 305, column: 57, scope: !1662)
!1742 = !DILocation(line: 305, column: 49, scope: !1662)
!1743 = !DILocation(line: 305, column: 41, scope: !1662)
!1744 = !DILocation(line: 305, column: 30, scope: !1662)
!1745 = !DILocation(line: 306, column: 48, scope: !1662)
!1746 = !DILocation(line: 306, column: 40, scope: !1662)
!1747 = !DILocation(line: 306, column: 30, scope: !1662)
!1748 = !DILocation(line: 307, column: 21, scope: !1662)
!1749 = !DILocation(line: 308, column: 31, scope: !1662)
!1750 = !DILocation(line: 308, column: 43, scope: !1662)
!1751 = !DILocation(line: 309, column: 15, scope: !1662)
!1752 = !DILocation(line: 310, column: 19, scope: !1662)
!1753 = !DILocation(line: 310, column: 46, scope: !1662)
!1754 = !DILocation(line: 310, column: 44, scope: !1662)
!1755 = !DILocation(line: 311, column: 50, scope: !1662)
!1756 = !DILocation(line: 311, column: 46, scope: !1662)
!1757 = !DILocation(line: 311, column: 21, scope: !1662)
!1758 = !DILocation(line: 312, column: 26, scope: !1662)
!1759 = !DILocation(line: 312, column: 32, scope: !1662)
!1760 = !DILocation(line: 313, column: 9, scope: !1663)
!1761 = !DILocation(line: 315, column: 15, scope: !1664)
!1762 = !DILocation(line: 315, column: 7, scope: !1664)
!1763 = !DILocation(line: 321, column: 15, scope: !1676)
!1764 = !DILocation(line: 336, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 336, column: 15)
!1766 = !DILocation(line: 321, column: 27, scope: !1676)
!1767 = !DILocation(line: 321, column: 34, scope: !1676)
!1768 = !DILocation(line: 321, column: 38, scope: !1676)
!1769 = !DILocation(line: 321, column: 15, scope: !1677)
!1770 = !DILocation(line: 326, column: 19, scope: !1675)
!1771 = !DILocation(line: 327, column: 26, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1675, file: !6, line: 327, column: 19)
!1773 = !DILocation(line: 328, column: 36, scope: !1772)
!1774 = !DILocation(line: 328, column: 17, scope: !1772)
!1775 = !DILocation(line: 329, column: 31, scope: !1675)
!1776 = !DILocalVariable(name: "filename", arg: 1, scope: !1777, file: !6, line: 168, type: !49)
!1777 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 168, type: !1778, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1781)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!58, !49, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1781 = !{!1776, !1782, !1783, !1784}
!1782 = !DILocalVariable(name: "mtime", arg: 2, scope: !1777, file: !6, line: 168, type: !1780)
!1783 = !DILocalVariable(name: "finfo", scope: !1777, file: !6, line: 170, type: !1011)
!1784 = !DILocalVariable(name: "ok", scope: !1777, file: !6, line: 171, type: !58)
!1785 = !DILocation(line: 0, scope: !1777, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 329, column: 20, scope: !1675)
!1787 = !DILocation(line: 170, column: 3, scope: !1777, inlinedAt: !1786)
!1788 = !DILocation(line: 170, column: 15, scope: !1777, inlinedAt: !1786)
!1789 = !DILocation(line: 171, column: 14, scope: !1777, inlinedAt: !1786)
!1790 = !DILocation(line: 171, column: 38, scope: !1777, inlinedAt: !1786)
!1791 = !DILocation(line: 176, column: 7, scope: !1777, inlinedAt: !1786)
!1792 = !DILocation(line: 0, scope: !1675)
!1793 = !DILocation(line: 179, column: 1, scope: !1777, inlinedAt: !1786)
!1794 = !DILocation(line: 330, column: 31, scope: !1675)
!1795 = !DILocation(line: 330, column: 39, scope: !1675)
!1796 = !DILocation(line: 0, scope: !1777, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 330, column: 20, scope: !1675)
!1798 = !DILocation(line: 170, column: 3, scope: !1777, inlinedAt: !1797)
!1799 = !DILocation(line: 170, column: 15, scope: !1777, inlinedAt: !1797)
!1800 = !DILocation(line: 171, column: 14, scope: !1777, inlinedAt: !1797)
!1801 = !DILocation(line: 171, column: 38, scope: !1777, inlinedAt: !1797)
!1802 = !DILocation(line: 176, column: 7, scope: !1777, inlinedAt: !1797)
!1803 = !DILocation(line: 179, column: 1, scope: !1777, inlinedAt: !1797)
!1804 = !DILocation(line: 331, column: 25, scope: !1675)
!1805 = !DILocation(line: 0, scope: !1147, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 177, column: 14, scope: !1807, inlinedAt: !1797)
!1807 = distinct !DILexicalBlock(scope: !1777, file: !6, line: 176, column: 7)
!1808 = !DILocation(line: 149, column: 10, scope: !1147, inlinedAt: !1806)
!1809 = !DILocation(line: 0, scope: !1153, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 331, column: 36, scope: !1675)
!1811 = !DILocation(line: 93, column: 16, scope: !1164, inlinedAt: !1810)
!1812 = !DILocation(line: 93, column: 7, scope: !1153, inlinedAt: !1810)
!1813 = !DILocation(line: 98, column: 3, scope: !1153, inlinedAt: !1810)
!1814 = !DILocation(line: 99, column: 3, scope: !1153, inlinedAt: !1810)
!1815 = !DILocation(line: 101, column: 20, scope: !1153, inlinedAt: !1810)
!1816 = !DILocation(line: 101, column: 10, scope: !1153, inlinedAt: !1810)
!1817 = !DILocation(line: 101, column: 3, scope: !1153, inlinedAt: !1810)
!1818 = !DILocation(line: 336, column: 27, scope: !1765)
!1819 = !DILocation(line: 336, column: 34, scope: !1765)
!1820 = !DILocation(line: 336, column: 38, scope: !1765)
!1821 = !DILocation(line: 336, column: 15, scope: !1677)
!1822 = !DILocation(line: 339, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1765, file: !6, line: 337, column: 13)
!1824 = !DILocation(line: 340, column: 26, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !6, line: 340, column: 19)
!1826 = !DILocation(line: 341, column: 36, scope: !1825)
!1827 = !DILocation(line: 341, column: 17, scope: !1825)
!1828 = !DILocation(line: 342, column: 29, scope: !1823)
!1829 = !DILocation(line: 342, column: 23, scope: !1823)
!1830 = !DILocation(line: 342, column: 54, scope: !1823)
!1831 = !DILocation(line: 343, column: 23, scope: !1823)
!1832 = !DILocation(line: 343, column: 32, scope: !1823)
!1833 = !DILocation(line: 343, column: 40, scope: !1823)
!1834 = !DILocation(line: 343, column: 26, scope: !1823)
!1835 = !DILocation(line: 343, column: 59, scope: !1823)
!1836 = !DILocation(line: 344, column: 23, scope: !1823)
!1837 = !DILocation(line: 344, column: 35, scope: !1823)
!1838 = !{!1193, !1143, i64 0}
!1839 = !DILocation(line: 344, column: 56, scope: !1823)
!1840 = !DILocation(line: 344, column: 42, scope: !1823)
!1841 = !DILocation(line: 345, column: 23, scope: !1823)
!1842 = !DILocation(line: 345, column: 35, scope: !1823)
!1843 = !{!1193, !1143, i64 8}
!1844 = !DILocation(line: 345, column: 56, scope: !1823)
!1845 = !DILocation(line: 345, column: 42, scope: !1823)
!1846 = !DILocation(line: 350, column: 22, scope: !1683)
!1847 = !DILocation(line: 350, column: 19, scope: !1683)
!1848 = !DILocation(line: 350, column: 34, scope: !1683)
!1849 = !DILocation(line: 350, column: 47, scope: !1683)
!1850 = !DILocation(line: 350, column: 44, scope: !1683)
!1851 = !DILocation(line: 350, column: 15, scope: !1677)
!1852 = !DILocation(line: 355, column: 19, scope: !1682)
!1853 = !DILocation(line: 356, column: 26, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1682, file: !6, line: 356, column: 19)
!1855 = !DILocation(line: 357, column: 36, scope: !1854)
!1856 = !DILocation(line: 357, column: 17, scope: !1854)
!1857 = !DILocation(line: 358, column: 31, scope: !1682)
!1858 = !DILocation(line: 0, scope: !1777, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 358, column: 20, scope: !1682)
!1860 = !DILocation(line: 170, column: 3, scope: !1777, inlinedAt: !1859)
!1861 = !DILocation(line: 170, column: 15, scope: !1777, inlinedAt: !1859)
!1862 = !DILocation(line: 171, column: 14, scope: !1777, inlinedAt: !1859)
!1863 = !DILocation(line: 171, column: 38, scope: !1777, inlinedAt: !1859)
!1864 = !DILocation(line: 176, column: 7, scope: !1777, inlinedAt: !1859)
!1865 = !DILocation(line: 0, scope: !1682)
!1866 = !DILocation(line: 179, column: 1, scope: !1777, inlinedAt: !1859)
!1867 = !DILocation(line: 359, column: 31, scope: !1682)
!1868 = !DILocation(line: 359, column: 39, scope: !1682)
!1869 = !DILocation(line: 0, scope: !1777, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 359, column: 20, scope: !1682)
!1871 = !DILocation(line: 170, column: 3, scope: !1777, inlinedAt: !1870)
!1872 = !DILocation(line: 170, column: 15, scope: !1777, inlinedAt: !1870)
!1873 = !DILocation(line: 171, column: 14, scope: !1777, inlinedAt: !1870)
!1874 = !DILocation(line: 171, column: 38, scope: !1777, inlinedAt: !1870)
!1875 = !DILocation(line: 176, column: 7, scope: !1777, inlinedAt: !1870)
!1876 = !DILocation(line: 179, column: 1, scope: !1777, inlinedAt: !1870)
!1877 = !DILocation(line: 360, column: 25, scope: !1682)
!1878 = !DILocation(line: 0, scope: !1147, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 177, column: 14, scope: !1807, inlinedAt: !1870)
!1880 = !DILocation(line: 149, column: 10, scope: !1147, inlinedAt: !1879)
!1881 = !DILocation(line: 0, scope: !1153, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 360, column: 36, scope: !1682)
!1883 = !DILocation(line: 93, column: 16, scope: !1164, inlinedAt: !1882)
!1884 = !DILocation(line: 93, column: 7, scope: !1153, inlinedAt: !1882)
!1885 = !DILocation(line: 98, column: 3, scope: !1153, inlinedAt: !1882)
!1886 = !DILocation(line: 99, column: 3, scope: !1153, inlinedAt: !1882)
!1887 = !DILocation(line: 101, column: 20, scope: !1153, inlinedAt: !1882)
!1888 = !DILocation(line: 101, column: 10, scope: !1153, inlinedAt: !1882)
!1889 = !DILocation(line: 101, column: 3, scope: !1153, inlinedAt: !1882)
!1890 = !DILocation(line: 366, column: 26, scope: !1664)
!1891 = !DILocation(line: 366, column: 67, scope: !1664)
!1892 = !DILocation(line: 366, column: 60, scope: !1664)
!1893 = !DILocation(line: 366, column: 7, scope: !1664)
!1894 = !DILocation(line: 370, column: 12, scope: !1689)
!1895 = !DILocation(line: 370, column: 24, scope: !1689)
!1896 = !DILocation(line: 370, column: 53, scope: !1689)
!1897 = !DILocation(line: 369, column: 7, scope: !1652)
!1898 = !DILocation(line: 372, column: 20, scope: !1688)
!1899 = !DILocation(line: 0, scope: !1688)
!1900 = !DILocation(line: 373, column: 11, scope: !1688)
!1901 = !DILocation(line: 377, column: 7, scope: !1692)
!1902 = !DILocation(line: 377, column: 7, scope: !1652)
!1903 = !DILocation(line: 379, column: 21, scope: !1691)
!1904 = !DILocation(line: 0, scope: !1691)
!1905 = !DILocation(line: 380, column: 11, scope: !1691)
!1906 = !DILocation(line: 385, column: 3, scope: !1652)
!1907 = !DILocation(line: 386, column: 1, scope: !1652)
!1908 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 133, type: !1909, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!49, !49}
!1911 = !{!1912, !1913, !1914}
!1912 = !DILocalVariable(name: "string", arg: 1, scope: !1908, file: !6, line: 133, type: !49)
!1913 = !DILocalVariable(name: "p", scope: !1908, file: !6, line: 135, type: !49)
!1914 = !DILocalVariable(name: "number_start", scope: !1908, file: !6, line: 136, type: !49)
!1915 = !DILocation(line: 0, scope: !1908)
!1916 = !DILocation(line: 138, column: 8, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 138, column: 3)
!1918 = !DILocation(line: 0, scope: !1917)
!1919 = !DILocation(line: 138, column: 20, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !6, line: 138, column: 3)
!1921 = !{!1922, !1922, i64 0}
!1922 = !{!"short", !614, i64 0}
!1923 = !DILocation(line: 138, column: 3, scope: !1917)
!1924 = !DILocation(line: 138, column: 46, scope: !1920)
!1925 = distinct !{!1925, !1923, !1926, !667}
!1926 = !DILocation(line: 139, column: 5, scope: !1917)
!1927 = !DILocation(line: 141, column: 10, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 141, column: 7)
!1929 = !DILocation(line: 141, column: 7, scope: !1908)
!1930 = !DILocation(line: 152, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 152, column: 7)
!1932 = !DILocation(line: 152, column: 7, scope: !1908)
!1933 = !DILocation(line: 0, scope: !1931)
!1934 = !DILocation(line: 154, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !6, line: 153, column: 5)
!1936 = !DILocation(line: 154, column: 7, scope: !1935)
!1937 = distinct !{!1937, !1936, !1938, !667}
!1938 = !DILocation(line: 155, column: 10, scope: !1935)
!1939 = !DILocation(line: 156, column: 14, scope: !1935)
!1940 = !DILocation(line: 156, column: 7, scope: !1935)
!1941 = !DILocation(line: 157, column: 10, scope: !1935)
!1942 = distinct !{!1942, !1940, !1941, !667}
!1943 = !DILocation(line: 158, column: 12, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1935, file: !6, line: 158, column: 11)
!1945 = !DILocation(line: 158, column: 11, scope: !1935)
!1946 = !DILocation(line: 159, column: 9, scope: !1944)
!1947 = !DILocation(line: 162, column: 22, scope: !1908)
!1948 = !DILocation(line: 162, column: 47, scope: !1908)
!1949 = !DILocation(line: 162, column: 3, scope: !1908)
!1950 = !DISubprogram(name: "stat", scope: !1951, file: !1951, line: 205, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1951 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!35, !49, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1955 = !DISubprogram(name: "euidaccess", scope: !1956, file: !1956, line: 292, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1956 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!35, !49, !35}
!1959 = !DISubprogram(name: "geteuid", scope: !1956, file: !1956, line: 690, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1960 = !DISubroutineType(types: !157)
!1961 = !DISubprogram(name: "getegid", scope: !1956, file: !1956, line: 696, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1962 = !DISubprogram(name: "lstat", scope: !1951, file: !1951, line: 259, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1963 = !DISubprogram(name: "isatty", scope: !1956, file: !1956, line: 791, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!35, !35}
!1966 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !54, file: !54, line: 51, type: !637, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1967)
!1967 = !{!1968}
!1968 = !DILocalVariable(name: "file", arg: 1, scope: !1966, file: !54, line: 51, type: !49)
!1969 = !DILocation(line: 0, scope: !1966)
!1970 = !DILocation(line: 53, column: 13, scope: !1966)
!1971 = !DILocation(line: 54, column: 1, scope: !1966)
!1972 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !54, file: !54, line: 88, type: !882, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "ignore", arg: 1, scope: !1972, file: !54, line: 88, type: !58)
!1975 = !DILocation(line: 0, scope: !1972)
!1976 = !DILocation(line: 90, column: 16, scope: !1972)
!1977 = !{!1978, !1978, i64 0}
!1978 = !{!"_Bool", !614, i64 0}
!1979 = !DILocation(line: 91, column: 1, scope: !1972)
!1980 = distinct !DISubprogram(name: "close_stdout", scope: !54, file: !54, line: 117, type: !830, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1981)
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "write_error", scope: !1983, file: !54, line: 122, type: !49)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !54, line: 121, column: 5)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !54, line: 119, column: 7)
!1985 = !DILocation(line: 119, column: 21, scope: !1984)
!1986 = !DILocation(line: 119, column: 7, scope: !1984)
!1987 = !DILocation(line: 119, column: 29, scope: !1984)
!1988 = !DILocation(line: 120, column: 7, scope: !1984)
!1989 = !DILocation(line: 120, column: 12, scope: !1984)
!1990 = !{i8 0, i8 2}
!1991 = !DILocation(line: 120, column: 25, scope: !1984)
!1992 = !DILocation(line: 120, column: 28, scope: !1984)
!1993 = !DILocation(line: 120, column: 34, scope: !1984)
!1994 = !DILocation(line: 119, column: 7, scope: !1980)
!1995 = !DILocation(line: 122, column: 33, scope: !1983)
!1996 = !DILocation(line: 0, scope: !1983)
!1997 = !DILocation(line: 123, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1983, file: !54, line: 123, column: 11)
!1999 = !DILocation(line: 0, scope: !1998)
!2000 = !DILocation(line: 123, column: 11, scope: !1983)
!2001 = !DILocation(line: 124, column: 36, scope: !1998)
!2002 = !DILocation(line: 124, column: 9, scope: !1998)
!2003 = !DILocation(line: 127, column: 9, scope: !1998)
!2004 = !DILocation(line: 129, column: 14, scope: !1983)
!2005 = !DILocation(line: 129, column: 7, scope: !1983)
!2006 = !DILocation(line: 134, column: 42, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1980, file: !54, line: 134, column: 7)
!2008 = !DILocation(line: 134, column: 28, scope: !2007)
!2009 = !DILocation(line: 134, column: 50, scope: !2007)
!2010 = !DILocation(line: 134, column: 7, scope: !1980)
!2011 = !DILocation(line: 135, column: 12, scope: !2007)
!2012 = !DILocation(line: 135, column: 5, scope: !2007)
!2013 = !DILocation(line: 136, column: 1, scope: !1980)
!2014 = !DISubprogram(name: "error", scope: !2015, file: !2015, line: 52, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!2015 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !35, !35, !49, null}
!2018 = distinct !DISubprogram(name: "umaxtostr", scope: !2019, file: !2019, line: 36, type: !2020, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2022)
!2019 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!32, !151, !32}
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "i", arg: 1, scope: !2018, file: !2019, line: 36, type: !151)
!2024 = !DILocalVariable(name: "buf", arg: 2, scope: !2018, file: !2019, line: 36, type: !32)
!2025 = !DILocalVariable(name: "p", scope: !2018, file: !2019, line: 38, type: !32)
!2026 = !DILocation(line: 0, scope: !2018)
!2027 = !DILocation(line: 38, column: 17, scope: !2018)
!2028 = !DILocation(line: 39, column: 6, scope: !2018)
!2029 = !DILocation(line: 52, column: 24, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !2019, line: 50, column: 5)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !2019, line: 41, column: 7)
!2032 = !DILocation(line: 52, column: 16, scope: !2030)
!2033 = !DILocation(line: 52, column: 10, scope: !2030)
!2034 = !DILocation(line: 52, column: 14, scope: !2030)
!2035 = !DILocation(line: 53, column: 17, scope: !2030)
!2036 = !DILocation(line: 53, column: 24, scope: !2030)
!2037 = !DILocation(line: 52, column: 9, scope: !2030)
!2038 = distinct !{!2038, !2039, !2040, !667}
!2039 = !DILocation(line: 51, column: 7, scope: !2030)
!2040 = !DILocation(line: 53, column: 28, scope: !2030)
!2041 = !DILocation(line: 56, column: 3, scope: !2018)
!2042 = distinct !DISubprogram(name: "set_program_name", scope: !68, file: !68, line: 39, type: !637, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "argv0", arg: 1, scope: !2042, file: !68, line: 39, type: !49)
!2045 = !DILocalVariable(name: "slash", scope: !2042, file: !68, line: 46, type: !49)
!2046 = !DILocalVariable(name: "base", scope: !2042, file: !68, line: 47, type: !49)
!2047 = !DILocation(line: 0, scope: !2042)
!2048 = !DILocation(line: 51, column: 13, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !68, line: 51, column: 7)
!2050 = !DILocation(line: 51, column: 7, scope: !2042)
!2051 = !DILocation(line: 55, column: 14, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !68, line: 52, column: 5)
!2053 = !DILocation(line: 54, column: 7, scope: !2052)
!2054 = !DILocation(line: 56, column: 7, scope: !2052)
!2055 = !DILocation(line: 59, column: 11, scope: !2042)
!2056 = !DILocation(line: 60, column: 17, scope: !2042)
!2057 = !DILocation(line: 60, column: 11, scope: !2042)
!2058 = !DILocation(line: 61, column: 12, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2042, file: !68, line: 61, column: 7)
!2060 = !DILocation(line: 61, column: 20, scope: !2059)
!2061 = !DILocation(line: 61, column: 25, scope: !2059)
!2062 = !DILocation(line: 61, column: 42, scope: !2059)
!2063 = !DILocation(line: 61, column: 28, scope: !2059)
!2064 = !DILocation(line: 61, column: 61, scope: !2059)
!2065 = !DILocation(line: 61, column: 7, scope: !2042)
!2066 = !DILocation(line: 64, column: 11, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !68, line: 64, column: 11)
!2068 = distinct !DILexicalBlock(scope: !2059, file: !68, line: 62, column: 5)
!2069 = !DILocation(line: 64, column: 36, scope: !2067)
!2070 = !DILocation(line: 64, column: 11, scope: !2068)
!2071 = !DILocation(line: 66, column: 24, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !68, line: 65, column: 9)
!2073 = !DILocation(line: 70, column: 41, scope: !2072)
!2074 = !DILocation(line: 72, column: 9, scope: !2072)
!2075 = !DILocation(line: 84, column: 16, scope: !2042)
!2076 = !DILocation(line: 90, column: 27, scope: !2042)
!2077 = !DILocation(line: 92, column: 1, scope: !2042)
!2078 = distinct !DISubprogram(name: "clone_quoting_options", scope: !74, file: !74, line: 122, type: !2079, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2082)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2081, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!2082 = !{!2083, !2084, !2085}
!2083 = !DILocalVariable(name: "o", arg: 1, scope: !2078, file: !74, line: 122, type: !2081)
!2084 = !DILocalVariable(name: "e", scope: !2078, file: !74, line: 124, type: !35)
!2085 = !DILocalVariable(name: "p", scope: !2078, file: !74, line: 125, type: !2081)
!2086 = !DILocation(line: 0, scope: !2078)
!2087 = !DILocation(line: 124, column: 11, scope: !2078)
!2088 = !DILocation(line: 125, column: 40, scope: !2078)
!2089 = !DILocation(line: 125, column: 31, scope: !2078)
!2090 = !DILocation(line: 127, column: 9, scope: !2078)
!2091 = !DILocation(line: 128, column: 3, scope: !2078)
!2092 = distinct !DISubprogram(name: "get_quoting_style", scope: !74, file: !74, line: 133, type: !2093, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2097)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!76, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "o", arg: 1, scope: !2092, file: !74, line: 133, type: !2095)
!2099 = !DILocation(line: 0, scope: !2092)
!2100 = !DILocation(line: 135, column: 11, scope: !2092)
!2101 = !DILocation(line: 135, column: 46, scope: !2092)
!2102 = !{!2103, !614, i64 0}
!2103 = !{!"quoting_options", !614, i64 0, !771, i64 4, !614, i64 8, !613, i64 40, !613, i64 48}
!2104 = !DILocation(line: 135, column: 3, scope: !2092)
!2105 = distinct !DISubprogram(name: "set_quoting_style", scope: !74, file: !74, line: 141, type: !2106, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2081, !76}
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "o", arg: 1, scope: !2105, file: !74, line: 141, type: !2081)
!2110 = !DILocalVariable(name: "s", arg: 2, scope: !2105, file: !74, line: 141, type: !76)
!2111 = !DILocation(line: 0, scope: !2105)
!2112 = !DILocation(line: 143, column: 4, scope: !2105)
!2113 = !DILocation(line: 143, column: 39, scope: !2105)
!2114 = !DILocation(line: 143, column: 45, scope: !2105)
!2115 = !DILocation(line: 144, column: 1, scope: !2105)
!2116 = distinct !DISubprogram(name: "set_char_quoting", scope: !74, file: !74, line: 152, type: !2117, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!35, !2081, !33, !35}
!2119 = !{!2120, !2121, !2122, !2123, !2125, !2127, !2128}
!2120 = !DILocalVariable(name: "o", arg: 1, scope: !2116, file: !74, line: 152, type: !2081)
!2121 = !DILocalVariable(name: "c", arg: 2, scope: !2116, file: !74, line: 152, type: !33)
!2122 = !DILocalVariable(name: "i", arg: 3, scope: !2116, file: !74, line: 152, type: !35)
!2123 = !DILocalVariable(name: "uc", scope: !2116, file: !74, line: 154, type: !2124)
!2124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2125 = !DILocalVariable(name: "p", scope: !2116, file: !74, line: 155, type: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2127 = !DILocalVariable(name: "shift", scope: !2116, file: !74, line: 157, type: !35)
!2128 = !DILocalVariable(name: "r", scope: !2116, file: !74, line: 158, type: !35)
!2129 = !DILocation(line: 0, scope: !2116)
!2130 = !DILocation(line: 156, column: 6, scope: !2116)
!2131 = !DILocation(line: 156, column: 62, scope: !2116)
!2132 = !DILocation(line: 156, column: 57, scope: !2116)
!2133 = !DILocation(line: 157, column: 15, scope: !2116)
!2134 = !DILocation(line: 158, column: 12, scope: !2116)
!2135 = !DILocation(line: 158, column: 15, scope: !2116)
!2136 = !DILocation(line: 158, column: 25, scope: !2116)
!2137 = !DILocation(line: 159, column: 13, scope: !2116)
!2138 = !DILocation(line: 159, column: 18, scope: !2116)
!2139 = !DILocation(line: 159, column: 23, scope: !2116)
!2140 = !DILocation(line: 159, column: 6, scope: !2116)
!2141 = !DILocation(line: 160, column: 3, scope: !2116)
!2142 = distinct !DISubprogram(name: "set_quoting_flags", scope: !74, file: !74, line: 168, type: !2143, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!35, !2081, !35}
!2145 = !{!2146, !2147, !2148}
!2146 = !DILocalVariable(name: "o", arg: 1, scope: !2142, file: !74, line: 168, type: !2081)
!2147 = !DILocalVariable(name: "i", arg: 2, scope: !2142, file: !74, line: 168, type: !35)
!2148 = !DILocalVariable(name: "r", scope: !2142, file: !74, line: 170, type: !35)
!2149 = !DILocation(line: 0, scope: !2142)
!2150 = !DILocation(line: 171, column: 8, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !74, line: 171, column: 7)
!2152 = !DILocation(line: 171, column: 7, scope: !2142)
!2153 = !DILocation(line: 173, column: 10, scope: !2142)
!2154 = !{!2103, !771, i64 4}
!2155 = !DILocation(line: 174, column: 12, scope: !2142)
!2156 = !DILocation(line: 175, column: 3, scope: !2142)
!2157 = distinct !DISubprogram(name: "set_custom_quoting", scope: !74, file: !74, line: 179, type: !2158, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !2081, !49, !49}
!2160 = !{!2161, !2162, !2163}
!2161 = !DILocalVariable(name: "o", arg: 1, scope: !2157, file: !74, line: 179, type: !2081)
!2162 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2157, file: !74, line: 180, type: !49)
!2163 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2157, file: !74, line: 180, type: !49)
!2164 = !DILocation(line: 0, scope: !2157)
!2165 = !DILocation(line: 182, column: 8, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2157, file: !74, line: 182, column: 7)
!2167 = !DILocation(line: 182, column: 7, scope: !2157)
!2168 = !DILocation(line: 184, column: 6, scope: !2157)
!2169 = !DILocation(line: 184, column: 12, scope: !2157)
!2170 = !DILocation(line: 185, column: 8, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !74, line: 185, column: 7)
!2172 = !DILocation(line: 185, column: 19, scope: !2171)
!2173 = !DILocation(line: 186, column: 5, scope: !2171)
!2174 = !DILocation(line: 187, column: 6, scope: !2157)
!2175 = !DILocation(line: 187, column: 17, scope: !2157)
!2176 = !{!2103, !613, i64 40}
!2177 = !DILocation(line: 188, column: 6, scope: !2157)
!2178 = !DILocation(line: 188, column: 18, scope: !2157)
!2179 = !{!2103, !613, i64 48}
!2180 = !DILocation(line: 189, column: 1, scope: !2157)
!2181 = distinct !DISubprogram(name: "quotearg_buffer", scope: !74, file: !74, line: 784, type: !2182, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!96, !32, !96, !49, !96, !2095}
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192}
!2185 = !DILocalVariable(name: "buffer", arg: 1, scope: !2181, file: !74, line: 784, type: !32)
!2186 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2181, file: !74, line: 784, type: !96)
!2187 = !DILocalVariable(name: "arg", arg: 3, scope: !2181, file: !74, line: 785, type: !49)
!2188 = !DILocalVariable(name: "argsize", arg: 4, scope: !2181, file: !74, line: 785, type: !96)
!2189 = !DILocalVariable(name: "o", arg: 5, scope: !2181, file: !74, line: 786, type: !2095)
!2190 = !DILocalVariable(name: "p", scope: !2181, file: !74, line: 788, type: !2095)
!2191 = !DILocalVariable(name: "e", scope: !2181, file: !74, line: 789, type: !35)
!2192 = !DILocalVariable(name: "r", scope: !2181, file: !74, line: 790, type: !96)
!2193 = !DILocation(line: 0, scope: !2181)
!2194 = !DILocation(line: 788, column: 37, scope: !2181)
!2195 = !DILocation(line: 789, column: 11, scope: !2181)
!2196 = !DILocation(line: 791, column: 43, scope: !2181)
!2197 = !DILocation(line: 791, column: 53, scope: !2181)
!2198 = !DILocation(line: 791, column: 60, scope: !2181)
!2199 = !DILocation(line: 792, column: 43, scope: !2181)
!2200 = !DILocation(line: 792, column: 58, scope: !2181)
!2201 = !DILocation(line: 790, column: 14, scope: !2181)
!2202 = !DILocation(line: 793, column: 9, scope: !2181)
!2203 = !DILocation(line: 794, column: 3, scope: !2181)
!2204 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !74, file: !74, line: 256, type: !2205, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2209)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!96, !32, !96, !49, !96, !76, !35, !2207, !49, !49}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2234, !2235, !2236, !2237, !2238, !2241, !2242, !2260, !2263, !2264, !2271, !2274, !2275, !2276, !2277, !2278, !2279}
!2210 = !DILocalVariable(name: "buffer", arg: 1, scope: !2204, file: !74, line: 256, type: !32)
!2211 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2204, file: !74, line: 256, type: !96)
!2212 = !DILocalVariable(name: "arg", arg: 3, scope: !2204, file: !74, line: 257, type: !49)
!2213 = !DILocalVariable(name: "argsize", arg: 4, scope: !2204, file: !74, line: 257, type: !96)
!2214 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2204, file: !74, line: 258, type: !76)
!2215 = !DILocalVariable(name: "flags", arg: 6, scope: !2204, file: !74, line: 258, type: !35)
!2216 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2204, file: !74, line: 259, type: !2207)
!2217 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2204, file: !74, line: 260, type: !49)
!2218 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2204, file: !74, line: 261, type: !49)
!2219 = !DILocalVariable(name: "i", scope: !2204, file: !74, line: 263, type: !96)
!2220 = !DILocalVariable(name: "len", scope: !2204, file: !74, line: 264, type: !96)
!2221 = !DILocalVariable(name: "orig_buffersize", scope: !2204, file: !74, line: 265, type: !96)
!2222 = !DILocalVariable(name: "quote_string", scope: !2204, file: !74, line: 266, type: !49)
!2223 = !DILocalVariable(name: "quote_string_len", scope: !2204, file: !74, line: 267, type: !96)
!2224 = !DILocalVariable(name: "backslash_escapes", scope: !2204, file: !74, line: 268, type: !58)
!2225 = !DILocalVariable(name: "unibyte_locale", scope: !2204, file: !74, line: 269, type: !58)
!2226 = !DILocalVariable(name: "elide_outer_quotes", scope: !2204, file: !74, line: 270, type: !58)
!2227 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2204, file: !74, line: 271, type: !58)
!2228 = !DILocalVariable(name: "encountered_single_quote", scope: !2204, file: !74, line: 272, type: !58)
!2229 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2204, file: !74, line: 273, type: !58)
!2230 = !DILocalVariable(name: "c", scope: !2231, file: !74, line: 402, type: !2124)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !74, line: 401, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !74, line: 400, column: 3)
!2233 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 400, column: 3)
!2234 = !DILocalVariable(name: "esc", scope: !2231, file: !74, line: 403, type: !2124)
!2235 = !DILocalVariable(name: "is_right_quote", scope: !2231, file: !74, line: 404, type: !58)
!2236 = !DILocalVariable(name: "escaping", scope: !2231, file: !74, line: 405, type: !58)
!2237 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2231, file: !74, line: 406, type: !58)
!2238 = !DILocalVariable(name: "m", scope: !2239, file: !74, line: 610, type: !96)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 608, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 426, column: 9)
!2241 = !DILocalVariable(name: "printable", scope: !2239, file: !74, line: 612, type: !58)
!2242 = !DILocalVariable(name: "mbstate", scope: !2243, file: !74, line: 621, type: !2245)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !74, line: 620, column: 15)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !74, line: 614, column: 17)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2246, line: 6, baseType: !2247)
!2246 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2248, line: 21, baseType: !2249)
!2248 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2248, line: 13, size: 64, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2249, file: !2248, line: 15, baseType: !35, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2249, file: !2248, line: 20, baseType: !2253, size: 32, offset: 32)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2248, line: 16, size: 32, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2253, file: !2248, line: 18, baseType: !7, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2253, file: !2248, line: 19, baseType: !2257, size: 32)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !2258)
!2258 = !{!2259}
!2259 = !DISubrange(count: 4)
!2260 = !DILocalVariable(name: "w", scope: !2261, file: !74, line: 631, type: !2262)
!2261 = distinct !DILexicalBlock(scope: !2243, file: !74, line: 630, column: 19)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !97, line: 74, baseType: !35)
!2263 = !DILocalVariable(name: "bytes", scope: !2261, file: !74, line: 632, type: !96)
!2264 = !DILocalVariable(name: "j", scope: !2265, file: !74, line: 657, type: !96)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !74, line: 656, column: 27)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !74, line: 654, column: 29)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !74, line: 649, column: 23)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !74, line: 641, column: 30)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !74, line: 636, column: 30)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !74, line: 634, column: 25)
!2271 = !DILocalVariable(name: "ilim", scope: !2272, file: !74, line: 684, type: !96)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !74, line: 681, column: 15)
!2273 = distinct !DILexicalBlock(scope: !2239, file: !74, line: 680, column: 17)
!2274 = !DILabel(scope: !2204, name: "process_input", file: !74, line: 314)
!2275 = !DILabel(scope: !2240, name: "c_and_shell_escape", file: !74, line: 512)
!2276 = !DILabel(scope: !2240, name: "c_escape", file: !74, line: 517)
!2277 = !DILabel(scope: !2231, name: "store_escape", file: !74, line: 719)
!2278 = !DILabel(scope: !2231, name: "store_c", file: !74, line: 722)
!2279 = !DILabel(scope: !2204, name: "force_outer_quoting_style", file: !74, line: 763)
!2280 = !DILocation(line: 0, scope: !2204)
!2281 = !DILocation(line: 269, column: 25, scope: !2204)
!2282 = !DILocation(line: 269, column: 36, scope: !2204)
!2283 = !DILocation(line: 270, column: 8, scope: !2204)
!2284 = !DILocation(line: 273, column: 3, scope: !2204)
!2285 = !DILocation(line: 265, column: 10, scope: !2204)
!2286 = !DILocation(line: 266, column: 15, scope: !2204)
!2287 = !DILocation(line: 267, column: 10, scope: !2204)
!2288 = !DILocation(line: 268, column: 8, scope: !2204)
!2289 = !DILocation(line: 271, column: 8, scope: !2204)
!2290 = !DILocation(line: 272, column: 8, scope: !2204)
!2291 = !DILocation(line: 273, column: 8, scope: !2204)
!2292 = !DILocation(line: 314, column: 2, scope: !2204)
!2293 = !DILocation(line: 316, column: 3, scope: !2204)
!2294 = !DILocation(line: 323, column: 11, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 317, column: 5)
!2296 = !DILocation(line: 323, column: 12, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !74, line: 323, column: 11)
!2298 = !DILocation(line: 324, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !74, line: 324, column: 9)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !74, line: 324, column: 9)
!2301 = !DILocation(line: 324, column: 9, scope: !2300)
!2302 = !DILocation(line: 362, column: 26, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !74, line: 340, column: 11)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !74, line: 339, column: 13)
!2305 = distinct !DILexicalBlock(scope: !2295, file: !74, line: 338, column: 7)
!2306 = !DILocation(line: 363, column: 27, scope: !2303)
!2307 = !DILocation(line: 364, column: 11, scope: !2303)
!2308 = !DILocation(line: 365, column: 14, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !74, line: 365, column: 13)
!2310 = !DILocation(line: 365, column: 13, scope: !2305)
!2311 = !DILocation(line: 366, column: 43, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !74, line: 366, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !74, line: 366, column: 11)
!2314 = !DILocation(line: 366, column: 11, scope: !2313)
!2315 = !DILocation(line: 367, column: 13, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !74, line: 367, column: 13)
!2317 = distinct !DILexicalBlock(scope: !2312, file: !74, line: 367, column: 13)
!2318 = !DILocation(line: 367, column: 13, scope: !2317)
!2319 = !DILocation(line: 366, column: 70, scope: !2312)
!2320 = distinct !{!2320, !2314, !2321, !667}
!2321 = !DILocation(line: 367, column: 13, scope: !2313)
!2322 = !DILocation(line: 264, column: 10, scope: !2204)
!2323 = !DILocation(line: 370, column: 28, scope: !2305)
!2324 = !DILocation(line: 372, column: 7, scope: !2295)
!2325 = !DILocation(line: 376, column: 7, scope: !2295)
!2326 = !DILocation(line: 379, column: 7, scope: !2295)
!2327 = !DILocation(line: 381, column: 12, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2295, file: !74, line: 381, column: 11)
!2329 = !DILocation(line: 381, column: 11, scope: !2295)
!2330 = !DILocation(line: 386, column: 12, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2295, file: !74, line: 386, column: 11)
!2332 = !DILocation(line: 386, column: 11, scope: !2295)
!2333 = !DILocation(line: 387, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !74, line: 387, column: 9)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !74, line: 387, column: 9)
!2336 = !DILocation(line: 387, column: 9, scope: !2335)
!2337 = !DILocation(line: 394, column: 7, scope: !2295)
!2338 = !DILocation(line: 397, column: 7, scope: !2295)
!2339 = !DILocation(line: 400, column: 8, scope: !2233)
!2340 = !DILocation(line: 0, scope: !2233)
!2341 = !DILocation(line: 400, column: 27, scope: !2232)
!2342 = !DILocation(line: 400, column: 19, scope: !2232)
!2343 = !DILocation(line: 400, column: 41, scope: !2232)
!2344 = !DILocation(line: 400, column: 48, scope: !2232)
!2345 = !DILocation(line: 400, column: 3, scope: !2233)
!2346 = !DILocation(line: 400, column: 60, scope: !2232)
!2347 = !DILocation(line: 0, scope: !2231)
!2348 = !DILocation(line: 409, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 408, column: 11)
!2350 = !DILocation(line: 411, column: 17, scope: !2349)
!2351 = !DILocation(line: 412, column: 39, scope: !2349)
!2352 = !DILocation(line: 416, column: 32, scope: !2349)
!2353 = !DILocation(line: 412, column: 19, scope: !2349)
!2354 = !DILocation(line: 412, column: 15, scope: !2349)
!2355 = !DILocation(line: 417, column: 11, scope: !2349)
!2356 = !DILocation(line: 417, column: 26, scope: !2349)
!2357 = !DILocation(line: 417, column: 14, scope: !2349)
!2358 = !DILocation(line: 417, column: 63, scope: !2349)
!2359 = !DILocation(line: 408, column: 11, scope: !2231)
!2360 = !DILocation(line: 424, column: 11, scope: !2231)
!2361 = !DILocation(line: 425, column: 7, scope: !2231)
!2362 = !DILocation(line: 428, column: 15, scope: !2240)
!2363 = !DILocation(line: 430, column: 15, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !74, line: 430, column: 15)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !74, line: 429, column: 13)
!2366 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 428, column: 15)
!2367 = !DILocation(line: 430, column: 15, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !74, line: 430, column: 15)
!2369 = !DILocation(line: 430, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !74, line: 430, column: 15)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !74, line: 430, column: 15)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !74, line: 430, column: 15)
!2373 = !DILocation(line: 430, column: 15, scope: !2371)
!2374 = !DILocation(line: 430, column: 15, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !74, line: 430, column: 15)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !74, line: 430, column: 15)
!2377 = !DILocation(line: 430, column: 15, scope: !2376)
!2378 = !DILocation(line: 430, column: 15, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !74, line: 430, column: 15)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !74, line: 430, column: 15)
!2381 = !DILocation(line: 430, column: 15, scope: !2380)
!2382 = !DILocation(line: 430, column: 15, scope: !2372)
!2383 = !DILocation(line: 430, column: 15, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !74, line: 430, column: 15)
!2385 = distinct !DILexicalBlock(scope: !2364, file: !74, line: 430, column: 15)
!2386 = !DILocation(line: 430, column: 15, scope: !2385)
!2387 = !DILocation(line: 438, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2365, file: !74, line: 437, column: 19)
!2389 = !DILocation(line: 438, column: 48, scope: !2388)
!2390 = !DILocation(line: 438, column: 59, scope: !2388)
!2391 = !DILocation(line: 440, column: 19, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !74, line: 440, column: 19)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !74, line: 440, column: 19)
!2394 = distinct !DILexicalBlock(scope: !2388, file: !74, line: 439, column: 17)
!2395 = !DILocation(line: 440, column: 19, scope: !2393)
!2396 = !DILocation(line: 441, column: 19, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !74, line: 441, column: 19)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !74, line: 441, column: 19)
!2399 = !DILocation(line: 441, column: 19, scope: !2398)
!2400 = !DILocation(line: 442, column: 17, scope: !2394)
!2401 = !DILocation(line: 449, column: 20, scope: !2366)
!2402 = !DILocation(line: 454, column: 11, scope: !2240)
!2403 = !DILocation(line: 457, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 455, column: 13)
!2405 = !DILocation(line: 463, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2404, file: !74, line: 462, column: 19)
!2407 = !DILocation(line: 463, column: 47, scope: !2406)
!2408 = !DILocation(line: 463, column: 41, scope: !2406)
!2409 = !DILocation(line: 463, column: 52, scope: !2406)
!2410 = !DILocation(line: 462, column: 19, scope: !2404)
!2411 = !DILocation(line: 464, column: 25, scope: !2406)
!2412 = !DILocation(line: 464, column: 17, scope: !2406)
!2413 = !DILocation(line: 471, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2406, file: !74, line: 465, column: 19)
!2415 = !DILocation(line: 475, column: 21, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !74, line: 475, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !74, line: 475, column: 21)
!2418 = !DILocation(line: 475, column: 21, scope: !2417)
!2419 = !DILocation(line: 476, column: 21, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !74, line: 476, column: 21)
!2421 = distinct !DILexicalBlock(scope: !2414, file: !74, line: 476, column: 21)
!2422 = !DILocation(line: 476, column: 21, scope: !2421)
!2423 = !DILocation(line: 477, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !74, line: 477, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2414, file: !74, line: 477, column: 21)
!2426 = !DILocation(line: 477, column: 21, scope: !2425)
!2427 = !DILocation(line: 478, column: 21, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !74, line: 478, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2414, file: !74, line: 478, column: 21)
!2430 = !DILocation(line: 478, column: 21, scope: !2429)
!2431 = !DILocation(line: 479, column: 21, scope: !2414)
!2432 = !DILocation(line: 492, column: 31, scope: !2240)
!2433 = !DILocation(line: 493, column: 31, scope: !2240)
!2434 = !DILocation(line: 495, column: 31, scope: !2240)
!2435 = !DILocation(line: 496, column: 31, scope: !2240)
!2436 = !DILocation(line: 497, column: 31, scope: !2240)
!2437 = !DILocation(line: 500, column: 15, scope: !2240)
!2438 = !DILocation(line: 502, column: 19, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !74, line: 501, column: 13)
!2440 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 500, column: 15)
!2441 = !DILocation(line: 509, column: 33, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 509, column: 15)
!2443 = !DILocation(line: 0, scope: !2240)
!2444 = !DILocation(line: 512, column: 9, scope: !2240)
!2445 = !DILocation(line: 514, column: 15, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 513, column: 15)
!2447 = !DILocation(line: 517, column: 9, scope: !2240)
!2448 = !DILocation(line: 518, column: 15, scope: !2240)
!2449 = !DILocation(line: 526, column: 15, scope: !2240)
!2450 = !DILocation(line: 526, column: 40, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 526, column: 15)
!2452 = !DILocation(line: 526, column: 47, scope: !2451)
!2453 = !DILocation(line: 526, column: 18, scope: !2451)
!2454 = !DILocation(line: 530, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 530, column: 15)
!2456 = !DILocation(line: 530, column: 15, scope: !2240)
!2457 = !DILocation(line: 535, column: 11, scope: !2240)
!2458 = !DILocation(line: 549, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 548, column: 15)
!2460 = !DILocation(line: 556, column: 15, scope: !2240)
!2461 = !DILocation(line: 558, column: 19, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !74, line: 557, column: 13)
!2463 = distinct !DILexicalBlock(scope: !2240, file: !74, line: 556, column: 15)
!2464 = !DILocation(line: 561, column: 19, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !74, line: 561, column: 19)
!2466 = !DILocation(line: 561, column: 30, scope: !2465)
!2467 = !DILocation(line: 570, column: 15, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !74, line: 570, column: 15)
!2469 = distinct !DILexicalBlock(scope: !2462, file: !74, line: 570, column: 15)
!2470 = !DILocation(line: 570, column: 15, scope: !2469)
!2471 = !DILocation(line: 571, column: 15, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !74, line: 571, column: 15)
!2473 = distinct !DILexicalBlock(scope: !2462, file: !74, line: 571, column: 15)
!2474 = !DILocation(line: 571, column: 15, scope: !2473)
!2475 = !DILocation(line: 572, column: 15, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !74, line: 572, column: 15)
!2477 = distinct !DILexicalBlock(scope: !2462, file: !74, line: 572, column: 15)
!2478 = !DILocation(line: 572, column: 15, scope: !2477)
!2479 = !DILocation(line: 574, column: 13, scope: !2462)
!2480 = !DILocation(line: 614, column: 17, scope: !2239)
!2481 = !DILocation(line: 0, scope: !2239)
!2482 = !DILocation(line: 617, column: 29, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2244, file: !74, line: 615, column: 15)
!2484 = !DILocation(line: 617, column: 27, scope: !2483)
!2485 = !DILocation(line: 678, column: 40, scope: !2239)
!2486 = !DILocation(line: 680, column: 23, scope: !2273)
!2487 = !DILocation(line: 621, column: 17, scope: !2243)
!2488 = !DILocation(line: 621, column: 27, scope: !2243)
!2489 = !DILocalVariable(name: "__dest", arg: 1, scope: !2490, file: !2491, line: 57, type: !34)
!2490 = distinct !DISubprogram(name: "memset", scope: !2491, file: !2491, line: 57, type: !2492, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2494)
!2491 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!34, !34, !35, !96}
!2494 = !{!2489, !2495, !2496}
!2495 = !DILocalVariable(name: "__ch", arg: 2, scope: !2490, file: !2491, line: 57, type: !35)
!2496 = !DILocalVariable(name: "__len", arg: 3, scope: !2490, file: !2491, line: 57, type: !96)
!2497 = !DILocation(line: 0, scope: !2490, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 622, column: 17, scope: !2243)
!2499 = !DILocation(line: 59, column: 10, scope: !2490, inlinedAt: !2498)
!2500 = !DILocation(line: 626, column: 29, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2243, file: !74, line: 626, column: 21)
!2502 = !DILocation(line: 626, column: 21, scope: !2243)
!2503 = !DILocation(line: 627, column: 29, scope: !2501)
!2504 = !DILocation(line: 627, column: 19, scope: !2501)
!2505 = !DILocation(line: 629, column: 17, scope: !2243)
!2506 = !DILocation(line: 624, column: 19, scope: !2243)
!2507 = !DILocation(line: 625, column: 27, scope: !2243)
!2508 = !DILocation(line: 631, column: 21, scope: !2261)
!2509 = !DILocation(line: 632, column: 56, scope: !2261)
!2510 = !DILocation(line: 632, column: 50, scope: !2261)
!2511 = !DILocation(line: 633, column: 53, scope: !2261)
!2512 = !DILocation(line: 0, scope: !2261)
!2513 = !DILocation(line: 632, column: 36, scope: !2261)
!2514 = !DILocation(line: 634, column: 25, scope: !2261)
!2515 = !DILocation(line: 644, column: 38, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2268, file: !74, line: 642, column: 23)
!2517 = !DILocation(line: 644, column: 48, scope: !2516)
!2518 = !DILocation(line: 644, column: 25, scope: !2516)
!2519 = !DILocation(line: 644, column: 51, scope: !2516)
!2520 = !DILocation(line: 645, column: 28, scope: !2516)
!2521 = !DILocation(line: 644, column: 34, scope: !2516)
!2522 = distinct !{!2522, !2518, !2520, !667}
!2523 = !DILocation(line: 655, column: 29, scope: !2266)
!2524 = !DILocation(line: 0, scope: !2265)
!2525 = !DILocation(line: 659, column: 49, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !74, line: 658, column: 29)
!2527 = distinct !DILexicalBlock(scope: !2265, file: !74, line: 658, column: 29)
!2528 = !DILocation(line: 659, column: 39, scope: !2526)
!2529 = !DILocation(line: 659, column: 31, scope: !2526)
!2530 = !DILocation(line: 658, column: 53, scope: !2526)
!2531 = !DILocation(line: 658, column: 43, scope: !2526)
!2532 = !DILocation(line: 658, column: 29, scope: !2527)
!2533 = distinct !{!2533, !2532, !2534, !667}
!2534 = !DILocation(line: 667, column: 33, scope: !2527)
!2535 = !DILocation(line: 674, column: 19, scope: !2243)
!2536 = !DILocation(line: 670, column: 41, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2267, file: !74, line: 670, column: 29)
!2538 = !DILocation(line: 670, column: 31, scope: !2537)
!2539 = !DILocation(line: 670, column: 29, scope: !2267)
!2540 = !DILocation(line: 672, column: 27, scope: !2267)
!2541 = !DILocation(line: 675, column: 26, scope: !2243)
!2542 = !DILocation(line: 675, column: 24, scope: !2243)
!2543 = !DILocation(line: 674, column: 19, scope: !2261)
!2544 = distinct !{!2544, !2505, !2545, !667}
!2545 = !DILocation(line: 675, column: 44, scope: !2243)
!2546 = !DILocation(line: 676, column: 15, scope: !2244)
!2547 = !DILocation(line: 680, column: 19, scope: !2273)
!2548 = !DILocation(line: 680, column: 45, scope: !2273)
!2549 = !DILocation(line: 684, column: 33, scope: !2272)
!2550 = !DILocation(line: 0, scope: !2272)
!2551 = !DILocation(line: 686, column: 17, scope: !2272)
!2552 = !DILocation(line: 405, column: 12, scope: !2231)
!2553 = !DILocation(line: 688, column: 43, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !74, line: 688, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !74, line: 687, column: 19)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !74, line: 686, column: 17)
!2557 = distinct !DILexicalBlock(scope: !2272, file: !74, line: 686, column: 17)
!2558 = !DILocation(line: 690, column: 25, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !74, line: 690, column: 25)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !74, line: 689, column: 23)
!2561 = !DILocation(line: 690, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !74, line: 690, column: 25)
!2563 = !DILocation(line: 690, column: 25, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !74, line: 690, column: 25)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !74, line: 690, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !74, line: 690, column: 25)
!2567 = !DILocation(line: 690, column: 25, scope: !2565)
!2568 = !DILocation(line: 690, column: 25, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !74, line: 690, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !74, line: 690, column: 25)
!2571 = !DILocation(line: 690, column: 25, scope: !2570)
!2572 = !DILocation(line: 690, column: 25, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !74, line: 690, column: 25)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !74, line: 690, column: 25)
!2575 = !DILocation(line: 690, column: 25, scope: !2574)
!2576 = !DILocation(line: 690, column: 25, scope: !2566)
!2577 = !DILocation(line: 690, column: 25, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !74, line: 690, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2559, file: !74, line: 690, column: 25)
!2580 = !DILocation(line: 690, column: 25, scope: !2579)
!2581 = !DILocation(line: 691, column: 25, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !74, line: 691, column: 25)
!2583 = distinct !DILexicalBlock(scope: !2560, file: !74, line: 691, column: 25)
!2584 = !DILocation(line: 691, column: 25, scope: !2583)
!2585 = !DILocation(line: 692, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !74, line: 692, column: 25)
!2587 = distinct !DILexicalBlock(scope: !2560, file: !74, line: 692, column: 25)
!2588 = !DILocation(line: 692, column: 25, scope: !2587)
!2589 = !DILocation(line: 693, column: 38, scope: !2560)
!2590 = !DILocation(line: 693, column: 33, scope: !2560)
!2591 = !DILocation(line: 694, column: 23, scope: !2560)
!2592 = !DILocation(line: 695, column: 30, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2554, file: !74, line: 695, column: 30)
!2594 = !DILocation(line: 695, column: 30, scope: !2554)
!2595 = !DILocation(line: 697, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !74, line: 697, column: 25)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !74, line: 697, column: 25)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !74, line: 696, column: 23)
!2599 = !DILocation(line: 697, column: 25, scope: !2597)
!2600 = !DILocation(line: 699, column: 23, scope: !2598)
!2601 = !DILocation(line: 700, column: 35, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2555, file: !74, line: 700, column: 25)
!2603 = !DILocation(line: 700, column: 30, scope: !2602)
!2604 = !DILocation(line: 700, column: 25, scope: !2555)
!2605 = !DILocation(line: 702, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !74, line: 702, column: 21)
!2607 = distinct !DILexicalBlock(scope: !2555, file: !74, line: 702, column: 21)
!2608 = !DILocation(line: 702, column: 21, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !74, line: 702, column: 21)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !74, line: 702, column: 21)
!2611 = distinct !DILexicalBlock(scope: !2606, file: !74, line: 702, column: 21)
!2612 = !DILocation(line: 702, column: 21, scope: !2610)
!2613 = !DILocation(line: 702, column: 21, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !74, line: 702, column: 21)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !74, line: 702, column: 21)
!2616 = !DILocation(line: 702, column: 21, scope: !2615)
!2617 = !DILocation(line: 702, column: 21, scope: !2611)
!2618 = !DILocation(line: 0, scope: !2555)
!2619 = !DILocation(line: 703, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !74, line: 703, column: 21)
!2621 = distinct !DILexicalBlock(scope: !2555, file: !74, line: 703, column: 21)
!2622 = !DILocation(line: 703, column: 21, scope: !2621)
!2623 = !DILocation(line: 704, column: 25, scope: !2555)
!2624 = !DILocation(line: 686, column: 17, scope: !2556)
!2625 = distinct !{!2625, !2626, !2627}
!2626 = !DILocation(line: 686, column: 17, scope: !2557)
!2627 = !DILocation(line: 705, column: 19, scope: !2557)
!2628 = !DILocation(line: 416, column: 30, scope: !2349)
!2629 = !DILocation(line: 712, column: 34, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 712, column: 11)
!2631 = !DILocation(line: 715, column: 35, scope: !2630)
!2632 = !DILocation(line: 715, column: 17, scope: !2630)
!2633 = !DILocation(line: 715, column: 47, scope: !2630)
!2634 = !DILocation(line: 715, column: 65, scope: !2630)
!2635 = !DILocation(line: 716, column: 11, scope: !2630)
!2636 = !DILocation(line: 712, column: 11, scope: !2231)
!2637 = !DILocation(line: 400, column: 10, scope: !2233)
!2638 = !DILocation(line: 719, column: 5, scope: !2231)
!2639 = !DILocation(line: 720, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 720, column: 7)
!2641 = !DILocation(line: 720, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2640, file: !74, line: 720, column: 7)
!2643 = !DILocation(line: 720, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !74, line: 720, column: 7)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !74, line: 720, column: 7)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !74, line: 720, column: 7)
!2647 = !DILocation(line: 720, column: 7, scope: !2645)
!2648 = !DILocation(line: 720, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !74, line: 720, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !74, line: 720, column: 7)
!2651 = !DILocation(line: 720, column: 7, scope: !2650)
!2652 = !DILocation(line: 720, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !74, line: 720, column: 7)
!2654 = distinct !DILexicalBlock(scope: !2646, file: !74, line: 720, column: 7)
!2655 = !DILocation(line: 720, column: 7, scope: !2654)
!2656 = !DILocation(line: 720, column: 7, scope: !2646)
!2657 = !DILocation(line: 720, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !74, line: 720, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2640, file: !74, line: 720, column: 7)
!2660 = !DILocation(line: 720, column: 7, scope: !2659)
!2661 = !DILocation(line: 722, column: 5, scope: !2231)
!2662 = !DILocation(line: 723, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !74, line: 723, column: 7)
!2664 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 723, column: 7)
!2665 = !DILocation(line: 424, column: 9, scope: !2231)
!2666 = !DILocation(line: 723, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !74, line: 723, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !74, line: 723, column: 7)
!2669 = distinct !DILexicalBlock(scope: !2663, file: !74, line: 723, column: 7)
!2670 = !DILocation(line: 723, column: 7, scope: !2668)
!2671 = !DILocation(line: 723, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !74, line: 723, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !74, line: 723, column: 7)
!2674 = !DILocation(line: 723, column: 7, scope: !2673)
!2675 = !DILocation(line: 723, column: 7, scope: !2669)
!2676 = !DILocation(line: 724, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !74, line: 724, column: 7)
!2678 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 724, column: 7)
!2679 = !DILocation(line: 724, column: 7, scope: !2678)
!2680 = !DILocation(line: 726, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2231, file: !74, line: 726, column: 11)
!2682 = !DILocation(line: 726, column: 11, scope: !2231)
!2683 = !DILocation(line: 728, column: 5, scope: !2232)
!2684 = !DILocation(line: 400, column: 75, scope: !2232)
!2685 = !DILocation(line: 400, column: 3, scope: !2232)
!2686 = distinct !{!2686, !2345, !2687, !667}
!2687 = !DILocation(line: 728, column: 5, scope: !2233)
!2688 = !DILocation(line: 730, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 730, column: 7)
!2690 = !DILocation(line: 730, column: 16, scope: !2689)
!2691 = !DILocation(line: 738, column: 51, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 738, column: 7)
!2693 = !DILocation(line: 741, column: 11, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !74, line: 741, column: 11)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !74, line: 740, column: 5)
!2696 = !DILocation(line: 741, column: 11, scope: !2695)
!2697 = !DILocation(line: 742, column: 16, scope: !2694)
!2698 = !DILocation(line: 742, column: 9, scope: !2694)
!2699 = !DILocation(line: 746, column: 18, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2694, file: !74, line: 746, column: 16)
!2701 = !DILocation(line: 746, column: 29, scope: !2700)
!2702 = !DILocation(line: 755, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 755, column: 7)
!2704 = !DILocation(line: 755, column: 20, scope: !2703)
!2705 = !DILocation(line: 756, column: 12, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !74, line: 756, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !74, line: 756, column: 5)
!2708 = !DILocation(line: 756, column: 5, scope: !2707)
!2709 = !DILocation(line: 757, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !74, line: 757, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !74, line: 757, column: 7)
!2712 = !DILocation(line: 757, column: 7, scope: !2711)
!2713 = !DILocation(line: 756, column: 39, scope: !2706)
!2714 = distinct !{!2714, !2708, !2715, !667}
!2715 = !DILocation(line: 757, column: 7, scope: !2707)
!2716 = !DILocation(line: 759, column: 11, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 759, column: 7)
!2718 = !DILocation(line: 759, column: 7, scope: !2204)
!2719 = !DILocation(line: 760, column: 5, scope: !2717)
!2720 = !DILocation(line: 760, column: 17, scope: !2717)
!2721 = !DILocation(line: 763, column: 2, scope: !2204)
!2722 = !DILocation(line: 766, column: 51, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2204, file: !74, line: 766, column: 7)
!2724 = !DILocation(line: 766, column: 21, scope: !2723)
!2725 = !DILocation(line: 770, column: 42, scope: !2204)
!2726 = !DILocation(line: 768, column: 10, scope: !2204)
!2727 = !DILocation(line: 768, column: 3, scope: !2204)
!2728 = !DILocation(line: 772, column: 1, scope: !2204)
!2729 = distinct !DISubprogram(name: "gettext_quote", scope: !74, file: !74, line: 207, type: !2730, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!49, !49, !76}
!2732 = !{!2733, !2734, !2735, !2736}
!2733 = !DILocalVariable(name: "msgid", arg: 1, scope: !2729, file: !74, line: 207, type: !49)
!2734 = !DILocalVariable(name: "s", arg: 2, scope: !2729, file: !74, line: 207, type: !76)
!2735 = !DILocalVariable(name: "translation", scope: !2729, file: !74, line: 209, type: !49)
!2736 = !DILocalVariable(name: "locale_code", scope: !2729, file: !74, line: 210, type: !49)
!2737 = !DILocation(line: 0, scope: !2729)
!2738 = !DILocation(line: 209, column: 29, scope: !2729)
!2739 = !DILocation(line: 212, column: 19, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2729, file: !74, line: 212, column: 7)
!2741 = !DILocation(line: 212, column: 7, scope: !2729)
!2742 = !DILocation(line: 233, column: 17, scope: !2729)
!2743 = !DILocalVariable(name: "s1", arg: 1, scope: !2744, file: !2745, line: 160, type: !49)
!2744 = distinct !DISubprogram(name: "strcaseeq0", scope: !2745, file: !2745, line: 160, type: !2746, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2748)
!2745 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33, !33, !33}
!2748 = !{!2743, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2749 = !DILocalVariable(name: "s2", arg: 2, scope: !2744, file: !2745, line: 160, type: !49)
!2750 = !DILocalVariable(name: "s20", arg: 3, scope: !2744, file: !2745, line: 160, type: !33)
!2751 = !DILocalVariable(name: "s21", arg: 4, scope: !2744, file: !2745, line: 160, type: !33)
!2752 = !DILocalVariable(name: "s22", arg: 5, scope: !2744, file: !2745, line: 160, type: !33)
!2753 = !DILocalVariable(name: "s23", arg: 6, scope: !2744, file: !2745, line: 160, type: !33)
!2754 = !DILocalVariable(name: "s24", arg: 7, scope: !2744, file: !2745, line: 160, type: !33)
!2755 = !DILocalVariable(name: "s25", arg: 8, scope: !2744, file: !2745, line: 160, type: !33)
!2756 = !DILocalVariable(name: "s26", arg: 9, scope: !2744, file: !2745, line: 160, type: !33)
!2757 = !DILocalVariable(name: "s27", arg: 10, scope: !2744, file: !2745, line: 160, type: !33)
!2758 = !DILocalVariable(name: "s28", arg: 11, scope: !2744, file: !2745, line: 160, type: !33)
!2759 = !DILocation(line: 0, scope: !2744, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 234, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2729, file: !74, line: 234, column: 7)
!2762 = !DILocation(line: 162, column: 7, scope: !2763, inlinedAt: !2760)
!2763 = distinct !DILexicalBlock(scope: !2744, file: !2745, line: 162, column: 7)
!2764 = !DILocalVariable(name: "s1", arg: 1, scope: !2765, file: !2745, line: 146, type: !49)
!2765 = distinct !DISubprogram(name: "strcaseeq1", scope: !2745, file: !2745, line: 146, type: !2766, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33, !33}
!2768 = !{!2764, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2769 = !DILocalVariable(name: "s2", arg: 2, scope: !2765, file: !2745, line: 146, type: !49)
!2770 = !DILocalVariable(name: "s21", arg: 3, scope: !2765, file: !2745, line: 146, type: !33)
!2771 = !DILocalVariable(name: "s22", arg: 4, scope: !2765, file: !2745, line: 146, type: !33)
!2772 = !DILocalVariable(name: "s23", arg: 5, scope: !2765, file: !2745, line: 146, type: !33)
!2773 = !DILocalVariable(name: "s24", arg: 6, scope: !2765, file: !2745, line: 146, type: !33)
!2774 = !DILocalVariable(name: "s25", arg: 7, scope: !2765, file: !2745, line: 146, type: !33)
!2775 = !DILocalVariable(name: "s26", arg: 8, scope: !2765, file: !2745, line: 146, type: !33)
!2776 = !DILocalVariable(name: "s27", arg: 9, scope: !2765, file: !2745, line: 146, type: !33)
!2777 = !DILocalVariable(name: "s28", arg: 10, scope: !2765, file: !2745, line: 146, type: !33)
!2778 = !DILocation(line: 0, scope: !2765, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 167, column: 16, scope: !2780, inlinedAt: !2760)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !2745, line: 164, column: 11)
!2781 = distinct !DILexicalBlock(scope: !2763, file: !2745, line: 163, column: 5)
!2782 = !DILocation(line: 148, column: 7, scope: !2783, inlinedAt: !2779)
!2783 = distinct !DILexicalBlock(scope: !2765, file: !2745, line: 148, column: 7)
!2784 = !DILocalVariable(name: "s1", arg: 1, scope: !2785, file: !2745, line: 132, type: !49)
!2785 = distinct !DISubprogram(name: "strcaseeq2", scope: !2745, file: !2745, line: 132, type: !2786, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33, !33}
!2788 = !{!2784, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2789 = !DILocalVariable(name: "s2", arg: 2, scope: !2785, file: !2745, line: 132, type: !49)
!2790 = !DILocalVariable(name: "s22", arg: 3, scope: !2785, file: !2745, line: 132, type: !33)
!2791 = !DILocalVariable(name: "s23", arg: 4, scope: !2785, file: !2745, line: 132, type: !33)
!2792 = !DILocalVariable(name: "s24", arg: 5, scope: !2785, file: !2745, line: 132, type: !33)
!2793 = !DILocalVariable(name: "s25", arg: 6, scope: !2785, file: !2745, line: 132, type: !33)
!2794 = !DILocalVariable(name: "s26", arg: 7, scope: !2785, file: !2745, line: 132, type: !33)
!2795 = !DILocalVariable(name: "s27", arg: 8, scope: !2785, file: !2745, line: 132, type: !33)
!2796 = !DILocalVariable(name: "s28", arg: 9, scope: !2785, file: !2745, line: 132, type: !33)
!2797 = !DILocation(line: 0, scope: !2785, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 153, column: 16, scope: !2799, inlinedAt: !2779)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !2745, line: 150, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2783, file: !2745, line: 149, column: 5)
!2801 = !DILocation(line: 134, column: 7, scope: !2802, inlinedAt: !2798)
!2802 = distinct !DILexicalBlock(scope: !2785, file: !2745, line: 134, column: 7)
!2803 = !DILocalVariable(name: "s1", arg: 1, scope: !2804, file: !2745, line: 118, type: !49)
!2804 = distinct !DISubprogram(name: "strcaseeq3", scope: !2745, file: !2745, line: 118, type: !2805, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!35, !49, !49, !33, !33, !33, !33, !33, !33}
!2807 = !{!2803, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!2808 = !DILocalVariable(name: "s2", arg: 2, scope: !2804, file: !2745, line: 118, type: !49)
!2809 = !DILocalVariable(name: "s23", arg: 3, scope: !2804, file: !2745, line: 118, type: !33)
!2810 = !DILocalVariable(name: "s24", arg: 4, scope: !2804, file: !2745, line: 118, type: !33)
!2811 = !DILocalVariable(name: "s25", arg: 5, scope: !2804, file: !2745, line: 118, type: !33)
!2812 = !DILocalVariable(name: "s26", arg: 6, scope: !2804, file: !2745, line: 118, type: !33)
!2813 = !DILocalVariable(name: "s27", arg: 7, scope: !2804, file: !2745, line: 118, type: !33)
!2814 = !DILocalVariable(name: "s28", arg: 8, scope: !2804, file: !2745, line: 118, type: !33)
!2815 = !DILocation(line: 0, scope: !2804, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 139, column: 16, scope: !2817, inlinedAt: !2798)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !2745, line: 136, column: 11)
!2818 = distinct !DILexicalBlock(scope: !2802, file: !2745, line: 135, column: 5)
!2819 = !DILocation(line: 120, column: 7, scope: !2820, inlinedAt: !2816)
!2820 = distinct !DILexicalBlock(scope: !2804, file: !2745, line: 120, column: 7)
!2821 = !DILocation(line: 120, column: 7, scope: !2804, inlinedAt: !2816)
!2822 = !DILocalVariable(name: "s1", arg: 1, scope: !2823, file: !2745, line: 104, type: !49)
!2823 = distinct !DISubprogram(name: "strcaseeq4", scope: !2745, file: !2745, line: 104, type: !2824, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!35, !49, !49, !33, !33, !33, !33, !33}
!2826 = !{!2822, !2827, !2828, !2829, !2830, !2831, !2832}
!2827 = !DILocalVariable(name: "s2", arg: 2, scope: !2823, file: !2745, line: 104, type: !49)
!2828 = !DILocalVariable(name: "s24", arg: 3, scope: !2823, file: !2745, line: 104, type: !33)
!2829 = !DILocalVariable(name: "s25", arg: 4, scope: !2823, file: !2745, line: 104, type: !33)
!2830 = !DILocalVariable(name: "s26", arg: 5, scope: !2823, file: !2745, line: 104, type: !33)
!2831 = !DILocalVariable(name: "s27", arg: 6, scope: !2823, file: !2745, line: 104, type: !33)
!2832 = !DILocalVariable(name: "s28", arg: 7, scope: !2823, file: !2745, line: 104, type: !33)
!2833 = !DILocation(line: 0, scope: !2823, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 125, column: 16, scope: !2835, inlinedAt: !2816)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !2745, line: 122, column: 11)
!2836 = distinct !DILexicalBlock(scope: !2820, file: !2745, line: 121, column: 5)
!2837 = !DILocation(line: 106, column: 7, scope: !2838, inlinedAt: !2834)
!2838 = distinct !DILexicalBlock(scope: !2823, file: !2745, line: 106, column: 7)
!2839 = !DILocation(line: 106, column: 7, scope: !2823, inlinedAt: !2834)
!2840 = !DILocalVariable(name: "s1", arg: 1, scope: !2841, file: !2745, line: 90, type: !49)
!2841 = distinct !DISubprogram(name: "strcaseeq5", scope: !2745, file: !2745, line: 90, type: !2842, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!35, !49, !49, !33, !33, !33, !33}
!2844 = !{!2840, !2845, !2846, !2847, !2848, !2849}
!2845 = !DILocalVariable(name: "s2", arg: 2, scope: !2841, file: !2745, line: 90, type: !49)
!2846 = !DILocalVariable(name: "s25", arg: 3, scope: !2841, file: !2745, line: 90, type: !33)
!2847 = !DILocalVariable(name: "s26", arg: 4, scope: !2841, file: !2745, line: 90, type: !33)
!2848 = !DILocalVariable(name: "s27", arg: 5, scope: !2841, file: !2745, line: 90, type: !33)
!2849 = !DILocalVariable(name: "s28", arg: 6, scope: !2841, file: !2745, line: 90, type: !33)
!2850 = !DILocation(line: 0, scope: !2841, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 111, column: 16, scope: !2852, inlinedAt: !2834)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !2745, line: 108, column: 11)
!2853 = distinct !DILexicalBlock(scope: !2838, file: !2745, line: 107, column: 5)
!2854 = !DILocation(line: 92, column: 7, scope: !2855, inlinedAt: !2851)
!2855 = distinct !DILexicalBlock(scope: !2841, file: !2745, line: 92, column: 7)
!2856 = !DILocation(line: 92, column: 7, scope: !2841, inlinedAt: !2851)
!2857 = !DILocation(line: 235, column: 12, scope: !2761)
!2858 = !DILocation(line: 235, column: 21, scope: !2761)
!2859 = !DILocation(line: 235, column: 5, scope: !2761)
!2860 = !DILocation(line: 0, scope: !2765, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 167, column: 16, scope: !2780, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 236, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2729, file: !74, line: 236, column: 7)
!2864 = !DILocation(line: 148, column: 7, scope: !2783, inlinedAt: !2861)
!2865 = !DILocation(line: 0, scope: !2785, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 153, column: 16, scope: !2799, inlinedAt: !2861)
!2867 = !DILocation(line: 134, column: 7, scope: !2802, inlinedAt: !2866)
!2868 = !DILocation(line: 134, column: 7, scope: !2785, inlinedAt: !2866)
!2869 = !DILocation(line: 0, scope: !2804, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 139, column: 16, scope: !2817, inlinedAt: !2866)
!2871 = !DILocation(line: 120, column: 7, scope: !2820, inlinedAt: !2870)
!2872 = !DILocation(line: 120, column: 7, scope: !2804, inlinedAt: !2870)
!2873 = !DILocation(line: 0, scope: !2823, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 125, column: 16, scope: !2835, inlinedAt: !2870)
!2875 = !DILocation(line: 106, column: 7, scope: !2838, inlinedAt: !2874)
!2876 = !DILocation(line: 106, column: 7, scope: !2823, inlinedAt: !2874)
!2877 = !DILocation(line: 0, scope: !2841, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 111, column: 16, scope: !2852, inlinedAt: !2874)
!2879 = !DILocation(line: 92, column: 7, scope: !2855, inlinedAt: !2878)
!2880 = !DILocation(line: 92, column: 7, scope: !2841, inlinedAt: !2878)
!2881 = !DILocalVariable(name: "s1", arg: 1, scope: !2882, file: !2745, line: 76, type: !49)
!2882 = distinct !DISubprogram(name: "strcaseeq6", scope: !2745, file: !2745, line: 76, type: !2883, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!35, !49, !49, !33, !33, !33}
!2885 = !{!2881, !2886, !2887, !2888, !2889}
!2886 = !DILocalVariable(name: "s2", arg: 2, scope: !2882, file: !2745, line: 76, type: !49)
!2887 = !DILocalVariable(name: "s26", arg: 3, scope: !2882, file: !2745, line: 76, type: !33)
!2888 = !DILocalVariable(name: "s27", arg: 4, scope: !2882, file: !2745, line: 76, type: !33)
!2889 = !DILocalVariable(name: "s28", arg: 5, scope: !2882, file: !2745, line: 76, type: !33)
!2890 = !DILocation(line: 0, scope: !2882, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 97, column: 16, scope: !2892, inlinedAt: !2878)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !2745, line: 94, column: 11)
!2893 = distinct !DILexicalBlock(scope: !2855, file: !2745, line: 93, column: 5)
!2894 = !DILocation(line: 78, column: 7, scope: !2895, inlinedAt: !2891)
!2895 = distinct !DILexicalBlock(scope: !2882, file: !2745, line: 78, column: 7)
!2896 = !DILocation(line: 78, column: 7, scope: !2882, inlinedAt: !2891)
!2897 = !DILocalVariable(name: "s1", arg: 1, scope: !2898, file: !2745, line: 62, type: !49)
!2898 = distinct !DISubprogram(name: "strcaseeq7", scope: !2745, file: !2745, line: 62, type: !2899, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!35, !49, !49, !33, !33}
!2901 = !{!2897, !2902, !2903, !2904}
!2902 = !DILocalVariable(name: "s2", arg: 2, scope: !2898, file: !2745, line: 62, type: !49)
!2903 = !DILocalVariable(name: "s27", arg: 3, scope: !2898, file: !2745, line: 62, type: !33)
!2904 = !DILocalVariable(name: "s28", arg: 4, scope: !2898, file: !2745, line: 62, type: !33)
!2905 = !DILocation(line: 0, scope: !2898, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 83, column: 16, scope: !2907, inlinedAt: !2891)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !2745, line: 80, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2895, file: !2745, line: 79, column: 5)
!2909 = !DILocation(line: 64, column: 7, scope: !2910, inlinedAt: !2906)
!2910 = distinct !DILexicalBlock(scope: !2898, file: !2745, line: 64, column: 7)
!2911 = !DILocation(line: 236, column: 7, scope: !2729)
!2912 = !DILocation(line: 237, column: 12, scope: !2863)
!2913 = !DILocation(line: 237, column: 21, scope: !2863)
!2914 = !DILocation(line: 237, column: 5, scope: !2863)
!2915 = !DILocation(line: 239, column: 13, scope: !2729)
!2916 = !DILocation(line: 239, column: 11, scope: !2729)
!2917 = !DILocation(line: 239, column: 3, scope: !2729)
!2918 = !DILocation(line: 240, column: 1, scope: !2729)
!2919 = !DISubprogram(name: "iswprint", scope: !2920, file: !2920, line: 120, type: !2921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!2920 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!35, !7}
!2923 = !DISubprogram(name: "mbsinit", scope: !2924, file: !2924, line: 292, type: !2925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!2924 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!35, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2929 = distinct !DISubprogram(name: "quotearg_alloc", scope: !74, file: !74, line: 799, type: !2930, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!32, !49, !96, !2095}
!2932 = !{!2933, !2934, !2935}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !74, line: 799, type: !49)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2929, file: !74, line: 799, type: !96)
!2935 = !DILocalVariable(name: "o", arg: 3, scope: !2929, file: !74, line: 800, type: !2095)
!2936 = !DILocation(line: 0, scope: !2929)
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !74, line: 812, type: !49)
!2938 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !74, file: !74, line: 812, type: !2939, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!32, !49, !96, !175, !2095}
!2941 = !{!2937, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2938, file: !74, line: 812, type: !96)
!2943 = !DILocalVariable(name: "size", arg: 3, scope: !2938, file: !74, line: 812, type: !175)
!2944 = !DILocalVariable(name: "o", arg: 4, scope: !2938, file: !74, line: 813, type: !2095)
!2945 = !DILocalVariable(name: "p", scope: !2938, file: !74, line: 815, type: !2095)
!2946 = !DILocalVariable(name: "e", scope: !2938, file: !74, line: 816, type: !35)
!2947 = !DILocalVariable(name: "flags", scope: !2938, file: !74, line: 818, type: !35)
!2948 = !DILocalVariable(name: "bufsize", scope: !2938, file: !74, line: 819, type: !96)
!2949 = !DILocalVariable(name: "buf", scope: !2938, file: !74, line: 823, type: !32)
!2950 = !DILocation(line: 0, scope: !2938, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 802, column: 10, scope: !2929)
!2952 = !DILocation(line: 815, column: 37, scope: !2938, inlinedAt: !2951)
!2953 = !DILocation(line: 816, column: 11, scope: !2938, inlinedAt: !2951)
!2954 = !DILocation(line: 818, column: 18, scope: !2938, inlinedAt: !2951)
!2955 = !DILocation(line: 818, column: 24, scope: !2938, inlinedAt: !2951)
!2956 = !DILocation(line: 819, column: 69, scope: !2938, inlinedAt: !2951)
!2957 = !DILocation(line: 820, column: 53, scope: !2938, inlinedAt: !2951)
!2958 = !DILocation(line: 821, column: 49, scope: !2938, inlinedAt: !2951)
!2959 = !DILocation(line: 822, column: 49, scope: !2938, inlinedAt: !2951)
!2960 = !DILocation(line: 819, column: 20, scope: !2938, inlinedAt: !2951)
!2961 = !DILocation(line: 822, column: 62, scope: !2938, inlinedAt: !2951)
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !171, line: 216, type: !96)
!2963 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2964, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!32, !96}
!2966 = !{!2962}
!2967 = !DILocation(line: 0, scope: !2963, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 823, column: 15, scope: !2938, inlinedAt: !2951)
!2969 = !DILocation(line: 218, column: 10, scope: !2963, inlinedAt: !2968)
!2970 = !DILocation(line: 824, column: 60, scope: !2938, inlinedAt: !2951)
!2971 = !DILocation(line: 826, column: 32, scope: !2938, inlinedAt: !2951)
!2972 = !DILocation(line: 826, column: 47, scope: !2938, inlinedAt: !2951)
!2973 = !DILocation(line: 824, column: 3, scope: !2938, inlinedAt: !2951)
!2974 = !DILocation(line: 827, column: 9, scope: !2938, inlinedAt: !2951)
!2975 = !DILocation(line: 802, column: 3, scope: !2929)
!2976 = !DILocation(line: 0, scope: !2938)
!2977 = !DILocation(line: 815, column: 37, scope: !2938)
!2978 = !DILocation(line: 816, column: 11, scope: !2938)
!2979 = !DILocation(line: 818, column: 18, scope: !2938)
!2980 = !DILocation(line: 818, column: 27, scope: !2938)
!2981 = !DILocation(line: 818, column: 24, scope: !2938)
!2982 = !DILocation(line: 819, column: 69, scope: !2938)
!2983 = !DILocation(line: 820, column: 53, scope: !2938)
!2984 = !DILocation(line: 821, column: 49, scope: !2938)
!2985 = !DILocation(line: 822, column: 49, scope: !2938)
!2986 = !DILocation(line: 819, column: 20, scope: !2938)
!2987 = !DILocation(line: 822, column: 62, scope: !2938)
!2988 = !DILocation(line: 0, scope: !2963, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 823, column: 15, scope: !2938)
!2990 = !DILocation(line: 218, column: 10, scope: !2963, inlinedAt: !2989)
!2991 = !DILocation(line: 824, column: 60, scope: !2938)
!2992 = !DILocation(line: 826, column: 32, scope: !2938)
!2993 = !DILocation(line: 826, column: 47, scope: !2938)
!2994 = !DILocation(line: 824, column: 3, scope: !2938)
!2995 = !DILocation(line: 827, column: 9, scope: !2938)
!2996 = !DILocation(line: 828, column: 7, scope: !2938)
!2997 = !DILocation(line: 829, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2938, file: !74, line: 828, column: 7)
!2999 = !DILocation(line: 829, column: 5, scope: !2998)
!3000 = !DILocation(line: 830, column: 3, scope: !2938)
!3001 = distinct !DISubprogram(name: "quotearg_free", scope: !74, file: !74, line: 848, type: !830, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3002)
!3002 = !{!3003, !3004}
!3003 = !DILocalVariable(name: "sv", scope: !3001, file: !74, line: 850, type: !127)
!3004 = !DILocalVariable(name: "i", scope: !3001, file: !74, line: 851, type: !35)
!3005 = !DILocation(line: 850, column: 24, scope: !3001)
!3006 = !DILocation(line: 0, scope: !3001)
!3007 = !DILocation(line: 852, column: 19, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !74, line: 852, column: 3)
!3009 = distinct !DILexicalBlock(scope: !3001, file: !74, line: 852, column: 3)
!3010 = !DILocation(line: 852, column: 17, scope: !3008)
!3011 = !DILocation(line: 852, column: 3, scope: !3009)
!3012 = !DILocation(line: 853, column: 17, scope: !3008)
!3013 = !{!3014, !613, i64 8}
!3014 = !{!"slotvec", !1143, i64 0, !613, i64 8}
!3015 = !DILocation(line: 853, column: 5, scope: !3008)
!3016 = !DILocation(line: 852, column: 28, scope: !3008)
!3017 = distinct !{!3017, !3011, !3018, !667}
!3018 = !DILocation(line: 853, column: 20, scope: !3009)
!3019 = !DILocation(line: 854, column: 13, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3001, file: !74, line: 854, column: 7)
!3021 = !DILocation(line: 854, column: 17, scope: !3020)
!3022 = !DILocation(line: 854, column: 7, scope: !3001)
!3023 = !DILocation(line: 856, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !74, line: 855, column: 5)
!3025 = !DILocation(line: 857, column: 21, scope: !3024)
!3026 = !{!3014, !1143, i64 0}
!3027 = !DILocation(line: 858, column: 20, scope: !3024)
!3028 = !DILocation(line: 859, column: 5, scope: !3024)
!3029 = !DILocation(line: 860, column: 10, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3001, file: !74, line: 860, column: 7)
!3031 = !DILocation(line: 860, column: 7, scope: !3001)
!3032 = !DILocation(line: 862, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !74, line: 861, column: 5)
!3034 = !DILocation(line: 862, column: 7, scope: !3033)
!3035 = !DILocation(line: 863, column: 15, scope: !3033)
!3036 = !DILocation(line: 864, column: 5, scope: !3033)
!3037 = !DILocation(line: 865, column: 10, scope: !3001)
!3038 = !DILocation(line: 866, column: 1, scope: !3001)
!3039 = distinct !DISubprogram(name: "quotearg_n", scope: !74, file: !74, line: 931, type: !748, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3040)
!3040 = !{!3041, !3042}
!3041 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !74, line: 931, type: !35)
!3042 = !DILocalVariable(name: "arg", arg: 2, scope: !3039, file: !74, line: 931, type: !49)
!3043 = !DILocation(line: 0, scope: !3039)
!3044 = !DILocation(line: 933, column: 10, scope: !3039)
!3045 = !DILocation(line: 933, column: 3, scope: !3039)
!3046 = distinct !DISubprogram(name: "quotearg_n_options", scope: !74, file: !74, line: 877, type: !3047, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!32, !35, !49, !96, !2095}
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056, !3059, !3060, !3062, !3063, !3064}
!3050 = !DILocalVariable(name: "n", arg: 1, scope: !3046, file: !74, line: 877, type: !35)
!3051 = !DILocalVariable(name: "arg", arg: 2, scope: !3046, file: !74, line: 877, type: !49)
!3052 = !DILocalVariable(name: "argsize", arg: 3, scope: !3046, file: !74, line: 877, type: !96)
!3053 = !DILocalVariable(name: "options", arg: 4, scope: !3046, file: !74, line: 878, type: !2095)
!3054 = !DILocalVariable(name: "e", scope: !3046, file: !74, line: 880, type: !35)
!3055 = !DILocalVariable(name: "sv", scope: !3046, file: !74, line: 882, type: !127)
!3056 = !DILocalVariable(name: "preallocated", scope: !3057, file: !74, line: 889, type: !58)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !74, line: 888, column: 5)
!3058 = distinct !DILexicalBlock(scope: !3046, file: !74, line: 887, column: 7)
!3059 = !DILocalVariable(name: "nmax", scope: !3057, file: !74, line: 890, type: !35)
!3060 = !DILocalVariable(name: "size", scope: !3061, file: !74, line: 903, type: !96)
!3061 = distinct !DILexicalBlock(scope: !3046, file: !74, line: 902, column: 3)
!3062 = !DILocalVariable(name: "val", scope: !3061, file: !74, line: 904, type: !32)
!3063 = !DILocalVariable(name: "flags", scope: !3061, file: !74, line: 906, type: !35)
!3064 = !DILocalVariable(name: "qsize", scope: !3061, file: !74, line: 907, type: !96)
!3065 = !DILocation(line: 0, scope: !3046)
!3066 = !DILocation(line: 880, column: 11, scope: !3046)
!3067 = !DILocation(line: 882, column: 24, scope: !3046)
!3068 = !DILocation(line: 884, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3046, file: !74, line: 884, column: 7)
!3070 = !DILocation(line: 884, column: 7, scope: !3046)
!3071 = !DILocation(line: 885, column: 5, scope: !3069)
!3072 = !DILocation(line: 887, column: 7, scope: !3058)
!3073 = !DILocation(line: 887, column: 14, scope: !3058)
!3074 = !DILocation(line: 887, column: 7, scope: !3046)
!3075 = !DILocation(line: 889, column: 31, scope: !3057)
!3076 = !DILocation(line: 0, scope: !3057)
!3077 = !DILocation(line: 892, column: 16, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3057, file: !74, line: 892, column: 11)
!3079 = !DILocation(line: 892, column: 11, scope: !3057)
!3080 = !DILocation(line: 893, column: 9, scope: !3078)
!3081 = !DILocation(line: 895, column: 32, scope: !3057)
!3082 = !DILocation(line: 895, column: 61, scope: !3057)
!3083 = !DILocation(line: 895, column: 66, scope: !3057)
!3084 = !DILocation(line: 895, column: 22, scope: !3057)
!3085 = !DILocation(line: 895, column: 15, scope: !3057)
!3086 = !DILocation(line: 896, column: 11, scope: !3057)
!3087 = !DILocation(line: 897, column: 15, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3057, file: !74, line: 896, column: 11)
!3089 = !{i64 0, i64 8, !1142, i64 8, i64 8, !612}
!3090 = !DILocation(line: 897, column: 9, scope: !3088)
!3091 = !DILocation(line: 898, column: 20, scope: !3057)
!3092 = !DILocation(line: 898, column: 18, scope: !3057)
!3093 = !DILocation(line: 898, column: 15, scope: !3057)
!3094 = !DILocation(line: 898, column: 38, scope: !3057)
!3095 = !DILocation(line: 898, column: 31, scope: !3057)
!3096 = !DILocation(line: 898, column: 48, scope: !3057)
!3097 = !DILocation(line: 0, scope: !2490, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 898, column: 7, scope: !3057)
!3099 = !DILocation(line: 59, column: 10, scope: !2490, inlinedAt: !3098)
!3100 = !DILocation(line: 899, column: 14, scope: !3057)
!3101 = !DILocation(line: 900, column: 5, scope: !3057)
!3102 = !DILocation(line: 903, column: 19, scope: !3061)
!3103 = !DILocation(line: 903, column: 25, scope: !3061)
!3104 = !DILocation(line: 0, scope: !3061)
!3105 = !DILocation(line: 904, column: 23, scope: !3061)
!3106 = !DILocation(line: 906, column: 26, scope: !3061)
!3107 = !DILocation(line: 906, column: 32, scope: !3061)
!3108 = !DILocation(line: 908, column: 55, scope: !3061)
!3109 = !DILocation(line: 909, column: 46, scope: !3061)
!3110 = !DILocation(line: 910, column: 55, scope: !3061)
!3111 = !DILocation(line: 911, column: 55, scope: !3061)
!3112 = !DILocation(line: 907, column: 20, scope: !3061)
!3113 = !DILocation(line: 913, column: 14, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3061, file: !74, line: 913, column: 9)
!3115 = !DILocation(line: 913, column: 9, scope: !3061)
!3116 = !DILocation(line: 915, column: 35, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !74, line: 914, column: 7)
!3118 = !DILocation(line: 915, column: 20, scope: !3117)
!3119 = !DILocation(line: 916, column: 17, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !74, line: 916, column: 13)
!3121 = !DILocation(line: 916, column: 13, scope: !3117)
!3122 = !DILocation(line: 917, column: 11, scope: !3120)
!3123 = !DILocation(line: 0, scope: !2963, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 918, column: 27, scope: !3117)
!3125 = !DILocation(line: 218, column: 10, scope: !2963, inlinedAt: !3124)
!3126 = !DILocation(line: 918, column: 19, scope: !3117)
!3127 = !DILocation(line: 919, column: 69, scope: !3117)
!3128 = !DILocation(line: 921, column: 44, scope: !3117)
!3129 = !DILocation(line: 922, column: 44, scope: !3117)
!3130 = !DILocation(line: 919, column: 9, scope: !3117)
!3131 = !DILocation(line: 923, column: 7, scope: !3117)
!3132 = !DILocation(line: 925, column: 11, scope: !3061)
!3133 = !DILocation(line: 926, column: 5, scope: !3061)
!3134 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !74, file: !74, line: 937, type: !3135, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!32, !35, !49, !96}
!3137 = !{!3138, !3139, !3140}
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !74, line: 937, type: !35)
!3139 = !DILocalVariable(name: "arg", arg: 2, scope: !3134, file: !74, line: 937, type: !49)
!3140 = !DILocalVariable(name: "argsize", arg: 3, scope: !3134, file: !74, line: 937, type: !96)
!3141 = !DILocation(line: 0, scope: !3134)
!3142 = !DILocation(line: 939, column: 10, scope: !3134)
!3143 = !DILocation(line: 939, column: 3, scope: !3134)
!3144 = distinct !DISubprogram(name: "quotearg", scope: !74, file: !74, line: 943, type: !823, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3145)
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !74, line: 943, type: !49)
!3147 = !DILocation(line: 0, scope: !3144)
!3148 = !DILocation(line: 0, scope: !3039, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 945, column: 10, scope: !3144)
!3150 = !DILocation(line: 933, column: 10, scope: !3039, inlinedAt: !3149)
!3151 = !DILocation(line: 945, column: 3, scope: !3144)
!3152 = distinct !DISubprogram(name: "quotearg_mem", scope: !74, file: !74, line: 949, type: !3153, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!32, !49, !96}
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "arg", arg: 1, scope: !3152, file: !74, line: 949, type: !49)
!3157 = !DILocalVariable(name: "argsize", arg: 2, scope: !3152, file: !74, line: 949, type: !96)
!3158 = !DILocation(line: 0, scope: !3152)
!3159 = !DILocation(line: 0, scope: !3134, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 951, column: 10, scope: !3152)
!3161 = !DILocation(line: 939, column: 10, scope: !3134, inlinedAt: !3160)
!3162 = !DILocation(line: 951, column: 3, scope: !3152)
!3163 = distinct !DISubprogram(name: "quotearg_n_style", scope: !74, file: !74, line: 955, type: !3164, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!32, !35, !76, !49}
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !74, line: 955, type: !35)
!3168 = !DILocalVariable(name: "s", arg: 2, scope: !3163, file: !74, line: 955, type: !76)
!3169 = !DILocalVariable(name: "arg", arg: 3, scope: !3163, file: !74, line: 955, type: !49)
!3170 = !DILocalVariable(name: "o", scope: !3163, file: !74, line: 957, type: !2096)
!3171 = !DILocation(line: 0, scope: !3163)
!3172 = !DILocation(line: 957, column: 3, scope: !3163)
!3173 = !DILocation(line: 957, column: 32, scope: !3163)
!3174 = !{!3175}
!3175 = distinct !{!3175, !3176, !"quoting_options_from_style: argument 0"}
!3176 = distinct !{!3176, !"quoting_options_from_style"}
!3177 = !DILocation(line: 957, column: 36, scope: !3163)
!3178 = !DILocalVariable(name: "style", arg: 1, scope: !3179, file: !74, line: 193, type: !76)
!3179 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !74, file: !74, line: 193, type: !3180, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!108, !76}
!3182 = !{!3178, !3183}
!3183 = !DILocalVariable(name: "o", scope: !3179, file: !74, line: 195, type: !108)
!3184 = !DILocation(line: 0, scope: !3179, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 957, column: 36, scope: !3163)
!3186 = !DILocation(line: 195, column: 26, scope: !3179, inlinedAt: !3185)
!3187 = !DILocation(line: 196, column: 13, scope: !3188, inlinedAt: !3185)
!3188 = distinct !DILexicalBlock(scope: !3179, file: !74, line: 196, column: 7)
!3189 = !DILocation(line: 196, column: 7, scope: !3179, inlinedAt: !3185)
!3190 = !DILocation(line: 197, column: 5, scope: !3188, inlinedAt: !3185)
!3191 = !DILocation(line: 198, column: 5, scope: !3179, inlinedAt: !3185)
!3192 = !DILocation(line: 198, column: 11, scope: !3179, inlinedAt: !3185)
!3193 = !DILocation(line: 958, column: 10, scope: !3163)
!3194 = !DILocation(line: 959, column: 1, scope: !3163)
!3195 = !DILocation(line: 958, column: 3, scope: !3163)
!3196 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !74, file: !74, line: 962, type: !3197, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!32, !35, !76, !49, !96}
!3199 = !{!3200, !3201, !3202, !3203, !3204}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3196, file: !74, line: 962, type: !35)
!3201 = !DILocalVariable(name: "s", arg: 2, scope: !3196, file: !74, line: 962, type: !76)
!3202 = !DILocalVariable(name: "arg", arg: 3, scope: !3196, file: !74, line: 963, type: !49)
!3203 = !DILocalVariable(name: "argsize", arg: 4, scope: !3196, file: !74, line: 963, type: !96)
!3204 = !DILocalVariable(name: "o", scope: !3196, file: !74, line: 965, type: !2096)
!3205 = !DILocation(line: 0, scope: !3196)
!3206 = !DILocation(line: 965, column: 3, scope: !3196)
!3207 = !DILocation(line: 965, column: 32, scope: !3196)
!3208 = !{!3209}
!3209 = distinct !{!3209, !3210, !"quoting_options_from_style: argument 0"}
!3210 = distinct !{!3210, !"quoting_options_from_style"}
!3211 = !DILocation(line: 965, column: 36, scope: !3196)
!3212 = !DILocation(line: 0, scope: !3179, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 965, column: 36, scope: !3196)
!3214 = !DILocation(line: 195, column: 26, scope: !3179, inlinedAt: !3213)
!3215 = !DILocation(line: 196, column: 13, scope: !3188, inlinedAt: !3213)
!3216 = !DILocation(line: 196, column: 7, scope: !3179, inlinedAt: !3213)
!3217 = !DILocation(line: 197, column: 5, scope: !3188, inlinedAt: !3213)
!3218 = !DILocation(line: 198, column: 5, scope: !3179, inlinedAt: !3213)
!3219 = !DILocation(line: 198, column: 11, scope: !3179, inlinedAt: !3213)
!3220 = !DILocation(line: 966, column: 10, scope: !3196)
!3221 = !DILocation(line: 967, column: 1, scope: !3196)
!3222 = !DILocation(line: 966, column: 3, scope: !3196)
!3223 = distinct !DISubprogram(name: "quotearg_style", scope: !74, file: !74, line: 970, type: !3224, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!32, !76, !49}
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "s", arg: 1, scope: !3223, file: !74, line: 970, type: !76)
!3228 = !DILocalVariable(name: "arg", arg: 2, scope: !3223, file: !74, line: 970, type: !49)
!3229 = !DILocation(line: 0, scope: !3223)
!3230 = !DILocation(line: 0, scope: !3163, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 972, column: 10, scope: !3223)
!3232 = !DILocation(line: 957, column: 3, scope: !3163, inlinedAt: !3231)
!3233 = !DILocation(line: 957, column: 32, scope: !3163, inlinedAt: !3231)
!3234 = !{!3235}
!3235 = distinct !{!3235, !3236, !"quoting_options_from_style: argument 0"}
!3236 = distinct !{!3236, !"quoting_options_from_style"}
!3237 = !DILocation(line: 957, column: 36, scope: !3163, inlinedAt: !3231)
!3238 = !DILocation(line: 0, scope: !3179, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 957, column: 36, scope: !3163, inlinedAt: !3231)
!3240 = !DILocation(line: 195, column: 26, scope: !3179, inlinedAt: !3239)
!3241 = !DILocation(line: 196, column: 13, scope: !3188, inlinedAt: !3239)
!3242 = !DILocation(line: 196, column: 7, scope: !3179, inlinedAt: !3239)
!3243 = !DILocation(line: 197, column: 5, scope: !3188, inlinedAt: !3239)
!3244 = !DILocation(line: 198, column: 5, scope: !3179, inlinedAt: !3239)
!3245 = !DILocation(line: 198, column: 11, scope: !3179, inlinedAt: !3239)
!3246 = !DILocation(line: 958, column: 10, scope: !3163, inlinedAt: !3231)
!3247 = !DILocation(line: 959, column: 1, scope: !3163, inlinedAt: !3231)
!3248 = !DILocation(line: 972, column: 3, scope: !3223)
!3249 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !74, file: !74, line: 976, type: !3250, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!32, !76, !49, !96}
!3252 = !{!3253, !3254, !3255}
!3253 = !DILocalVariable(name: "s", arg: 1, scope: !3249, file: !74, line: 976, type: !76)
!3254 = !DILocalVariable(name: "arg", arg: 2, scope: !3249, file: !74, line: 976, type: !49)
!3255 = !DILocalVariable(name: "argsize", arg: 3, scope: !3249, file: !74, line: 976, type: !96)
!3256 = !DILocation(line: 0, scope: !3249)
!3257 = !DILocation(line: 0, scope: !3196, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 978, column: 10, scope: !3249)
!3259 = !DILocation(line: 965, column: 3, scope: !3196, inlinedAt: !3258)
!3260 = !DILocation(line: 965, column: 32, scope: !3196, inlinedAt: !3258)
!3261 = !{!3262}
!3262 = distinct !{!3262, !3263, !"quoting_options_from_style: argument 0"}
!3263 = distinct !{!3263, !"quoting_options_from_style"}
!3264 = !DILocation(line: 965, column: 36, scope: !3196, inlinedAt: !3258)
!3265 = !DILocation(line: 0, scope: !3179, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 965, column: 36, scope: !3196, inlinedAt: !3258)
!3267 = !DILocation(line: 195, column: 26, scope: !3179, inlinedAt: !3266)
!3268 = !DILocation(line: 196, column: 13, scope: !3188, inlinedAt: !3266)
!3269 = !DILocation(line: 196, column: 7, scope: !3179, inlinedAt: !3266)
!3270 = !DILocation(line: 197, column: 5, scope: !3188, inlinedAt: !3266)
!3271 = !DILocation(line: 198, column: 5, scope: !3179, inlinedAt: !3266)
!3272 = !DILocation(line: 198, column: 11, scope: !3179, inlinedAt: !3266)
!3273 = !DILocation(line: 966, column: 10, scope: !3196, inlinedAt: !3258)
!3274 = !DILocation(line: 967, column: 1, scope: !3196, inlinedAt: !3258)
!3275 = !DILocation(line: 978, column: 3, scope: !3249)
!3276 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !74, file: !74, line: 982, type: !3277, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!32, !49, !96, !33}
!3279 = !{!3280, !3281, !3282, !3283}
!3280 = !DILocalVariable(name: "arg", arg: 1, scope: !3276, file: !74, line: 982, type: !49)
!3281 = !DILocalVariable(name: "argsize", arg: 2, scope: !3276, file: !74, line: 982, type: !96)
!3282 = !DILocalVariable(name: "ch", arg: 3, scope: !3276, file: !74, line: 982, type: !33)
!3283 = !DILocalVariable(name: "options", scope: !3276, file: !74, line: 984, type: !108)
!3284 = !DILocation(line: 0, scope: !3276)
!3285 = !DILocation(line: 984, column: 3, scope: !3276)
!3286 = !DILocation(line: 984, column: 26, scope: !3276)
!3287 = !DILocation(line: 985, column: 13, scope: !3276)
!3288 = !{i64 0, i64 4, !870, i64 4, i64 4, !770, i64 8, i64 32, !870, i64 40, i64 8, !612, i64 48, i64 8, !612}
!3289 = !DILocation(line: 0, scope: !2116, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 986, column: 3, scope: !3276)
!3291 = !DILocation(line: 156, column: 62, scope: !2116, inlinedAt: !3290)
!3292 = !DILocation(line: 156, column: 57, scope: !2116, inlinedAt: !3290)
!3293 = !DILocation(line: 157, column: 15, scope: !2116, inlinedAt: !3290)
!3294 = !DILocation(line: 158, column: 12, scope: !2116, inlinedAt: !3290)
!3295 = !DILocation(line: 158, column: 15, scope: !2116, inlinedAt: !3290)
!3296 = !DILocation(line: 158, column: 25, scope: !2116, inlinedAt: !3290)
!3297 = !DILocation(line: 159, column: 18, scope: !2116, inlinedAt: !3290)
!3298 = !DILocation(line: 159, column: 23, scope: !2116, inlinedAt: !3290)
!3299 = !DILocation(line: 159, column: 6, scope: !2116, inlinedAt: !3290)
!3300 = !DILocation(line: 987, column: 10, scope: !3276)
!3301 = !DILocation(line: 988, column: 1, scope: !3276)
!3302 = !DILocation(line: 987, column: 3, scope: !3276)
!3303 = distinct !DISubprogram(name: "quotearg_char", scope: !74, file: !74, line: 991, type: !3304, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!32, !49, !33}
!3306 = !{!3307, !3308}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3303, file: !74, line: 991, type: !49)
!3308 = !DILocalVariable(name: "ch", arg: 2, scope: !3303, file: !74, line: 991, type: !33)
!3309 = !DILocation(line: 0, scope: !3303)
!3310 = !DILocation(line: 0, scope: !3276, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 993, column: 10, scope: !3303)
!3312 = !DILocation(line: 984, column: 3, scope: !3276, inlinedAt: !3311)
!3313 = !DILocation(line: 984, column: 26, scope: !3276, inlinedAt: !3311)
!3314 = !DILocation(line: 985, column: 13, scope: !3276, inlinedAt: !3311)
!3315 = !DILocation(line: 0, scope: !2116, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 986, column: 3, scope: !3276, inlinedAt: !3311)
!3317 = !DILocation(line: 156, column: 62, scope: !2116, inlinedAt: !3316)
!3318 = !DILocation(line: 156, column: 57, scope: !2116, inlinedAt: !3316)
!3319 = !DILocation(line: 157, column: 15, scope: !2116, inlinedAt: !3316)
!3320 = !DILocation(line: 158, column: 12, scope: !2116, inlinedAt: !3316)
!3321 = !DILocation(line: 158, column: 15, scope: !2116, inlinedAt: !3316)
!3322 = !DILocation(line: 158, column: 25, scope: !2116, inlinedAt: !3316)
!3323 = !DILocation(line: 159, column: 18, scope: !2116, inlinedAt: !3316)
!3324 = !DILocation(line: 159, column: 23, scope: !2116, inlinedAt: !3316)
!3325 = !DILocation(line: 159, column: 6, scope: !2116, inlinedAt: !3316)
!3326 = !DILocation(line: 987, column: 10, scope: !3276, inlinedAt: !3311)
!3327 = !DILocation(line: 988, column: 1, scope: !3276, inlinedAt: !3311)
!3328 = !DILocation(line: 993, column: 3, scope: !3303)
!3329 = distinct !DISubprogram(name: "quotearg_colon", scope: !74, file: !74, line: 997, type: !823, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3330)
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3329, file: !74, line: 997, type: !49)
!3332 = !DILocation(line: 0, scope: !3329)
!3333 = !DILocation(line: 0, scope: !3303, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 999, column: 10, scope: !3329)
!3335 = !DILocation(line: 0, scope: !3276, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 993, column: 10, scope: !3303, inlinedAt: !3334)
!3337 = !DILocation(line: 984, column: 3, scope: !3276, inlinedAt: !3336)
!3338 = !DILocation(line: 984, column: 26, scope: !3276, inlinedAt: !3336)
!3339 = !DILocation(line: 985, column: 13, scope: !3276, inlinedAt: !3336)
!3340 = !DILocation(line: 0, scope: !2116, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 986, column: 3, scope: !3276, inlinedAt: !3336)
!3342 = !DILocation(line: 156, column: 57, scope: !2116, inlinedAt: !3341)
!3343 = !DILocation(line: 158, column: 12, scope: !2116, inlinedAt: !3341)
!3344 = !DILocation(line: 159, column: 6, scope: !2116, inlinedAt: !3341)
!3345 = !DILocation(line: 987, column: 10, scope: !3276, inlinedAt: !3336)
!3346 = !DILocation(line: 988, column: 1, scope: !3276, inlinedAt: !3336)
!3347 = !DILocation(line: 999, column: 3, scope: !3329)
!3348 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !74, file: !74, line: 1003, type: !3153, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3349)
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "arg", arg: 1, scope: !3348, file: !74, line: 1003, type: !49)
!3351 = !DILocalVariable(name: "argsize", arg: 2, scope: !3348, file: !74, line: 1003, type: !96)
!3352 = !DILocation(line: 0, scope: !3348)
!3353 = !DILocation(line: 0, scope: !3276, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1005, column: 10, scope: !3348)
!3355 = !DILocation(line: 984, column: 3, scope: !3276, inlinedAt: !3354)
!3356 = !DILocation(line: 984, column: 26, scope: !3276, inlinedAt: !3354)
!3357 = !DILocation(line: 985, column: 13, scope: !3276, inlinedAt: !3354)
!3358 = !DILocation(line: 0, scope: !2116, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 986, column: 3, scope: !3276, inlinedAt: !3354)
!3360 = !DILocation(line: 156, column: 57, scope: !2116, inlinedAt: !3359)
!3361 = !DILocation(line: 158, column: 12, scope: !2116, inlinedAt: !3359)
!3362 = !DILocation(line: 159, column: 6, scope: !2116, inlinedAt: !3359)
!3363 = !DILocation(line: 987, column: 10, scope: !3276, inlinedAt: !3354)
!3364 = !DILocation(line: 988, column: 1, scope: !3276, inlinedAt: !3354)
!3365 = !DILocation(line: 1005, column: 3, scope: !3348)
!3366 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !74, file: !74, line: 1009, type: !3164, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3367)
!3367 = !{!3368, !3369, !3370, !3371}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3366, file: !74, line: 1009, type: !35)
!3369 = !DILocalVariable(name: "s", arg: 2, scope: !3366, file: !74, line: 1009, type: !76)
!3370 = !DILocalVariable(name: "arg", arg: 3, scope: !3366, file: !74, line: 1009, type: !49)
!3371 = !DILocalVariable(name: "options", scope: !3366, file: !74, line: 1011, type: !108)
!3372 = !DILocation(line: 195, column: 26, scope: !3179, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1012, column: 13, scope: !3366)
!3374 = !DILocation(line: 0, scope: !3366)
!3375 = !DILocation(line: 1011, column: 3, scope: !3366)
!3376 = !DILocation(line: 1011, column: 26, scope: !3366)
!3377 = !DILocation(line: 1012, column: 13, scope: !3366)
!3378 = !{!3379}
!3379 = distinct !{!3379, !3380, !"quoting_options_from_style: argument 0"}
!3380 = distinct !{!3380, !"quoting_options_from_style"}
!3381 = !DILocation(line: 0, scope: !3179, inlinedAt: !3373)
!3382 = !DILocation(line: 196, column: 13, scope: !3188, inlinedAt: !3373)
!3383 = !DILocation(line: 196, column: 7, scope: !3179, inlinedAt: !3373)
!3384 = !DILocation(line: 197, column: 5, scope: !3188, inlinedAt: !3373)
!3385 = !{i64 0, i64 4, !770, i64 4, i64 32, !870, i64 36, i64 8, !612, i64 44, i64 8, !612}
!3386 = !DILocation(line: 0, scope: !2116, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 1013, column: 3, scope: !3366)
!3388 = !DILocation(line: 156, column: 57, scope: !2116, inlinedAt: !3387)
!3389 = !DILocation(line: 158, column: 12, scope: !2116, inlinedAt: !3387)
!3390 = !DILocation(line: 159, column: 6, scope: !2116, inlinedAt: !3387)
!3391 = !DILocation(line: 1014, column: 10, scope: !3366)
!3392 = !DILocation(line: 1015, column: 1, scope: !3366)
!3393 = !DILocation(line: 1014, column: 3, scope: !3366)
!3394 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !74, file: !74, line: 1018, type: !3395, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!32, !35, !49, !49, !49}
!3397 = !{!3398, !3399, !3400, !3401}
!3398 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !74, line: 1018, type: !35)
!3399 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3394, file: !74, line: 1018, type: !49)
!3400 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3394, file: !74, line: 1019, type: !49)
!3401 = !DILocalVariable(name: "arg", arg: 4, scope: !3394, file: !74, line: 1019, type: !49)
!3402 = !DILocation(line: 0, scope: !3394)
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !74, line: 1026, type: !35)
!3404 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !74, file: !74, line: 1026, type: !3405, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!32, !35, !49, !49, !49, !96}
!3407 = !{!3403, !3408, !3409, !3410, !3411, !3412}
!3408 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3404, file: !74, line: 1026, type: !49)
!3409 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3404, file: !74, line: 1027, type: !49)
!3410 = !DILocalVariable(name: "arg", arg: 4, scope: !3404, file: !74, line: 1028, type: !49)
!3411 = !DILocalVariable(name: "argsize", arg: 5, scope: !3404, file: !74, line: 1028, type: !96)
!3412 = !DILocalVariable(name: "o", scope: !3404, file: !74, line: 1030, type: !108)
!3413 = !DILocation(line: 0, scope: !3404, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 1021, column: 10, scope: !3394)
!3415 = !DILocation(line: 1030, column: 3, scope: !3404, inlinedAt: !3414)
!3416 = !DILocation(line: 1030, column: 26, scope: !3404, inlinedAt: !3414)
!3417 = !DILocation(line: 1030, column: 30, scope: !3404, inlinedAt: !3414)
!3418 = !DILocation(line: 0, scope: !2157, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1031, column: 3, scope: !3404, inlinedAt: !3414)
!3420 = !DILocation(line: 184, column: 6, scope: !2157, inlinedAt: !3419)
!3421 = !DILocation(line: 184, column: 12, scope: !2157, inlinedAt: !3419)
!3422 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3419)
!3423 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3419)
!3424 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3419)
!3425 = !DILocation(line: 187, column: 6, scope: !2157, inlinedAt: !3419)
!3426 = !DILocation(line: 187, column: 17, scope: !2157, inlinedAt: !3419)
!3427 = !DILocation(line: 188, column: 6, scope: !2157, inlinedAt: !3419)
!3428 = !DILocation(line: 188, column: 18, scope: !2157, inlinedAt: !3419)
!3429 = !DILocation(line: 1032, column: 10, scope: !3404, inlinedAt: !3414)
!3430 = !DILocation(line: 1033, column: 1, scope: !3404, inlinedAt: !3414)
!3431 = !DILocation(line: 1021, column: 3, scope: !3394)
!3432 = !DILocation(line: 0, scope: !3404)
!3433 = !DILocation(line: 1030, column: 3, scope: !3404)
!3434 = !DILocation(line: 1030, column: 26, scope: !3404)
!3435 = !DILocation(line: 1030, column: 30, scope: !3404)
!3436 = !DILocation(line: 0, scope: !2157, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1031, column: 3, scope: !3404)
!3438 = !DILocation(line: 184, column: 6, scope: !2157, inlinedAt: !3437)
!3439 = !DILocation(line: 184, column: 12, scope: !2157, inlinedAt: !3437)
!3440 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3437)
!3441 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3437)
!3442 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3437)
!3443 = !DILocation(line: 187, column: 6, scope: !2157, inlinedAt: !3437)
!3444 = !DILocation(line: 187, column: 17, scope: !2157, inlinedAt: !3437)
!3445 = !DILocation(line: 188, column: 6, scope: !2157, inlinedAt: !3437)
!3446 = !DILocation(line: 188, column: 18, scope: !2157, inlinedAt: !3437)
!3447 = !DILocation(line: 1032, column: 10, scope: !3404)
!3448 = !DILocation(line: 1033, column: 1, scope: !3404)
!3449 = !DILocation(line: 1032, column: 3, scope: !3404)
!3450 = distinct !DISubprogram(name: "quotearg_custom", scope: !74, file: !74, line: 1036, type: !3451, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!32, !49, !49, !49}
!3453 = !{!3454, !3455, !3456}
!3454 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3450, file: !74, line: 1036, type: !49)
!3455 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3450, file: !74, line: 1036, type: !49)
!3456 = !DILocalVariable(name: "arg", arg: 3, scope: !3450, file: !74, line: 1037, type: !49)
!3457 = !DILocation(line: 0, scope: !3450)
!3458 = !DILocation(line: 0, scope: !3394, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1039, column: 10, scope: !3450)
!3460 = !DILocation(line: 0, scope: !3404, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1021, column: 10, scope: !3394, inlinedAt: !3459)
!3462 = !DILocation(line: 1030, column: 3, scope: !3404, inlinedAt: !3461)
!3463 = !DILocation(line: 1030, column: 26, scope: !3404, inlinedAt: !3461)
!3464 = !DILocation(line: 1030, column: 30, scope: !3404, inlinedAt: !3461)
!3465 = !DILocation(line: 0, scope: !2157, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1031, column: 3, scope: !3404, inlinedAt: !3461)
!3467 = !DILocation(line: 184, column: 6, scope: !2157, inlinedAt: !3466)
!3468 = !DILocation(line: 184, column: 12, scope: !2157, inlinedAt: !3466)
!3469 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3466)
!3470 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3466)
!3471 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3466)
!3472 = !DILocation(line: 187, column: 6, scope: !2157, inlinedAt: !3466)
!3473 = !DILocation(line: 187, column: 17, scope: !2157, inlinedAt: !3466)
!3474 = !DILocation(line: 188, column: 6, scope: !2157, inlinedAt: !3466)
!3475 = !DILocation(line: 188, column: 18, scope: !2157, inlinedAt: !3466)
!3476 = !DILocation(line: 1032, column: 10, scope: !3404, inlinedAt: !3461)
!3477 = !DILocation(line: 1033, column: 1, scope: !3404, inlinedAt: !3461)
!3478 = !DILocation(line: 1039, column: 3, scope: !3450)
!3479 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !74, file: !74, line: 1043, type: !3480, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!32, !49, !49, !49, !96}
!3482 = !{!3483, !3484, !3485, !3486}
!3483 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3479, file: !74, line: 1043, type: !49)
!3484 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3479, file: !74, line: 1043, type: !49)
!3485 = !DILocalVariable(name: "arg", arg: 3, scope: !3479, file: !74, line: 1044, type: !49)
!3486 = !DILocalVariable(name: "argsize", arg: 4, scope: !3479, file: !74, line: 1044, type: !96)
!3487 = !DILocation(line: 0, scope: !3479)
!3488 = !DILocation(line: 0, scope: !3404, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 1046, column: 10, scope: !3479)
!3490 = !DILocation(line: 1030, column: 3, scope: !3404, inlinedAt: !3489)
!3491 = !DILocation(line: 1030, column: 26, scope: !3404, inlinedAt: !3489)
!3492 = !DILocation(line: 1030, column: 30, scope: !3404, inlinedAt: !3489)
!3493 = !DILocation(line: 0, scope: !2157, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 1031, column: 3, scope: !3404, inlinedAt: !3489)
!3495 = !DILocation(line: 184, column: 6, scope: !2157, inlinedAt: !3494)
!3496 = !DILocation(line: 184, column: 12, scope: !2157, inlinedAt: !3494)
!3497 = !DILocation(line: 185, column: 8, scope: !2171, inlinedAt: !3494)
!3498 = !DILocation(line: 185, column: 19, scope: !2171, inlinedAt: !3494)
!3499 = !DILocation(line: 186, column: 5, scope: !2171, inlinedAt: !3494)
!3500 = !DILocation(line: 187, column: 6, scope: !2157, inlinedAt: !3494)
!3501 = !DILocation(line: 187, column: 17, scope: !2157, inlinedAt: !3494)
!3502 = !DILocation(line: 188, column: 6, scope: !2157, inlinedAt: !3494)
!3503 = !DILocation(line: 188, column: 18, scope: !2157, inlinedAt: !3494)
!3504 = !DILocation(line: 1032, column: 10, scope: !3404, inlinedAt: !3489)
!3505 = !DILocation(line: 1033, column: 1, scope: !3404, inlinedAt: !3489)
!3506 = !DILocation(line: 1046, column: 3, scope: !3479)
!3507 = distinct !DISubprogram(name: "quote_n_mem", scope: !74, file: !74, line: 1061, type: !3508, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!49, !35, !49, !96}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !74, line: 1061, type: !35)
!3512 = !DILocalVariable(name: "arg", arg: 2, scope: !3507, file: !74, line: 1061, type: !49)
!3513 = !DILocalVariable(name: "argsize", arg: 3, scope: !3507, file: !74, line: 1061, type: !96)
!3514 = !DILocation(line: 0, scope: !3507)
!3515 = !DILocation(line: 1063, column: 10, scope: !3507)
!3516 = !DILocation(line: 1063, column: 3, scope: !3507)
!3517 = distinct !DISubprogram(name: "quote_mem", scope: !74, file: !74, line: 1067, type: !3518, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!49, !49, !96}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !74, line: 1067, type: !49)
!3522 = !DILocalVariable(name: "argsize", arg: 2, scope: !3517, file: !74, line: 1067, type: !96)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3507, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1069, column: 10, scope: !3517)
!3526 = !DILocation(line: 1063, column: 10, scope: !3507, inlinedAt: !3525)
!3527 = !DILocation(line: 1069, column: 3, scope: !3517)
!3528 = distinct !DISubprogram(name: "quote_n", scope: !74, file: !74, line: 1073, type: !3529, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!49, !35, !49}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !74, line: 1073, type: !35)
!3533 = !DILocalVariable(name: "arg", arg: 2, scope: !3528, file: !74, line: 1073, type: !49)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 0, scope: !3507, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1075, column: 10, scope: !3528)
!3537 = !DILocation(line: 1063, column: 10, scope: !3507, inlinedAt: !3536)
!3538 = !DILocation(line: 1075, column: 3, scope: !3528)
!3539 = distinct !DISubprogram(name: "quote", scope: !74, file: !74, line: 1079, type: !1909, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !3540)
!3540 = !{!3541}
!3541 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !74, line: 1079, type: !49)
!3542 = !DILocation(line: 0, scope: !3539)
!3543 = !DILocation(line: 0, scope: !3528, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1081, column: 10, scope: !3539)
!3545 = !DILocation(line: 0, scope: !3507, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 1075, column: 10, scope: !3528, inlinedAt: !3544)
!3547 = !DILocation(line: 1063, column: 10, scope: !3507, inlinedAt: !3546)
!3548 = !DILocation(line: 1081, column: 3, scope: !3539)
!3549 = distinct !DISubprogram(name: "strintcmp", scope: !156, file: !156, line: 29, type: !3550, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!35, !49, !49}
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "a", arg: 1, scope: !3549, file: !156, line: 29, type: !49)
!3554 = !DILocalVariable(name: "b", arg: 2, scope: !3549, file: !156, line: 29, type: !49)
!3555 = !DILocation(line: 0, scope: !3549)
!3556 = !DILocalVariable(name: "a", arg: 1, scope: !3557, file: !3558, line: 114, type: !49)
!3557 = distinct !DISubprogram(name: "numcompare", scope: !3558, file: !3558, line: 114, type: !3559, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !3561)
!3558 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!35, !49, !49, !35, !35}
!3561 = !{!3556, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569}
!3562 = !DILocalVariable(name: "b", arg: 2, scope: !3557, file: !3558, line: 114, type: !49)
!3563 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3557, file: !3558, line: 115, type: !35)
!3564 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3557, file: !3558, line: 115, type: !35)
!3565 = !DILocalVariable(name: "tmpa", scope: !3557, file: !3558, line: 117, type: !2124)
!3566 = !DILocalVariable(name: "tmpb", scope: !3557, file: !3558, line: 118, type: !2124)
!3567 = !DILocalVariable(name: "tmp", scope: !3557, file: !3558, line: 119, type: !35)
!3568 = !DILocalVariable(name: "log_a", scope: !3557, file: !3558, line: 120, type: !96)
!3569 = !DILocalVariable(name: "log_b", scope: !3557, file: !3558, line: 121, type: !96)
!3570 = !DILocation(line: 0, scope: !3557, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 31, column: 10, scope: !3549)
!3572 = !DILocation(line: 117, column: 24, scope: !3557, inlinedAt: !3571)
!3573 = !DILocation(line: 118, column: 24, scope: !3557, inlinedAt: !3571)
!3574 = !DILocation(line: 123, column: 12, scope: !3575, inlinedAt: !3571)
!3575 = distinct !DILexicalBlock(scope: !3557, file: !3558, line: 123, column: 7)
!3576 = !DILocation(line: 123, column: 7, scope: !3557, inlinedAt: !3571)
!3577 = !DILocation(line: 126, column: 17, scope: !3578, inlinedAt: !3571)
!3578 = distinct !DILexicalBlock(scope: !3575, file: !3558, line: 124, column: 5)
!3579 = !DILocation(line: 126, column: 16, scope: !3578, inlinedAt: !3571)
!3580 = !DILocation(line: 127, column: 19, scope: !3578, inlinedAt: !3571)
!3581 = !DILocation(line: 126, column: 9, scope: !3578, inlinedAt: !3571)
!3582 = distinct !{!3582, !3583, !3584, !667}
!3583 = !DILocation(line: 125, column: 7, scope: !3578, inlinedAt: !3571)
!3584 = !DILocation(line: 127, column: 59, scope: !3578, inlinedAt: !3571)
!3585 = !DILocation(line: 128, column: 16, scope: !3586, inlinedAt: !3571)
!3586 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 128, column: 11)
!3587 = !DILocation(line: 128, column: 11, scope: !3578, inlinedAt: !3571)
!3588 = !DILocation(line: 134, column: 15, scope: !3589, inlinedAt: !3571)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3558, line: 134, column: 15)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !3558, line: 129, column: 9)
!3591 = !DILocation(line: 134, column: 15, scope: !3590, inlinedAt: !3571)
!3592 = !DILocation(line: 136, column: 23, scope: !3590, inlinedAt: !3571)
!3593 = !DILocation(line: 136, column: 11, scope: !3590, inlinedAt: !3571)
!3594 = !DILocation(line: 137, column: 21, scope: !3590, inlinedAt: !3571)
!3595 = !DILocation(line: 137, column: 20, scope: !3590, inlinedAt: !3571)
!3596 = distinct !{!3596, !3593, !3597, !667}
!3597 = !DILocation(line: 137, column: 23, scope: !3590, inlinedAt: !3571)
!3598 = !DILocation(line: 142, column: 20, scope: !3590, inlinedAt: !3571)
!3599 = !DILocation(line: 142, column: 11, scope: !3590, inlinedAt: !3571)
!3600 = !DILocation(line: 145, column: 17, scope: !3578, inlinedAt: !3571)
!3601 = !DILocation(line: 145, column: 16, scope: !3578, inlinedAt: !3571)
!3602 = !DILocation(line: 146, column: 19, scope: !3578, inlinedAt: !3571)
!3603 = !DILocation(line: 145, column: 9, scope: !3578, inlinedAt: !3571)
!3604 = distinct !{!3604, !3605, !3606, !667}
!3605 = !DILocation(line: 144, column: 7, scope: !3578, inlinedAt: !3571)
!3606 = !DILocation(line: 146, column: 59, scope: !3578, inlinedAt: !3571)
!3607 = !DILocation(line: 148, column: 14, scope: !3578, inlinedAt: !3571)
!3608 = !DILocation(line: 148, column: 19, scope: !3578, inlinedAt: !3571)
!3609 = !DILocation(line: 148, column: 27, scope: !3578, inlinedAt: !3571)
!3610 = !DILocation(line: 148, column: 7, scope: !3578, inlinedAt: !3571)
!3611 = !DILocation(line: 164, column: 23, scope: !3612, inlinedAt: !3571)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3558, line: 164, column: 7)
!3613 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 164, column: 7)
!3614 = !DILocation(line: 0, scope: !3578, inlinedAt: !3571)
!3615 = !DILocation(line: 164, column: 7, scope: !3613, inlinedAt: !3571)
!3616 = !DILocation(line: 151, column: 21, scope: !3617, inlinedAt: !3571)
!3617 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 149, column: 9)
!3618 = !DILocation(line: 151, column: 20, scope: !3617, inlinedAt: !3571)
!3619 = !DILocation(line: 154, column: 21, scope: !3617, inlinedAt: !3571)
!3620 = !DILocation(line: 154, column: 20, scope: !3617, inlinedAt: !3571)
!3621 = !DILocation(line: 0, scope: !3613, inlinedAt: !3571)
!3622 = !DILocation(line: 169, column: 23, scope: !3623, inlinedAt: !3571)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3558, line: 169, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 169, column: 7)
!3625 = !DILocation(line: 169, column: 7, scope: !3624, inlinedAt: !3571)
!3626 = !DILocation(line: 166, column: 19, scope: !3612, inlinedAt: !3571)
!3627 = !DILocation(line: 166, column: 18, scope: !3612, inlinedAt: !3571)
!3628 = !DILocation(line: 164, column: 39, scope: !3612, inlinedAt: !3571)
!3629 = distinct !{!3629, !3615, !3630, !667}
!3630 = !DILocation(line: 167, column: 37, scope: !3613, inlinedAt: !3571)
!3631 = !DILocation(line: 171, column: 19, scope: !3623, inlinedAt: !3571)
!3632 = !DILocation(line: 171, column: 18, scope: !3623, inlinedAt: !3571)
!3633 = !DILocation(line: 169, column: 39, scope: !3623, inlinedAt: !3571)
!3634 = distinct !{!3634, !3625, !3635, !667}
!3635 = !DILocation(line: 172, column: 37, scope: !3624, inlinedAt: !3571)
!3636 = !DILocation(line: 0, scope: !3624, inlinedAt: !3571)
!3637 = !DILocation(line: 174, column: 17, scope: !3638, inlinedAt: !3571)
!3638 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 174, column: 11)
!3639 = !DILocation(line: 174, column: 11, scope: !3578, inlinedAt: !3571)
!3640 = !DILocation(line: 175, column: 22, scope: !3638, inlinedAt: !3571)
!3641 = !DILocation(line: 175, column: 16, scope: !3638, inlinedAt: !3571)
!3642 = !DILocation(line: 175, column: 9, scope: !3638, inlinedAt: !3571)
!3643 = !DILocation(line: 162, column: 18, scope: !3578, inlinedAt: !3571)
!3644 = !DILocation(line: 177, column: 12, scope: !3645, inlinedAt: !3571)
!3645 = distinct !DILexicalBlock(scope: !3578, file: !3558, line: 177, column: 11)
!3646 = !DILocation(line: 177, column: 11, scope: !3578, inlinedAt: !3571)
!3647 = !DILocation(line: 182, column: 17, scope: !3648, inlinedAt: !3571)
!3648 = distinct !DILexicalBlock(scope: !3575, file: !3558, line: 182, column: 12)
!3649 = !DILocation(line: 182, column: 12, scope: !3575, inlinedAt: !3571)
!3650 = !DILocation(line: 203, column: 19, scope: !3651, inlinedAt: !3571)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !3558, line: 202, column: 5)
!3652 = !DILocation(line: 203, column: 7, scope: !3651, inlinedAt: !3571)
!3653 = !DILocation(line: 185, column: 17, scope: !3654, inlinedAt: !3571)
!3654 = distinct !DILexicalBlock(scope: !3648, file: !3558, line: 183, column: 5)
!3655 = !DILocation(line: 185, column: 16, scope: !3654, inlinedAt: !3571)
!3656 = !DILocation(line: 186, column: 19, scope: !3654, inlinedAt: !3571)
!3657 = !DILocation(line: 185, column: 9, scope: !3654, inlinedAt: !3571)
!3658 = distinct !{!3658, !3659, !3660, !667}
!3659 = !DILocation(line: 184, column: 7, scope: !3654, inlinedAt: !3571)
!3660 = !DILocation(line: 186, column: 59, scope: !3654, inlinedAt: !3571)
!3661 = !DILocation(line: 191, column: 11, scope: !3662, inlinedAt: !3571)
!3662 = distinct !DILexicalBlock(scope: !3654, file: !3558, line: 191, column: 11)
!3663 = !DILocation(line: 191, column: 11, scope: !3654, inlinedAt: !3571)
!3664 = !DILocation(line: 193, column: 19, scope: !3654, inlinedAt: !3571)
!3665 = !DILocation(line: 193, column: 7, scope: !3654, inlinedAt: !3571)
!3666 = !DILocation(line: 194, column: 17, scope: !3654, inlinedAt: !3571)
!3667 = !DILocation(line: 194, column: 16, scope: !3654, inlinedAt: !3571)
!3668 = distinct !{!3668, !3665, !3669, !667}
!3669 = !DILocation(line: 194, column: 19, scope: !3654, inlinedAt: !3571)
!3670 = !DILocation(line: 199, column: 14, scope: !3654, inlinedAt: !3571)
!3671 = !DILocation(line: 199, column: 7, scope: !3654, inlinedAt: !3571)
!3672 = !DILocation(line: 205, column: 19, scope: !3651, inlinedAt: !3571)
!3673 = !DILocation(line: 205, column: 7, scope: !3651, inlinedAt: !3571)
!3674 = !DILocation(line: 204, column: 17, scope: !3651, inlinedAt: !3571)
!3675 = !DILocation(line: 204, column: 16, scope: !3651, inlinedAt: !3571)
!3676 = distinct !{!3676, !3652, !3677, !667}
!3677 = !DILocation(line: 204, column: 19, scope: !3651, inlinedAt: !3571)
!3678 = !DILocation(line: 208, column: 14, scope: !3651, inlinedAt: !3571)
!3679 = !DILocation(line: 208, column: 19, scope: !3651, inlinedAt: !3571)
!3680 = !DILocation(line: 208, column: 27, scope: !3651, inlinedAt: !3571)
!3681 = !DILocation(line: 208, column: 7, scope: !3651, inlinedAt: !3571)
!3682 = !DILocation(line: 206, column: 17, scope: !3651, inlinedAt: !3571)
!3683 = !DILocation(line: 206, column: 16, scope: !3651, inlinedAt: !3571)
!3684 = distinct !{!3684, !3673, !3685, !667}
!3685 = !DILocation(line: 206, column: 19, scope: !3651, inlinedAt: !3571)
!3686 = !DILocation(line: 211, column: 21, scope: !3687, inlinedAt: !3571)
!3687 = distinct !DILexicalBlock(scope: !3651, file: !3558, line: 209, column: 9)
!3688 = !DILocation(line: 211, column: 20, scope: !3687, inlinedAt: !3571)
!3689 = !DILocation(line: 214, column: 21, scope: !3687, inlinedAt: !3571)
!3690 = !DILocation(line: 214, column: 20, scope: !3687, inlinedAt: !3571)
!3691 = !DILocation(line: 208, column: 22, scope: !3651, inlinedAt: !3571)
!3692 = !DILocation(line: 224, column: 23, scope: !3693, inlinedAt: !3571)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3558, line: 224, column: 7)
!3694 = distinct !DILexicalBlock(scope: !3651, file: !3558, line: 224, column: 7)
!3695 = !DILocation(line: 222, column: 18, scope: !3651, inlinedAt: !3571)
!3696 = !DILocation(line: 224, column: 7, scope: !3694, inlinedAt: !3571)
!3697 = !DILocation(line: 0, scope: !3694, inlinedAt: !3571)
!3698 = !DILocation(line: 229, column: 23, scope: !3699, inlinedAt: !3571)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !3558, line: 229, column: 7)
!3700 = distinct !DILexicalBlock(scope: !3651, file: !3558, line: 229, column: 7)
!3701 = !DILocation(line: 229, column: 7, scope: !3700, inlinedAt: !3571)
!3702 = !DILocation(line: 226, column: 19, scope: !3693, inlinedAt: !3571)
!3703 = !DILocation(line: 226, column: 18, scope: !3693, inlinedAt: !3571)
!3704 = !DILocation(line: 224, column: 39, scope: !3693, inlinedAt: !3571)
!3705 = distinct !{!3705, !3696, !3706, !667}
!3706 = !DILocation(line: 227, column: 37, scope: !3694, inlinedAt: !3571)
!3707 = !DILocation(line: 231, column: 19, scope: !3699, inlinedAt: !3571)
!3708 = !DILocation(line: 231, column: 18, scope: !3699, inlinedAt: !3571)
!3709 = !DILocation(line: 229, column: 39, scope: !3699, inlinedAt: !3571)
!3710 = distinct !{!3710, !3701, !3711, !667}
!3711 = !DILocation(line: 232, column: 37, scope: !3700, inlinedAt: !3571)
!3712 = !DILocation(line: 0, scope: !3700, inlinedAt: !3571)
!3713 = !DILocation(line: 234, column: 17, scope: !3714, inlinedAt: !3571)
!3714 = distinct !DILexicalBlock(scope: !3651, file: !3558, line: 234, column: 11)
!3715 = !DILocation(line: 234, column: 11, scope: !3651, inlinedAt: !3571)
!3716 = !DILocation(line: 235, column: 22, scope: !3714, inlinedAt: !3571)
!3717 = !DILocation(line: 235, column: 16, scope: !3714, inlinedAt: !3571)
!3718 = !DILocation(line: 235, column: 9, scope: !3714, inlinedAt: !3571)
!3719 = !DILocation(line: 237, column: 12, scope: !3720, inlinedAt: !3571)
!3720 = distinct !DILexicalBlock(scope: !3651, file: !3558, line: 237, column: 11)
!3721 = !DILocation(line: 237, column: 11, scope: !3651, inlinedAt: !3571)
!3722 = !DILocation(line: 31, column: 3, scope: !3549)
!3723 = distinct !DISubprogram(name: "verror", scope: !159, file: !159, line: 43, type: !3724, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3733)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !35, !35, !49, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3727, file: !159, baseType: !7, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3727, file: !159, baseType: !7, size: 32, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3727, file: !159, baseType: !34, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3727, file: !159, baseType: !34, size: 64, offset: 128)
!3733 = !{!3734, !3735, !3736, !3737}
!3734 = !DILocalVariable(name: "status", arg: 1, scope: !3723, file: !159, line: 43, type: !35)
!3735 = !DILocalVariable(name: "errnum", arg: 2, scope: !3723, file: !159, line: 43, type: !35)
!3736 = !DILocalVariable(name: "format", arg: 3, scope: !3723, file: !159, line: 43, type: !49)
!3737 = !DILocalVariable(name: "args", arg: 4, scope: !3723, file: !159, line: 43, type: !3726)
!3738 = !DILocation(line: 0, scope: !3723)
!3739 = !DILocation(line: 45, column: 3, scope: !3723)
!3740 = !DILocation(line: 46, column: 1, scope: !3723)
!3741 = distinct !DISubprogram(name: "verror_at_line", scope: !159, file: !159, line: 55, type: !3742, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !35, !35, !49, !7, !49, !3726}
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3745 = !DILocalVariable(name: "status", arg: 1, scope: !3741, file: !159, line: 55, type: !35)
!3746 = !DILocalVariable(name: "errnum", arg: 2, scope: !3741, file: !159, line: 55, type: !35)
!3747 = !DILocalVariable(name: "file", arg: 3, scope: !3741, file: !159, line: 55, type: !49)
!3748 = !DILocalVariable(name: "line_number", arg: 4, scope: !3741, file: !159, line: 56, type: !7)
!3749 = !DILocalVariable(name: "format", arg: 5, scope: !3741, file: !159, line: 56, type: !49)
!3750 = !DILocalVariable(name: "args", arg: 6, scope: !3741, file: !159, line: 56, type: !3726)
!3751 = !DILocalVariable(name: "message", scope: !3741, file: !159, line: 58, type: !32)
!3752 = !DILocation(line: 0, scope: !3741)
!3753 = !DILocation(line: 58, column: 19, scope: !3741)
!3754 = !DILocation(line: 59, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3741, file: !159, line: 59, column: 7)
!3756 = !DILocation(line: 59, column: 7, scope: !3741)
!3757 = !DILocation(line: 64, column: 11, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !159, line: 64, column: 11)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !159, line: 60, column: 5)
!3760 = !DILocation(line: 64, column: 11, scope: !3759)
!3761 = !DILocation(line: 65, column: 9, scope: !3758)
!3762 = !DILocation(line: 67, column: 9, scope: !3758)
!3763 = !DILocation(line: 73, column: 17, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3755, file: !159, line: 70, column: 5)
!3765 = !DILocation(line: 73, column: 24, scope: !3764)
!3766 = !DILocation(line: 73, column: 7, scope: !3764)
!3767 = !DILocation(line: 74, column: 7, scope: !3764)
!3768 = !DILocation(line: 76, column: 3, scope: !3741)
!3769 = !DILocation(line: 77, column: 1, scope: !3741)
!3770 = !DISubprogram(name: "error_at_line", scope: !2015, file: !2015, line: 55, type: !3771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !35, !35, !49, !7, !49, null}
!3773 = distinct !DISubprogram(name: "version_etc_arn", scope: !161, file: !161, line: 61, type: !3774, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !3812)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3776, !49, !49, !49, !3811, !96}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3778, line: 7, baseType: !3779)
!3778 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !697, line: 51, baseType: !35, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3779, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3779, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3779, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3779, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3779, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3779, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3779, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3779, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3779, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3779, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3779, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3779, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3779, file: !697, line: 70, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3779, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3779, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3779, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3779, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3779, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3779, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3779, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3779, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3779, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3779, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3779, file: !697, line: 93, baseType: !3795, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3779, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3779, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3779, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3779, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818}
!3813 = !DILocalVariable(name: "stream", arg: 1, scope: !3773, file: !161, line: 61, type: !3776)
!3814 = !DILocalVariable(name: "command_name", arg: 2, scope: !3773, file: !161, line: 62, type: !49)
!3815 = !DILocalVariable(name: "package", arg: 3, scope: !3773, file: !161, line: 62, type: !49)
!3816 = !DILocalVariable(name: "version", arg: 4, scope: !3773, file: !161, line: 63, type: !49)
!3817 = !DILocalVariable(name: "authors", arg: 5, scope: !3773, file: !161, line: 64, type: !3811)
!3818 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3773, file: !161, line: 64, type: !96)
!3819 = !DILocation(line: 0, scope: !3773)
!3820 = !DILocation(line: 66, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3773, file: !161, line: 66, column: 7)
!3822 = !DILocation(line: 66, column: 7, scope: !3773)
!3823 = !DILocation(line: 67, column: 5, scope: !3821)
!3824 = !DILocation(line: 69, column: 5, scope: !3821)
!3825 = !DILocation(line: 83, column: 3, scope: !3773)
!3826 = !DILocation(line: 85, column: 3, scope: !3773)
!3827 = !DILocation(line: 88, column: 3, scope: !3773)
!3828 = !DILocation(line: 95, column: 3, scope: !3773)
!3829 = !DILocation(line: 97, column: 3, scope: !3773)
!3830 = !DILocation(line: 105, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3773, file: !161, line: 98, column: 5)
!3832 = !DILocation(line: 106, column: 7, scope: !3831)
!3833 = !DILocation(line: 109, column: 7, scope: !3831)
!3834 = !DILocation(line: 110, column: 7, scope: !3831)
!3835 = !DILocation(line: 113, column: 7, scope: !3831)
!3836 = !DILocation(line: 115, column: 7, scope: !3831)
!3837 = !DILocation(line: 120, column: 7, scope: !3831)
!3838 = !DILocation(line: 122, column: 7, scope: !3831)
!3839 = !DILocation(line: 127, column: 7, scope: !3831)
!3840 = !DILocation(line: 129, column: 7, scope: !3831)
!3841 = !DILocation(line: 134, column: 7, scope: !3831)
!3842 = !DILocation(line: 137, column: 7, scope: !3831)
!3843 = !DILocation(line: 142, column: 7, scope: !3831)
!3844 = !DILocation(line: 145, column: 7, scope: !3831)
!3845 = !DILocation(line: 150, column: 7, scope: !3831)
!3846 = !DILocation(line: 154, column: 7, scope: !3831)
!3847 = !DILocation(line: 159, column: 7, scope: !3831)
!3848 = !DILocation(line: 163, column: 7, scope: !3831)
!3849 = !DILocation(line: 170, column: 7, scope: !3831)
!3850 = !DILocation(line: 174, column: 7, scope: !3831)
!3851 = !DILocation(line: 176, column: 1, scope: !3773)
!3852 = distinct !DISubprogram(name: "version_etc_ar", scope: !161, file: !161, line: 183, type: !3853, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3776, !49, !49, !49, !3811}
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !161, line: 183, type: !3776)
!3857 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !161, line: 184, type: !49)
!3858 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !161, line: 184, type: !49)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !161, line: 185, type: !49)
!3860 = !DILocalVariable(name: "authors", arg: 5, scope: !3852, file: !161, line: 185, type: !3811)
!3861 = !DILocalVariable(name: "n_authors", scope: !3852, file: !161, line: 187, type: !96)
!3862 = !DILocation(line: 0, scope: !3852)
!3863 = !DILocation(line: 189, column: 8, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3852, file: !161, line: 189, column: 3)
!3865 = !DILocation(line: 0, scope: !3864)
!3866 = !DILocation(line: 189, column: 23, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !161, line: 189, column: 3)
!3868 = !DILocation(line: 189, column: 3, scope: !3864)
!3869 = !DILocation(line: 189, column: 52, scope: !3867)
!3870 = distinct !{!3870, !3868, !3871, !667}
!3871 = !DILocation(line: 190, column: 5, scope: !3864)
!3872 = !DILocation(line: 191, column: 3, scope: !3852)
!3873 = !DILocation(line: 192, column: 1, scope: !3852)
!3874 = distinct !DISubprogram(name: "version_etc_va", scope: !161, file: !161, line: 199, type: !3875, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !3884)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3776, !49, !49, !49, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3878, file: !161, line: 192, baseType: !7, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3878, file: !161, line: 192, baseType: !7, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3878, file: !161, line: 192, baseType: !34, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3878, file: !161, line: 192, baseType: !34, size: 64, offset: 128)
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3885 = !DILocalVariable(name: "stream", arg: 1, scope: !3874, file: !161, line: 199, type: !3776)
!3886 = !DILocalVariable(name: "command_name", arg: 2, scope: !3874, file: !161, line: 200, type: !49)
!3887 = !DILocalVariable(name: "package", arg: 3, scope: !3874, file: !161, line: 200, type: !49)
!3888 = !DILocalVariable(name: "version", arg: 4, scope: !3874, file: !161, line: 201, type: !49)
!3889 = !DILocalVariable(name: "authors", arg: 5, scope: !3874, file: !161, line: 201, type: !3877)
!3890 = !DILocalVariable(name: "n_authors", scope: !3874, file: !161, line: 203, type: !96)
!3891 = !DILocalVariable(name: "authtab", scope: !3874, file: !161, line: 204, type: !3892)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !104)
!3893 = !DILocation(line: 0, scope: !3874)
!3894 = !DILocation(line: 204, column: 3, scope: !3874)
!3895 = !DILocation(line: 204, column: 15, scope: !3874)
!3896 = !DILocation(line: 208, column: 35, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !161, line: 206, column: 3)
!3898 = distinct !DILexicalBlock(scope: !3874, file: !161, line: 206, column: 3)
!3899 = !DILocation(line: 208, column: 14, scope: !3897)
!3900 = !DILocation(line: 208, column: 33, scope: !3897)
!3901 = !DILocation(line: 208, column: 67, scope: !3897)
!3902 = !DILocation(line: 206, column: 3, scope: !3898)
!3903 = !DILocation(line: 0, scope: !3898)
!3904 = !DILocation(line: 211, column: 3, scope: !3874)
!3905 = !DILocation(line: 213, column: 1, scope: !3874)
!3906 = distinct !DISubprogram(name: "version_etc", scope: !161, file: !161, line: 230, type: !3907, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3776, !49, !49, !49, null}
!3909 = !{!3910, !3911, !3912, !3913, !3914}
!3910 = !DILocalVariable(name: "stream", arg: 1, scope: !3906, file: !161, line: 230, type: !3776)
!3911 = !DILocalVariable(name: "command_name", arg: 2, scope: !3906, file: !161, line: 231, type: !49)
!3912 = !DILocalVariable(name: "package", arg: 3, scope: !3906, file: !161, line: 231, type: !49)
!3913 = !DILocalVariable(name: "version", arg: 4, scope: !3906, file: !161, line: 232, type: !49)
!3914 = !DILocalVariable(name: "authors", scope: !3906, file: !161, line: 234, type: !3915)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !692, line: 52, baseType: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !840, line: 32, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, baseType: !3918)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3878, size: 192, elements: !725)
!3919 = !DILocation(line: 0, scope: !3906)
!3920 = !DILocation(line: 234, column: 3, scope: !3906)
!3921 = !DILocation(line: 234, column: 11, scope: !3906)
!3922 = !DILocation(line: 236, column: 3, scope: !3906)
!3923 = !DILocation(line: 237, column: 3, scope: !3906)
!3924 = !DILocation(line: 238, column: 3, scope: !3906)
!3925 = !DILocation(line: 239, column: 1, scope: !3906)
!3926 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !161, file: !161, line: 242, type: !830, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !47)
!3927 = !DILocation(line: 244, column: 3, scope: !3926)
!3928 = !DILocation(line: 249, column: 3, scope: !3926)
!3929 = !DILocation(line: 255, column: 3, scope: !3926)
!3930 = !DILocation(line: 260, column: 3, scope: !3926)
!3931 = !DILocation(line: 262, column: 1, scope: !3926)
!3932 = distinct !DISubprogram(name: "xnmalloc", scope: !171, file: !171, line: 99, type: !3933, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!34, !96, !96}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "n", arg: 1, scope: !3932, file: !171, line: 99, type: !96)
!3937 = !DILocalVariable(name: "s", arg: 2, scope: !3932, file: !171, line: 99, type: !96)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocation(line: 101, column: 7, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3932, file: !171, line: 101, column: 7)
!3941 = !DILocation(line: 101, column: 7, scope: !3932)
!3942 = !DILocation(line: 102, column: 5, scope: !3940)
!3943 = !DILocation(line: 103, column: 21, scope: !3932)
!3944 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !168, line: 39, type: !96)
!3945 = distinct !DISubprogram(name: "xmalloc", scope: !168, file: !168, line: 39, type: !3946, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!34, !96}
!3948 = !{!3944, !3949}
!3949 = !DILocalVariable(name: "p", scope: !3945, file: !168, line: 41, type: !34)
!3950 = !DILocation(line: 0, scope: !3945, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 103, column: 10, scope: !3932)
!3952 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !3951)
!3953 = !DILocation(line: 42, column: 8, scope: !3954, inlinedAt: !3951)
!3954 = distinct !DILexicalBlock(scope: !3945, file: !168, line: 42, column: 7)
!3955 = !DILocation(line: 42, column: 10, scope: !3954, inlinedAt: !3951)
!3956 = !DILocation(line: 43, column: 5, scope: !3954, inlinedAt: !3951)
!3957 = !DILocation(line: 103, column: 3, scope: !3932)
!3958 = !DILocation(line: 0, scope: !3945)
!3959 = !DILocation(line: 41, column: 13, scope: !3945)
!3960 = !DILocation(line: 42, column: 8, scope: !3954)
!3961 = !DILocation(line: 42, column: 10, scope: !3954)
!3962 = !DILocation(line: 43, column: 5, scope: !3954)
!3963 = !DILocation(line: 44, column: 3, scope: !3945)
!3964 = distinct !DISubprogram(name: "xnrealloc", scope: !171, file: !171, line: 112, type: !3965, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!34, !34, !96, !96}
!3967 = !{!3968, !3969, !3970}
!3968 = !DILocalVariable(name: "p", arg: 1, scope: !3964, file: !171, line: 112, type: !34)
!3969 = !DILocalVariable(name: "n", arg: 2, scope: !3964, file: !171, line: 112, type: !96)
!3970 = !DILocalVariable(name: "s", arg: 3, scope: !3964, file: !171, line: 112, type: !96)
!3971 = !DILocation(line: 0, scope: !3964)
!3972 = !DILocation(line: 114, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3964, file: !171, line: 114, column: 7)
!3974 = !DILocation(line: 114, column: 7, scope: !3964)
!3975 = !DILocation(line: 115, column: 5, scope: !3973)
!3976 = !DILocation(line: 116, column: 25, scope: !3964)
!3977 = !DILocalVariable(name: "p", arg: 1, scope: !3978, file: !168, line: 51, type: !34)
!3978 = distinct !DISubprogram(name: "xrealloc", scope: !168, file: !168, line: 51, type: !3979, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!34, !34, !96}
!3981 = !{!3977, !3982}
!3982 = !DILocalVariable(name: "n", arg: 2, scope: !3978, file: !168, line: 51, type: !96)
!3983 = !DILocation(line: 0, scope: !3978, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 116, column: 10, scope: !3964)
!3985 = !DILocation(line: 53, column: 8, scope: !3986, inlinedAt: !3984)
!3986 = distinct !DILexicalBlock(scope: !3978, file: !168, line: 53, column: 7)
!3987 = !DILocation(line: 53, column: 10, scope: !3986, inlinedAt: !3984)
!3988 = !DILocation(line: 57, column: 7, scope: !3989, inlinedAt: !3984)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !168, line: 54, column: 5)
!3990 = !DILocation(line: 58, column: 7, scope: !3989, inlinedAt: !3984)
!3991 = !DILocation(line: 61, column: 7, scope: !3978, inlinedAt: !3984)
!3992 = !DILocation(line: 62, column: 8, scope: !3993, inlinedAt: !3984)
!3993 = distinct !DILexicalBlock(scope: !3978, file: !168, line: 62, column: 7)
!3994 = !DILocation(line: 62, column: 10, scope: !3993, inlinedAt: !3984)
!3995 = !DILocation(line: 63, column: 5, scope: !3993, inlinedAt: !3984)
!3996 = !DILocation(line: 116, column: 3, scope: !3964)
!3997 = !DILocation(line: 0, scope: !3978)
!3998 = !DILocation(line: 53, column: 8, scope: !3986)
!3999 = !DILocation(line: 53, column: 10, scope: !3986)
!4000 = !DILocation(line: 57, column: 7, scope: !3989)
!4001 = !DILocation(line: 58, column: 7, scope: !3989)
!4002 = !DILocation(line: 61, column: 7, scope: !3978)
!4003 = !DILocation(line: 62, column: 8, scope: !3993)
!4004 = !DILocation(line: 62, column: 10, scope: !3993)
!4005 = !DILocation(line: 63, column: 5, scope: !3993)
!4006 = !DILocation(line: 65, column: 1, scope: !3978)
!4007 = !DILocation(line: 0, scope: !172)
!4008 = !DILocation(line: 176, column: 14, scope: !172)
!4009 = !DILocation(line: 178, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !172, file: !171, line: 178, column: 7)
!4011 = !DILocation(line: 178, column: 7, scope: !172)
!4012 = !DILocation(line: 180, column: 13, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !171, line: 180, column: 11)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !171, line: 179, column: 5)
!4015 = !DILocation(line: 180, column: 11, scope: !4014)
!4016 = !DILocation(line: 188, column: 30, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4013, file: !171, line: 181, column: 9)
!4018 = !DILocation(line: 189, column: 16, scope: !4017)
!4019 = !DILocation(line: 189, column: 13, scope: !4017)
!4020 = !DILocation(line: 190, column: 9, scope: !4017)
!4021 = !DILocation(line: 191, column: 11, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4014, file: !171, line: 191, column: 11)
!4023 = !DILocation(line: 191, column: 11, scope: !4014)
!4024 = !DILocation(line: 206, column: 7, scope: !172)
!4025 = !DILocation(line: 207, column: 25, scope: !172)
!4026 = !DILocation(line: 0, scope: !3978, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 207, column: 10, scope: !172)
!4028 = !DILocation(line: 53, column: 10, scope: !3986, inlinedAt: !4027)
!4029 = !DILocation(line: 192, column: 9, scope: !4022)
!4030 = !DILocation(line: 200, column: 69, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !171, line: 200, column: 11)
!4032 = distinct !DILexicalBlock(scope: !4010, file: !171, line: 195, column: 5)
!4033 = !DILocation(line: 201, column: 11, scope: !4031)
!4034 = !DILocation(line: 200, column: 11, scope: !4032)
!4035 = !DILocation(line: 202, column: 9, scope: !4031)
!4036 = !DILocation(line: 203, column: 14, scope: !4032)
!4037 = !DILocation(line: 203, column: 18, scope: !4032)
!4038 = !DILocation(line: 203, column: 9, scope: !4032)
!4039 = !DILocation(line: 53, column: 8, scope: !3986, inlinedAt: !4027)
!4040 = !DILocation(line: 57, column: 7, scope: !3989, inlinedAt: !4027)
!4041 = !DILocation(line: 58, column: 7, scope: !3989, inlinedAt: !4027)
!4042 = !DILocation(line: 61, column: 7, scope: !3978, inlinedAt: !4027)
!4043 = !DILocation(line: 62, column: 8, scope: !3993, inlinedAt: !4027)
!4044 = !DILocation(line: 62, column: 10, scope: !3993, inlinedAt: !4027)
!4045 = !DILocation(line: 63, column: 5, scope: !3993, inlinedAt: !4027)
!4046 = !DILocation(line: 207, column: 3, scope: !172)
!4047 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2964, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4048)
!4048 = !{!4049}
!4049 = !DILocalVariable(name: "n", arg: 1, scope: !4047, file: !171, line: 216, type: !96)
!4050 = !DILocation(line: 0, scope: !4047)
!4051 = !DILocation(line: 0, scope: !3945, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 218, column: 10, scope: !4047)
!4053 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4052)
!4054 = !DILocation(line: 42, column: 8, scope: !3954, inlinedAt: !4052)
!4055 = !DILocation(line: 42, column: 10, scope: !3954, inlinedAt: !4052)
!4056 = !DILocation(line: 43, column: 5, scope: !3954, inlinedAt: !4052)
!4057 = !DILocation(line: 218, column: 3, scope: !4047)
!4058 = distinct !DISubprogram(name: "x2realloc", scope: !168, file: !168, line: 74, type: !4059, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!34, !34, !175}
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "p", arg: 1, scope: !4058, file: !168, line: 74, type: !34)
!4063 = !DILocalVariable(name: "pn", arg: 2, scope: !4058, file: !168, line: 74, type: !175)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocation(line: 0, scope: !172, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 76, column: 10, scope: !4058)
!4067 = !DILocation(line: 176, column: 14, scope: !172, inlinedAt: !4066)
!4068 = !DILocation(line: 178, column: 9, scope: !4010, inlinedAt: !4066)
!4069 = !DILocation(line: 178, column: 7, scope: !172, inlinedAt: !4066)
!4070 = !DILocation(line: 180, column: 13, scope: !4013, inlinedAt: !4066)
!4071 = !DILocation(line: 180, column: 11, scope: !4014, inlinedAt: !4066)
!4072 = !DILocation(line: 191, column: 11, scope: !4022, inlinedAt: !4066)
!4073 = !DILocation(line: 191, column: 11, scope: !4014, inlinedAt: !4066)
!4074 = !DILocation(line: 192, column: 9, scope: !4022, inlinedAt: !4066)
!4075 = !DILocation(line: 201, column: 11, scope: !4031, inlinedAt: !4066)
!4076 = !DILocation(line: 200, column: 11, scope: !4032, inlinedAt: !4066)
!4077 = !DILocation(line: 202, column: 9, scope: !4031, inlinedAt: !4066)
!4078 = !DILocation(line: 203, column: 14, scope: !4032, inlinedAt: !4066)
!4079 = !DILocation(line: 203, column: 18, scope: !4032, inlinedAt: !4066)
!4080 = !DILocation(line: 203, column: 9, scope: !4032, inlinedAt: !4066)
!4081 = !DILocation(line: 0, scope: !3978, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 207, column: 10, scope: !172, inlinedAt: !4066)
!4083 = !DILocation(line: 53, column: 10, scope: !3986, inlinedAt: !4082)
!4084 = !DILocation(line: 206, column: 7, scope: !172, inlinedAt: !4066)
!4085 = !DILocation(line: 61, column: 7, scope: !3978, inlinedAt: !4082)
!4086 = !DILocation(line: 62, column: 8, scope: !3993, inlinedAt: !4082)
!4087 = !DILocation(line: 62, column: 10, scope: !3993, inlinedAt: !4082)
!4088 = !DILocation(line: 63, column: 5, scope: !3993, inlinedAt: !4082)
!4089 = !DILocation(line: 76, column: 3, scope: !4058)
!4090 = distinct !DISubprogram(name: "xzalloc", scope: !168, file: !168, line: 84, type: !3946, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4091)
!4091 = !{!4092}
!4092 = !DILocalVariable(name: "n", arg: 1, scope: !4090, file: !168, line: 84, type: !96)
!4093 = !DILocation(line: 0, scope: !4090)
!4094 = !DILocalVariable(name: "n", arg: 1, scope: !4095, file: !168, line: 93, type: !96)
!4095 = distinct !DISubprogram(name: "xcalloc", scope: !168, file: !168, line: 93, type: !3933, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4096)
!4096 = !{!4094, !4097, !4098}
!4097 = !DILocalVariable(name: "s", arg: 2, scope: !4095, file: !168, line: 93, type: !96)
!4098 = !DILocalVariable(name: "p", scope: !4095, file: !168, line: 95, type: !34)
!4099 = !DILocation(line: 0, scope: !4095, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 86, column: 10, scope: !4090)
!4101 = !DILocation(line: 100, column: 7, scope: !4102, inlinedAt: !4100)
!4102 = distinct !DILexicalBlock(scope: !4095, file: !168, line: 100, column: 7)
!4103 = !DILocation(line: 101, column: 7, scope: !4102, inlinedAt: !4100)
!4104 = !DILocation(line: 101, column: 18, scope: !4102, inlinedAt: !4100)
!4105 = !DILocation(line: 101, column: 16, scope: !4102, inlinedAt: !4100)
!4106 = !DILocation(line: 100, column: 7, scope: !4095, inlinedAt: !4100)
!4107 = !DILocation(line: 102, column: 5, scope: !4102, inlinedAt: !4100)
!4108 = !DILocation(line: 86, column: 3, scope: !4090)
!4109 = !DILocation(line: 0, scope: !4095)
!4110 = !DILocation(line: 100, column: 7, scope: !4102)
!4111 = !DILocation(line: 101, column: 7, scope: !4102)
!4112 = !DILocation(line: 101, column: 18, scope: !4102)
!4113 = !DILocation(line: 101, column: 16, scope: !4102)
!4114 = !DILocation(line: 100, column: 7, scope: !4095)
!4115 = !DILocation(line: 102, column: 5, scope: !4102)
!4116 = !DILocation(line: 103, column: 3, scope: !4095)
!4117 = distinct !DISubprogram(name: "xmemdup", scope: !168, file: !168, line: 111, type: !4118, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4122)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!34, !4120, !96}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "p", arg: 1, scope: !4117, file: !168, line: 111, type: !4120)
!4124 = !DILocalVariable(name: "s", arg: 2, scope: !4117, file: !168, line: 111, type: !96)
!4125 = !DILocation(line: 0, scope: !4117)
!4126 = !DILocation(line: 0, scope: !3945, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 113, column: 18, scope: !4117)
!4128 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4127)
!4129 = !DILocation(line: 42, column: 8, scope: !3954, inlinedAt: !4127)
!4130 = !DILocation(line: 42, column: 10, scope: !3954, inlinedAt: !4127)
!4131 = !DILocation(line: 43, column: 5, scope: !3954, inlinedAt: !4127)
!4132 = !DILocalVariable(name: "__dest", arg: 1, scope: !4133, file: !2491, line: 26, type: !4136)
!4133 = distinct !DISubprogram(name: "memcpy", scope: !2491, file: !2491, line: 26, type: !4134, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4138)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!34, !4136, !4137, !96}
!4136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!4137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4120)
!4138 = !{!4132, !4139, !4140}
!4139 = !DILocalVariable(name: "__src", arg: 2, scope: !4133, file: !2491, line: 26, type: !4137)
!4140 = !DILocalVariable(name: "__len", arg: 3, scope: !4133, file: !2491, line: 26, type: !96)
!4141 = !DILocation(line: 0, scope: !4133, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 113, column: 10, scope: !4117)
!4143 = !DILocation(line: 29, column: 10, scope: !4133, inlinedAt: !4142)
!4144 = !DILocation(line: 113, column: 3, scope: !4117)
!4145 = distinct !DISubprogram(name: "xstrdup", scope: !168, file: !168, line: 119, type: !823, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4146)
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "string", arg: 1, scope: !4145, file: !168, line: 119, type: !49)
!4148 = !DILocation(line: 0, scope: !4145)
!4149 = !DILocation(line: 121, column: 27, scope: !4145)
!4150 = !DILocation(line: 121, column: 43, scope: !4145)
!4151 = !DILocation(line: 0, scope: !4117, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 121, column: 10, scope: !4145)
!4153 = !DILocation(line: 0, scope: !3945, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 113, column: 18, scope: !4117, inlinedAt: !4152)
!4155 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4154)
!4156 = !DILocation(line: 42, column: 8, scope: !3954, inlinedAt: !4154)
!4157 = !DILocation(line: 42, column: 10, scope: !3954, inlinedAt: !4154)
!4158 = !DILocation(line: 43, column: 5, scope: !3954, inlinedAt: !4154)
!4159 = !DILocation(line: 0, scope: !4133, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 113, column: 10, scope: !4117, inlinedAt: !4152)
!4161 = !DILocation(line: 29, column: 10, scope: !4133, inlinedAt: !4160)
!4162 = !DILocation(line: 121, column: 3, scope: !4145)
!4163 = distinct !DISubprogram(name: "xalloc_die", scope: !185, file: !185, line: 32, type: !830, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !47)
!4164 = !DILocation(line: 34, column: 10, scope: !4163)
!4165 = !DILocation(line: 34, column: 33, scope: !4163)
!4166 = !DILocation(line: 34, column: 3, scope: !4163)
!4167 = !DILocation(line: 40, column: 3, scope: !4163)
!4168 = distinct !DISubprogram(name: "xvasprintf", scope: !187, file: !187, line: 76, type: !4169, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !4178)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!32, !49, !4171}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4177}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4172, file: !187, baseType: !7, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4172, file: !187, baseType: !7, size: 32, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4172, file: !187, baseType: !34, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4172, file: !187, baseType: !34, size: 64, offset: 128)
!4178 = !{!4179, !4180, !4181, !4182, !4184}
!4179 = !DILocalVariable(name: "format", arg: 1, scope: !4168, file: !187, line: 76, type: !49)
!4180 = !DILocalVariable(name: "args", arg: 2, scope: !4168, file: !187, line: 76, type: !4171)
!4181 = !DILocalVariable(name: "result", scope: !4168, file: !187, line: 78, type: !32)
!4182 = !DILocalVariable(name: "argcount", scope: !4183, file: !187, line: 84, type: !96)
!4183 = distinct !DILexicalBlock(scope: !4168, file: !187, line: 83, column: 3)
!4184 = !DILocalVariable(name: "f", scope: !4183, file: !187, line: 85, type: !49)
!4185 = !DILocation(line: 0, scope: !4168)
!4186 = !DILocation(line: 78, column: 3, scope: !4168)
!4187 = !DILocation(line: 0, scope: !4183)
!4188 = !DILocation(line: 89, column: 13, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !187, line: 89, column: 13)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !187, line: 88, column: 7)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !187, line: 87, column: 5)
!4192 = distinct !DILexicalBlock(scope: !4183, file: !187, line: 87, column: 5)
!4193 = !DILocation(line: 89, column: 16, scope: !4189)
!4194 = !DILocation(line: 89, column: 13, scope: !4190)
!4195 = !DILocalVariable(name: "argcount", arg: 1, scope: !4196, file: !187, line: 33, type: !96)
!4196 = distinct !DISubprogram(name: "xstrcat", scope: !187, file: !187, line: 33, type: !4197, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!32, !96, !4171}
!4199 = !{!4195, !4200, !4201, !4202, !4207, !4208, !4209, !4210, !4214, !4218}
!4200 = !DILocalVariable(name: "args", arg: 2, scope: !4196, file: !187, line: 33, type: !4171)
!4201 = !DILocalVariable(name: "result", scope: !4196, file: !187, line: 35, type: !32)
!4202 = !DILocalVariable(name: "ap", scope: !4196, file: !187, line: 36, type: !4203)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !692, line: 52, baseType: !4204)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !840, line: 32, baseType: !4205)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !187, baseType: !4206)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4172, size: 192, elements: !725)
!4207 = !DILocalVariable(name: "totalsize", scope: !4196, file: !187, line: 37, type: !96)
!4208 = !DILocalVariable(name: "i", scope: !4196, file: !187, line: 38, type: !96)
!4209 = !DILocalVariable(name: "p", scope: !4196, file: !187, line: 39, type: !32)
!4210 = !DILocalVariable(name: "next", scope: !4211, file: !187, line: 46, type: !49)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !187, line: 45, column: 5)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !187, line: 44, column: 3)
!4213 = distinct !DILexicalBlock(scope: !4196, file: !187, line: 44, column: 3)
!4214 = !DILocalVariable(name: "next", scope: !4215, file: !187, line: 65, type: !49)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !187, line: 64, column: 5)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !187, line: 63, column: 3)
!4217 = distinct !DILexicalBlock(scope: !4196, file: !187, line: 63, column: 3)
!4218 = !DILocalVariable(name: "len", scope: !4215, file: !187, line: 66, type: !96)
!4219 = !DILocation(line: 0, scope: !4196, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 91, column: 18, scope: !4189)
!4221 = !DILocation(line: 36, column: 3, scope: !4196, inlinedAt: !4220)
!4222 = !DILocation(line: 36, column: 11, scope: !4196, inlinedAt: !4220)
!4223 = !DILocation(line: 43, column: 3, scope: !4196, inlinedAt: !4220)
!4224 = !DILocation(line: 44, column: 3, scope: !4213, inlinedAt: !4220)
!4225 = !DILocation(line: 44, column: 24, scope: !4212, inlinedAt: !4220)
!4226 = !DILocation(line: 49, column: 3, scope: !4196, inlinedAt: !4220)
!4227 = !DILocation(line: 61, column: 12, scope: !4196, inlinedAt: !4220)
!4228 = !DILocation(line: 63, column: 3, scope: !4217, inlinedAt: !4220)
!4229 = !DILocation(line: 46, column: 26, scope: !4211, inlinedAt: !4220)
!4230 = !DILocation(line: 0, scope: !4211, inlinedAt: !4220)
!4231 = !DILocation(line: 47, column: 36, scope: !4211, inlinedAt: !4220)
!4232 = !DILocalVariable(name: "size1", arg: 1, scope: !4233, file: !4234, line: 63, type: !96)
!4233 = distinct !DISubprogram(name: "xsum", scope: !4234, file: !4234, line: 63, type: !4235, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !4237)
!4234 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!96, !96, !96}
!4237 = !{!4232, !4238, !4239}
!4238 = !DILocalVariable(name: "size2", arg: 2, scope: !4233, file: !4234, line: 63, type: !96)
!4239 = !DILocalVariable(name: "sum", scope: !4233, file: !4234, line: 65, type: !96)
!4240 = !DILocation(line: 0, scope: !4233, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 47, column: 19, scope: !4211, inlinedAt: !4220)
!4242 = !DILocation(line: 66, column: 11, scope: !4233, inlinedAt: !4241)
!4243 = !DILocation(line: 44, column: 30, scope: !4212, inlinedAt: !4220)
!4244 = distinct !{!4244, !4224, !4245, !667}
!4245 = !DILocation(line: 48, column: 5, scope: !4213, inlinedAt: !4220)
!4246 = !DILocation(line: 54, column: 29, scope: !4247, inlinedAt: !4220)
!4247 = distinct !DILexicalBlock(scope: !4196, file: !187, line: 54, column: 7)
!4248 = !DILocation(line: 56, column: 7, scope: !4249, inlinedAt: !4220)
!4249 = distinct !DILexicalBlock(scope: !4247, file: !187, line: 55, column: 5)
!4250 = !DILocation(line: 56, column: 13, scope: !4249, inlinedAt: !4220)
!4251 = !DILocation(line: 57, column: 7, scope: !4249, inlinedAt: !4220)
!4252 = !DILocation(line: 65, column: 26, scope: !4215, inlinedAt: !4220)
!4253 = !DILocation(line: 0, scope: !4215, inlinedAt: !4220)
!4254 = !DILocation(line: 66, column: 20, scope: !4215, inlinedAt: !4220)
!4255 = !DILocalVariable(name: "__dest", arg: 1, scope: !4256, file: !2491, line: 26, type: !4136)
!4256 = distinct !DISubprogram(name: "memcpy", scope: !2491, file: !2491, line: 26, type: !4134, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !4257)
!4257 = !{!4255, !4258, !4259}
!4258 = !DILocalVariable(name: "__src", arg: 2, scope: !4256, file: !2491, line: 26, type: !4137)
!4259 = !DILocalVariable(name: "__len", arg: 3, scope: !4256, file: !2491, line: 26, type: !96)
!4260 = !DILocation(line: 0, scope: !4256, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 67, column: 7, scope: !4215, inlinedAt: !4220)
!4262 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4261)
!4263 = !DILocation(line: 68, column: 9, scope: !4215, inlinedAt: !4220)
!4264 = !DILocation(line: 63, column: 30, scope: !4216, inlinedAt: !4220)
!4265 = !DILocation(line: 63, column: 24, scope: !4216, inlinedAt: !4220)
!4266 = distinct !{!4266, !4228, !4267, !667}
!4267 = !DILocation(line: 69, column: 5, scope: !4217, inlinedAt: !4220)
!4268 = !DILocation(line: 70, column: 6, scope: !4196, inlinedAt: !4220)
!4269 = !DILocation(line: 72, column: 3, scope: !4196, inlinedAt: !4220)
!4270 = !DILocation(line: 92, column: 16, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4190, file: !187, line: 92, column: 13)
!4272 = !DILocation(line: 92, column: 13, scope: !4190)
!4273 = !DILocation(line: 94, column: 10, scope: !4190)
!4274 = !DILocation(line: 95, column: 13, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4190, file: !187, line: 95, column: 13)
!4276 = !DILocation(line: 95, column: 16, scope: !4275)
!4277 = !DILocation(line: 95, column: 13, scope: !4190)
!4278 = !DILocation(line: 97, column: 10, scope: !4190)
!4279 = !DILocation(line: 98, column: 17, scope: !4190)
!4280 = distinct !{!4280, !4281, !4282}
!4281 = !DILocation(line: 87, column: 5, scope: !4192)
!4282 = !DILocation(line: 99, column: 7, scope: !4192)
!4283 = !DILocation(line: 73, column: 1, scope: !4196, inlinedAt: !4220)
!4284 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4285, file: !4286, line: 215, type: !4289)
!4285 = distinct !DISubprogram(name: "vasprintf", scope: !4286, file: !4286, line: 215, type: !4287, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !4291)
!4286 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!35, !4289, !4290, !4171}
!4289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!4290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!4291 = !{!4284, !4292, !4293}
!4292 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4285, file: !4286, line: 215, type: !4290)
!4293 = !DILocalVariable(name: "__ap", arg: 3, scope: !4285, file: !4286, line: 215, type: !4171)
!4294 = !DILocation(line: 0, scope: !4285, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 102, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4168, file: !187, line: 102, column: 7)
!4297 = !DILocation(line: 218, column: 10, scope: !4285, inlinedAt: !4295)
!4298 = !DILocation(line: 102, column: 41, scope: !4296)
!4299 = !DILocation(line: 102, column: 7, scope: !4168)
!4300 = !DILocation(line: 104, column: 11, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !187, line: 104, column: 11)
!4302 = distinct !DILexicalBlock(scope: !4296, file: !187, line: 103, column: 5)
!4303 = !DILocation(line: 104, column: 17, scope: !4301)
!4304 = !DILocation(line: 104, column: 11, scope: !4302)
!4305 = !DILocation(line: 105, column: 9, scope: !4301)
!4306 = !DILocation(line: 109, column: 10, scope: !4168)
!4307 = !DILocation(line: 109, column: 3, scope: !4168)
!4308 = !DILocation(line: 110, column: 1, scope: !4168)
!4309 = distinct !DISubprogram(name: "rpl_calloc", scope: !190, file: !190, line: 42, type: !3933, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !4310)
!4310 = !{!4311, !4312, !4313, !4314}
!4311 = !DILocalVariable(name: "n", arg: 1, scope: !4309, file: !190, line: 42, type: !96)
!4312 = !DILocalVariable(name: "s", arg: 2, scope: !4309, file: !190, line: 42, type: !96)
!4313 = !DILocalVariable(name: "result", scope: !4309, file: !190, line: 44, type: !34)
!4314 = !DILocalVariable(name: "bytes", scope: !4315, file: !190, line: 56, type: !96)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !190, line: 53, column: 5)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !190, line: 47, column: 7)
!4317 = !DILocation(line: 0, scope: !4309)
!4318 = !DILocation(line: 47, column: 9, scope: !4316)
!4319 = !DILocation(line: 47, column: 14, scope: !4316)
!4320 = !DILocation(line: 0, scope: !4315)
!4321 = !DILocation(line: 57, column: 21, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4315, file: !190, line: 57, column: 11)
!4323 = !DILocation(line: 57, column: 11, scope: !4315)
!4324 = !DILocation(line: 59, column: 11, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !190, line: 58, column: 9)
!4326 = !DILocation(line: 59, column: 17, scope: !4325)
!4327 = !DILocation(line: 65, column: 12, scope: !4309)
!4328 = !DILocation(line: 72, column: 3, scope: !4309)
!4329 = !DILocation(line: 73, column: 1, scope: !4309)
!4330 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !192, file: !192, line: 86, type: !4331, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !4345)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!96, !4333, !49, !96, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2246, line: 6, baseType: !4336)
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2248, line: 21, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2248, line: 13, size: 64, elements: !4338)
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4337, file: !2248, line: 15, baseType: !35, size: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4337, file: !2248, line: 20, baseType: !4341, size: 32, offset: 32)
!4341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4337, file: !2248, line: 16, size: 32, elements: !4342)
!4342 = !{!4343, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4341, file: !2248, line: 18, baseType: !7, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4341, file: !2248, line: 19, baseType: !2257, size: 32)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352}
!4346 = !DILocalVariable(name: "pwc", arg: 1, scope: !4330, file: !192, line: 86, type: !4333)
!4347 = !DILocalVariable(name: "s", arg: 2, scope: !4330, file: !192, line: 86, type: !49)
!4348 = !DILocalVariable(name: "n", arg: 3, scope: !4330, file: !192, line: 86, type: !96)
!4349 = !DILocalVariable(name: "ps", arg: 4, scope: !4330, file: !192, line: 86, type: !4334)
!4350 = !DILocalVariable(name: "ret", scope: !4330, file: !192, line: 88, type: !96)
!4351 = !DILocalVariable(name: "wc", scope: !4330, file: !192, line: 89, type: !2262)
!4352 = !DILocalVariable(name: "uc", scope: !4353, file: !192, line: 156, type: !2124)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !192, line: 155, column: 5)
!4354 = distinct !DILexicalBlock(scope: !4330, file: !192, line: 154, column: 7)
!4355 = !DILocation(line: 0, scope: !4330)
!4356 = !DILocation(line: 89, column: 3, scope: !4330)
!4357 = !DILocation(line: 105, column: 9, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4330, file: !192, line: 105, column: 7)
!4359 = !DILocation(line: 105, column: 7, scope: !4330)
!4360 = !DILocation(line: 145, column: 9, scope: !4330)
!4361 = !DILocation(line: 154, column: 19, scope: !4354)
!4362 = !DILocation(line: 154, column: 26, scope: !4354)
!4363 = !DILocation(line: 154, column: 41, scope: !4354)
!4364 = !DILocation(line: 154, column: 7, scope: !4330)
!4365 = !DILocation(line: 156, column: 26, scope: !4353)
!4366 = !DILocation(line: 0, scope: !4353)
!4367 = !DILocation(line: 157, column: 14, scope: !4353)
!4368 = !DILocation(line: 157, column: 12, scope: !4353)
!4369 = !DILocation(line: 163, column: 1, scope: !4330)
!4370 = !DISubprogram(name: "mbrtowc", scope: !2924, file: !2924, line: 296, type: !4371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!98, !4373, !49, !98, !4374}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4375 = distinct !DISubprogram(name: "close_stream", scope: !195, file: !195, line: 56, type: !4376, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !4412)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!35, !4378}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3778, line: 7, baseType: !4380)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4380, file: !697, line: 51, baseType: !35, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4380, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4380, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4380, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4380, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4380, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4380, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4380, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4380, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4380, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4380, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4380, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4380, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4380, file: !697, line: 70, baseType: !4396, size: 64, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4380, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4380, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4380, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4380, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4380, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4380, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4380, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4380, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4380, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4380, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4380, file: !697, line: 93, baseType: !4396, size: 64, offset: 1344)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4380, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4380, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4380, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4380, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!4412 = !{!4413, !4414, !4416, !4417}
!4413 = !DILocalVariable(name: "stream", arg: 1, scope: !4375, file: !195, line: 56, type: !4378)
!4414 = !DILocalVariable(name: "some_pending", scope: !4375, file: !195, line: 58, type: !4415)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4416 = !DILocalVariable(name: "prev_fail", scope: !4375, file: !195, line: 59, type: !4415)
!4417 = !DILocalVariable(name: "fclose_fail", scope: !4375, file: !195, line: 60, type: !4415)
!4418 = !DILocation(line: 0, scope: !4375)
!4419 = !DILocation(line: 58, column: 30, scope: !4375)
!4420 = !DILocalVariable(name: "__stream", arg: 1, scope: !4421, file: !4422, line: 135, type: !4378)
!4421 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4422, file: !4422, line: 135, type: !4376, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !4423)
!4422 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4423 = !{!4420}
!4424 = !DILocation(line: 0, scope: !4421, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 59, column: 27, scope: !4375)
!4426 = !DILocation(line: 137, column: 10, scope: !4421, inlinedAt: !4425)
!4427 = !{!4428, !771, i64 0}
!4428 = !{!"_IO_FILE", !771, i64 0, !613, i64 8, !613, i64 16, !613, i64 24, !613, i64 32, !613, i64 40, !613, i64 48, !613, i64 56, !613, i64 64, !613, i64 72, !613, i64 80, !613, i64 88, !613, i64 96, !613, i64 104, !771, i64 112, !771, i64 116, !1143, i64 120, !1922, i64 128, !614, i64 130, !614, i64 131, !613, i64 136, !1143, i64 144, !613, i64 152, !613, i64 160, !613, i64 168, !613, i64 176, !1143, i64 184, !771, i64 192, !614, i64 196}
!4429 = !DILocation(line: 59, column: 43, scope: !4375)
!4430 = !DILocation(line: 60, column: 29, scope: !4375)
!4431 = !DILocation(line: 60, column: 45, scope: !4375)
!4432 = !DILocation(line: 70, column: 17, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4375, file: !195, line: 70, column: 7)
!4434 = !DILocation(line: 58, column: 50, scope: !4375)
!4435 = !DILocation(line: 70, column: 33, scope: !4433)
!4436 = !DILocation(line: 70, column: 53, scope: !4433)
!4437 = !DILocation(line: 70, column: 59, scope: !4433)
!4438 = !DILocation(line: 70, column: 7, scope: !4375)
!4439 = !DILocation(line: 72, column: 11, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4433, file: !195, line: 71, column: 5)
!4441 = !DILocation(line: 73, column: 9, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4440, file: !195, line: 72, column: 11)
!4443 = !DILocation(line: 73, column: 15, scope: !4442)
!4444 = !DILocation(line: 78, column: 1, scope: !4375)
!4445 = distinct !DISubprogram(name: "hard_locale", scope: !197, file: !197, line: 27, type: !856, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !4446)
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "category", arg: 1, scope: !4445, file: !197, line: 27, type: !35)
!4448 = !DILocalVariable(name: "locale", scope: !4445, file: !197, line: 29, type: !4449)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2056, elements: !4450)
!4450 = !{!4451}
!4451 = !DISubrange(count: 257)
!4452 = !DILocation(line: 0, scope: !4445)
!4453 = !DILocation(line: 29, column: 3, scope: !4445)
!4454 = !DILocation(line: 29, column: 8, scope: !4445)
!4455 = !DILocation(line: 31, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4445, file: !197, line: 31, column: 7)
!4457 = !DILocation(line: 31, column: 7, scope: !4445)
!4458 = !DILocation(line: 34, column: 12, scope: !4445)
!4459 = !DILocation(line: 34, column: 38, scope: !4445)
!4460 = !DILocation(line: 34, column: 41, scope: !4445)
!4461 = !DILocation(line: 34, column: 66, scope: !4445)
!4462 = !DILocation(line: 35, column: 1, scope: !4445)
!4463 = distinct !DISubprogram(name: "locale_charset", scope: !199, file: !199, line: 831, type: !4464, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!49}
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "codeset", scope: !4463, file: !199, line: 833, type: !49)
!4468 = !DILocation(line: 847, column: 13, scope: !4463)
!4469 = !DILocation(line: 0, scope: !4463)
!4470 = !DILocation(line: 911, column: 15, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4463, file: !199, line: 911, column: 7)
!4472 = !DILocation(line: 911, column: 7, scope: !4463)
!4473 = !DILocation(line: 1070, column: 13, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !199, line: 1070, column: 13)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !199, line: 1060, column: 7)
!4476 = distinct !DILexicalBlock(scope: !4463, file: !199, line: 1019, column: 3)
!4477 = !DILocation(line: 1070, column: 24, scope: !4474)
!4478 = !DILocation(line: 1070, column: 13, scope: !4475)
!4479 = !DILocation(line: 1158, column: 3, scope: !4463)
!4480 = !DISubprogram(name: "nl_langinfo", scope: !202, file: !202, line: 661, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!32, !35}
!4483 = distinct !DISubprogram(name: "setlocale_null_r", scope: !588, file: !588, line: 269, type: !4484, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4486)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!35, !35, !32, !96}
!4486 = !{!4487, !4488, !4489}
!4487 = !DILocalVariable(name: "category", arg: 1, scope: !4483, file: !588, line: 269, type: !35)
!4488 = !DILocalVariable(name: "buf", arg: 2, scope: !4483, file: !588, line: 269, type: !32)
!4489 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4483, file: !588, line: 269, type: !96)
!4490 = !DILocation(line: 0, scope: !4483)
!4491 = !DILocalVariable(name: "category", arg: 1, scope: !4492, file: !588, line: 91, type: !35)
!4492 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !588, file: !588, line: 91, type: !4484, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4493)
!4493 = !{!4491, !4494, !4495, !4496, !4497}
!4494 = !DILocalVariable(name: "buf", arg: 2, scope: !4492, file: !588, line: 91, type: !32)
!4495 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4492, file: !588, line: 91, type: !96)
!4496 = !DILocalVariable(name: "result", scope: !4492, file: !588, line: 140, type: !49)
!4497 = !DILocalVariable(name: "length", scope: !4498, file: !588, line: 154, type: !96)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !588, line: 153, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4492, file: !588, line: 142, column: 7)
!4500 = !DILocation(line: 0, scope: !4492, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 274, column: 10, scope: !4483)
!4502 = !DILocalVariable(name: "category", arg: 1, scope: !4503, file: !588, line: 60, type: !35)
!4503 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !588, file: !588, line: 60, type: !4504, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4506)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!49, !35}
!4506 = !{!4502, !4507}
!4507 = !DILocalVariable(name: "result", scope: !4503, file: !588, line: 62, type: !49)
!4508 = !DILocation(line: 0, scope: !4503, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 140, column: 24, scope: !4492, inlinedAt: !4501)
!4510 = !DILocation(line: 62, column: 24, scope: !4503, inlinedAt: !4509)
!4511 = !DILocation(line: 142, column: 14, scope: !4499, inlinedAt: !4501)
!4512 = !DILocation(line: 142, column: 7, scope: !4492, inlinedAt: !4501)
!4513 = !DILocation(line: 145, column: 19, scope: !4514, inlinedAt: !4501)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !588, line: 145, column: 11)
!4515 = distinct !DILexicalBlock(scope: !4499, file: !588, line: 143, column: 5)
!4516 = !DILocation(line: 145, column: 11, scope: !4515, inlinedAt: !4501)
!4517 = !DILocation(line: 149, column: 16, scope: !4514, inlinedAt: !4501)
!4518 = !DILocation(line: 149, column: 9, scope: !4514, inlinedAt: !4501)
!4519 = !DILocation(line: 154, column: 23, scope: !4498, inlinedAt: !4501)
!4520 = !DILocation(line: 0, scope: !4498, inlinedAt: !4501)
!4521 = !DILocation(line: 155, column: 18, scope: !4522, inlinedAt: !4501)
!4522 = distinct !DILexicalBlock(scope: !4498, file: !588, line: 155, column: 11)
!4523 = !DILocation(line: 155, column: 11, scope: !4498, inlinedAt: !4501)
!4524 = !DILocation(line: 157, column: 39, scope: !4525, inlinedAt: !4501)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !588, line: 156, column: 9)
!4526 = !DILocalVariable(name: "__dest", arg: 1, scope: !4527, file: !2491, line: 26, type: !4136)
!4527 = distinct !DISubprogram(name: "memcpy", scope: !2491, file: !2491, line: 26, type: !4134, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4528)
!4528 = !{!4526, !4529, !4530}
!4529 = !DILocalVariable(name: "__src", arg: 2, scope: !4527, file: !2491, line: 26, type: !4137)
!4530 = !DILocalVariable(name: "__len", arg: 3, scope: !4527, file: !2491, line: 26, type: !96)
!4531 = !DILocation(line: 0, scope: !4527, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 157, column: 11, scope: !4525, inlinedAt: !4501)
!4533 = !DILocation(line: 29, column: 10, scope: !4527, inlinedAt: !4532)
!4534 = !DILocation(line: 158, column: 11, scope: !4525, inlinedAt: !4501)
!4535 = !DILocation(line: 162, column: 23, scope: !4536, inlinedAt: !4501)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !588, line: 162, column: 15)
!4537 = distinct !DILexicalBlock(scope: !4522, file: !588, line: 161, column: 9)
!4538 = !DILocation(line: 162, column: 15, scope: !4537, inlinedAt: !4501)
!4539 = !DILocation(line: 167, column: 44, scope: !4540, inlinedAt: !4501)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !588, line: 163, column: 13)
!4541 = !DILocation(line: 0, scope: !4527, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 167, column: 15, scope: !4540, inlinedAt: !4501)
!4543 = !DILocation(line: 29, column: 10, scope: !4527, inlinedAt: !4542)
!4544 = !DILocation(line: 168, column: 15, scope: !4540, inlinedAt: !4501)
!4545 = !DILocation(line: 168, column: 32, scope: !4540, inlinedAt: !4501)
!4546 = !DILocation(line: 169, column: 13, scope: !4540, inlinedAt: !4501)
!4547 = !DILocation(line: 0, scope: !4499, inlinedAt: !4501)
!4548 = !DILocation(line: 274, column: 3, scope: !4483)
!4549 = distinct !DISubprogram(name: "setlocale_null", scope: !588, file: !588, line: 301, type: !4504, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4550)
!4550 = !{!4551}
!4551 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !588, line: 301, type: !35)
!4552 = !DILocation(line: 0, scope: !4549)
!4553 = !DILocation(line: 0, scope: !4503, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 304, column: 10, scope: !4549)
!4555 = !DILocation(line: 62, column: 24, scope: !4503, inlinedAt: !4554)
!4556 = !DILocation(line: 304, column: 3, scope: !4549)
!4557 = distinct !DISubprogram(name: "rpl_fclose", scope: !590, file: !590, line: 58, type: !4558, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !4594)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!35, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3778, line: 7, baseType: !4562)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4562, file: !697, line: 51, baseType: !35, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4562, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4562, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4562, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4562, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4562, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4562, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4562, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4562, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4562, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4562, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4562, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4562, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4562, file: !697, line: 70, baseType: !4578, size: 64, offset: 832)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4562, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4562, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4562, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4562, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4562, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4562, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4562, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4562, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4562, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4562, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4562, file: !697, line: 93, baseType: !4578, size: 64, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4562, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4562, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4562, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4562, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DILocalVariable(name: "fp", arg: 1, scope: !4557, file: !590, line: 58, type: !4560)
!4596 = !DILocalVariable(name: "saved_errno", scope: !4557, file: !590, line: 60, type: !35)
!4597 = !DILocalVariable(name: "fd", scope: !4557, file: !590, line: 61, type: !35)
!4598 = !DILocalVariable(name: "result", scope: !4557, file: !590, line: 62, type: !35)
!4599 = !DILocation(line: 0, scope: !4557)
!4600 = !DILocation(line: 65, column: 8, scope: !4557)
!4601 = !DILocation(line: 66, column: 10, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4557, file: !590, line: 66, column: 7)
!4603 = !DILocation(line: 66, column: 7, scope: !4557)
!4604 = !DILocation(line: 67, column: 12, scope: !4602)
!4605 = !DILocation(line: 67, column: 5, scope: !4602)
!4606 = !DILocation(line: 72, column: 9, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4557, file: !590, line: 72, column: 7)
!4608 = !DILocation(line: 72, column: 23, scope: !4607)
!4609 = !DILocation(line: 72, column: 33, scope: !4607)
!4610 = !DILocation(line: 72, column: 26, scope: !4607)
!4611 = !DILocation(line: 72, column: 59, scope: !4607)
!4612 = !DILocation(line: 73, column: 7, scope: !4607)
!4613 = !DILocation(line: 73, column: 10, scope: !4607)
!4614 = !DILocation(line: 72, column: 7, scope: !4557)
!4615 = !DILocation(line: 100, column: 12, scope: !4557)
!4616 = !DILocation(line: 105, column: 7, scope: !4557)
!4617 = !DILocation(line: 74, column: 19, scope: !4607)
!4618 = !DILocation(line: 105, column: 19, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4557, file: !590, line: 105, column: 7)
!4620 = !DILocation(line: 107, column: 13, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !590, line: 106, column: 5)
!4622 = !DILocation(line: 109, column: 5, scope: !4621)
!4623 = !DILocation(line: 112, column: 1, scope: !4557)
!4624 = !DISubprogram(name: "fileno", scope: !692, file: !692, line: 785, type: !4625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!35, !4578}
!4627 = !DISubprogram(name: "fclose", scope: !692, file: !692, line: 213, type: !4625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4628 = !DISubprogram(name: "lseek", scope: !1956, file: !1956, line: 334, type: !4629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!719, !35, !719, !35}
!4631 = distinct !DISubprogram(name: "rpl_fflush", scope: !592, file: !592, line: 129, type: !4632, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !4668)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!35, !4634}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3778, line: 7, baseType: !4636)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4636, file: !697, line: 51, baseType: !35, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4636, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4636, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4636, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4636, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4636, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4636, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4636, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4636, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4636, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4636, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4636, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4636, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4636, file: !697, line: 70, baseType: !4652, size: 64, offset: 832)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4636, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4636, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4636, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4636, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4636, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4636, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4636, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4636, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4636, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4636, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4636, file: !697, line: 93, baseType: !4652, size: 64, offset: 1344)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4636, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4636, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4636, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4636, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!4668 = !{!4669}
!4669 = !DILocalVariable(name: "stream", arg: 1, scope: !4631, file: !592, line: 129, type: !4634)
!4670 = !DILocation(line: 0, scope: !4631)
!4671 = !DILocation(line: 150, column: 14, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4631, file: !592, line: 150, column: 7)
!4673 = !DILocation(line: 150, column: 22, scope: !4672)
!4674 = !DILocation(line: 150, column: 27, scope: !4672)
!4675 = !DILocation(line: 150, column: 7, scope: !4631)
!4676 = !DILocation(line: 151, column: 12, scope: !4672)
!4677 = !DILocation(line: 151, column: 5, scope: !4672)
!4678 = !DILocalVariable(name: "fp", arg: 1, scope: !4679, file: !592, line: 41, type: !4634)
!4679 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !592, file: !592, line: 41, type: !4680, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !4682)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !4634}
!4682 = !{!4678}
!4683 = !DILocation(line: 0, scope: !4679, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 156, column: 3, scope: !4631)
!4685 = !DILocation(line: 43, column: 11, scope: !4686, inlinedAt: !4684)
!4686 = distinct !DILexicalBlock(scope: !4679, file: !592, line: 43, column: 7)
!4687 = !DILocation(line: 43, column: 18, scope: !4686, inlinedAt: !4684)
!4688 = !DILocation(line: 43, column: 7, scope: !4679, inlinedAt: !4684)
!4689 = !DILocation(line: 45, column: 5, scope: !4686, inlinedAt: !4684)
!4690 = !DILocation(line: 158, column: 10, scope: !4631)
!4691 = !DILocation(line: 158, column: 3, scope: !4631)
!4692 = !DILocation(line: 235, column: 1, scope: !4631)
!4693 = !DISubprogram(name: "fflush", scope: !692, file: !692, line: 218, type: !4694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!35, !4652}
!4696 = distinct !DISubprogram(name: "rpl_fseeko", scope: !594, file: !594, line: 28, type: !4697, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !4734)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!35, !4699, !4733, !35}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3778, line: 7, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 49, size: 1728, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4701, file: !697, line: 51, baseType: !35, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4701, file: !697, line: 54, baseType: !32, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4701, file: !697, line: 55, baseType: !32, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4701, file: !697, line: 56, baseType: !32, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4701, file: !697, line: 57, baseType: !32, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4701, file: !697, line: 58, baseType: !32, size: 64, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4701, file: !697, line: 59, baseType: !32, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4701, file: !697, line: 60, baseType: !32, size: 64, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4701, file: !697, line: 61, baseType: !32, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4701, file: !697, line: 64, baseType: !32, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4701, file: !697, line: 65, baseType: !32, size: 64, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4701, file: !697, line: 66, baseType: !32, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4701, file: !697, line: 68, baseType: !712, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4701, file: !697, line: 70, baseType: !4717, size: 64, offset: 832)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4701, file: !697, line: 72, baseType: !35, size: 32, offset: 896)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4701, file: !697, line: 73, baseType: !35, size: 32, offset: 928)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4701, file: !697, line: 74, baseType: !718, size: 64, offset: 960)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4701, file: !697, line: 77, baseType: !36, size: 16, offset: 1024)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4701, file: !697, line: 78, baseType: !722, size: 8, offset: 1040)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4701, file: !697, line: 79, baseType: !724, size: 8, offset: 1048)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4701, file: !697, line: 81, baseType: !728, size: 64, offset: 1088)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4701, file: !697, line: 89, baseType: !731, size: 64, offset: 1152)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4701, file: !697, line: 91, baseType: !733, size: 64, offset: 1216)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4701, file: !697, line: 92, baseType: !736, size: 64, offset: 1280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4701, file: !697, line: 93, baseType: !4717, size: 64, offset: 1344)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4701, file: !697, line: 94, baseType: !34, size: 64, offset: 1408)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4701, file: !697, line: 95, baseType: !96, size: 64, offset: 1472)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4701, file: !697, line: 96, baseType: !35, size: 32, offset: 1536)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4701, file: !697, line: 98, baseType: !743, size: 160, offset: 1568)
!4733 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !692, line: 63, baseType: !718)
!4734 = !{!4735, !4736, !4737, !4738}
!4735 = !DILocalVariable(name: "fp", arg: 1, scope: !4696, file: !594, line: 28, type: !4699)
!4736 = !DILocalVariable(name: "offset", arg: 2, scope: !4696, file: !594, line: 28, type: !4733)
!4737 = !DILocalVariable(name: "whence", arg: 3, scope: !4696, file: !594, line: 28, type: !35)
!4738 = !DILocalVariable(name: "pos", scope: !4739, file: !594, line: 117, type: !4733)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !594, line: 113, column: 5)
!4740 = distinct !DILexicalBlock(scope: !4696, file: !594, line: 52, column: 7)
!4741 = !DILocation(line: 0, scope: !4696)
!4742 = !DILocation(line: 52, column: 11, scope: !4740)
!4743 = !{!4428, !613, i64 16}
!4744 = !DILocation(line: 52, column: 31, scope: !4740)
!4745 = !{!4428, !613, i64 8}
!4746 = !DILocation(line: 52, column: 24, scope: !4740)
!4747 = !DILocation(line: 53, column: 7, scope: !4740)
!4748 = !DILocation(line: 53, column: 14, scope: !4740)
!4749 = !{!4428, !613, i64 40}
!4750 = !DILocation(line: 53, column: 35, scope: !4740)
!4751 = !{!4428, !613, i64 32}
!4752 = !DILocation(line: 53, column: 28, scope: !4740)
!4753 = !DILocation(line: 54, column: 7, scope: !4740)
!4754 = !DILocation(line: 54, column: 14, scope: !4740)
!4755 = !{!4428, !613, i64 72}
!4756 = !DILocation(line: 54, column: 28, scope: !4740)
!4757 = !DILocation(line: 52, column: 7, scope: !4696)
!4758 = !DILocation(line: 117, column: 26, scope: !4739)
!4759 = !DILocation(line: 117, column: 19, scope: !4739)
!4760 = !DILocation(line: 0, scope: !4739)
!4761 = !DILocation(line: 118, column: 15, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4739, file: !594, line: 118, column: 11)
!4763 = !DILocation(line: 118, column: 11, scope: !4739)
!4764 = !DILocation(line: 129, column: 11, scope: !4739)
!4765 = !DILocation(line: 129, column: 18, scope: !4739)
!4766 = !DILocation(line: 130, column: 11, scope: !4739)
!4767 = !DILocation(line: 130, column: 19, scope: !4739)
!4768 = !{!4428, !1143, i64 144}
!4769 = !DILocation(line: 161, column: 7, scope: !4739)
!4770 = !DILocation(line: 163, column: 10, scope: !4696)
!4771 = !DILocation(line: 163, column: 3, scope: !4696)
!4772 = !DILocation(line: 164, column: 1, scope: !4696)
!4773 = !DISubprogram(name: "fseeko", scope: !692, file: !692, line: 712, type: !4774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!35, !4717, !719, !35}
