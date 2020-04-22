; ModuleID = 'coreutils-8.32/src/test.bc'
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
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@argc = internal unnamed_addr global i32 0, align 4, !dbg !163
@pos = internal unnamed_addr global i32 0, align 4, !dbg !161
@.str.23 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !166
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !214
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.69 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !217
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !223
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !264
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !358
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !364
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !366
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !373
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !380
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !368
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !382
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.110 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1038 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1043, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %0, metadata !1042, metadata !DIExpression()), !dbg !1064
  %3 = icmp eq i32 %0, 0, !dbg !1065
  br i1 %3, label %9, label %4, !dbg !1066

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1067, !tbaa !1069
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !1067
  %7 = load i8*, i8** @program_name, align 8, !dbg !1067, !tbaa !1069
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #9, !dbg !1067
  br label %97, !dbg !1067

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !1073
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !1069
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !1073
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !1074
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !1069
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1074
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !1075
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1075, !tbaa !1069
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1075
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !1076
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1076, !tbaa !1069
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1076
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !1077
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1077, !tbaa !1069
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1077
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !1078
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1078, !tbaa !1069
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1078
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #9, !dbg !1079
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1079, !tbaa !1069
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1079
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #9, !dbg !1080
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1080, !tbaa !1069
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1080
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #9, !dbg !1081
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1081, !tbaa !1069
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1081
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #9, !dbg !1082
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !1069
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1082
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #9, !dbg !1083
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1083, !tbaa !1069
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1083
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !1084
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084, !tbaa !1069
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1084
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !1085
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1085, !tbaa !1069
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !1085
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !1086
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1086, !tbaa !1069
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1086
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !1087
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1087, !tbaa !1069
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !1087
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !1088
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !1069
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !1088
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !1089
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !1089
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #9, !dbg !1089
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !1047, metadata !DIExpression()) #9, !dbg !1090
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #9, !dbg !1091
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %61, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #9, !dbg !1060
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !1048, metadata !DIExpression()) #9, !dbg !1090
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1092
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  br label %63, !dbg !1093

63:                                               ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #23, !dbg !1094
  %67 = icmp eq i32 %66, 0, !dbg !1094
  br i1 %67, label %73, label %68, !dbg !1093

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !1096
  %71 = load i8*, i8** %70, align 8, !dbg !1096, !tbaa !1097
  %72 = icmp eq i8* %71, null, !dbg !1099
  br i1 %72, label %73, label %63, !dbg !1100, !llvm.loop !1101

73:                                               ; preds = %68, %63
  %74 = phi %struct.infomap* [ %69, %68 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.infomap* %74, metadata !1049, metadata !DIExpression()) #9, !dbg !1090
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !1102
  %76 = load i8*, i8** %75, align 8, !dbg !1102, !tbaa !1104
  %77 = icmp eq i8* %76, null, !dbg !1105
  %78 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %78, metadata !1048, metadata !DIExpression()) #9, !dbg !1090
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !1107
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !1107
  %81 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !1108
  call void @llvm.dbg.value(metadata i8* %81, metadata !1056, metadata !DIExpression()) #9, !dbg !1090
  %82 = icmp eq i8* %81, null, !dbg !1109
  br i1 %82, label %90, label %83, !dbg !1111

83:                                               ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #23, !dbg !1112
  %85 = icmp eq i32 %84, 0, !dbg !1112
  br i1 %85, label %90, label %86, !dbg !1113

86:                                               ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i32 5) #9, !dbg !1114
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1114, !tbaa !1069
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #9, !dbg !1114
  br label %90, !dbg !1116

90:                                               ; preds = %73, %83, %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !1117
  %92 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1117
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #9, !dbg !1118
  %94 = icmp eq i8* %78, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), !dbg !1118
  %95 = select i1 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !1118
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %93, i8* %78, i8* %95) #9, !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #9, !dbg !1119
  br label %97

97:                                               ; preds = %90, %4
  tail call void @exit(i32 %0) #24, !dbg !1120
  unreachable, !dbg !1120
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !31 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !41 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !106 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8** %1, metadata !1126, metadata !DIExpression()), !dbg !1128
  %3 = load i8*, i8** %1, align 8, !dbg !1129, !tbaa !1069
  tail call void @set_program_name(i8* %3) #9, !dbg !1130
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1131
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !1132
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !1133
  call void @llvm.dbg.value(metadata i32 2, metadata !1134, metadata !DIExpression()), !dbg !1137
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !1139, !tbaa !1141
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !1143
  store i8** %1, i8*** @argv, align 8, !dbg !1144, !tbaa !1069
  store i32 %0, i32* @argc, align 4, !dbg !1145, !tbaa !1141
  store i32 1, i32* @pos, align 4, !dbg !1146, !tbaa !1141
  %8 = icmp slt i32 %0, 2, !dbg !1147
  br i1 %8, label %26, label %9, !dbg !1149

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !1150
  %11 = tail call fastcc zeroext i1 @posixtest(i32 %10), !dbg !1151
  call void @llvm.dbg.value(metadata i1 %11, metadata !1127, metadata !DIExpression()), !dbg !1128
  %12 = load i32, i32* @pos, align 4, !dbg !1152, !tbaa !1141
  %13 = load i32, i32* @argc, align 4, !dbg !1154, !tbaa !1141
  %14 = icmp eq i32 %12, %13, !dbg !1155
  br i1 %14, label %23, label %15, !dbg !1156

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #9, !dbg !1157
  %17 = load i8**, i8*** @argv, align 8, !dbg !1158, !tbaa !1069
  %18 = load i32, i32* @pos, align 4, !dbg !1159, !tbaa !1141
  %19 = sext i32 %18 to i64, !dbg !1158
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !1158
  %21 = load i8*, i8** %20, align 8, !dbg !1158, !tbaa !1069
  %22 = tail call i8* @quote(i8* %21) #9, !dbg !1160
  tail call void (i8*, ...) @test_syntax_error(i8* %16, i8* %22) #25, !dbg !1161
  unreachable, !dbg !1161

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !1162
  %25 = zext i1 %24 to i32, !dbg !1162
  br label %26, !dbg !1162

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !1128
  ret i32 %27, !dbg !1163
}

; Function Attrs: nounwind
declare !dbg !110 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !113 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !116 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32 %0) unnamed_addr #8 !dbg !1164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1166, metadata !DIExpression()), !dbg !1168
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !1169

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !1170, !tbaa !1069
  %4 = load i32, i32* @pos, align 4, !dbg !1176, !tbaa !1141
  %5 = add nsw i32 %4, 1, !dbg !1176
  store i32 %5, i32* @pos, align 4, !dbg !1176, !tbaa !1141
  %6 = sext i32 %4 to i64, !dbg !1170
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !1170
  %8 = load i8*, i8** %7, align 8, !dbg !1170, !tbaa !1069
  %9 = load i8, i8* %8, align 1, !dbg !1170, !tbaa !1177
  %10 = icmp ne i8 %9, 0, !dbg !1178
  call void @llvm.dbg.value(metadata i1 %10, metadata !1167, metadata !DIExpression()), !dbg !1168
  br label %151, !dbg !1179

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !1180, !tbaa !1069
  %13 = load i32, i32* @pos, align 4, !dbg !1180, !tbaa !1141
  %14 = sext i32 %13 to i64, !dbg !1180
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !1180
  %16 = load i8*, i8** %15, align 8, !dbg !1180, !tbaa !1069
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %16, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #23, !dbg !1180
  %18 = icmp eq i32 %17, 0, !dbg !1180
  br i1 %18, label %19, label %27, !dbg !1186

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1192
  %20 = add nsw i32 %13, 1, !dbg !1195
  %21 = add nsw i32 %13, 2, !dbg !1196
  store i32 %21, i32* @pos, align 4, !dbg !1196, !tbaa !1141
  %22 = sext i32 %20 to i64, !dbg !1198
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !1198
  %24 = load i8*, i8** %23, align 8, !dbg !1198, !tbaa !1069
  %25 = load i8, i8* %24, align 1, !dbg !1198, !tbaa !1177
  %26 = icmp eq i8 %25, 0, !dbg !1199
  call void @llvm.dbg.value(metadata i1 %26, metadata !1184, metadata !DIExpression()) #9, !dbg !1200
  br label %151, !dbg !1201

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !1202, !tbaa !1177
  %29 = icmp eq i8 %28, 45, !dbg !1204
  br i1 %29, label %30, label %40, !dbg !1205

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1206
  %32 = load i8, i8* %31, align 1, !dbg !1206, !tbaa !1177
  %33 = icmp eq i8 %32, 0, !dbg !1207
  br i1 %33, label %40, label %34, !dbg !1208

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1209
  %36 = load i8, i8* %35, align 1, !dbg !1209, !tbaa !1177
  %37 = icmp eq i8 %36, 0, !dbg !1210
  br i1 %37, label %38, label %40, !dbg !1211

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator() #9, !dbg !1212
  call void @llvm.dbg.value(metadata i1 %39, metadata !1184, metadata !DIExpression()) #9, !dbg !1200
  br label %151

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #24, !dbg !1214
  unreachable, !dbg !1214

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1215
  call void @llvm.dbg.value(metadata i1 %42, metadata !1167, metadata !DIExpression()), !dbg !1168
  br label %151, !dbg !1216

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !1217, !tbaa !1069
  %45 = load i32, i32* @pos, align 4, !dbg !1217, !tbaa !1141
  %46 = sext i32 %45 to i64, !dbg !1217
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !1217
  %48 = load i8*, i8** %47, align 8, !dbg !1217, !tbaa !1069
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #23, !dbg !1217
  %50 = icmp eq i32 %49, 0, !dbg !1217
  br i1 %50, label %51, label %59, !dbg !1219

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1220
  %52 = add nsw i32 %45, 1, !dbg !1223
  store i32 %52, i32* @pos, align 4, !dbg !1223, !tbaa !1141
  %53 = load i32, i32* @argc, align 4, !dbg !1224
  %54 = icmp slt i32 %52, %53, !dbg !1226
  br i1 %54, label %56, label %55, !dbg !1227

55:                                               ; preds = %51
  tail call fastcc void @beyond() #24, !dbg !1228
  unreachable, !dbg !1228

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1229
  %58 = xor i1 %57, true, !dbg !1230
  call void @llvm.dbg.value(metadata i1 %58, metadata !1167, metadata !DIExpression()), !dbg !1168
  br label %151, !dbg !1231

59:                                               ; preds = %43
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #23, !dbg !1232
  %61 = icmp eq i32 %60, 0, !dbg !1232
  br i1 %61, label %62, label %107, !dbg !1234

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1235
  %64 = sext i32 %63 to i64, !dbg !1235
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !1235
  %66 = load i8*, i8** %65, align 8, !dbg !1235, !tbaa !1069
  %67 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #23, !dbg !1235
  %68 = icmp eq i32 %67, 0, !dbg !1235
  br i1 %68, label %69, label %107, !dbg !1236

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !1237
  %70 = add nsw i32 %45, 1, !dbg !1240
  store i32 %70, i32* @pos, align 4, !dbg !1240, !tbaa !1141
  %71 = sext i32 %70 to i64, !dbg !1241
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !1241
  %73 = load i8*, i8** %72, align 8, !dbg !1241, !tbaa !1069
  %74 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %73, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #23, !dbg !1241
  %75 = icmp eq i32 %74, 0, !dbg !1241
  br i1 %75, label %76, label %83, !dbg !1243

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1244
  %77 = add nsw i32 %45, 2, !dbg !1246
  store i32 %63, i32* @pos, align 4, !dbg !1247, !tbaa !1141
  %78 = sext i32 %77 to i64, !dbg !1249
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !1249
  %80 = load i8*, i8** %79, align 8, !dbg !1249, !tbaa !1069
  %81 = load i8, i8* %80, align 1, !dbg !1249, !tbaa !1177
  %82 = icmp eq i8 %81, 0, !dbg !1250
  call void @llvm.dbg.value(metadata i1 %82, metadata !1184, metadata !DIExpression()) #9, !dbg !1251
  br label %98, !dbg !1252

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !1253, !tbaa !1177
  %85 = icmp eq i8 %84, 45, !dbg !1254
  br i1 %85, label %86, label %97, !dbg !1255

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !1256
  %88 = load i8, i8* %87, align 1, !dbg !1256, !tbaa !1177
  %89 = icmp eq i8 %88, 0, !dbg !1257
  br i1 %89, label %97, label %90, !dbg !1258

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !1259
  %92 = load i8, i8* %91, align 1, !dbg !1259, !tbaa !1177
  %93 = icmp eq i8 %92, 0, !dbg !1260
  br i1 %93, label %94, label %97, !dbg !1261

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator() #9, !dbg !1262
  call void @llvm.dbg.value(metadata i1 %95, metadata !1184, metadata !DIExpression()) #9, !dbg !1251
  %96 = load i32, i32* @pos, align 4, !dbg !1263, !tbaa !1141
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #24, !dbg !1265
  unreachable, !dbg !1265

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1263
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1184, metadata !DIExpression()) #9, !dbg !1251
  call void @llvm.dbg.value(metadata i1 %100, metadata !1167, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !1266
  %101 = add nsw i32 %99, 1, !dbg !1263
  store i32 %101, i32* @pos, align 4, !dbg !1263, !tbaa !1141
  br label %151, !dbg !1267

102:                                              ; preds = %1
  %103 = icmp slt i32 %0, 1, !dbg !1268
  br i1 %103, label %106, label %104, !dbg !1270

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !1271, !tbaa !1141
  br label %107, !dbg !1270

106:                                              ; preds = %102
  tail call void @abort() #24, !dbg !1275
  unreachable, !dbg !1275

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1271
  %109 = load i32, i32* @argc, align 4, !dbg !1276, !tbaa !1141
  %110 = icmp slt i32 %108, %109, !dbg !1277
  br i1 %110, label %111, label %116, !dbg !1278

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 undef, metadata !1279, metadata !DIExpression()) #9, !dbg !1282
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %112 = tail call fastcc zeroext i1 @term() #9, !dbg !1290
  call void @llvm.dbg.value(metadata i1 %112, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %113 = load i32, i32* @pos, align 4, !dbg !1292, !tbaa !1141
  %114 = load i32, i32* @argc, align 4, !dbg !1294, !tbaa !1141
  %115 = icmp slt i32 %113, %114, !dbg !1295
  br i1 %115, label %117, label %137, !dbg !1296

116:                                              ; preds = %107
  tail call fastcc void @beyond() #24, !dbg !1297
  unreachable, !dbg !1297

117:                                              ; preds = %111, %145
  %118 = phi i32 [ %148, %145 ], [ %113, %111 ]
  %119 = phi i1 [ %147, %145 ], [ %112, %111 ]
  %120 = phi i1 [ %142, %145 ], [ false, %111 ]
  br label %121, !dbg !1296

121:                                              ; preds = %117, %130
  %122 = phi i32 [ %118, %117 ], [ %134, %130 ]
  %123 = phi i1 [ %119, %117 ], [ %133, %130 ]
  %124 = load i8**, i8*** @argv, align 8, !dbg !1298, !tbaa !1069
  %125 = sext i32 %122 to i64, !dbg !1298
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125, !dbg !1298
  %127 = load i8*, i8** %126, align 8, !dbg !1298, !tbaa !1069
  %128 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1298
  %129 = icmp eq i32 %128, 0, !dbg !1298
  br i1 %129, label %130, label %141, !dbg !1299

130:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1300
  %131 = add nsw i32 %122, 1, !dbg !1302
  store i32 %131, i32* @pos, align 4, !dbg !1302, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %132 = tail call fastcc zeroext i1 @term() #9, !dbg !1290
  %133 = and i1 %123, %132, !dbg !1303
  call void @llvm.dbg.value(metadata i1 %133, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %134 = load i32, i32* @pos, align 4, !dbg !1292, !tbaa !1141
  %135 = load i32, i32* @argc, align 4, !dbg !1294, !tbaa !1141
  %136 = icmp slt i32 %134, %135, !dbg !1295
  br i1 %136, label %121, label %137, !dbg !1296, !llvm.loop !1304

137:                                              ; preds = %145, %130, %111
  %138 = phi i1 [ false, %111 ], [ %120, %130 ], [ %142, %145 ], !dbg !1282
  %139 = phi i1 [ %112, %111 ], [ %133, %130 ], [ %147, %145 ], !dbg !1303
  %140 = or i1 %138, %139, !dbg !1307
  call void @llvm.dbg.value(metadata i1 %140, metadata !1279, metadata !DIExpression()) #9, !dbg !1282
  br label %151

141:                                              ; preds = %121
  %142 = or i1 %120, %123, !dbg !1307
  call void @llvm.dbg.value(metadata i1 %140, metadata !1279, metadata !DIExpression()) #9, !dbg !1282
  %143 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !1308
  %144 = icmp eq i32 %143, 0, !dbg !1308
  br i1 %144, label %145, label %151, !dbg !1310

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1311
  %146 = add nsw i32 %122, 1, !dbg !1313
  store i32 %146, i32* @pos, align 4, !dbg !1313, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 undef, metadata !1279, metadata !DIExpression()) #9, !dbg !1282
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %147 = tail call fastcc zeroext i1 @term() #9, !dbg !1290
  call void @llvm.dbg.value(metadata i1 %147, metadata !1284, metadata !DIExpression()) #9, !dbg !1287
  %148 = load i32, i32* @pos, align 4, !dbg !1292, !tbaa !1141
  %149 = load i32, i32* @argc, align 4, !dbg !1294, !tbaa !1141
  %150 = icmp slt i32 %148, %149, !dbg !1295
  br i1 %150, label %117, label %137, !dbg !1296, !llvm.loop !1314

151:                                              ; preds = %141, %137, %38, %19, %98, %56, %41, %2
  %152 = phi i1 [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ], [ %140, %137 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i1 %152, metadata !1167, metadata !DIExpression()), !dbg !1168
  ret i1 %152, !dbg !1317
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8* %0, ...) unnamed_addr #0 !dbg !1318 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1322, metadata !DIExpression()), !dbg !1329
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1330
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9, !dbg !1330
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !1323, metadata !DIExpression()), !dbg !1331
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1332
  call void @llvm.va_start(i8* nonnull %3), !dbg !1332
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !1333
  call void @exit(i32 2) #24, !dbg !1334
  unreachable, !dbg !1334
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #8 !dbg !1335 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1390
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #9, !dbg !1390
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1337, metadata !DIExpression()), !dbg !1391
  %3 = load i8**, i8*** @argv, align 8, !dbg !1392, !tbaa !1069
  %4 = load i32, i32* @pos, align 4, !dbg !1393, !tbaa !1141
  %5 = sext i32 %4 to i64, !dbg !1392
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1392
  %7 = load i8*, i8** %6, align 8, !dbg !1392, !tbaa !1069
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1392
  %9 = load i8, i8* %8, align 1, !dbg !1392, !tbaa !1177
  %10 = sext i8 %9 to i32, !dbg !1392
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
  ], !dbg !1394

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #9, !dbg !1395
  %13 = load i8**, i8*** @argv, align 8, !dbg !1396, !tbaa !1069
  %14 = load i32, i32* @pos, align 4, !dbg !1397, !tbaa !1141
  %15 = sext i32 %14 to i64, !dbg !1396
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !1396
  %17 = load i8*, i8** %16, align 8, !dbg !1396, !tbaa !1069
  %18 = tail call i8* @quote(i8* %17) #9, !dbg !1398
  tail call void (i8*, ...) @test_syntax_error(i8* %12, i8* %18) #25, !dbg !1399
  unreachable, !dbg !1399

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1400
  %20 = add nsw i32 %4, 1, !dbg !1404
  store i32 %20, i32* @pos, align 4, !dbg !1404, !tbaa !1141
  %21 = load i32, i32* @argc, align 4, !dbg !1405
  %22 = icmp slt i32 %20, %21, !dbg !1406
  br i1 %22, label %24, label %23, !dbg !1407

23:                                               ; preds = %19
  tail call fastcc void @beyond() #24, !dbg !1408
  unreachable, !dbg !1408

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1409
  store i32 %25, i32* @pos, align 4, !dbg !1409, !tbaa !1141
  %26 = sext i32 %20 to i64, !dbg !1410
  %27 = getelementptr inbounds i8*, i8** %3, i64 %26, !dbg !1410
  %28 = load i8*, i8** %27, align 8, !dbg !1410, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %28, metadata !1411, metadata !DIExpression()) #9, !dbg !1419
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1419
  %29 = call i32 @__xstat(i32 1, i8* nonnull %28, %struct.stat* nonnull %1) #9, !dbg !1421
  %30 = icmp eq i32 %29, 0, !dbg !1422
  br label %376, !dbg !1423

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1424
  %32 = add nsw i32 %4, 1, !dbg !1427
  store i32 %32, i32* @pos, align 4, !dbg !1427, !tbaa !1141
  %33 = load i32, i32* @argc, align 4, !dbg !1428
  %34 = icmp slt i32 %32, %33, !dbg !1429
  br i1 %34, label %36, label %35, !dbg !1430

35:                                               ; preds = %31
  tail call fastcc void @beyond() #24, !dbg !1431
  unreachable, !dbg !1431

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1432
  store i32 %37, i32* @pos, align 4, !dbg !1432, !tbaa !1141
  %38 = sext i32 %32 to i64, !dbg !1433
  %39 = getelementptr inbounds i8*, i8** %3, i64 %38, !dbg !1433
  %40 = load i8*, i8** %39, align 8, !dbg !1433, !tbaa !1069
  %41 = tail call i32 @euidaccess(i8* %40, i32 4) #9, !dbg !1434
  %42 = icmp eq i32 %41, 0, !dbg !1435
  br label %376, !dbg !1436

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1437
  %44 = add nsw i32 %4, 1, !dbg !1440
  store i32 %44, i32* @pos, align 4, !dbg !1440, !tbaa !1141
  %45 = load i32, i32* @argc, align 4, !dbg !1441
  %46 = icmp slt i32 %44, %45, !dbg !1442
  br i1 %46, label %48, label %47, !dbg !1443

47:                                               ; preds = %43
  tail call fastcc void @beyond() #24, !dbg !1444
  unreachable, !dbg !1444

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1445
  store i32 %49, i32* @pos, align 4, !dbg !1445, !tbaa !1141
  %50 = sext i32 %44 to i64, !dbg !1446
  %51 = getelementptr inbounds i8*, i8** %3, i64 %50, !dbg !1446
  %52 = load i8*, i8** %51, align 8, !dbg !1446, !tbaa !1069
  %53 = tail call i32 @euidaccess(i8* %52, i32 2) #9, !dbg !1447
  %54 = icmp eq i32 %53, 0, !dbg !1448
  br label %376, !dbg !1449

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1450
  %56 = add nsw i32 %4, 1, !dbg !1453
  store i32 %56, i32* @pos, align 4, !dbg !1453, !tbaa !1141
  %57 = load i32, i32* @argc, align 4, !dbg !1454
  %58 = icmp slt i32 %56, %57, !dbg !1455
  br i1 %58, label %60, label %59, !dbg !1456

59:                                               ; preds = %55
  tail call fastcc void @beyond() #24, !dbg !1457
  unreachable, !dbg !1457

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1458
  store i32 %61, i32* @pos, align 4, !dbg !1458, !tbaa !1141
  %62 = sext i32 %56 to i64, !dbg !1459
  %63 = getelementptr inbounds i8*, i8** %3, i64 %62, !dbg !1459
  %64 = load i8*, i8** %63, align 8, !dbg !1459, !tbaa !1069
  %65 = tail call i32 @euidaccess(i8* %64, i32 1) #9, !dbg !1460
  %66 = icmp eq i32 %65, 0, !dbg !1461
  br label %376, !dbg !1462

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1463
  %68 = add nsw i32 %4, 1, !dbg !1466
  store i32 %68, i32* @pos, align 4, !dbg !1466, !tbaa !1141
  %69 = load i32, i32* @argc, align 4, !dbg !1467
  %70 = icmp slt i32 %68, %69, !dbg !1468
  br i1 %70, label %72, label %71, !dbg !1469

71:                                               ; preds = %67
  tail call fastcc void @beyond() #24, !dbg !1470
  unreachable, !dbg !1470

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1471
  store i32 %73, i32* @pos, align 4, !dbg !1471, !tbaa !1141
  %74 = sext i32 %68 to i64, !dbg !1472
  %75 = getelementptr inbounds i8*, i8** %3, i64 %74, !dbg !1472
  %76 = load i8*, i8** %75, align 8, !dbg !1472, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %76, metadata !1411, metadata !DIExpression()) #9, !dbg !1474
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1474
  %77 = call i32 @__xstat(i32 1, i8* nonnull %76, %struct.stat* nonnull %1) #9, !dbg !1476
  %78 = icmp eq i32 %77, 0, !dbg !1477
  br i1 %78, label %79, label %376, !dbg !1478

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1479, metadata !DIExpression()), !dbg !1487
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 0, !dbg !1489
  %81 = load i64, i64* %80, align 8, !dbg !1489, !tbaa.struct !1490
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 1, !dbg !1489
  %83 = load i64, i64* %82, align 8, !dbg !1489, !tbaa.struct !1490
  call void @llvm.dbg.value(metadata i64 %81, metadata !1374, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %83, metadata !1374, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1493
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1494, metadata !DIExpression()), !dbg !1497
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 0, !dbg !1499
  %85 = load i64, i64* %84, align 8, !dbg !1499, !tbaa.struct !1490
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 1, !dbg !1499
  %87 = load i64, i64* %86, align 8, !dbg !1499, !tbaa.struct !1490
  call void @llvm.dbg.value(metadata i64 %85, metadata !1377, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %87, metadata !1377, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %85, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %87, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %81, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %83, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1506
  %88 = icmp slt i64 %85, %81, !dbg !1508
  br i1 %88, label %376, label %89, !dbg !1510

89:                                               ; preds = %79
  %90 = icmp sgt i64 %85, %81, !dbg !1511
  br i1 %90, label %376, label %91, !dbg !1513

91:                                               ; preds = %89
  %92 = icmp sgt i64 %87, -2, !dbg !1514
  call void @llvm.assume(i1 %92) #9, !dbg !1514
  %93 = icmp slt i64 %87, 2000000001, !dbg !1514
  call void @llvm.assume(i1 %93) #9, !dbg !1514
  %94 = icmp sgt i64 %83, -2, !dbg !1515
  call void @llvm.assume(i1 %94) #9, !dbg !1515
  %95 = icmp slt i64 %83, 2000000001, !dbg !1515
  call void @llvm.assume(i1 %95) #9, !dbg !1515
  %96 = sub nsw i64 %87, %83, !dbg !1516
  %97 = trunc i64 %96 to i32, !dbg !1517
  %98 = icmp sgt i32 %97, 0, !dbg !1518
  br label %376, !dbg !1518

99:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1519
  %100 = add nsw i32 %4, 1, !dbg !1522
  store i32 %100, i32* @pos, align 4, !dbg !1522, !tbaa !1141
  %101 = load i32, i32* @argc, align 4, !dbg !1523
  %102 = icmp slt i32 %100, %101, !dbg !1524
  br i1 %102, label %104, label %103, !dbg !1525

103:                                              ; preds = %99
  tail call fastcc void @beyond() #24, !dbg !1526
  unreachable, !dbg !1526

104:                                              ; preds = %99
  %105 = add nsw i32 %4, 2, !dbg !1527
  store i32 %105, i32* @pos, align 4, !dbg !1527, !tbaa !1141
  %106 = sext i32 %100 to i64, !dbg !1528
  %107 = getelementptr inbounds i8*, i8** %3, i64 %106, !dbg !1528
  %108 = load i8*, i8** %107, align 8, !dbg !1528, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %108, metadata !1411, metadata !DIExpression()) #9, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1530
  %109 = call i32 @__xstat(i32 1, i8* nonnull %108, %struct.stat* nonnull %1) #9, !dbg !1532
  %110 = icmp eq i32 %109, 0, !dbg !1533
  br i1 %110, label %111, label %376, !dbg !1534

111:                                              ; preds = %104
  %112 = tail call i32* @__errno_location() #26, !dbg !1535
  store i32 0, i32* %112, align 4, !dbg !1536, !tbaa !1141
  %113 = call i32 @geteuid() #9, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %113, metadata !1378, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 -1, metadata !1382, metadata !DIExpression()), !dbg !1538
  %114 = icmp eq i32 %113, -1, !dbg !1539
  br i1 %114, label %115, label %118, !dbg !1540

115:                                              ; preds = %111
  %116 = load i32, i32* %112, align 4, !dbg !1541, !tbaa !1141
  %117 = icmp eq i32 %116, 0, !dbg !1541
  br i1 %117, label %118, label %376, !dbg !1542

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1543
  %120 = load i32, i32* %119, align 4, !dbg !1543, !tbaa !1544
  %121 = icmp eq i32 %113, %120, !dbg !1547
  br label %376

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1548
  %123 = add nsw i32 %4, 1, !dbg !1551
  store i32 %123, i32* @pos, align 4, !dbg !1551, !tbaa !1141
  %124 = load i32, i32* @argc, align 4, !dbg !1552
  %125 = icmp slt i32 %123, %124, !dbg !1553
  br i1 %125, label %127, label %126, !dbg !1554

126:                                              ; preds = %122
  tail call fastcc void @beyond() #24, !dbg !1555
  unreachable, !dbg !1555

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1556
  store i32 %128, i32* @pos, align 4, !dbg !1556, !tbaa !1141
  %129 = sext i32 %123 to i64, !dbg !1557
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1557
  %131 = load i8*, i8** %130, align 8, !dbg !1557, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %131, metadata !1411, metadata !DIExpression()) #9, !dbg !1559
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1559
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #9, !dbg !1561
  %133 = icmp eq i32 %132, 0, !dbg !1562
  br i1 %133, label %134, label %376, !dbg !1563

134:                                              ; preds = %127
  %135 = tail call i32* @__errno_location() #26, !dbg !1564
  store i32 0, i32* %135, align 4, !dbg !1565, !tbaa !1141
  %136 = call i32 @getegid() #9, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %136, metadata !1383, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 -1, metadata !1386, metadata !DIExpression()), !dbg !1567
  %137 = icmp eq i32 %136, -1, !dbg !1568
  br i1 %137, label %138, label %141, !dbg !1569

138:                                              ; preds = %134
  %139 = load i32, i32* %135, align 4, !dbg !1570, !tbaa !1141
  %140 = icmp eq i32 %139, 0, !dbg !1570
  br i1 %140, label %141, label %376, !dbg !1571

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1572
  %143 = load i32, i32* %142, align 8, !dbg !1572, !tbaa !1573
  %144 = icmp eq i32 %136, %143, !dbg !1574
  br label %376

145:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1575
  %146 = add nsw i32 %4, 1, !dbg !1578
  store i32 %146, i32* @pos, align 4, !dbg !1578, !tbaa !1141
  %147 = load i32, i32* @argc, align 4, !dbg !1579
  %148 = icmp slt i32 %146, %147, !dbg !1580
  br i1 %148, label %150, label %149, !dbg !1581

149:                                              ; preds = %145
  tail call fastcc void @beyond() #24, !dbg !1582
  unreachable, !dbg !1582

150:                                              ; preds = %145
  %151 = add nsw i32 %4, 2, !dbg !1583
  store i32 %151, i32* @pos, align 4, !dbg !1583, !tbaa !1141
  %152 = sext i32 %146 to i64, !dbg !1584
  %153 = getelementptr inbounds i8*, i8** %3, i64 %152, !dbg !1584
  %154 = load i8*, i8** %153, align 8, !dbg !1584, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %154, metadata !1411, metadata !DIExpression()) #9, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1585
  %155 = call i32 @__xstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %1) #9, !dbg !1587
  %156 = icmp eq i32 %155, 0, !dbg !1588
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1589
  %158 = load i32, i32* %157, align 8, !dbg !1589
  %159 = and i32 %158, 61440, !dbg !1589
  %160 = icmp eq i32 %159, 32768, !dbg !1589
  %161 = and i1 %156, %160, !dbg !1589
  br label %376, !dbg !1590

162:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1591
  %163 = add nsw i32 %4, 1, !dbg !1594
  store i32 %163, i32* @pos, align 4, !dbg !1594, !tbaa !1141
  %164 = load i32, i32* @argc, align 4, !dbg !1595
  %165 = icmp slt i32 %163, %164, !dbg !1596
  br i1 %165, label %167, label %166, !dbg !1597

166:                                              ; preds = %162
  tail call fastcc void @beyond() #24, !dbg !1598
  unreachable, !dbg !1598

167:                                              ; preds = %162
  %168 = add nsw i32 %4, 2, !dbg !1599
  store i32 %168, i32* @pos, align 4, !dbg !1599, !tbaa !1141
  %169 = sext i32 %163 to i64, !dbg !1600
  %170 = getelementptr inbounds i8*, i8** %3, i64 %169, !dbg !1600
  %171 = load i8*, i8** %170, align 8, !dbg !1600, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %171, metadata !1411, metadata !DIExpression()) #9, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1601
  %172 = call i32 @__xstat(i32 1, i8* nonnull %171, %struct.stat* nonnull %1) #9, !dbg !1603
  %173 = icmp eq i32 %172, 0, !dbg !1604
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1605
  %175 = load i32, i32* %174, align 8, !dbg !1605
  %176 = and i32 %175, 61440, !dbg !1605
  %177 = icmp eq i32 %176, 16384, !dbg !1605
  %178 = and i1 %173, %177, !dbg !1605
  br label %376, !dbg !1606

179:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1607
  %180 = add nsw i32 %4, 1, !dbg !1610
  store i32 %180, i32* @pos, align 4, !dbg !1610, !tbaa !1141
  %181 = load i32, i32* @argc, align 4, !dbg !1611
  %182 = icmp slt i32 %180, %181, !dbg !1612
  br i1 %182, label %184, label %183, !dbg !1613

183:                                              ; preds = %179
  tail call fastcc void @beyond() #24, !dbg !1614
  unreachable, !dbg !1614

184:                                              ; preds = %179
  %185 = add nsw i32 %4, 2, !dbg !1615
  store i32 %185, i32* @pos, align 4, !dbg !1615, !tbaa !1141
  %186 = sext i32 %180 to i64, !dbg !1616
  %187 = getelementptr inbounds i8*, i8** %3, i64 %186, !dbg !1616
  %188 = load i8*, i8** %187, align 8, !dbg !1616, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %188, metadata !1411, metadata !DIExpression()) #9, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1617
  %189 = call i32 @__xstat(i32 1, i8* nonnull %188, %struct.stat* nonnull %1) #9, !dbg !1619
  %190 = icmp eq i32 %189, 0, !dbg !1620
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1621
  %192 = load i64, i64* %191, align 8, !dbg !1621
  %193 = icmp sgt i64 %192, 0, !dbg !1621
  %194 = and i1 %190, %193, !dbg !1621
  br label %376, !dbg !1622

195:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1623
  %196 = add nsw i32 %4, 1, !dbg !1626
  store i32 %196, i32* @pos, align 4, !dbg !1626, !tbaa !1141
  %197 = load i32, i32* @argc, align 4, !dbg !1627
  %198 = icmp slt i32 %196, %197, !dbg !1628
  br i1 %198, label %200, label %199, !dbg !1629

199:                                              ; preds = %195
  tail call fastcc void @beyond() #24, !dbg !1630
  unreachable, !dbg !1630

200:                                              ; preds = %195
  %201 = add nsw i32 %4, 2, !dbg !1631
  store i32 %201, i32* @pos, align 4, !dbg !1631, !tbaa !1141
  %202 = sext i32 %196 to i64, !dbg !1632
  %203 = getelementptr inbounds i8*, i8** %3, i64 %202, !dbg !1632
  %204 = load i8*, i8** %203, align 8, !dbg !1632, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %204, metadata !1411, metadata !DIExpression()) #9, !dbg !1633
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1633
  %205 = call i32 @__xstat(i32 1, i8* nonnull %204, %struct.stat* nonnull %1) #9, !dbg !1635
  %206 = icmp eq i32 %205, 0, !dbg !1636
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1637
  %208 = load i32, i32* %207, align 8, !dbg !1637
  %209 = and i32 %208, 61440, !dbg !1637
  %210 = icmp eq i32 %209, 49152, !dbg !1637
  %211 = and i1 %206, %210, !dbg !1637
  br label %376, !dbg !1638

212:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1639
  %213 = add nsw i32 %4, 1, !dbg !1642
  store i32 %213, i32* @pos, align 4, !dbg !1642, !tbaa !1141
  %214 = load i32, i32* @argc, align 4, !dbg !1643
  %215 = icmp slt i32 %213, %214, !dbg !1644
  br i1 %215, label %217, label %216, !dbg !1645

216:                                              ; preds = %212
  tail call fastcc void @beyond() #24, !dbg !1646
  unreachable, !dbg !1646

217:                                              ; preds = %212
  %218 = add nsw i32 %4, 2, !dbg !1647
  store i32 %218, i32* @pos, align 4, !dbg !1647, !tbaa !1141
  %219 = sext i32 %213 to i64, !dbg !1648
  %220 = getelementptr inbounds i8*, i8** %3, i64 %219, !dbg !1648
  %221 = load i8*, i8** %220, align 8, !dbg !1648, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %221, metadata !1411, metadata !DIExpression()) #9, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1649
  %222 = call i32 @__xstat(i32 1, i8* nonnull %221, %struct.stat* nonnull %1) #9, !dbg !1651
  %223 = icmp eq i32 %222, 0, !dbg !1652
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1653
  %225 = load i32, i32* %224, align 8, !dbg !1653
  %226 = and i32 %225, 61440, !dbg !1653
  %227 = icmp eq i32 %226, 8192, !dbg !1653
  %228 = and i1 %223, %227, !dbg !1653
  br label %376, !dbg !1654

229:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1655
  %230 = add nsw i32 %4, 1, !dbg !1658
  store i32 %230, i32* @pos, align 4, !dbg !1658, !tbaa !1141
  %231 = load i32, i32* @argc, align 4, !dbg !1659
  %232 = icmp slt i32 %230, %231, !dbg !1660
  br i1 %232, label %234, label %233, !dbg !1661

233:                                              ; preds = %229
  tail call fastcc void @beyond() #24, !dbg !1662
  unreachable, !dbg !1662

234:                                              ; preds = %229
  %235 = add nsw i32 %4, 2, !dbg !1663
  store i32 %235, i32* @pos, align 4, !dbg !1663, !tbaa !1141
  %236 = sext i32 %230 to i64, !dbg !1664
  %237 = getelementptr inbounds i8*, i8** %3, i64 %236, !dbg !1664
  %238 = load i8*, i8** %237, align 8, !dbg !1664, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %238, metadata !1411, metadata !DIExpression()) #9, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1665
  %239 = call i32 @__xstat(i32 1, i8* nonnull %238, %struct.stat* nonnull %1) #9, !dbg !1667
  %240 = icmp eq i32 %239, 0, !dbg !1668
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1669
  %242 = load i32, i32* %241, align 8, !dbg !1669
  %243 = and i32 %242, 61440, !dbg !1669
  %244 = icmp eq i32 %243, 24576, !dbg !1669
  %245 = and i1 %240, %244, !dbg !1669
  br label %376, !dbg !1670

246:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1671
  %247 = add nsw i32 %4, 1, !dbg !1674
  store i32 %247, i32* @pos, align 4, !dbg !1674, !tbaa !1141
  %248 = load i32, i32* @argc, align 4, !dbg !1675
  %249 = icmp slt i32 %247, %248, !dbg !1676
  br i1 %249, label %251, label %250, !dbg !1677

250:                                              ; preds = %246
  tail call fastcc void @beyond() #24, !dbg !1678
  unreachable, !dbg !1678

251:                                              ; preds = %246
  %252 = add nsw i32 %4, 2, !dbg !1679
  store i32 %252, i32* @pos, align 4, !dbg !1679, !tbaa !1141
  %253 = sext i32 %247 to i64, !dbg !1680
  %254 = getelementptr inbounds i8*, i8** %3, i64 %253, !dbg !1680
  %255 = load i8*, i8** %254, align 8, !dbg !1680, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %255, metadata !1411, metadata !DIExpression()) #9, !dbg !1681
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1681
  %256 = call i32 @__xstat(i32 1, i8* nonnull %255, %struct.stat* nonnull %1) #9, !dbg !1683
  %257 = icmp eq i32 %256, 0, !dbg !1684
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1685
  %259 = load i32, i32* %258, align 8, !dbg !1685
  %260 = and i32 %259, 61440, !dbg !1685
  %261 = icmp eq i32 %260, 4096, !dbg !1685
  %262 = and i1 %257, %261, !dbg !1685
  br label %376, !dbg !1686

263:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1687
  %264 = add nsw i32 %4, 1, !dbg !1690
  store i32 %264, i32* @pos, align 4, !dbg !1690, !tbaa !1141
  %265 = load i32, i32* @argc, align 4, !dbg !1691
  %266 = icmp slt i32 %264, %265, !dbg !1692
  br i1 %266, label %268, label %267, !dbg !1693

267:                                              ; preds = %263
  tail call fastcc void @beyond() #24, !dbg !1694
  unreachable, !dbg !1694

268:                                              ; preds = %263
  %269 = add nsw i32 %4, 2, !dbg !1695
  store i32 %269, i32* @pos, align 4, !dbg !1695, !tbaa !1141
  %270 = sext i32 %264 to i64, !dbg !1696
  %271 = getelementptr inbounds i8*, i8** %3, i64 %270, !dbg !1696
  %272 = load i8*, i8** %271, align 8, !dbg !1696, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %272, metadata !1697, metadata !DIExpression()) #9, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1700, metadata !DIExpression()) #9, !dbg !1701
  %273 = call i32 @__lxstat(i32 1, i8* nonnull %272, %struct.stat* nonnull %1) #9, !dbg !1703
  %274 = icmp eq i32 %273, 0, !dbg !1704
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1705
  %276 = load i32, i32* %275, align 8, !dbg !1705
  %277 = and i32 %276, 61440, !dbg !1705
  %278 = icmp eq i32 %277, 40960, !dbg !1705
  %279 = and i1 %274, %278, !dbg !1705
  br label %376, !dbg !1706

280:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1707
  %281 = add nsw i32 %4, 1, !dbg !1710
  store i32 %281, i32* @pos, align 4, !dbg !1710, !tbaa !1141
  %282 = load i32, i32* @argc, align 4, !dbg !1711
  %283 = icmp slt i32 %281, %282, !dbg !1712
  br i1 %283, label %285, label %284, !dbg !1713

284:                                              ; preds = %280
  tail call fastcc void @beyond() #24, !dbg !1714
  unreachable, !dbg !1714

285:                                              ; preds = %280
  %286 = add nsw i32 %4, 2, !dbg !1715
  store i32 %286, i32* @pos, align 4, !dbg !1715, !tbaa !1141
  %287 = sext i32 %281 to i64, !dbg !1716
  %288 = getelementptr inbounds i8*, i8** %3, i64 %287, !dbg !1716
  %289 = load i8*, i8** %288, align 8, !dbg !1716, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %289, metadata !1411, metadata !DIExpression()) #9, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1717
  %290 = call i32 @__xstat(i32 1, i8* nonnull %289, %struct.stat* nonnull %1) #9, !dbg !1719
  %291 = icmp eq i32 %290, 0, !dbg !1720
  %292 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1721
  %293 = load i32, i32* %292, align 8, !dbg !1721
  %294 = and i32 %293, 2048, !dbg !1721
  %295 = icmp ne i32 %294, 0, !dbg !1721
  %296 = and i1 %291, %295, !dbg !1721
  br label %376, !dbg !1722

297:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1723
  %298 = add nsw i32 %4, 1, !dbg !1726
  store i32 %298, i32* @pos, align 4, !dbg !1726, !tbaa !1141
  %299 = load i32, i32* @argc, align 4, !dbg !1727
  %300 = icmp slt i32 %298, %299, !dbg !1728
  br i1 %300, label %302, label %301, !dbg !1729

301:                                              ; preds = %297
  tail call fastcc void @beyond() #24, !dbg !1730
  unreachable, !dbg !1730

302:                                              ; preds = %297
  %303 = add nsw i32 %4, 2, !dbg !1731
  store i32 %303, i32* @pos, align 4, !dbg !1731, !tbaa !1141
  %304 = sext i32 %298 to i64, !dbg !1732
  %305 = getelementptr inbounds i8*, i8** %3, i64 %304, !dbg !1732
  %306 = load i8*, i8** %305, align 8, !dbg !1732, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %306, metadata !1411, metadata !DIExpression()) #9, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1733
  %307 = call i32 @__xstat(i32 1, i8* nonnull %306, %struct.stat* nonnull %1) #9, !dbg !1735
  %308 = icmp eq i32 %307, 0, !dbg !1736
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1737
  %310 = load i32, i32* %309, align 8, !dbg !1737
  %311 = and i32 %310, 1024, !dbg !1737
  %312 = icmp ne i32 %311, 0, !dbg !1737
  %313 = and i1 %308, %312, !dbg !1737
  br label %376, !dbg !1738

314:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1739
  %315 = add nsw i32 %4, 1, !dbg !1742
  store i32 %315, i32* @pos, align 4, !dbg !1742, !tbaa !1141
  %316 = load i32, i32* @argc, align 4, !dbg !1743
  %317 = icmp slt i32 %315, %316, !dbg !1744
  br i1 %317, label %319, label %318, !dbg !1745

318:                                              ; preds = %314
  tail call fastcc void @beyond() #24, !dbg !1746
  unreachable, !dbg !1746

319:                                              ; preds = %314
  %320 = add nsw i32 %4, 2, !dbg !1747
  store i32 %320, i32* @pos, align 4, !dbg !1747, !tbaa !1141
  %321 = sext i32 %315 to i64, !dbg !1748
  %322 = getelementptr inbounds i8*, i8** %3, i64 %321, !dbg !1748
  %323 = load i8*, i8** %322, align 8, !dbg !1748, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %323, metadata !1411, metadata !DIExpression()) #9, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1418, metadata !DIExpression()) #9, !dbg !1749
  %324 = call i32 @__xstat(i32 1, i8* nonnull %323, %struct.stat* nonnull %1) #9, !dbg !1751
  %325 = icmp eq i32 %324, 0, !dbg !1752
  %326 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1753
  %327 = load i32, i32* %326, align 8, !dbg !1753
  %328 = and i32 %327, 512, !dbg !1753
  %329 = icmp ne i32 %328, 0, !dbg !1753
  %330 = and i1 %325, %329, !dbg !1753
  br label %376, !dbg !1754

331:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1755
  %332 = add nsw i32 %4, 1, !dbg !1758
  store i32 %332, i32* @pos, align 4, !dbg !1758, !tbaa !1141
  %333 = load i32, i32* @argc, align 4, !dbg !1759
  %334 = icmp slt i32 %332, %333, !dbg !1760
  br i1 %334, label %336, label %335, !dbg !1761

335:                                              ; preds = %331
  tail call fastcc void @beyond() #24, !dbg !1762
  unreachable, !dbg !1762

336:                                              ; preds = %331
  %337 = add nsw i32 %4, 2, !dbg !1763
  store i32 %337, i32* @pos, align 4, !dbg !1763, !tbaa !1141
  %338 = sext i32 %332 to i64, !dbg !1764
  %339 = getelementptr inbounds i8*, i8** %3, i64 %338, !dbg !1764
  %340 = load i8*, i8** %339, align 8, !dbg !1764, !tbaa !1069
  %341 = tail call fastcc i8* @find_int(i8* %340), !dbg !1765
  call void @llvm.dbg.value(metadata i8* %341, metadata !1389, metadata !DIExpression()), !dbg !1766
  %342 = tail call i32* @__errno_location() #26, !dbg !1767
  store i32 0, i32* %342, align 4, !dbg !1768, !tbaa !1141
  %343 = tail call i64 @strtol(i8* nocapture %341, i8** null, i32 10) #9, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %343, metadata !1387, metadata !DIExpression()), !dbg !1766
  %344 = load i32, i32* %342, align 4, !dbg !1770, !tbaa !1141
  %345 = icmp ne i32 %344, 34, !dbg !1771
  %346 = icmp ult i64 %343, 2147483648, !dbg !1772
  %347 = and i1 %346, %345, !dbg !1772
  br i1 %347, label %348, label %376, !dbg !1772

348:                                              ; preds = %336
  %349 = trunc i64 %343 to i32, !dbg !1773
  %350 = tail call i32 @isatty(i32 %349) #9, !dbg !1774
  %351 = icmp ne i32 %350, 0, !dbg !1775
  br label %376

352:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1776
  %353 = add nsw i32 %4, 1, !dbg !1779
  store i32 %353, i32* @pos, align 4, !dbg !1779, !tbaa !1141
  %354 = load i32, i32* @argc, align 4, !dbg !1780
  %355 = icmp slt i32 %353, %354, !dbg !1781
  br i1 %355, label %357, label %356, !dbg !1782

356:                                              ; preds = %352
  tail call fastcc void @beyond() #24, !dbg !1783
  unreachable, !dbg !1783

357:                                              ; preds = %352
  %358 = add nsw i32 %4, 2, !dbg !1784
  store i32 %358, i32* @pos, align 4, !dbg !1784, !tbaa !1141
  %359 = sext i32 %353 to i64, !dbg !1785
  %360 = getelementptr inbounds i8*, i8** %3, i64 %359, !dbg !1785
  %361 = load i8*, i8** %360, align 8, !dbg !1785, !tbaa !1069
  %362 = load i8, i8* %361, align 1, !dbg !1785, !tbaa !1177
  %363 = icmp ne i8 %362, 0, !dbg !1786
  br label %376, !dbg !1787

364:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1788
  %365 = add nsw i32 %4, 1, !dbg !1791
  store i32 %365, i32* @pos, align 4, !dbg !1791, !tbaa !1141
  %366 = load i32, i32* @argc, align 4, !dbg !1792
  %367 = icmp slt i32 %365, %366, !dbg !1793
  br i1 %367, label %369, label %368, !dbg !1794

368:                                              ; preds = %364
  tail call fastcc void @beyond() #24, !dbg !1795
  unreachable, !dbg !1795

369:                                              ; preds = %364
  %370 = add nsw i32 %4, 2, !dbg !1796
  store i32 %370, i32* @pos, align 4, !dbg !1796, !tbaa !1141
  %371 = sext i32 %365 to i64, !dbg !1797
  %372 = getelementptr inbounds i8*, i8** %3, i64 %371, !dbg !1797
  %373 = load i8*, i8** %372, align 8, !dbg !1797, !tbaa !1069
  %374 = load i8, i8* %373, align 1, !dbg !1797, !tbaa !1177
  %375 = icmp eq i8 %374, 0, !dbg !1798
  br label %376, !dbg !1799

376:                                              ; preds = %91, %89, %79, %336, %348, %141, %138, %127, %118, %115, %104, %72, %369, %357, %319, %302, %285, %268, %251, %234, %217, %200, %184, %167, %150, %60, %48, %36, %24
  %377 = phi i1 [ %375, %369 ], [ %363, %357 ], [ %330, %319 ], [ %313, %302 ], [ %296, %285 ], [ %279, %268 ], [ %262, %251 ], [ %245, %234 ], [ %228, %217 ], [ %211, %200 ], [ %194, %184 ], [ %178, %167 ], [ %161, %150 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %104 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %138 ], [ %144, %141 ], [ false, %336 ], [ %351, %348 ], [ %98, %91 ], [ false, %79 ], [ true, %89 ], !dbg !1800
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #9, !dbg !1801
  ret i1 %377, !dbg !1801
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1802 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 5) #9, !dbg !1803
  %2 = load i8**, i8*** @argv, align 8, !dbg !1804, !tbaa !1069
  %3 = load i32, i32* @argc, align 4, !dbg !1805, !tbaa !1141
  %4 = add nsw i32 %3, -1, !dbg !1806
  %5 = sext i32 %4 to i64, !dbg !1804
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1804
  %7 = load i8*, i8** %6, align 8, !dbg !1804, !tbaa !1069
  %8 = tail call i8* @quote(i8* %7) #9, !dbg !1807
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #25, !dbg !1808
  unreachable, !dbg !1808
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #8 !dbg !1809 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1812, !tbaa !1069
  %2 = load i32, i32* @pos, align 4, !dbg !1814, !tbaa !1141
  %3 = add nsw i32 %2, 1, !dbg !1815
  %4 = sext i32 %3 to i64, !dbg !1812
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1812
  %6 = load i8*, i8** %5, align 8, !dbg !1812, !tbaa !1069
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1816
  br i1 %7, label %8, label %10, !dbg !1817

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1818
  call void @llvm.dbg.value(metadata i1 %9, metadata !1811, metadata !DIExpression()), !dbg !1819
  br label %120, !dbg !1820

10:                                               ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !1821
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1821
  %13 = load i8*, i8** %12, align 8, !dbg !1821, !tbaa !1069
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #23, !dbg !1821
  %15 = icmp eq i32 %14, 0, !dbg !1821
  br i1 %15, label %16, label %48, !dbg !1823

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1824
  store i32 %3, i32* @pos, align 4, !dbg !1827, !tbaa !1141
  %17 = load i32, i32* @argc, align 4, !dbg !1828
  %18 = icmp slt i32 %3, %17, !dbg !1829
  br i1 %18, label %20, label %19, !dbg !1830

19:                                               ; preds = %16
  tail call fastcc void @beyond() #24, !dbg !1831
  unreachable, !dbg !1831

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #23, !dbg !1832
  %22 = icmp eq i32 %21, 0, !dbg !1832
  br i1 %22, label %23, label %31, !dbg !1834

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1835
  %24 = add nsw i32 %2, 2, !dbg !1837
  %25 = add nsw i32 %2, 3, !dbg !1838
  store i32 %25, i32* @pos, align 4, !dbg !1838, !tbaa !1141
  %26 = sext i32 %24 to i64, !dbg !1840
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !1840
  %28 = load i8*, i8** %27, align 8, !dbg !1840, !tbaa !1069
  %29 = load i8, i8* %28, align 1, !dbg !1840, !tbaa !1177
  %30 = icmp eq i8 %29, 0, !dbg !1841
  call void @llvm.dbg.value(metadata i1 %30, metadata !1184, metadata !DIExpression()) #9, !dbg !1842
  br label %45, !dbg !1843

31:                                               ; preds = %20
  %32 = load i8, i8* %6, align 1, !dbg !1844, !tbaa !1177
  %33 = icmp eq i8 %32, 45, !dbg !1845
  br i1 %33, label %34, label %44, !dbg !1846

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1847
  %36 = load i8, i8* %35, align 1, !dbg !1847, !tbaa !1177
  %37 = icmp eq i8 %36, 0, !dbg !1848
  br i1 %37, label %44, label %38, !dbg !1849

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1850
  %40 = load i8, i8* %39, align 1, !dbg !1850, !tbaa !1177
  %41 = icmp eq i8 %40, 0, !dbg !1851
  br i1 %41, label %42, label %44, !dbg !1852

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator() #9, !dbg !1853
  call void @llvm.dbg.value(metadata i1 %43, metadata !1184, metadata !DIExpression()) #9, !dbg !1842
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #24, !dbg !1854
  unreachable, !dbg !1854

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1184, metadata !DIExpression()) #9, !dbg !1842
  %47 = xor i1 %46, true, !dbg !1855
  call void @llvm.dbg.value(metadata i1 %47, metadata !1811, metadata !DIExpression()), !dbg !1819
  br label %120, !dbg !1856

48:                                               ; preds = %10
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #23, !dbg !1857
  %50 = icmp eq i32 %49, 0, !dbg !1857
  br i1 %50, label %51, label %62, !dbg !1859

51:                                               ; preds = %48
  %52 = add nsw i32 %2, 2, !dbg !1860
  %53 = sext i32 %52 to i64, !dbg !1860
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !1860
  %55 = load i8*, i8** %54, align 8, !dbg !1860, !tbaa !1069
  %56 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #23, !dbg !1860
  %57 = icmp eq i32 %56, 0, !dbg !1860
  br i1 %57, label %58, label %62, !dbg !1861

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !1862
  %59 = load i8, i8* %6, align 1, !dbg !1865, !tbaa !1177
  %60 = icmp ne i8 %59, 0, !dbg !1867
  call void @llvm.dbg.value(metadata i1 %60, metadata !1811, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !1868
  %61 = add nsw i32 %2, 3, !dbg !1870
  store i32 %61, i32* @pos, align 4, !dbg !1870, !tbaa !1141
  br label %120, !dbg !1871

62:                                               ; preds = %51, %48
  %63 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1872
  %64 = icmp eq i32 %63, 0, !dbg !1872
  br i1 %64, label %68, label %65, !dbg !1874

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !1875
  %67 = icmp eq i32 %66, 0, !dbg !1875
  br i1 %67, label %68, label %111, !dbg !1876

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @argc, align 4, !dbg !1877, !tbaa !1141
  %70 = icmp slt i32 %2, %69, !dbg !1879
  br i1 %70, label %71, label %76, !dbg !1880

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 undef, metadata !1279, metadata !DIExpression()) #9, !dbg !1881
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %72 = tail call fastcc zeroext i1 @term() #9, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %72, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %73 = load i32, i32* @pos, align 4, !dbg !1886, !tbaa !1141
  %74 = load i32, i32* @argc, align 4, !dbg !1887, !tbaa !1141
  %75 = icmp slt i32 %73, %74, !dbg !1888
  br i1 %75, label %77, label %97, !dbg !1889

76:                                               ; preds = %68
  tail call fastcc void @beyond() #24, !dbg !1890
  unreachable, !dbg !1890

77:                                               ; preds = %71, %105
  %78 = phi i32 [ %108, %105 ], [ %73, %71 ]
  %79 = phi i1 [ %107, %105 ], [ %72, %71 ]
  %80 = phi i1 [ %102, %105 ], [ false, %71 ]
  br label %81, !dbg !1889

81:                                               ; preds = %77, %90
  %82 = phi i32 [ %78, %77 ], [ %94, %90 ]
  %83 = phi i1 [ %79, %77 ], [ %93, %90 ]
  %84 = load i8**, i8*** @argv, align 8, !dbg !1891, !tbaa !1069
  %85 = sext i32 %82 to i64, !dbg !1891
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85, !dbg !1891
  %87 = load i8*, i8** %86, align 8, !dbg !1891, !tbaa !1069
  %88 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1891
  %89 = icmp eq i32 %88, 0, !dbg !1891
  br i1 %89, label %90, label %101, !dbg !1892

90:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1893
  %91 = add nsw i32 %82, 1, !dbg !1895
  store i32 %91, i32* @pos, align 4, !dbg !1895, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %92 = tail call fastcc zeroext i1 @term() #9, !dbg !1885
  %93 = and i1 %83, %92, !dbg !1896
  call void @llvm.dbg.value(metadata i1 %93, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %94 = load i32, i32* @pos, align 4, !dbg !1886, !tbaa !1141
  %95 = load i32, i32* @argc, align 4, !dbg !1887, !tbaa !1141
  %96 = icmp slt i32 %94, %95, !dbg !1888
  br i1 %96, label %81, label %97, !dbg !1889, !llvm.loop !1897

97:                                               ; preds = %105, %90, %71
  %98 = phi i1 [ false, %71 ], [ %80, %90 ], [ %102, %105 ], !dbg !1881
  %99 = phi i1 [ %72, %71 ], [ %93, %90 ], [ %107, %105 ], !dbg !1896
  %100 = or i1 %98, %99, !dbg !1900
  call void @llvm.dbg.value(metadata i1 %100, metadata !1279, metadata !DIExpression()) #9, !dbg !1881
  br label %120

101:                                              ; preds = %81
  %102 = or i1 %80, %83, !dbg !1900
  call void @llvm.dbg.value(metadata i1 %100, metadata !1279, metadata !DIExpression()) #9, !dbg !1881
  %103 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #23, !dbg !1901
  %104 = icmp eq i32 %103, 0, !dbg !1901
  br i1 %104, label %105, label %120, !dbg !1902

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()) #9, !dbg !1903
  %106 = add nsw i32 %82, 1, !dbg !1905
  store i32 %106, i32* @pos, align 4, !dbg !1905, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 undef, metadata !1279, metadata !DIExpression()) #9, !dbg !1881
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %107 = tail call fastcc zeroext i1 @term() #9, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %107, metadata !1284, metadata !DIExpression()) #9, !dbg !1883
  %108 = load i32, i32* @pos, align 4, !dbg !1886, !tbaa !1141
  %109 = load i32, i32* @argc, align 4, !dbg !1887, !tbaa !1141
  %110 = icmp slt i32 %108, %109, !dbg !1888
  br i1 %110, label %77, label %97, !dbg !1889, !llvm.loop !1906

111:                                              ; preds = %65
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 5) #9, !dbg !1909
  %113 = load i8**, i8*** @argv, align 8, !dbg !1910, !tbaa !1069
  %114 = load i32, i32* @pos, align 4, !dbg !1911, !tbaa !1141
  %115 = add nsw i32 %114, 1, !dbg !1912
  %116 = sext i32 %115 to i64, !dbg !1910
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116, !dbg !1910
  %118 = load i8*, i8** %117, align 8, !dbg !1910, !tbaa !1069
  %119 = tail call i8* @quote(i8* %118) #9, !dbg !1913
  tail call void (i8*, ...) @test_syntax_error(i8* %112, i8* %119) #25, !dbg !1914
  unreachable, !dbg !1914

120:                                              ; preds = %101, %97, %45, %58, %8
  %121 = phi i1 [ %9, %8 ], [ %47, %45 ], [ %60, %58 ], [ %100, %97 ], [ %102, %101 ]
  call void @llvm.dbg.value(metadata i1 %121, metadata !1811, metadata !DIExpression()), !dbg !1819
  ret i1 %121, !dbg !1915
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #8 !dbg !1916 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 undef, metadata !1919, metadata !DIExpression()), !dbg !1923
  %1 = load i32, i32* @pos, align 4, !dbg !1924, !tbaa !1141
  %2 = load i32, i32* @argc, align 4, !dbg !1925, !tbaa !1141
  %3 = icmp sgt i32 %2, %1, !dbg !1926
  br i1 %3, label %4, label %30, !dbg !1927

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !dbg !1923, !tbaa !1069
  %6 = sext i32 %1 to i64, !dbg !1928
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1928
  %8 = load i8*, i8** %7, align 8, !dbg !1928, !tbaa !1069
  %9 = load i8, i8* %8, align 1, !dbg !1928, !tbaa !1177
  %10 = icmp eq i8 %9, 33, !dbg !1929
  br i1 %10, label %11, label %31, !dbg !1930

11:                                               ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1931
  %17 = load i8, i8* %16, align 1, !dbg !1931, !tbaa !1177
  %18 = icmp eq i8 %17, 0, !dbg !1932
  br i1 %18, label %19, label %100, !dbg !1933

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1934
  %20 = add nsw i32 %15, 1, !dbg !1937
  store i32 %20, i32* @pos, align 4, !dbg !1937, !tbaa !1141
  %21 = icmp slt i32 %20, %2, !dbg !1938
  br i1 %21, label %23, label %22, !dbg !1939

22:                                               ; preds = %19
  tail call fastcc void @beyond() #24, !dbg !1940
  unreachable, !dbg !1940

23:                                               ; preds = %19
  %24 = xor i1 %14, true, !dbg !1941
  call void @llvm.dbg.value(metadata i8 undef, metadata !1919, metadata !DIExpression()), !dbg !1923
  %25 = sext i32 %20 to i64, !dbg !1928
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1928
  %27 = load i8*, i8** %26, align 8, !dbg !1928, !tbaa !1069
  %28 = load i8, i8* %27, align 1, !dbg !1928, !tbaa !1177
  %29 = icmp eq i8 %28, 33, !dbg !1929
  br i1 %29, label %11, label %31, !dbg !1930

30:                                               ; preds = %0
  tail call fastcc void @beyond() #25, !dbg !1942
  unreachable, !dbg !1942

31:                                               ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !1928
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !1928
  %36 = icmp eq i8 %35, 40, !dbg !1944
  br i1 %36, label %37, label %100, !dbg !1945

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1946
  %39 = load i8, i8* %38, align 1, !dbg !1946, !tbaa !1177
  %40 = icmp eq i8 %39, 0, !dbg !1947
  br i1 %40, label %41, label %100, !dbg !1948

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !1187, metadata !DIExpression()) #9, !dbg !1949
  %42 = add nsw i32 %32, 1, !dbg !1951
  store i32 %42, i32* @pos, align 4, !dbg !1951, !tbaa !1141
  %43 = icmp sgt i32 %2, %42, !dbg !1952
  br i1 %43, label %44, label %52, !dbg !1953

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !1920, metadata !DIExpression()), !dbg !1954
  %45 = add nsw i32 %32, 2, !dbg !1955
  %46 = icmp slt i32 %45, %2, !dbg !1958
  br i1 %46, label %47, label %70, !dbg !1959

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !1960
  %49 = xor i32 %32, -1, !dbg !1960
  %50 = add i32 %2, %49, !dbg !1960
  %51 = zext i32 %50 to i64, !dbg !1958
  br label %53, !dbg !1960

52:                                               ; preds = %41
  tail call fastcc void @beyond() #24, !dbg !1961
  unreachable, !dbg !1961

53:                                               ; preds = %64, %47
  %54 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %55 = phi i64 [ %48, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1920, metadata !DIExpression()), !dbg !1954
  %56 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !1962
  %57 = load i8*, i8** %56, align 8, !dbg !1962, !tbaa !1069
  %58 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %57, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #23, !dbg !1962
  %59 = icmp eq i32 %58, 0, !dbg !1962
  br i1 %59, label %68, label %60, !dbg !1960

60:                                               ; preds = %53
  %61 = icmp eq i64 %54, 4, !dbg !1963
  br i1 %61, label %62, label %64, !dbg !1965

62:                                               ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %63, metadata !1920, metadata !DIExpression()), !dbg !1954
  br label %70, !dbg !1968

64:                                               ; preds = %60
  %65 = add nuw nsw i64 %54, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %65, metadata !1920, metadata !DIExpression()), !dbg !1954
  %66 = add nsw i64 %55, 1, !dbg !1955
  %67 = icmp eq i64 %65, %51, !dbg !1958
  br i1 %67, label %70, label %53, !dbg !1959, !llvm.loop !1970

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1920, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %54, metadata !1920, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %54, metadata !1920, metadata !DIExpression()), !dbg !1954
  %69 = trunc i64 %54 to i32, !dbg !1960
  br label %70, !dbg !1972

70:                                               ; preds = %64, %68, %44, %62
  %71 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %69, %68 ], [ %50, %64 ], !dbg !1973
  call void @llvm.dbg.value(metadata i32 %71, metadata !1920, metadata !DIExpression()), !dbg !1954
  %72 = tail call fastcc zeroext i1 @posixtest(i32 %71), !dbg !1972
  call void @llvm.dbg.value(metadata i1 %72, metadata !1918, metadata !DIExpression()), !dbg !1923
  %73 = load i8**, i8*** @argv, align 8, !dbg !1974, !tbaa !1069
  %74 = load i32, i32* @pos, align 4, !dbg !1976, !tbaa !1141
  %75 = sext i32 %74 to i64, !dbg !1974
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75, !dbg !1974
  %77 = load i8*, i8** %76, align 8, !dbg !1974, !tbaa !1069
  %78 = icmp eq i8* %77, null, !dbg !1977
  br i1 %78, label %79, label %82, !dbg !1978

79:                                               ; preds = %70
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #9, !dbg !1979
  %81 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !1980
  tail call void (i8*, ...) @test_syntax_error(i8* %80, i8* %81) #25, !dbg !1981
  unreachable, !dbg !1981

82:                                               ; preds = %70
  %83 = load i8, i8* %77, align 1, !dbg !1982, !tbaa !1177
  %84 = icmp eq i8 %83, 41, !dbg !1984
  br i1 %84, label %85, label %89, !dbg !1985

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1986
  %87 = load i8, i8* %86, align 1, !dbg !1986, !tbaa !1177
  %88 = icmp eq i8 %87, 0, !dbg !1986
  br i1 %88, label %98, label %89, !dbg !1987

89:                                               ; preds = %85, %82
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 5) #9, !dbg !1988
  %91 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !1989
  %92 = load i8**, i8*** @argv, align 8, !dbg !1990, !tbaa !1069
  %93 = load i32, i32* @pos, align 4, !dbg !1991, !tbaa !1141
  %94 = sext i32 %93 to i64, !dbg !1990
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94, !dbg !1990
  %96 = load i8*, i8** %95, align 8, !dbg !1990, !tbaa !1069
  %97 = tail call i8* @quote_n(i32 1, i8* %96) #9, !dbg !1992
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91, i8* %97) #25, !dbg !1993
  unreachable, !dbg !1993

98:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !1994
  %99 = add nsw i32 %74, 1, !dbg !1996
  store i32 %99, i32* @pos, align 4, !dbg !1996, !tbaa !1141
  br label %143, !dbg !1997

100:                                              ; preds = %11, %37, %31
  %101 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %102 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %103 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %104 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %105 = sub nsw i32 %2, %101, !dbg !1998
  %106 = icmp sgt i32 %105, 3, !dbg !2000
  br i1 %106, label %107, label %118, !dbg !2001

107:                                              ; preds = %100
  %108 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %103, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #23, !dbg !2002
  %109 = icmp eq i32 %108, 0, !dbg !2002
  br i1 %109, label %110, label %120, !dbg !2003

110:                                              ; preds = %107
  %111 = add nsw i32 %101, 2, !dbg !2004
  %112 = sext i32 %111 to i64, !dbg !2005
  %113 = getelementptr inbounds i8*, i8** %5, i64 %112, !dbg !2005
  %114 = load i8*, i8** %113, align 8, !dbg !2005, !tbaa !1069
  %115 = tail call fastcc zeroext i1 @binop(i8* %114), !dbg !2006
  br i1 %115, label %116, label %120, !dbg !2007

116:                                              ; preds = %110
  %117 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !2008
  call void @llvm.dbg.value(metadata i1 %117, metadata !1918, metadata !DIExpression()), !dbg !1923
  br label %143, !dbg !2009

118:                                              ; preds = %100
  %119 = icmp eq i32 %105, 3, !dbg !2010
  br i1 %119, label %120, label %128, !dbg !2012

120:                                              ; preds = %107, %110, %118
  %121 = add nsw i32 %101, 1, !dbg !2013
  %122 = sext i32 %121 to i64, !dbg !2014
  %123 = getelementptr inbounds i8*, i8** %5, i64 %122, !dbg !2014
  %124 = load i8*, i8** %123, align 8, !dbg !2014, !tbaa !1069
  %125 = tail call fastcc zeroext i1 @binop(i8* %124), !dbg !2015
  br i1 %125, label %126, label %128, !dbg !2016

126:                                              ; preds = %120
  %127 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !2017
  call void @llvm.dbg.value(metadata i1 %127, metadata !1918, metadata !DIExpression()), !dbg !1923
  br label %143, !dbg !2018

128:                                              ; preds = %120, %118
  %129 = icmp eq i8 %104, 45, !dbg !2019
  br i1 %129, label %130, label %140, !dbg !2021

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !2022
  %132 = load i8, i8* %131, align 1, !dbg !2022, !tbaa !1177
  %133 = icmp eq i8 %132, 0, !dbg !2022
  br i1 %133, label %140, label %134, !dbg !2023

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !2024
  %136 = load i8, i8* %135, align 1, !dbg !2024, !tbaa !1177
  %137 = icmp eq i8 %136, 0, !dbg !2025
  br i1 %137, label %138, label %140, !dbg !2026

138:                                              ; preds = %134
  %139 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2027
  call void @llvm.dbg.value(metadata i1 %139, metadata !1918, metadata !DIExpression()), !dbg !1923
  br label %143, !dbg !2028

140:                                              ; preds = %130, %134, %128
  %141 = icmp ne i8 %104, 0, !dbg !2029
  call void @llvm.dbg.value(metadata i1 %141, metadata !1918, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !2031
  %142 = add nsw i32 %101, 1, !dbg !2033
  store i32 %142, i32* @pos, align 4, !dbg !2033, !tbaa !1141
  br label %143

143:                                              ; preds = %116, %138, %140, %126, %98
  %144 = phi i1 [ %33, %98 ], [ %102, %116 ], [ %102, %126 ], [ %102, %138 ], [ %102, %140 ]
  %145 = phi i1 [ %72, %98 ], [ %117, %116 ], [ %127, %126 ], [ %139, %138 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i1 %145, metadata !1918, metadata !DIExpression()), !dbg !1923
  %146 = xor i1 %144, %145, !dbg !2034
  ret i1 %146, !dbg !2035
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* nocapture readonly %0) unnamed_addr #10 !dbg !2036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()), !dbg !2041
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #23, !dbg !2042
  %3 = icmp eq i32 %2, 0, !dbg !2042
  br i1 %3, label %37, label %4, !dbg !2043

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #23, !dbg !2044
  %6 = icmp eq i32 %5, 0, !dbg !2044
  br i1 %6, label %37, label %7, !dbg !2045

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #23, !dbg !2046
  %9 = icmp eq i32 %8, 0, !dbg !2046
  br i1 %9, label %37, label %10, !dbg !2047

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #23, !dbg !2048
  %12 = icmp eq i32 %11, 0, !dbg !2048
  br i1 %12, label %37, label %13, !dbg !2049

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #23, !dbg !2050
  %15 = icmp eq i32 %14, 0, !dbg !2050
  br i1 %15, label %37, label %16, !dbg !2051

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0)) #23, !dbg !2052
  %18 = icmp eq i32 %17, 0, !dbg !2052
  br i1 %18, label %37, label %19, !dbg !2053

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #23, !dbg !2054
  %21 = icmp eq i32 %20, 0, !dbg !2054
  br i1 %21, label %37, label %22, !dbg !2055

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #23, !dbg !2056
  %24 = icmp eq i32 %23, 0, !dbg !2056
  br i1 %24, label %37, label %25, !dbg !2057

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #23, !dbg !2058
  %27 = icmp eq i32 %26, 0, !dbg !2058
  br i1 %27, label %37, label %28, !dbg !2059

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #23, !dbg !2060
  %30 = icmp eq i32 %29, 0, !dbg !2060
  br i1 %30, label %37, label %31, !dbg !2061

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #23, !dbg !2062
  %33 = icmp eq i32 %32, 0, !dbg !2062
  br i1 %33, label %37, label %34, !dbg !2063

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #23, !dbg !2064
  %36 = icmp eq i32 %35, 0, !dbg !2064
  br label %37, !dbg !2063

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !2065
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext %0) unnamed_addr #8 !dbg !2066 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2107, metadata !DIExpression()), !dbg !2116
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !2107, metadata !DIExpression()), !dbg !2118
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2107, metadata !DIExpression()), !dbg !2120
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !2107, metadata !DIExpression()), !dbg !2122
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !2070, metadata !DIExpression()), !dbg !2124
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #9, !dbg !2125
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !2072, metadata !DIExpression()), !dbg !2126
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #9, !dbg !2125
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !2073, metadata !DIExpression()), !dbg !2127
  %12 = load i32, i32* @pos, align 4, !dbg !2124, !tbaa !1141
  br i1 %0, label %13, label %15, !dbg !2128

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !2129
  %14 = add nsw i32 %12, 1, !dbg !2132
  store i32 %14, i32* @pos, align 4, !dbg !2132, !tbaa !1141
  br label %15, !dbg !2133

15:                                               ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !2134
  %17 = add nsw i32 %16, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %17, metadata !2071, metadata !DIExpression()), !dbg !2124
  %18 = load i32, i32* @argc, align 4, !dbg !2136, !tbaa !1141
  %19 = add nsw i32 %18, -2, !dbg !2138
  %20 = icmp slt i32 %17, %19, !dbg !2139
  %21 = load i8**, i8*** @argv, align 8, !dbg !2124, !tbaa !1069
  br i1 %20, label %22, label %30, !dbg !2140

22:                                               ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !2141
  %24 = sext i32 %23 to i64, !dbg !2141
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !2141
  %26 = load i8*, i8** %25, align 8, !dbg !2141, !tbaa !1069
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %26, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #23, !dbg !2141
  %28 = icmp eq i32 %27, 0, !dbg !2141
  br i1 %28, label %29, label %30, !dbg !2142

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i1 false, metadata !1187, metadata !DIExpression()), !dbg !2143
  store i32 %17, i32* @pos, align 4, !dbg !2146, !tbaa !1141
  br label %30, !dbg !2147

30:                                               ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2074, metadata !DIExpression()), !dbg !2124
  %33 = sext i32 %17 to i64, !dbg !2148
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !2148
  %35 = load i8*, i8** %34, align 8, !dbg !2148, !tbaa !1069
  %36 = load i8, i8* %35, align 1, !dbg !2148, !tbaa !1177
  switch i8 %36, label %272 [
    i8 45, label %37
    i8 61, label %254
  ], !dbg !2149

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2150
  %39 = load i8, i8* %38, align 1, !dbg !2150, !tbaa !1177
  switch i8 %39, label %106 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !2151

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2152
  %42 = load i8, i8* %41, align 1, !dbg !2152, !tbaa !1177
  switch i8 %42, label %106 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !2153

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2154
  %45 = load i8, i8* %44, align 1, !dbg !2154, !tbaa !1177
  %46 = icmp eq i8 %45, 113, !dbg !2155
  br i1 %46, label %51, label %106, !dbg !2156

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2157
  %49 = load i8, i8* %48, align 1, !dbg !2157, !tbaa !1177
  %50 = icmp eq i8 %49, 101, !dbg !2158
  br i1 %50, label %51, label %106, !dbg !2159

51:                                               ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2160
  %53 = load i8, i8* %52, align 1, !dbg !2160, !tbaa !1177
  %54 = icmp eq i8 %53, 0, !dbg !2160
  br i1 %54, label %55, label %106, !dbg !2161

55:                                               ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #9, !dbg !2162
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !2075, metadata !DIExpression()), !dbg !2163
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !2164
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #9, !dbg !2164
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !2083, metadata !DIExpression()), !dbg !2165
  %58 = sext i32 %16 to i64, !dbg !2166
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !2166
  %60 = load i8*, i8** %59, align 8, !dbg !2166, !tbaa !1069
  br i1 %0, label %61, label %64, !dbg !2167

61:                                               ; preds = %55
  %62 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %60) #23, !dbg !2168
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #9, !dbg !2169
  br label %66, !dbg !2167

64:                                               ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !2170
  br label %66, !dbg !2167

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !2167
  call void @llvm.dbg.value(metadata i8* %67, metadata !2084, metadata !DIExpression()), !dbg !2166
  %68 = load i8**, i8*** @argv, align 8, !dbg !2166, !tbaa !1069
  br i1 %32, label %69, label %76, !dbg !2171

69:                                               ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !2172
  %71 = sext i32 %70 to i64, !dbg !2173
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !2173
  %73 = load i8*, i8** %72, align 8, !dbg !2173, !tbaa !1069
  %74 = call i64 @strlen(i8* nonnull dereferenceable(1) %73) #23, !dbg !2174
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #9, !dbg !2175
  br label %82, !dbg !2171

76:                                               ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !2176
  %78 = sext i32 %77 to i64, !dbg !2177
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !2177
  %80 = load i8*, i8** %79, align 8, !dbg !2177, !tbaa !1069
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !2178
  br label %82, !dbg !2171

82:                                               ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !2171
  call void @llvm.dbg.value(metadata i8* %83, metadata !2085, metadata !DIExpression()), !dbg !2166
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #23, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %84, metadata !2086, metadata !DIExpression()), !dbg !2166
  %85 = load i8**, i8*** @argv, align 8, !dbg !2180, !tbaa !1069
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !2180
  %87 = load i8*, i8** %86, align 8, !dbg !2180, !tbaa !1069
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !2180
  %89 = load i8, i8* %88, align 1, !dbg !2180, !tbaa !1177
  %90 = icmp eq i8 %89, 101, !dbg !2181
  call void @llvm.dbg.value(metadata i1 %90, metadata !2087, metadata !DIExpression()), !dbg !2166
  %91 = load i32, i32* @pos, align 4, !dbg !2182, !tbaa !1141
  %92 = add nsw i32 %91, 3, !dbg !2182
  store i32 %92, i32* @pos, align 4, !dbg !2182, !tbaa !1141
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2183
  %94 = load i8, i8* %93, align 1, !dbg !2183, !tbaa !1177
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !2183

95:                                               ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !2184
  %97 = icmp slt i32 %84, %96, !dbg !2185
  br label %104, !dbg !2183

98:                                               ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !2186
  %100 = icmp sgt i32 %84, %99, !dbg !2187
  br label %104, !dbg !2188

101:                                              ; preds = %82
  %102 = icmp eq i32 %84, 0, !dbg !2189
  %103 = xor i1 %102, %90, !dbg !2190
  br label %104, !dbg !2188

104:                                              ; preds = %98, %101, %95
  %105 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #9, !dbg !2191
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #9, !dbg !2191
  br label %287

106:                                              ; preds = %37, %40, %43, %51, %47
  %107 = sext i8 %39 to i32, !dbg !2192
  switch i32 %107, label %248 [
    i32 110, label %108
    i32 101, label %159
    i32 111, label %198
  ], !dbg !2193

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2194
  %110 = load i8, i8* %109, align 1, !dbg !2194, !tbaa !1177
  %111 = icmp eq i8 %110, 116, !dbg !2195
  br i1 %111, label %112, label %248, !dbg !2196

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2197
  %114 = load i8, i8* %113, align 1, !dbg !2197, !tbaa !1177
  %115 = icmp eq i8 %114, 0, !dbg !2197
  br i1 %115, label %116, label %248, !dbg !2198

116:                                              ; preds = %112
  %117 = add nsw i32 %31, 3, !dbg !2199
  store i32 %117, i32* @pos, align 4, !dbg !2199, !tbaa !1141
  %118 = or i1 %32, %0, !dbg !2200
  br i1 %118, label %119, label %121, !dbg !2200

119:                                              ; preds = %116
  %120 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i32 5) #9, !dbg !2202
  tail call void (i8*, ...) @test_syntax_error(i8* %120, i8* null) #25, !dbg !2203
  unreachable, !dbg !2203

121:                                              ; preds = %116
  %122 = sext i32 %16 to i64, !dbg !2204
  %123 = getelementptr inbounds i8*, i8** %21, i64 %122, !dbg !2204
  %124 = load i8*, i8** %123, align 8, !dbg !2204, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %124, metadata !2113, metadata !DIExpression()) #9, !dbg !2205
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2114, metadata !DIExpression()) #9, !dbg !2205
  %125 = bitcast %struct.stat* %4 to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %125) #9, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %124, metadata !1411, metadata !DIExpression()) #9, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1418, metadata !DIExpression()) #9, !dbg !2207
  %126 = call i32 @__xstat(i32 1, i8* nonnull %124, %struct.stat* nonnull %4) #9, !dbg !2209
  %127 = icmp eq i32 %126, 0, !dbg !2210
  call void @llvm.dbg.value(metadata i1 %127, metadata !2115, metadata !DIExpression()) #9, !dbg !2205
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !2211
  %129 = load i64, i64* %128, align 8, !dbg !2211
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !2211
  %131 = load i64, i64* %130, align 8, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %129, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %131, metadata !2088, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %125) #9, !dbg !2213
  call void @llvm.dbg.value(metadata i1 %127, metadata !2093, metadata !DIExpression()), !dbg !2212
  %132 = load i8**, i8*** @argv, align 8, !dbg !2214, !tbaa !1069
  %133 = add nsw i32 %16, 2, !dbg !2215
  %134 = sext i32 %133 to i64, !dbg !2214
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134, !dbg !2214
  %136 = load i8*, i8** %135, align 8, !dbg !2214, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %136, metadata !2113, metadata !DIExpression()) #9, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2114, metadata !DIExpression()) #9, !dbg !2216
  %137 = bitcast %struct.stat* %3 to i8*, !dbg !2217
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %137) #9, !dbg !2217
  call void @llvm.dbg.value(metadata i8* %136, metadata !1411, metadata !DIExpression()) #9, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1418, metadata !DIExpression()) #9, !dbg !2218
  %138 = call i32 @__xstat(i32 1, i8* nonnull %136, %struct.stat* nonnull %3) #9, !dbg !2220
  %139 = icmp eq i32 %138, 0, !dbg !2221
  call void @llvm.dbg.value(metadata i1 %139, metadata !2115, metadata !DIExpression()) #9, !dbg !2216
  br i1 %139, label %141, label %140, !dbg !2222

140:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 %143, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %145, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %137) #9, !dbg !2223
  call void @llvm.dbg.value(metadata i1 %139, metadata !2094, metadata !DIExpression()), !dbg !2212
  br label %287, !dbg !2224

141:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1494, metadata !DIExpression()) #9, !dbg !2225
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !2228
  %143 = load i64, i64* %142, align 8, !dbg !2228, !tbaa.struct !1490
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !2228
  %145 = load i64, i64* %144, align 8, !dbg !2228, !tbaa.struct !1490
  call void @llvm.dbg.value(metadata i64 %143, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %145, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %143, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %145, metadata !2092, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %137) #9, !dbg !2223
  call void @llvm.dbg.value(metadata i1 %139, metadata !2094, metadata !DIExpression()), !dbg !2212
  %146 = xor i1 %127, true, !dbg !2224
  %147 = icmp slt i64 %129, %143, !dbg !2229
  %148 = or i1 %147, %146, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %129, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %131, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %143, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %145, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !2231
  br i1 %148, label %287, label %149, !dbg !2224

149:                                              ; preds = %141
  %150 = icmp sgt i64 %129, %143, !dbg !2232
  br i1 %150, label %287, label %151, !dbg !2233

151:                                              ; preds = %149
  %152 = icmp sgt i64 %131, -2, !dbg !2234
  call void @llvm.assume(i1 %152) #9, !dbg !2234
  %153 = icmp slt i64 %131, 2000000001, !dbg !2234
  call void @llvm.assume(i1 %153) #9, !dbg !2234
  %154 = icmp sgt i64 %145, -2, !dbg !2235
  call void @llvm.assume(i1 %154) #9, !dbg !2235
  %155 = icmp slt i64 %145, 2000000001, !dbg !2235
  call void @llvm.assume(i1 %155) #9, !dbg !2235
  %156 = sub nsw i64 %131, %145, !dbg !2236
  %157 = trunc i64 %156 to i32, !dbg !2237
  %158 = icmp sgt i32 %157, 0, !dbg !2238
  br label %287, !dbg !2238

159:                                              ; preds = %106
  %160 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2239
  %161 = load i8, i8* %160, align 1, !dbg !2239, !tbaa !1177
  %162 = icmp eq i8 %161, 102, !dbg !2241
  br i1 %162, label %163, label %248, !dbg !2242

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2243
  %165 = load i8, i8* %164, align 1, !dbg !2243, !tbaa !1177
  %166 = icmp eq i8 %165, 0, !dbg !2243
  br i1 %166, label %167, label %248, !dbg !2244

167:                                              ; preds = %163
  %168 = add nsw i32 %31, 3, !dbg !2245
  store i32 %168, i32* @pos, align 4, !dbg !2245, !tbaa !1141
  %169 = or i1 %32, %0, !dbg !2247
  br i1 %169, label %170, label %172, !dbg !2247

170:                                              ; preds = %167
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #9, !dbg !2249
  tail call void (i8*, ...) @test_syntax_error(i8* %171, i8* null) #25, !dbg !2250
  unreachable, !dbg !2250

172:                                              ; preds = %167
  %173 = sext i32 %16 to i64, !dbg !2251
  %174 = getelementptr inbounds i8*, i8** %21, i64 %173, !dbg !2251
  %175 = load i8*, i8** %174, align 8, !dbg !2251, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %175, metadata !1411, metadata !DIExpression()) #9, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !1418, metadata !DIExpression()) #9, !dbg !2252
  %176 = call i32 @__xstat(i32 1, i8* nonnull %175, %struct.stat* nonnull %6) #9, !dbg !2254
  %177 = icmp eq i32 %176, 0, !dbg !2255
  br i1 %177, label %178, label %287, !dbg !2256

178:                                              ; preds = %172
  %179 = load i8**, i8*** @argv, align 8, !dbg !2257, !tbaa !1069
  %180 = add nsw i32 %16, 2, !dbg !2258
  %181 = sext i32 %180 to i64, !dbg !2257
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181, !dbg !2257
  %183 = load i8*, i8** %182, align 8, !dbg !2257, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %183, metadata !1411, metadata !DIExpression()) #9, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1418, metadata !DIExpression()) #9, !dbg !2259
  %184 = call i32 @__xstat(i32 1, i8* nonnull %183, %struct.stat* nonnull %7) #9, !dbg !2261
  %185 = icmp eq i32 %184, 0, !dbg !2262
  br i1 %185, label %186, label %287, !dbg !2263

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !2264
  %188 = load i64, i64* %187, align 8, !dbg !2264, !tbaa !2265
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !2266
  %190 = load i64, i64* %189, align 8, !dbg !2266, !tbaa !2265
  %191 = icmp eq i64 %188, %190, !dbg !2267
  br i1 %191, label %192, label %287, !dbg !2268

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !2269
  %194 = load i64, i64* %193, align 8, !dbg !2269, !tbaa !2270
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !2271
  %196 = load i64, i64* %195, align 8, !dbg !2271, !tbaa !2270
  %197 = icmp eq i64 %194, %196, !dbg !2272
  br label %287

198:                                              ; preds = %106
  %199 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2273
  %200 = load i8, i8* %199, align 1, !dbg !2273, !tbaa !1177
  %201 = icmp eq i8 %200, 116, !dbg !2274
  br i1 %201, label %202, label %248, !dbg !2275

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !2276
  %204 = load i8, i8* %203, align 1, !dbg !2276, !tbaa !1177
  %205 = icmp eq i8 %204, 0, !dbg !2277
  br i1 %205, label %206, label %248, !dbg !2278

206:                                              ; preds = %202
  %207 = add nsw i32 %31, 3, !dbg !2279
  store i32 %207, i32* @pos, align 4, !dbg !2279, !tbaa !1141
  %208 = or i1 %32, %0, !dbg !2280
  br i1 %208, label %209, label %211, !dbg !2280

209:                                              ; preds = %206
  %210 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 5) #9, !dbg !2282
  tail call void (i8*, ...) @test_syntax_error(i8* %210, i8* null) #25, !dbg !2283
  unreachable, !dbg !2283

211:                                              ; preds = %206
  %212 = sext i32 %16 to i64, !dbg !2284
  %213 = getelementptr inbounds i8*, i8** %21, i64 %212, !dbg !2284
  %214 = load i8*, i8** %213, align 8, !dbg !2284, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %214, metadata !2113, metadata !DIExpression()) #9, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2114, metadata !DIExpression()) #9, !dbg !2285
  %215 = bitcast %struct.stat* %2 to i8*, !dbg !2286
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %215) #9, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %214, metadata !1411, metadata !DIExpression()) #9, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1418, metadata !DIExpression()) #9, !dbg !2287
  %216 = call i32 @__xstat(i32 1, i8* nonnull %214, %struct.stat* nonnull %2) #9, !dbg !2289
  call void @llvm.dbg.value(metadata i1 undef, metadata !2115, metadata !DIExpression()) #9, !dbg !2285
  %217 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !2290
  %218 = load i64, i64* %217, align 8, !dbg !2290
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !2290
  %220 = load i64, i64* %219, align 8, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %218, metadata !2095, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %220, metadata !2095, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %215) #9, !dbg !2292
  call void @llvm.dbg.value(metadata i1 undef, metadata !2099, metadata !DIExpression()), !dbg !2291
  %221 = load i8**, i8*** @argv, align 8, !dbg !2293, !tbaa !1069
  %222 = add nsw i32 %16, 2, !dbg !2294
  %223 = sext i32 %222 to i64, !dbg !2293
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223, !dbg !2293
  %225 = load i8*, i8** %224, align 8, !dbg !2293, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %225, metadata !2113, metadata !DIExpression()) #9, !dbg !2295
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2114, metadata !DIExpression()) #9, !dbg !2295
  %226 = bitcast %struct.stat* %5 to i8*, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %226) #9, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %225, metadata !1411, metadata !DIExpression()) #9, !dbg !2297
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1418, metadata !DIExpression()) #9, !dbg !2297
  %227 = call i32 @__xstat(i32 1, i8* nonnull %225, %struct.stat* nonnull %5) #9, !dbg !2299
  %228 = icmp eq i32 %227, 0, !dbg !2300
  call void @llvm.dbg.value(metadata i1 %228, metadata !2115, metadata !DIExpression()) #9, !dbg !2295
  br i1 %228, label %230, label %229, !dbg !2301

229:                                              ; preds = %211
  call void @llvm.dbg.value(metadata i64 %233, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %235, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %226) #9, !dbg !2302
  call void @llvm.dbg.value(metadata i1 %228, metadata !2100, metadata !DIExpression()), !dbg !2291
  br label %287, !dbg !2303

230:                                              ; preds = %211
  %231 = icmp ne i32 %216, 0, !dbg !2304
  call void @llvm.dbg.value(metadata i1 %231, metadata !2115, metadata !DIExpression()) #9, !dbg !2285
  call void @llvm.dbg.value(metadata i1 %231, metadata !2099, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1494, metadata !DIExpression()) #9, !dbg !2305
  %232 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !2307
  %233 = load i64, i64* %232, align 8, !dbg !2307, !tbaa.struct !1490
  %234 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !2307
  %235 = load i64, i64* %234, align 8, !dbg !2307, !tbaa.struct !1490
  call void @llvm.dbg.value(metadata i64 %233, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %235, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %233, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %235, metadata !2098, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %226) #9, !dbg !2302
  call void @llvm.dbg.value(metadata i1 %228, metadata !2100, metadata !DIExpression()), !dbg !2291
  %236 = icmp slt i64 %218, %233, !dbg !2308
  %237 = or i1 %231, %236, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %218, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %220, metadata !1500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %233, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %235, metadata !1505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !2310
  br i1 %237, label %287, label %238, !dbg !2303

238:                                              ; preds = %230
  %239 = icmp sgt i64 %218, %233, !dbg !2311
  br i1 %239, label %287, label %240, !dbg !2312

240:                                              ; preds = %238
  %241 = icmp sgt i64 %220, -2, !dbg !2313
  call void @llvm.assume(i1 %241) #9, !dbg !2313
  %242 = icmp slt i64 %220, 2000000001, !dbg !2313
  call void @llvm.assume(i1 %242) #9, !dbg !2313
  %243 = icmp sgt i64 %235, -2, !dbg !2314
  call void @llvm.assume(i1 %243) #9, !dbg !2314
  %244 = icmp slt i64 %235, 2000000001, !dbg !2314
  call void @llvm.assume(i1 %244) #9, !dbg !2314
  %245 = sub nsw i64 %220, %235, !dbg !2315
  %246 = trunc i64 %245 to i32, !dbg !2316
  %247 = icmp slt i32 %246, 0, !dbg !2317
  br label %287, !dbg !2317

248:                                              ; preds = %112, %163, %198, %202, %159, %108, %106
  %249 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i32 5) #9, !dbg !2318
  %250 = load i8**, i8*** @argv, align 8, !dbg !2319, !tbaa !1069
  %251 = getelementptr inbounds i8*, i8** %250, i64 %33, !dbg !2319
  %252 = load i8*, i8** %251, align 8, !dbg !2319, !tbaa !1069
  %253 = tail call i8* @quote(i8* %252) #9, !dbg !2320
  tail call void (i8*, ...) @test_syntax_error(i8* %249, i8* %253) #25, !dbg !2321
  unreachable, !dbg !2321

254:                                              ; preds = %30
  %255 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2322
  %256 = load i8, i8* %255, align 1, !dbg !2322, !tbaa !1177
  switch i8 %256, label %272 [
    i8 0, label %261
    i8 61, label %257
  ], !dbg !2323

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !2324
  %259 = load i8, i8* %258, align 1, !dbg !2324, !tbaa !1177
  %260 = icmp eq i8 %259, 0, !dbg !2324
  br i1 %260, label %261, label %272, !dbg !2325

261:                                              ; preds = %254, %257
  %262 = sext i32 %31 to i64, !dbg !2326
  %263 = getelementptr inbounds i8*, i8** %21, i64 %262, !dbg !2326
  %264 = load i8*, i8** %263, align 8, !dbg !2326, !tbaa !1069
  %265 = add nsw i32 %31, 2, !dbg !2326
  %266 = sext i32 %265 to i64, !dbg !2326
  %267 = getelementptr inbounds i8*, i8** %21, i64 %266, !dbg !2326
  %268 = load i8*, i8** %267, align 8, !dbg !2326, !tbaa !1069
  %269 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %264, i8* nonnull dereferenceable(1) %268) #23, !dbg !2326
  %270 = icmp eq i32 %269, 0, !dbg !2326
  call void @llvm.dbg.value(metadata i1 %270, metadata !2101, metadata !DIExpression()), !dbg !2327
  %271 = add nsw i32 %31, 3, !dbg !2328
  store i32 %271, i32* @pos, align 4, !dbg !2328, !tbaa !1141
  br label %287

272:                                              ; preds = %254, %30, %257
  %273 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %35, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #23, !dbg !2329
  %274 = icmp eq i32 %273, 0, !dbg !2329
  br i1 %274, label %275, label %286, !dbg !2330

275:                                              ; preds = %272
  %276 = sext i32 %31 to i64, !dbg !2331
  %277 = getelementptr inbounds i8*, i8** %21, i64 %276, !dbg !2331
  %278 = load i8*, i8** %277, align 8, !dbg !2331, !tbaa !1069
  %279 = add nsw i32 %31, 2, !dbg !2331
  %280 = sext i32 %279 to i64, !dbg !2331
  %281 = getelementptr inbounds i8*, i8** %21, i64 %280, !dbg !2331
  %282 = load i8*, i8** %281, align 8, !dbg !2331, !tbaa !1069
  %283 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %278, i8* nonnull dereferenceable(1) %282) #23, !dbg !2331
  %284 = icmp ne i32 %283, 0, !dbg !2331
  call void @llvm.dbg.value(metadata i1 %284, metadata !2104, metadata !DIExpression()), !dbg !2332
  %285 = add nsw i32 %31, 3, !dbg !2333
  store i32 %285, i32* @pos, align 4, !dbg !2333, !tbaa !1141
  br label %287

286:                                              ; preds = %272
  tail call void @abort() #24, !dbg !2334
  unreachable, !dbg !2334

287:                                              ; preds = %230, %141, %240, %238, %151, %149, %229, %140, %172, %178, %186, %192, %275, %261, %104
  %288 = phi i1 [ %105, %104 ], [ %284, %275 ], [ %270, %261 ], [ false, %186 ], [ false, %178 ], [ false, %172 ], [ %197, %192 ], [ false, %141 ], [ %127, %140 ], [ true, %230 ], [ false, %229 ], [ %158, %151 ], [ true, %149 ], [ %247, %240 ], [ false, %238 ], !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #9, !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #9, !dbg !2335
  ret i1 %288, !dbg !2335
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8* %0) unnamed_addr #8 !dbg !2336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  %2 = tail call i16** @__ctype_b_loc() #26, !dbg !2342
  %3 = load i16*, i16** %2, align 8, !dbg !2342, !tbaa !1069
  br label %4, !dbg !2345

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !2346
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  %6 = load i8, i8* %5, align 1, !dbg !2347, !tbaa !1177
  %7 = zext i8 %6 to i64, !dbg !2347
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !2347
  %9 = load i16, i16* %8, align 2, !dbg !2347, !tbaa !2348
  %10 = and i16 %9, 1, !dbg !2347
  %11 = icmp eq i16 %10, 0, !dbg !2350
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %12, metadata !2339, metadata !DIExpression()), !dbg !2341
  br i1 %11, label %13, label %4, !dbg !2350, !llvm.loop !2352

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %5, metadata !2339, metadata !DIExpression()), !dbg !2341
  %14 = icmp eq i8 %6, 43, !dbg !2354
  %15 = icmp eq i8 %6, 45, !dbg !2356
  %16 = zext i1 %15 to i64, !dbg !2356
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !2356
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !2356
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %19, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %18, metadata !2339, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2341
  %20 = load i8, i8* %18, align 1, !dbg !2357, !tbaa !1177
  %21 = sext i8 %20 to i32, !dbg !2357
  %22 = add nsw i32 %21, -48, !dbg !2357
  %23 = icmp ult i32 %22, 10, !dbg !2357
  br i1 %23, label %24, label %50, !dbg !2359

24:                                               ; preds = %13, %24
  %25 = phi i8* [ %26, %24 ], [ %18, %13 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %26, metadata !2339, metadata !DIExpression()), !dbg !2341
  %27 = load i8, i8* %26, align 1, !dbg !2361, !tbaa !1177
  %28 = sext i8 %27 to i32, !dbg !2361
  %29 = add nsw i32 %28, -48, !dbg !2361
  %30 = icmp ult i32 %29, 10, !dbg !2361
  br i1 %30, label %24, label %31, !dbg !2363, !llvm.loop !2364

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %26, metadata !2339, metadata !DIExpression()), !dbg !2341
  %32 = zext i8 %27 to i64, !dbg !2366
  %33 = getelementptr inbounds i16, i16* %3, i64 %32, !dbg !2366
  %34 = load i16, i16* %33, align 2, !dbg !2366, !tbaa !2348
  %35 = and i16 %34, 1, !dbg !2366
  %36 = icmp eq i16 %35, 0, !dbg !2367
  br i1 %36, label %46, label %37, !dbg !2367

37:                                               ; preds = %31, %37
  %38 = phi i8* [ %39, %37 ], [ %26, %31 ]
  call void @llvm.dbg.value(metadata i8* %38, metadata !2339, metadata !DIExpression()), !dbg !2341
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %39, metadata !2339, metadata !DIExpression()), !dbg !2341
  %40 = load i8, i8* %39, align 1, !dbg !2366, !tbaa !1177
  %41 = zext i8 %40 to i64, !dbg !2366
  %42 = getelementptr inbounds i16, i16* %3, i64 %41, !dbg !2366
  %43 = load i16, i16* %42, align 2, !dbg !2366, !tbaa !2348
  %44 = and i16 %43, 1, !dbg !2366
  %45 = icmp eq i16 %44, 0, !dbg !2367
  br i1 %45, label %46, label %37, !dbg !2367, !llvm.loop !2369

46:                                               ; preds = %37, %31
  %47 = phi i8 [ %27, %31 ], [ %40, %37 ], !dbg !2366
  %48 = icmp eq i8 %47, 0, !dbg !2370
  br i1 %48, label %49, label %50, !dbg !2372

49:                                               ; preds = %46
  ret i8* %19, !dbg !2373

50:                                               ; preds = %46, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 5) #9, !dbg !2374
  %52 = tail call i8* @quote(i8* %0) #9, !dbg !2375
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #25, !dbg !2376
  unreachable, !dbg !2376
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #12

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !127 i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !131 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !134 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !135 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !2377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2380
  store i8* %0, i8** @file_name, align 8, !dbg !2381, !tbaa !1069
  ret void, !dbg !2382
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !2383 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2387, !tbaa !2388
  ret void, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2391 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2396, !tbaa !1069
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !2397
  %3 = icmp eq i32 %2, 0, !dbg !2398
  br i1 %3, label %22, label %4, !dbg !2399

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2400, !tbaa !2388, !range !2401
  %6 = icmp eq i8 %5, 0, !dbg !2400
  br i1 %6, label %11, label %7, !dbg !2402

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !2403
  %9 = load i32, i32* %8, align 4, !dbg !2403, !tbaa !1141
  %10 = icmp eq i32 %9, 32, !dbg !2404
  br i1 %10, label %22, label %11, !dbg !2405

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 5) #9, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %12, metadata !2393, metadata !DIExpression()), !dbg !2407
  %13 = load i8*, i8** @file_name, align 8, !dbg !2408, !tbaa !1069
  %14 = icmp eq i8* %13, null, !dbg !2408
  %15 = tail call i32* @__errno_location() #26, !dbg !2410
  %16 = load i32, i32* %15, align 4, !dbg !2410, !tbaa !1141
  br i1 %14, label %19, label %17, !dbg !2411

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !2412
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.69, i64 0, i64 0), i8* %18, i8* %12) #9, !dbg !2413
  br label %20, !dbg !2413

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.70, i64 0, i64 0), i8* %12) #9, !dbg !2414
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2415, !tbaa !1141
  tail call void @_exit(i32 %21) #24, !dbg !2416
  unreachable, !dbg !2416

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2417, !tbaa !1069
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #9, !dbg !2419
  %25 = icmp eq i32 %24, 0, !dbg !2420
  br i1 %25, label %28, label %26, !dbg !2421

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2422, !tbaa !1141
  tail call void @_exit(i32 %27) #24, !dbg !2423
  unreachable, !dbg !2423

28:                                               ; preds = %22
  ret void, !dbg !2424
}

declare !dbg !209 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #14 !dbg !2425 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()), !dbg !2433
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %3, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i8 0, i8* %3, align 1, !dbg !2435, !tbaa !1177
  br label %4, !dbg !2436

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2433
  call void @llvm.dbg.value(metadata i8* %6, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %5, metadata !2430, metadata !DIExpression()), !dbg !2433
  %7 = urem i64 %5, 10, !dbg !2437
  %8 = trunc i64 %7 to i8, !dbg !2440
  %9 = or i8 %8, 48, !dbg !2440
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2441
  call void @llvm.dbg.value(metadata i8* %10, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i8 %9, i8* %10, align 1, !dbg !2442, !tbaa !1177
  %11 = udiv i64 %5, 10, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %11, metadata !2430, metadata !DIExpression()), !dbg !2433
  %12 = icmp ugt i64 %5, 9, !dbg !2444
  br i1 %12, label %4, label %13, !dbg !2445, !llvm.loop !2446

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2432, metadata !DIExpression()), !dbg !2433
  ret i8* %10, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2452, metadata !DIExpression()), !dbg !2455
  %2 = icmp eq i8* %0, null, !dbg !2456
  br i1 %2, label %3, label %6, !dbg !2458

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2459, !tbaa !1069
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2461
  tail call void @abort() #24, !dbg !2462
  unreachable, !dbg !2462

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %7, metadata !2453, metadata !DIExpression()), !dbg !2455
  %8 = icmp eq i8* %7, null, !dbg !2464
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2465
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2465
  call void @llvm.dbg.value(metadata i8* %10, metadata !2454, metadata !DIExpression()), !dbg !2455
  %11 = ptrtoint i8* %10 to i64, !dbg !2466
  %12 = ptrtoint i8* %0 to i64, !dbg !2466
  %13 = sub i64 %11, %12, !dbg !2466
  %14 = icmp sgt i64 %13, 6, !dbg !2468
  br i1 %14, label %15, label %24, !dbg !2469

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2470
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #23, !dbg !2471
  %18 = icmp eq i32 %17, 0, !dbg !2472
  br i1 %18, label %19, label %24, !dbg !2473

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2452, metadata !DIExpression()), !dbg !2455
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #23, !dbg !2474
  %21 = icmp eq i32 %20, 0, !dbg !2477
  br i1 %21, label %22, label %24, !dbg !2478

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %23, metadata !2452, metadata !DIExpression()), !dbg !2455
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2481, !tbaa !1069
  br label %24, !dbg !2482

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2452, metadata !DIExpression()), !dbg !2455
  store i8* %25, i8** @program_name, align 8, !dbg !2483, !tbaa !1069
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2484, !tbaa !1069
  ret void, !dbg !2485
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2486 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2491, metadata !DIExpression()), !dbg !2494
  %2 = tail call i32* @__errno_location() #26, !dbg !2495
  %3 = load i32, i32* %2, align 4, !dbg !2495, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %3, metadata !2492, metadata !DIExpression()), !dbg !2494
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2496
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2496
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !2497
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2493, metadata !DIExpression()), !dbg !2494
  store i32 %3, i32* %2, align 4, !dbg !2498, !tbaa !1141
  ret %struct.quoting_options* %8, !dbg !2499
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2500 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2504, metadata !DIExpression()), !dbg !2505
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2506
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2506
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2507
  %5 = load i32, i32* %4, align 8, !dbg !2507, !tbaa !2508
  ret i32 %5, !dbg !2510
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2511 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2516, metadata !DIExpression()), !dbg !2517
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2518
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2518
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2519
  store i32 %1, i32* %5, align 8, !dbg !2520, !tbaa !2508
  ret void, !dbg !2521
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2522 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2526, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %1, metadata !2527, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %2, metadata !2528, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %1, metadata !2529, metadata !DIExpression()), !dbg !2535
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2536
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2536
  %6 = lshr i8 %1, 5, !dbg !2537
  %7 = zext i8 %6 to i64, !dbg !2537
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2538
  call void @llvm.dbg.value(metadata i32* %8, metadata !2531, metadata !DIExpression()), !dbg !2535
  %9 = and i8 %1, 31, !dbg !2539
  %10 = zext i8 %9 to i32, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %10, metadata !2533, metadata !DIExpression()), !dbg !2535
  %11 = load i32, i32* %8, align 4, !dbg !2540, !tbaa !1141
  %12 = lshr i32 %11, %10, !dbg !2541
  %13 = and i32 %12, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %13, metadata !2534, metadata !DIExpression()), !dbg !2535
  %14 = and i32 %2, 1, !dbg !2543
  %15 = xor i32 %13, %14, !dbg !2544
  %16 = shl i32 %15, %10, !dbg !2545
  %17 = xor i32 %16, %11, !dbg !2546
  store i32 %17, i32* %8, align 4, !dbg !2546, !tbaa !1141
  ret i32 %13, !dbg !2547
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2548 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %1, metadata !2553, metadata !DIExpression()), !dbg !2555
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2556
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2552, metadata !DIExpression()), !dbg !2555
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2559
  %6 = load i32, i32* %5, align 4, !dbg !2559, !tbaa !2560
  call void @llvm.dbg.value(metadata i32 %6, metadata !2554, metadata !DIExpression()), !dbg !2555
  store i32 %1, i32* %5, align 4, !dbg !2561, !tbaa !2560
  ret i32 %6, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2563 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()), !dbg !2570
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2571
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()), !dbg !2570
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2574
  store i32 10, i32* %6, align 8, !dbg !2575, !tbaa !2508
  %7 = icmp ne i8* %1, null, !dbg !2576
  %8 = icmp ne i8* %2, null, !dbg !2578
  %9 = and i1 %7, %8, !dbg !2579
  br i1 %9, label %11, label %10, !dbg !2579

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2580
  unreachable, !dbg !2580

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2581
  store i8* %1, i8** %12, align 8, !dbg !2582, !tbaa !2583
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2584
  store i8* %2, i8** %13, align 8, !dbg !2585, !tbaa !2586
  ret void, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2593, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2594, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %3, metadata !2595, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2596, metadata !DIExpression()), !dbg !2600
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2601
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2597, metadata !DIExpression()), !dbg !2600
  %8 = tail call i32* @__errno_location() #26, !dbg !2602
  %9 = load i32, i32* %8, align 4, !dbg !2602, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %9, metadata !2598, metadata !DIExpression()), !dbg !2600
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2603
  %11 = load i32, i32* %10, align 8, !dbg !2603, !tbaa !2508
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2604
  %13 = load i32, i32* %12, align 4, !dbg !2604, !tbaa !2560
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2605
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2606
  %16 = load i8*, i8** %15, align 8, !dbg !2606, !tbaa !2583
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2607
  %18 = load i8*, i8** %17, align 8, !dbg !2607, !tbaa !2586
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %19, metadata !2599, metadata !DIExpression()), !dbg !2600
  store i32 %9, i32* %8, align 4, !dbg !2609, !tbaa !1141
  ret i64 %19, !dbg !2610
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2611 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %2, metadata !2619, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %3, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %4, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %5, metadata !2622, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32* %6, metadata !2623, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %7, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %8, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* null, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2630, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2631, metadata !DIExpression()), !dbg !2675
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !2676
  %14 = icmp eq i64 %13, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i1 %14, metadata !2632, metadata !DIExpression()), !dbg !2675
  %15 = lshr i32 %5, 1, !dbg !2678
  %16 = trunc i32 %15 to i8, !dbg !2678
  %17 = and i8 %16, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i8 %17, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2636, metadata !DIExpression()), !dbg !2675
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2679
  %19 = and i32 %5, 4, !dbg !2681
  %20 = icmp eq i32 %19, 0, !dbg !2681
  %21 = and i32 %5, 1, !dbg !2684
  %22 = icmp eq i32 %21, 0, !dbg !2684
  %23 = bitcast i64* %10 to i8*, !dbg !2687
  %24 = bitcast i32* %12 to i8*, !dbg !2688
  %25 = icmp eq i32* %6, null, !dbg !2689
  br label %26, !dbg !2691

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2692
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2693
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2694
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2695
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2675
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2696
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2697
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2698
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %38, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %37, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %36, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %35, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %34, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %33, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %32, metadata !2630, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %31, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %30, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %29, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %28, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %27, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2669), !dbg !2699
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
  ], !dbg !2700

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %35, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 5, metadata !2621, metadata !DIExpression()), !dbg !2675
  br label %92, !dbg !2701

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 5, metadata !2621, metadata !DIExpression()), !dbg !2675
  %42 = and i8 %35, 1, !dbg !2703
  %43 = icmp eq i8 %42, 0, !dbg !2703
  br i1 %43, label %44, label %92, !dbg !2701

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2705
  br i1 %45, label %92, label %46, !dbg !2708

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2705, !tbaa !1177
  br label %92, !dbg !2705

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %27), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %48, metadata !2624, metadata !DIExpression()), !dbg !2675
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %27), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %49, metadata !2625, metadata !DIExpression()), !dbg !2675
  br label %50, !dbg !2714

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %51, metadata !2624, metadata !DIExpression()), !dbg !2675
  %53 = and i8 %35, 1, !dbg !2715
  %54 = icmp eq i8 %53, 0, !dbg !2715
  br i1 %54, label %55, label %70, !dbg !2717

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2627, metadata !DIExpression()), !dbg !2675
  %56 = load i8, i8* %51, align 1, !dbg !2718, !tbaa !1177
  %57 = icmp eq i8 %56, 0, !dbg !2721
  br i1 %57, label %70, label %58, !dbg !2721

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %61, metadata !2627, metadata !DIExpression()), !dbg !2675
  %62 = icmp ult i64 %61, %39, !dbg !2722
  br i1 %62, label %63, label %65, !dbg !2725

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2722
  store i8 %59, i8* %64, align 1, !dbg !2722, !tbaa !1177
  br label %65, !dbg !2722

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %66, metadata !2627, metadata !DIExpression()), !dbg !2675
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %67, metadata !2629, metadata !DIExpression()), !dbg !2675
  %68 = load i8, i8* %67, align 1, !dbg !2718, !tbaa !1177
  %69 = icmp eq i8 %68, 0, !dbg !2721
  br i1 %69, label %70, label %58, !dbg !2721, !llvm.loop !2727

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2729
  call void @llvm.dbg.value(metadata i64 %71, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %52, metadata !2629, metadata !DIExpression()), !dbg !2675
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %72, metadata !2630, metadata !DIExpression()), !dbg !2675
  br label %92, !dbg !2731

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2631, metadata !DIExpression()), !dbg !2675
  br label %74, !dbg !2732

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %75, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2633, metadata !DIExpression()), !dbg !2675
  br label %76, !dbg !2733

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2695
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %78, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %77, metadata !2631, metadata !DIExpression()), !dbg !2675
  %79 = and i8 %78, 1, !dbg !2734
  %80 = icmp eq i8 %79, 0, !dbg !2734
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2736
  br label %82, !dbg !2736

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2675
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2678
  call void @llvm.dbg.value(metadata i8 %84, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %83, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  %85 = and i8 %84, 1, !dbg !2737
  %86 = icmp eq i8 %85, 0, !dbg !2737
  br i1 %86, label %87, label %92, !dbg !2739

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2740
  br i1 %88, label %92, label %89, !dbg !2743

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2740, !tbaa !1177
  br label %92, !dbg !2740

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2675
  br label %92, !dbg !2744

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2745
  unreachable, !dbg !2745

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2729
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %40 ], !dbg !2675
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2675
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2675
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %100, metadata !2633, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %98, metadata !2630, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %96, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %93, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2626, metadata !DIExpression()), !dbg !2675
  %101 = and i8 %99, 1, !dbg !2746
  %102 = icmp ne i8 %101, 0, !dbg !2746
  %103 = icmp ne i32 %93, 2, !dbg !2746
  %104 = and i1 %103, %102, !dbg !2746
  %105 = icmp ne i64 %98, 0, !dbg !2746
  %106 = and i1 %105, %104, !dbg !2746
  %107 = icmp ugt i64 %98, 1, !dbg !2746
  %108 = and i8 %100, 1, !dbg !2748
  %109 = icmp eq i8 %108, 0, !dbg !2748
  %110 = icmp eq i32 %93, 2, !dbg !2751
  %111 = or i1 %103, %109, !dbg !2753
  %112 = icmp ne i8 %108, 0, !dbg !2755
  %113 = and i1 %110, %112, !dbg !2755
  %114 = xor i1 %102, true, !dbg !2756
  %115 = xor i1 %104, true, !dbg !2689
  %116 = and i1 %109, %115, !dbg !2689
  %117 = or i1 %25, %116, !dbg !2689
  %118 = and i8 %99, %100, !dbg !2757
  %119 = and i8 %118, 1, !dbg !2757
  %120 = icmp ne i8 %119, 0, !dbg !2757
  %121 = and i1 %120, %105, !dbg !2757
  br label %122, !dbg !2759

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2760
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2729
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2692
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2696
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2697
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2698
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %126, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %123, metadata !2626, metadata !DIExpression()), !dbg !2675
  %131 = icmp eq i64 %126, -1, !dbg !2761
  br i1 %131, label %132, label %136, !dbg !2762

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2763
  %134 = load i8, i8* %133, align 1, !dbg !2763, !tbaa !1177
  %135 = icmp eq i8 %134, 0, !dbg !2764
  br i1 %135, label %581, label %138, !dbg !2765

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2766
  br i1 %137, label %581, label %138, !dbg !2765

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 0, metadata !2644, metadata !DIExpression()), !dbg !2767
  br i1 %106, label %139, label %154, !dbg !2768

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2769
  %141 = and i1 %107, %131, !dbg !2770
  br i1 %141, label %142, label %144, !dbg !2770

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %143, metadata !2620, metadata !DIExpression()), !dbg !2675
  br label %144, !dbg !2772

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2620, metadata !DIExpression()), !dbg !2675
  %146 = icmp ugt i64 %140, %145, !dbg !2773
  br i1 %146, label %154, label %147, !dbg !2774

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2775
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2776
  %150 = icmp ne i32 %149, 0, !dbg !2777
  %151 = or i1 %150, %109, !dbg !2778
  %152 = xor i1 %150, true, !dbg !2778
  %153 = zext i1 %152 to i8, !dbg !2778
  br i1 %151, label %154, label %639, !dbg !2778

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2767
  call void @llvm.dbg.value(metadata i8 %156, metadata !2642, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %155, metadata !2620, metadata !DIExpression()), !dbg !2675
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2779
  %158 = load i8, i8* %157, align 1, !dbg !2779, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %158, metadata !2637, metadata !DIExpression()), !dbg !2767
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
  ], !dbg !2780

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2781

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2782

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2767
  %162 = and i8 %127, 1, !dbg !2785
  %163 = icmp eq i8 %162, 0, !dbg !2785
  %164 = and i1 %110, %163, !dbg !2785
  br i1 %164, label %165, label %181, !dbg !2785

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2787
  br i1 %166, label %167, label %169, !dbg !2791

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2787
  store i8 39, i8* %168, align 1, !dbg !2787, !tbaa !1177
  br label %169, !dbg !2787

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %170, metadata !2627, metadata !DIExpression()), !dbg !2675
  %171 = icmp ult i64 %170, %130, !dbg !2792
  br i1 %171, label %172, label %174, !dbg !2795

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2792
  store i8 36, i8* %173, align 1, !dbg !2792, !tbaa !1177
  br label %174, !dbg !2792

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2795
  call void @llvm.dbg.value(metadata i64 %175, metadata !2627, metadata !DIExpression()), !dbg !2675
  %176 = icmp ult i64 %175, %130, !dbg !2796
  br i1 %176, label %177, label %179, !dbg !2799

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2796
  store i8 39, i8* %178, align 1, !dbg !2796, !tbaa !1177
  br label %179, !dbg !2796

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %180, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %181, !dbg !2800

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2675
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %183, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %182, metadata !2627, metadata !DIExpression()), !dbg !2675
  %184 = icmp ult i64 %182, %130, !dbg !2801
  br i1 %184, label %185, label %187, !dbg !2804

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2801
  store i8 92, i8* %186, align 1, !dbg !2801, !tbaa !1177
  br label %187, !dbg !2801

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %188, metadata !2627, metadata !DIExpression()), !dbg !2675
  br i1 %103, label %189, label %463, !dbg !2805

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2807
  %191 = icmp ult i64 %190, %155, !dbg !2808
  br i1 %191, label %192, label %463, !dbg !2809

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2810
  %194 = load i8, i8* %193, align 1, !dbg !2810, !tbaa !1177
  %195 = add i8 %194, -48, !dbg !2811
  %196 = icmp ult i8 %195, 10, !dbg !2811
  br i1 %196, label %197, label %463, !dbg !2811

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2812
  br i1 %198, label %199, label %201, !dbg !2816

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2812
  store i8 48, i8* %200, align 1, !dbg !2812, !tbaa !1177
  br label %201, !dbg !2812

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %202, metadata !2627, metadata !DIExpression()), !dbg !2675
  %203 = icmp ult i64 %202, %130, !dbg !2817
  br i1 %203, label %204, label %206, !dbg !2820

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2817
  store i8 48, i8* %205, align 1, !dbg !2817, !tbaa !1177
  br label %206, !dbg !2817

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %207, metadata !2627, metadata !DIExpression()), !dbg !2675
  br label %463, !dbg !2821

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2822

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2823

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2824

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2825

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2826
  %214 = icmp ult i64 %213, %155, !dbg !2827
  br i1 %214, label %215, label %463, !dbg !2828

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2829
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2830
  %218 = load i8, i8* %217, align 1, !dbg !2830, !tbaa !1177
  %219 = icmp eq i8 %218, 63, !dbg !2831
  br i1 %219, label %220, label %463, !dbg !2832

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2833
  %222 = load i8, i8* %221, align 1, !dbg !2833, !tbaa !1177
  %223 = sext i8 %222 to i32, !dbg !2833
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
  ], !dbg !2834

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2835

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %213, metadata !2626, metadata !DIExpression()), !dbg !2675
  %226 = icmp ult i64 %124, %130, !dbg !2837
  br i1 %226, label %227, label %229, !dbg !2840

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2837
  store i8 63, i8* %228, align 1, !dbg !2837, !tbaa !1177
  br label %229, !dbg !2837

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %230, metadata !2627, metadata !DIExpression()), !dbg !2675
  %231 = icmp ult i64 %230, %130, !dbg !2841
  br i1 %231, label %232, label %234, !dbg !2844

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2841
  store i8 34, i8* %233, align 1, !dbg !2841, !tbaa !1177
  br label %234, !dbg !2841

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %235, metadata !2627, metadata !DIExpression()), !dbg !2675
  %236 = icmp ult i64 %235, %130, !dbg !2845
  br i1 %236, label %237, label %239, !dbg !2848

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2845
  store i8 34, i8* %238, align 1, !dbg !2845, !tbaa !1177
  br label %239, !dbg !2845

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %240, metadata !2627, metadata !DIExpression()), !dbg !2675
  %241 = icmp ult i64 %240, %130, !dbg !2849
  br i1 %241, label %242, label %244, !dbg !2852

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2849
  store i8 63, i8* %243, align 1, !dbg !2849, !tbaa !1177
  br label %244, !dbg !2849

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %245, metadata !2627, metadata !DIExpression()), !dbg !2675
  br label %463, !dbg !2853

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2641, metadata !DIExpression()), !dbg !2767
  br label %256, !dbg !2854

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2641, metadata !DIExpression()), !dbg !2767
  br label %256, !dbg !2855

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2641, metadata !DIExpression()), !dbg !2767
  br label %254, !dbg !2856

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2641, metadata !DIExpression()), !dbg !2767
  br label %254, !dbg !2857

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2641, metadata !DIExpression()), !dbg !2767
  br label %256, !dbg !2858

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2641, metadata !DIExpression()), !dbg !2767
  br i1 %110, label %252, label %253, !dbg !2859

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2860

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2863

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2864
  call void @llvm.dbg.value(metadata i8 %255, metadata !2641, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.label(metadata !2670), !dbg !2865
  br i1 %111, label %256, label %625, !dbg !2866

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2864
  call void @llvm.dbg.value(metadata i8 %257, metadata !2641, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.label(metadata !2671), !dbg !2868
  br i1 %102, label %488, label %463, !dbg !2869

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2870

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2871, !tbaa !1177
  %261 = icmp eq i8 %260, 0, !dbg !2872
  br i1 %261, label %262, label %463, !dbg !2873

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2874
  br i1 %263, label %264, label %463, !dbg !2876

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2767
  br label %265, !dbg !2877

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2767
  call void @llvm.dbg.value(metadata i8 %266, metadata !2644, metadata !DIExpression()), !dbg !2767
  br i1 %111, label %463, label %625, !dbg !2878

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2767
  br i1 %110, label %268, label %463, !dbg !2879

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2880

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2882
  %271 = icmp ne i64 %125, 0, !dbg !2884
  %272 = or i1 %271, %270, !dbg !2885
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2885
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %274, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %273, metadata !2628, metadata !DIExpression()), !dbg !2675
  %275 = icmp ult i64 %124, %274, !dbg !2886
  br i1 %275, label %276, label %278, !dbg !2889

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2886
  store i8 39, i8* %277, align 1, !dbg !2886, !tbaa !1177
  br label %278, !dbg !2886

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %279, metadata !2627, metadata !DIExpression()), !dbg !2675
  %280 = icmp ult i64 %279, %274, !dbg !2890
  br i1 %280, label %281, label %283, !dbg !2893

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2890
  store i8 92, i8* %282, align 1, !dbg !2890, !tbaa !1177
  br label %283, !dbg !2890

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %284, metadata !2627, metadata !DIExpression()), !dbg !2675
  %285 = icmp ult i64 %284, %274, !dbg !2894
  br i1 %285, label %286, label %288, !dbg !2897

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2894
  store i8 39, i8* %287, align 1, !dbg !2894, !tbaa !1177
  br label %288, !dbg !2894

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %289, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %463, !dbg !2898

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2899

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2645, metadata !DIExpression()), !dbg !2900
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2901
  %293 = load i16*, i16** %292, align 8, !dbg !2901, !tbaa !1069
  %294 = zext i8 %158 to i64, !dbg !2901
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2901
  %296 = load i16, i16* %295, align 2, !dbg !2901, !tbaa !2348
  %297 = lshr i16 %296, 14, !dbg !2903
  %298 = trunc i16 %297 to i8, !dbg !2903
  %299 = and i8 %298, 1, !dbg !2903
  call void @llvm.dbg.value(metadata i8 %299, metadata !2648, metadata !DIExpression()), !dbg !2900
  br label %355, !dbg !2904

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #9, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2649, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %23, metadata !2907, metadata !DIExpression()) #9, !dbg !2915
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #9, !dbg !2915
  call void @llvm.dbg.value(metadata i64 8, metadata !2914, metadata !DIExpression()) #9, !dbg !2915
  store i64 0, i64* %10, align 8, !dbg !2917
  call void @llvm.dbg.value(metadata i64 0, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 1, metadata !2648, metadata !DIExpression()), !dbg !2900
  %301 = icmp eq i64 %155, -1, !dbg !2918
  br i1 %301, label %302, label %304, !dbg !2920

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %303, metadata !2620, metadata !DIExpression()), !dbg !2675
  br label %304, !dbg !2922

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2767
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  br label %306, !dbg !2923

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2924
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2925
  call void @llvm.dbg.value(metadata i8 %308, metadata !2648, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #9, !dbg !2926
  %309 = add i64 %307, %123, !dbg !2927
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2928
  %311 = sub i64 %305, %309, !dbg !2929
  call void @llvm.dbg.value(metadata i32* %12, metadata !2655, metadata !DIExpression(DW_OP_deref)), !dbg !2688
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #9, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %312, metadata !2658, metadata !DIExpression()), !dbg !2688
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2931

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  %314 = icmp ugt i64 %305, %309, !dbg !2932
  br i1 %314, label %315, label %340, !dbg !2934

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2935
  br label %317, !dbg !2935

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2645, metadata !DIExpression()), !dbg !2900
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2936
  %321 = load i8, i8* %320, align 1, !dbg !2936, !tbaa !1177
  %322 = icmp eq i8 %321, 0, !dbg !2934
  br i1 %322, label %340, label %323, !dbg !2935

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %324, metadata !2645, metadata !DIExpression()), !dbg !2900
  %325 = add i64 %324, %123, !dbg !2938
  %326 = icmp ult i64 %325, %305, !dbg !2932
  br i1 %326, label %317, label %340, !dbg !2934, !llvm.loop !2939

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2940
  %329 = and i1 %113, %328, !dbg !2943
  call void @llvm.dbg.value(metadata i64 1, metadata !2659, metadata !DIExpression()), !dbg !2944
  br i1 %329, label %330, label %343, !dbg !2943

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2659, metadata !DIExpression()), !dbg !2944
  %332 = add i64 %331, %309, !dbg !2945
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2946
  %334 = load i8, i8* %333, align 1, !dbg !2946, !tbaa !1177
  %335 = sext i8 %334 to i32, !dbg !2946
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2947

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %337, metadata !2659, metadata !DIExpression()), !dbg !2944
  %338 = icmp eq i64 %337, %312, !dbg !2940
  br i1 %338, label %343, label %330, !dbg !2949, !llvm.loop !2950

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %308, metadata !2648, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %307, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %308, metadata !2648, metadata !DIExpression()), !dbg !2900
  br label %340, !dbg !2952

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #9, !dbg !2952
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2953, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %344, metadata !2655, metadata !DIExpression()), !dbg !2688
  %345 = call i32 @iswprint(i32 %344) #9, !dbg !2955
  %346 = icmp eq i32 %345, 0, !dbg !2955
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2956
  call void @llvm.dbg.value(metadata i8 %347, metadata !2648, metadata !DIExpression()), !dbg !2900
  %348 = add i64 %312, %307, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %348, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 %347, metadata !2648, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %348, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #9, !dbg !2952
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2958
  %350 = icmp eq i32 %349, 0, !dbg !2959
  br i1 %350, label %306, label %351, !dbg !2960, !llvm.loop !2961

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9, !dbg !2963
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 2, metadata !2621, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %99, metadata !2631, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %305, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #9, !dbg !2952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9, !dbg !2963
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2767
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2964
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2964
  call void @llvm.dbg.value(metadata i8 %358, metadata !2648, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %357, metadata !2645, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %356, metadata !2620, metadata !DIExpression()), !dbg !2675
  %359 = and i8 %358, 1, !dbg !2965
  %360 = icmp ne i8 %359, 0, !dbg !2965
  call void @llvm.dbg.value(metadata i8 %359, metadata !2644, metadata !DIExpression()), !dbg !2767
  %361 = icmp ult i64 %357, 2, !dbg !2966
  %362 = or i1 %360, %114, !dbg !2967
  %363 = and i1 %361, %362, !dbg !2968
  br i1 %363, label %463, label %364, !dbg !2968

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %365, metadata !2666, metadata !DIExpression()), !dbg !2970
  br label %366, !dbg !2971

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2760
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2675
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2696
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2767
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2767
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2972
  call void @llvm.dbg.value(metadata i8 %372, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %371, metadata !2642, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %370, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %369, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %368, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %367, metadata !2626, metadata !DIExpression()), !dbg !2675
  br i1 %362, label %419, label %373, !dbg !2973

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2978

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2767
  %375 = and i8 %369, 1, !dbg !2981
  %376 = icmp eq i8 %375, 0, !dbg !2981
  %377 = and i1 %110, %376, !dbg !2981
  br i1 %377, label %378, label %394, !dbg !2981

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2983
  br i1 %379, label %380, label %382, !dbg !2987

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2983
  store i8 39, i8* %381, align 1, !dbg !2983, !tbaa !1177
  br label %382, !dbg !2983

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %383, metadata !2627, metadata !DIExpression()), !dbg !2675
  %384 = icmp ult i64 %383, %130, !dbg !2988
  br i1 %384, label %385, label %387, !dbg !2991

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2988
  store i8 36, i8* %386, align 1, !dbg !2988, !tbaa !1177
  br label %387, !dbg !2988

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %388, metadata !2627, metadata !DIExpression()), !dbg !2675
  %389 = icmp ult i64 %388, %130, !dbg !2992
  br i1 %389, label %390, label %392, !dbg !2995

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2992
  store i8 39, i8* %391, align 1, !dbg !2992, !tbaa !1177
  br label %392, !dbg !2992

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %393, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %394, !dbg !2996

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2675
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %396, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %395, metadata !2627, metadata !DIExpression()), !dbg !2675
  %397 = icmp ult i64 %395, %130, !dbg !2997
  br i1 %397, label %398, label %400, !dbg !3000

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2997
  store i8 92, i8* %399, align 1, !dbg !2997, !tbaa !1177
  br label %400, !dbg !2997

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %401, metadata !2627, metadata !DIExpression()), !dbg !2675
  %402 = icmp ult i64 %401, %130, !dbg !3001
  br i1 %402, label %403, label %407, !dbg !3004

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3001
  %405 = or i8 %404, 48, !dbg !3001
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3001
  store i8 %405, i8* %406, align 1, !dbg !3001, !tbaa !1177
  br label %407, !dbg !3001

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %408, metadata !2627, metadata !DIExpression()), !dbg !2675
  %409 = icmp ult i64 %408, %130, !dbg !3005
  br i1 %409, label %410, label %415, !dbg !3008

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3005
  %412 = and i8 %411, 7, !dbg !3005
  %413 = or i8 %412, 48, !dbg !3005
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3005
  store i8 %413, i8* %414, align 1, !dbg !3005, !tbaa !1177
  br label %415, !dbg !3005

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %416, metadata !2627, metadata !DIExpression()), !dbg !2675
  %417 = and i8 %370, 7, !dbg !3009
  %418 = or i8 %417, 48, !dbg !3010
  call void @llvm.dbg.value(metadata i8 %418, metadata !2637, metadata !DIExpression()), !dbg !2767
  br label %428, !dbg !3011

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3012
  %421 = icmp eq i8 %420, 0, !dbg !3012
  br i1 %421, label %428, label %422, !dbg !3014

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3015
  br i1 %423, label %424, label %426, !dbg !3019

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3015
  store i8 92, i8* %425, align 1, !dbg !3015, !tbaa !1177
  br label %426, !dbg !3015

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %427, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2767
  br label %428, !dbg !3020

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2675
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2696
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2767
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2767
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2767
  call void @llvm.dbg.value(metadata i8 %433, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %432, metadata !2642, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %431, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %430, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %429, metadata !2627, metadata !DIExpression()), !dbg !2675
  %434 = add i64 %367, 1, !dbg !3021
  %435 = icmp ugt i64 %365, %434, !dbg !3023
  br i1 %435, label %436, label %526, !dbg !3024

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3025
  %438 = icmp ne i8 %437, 0, !dbg !3025
  %439 = and i8 %433, 1, !dbg !3025
  %440 = icmp eq i8 %439, 0, !dbg !3025
  %441 = and i1 %438, %440, !dbg !3025
  br i1 %441, label %442, label %453, !dbg !3025

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3028
  br i1 %443, label %444, label %446, !dbg !3032

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3028
  store i8 39, i8* %445, align 1, !dbg !3028, !tbaa !1177
  br label %446, !dbg !3028

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %447, metadata !2627, metadata !DIExpression()), !dbg !2675
  %448 = icmp ult i64 %447, %130, !dbg !3033
  br i1 %448, label %449, label %451, !dbg !3036

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3033
  store i8 39, i8* %450, align 1, !dbg !3033, !tbaa !1177
  br label %451, !dbg !3033

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %452, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %453, !dbg !3037

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3038
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %455, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %454, metadata !2627, metadata !DIExpression()), !dbg !2675
  %456 = icmp ult i64 %454, %130, !dbg !3039
  br i1 %456, label %457, label %459, !dbg !3042

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3039
  store i8 %431, i8* %458, align 1, !dbg !3039, !tbaa !1177
  br label %459, !dbg !3039

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %460, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %434, metadata !2626, metadata !DIExpression()), !dbg !2675
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3043
  %462 = load i8, i8* %461, align 1, !dbg !3043, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %462, metadata !2637, metadata !DIExpression()), !dbg !2767
  br label %366, !dbg !3044, !llvm.loop !3045

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2760
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2675
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2692
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3048
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2675
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2675
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2767
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2767
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2767
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %472, metadata !2644, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %471, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %156, metadata !2642, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %470, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %469, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %468, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %467, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %466, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %465, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %464, metadata !2626, metadata !DIExpression()), !dbg !2675
  br i1 %117, label %486, label %474, !dbg !3049

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3050
  %476 = zext i8 %475 to i64, !dbg !3050
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3051
  %478 = load i32, i32* %477, align 4, !dbg !3051, !tbaa !1141
  %479 = and i8 %470, 31, !dbg !3052
  %480 = zext i8 %479 to i32, !dbg !3052
  %481 = shl nuw i32 1, %480, !dbg !3053
  %482 = and i32 %478, %481, !dbg !3053
  %483 = icmp eq i32 %482, 0, !dbg !3053
  %484 = icmp eq i8 %156, 0, !dbg !3054
  %485 = and i1 %484, %483, !dbg !3055
  br i1 %485, label %526, label %488, !dbg !3055

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3054
  br i1 %487, label %526, label %488, !dbg !3056

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3057
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2675
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2692
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3048
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2696
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2697
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2767
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2767
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %496, metadata !2644, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %495, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %494, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %493, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %492, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %491, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %490, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %489, metadata !2626, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2672), !dbg !3058
  br i1 %109, label %498, label %629, !dbg !3059

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2767
  %499 = and i8 %493, 1, !dbg !3061
  %500 = icmp eq i8 %499, 0, !dbg !3061
  %501 = and i1 %110, %500, !dbg !3061
  br i1 %501, label %502, label %518, !dbg !3061

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3063
  br i1 %503, label %504, label %506, !dbg !3067

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3063
  store i8 39, i8* %505, align 1, !dbg !3063, !tbaa !1177
  br label %506, !dbg !3063

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %507, metadata !2627, metadata !DIExpression()), !dbg !2675
  %508 = icmp ult i64 %507, %497, !dbg !3068
  br i1 %508, label %509, label %511, !dbg !3071

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3068
  store i8 36, i8* %510, align 1, !dbg !3068, !tbaa !1177
  br label %511, !dbg !3068

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %512, metadata !2627, metadata !DIExpression()), !dbg !2675
  %513 = icmp ult i64 %512, %497, !dbg !3072
  br i1 %513, label %514, label %516, !dbg !3075

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3072
  store i8 39, i8* %515, align 1, !dbg !3072, !tbaa !1177
  br label %516, !dbg !3072

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %517, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 1, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %518, !dbg !3076

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2767
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %520, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %519, metadata !2627, metadata !DIExpression()), !dbg !2675
  %521 = icmp ult i64 %519, %497, !dbg !3077
  br i1 %521, label %522, label %524, !dbg !3080

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3077
  store i8 92, i8* %523, align 1, !dbg !3077, !tbaa !1177
  br label %524, !dbg !3077

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %525, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %536, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %535, metadata !2644, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %534, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %533, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %532, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %531, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %530, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %529, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %528, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %527, metadata !2626, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2673), !dbg !3081
  br label %553, !dbg !3082

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3057
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2675
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2692
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3048
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2696
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2697
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3085
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2767
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2767
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %535, metadata !2644, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %534, metadata !2643, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %533, metadata !2637, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %532, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %531, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %530, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %529, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %528, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %527, metadata !2626, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2673), !dbg !3081
  %537 = and i8 %531, 1, !dbg !3082
  %538 = icmp ne i8 %537, 0, !dbg !3082
  %539 = and i8 %534, 1, !dbg !3082
  %540 = icmp eq i8 %539, 0, !dbg !3082
  %541 = and i1 %538, %540, !dbg !3082
  br i1 %541, label %542, label %553, !dbg !3082

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3086
  br i1 %543, label %544, label %546, !dbg !3090

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3086
  store i8 39, i8* %545, align 1, !dbg !3086, !tbaa !1177
  br label %546, !dbg !3086

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %547, metadata !2627, metadata !DIExpression()), !dbg !2675
  %548 = icmp ult i64 %547, %536, !dbg !3091
  br i1 %548, label %549, label %551, !dbg !3094

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3091
  store i8 39, i8* %550, align 1, !dbg !3091, !tbaa !1177
  br label %551, !dbg !3091

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %552, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2675
  br label %553, !dbg !3095

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2767
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2675
  call void @llvm.dbg.value(metadata i8 %562, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %561, metadata !2627, metadata !DIExpression()), !dbg !2675
  %563 = icmp ult i64 %561, %554, !dbg !3096
  br i1 %563, label %564, label %566, !dbg !3099

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3096
  store i8 %556, i8* %565, align 1, !dbg !3096, !tbaa !1177
  br label %566, !dbg !3096

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %567, metadata !2627, metadata !DIExpression()), !dbg !2675
  %568 = and i8 %555, 1, !dbg !3100
  %569 = icmp eq i8 %568, 0, !dbg !3100
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3102
  call void @llvm.dbg.value(metadata i8 %570, metadata !2636, metadata !DIExpression()), !dbg !2675
  br label %571, !dbg !3103

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3057
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2675
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2692
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3048
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2696
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2675
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2698
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %578, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %577, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %576, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %575, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %574, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %573, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %572, metadata !2626, metadata !DIExpression()), !dbg !2675
  %580 = add i64 %572, 1, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %580, metadata !2626, metadata !DIExpression()), !dbg !2675
  br label %122, !dbg !3105, !llvm.loop !3106

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %127, metadata !2634, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %128, metadata !2635, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %129, metadata !2636, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  %583 = icmp eq i64 %124, 0, !dbg !3108
  %584 = and i1 %110, %583, !dbg !3110
  %585 = xor i1 %584, true, !dbg !3110
  %586 = or i1 %109, %585, !dbg !3110
  br i1 %586, label %587, label %629, !dbg !3110

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3111
  %589 = xor i1 %588, true, !dbg !3111
  %590 = and i8 %128, 1, !dbg !3113
  %591 = icmp eq i8 %590, 0, !dbg !3113
  %592 = or i1 %591, %589, !dbg !3111
  br i1 %592, label %602, label %593, !dbg !3111

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3114
  %595 = icmp eq i8 %594, 0, !dbg !3114
  br i1 %595, label %598, label %596, !dbg !3117

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %94, metadata !2624, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %95, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %125, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %582, metadata !2620, metadata !DIExpression()), !dbg !2675
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3118
  br label %645, !dbg !3119

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3120
  %600 = icmp ne i64 %125, 0, !dbg !3122
  %601 = and i1 %600, %599, !dbg !3123
  br i1 %601, label %26, label %602, !dbg !3123

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %130, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  %603 = icmp ne i8* %97, null, !dbg !3124
  %604 = and i1 %603, %109, !dbg !3126
  br i1 %604, label %605, label %620, !dbg !3126

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %124, metadata !2627, metadata !DIExpression()), !dbg !2675
  %606 = load i8, i8* %97, align 1, !dbg !3127, !tbaa !1177
  %607 = icmp eq i8 %606, 0, !dbg !3130
  br i1 %607, label %620, label %608, !dbg !3130

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2629, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %611, metadata !2627, metadata !DIExpression()), !dbg !2675
  %612 = icmp ult i64 %611, %130, !dbg !3131
  br i1 %612, label %613, label %615, !dbg !3134

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3131
  store i8 %609, i8* %614, align 1, !dbg !3131, !tbaa !1177
  br label %615, !dbg !3131

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %616, metadata !2627, metadata !DIExpression()), !dbg !2675
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3135
  call void @llvm.dbg.value(metadata i8* %617, metadata !2629, metadata !DIExpression()), !dbg !2675
  %618 = load i8, i8* %617, align 1, !dbg !3127, !tbaa !1177
  %619 = icmp eq i8 %618, 0, !dbg !3130
  br i1 %619, label %620, label %608, !dbg !3130, !llvm.loop !3136

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2729
  call void @llvm.dbg.value(metadata i64 %621, metadata !2627, metadata !DIExpression()), !dbg !2675
  %622 = icmp ult i64 %621, %130, !dbg !3138
  br i1 %622, label %623, label %645, !dbg !3140

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3141
  store i8 0, i8* %624, align 1, !dbg !3142, !tbaa !1177
  br label %645, !dbg !3141

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %630, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2674), !dbg !3143
  %627 = icmp eq i8 %101, 0, !dbg !3144
  %628 = select i1 %627, i32 2, i32 4, !dbg !3144
  br label %635, !dbg !3144

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %630, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.label(metadata !2674), !dbg !3143
  %632 = icmp eq i32 %93, 2, !dbg !3146
  %633 = icmp eq i8 %101, 0, !dbg !3144
  %634 = select i1 %633, i32 2, i32 4, !dbg !3144
  br i1 %632, label %635, label %639, !dbg !3144

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3144

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2621, metadata !DIExpression()), !dbg !2675
  %643 = and i32 %5, -3, !dbg !3147
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3148
  br label %645, !dbg !3149

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3150
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3155, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3159
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %3, metadata !3157, metadata !DIExpression()), !dbg !3159
  %4 = icmp eq i8* %3, %0, !dbg !3161
  br i1 %4, label %5, label %71, !dbg !3163

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %6, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %6, metadata !3165, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* undef, metadata !3171, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 85, metadata !3172, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 84, metadata !3173, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 70, metadata !3174, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 45, metadata !3175, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 56, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 0, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 0, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 0, metadata !3180, metadata !DIExpression()), !dbg !3181
  %7 = load i8, i8* %6, align 1, !dbg !3184, !tbaa !1177
  %8 = and i8 %7, -33, !dbg !3184
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3184

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3186, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* undef, metadata !3191, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 84, metadata !3192, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 70, metadata !3193, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 45, metadata !3194, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 56, metadata !3195, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 0, metadata !3196, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 0, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3200
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3204
  %11 = load i8, i8* %10, align 1, !dbg !3204, !tbaa !1177
  %12 = and i8 %11, -33, !dbg !3204
  %13 = icmp eq i8 %12, 84, !dbg !3204
  br i1 %13, label %14, label %68, !dbg !3204

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3206, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* undef, metadata !3211, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 70, metadata !3212, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 45, metadata !3213, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 56, metadata !3214, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3215, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3216, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3218, metadata !DIExpression()), !dbg !3219
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3223
  %16 = load i8, i8* %15, align 1, !dbg !3223, !tbaa !1177
  %17 = and i8 %16, -33, !dbg !3223
  %18 = icmp eq i8 %17, 70, !dbg !3223
  br i1 %18, label %19, label %68, !dbg !3223

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3225, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* undef, metadata !3230, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 45, metadata !3231, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 56, metadata !3232, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 0, metadata !3233, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 0, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 0, metadata !3235, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 0, metadata !3236, metadata !DIExpression()), !dbg !3237
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3241
  %21 = load i8, i8* %20, align 1, !dbg !3241, !tbaa !1177
  %22 = icmp eq i8 %21, 45, !dbg !3241
  br i1 %22, label %23, label %68, !dbg !3243

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3244, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* undef, metadata !3249, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 56, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3251, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3252, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3255
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3259
  %25 = load i8, i8* %24, align 1, !dbg !3259, !tbaa !1177
  %26 = icmp eq i8 %25, 56, !dbg !3259
  br i1 %26, label %27, label %68, !dbg !3261

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3262, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8* undef, metadata !3267, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3269, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3271, metadata !DIExpression()), !dbg !3272
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3276
  %29 = load i8, i8* %28, align 1, !dbg !3276, !tbaa !1177
  %30 = icmp eq i8 %29, 0, !dbg !3276
  br i1 %30, label %31, label %68, !dbg !3278

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3279, !tbaa !1177
  %33 = icmp eq i8 %32, 96, !dbg !3280
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !3279
  br label %71, !dbg !3281

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3186, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* undef, metadata !3191, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 66, metadata !3192, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 49, metadata !3193, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 56, metadata !3194, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 48, metadata !3195, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 51, metadata !3196, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 48, metadata !3197, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3282
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3286
  %37 = load i8, i8* %36, align 1, !dbg !3286, !tbaa !1177
  %38 = and i8 %37, -33, !dbg !3286
  %39 = icmp eq i8 %38, 66, !dbg !3286
  br i1 %39, label %40, label %68, !dbg !3286

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3206, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* undef, metadata !3211, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 49, metadata !3212, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 56, metadata !3213, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 48, metadata !3214, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 51, metadata !3215, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 48, metadata !3216, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 0, metadata !3217, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 0, metadata !3218, metadata !DIExpression()), !dbg !3287
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3289
  %42 = load i8, i8* %41, align 1, !dbg !3289, !tbaa !1177
  %43 = icmp eq i8 %42, 49, !dbg !3289
  br i1 %43, label %44, label %68, !dbg !3290

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3225, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* undef, metadata !3230, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 56, metadata !3231, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 48, metadata !3232, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 51, metadata !3233, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 48, metadata !3234, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 0, metadata !3235, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 0, metadata !3236, metadata !DIExpression()), !dbg !3291
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3293
  %46 = load i8, i8* %45, align 1, !dbg !3293, !tbaa !1177
  %47 = icmp eq i8 %46, 56, !dbg !3293
  br i1 %47, label %48, label %68, !dbg !3294

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3244, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* undef, metadata !3249, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 48, metadata !3250, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 51, metadata !3251, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 48, metadata !3252, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3295
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3297
  %50 = load i8, i8* %49, align 1, !dbg !3297, !tbaa !1177
  %51 = icmp eq i8 %50, 48, !dbg !3297
  br i1 %51, label %52, label %68, !dbg !3298

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3262, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* undef, metadata !3267, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 51, metadata !3268, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 48, metadata !3269, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 0, metadata !3270, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 0, metadata !3271, metadata !DIExpression()), !dbg !3299
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3301
  %54 = load i8, i8* %53, align 1, !dbg !3301, !tbaa !1177
  %55 = icmp eq i8 %54, 51, !dbg !3301
  br i1 %55, label %56, label %68, !dbg !3302

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3303, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* undef, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 48, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3311, metadata !DIExpression()), !dbg !3312
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3316
  %58 = load i8, i8* %57, align 1, !dbg !3316, !tbaa !1177
  %59 = icmp eq i8 %58, 48, !dbg !3316
  br i1 %59, label %60, label %68, !dbg !3318

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3319, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8* undef, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8 0, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8 0, metadata !3326, metadata !DIExpression()), !dbg !3327
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3331
  %62 = load i8, i8* %61, align 1, !dbg !3331, !tbaa !1177
  %63 = icmp eq i8 %62, 0, !dbg !3331
  br i1 %63, label %64, label %68, !dbg !3333

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3334, !tbaa !1177
  %66 = icmp eq i8 %65, 96, !dbg !3335
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !3334
  br label %71, !dbg !3336

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3337
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !3338
  br label %71, !dbg !3339

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3159
  ret i8* %72, !dbg !3340
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !334 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !338 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3341 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #9, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()) #9, !dbg !3362
  call void @llvm.dbg.value(metadata i64* null, metadata !3355, metadata !DIExpression()) #9, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3356, metadata !DIExpression()) #9, !dbg !3362
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3364
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3357, metadata !DIExpression()) #9, !dbg !3362
  %6 = tail call i32* @__errno_location() #26, !dbg !3365
  %7 = load i32, i32* %6, align 4, !dbg !3365, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %7, metadata !3358, metadata !DIExpression()) #9, !dbg !3362
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3366
  %9 = load i32, i32* %8, align 4, !dbg !3366, !tbaa !2560
  %10 = or i32 %9, 1, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %10, metadata !3359, metadata !DIExpression()) #9, !dbg !3362
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3368
  %12 = load i32, i32* %11, align 8, !dbg !3368, !tbaa !2508
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3370
  %15 = load i8*, i8** %14, align 8, !dbg !3370, !tbaa !2583
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3371
  %17 = load i8*, i8** %16, align 8, !dbg !3371, !tbaa !2586
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #9, !dbg !3372
  %19 = add i64 %18, 1, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %19, metadata !3360, metadata !DIExpression()) #9, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %19, metadata !3374, metadata !DIExpression()) #9, !dbg !3379
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %20, metadata !3361, metadata !DIExpression()) #9, !dbg !3362
  %21 = load i32, i32* %11, align 8, !dbg !3382, !tbaa !2508
  %22 = load i8*, i8** %14, align 8, !dbg !3383, !tbaa !2583
  %23 = load i8*, i8** %16, align 8, !dbg !3384, !tbaa !2586
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #9, !dbg !3385
  store i32 %7, i32* %6, align 4, !dbg !3386, !tbaa !1141
  ret i8* %20, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64* %2, metadata !3355, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3356, metadata !DIExpression()), !dbg !3388
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3389
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3357, metadata !DIExpression()), !dbg !3388
  %7 = tail call i32* @__errno_location() #26, !dbg !3390
  %8 = load i32, i32* %7, align 4, !dbg !3390, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %8, metadata !3358, metadata !DIExpression()), !dbg !3388
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3391
  %10 = load i32, i32* %9, align 4, !dbg !3391, !tbaa !2560
  %11 = icmp ne i64* %2, null, !dbg !3392
  %12 = xor i1 %11, true, !dbg !3392
  %13 = zext i1 %12 to i32, !dbg !3392
  %14 = or i32 %10, %13, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %14, metadata !3359, metadata !DIExpression()), !dbg !3388
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3394
  %16 = load i32, i32* %15, align 8, !dbg !3394, !tbaa !2508
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3395
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3396
  %19 = load i8*, i8** %18, align 8, !dbg !3396, !tbaa !2583
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3397
  %21 = load i8*, i8** %20, align 8, !dbg !3397, !tbaa !2586
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3398
  %23 = add i64 %22, 1, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %23, metadata !3360, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %23, metadata !3374, metadata !DIExpression()) #9, !dbg !3400
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !3402
  call void @llvm.dbg.value(metadata i8* %24, metadata !3361, metadata !DIExpression()), !dbg !3388
  %25 = load i32, i32* %15, align 8, !dbg !3403, !tbaa !2508
  %26 = load i8*, i8** %18, align 8, !dbg !3404, !tbaa !2583
  %27 = load i8*, i8** %20, align 8, !dbg !3405, !tbaa !2586
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3406
  store i32 %8, i32* %7, align 4, !dbg !3407, !tbaa !1141
  br i1 %11, label %29, label %30, !dbg !3408

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3409, !tbaa !1491
  br label %30, !dbg !3411

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3413 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3417, !tbaa !1069
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3415, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i32 1, metadata !3416, metadata !DIExpression()), !dbg !3418
  %2 = load i32, i32* @nslots, align 4, !dbg !3419, !tbaa !1141
  %3 = icmp sgt i32 %2, 1, !dbg !3422
  br i1 %3, label %4, label %12, !dbg !3423

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3416, metadata !DIExpression()), !dbg !3418
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3424
  %7 = load i8*, i8** %6, align 8, !dbg !3424, !tbaa !3425
  tail call void @free(i8* %7) #9, !dbg !3427
  %8 = add nuw nsw i64 %5, 1, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %8, metadata !3416, metadata !DIExpression()), !dbg !3418
  %9 = load i32, i32* @nslots, align 4, !dbg !3419, !tbaa !1141
  %10 = sext i32 %9 to i64, !dbg !3422
  %11 = icmp slt i64 %8, %10, !dbg !3422
  br i1 %11, label %4, label %12, !dbg !3423, !llvm.loop !3429

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3431
  %14 = load i8*, i8** %13, align 8, !dbg !3431, !tbaa !3425
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3433
  br i1 %15, label %17, label %16, !dbg !3434

16:                                               ; preds = %12
  tail call void @free(i8* %14) #9, !dbg !3435
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3437, !tbaa !3438
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3439, !tbaa !3425
  br label %17, !dbg !3440

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3441
  br i1 %18, label %21, label %19, !dbg !3443

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3444
  tail call void @free(i8* %20) #9, !dbg !3446
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3447, !tbaa !1069
  br label %21, !dbg !3448

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3449, !tbaa !1141
  ret void, !dbg !3450
}

; Function Attrs: nounwind
declare !dbg !310 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()), !dbg !3455
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3456
  ret i8* %3, !dbg !3457
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !3463, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %2, metadata !3464, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3465, metadata !DIExpression()), !dbg !3477
  %5 = tail call i32* @__errno_location() #26, !dbg !3478
  %6 = load i32, i32* %5, align 4, !dbg !3478, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %6, metadata !3466, metadata !DIExpression()), !dbg !3477
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3479, !tbaa !1069
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3467, metadata !DIExpression()), !dbg !3477
  %8 = icmp slt i32 %0, 0, !dbg !3480
  br i1 %8, label %9, label %10, !dbg !3482

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3483
  unreachable, !dbg !3483

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3484, !tbaa !1141
  %12 = icmp sgt i32 %11, %0, !dbg !3485
  br i1 %12, label %34, label %13, !dbg !3486

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3487
  call void @llvm.dbg.value(metadata i1 %14, metadata !3468, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3471, metadata !DIExpression()), !dbg !3488
  %15 = icmp eq i32 %0, 2147483647, !dbg !3489
  br i1 %15, label %16, label %17, !dbg !3491

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3492
  unreachable, !dbg !3492

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3493
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3493
  %20 = add nuw nsw i32 %0, 1, !dbg !3494
  %21 = sext i32 %20 to i64, !dbg !3495
  %22 = shl nuw nsw i64 %21, 4, !dbg !3496
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !3497
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3467, metadata !DIExpression()), !dbg !3477
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3498, !tbaa !1069
  br i1 %14, label %25, label %26, !dbg !3499

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3500, !tbaa.struct !3502
  br label %26, !dbg !3503

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3504, !tbaa !1141
  %28 = sext i32 %27 to i64, !dbg !3505
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3505
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3506
  %31 = sub nsw i32 %20, %27, !dbg !3507
  %32 = sext i32 %31 to i64, !dbg !3508
  %33 = shl nsw i64 %32, 4, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %30, metadata !2907, metadata !DIExpression()) #9, !dbg !3510
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #9, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %33, metadata !2914, metadata !DIExpression()) #9, !dbg !3510
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #9, !dbg !3512
  store i32 %20, i32* @nslots, align 4, !dbg !3513, !tbaa !1141
  br label %34, !dbg !3514

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3477
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3467, metadata !DIExpression()), !dbg !3477
  %36 = zext i32 %0 to i64, !dbg !3515
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3516
  %38 = load i64, i64* %37, align 8, !dbg !3516, !tbaa !3438
  call void @llvm.dbg.value(metadata i64 %38, metadata !3472, metadata !DIExpression()), !dbg !3517
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3518
  %40 = load i8*, i8** %39, align 8, !dbg !3518, !tbaa !3425
  call void @llvm.dbg.value(metadata i8* %40, metadata !3474, metadata !DIExpression()), !dbg !3517
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3519
  %42 = load i32, i32* %41, align 4, !dbg !3519, !tbaa !2560
  %43 = or i32 %42, 1, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %43, metadata !3475, metadata !DIExpression()), !dbg !3517
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3521
  %45 = load i32, i32* %44, align 8, !dbg !3521, !tbaa !2508
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3522
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3523
  %48 = load i8*, i8** %47, align 8, !dbg !3523, !tbaa !2583
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3524
  %50 = load i8*, i8** %49, align 8, !dbg !3524, !tbaa !2586
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %51, metadata !3476, metadata !DIExpression()), !dbg !3517
  %52 = icmp ugt i64 %38, %51, !dbg !3526
  br i1 %52, label %63, label %53, !dbg !3528

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %54, metadata !3472, metadata !DIExpression()), !dbg !3517
  store i64 %54, i64* %37, align 8, !dbg !3531, !tbaa !3438
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3532
  br i1 %55, label %57, label %56, !dbg !3534

56:                                               ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !3535
  br label %57, !dbg !3535

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3374, metadata !DIExpression()) #9, !dbg !3536
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %58, metadata !3474, metadata !DIExpression()), !dbg !3517
  store i8* %58, i8** %39, align 8, !dbg !3539, !tbaa !3425
  %59 = load i32, i32* %44, align 8, !dbg !3540, !tbaa !2508
  %60 = load i8*, i8** %47, align 8, !dbg !3541, !tbaa !2583
  %61 = load i8*, i8** %49, align 8, !dbg !3542, !tbaa !2586
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3543
  br label %63, !dbg !3544

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3517
  call void @llvm.dbg.value(metadata i8* %64, metadata !3474, metadata !DIExpression()), !dbg !3517
  store i32 %6, i32* %5, align 4, !dbg !3545, !tbaa !1141
  ret i8* %64, !dbg !3546
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3547 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3551, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %1, metadata !3552, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %2, metadata !3553, metadata !DIExpression()), !dbg !3554
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3555
  ret i8* %4, !dbg !3556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()) #9, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %0, metadata !3454, metadata !DIExpression()) #9, !dbg !3561
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3563
  ret i8* %2, !dbg !3564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3565 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3569, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %1, metadata !3570, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()) #9, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !3552, metadata !DIExpression()) #9, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %1, metadata !3553, metadata !DIExpression()) #9, !dbg !3572
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3574
  ret i8* %3, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3576 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %1, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8* %2, metadata !3582, metadata !DIExpression()), !dbg !3584
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3585
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3585
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %1, metadata !3587, metadata !DIExpression()) #9, !dbg !3593
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3592, metadata !DIExpression()) #9, !dbg !3595
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #9, !dbg !3595, !alias.scope !3596
  %6 = icmp eq i32 %1, 10, !dbg !3599
  br i1 %6, label %7, label %8, !dbg !3601

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3602, !noalias !3596
  unreachable, !dbg !3602

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3603
  store i32 %1, i32* %9, align 8, !dbg !3604, !tbaa !2508, !alias.scope !3596
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3606
  ret i8* %10, !dbg !3607
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3608 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3612, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %1, metadata !3613, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3614, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %3, metadata !3615, metadata !DIExpression()), !dbg !3617
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3618
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %1, metadata !3587, metadata !DIExpression()) #9, !dbg !3620
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3592, metadata !DIExpression()) #9, !dbg !3622
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #9, !dbg !3622, !alias.scope !3623
  %7 = icmp eq i32 %1, 10, !dbg !3626
  br i1 %7, label %8, label %9, !dbg !3627

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3628, !noalias !3623
  unreachable, !dbg !3628

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3629
  store i32 %1, i32* %10, align 8, !dbg !3630, !tbaa !2508, !alias.scope !3623
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3632
  ret i8* %11, !dbg !3633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3634 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3592, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3583, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %0, metadata !3638, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !3639, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()) #9, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()) #9, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %1, metadata !3582, metadata !DIExpression()) #9, !dbg !3645
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3646
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %0, metadata !3587, metadata !DIExpression()) #9, !dbg !3647
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #9, !dbg !3640, !alias.scope !3648
  %5 = icmp eq i32 %0, 10, !dbg !3651
  br i1 %5, label %6, label %7, !dbg !3652

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3653, !noalias !3648
  unreachable, !dbg !3653

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3654
  store i32 %0, i32* %8, align 8, !dbg !3655, !tbaa !2508, !alias.scope !3648
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3657
  ret i8* %9, !dbg !3658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3659 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3592, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3616, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %1, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %2, metadata !3665, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 0, metadata !3612, metadata !DIExpression()) #9, !dbg !3671
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()) #9, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()) #9, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %2, metadata !3615, metadata !DIExpression()) #9, !dbg !3671
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3672
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %0, metadata !3587, metadata !DIExpression()) #9, !dbg !3673
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #9, !dbg !3666, !alias.scope !3674
  %6 = icmp eq i32 %0, 10, !dbg !3677
  br i1 %6, label %7, label %8, !dbg !3678

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3679, !noalias !3674
  unreachable, !dbg !3679

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3680
  store i32 %0, i32* %9, align 8, !dbg !3681, !tbaa !2508, !alias.scope !3674
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #9, !dbg !3682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3683
  ret i8* %10, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3685 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3689, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8 %2, metadata !3691, metadata !DIExpression()), !dbg !3693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3696, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2526, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 %2, metadata !2527, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 %2, metadata !2529, metadata !DIExpression()), !dbg !3698
  %6 = lshr i8 %2, 5, !dbg !3700
  %7 = zext i8 %6 to i64, !dbg !3700
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3701
  call void @llvm.dbg.value(metadata i32* %8, metadata !2531, metadata !DIExpression()), !dbg !3698
  %9 = and i8 %2, 31, !dbg !3702
  %10 = zext i8 %9 to i32, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %10, metadata !2533, metadata !DIExpression()), !dbg !3698
  %11 = load i32, i32* %8, align 4, !dbg !3703, !tbaa !1141
  %12 = lshr i32 %11, %10, !dbg !3704
  %13 = and i32 %12, 1, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %13, metadata !2534, metadata !DIExpression()), !dbg !3698
  %14 = xor i32 %13, 1, !dbg !3706
  %15 = shl i32 %14, %10, !dbg !3707
  %16 = xor i32 %15, %11, !dbg !3708
  store i32 %16, i32* %8, align 4, !dbg !3708, !tbaa !1141
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3709
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3710
  ret i8* %17, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3712 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3692, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 %1, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %0, metadata !3689, metadata !DIExpression()) #9, !dbg !3721
  call void @llvm.dbg.value(metadata i64 -1, metadata !3690, metadata !DIExpression()) #9, !dbg !3721
  call void @llvm.dbg.value(metadata i8 %1, metadata !3691, metadata !DIExpression()) #9, !dbg !3721
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3722
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3723, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2526, metadata !DIExpression()) #9, !dbg !3724
  call void @llvm.dbg.value(metadata i8 %1, metadata !2527, metadata !DIExpression()) #9, !dbg !3724
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()) #9, !dbg !3724
  call void @llvm.dbg.value(metadata i8 %1, metadata !2529, metadata !DIExpression()) #9, !dbg !3724
  %5 = lshr i8 %1, 5, !dbg !3726
  %6 = zext i8 %5 to i64, !dbg !3726
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3727
  call void @llvm.dbg.value(metadata i32* %7, metadata !2531, metadata !DIExpression()) #9, !dbg !3724
  %8 = and i8 %1, 31, !dbg !3728
  %9 = zext i8 %8 to i32, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %9, metadata !2533, metadata !DIExpression()) #9, !dbg !3724
  %10 = load i32, i32* %7, align 4, !dbg !3729, !tbaa !1141
  %11 = lshr i32 %10, %9, !dbg !3730
  %12 = and i32 %11, 1, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %12, metadata !2534, metadata !DIExpression()) #9, !dbg !3724
  %13 = xor i32 %12, 1, !dbg !3732
  %14 = shl i32 %13, %9, !dbg !3733
  %15 = xor i32 %14, %10, !dbg !3734
  store i32 %15, i32* %7, align 4, !dbg !3734, !tbaa !1141
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3735
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3736
  ret i8* %16, !dbg !3737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3738 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3692, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()) #9, !dbg !3745
  call void @llvm.dbg.value(metadata i8 58, metadata !3717, metadata !DIExpression()) #9, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %0, metadata !3689, metadata !DIExpression()) #9, !dbg !3746
  call void @llvm.dbg.value(metadata i64 -1, metadata !3690, metadata !DIExpression()) #9, !dbg !3746
  call void @llvm.dbg.value(metadata i8 58, metadata !3691, metadata !DIExpression()) #9, !dbg !3746
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3747
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3748, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2526, metadata !DIExpression()) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i8 58, metadata !2527, metadata !DIExpression()) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()) #9, !dbg !3749
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3751
  call void @llvm.dbg.value(metadata i32* %4, metadata !2531, metadata !DIExpression()) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i32 26, metadata !2533, metadata !DIExpression()) #9, !dbg !3749
  %5 = load i32, i32* %4, align 4, !dbg !3752, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %5, metadata !2534, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #9, !dbg !3749
  %6 = or i32 %5, 67108864, !dbg !3753
  store i32 %6, i32* %4, align 4, !dbg !3753, !tbaa !1141
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !3755
  ret i8* %7, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3757 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3692, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %0, metadata !3689, metadata !DIExpression()) #9, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()) #9, !dbg !3764
  call void @llvm.dbg.value(metadata i8 58, metadata !3691, metadata !DIExpression()) #9, !dbg !3764
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3765
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3766, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2526, metadata !DIExpression()) #9, !dbg !3767
  call void @llvm.dbg.value(metadata i8 58, metadata !2527, metadata !DIExpression()) #9, !dbg !3767
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()) #9, !dbg !3767
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()) #9, !dbg !3767
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3769
  call void @llvm.dbg.value(metadata i32* %5, metadata !2531, metadata !DIExpression()) #9, !dbg !3767
  call void @llvm.dbg.value(metadata i32 26, metadata !2533, metadata !DIExpression()) #9, !dbg !3767
  %6 = load i32, i32* %5, align 4, !dbg !3770, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %6, metadata !2534, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #9, !dbg !3767
  %7 = or i32 %6, 67108864, !dbg !3771
  store i32 %7, i32* %5, align 4, !dbg !3771, !tbaa !1141
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !3773
  ret i8* %8, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3775 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3592, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %1, metadata !3778, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* %2, metadata !3779, metadata !DIExpression()), !dbg !3783
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3784
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3780, metadata !DIExpression()), !dbg !3785
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3786
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %1, metadata !3587, metadata !DIExpression()) #9, !dbg !3787
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3787
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3781, !alias.scope !3788
  %8 = icmp eq i32 %1, 10, !dbg !3791
  br i1 %8, label %9, label %10, !dbg !3792

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3793, !noalias !3788
  unreachable, !dbg !3793

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3592, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3787
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3786
  store i32 %1, i32* %11, align 8, !dbg !3786, !tbaa.struct !3697
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3786
  %13 = bitcast i32* %12 to i8*, !dbg !3786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3786, !tbaa.struct !3697
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3786
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2526, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 58, metadata !2527, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()), !dbg !3794
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3796
  call void @llvm.dbg.value(metadata i32* %14, metadata !2531, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 26, metadata !2533, metadata !DIExpression()), !dbg !3794
  %15 = load i32, i32* %14, align 4, !dbg !3797, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %15, metadata !2534, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3794
  %16 = or i32 %15, 67108864, !dbg !3798
  store i32 %16, i32* %14, align 4, !dbg !3798, !tbaa !1141
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3799
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3800
  ret i8* %17, !dbg !3801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3802 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3810, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i32 %0, metadata !3806, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8* %1, metadata !3807, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8* %3, metadata !3809, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()) #9, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()) #9, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()) #9, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()) #9, !dbg !3823
  call void @llvm.dbg.value(metadata i64 -1, metadata !3819, metadata !DIExpression()) #9, !dbg !3823
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3825, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()) #9, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #9, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #9, !dbg !3826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()) #9, !dbg !3826
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3828
  store i32 10, i32* %7, align 8, !dbg !3829, !tbaa !2508
  %8 = icmp ne i8* %1, null, !dbg !3830
  %9 = icmp ne i8* %2, null, !dbg !3831
  %10 = and i1 %8, %9, !dbg !3832
  br i1 %10, label %12, label %11, !dbg !3832

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3833
  unreachable, !dbg !3833

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3834
  store i8* %1, i8** %13, align 8, !dbg !3835, !tbaa !2583
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3836
  store i8* %2, i8** %14, align 8, !dbg !3837, !tbaa !2586
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !3838
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3839
  ret i8* %15, !dbg !3840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3811 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %4, metadata !3819, metadata !DIExpression()), !dbg !3841
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3842
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3842
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3810, metadata !DIExpression()), !dbg !3843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3844, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2567, metadata !DIExpression()) #9, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #9, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #9, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2567, metadata !DIExpression()) #9, !dbg !3845
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3847
  store i32 10, i32* %8, align 8, !dbg !3848, !tbaa !2508
  %9 = icmp ne i8* %1, null, !dbg !3849
  %10 = icmp ne i8* %2, null, !dbg !3850
  %11 = and i1 %9, %10, !dbg !3851
  br i1 %11, label %13, label %12, !dbg !3851

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3852
  unreachable, !dbg !3852

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3853
  store i8* %1, i8** %14, align 8, !dbg !3854, !tbaa !2583
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3855
  store i8* %2, i8** %15, align 8, !dbg !3856, !tbaa !2586
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3857
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !3858
  ret i8* %16, !dbg !3859
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3860 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3810, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i8* %0, metadata !3864, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %1, metadata !3865, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %2, metadata !3866, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3806, metadata !DIExpression()) #9, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3807, metadata !DIExpression()) #9, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %1, metadata !3808, metadata !DIExpression()) #9, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %2, metadata !3809, metadata !DIExpression()) #9, !dbg !3871
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()) #9, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #9, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()) #9, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()) #9, !dbg !3872
  call void @llvm.dbg.value(metadata i64 -1, metadata !3819, metadata !DIExpression()) #9, !dbg !3872
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3873
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3874, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2567, metadata !DIExpression()) #9, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #9, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #9, !dbg !3875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2567, metadata !DIExpression()) #9, !dbg !3875
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3877
  store i32 10, i32* %6, align 8, !dbg !3878, !tbaa !2508
  %7 = icmp ne i8* %0, null, !dbg !3879
  %8 = icmp ne i8* %1, null, !dbg !3880
  %9 = and i1 %7, %8, !dbg !3881
  br i1 %9, label %11, label %10, !dbg !3881

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3882
  unreachable, !dbg !3882

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3883
  store i8* %0, i8** %12, align 8, !dbg !3884, !tbaa !2583
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3885
  store i8* %1, i8** %13, align 8, !dbg !3886, !tbaa !2586
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3887
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !3888
  ret i8* %14, !dbg !3889
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3890 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3810, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %1, metadata !3895, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %2, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()) #9, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()) #9, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()) #9, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()) #9, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %3, metadata !3819, metadata !DIExpression()) #9, !dbg !3901
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !3903, !tbaa.struct !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()) #9, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()) #9, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #9, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2567, metadata !DIExpression()) #9, !dbg !3904
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3906
  store i32 10, i32* %7, align 8, !dbg !3907, !tbaa !2508
  %8 = icmp ne i8* %0, null, !dbg !3908
  %9 = icmp ne i8* %1, null, !dbg !3909
  %10 = and i1 %8, %9, !dbg !3910
  br i1 %10, label %12, label %11, !dbg !3910

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3911
  unreachable, !dbg !3911

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3912
  store i8* %0, i8** %13, align 8, !dbg !3913, !tbaa !2583
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3914
  store i8* %1, i8** %14, align 8, !dbg !3915, !tbaa !2586
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3916
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !3917
  ret i8* %15, !dbg !3918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i8* %1, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %2, metadata !3925, metadata !DIExpression()), !dbg !3926
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3927
  ret i8* %4, !dbg !3928
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3933, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()) #9, !dbg !3936
  call void @llvm.dbg.value(metadata i8* %0, metadata !3924, metadata !DIExpression()) #9, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3925, metadata !DIExpression()) #9, !dbg !3936
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3938
  ret i8* %3, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i8* %1, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()) #9, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %1, metadata !3924, metadata !DIExpression()) #9, !dbg !3945
  call void @llvm.dbg.value(metadata i64 -1, metadata !3925, metadata !DIExpression()) #9, !dbg !3945
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3947
  ret i8* %3, !dbg !3948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3949 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3942, metadata !DIExpression()) #9, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %0, metadata !3943, metadata !DIExpression()) #9, !dbg !3953
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()) #9, !dbg !3955
  call void @llvm.dbg.value(metadata i8* %0, metadata !3924, metadata !DIExpression()) #9, !dbg !3955
  call void @llvm.dbg.value(metadata i64 -1, metadata !3925, metadata !DIExpression()) #9, !dbg !3955
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3957
  ret i8* %2, !dbg !3958
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @strintcmp(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #17 !dbg !3959 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3961, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8* %1, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8* %0, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %1, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 -1, metadata !3971, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 -1, metadata !3972, metadata !DIExpression()), !dbg !3978
  %3 = load i8, i8* %0, align 1, !dbg !3980, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %3, metadata !3973, metadata !DIExpression()), !dbg !3978
  %4 = load i8, i8* %1, align 1, !dbg !3981, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %4, metadata !3974, metadata !DIExpression()), !dbg !3978
  %5 = icmp eq i8 %3, 45, !dbg !3982
  br i1 %5, label %6, label %95, !dbg !3984

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3964, metadata !DIExpression()), !dbg !3978
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %8, metadata !3964, metadata !DIExpression()), !dbg !3978
  %9 = load i8, i8* %8, align 1, !dbg !3987, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %9, metadata !3973, metadata !DIExpression()), !dbg !3978
  %10 = icmp eq i8 %9, 48, !dbg !3988
  br i1 %10, label %6, label %11, !dbg !3989, !llvm.loop !3990

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3993
  br i1 %12, label %30, label %13, !dbg !3995

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3973, metadata !DIExpression()), !dbg !3978
  %14 = zext i8 %9 to i32, !dbg !3996
  %15 = add nsw i32 %14, -48, !dbg !3996
  %16 = icmp ult i32 %15, 10, !dbg !3996
  br i1 %16, label %197, label %17, !dbg !3999

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %1, metadata !3970, metadata !DIExpression()), !dbg !3978
  %18 = icmp eq i8 %4, 48, !dbg !4000
  br i1 %18, label %19, label %24, !dbg !4001

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3970, metadata !DIExpression()), !dbg !3978
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %21, metadata !3970, metadata !DIExpression()), !dbg !3978
  %22 = load i8, i8* %21, align 1, !dbg !4003, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %22, metadata !3974, metadata !DIExpression()), !dbg !3978
  %23 = icmp eq i8 %22, 48, !dbg !4000
  br i1 %23, label %19, label %24, !dbg !4001, !llvm.loop !4004

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3978
  call void @llvm.dbg.value(metadata i8 %25, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %25, metadata !3974, metadata !DIExpression()), !dbg !3978
  %26 = zext i8 %25 to i32, !dbg !4006
  %27 = add nsw i32 %26, -48, !dbg !4006
  %28 = icmp ult i32 %27, 10, !dbg !4006
  %29 = sext i1 %28 to i32, !dbg !4007
  br label %197, !dbg !4008

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3970, metadata !DIExpression()), !dbg !3978
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %32, metadata !3970, metadata !DIExpression()), !dbg !3978
  %33 = load i8, i8* %32, align 1, !dbg !4010, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %33, metadata !3974, metadata !DIExpression()), !dbg !3978
  %34 = icmp eq i8 %33, 48, !dbg !4011
  br i1 %34, label %30, label %35, !dbg !4012, !llvm.loop !4013

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %9, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %8, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %32, metadata !3970, metadata !DIExpression()), !dbg !3978
  %36 = zext i8 %9 to i32, !dbg !4016
  %37 = icmp eq i8 %33, %9, !dbg !4017
  %38 = add nsw i32 %36, -48, !dbg !4018
  %39 = icmp ult i32 %38, 10, !dbg !4018
  %40 = and i1 %39, %37, !dbg !4018
  br i1 %40, label %41, label %55, !dbg !4019

41:                                               ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %42, metadata !3964, metadata !DIExpression()), !dbg !3978
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !4020
  call void @llvm.dbg.value(metadata i8* %44, metadata !3964, metadata !DIExpression()), !dbg !3978
  %45 = load i8, i8* %44, align 1, !dbg !4022, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %45, metadata !3973, metadata !DIExpression()), !dbg !3978
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !4023
  call void @llvm.dbg.value(metadata i8* %46, metadata !3970, metadata !DIExpression()), !dbg !3978
  %47 = load i8, i8* %46, align 1, !dbg !4024, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %47, metadata !3974, metadata !DIExpression()), !dbg !3978
  %48 = zext i8 %45 to i32, !dbg !4016
  %49 = icmp eq i8 %47, %45, !dbg !4017
  %50 = add nsw i32 %48, -48, !dbg !4018
  %51 = icmp ult i32 %50, 10, !dbg !4018
  %52 = and i1 %49, %51, !dbg !4018
  br i1 %52, label %41, label %53, !dbg !4019

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !4016
  br label %55, !dbg !4025

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4026
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !4029
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !4029
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4029
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4016
  call void @llvm.dbg.value(metadata i8* %57, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %58, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %59, metadata !3974, metadata !DIExpression()), !dbg !3978
  %61 = zext i8 %59 to i32, !dbg !4025
  %62 = sub nsw i32 %61, %60, !dbg !4030
  call void @llvm.dbg.value(metadata i32 %62, metadata !3975, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 0, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %58, metadata !3964, metadata !DIExpression()), !dbg !3978
  %63 = icmp ult i32 %56, 10, !dbg !4026
  br i1 %63, label %68, label %64, !dbg !4031

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4032
  call void @llvm.dbg.value(metadata i64 %65, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %59, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %57, metadata !3970, metadata !DIExpression()), !dbg !3978
  %66 = add nsw i32 %61, -48, !dbg !4033
  %67 = icmp ult i32 %66, 10, !dbg !4033
  br i1 %67, label %77, label %86, !dbg !4036

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %70, metadata !3964, metadata !DIExpression()), !dbg !3978
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %71, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  %72 = load i8, i8* %71, align 1, !dbg !4038, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %72, metadata !3973, metadata !DIExpression()), !dbg !3978
  %73 = add i64 %69, 1, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %73, metadata !3976, metadata !DIExpression()), !dbg !3978
  %74 = zext i8 %72 to i32, !dbg !4026
  %75 = add nsw i32 %74, -48, !dbg !4026
  %76 = icmp ult i32 %75, 10, !dbg !4026
  br i1 %76, label %68, label %64, !dbg !4031, !llvm.loop !4040

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %79, metadata !3970, metadata !DIExpression()), !dbg !3978
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %80, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3974, metadata !DIExpression()), !dbg !3978
  %81 = load i8, i8* %80, align 1, !dbg !4043, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %81, metadata !3974, metadata !DIExpression()), !dbg !3978
  %82 = add i64 %78, 1, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %82, metadata !3977, metadata !DIExpression()), !dbg !3978
  %83 = zext i8 %81 to i32, !dbg !4033
  %84 = add nsw i32 %83, -48, !dbg !4033
  %85 = icmp ult i32 %84, 10, !dbg !4033
  br i1 %85, label %77, label %86, !dbg !4036, !llvm.loop !4045

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4047
  call void @llvm.dbg.value(metadata i64 %87, metadata !3977, metadata !DIExpression()), !dbg !3978
  %88 = icmp eq i64 %65, %87, !dbg !4048
  br i1 %88, label %92, label %89, !dbg !4050

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4051
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4052
  br label %197, !dbg !4053

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4054
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4029
  br label %197, !dbg !4029

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4056
  br i1 %96, label %99, label %97, !dbg !4058

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %0, metadata !3964, metadata !DIExpression()), !dbg !3978
  %98 = icmp eq i8 %3, 48, !dbg !4059
  br i1 %98, label %125, label %121, !dbg !4061

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3970, metadata !DIExpression()), !dbg !3978
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %101, metadata !3970, metadata !DIExpression()), !dbg !3978
  %102 = load i8, i8* %101, align 1, !dbg !4064, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %102, metadata !3974, metadata !DIExpression()), !dbg !3978
  %103 = icmp eq i8 %102, 48, !dbg !4065
  br i1 %103, label %99, label %104, !dbg !4066, !llvm.loop !4067

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3974, metadata !DIExpression()), !dbg !3978
  %105 = zext i8 %102 to i32, !dbg !4070
  %106 = add nsw i32 %105, -48, !dbg !4070
  %107 = icmp ult i32 %106, 10, !dbg !4070
  br i1 %107, label %197, label %108, !dbg !4072

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %0, metadata !3964, metadata !DIExpression()), !dbg !3978
  %109 = icmp eq i8 %3, 48, !dbg !4073
  br i1 %109, label %110, label %115, !dbg !4074

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3964, metadata !DIExpression()), !dbg !3978
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !4075
  call void @llvm.dbg.value(metadata i8* %112, metadata !3964, metadata !DIExpression()), !dbg !3978
  %113 = load i8, i8* %112, align 1, !dbg !4076, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %113, metadata !3973, metadata !DIExpression()), !dbg !3978
  %114 = icmp eq i8 %113, 48, !dbg !4073
  br i1 %114, label %110, label %115, !dbg !4074, !llvm.loop !4077

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3978
  call void @llvm.dbg.value(metadata i8 %116, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %116, metadata !3973, metadata !DIExpression()), !dbg !3978
  %117 = zext i8 %116 to i32, !dbg !4079
  %118 = add nsw i32 %117, -48, !dbg !4079
  %119 = icmp ult i32 %118, 10, !dbg !4079
  %120 = zext i1 %119 to i32, !dbg !4079
  br label %197, !dbg !4080

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3978
  call void @llvm.dbg.value(metadata i8* %122, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %123, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %4, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %1, metadata !3970, metadata !DIExpression()), !dbg !3978
  %124 = icmp eq i8 %4, 48, !dbg !4081
  br i1 %124, label %138, label %130, !dbg !4082

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3964, metadata !DIExpression()), !dbg !3978
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %127, metadata !3964, metadata !DIExpression()), !dbg !3978
  %128 = load i8, i8* %127, align 1, !dbg !4084, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %128, metadata !3973, metadata !DIExpression()), !dbg !3978
  %129 = icmp eq i8 %128, 48, !dbg !4059
  br i1 %129, label %125, label %121, !dbg !4061, !llvm.loop !4085

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3978
  call void @llvm.dbg.value(metadata i8* %131, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %132, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %123, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %122, metadata !3964, metadata !DIExpression()), !dbg !3978
  %133 = zext i8 %123 to i32, !dbg !4087
  %134 = icmp eq i8 %123, %132, !dbg !4088
  %135 = add nsw i32 %133, -48, !dbg !4089
  %136 = icmp ult i32 %135, 10, !dbg !4089
  %137 = and i1 %136, %134, !dbg !4089
  br i1 %137, label %143, label %157, !dbg !4090

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3970, metadata !DIExpression()), !dbg !3978
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %140, metadata !3970, metadata !DIExpression()), !dbg !3978
  %141 = load i8, i8* %140, align 1, !dbg !4092, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %141, metadata !3974, metadata !DIExpression()), !dbg !3978
  %142 = icmp eq i8 %141, 48, !dbg !4081
  br i1 %142, label %138, label %130, !dbg !4082, !llvm.loop !4093

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %144, metadata !3964, metadata !DIExpression()), !dbg !3978
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %146, metadata !3964, metadata !DIExpression()), !dbg !3978
  %147 = load i8, i8* %146, align 1, !dbg !4097, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %147, metadata !3973, metadata !DIExpression()), !dbg !3978
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4098
  call void @llvm.dbg.value(metadata i8* %148, metadata !3970, metadata !DIExpression()), !dbg !3978
  %149 = load i8, i8* %148, align 1, !dbg !4099, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %149, metadata !3974, metadata !DIExpression()), !dbg !3978
  %150 = zext i8 %147 to i32, !dbg !4087
  %151 = icmp eq i8 %147, %149, !dbg !4088
  %152 = add nsw i32 %150, -48, !dbg !4089
  %153 = icmp ult i32 %152, 10, !dbg !4089
  %154 = and i1 %151, %153, !dbg !4089
  br i1 %154, label %143, label %155, !dbg !4090

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !4087
  br label %157, !dbg !4100

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4101
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3978
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4087
  call void @llvm.dbg.value(metadata i8* %159, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %160, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %161, metadata !3974, metadata !DIExpression()), !dbg !3978
  %163 = zext i8 %161 to i32, !dbg !4100
  %164 = sub nsw i32 %162, %163, !dbg !4104
  call void @llvm.dbg.value(metadata i32 %164, metadata !3975, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 0, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %160, metadata !3964, metadata !DIExpression()), !dbg !3978
  %165 = icmp ult i32 %158, 10, !dbg !4101
  br i1 %165, label %170, label %166, !dbg !4105

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4106
  call void @llvm.dbg.value(metadata i64 %167, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 %161, metadata !3974, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %159, metadata !3970, metadata !DIExpression()), !dbg !3978
  %168 = add nsw i32 %163, -48, !dbg !4107
  %169 = icmp ult i32 %168, 10, !dbg !4107
  br i1 %169, label %179, label %188, !dbg !4110

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %172, metadata !3964, metadata !DIExpression()), !dbg !3978
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %173, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3973, metadata !DIExpression()), !dbg !3978
  %174 = load i8, i8* %173, align 1, !dbg !4112, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %174, metadata !3973, metadata !DIExpression()), !dbg !3978
  %175 = add i64 %171, 1, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %175, metadata !3976, metadata !DIExpression()), !dbg !3978
  %176 = zext i8 %174 to i32, !dbg !4101
  %177 = add nsw i32 %176, -48, !dbg !4101
  %178 = icmp ult i32 %177, 10, !dbg !4101
  br i1 %178, label %170, label %166, !dbg !4105, !llvm.loop !4114

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8* %181, metadata !3970, metadata !DIExpression()), !dbg !3978
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !4116
  call void @llvm.dbg.value(metadata i8* %182, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i8 undef, metadata !3974, metadata !DIExpression()), !dbg !3978
  %183 = load i8, i8* %182, align 1, !dbg !4117, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %183, metadata !3974, metadata !DIExpression()), !dbg !3978
  %184 = add i64 %180, 1, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %184, metadata !3977, metadata !DIExpression()), !dbg !3978
  %185 = zext i8 %183 to i32, !dbg !4107
  %186 = add nsw i32 %185, -48, !dbg !4107
  %187 = icmp ult i32 %186, 10, !dbg !4107
  br i1 %187, label %179, label %188, !dbg !4110, !llvm.loop !4119

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4121
  call void @llvm.dbg.value(metadata i64 %189, metadata !3977, metadata !DIExpression()), !dbg !3978
  %190 = icmp eq i64 %167, %189, !dbg !4122
  br i1 %190, label %194, label %191, !dbg !4124

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4125
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4126
  br label %197, !dbg !4127

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4128
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4130
  br label %197, !dbg !4130

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4131
  ret i32 %198, !dbg !4132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32 %0, i32 %1, i8* %2, %struct.__va_list_tag* %3) local_unnamed_addr #8 !dbg !4133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %1, metadata !4138, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i8* %2, metadata !4139, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !4140, metadata !DIExpression()), !dbg !4141
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !4142
  ret void, !dbg !4143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.__va_list_tag* %5) local_unnamed_addr #8 !dbg !4144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4146, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 %1, metadata !4147, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %2, metadata !4148, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 %3, metadata !4149, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i8* %4, metadata !4150, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4151, metadata !DIExpression()), !dbg !4153
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #9, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %7, metadata !4152, metadata !DIExpression()), !dbg !4153
  %8 = icmp eq i8* %7, null, !dbg !4155
  br i1 %8, label %13, label %9, !dbg !4157

9:                                                ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !4158
  br i1 %10, label %12, label %11, !dbg !4161

11:                                               ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #9, !dbg !4162
  br label %17, !dbg !4162

12:                                               ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #9, !dbg !4163
  br label %17

13:                                               ; preds = %6
  %14 = tail call i32* @__errno_location() #26, !dbg !4164
  %15 = load i32, i32* %14, align 4, !dbg !4164, !tbaa !1141
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #9, !dbg !4166
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #9, !dbg !4167
  tail call void @abort() #24, !dbg !4168
  unreachable, !dbg !4168

17:                                               ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #9, !dbg !4169
  ret void, !dbg !4170
}

declare !dbg !413 void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 %1, metadata !4176, metadata !DIExpression()), !dbg !4177
  %3 = udiv i64 9223372036854775807, %1, !dbg !4178
  %4 = icmp ult i64 %3, %0, !dbg !4178
  br i1 %4, label %5, label %6, !dbg !4180

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4181
  unreachable, !dbg !4181

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %7, metadata !4183, metadata !DIExpression()) #9, !dbg !4189
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %8, metadata !4188, metadata !DIExpression()) #9, !dbg !4189
  %9 = icmp eq i8* %8, null, !dbg !4192
  %10 = icmp ne i64 %7, 0, !dbg !4194
  %11 = and i1 %10, %9, !dbg !4195
  br i1 %11, label %12, label %13, !dbg !4195

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !4196
  unreachable, !dbg !4196

13:                                               ; preds = %6
  ret i8* %8, !dbg !4197
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4184 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4198
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4199
  call void @llvm.dbg.value(metadata i8* %2, metadata !4188, metadata !DIExpression()), !dbg !4198
  %3 = icmp eq i8* %2, null, !dbg !4200
  %4 = icmp ne i64 %0, 0, !dbg !4201
  %5 = and i1 %4, %3, !dbg !4202
  br i1 %5, label %6, label %7, !dbg !4202

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4203
  unreachable, !dbg !4203

7:                                                ; preds = %1
  ret i8* %2, !dbg !4204
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !4205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %2, metadata !4211, metadata !DIExpression()), !dbg !4212
  %4 = udiv i64 9223372036854775807, %2, !dbg !4213
  %5 = icmp ult i64 %4, %1, !dbg !4213
  br i1 %5, label %6, label %7, !dbg !4215

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !4216
  unreachable, !dbg !4216

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4217
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()) #9, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %8, metadata !4223, metadata !DIExpression()) #9, !dbg !4224
  %9 = icmp eq i64 %8, 0, !dbg !4226
  %10 = icmp ne i8* %0, null, !dbg !4228
  %11 = and i1 %10, %9, !dbg !4229
  br i1 %11, label %12, label %13, !dbg !4229

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !4230
  br label %19, !dbg !4232

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %14, metadata !4218, metadata !DIExpression()) #9, !dbg !4224
  %15 = icmp eq i8* %14, null, !dbg !4234
  %16 = icmp ne i64 %8, 0, !dbg !4236
  %17 = and i1 %16, %15, !dbg !4237
  br i1 %17, label %18, label %19, !dbg !4237

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4238
  unreachable, !dbg !4238

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4224
  ret i8* %20, !dbg !4239
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4219 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %1, metadata !4223, metadata !DIExpression()), !dbg !4240
  %3 = icmp eq i64 %1, 0, !dbg !4241
  %4 = icmp ne i8* %0, null, !dbg !4242
  %5 = and i1 %4, %3, !dbg !4243
  br i1 %5, label %6, label %7, !dbg !4243

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !4244
  br label %13, !dbg !4245

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !4246
  call void @llvm.dbg.value(metadata i8* %8, metadata !4218, metadata !DIExpression()), !dbg !4240
  %9 = icmp eq i8* %8, null, !dbg !4247
  %10 = icmp ne i64 %1, 0, !dbg !4248
  %11 = and i1 %10, %9, !dbg !4249
  br i1 %11, label %12, label %13, !dbg !4249

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4250
  unreachable, !dbg !4250

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4240
  ret i8* %14, !dbg !4251
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64* %1, metadata !426, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %2, metadata !427, metadata !DIExpression()), !dbg !4252
  %4 = load i64, i64* %1, align 8, !dbg !4253, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %4, metadata !428, metadata !DIExpression()), !dbg !4252
  %5 = icmp eq i8* %0, null, !dbg !4254
  br i1 %5, label %6, label %20, !dbg !4256

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4257
  br i1 %7, label %8, label %13, !dbg !4260

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4261
  call void @llvm.dbg.value(metadata i64 %9, metadata !428, metadata !DIExpression()), !dbg !4252
  %10 = icmp ugt i64 %2, 128, !dbg !4263
  %11 = zext i1 %10 to i64, !dbg !4263
  %12 = add nuw nsw i64 %9, %11, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %12, metadata !428, metadata !DIExpression()), !dbg !4252
  br label %13, !dbg !4265

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4252
  call void @llvm.dbg.value(metadata i64 %14, metadata !428, metadata !DIExpression()), !dbg !4252
  %15 = udiv i64 9223372036854775807, %2, !dbg !4266
  %16 = icmp ult i64 %15, %14, !dbg !4266
  br i1 %16, label %19, label %17, !dbg !4268

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !4252
  store i64 %14, i64* %1, align 8, !dbg !4269, !tbaa !1491
  %18 = mul i64 %14, %2, !dbg !4270
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()) #9, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %28, metadata !4223, metadata !DIExpression()) #9, !dbg !4271
  br label %31, !dbg !4273

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !4274
  unreachable, !dbg !4274

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4275
  %22 = icmp ugt i64 %21, %4, !dbg !4278
  br i1 %22, label %24, label %23, !dbg !4279

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !4280
  unreachable, !dbg !4280

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4281
  %26 = add nuw i64 %4, 1, !dbg !4282
  %27 = add i64 %26, %25, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !4252
  store i64 %27, i64* %1, align 8, !dbg !4269, !tbaa !1491
  %28 = mul i64 %27, %2, !dbg !4270
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()) #9, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %28, metadata !4223, metadata !DIExpression()) #9, !dbg !4271
  %29 = icmp eq i64 %28, 0, !dbg !4284
  br i1 %29, label %30, label %31, !dbg !4273

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #9, !dbg !4285
  br label %38, !dbg !4286

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #9, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %33, metadata !4218, metadata !DIExpression()) #9, !dbg !4271
  %34 = icmp eq i8* %33, null, !dbg !4288
  %35 = icmp ne i64 %32, 0, !dbg !4289
  %36 = and i1 %35, %34, !dbg !4290
  br i1 %36, label %37, label %38, !dbg !4290

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !4291
  unreachable, !dbg !4291

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4271
  ret i8* %39, !dbg !4292
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4293 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()) #9, !dbg !4297
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4299
  call void @llvm.dbg.value(metadata i8* %2, metadata !4188, metadata !DIExpression()) #9, !dbg !4297
  %3 = icmp eq i8* %2, null, !dbg !4300
  %4 = icmp ne i64 %0, 0, !dbg !4301
  %5 = and i1 %4, %3, !dbg !4302
  br i1 %5, label %6, label %7, !dbg !4302

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4303
  unreachable, !dbg !4303

7:                                                ; preds = %1
  ret i8* %2, !dbg !4304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64* %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()) #9, !dbg !4312
  call void @llvm.dbg.value(metadata i64* %1, metadata !426, metadata !DIExpression()) #9, !dbg !4312
  call void @llvm.dbg.value(metadata i64 1, metadata !427, metadata !DIExpression()) #9, !dbg !4312
  %3 = load i64, i64* %1, align 8, !dbg !4314, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %3, metadata !428, metadata !DIExpression()) #9, !dbg !4312
  %4 = icmp eq i8* %0, null, !dbg !4315
  br i1 %4, label %5, label %12, !dbg !4316

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4317
  br i1 %6, label %9, label %7, !dbg !4318

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !428, metadata !DIExpression()) #9, !dbg !4312
  %8 = icmp slt i64 %3, 0, !dbg !4319
  br i1 %8, label %11, label %9, !dbg !4320

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #9, !dbg !4312
  store i64 %10, i64* %1, align 8, !dbg !4321, !tbaa !1491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()) #9, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %18, metadata !4223, metadata !DIExpression()) #9, !dbg !4322
  br label %21, !dbg !4324

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !4325
  unreachable, !dbg !4325

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4326
  br i1 %13, label %15, label %14, !dbg !4327

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !4328
  unreachable, !dbg !4328

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4329
  %17 = add nuw nsw i64 %3, 1, !dbg !4330
  %18 = add nuw nsw i64 %17, %16, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #9, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #9, !dbg !4312
  store i64 %18, i64* %1, align 8, !dbg !4321, !tbaa !1491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4218, metadata !DIExpression()) #9, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %18, metadata !4223, metadata !DIExpression()) #9, !dbg !4322
  %19 = icmp eq i64 %18, 0, !dbg !4332
  br i1 %19, label %20, label %21, !dbg !4324

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #9, !dbg !4333
  br label %28, !dbg !4334

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #9, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %23, metadata !4218, metadata !DIExpression()) #9, !dbg !4322
  %24 = icmp eq i8* %23, null, !dbg !4336
  %25 = icmp ne i64 %22, 0, !dbg !4337
  %26 = and i1 %25, %24, !dbg !4338
  br i1 %26, label %27, label %28, !dbg !4338

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !4339
  unreachable, !dbg !4339

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4322
  ret i8* %29, !dbg !4340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4341 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4343, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i64 %0, metadata !4345, metadata !DIExpression()) #9, !dbg !4350
  call void @llvm.dbg.value(metadata i64 1, metadata !4348, metadata !DIExpression()) #9, !dbg !4350
  %2 = icmp slt i64 %0, 0, !dbg !4352
  br i1 %2, label %6, label %3, !dbg !4354

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #9, !dbg !4355
  call void @llvm.dbg.value(metadata i8* %4, metadata !4349, metadata !DIExpression()) #9, !dbg !4350
  %5 = icmp eq i8* %4, null, !dbg !4356
  br i1 %5, label %6, label %7, !dbg !4357

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !4358
  unreachable, !dbg !4358

7:                                                ; preds = %3
  ret i8* %4, !dbg !4359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4346 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4345, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4360
  %3 = udiv i64 9223372036854775807, %1, !dbg !4361
  %4 = icmp ult i64 %3, %0, !dbg !4361
  br i1 %4, label %8, label %5, !dbg !4362

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %6, metadata !4349, metadata !DIExpression()), !dbg !4360
  %7 = icmp eq i8* %6, null, !dbg !4364
  br i1 %7, label %8, label %9, !dbg !4365

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !4366
  unreachable, !dbg !4366

9:                                                ; preds = %5
  ret i8* %6, !dbg !4367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4372, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4183, metadata !DIExpression()) #9, !dbg !4375
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %3, metadata !4188, metadata !DIExpression()) #9, !dbg !4375
  %4 = icmp eq i8* %3, null, !dbg !4378
  %5 = icmp ne i64 %1, 0, !dbg !4379
  %6 = and i1 %5, %4, !dbg !4380
  br i1 %6, label %7, label %8, !dbg !4380

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !4381
  unreachable, !dbg !4381

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4382, metadata !DIExpression()) #9, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %0, metadata !4389, metadata !DIExpression()) #9, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %1, metadata !4390, metadata !DIExpression()) #9, !dbg !4391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #9, !dbg !4393
  ret i8* %3, !dbg !4394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !4399
  %3 = add i64 %2, 1, !dbg !4400
  call void @llvm.dbg.value(metadata i8* %0, metadata !4372, metadata !DIExpression()) #9, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %3, metadata !4373, metadata !DIExpression()) #9, !dbg !4401
  call void @llvm.dbg.value(metadata i64 %3, metadata !4183, metadata !DIExpression()) #9, !dbg !4403
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !4405
  call void @llvm.dbg.value(metadata i8* %4, metadata !4188, metadata !DIExpression()) #9, !dbg !4403
  %5 = icmp eq i8* %4, null, !dbg !4406
  %6 = icmp ne i64 %3, 0, !dbg !4407
  %7 = and i1 %6, %5, !dbg !4408
  br i1 %7, label %8, label %9, !dbg !4408

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !4409
  unreachable, !dbg !4409

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4382, metadata !DIExpression()) #9, !dbg !4410
  call void @llvm.dbg.value(metadata i8* %0, metadata !4389, metadata !DIExpression()) #9, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %3, metadata !4390, metadata !DIExpression()) #9, !dbg !4410
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #9, !dbg !4412
  ret i8* %4, !dbg !4413
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4414 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4415, !tbaa !1141
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #9, !dbg !4416
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #9, !dbg !4417
  tail call void @abort() #24, !dbg !4418
  unreachable, !dbg !4418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8* %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !4419 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4436, metadata !DIExpression()), !dbg !4460
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4430, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4431, metadata !DIExpression()), !dbg !4466
  %5 = bitcast i8** %4 to i8*, !dbg !4467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !4467
  call void @llvm.dbg.value(metadata i64 0, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i8* %0, metadata !4435, metadata !DIExpression()), !dbg !4468
  br label %6, !dbg !4469

6:                                                ; preds = %81, %2
  %7 = phi i64 [ 0, %2 ], [ %83, %81 ], !dbg !4468
  %8 = phi i8* [ %0, %2 ], [ %82, %81 ], !dbg !4470
  call void @llvm.dbg.value(metadata i8* %8, metadata !4435, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  %9 = load i8, i8* %8, align 1, !dbg !4471, !tbaa !1177
  switch i8 %9, label %86 [
    i8 0, label %10
    i8 37, label %77
  ], !dbg !4472

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4433, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %7, metadata !4441, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4442, metadata !DIExpression()) #9, !dbg !4473
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4474
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9, !dbg !4474
  call void @llvm.dbg.value(metadata i64 0, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4475
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #9, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %7, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i64 0, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  %13 = icmp eq i64 %7, 0, !dbg !4476
  br i1 %13, label %14, label %16, !dbg !4477

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %40, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.va_end(i8* nonnull %11) #9, !dbg !4478
  %15 = call noalias i8* @xmalloc(i64 1) #9, !dbg !4479
  call void @llvm.dbg.value(metadata i8* %49, metadata !4443, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %49, metadata !4446, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %7, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  br label %74, !dbg !4480

16:                                               ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4481
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4481
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4481
  %20 = load i8*, i8** %19, align 16, !dbg !4481
  %21 = load i32, i32* %17, align 16, !dbg !4482
  br label %22, !dbg !4477

22:                                               ; preds = %34, %16
  %23 = phi i32 [ %21, %16 ], [ %35, %34 ], !dbg !4482
  %24 = phi i64 [ 0, %16 ], [ %40, %34 ]
  %25 = phi i64 [ %7, %16 ], [ %41, %34 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %25, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  %26 = icmp ult i32 %23, 41, !dbg !4482
  br i1 %26, label %27, label %31, !dbg !4482

27:                                               ; preds = %22
  %28 = zext i32 %23 to i64, !dbg !4482
  %29 = getelementptr i8, i8* %20, i64 %28, !dbg !4482
  %30 = add nuw nsw i32 %23, 8, !dbg !4482
  store i32 %30, i32* %17, align 16, !dbg !4482
  br label %34, !dbg !4482

31:                                               ; preds = %22
  %32 = load i8*, i8** %18, align 8, !dbg !4482
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !4482
  store i8* %33, i8** %18, align 8, !dbg !4482
  br label %34, !dbg !4482

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %23, %31 ]
  %36 = phi i8* [ %29, %27 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !4482
  %38 = load i8*, i8** %37, align 8, !dbg !4482
  call void @llvm.dbg.value(metadata i8* %38, metadata !4447, metadata !DIExpression()) #9, !dbg !4481
  %39 = call i64 @strlen(i8* nonnull dereferenceable(1) %38) #23, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %24, metadata !4484, metadata !DIExpression()) #9, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %39, metadata !4490, metadata !DIExpression()) #9, !dbg !4492
  call void @llvm.dbg.value(metadata i64 undef, metadata !4491, metadata !DIExpression()) #9, !dbg !4492
  %40 = call i64 @llvm.uadd.sat.i64(i64 %24, i64 %39) #9, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %40, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  %41 = add i64 %25, -1, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %41, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  %42 = icmp eq i64 %41, 0, !dbg !4476
  br i1 %42, label %43, label %22, !dbg !4477, !llvm.loop !4496

43:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %40, metadata !4444, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.va_end(i8* nonnull %11) #9, !dbg !4478
  %44 = icmp ugt i64 %40, 2147483647, !dbg !4498
  br i1 %44, label %45, label %47, !dbg !4500

45:                                               ; preds = %43
  %46 = tail call i32* @__errno_location() #26, !dbg !4501
  store i32 75, i32* %46, align 4, !dbg !4503, !tbaa !1141
  br label %84, !dbg !4504

47:                                               ; preds = %43
  %48 = add nuw nsw i64 %40, 1, !dbg !4479
  %49 = call noalias i8* @xmalloc(i64 %48) #9, !dbg !4479
  call void @llvm.dbg.value(metadata i8* %49, metadata !4443, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %49, metadata !4446, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %7, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0, !dbg !4505
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2, !dbg !4505
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3, !dbg !4505
  br label %53, !dbg !4480

53:                                               ; preds = %66, %47
  %54 = phi i64 [ %7, %47 ], [ %72, %66 ]
  %55 = phi i8* [ %49, %47 ], [ %71, %66 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %55, metadata !4446, metadata !DIExpression()) #9, !dbg !4473
  %56 = load i32, i32* %50, align 8, !dbg !4506
  %57 = icmp ult i32 %56, 41, !dbg !4506
  br i1 %57, label %58, label %63, !dbg !4506

58:                                               ; preds = %53
  %59 = load i8*, i8** %52, align 8, !dbg !4506
  %60 = zext i32 %56 to i64, !dbg !4506
  %61 = getelementptr i8, i8* %59, i64 %60, !dbg !4506
  %62 = add nuw nsw i32 %56, 8, !dbg !4506
  store i32 %62, i32* %50, align 8, !dbg !4506
  br label %66, !dbg !4506

63:                                               ; preds = %53
  %64 = load i8*, i8** %51, align 8, !dbg !4506
  %65 = getelementptr i8, i8* %64, i64 8, !dbg !4506
  store i8* %65, i8** %51, align 8, !dbg !4506
  br label %66, !dbg !4506

66:                                               ; preds = %63, %58
  %67 = phi i8* [ %61, %58 ], [ %64, %63 ]
  %68 = bitcast i8* %67 to i8**, !dbg !4506
  %69 = load i8*, i8** %68, align 8, !dbg !4506
  call void @llvm.dbg.value(metadata i8* %69, metadata !4451, metadata !DIExpression()) #9, !dbg !4505
  %70 = call i64 @strlen(i8* nonnull dereferenceable(1) %69) #23, !dbg !4507
  call void @llvm.dbg.value(metadata i64 %70, metadata !4455, metadata !DIExpression()) #9, !dbg !4505
  call void @llvm.dbg.value(metadata i8* %55, metadata !4508, metadata !DIExpression()) #9, !dbg !4513
  call void @llvm.dbg.value(metadata i8* %69, metadata !4511, metadata !DIExpression()) #9, !dbg !4513
  call void @llvm.dbg.value(metadata i64 %70, metadata !4512, metadata !DIExpression()) #9, !dbg !4513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %55, i8* nonnull align 1 %69, i64 %70, i1 false) #9, !dbg !4515
  %71 = getelementptr inbounds i8, i8* %55, i64 %70, !dbg !4516
  call void @llvm.dbg.value(metadata i8* %71, metadata !4446, metadata !DIExpression()) #9, !dbg !4473
  %72 = add i64 %54, -1, !dbg !4517
  call void @llvm.dbg.value(metadata i64 %72, metadata !4445, metadata !DIExpression()) #9, !dbg !4473
  %73 = icmp eq i64 %72, 0, !dbg !4518
  br i1 %73, label %74, label %53, !dbg !4480, !llvm.loop !4519

74:                                               ; preds = %66, %14
  %75 = phi i8* [ %15, %14 ], [ %49, %66 ]
  %76 = phi i8* [ %15, %14 ], [ %71, %66 ], !dbg !4473
  call void @llvm.dbg.value(metadata i8* %76, metadata !4446, metadata !DIExpression()) #9, !dbg !4473
  store i8 0, i8* %76, align 1, !dbg !4521, !tbaa !1177
  br label %84, !dbg !4522

77:                                               ; preds = %6
  %78 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4523
  call void @llvm.dbg.value(metadata i8* %78, metadata !4435, metadata !DIExpression()), !dbg !4468
  %79 = load i8, i8* %78, align 1, !dbg !4524, !tbaa !1177
  %80 = icmp eq i8 %79, 115, !dbg !4526
  br i1 %80, label %81, label %86, !dbg !4527

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4528
  call void @llvm.dbg.value(metadata i8* %82, metadata !4435, metadata !DIExpression()), !dbg !4468
  %83 = add i64 %7, 1, !dbg !4529
  call void @llvm.dbg.value(metadata i64 %83, metadata !4433, metadata !DIExpression()), !dbg !4468
  br label %6, !dbg !4530, !llvm.loop !4531

84:                                               ; preds = %74, %45
  %85 = phi i8* [ null, %45 ], [ %75, %74 ], !dbg !4473
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9, !dbg !4534
  br label %96

86:                                               ; preds = %6, %77
  call void @llvm.dbg.value(metadata i8** %4, metadata !4432, metadata !DIExpression(DW_OP_deref)), !dbg !4466
  call void @llvm.dbg.value(metadata i8** %4, metadata !4535, metadata !DIExpression()) #9, !dbg !4545
  call void @llvm.dbg.value(metadata i8* %0, metadata !4543, metadata !DIExpression()) #9, !dbg !4545
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4544, metadata !DIExpression()) #9, !dbg !4545
  %87 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #9, !dbg !4548
  %88 = icmp slt i32 %87, 0, !dbg !4549
  br i1 %88, label %89, label %94, !dbg !4550

89:                                               ; preds = %86
  %90 = tail call i32* @__errno_location() #26, !dbg !4551
  %91 = load i32, i32* %90, align 4, !dbg !4551, !tbaa !1141
  %92 = icmp eq i32 %91, 12, !dbg !4554
  br i1 %92, label %93, label %96, !dbg !4555

93:                                               ; preds = %89
  call void @xalloc_die() #24, !dbg !4556
  unreachable, !dbg !4556

94:                                               ; preds = %86
  %95 = load i8*, i8** %4, align 8, !dbg !4557, !tbaa !1069
  call void @llvm.dbg.value(metadata i8* %95, metadata !4432, metadata !DIExpression()), !dbg !4466
  br label %96, !dbg !4558

96:                                               ; preds = %84, %89, %94
  %97 = phi i8* [ %95, %94 ], [ %85, %84 ], [ null, %89 ], !dbg !4466
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !4559
  ret i8* %97, !dbg !4559
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4560 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %1, metadata !4563, metadata !DIExpression()), !dbg !4568
  %3 = icmp eq i64 %0, 0, !dbg !4569
  %4 = icmp eq i64 %1, 0, !dbg !4570
  %5 = or i1 %3, %4, !dbg !4571
  br i1 %5, label %11, label %6, !dbg !4571

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4565, metadata !DIExpression()), !dbg !4572
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4573
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4573
  br i1 %8, label %9, label %11, !dbg !4575

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4576
  store i32 12, i32* %10, align 4, !dbg !4578, !tbaa !1141
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4562, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %12, metadata !4563, metadata !DIExpression()), !dbg !4568
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #9, !dbg !4579
  call void @llvm.dbg.value(metadata i8* %14, metadata !4564, metadata !DIExpression()), !dbg !4568
  br label %15, !dbg !4580

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4568
  ret i8* %16, !dbg !4581
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4582 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4590, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i8* %1, metadata !4591, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %2, metadata !4592, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4593, metadata !DIExpression()), !dbg !4599
  %6 = bitcast i32* %5 to i8*, !dbg !4600
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4600
  %7 = icmp eq i32* %0, null, !dbg !4601
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4603
  call void @llvm.dbg.value(metadata i32* %8, metadata !4590, metadata !DIExpression()), !dbg !4599
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %9, metadata !4594, metadata !DIExpression()), !dbg !4599
  %10 = icmp ugt i64 %9, -3, !dbg !4605
  %11 = icmp ne i64 %2, 0, !dbg !4606
  %12 = and i1 %11, %10, !dbg !4607
  br i1 %12, label %13, label %18, !dbg !4607

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !4608
  br i1 %14, label %18, label %15, !dbg !4609

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4610, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %16, metadata !4596, metadata !DIExpression()), !dbg !4611
  %17 = zext i8 %16 to i32, !dbg !4612
  store i32 %17, i32* %8, align 4, !dbg !4613, !tbaa !1141
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !4614
  ret i64 %19, !dbg !4614
}

; Function Attrs: nounwind
declare !dbg !449 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4615 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4622, metadata !DIExpression()), !dbg !4627
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !4628
  call void @llvm.dbg.value(metadata i1 undef, metadata !4623, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4629, metadata !DIExpression()), !dbg !4633
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4635
  %4 = load i32, i32* %3, align 8, !dbg !4635, !tbaa !4636
  %5 = and i32 %4, 32, !dbg !4635
  %6 = icmp eq i32 %5, 0, !dbg !4638
  call void @llvm.dbg.value(metadata i1 %6, metadata !4625, metadata !DIExpression()), !dbg !4627
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !4639
  %8 = icmp ne i32 %7, 0, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %8, metadata !4626, metadata !DIExpression()), !dbg !4627
  br i1 %6, label %9, label %19, !dbg !4641

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4643
  call void @llvm.dbg.value(metadata i1 %10, metadata !4623, metadata !DIExpression()), !dbg !4627
  %11 = xor i1 %8, true, !dbg !4644
  %12 = or i1 %10, %11, !dbg !4644
  %13 = sext i1 %8 to i32, !dbg !4644
  br i1 %12, label %22, label %14, !dbg !4644

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4645
  %16 = load i32, i32* %15, align 4, !dbg !4645, !tbaa !1141
  %17 = icmp ne i32 %16, 9, !dbg !4646
  %18 = sext i1 %17 to i32, !dbg !4647
  br label %22, !dbg !4647

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4648

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4650
  store i32 0, i32* %21, align 4, !dbg !4652, !tbaa !1141
  br label %22, !dbg !4650

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4627
  ret i32 %23, !dbg !4653
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4654 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4656, metadata !DIExpression()), !dbg !4661
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4662
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #9, !dbg !4662
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4657, metadata !DIExpression()), !dbg !4663
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #9, !dbg !4664
  %5 = icmp eq i32 %4, 0, !dbg !4664
  br i1 %5, label %6, label %13, !dbg !4666

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4667
  %8 = load i16, i16* %7, align 16, !dbg !4667
  %9 = icmp eq i16 %8, 67, !dbg !4667
  br i1 %9, label %13, label %10, !dbg !4668

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !4669
  %12 = icmp ne i32 %11, 0, !dbg !4670
  br label %13, !dbg !4668

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4661
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #9, !dbg !4671
  ret i1 %14, !dbg !4671
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4672 {
  %1 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %1, metadata !4674, metadata !DIExpression()), !dbg !4676
  %2 = icmp eq i8* %1, null, !dbg !4677
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %3, metadata !4674, metadata !DIExpression()), !dbg !4676
  %4 = load i8, i8* %3, align 1, !dbg !4680, !tbaa !1177
  %5 = icmp eq i8 %4, 0, !dbg !4684
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %6, metadata !4674, metadata !DIExpression()), !dbg !4676
  ret i8* %6, !dbg !4686
}

; Function Attrs: nounwind
declare !dbg !901 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4691, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i8* %1, metadata !4692, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %2, metadata !4693, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()) #9, !dbg !4704
  call void @llvm.dbg.value(metadata i8* %1, metadata !4698, metadata !DIExpression()) #9, !dbg !4704
  call void @llvm.dbg.value(metadata i64 %2, metadata !4699, metadata !DIExpression()) #9, !dbg !4704
  call void @llvm.dbg.value(metadata i32 %0, metadata !4706, metadata !DIExpression()) #9, !dbg !4712
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4714
  call void @llvm.dbg.value(metadata i8* %4, metadata !4711, metadata !DIExpression()) #9, !dbg !4712
  call void @llvm.dbg.value(metadata i8* %4, metadata !4700, metadata !DIExpression()) #9, !dbg !4704
  %5 = icmp eq i8* %4, null, !dbg !4715
  br i1 %5, label %6, label %9, !dbg !4716

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4717
  br i1 %7, label %19, label %8, !dbg !4720

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4721, !tbaa !1177
  br label %19, !dbg !4722

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %10, metadata !4701, metadata !DIExpression()) #9, !dbg !4724
  %11 = icmp ult i64 %10, %2, !dbg !4725
  br i1 %11, label %12, label %14, !dbg !4727

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4728
  call void @llvm.dbg.value(metadata i8* %1, metadata !4730, metadata !DIExpression()) #9, !dbg !4735
  call void @llvm.dbg.value(metadata i8* %4, metadata !4733, metadata !DIExpression()) #9, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %13, metadata !4734, metadata !DIExpression()) #9, !dbg !4735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #9, !dbg !4737
  br label %19, !dbg !4738

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4739
  br i1 %15, label %19, label %16, !dbg !4742

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4743
  call void @llvm.dbg.value(metadata i8* %1, metadata !4730, metadata !DIExpression()) #9, !dbg !4745
  call void @llvm.dbg.value(metadata i8* %4, metadata !4733, metadata !DIExpression()) #9, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %17, metadata !4734, metadata !DIExpression()) #9, !dbg !4745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #9, !dbg !4747
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4748
  store i8 0, i8* %18, align 1, !dbg !4749, !tbaa !1177
  br label %19, !dbg !4750

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4751
  ret i32 %20, !dbg !4752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 %0, metadata !4706, metadata !DIExpression()) #9, !dbg !4757
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4759
  call void @llvm.dbg.value(metadata i8* %2, metadata !4711, metadata !DIExpression()) #9, !dbg !4757
  ret i8* %2, !dbg !4760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4761 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4767, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 0, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4771
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4772
  call void @llvm.dbg.value(metadata i32 %2, metadata !4769, metadata !DIExpression()), !dbg !4771
  %3 = icmp slt i32 %2, 0, !dbg !4773
  br i1 %3, label %4, label %6, !dbg !4775

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4776
  br label %24, !dbg !4777

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4778
  %8 = icmp eq i32 %7, 0, !dbg !4778
  br i1 %8, label %13, label %9, !dbg !4780

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4781
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !4782
  %12 = icmp eq i64 %11, -1, !dbg !4783
  br i1 %12, label %16, label %13, !dbg !4784

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4785
  %15 = icmp eq i32 %14, 0, !dbg !4785
  br i1 %15, label %16, label %18, !dbg !4786

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4768, metadata !DIExpression()), !dbg !4771
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %21, metadata !4770, metadata !DIExpression()), !dbg !4771
  br label %24, !dbg !4788

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4789
  %20 = load i32, i32* %19, align 4, !dbg !4789, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %20, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 %20, metadata !4768, metadata !DIExpression()), !dbg !4771
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %21, metadata !4770, metadata !DIExpression()), !dbg !4771
  %22 = icmp eq i32 %20, 0, !dbg !4790
  br i1 %22, label %24, label %23, !dbg !4788

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4792, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 -1, metadata !4770, metadata !DIExpression()), !dbg !4771
  br label %24, !dbg !4794

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4771
  ret i32 %25, !dbg !4795
}

; Function Attrs: nofree nounwind
declare !dbg !910 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !945 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !946 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4796 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4802, metadata !DIExpression()), !dbg !4803
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4804
  br i1 %2, label %6, label %3, !dbg !4806

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4807
  %5 = icmp eq i32 %4, 0, !dbg !4807
  br i1 %5, label %6, label %8, !dbg !4808

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4809
  br label %17, !dbg !4810

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4811, metadata !DIExpression()) #9, !dbg !4816
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4818
  %10 = load i32, i32* %9, align 8, !dbg !4818, !tbaa !4636
  %11 = and i32 %10, 256, !dbg !4820
  %12 = icmp eq i32 %11, 0, !dbg !4820
  br i1 %12, label %15, label %13, !dbg !4821

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4822
  br label %15, !dbg !4822

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4823
  br label %17, !dbg !4824

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4803
  ret i32 %18, !dbg !4825
}

; Function Attrs: nofree nounwind
declare !dbg !953 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4826 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4833, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %1, metadata !4834, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i32 %2, metadata !4835, metadata !DIExpression()), !dbg !4839
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4840
  %5 = load i8*, i8** %4, align 8, !dbg !4840, !tbaa !4841
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4842
  %7 = load i8*, i8** %6, align 8, !dbg !4842, !tbaa !4843
  %8 = icmp eq i8* %5, %7, !dbg !4844
  br i1 %8, label %9, label %28, !dbg !4845

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4846
  %11 = load i8*, i8** %10, align 8, !dbg !4846, !tbaa !4847
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4848
  %13 = load i8*, i8** %12, align 8, !dbg !4848, !tbaa !4849
  %14 = icmp eq i8* %11, %13, !dbg !4850
  br i1 %14, label %15, label %28, !dbg !4851

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4852
  %17 = load i8*, i8** %16, align 8, !dbg !4852, !tbaa !4853
  %18 = icmp eq i8* %17, null, !dbg !4854
  br i1 %18, label %19, label %28, !dbg !4855

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4856
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4857
  call void @llvm.dbg.value(metadata i64 %21, metadata !4836, metadata !DIExpression()), !dbg !4858
  %22 = icmp eq i64 %21, -1, !dbg !4859
  br i1 %22, label %30, label %23, !dbg !4861

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4862
  %25 = load i32, i32* %24, align 8, !dbg !4863, !tbaa !4636
  %26 = and i32 %25, -17, !dbg !4863
  store i32 %26, i32* %24, align 8, !dbg !4863, !tbaa !4636
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4864
  store i64 %21, i64* %27, align 8, !dbg !4865, !tbaa !4866
  br label %30, !dbg !4867

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4868
  br label %30, !dbg !4869

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4839
  ret i32 %31, !dbg !4870
}

; Function Attrs: nofree nounwind
declare !dbg !1029 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind willreturn }
attributes #13 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !168, !219, !388, !225, !266, !394, !396, !416, !437, !440, !443, !446, !465, !504, !511, !904, !907, !950, !991}
!llvm.ident = !{!1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032, !1032}
!llvm.module.flags = !{!1033, !1034, !1035, !1036, !1037}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 73, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !160, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 59, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 42, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14}
!14 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 46, baseType: !6, size: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!31, !41, !102, !106, !110, !113, !116, !123, !127, !131, !134, !135, !39, !72, !6, !138, !142, !92, !146, !149}
!31 = !DISubprogram(name: "dcgettext", scope: !32, file: !32, line: 51, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!32 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !37, !37, !39}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !{}
!41 = !DISubprogram(name: "fputs_unlocked", scope: !42, file: !42, line: 662, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{!39, !37, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !39, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !45, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !45, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DISubprogram(name: "set_program_name", scope: !103, file: !103, line: 37, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!103 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!104 = !DISubroutineType(types: !105)
!105 = !{null, !37}
!106 = !DISubprogram(name: "setlocale", scope: !107, file: !107, line: 122, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!107 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!108 = !DISubroutineType(types: !109)
!109 = !{!35, !39, !37}
!110 = !DISubprogram(name: "bindtextdomain", scope: !32, file: !32, line: 86, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!111 = !DISubroutineType(types: !112)
!112 = !{!35, !37, !37}
!113 = !DISubprogram(name: "textdomain", scope: !32, file: !32, line: 82, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!114 = !DISubroutineType(types: !115)
!115 = !{!35, !37}
!116 = !DISubprogram(name: "atexit", scope: !117, file: !117, line: 595, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!117 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!39, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null}
!123 = !DISubprogram(name: "quote", scope: !124, file: !124, line: 44, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!124 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!125 = !DISubroutineType(types: !126)
!126 = !{!37, !37}
!127 = !DISubprogram(name: "euidaccess", scope: !128, file: !128, line: 292, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!128 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!129 = !DISubroutineType(types: !130)
!130 = !{!39, !37, !39}
!131 = !DISubprogram(name: "geteuid", scope: !128, file: !128, line: 678, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!132 = !DISubroutineType(types: !133)
!133 = !{!6}
!134 = !DISubprogram(name: "getegid", scope: !128, file: !128, line: 684, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!135 = !DISubprogram(name: "isatty", scope: !128, file: !128, line: 779, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!136 = !DISubroutineType(types: !137)
!137 = !{!39, !39}
!138 = !DISubprogram(name: "umaxtostr", scope: !139, file: !139, line: 46, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!139 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !DISubroutineType(types: !141)
!141 = !{!35, !96, !35}
!142 = !DISubprogram(name: "strintcmp", scope: !143, file: !143, line: 1, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!143 = !DIFile(filename: "./lib/strnumcmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!144 = !DISubroutineType(types: !145)
!145 = !{!39, !37, !37}
!146 = !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 40, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!147 = !DISubroutineType(types: !148)
!148 = !{!37, !39, !37}
!149 = !DISubprogram(name: "verror", scope: !150, file: !150, line: 34, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!150 = !DIFile(filename: "./lib/verror.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !39, !39, !37, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 93, size: 192, elements: !155)
!155 = !{!156, !157, !158, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !154, file: !3, line: 93, baseType: !6, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !154, file: !3, line: 93, baseType: !6, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !154, file: !3, line: 93, baseType: !92, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !154, file: !3, line: 93, baseType: !92, size: 64, offset: 128)
!160 = !{!161, !163, !0}
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 71, type: !39, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 72, type: !39, isLocal: true, isDefinition: true)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "file_name", scope: !168, file: !169, line: 46, type: !37, isLocal: true, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !170, globals: !213, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!171, !31, !207, !209}
!171 = !DISubprogram(name: "close_stream", scope: !172, file: !172, line: 2, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!172 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !DISubroutineType(types: !174)
!174 = !{!39, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !176, file: !47, line: 51, baseType: !39, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !176, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !176, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !176, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !176, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !176, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !176, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !176, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !176, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !176, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !176, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !176, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !176, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !176, file: !47, line: 70, baseType: !175, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !176, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !176, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !176, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !176, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !176, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !176, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !176, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !176, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !176, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !176, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !176, file: !47, line: 93, baseType: !175, size: 64, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !176, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !176, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !176, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !176, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!207 = !DISubprogram(name: "quotearg_colon", scope: !208, file: !208, line: 391, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!208 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !DISubprogram(name: "error", scope: !210, file: !210, line: 52, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!210 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = !DISubroutineType(types: !212)
!212 = !{null, !39, !39, !37, null}
!213 = !{!166, !214}
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !168, file: !169, line: 56, type: !216, isLocal: true, isDefinition: true)
!216 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "exit_failure", scope: !219, file: !220, line: 24, type: !222, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !221, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !{!217}
!222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "program_name", scope: !225, file: !226, line: 33, type: !37, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !227, globals: !263, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!92, !228, !35}
!228 = !DISubprogram(name: "fputs", scope: !42, file: !42, line: 626, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!229 = !DISubroutineType(types: !230)
!230 = !{!39, !37, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !232, file: !47, line: 51, baseType: !39, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !232, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !232, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !232, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !232, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !232, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !232, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !232, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !232, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !232, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !232, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !232, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !232, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !232, file: !47, line: 70, baseType: !231, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !232, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !232, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !232, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !232, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !232, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !232, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !232, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !232, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !232, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !232, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !232, file: !47, line: 93, baseType: !231, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !232, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !232, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !232, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !232, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!263 = !{!223}
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !266, file: !267, line: 85, type: !384, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !287, globals: !357, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = !{!269, !282, !15}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !208, line: 32, baseType: !6, size: 32, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!271 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!272 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!273 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!274 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!275 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!276 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!277 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!278 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!279 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!280 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!281 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !208, line: 242, baseType: !6, size: 32, elements: !283)
!283 = !{!284, !285, !286}
!284 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!285 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!286 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!287 = !{!288, !294, !310, !313, !39, !72, !316, !94, !334, !338, !31, !344, !348, !35, !350, !353, !354}
!288 = !DISubprogram(name: "xmemdup", scope: !289, file: !289, line: 62, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!289 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!290 = !DISubroutineType(types: !291)
!291 = !{!92, !292, !96}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!294 = !DISubprogram(name: "quotearg_alloc_mem", scope: !208, file: !208, line: 342, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!295 = !DISubroutineType(types: !296)
!296 = !{!35, !37, !96, !297, !298}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !267, line: 65, size: 448, elements: !301)
!301 = !{!302, !303, !304, !308, !309}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !300, file: !267, line: 68, baseType: !269, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !267, line: 71, baseType: !39, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !300, file: !267, line: 75, baseType: !305, size: 256, offset: 64)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !300, file: !267, line: 78, baseType: !37, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !300, file: !267, line: 81, baseType: !37, size: 64, offset: 384)
!310 = !DISubprogram(name: "free", scope: !117, file: !117, line: 565, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !92}
!313 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !208, file: !208, line: 408, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!314 = !DISubroutineType(types: !315)
!315 = !{!35, !39, !37, !37, !37, !96}
!316 = !DISubprogram(name: "rpl_mbrtowc", scope: !317, file: !317, line: 717, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!317 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!318 = !DISubroutineType(types: !319)
!319 = !{!96, !320, !37, !96, !321}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 13, size: 64, elements: !324)
!323 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !322, file: !323, line: 15, baseType: !39, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !322, file: !323, line: 20, baseType: !327, size: 32, offset: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 16, size: 32, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !327, file: !323, line: 18, baseType: !6, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !327, file: !323, line: 19, baseType: !331, size: 32)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 4)
!334 = !DISubprogram(name: "iswprint", scope: !335, file: !335, line: 120, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!335 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!336 = !DISubroutineType(types: !337)
!337 = !{!39, !6}
!338 = !DISubprogram(name: "mbsinit", scope: !339, file: !339, line: 292, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!339 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!340 = !DISubroutineType(types: !341)
!341 = !{!39, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!344 = !DISubprogram(name: "locale_charset", scope: !345, file: !345, line: 35, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!345 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!346 = !DISubroutineType(types: !347)
!347 = !{!37}
!348 = !DISubprogram(name: "c_strcasecmp", scope: !349, file: !349, line: 42, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!349 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DISubprogram(name: "xmalloc", scope: !289, file: !289, line: 53, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!351 = !DISubroutineType(types: !352)
!352 = !{!92, !96}
!353 = !DISubprogram(name: "xalloc_die", scope: !289, file: !289, line: 51, type: !121, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !40)
!354 = !DISubprogram(name: "xrealloc", scope: !289, file: !289, line: 59, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!355 = !DISubroutineType(types: !356)
!356 = !{!92, !92, !96}
!357 = !{!264, !358, !364, !366, !368, !373, !380, !382}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !266, file: !267, line: 101, type: !360, isLocal: false, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 320, elements: !362)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!362 = !{!363}
!363 = !DISubrange(count: 10)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !266, file: !267, line: 1052, type: !300, isLocal: false, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !266, file: !267, line: 116, type: !300, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "slot0", scope: !266, file: !267, line: 842, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 256)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "slotvec", scope: !266, file: !267, line: 845, type: !375, isLocal: true, isDefinition: true)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !267, line: 834, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !376, file: !267, line: 836, baseType: !94, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !267, line: 837, baseType: !35, size: 64, offset: 64)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "nslots", scope: !266, file: !267, line: 843, type: !39, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "slotvec0", scope: !266, file: !267, line: 844, type: !376, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 704, elements: !386)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!386 = !{!387}
!387 = !DISubrange(count: 11)
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !389, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!389 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !392, line: 102, baseType: !393)
!392 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !69, line: 73, baseType: !96)
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !398, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!398 = !{!399, !409, !413, !209, !31, !310}
!399 = !DISubprogram(name: "verror_at_line", scope: !150, file: !150, line: 45, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !39, !39, !37, !6, !37, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !397, size: 192, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !403, file: !397, baseType: !6, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !403, file: !397, baseType: !6, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !403, file: !397, baseType: !92, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !403, file: !397, baseType: !92, size: 64, offset: 128)
!409 = !DISubprogram(name: "xvasprintf", scope: !410, file: !410, line: 48, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!410 = !DIFile(filename: "./lib/xvasprintf.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!411 = !DISubroutineType(types: !412)
!412 = !{!35, !37, !402}
!413 = !DISubprogram(name: "error_at_line", scope: !210, file: !210, line: 55, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !39, !39, !37, !6, !37, null}
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, retainedTypes: !431, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !{!419}
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !420, file: !289, line: 186, baseType: !6, size: 32, elements: !429)
!420 = distinct !DISubprogram(name: "x2nrealloc", scope: !289, file: !289, line: 174, type: !421, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !424)
!421 = !DISubroutineType(types: !422)
!422 = !{!92, !92, !423, !94}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!424 = !{!425, !426, !427, !428}
!425 = !DILocalVariable(name: "p", arg: 1, scope: !420, file: !289, line: 174, type: !92)
!426 = !DILocalVariable(name: "pn", arg: 2, scope: !420, file: !289, line: 174, type: !423)
!427 = !DILocalVariable(name: "s", arg: 3, scope: !420, file: !289, line: 174, type: !94)
!428 = !DILocalVariable(name: "n", scope: !420, file: !289, line: 176, type: !94)
!429 = !{!430}
!430 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!431 = !{!94, !353, !350, !354, !35, !310, !92, !432, !435}
!432 = !DISubprogram(name: "xcalloc", scope: !289, file: !289, line: 57, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!433 = !DISubroutineType(types: !434)
!434 = !{!92, !96, !96}
!435 = !DISubprogram(name: "rpl_calloc", scope: !436, file: !436, line: 688, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!436 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!31, !209}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !442, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!353, !35, !350}
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !445, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = !{!92}
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !448, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !{!449, !94, !461}
!449 = !DISubprogram(name: "mbrtowc", scope: !339, file: !339, line: 296, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!450 = !DISubroutineType(types: !451)
!451 = !{!96, !320, !37, !96, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 13, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !453, file: !323, line: 15, baseType: !39, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !453, file: !323, line: 20, baseType: !457, size: 32, offset: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !323, line: 16, size: 32, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !457, file: !323, line: 18, baseType: !6, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !457, file: !323, line: 19, baseType: !331, size: 32)
!461 = !DISubprogram(name: "hard_locale", scope: !462, file: !462, line: 26, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!462 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!463 = !DISubroutineType(types: !464)
!464 = !{!216, !39}
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!468}
!468 = !DISubprogram(name: "rpl_fclose", scope: !469, file: !469, line: 672, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!469 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!470 = !DISubroutineType(types: !471)
!471 = !{!39, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !473, file: !47, line: 51, baseType: !39, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !473, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !473, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !473, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !473, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !473, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !473, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !473, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !473, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !473, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !473, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !473, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !473, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !473, file: !47, line: 70, baseType: !472, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !473, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !473, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !473, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !473, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !473, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !473, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !473, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !473, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !473, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !473, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !473, file: !47, line: 93, baseType: !472, size: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !473, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !473, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !473, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !473, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !506, splitDebugInlining: false, nameTableKind: None)
!505 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!506 = !{!507}
!507 = !DISubprogram(name: "setlocale_null_r", scope: !508, file: !508, line: 64, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!508 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!509 = !DISubroutineType(types: !510)
!510 = !{!39, !39, !35, !96}
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !513, retainedTypes: !900, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!513 = !{!514}
!514 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !515, line: 41, baseType: !6, size: 32, elements: !516)
!515 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!517 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!518 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!519 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!520 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!521 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!522 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!523 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!524 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!525 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!526 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!527 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!528 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!529 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!530 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!531 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!532 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!533 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!534 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!535 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!536 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!537 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!538 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!539 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!540 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!541 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!542 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!543 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!544 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!545 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!546 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!547 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!548 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!549 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!550 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!551 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!552 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!553 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!554 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!555 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!556 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!557 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!558 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!559 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!560 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!561 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!562 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!563 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!564 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!565 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!566 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!625 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!628 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!629 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!630 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!631 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!632 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!633 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!634 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!635 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!636 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!637 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!638 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!639 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!712 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!785 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!786 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!787 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!788 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!789 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!790 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!791 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!792 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!793 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!794 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!795 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!796 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!797 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!798 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!799 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!801 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!802 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!803 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!804 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!805 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!806 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!832 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!833 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!834 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!835 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!836 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!841 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!842 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!843 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!844 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!900 = !{!901, !92}
!901 = !DISubprogram(name: "nl_langinfo", scope: !515, file: !515, line: 661, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!902 = !DISubroutineType(types: !903)
!903 = !{!35, !39}
!904 = distinct !DICompileUnit(language: DW_LANG_C99, file: !905, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !906, splitDebugInlining: false, nameTableKind: None)
!905 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!906 = !{!92, !106}
!907 = distinct !DICompileUnit(language: DW_LANG_C99, file: !908, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!908 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!909 = !{!910, !945, !946, !949}
!910 = !DISubprogram(name: "fileno", scope: !42, file: !42, line: 786, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!911 = !DISubroutineType(types: !912)
!912 = !{!39, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !914, file: !47, line: 51, baseType: !39, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !914, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !914, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !914, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !914, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !914, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !914, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !914, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !914, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !914, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !914, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !914, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !914, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !914, file: !47, line: 70, baseType: !913, size: 64, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !914, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !914, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !914, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !914, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !914, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !914, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !914, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !914, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !914, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !914, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !914, file: !47, line: 93, baseType: !913, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !914, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !914, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !914, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !914, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!945 = !DISubprogram(name: "fclose", scope: !42, file: !42, line: 213, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!946 = !DISubprogram(name: "lseek", scope: !128, file: !128, line: 334, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!947 = !DISubroutineType(types: !948)
!948 = !{!70, !39, !70, !39}
!949 = !DISubprogram(name: "rpl_fflush", scope: !469, file: !469, line: 718, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!950 = distinct !DICompileUnit(language: DW_LANG_C99, file: !951, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !952, splitDebugInlining: false, nameTableKind: None)
!951 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!952 = !{!92, !953, !988}
!953 = !DISubprogram(name: "fflush", scope: !42, file: !42, line: 218, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!954 = !DISubroutineType(types: !955)
!955 = !{!39, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !957, file: !47, line: 51, baseType: !39, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !957, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !957, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !957, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !957, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !957, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !957, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !957, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !957, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !957, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !957, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !957, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !957, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !957, file: !47, line: 70, baseType: !956, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !957, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !957, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !957, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !957, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !957, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !957, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !957, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !957, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !957, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !957, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !957, file: !47, line: 93, baseType: !956, size: 64, offset: 1344)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !957, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !957, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !957, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !957, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!988 = !DISubprogram(name: "rpl_fseeko", scope: !469, file: !469, line: 1034, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!989 = !DISubroutineType(types: !990)
!990 = !{!39, !956, !70, !39}
!991 = distinct !DICompileUnit(language: DW_LANG_C99, file: !992, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !993, splitDebugInlining: false, nameTableKind: None)
!992 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!993 = !{!92, !994, !946, !1029}
!994 = !DISubprogram(name: "fileno", scope: !42, file: !42, line: 786, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!995 = !DISubroutineType(types: !996)
!996 = !{!39, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !998, file: !47, line: 51, baseType: !39, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !998, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !998, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !998, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !998, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !998, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !998, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !998, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !998, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !998, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !998, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !998, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !998, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !998, file: !47, line: 70, baseType: !997, size: 64, offset: 832)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !998, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !998, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !998, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !998, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !998, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !998, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !998, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !998, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !998, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !998, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !998, file: !47, line: 93, baseType: !997, size: 64, offset: 1344)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !998, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !998, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !998, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !998, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!1029 = !DISubprogram(name: "fseeko", scope: !42, file: !42, line: 707, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!39, !997, !70, !39}
!1032 = !{!"clang version 10.0.0 "}
!1033 = !{i32 7, !"Dwarf Version", i32 4}
!1034 = !{i32 2, !"Debug Info Version", i32 3}
!1035 = !{i32 1, !"wchar_size", i32 4}
!1036 = !{i32 7, !"PIC Level", i32 2}
!1037 = !{i32 7, !"PIE Level", i32 2}
!1038 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 684, type: !1039, scopeLine: 685, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !39}
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "status", arg: 1, scope: !1038, file: !3, line: 684, type: !39)
!1043 = !DILocalVariable(name: "infomap", scope: !1044, file: !1045, line: 636, type: !1057)
!1044 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1045, file: !1045, line: 634, type: !104, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1045 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1046 = !{!1047, !1043, !1048, !1049, !1056}
!1047 = !DILocalVariable(name: "program", arg: 1, scope: !1044, file: !1045, line: 634, type: !37)
!1048 = !DILocalVariable(name: "node", scope: !1044, file: !1045, line: 646, type: !37)
!1049 = !DILocalVariable(name: "map_prog", scope: !1044, file: !1045, line: 647, type: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1044, file: !1045, line: 636, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1052, file: !1045, line: 636, baseType: !37, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1052, file: !1045, line: 636, baseType: !37, size: 64, offset: 64)
!1056 = !DILocalVariable(name: "lc_messages", scope: !1044, file: !1045, line: 659, type: !37)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 896, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 7)
!1060 = !DILocation(line: 636, column: 67, scope: !1044, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 784, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 689, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 686, column: 7)
!1064 = !DILocation(line: 0, scope: !1038)
!1065 = !DILocation(line: 686, column: 14, scope: !1063)
!1066 = !DILocation(line: 686, column: 7, scope: !1038)
!1067 = !DILocation(line: 687, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 687, column: 5)
!1069 = !{!1070, !1070, i64 0}
!1070 = !{!"any pointer", !1071, i64 0}
!1071 = !{!"omnipotent char", !1072, i64 0}
!1072 = !{!"Simple C/C++ TBAA"}
!1073 = !DILocation(line: 690, column: 7, scope: !1062)
!1074 = !DILocation(line: 697, column: 7, scope: !1062)
!1075 = !DILocation(line: 701, column: 7, scope: !1062)
!1076 = !DILocation(line: 702, column: 7, scope: !1062)
!1077 = !DILocation(line: 703, column: 7, scope: !1062)
!1078 = !DILocation(line: 708, column: 7, scope: !1062)
!1079 = !DILocation(line: 715, column: 7, scope: !1062)
!1080 = !DILocation(line: 723, column: 7, scope: !1062)
!1081 = !DILocation(line: 732, column: 7, scope: !1062)
!1082 = !DILocation(line: 738, column: 7, scope: !1062)
!1083 = !DILocation(line: 745, column: 7, scope: !1062)
!1084 = !DILocation(line: 752, column: 7, scope: !1062)
!1085 = !DILocation(line: 760, column: 7, scope: !1062)
!1086 = !DILocation(line: 767, column: 7, scope: !1062)
!1087 = !DILocation(line: 773, column: 7, scope: !1062)
!1088 = !DILocation(line: 778, column: 7, scope: !1062)
!1089 = !DILocation(line: 783, column: 7, scope: !1062)
!1090 = !DILocation(line: 0, scope: !1044, inlinedAt: !1061)
!1091 = !DILocation(line: 636, column: 3, scope: !1044, inlinedAt: !1061)
!1092 = !DILocation(line: 647, column: 36, scope: !1044, inlinedAt: !1061)
!1093 = !DILocation(line: 649, column: 3, scope: !1044, inlinedAt: !1061)
!1094 = !DILocation(line: 649, column: 33, scope: !1044, inlinedAt: !1061)
!1095 = !DILocation(line: 650, column: 13, scope: !1044, inlinedAt: !1061)
!1096 = !DILocation(line: 649, column: 20, scope: !1044, inlinedAt: !1061)
!1097 = !{!1098, !1070, i64 0}
!1098 = !{!"infomap", !1070, i64 0, !1070, i64 8}
!1099 = !DILocation(line: 649, column: 10, scope: !1044, inlinedAt: !1061)
!1100 = !DILocation(line: 649, column: 28, scope: !1044, inlinedAt: !1061)
!1101 = distinct !{!1101, !1093, !1095}
!1102 = !DILocation(line: 652, column: 17, scope: !1103, inlinedAt: !1061)
!1103 = distinct !DILexicalBlock(scope: !1044, file: !1045, line: 652, column: 7)
!1104 = !{!1098, !1070, i64 8}
!1105 = !DILocation(line: 652, column: 7, scope: !1103, inlinedAt: !1061)
!1106 = !DILocation(line: 652, column: 7, scope: !1044, inlinedAt: !1061)
!1107 = !DILocation(line: 655, column: 3, scope: !1044, inlinedAt: !1061)
!1108 = !DILocation(line: 659, column: 29, scope: !1044, inlinedAt: !1061)
!1109 = !DILocation(line: 660, column: 7, scope: !1110, inlinedAt: !1061)
!1110 = distinct !DILexicalBlock(scope: !1044, file: !1045, line: 660, column: 7)
!1111 = !DILocation(line: 660, column: 19, scope: !1110, inlinedAt: !1061)
!1112 = !DILocation(line: 660, column: 22, scope: !1110, inlinedAt: !1061)
!1113 = !DILocation(line: 660, column: 7, scope: !1044, inlinedAt: !1061)
!1114 = !DILocation(line: 666, column: 7, scope: !1115, inlinedAt: !1061)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !1045, line: 661, column: 5)
!1116 = !DILocation(line: 668, column: 5, scope: !1115, inlinedAt: !1061)
!1117 = !DILocation(line: 669, column: 3, scope: !1044, inlinedAt: !1061)
!1118 = !DILocation(line: 671, column: 3, scope: !1044, inlinedAt: !1061)
!1119 = !DILocation(line: 673, column: 1, scope: !1044, inlinedAt: !1061)
!1120 = !DILocation(line: 786, column: 3, scope: !1038)
!1121 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 805, type: !1122, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!39, !39, !165}
!1124 = !{!1125, !1126, !1127}
!1125 = !DILocalVariable(name: "margc", arg: 1, scope: !1121, file: !3, line: 805, type: !39)
!1126 = !DILocalVariable(name: "margv", arg: 2, scope: !1121, file: !3, line: 805, type: !165)
!1127 = !DILocalVariable(name: "value", scope: !1121, file: !3, line: 807, type: !216)
!1128 = !DILocation(line: 0, scope: !1121)
!1129 = !DILocation(line: 818, column: 21, scope: !1121)
!1130 = !DILocation(line: 818, column: 3, scope: !1121)
!1131 = !DILocation(line: 819, column: 3, scope: !1121)
!1132 = !DILocation(line: 820, column: 3, scope: !1121)
!1133 = !DILocation(line: 821, column: 3, scope: !1121)
!1134 = !DILocalVariable(name: "status", arg: 1, scope: !1135, file: !1045, line: 99, type: !39)
!1135 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !1045, file: !1045, line: 99, type: !1039, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1136 = !{!1134}
!1137 = !DILocation(line: 0, scope: !1135, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 823, column: 3, scope: !1121)
!1139 = !DILocation(line: 102, column: 18, scope: !1140, inlinedAt: !1138)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !1045, line: 101, column: 7)
!1141 = !{!1142, !1142, i64 0}
!1142 = !{!"int", !1071, i64 0}
!1143 = !DILocation(line: 824, column: 3, scope: !1121)
!1144 = !DILocation(line: 827, column: 8, scope: !1121)
!1145 = !DILocation(line: 855, column: 8, scope: !1121)
!1146 = !DILocation(line: 856, column: 7, scope: !1121)
!1147 = !DILocation(line: 858, column: 11, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 858, column: 7)
!1149 = !DILocation(line: 858, column: 7, scope: !1121)
!1150 = !DILocation(line: 861, column: 27, scope: !1121)
!1151 = !DILocation(line: 861, column: 11, scope: !1121)
!1152 = !DILocation(line: 863, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 863, column: 7)
!1154 = !DILocation(line: 863, column: 14, scope: !1153)
!1155 = !DILocation(line: 863, column: 11, scope: !1153)
!1156 = !DILocation(line: 863, column: 7, scope: !1121)
!1157 = !DILocation(line: 864, column: 24, scope: !1153)
!1158 = !DILocation(line: 864, column: 55, scope: !1153)
!1159 = !DILocation(line: 864, column: 60, scope: !1153)
!1160 = !DILocation(line: 864, column: 48, scope: !1153)
!1161 = !DILocation(line: 864, column: 5, scope: !1153)
!1162 = !DILocation(line: 866, column: 3, scope: !1121)
!1163 = !DILocation(line: 867, column: 1, scope: !1121)
!1164 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 638, type: !463, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1165 = !{!1166, !1167}
!1166 = !DILocalVariable(name: "nargs", arg: 1, scope: !1164, file: !3, line: 638, type: !39)
!1167 = !DILocalVariable(name: "value", scope: !1164, file: !3, line: 640, type: !216)
!1168 = !DILocation(line: 0, scope: !1164)
!1169 = !DILocation(line: 642, column: 3, scope: !1164)
!1170 = !DILocation(line: 587, column: 10, scope: !1171, inlinedAt: !1174)
!1171 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 585, type: !1172, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!216}
!1174 = distinct !DILocation(line: 645, column: 17, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 643, column: 5)
!1176 = !DILocation(line: 587, column: 18, scope: !1171, inlinedAt: !1174)
!1177 = !{!1071, !1071, i64 0}
!1178 = !DILocation(line: 587, column: 25, scope: !1171, inlinedAt: !1174)
!1179 = !DILocation(line: 646, column: 9, scope: !1175)
!1180 = !DILocation(line: 595, column: 7, scope: !1181, inlinedAt: !1185)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 595, column: 7)
!1182 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 591, type: !1172, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1183 = !{!1184}
!1184 = !DILocalVariable(name: "value", scope: !1182, file: !3, line: 593, type: !216)
!1185 = distinct !DILocation(line: 649, column: 17, scope: !1175)
!1186 = !DILocation(line: 595, column: 7, scope: !1182, inlinedAt: !1185)
!1187 = !DILocalVariable(name: "f", arg: 1, scope: !1188, file: !3, line: 104, type: !216)
!1188 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 104, type: !1189, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !216}
!1191 = !{!1187}
!1192 = !DILocation(line: 0, scope: !1188, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 597, column: 7, scope: !1194, inlinedAt: !1185)
!1194 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 596, column: 5)
!1195 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1193)
!1196 = !DILocation(line: 587, column: 18, scope: !1171, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 598, column: 17, scope: !1194, inlinedAt: !1185)
!1198 = !DILocation(line: 587, column: 10, scope: !1171, inlinedAt: !1197)
!1199 = !DILocation(line: 587, column: 25, scope: !1171, inlinedAt: !1197)
!1200 = !DILocation(line: 0, scope: !1182, inlinedAt: !1185)
!1201 = !DILocation(line: 599, column: 5, scope: !1194, inlinedAt: !1185)
!1202 = !DILocation(line: 600, column: 12, scope: !1203, inlinedAt: !1185)
!1203 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 600, column: 12)
!1204 = !DILocation(line: 600, column: 25, scope: !1203, inlinedAt: !1185)
!1205 = !DILocation(line: 601, column: 12, scope: !1203, inlinedAt: !1185)
!1206 = !DILocation(line: 601, column: 15, scope: !1203, inlinedAt: !1185)
!1207 = !DILocation(line: 601, column: 28, scope: !1203, inlinedAt: !1185)
!1208 = !DILocation(line: 602, column: 12, scope: !1203, inlinedAt: !1185)
!1209 = !DILocation(line: 602, column: 15, scope: !1203, inlinedAt: !1185)
!1210 = !DILocation(line: 602, column: 28, scope: !1203, inlinedAt: !1185)
!1211 = !DILocation(line: 600, column: 12, scope: !1181, inlinedAt: !1185)
!1212 = !DILocation(line: 604, column: 15, scope: !1213, inlinedAt: !1185)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 603, column: 5)
!1214 = !DILocation(line: 607, column: 5, scope: !1203, inlinedAt: !1185)
!1215 = !DILocation(line: 653, column: 17, scope: !1175)
!1216 = !DILocation(line: 654, column: 9, scope: !1175)
!1217 = !DILocation(line: 657, column: 13, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 657, column: 13)
!1219 = !DILocation(line: 657, column: 13, scope: !1175)
!1220 = !DILocation(line: 0, scope: !1188, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 659, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 658, column: 11)
!1223 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1221)
!1224 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1221)
!1225 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 108, column: 7)
!1226 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1221)
!1227 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1221)
!1228 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1221)
!1229 = !DILocation(line: 660, column: 22, scope: !1222)
!1230 = !DILocation(line: 660, column: 21, scope: !1222)
!1231 = !DILocation(line: 661, column: 13, scope: !1222)
!1232 = !DILocation(line: 663, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 663, column: 13)
!1234 = !DILocation(line: 663, column: 36, scope: !1233)
!1235 = !DILocation(line: 663, column: 39, scope: !1233)
!1236 = !DILocation(line: 663, column: 13, scope: !1175)
!1237 = !DILocation(line: 0, scope: !1188, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 665, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 664, column: 11)
!1240 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1238)
!1241 = !DILocation(line: 595, column: 7, scope: !1181, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 666, column: 21, scope: !1239)
!1243 = !DILocation(line: 595, column: 7, scope: !1182, inlinedAt: !1242)
!1244 = !DILocation(line: 0, scope: !1188, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 597, column: 7, scope: !1194, inlinedAt: !1242)
!1246 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1245)
!1247 = !DILocation(line: 587, column: 18, scope: !1171, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 598, column: 17, scope: !1194, inlinedAt: !1242)
!1249 = !DILocation(line: 587, column: 10, scope: !1171, inlinedAt: !1248)
!1250 = !DILocation(line: 587, column: 25, scope: !1171, inlinedAt: !1248)
!1251 = !DILocation(line: 0, scope: !1182, inlinedAt: !1242)
!1252 = !DILocation(line: 599, column: 5, scope: !1194, inlinedAt: !1242)
!1253 = !DILocation(line: 600, column: 12, scope: !1203, inlinedAt: !1242)
!1254 = !DILocation(line: 600, column: 25, scope: !1203, inlinedAt: !1242)
!1255 = !DILocation(line: 601, column: 12, scope: !1203, inlinedAt: !1242)
!1256 = !DILocation(line: 601, column: 15, scope: !1203, inlinedAt: !1242)
!1257 = !DILocation(line: 601, column: 28, scope: !1203, inlinedAt: !1242)
!1258 = !DILocation(line: 602, column: 12, scope: !1203, inlinedAt: !1242)
!1259 = !DILocation(line: 602, column: 15, scope: !1203, inlinedAt: !1242)
!1260 = !DILocation(line: 602, column: 28, scope: !1203, inlinedAt: !1242)
!1261 = !DILocation(line: 600, column: 12, scope: !1181, inlinedAt: !1242)
!1262 = !DILocation(line: 604, column: 15, scope: !1213, inlinedAt: !1242)
!1263 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 667, column: 13, scope: !1239)
!1265 = !DILocation(line: 607, column: 5, scope: !1203, inlinedAt: !1242)
!1266 = !DILocation(line: 0, scope: !1188, inlinedAt: !1264)
!1267 = !DILocation(line: 668, column: 13, scope: !1239)
!1268 = !DILocation(line: 673, column: 19, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 673, column: 13)
!1270 = !DILocation(line: 673, column: 13, scope: !1175)
!1271 = !DILocation(line: 578, column: 7, scope: !1272, inlinedAt: !1274)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 578, column: 7)
!1273 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 576, type: !1172, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1274 = distinct !DILocation(line: 675, column: 17, scope: !1175)
!1275 = !DILocation(line: 674, column: 11, scope: !1269)
!1276 = !DILocation(line: 578, column: 14, scope: !1272, inlinedAt: !1274)
!1277 = !DILocation(line: 578, column: 11, scope: !1272, inlinedAt: !1274)
!1278 = !DILocation(line: 578, column: 7, scope: !1273, inlinedAt: !1274)
!1279 = !DILocalVariable(name: "value", scope: !1280, file: !3, line: 560, type: !216)
!1280 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 558, type: !1172, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1281 = !{!1279}
!1282 = !DILocation(line: 0, scope: !1280, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 581, column: 10, scope: !1273, inlinedAt: !1274)
!1284 = !DILocalVariable(name: "value", scope: !1285, file: !3, line: 541, type: !216)
!1285 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 539, type: !1172, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1286 = !{!1284}
!1287 = !DILocation(line: 0, scope: !1285, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 564, column: 16, scope: !1289, inlinedAt: !1283)
!1289 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 563, column: 5)
!1290 = !DILocation(line: 545, column: 16, scope: !1291, inlinedAt: !1288)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 544, column: 5)
!1292 = !DILocation(line: 546, column: 14, scope: !1293, inlinedAt: !1288)
!1293 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 546, column: 11)
!1294 = !DILocation(line: 546, column: 20, scope: !1293, inlinedAt: !1288)
!1295 = !DILocation(line: 546, column: 18, scope: !1293, inlinedAt: !1288)
!1296 = !DILocation(line: 546, column: 25, scope: !1293, inlinedAt: !1288)
!1297 = !DILocation(line: 579, column: 5, scope: !1272, inlinedAt: !1274)
!1298 = !DILocation(line: 546, column: 28, scope: !1293, inlinedAt: !1288)
!1299 = !DILocation(line: 546, column: 11, scope: !1291, inlinedAt: !1288)
!1300 = !DILocation(line: 0, scope: !1188, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 548, column: 7, scope: !1291, inlinedAt: !1288)
!1302 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1301)
!1303 = !DILocation(line: 545, column: 13, scope: !1291, inlinedAt: !1288)
!1304 = distinct !{!1304, !1305, !1306}
!1305 = !DILocation(line: 543, column: 3, scope: !1285, inlinedAt: !1288)
!1306 = !DILocation(line: 549, column: 5, scope: !1285, inlinedAt: !1288)
!1307 = !DILocation(line: 564, column: 13, scope: !1289, inlinedAt: !1283)
!1308 = !DILocation(line: 565, column: 28, scope: !1309, inlinedAt: !1283)
!1309 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 565, column: 11)
!1310 = !DILocation(line: 565, column: 11, scope: !1289, inlinedAt: !1283)
!1311 = !DILocation(line: 0, scope: !1188, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 567, column: 7, scope: !1289, inlinedAt: !1283)
!1313 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1312)
!1314 = distinct !{!1314, !1315, !1316}
!1315 = !DILocation(line: 562, column: 3, scope: !1280, inlinedAt: !1283)
!1316 = !DILocation(line: 568, column: 5, scope: !1280, inlinedAt: !1283)
!1317 = !DILocation(line: 678, column: 3, scope: !1164)
!1318 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 91, type: !1319, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !37, null}
!1321 = !{!1322, !1323}
!1322 = !DILocalVariable(name: "format", arg: 1, scope: !1318, file: !3, line: 91, type: !37)
!1323 = !DILocalVariable(name: "ap", scope: !1318, file: !3, line: 93, type: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !42, line: 52, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1326, line: 32, baseType: !1327)
!1326 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 93, baseType: !1328)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 192, elements: !77)
!1329 = !DILocation(line: 0, scope: !1318)
!1330 = !DILocation(line: 93, column: 3, scope: !1318)
!1331 = !DILocation(line: 93, column: 11, scope: !1318)
!1332 = !DILocation(line: 94, column: 3, scope: !1318)
!1333 = !DILocation(line: 95, column: 3, scope: !1318)
!1334 = !DILocation(line: 96, column: 3, scope: !1318)
!1335 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 389, type: !1172, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1374, !1377, !1378, !1382, !1383, !1386, !1387, !1389}
!1337 = !DILocalVariable(name: "stat_buf", scope: !1335, file: !3, line: 391, type: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1339, line: 46, size: 1152, elements: !1340)
!1339 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1340 = !{!1341, !1343, !1345, !1347, !1349, !1351, !1353, !1354, !1355, !1356, !1358, !1360, !1368, !1369, !1370}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1338, file: !1339, line: 48, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !69, line: 145, baseType: !96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1338, file: !1339, line: 53, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !69, line: 148, baseType: !96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1338, file: !1339, line: 61, baseType: !1346, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !69, line: 151, baseType: !96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1338, file: !1339, line: 62, baseType: !1348, size: 32, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !69, line: 150, baseType: !6)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1338, file: !1339, line: 64, baseType: !1350, size: 32, offset: 224)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !69, line: 146, baseType: !6)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1338, file: !1339, line: 65, baseType: !1352, size: 32, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !69, line: 147, baseType: !6)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1338, file: !1339, line: 67, baseType: !39, size: 32, offset: 288)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1338, file: !1339, line: 69, baseType: !1342, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1338, file: !1339, line: 74, baseType: !68, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1338, file: !1339, line: 78, baseType: !1357, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !69, line: 174, baseType: !70)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1338, file: !1339, line: 80, baseType: !1359, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !69, line: 179, baseType: !70)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1338, file: !1339, line: 91, baseType: !1361, size: 128, offset: 576)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1362, line: 10, size: 128, elements: !1363)
!1362 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1363 = !{!1364, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1361, file: !1362, line: 12, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !69, line: 160, baseType: !70)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1361, file: !1362, line: 16, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !69, line: 196, baseType: !70)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1338, file: !1339, line: 92, baseType: !1361, size: 128, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1338, file: !1339, line: 93, baseType: !1361, size: 128, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1338, file: !1339, line: 106, baseType: !1371, size: 192, offset: 960)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 192, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 3)
!1374 = !DILocalVariable(name: "atime", scope: !1375, file: !3, line: 425, type: !1361)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 421, column: 7)
!1376 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 394, column: 5)
!1377 = !DILocalVariable(name: "mtime", scope: !1375, file: !3, line: 426, type: !1361)
!1378 = !DILocalVariable(name: "euid", scope: !1379, file: !3, line: 436, type: !1380)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 431, column: 7)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1381, line: 79, baseType: !1350)
!1381 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1382 = !DILocalVariable(name: "NO_UID", scope: !1379, file: !3, line: 437, type: !1380)
!1383 = !DILocalVariable(name: "egid", scope: !1384, file: !3, line: 447, type: !1385)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 442, column: 7)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1381, line: 64, baseType: !1352)
!1386 = !DILocalVariable(name: "NO_GID", scope: !1384, file: !3, line: 448, type: !1385)
!1387 = !DILocalVariable(name: "fd", scope: !1388, file: !3, line: 514, type: !70)
!1388 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 513, column: 7)
!1389 = !DILocalVariable(name: "arg", scope: !1388, file: !3, line: 515, type: !37)
!1390 = !DILocation(line: 391, column: 3, scope: !1335)
!1391 = !DILocation(line: 391, column: 15, scope: !1335)
!1392 = !DILocation(line: 393, column: 11, scope: !1335)
!1393 = !DILocation(line: 393, column: 16, scope: !1335)
!1394 = !DILocation(line: 393, column: 3, scope: !1335)
!1395 = !DILocation(line: 396, column: 26, scope: !1376)
!1396 = !DILocation(line: 396, column: 67, scope: !1376)
!1397 = !DILocation(line: 396, column: 72, scope: !1376)
!1398 = !DILocation(line: 396, column: 60, scope: !1376)
!1399 = !DILocation(line: 396, column: 7, scope: !1376)
!1400 = !DILocation(line: 0, scope: !1188, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1403)
!1402 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 113, type: !121, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1403 = distinct !DILocation(line: 405, column: 7, scope: !1376)
!1404 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1401)
!1405 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1401)
!1406 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1401)
!1407 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1401)
!1408 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1401)
!1409 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1403)
!1410 = !DILocation(line: 406, column: 20, scope: !1376)
!1411 = !DILocalVariable(name: "__path", arg: 1, scope: !1412, file: !1413, line: 453, type: !37)
!1412 = distinct !DISubprogram(name: "stat", scope: !1413, file: !1413, line: 453, type: !1414, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1413 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!39, !37, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1417 = !{!1411, !1418}
!1418 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1412, file: !1413, line: 453, type: !1416)
!1419 = !DILocation(line: 0, scope: !1412, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 406, column: 14, scope: !1376)
!1421 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1420)
!1422 = !DILocation(line: 406, column: 46, scope: !1376)
!1423 = !DILocation(line: 406, column: 7, scope: !1376)
!1424 = !DILocation(line: 0, scope: !1188, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 409, column: 7, scope: !1376)
!1427 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1425)
!1428 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1425)
!1429 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1425)
!1430 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1425)
!1431 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1425)
!1432 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1426)
!1433 = !DILocation(line: 410, column: 26, scope: !1376)
!1434 = !DILocation(line: 410, column: 14, scope: !1376)
!1435 = !DILocation(line: 410, column: 47, scope: !1376)
!1436 = !DILocation(line: 410, column: 7, scope: !1376)
!1437 = !DILocation(line: 0, scope: !1188, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 413, column: 7, scope: !1376)
!1440 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1438)
!1441 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1438)
!1442 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1438)
!1443 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1438)
!1444 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1438)
!1445 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1439)
!1446 = !DILocation(line: 414, column: 26, scope: !1376)
!1447 = !DILocation(line: 414, column: 14, scope: !1376)
!1448 = !DILocation(line: 414, column: 47, scope: !1376)
!1449 = !DILocation(line: 414, column: 7, scope: !1376)
!1450 = !DILocation(line: 0, scope: !1188, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 417, column: 7, scope: !1376)
!1453 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1451)
!1454 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1451)
!1455 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1451)
!1456 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1451)
!1457 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1451)
!1458 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1452)
!1459 = !DILocation(line: 418, column: 26, scope: !1376)
!1460 = !DILocation(line: 418, column: 14, scope: !1376)
!1461 = !DILocation(line: 418, column: 47, scope: !1376)
!1462 = !DILocation(line: 418, column: 7, scope: !1376)
!1463 = !DILocation(line: 0, scope: !1188, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 422, column: 9, scope: !1375)
!1466 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1464)
!1467 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1464)
!1468 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1464)
!1469 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1464)
!1470 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1464)
!1471 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1465)
!1472 = !DILocation(line: 423, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 423, column: 13)
!1474 = !DILocation(line: 0, scope: !1412, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 423, column: 13, scope: !1473)
!1476 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1475)
!1477 = !DILocation(line: 423, column: 45, scope: !1473)
!1478 = !DILocation(line: 423, column: 13, scope: !1375)
!1479 = !DILocalVariable(name: "st", arg: 1, scope: !1480, file: !1481, line: 118, type: !1484)
!1480 = distinct !DISubprogram(name: "get_stat_atime", scope: !1481, file: !1481, line: 118, type: !1482, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1486)
!1481 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1361, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1486 = !{!1479}
!1487 = !DILocation(line: 0, scope: !1480, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 425, column: 33, scope: !1375)
!1489 = !DILocation(line: 121, column: 10, scope: !1480, inlinedAt: !1488)
!1490 = !{i64 0, i64 8, !1491, i64 8, i64 8, !1491}
!1491 = !{!1492, !1492, i64 0}
!1492 = !{!"long", !1071, i64 0}
!1493 = !DILocation(line: 0, scope: !1375)
!1494 = !DILocalVariable(name: "st", arg: 1, scope: !1495, file: !1481, line: 146, type: !1484)
!1495 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1481, file: !1481, line: 146, type: !1482, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1496 = !{!1494}
!1497 = !DILocation(line: 0, scope: !1495, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 426, column: 33, scope: !1375)
!1499 = !DILocation(line: 149, column: 10, scope: !1495, inlinedAt: !1498)
!1500 = !DILocalVariable(name: "a", arg: 1, scope: !1501, file: !12, line: 89, type: !1361)
!1501 = distinct !DISubprogram(name: "timespec_cmp", scope: !12, file: !12, line: 89, type: !1502, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!39, !1361, !1361}
!1504 = !{!1500, !1505}
!1505 = !DILocalVariable(name: "b", arg: 2, scope: !1501, file: !12, line: 89, type: !1361)
!1506 = !DILocation(line: 0, scope: !1501, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 427, column: 17, scope: !1375)
!1508 = !DILocation(line: 91, column: 16, scope: !1509, inlinedAt: !1507)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !12, line: 91, column: 7)
!1510 = !DILocation(line: 91, column: 7, scope: !1501, inlinedAt: !1507)
!1511 = !DILocation(line: 93, column: 16, scope: !1512, inlinedAt: !1507)
!1512 = distinct !DILexicalBlock(scope: !1501, file: !12, line: 93, column: 7)
!1513 = !DILocation(line: 93, column: 7, scope: !1501, inlinedAt: !1507)
!1514 = !DILocation(line: 98, column: 3, scope: !1501, inlinedAt: !1507)
!1515 = !DILocation(line: 99, column: 3, scope: !1501, inlinedAt: !1507)
!1516 = !DILocation(line: 101, column: 20, scope: !1501, inlinedAt: !1507)
!1517 = !DILocation(line: 101, column: 10, scope: !1501, inlinedAt: !1507)
!1518 = !DILocation(line: 101, column: 3, scope: !1501, inlinedAt: !1507)
!1519 = !DILocation(line: 0, scope: !1188, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 432, column: 9, scope: !1379)
!1522 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1520)
!1523 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1520)
!1524 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1520)
!1525 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1520)
!1526 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1520)
!1527 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1521)
!1528 = !DILocation(line: 433, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 433, column: 13)
!1530 = !DILocation(line: 0, scope: !1412, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 433, column: 13, scope: !1529)
!1532 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1531)
!1533 = !DILocation(line: 433, column: 45, scope: !1529)
!1534 = !DILocation(line: 433, column: 13, scope: !1379)
!1535 = !DILocation(line: 435, column: 9, scope: !1379)
!1536 = !DILocation(line: 435, column: 15, scope: !1379)
!1537 = !DILocation(line: 436, column: 22, scope: !1379)
!1538 = !DILocation(line: 0, scope: !1379)
!1539 = !DILocation(line: 438, column: 24, scope: !1379)
!1540 = !DILocation(line: 438, column: 34, scope: !1379)
!1541 = !DILocation(line: 438, column: 37, scope: !1379)
!1542 = !DILocation(line: 438, column: 44, scope: !1379)
!1543 = !DILocation(line: 438, column: 64, scope: !1379)
!1544 = !{!1545, !1142, i64 28}
!1545 = !{!"stat", !1492, i64 0, !1492, i64 8, !1492, i64 16, !1142, i64 24, !1142, i64 28, !1142, i64 32, !1142, i64 36, !1492, i64 40, !1492, i64 48, !1492, i64 56, !1492, i64 64, !1546, i64 72, !1546, i64 88, !1546, i64 104, !1071, i64 120}
!1546 = !{!"timespec", !1492, i64 0, !1492, i64 8}
!1547 = !DILocation(line: 438, column: 52, scope: !1379)
!1548 = !DILocation(line: 0, scope: !1188, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 443, column: 9, scope: !1384)
!1551 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1549)
!1552 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1549)
!1553 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1549)
!1554 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1549)
!1555 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1549)
!1556 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1550)
!1557 = !DILocation(line: 444, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 444, column: 13)
!1559 = !DILocation(line: 0, scope: !1412, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 444, column: 13, scope: !1558)
!1561 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1560)
!1562 = !DILocation(line: 444, column: 45, scope: !1558)
!1563 = !DILocation(line: 444, column: 13, scope: !1384)
!1564 = !DILocation(line: 446, column: 9, scope: !1384)
!1565 = !DILocation(line: 446, column: 15, scope: !1384)
!1566 = !DILocation(line: 447, column: 22, scope: !1384)
!1567 = !DILocation(line: 0, scope: !1384)
!1568 = !DILocation(line: 449, column: 24, scope: !1384)
!1569 = !DILocation(line: 449, column: 34, scope: !1384)
!1570 = !DILocation(line: 449, column: 37, scope: !1384)
!1571 = !DILocation(line: 449, column: 44, scope: !1384)
!1572 = !DILocation(line: 449, column: 64, scope: !1384)
!1573 = !{!1545, !1142, i64 32}
!1574 = !DILocation(line: 449, column: 52, scope: !1384)
!1575 = !DILocation(line: 0, scope: !1188, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 453, column: 7, scope: !1376)
!1578 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1576)
!1579 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1576)
!1580 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1576)
!1581 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1576)
!1582 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1576)
!1583 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1577)
!1584 = !DILocation(line: 456, column: 21, scope: !1376)
!1585 = !DILocation(line: 0, scope: !1412, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 456, column: 15, scope: !1376)
!1587 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1586)
!1588 = !DILocation(line: 456, column: 47, scope: !1376)
!1589 = !DILocation(line: 457, column: 15, scope: !1376)
!1590 = !DILocation(line: 456, column: 7, scope: !1376)
!1591 = !DILocation(line: 0, scope: !1188, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 460, column: 7, scope: !1376)
!1594 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1592)
!1595 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1592)
!1596 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1592)
!1597 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1592)
!1598 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1592)
!1599 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1593)
!1600 = !DILocation(line: 461, column: 21, scope: !1376)
!1601 = !DILocation(line: 0, scope: !1412, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 461, column: 15, scope: !1376)
!1603 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1602)
!1604 = !DILocation(line: 461, column: 47, scope: !1376)
!1605 = !DILocation(line: 462, column: 15, scope: !1376)
!1606 = !DILocation(line: 461, column: 7, scope: !1376)
!1607 = !DILocation(line: 0, scope: !1188, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 465, column: 7, scope: !1376)
!1610 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1608)
!1611 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1608)
!1612 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1608)
!1613 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1608)
!1614 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1608)
!1615 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1609)
!1616 = !DILocation(line: 466, column: 21, scope: !1376)
!1617 = !DILocation(line: 0, scope: !1412, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 466, column: 15, scope: !1376)
!1619 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1618)
!1620 = !DILocation(line: 466, column: 47, scope: !1376)
!1621 = !DILocation(line: 467, column: 15, scope: !1376)
!1622 = !DILocation(line: 466, column: 7, scope: !1376)
!1623 = !DILocation(line: 0, scope: !1188, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 470, column: 7, scope: !1376)
!1626 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1624)
!1627 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1624)
!1628 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1624)
!1629 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1624)
!1630 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1624)
!1631 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1625)
!1632 = !DILocation(line: 471, column: 21, scope: !1376)
!1633 = !DILocation(line: 0, scope: !1412, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 471, column: 15, scope: !1376)
!1635 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1634)
!1636 = !DILocation(line: 471, column: 47, scope: !1376)
!1637 = !DILocation(line: 472, column: 15, scope: !1376)
!1638 = !DILocation(line: 471, column: 7, scope: !1376)
!1639 = !DILocation(line: 0, scope: !1188, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 475, column: 7, scope: !1376)
!1642 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1640)
!1643 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1640)
!1644 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1640)
!1645 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1640)
!1646 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1640)
!1647 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1641)
!1648 = !DILocation(line: 476, column: 21, scope: !1376)
!1649 = !DILocation(line: 0, scope: !1412, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 476, column: 15, scope: !1376)
!1651 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1650)
!1652 = !DILocation(line: 476, column: 47, scope: !1376)
!1653 = !DILocation(line: 477, column: 15, scope: !1376)
!1654 = !DILocation(line: 476, column: 7, scope: !1376)
!1655 = !DILocation(line: 0, scope: !1188, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 480, column: 7, scope: !1376)
!1658 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1656)
!1659 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1656)
!1660 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1656)
!1661 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1656)
!1662 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1656)
!1663 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1657)
!1664 = !DILocation(line: 481, column: 21, scope: !1376)
!1665 = !DILocation(line: 0, scope: !1412, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 481, column: 15, scope: !1376)
!1667 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1666)
!1668 = !DILocation(line: 481, column: 47, scope: !1376)
!1669 = !DILocation(line: 482, column: 15, scope: !1376)
!1670 = !DILocation(line: 481, column: 7, scope: !1376)
!1671 = !DILocation(line: 0, scope: !1188, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 485, column: 7, scope: !1376)
!1674 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1672)
!1675 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1672)
!1676 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1672)
!1677 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1672)
!1678 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1672)
!1679 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1673)
!1680 = !DILocation(line: 486, column: 21, scope: !1376)
!1681 = !DILocation(line: 0, scope: !1412, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 486, column: 15, scope: !1376)
!1683 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1682)
!1684 = !DILocation(line: 486, column: 47, scope: !1376)
!1685 = !DILocation(line: 487, column: 15, scope: !1376)
!1686 = !DILocation(line: 486, column: 7, scope: !1376)
!1687 = !DILocation(line: 0, scope: !1188, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 493, column: 7, scope: !1376)
!1690 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1688)
!1691 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1688)
!1692 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1688)
!1693 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1688)
!1694 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1688)
!1695 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1689)
!1696 = !DILocation(line: 494, column: 22, scope: !1376)
!1697 = !DILocalVariable(name: "__path", arg: 1, scope: !1698, file: !1413, line: 460, type: !37)
!1698 = distinct !DISubprogram(name: "lstat", scope: !1413, file: !1413, line: 460, type: !1414, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1699)
!1699 = !{!1697, !1700}
!1700 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1698, file: !1413, line: 460, type: !1416)
!1701 = !DILocation(line: 0, scope: !1698, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 494, column: 15, scope: !1376)
!1703 = !DILocation(line: 462, column: 10, scope: !1698, inlinedAt: !1702)
!1704 = !DILocation(line: 494, column: 48, scope: !1376)
!1705 = !DILocation(line: 495, column: 15, scope: !1376)
!1706 = !DILocation(line: 494, column: 7, scope: !1376)
!1707 = !DILocation(line: 0, scope: !1188, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 498, column: 7, scope: !1376)
!1710 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1708)
!1711 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1708)
!1712 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1708)
!1713 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1708)
!1714 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1708)
!1715 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1709)
!1716 = !DILocation(line: 499, column: 21, scope: !1376)
!1717 = !DILocation(line: 0, scope: !1412, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 499, column: 15, scope: !1376)
!1719 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1718)
!1720 = !DILocation(line: 499, column: 47, scope: !1376)
!1721 = !DILocation(line: 500, column: 15, scope: !1376)
!1722 = !DILocation(line: 499, column: 7, scope: !1376)
!1723 = !DILocation(line: 0, scope: !1188, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 503, column: 7, scope: !1376)
!1726 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1724)
!1727 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1724)
!1728 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1724)
!1729 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1724)
!1730 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1724)
!1731 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1725)
!1732 = !DILocation(line: 504, column: 21, scope: !1376)
!1733 = !DILocation(line: 0, scope: !1412, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 504, column: 15, scope: !1376)
!1735 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1734)
!1736 = !DILocation(line: 504, column: 47, scope: !1376)
!1737 = !DILocation(line: 505, column: 15, scope: !1376)
!1738 = !DILocation(line: 504, column: 7, scope: !1376)
!1739 = !DILocation(line: 0, scope: !1188, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 508, column: 7, scope: !1376)
!1742 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1740)
!1743 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1740)
!1744 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1740)
!1745 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1740)
!1746 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1740)
!1747 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1741)
!1748 = !DILocation(line: 509, column: 21, scope: !1376)
!1749 = !DILocation(line: 0, scope: !1412, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 509, column: 15, scope: !1376)
!1751 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !1750)
!1752 = !DILocation(line: 509, column: 47, scope: !1376)
!1753 = !DILocation(line: 510, column: 15, scope: !1376)
!1754 = !DILocation(line: 509, column: 7, scope: !1376)
!1755 = !DILocation(line: 0, scope: !1188, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 516, column: 9, scope: !1388)
!1758 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1756)
!1759 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1756)
!1760 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1756)
!1761 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1756)
!1762 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1756)
!1763 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1757)
!1764 = !DILocation(line: 517, column: 25, scope: !1388)
!1765 = !DILocation(line: 517, column: 15, scope: !1388)
!1766 = !DILocation(line: 0, scope: !1388)
!1767 = !DILocation(line: 518, column: 9, scope: !1388)
!1768 = !DILocation(line: 518, column: 15, scope: !1388)
!1769 = !DILocation(line: 519, column: 14, scope: !1388)
!1770 = !DILocation(line: 520, column: 17, scope: !1388)
!1771 = !DILocation(line: 520, column: 23, scope: !1388)
!1772 = !DILocation(line: 520, column: 33, scope: !1388)
!1773 = !DILocation(line: 520, column: 72, scope: !1388)
!1774 = !DILocation(line: 520, column: 64, scope: !1388)
!1775 = !DILocation(line: 520, column: 61, scope: !1388)
!1776 = !DILocation(line: 0, scope: !1188, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 524, column: 7, scope: !1376)
!1779 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1777)
!1780 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1777)
!1781 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1777)
!1782 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1777)
!1783 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1777)
!1784 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1778)
!1785 = !DILocation(line: 525, column: 14, scope: !1376)
!1786 = !DILocation(line: 525, column: 31, scope: !1376)
!1787 = !DILocation(line: 525, column: 7, scope: !1376)
!1788 = !DILocation(line: 0, scope: !1188, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 115, column: 3, scope: !1402, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 528, column: 7, scope: !1376)
!1791 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1789)
!1792 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1789)
!1793 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1789)
!1794 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1789)
!1795 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1789)
!1796 = !DILocation(line: 116, column: 3, scope: !1402, inlinedAt: !1790)
!1797 = !DILocation(line: 529, column: 14, scope: !1376)
!1798 = !DILocation(line: 529, column: 31, scope: !1376)
!1799 = !DILocation(line: 529, column: 7, scope: !1376)
!1800 = !DILocation(line: 0, scope: !1376)
!1801 = !DILocation(line: 531, column: 1, scope: !1335)
!1802 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 124, type: !121, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1803 = !DILocation(line: 126, column: 22, scope: !1802)
!1804 = !DILocation(line: 126, column: 61, scope: !1802)
!1805 = !DILocation(line: 126, column: 66, scope: !1802)
!1806 = !DILocation(line: 126, column: 71, scope: !1802)
!1807 = !DILocation(line: 126, column: 54, scope: !1802)
!1808 = !DILocation(line: 126, column: 3, scope: !1802)
!1809 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 612, type: !1172, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "value", scope: !1809, file: !3, line: 614, type: !216)
!1812 = !DILocation(line: 616, column: 14, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 616, column: 7)
!1814 = !DILocation(line: 616, column: 19, scope: !1813)
!1815 = !DILocation(line: 616, column: 23, scope: !1813)
!1816 = !DILocation(line: 616, column: 7, scope: !1813)
!1817 = !DILocation(line: 616, column: 7, scope: !1809)
!1818 = !DILocation(line: 617, column: 13, scope: !1813)
!1819 = !DILocation(line: 0, scope: !1809)
!1820 = !DILocation(line: 617, column: 5, scope: !1813)
!1821 = !DILocation(line: 618, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 618, column: 12)
!1823 = !DILocation(line: 618, column: 12, scope: !1813)
!1824 = !DILocation(line: 0, scope: !1188, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 620, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 619, column: 5)
!1827 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1825)
!1828 = !DILocation(line: 108, column: 19, scope: !1225, inlinedAt: !1825)
!1829 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1825)
!1830 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1825)
!1831 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1825)
!1832 = !DILocation(line: 595, column: 7, scope: !1181, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 621, column: 16, scope: !1826)
!1834 = !DILocation(line: 595, column: 7, scope: !1182, inlinedAt: !1833)
!1835 = !DILocation(line: 0, scope: !1188, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 597, column: 7, scope: !1194, inlinedAt: !1833)
!1837 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1836)
!1838 = !DILocation(line: 587, column: 18, scope: !1171, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 598, column: 17, scope: !1194, inlinedAt: !1833)
!1840 = !DILocation(line: 587, column: 10, scope: !1171, inlinedAt: !1839)
!1841 = !DILocation(line: 587, column: 25, scope: !1171, inlinedAt: !1839)
!1842 = !DILocation(line: 0, scope: !1182, inlinedAt: !1833)
!1843 = !DILocation(line: 599, column: 5, scope: !1194, inlinedAt: !1833)
!1844 = !DILocation(line: 600, column: 12, scope: !1203, inlinedAt: !1833)
!1845 = !DILocation(line: 600, column: 25, scope: !1203, inlinedAt: !1833)
!1846 = !DILocation(line: 601, column: 12, scope: !1203, inlinedAt: !1833)
!1847 = !DILocation(line: 601, column: 15, scope: !1203, inlinedAt: !1833)
!1848 = !DILocation(line: 601, column: 28, scope: !1203, inlinedAt: !1833)
!1849 = !DILocation(line: 602, column: 12, scope: !1203, inlinedAt: !1833)
!1850 = !DILocation(line: 602, column: 15, scope: !1203, inlinedAt: !1833)
!1851 = !DILocation(line: 602, column: 28, scope: !1203, inlinedAt: !1833)
!1852 = !DILocation(line: 600, column: 12, scope: !1181, inlinedAt: !1833)
!1853 = !DILocation(line: 604, column: 15, scope: !1213, inlinedAt: !1833)
!1854 = !DILocation(line: 607, column: 5, scope: !1203, inlinedAt: !1833)
!1855 = !DILocation(line: 621, column: 15, scope: !1826)
!1856 = !DILocation(line: 622, column: 5, scope: !1826)
!1857 = !DILocation(line: 623, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 623, column: 12)
!1859 = !DILocation(line: 623, column: 35, scope: !1858)
!1860 = !DILocation(line: 623, column: 38, scope: !1858)
!1861 = !DILocation(line: 623, column: 12, scope: !1822)
!1862 = !DILocation(line: 0, scope: !1188, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 625, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 624, column: 5)
!1865 = !DILocation(line: 587, column: 10, scope: !1171, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 626, column: 15, scope: !1864)
!1867 = !DILocation(line: 587, column: 25, scope: !1171, inlinedAt: !1866)
!1868 = !DILocation(line: 0, scope: !1188, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 627, column: 7, scope: !1864)
!1870 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1869)
!1871 = !DILocation(line: 628, column: 5, scope: !1864)
!1872 = !DILocation(line: 629, column: 12, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 629, column: 12)
!1874 = !DILocation(line: 629, column: 40, scope: !1873)
!1875 = !DILocation(line: 629, column: 43, scope: !1873)
!1876 = !DILocation(line: 629, column: 12, scope: !1858)
!1877 = !DILocation(line: 578, column: 14, scope: !1272, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 630, column: 13, scope: !1873)
!1879 = !DILocation(line: 578, column: 11, scope: !1272, inlinedAt: !1878)
!1880 = !DILocation(line: 578, column: 7, scope: !1273, inlinedAt: !1878)
!1881 = !DILocation(line: 0, scope: !1280, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 581, column: 10, scope: !1273, inlinedAt: !1878)
!1883 = !DILocation(line: 0, scope: !1285, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 564, column: 16, scope: !1289, inlinedAt: !1882)
!1885 = !DILocation(line: 545, column: 16, scope: !1291, inlinedAt: !1884)
!1886 = !DILocation(line: 546, column: 14, scope: !1293, inlinedAt: !1884)
!1887 = !DILocation(line: 546, column: 20, scope: !1293, inlinedAt: !1884)
!1888 = !DILocation(line: 546, column: 18, scope: !1293, inlinedAt: !1884)
!1889 = !DILocation(line: 546, column: 25, scope: !1293, inlinedAt: !1884)
!1890 = !DILocation(line: 579, column: 5, scope: !1272, inlinedAt: !1878)
!1891 = !DILocation(line: 546, column: 28, scope: !1293, inlinedAt: !1884)
!1892 = !DILocation(line: 546, column: 11, scope: !1291, inlinedAt: !1884)
!1893 = !DILocation(line: 0, scope: !1188, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 548, column: 7, scope: !1291, inlinedAt: !1884)
!1895 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1894)
!1896 = !DILocation(line: 545, column: 13, scope: !1291, inlinedAt: !1884)
!1897 = distinct !{!1897, !1898, !1899}
!1898 = !DILocation(line: 543, column: 3, scope: !1285, inlinedAt: !1884)
!1899 = !DILocation(line: 549, column: 5, scope: !1285, inlinedAt: !1884)
!1900 = !DILocation(line: 564, column: 13, scope: !1289, inlinedAt: !1882)
!1901 = !DILocation(line: 565, column: 28, scope: !1309, inlinedAt: !1882)
!1902 = !DILocation(line: 565, column: 11, scope: !1289, inlinedAt: !1882)
!1903 = !DILocation(line: 0, scope: !1188, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 567, column: 7, scope: !1289, inlinedAt: !1882)
!1905 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1904)
!1906 = distinct !{!1906, !1907, !1908}
!1907 = !DILocation(line: 562, column: 3, scope: !1280, inlinedAt: !1882)
!1908 = !DILocation(line: 568, column: 5, scope: !1280, inlinedAt: !1882)
!1909 = !DILocation(line: 632, column: 24, scope: !1873)
!1910 = !DILocation(line: 632, column: 66, scope: !1873)
!1911 = !DILocation(line: 632, column: 71, scope: !1873)
!1912 = !DILocation(line: 632, column: 74, scope: !1873)
!1913 = !DILocation(line: 632, column: 59, scope: !1873)
!1914 = !DILocation(line: 632, column: 5, scope: !1873)
!1915 = !DILocation(line: 633, column: 3, scope: !1809)
!1916 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 211, type: !1172, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DILocalVariable(name: "value", scope: !1916, file: !3, line: 213, type: !216)
!1919 = !DILocalVariable(name: "negated", scope: !1916, file: !3, line: 214, type: !216)
!1920 = !DILocalVariable(name: "nargs", scope: !1921, file: !3, line: 229, type: !39)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 228, column: 5)
!1922 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 227, column: 7)
!1923 = !DILocation(line: 0, scope: !1916)
!1924 = !DILocation(line: 217, column: 10, scope: !1916)
!1925 = !DILocation(line: 217, column: 16, scope: !1916)
!1926 = !DILocation(line: 217, column: 14, scope: !1916)
!1927 = !DILocation(line: 217, column: 21, scope: !1916)
!1928 = !DILocation(line: 217, column: 24, scope: !1916)
!1929 = !DILocation(line: 217, column: 37, scope: !1916)
!1930 = !DILocation(line: 217, column: 44, scope: !1916)
!1931 = !DILocation(line: 217, column: 47, scope: !1916)
!1932 = !DILocation(line: 217, column: 60, scope: !1916)
!1933 = !DILocation(line: 217, column: 3, scope: !1916)
!1934 = !DILocation(line: 0, scope: !1188, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 219, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 218, column: 5)
!1937 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1935)
!1938 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1935)
!1939 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1935)
!1940 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1935)
!1941 = !DILocation(line: 220, column: 17, scope: !1936)
!1942 = !DILocation(line: 224, column: 5, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 223, column: 7)
!1944 = !DILocation(line: 227, column: 20, scope: !1922)
!1945 = !DILocation(line: 227, column: 27, scope: !1922)
!1946 = !DILocation(line: 227, column: 30, scope: !1922)
!1947 = !DILocation(line: 227, column: 43, scope: !1922)
!1948 = !DILocation(line: 227, column: 7, scope: !1916)
!1949 = !DILocation(line: 0, scope: !1188, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 231, column: 7, scope: !1921)
!1951 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1950)
!1952 = !DILocation(line: 108, column: 16, scope: !1225, inlinedAt: !1950)
!1953 = !DILocation(line: 108, column: 9, scope: !1225, inlinedAt: !1950)
!1954 = !DILocation(line: 0, scope: !1921)
!1955 = !DILocation(line: 234, column: 16, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 233, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 233, column: 7)
!1958 = !DILocation(line: 234, column: 24, scope: !1956)
!1959 = !DILocation(line: 234, column: 31, scope: !1956)
!1960 = !DILocation(line: 233, column: 7, scope: !1957)
!1961 = !DILocation(line: 109, column: 5, scope: !1225, inlinedAt: !1950)
!1962 = !DILocation(line: 234, column: 36, scope: !1956)
!1963 = !DILocation(line: 236, column: 19, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 236, column: 13)
!1965 = !DILocation(line: 236, column: 13, scope: !1956)
!1966 = !DILocation(line: 238, column: 26, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 237, column: 11)
!1968 = !DILocation(line: 239, column: 13, scope: !1967)
!1969 = !DILocation(line: 235, column: 17, scope: !1956)
!1970 = distinct !{!1970, !1960, !1971}
!1971 = !DILocation(line: 240, column: 11, scope: !1957)
!1972 = !DILocation(line: 242, column: 15, scope: !1921)
!1973 = !DILocation(line: 0, scope: !1957)
!1974 = !DILocation(line: 243, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 243, column: 11)
!1976 = !DILocation(line: 243, column: 16, scope: !1975)
!1977 = !DILocation(line: 243, column: 21, scope: !1975)
!1978 = !DILocation(line: 243, column: 11, scope: !1921)
!1979 = !DILocation(line: 244, column: 28, scope: !1975)
!1980 = !DILocation(line: 244, column: 46, scope: !1975)
!1981 = !DILocation(line: 244, column: 9, scope: !1975)
!1982 = !DILocation(line: 246, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 246, column: 13)
!1984 = !DILocation(line: 246, column: 26, scope: !1983)
!1985 = !DILocation(line: 246, column: 33, scope: !1983)
!1986 = !DILocation(line: 246, column: 36, scope: !1983)
!1987 = !DILocation(line: 246, column: 13, scope: !1975)
!1988 = !DILocation(line: 247, column: 30, scope: !1983)
!1989 = !DILocation(line: 248, column: 30, scope: !1983)
!1990 = !DILocation(line: 248, column: 60, scope: !1983)
!1991 = !DILocation(line: 248, column: 65, scope: !1983)
!1992 = !DILocation(line: 248, column: 48, scope: !1983)
!1993 = !DILocation(line: 247, column: 11, scope: !1983)
!1994 = !DILocation(line: 0, scope: !1188, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 249, column: 7, scope: !1921)
!1996 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !1995)
!1997 = !DILocation(line: 250, column: 5, scope: !1921)
!1998 = !DILocation(line: 253, column: 22, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 253, column: 12)
!2000 = !DILocation(line: 253, column: 14, scope: !1999)
!2001 = !DILocation(line: 253, column: 28, scope: !1999)
!2002 = !DILocation(line: 253, column: 31, scope: !1999)
!2003 = !DILocation(line: 253, column: 55, scope: !1999)
!2004 = !DILocation(line: 253, column: 74, scope: !1999)
!2005 = !DILocation(line: 253, column: 65, scope: !1999)
!2006 = !DILocation(line: 253, column: 58, scope: !1999)
!2007 = !DILocation(line: 253, column: 12, scope: !1922)
!2008 = !DILocation(line: 254, column: 13, scope: !1999)
!2009 = !DILocation(line: 254, column: 5, scope: !1999)
!2010 = !DILocation(line: 255, column: 14, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 255, column: 12)
!2012 = !DILocation(line: 255, column: 28, scope: !2011)
!2013 = !DILocation(line: 255, column: 47, scope: !2011)
!2014 = !DILocation(line: 255, column: 38, scope: !2011)
!2015 = !DILocation(line: 255, column: 31, scope: !2011)
!2016 = !DILocation(line: 255, column: 12, scope: !1999)
!2017 = !DILocation(line: 256, column: 13, scope: !2011)
!2018 = !DILocation(line: 256, column: 5, scope: !2011)
!2019 = !DILocation(line: 259, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 259, column: 12)
!2021 = !DILocation(line: 259, column: 32, scope: !2020)
!2022 = !DILocation(line: 259, column: 35, scope: !2020)
!2023 = !DILocation(line: 259, column: 48, scope: !2020)
!2024 = !DILocation(line: 259, column: 51, scope: !2020)
!2025 = !DILocation(line: 259, column: 64, scope: !2020)
!2026 = !DILocation(line: 259, column: 12, scope: !2011)
!2027 = !DILocation(line: 260, column: 13, scope: !2020)
!2028 = !DILocation(line: 260, column: 5, scope: !2020)
!2029 = !DILocation(line: 263, column: 29, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 262, column: 5)
!2031 = !DILocation(line: 0, scope: !1188, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 264, column: 7, scope: !2030)
!2033 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !2032)
!2034 = !DILocation(line: 267, column: 18, scope: !1916)
!2035 = !DILocation(line: 267, column: 3, scope: !1916)
!2036 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 183, type: !2037, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!216, !37}
!2039 = !{!2040}
!2040 = !DILocalVariable(name: "s", arg: 1, scope: !2036, file: !3, line: 183, type: !37)
!2041 = !DILocation(line: 0, scope: !2036)
!2042 = !DILocation(line: 185, column: 12, scope: !2036)
!2043 = !DILocation(line: 185, column: 30, scope: !2036)
!2044 = !DILocation(line: 185, column: 34, scope: !2036)
!2045 = !DILocation(line: 185, column: 52, scope: !2036)
!2046 = !DILocation(line: 185, column: 56, scope: !2036)
!2047 = !DILocation(line: 185, column: 73, scope: !2036)
!2048 = !DILocation(line: 186, column: 12, scope: !2036)
!2049 = !DILocation(line: 186, column: 32, scope: !2036)
!2050 = !DILocation(line: 187, column: 12, scope: !2036)
!2051 = !DILocation(line: 187, column: 30, scope: !2036)
!2052 = !DILocation(line: 187, column: 34, scope: !2036)
!2053 = !DILocation(line: 187, column: 52, scope: !2036)
!2054 = !DILocation(line: 187, column: 56, scope: !2036)
!2055 = !DILocation(line: 187, column: 74, scope: !2036)
!2056 = !DILocation(line: 188, column: 12, scope: !2036)
!2057 = !DILocation(line: 188, column: 30, scope: !2036)
!2058 = !DILocation(line: 188, column: 34, scope: !2036)
!2059 = !DILocation(line: 188, column: 52, scope: !2036)
!2060 = !DILocation(line: 188, column: 56, scope: !2036)
!2061 = !DILocation(line: 188, column: 74, scope: !2036)
!2062 = !DILocation(line: 189, column: 12, scope: !2036)
!2063 = !DILocation(line: 189, column: 30, scope: !2036)
!2064 = !DILocation(line: 189, column: 34, scope: !2036)
!2065 = !DILocation(line: 185, column: 3, scope: !2036)
!2066 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 271, type: !2067, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!216, !216}
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2083, !2084, !2085, !2086, !2087, !2088, !2092, !2093, !2094, !2095, !2098, !2099, !2100, !2101, !2104}
!2070 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2066, file: !3, line: 271, type: !216)
!2071 = !DILocalVariable(name: "op", scope: !2066, file: !3, line: 273, type: !39)
!2072 = !DILocalVariable(name: "stat_buf", scope: !2066, file: !3, line: 274, type: !1338)
!2073 = !DILocalVariable(name: "stat_spare", scope: !2066, file: !3, line: 274, type: !1338)
!2074 = !DILocalVariable(name: "r_is_l", scope: !2066, file: !3, line: 276, type: !216)
!2075 = !DILocalVariable(name: "lbuf", scope: !2076, file: !3, line: 299, type: !2080)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 298, column: 9)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 293, column: 11)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 291, column: 5)
!2079 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 290, column: 7)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 21)
!2083 = !DILocalVariable(name: "rbuf", scope: !2076, file: !3, line: 300, type: !2080)
!2084 = !DILocalVariable(name: "l", scope: !2076, file: !3, line: 301, type: !37)
!2085 = !DILocalVariable(name: "r", scope: !2076, file: !3, line: 304, type: !37)
!2086 = !DILocalVariable(name: "cmp", scope: !2076, file: !3, line: 307, type: !39)
!2087 = !DILocalVariable(name: "xe_operator", scope: !2076, file: !3, line: 308, type: !216)
!2088 = !DILocalVariable(name: "lt", scope: !2089, file: !3, line: 324, type: !1361)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 322, column: 13)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 321, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 316, column: 9)
!2092 = !DILocalVariable(name: "rt", scope: !2089, file: !3, line: 324, type: !1361)
!2093 = !DILocalVariable(name: "le", scope: !2089, file: !3, line: 325, type: !216)
!2094 = !DILocalVariable(name: "re", scope: !2089, file: !3, line: 325, type: !216)
!2095 = !DILocalVariable(name: "lt", scope: !2096, file: !3, line: 353, type: !1361)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 351, column: 13)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 350, column: 15)
!2098 = !DILocalVariable(name: "rt", scope: !2096, file: !3, line: 353, type: !1361)
!2099 = !DILocalVariable(name: "le", scope: !2096, file: !3, line: 354, type: !216)
!2100 = !DILocalVariable(name: "re", scope: !2096, file: !3, line: 354, type: !216)
!2101 = !DILocalVariable(name: "value", scope: !2102, file: !3, line: 372, type: !216)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 371, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 369, column: 7)
!2104 = !DILocalVariable(name: "value", scope: !2105, file: !3, line: 379, type: !216)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 378, column: 5)
!2106 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 377, column: 7)
!2107 = !DILocalVariable(name: "finfo", scope: !2108, file: !3, line: 170, type: !1338)
!2108 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 168, type: !2109, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!216, !37, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!2112 = !{!2113, !2114, !2107, !2115}
!2113 = !DILocalVariable(name: "filename", arg: 1, scope: !2108, file: !3, line: 168, type: !37)
!2114 = !DILocalVariable(name: "mtime", arg: 2, scope: !2108, file: !3, line: 168, type: !2111)
!2115 = !DILocalVariable(name: "ok", scope: !2108, file: !3, line: 171, type: !216)
!2116 = !DILocation(line: 170, column: 15, scope: !2108, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 358, column: 20, scope: !2096)
!2118 = !DILocation(line: 170, column: 15, scope: !2108, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 330, column: 20, scope: !2089)
!2120 = !DILocation(line: 170, column: 15, scope: !2108, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 329, column: 20, scope: !2089)
!2122 = !DILocation(line: 170, column: 15, scope: !2108, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 359, column: 20, scope: !2096)
!2124 = !DILocation(line: 0, scope: !2066)
!2125 = !DILocation(line: 274, column: 3, scope: !2066)
!2126 = !DILocation(line: 274, column: 15, scope: !2066)
!2127 = !DILocation(line: 274, column: 25, scope: !2066)
!2128 = !DILocation(line: 278, column: 7, scope: !2066)
!2129 = !DILocation(line: 0, scope: !1188, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 279, column: 5, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 278, column: 7)
!2132 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !2130)
!2133 = !DILocation(line: 279, column: 5, scope: !2131)
!2134 = !DILocation(line: 280, column: 8, scope: !2066)
!2135 = !DILocation(line: 280, column: 12, scope: !2066)
!2136 = !DILocation(line: 282, column: 13, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 282, column: 7)
!2138 = !DILocation(line: 282, column: 18, scope: !2137)
!2139 = !DILocation(line: 282, column: 11, scope: !2137)
!2140 = !DILocation(line: 282, column: 23, scope: !2137)
!2141 = !DILocation(line: 282, column: 26, scope: !2137)
!2142 = !DILocation(line: 282, column: 7, scope: !2066)
!2143 = !DILocation(line: 0, scope: !1188, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 285, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 283, column: 5)
!2146 = !DILocation(line: 106, column: 3, scope: !1188, inlinedAt: !2144)
!2147 = !DILocation(line: 286, column: 5, scope: !2145)
!2148 = !DILocation(line: 290, column: 7, scope: !2079)
!2149 = !DILocation(line: 290, column: 7, scope: !2066)
!2150 = !DILocation(line: 293, column: 14, scope: !2077)
!2151 = !DILocation(line: 293, column: 33, scope: !2077)
!2152 = !DILocation(line: 294, column: 17, scope: !2077)
!2153 = !DILocation(line: 294, column: 36, scope: !2077)
!2154 = !DILocation(line: 295, column: 38, scope: !2077)
!2155 = !DILocation(line: 295, column: 50, scope: !2077)
!2156 = !DILocation(line: 296, column: 12, scope: !2077)
!2157 = !DILocation(line: 296, column: 38, scope: !2077)
!2158 = !DILocation(line: 296, column: 50, scope: !2077)
!2159 = !DILocation(line: 297, column: 11, scope: !2077)
!2160 = !DILocation(line: 297, column: 15, scope: !2077)
!2161 = !DILocation(line: 293, column: 11, scope: !2078)
!2162 = !DILocation(line: 299, column: 11, scope: !2076)
!2163 = !DILocation(line: 299, column: 16, scope: !2076)
!2164 = !DILocation(line: 300, column: 11, scope: !2076)
!2165 = !DILocation(line: 300, column: 16, scope: !2076)
!2166 = !DILocation(line: 0, scope: !2076)
!2167 = !DILocation(line: 301, column: 28, scope: !2076)
!2168 = !DILocation(line: 302, column: 41, scope: !2076)
!2169 = !DILocation(line: 302, column: 30, scope: !2076)
!2170 = !DILocation(line: 303, column: 30, scope: !2076)
!2171 = !DILocation(line: 304, column: 28, scope: !2076)
!2172 = !DILocation(line: 305, column: 57, scope: !2076)
!2173 = !DILocation(line: 305, column: 49, scope: !2076)
!2174 = !DILocation(line: 305, column: 41, scope: !2076)
!2175 = !DILocation(line: 305, column: 30, scope: !2076)
!2176 = !DILocation(line: 306, column: 48, scope: !2076)
!2177 = !DILocation(line: 306, column: 40, scope: !2076)
!2178 = !DILocation(line: 306, column: 30, scope: !2076)
!2179 = !DILocation(line: 307, column: 21, scope: !2076)
!2180 = !DILocation(line: 308, column: 31, scope: !2076)
!2181 = !DILocation(line: 308, column: 43, scope: !2076)
!2182 = !DILocation(line: 309, column: 15, scope: !2076)
!2183 = !DILocation(line: 310, column: 19, scope: !2076)
!2184 = !DILocation(line: 310, column: 46, scope: !2076)
!2185 = !DILocation(line: 310, column: 44, scope: !2076)
!2186 = !DILocation(line: 311, column: 48, scope: !2076)
!2187 = !DILocation(line: 311, column: 46, scope: !2076)
!2188 = !DILocation(line: 311, column: 21, scope: !2076)
!2189 = !DILocation(line: 312, column: 26, scope: !2076)
!2190 = !DILocation(line: 312, column: 32, scope: !2076)
!2191 = !DILocation(line: 313, column: 9, scope: !2077)
!2192 = !DILocation(line: 315, column: 15, scope: !2078)
!2193 = !DILocation(line: 315, column: 7, scope: !2078)
!2194 = !DILocation(line: 321, column: 15, scope: !2090)
!2195 = !DILocation(line: 321, column: 27, scope: !2090)
!2196 = !DILocation(line: 321, column: 34, scope: !2090)
!2197 = !DILocation(line: 321, column: 38, scope: !2090)
!2198 = !DILocation(line: 321, column: 15, scope: !2091)
!2199 = !DILocation(line: 326, column: 19, scope: !2089)
!2200 = !DILocation(line: 327, column: 26, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 327, column: 19)
!2202 = !DILocation(line: 328, column: 36, scope: !2201)
!2203 = !DILocation(line: 328, column: 17, scope: !2201)
!2204 = !DILocation(line: 329, column: 31, scope: !2089)
!2205 = !DILocation(line: 0, scope: !2108, inlinedAt: !2121)
!2206 = !DILocation(line: 170, column: 3, scope: !2108, inlinedAt: !2121)
!2207 = !DILocation(line: 0, scope: !1412, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 171, column: 14, scope: !2108, inlinedAt: !2121)
!2209 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2208)
!2210 = !DILocation(line: 171, column: 38, scope: !2108, inlinedAt: !2121)
!2211 = !DILocation(line: 176, column: 7, scope: !2108, inlinedAt: !2121)
!2212 = !DILocation(line: 0, scope: !2089)
!2213 = !DILocation(line: 179, column: 1, scope: !2108, inlinedAt: !2121)
!2214 = !DILocation(line: 330, column: 31, scope: !2089)
!2215 = !DILocation(line: 330, column: 39, scope: !2089)
!2216 = !DILocation(line: 0, scope: !2108, inlinedAt: !2119)
!2217 = !DILocation(line: 170, column: 3, scope: !2108, inlinedAt: !2119)
!2218 = !DILocation(line: 0, scope: !1412, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 171, column: 14, scope: !2108, inlinedAt: !2119)
!2220 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2219)
!2221 = !DILocation(line: 171, column: 38, scope: !2108, inlinedAt: !2119)
!2222 = !DILocation(line: 176, column: 7, scope: !2108, inlinedAt: !2119)
!2223 = !DILocation(line: 179, column: 1, scope: !2108, inlinedAt: !2119)
!2224 = !DILocation(line: 331, column: 25, scope: !2089)
!2225 = !DILocation(line: 0, scope: !1495, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 177, column: 14, scope: !2227, inlinedAt: !2119)
!2227 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 176, column: 7)
!2228 = !DILocation(line: 149, column: 10, scope: !1495, inlinedAt: !2226)
!2229 = !DILocation(line: 91, column: 16, scope: !1509, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 331, column: 36, scope: !2089)
!2231 = !DILocation(line: 0, scope: !1501, inlinedAt: !2230)
!2232 = !DILocation(line: 93, column: 16, scope: !1512, inlinedAt: !2230)
!2233 = !DILocation(line: 93, column: 7, scope: !1501, inlinedAt: !2230)
!2234 = !DILocation(line: 98, column: 3, scope: !1501, inlinedAt: !2230)
!2235 = !DILocation(line: 99, column: 3, scope: !1501, inlinedAt: !2230)
!2236 = !DILocation(line: 101, column: 20, scope: !1501, inlinedAt: !2230)
!2237 = !DILocation(line: 101, column: 10, scope: !1501, inlinedAt: !2230)
!2238 = !DILocation(line: 101, column: 3, scope: !1501, inlinedAt: !2230)
!2239 = !DILocation(line: 336, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 336, column: 15)
!2241 = !DILocation(line: 336, column: 27, scope: !2240)
!2242 = !DILocation(line: 336, column: 34, scope: !2240)
!2243 = !DILocation(line: 336, column: 38, scope: !2240)
!2244 = !DILocation(line: 336, column: 15, scope: !2091)
!2245 = !DILocation(line: 339, column: 19, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 337, column: 13)
!2247 = !DILocation(line: 340, column: 26, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 340, column: 19)
!2249 = !DILocation(line: 341, column: 36, scope: !2248)
!2250 = !DILocation(line: 341, column: 17, scope: !2248)
!2251 = !DILocation(line: 342, column: 29, scope: !2246)
!2252 = !DILocation(line: 0, scope: !1412, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 342, column: 23, scope: !2246)
!2254 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2253)
!2255 = !DILocation(line: 342, column: 54, scope: !2246)
!2256 = !DILocation(line: 343, column: 23, scope: !2246)
!2257 = !DILocation(line: 343, column: 32, scope: !2246)
!2258 = !DILocation(line: 343, column: 40, scope: !2246)
!2259 = !DILocation(line: 0, scope: !1412, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 343, column: 26, scope: !2246)
!2261 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2260)
!2262 = !DILocation(line: 343, column: 59, scope: !2246)
!2263 = !DILocation(line: 344, column: 23, scope: !2246)
!2264 = !DILocation(line: 344, column: 35, scope: !2246)
!2265 = !{!1545, !1492, i64 0}
!2266 = !DILocation(line: 344, column: 56, scope: !2246)
!2267 = !DILocation(line: 344, column: 42, scope: !2246)
!2268 = !DILocation(line: 345, column: 23, scope: !2246)
!2269 = !DILocation(line: 345, column: 35, scope: !2246)
!2270 = !{!1545, !1492, i64 8}
!2271 = !DILocation(line: 345, column: 56, scope: !2246)
!2272 = !DILocation(line: 345, column: 42, scope: !2246)
!2273 = !DILocation(line: 350, column: 22, scope: !2097)
!2274 = !DILocation(line: 350, column: 19, scope: !2097)
!2275 = !DILocation(line: 350, column: 34, scope: !2097)
!2276 = !DILocation(line: 350, column: 47, scope: !2097)
!2277 = !DILocation(line: 350, column: 44, scope: !2097)
!2278 = !DILocation(line: 350, column: 15, scope: !2091)
!2279 = !DILocation(line: 355, column: 19, scope: !2096)
!2280 = !DILocation(line: 356, column: 26, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 356, column: 19)
!2282 = !DILocation(line: 357, column: 36, scope: !2281)
!2283 = !DILocation(line: 357, column: 17, scope: !2281)
!2284 = !DILocation(line: 358, column: 31, scope: !2096)
!2285 = !DILocation(line: 0, scope: !2108, inlinedAt: !2117)
!2286 = !DILocation(line: 170, column: 3, scope: !2108, inlinedAt: !2117)
!2287 = !DILocation(line: 0, scope: !1412, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 171, column: 14, scope: !2108, inlinedAt: !2117)
!2289 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2288)
!2290 = !DILocation(line: 176, column: 7, scope: !2108, inlinedAt: !2117)
!2291 = !DILocation(line: 0, scope: !2096)
!2292 = !DILocation(line: 179, column: 1, scope: !2108, inlinedAt: !2117)
!2293 = !DILocation(line: 359, column: 31, scope: !2096)
!2294 = !DILocation(line: 359, column: 39, scope: !2096)
!2295 = !DILocation(line: 0, scope: !2108, inlinedAt: !2123)
!2296 = !DILocation(line: 170, column: 3, scope: !2108, inlinedAt: !2123)
!2297 = !DILocation(line: 0, scope: !1412, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 171, column: 14, scope: !2108, inlinedAt: !2123)
!2299 = !DILocation(line: 455, column: 10, scope: !1412, inlinedAt: !2298)
!2300 = !DILocation(line: 171, column: 38, scope: !2108, inlinedAt: !2123)
!2301 = !DILocation(line: 176, column: 7, scope: !2108, inlinedAt: !2123)
!2302 = !DILocation(line: 179, column: 1, scope: !2108, inlinedAt: !2123)
!2303 = !DILocation(line: 360, column: 25, scope: !2096)
!2304 = !DILocation(line: 171, column: 38, scope: !2108, inlinedAt: !2117)
!2305 = !DILocation(line: 0, scope: !1495, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 177, column: 14, scope: !2227, inlinedAt: !2123)
!2307 = !DILocation(line: 149, column: 10, scope: !1495, inlinedAt: !2306)
!2308 = !DILocation(line: 91, column: 16, scope: !1509, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 360, column: 36, scope: !2096)
!2310 = !DILocation(line: 0, scope: !1501, inlinedAt: !2309)
!2311 = !DILocation(line: 93, column: 16, scope: !1512, inlinedAt: !2309)
!2312 = !DILocation(line: 93, column: 7, scope: !1501, inlinedAt: !2309)
!2313 = !DILocation(line: 98, column: 3, scope: !1501, inlinedAt: !2309)
!2314 = !DILocation(line: 99, column: 3, scope: !1501, inlinedAt: !2309)
!2315 = !DILocation(line: 101, column: 20, scope: !1501, inlinedAt: !2309)
!2316 = !DILocation(line: 101, column: 10, scope: !1501, inlinedAt: !2309)
!2317 = !DILocation(line: 101, column: 3, scope: !1501, inlinedAt: !2309)
!2318 = !DILocation(line: 366, column: 26, scope: !2078)
!2319 = !DILocation(line: 366, column: 67, scope: !2078)
!2320 = !DILocation(line: 366, column: 60, scope: !2078)
!2321 = !DILocation(line: 366, column: 7, scope: !2078)
!2322 = !DILocation(line: 370, column: 12, scope: !2103)
!2323 = !DILocation(line: 370, column: 24, scope: !2103)
!2324 = !DILocation(line: 370, column: 53, scope: !2103)
!2325 = !DILocation(line: 369, column: 7, scope: !2066)
!2326 = !DILocation(line: 372, column: 20, scope: !2102)
!2327 = !DILocation(line: 0, scope: !2102)
!2328 = !DILocation(line: 373, column: 11, scope: !2102)
!2329 = !DILocation(line: 377, column: 7, scope: !2106)
!2330 = !DILocation(line: 377, column: 7, scope: !2066)
!2331 = !DILocation(line: 379, column: 21, scope: !2105)
!2332 = !DILocation(line: 0, scope: !2105)
!2333 = !DILocation(line: 380, column: 11, scope: !2105)
!2334 = !DILocation(line: 385, column: 3, scope: !2066)
!2335 = !DILocation(line: 386, column: 1, scope: !2066)
!2336 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 133, type: !125, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DILocalVariable(name: "string", arg: 1, scope: !2336, file: !3, line: 133, type: !37)
!2339 = !DILocalVariable(name: "p", scope: !2336, file: !3, line: 135, type: !37)
!2340 = !DILocalVariable(name: "number_start", scope: !2336, file: !3, line: 136, type: !37)
!2341 = !DILocation(line: 0, scope: !2336)
!2342 = !DILocation(line: 0, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 138, column: 3)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 138, column: 3)
!2345 = !DILocation(line: 138, column: 8, scope: !2344)
!2346 = !DILocation(line: 0, scope: !2344)
!2347 = !DILocation(line: 138, column: 20, scope: !2343)
!2348 = !{!2349, !2349, i64 0}
!2349 = !{!"short", !1071, i64 0}
!2350 = !DILocation(line: 138, column: 3, scope: !2344)
!2351 = !DILocation(line: 138, column: 46, scope: !2343)
!2352 = distinct !{!2352, !2350, !2353}
!2353 = !DILocation(line: 139, column: 5, scope: !2344)
!2354 = !DILocation(line: 141, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 141, column: 7)
!2356 = !DILocation(line: 141, column: 7, scope: !2336)
!2357 = !DILocation(line: 152, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 152, column: 7)
!2359 = !DILocation(line: 152, column: 7, scope: !2336)
!2360 = !DILocation(line: 0, scope: !2358)
!2361 = !DILocation(line: 154, column: 14, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 153, column: 5)
!2363 = !DILocation(line: 154, column: 7, scope: !2362)
!2364 = distinct !{!2364, !2363, !2365}
!2365 = !DILocation(line: 155, column: 10, scope: !2362)
!2366 = !DILocation(line: 156, column: 14, scope: !2362)
!2367 = !DILocation(line: 156, column: 7, scope: !2362)
!2368 = !DILocation(line: 157, column: 10, scope: !2362)
!2369 = distinct !{!2369, !2367, !2368}
!2370 = !DILocation(line: 158, column: 12, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 158, column: 11)
!2372 = !DILocation(line: 158, column: 11, scope: !2362)
!2373 = !DILocation(line: 159, column: 9, scope: !2371)
!2374 = !DILocation(line: 162, column: 22, scope: !2336)
!2375 = !DILocation(line: 162, column: 47, scope: !2336)
!2376 = !DILocation(line: 162, column: 3, scope: !2336)
!2377 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !169, file: !169, line: 51, type: !104, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2378)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "file", arg: 1, scope: !2377, file: !169, line: 51, type: !37)
!2380 = !DILocation(line: 0, scope: !2377)
!2381 = !DILocation(line: 53, column: 13, scope: !2377)
!2382 = !DILocation(line: 54, column: 1, scope: !2377)
!2383 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !169, file: !169, line: 88, type: !1189, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2384)
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "ignore", arg: 1, scope: !2383, file: !169, line: 88, type: !216)
!2386 = !DILocation(line: 0, scope: !2383)
!2387 = !DILocation(line: 90, column: 16, scope: !2383)
!2388 = !{!2389, !2389, i64 0}
!2389 = !{!"_Bool", !1071, i64 0}
!2390 = !DILocation(line: 91, column: 1, scope: !2383)
!2391 = distinct !DISubprogram(name: "close_stdout", scope: !169, file: !169, line: 117, type: !121, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "write_error", scope: !2394, file: !169, line: 122, type: !37)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !169, line: 121, column: 5)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !169, line: 119, column: 7)
!2396 = !DILocation(line: 119, column: 21, scope: !2395)
!2397 = !DILocation(line: 119, column: 7, scope: !2395)
!2398 = !DILocation(line: 119, column: 29, scope: !2395)
!2399 = !DILocation(line: 120, column: 7, scope: !2395)
!2400 = !DILocation(line: 120, column: 12, scope: !2395)
!2401 = !{i8 0, i8 2}
!2402 = !DILocation(line: 120, column: 25, scope: !2395)
!2403 = !DILocation(line: 120, column: 28, scope: !2395)
!2404 = !DILocation(line: 120, column: 34, scope: !2395)
!2405 = !DILocation(line: 119, column: 7, scope: !2391)
!2406 = !DILocation(line: 122, column: 33, scope: !2394)
!2407 = !DILocation(line: 0, scope: !2394)
!2408 = !DILocation(line: 123, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2394, file: !169, line: 123, column: 11)
!2410 = !DILocation(line: 0, scope: !2409)
!2411 = !DILocation(line: 123, column: 11, scope: !2394)
!2412 = !DILocation(line: 124, column: 36, scope: !2409)
!2413 = !DILocation(line: 124, column: 9, scope: !2409)
!2414 = !DILocation(line: 127, column: 9, scope: !2409)
!2415 = !DILocation(line: 129, column: 14, scope: !2394)
!2416 = !DILocation(line: 129, column: 7, scope: !2394)
!2417 = !DILocation(line: 134, column: 42, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2391, file: !169, line: 134, column: 7)
!2419 = !DILocation(line: 134, column: 28, scope: !2418)
!2420 = !DILocation(line: 134, column: 50, scope: !2418)
!2421 = !DILocation(line: 134, column: 7, scope: !2391)
!2422 = !DILocation(line: 135, column: 12, scope: !2418)
!2423 = !DILocation(line: 135, column: 5, scope: !2418)
!2424 = !DILocation(line: 136, column: 1, scope: !2391)
!2425 = distinct !DISubprogram(name: "umaxtostr", scope: !2426, file: !2426, line: 36, type: !2427, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !2429)
!2426 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!35, !391, !35}
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "i", arg: 1, scope: !2425, file: !2426, line: 36, type: !391)
!2431 = !DILocalVariable(name: "buf", arg: 2, scope: !2425, file: !2426, line: 36, type: !35)
!2432 = !DILocalVariable(name: "p", scope: !2425, file: !2426, line: 38, type: !35)
!2433 = !DILocation(line: 0, scope: !2425)
!2434 = !DILocation(line: 38, column: 17, scope: !2425)
!2435 = !DILocation(line: 39, column: 6, scope: !2425)
!2436 = !DILocation(line: 41, column: 7, scope: !2425)
!2437 = !DILocation(line: 52, column: 24, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !2426, line: 50, column: 5)
!2439 = distinct !DILexicalBlock(scope: !2425, file: !2426, line: 41, column: 7)
!2440 = !DILocation(line: 52, column: 16, scope: !2438)
!2441 = !DILocation(line: 52, column: 10, scope: !2438)
!2442 = !DILocation(line: 52, column: 14, scope: !2438)
!2443 = !DILocation(line: 53, column: 17, scope: !2438)
!2444 = !DILocation(line: 53, column: 24, scope: !2438)
!2445 = !DILocation(line: 52, column: 9, scope: !2438)
!2446 = distinct !{!2446, !2447, !2448}
!2447 = !DILocation(line: 51, column: 7, scope: !2438)
!2448 = !DILocation(line: 53, column: 28, scope: !2438)
!2449 = !DILocation(line: 56, column: 3, scope: !2425)
!2450 = distinct !DISubprogram(name: "set_program_name", scope: !226, file: !226, line: 39, type: !104, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DILocalVariable(name: "argv0", arg: 1, scope: !2450, file: !226, line: 39, type: !37)
!2453 = !DILocalVariable(name: "slash", scope: !2450, file: !226, line: 46, type: !37)
!2454 = !DILocalVariable(name: "base", scope: !2450, file: !226, line: 47, type: !37)
!2455 = !DILocation(line: 0, scope: !2450)
!2456 = !DILocation(line: 51, column: 13, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !226, line: 51, column: 7)
!2458 = !DILocation(line: 51, column: 7, scope: !2450)
!2459 = !DILocation(line: 55, column: 14, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !226, line: 52, column: 5)
!2461 = !DILocation(line: 54, column: 7, scope: !2460)
!2462 = !DILocation(line: 56, column: 7, scope: !2460)
!2463 = !DILocation(line: 59, column: 11, scope: !2450)
!2464 = !DILocation(line: 60, column: 17, scope: !2450)
!2465 = !DILocation(line: 60, column: 11, scope: !2450)
!2466 = !DILocation(line: 61, column: 12, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2450, file: !226, line: 61, column: 7)
!2468 = !DILocation(line: 61, column: 20, scope: !2467)
!2469 = !DILocation(line: 61, column: 25, scope: !2467)
!2470 = !DILocation(line: 61, column: 42, scope: !2467)
!2471 = !DILocation(line: 61, column: 28, scope: !2467)
!2472 = !DILocation(line: 61, column: 61, scope: !2467)
!2473 = !DILocation(line: 61, column: 7, scope: !2450)
!2474 = !DILocation(line: 64, column: 11, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !226, line: 64, column: 11)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !226, line: 62, column: 5)
!2477 = !DILocation(line: 64, column: 36, scope: !2475)
!2478 = !DILocation(line: 64, column: 11, scope: !2476)
!2479 = !DILocation(line: 66, column: 24, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !226, line: 65, column: 9)
!2481 = !DILocation(line: 70, column: 41, scope: !2480)
!2482 = !DILocation(line: 72, column: 9, scope: !2480)
!2483 = !DILocation(line: 84, column: 16, scope: !2450)
!2484 = !DILocation(line: 90, column: 27, scope: !2450)
!2485 = !DILocation(line: 92, column: 1, scope: !2450)
!2486 = distinct !DISubprogram(name: "clone_quoting_options", scope: !267, file: !267, line: 122, type: !2487, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2490)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2489, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2490 = !{!2491, !2492, !2493}
!2491 = !DILocalVariable(name: "o", arg: 1, scope: !2486, file: !267, line: 122, type: !2489)
!2492 = !DILocalVariable(name: "e", scope: !2486, file: !267, line: 124, type: !39)
!2493 = !DILocalVariable(name: "p", scope: !2486, file: !267, line: 125, type: !2489)
!2494 = !DILocation(line: 0, scope: !2486)
!2495 = !DILocation(line: 124, column: 11, scope: !2486)
!2496 = !DILocation(line: 125, column: 40, scope: !2486)
!2497 = !DILocation(line: 125, column: 31, scope: !2486)
!2498 = !DILocation(line: 127, column: 9, scope: !2486)
!2499 = !DILocation(line: 128, column: 3, scope: !2486)
!2500 = distinct !DISubprogram(name: "get_quoting_style", scope: !267, file: !267, line: 133, type: !2501, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!269, !298}
!2503 = !{!2504}
!2504 = !DILocalVariable(name: "o", arg: 1, scope: !2500, file: !267, line: 133, type: !298)
!2505 = !DILocation(line: 0, scope: !2500)
!2506 = !DILocation(line: 135, column: 11, scope: !2500)
!2507 = !DILocation(line: 135, column: 46, scope: !2500)
!2508 = !{!2509, !1071, i64 0}
!2509 = !{!"quoting_options", !1071, i64 0, !1142, i64 4, !1071, i64 8, !1070, i64 40, !1070, i64 48}
!2510 = !DILocation(line: 135, column: 3, scope: !2500)
!2511 = distinct !DISubprogram(name: "set_quoting_style", scope: !267, file: !267, line: 141, type: !2512, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2489, !269}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "o", arg: 1, scope: !2511, file: !267, line: 141, type: !2489)
!2516 = !DILocalVariable(name: "s", arg: 2, scope: !2511, file: !267, line: 141, type: !269)
!2517 = !DILocation(line: 0, scope: !2511)
!2518 = !DILocation(line: 143, column: 4, scope: !2511)
!2519 = !DILocation(line: 143, column: 39, scope: !2511)
!2520 = !DILocation(line: 143, column: 45, scope: !2511)
!2521 = !DILocation(line: 144, column: 1, scope: !2511)
!2522 = distinct !DISubprogram(name: "set_char_quoting", scope: !267, file: !267, line: 152, type: !2523, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!39, !2489, !36, !39}
!2525 = !{!2526, !2527, !2528, !2529, !2531, !2533, !2534}
!2526 = !DILocalVariable(name: "o", arg: 1, scope: !2522, file: !267, line: 152, type: !2489)
!2527 = !DILocalVariable(name: "c", arg: 2, scope: !2522, file: !267, line: 152, type: !36)
!2528 = !DILocalVariable(name: "i", arg: 3, scope: !2522, file: !267, line: 152, type: !39)
!2529 = !DILocalVariable(name: "uc", scope: !2522, file: !267, line: 154, type: !2530)
!2530 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2531 = !DILocalVariable(name: "p", scope: !2522, file: !267, line: 155, type: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2533 = !DILocalVariable(name: "shift", scope: !2522, file: !267, line: 157, type: !39)
!2534 = !DILocalVariable(name: "r", scope: !2522, file: !267, line: 158, type: !39)
!2535 = !DILocation(line: 0, scope: !2522)
!2536 = !DILocation(line: 156, column: 6, scope: !2522)
!2537 = !DILocation(line: 156, column: 62, scope: !2522)
!2538 = !DILocation(line: 156, column: 57, scope: !2522)
!2539 = !DILocation(line: 157, column: 15, scope: !2522)
!2540 = !DILocation(line: 158, column: 12, scope: !2522)
!2541 = !DILocation(line: 158, column: 15, scope: !2522)
!2542 = !DILocation(line: 158, column: 25, scope: !2522)
!2543 = !DILocation(line: 159, column: 13, scope: !2522)
!2544 = !DILocation(line: 159, column: 18, scope: !2522)
!2545 = !DILocation(line: 159, column: 23, scope: !2522)
!2546 = !DILocation(line: 159, column: 6, scope: !2522)
!2547 = !DILocation(line: 160, column: 3, scope: !2522)
!2548 = distinct !DISubprogram(name: "set_quoting_flags", scope: !267, file: !267, line: 168, type: !2549, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!39, !2489, !39}
!2551 = !{!2552, !2553, !2554}
!2552 = !DILocalVariable(name: "o", arg: 1, scope: !2548, file: !267, line: 168, type: !2489)
!2553 = !DILocalVariable(name: "i", arg: 2, scope: !2548, file: !267, line: 168, type: !39)
!2554 = !DILocalVariable(name: "r", scope: !2548, file: !267, line: 170, type: !39)
!2555 = !DILocation(line: 0, scope: !2548)
!2556 = !DILocation(line: 171, column: 8, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2548, file: !267, line: 171, column: 7)
!2558 = !DILocation(line: 171, column: 7, scope: !2548)
!2559 = !DILocation(line: 173, column: 10, scope: !2548)
!2560 = !{!2509, !1142, i64 4}
!2561 = !DILocation(line: 174, column: 12, scope: !2548)
!2562 = !DILocation(line: 175, column: 3, scope: !2548)
!2563 = distinct !DISubprogram(name: "set_custom_quoting", scope: !267, file: !267, line: 179, type: !2564, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{null, !2489, !37, !37}
!2566 = !{!2567, !2568, !2569}
!2567 = !DILocalVariable(name: "o", arg: 1, scope: !2563, file: !267, line: 179, type: !2489)
!2568 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2563, file: !267, line: 180, type: !37)
!2569 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2563, file: !267, line: 180, type: !37)
!2570 = !DILocation(line: 0, scope: !2563)
!2571 = !DILocation(line: 182, column: 8, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2563, file: !267, line: 182, column: 7)
!2573 = !DILocation(line: 182, column: 7, scope: !2563)
!2574 = !DILocation(line: 184, column: 6, scope: !2563)
!2575 = !DILocation(line: 184, column: 12, scope: !2563)
!2576 = !DILocation(line: 185, column: 8, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2563, file: !267, line: 185, column: 7)
!2578 = !DILocation(line: 185, column: 23, scope: !2577)
!2579 = !DILocation(line: 185, column: 19, scope: !2577)
!2580 = !DILocation(line: 186, column: 5, scope: !2577)
!2581 = !DILocation(line: 187, column: 6, scope: !2563)
!2582 = !DILocation(line: 187, column: 17, scope: !2563)
!2583 = !{!2509, !1070, i64 40}
!2584 = !DILocation(line: 188, column: 6, scope: !2563)
!2585 = !DILocation(line: 188, column: 18, scope: !2563)
!2586 = !{!2509, !1070, i64 48}
!2587 = !DILocation(line: 189, column: 1, scope: !2563)
!2588 = distinct !DISubprogram(name: "quotearg_buffer", scope: !267, file: !267, line: 784, type: !2589, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!94, !35, !94, !37, !94, !298}
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599}
!2592 = !DILocalVariable(name: "buffer", arg: 1, scope: !2588, file: !267, line: 784, type: !35)
!2593 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2588, file: !267, line: 784, type: !94)
!2594 = !DILocalVariable(name: "arg", arg: 3, scope: !2588, file: !267, line: 785, type: !37)
!2595 = !DILocalVariable(name: "argsize", arg: 4, scope: !2588, file: !267, line: 785, type: !94)
!2596 = !DILocalVariable(name: "o", arg: 5, scope: !2588, file: !267, line: 786, type: !298)
!2597 = !DILocalVariable(name: "p", scope: !2588, file: !267, line: 788, type: !298)
!2598 = !DILocalVariable(name: "e", scope: !2588, file: !267, line: 789, type: !39)
!2599 = !DILocalVariable(name: "r", scope: !2588, file: !267, line: 790, type: !94)
!2600 = !DILocation(line: 0, scope: !2588)
!2601 = !DILocation(line: 788, column: 37, scope: !2588)
!2602 = !DILocation(line: 789, column: 11, scope: !2588)
!2603 = !DILocation(line: 791, column: 43, scope: !2588)
!2604 = !DILocation(line: 791, column: 53, scope: !2588)
!2605 = !DILocation(line: 791, column: 60, scope: !2588)
!2606 = !DILocation(line: 792, column: 43, scope: !2588)
!2607 = !DILocation(line: 792, column: 58, scope: !2588)
!2608 = !DILocation(line: 790, column: 14, scope: !2588)
!2609 = !DILocation(line: 793, column: 9, scope: !2588)
!2610 = !DILocation(line: 794, column: 3, scope: !2588)
!2611 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !267, file: !267, line: 256, type: !2612, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2616)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!94, !35, !94, !37, !94, !269, !39, !2614, !37, !37}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2641, !2642, !2643, !2644, !2645, !2648, !2649, !2655, !2658, !2659, !2666, !2669, !2670, !2671, !2672, !2673, !2674}
!2617 = !DILocalVariable(name: "buffer", arg: 1, scope: !2611, file: !267, line: 256, type: !35)
!2618 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2611, file: !267, line: 256, type: !94)
!2619 = !DILocalVariable(name: "arg", arg: 3, scope: !2611, file: !267, line: 257, type: !37)
!2620 = !DILocalVariable(name: "argsize", arg: 4, scope: !2611, file: !267, line: 257, type: !94)
!2621 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2611, file: !267, line: 258, type: !269)
!2622 = !DILocalVariable(name: "flags", arg: 6, scope: !2611, file: !267, line: 258, type: !39)
!2623 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2611, file: !267, line: 259, type: !2614)
!2624 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2611, file: !267, line: 260, type: !37)
!2625 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2611, file: !267, line: 261, type: !37)
!2626 = !DILocalVariable(name: "i", scope: !2611, file: !267, line: 263, type: !94)
!2627 = !DILocalVariable(name: "len", scope: !2611, file: !267, line: 264, type: !94)
!2628 = !DILocalVariable(name: "orig_buffersize", scope: !2611, file: !267, line: 265, type: !94)
!2629 = !DILocalVariable(name: "quote_string", scope: !2611, file: !267, line: 266, type: !37)
!2630 = !DILocalVariable(name: "quote_string_len", scope: !2611, file: !267, line: 267, type: !94)
!2631 = !DILocalVariable(name: "backslash_escapes", scope: !2611, file: !267, line: 268, type: !216)
!2632 = !DILocalVariable(name: "unibyte_locale", scope: !2611, file: !267, line: 269, type: !216)
!2633 = !DILocalVariable(name: "elide_outer_quotes", scope: !2611, file: !267, line: 270, type: !216)
!2634 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2611, file: !267, line: 271, type: !216)
!2635 = !DILocalVariable(name: "encountered_single_quote", scope: !2611, file: !267, line: 272, type: !216)
!2636 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2611, file: !267, line: 273, type: !216)
!2637 = !DILocalVariable(name: "c", scope: !2638, file: !267, line: 402, type: !2530)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !267, line: 401, column: 5)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !267, line: 400, column: 3)
!2640 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 400, column: 3)
!2641 = !DILocalVariable(name: "esc", scope: !2638, file: !267, line: 403, type: !2530)
!2642 = !DILocalVariable(name: "is_right_quote", scope: !2638, file: !267, line: 404, type: !216)
!2643 = !DILocalVariable(name: "escaping", scope: !2638, file: !267, line: 405, type: !216)
!2644 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2638, file: !267, line: 406, type: !216)
!2645 = !DILocalVariable(name: "m", scope: !2646, file: !267, line: 610, type: !94)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 608, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 426, column: 9)
!2648 = !DILocalVariable(name: "printable", scope: !2646, file: !267, line: 612, type: !216)
!2649 = !DILocalVariable(name: "mbstate", scope: !2650, file: !267, line: 621, type: !2652)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !267, line: 620, column: 15)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !267, line: 614, column: 17)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2653, line: 6, baseType: !2654)
!2653 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !323, line: 21, baseType: !322)
!2655 = !DILocalVariable(name: "w", scope: !2656, file: !267, line: 631, type: !2657)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !267, line: 630, column: 19)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !39)
!2658 = !DILocalVariable(name: "bytes", scope: !2656, file: !267, line: 632, type: !94)
!2659 = !DILocalVariable(name: "j", scope: !2660, file: !267, line: 657, type: !94)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !267, line: 656, column: 27)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !267, line: 654, column: 29)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !267, line: 649, column: 23)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !267, line: 641, column: 30)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !267, line: 636, column: 30)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !267, line: 634, column: 25)
!2666 = !DILocalVariable(name: "ilim", scope: !2667, file: !267, line: 684, type: !94)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !267, line: 681, column: 15)
!2668 = distinct !DILexicalBlock(scope: !2646, file: !267, line: 680, column: 17)
!2669 = !DILabel(scope: !2611, name: "process_input", file: !267, line: 314)
!2670 = !DILabel(scope: !2647, name: "c_and_shell_escape", file: !267, line: 512)
!2671 = !DILabel(scope: !2647, name: "c_escape", file: !267, line: 517)
!2672 = !DILabel(scope: !2638, name: "store_escape", file: !267, line: 719)
!2673 = !DILabel(scope: !2638, name: "store_c", file: !267, line: 722)
!2674 = !DILabel(scope: !2611, name: "force_outer_quoting_style", file: !267, line: 763)
!2675 = !DILocation(line: 0, scope: !2611)
!2676 = !DILocation(line: 269, column: 25, scope: !2611)
!2677 = !DILocation(line: 269, column: 36, scope: !2611)
!2678 = !DILocation(line: 270, column: 8, scope: !2611)
!2679 = !DILocation(line: 0, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 526, column: 15)
!2681 = !DILocation(line: 0, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !267, line: 462, column: 19)
!2683 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 455, column: 13)
!2684 = !DILocation(line: 0, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !267, line: 449, column: 20)
!2686 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 428, column: 15)
!2687 = !DILocation(line: 0, scope: !2650)
!2688 = !DILocation(line: 0, scope: !2656)
!2689 = !DILocation(line: 0, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 712, column: 11)
!2691 = !DILocation(line: 273, column: 3, scope: !2611)
!2692 = !DILocation(line: 265, column: 10, scope: !2611)
!2693 = !DILocation(line: 266, column: 15, scope: !2611)
!2694 = !DILocation(line: 267, column: 10, scope: !2611)
!2695 = !DILocation(line: 268, column: 8, scope: !2611)
!2696 = !DILocation(line: 271, column: 8, scope: !2611)
!2697 = !DILocation(line: 272, column: 8, scope: !2611)
!2698 = !DILocation(line: 273, column: 8, scope: !2611)
!2699 = !DILocation(line: 314, column: 2, scope: !2611)
!2700 = !DILocation(line: 316, column: 3, scope: !2611)
!2701 = !DILocation(line: 323, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 317, column: 5)
!2703 = !DILocation(line: 323, column: 12, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2702, file: !267, line: 323, column: 11)
!2705 = !DILocation(line: 324, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !267, line: 324, column: 9)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !267, line: 324, column: 9)
!2708 = !DILocation(line: 324, column: 9, scope: !2707)
!2709 = !DILocation(line: 362, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !267, line: 340, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !267, line: 339, column: 13)
!2712 = distinct !DILexicalBlock(scope: !2702, file: !267, line: 338, column: 7)
!2713 = !DILocation(line: 363, column: 27, scope: !2710)
!2714 = !DILocation(line: 364, column: 11, scope: !2710)
!2715 = !DILocation(line: 365, column: 14, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !267, line: 365, column: 13)
!2717 = !DILocation(line: 365, column: 13, scope: !2712)
!2718 = !DILocation(line: 366, column: 43, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !267, line: 366, column: 11)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !267, line: 366, column: 11)
!2721 = !DILocation(line: 366, column: 11, scope: !2720)
!2722 = !DILocation(line: 367, column: 13, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !267, line: 367, column: 13)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !267, line: 367, column: 13)
!2725 = !DILocation(line: 367, column: 13, scope: !2724)
!2726 = !DILocation(line: 366, column: 70, scope: !2719)
!2727 = distinct !{!2727, !2721, !2728}
!2728 = !DILocation(line: 367, column: 13, scope: !2720)
!2729 = !DILocation(line: 264, column: 10, scope: !2611)
!2730 = !DILocation(line: 370, column: 28, scope: !2712)
!2731 = !DILocation(line: 372, column: 7, scope: !2702)
!2732 = !DILocation(line: 376, column: 7, scope: !2702)
!2733 = !DILocation(line: 379, column: 7, scope: !2702)
!2734 = !DILocation(line: 381, column: 12, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2702, file: !267, line: 381, column: 11)
!2736 = !DILocation(line: 381, column: 11, scope: !2702)
!2737 = !DILocation(line: 386, column: 12, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2702, file: !267, line: 386, column: 11)
!2739 = !DILocation(line: 386, column: 11, scope: !2702)
!2740 = !DILocation(line: 387, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !267, line: 387, column: 9)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !267, line: 387, column: 9)
!2743 = !DILocation(line: 387, column: 9, scope: !2742)
!2744 = !DILocation(line: 394, column: 7, scope: !2702)
!2745 = !DILocation(line: 397, column: 7, scope: !2702)
!2746 = !DILocation(line: 0, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 408, column: 11)
!2748 = !DILocation(line: 0, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !267, line: 419, column: 15)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !267, line: 418, column: 9)
!2751 = !DILocation(line: 0, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 556, column: 15)
!2753 = !DILocation(line: 0, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 548, column: 15)
!2755 = !DILocation(line: 0, scope: !2661)
!2756 = !DILocation(line: 0, scope: !2668)
!2757 = !DILocation(line: 0, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 509, column: 15)
!2759 = !DILocation(line: 400, column: 8, scope: !2640)
!2760 = !DILocation(line: 0, scope: !2640)
!2761 = !DILocation(line: 400, column: 27, scope: !2639)
!2762 = !DILocation(line: 400, column: 19, scope: !2639)
!2763 = !DILocation(line: 400, column: 41, scope: !2639)
!2764 = !DILocation(line: 400, column: 48, scope: !2639)
!2765 = !DILocation(line: 400, column: 3, scope: !2640)
!2766 = !DILocation(line: 400, column: 60, scope: !2639)
!2767 = !DILocation(line: 0, scope: !2638)
!2768 = !DILocation(line: 409, column: 11, scope: !2747)
!2769 = !DILocation(line: 411, column: 17, scope: !2747)
!2770 = !DILocation(line: 412, column: 39, scope: !2747)
!2771 = !DILocation(line: 416, column: 32, scope: !2747)
!2772 = !DILocation(line: 412, column: 19, scope: !2747)
!2773 = !DILocation(line: 412, column: 15, scope: !2747)
!2774 = !DILocation(line: 417, column: 11, scope: !2747)
!2775 = !DILocation(line: 417, column: 26, scope: !2747)
!2776 = !DILocation(line: 417, column: 14, scope: !2747)
!2777 = !DILocation(line: 417, column: 63, scope: !2747)
!2778 = !DILocation(line: 408, column: 11, scope: !2638)
!2779 = !DILocation(line: 424, column: 11, scope: !2638)
!2780 = !DILocation(line: 425, column: 7, scope: !2638)
!2781 = !DILocation(line: 428, column: 15, scope: !2647)
!2782 = !DILocation(line: 430, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !267, line: 430, column: 15)
!2784 = distinct !DILexicalBlock(scope: !2686, file: !267, line: 429, column: 13)
!2785 = !DILocation(line: 430, column: 15, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !267, line: 430, column: 15)
!2787 = !DILocation(line: 430, column: 15, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !267, line: 430, column: 15)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !267, line: 430, column: 15)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !267, line: 430, column: 15)
!2791 = !DILocation(line: 430, column: 15, scope: !2789)
!2792 = !DILocation(line: 430, column: 15, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !267, line: 430, column: 15)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !267, line: 430, column: 15)
!2795 = !DILocation(line: 430, column: 15, scope: !2794)
!2796 = !DILocation(line: 430, column: 15, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !267, line: 430, column: 15)
!2798 = distinct !DILexicalBlock(scope: !2790, file: !267, line: 430, column: 15)
!2799 = !DILocation(line: 430, column: 15, scope: !2798)
!2800 = !DILocation(line: 430, column: 15, scope: !2790)
!2801 = !DILocation(line: 430, column: 15, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !267, line: 430, column: 15)
!2803 = distinct !DILexicalBlock(scope: !2783, file: !267, line: 430, column: 15)
!2804 = !DILocation(line: 430, column: 15, scope: !2803)
!2805 = !DILocation(line: 438, column: 19, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2784, file: !267, line: 437, column: 19)
!2807 = !DILocation(line: 438, column: 24, scope: !2806)
!2808 = !DILocation(line: 438, column: 28, scope: !2806)
!2809 = !DILocation(line: 438, column: 38, scope: !2806)
!2810 = !DILocation(line: 438, column: 48, scope: !2806)
!2811 = !DILocation(line: 438, column: 59, scope: !2806)
!2812 = !DILocation(line: 440, column: 19, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !267, line: 440, column: 19)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !267, line: 440, column: 19)
!2815 = distinct !DILexicalBlock(scope: !2806, file: !267, line: 439, column: 17)
!2816 = !DILocation(line: 440, column: 19, scope: !2814)
!2817 = !DILocation(line: 441, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !267, line: 441, column: 19)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !267, line: 441, column: 19)
!2820 = !DILocation(line: 441, column: 19, scope: !2819)
!2821 = !DILocation(line: 442, column: 17, scope: !2815)
!2822 = !DILocation(line: 449, column: 20, scope: !2686)
!2823 = !DILocation(line: 454, column: 11, scope: !2647)
!2824 = !DILocation(line: 457, column: 19, scope: !2683)
!2825 = !DILocation(line: 463, column: 19, scope: !2682)
!2826 = !DILocation(line: 463, column: 24, scope: !2682)
!2827 = !DILocation(line: 463, column: 28, scope: !2682)
!2828 = !DILocation(line: 463, column: 38, scope: !2682)
!2829 = !DILocation(line: 463, column: 47, scope: !2682)
!2830 = !DILocation(line: 463, column: 41, scope: !2682)
!2831 = !DILocation(line: 463, column: 52, scope: !2682)
!2832 = !DILocation(line: 462, column: 19, scope: !2683)
!2833 = !DILocation(line: 464, column: 25, scope: !2682)
!2834 = !DILocation(line: 464, column: 17, scope: !2682)
!2835 = !DILocation(line: 471, column: 25, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2682, file: !267, line: 465, column: 19)
!2837 = !DILocation(line: 475, column: 21, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !267, line: 475, column: 21)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !267, line: 475, column: 21)
!2840 = !DILocation(line: 475, column: 21, scope: !2839)
!2841 = !DILocation(line: 476, column: 21, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !267, line: 476, column: 21)
!2843 = distinct !DILexicalBlock(scope: !2836, file: !267, line: 476, column: 21)
!2844 = !DILocation(line: 476, column: 21, scope: !2843)
!2845 = !DILocation(line: 477, column: 21, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !267, line: 477, column: 21)
!2847 = distinct !DILexicalBlock(scope: !2836, file: !267, line: 477, column: 21)
!2848 = !DILocation(line: 477, column: 21, scope: !2847)
!2849 = !DILocation(line: 478, column: 21, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !267, line: 478, column: 21)
!2851 = distinct !DILexicalBlock(scope: !2836, file: !267, line: 478, column: 21)
!2852 = !DILocation(line: 478, column: 21, scope: !2851)
!2853 = !DILocation(line: 479, column: 21, scope: !2836)
!2854 = !DILocation(line: 492, column: 31, scope: !2647)
!2855 = !DILocation(line: 493, column: 31, scope: !2647)
!2856 = !DILocation(line: 495, column: 31, scope: !2647)
!2857 = !DILocation(line: 496, column: 31, scope: !2647)
!2858 = !DILocation(line: 497, column: 31, scope: !2647)
!2859 = !DILocation(line: 500, column: 15, scope: !2647)
!2860 = !DILocation(line: 502, column: 19, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !267, line: 501, column: 13)
!2862 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 500, column: 15)
!2863 = !DILocation(line: 509, column: 33, scope: !2758)
!2864 = !DILocation(line: 0, scope: !2647)
!2865 = !DILocation(line: 512, column: 9, scope: !2647)
!2866 = !DILocation(line: 514, column: 15, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 513, column: 15)
!2868 = !DILocation(line: 517, column: 9, scope: !2647)
!2869 = !DILocation(line: 518, column: 15, scope: !2647)
!2870 = !DILocation(line: 526, column: 15, scope: !2647)
!2871 = !DILocation(line: 526, column: 40, scope: !2680)
!2872 = !DILocation(line: 526, column: 47, scope: !2680)
!2873 = !DILocation(line: 526, column: 18, scope: !2680)
!2874 = !DILocation(line: 530, column: 17, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2647, file: !267, line: 530, column: 15)
!2876 = !DILocation(line: 530, column: 15, scope: !2647)
!2877 = !DILocation(line: 535, column: 11, scope: !2647)
!2878 = !DILocation(line: 549, column: 15, scope: !2754)
!2879 = !DILocation(line: 556, column: 15, scope: !2647)
!2880 = !DILocation(line: 558, column: 19, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2752, file: !267, line: 557, column: 13)
!2882 = !DILocation(line: 561, column: 19, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2881, file: !267, line: 561, column: 19)
!2884 = !DILocation(line: 561, column: 35, scope: !2883)
!2885 = !DILocation(line: 561, column: 30, scope: !2883)
!2886 = !DILocation(line: 570, column: 15, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !267, line: 570, column: 15)
!2888 = distinct !DILexicalBlock(scope: !2881, file: !267, line: 570, column: 15)
!2889 = !DILocation(line: 570, column: 15, scope: !2888)
!2890 = !DILocation(line: 571, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !267, line: 571, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !267, line: 571, column: 15)
!2893 = !DILocation(line: 571, column: 15, scope: !2892)
!2894 = !DILocation(line: 572, column: 15, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !267, line: 572, column: 15)
!2896 = distinct !DILexicalBlock(scope: !2881, file: !267, line: 572, column: 15)
!2897 = !DILocation(line: 572, column: 15, scope: !2896)
!2898 = !DILocation(line: 574, column: 13, scope: !2881)
!2899 = !DILocation(line: 614, column: 17, scope: !2646)
!2900 = !DILocation(line: 0, scope: !2646)
!2901 = !DILocation(line: 617, column: 29, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2651, file: !267, line: 615, column: 15)
!2903 = !DILocation(line: 617, column: 27, scope: !2902)
!2904 = !DILocation(line: 618, column: 15, scope: !2902)
!2905 = !DILocation(line: 621, column: 17, scope: !2650)
!2906 = !DILocation(line: 621, column: 27, scope: !2650)
!2907 = !DILocalVariable(name: "__dest", arg: 1, scope: !2908, file: !2909, line: 59, type: !92)
!2908 = distinct !DISubprogram(name: "memset", scope: !2909, file: !2909, line: 59, type: !2910, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !2912)
!2909 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!92, !92, !39, !94}
!2912 = !{!2907, !2913, !2914}
!2913 = !DILocalVariable(name: "__ch", arg: 2, scope: !2908, file: !2909, line: 59, type: !39)
!2914 = !DILocalVariable(name: "__len", arg: 3, scope: !2908, file: !2909, line: 59, type: !94)
!2915 = !DILocation(line: 0, scope: !2908, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 622, column: 17, scope: !2650)
!2917 = !DILocation(line: 71, column: 10, scope: !2908, inlinedAt: !2916)
!2918 = !DILocation(line: 626, column: 29, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2650, file: !267, line: 626, column: 21)
!2920 = !DILocation(line: 626, column: 21, scope: !2650)
!2921 = !DILocation(line: 627, column: 29, scope: !2919)
!2922 = !DILocation(line: 627, column: 19, scope: !2919)
!2923 = !DILocation(line: 629, column: 17, scope: !2650)
!2924 = !DILocation(line: 624, column: 19, scope: !2650)
!2925 = !DILocation(line: 625, column: 27, scope: !2650)
!2926 = !DILocation(line: 631, column: 21, scope: !2656)
!2927 = !DILocation(line: 632, column: 56, scope: !2656)
!2928 = !DILocation(line: 632, column: 50, scope: !2656)
!2929 = !DILocation(line: 633, column: 53, scope: !2656)
!2930 = !DILocation(line: 632, column: 36, scope: !2656)
!2931 = !DILocation(line: 634, column: 25, scope: !2656)
!2932 = !DILocation(line: 644, column: 38, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2663, file: !267, line: 642, column: 23)
!2934 = !DILocation(line: 644, column: 48, scope: !2933)
!2935 = !DILocation(line: 644, column: 25, scope: !2933)
!2936 = !DILocation(line: 644, column: 51, scope: !2933)
!2937 = !DILocation(line: 645, column: 28, scope: !2933)
!2938 = !DILocation(line: 644, column: 34, scope: !2933)
!2939 = distinct !{!2939, !2935, !2937}
!2940 = !DILocation(line: 658, column: 43, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !267, line: 658, column: 29)
!2942 = distinct !DILexicalBlock(scope: !2660, file: !267, line: 658, column: 29)
!2943 = !DILocation(line: 655, column: 29, scope: !2661)
!2944 = !DILocation(line: 0, scope: !2660)
!2945 = !DILocation(line: 659, column: 49, scope: !2941)
!2946 = !DILocation(line: 659, column: 39, scope: !2941)
!2947 = !DILocation(line: 659, column: 31, scope: !2941)
!2948 = !DILocation(line: 658, column: 53, scope: !2941)
!2949 = !DILocation(line: 658, column: 29, scope: !2942)
!2950 = distinct !{!2950, !2949, !2951}
!2951 = !DILocation(line: 667, column: 33, scope: !2942)
!2952 = !DILocation(line: 674, column: 19, scope: !2650)
!2953 = !DILocation(line: 670, column: 41, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2662, file: !267, line: 670, column: 29)
!2955 = !DILocation(line: 670, column: 31, scope: !2954)
!2956 = !DILocation(line: 670, column: 29, scope: !2662)
!2957 = !DILocation(line: 672, column: 27, scope: !2662)
!2958 = !DILocation(line: 675, column: 26, scope: !2650)
!2959 = !DILocation(line: 675, column: 24, scope: !2650)
!2960 = !DILocation(line: 674, column: 19, scope: !2656)
!2961 = distinct !{!2961, !2923, !2962}
!2962 = !DILocation(line: 675, column: 44, scope: !2650)
!2963 = !DILocation(line: 676, column: 15, scope: !2651)
!2964 = !DILocation(line: 0, scope: !2651)
!2965 = !DILocation(line: 678, column: 40, scope: !2646)
!2966 = !DILocation(line: 680, column: 19, scope: !2668)
!2967 = !DILocation(line: 680, column: 45, scope: !2668)
!2968 = !DILocation(line: 680, column: 23, scope: !2668)
!2969 = !DILocation(line: 684, column: 33, scope: !2667)
!2970 = !DILocation(line: 0, scope: !2667)
!2971 = !DILocation(line: 686, column: 17, scope: !2667)
!2972 = !DILocation(line: 405, column: 12, scope: !2638)
!2973 = !DILocation(line: 688, column: 43, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !267, line: 688, column: 25)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !267, line: 687, column: 19)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !267, line: 686, column: 17)
!2977 = distinct !DILexicalBlock(scope: !2667, file: !267, line: 686, column: 17)
!2978 = !DILocation(line: 690, column: 25, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !267, line: 690, column: 25)
!2980 = distinct !DILexicalBlock(scope: !2974, file: !267, line: 689, column: 23)
!2981 = !DILocation(line: 690, column: 25, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !267, line: 690, column: 25)
!2983 = !DILocation(line: 690, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !267, line: 690, column: 25)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !267, line: 690, column: 25)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !267, line: 690, column: 25)
!2987 = !DILocation(line: 690, column: 25, scope: !2985)
!2988 = !DILocation(line: 690, column: 25, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !267, line: 690, column: 25)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !267, line: 690, column: 25)
!2991 = !DILocation(line: 690, column: 25, scope: !2990)
!2992 = !DILocation(line: 690, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !267, line: 690, column: 25)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !267, line: 690, column: 25)
!2995 = !DILocation(line: 690, column: 25, scope: !2994)
!2996 = !DILocation(line: 690, column: 25, scope: !2986)
!2997 = !DILocation(line: 690, column: 25, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !267, line: 690, column: 25)
!2999 = distinct !DILexicalBlock(scope: !2979, file: !267, line: 690, column: 25)
!3000 = !DILocation(line: 690, column: 25, scope: !2999)
!3001 = !DILocation(line: 691, column: 25, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !267, line: 691, column: 25)
!3003 = distinct !DILexicalBlock(scope: !2980, file: !267, line: 691, column: 25)
!3004 = !DILocation(line: 691, column: 25, scope: !3003)
!3005 = !DILocation(line: 692, column: 25, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !267, line: 692, column: 25)
!3007 = distinct !DILexicalBlock(scope: !2980, file: !267, line: 692, column: 25)
!3008 = !DILocation(line: 692, column: 25, scope: !3007)
!3009 = !DILocation(line: 693, column: 38, scope: !2980)
!3010 = !DILocation(line: 693, column: 33, scope: !2980)
!3011 = !DILocation(line: 694, column: 23, scope: !2980)
!3012 = !DILocation(line: 695, column: 30, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2974, file: !267, line: 695, column: 30)
!3014 = !DILocation(line: 695, column: 30, scope: !2974)
!3015 = !DILocation(line: 697, column: 25, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !267, line: 697, column: 25)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !267, line: 697, column: 25)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !267, line: 696, column: 23)
!3019 = !DILocation(line: 697, column: 25, scope: !3017)
!3020 = !DILocation(line: 699, column: 23, scope: !3018)
!3021 = !DILocation(line: 700, column: 35, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2975, file: !267, line: 700, column: 25)
!3023 = !DILocation(line: 700, column: 30, scope: !3022)
!3024 = !DILocation(line: 700, column: 25, scope: !2975)
!3025 = !DILocation(line: 702, column: 21, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !267, line: 702, column: 21)
!3027 = distinct !DILexicalBlock(scope: !2975, file: !267, line: 702, column: 21)
!3028 = !DILocation(line: 702, column: 21, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !267, line: 702, column: 21)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !267, line: 702, column: 21)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !267, line: 702, column: 21)
!3032 = !DILocation(line: 702, column: 21, scope: !3030)
!3033 = !DILocation(line: 702, column: 21, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !267, line: 702, column: 21)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !267, line: 702, column: 21)
!3036 = !DILocation(line: 702, column: 21, scope: !3035)
!3037 = !DILocation(line: 702, column: 21, scope: !3031)
!3038 = !DILocation(line: 0, scope: !2975)
!3039 = !DILocation(line: 703, column: 21, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !267, line: 703, column: 21)
!3041 = distinct !DILexicalBlock(scope: !2975, file: !267, line: 703, column: 21)
!3042 = !DILocation(line: 703, column: 21, scope: !3041)
!3043 = !DILocation(line: 704, column: 25, scope: !2975)
!3044 = !DILocation(line: 686, column: 17, scope: !2976)
!3045 = distinct !{!3045, !3046, !3047}
!3046 = !DILocation(line: 686, column: 17, scope: !2977)
!3047 = !DILocation(line: 705, column: 19, scope: !2977)
!3048 = !DILocation(line: 416, column: 30, scope: !2747)
!3049 = !DILocation(line: 712, column: 34, scope: !2690)
!3050 = !DILocation(line: 715, column: 35, scope: !2690)
!3051 = !DILocation(line: 715, column: 17, scope: !2690)
!3052 = !DILocation(line: 715, column: 47, scope: !2690)
!3053 = !DILocation(line: 715, column: 65, scope: !2690)
!3054 = !DILocation(line: 716, column: 15, scope: !2690)
!3055 = !DILocation(line: 716, column: 11, scope: !2690)
!3056 = !DILocation(line: 712, column: 11, scope: !2638)
!3057 = !DILocation(line: 400, column: 10, scope: !2640)
!3058 = !DILocation(line: 719, column: 5, scope: !2638)
!3059 = !DILocation(line: 720, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 720, column: 7)
!3061 = !DILocation(line: 720, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3060, file: !267, line: 720, column: 7)
!3063 = !DILocation(line: 720, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !267, line: 720, column: 7)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !267, line: 720, column: 7)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !267, line: 720, column: 7)
!3067 = !DILocation(line: 720, column: 7, scope: !3065)
!3068 = !DILocation(line: 720, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !267, line: 720, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !267, line: 720, column: 7)
!3071 = !DILocation(line: 720, column: 7, scope: !3070)
!3072 = !DILocation(line: 720, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !267, line: 720, column: 7)
!3074 = distinct !DILexicalBlock(scope: !3066, file: !267, line: 720, column: 7)
!3075 = !DILocation(line: 720, column: 7, scope: !3074)
!3076 = !DILocation(line: 720, column: 7, scope: !3066)
!3077 = !DILocation(line: 720, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !267, line: 720, column: 7)
!3079 = distinct !DILexicalBlock(scope: !3060, file: !267, line: 720, column: 7)
!3080 = !DILocation(line: 720, column: 7, scope: !3079)
!3081 = !DILocation(line: 722, column: 5, scope: !2638)
!3082 = !DILocation(line: 723, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !267, line: 723, column: 7)
!3084 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 723, column: 7)
!3085 = !DILocation(line: 424, column: 9, scope: !2638)
!3086 = !DILocation(line: 723, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !267, line: 723, column: 7)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !267, line: 723, column: 7)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !267, line: 723, column: 7)
!3090 = !DILocation(line: 723, column: 7, scope: !3088)
!3091 = !DILocation(line: 723, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !267, line: 723, column: 7)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !267, line: 723, column: 7)
!3094 = !DILocation(line: 723, column: 7, scope: !3093)
!3095 = !DILocation(line: 723, column: 7, scope: !3089)
!3096 = !DILocation(line: 724, column: 7, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !267, line: 724, column: 7)
!3098 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 724, column: 7)
!3099 = !DILocation(line: 724, column: 7, scope: !3098)
!3100 = !DILocation(line: 726, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2638, file: !267, line: 726, column: 11)
!3102 = !DILocation(line: 726, column: 11, scope: !2638)
!3103 = !DILocation(line: 728, column: 5, scope: !2639)
!3104 = !DILocation(line: 400, column: 75, scope: !2639)
!3105 = !DILocation(line: 400, column: 3, scope: !2639)
!3106 = distinct !{!3106, !2765, !3107}
!3107 = !DILocation(line: 728, column: 5, scope: !2640)
!3108 = !DILocation(line: 730, column: 11, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 730, column: 7)
!3110 = !DILocation(line: 730, column: 16, scope: !3109)
!3111 = !DILocation(line: 738, column: 51, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 738, column: 7)
!3113 = !DILocation(line: 739, column: 10, scope: !3112)
!3114 = !DILocation(line: 741, column: 11, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !267, line: 741, column: 11)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !267, line: 740, column: 5)
!3117 = !DILocation(line: 741, column: 11, scope: !3116)
!3118 = !DILocation(line: 742, column: 16, scope: !3115)
!3119 = !DILocation(line: 742, column: 9, scope: !3115)
!3120 = !DILocation(line: 746, column: 18, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3115, file: !267, line: 746, column: 16)
!3122 = !DILocation(line: 746, column: 32, scope: !3121)
!3123 = !DILocation(line: 746, column: 29, scope: !3121)
!3124 = !DILocation(line: 755, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 755, column: 7)
!3126 = !DILocation(line: 755, column: 20, scope: !3125)
!3127 = !DILocation(line: 756, column: 12, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !267, line: 756, column: 5)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !267, line: 756, column: 5)
!3130 = !DILocation(line: 756, column: 5, scope: !3129)
!3131 = !DILocation(line: 757, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !267, line: 757, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !267, line: 757, column: 7)
!3134 = !DILocation(line: 757, column: 7, scope: !3133)
!3135 = !DILocation(line: 756, column: 39, scope: !3128)
!3136 = distinct !{!3136, !3130, !3137}
!3137 = !DILocation(line: 757, column: 7, scope: !3129)
!3138 = !DILocation(line: 759, column: 11, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 759, column: 7)
!3140 = !DILocation(line: 759, column: 7, scope: !2611)
!3141 = !DILocation(line: 760, column: 5, scope: !3139)
!3142 = !DILocation(line: 760, column: 17, scope: !3139)
!3143 = !DILocation(line: 763, column: 2, scope: !2611)
!3144 = !DILocation(line: 766, column: 51, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2611, file: !267, line: 766, column: 7)
!3146 = !DILocation(line: 766, column: 21, scope: !3145)
!3147 = !DILocation(line: 770, column: 42, scope: !2611)
!3148 = !DILocation(line: 768, column: 10, scope: !2611)
!3149 = !DILocation(line: 768, column: 3, scope: !2611)
!3150 = !DILocation(line: 772, column: 1, scope: !2611)
!3151 = distinct !DISubprogram(name: "gettext_quote", scope: !267, file: !267, line: 207, type: !3152, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!37, !37, !269}
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DILocalVariable(name: "msgid", arg: 1, scope: !3151, file: !267, line: 207, type: !37)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !267, line: 207, type: !269)
!3157 = !DILocalVariable(name: "translation", scope: !3151, file: !267, line: 209, type: !37)
!3158 = !DILocalVariable(name: "locale_code", scope: !3151, file: !267, line: 210, type: !37)
!3159 = !DILocation(line: 0, scope: !3151)
!3160 = !DILocation(line: 209, column: 29, scope: !3151)
!3161 = !DILocation(line: 212, column: 19, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3151, file: !267, line: 212, column: 7)
!3163 = !DILocation(line: 212, column: 7, scope: !3151)
!3164 = !DILocation(line: 233, column: 17, scope: !3151)
!3165 = !DILocalVariable(name: "s1", arg: 1, scope: !3166, file: !3167, line: 160, type: !37)
!3166 = distinct !DISubprogram(name: "strcaseeq0", scope: !3167, file: !3167, line: 160, type: !3168, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3170)
!3167 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!3170 = !{!3165, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180}
!3171 = !DILocalVariable(name: "s2", arg: 2, scope: !3166, file: !3167, line: 160, type: !37)
!3172 = !DILocalVariable(name: "s20", arg: 3, scope: !3166, file: !3167, line: 160, type: !36)
!3173 = !DILocalVariable(name: "s21", arg: 4, scope: !3166, file: !3167, line: 160, type: !36)
!3174 = !DILocalVariable(name: "s22", arg: 5, scope: !3166, file: !3167, line: 160, type: !36)
!3175 = !DILocalVariable(name: "s23", arg: 6, scope: !3166, file: !3167, line: 160, type: !36)
!3176 = !DILocalVariable(name: "s24", arg: 7, scope: !3166, file: !3167, line: 160, type: !36)
!3177 = !DILocalVariable(name: "s25", arg: 8, scope: !3166, file: !3167, line: 160, type: !36)
!3178 = !DILocalVariable(name: "s26", arg: 9, scope: !3166, file: !3167, line: 160, type: !36)
!3179 = !DILocalVariable(name: "s27", arg: 10, scope: !3166, file: !3167, line: 160, type: !36)
!3180 = !DILocalVariable(name: "s28", arg: 11, scope: !3166, file: !3167, line: 160, type: !36)
!3181 = !DILocation(line: 0, scope: !3166, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 234, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3151, file: !267, line: 234, column: 7)
!3184 = !DILocation(line: 162, column: 7, scope: !3185, inlinedAt: !3182)
!3185 = distinct !DILexicalBlock(scope: !3166, file: !3167, line: 162, column: 7)
!3186 = !DILocalVariable(name: "s1", arg: 1, scope: !3187, file: !3167, line: 146, type: !37)
!3187 = distinct !DISubprogram(name: "strcaseeq1", scope: !3167, file: !3167, line: 146, type: !3188, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36, !36}
!3190 = !{!3186, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199}
!3191 = !DILocalVariable(name: "s2", arg: 2, scope: !3187, file: !3167, line: 146, type: !37)
!3192 = !DILocalVariable(name: "s21", arg: 3, scope: !3187, file: !3167, line: 146, type: !36)
!3193 = !DILocalVariable(name: "s22", arg: 4, scope: !3187, file: !3167, line: 146, type: !36)
!3194 = !DILocalVariable(name: "s23", arg: 5, scope: !3187, file: !3167, line: 146, type: !36)
!3195 = !DILocalVariable(name: "s24", arg: 6, scope: !3187, file: !3167, line: 146, type: !36)
!3196 = !DILocalVariable(name: "s25", arg: 7, scope: !3187, file: !3167, line: 146, type: !36)
!3197 = !DILocalVariable(name: "s26", arg: 8, scope: !3187, file: !3167, line: 146, type: !36)
!3198 = !DILocalVariable(name: "s27", arg: 9, scope: !3187, file: !3167, line: 146, type: !36)
!3199 = !DILocalVariable(name: "s28", arg: 10, scope: !3187, file: !3167, line: 146, type: !36)
!3200 = !DILocation(line: 0, scope: !3187, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 167, column: 16, scope: !3202, inlinedAt: !3182)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3167, line: 164, column: 11)
!3203 = distinct !DILexicalBlock(scope: !3185, file: !3167, line: 163, column: 5)
!3204 = !DILocation(line: 148, column: 7, scope: !3205, inlinedAt: !3201)
!3205 = distinct !DILexicalBlock(scope: !3187, file: !3167, line: 148, column: 7)
!3206 = !DILocalVariable(name: "s1", arg: 1, scope: !3207, file: !3167, line: 132, type: !37)
!3207 = distinct !DISubprogram(name: "strcaseeq2", scope: !3167, file: !3167, line: 132, type: !3208, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36}
!3210 = !{!3206, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3211 = !DILocalVariable(name: "s2", arg: 2, scope: !3207, file: !3167, line: 132, type: !37)
!3212 = !DILocalVariable(name: "s22", arg: 3, scope: !3207, file: !3167, line: 132, type: !36)
!3213 = !DILocalVariable(name: "s23", arg: 4, scope: !3207, file: !3167, line: 132, type: !36)
!3214 = !DILocalVariable(name: "s24", arg: 5, scope: !3207, file: !3167, line: 132, type: !36)
!3215 = !DILocalVariable(name: "s25", arg: 6, scope: !3207, file: !3167, line: 132, type: !36)
!3216 = !DILocalVariable(name: "s26", arg: 7, scope: !3207, file: !3167, line: 132, type: !36)
!3217 = !DILocalVariable(name: "s27", arg: 8, scope: !3207, file: !3167, line: 132, type: !36)
!3218 = !DILocalVariable(name: "s28", arg: 9, scope: !3207, file: !3167, line: 132, type: !36)
!3219 = !DILocation(line: 0, scope: !3207, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 153, column: 16, scope: !3221, inlinedAt: !3201)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3167, line: 150, column: 11)
!3222 = distinct !DILexicalBlock(scope: !3205, file: !3167, line: 149, column: 5)
!3223 = !DILocation(line: 134, column: 7, scope: !3224, inlinedAt: !3220)
!3224 = distinct !DILexicalBlock(scope: !3207, file: !3167, line: 134, column: 7)
!3225 = !DILocalVariable(name: "s1", arg: 1, scope: !3226, file: !3167, line: 118, type: !37)
!3226 = distinct !DISubprogram(name: "strcaseeq3", scope: !3167, file: !3167, line: 118, type: !3227, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36}
!3229 = !{!3225, !3230, !3231, !3232, !3233, !3234, !3235, !3236}
!3230 = !DILocalVariable(name: "s2", arg: 2, scope: !3226, file: !3167, line: 118, type: !37)
!3231 = !DILocalVariable(name: "s23", arg: 3, scope: !3226, file: !3167, line: 118, type: !36)
!3232 = !DILocalVariable(name: "s24", arg: 4, scope: !3226, file: !3167, line: 118, type: !36)
!3233 = !DILocalVariable(name: "s25", arg: 5, scope: !3226, file: !3167, line: 118, type: !36)
!3234 = !DILocalVariable(name: "s26", arg: 6, scope: !3226, file: !3167, line: 118, type: !36)
!3235 = !DILocalVariable(name: "s27", arg: 7, scope: !3226, file: !3167, line: 118, type: !36)
!3236 = !DILocalVariable(name: "s28", arg: 8, scope: !3226, file: !3167, line: 118, type: !36)
!3237 = !DILocation(line: 0, scope: !3226, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 139, column: 16, scope: !3239, inlinedAt: !3220)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !3167, line: 136, column: 11)
!3240 = distinct !DILexicalBlock(scope: !3224, file: !3167, line: 135, column: 5)
!3241 = !DILocation(line: 120, column: 7, scope: !3242, inlinedAt: !3238)
!3242 = distinct !DILexicalBlock(scope: !3226, file: !3167, line: 120, column: 7)
!3243 = !DILocation(line: 120, column: 7, scope: !3226, inlinedAt: !3238)
!3244 = !DILocalVariable(name: "s1", arg: 1, scope: !3245, file: !3167, line: 104, type: !37)
!3245 = distinct !DISubprogram(name: "strcaseeq4", scope: !3167, file: !3167, line: 104, type: !3246, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!39, !37, !37, !36, !36, !36, !36, !36}
!3248 = !{!3244, !3249, !3250, !3251, !3252, !3253, !3254}
!3249 = !DILocalVariable(name: "s2", arg: 2, scope: !3245, file: !3167, line: 104, type: !37)
!3250 = !DILocalVariable(name: "s24", arg: 3, scope: !3245, file: !3167, line: 104, type: !36)
!3251 = !DILocalVariable(name: "s25", arg: 4, scope: !3245, file: !3167, line: 104, type: !36)
!3252 = !DILocalVariable(name: "s26", arg: 5, scope: !3245, file: !3167, line: 104, type: !36)
!3253 = !DILocalVariable(name: "s27", arg: 6, scope: !3245, file: !3167, line: 104, type: !36)
!3254 = !DILocalVariable(name: "s28", arg: 7, scope: !3245, file: !3167, line: 104, type: !36)
!3255 = !DILocation(line: 0, scope: !3245, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 125, column: 16, scope: !3257, inlinedAt: !3238)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !3167, line: 122, column: 11)
!3258 = distinct !DILexicalBlock(scope: !3242, file: !3167, line: 121, column: 5)
!3259 = !DILocation(line: 106, column: 7, scope: !3260, inlinedAt: !3256)
!3260 = distinct !DILexicalBlock(scope: !3245, file: !3167, line: 106, column: 7)
!3261 = !DILocation(line: 106, column: 7, scope: !3245, inlinedAt: !3256)
!3262 = !DILocalVariable(name: "s1", arg: 1, scope: !3263, file: !3167, line: 90, type: !37)
!3263 = distinct !DISubprogram(name: "strcaseeq5", scope: !3167, file: !3167, line: 90, type: !3264, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!39, !37, !37, !36, !36, !36, !36}
!3266 = !{!3262, !3267, !3268, !3269, !3270, !3271}
!3267 = !DILocalVariable(name: "s2", arg: 2, scope: !3263, file: !3167, line: 90, type: !37)
!3268 = !DILocalVariable(name: "s25", arg: 3, scope: !3263, file: !3167, line: 90, type: !36)
!3269 = !DILocalVariable(name: "s26", arg: 4, scope: !3263, file: !3167, line: 90, type: !36)
!3270 = !DILocalVariable(name: "s27", arg: 5, scope: !3263, file: !3167, line: 90, type: !36)
!3271 = !DILocalVariable(name: "s28", arg: 6, scope: !3263, file: !3167, line: 90, type: !36)
!3272 = !DILocation(line: 0, scope: !3263, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 111, column: 16, scope: !3274, inlinedAt: !3256)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3167, line: 108, column: 11)
!3275 = distinct !DILexicalBlock(scope: !3260, file: !3167, line: 107, column: 5)
!3276 = !DILocation(line: 92, column: 7, scope: !3277, inlinedAt: !3273)
!3277 = distinct !DILexicalBlock(scope: !3263, file: !3167, line: 92, column: 7)
!3278 = !DILocation(line: 92, column: 7, scope: !3263, inlinedAt: !3273)
!3279 = !DILocation(line: 235, column: 12, scope: !3183)
!3280 = !DILocation(line: 235, column: 21, scope: !3183)
!3281 = !DILocation(line: 235, column: 5, scope: !3183)
!3282 = !DILocation(line: 0, scope: !3187, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 167, column: 16, scope: !3202, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 236, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3151, file: !267, line: 236, column: 7)
!3286 = !DILocation(line: 148, column: 7, scope: !3205, inlinedAt: !3283)
!3287 = !DILocation(line: 0, scope: !3207, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 153, column: 16, scope: !3221, inlinedAt: !3283)
!3289 = !DILocation(line: 134, column: 7, scope: !3224, inlinedAt: !3288)
!3290 = !DILocation(line: 134, column: 7, scope: !3207, inlinedAt: !3288)
!3291 = !DILocation(line: 0, scope: !3226, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 139, column: 16, scope: !3239, inlinedAt: !3288)
!3293 = !DILocation(line: 120, column: 7, scope: !3242, inlinedAt: !3292)
!3294 = !DILocation(line: 120, column: 7, scope: !3226, inlinedAt: !3292)
!3295 = !DILocation(line: 0, scope: !3245, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 125, column: 16, scope: !3257, inlinedAt: !3292)
!3297 = !DILocation(line: 106, column: 7, scope: !3260, inlinedAt: !3296)
!3298 = !DILocation(line: 106, column: 7, scope: !3245, inlinedAt: !3296)
!3299 = !DILocation(line: 0, scope: !3263, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 111, column: 16, scope: !3274, inlinedAt: !3296)
!3301 = !DILocation(line: 92, column: 7, scope: !3277, inlinedAt: !3300)
!3302 = !DILocation(line: 92, column: 7, scope: !3263, inlinedAt: !3300)
!3303 = !DILocalVariable(name: "s1", arg: 1, scope: !3304, file: !3167, line: 76, type: !37)
!3304 = distinct !DISubprogram(name: "strcaseeq6", scope: !3167, file: !3167, line: 76, type: !3305, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!39, !37, !37, !36, !36, !36}
!3307 = !{!3303, !3308, !3309, !3310, !3311}
!3308 = !DILocalVariable(name: "s2", arg: 2, scope: !3304, file: !3167, line: 76, type: !37)
!3309 = !DILocalVariable(name: "s26", arg: 3, scope: !3304, file: !3167, line: 76, type: !36)
!3310 = !DILocalVariable(name: "s27", arg: 4, scope: !3304, file: !3167, line: 76, type: !36)
!3311 = !DILocalVariable(name: "s28", arg: 5, scope: !3304, file: !3167, line: 76, type: !36)
!3312 = !DILocation(line: 0, scope: !3304, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 97, column: 16, scope: !3314, inlinedAt: !3300)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3167, line: 94, column: 11)
!3315 = distinct !DILexicalBlock(scope: !3277, file: !3167, line: 93, column: 5)
!3316 = !DILocation(line: 78, column: 7, scope: !3317, inlinedAt: !3313)
!3317 = distinct !DILexicalBlock(scope: !3304, file: !3167, line: 78, column: 7)
!3318 = !DILocation(line: 78, column: 7, scope: !3304, inlinedAt: !3313)
!3319 = !DILocalVariable(name: "s1", arg: 1, scope: !3320, file: !3167, line: 62, type: !37)
!3320 = distinct !DISubprogram(name: "strcaseeq7", scope: !3167, file: !3167, line: 62, type: !3321, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!39, !37, !37, !36, !36}
!3323 = !{!3319, !3324, !3325, !3326}
!3324 = !DILocalVariable(name: "s2", arg: 2, scope: !3320, file: !3167, line: 62, type: !37)
!3325 = !DILocalVariable(name: "s27", arg: 3, scope: !3320, file: !3167, line: 62, type: !36)
!3326 = !DILocalVariable(name: "s28", arg: 4, scope: !3320, file: !3167, line: 62, type: !36)
!3327 = !DILocation(line: 0, scope: !3320, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 83, column: 16, scope: !3329, inlinedAt: !3313)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3167, line: 80, column: 11)
!3330 = distinct !DILexicalBlock(scope: !3317, file: !3167, line: 79, column: 5)
!3331 = !DILocation(line: 64, column: 7, scope: !3332, inlinedAt: !3328)
!3332 = distinct !DILexicalBlock(scope: !3320, file: !3167, line: 64, column: 7)
!3333 = !DILocation(line: 236, column: 7, scope: !3151)
!3334 = !DILocation(line: 237, column: 12, scope: !3285)
!3335 = !DILocation(line: 237, column: 21, scope: !3285)
!3336 = !DILocation(line: 237, column: 5, scope: !3285)
!3337 = !DILocation(line: 239, column: 13, scope: !3151)
!3338 = !DILocation(line: 239, column: 11, scope: !3151)
!3339 = !DILocation(line: 239, column: 3, scope: !3151)
!3340 = !DILocation(line: 240, column: 1, scope: !3151)
!3341 = distinct !DISubprogram(name: "quotearg_alloc", scope: !267, file: !267, line: 799, type: !3342, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!35, !37, !94, !298}
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "arg", arg: 1, scope: !3341, file: !267, line: 799, type: !37)
!3346 = !DILocalVariable(name: "argsize", arg: 2, scope: !3341, file: !267, line: 799, type: !94)
!3347 = !DILocalVariable(name: "o", arg: 3, scope: !3341, file: !267, line: 800, type: !298)
!3348 = !DILocation(line: 0, scope: !3341)
!3349 = !DILocalVariable(name: "arg", arg: 1, scope: !3350, file: !267, line: 812, type: !37)
!3350 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !267, file: !267, line: 812, type: !3351, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!35, !37, !94, !423, !298}
!3353 = !{!3349, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3354 = !DILocalVariable(name: "argsize", arg: 2, scope: !3350, file: !267, line: 812, type: !94)
!3355 = !DILocalVariable(name: "size", arg: 3, scope: !3350, file: !267, line: 812, type: !423)
!3356 = !DILocalVariable(name: "o", arg: 4, scope: !3350, file: !267, line: 813, type: !298)
!3357 = !DILocalVariable(name: "p", scope: !3350, file: !267, line: 815, type: !298)
!3358 = !DILocalVariable(name: "e", scope: !3350, file: !267, line: 816, type: !39)
!3359 = !DILocalVariable(name: "flags", scope: !3350, file: !267, line: 818, type: !39)
!3360 = !DILocalVariable(name: "bufsize", scope: !3350, file: !267, line: 819, type: !94)
!3361 = !DILocalVariable(name: "buf", scope: !3350, file: !267, line: 823, type: !35)
!3362 = !DILocation(line: 0, scope: !3350, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 802, column: 10, scope: !3341)
!3364 = !DILocation(line: 815, column: 37, scope: !3350, inlinedAt: !3363)
!3365 = !DILocation(line: 816, column: 11, scope: !3350, inlinedAt: !3363)
!3366 = !DILocation(line: 818, column: 18, scope: !3350, inlinedAt: !3363)
!3367 = !DILocation(line: 818, column: 24, scope: !3350, inlinedAt: !3363)
!3368 = !DILocation(line: 819, column: 69, scope: !3350, inlinedAt: !3363)
!3369 = !DILocation(line: 820, column: 53, scope: !3350, inlinedAt: !3363)
!3370 = !DILocation(line: 821, column: 49, scope: !3350, inlinedAt: !3363)
!3371 = !DILocation(line: 822, column: 49, scope: !3350, inlinedAt: !3363)
!3372 = !DILocation(line: 819, column: 20, scope: !3350, inlinedAt: !3363)
!3373 = !DILocation(line: 822, column: 62, scope: !3350, inlinedAt: !3363)
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !289, line: 216, type: !94)
!3375 = distinct !DISubprogram(name: "xcharalloc", scope: !289, file: !289, line: 216, type: !3376, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!35, !94}
!3378 = !{!3374}
!3379 = !DILocation(line: 0, scope: !3375, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 823, column: 15, scope: !3350, inlinedAt: !3363)
!3381 = !DILocation(line: 218, column: 10, scope: !3375, inlinedAt: !3380)
!3382 = !DILocation(line: 824, column: 60, scope: !3350, inlinedAt: !3363)
!3383 = !DILocation(line: 826, column: 32, scope: !3350, inlinedAt: !3363)
!3384 = !DILocation(line: 826, column: 47, scope: !3350, inlinedAt: !3363)
!3385 = !DILocation(line: 824, column: 3, scope: !3350, inlinedAt: !3363)
!3386 = !DILocation(line: 827, column: 9, scope: !3350, inlinedAt: !3363)
!3387 = !DILocation(line: 802, column: 3, scope: !3341)
!3388 = !DILocation(line: 0, scope: !3350)
!3389 = !DILocation(line: 815, column: 37, scope: !3350)
!3390 = !DILocation(line: 816, column: 11, scope: !3350)
!3391 = !DILocation(line: 818, column: 18, scope: !3350)
!3392 = !DILocation(line: 818, column: 27, scope: !3350)
!3393 = !DILocation(line: 818, column: 24, scope: !3350)
!3394 = !DILocation(line: 819, column: 69, scope: !3350)
!3395 = !DILocation(line: 820, column: 53, scope: !3350)
!3396 = !DILocation(line: 821, column: 49, scope: !3350)
!3397 = !DILocation(line: 822, column: 49, scope: !3350)
!3398 = !DILocation(line: 819, column: 20, scope: !3350)
!3399 = !DILocation(line: 822, column: 62, scope: !3350)
!3400 = !DILocation(line: 0, scope: !3375, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 823, column: 15, scope: !3350)
!3402 = !DILocation(line: 218, column: 10, scope: !3375, inlinedAt: !3401)
!3403 = !DILocation(line: 824, column: 60, scope: !3350)
!3404 = !DILocation(line: 826, column: 32, scope: !3350)
!3405 = !DILocation(line: 826, column: 47, scope: !3350)
!3406 = !DILocation(line: 824, column: 3, scope: !3350)
!3407 = !DILocation(line: 827, column: 9, scope: !3350)
!3408 = !DILocation(line: 828, column: 7, scope: !3350)
!3409 = !DILocation(line: 829, column: 11, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3350, file: !267, line: 828, column: 7)
!3411 = !DILocation(line: 829, column: 5, scope: !3410)
!3412 = !DILocation(line: 830, column: 3, scope: !3350)
!3413 = distinct !DISubprogram(name: "quotearg_free", scope: !267, file: !267, line: 848, type: !121, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3414)
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "sv", scope: !3413, file: !267, line: 850, type: !375)
!3416 = !DILocalVariable(name: "i", scope: !3413, file: !267, line: 851, type: !39)
!3417 = !DILocation(line: 850, column: 24, scope: !3413)
!3418 = !DILocation(line: 0, scope: !3413)
!3419 = !DILocation(line: 852, column: 19, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !267, line: 852, column: 3)
!3421 = distinct !DILexicalBlock(scope: !3413, file: !267, line: 852, column: 3)
!3422 = !DILocation(line: 852, column: 17, scope: !3420)
!3423 = !DILocation(line: 852, column: 3, scope: !3421)
!3424 = !DILocation(line: 853, column: 17, scope: !3420)
!3425 = !{!3426, !1070, i64 8}
!3426 = !{!"slotvec", !1492, i64 0, !1070, i64 8}
!3427 = !DILocation(line: 853, column: 5, scope: !3420)
!3428 = !DILocation(line: 852, column: 28, scope: !3420)
!3429 = distinct !{!3429, !3423, !3430}
!3430 = !DILocation(line: 853, column: 20, scope: !3421)
!3431 = !DILocation(line: 854, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3413, file: !267, line: 854, column: 7)
!3433 = !DILocation(line: 854, column: 17, scope: !3432)
!3434 = !DILocation(line: 854, column: 7, scope: !3413)
!3435 = !DILocation(line: 856, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !267, line: 855, column: 5)
!3437 = !DILocation(line: 857, column: 21, scope: !3436)
!3438 = !{!3426, !1492, i64 0}
!3439 = !DILocation(line: 858, column: 20, scope: !3436)
!3440 = !DILocation(line: 859, column: 5, scope: !3436)
!3441 = !DILocation(line: 860, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3413, file: !267, line: 860, column: 7)
!3443 = !DILocation(line: 860, column: 7, scope: !3413)
!3444 = !DILocation(line: 862, column: 13, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !267, line: 861, column: 5)
!3446 = !DILocation(line: 862, column: 7, scope: !3445)
!3447 = !DILocation(line: 863, column: 15, scope: !3445)
!3448 = !DILocation(line: 864, column: 5, scope: !3445)
!3449 = !DILocation(line: 865, column: 10, scope: !3413)
!3450 = !DILocation(line: 866, column: 1, scope: !3413)
!3451 = distinct !DISubprogram(name: "quotearg_n", scope: !267, file: !267, line: 931, type: !108, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3452)
!3452 = !{!3453, !3454}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3451, file: !267, line: 931, type: !39)
!3454 = !DILocalVariable(name: "arg", arg: 2, scope: !3451, file: !267, line: 931, type: !37)
!3455 = !DILocation(line: 0, scope: !3451)
!3456 = !DILocation(line: 933, column: 10, scope: !3451)
!3457 = !DILocation(line: 933, column: 3, scope: !3451)
!3458 = distinct !DISubprogram(name: "quotearg_n_options", scope: !267, file: !267, line: 877, type: !3459, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!35, !39, !37, !94, !298}
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3471, !3472, !3474, !3475, !3476}
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3458, file: !267, line: 877, type: !39)
!3463 = !DILocalVariable(name: "arg", arg: 2, scope: !3458, file: !267, line: 877, type: !37)
!3464 = !DILocalVariable(name: "argsize", arg: 3, scope: !3458, file: !267, line: 877, type: !94)
!3465 = !DILocalVariable(name: "options", arg: 4, scope: !3458, file: !267, line: 878, type: !298)
!3466 = !DILocalVariable(name: "e", scope: !3458, file: !267, line: 880, type: !39)
!3467 = !DILocalVariable(name: "sv", scope: !3458, file: !267, line: 882, type: !375)
!3468 = !DILocalVariable(name: "preallocated", scope: !3469, file: !267, line: 889, type: !216)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !267, line: 888, column: 5)
!3470 = distinct !DILexicalBlock(scope: !3458, file: !267, line: 887, column: 7)
!3471 = !DILocalVariable(name: "nmax", scope: !3469, file: !267, line: 890, type: !39)
!3472 = !DILocalVariable(name: "size", scope: !3473, file: !267, line: 903, type: !94)
!3473 = distinct !DILexicalBlock(scope: !3458, file: !267, line: 902, column: 3)
!3474 = !DILocalVariable(name: "val", scope: !3473, file: !267, line: 904, type: !35)
!3475 = !DILocalVariable(name: "flags", scope: !3473, file: !267, line: 906, type: !39)
!3476 = !DILocalVariable(name: "qsize", scope: !3473, file: !267, line: 907, type: !94)
!3477 = !DILocation(line: 0, scope: !3458)
!3478 = !DILocation(line: 880, column: 11, scope: !3458)
!3479 = !DILocation(line: 882, column: 24, scope: !3458)
!3480 = !DILocation(line: 884, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3458, file: !267, line: 884, column: 7)
!3482 = !DILocation(line: 884, column: 7, scope: !3458)
!3483 = !DILocation(line: 885, column: 5, scope: !3481)
!3484 = !DILocation(line: 887, column: 7, scope: !3470)
!3485 = !DILocation(line: 887, column: 14, scope: !3470)
!3486 = !DILocation(line: 887, column: 7, scope: !3458)
!3487 = !DILocation(line: 889, column: 31, scope: !3469)
!3488 = !DILocation(line: 0, scope: !3469)
!3489 = !DILocation(line: 892, column: 16, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3469, file: !267, line: 892, column: 11)
!3491 = !DILocation(line: 892, column: 11, scope: !3469)
!3492 = !DILocation(line: 893, column: 9, scope: !3490)
!3493 = !DILocation(line: 895, column: 32, scope: !3469)
!3494 = !DILocation(line: 895, column: 61, scope: !3469)
!3495 = !DILocation(line: 895, column: 58, scope: !3469)
!3496 = !DILocation(line: 895, column: 66, scope: !3469)
!3497 = !DILocation(line: 895, column: 22, scope: !3469)
!3498 = !DILocation(line: 895, column: 15, scope: !3469)
!3499 = !DILocation(line: 896, column: 11, scope: !3469)
!3500 = !DILocation(line: 897, column: 15, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3469, file: !267, line: 896, column: 11)
!3502 = !{i64 0, i64 8, !1491, i64 8, i64 8, !1069}
!3503 = !DILocation(line: 897, column: 9, scope: !3501)
!3504 = !DILocation(line: 898, column: 20, scope: !3469)
!3505 = !DILocation(line: 898, column: 18, scope: !3469)
!3506 = !DILocation(line: 898, column: 15, scope: !3469)
!3507 = !DILocation(line: 898, column: 38, scope: !3469)
!3508 = !DILocation(line: 898, column: 31, scope: !3469)
!3509 = !DILocation(line: 898, column: 48, scope: !3469)
!3510 = !DILocation(line: 0, scope: !2908, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 898, column: 7, scope: !3469)
!3512 = !DILocation(line: 71, column: 10, scope: !2908, inlinedAt: !3511)
!3513 = !DILocation(line: 899, column: 14, scope: !3469)
!3514 = !DILocation(line: 900, column: 5, scope: !3469)
!3515 = !DILocation(line: 903, column: 19, scope: !3473)
!3516 = !DILocation(line: 903, column: 25, scope: !3473)
!3517 = !DILocation(line: 0, scope: !3473)
!3518 = !DILocation(line: 904, column: 23, scope: !3473)
!3519 = !DILocation(line: 906, column: 26, scope: !3473)
!3520 = !DILocation(line: 906, column: 32, scope: !3473)
!3521 = !DILocation(line: 908, column: 55, scope: !3473)
!3522 = !DILocation(line: 909, column: 46, scope: !3473)
!3523 = !DILocation(line: 910, column: 55, scope: !3473)
!3524 = !DILocation(line: 911, column: 55, scope: !3473)
!3525 = !DILocation(line: 907, column: 20, scope: !3473)
!3526 = !DILocation(line: 913, column: 14, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3473, file: !267, line: 913, column: 9)
!3528 = !DILocation(line: 913, column: 9, scope: !3473)
!3529 = !DILocation(line: 915, column: 35, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !267, line: 914, column: 7)
!3531 = !DILocation(line: 915, column: 20, scope: !3530)
!3532 = !DILocation(line: 916, column: 17, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !267, line: 916, column: 13)
!3534 = !DILocation(line: 916, column: 13, scope: !3530)
!3535 = !DILocation(line: 917, column: 11, scope: !3533)
!3536 = !DILocation(line: 0, scope: !3375, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 918, column: 27, scope: !3530)
!3538 = !DILocation(line: 218, column: 10, scope: !3375, inlinedAt: !3537)
!3539 = !DILocation(line: 918, column: 19, scope: !3530)
!3540 = !DILocation(line: 919, column: 69, scope: !3530)
!3541 = !DILocation(line: 921, column: 44, scope: !3530)
!3542 = !DILocation(line: 922, column: 44, scope: !3530)
!3543 = !DILocation(line: 919, column: 9, scope: !3530)
!3544 = !DILocation(line: 923, column: 7, scope: !3530)
!3545 = !DILocation(line: 925, column: 11, scope: !3473)
!3546 = !DILocation(line: 926, column: 5, scope: !3473)
!3547 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !267, file: !267, line: 937, type: !3548, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!35, !39, !37, !94}
!3550 = !{!3551, !3552, !3553}
!3551 = !DILocalVariable(name: "n", arg: 1, scope: !3547, file: !267, line: 937, type: !39)
!3552 = !DILocalVariable(name: "arg", arg: 2, scope: !3547, file: !267, line: 937, type: !37)
!3553 = !DILocalVariable(name: "argsize", arg: 3, scope: !3547, file: !267, line: 937, type: !94)
!3554 = !DILocation(line: 0, scope: !3547)
!3555 = !DILocation(line: 939, column: 10, scope: !3547)
!3556 = !DILocation(line: 939, column: 3, scope: !3547)
!3557 = distinct !DISubprogram(name: "quotearg", scope: !267, file: !267, line: 943, type: !114, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3558)
!3558 = !{!3559}
!3559 = !DILocalVariable(name: "arg", arg: 1, scope: !3557, file: !267, line: 943, type: !37)
!3560 = !DILocation(line: 0, scope: !3557)
!3561 = !DILocation(line: 0, scope: !3451, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 945, column: 10, scope: !3557)
!3563 = !DILocation(line: 933, column: 10, scope: !3451, inlinedAt: !3562)
!3564 = !DILocation(line: 945, column: 3, scope: !3557)
!3565 = distinct !DISubprogram(name: "quotearg_mem", scope: !267, file: !267, line: 949, type: !3566, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!35, !37, !94}
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "arg", arg: 1, scope: !3565, file: !267, line: 949, type: !37)
!3570 = !DILocalVariable(name: "argsize", arg: 2, scope: !3565, file: !267, line: 949, type: !94)
!3571 = !DILocation(line: 0, scope: !3565)
!3572 = !DILocation(line: 0, scope: !3547, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 951, column: 10, scope: !3565)
!3574 = !DILocation(line: 939, column: 10, scope: !3547, inlinedAt: !3573)
!3575 = !DILocation(line: 951, column: 3, scope: !3565)
!3576 = distinct !DISubprogram(name: "quotearg_n_style", scope: !267, file: !267, line: 955, type: !3577, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!35, !39, !269, !37}
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3576, file: !267, line: 955, type: !39)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3576, file: !267, line: 955, type: !269)
!3582 = !DILocalVariable(name: "arg", arg: 3, scope: !3576, file: !267, line: 955, type: !37)
!3583 = !DILocalVariable(name: "o", scope: !3576, file: !267, line: 957, type: !299)
!3584 = !DILocation(line: 0, scope: !3576)
!3585 = !DILocation(line: 957, column: 3, scope: !3576)
!3586 = !DILocation(line: 957, column: 32, scope: !3576)
!3587 = !DILocalVariable(name: "style", arg: 1, scope: !3588, file: !267, line: 193, type: !269)
!3588 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !267, file: !267, line: 193, type: !3589, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!300, !269}
!3591 = !{!3587, !3592}
!3592 = !DILocalVariable(name: "o", scope: !3588, file: !267, line: 195, type: !300)
!3593 = !DILocation(line: 0, scope: !3588, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 957, column: 36, scope: !3576)
!3595 = !DILocation(line: 195, column: 26, scope: !3588, inlinedAt: !3594)
!3596 = !{!3597}
!3597 = distinct !{!3597, !3598, !"quoting_options_from_style: argument 0"}
!3598 = distinct !{!3598, !"quoting_options_from_style"}
!3599 = !DILocation(line: 196, column: 13, scope: !3600, inlinedAt: !3594)
!3600 = distinct !DILexicalBlock(scope: !3588, file: !267, line: 196, column: 7)
!3601 = !DILocation(line: 196, column: 7, scope: !3588, inlinedAt: !3594)
!3602 = !DILocation(line: 197, column: 5, scope: !3600, inlinedAt: !3594)
!3603 = !DILocation(line: 198, column: 5, scope: !3588, inlinedAt: !3594)
!3604 = !DILocation(line: 198, column: 11, scope: !3588, inlinedAt: !3594)
!3605 = !DILocation(line: 958, column: 10, scope: !3576)
!3606 = !DILocation(line: 959, column: 1, scope: !3576)
!3607 = !DILocation(line: 958, column: 3, scope: !3576)
!3608 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !267, file: !267, line: 962, type: !3609, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!35, !39, !269, !37, !94}
!3611 = !{!3612, !3613, !3614, !3615, !3616}
!3612 = !DILocalVariable(name: "n", arg: 1, scope: !3608, file: !267, line: 962, type: !39)
!3613 = !DILocalVariable(name: "s", arg: 2, scope: !3608, file: !267, line: 962, type: !269)
!3614 = !DILocalVariable(name: "arg", arg: 3, scope: !3608, file: !267, line: 963, type: !37)
!3615 = !DILocalVariable(name: "argsize", arg: 4, scope: !3608, file: !267, line: 963, type: !94)
!3616 = !DILocalVariable(name: "o", scope: !3608, file: !267, line: 965, type: !299)
!3617 = !DILocation(line: 0, scope: !3608)
!3618 = !DILocation(line: 965, column: 3, scope: !3608)
!3619 = !DILocation(line: 965, column: 32, scope: !3608)
!3620 = !DILocation(line: 0, scope: !3588, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 965, column: 36, scope: !3608)
!3622 = !DILocation(line: 195, column: 26, scope: !3588, inlinedAt: !3621)
!3623 = !{!3624}
!3624 = distinct !{!3624, !3625, !"quoting_options_from_style: argument 0"}
!3625 = distinct !{!3625, !"quoting_options_from_style"}
!3626 = !DILocation(line: 196, column: 13, scope: !3600, inlinedAt: !3621)
!3627 = !DILocation(line: 196, column: 7, scope: !3588, inlinedAt: !3621)
!3628 = !DILocation(line: 197, column: 5, scope: !3600, inlinedAt: !3621)
!3629 = !DILocation(line: 198, column: 5, scope: !3588, inlinedAt: !3621)
!3630 = !DILocation(line: 198, column: 11, scope: !3588, inlinedAt: !3621)
!3631 = !DILocation(line: 966, column: 10, scope: !3608)
!3632 = !DILocation(line: 967, column: 1, scope: !3608)
!3633 = !DILocation(line: 966, column: 3, scope: !3608)
!3634 = distinct !DISubprogram(name: "quotearg_style", scope: !267, file: !267, line: 970, type: !3635, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!35, !269, !37}
!3637 = !{!3638, !3639}
!3638 = !DILocalVariable(name: "s", arg: 1, scope: !3634, file: !267, line: 970, type: !269)
!3639 = !DILocalVariable(name: "arg", arg: 2, scope: !3634, file: !267, line: 970, type: !37)
!3640 = !DILocation(line: 195, column: 26, scope: !3588, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 957, column: 36, scope: !3576, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 972, column: 10, scope: !3634)
!3643 = !DILocation(line: 957, column: 32, scope: !3576, inlinedAt: !3642)
!3644 = !DILocation(line: 0, scope: !3634)
!3645 = !DILocation(line: 0, scope: !3576, inlinedAt: !3642)
!3646 = !DILocation(line: 957, column: 3, scope: !3576, inlinedAt: !3642)
!3647 = !DILocation(line: 0, scope: !3588, inlinedAt: !3641)
!3648 = !{!3649}
!3649 = distinct !{!3649, !3650, !"quoting_options_from_style: argument 0"}
!3650 = distinct !{!3650, !"quoting_options_from_style"}
!3651 = !DILocation(line: 196, column: 13, scope: !3600, inlinedAt: !3641)
!3652 = !DILocation(line: 196, column: 7, scope: !3588, inlinedAt: !3641)
!3653 = !DILocation(line: 197, column: 5, scope: !3600, inlinedAt: !3641)
!3654 = !DILocation(line: 198, column: 5, scope: !3588, inlinedAt: !3641)
!3655 = !DILocation(line: 198, column: 11, scope: !3588, inlinedAt: !3641)
!3656 = !DILocation(line: 958, column: 10, scope: !3576, inlinedAt: !3642)
!3657 = !DILocation(line: 959, column: 1, scope: !3576, inlinedAt: !3642)
!3658 = !DILocation(line: 972, column: 3, scope: !3634)
!3659 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !267, file: !267, line: 976, type: !3660, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!35, !269, !37, !94}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "s", arg: 1, scope: !3659, file: !267, line: 976, type: !269)
!3664 = !DILocalVariable(name: "arg", arg: 2, scope: !3659, file: !267, line: 976, type: !37)
!3665 = !DILocalVariable(name: "argsize", arg: 3, scope: !3659, file: !267, line: 976, type: !94)
!3666 = !DILocation(line: 195, column: 26, scope: !3588, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 965, column: 36, scope: !3608, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 978, column: 10, scope: !3659)
!3669 = !DILocation(line: 965, column: 32, scope: !3608, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !3659)
!3671 = !DILocation(line: 0, scope: !3608, inlinedAt: !3668)
!3672 = !DILocation(line: 965, column: 3, scope: !3608, inlinedAt: !3668)
!3673 = !DILocation(line: 0, scope: !3588, inlinedAt: !3667)
!3674 = !{!3675}
!3675 = distinct !{!3675, !3676, !"quoting_options_from_style: argument 0"}
!3676 = distinct !{!3676, !"quoting_options_from_style"}
!3677 = !DILocation(line: 196, column: 13, scope: !3600, inlinedAt: !3667)
!3678 = !DILocation(line: 196, column: 7, scope: !3588, inlinedAt: !3667)
!3679 = !DILocation(line: 197, column: 5, scope: !3600, inlinedAt: !3667)
!3680 = !DILocation(line: 198, column: 5, scope: !3588, inlinedAt: !3667)
!3681 = !DILocation(line: 198, column: 11, scope: !3588, inlinedAt: !3667)
!3682 = !DILocation(line: 966, column: 10, scope: !3608, inlinedAt: !3668)
!3683 = !DILocation(line: 967, column: 1, scope: !3608, inlinedAt: !3668)
!3684 = !DILocation(line: 978, column: 3, scope: !3659)
!3685 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !267, file: !267, line: 982, type: !3686, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!35, !37, !94, !36}
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "arg", arg: 1, scope: !3685, file: !267, line: 982, type: !37)
!3690 = !DILocalVariable(name: "argsize", arg: 2, scope: !3685, file: !267, line: 982, type: !94)
!3691 = !DILocalVariable(name: "ch", arg: 3, scope: !3685, file: !267, line: 982, type: !36)
!3692 = !DILocalVariable(name: "options", scope: !3685, file: !267, line: 984, type: !300)
!3693 = !DILocation(line: 0, scope: !3685)
!3694 = !DILocation(line: 984, column: 3, scope: !3685)
!3695 = !DILocation(line: 984, column: 26, scope: !3685)
!3696 = !DILocation(line: 985, column: 13, scope: !3685)
!3697 = !{i64 0, i64 4, !1177, i64 4, i64 4, !1141, i64 8, i64 32, !1177, i64 40, i64 8, !1069, i64 48, i64 8, !1069}
!3698 = !DILocation(line: 0, scope: !2522, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 986, column: 3, scope: !3685)
!3700 = !DILocation(line: 156, column: 62, scope: !2522, inlinedAt: !3699)
!3701 = !DILocation(line: 156, column: 57, scope: !2522, inlinedAt: !3699)
!3702 = !DILocation(line: 157, column: 15, scope: !2522, inlinedAt: !3699)
!3703 = !DILocation(line: 158, column: 12, scope: !2522, inlinedAt: !3699)
!3704 = !DILocation(line: 158, column: 15, scope: !2522, inlinedAt: !3699)
!3705 = !DILocation(line: 158, column: 25, scope: !2522, inlinedAt: !3699)
!3706 = !DILocation(line: 159, column: 18, scope: !2522, inlinedAt: !3699)
!3707 = !DILocation(line: 159, column: 23, scope: !2522, inlinedAt: !3699)
!3708 = !DILocation(line: 159, column: 6, scope: !2522, inlinedAt: !3699)
!3709 = !DILocation(line: 987, column: 10, scope: !3685)
!3710 = !DILocation(line: 988, column: 1, scope: !3685)
!3711 = !DILocation(line: 987, column: 3, scope: !3685)
!3712 = distinct !DISubprogram(name: "quotearg_char", scope: !267, file: !267, line: 991, type: !3713, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!35, !37, !36}
!3715 = !{!3716, !3717}
!3716 = !DILocalVariable(name: "arg", arg: 1, scope: !3712, file: !267, line: 991, type: !37)
!3717 = !DILocalVariable(name: "ch", arg: 2, scope: !3712, file: !267, line: 991, type: !36)
!3718 = !DILocation(line: 984, column: 26, scope: !3685, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 993, column: 10, scope: !3712)
!3720 = !DILocation(line: 0, scope: !3712)
!3721 = !DILocation(line: 0, scope: !3685, inlinedAt: !3719)
!3722 = !DILocation(line: 984, column: 3, scope: !3685, inlinedAt: !3719)
!3723 = !DILocation(line: 985, column: 13, scope: !3685, inlinedAt: !3719)
!3724 = !DILocation(line: 0, scope: !2522, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 986, column: 3, scope: !3685, inlinedAt: !3719)
!3726 = !DILocation(line: 156, column: 62, scope: !2522, inlinedAt: !3725)
!3727 = !DILocation(line: 156, column: 57, scope: !2522, inlinedAt: !3725)
!3728 = !DILocation(line: 157, column: 15, scope: !2522, inlinedAt: !3725)
!3729 = !DILocation(line: 158, column: 12, scope: !2522, inlinedAt: !3725)
!3730 = !DILocation(line: 158, column: 15, scope: !2522, inlinedAt: !3725)
!3731 = !DILocation(line: 158, column: 25, scope: !2522, inlinedAt: !3725)
!3732 = !DILocation(line: 159, column: 18, scope: !2522, inlinedAt: !3725)
!3733 = !DILocation(line: 159, column: 23, scope: !2522, inlinedAt: !3725)
!3734 = !DILocation(line: 159, column: 6, scope: !2522, inlinedAt: !3725)
!3735 = !DILocation(line: 987, column: 10, scope: !3685, inlinedAt: !3719)
!3736 = !DILocation(line: 988, column: 1, scope: !3685, inlinedAt: !3719)
!3737 = !DILocation(line: 993, column: 3, scope: !3712)
!3738 = distinct !DISubprogram(name: "quotearg_colon", scope: !267, file: !267, line: 997, type: !114, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3739)
!3739 = !{!3740}
!3740 = !DILocalVariable(name: "arg", arg: 1, scope: !3738, file: !267, line: 997, type: !37)
!3741 = !DILocation(line: 984, column: 26, scope: !3685, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 993, column: 10, scope: !3712, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 999, column: 10, scope: !3738)
!3744 = !DILocation(line: 0, scope: !3738)
!3745 = !DILocation(line: 0, scope: !3712, inlinedAt: !3743)
!3746 = !DILocation(line: 0, scope: !3685, inlinedAt: !3742)
!3747 = !DILocation(line: 984, column: 3, scope: !3685, inlinedAt: !3742)
!3748 = !DILocation(line: 985, column: 13, scope: !3685, inlinedAt: !3742)
!3749 = !DILocation(line: 0, scope: !2522, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 986, column: 3, scope: !3685, inlinedAt: !3742)
!3751 = !DILocation(line: 156, column: 57, scope: !2522, inlinedAt: !3750)
!3752 = !DILocation(line: 158, column: 12, scope: !2522, inlinedAt: !3750)
!3753 = !DILocation(line: 159, column: 6, scope: !2522, inlinedAt: !3750)
!3754 = !DILocation(line: 987, column: 10, scope: !3685, inlinedAt: !3742)
!3755 = !DILocation(line: 988, column: 1, scope: !3685, inlinedAt: !3742)
!3756 = !DILocation(line: 999, column: 3, scope: !3738)
!3757 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !267, file: !267, line: 1003, type: !3566, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3758)
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "arg", arg: 1, scope: !3757, file: !267, line: 1003, type: !37)
!3760 = !DILocalVariable(name: "argsize", arg: 2, scope: !3757, file: !267, line: 1003, type: !94)
!3761 = !DILocation(line: 984, column: 26, scope: !3685, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 1005, column: 10, scope: !3757)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 0, scope: !3685, inlinedAt: !3762)
!3765 = !DILocation(line: 984, column: 3, scope: !3685, inlinedAt: !3762)
!3766 = !DILocation(line: 985, column: 13, scope: !3685, inlinedAt: !3762)
!3767 = !DILocation(line: 0, scope: !2522, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 986, column: 3, scope: !3685, inlinedAt: !3762)
!3769 = !DILocation(line: 156, column: 57, scope: !2522, inlinedAt: !3768)
!3770 = !DILocation(line: 158, column: 12, scope: !2522, inlinedAt: !3768)
!3771 = !DILocation(line: 159, column: 6, scope: !2522, inlinedAt: !3768)
!3772 = !DILocation(line: 987, column: 10, scope: !3685, inlinedAt: !3762)
!3773 = !DILocation(line: 988, column: 1, scope: !3685, inlinedAt: !3762)
!3774 = !DILocation(line: 1005, column: 3, scope: !3757)
!3775 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !267, file: !267, line: 1009, type: !3577, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3776)
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "n", arg: 1, scope: !3775, file: !267, line: 1009, type: !39)
!3778 = !DILocalVariable(name: "s", arg: 2, scope: !3775, file: !267, line: 1009, type: !269)
!3779 = !DILocalVariable(name: "arg", arg: 3, scope: !3775, file: !267, line: 1009, type: !37)
!3780 = !DILocalVariable(name: "options", scope: !3775, file: !267, line: 1011, type: !300)
!3781 = !DILocation(line: 195, column: 26, scope: !3588, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 1012, column: 13, scope: !3775)
!3783 = !DILocation(line: 0, scope: !3775)
!3784 = !DILocation(line: 1011, column: 3, scope: !3775)
!3785 = !DILocation(line: 1011, column: 26, scope: !3775)
!3786 = !DILocation(line: 1012, column: 13, scope: !3775)
!3787 = !DILocation(line: 0, scope: !3588, inlinedAt: !3782)
!3788 = !{!3789}
!3789 = distinct !{!3789, !3790, !"quoting_options_from_style: argument 0"}
!3790 = distinct !{!3790, !"quoting_options_from_style"}
!3791 = !DILocation(line: 196, column: 13, scope: !3600, inlinedAt: !3782)
!3792 = !DILocation(line: 196, column: 7, scope: !3588, inlinedAt: !3782)
!3793 = !DILocation(line: 197, column: 5, scope: !3600, inlinedAt: !3782)
!3794 = !DILocation(line: 0, scope: !2522, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1013, column: 3, scope: !3775)
!3796 = !DILocation(line: 156, column: 57, scope: !2522, inlinedAt: !3795)
!3797 = !DILocation(line: 158, column: 12, scope: !2522, inlinedAt: !3795)
!3798 = !DILocation(line: 159, column: 6, scope: !2522, inlinedAt: !3795)
!3799 = !DILocation(line: 1014, column: 10, scope: !3775)
!3800 = !DILocation(line: 1015, column: 1, scope: !3775)
!3801 = !DILocation(line: 1014, column: 3, scope: !3775)
!3802 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !267, file: !267, line: 1018, type: !3803, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!35, !39, !37, !37, !37}
!3805 = !{!3806, !3807, !3808, !3809}
!3806 = !DILocalVariable(name: "n", arg: 1, scope: !3802, file: !267, line: 1018, type: !39)
!3807 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3802, file: !267, line: 1018, type: !37)
!3808 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3802, file: !267, line: 1019, type: !37)
!3809 = !DILocalVariable(name: "arg", arg: 4, scope: !3802, file: !267, line: 1019, type: !37)
!3810 = !DILocalVariable(name: "o", scope: !3811, file: !267, line: 1030, type: !300)
!3811 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !267, file: !267, line: 1026, type: !3812, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!35, !39, !37, !37, !37, !94}
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3810}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !267, line: 1026, type: !39)
!3816 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3811, file: !267, line: 1026, type: !37)
!3817 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3811, file: !267, line: 1027, type: !37)
!3818 = !DILocalVariable(name: "arg", arg: 4, scope: !3811, file: !267, line: 1028, type: !37)
!3819 = !DILocalVariable(name: "argsize", arg: 5, scope: !3811, file: !267, line: 1028, type: !94)
!3820 = !DILocation(line: 1030, column: 26, scope: !3811, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 1021, column: 10, scope: !3802)
!3822 = !DILocation(line: 0, scope: !3802)
!3823 = !DILocation(line: 0, scope: !3811, inlinedAt: !3821)
!3824 = !DILocation(line: 1030, column: 3, scope: !3811, inlinedAt: !3821)
!3825 = !DILocation(line: 1030, column: 30, scope: !3811, inlinedAt: !3821)
!3826 = !DILocation(line: 0, scope: !2563, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 1031, column: 3, scope: !3811, inlinedAt: !3821)
!3828 = !DILocation(line: 184, column: 6, scope: !2563, inlinedAt: !3827)
!3829 = !DILocation(line: 184, column: 12, scope: !2563, inlinedAt: !3827)
!3830 = !DILocation(line: 185, column: 8, scope: !2577, inlinedAt: !3827)
!3831 = !DILocation(line: 185, column: 23, scope: !2577, inlinedAt: !3827)
!3832 = !DILocation(line: 185, column: 19, scope: !2577, inlinedAt: !3827)
!3833 = !DILocation(line: 186, column: 5, scope: !2577, inlinedAt: !3827)
!3834 = !DILocation(line: 187, column: 6, scope: !2563, inlinedAt: !3827)
!3835 = !DILocation(line: 187, column: 17, scope: !2563, inlinedAt: !3827)
!3836 = !DILocation(line: 188, column: 6, scope: !2563, inlinedAt: !3827)
!3837 = !DILocation(line: 188, column: 18, scope: !2563, inlinedAt: !3827)
!3838 = !DILocation(line: 1032, column: 10, scope: !3811, inlinedAt: !3821)
!3839 = !DILocation(line: 1033, column: 1, scope: !3811, inlinedAt: !3821)
!3840 = !DILocation(line: 1021, column: 3, scope: !3802)
!3841 = !DILocation(line: 0, scope: !3811)
!3842 = !DILocation(line: 1030, column: 3, scope: !3811)
!3843 = !DILocation(line: 1030, column: 26, scope: !3811)
!3844 = !DILocation(line: 1030, column: 30, scope: !3811)
!3845 = !DILocation(line: 0, scope: !2563, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 1031, column: 3, scope: !3811)
!3847 = !DILocation(line: 184, column: 6, scope: !2563, inlinedAt: !3846)
!3848 = !DILocation(line: 184, column: 12, scope: !2563, inlinedAt: !3846)
!3849 = !DILocation(line: 185, column: 8, scope: !2577, inlinedAt: !3846)
!3850 = !DILocation(line: 185, column: 23, scope: !2577, inlinedAt: !3846)
!3851 = !DILocation(line: 185, column: 19, scope: !2577, inlinedAt: !3846)
!3852 = !DILocation(line: 186, column: 5, scope: !2577, inlinedAt: !3846)
!3853 = !DILocation(line: 187, column: 6, scope: !2563, inlinedAt: !3846)
!3854 = !DILocation(line: 187, column: 17, scope: !2563, inlinedAt: !3846)
!3855 = !DILocation(line: 188, column: 6, scope: !2563, inlinedAt: !3846)
!3856 = !DILocation(line: 188, column: 18, scope: !2563, inlinedAt: !3846)
!3857 = !DILocation(line: 1032, column: 10, scope: !3811)
!3858 = !DILocation(line: 1033, column: 1, scope: !3811)
!3859 = !DILocation(line: 1032, column: 3, scope: !3811)
!3860 = distinct !DISubprogram(name: "quotearg_custom", scope: !267, file: !267, line: 1036, type: !3861, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!35, !37, !37, !37}
!3863 = !{!3864, !3865, !3866}
!3864 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3860, file: !267, line: 1036, type: !37)
!3865 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3860, file: !267, line: 1036, type: !37)
!3866 = !DILocalVariable(name: "arg", arg: 3, scope: !3860, file: !267, line: 1037, type: !37)
!3867 = !DILocation(line: 1030, column: 26, scope: !3811, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 1021, column: 10, scope: !3802, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 1039, column: 10, scope: !3860)
!3870 = !DILocation(line: 0, scope: !3860)
!3871 = !DILocation(line: 0, scope: !3802, inlinedAt: !3869)
!3872 = !DILocation(line: 0, scope: !3811, inlinedAt: !3868)
!3873 = !DILocation(line: 1030, column: 3, scope: !3811, inlinedAt: !3868)
!3874 = !DILocation(line: 1030, column: 30, scope: !3811, inlinedAt: !3868)
!3875 = !DILocation(line: 0, scope: !2563, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 1031, column: 3, scope: !3811, inlinedAt: !3868)
!3877 = !DILocation(line: 184, column: 6, scope: !2563, inlinedAt: !3876)
!3878 = !DILocation(line: 184, column: 12, scope: !2563, inlinedAt: !3876)
!3879 = !DILocation(line: 185, column: 8, scope: !2577, inlinedAt: !3876)
!3880 = !DILocation(line: 185, column: 23, scope: !2577, inlinedAt: !3876)
!3881 = !DILocation(line: 185, column: 19, scope: !2577, inlinedAt: !3876)
!3882 = !DILocation(line: 186, column: 5, scope: !2577, inlinedAt: !3876)
!3883 = !DILocation(line: 187, column: 6, scope: !2563, inlinedAt: !3876)
!3884 = !DILocation(line: 187, column: 17, scope: !2563, inlinedAt: !3876)
!3885 = !DILocation(line: 188, column: 6, scope: !2563, inlinedAt: !3876)
!3886 = !DILocation(line: 188, column: 18, scope: !2563, inlinedAt: !3876)
!3887 = !DILocation(line: 1032, column: 10, scope: !3811, inlinedAt: !3868)
!3888 = !DILocation(line: 1033, column: 1, scope: !3811, inlinedAt: !3868)
!3889 = !DILocation(line: 1039, column: 3, scope: !3860)
!3890 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !267, file: !267, line: 1043, type: !3891, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!35, !37, !37, !37, !94}
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3890, file: !267, line: 1043, type: !37)
!3895 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3890, file: !267, line: 1043, type: !37)
!3896 = !DILocalVariable(name: "arg", arg: 3, scope: !3890, file: !267, line: 1044, type: !37)
!3897 = !DILocalVariable(name: "argsize", arg: 4, scope: !3890, file: !267, line: 1044, type: !94)
!3898 = !DILocation(line: 1030, column: 26, scope: !3811, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1046, column: 10, scope: !3890)
!3900 = !DILocation(line: 0, scope: !3890)
!3901 = !DILocation(line: 0, scope: !3811, inlinedAt: !3899)
!3902 = !DILocation(line: 1030, column: 3, scope: !3811, inlinedAt: !3899)
!3903 = !DILocation(line: 1030, column: 30, scope: !3811, inlinedAt: !3899)
!3904 = !DILocation(line: 0, scope: !2563, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 1031, column: 3, scope: !3811, inlinedAt: !3899)
!3906 = !DILocation(line: 184, column: 6, scope: !2563, inlinedAt: !3905)
!3907 = !DILocation(line: 184, column: 12, scope: !2563, inlinedAt: !3905)
!3908 = !DILocation(line: 185, column: 8, scope: !2577, inlinedAt: !3905)
!3909 = !DILocation(line: 185, column: 23, scope: !2577, inlinedAt: !3905)
!3910 = !DILocation(line: 185, column: 19, scope: !2577, inlinedAt: !3905)
!3911 = !DILocation(line: 186, column: 5, scope: !2577, inlinedAt: !3905)
!3912 = !DILocation(line: 187, column: 6, scope: !2563, inlinedAt: !3905)
!3913 = !DILocation(line: 187, column: 17, scope: !2563, inlinedAt: !3905)
!3914 = !DILocation(line: 188, column: 6, scope: !2563, inlinedAt: !3905)
!3915 = !DILocation(line: 188, column: 18, scope: !2563, inlinedAt: !3905)
!3916 = !DILocation(line: 1032, column: 10, scope: !3811, inlinedAt: !3899)
!3917 = !DILocation(line: 1033, column: 1, scope: !3811, inlinedAt: !3899)
!3918 = !DILocation(line: 1046, column: 3, scope: !3890)
!3919 = distinct !DISubprogram(name: "quote_n_mem", scope: !267, file: !267, line: 1061, type: !3920, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!37, !39, !37, !94}
!3922 = !{!3923, !3924, !3925}
!3923 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !267, line: 1061, type: !39)
!3924 = !DILocalVariable(name: "arg", arg: 2, scope: !3919, file: !267, line: 1061, type: !37)
!3925 = !DILocalVariable(name: "argsize", arg: 3, scope: !3919, file: !267, line: 1061, type: !94)
!3926 = !DILocation(line: 0, scope: !3919)
!3927 = !DILocation(line: 1063, column: 10, scope: !3919)
!3928 = !DILocation(line: 1063, column: 3, scope: !3919)
!3929 = distinct !DISubprogram(name: "quote_mem", scope: !267, file: !267, line: 1067, type: !3930, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!37, !37, !94}
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "arg", arg: 1, scope: !3929, file: !267, line: 1067, type: !37)
!3934 = !DILocalVariable(name: "argsize", arg: 2, scope: !3929, file: !267, line: 1067, type: !94)
!3935 = !DILocation(line: 0, scope: !3929)
!3936 = !DILocation(line: 0, scope: !3919, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 1069, column: 10, scope: !3929)
!3938 = !DILocation(line: 1063, column: 10, scope: !3919, inlinedAt: !3937)
!3939 = !DILocation(line: 1069, column: 3, scope: !3929)
!3940 = distinct !DISubprogram(name: "quote_n", scope: !267, file: !267, line: 1073, type: !147, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3941)
!3941 = !{!3942, !3943}
!3942 = !DILocalVariable(name: "n", arg: 1, scope: !3940, file: !267, line: 1073, type: !39)
!3943 = !DILocalVariable(name: "arg", arg: 2, scope: !3940, file: !267, line: 1073, type: !37)
!3944 = !DILocation(line: 0, scope: !3940)
!3945 = !DILocation(line: 0, scope: !3919, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 1075, column: 10, scope: !3940)
!3947 = !DILocation(line: 1063, column: 10, scope: !3919, inlinedAt: !3946)
!3948 = !DILocation(line: 1075, column: 3, scope: !3940)
!3949 = distinct !DISubprogram(name: "quote", scope: !267, file: !267, line: 1079, type: !125, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3950)
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "arg", arg: 1, scope: !3949, file: !267, line: 1079, type: !37)
!3952 = !DILocation(line: 0, scope: !3949)
!3953 = !DILocation(line: 0, scope: !3940, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 1081, column: 10, scope: !3949)
!3955 = !DILocation(line: 0, scope: !3919, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 1075, column: 10, scope: !3940, inlinedAt: !3954)
!3957 = !DILocation(line: 1063, column: 10, scope: !3919, inlinedAt: !3956)
!3958 = !DILocation(line: 1081, column: 3, scope: !3949)
!3959 = distinct !DISubprogram(name: "strintcmp", scope: !395, file: !395, line: 29, type: !144, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3960)
!3960 = !{!3961, !3962}
!3961 = !DILocalVariable(name: "a", arg: 1, scope: !3959, file: !395, line: 29, type: !37)
!3962 = !DILocalVariable(name: "b", arg: 2, scope: !3959, file: !395, line: 29, type: !37)
!3963 = !DILocation(line: 0, scope: !3959)
!3964 = !DILocalVariable(name: "a", arg: 1, scope: !3965, file: !3966, line: 114, type: !37)
!3965 = distinct !DISubprogram(name: "numcompare", scope: !3966, file: !3966, line: 114, type: !3967, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3969)
!3966 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!39, !37, !37, !39, !39}
!3969 = !{!3964, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3970 = !DILocalVariable(name: "b", arg: 2, scope: !3965, file: !3966, line: 114, type: !37)
!3971 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3965, file: !3966, line: 115, type: !39)
!3972 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3965, file: !3966, line: 115, type: !39)
!3973 = !DILocalVariable(name: "tmpa", scope: !3965, file: !3966, line: 117, type: !2530)
!3974 = !DILocalVariable(name: "tmpb", scope: !3965, file: !3966, line: 118, type: !2530)
!3975 = !DILocalVariable(name: "tmp", scope: !3965, file: !3966, line: 119, type: !39)
!3976 = !DILocalVariable(name: "log_a", scope: !3965, file: !3966, line: 120, type: !94)
!3977 = !DILocalVariable(name: "log_b", scope: !3965, file: !3966, line: 121, type: !94)
!3978 = !DILocation(line: 0, scope: !3965, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 31, column: 10, scope: !3959)
!3980 = !DILocation(line: 117, column: 24, scope: !3965, inlinedAt: !3979)
!3981 = !DILocation(line: 118, column: 24, scope: !3965, inlinedAt: !3979)
!3982 = !DILocation(line: 123, column: 12, scope: !3983, inlinedAt: !3979)
!3983 = distinct !DILexicalBlock(scope: !3965, file: !3966, line: 123, column: 7)
!3984 = !DILocation(line: 123, column: 7, scope: !3965, inlinedAt: !3979)
!3985 = !DILocation(line: 126, column: 17, scope: !3986, inlinedAt: !3979)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !3966, line: 124, column: 5)
!3987 = !DILocation(line: 126, column: 16, scope: !3986, inlinedAt: !3979)
!3988 = !DILocation(line: 127, column: 19, scope: !3986, inlinedAt: !3979)
!3989 = !DILocation(line: 126, column: 9, scope: !3986, inlinedAt: !3979)
!3990 = distinct !{!3990, !3991, !3992}
!3991 = !DILocation(line: 125, column: 7, scope: !3986, inlinedAt: !3979)
!3992 = !DILocation(line: 127, column: 59, scope: !3986, inlinedAt: !3979)
!3993 = !DILocation(line: 128, column: 16, scope: !3994, inlinedAt: !3979)
!3994 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 128, column: 11)
!3995 = !DILocation(line: 128, column: 11, scope: !3986, inlinedAt: !3979)
!3996 = !DILocation(line: 134, column: 15, scope: !3997, inlinedAt: !3979)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !3966, line: 134, column: 15)
!3998 = distinct !DILexicalBlock(scope: !3994, file: !3966, line: 129, column: 9)
!3999 = !DILocation(line: 134, column: 15, scope: !3998, inlinedAt: !3979)
!4000 = !DILocation(line: 136, column: 23, scope: !3998, inlinedAt: !3979)
!4001 = !DILocation(line: 136, column: 11, scope: !3998, inlinedAt: !3979)
!4002 = !DILocation(line: 137, column: 21, scope: !3998, inlinedAt: !3979)
!4003 = !DILocation(line: 137, column: 20, scope: !3998, inlinedAt: !3979)
!4004 = distinct !{!4004, !4001, !4005}
!4005 = !DILocation(line: 137, column: 23, scope: !3998, inlinedAt: !3979)
!4006 = !DILocation(line: 142, column: 20, scope: !3998, inlinedAt: !3979)
!4007 = !DILocation(line: 142, column: 18, scope: !3998, inlinedAt: !3979)
!4008 = !DILocation(line: 142, column: 11, scope: !3998, inlinedAt: !3979)
!4009 = !DILocation(line: 145, column: 17, scope: !3986, inlinedAt: !3979)
!4010 = !DILocation(line: 145, column: 16, scope: !3986, inlinedAt: !3979)
!4011 = !DILocation(line: 146, column: 19, scope: !3986, inlinedAt: !3979)
!4012 = !DILocation(line: 145, column: 9, scope: !3986, inlinedAt: !3979)
!4013 = distinct !{!4013, !4014, !4015}
!4014 = !DILocation(line: 144, column: 7, scope: !3986, inlinedAt: !3979)
!4015 = !DILocation(line: 146, column: 59, scope: !3986, inlinedAt: !3979)
!4016 = !DILocation(line: 148, column: 14, scope: !3986, inlinedAt: !3979)
!4017 = !DILocation(line: 148, column: 19, scope: !3986, inlinedAt: !3979)
!4018 = !DILocation(line: 148, column: 27, scope: !3986, inlinedAt: !3979)
!4019 = !DILocation(line: 148, column: 7, scope: !3986, inlinedAt: !3979)
!4020 = !DILocation(line: 151, column: 21, scope: !4021, inlinedAt: !3979)
!4021 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 149, column: 9)
!4022 = !DILocation(line: 151, column: 20, scope: !4021, inlinedAt: !3979)
!4023 = !DILocation(line: 154, column: 21, scope: !4021, inlinedAt: !3979)
!4024 = !DILocation(line: 154, column: 20, scope: !4021, inlinedAt: !3979)
!4025 = !DILocation(line: 148, column: 22, scope: !3986, inlinedAt: !3979)
!4026 = !DILocation(line: 164, column: 23, scope: !4027, inlinedAt: !3979)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !3966, line: 164, column: 7)
!4028 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 164, column: 7)
!4029 = !DILocation(line: 0, scope: !3986, inlinedAt: !3979)
!4030 = !DILocation(line: 162, column: 18, scope: !3986, inlinedAt: !3979)
!4031 = !DILocation(line: 164, column: 7, scope: !4028, inlinedAt: !3979)
!4032 = !DILocation(line: 0, scope: !4028, inlinedAt: !3979)
!4033 = !DILocation(line: 169, column: 23, scope: !4034, inlinedAt: !3979)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3966, line: 169, column: 7)
!4035 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 169, column: 7)
!4036 = !DILocation(line: 169, column: 7, scope: !4035, inlinedAt: !3979)
!4037 = !DILocation(line: 166, column: 19, scope: !4027, inlinedAt: !3979)
!4038 = !DILocation(line: 166, column: 18, scope: !4027, inlinedAt: !3979)
!4039 = !DILocation(line: 164, column: 39, scope: !4027, inlinedAt: !3979)
!4040 = distinct !{!4040, !4031, !4041}
!4041 = !DILocation(line: 167, column: 37, scope: !4028, inlinedAt: !3979)
!4042 = !DILocation(line: 171, column: 19, scope: !4034, inlinedAt: !3979)
!4043 = !DILocation(line: 171, column: 18, scope: !4034, inlinedAt: !3979)
!4044 = !DILocation(line: 169, column: 39, scope: !4034, inlinedAt: !3979)
!4045 = distinct !{!4045, !4036, !4046}
!4046 = !DILocation(line: 172, column: 37, scope: !4035, inlinedAt: !3979)
!4047 = !DILocation(line: 0, scope: !4035, inlinedAt: !3979)
!4048 = !DILocation(line: 174, column: 17, scope: !4049, inlinedAt: !3979)
!4049 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 174, column: 11)
!4050 = !DILocation(line: 174, column: 11, scope: !3986, inlinedAt: !3979)
!4051 = !DILocation(line: 175, column: 22, scope: !4049, inlinedAt: !3979)
!4052 = !DILocation(line: 175, column: 16, scope: !4049, inlinedAt: !3979)
!4053 = !DILocation(line: 175, column: 9, scope: !4049, inlinedAt: !3979)
!4054 = !DILocation(line: 177, column: 12, scope: !4055, inlinedAt: !3979)
!4055 = distinct !DILexicalBlock(scope: !3986, file: !3966, line: 177, column: 11)
!4056 = !DILocation(line: 182, column: 17, scope: !4057, inlinedAt: !3979)
!4057 = distinct !DILexicalBlock(scope: !3983, file: !3966, line: 182, column: 12)
!4058 = !DILocation(line: 182, column: 12, scope: !3983, inlinedAt: !3979)
!4059 = !DILocation(line: 203, column: 19, scope: !4060, inlinedAt: !3979)
!4060 = distinct !DILexicalBlock(scope: !4057, file: !3966, line: 202, column: 5)
!4061 = !DILocation(line: 203, column: 7, scope: !4060, inlinedAt: !3979)
!4062 = !DILocation(line: 185, column: 17, scope: !4063, inlinedAt: !3979)
!4063 = distinct !DILexicalBlock(scope: !4057, file: !3966, line: 183, column: 5)
!4064 = !DILocation(line: 185, column: 16, scope: !4063, inlinedAt: !3979)
!4065 = !DILocation(line: 186, column: 19, scope: !4063, inlinedAt: !3979)
!4066 = !DILocation(line: 185, column: 9, scope: !4063, inlinedAt: !3979)
!4067 = distinct !{!4067, !4068, !4069}
!4068 = !DILocation(line: 184, column: 7, scope: !4063, inlinedAt: !3979)
!4069 = !DILocation(line: 186, column: 59, scope: !4063, inlinedAt: !3979)
!4070 = !DILocation(line: 191, column: 11, scope: !4071, inlinedAt: !3979)
!4071 = distinct !DILexicalBlock(scope: !4063, file: !3966, line: 191, column: 11)
!4072 = !DILocation(line: 191, column: 11, scope: !4063, inlinedAt: !3979)
!4073 = !DILocation(line: 193, column: 19, scope: !4063, inlinedAt: !3979)
!4074 = !DILocation(line: 193, column: 7, scope: !4063, inlinedAt: !3979)
!4075 = !DILocation(line: 194, column: 17, scope: !4063, inlinedAt: !3979)
!4076 = !DILocation(line: 194, column: 16, scope: !4063, inlinedAt: !3979)
!4077 = distinct !{!4077, !4074, !4078}
!4078 = !DILocation(line: 194, column: 19, scope: !4063, inlinedAt: !3979)
!4079 = !DILocation(line: 199, column: 14, scope: !4063, inlinedAt: !3979)
!4080 = !DILocation(line: 199, column: 7, scope: !4063, inlinedAt: !3979)
!4081 = !DILocation(line: 205, column: 19, scope: !4060, inlinedAt: !3979)
!4082 = !DILocation(line: 205, column: 7, scope: !4060, inlinedAt: !3979)
!4083 = !DILocation(line: 204, column: 17, scope: !4060, inlinedAt: !3979)
!4084 = !DILocation(line: 204, column: 16, scope: !4060, inlinedAt: !3979)
!4085 = distinct !{!4085, !4061, !4086}
!4086 = !DILocation(line: 204, column: 19, scope: !4060, inlinedAt: !3979)
!4087 = !DILocation(line: 208, column: 14, scope: !4060, inlinedAt: !3979)
!4088 = !DILocation(line: 208, column: 19, scope: !4060, inlinedAt: !3979)
!4089 = !DILocation(line: 208, column: 27, scope: !4060, inlinedAt: !3979)
!4090 = !DILocation(line: 208, column: 7, scope: !4060, inlinedAt: !3979)
!4091 = !DILocation(line: 206, column: 17, scope: !4060, inlinedAt: !3979)
!4092 = !DILocation(line: 206, column: 16, scope: !4060, inlinedAt: !3979)
!4093 = distinct !{!4093, !4082, !4094}
!4094 = !DILocation(line: 206, column: 19, scope: !4060, inlinedAt: !3979)
!4095 = !DILocation(line: 211, column: 21, scope: !4096, inlinedAt: !3979)
!4096 = distinct !DILexicalBlock(scope: !4060, file: !3966, line: 209, column: 9)
!4097 = !DILocation(line: 211, column: 20, scope: !4096, inlinedAt: !3979)
!4098 = !DILocation(line: 214, column: 21, scope: !4096, inlinedAt: !3979)
!4099 = !DILocation(line: 214, column: 20, scope: !4096, inlinedAt: !3979)
!4100 = !DILocation(line: 208, column: 22, scope: !4060, inlinedAt: !3979)
!4101 = !DILocation(line: 224, column: 23, scope: !4102, inlinedAt: !3979)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !3966, line: 224, column: 7)
!4103 = distinct !DILexicalBlock(scope: !4060, file: !3966, line: 224, column: 7)
!4104 = !DILocation(line: 222, column: 18, scope: !4060, inlinedAt: !3979)
!4105 = !DILocation(line: 224, column: 7, scope: !4103, inlinedAt: !3979)
!4106 = !DILocation(line: 0, scope: !4103, inlinedAt: !3979)
!4107 = !DILocation(line: 229, column: 23, scope: !4108, inlinedAt: !3979)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3966, line: 229, column: 7)
!4109 = distinct !DILexicalBlock(scope: !4060, file: !3966, line: 229, column: 7)
!4110 = !DILocation(line: 229, column: 7, scope: !4109, inlinedAt: !3979)
!4111 = !DILocation(line: 226, column: 19, scope: !4102, inlinedAt: !3979)
!4112 = !DILocation(line: 226, column: 18, scope: !4102, inlinedAt: !3979)
!4113 = !DILocation(line: 224, column: 39, scope: !4102, inlinedAt: !3979)
!4114 = distinct !{!4114, !4105, !4115}
!4115 = !DILocation(line: 227, column: 37, scope: !4103, inlinedAt: !3979)
!4116 = !DILocation(line: 231, column: 19, scope: !4108, inlinedAt: !3979)
!4117 = !DILocation(line: 231, column: 18, scope: !4108, inlinedAt: !3979)
!4118 = !DILocation(line: 229, column: 39, scope: !4108, inlinedAt: !3979)
!4119 = distinct !{!4119, !4110, !4120}
!4120 = !DILocation(line: 232, column: 37, scope: !4109, inlinedAt: !3979)
!4121 = !DILocation(line: 0, scope: !4109, inlinedAt: !3979)
!4122 = !DILocation(line: 234, column: 17, scope: !4123, inlinedAt: !3979)
!4123 = distinct !DILexicalBlock(scope: !4060, file: !3966, line: 234, column: 11)
!4124 = !DILocation(line: 234, column: 11, scope: !4060, inlinedAt: !3979)
!4125 = !DILocation(line: 235, column: 22, scope: !4123, inlinedAt: !3979)
!4126 = !DILocation(line: 235, column: 16, scope: !4123, inlinedAt: !3979)
!4127 = !DILocation(line: 235, column: 9, scope: !4123, inlinedAt: !3979)
!4128 = !DILocation(line: 237, column: 12, scope: !4129, inlinedAt: !3979)
!4129 = distinct !DILexicalBlock(scope: !4060, file: !3966, line: 237, column: 11)
!4130 = !DILocation(line: 0, scope: !4060, inlinedAt: !3979)
!4131 = !DILocation(line: 0, scope: !3983, inlinedAt: !3979)
!4132 = !DILocation(line: 31, column: 3, scope: !3959)
!4133 = distinct !DISubprogram(name: "verror", scope: !397, file: !397, line: 43, type: !4134, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !39, !39, !37, !402}
!4136 = !{!4137, !4138, !4139, !4140}
!4137 = !DILocalVariable(name: "status", arg: 1, scope: !4133, file: !397, line: 43, type: !39)
!4138 = !DILocalVariable(name: "errnum", arg: 2, scope: !4133, file: !397, line: 43, type: !39)
!4139 = !DILocalVariable(name: "format", arg: 3, scope: !4133, file: !397, line: 43, type: !37)
!4140 = !DILocalVariable(name: "args", arg: 4, scope: !4133, file: !397, line: 43, type: !402)
!4141 = !DILocation(line: 0, scope: !4133)
!4142 = !DILocation(line: 45, column: 3, scope: !4133)
!4143 = !DILocation(line: 46, column: 1, scope: !4133)
!4144 = distinct !DISubprogram(name: "verror_at_line", scope: !397, file: !397, line: 55, type: !400, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4145)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152}
!4146 = !DILocalVariable(name: "status", arg: 1, scope: !4144, file: !397, line: 55, type: !39)
!4147 = !DILocalVariable(name: "errnum", arg: 2, scope: !4144, file: !397, line: 55, type: !39)
!4148 = !DILocalVariable(name: "file", arg: 3, scope: !4144, file: !397, line: 55, type: !37)
!4149 = !DILocalVariable(name: "line_number", arg: 4, scope: !4144, file: !397, line: 56, type: !6)
!4150 = !DILocalVariable(name: "format", arg: 5, scope: !4144, file: !397, line: 56, type: !37)
!4151 = !DILocalVariable(name: "args", arg: 6, scope: !4144, file: !397, line: 56, type: !402)
!4152 = !DILocalVariable(name: "message", scope: !4144, file: !397, line: 58, type: !35)
!4153 = !DILocation(line: 0, scope: !4144)
!4154 = !DILocation(line: 58, column: 19, scope: !4144)
!4155 = !DILocation(line: 59, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4144, file: !397, line: 59, column: 7)
!4157 = !DILocation(line: 59, column: 7, scope: !4144)
!4158 = !DILocation(line: 64, column: 11, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !397, line: 64, column: 11)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !397, line: 60, column: 5)
!4161 = !DILocation(line: 64, column: 11, scope: !4160)
!4162 = !DILocation(line: 65, column: 9, scope: !4159)
!4163 = !DILocation(line: 67, column: 9, scope: !4159)
!4164 = !DILocation(line: 73, column: 17, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4156, file: !397, line: 70, column: 5)
!4166 = !DILocation(line: 73, column: 24, scope: !4165)
!4167 = !DILocation(line: 73, column: 7, scope: !4165)
!4168 = !DILocation(line: 74, column: 7, scope: !4165)
!4169 = !DILocation(line: 76, column: 3, scope: !4144)
!4170 = !DILocation(line: 77, column: 1, scope: !4144)
!4171 = distinct !DISubprogram(name: "xnmalloc", scope: !289, file: !289, line: 99, type: !4172, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!92, !94, !94}
!4174 = !{!4175, !4176}
!4175 = !DILocalVariable(name: "n", arg: 1, scope: !4171, file: !289, line: 99, type: !94)
!4176 = !DILocalVariable(name: "s", arg: 2, scope: !4171, file: !289, line: 99, type: !94)
!4177 = !DILocation(line: 0, scope: !4171)
!4178 = !DILocation(line: 101, column: 7, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4171, file: !289, line: 101, column: 7)
!4180 = !DILocation(line: 101, column: 7, scope: !4171)
!4181 = !DILocation(line: 102, column: 5, scope: !4179)
!4182 = !DILocation(line: 103, column: 21, scope: !4171)
!4183 = !DILocalVariable(name: "n", arg: 1, scope: !4184, file: !417, line: 39, type: !94)
!4184 = distinct !DISubprogram(name: "xmalloc", scope: !417, file: !417, line: 39, type: !4185, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!92, !94}
!4187 = !{!4183, !4188}
!4188 = !DILocalVariable(name: "p", scope: !4184, file: !417, line: 41, type: !92)
!4189 = !DILocation(line: 0, scope: !4184, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 103, column: 10, scope: !4171)
!4191 = !DILocation(line: 41, column: 13, scope: !4184, inlinedAt: !4190)
!4192 = !DILocation(line: 42, column: 8, scope: !4193, inlinedAt: !4190)
!4193 = distinct !DILexicalBlock(scope: !4184, file: !417, line: 42, column: 7)
!4194 = !DILocation(line: 42, column: 15, scope: !4193, inlinedAt: !4190)
!4195 = !DILocation(line: 42, column: 10, scope: !4193, inlinedAt: !4190)
!4196 = !DILocation(line: 43, column: 5, scope: !4193, inlinedAt: !4190)
!4197 = !DILocation(line: 103, column: 3, scope: !4171)
!4198 = !DILocation(line: 0, scope: !4184)
!4199 = !DILocation(line: 41, column: 13, scope: !4184)
!4200 = !DILocation(line: 42, column: 8, scope: !4193)
!4201 = !DILocation(line: 42, column: 15, scope: !4193)
!4202 = !DILocation(line: 42, column: 10, scope: !4193)
!4203 = !DILocation(line: 43, column: 5, scope: !4193)
!4204 = !DILocation(line: 44, column: 3, scope: !4184)
!4205 = distinct !DISubprogram(name: "xnrealloc", scope: !289, file: !289, line: 112, type: !4206, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!92, !92, !94, !94}
!4208 = !{!4209, !4210, !4211}
!4209 = !DILocalVariable(name: "p", arg: 1, scope: !4205, file: !289, line: 112, type: !92)
!4210 = !DILocalVariable(name: "n", arg: 2, scope: !4205, file: !289, line: 112, type: !94)
!4211 = !DILocalVariable(name: "s", arg: 3, scope: !4205, file: !289, line: 112, type: !94)
!4212 = !DILocation(line: 0, scope: !4205)
!4213 = !DILocation(line: 114, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4205, file: !289, line: 114, column: 7)
!4215 = !DILocation(line: 114, column: 7, scope: !4205)
!4216 = !DILocation(line: 115, column: 5, scope: !4214)
!4217 = !DILocation(line: 116, column: 25, scope: !4205)
!4218 = !DILocalVariable(name: "p", arg: 1, scope: !4219, file: !417, line: 51, type: !92)
!4219 = distinct !DISubprogram(name: "xrealloc", scope: !417, file: !417, line: 51, type: !4220, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!92, !92, !94}
!4222 = !{!4218, !4223}
!4223 = !DILocalVariable(name: "n", arg: 2, scope: !4219, file: !417, line: 51, type: !94)
!4224 = !DILocation(line: 0, scope: !4219, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 116, column: 10, scope: !4205)
!4226 = !DILocation(line: 53, column: 8, scope: !4227, inlinedAt: !4225)
!4227 = distinct !DILexicalBlock(scope: !4219, file: !417, line: 53, column: 7)
!4228 = !DILocation(line: 53, column: 13, scope: !4227, inlinedAt: !4225)
!4229 = !DILocation(line: 53, column: 10, scope: !4227, inlinedAt: !4225)
!4230 = !DILocation(line: 57, column: 7, scope: !4231, inlinedAt: !4225)
!4231 = distinct !DILexicalBlock(scope: !4227, file: !417, line: 54, column: 5)
!4232 = !DILocation(line: 58, column: 7, scope: !4231, inlinedAt: !4225)
!4233 = !DILocation(line: 61, column: 7, scope: !4219, inlinedAt: !4225)
!4234 = !DILocation(line: 62, column: 8, scope: !4235, inlinedAt: !4225)
!4235 = distinct !DILexicalBlock(scope: !4219, file: !417, line: 62, column: 7)
!4236 = !DILocation(line: 62, column: 13, scope: !4235, inlinedAt: !4225)
!4237 = !DILocation(line: 62, column: 10, scope: !4235, inlinedAt: !4225)
!4238 = !DILocation(line: 63, column: 5, scope: !4235, inlinedAt: !4225)
!4239 = !DILocation(line: 116, column: 3, scope: !4205)
!4240 = !DILocation(line: 0, scope: !4219)
!4241 = !DILocation(line: 53, column: 8, scope: !4227)
!4242 = !DILocation(line: 53, column: 13, scope: !4227)
!4243 = !DILocation(line: 53, column: 10, scope: !4227)
!4244 = !DILocation(line: 57, column: 7, scope: !4231)
!4245 = !DILocation(line: 58, column: 7, scope: !4231)
!4246 = !DILocation(line: 61, column: 7, scope: !4219)
!4247 = !DILocation(line: 62, column: 8, scope: !4235)
!4248 = !DILocation(line: 62, column: 13, scope: !4235)
!4249 = !DILocation(line: 62, column: 10, scope: !4235)
!4250 = !DILocation(line: 63, column: 5, scope: !4235)
!4251 = !DILocation(line: 65, column: 1, scope: !4219)
!4252 = !DILocation(line: 0, scope: !420)
!4253 = !DILocation(line: 176, column: 14, scope: !420)
!4254 = !DILocation(line: 178, column: 9, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !420, file: !289, line: 178, column: 7)
!4256 = !DILocation(line: 178, column: 7, scope: !420)
!4257 = !DILocation(line: 180, column: 13, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !289, line: 180, column: 11)
!4259 = distinct !DILexicalBlock(scope: !4255, file: !289, line: 179, column: 5)
!4260 = !DILocation(line: 180, column: 11, scope: !4259)
!4261 = !DILocation(line: 188, column: 30, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4258, file: !289, line: 181, column: 9)
!4263 = !DILocation(line: 189, column: 16, scope: !4262)
!4264 = !DILocation(line: 189, column: 13, scope: !4262)
!4265 = !DILocation(line: 190, column: 9, scope: !4262)
!4266 = !DILocation(line: 191, column: 11, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4259, file: !289, line: 191, column: 11)
!4268 = !DILocation(line: 191, column: 11, scope: !4259)
!4269 = !DILocation(line: 206, column: 7, scope: !420)
!4270 = !DILocation(line: 207, column: 25, scope: !420)
!4271 = !DILocation(line: 0, scope: !4219, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 207, column: 10, scope: !420)
!4273 = !DILocation(line: 53, column: 10, scope: !4227, inlinedAt: !4272)
!4274 = !DILocation(line: 192, column: 9, scope: !4267)
!4275 = !DILocation(line: 200, column: 69, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !289, line: 200, column: 11)
!4277 = distinct !DILexicalBlock(scope: !4255, file: !289, line: 195, column: 5)
!4278 = !DILocation(line: 201, column: 11, scope: !4276)
!4279 = !DILocation(line: 200, column: 11, scope: !4277)
!4280 = !DILocation(line: 202, column: 9, scope: !4276)
!4281 = !DILocation(line: 203, column: 14, scope: !4277)
!4282 = !DILocation(line: 203, column: 18, scope: !4277)
!4283 = !DILocation(line: 203, column: 9, scope: !4277)
!4284 = !DILocation(line: 53, column: 8, scope: !4227, inlinedAt: !4272)
!4285 = !DILocation(line: 57, column: 7, scope: !4231, inlinedAt: !4272)
!4286 = !DILocation(line: 58, column: 7, scope: !4231, inlinedAt: !4272)
!4287 = !DILocation(line: 61, column: 7, scope: !4219, inlinedAt: !4272)
!4288 = !DILocation(line: 62, column: 8, scope: !4235, inlinedAt: !4272)
!4289 = !DILocation(line: 62, column: 13, scope: !4235, inlinedAt: !4272)
!4290 = !DILocation(line: 62, column: 10, scope: !4235, inlinedAt: !4272)
!4291 = !DILocation(line: 63, column: 5, scope: !4235, inlinedAt: !4272)
!4292 = !DILocation(line: 207, column: 3, scope: !420)
!4293 = distinct !DISubprogram(name: "xcharalloc", scope: !289, file: !289, line: 216, type: !3376, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4294)
!4294 = !{!4295}
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !289, line: 216, type: !94)
!4296 = !DILocation(line: 0, scope: !4293)
!4297 = !DILocation(line: 0, scope: !4184, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 218, column: 10, scope: !4293)
!4299 = !DILocation(line: 41, column: 13, scope: !4184, inlinedAt: !4298)
!4300 = !DILocation(line: 42, column: 8, scope: !4193, inlinedAt: !4298)
!4301 = !DILocation(line: 42, column: 15, scope: !4193, inlinedAt: !4298)
!4302 = !DILocation(line: 42, column: 10, scope: !4193, inlinedAt: !4298)
!4303 = !DILocation(line: 43, column: 5, scope: !4193, inlinedAt: !4298)
!4304 = !DILocation(line: 218, column: 3, scope: !4293)
!4305 = distinct !DISubprogram(name: "x2realloc", scope: !417, file: !417, line: 74, type: !4306, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!92, !92, !423}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "p", arg: 1, scope: !4305, file: !417, line: 74, type: !92)
!4310 = !DILocalVariable(name: "pn", arg: 2, scope: !4305, file: !417, line: 74, type: !423)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 0, scope: !420, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 76, column: 10, scope: !4305)
!4314 = !DILocation(line: 176, column: 14, scope: !420, inlinedAt: !4313)
!4315 = !DILocation(line: 178, column: 9, scope: !4255, inlinedAt: !4313)
!4316 = !DILocation(line: 178, column: 7, scope: !420, inlinedAt: !4313)
!4317 = !DILocation(line: 180, column: 13, scope: !4258, inlinedAt: !4313)
!4318 = !DILocation(line: 180, column: 11, scope: !4259, inlinedAt: !4313)
!4319 = !DILocation(line: 191, column: 11, scope: !4267, inlinedAt: !4313)
!4320 = !DILocation(line: 191, column: 11, scope: !4259, inlinedAt: !4313)
!4321 = !DILocation(line: 206, column: 7, scope: !420, inlinedAt: !4313)
!4322 = !DILocation(line: 0, scope: !4219, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 207, column: 10, scope: !420, inlinedAt: !4313)
!4324 = !DILocation(line: 53, column: 10, scope: !4227, inlinedAt: !4323)
!4325 = !DILocation(line: 192, column: 9, scope: !4267, inlinedAt: !4313)
!4326 = !DILocation(line: 201, column: 11, scope: !4276, inlinedAt: !4313)
!4327 = !DILocation(line: 200, column: 11, scope: !4277, inlinedAt: !4313)
!4328 = !DILocation(line: 202, column: 9, scope: !4276, inlinedAt: !4313)
!4329 = !DILocation(line: 203, column: 14, scope: !4277, inlinedAt: !4313)
!4330 = !DILocation(line: 203, column: 18, scope: !4277, inlinedAt: !4313)
!4331 = !DILocation(line: 203, column: 9, scope: !4277, inlinedAt: !4313)
!4332 = !DILocation(line: 53, column: 8, scope: !4227, inlinedAt: !4323)
!4333 = !DILocation(line: 57, column: 7, scope: !4231, inlinedAt: !4323)
!4334 = !DILocation(line: 58, column: 7, scope: !4231, inlinedAt: !4323)
!4335 = !DILocation(line: 61, column: 7, scope: !4219, inlinedAt: !4323)
!4336 = !DILocation(line: 62, column: 8, scope: !4235, inlinedAt: !4323)
!4337 = !DILocation(line: 62, column: 13, scope: !4235, inlinedAt: !4323)
!4338 = !DILocation(line: 62, column: 10, scope: !4235, inlinedAt: !4323)
!4339 = !DILocation(line: 63, column: 5, scope: !4235, inlinedAt: !4323)
!4340 = !DILocation(line: 76, column: 3, scope: !4305)
!4341 = distinct !DISubprogram(name: "xzalloc", scope: !417, file: !417, line: 84, type: !4185, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4342)
!4342 = !{!4343}
!4343 = !DILocalVariable(name: "n", arg: 1, scope: !4341, file: !417, line: 84, type: !94)
!4344 = !DILocation(line: 0, scope: !4341)
!4345 = !DILocalVariable(name: "n", arg: 1, scope: !4346, file: !417, line: 93, type: !94)
!4346 = distinct !DISubprogram(name: "xcalloc", scope: !417, file: !417, line: 93, type: !4172, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4347)
!4347 = !{!4345, !4348, !4349}
!4348 = !DILocalVariable(name: "s", arg: 2, scope: !4346, file: !417, line: 93, type: !94)
!4349 = !DILocalVariable(name: "p", scope: !4346, file: !417, line: 95, type: !92)
!4350 = !DILocation(line: 0, scope: !4346, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 86, column: 10, scope: !4341)
!4352 = !DILocation(line: 100, column: 7, scope: !4353, inlinedAt: !4351)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !417, line: 100, column: 7)
!4354 = !DILocation(line: 101, column: 7, scope: !4353, inlinedAt: !4351)
!4355 = !DILocation(line: 101, column: 18, scope: !4353, inlinedAt: !4351)
!4356 = !DILocation(line: 101, column: 16, scope: !4353, inlinedAt: !4351)
!4357 = !DILocation(line: 100, column: 7, scope: !4346, inlinedAt: !4351)
!4358 = !DILocation(line: 102, column: 5, scope: !4353, inlinedAt: !4351)
!4359 = !DILocation(line: 86, column: 3, scope: !4341)
!4360 = !DILocation(line: 0, scope: !4346)
!4361 = !DILocation(line: 100, column: 7, scope: !4353)
!4362 = !DILocation(line: 101, column: 7, scope: !4353)
!4363 = !DILocation(line: 101, column: 18, scope: !4353)
!4364 = !DILocation(line: 101, column: 16, scope: !4353)
!4365 = !DILocation(line: 100, column: 7, scope: !4346)
!4366 = !DILocation(line: 102, column: 5, scope: !4353)
!4367 = !DILocation(line: 103, column: 3, scope: !4346)
!4368 = distinct !DISubprogram(name: "xmemdup", scope: !417, file: !417, line: 111, type: !4369, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!92, !292, !94}
!4371 = !{!4372, !4373}
!4372 = !DILocalVariable(name: "p", arg: 1, scope: !4368, file: !417, line: 111, type: !292)
!4373 = !DILocalVariable(name: "s", arg: 2, scope: !4368, file: !417, line: 111, type: !94)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 0, scope: !4184, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 113, column: 18, scope: !4368)
!4377 = !DILocation(line: 41, column: 13, scope: !4184, inlinedAt: !4376)
!4378 = !DILocation(line: 42, column: 8, scope: !4193, inlinedAt: !4376)
!4379 = !DILocation(line: 42, column: 15, scope: !4193, inlinedAt: !4376)
!4380 = !DILocation(line: 42, column: 10, scope: !4193, inlinedAt: !4376)
!4381 = !DILocation(line: 43, column: 5, scope: !4193, inlinedAt: !4376)
!4382 = !DILocalVariable(name: "__dest", arg: 1, scope: !4383, file: !2909, line: 31, type: !4386)
!4383 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 31, type: !4384, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4388)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!92, !4386, !4387, !94}
!4386 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!4387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!4388 = !{!4382, !4389, !4390}
!4389 = !DILocalVariable(name: "__src", arg: 2, scope: !4383, file: !2909, line: 31, type: !4387)
!4390 = !DILocalVariable(name: "__len", arg: 3, scope: !4383, file: !2909, line: 31, type: !94)
!4391 = !DILocation(line: 0, scope: !4383, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 113, column: 10, scope: !4368)
!4393 = !DILocation(line: 34, column: 10, scope: !4383, inlinedAt: !4392)
!4394 = !DILocation(line: 113, column: 3, scope: !4368)
!4395 = distinct !DISubprogram(name: "xstrdup", scope: !417, file: !417, line: 119, type: !114, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4396)
!4396 = !{!4397}
!4397 = !DILocalVariable(name: "string", arg: 1, scope: !4395, file: !417, line: 119, type: !37)
!4398 = !DILocation(line: 0, scope: !4395)
!4399 = !DILocation(line: 121, column: 27, scope: !4395)
!4400 = !DILocation(line: 121, column: 43, scope: !4395)
!4401 = !DILocation(line: 0, scope: !4368, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 121, column: 10, scope: !4395)
!4403 = !DILocation(line: 0, scope: !4184, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 113, column: 18, scope: !4368, inlinedAt: !4402)
!4405 = !DILocation(line: 41, column: 13, scope: !4184, inlinedAt: !4404)
!4406 = !DILocation(line: 42, column: 8, scope: !4193, inlinedAt: !4404)
!4407 = !DILocation(line: 42, column: 15, scope: !4193, inlinedAt: !4404)
!4408 = !DILocation(line: 42, column: 10, scope: !4193, inlinedAt: !4404)
!4409 = !DILocation(line: 43, column: 5, scope: !4193, inlinedAt: !4404)
!4410 = !DILocation(line: 0, scope: !4383, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 113, column: 10, scope: !4368, inlinedAt: !4402)
!4412 = !DILocation(line: 34, column: 10, scope: !4383, inlinedAt: !4411)
!4413 = !DILocation(line: 121, column: 3, scope: !4395)
!4414 = distinct !DISubprogram(name: "xalloc_die", scope: !438, file: !438, line: 32, type: !121, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !40)
!4415 = !DILocation(line: 34, column: 10, scope: !4414)
!4416 = !DILocation(line: 34, column: 33, scope: !4414)
!4417 = !DILocation(line: 34, column: 3, scope: !4414)
!4418 = !DILocation(line: 40, column: 3, scope: !4414)
!4419 = distinct !DISubprogram(name: "xvasprintf", scope: !441, file: !441, line: 76, type: !4420, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4429)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!35, !37, !4422}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !441, size: 192, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4423, file: !441, baseType: !6, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4423, file: !441, baseType: !6, size: 32, offset: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4423, file: !441, baseType: !92, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4423, file: !441, baseType: !92, size: 64, offset: 128)
!4429 = !{!4430, !4431, !4432, !4433, !4435}
!4430 = !DILocalVariable(name: "format", arg: 1, scope: !4419, file: !441, line: 76, type: !37)
!4431 = !DILocalVariable(name: "args", arg: 2, scope: !4419, file: !441, line: 76, type: !4422)
!4432 = !DILocalVariable(name: "result", scope: !4419, file: !441, line: 78, type: !35)
!4433 = !DILocalVariable(name: "argcount", scope: !4434, file: !441, line: 84, type: !94)
!4434 = distinct !DILexicalBlock(scope: !4419, file: !441, line: 83, column: 3)
!4435 = !DILocalVariable(name: "f", scope: !4434, file: !441, line: 85, type: !37)
!4436 = !DILocalVariable(name: "ap", scope: !4437, file: !441, line: 36, type: !4456)
!4437 = distinct !DISubprogram(name: "xstrcat", scope: !441, file: !441, line: 33, type: !4438, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4440)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!35, !94, !4422}
!4440 = !{!4441, !4442, !4443, !4436, !4444, !4445, !4446, !4447, !4451, !4455}
!4441 = !DILocalVariable(name: "argcount", arg: 1, scope: !4437, file: !441, line: 33, type: !94)
!4442 = !DILocalVariable(name: "args", arg: 2, scope: !4437, file: !441, line: 33, type: !4422)
!4443 = !DILocalVariable(name: "result", scope: !4437, file: !441, line: 35, type: !35)
!4444 = !DILocalVariable(name: "totalsize", scope: !4437, file: !441, line: 37, type: !94)
!4445 = !DILocalVariable(name: "i", scope: !4437, file: !441, line: 38, type: !94)
!4446 = !DILocalVariable(name: "p", scope: !4437, file: !441, line: 39, type: !35)
!4447 = !DILocalVariable(name: "next", scope: !4448, file: !441, line: 46, type: !37)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !441, line: 45, column: 5)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !441, line: 44, column: 3)
!4450 = distinct !DILexicalBlock(scope: !4437, file: !441, line: 44, column: 3)
!4451 = !DILocalVariable(name: "next", scope: !4452, file: !441, line: 65, type: !37)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !441, line: 64, column: 5)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !441, line: 63, column: 3)
!4454 = distinct !DILexicalBlock(scope: !4437, file: !441, line: 63, column: 3)
!4455 = !DILocalVariable(name: "len", scope: !4452, file: !441, line: 66, type: !94)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !42, line: 52, baseType: !4457)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1326, line: 32, baseType: !4458)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !441, line: 36, baseType: !4459)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4423, size: 192, elements: !77)
!4460 = !DILocation(line: 36, column: 11, scope: !4437, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 91, column: 18, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !441, line: 89, column: 13)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !441, line: 88, column: 7)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !441, line: 87, column: 5)
!4465 = distinct !DILexicalBlock(scope: !4434, file: !441, line: 87, column: 5)
!4466 = !DILocation(line: 0, scope: !4419)
!4467 = !DILocation(line: 78, column: 3, scope: !4419)
!4468 = !DILocation(line: 0, scope: !4434)
!4469 = !DILocation(line: 87, column: 10, scope: !4465)
!4470 = !DILocation(line: 0, scope: !4465)
!4471 = !DILocation(line: 89, column: 13, scope: !4462)
!4472 = !DILocation(line: 89, column: 13, scope: !4463)
!4473 = !DILocation(line: 0, scope: !4437, inlinedAt: !4461)
!4474 = !DILocation(line: 36, column: 3, scope: !4437, inlinedAt: !4461)
!4475 = !DILocation(line: 43, column: 3, scope: !4437, inlinedAt: !4461)
!4476 = !DILocation(line: 44, column: 24, scope: !4449, inlinedAt: !4461)
!4477 = !DILocation(line: 44, column: 3, scope: !4450, inlinedAt: !4461)
!4478 = !DILocation(line: 49, column: 3, scope: !4437, inlinedAt: !4461)
!4479 = !DILocation(line: 61, column: 12, scope: !4437, inlinedAt: !4461)
!4480 = !DILocation(line: 63, column: 3, scope: !4454, inlinedAt: !4461)
!4481 = !DILocation(line: 0, scope: !4448, inlinedAt: !4461)
!4482 = !DILocation(line: 46, column: 26, scope: !4448, inlinedAt: !4461)
!4483 = !DILocation(line: 47, column: 36, scope: !4448, inlinedAt: !4461)
!4484 = !DILocalVariable(name: "size1", arg: 1, scope: !4485, file: !4486, line: 63, type: !94)
!4485 = distinct !DISubprogram(name: "xsum", scope: !4486, file: !4486, line: 63, type: !4487, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4489)
!4486 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!94, !94, !94}
!4489 = !{!4484, !4490, !4491}
!4490 = !DILocalVariable(name: "size2", arg: 2, scope: !4485, file: !4486, line: 63, type: !94)
!4491 = !DILocalVariable(name: "sum", scope: !4485, file: !4486, line: 65, type: !94)
!4492 = !DILocation(line: 0, scope: !4485, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 47, column: 19, scope: !4448, inlinedAt: !4461)
!4494 = !DILocation(line: 66, column: 11, scope: !4485, inlinedAt: !4493)
!4495 = !DILocation(line: 44, column: 30, scope: !4449, inlinedAt: !4461)
!4496 = distinct !{!4496, !4477, !4497}
!4497 = !DILocation(line: 48, column: 5, scope: !4450, inlinedAt: !4461)
!4498 = !DILocation(line: 54, column: 42, scope: !4499, inlinedAt: !4461)
!4499 = distinct !DILexicalBlock(scope: !4437, file: !441, line: 54, column: 7)
!4500 = !DILocation(line: 54, column: 29, scope: !4499, inlinedAt: !4461)
!4501 = !DILocation(line: 56, column: 7, scope: !4502, inlinedAt: !4461)
!4502 = distinct !DILexicalBlock(scope: !4499, file: !441, line: 55, column: 5)
!4503 = !DILocation(line: 56, column: 13, scope: !4502, inlinedAt: !4461)
!4504 = !DILocation(line: 57, column: 7, scope: !4502, inlinedAt: !4461)
!4505 = !DILocation(line: 0, scope: !4452, inlinedAt: !4461)
!4506 = !DILocation(line: 65, column: 26, scope: !4452, inlinedAt: !4461)
!4507 = !DILocation(line: 66, column: 20, scope: !4452, inlinedAt: !4461)
!4508 = !DILocalVariable(name: "__dest", arg: 1, scope: !4509, file: !2909, line: 31, type: !4386)
!4509 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 31, type: !4384, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4510)
!4510 = !{!4508, !4511, !4512}
!4511 = !DILocalVariable(name: "__src", arg: 2, scope: !4509, file: !2909, line: 31, type: !4387)
!4512 = !DILocalVariable(name: "__len", arg: 3, scope: !4509, file: !2909, line: 31, type: !94)
!4513 = !DILocation(line: 0, scope: !4509, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 67, column: 7, scope: !4452, inlinedAt: !4461)
!4515 = !DILocation(line: 34, column: 10, scope: !4509, inlinedAt: !4514)
!4516 = !DILocation(line: 68, column: 9, scope: !4452, inlinedAt: !4461)
!4517 = !DILocation(line: 63, column: 30, scope: !4453, inlinedAt: !4461)
!4518 = !DILocation(line: 63, column: 24, scope: !4453, inlinedAt: !4461)
!4519 = distinct !{!4519, !4480, !4520}
!4520 = !DILocation(line: 69, column: 5, scope: !4454, inlinedAt: !4461)
!4521 = !DILocation(line: 70, column: 6, scope: !4437, inlinedAt: !4461)
!4522 = !DILocation(line: 72, column: 3, scope: !4437, inlinedAt: !4461)
!4523 = !DILocation(line: 94, column: 10, scope: !4463)
!4524 = !DILocation(line: 95, column: 13, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4463, file: !441, line: 95, column: 13)
!4526 = !DILocation(line: 95, column: 16, scope: !4525)
!4527 = !DILocation(line: 95, column: 13, scope: !4463)
!4528 = !DILocation(line: 97, column: 10, scope: !4463)
!4529 = !DILocation(line: 98, column: 17, scope: !4463)
!4530 = !DILocation(line: 87, column: 5, scope: !4464)
!4531 = distinct !{!4531, !4532, !4533}
!4532 = !DILocation(line: 87, column: 5, scope: !4465)
!4533 = !DILocation(line: 99, column: 7, scope: !4465)
!4534 = !DILocation(line: 73, column: 1, scope: !4437, inlinedAt: !4461)
!4535 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4536, file: !4537, line: 210, type: !4540)
!4536 = distinct !DISubprogram(name: "vasprintf", scope: !4537, file: !4537, line: 210, type: !4538, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4542)
!4537 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!39, !4540, !4541, !4422}
!4540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!4541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!4542 = !{!4535, !4543, !4544}
!4543 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4536, file: !4537, line: 210, type: !4541)
!4544 = !DILocalVariable(name: "__ap", arg: 3, scope: !4536, file: !4537, line: 210, type: !4422)
!4545 = !DILocation(line: 0, scope: !4536, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 102, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4419, file: !441, line: 102, column: 7)
!4548 = !DILocation(line: 213, column: 10, scope: !4536, inlinedAt: !4546)
!4549 = !DILocation(line: 102, column: 41, scope: !4547)
!4550 = !DILocation(line: 102, column: 7, scope: !4419)
!4551 = !DILocation(line: 104, column: 11, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !441, line: 104, column: 11)
!4553 = distinct !DILexicalBlock(scope: !4547, file: !441, line: 103, column: 5)
!4554 = !DILocation(line: 104, column: 17, scope: !4552)
!4555 = !DILocation(line: 104, column: 11, scope: !4553)
!4556 = !DILocation(line: 105, column: 9, scope: !4552)
!4557 = !DILocation(line: 109, column: 10, scope: !4419)
!4558 = !DILocation(line: 109, column: 3, scope: !4419)
!4559 = !DILocation(line: 110, column: 1, scope: !4419)
!4560 = distinct !DISubprogram(name: "rpl_calloc", scope: !444, file: !444, line: 42, type: !4172, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4561)
!4561 = !{!4562, !4563, !4564, !4565}
!4562 = !DILocalVariable(name: "n", arg: 1, scope: !4560, file: !444, line: 42, type: !94)
!4563 = !DILocalVariable(name: "s", arg: 2, scope: !4560, file: !444, line: 42, type: !94)
!4564 = !DILocalVariable(name: "result", scope: !4560, file: !444, line: 44, type: !92)
!4565 = !DILocalVariable(name: "bytes", scope: !4566, file: !444, line: 56, type: !94)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !444, line: 53, column: 5)
!4567 = distinct !DILexicalBlock(scope: !4560, file: !444, line: 47, column: 7)
!4568 = !DILocation(line: 0, scope: !4560)
!4569 = !DILocation(line: 47, column: 9, scope: !4567)
!4570 = !DILocation(line: 47, column: 19, scope: !4567)
!4571 = !DILocation(line: 47, column: 14, scope: !4567)
!4572 = !DILocation(line: 0, scope: !4566)
!4573 = !DILocation(line: 57, column: 21, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4566, file: !444, line: 57, column: 11)
!4575 = !DILocation(line: 57, column: 11, scope: !4566)
!4576 = !DILocation(line: 59, column: 11, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !444, line: 58, column: 9)
!4578 = !DILocation(line: 59, column: 17, scope: !4577)
!4579 = !DILocation(line: 65, column: 12, scope: !4560)
!4580 = !DILocation(line: 72, column: 3, scope: !4560)
!4581 = !DILocation(line: 73, column: 1, scope: !4560)
!4582 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !447, file: !447, line: 86, type: !4583, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !4589)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!94, !4585, !37, !94, !4586}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2653, line: 6, baseType: !4588)
!4588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !323, line: 21, baseType: !453)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4590 = !DILocalVariable(name: "pwc", arg: 1, scope: !4582, file: !447, line: 86, type: !4585)
!4591 = !DILocalVariable(name: "s", arg: 2, scope: !4582, file: !447, line: 86, type: !37)
!4592 = !DILocalVariable(name: "n", arg: 3, scope: !4582, file: !447, line: 86, type: !94)
!4593 = !DILocalVariable(name: "ps", arg: 4, scope: !4582, file: !447, line: 86, type: !4586)
!4594 = !DILocalVariable(name: "ret", scope: !4582, file: !447, line: 88, type: !94)
!4595 = !DILocalVariable(name: "wc", scope: !4582, file: !447, line: 89, type: !2657)
!4596 = !DILocalVariable(name: "uc", scope: !4597, file: !447, line: 156, type: !2530)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !447, line: 155, column: 5)
!4598 = distinct !DILexicalBlock(scope: !4582, file: !447, line: 154, column: 7)
!4599 = !DILocation(line: 0, scope: !4582)
!4600 = !DILocation(line: 89, column: 3, scope: !4582)
!4601 = !DILocation(line: 105, column: 9, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4582, file: !447, line: 105, column: 7)
!4603 = !DILocation(line: 105, column: 7, scope: !4582)
!4604 = !DILocation(line: 145, column: 9, scope: !4582)
!4605 = !DILocation(line: 154, column: 19, scope: !4598)
!4606 = !DILocation(line: 154, column: 31, scope: !4598)
!4607 = !DILocation(line: 154, column: 26, scope: !4598)
!4608 = !DILocation(line: 154, column: 41, scope: !4598)
!4609 = !DILocation(line: 154, column: 7, scope: !4582)
!4610 = !DILocation(line: 156, column: 26, scope: !4597)
!4611 = !DILocation(line: 0, scope: !4597)
!4612 = !DILocation(line: 157, column: 14, scope: !4597)
!4613 = !DILocation(line: 157, column: 12, scope: !4597)
!4614 = !DILocation(line: 163, column: 1, scope: !4582)
!4615 = distinct !DISubprogram(name: "close_stream", scope: !466, file: !466, line: 56, type: !4616, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4621)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!39, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4620, line: 7, baseType: !473)
!4620 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!4621 = !{!4622, !4623, !4625, !4626}
!4622 = !DILocalVariable(name: "stream", arg: 1, scope: !4615, file: !466, line: 56, type: !4618)
!4623 = !DILocalVariable(name: "some_pending", scope: !4615, file: !466, line: 58, type: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!4625 = !DILocalVariable(name: "prev_fail", scope: !4615, file: !466, line: 59, type: !4624)
!4626 = !DILocalVariable(name: "fclose_fail", scope: !4615, file: !466, line: 60, type: !4624)
!4627 = !DILocation(line: 0, scope: !4615)
!4628 = !DILocation(line: 58, column: 30, scope: !4615)
!4629 = !DILocalVariable(name: "__stream", arg: 1, scope: !4630, file: !4631, line: 135, type: !4618)
!4630 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4631, file: !4631, line: 135, type: !4616, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4632)
!4631 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4632 = !{!4629}
!4633 = !DILocation(line: 0, scope: !4630, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 59, column: 27, scope: !4615)
!4635 = !DILocation(line: 137, column: 10, scope: !4630, inlinedAt: !4634)
!4636 = !{!4637, !1142, i64 0}
!4637 = !{!"_IO_FILE", !1142, i64 0, !1070, i64 8, !1070, i64 16, !1070, i64 24, !1070, i64 32, !1070, i64 40, !1070, i64 48, !1070, i64 56, !1070, i64 64, !1070, i64 72, !1070, i64 80, !1070, i64 88, !1070, i64 96, !1070, i64 104, !1142, i64 112, !1142, i64 116, !1492, i64 120, !2349, i64 128, !1071, i64 130, !1071, i64 131, !1070, i64 136, !1492, i64 144, !1070, i64 152, !1070, i64 160, !1070, i64 168, !1070, i64 176, !1492, i64 184, !1142, i64 192, !1071, i64 196}
!4638 = !DILocation(line: 59, column: 43, scope: !4615)
!4639 = !DILocation(line: 60, column: 29, scope: !4615)
!4640 = !DILocation(line: 60, column: 45, scope: !4615)
!4641 = !DILocation(line: 70, column: 17, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4615, file: !466, line: 70, column: 7)
!4643 = !DILocation(line: 58, column: 50, scope: !4615)
!4644 = !DILocation(line: 70, column: 33, scope: !4642)
!4645 = !DILocation(line: 70, column: 53, scope: !4642)
!4646 = !DILocation(line: 70, column: 59, scope: !4642)
!4647 = !DILocation(line: 70, column: 7, scope: !4615)
!4648 = !DILocation(line: 72, column: 11, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4642, file: !466, line: 71, column: 5)
!4650 = !DILocation(line: 73, column: 9, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4649, file: !466, line: 72, column: 11)
!4652 = !DILocation(line: 73, column: 15, scope: !4651)
!4653 = !DILocation(line: 78, column: 1, scope: !4615)
!4654 = distinct !DISubprogram(name: "hard_locale", scope: !505, file: !505, line: 27, type: !463, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4655)
!4655 = !{!4656, !4657}
!4656 = !DILocalVariable(name: "category", arg: 1, scope: !4654, file: !505, line: 27, type: !39)
!4657 = !DILocalVariable(name: "locale", scope: !4654, file: !505, line: 29, type: !4658)
!4658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !4659)
!4659 = !{!4660}
!4660 = !DISubrange(count: 257)
!4661 = !DILocation(line: 0, scope: !4654)
!4662 = !DILocation(line: 29, column: 3, scope: !4654)
!4663 = !DILocation(line: 29, column: 8, scope: !4654)
!4664 = !DILocation(line: 31, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4654, file: !505, line: 31, column: 7)
!4666 = !DILocation(line: 31, column: 7, scope: !4654)
!4667 = !DILocation(line: 34, column: 12, scope: !4654)
!4668 = !DILocation(line: 34, column: 38, scope: !4654)
!4669 = !DILocation(line: 34, column: 41, scope: !4654)
!4670 = !DILocation(line: 34, column: 66, scope: !4654)
!4671 = !DILocation(line: 35, column: 1, scope: !4654)
!4672 = distinct !DISubprogram(name: "locale_charset", scope: !512, file: !512, line: 831, type: !346, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4673)
!4673 = !{!4674}
!4674 = !DILocalVariable(name: "codeset", scope: !4672, file: !512, line: 833, type: !37)
!4675 = !DILocation(line: 847, column: 13, scope: !4672)
!4676 = !DILocation(line: 0, scope: !4672)
!4677 = !DILocation(line: 911, column: 15, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4672, file: !512, line: 911, column: 7)
!4679 = !DILocation(line: 911, column: 7, scope: !4672)
!4680 = !DILocation(line: 1070, column: 13, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !512, line: 1070, column: 13)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !512, line: 1060, column: 7)
!4683 = distinct !DILexicalBlock(scope: !4672, file: !512, line: 1019, column: 3)
!4684 = !DILocation(line: 1070, column: 24, scope: !4681)
!4685 = !DILocation(line: 1070, column: 13, scope: !4682)
!4686 = !DILocation(line: 1158, column: 3, scope: !4672)
!4687 = distinct !DISubprogram(name: "setlocale_null_r", scope: !905, file: !905, line: 269, type: !4688, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!39, !39, !35, !94}
!4690 = !{!4691, !4692, !4693}
!4691 = !DILocalVariable(name: "category", arg: 1, scope: !4687, file: !905, line: 269, type: !39)
!4692 = !DILocalVariable(name: "buf", arg: 2, scope: !4687, file: !905, line: 269, type: !35)
!4693 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4687, file: !905, line: 269, type: !94)
!4694 = !DILocation(line: 0, scope: !4687)
!4695 = !DILocalVariable(name: "category", arg: 1, scope: !4696, file: !905, line: 91, type: !39)
!4696 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !905, file: !905, line: 91, type: !4688, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4697)
!4697 = !{!4695, !4698, !4699, !4700, !4701}
!4698 = !DILocalVariable(name: "buf", arg: 2, scope: !4696, file: !905, line: 91, type: !35)
!4699 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4696, file: !905, line: 91, type: !94)
!4700 = !DILocalVariable(name: "result", scope: !4696, file: !905, line: 140, type: !37)
!4701 = !DILocalVariable(name: "length", scope: !4702, file: !905, line: 154, type: !94)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !905, line: 153, column: 5)
!4703 = distinct !DILexicalBlock(scope: !4696, file: !905, line: 142, column: 7)
!4704 = !DILocation(line: 0, scope: !4696, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 274, column: 10, scope: !4687)
!4706 = !DILocalVariable(name: "category", arg: 1, scope: !4707, file: !905, line: 60, type: !39)
!4707 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !905, file: !905, line: 60, type: !4708, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4710)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!37, !39}
!4710 = !{!4706, !4711}
!4711 = !DILocalVariable(name: "result", scope: !4707, file: !905, line: 62, type: !37)
!4712 = !DILocation(line: 0, scope: !4707, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 140, column: 24, scope: !4696, inlinedAt: !4705)
!4714 = !DILocation(line: 62, column: 24, scope: !4707, inlinedAt: !4713)
!4715 = !DILocation(line: 142, column: 14, scope: !4703, inlinedAt: !4705)
!4716 = !DILocation(line: 142, column: 7, scope: !4696, inlinedAt: !4705)
!4717 = !DILocation(line: 145, column: 19, scope: !4718, inlinedAt: !4705)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !905, line: 145, column: 11)
!4719 = distinct !DILexicalBlock(scope: !4703, file: !905, line: 143, column: 5)
!4720 = !DILocation(line: 145, column: 11, scope: !4719, inlinedAt: !4705)
!4721 = !DILocation(line: 149, column: 16, scope: !4718, inlinedAt: !4705)
!4722 = !DILocation(line: 149, column: 9, scope: !4718, inlinedAt: !4705)
!4723 = !DILocation(line: 154, column: 23, scope: !4702, inlinedAt: !4705)
!4724 = !DILocation(line: 0, scope: !4702, inlinedAt: !4705)
!4725 = !DILocation(line: 155, column: 18, scope: !4726, inlinedAt: !4705)
!4726 = distinct !DILexicalBlock(scope: !4702, file: !905, line: 155, column: 11)
!4727 = !DILocation(line: 155, column: 11, scope: !4702, inlinedAt: !4705)
!4728 = !DILocation(line: 157, column: 39, scope: !4729, inlinedAt: !4705)
!4729 = distinct !DILexicalBlock(scope: !4726, file: !905, line: 156, column: 9)
!4730 = !DILocalVariable(name: "__dest", arg: 1, scope: !4731, file: !2909, line: 31, type: !4386)
!4731 = distinct !DISubprogram(name: "memcpy", scope: !2909, file: !2909, line: 31, type: !4384, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4732)
!4732 = !{!4730, !4733, !4734}
!4733 = !DILocalVariable(name: "__src", arg: 2, scope: !4731, file: !2909, line: 31, type: !4387)
!4734 = !DILocalVariable(name: "__len", arg: 3, scope: !4731, file: !2909, line: 31, type: !94)
!4735 = !DILocation(line: 0, scope: !4731, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 157, column: 11, scope: !4729, inlinedAt: !4705)
!4737 = !DILocation(line: 34, column: 10, scope: !4731, inlinedAt: !4736)
!4738 = !DILocation(line: 158, column: 11, scope: !4729, inlinedAt: !4705)
!4739 = !DILocation(line: 162, column: 23, scope: !4740, inlinedAt: !4705)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !905, line: 162, column: 15)
!4741 = distinct !DILexicalBlock(scope: !4726, file: !905, line: 161, column: 9)
!4742 = !DILocation(line: 162, column: 15, scope: !4741, inlinedAt: !4705)
!4743 = !DILocation(line: 167, column: 44, scope: !4744, inlinedAt: !4705)
!4744 = distinct !DILexicalBlock(scope: !4740, file: !905, line: 163, column: 13)
!4745 = !DILocation(line: 0, scope: !4731, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 167, column: 15, scope: !4744, inlinedAt: !4705)
!4747 = !DILocation(line: 34, column: 10, scope: !4731, inlinedAt: !4746)
!4748 = !DILocation(line: 168, column: 15, scope: !4744, inlinedAt: !4705)
!4749 = !DILocation(line: 168, column: 32, scope: !4744, inlinedAt: !4705)
!4750 = !DILocation(line: 169, column: 13, scope: !4744, inlinedAt: !4705)
!4751 = !DILocation(line: 0, scope: !4703, inlinedAt: !4705)
!4752 = !DILocation(line: 274, column: 3, scope: !4687)
!4753 = distinct !DISubprogram(name: "setlocale_null", scope: !905, file: !905, line: 301, type: !4708, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4754)
!4754 = !{!4755}
!4755 = !DILocalVariable(name: "category", arg: 1, scope: !4753, file: !905, line: 301, type: !39)
!4756 = !DILocation(line: 0, scope: !4753)
!4757 = !DILocation(line: 0, scope: !4707, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 304, column: 10, scope: !4753)
!4759 = !DILocation(line: 62, column: 24, scope: !4707, inlinedAt: !4758)
!4760 = !DILocation(line: 304, column: 3, scope: !4753)
!4761 = distinct !DISubprogram(name: "rpl_fclose", scope: !908, file: !908, line: 58, type: !4762, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !907, retainedNodes: !4766)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!39, !4764}
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4620, line: 7, baseType: !914)
!4766 = !{!4767, !4768, !4769, !4770}
!4767 = !DILocalVariable(name: "fp", arg: 1, scope: !4761, file: !908, line: 58, type: !4764)
!4768 = !DILocalVariable(name: "saved_errno", scope: !4761, file: !908, line: 60, type: !39)
!4769 = !DILocalVariable(name: "fd", scope: !4761, file: !908, line: 61, type: !39)
!4770 = !DILocalVariable(name: "result", scope: !4761, file: !908, line: 62, type: !39)
!4771 = !DILocation(line: 0, scope: !4761)
!4772 = !DILocation(line: 65, column: 8, scope: !4761)
!4773 = !DILocation(line: 66, column: 10, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4761, file: !908, line: 66, column: 7)
!4775 = !DILocation(line: 66, column: 7, scope: !4761)
!4776 = !DILocation(line: 67, column: 12, scope: !4774)
!4777 = !DILocation(line: 67, column: 5, scope: !4774)
!4778 = !DILocation(line: 72, column: 9, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4761, file: !908, line: 72, column: 7)
!4780 = !DILocation(line: 72, column: 23, scope: !4779)
!4781 = !DILocation(line: 72, column: 33, scope: !4779)
!4782 = !DILocation(line: 72, column: 26, scope: !4779)
!4783 = !DILocation(line: 72, column: 59, scope: !4779)
!4784 = !DILocation(line: 73, column: 7, scope: !4779)
!4785 = !DILocation(line: 73, column: 10, scope: !4779)
!4786 = !DILocation(line: 72, column: 7, scope: !4761)
!4787 = !DILocation(line: 100, column: 12, scope: !4761)
!4788 = !DILocation(line: 105, column: 7, scope: !4761)
!4789 = !DILocation(line: 74, column: 19, scope: !4779)
!4790 = !DILocation(line: 105, column: 19, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4761, file: !908, line: 105, column: 7)
!4792 = !DILocation(line: 107, column: 13, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4791, file: !908, line: 106, column: 5)
!4794 = !DILocation(line: 109, column: 5, scope: !4793)
!4795 = !DILocation(line: 112, column: 1, scope: !4761)
!4796 = distinct !DISubprogram(name: "rpl_fflush", scope: !951, file: !951, line: 129, type: !4797, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4801)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!39, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4620, line: 7, baseType: !957)
!4801 = !{!4802}
!4802 = !DILocalVariable(name: "stream", arg: 1, scope: !4796, file: !951, line: 129, type: !4799)
!4803 = !DILocation(line: 0, scope: !4796)
!4804 = !DILocation(line: 150, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4796, file: !951, line: 150, column: 7)
!4806 = !DILocation(line: 150, column: 22, scope: !4805)
!4807 = !DILocation(line: 150, column: 27, scope: !4805)
!4808 = !DILocation(line: 150, column: 7, scope: !4796)
!4809 = !DILocation(line: 151, column: 12, scope: !4805)
!4810 = !DILocation(line: 151, column: 5, scope: !4805)
!4811 = !DILocalVariable(name: "fp", arg: 1, scope: !4812, file: !951, line: 41, type: !4799)
!4812 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !951, file: !951, line: 41, type: !4813, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4815)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !4799}
!4815 = !{!4811}
!4816 = !DILocation(line: 0, scope: !4812, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 156, column: 3, scope: !4796)
!4818 = !DILocation(line: 43, column: 11, scope: !4819, inlinedAt: !4817)
!4819 = distinct !DILexicalBlock(scope: !4812, file: !951, line: 43, column: 7)
!4820 = !DILocation(line: 43, column: 18, scope: !4819, inlinedAt: !4817)
!4821 = !DILocation(line: 43, column: 7, scope: !4812, inlinedAt: !4817)
!4822 = !DILocation(line: 45, column: 5, scope: !4819, inlinedAt: !4817)
!4823 = !DILocation(line: 158, column: 10, scope: !4796)
!4824 = !DILocation(line: 158, column: 3, scope: !4796)
!4825 = !DILocation(line: 235, column: 1, scope: !4796)
!4826 = distinct !DISubprogram(name: "rpl_fseeko", scope: !992, file: !992, line: 28, type: !4827, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4832)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!39, !4829, !4831, !39}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4620, line: 7, baseType: !998)
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !42, line: 63, baseType: !68)
!4832 = !{!4833, !4834, !4835, !4836}
!4833 = !DILocalVariable(name: "fp", arg: 1, scope: !4826, file: !992, line: 28, type: !4829)
!4834 = !DILocalVariable(name: "offset", arg: 2, scope: !4826, file: !992, line: 28, type: !4831)
!4835 = !DILocalVariable(name: "whence", arg: 3, scope: !4826, file: !992, line: 28, type: !39)
!4836 = !DILocalVariable(name: "pos", scope: !4837, file: !992, line: 117, type: !4831)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !992, line: 113, column: 5)
!4838 = distinct !DILexicalBlock(scope: !4826, file: !992, line: 52, column: 7)
!4839 = !DILocation(line: 0, scope: !4826)
!4840 = !DILocation(line: 52, column: 11, scope: !4838)
!4841 = !{!4637, !1070, i64 16}
!4842 = !DILocation(line: 52, column: 31, scope: !4838)
!4843 = !{!4637, !1070, i64 8}
!4844 = !DILocation(line: 52, column: 24, scope: !4838)
!4845 = !DILocation(line: 53, column: 7, scope: !4838)
!4846 = !DILocation(line: 53, column: 14, scope: !4838)
!4847 = !{!4637, !1070, i64 40}
!4848 = !DILocation(line: 53, column: 35, scope: !4838)
!4849 = !{!4637, !1070, i64 32}
!4850 = !DILocation(line: 53, column: 28, scope: !4838)
!4851 = !DILocation(line: 54, column: 7, scope: !4838)
!4852 = !DILocation(line: 54, column: 14, scope: !4838)
!4853 = !{!4637, !1070, i64 72}
!4854 = !DILocation(line: 54, column: 28, scope: !4838)
!4855 = !DILocation(line: 52, column: 7, scope: !4826)
!4856 = !DILocation(line: 117, column: 26, scope: !4837)
!4857 = !DILocation(line: 117, column: 19, scope: !4837)
!4858 = !DILocation(line: 0, scope: !4837)
!4859 = !DILocation(line: 118, column: 15, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4837, file: !992, line: 118, column: 11)
!4861 = !DILocation(line: 118, column: 11, scope: !4837)
!4862 = !DILocation(line: 129, column: 11, scope: !4837)
!4863 = !DILocation(line: 129, column: 18, scope: !4837)
!4864 = !DILocation(line: 130, column: 11, scope: !4837)
!4865 = !DILocation(line: 130, column: 19, scope: !4837)
!4866 = !{!4637, !1492, i64 144}
!4867 = !DILocation(line: 161, column: 7, scope: !4837)
!4868 = !DILocation(line: 163, column: 10, scope: !4826)
!4869 = !DILocation(line: 163, column: 3, scope: !4826)
!4870 = !DILocation(line: 164, column: 1, scope: !4826)
