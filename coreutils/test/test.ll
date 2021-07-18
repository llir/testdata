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
@argc = internal unnamed_addr global i32 0, align 4, !dbg !37
@pos = internal unnamed_addr global i32 0, align 4, !dbg !35
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
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !42
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !48
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.69 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !53
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !59
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !65
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !94
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !100
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !112
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !119
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !126
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !114
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !128
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.110 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !581 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !586
  %3 = icmp eq i32 %0, 0, !dbg !587
  br i1 %3, label %9, label %4, !dbg !589

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !592
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !590
  %7 = load i8*, i8** @program_name, align 8, !dbg !590, !tbaa !592
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !590
  br label %97, !dbg !590

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !596
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !596, !tbaa !592
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11), !dbg !596
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !598
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !598, !tbaa !592
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !598
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !599
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !592
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !599
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !600
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600, !tbaa !592
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !600
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !601
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !592
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !601
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !602
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !592
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !602
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !603
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !592
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !603
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #27, !dbg !604
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !592
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !604
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #27, !dbg !605
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !592
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !605
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #27, !dbg !606
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !592
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !606
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #27, !dbg !607
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !592
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !607
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.12, i64 0, i64 0), i32 5) #27, !dbg !608
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !592
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !608
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #27, !dbg !609
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !592
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !609
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !610
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !592
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !610
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #27, !dbg !611
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !592
  %54 = tail call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53), !dbg !611
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #27, !dbg !612
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !592
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56), !dbg !612
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !613
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !613
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %59) #27, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !614, metadata !DIExpression()) #27, !dbg !633
  %61 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %61) #27, !dbg !635
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !620, metadata !DIExpression()) #27, !dbg !636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %61, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !629, metadata !DIExpression()) #27, !dbg !633
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !630, metadata !DIExpression()) #27, !dbg !633
  %62 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !630, metadata !DIExpression()) #27, !dbg !633
  br label %63, !dbg !638

63:                                               ; preds = %68, %9
  %64 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %65 = phi %struct.infomap* [ %69, %68 ], [ %62, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !630, metadata !DIExpression()) #27, !dbg !633
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %64) #28, !dbg !639
  %67 = icmp eq i32 %66, 0, !dbg !639
  br i1 %67, label %73, label %68, !dbg !638

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 1, !dbg !640
  call void @llvm.dbg.value(metadata %struct.infomap* %69, metadata !630, metadata !DIExpression()) #27, !dbg !633
  %70 = getelementptr inbounds %struct.infomap, %struct.infomap* %69, i64 0, i32 0, !dbg !641
  %71 = load i8*, i8** %70, align 8, !dbg !641, !tbaa !642
  %72 = icmp eq i8* %71, null, !dbg !644
  br i1 %72, label %73, label %63, !dbg !645, !llvm.loop !646

73:                                               ; preds = %68, %63
  %74 = phi %struct.infomap* [ %65, %63 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.infomap, %struct.infomap* %74, i64 0, i32 1, !dbg !648
  %76 = load i8*, i8** %75, align 8, !dbg !648, !tbaa !650
  %77 = icmp eq i8* %76, null, !dbg !651
  %78 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %76, !dbg !652
  call void @llvm.dbg.value(metadata i8* %78, metadata !629, metadata !DIExpression()) #27, !dbg !633
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #27, !dbg !653
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0)) #27, !dbg !653
  %81 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !654
  call void @llvm.dbg.value(metadata i8* %81, metadata !632, metadata !DIExpression()) #27, !dbg !633
  %82 = icmp eq i8* %81, null, !dbg !655
  br i1 %82, label %90, label %83, !dbg !657

83:                                               ; preds = %73
  %84 = tail call i32 @strncmp(i8* nonnull %81, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #28, !dbg !658
  %85 = icmp eq i32 %84, 0, !dbg !658
  br i1 %85, label %90, label %86, !dbg !659

86:                                               ; preds = %83
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i32 5) #27, !dbg !660
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !592
  %89 = tail call i32 @fputs_unlocked(i8* %87, %struct._IO_FILE* %88) #27, !dbg !660
  br label %90, !dbg !662

90:                                               ; preds = %73, %83, %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 5) #27, !dbg !663
  %92 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #27, !dbg !663
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #27, !dbg !664
  %94 = icmp eq i8* %78, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), !dbg !664
  %95 = select i1 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !664
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %93, i8* %78, i8* %95) #27, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %61) #27, !dbg !665
  br label %97

97:                                               ; preds = %90, %4
  tail call void @exit(i32 %0) #29, !dbg !666
  unreachable, !dbg !666
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !667 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !671 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

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
declare !dbg !726 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !730 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !734, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8** %1, metadata !735, metadata !DIExpression()), !dbg !737
  %3 = load i8*, i8** %1, align 8, !dbg !738, !tbaa !592
  tail call void @set_program_name(i8* %3) #27, !dbg !739
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #27, !dbg !740
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #27, !dbg !741
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #27, !dbg !742
  call void @llvm.dbg.value(metadata i32 2, metadata !743, metadata !DIExpression()), !dbg !746
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !748, !tbaa !750
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !752
  store i8** %1, i8*** @argv, align 8, !dbg !753, !tbaa !592
  store i32 %0, i32* @argc, align 4, !dbg !754, !tbaa !750
  store i32 1, i32* @pos, align 4, !dbg !755, !tbaa !750
  %8 = icmp slt i32 %0, 2, !dbg !756
  br i1 %8, label %26, label %9, !dbg !758

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !759
  %11 = tail call fastcc zeroext i1 @posixtest(i32 %10), !dbg !760
  call void @llvm.dbg.value(metadata i1 %11, metadata !736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !737
  %12 = load i32, i32* @pos, align 4, !dbg !761, !tbaa !750
  %13 = load i32, i32* @argc, align 4, !dbg !763, !tbaa !750
  %14 = icmp eq i32 %12, %13, !dbg !764
  br i1 %14, label %23, label %15, !dbg !765

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #27, !dbg !766
  %17 = load i8**, i8*** @argv, align 8, !dbg !767, !tbaa !592
  %18 = load i32, i32* @pos, align 4, !dbg !768, !tbaa !750
  %19 = sext i32 %18 to i64, !dbg !767
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !767
  %21 = load i8*, i8** %20, align 8, !dbg !767, !tbaa !592
  %22 = tail call i8* @quote(i8* %21) #27, !dbg !769
  tail call void (i8*, ...) @test_syntax_error(i8* %16, i8* %22) #30, !dbg !770
  unreachable, !dbg !770

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !771
  %25 = zext i1 %24 to i32, !dbg !771
  br label %26, !dbg !771

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !737
  ret i32 %27, !dbg !772
}

; Function Attrs: nounwind
declare !dbg !773 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !776 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !779 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32 %0) unnamed_addr #8 !dbg !786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !790, metadata !DIExpression()), !dbg !792
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !793

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !794, !tbaa !592
  %4 = load i32, i32* @pos, align 4, !dbg !800, !tbaa !750
  %5 = add nsw i32 %4, 1, !dbg !800
  store i32 %5, i32* @pos, align 4, !dbg !800, !tbaa !750
  %6 = sext i32 %4 to i64, !dbg !794
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !794
  %8 = load i8*, i8** %7, align 8, !dbg !794, !tbaa !592
  %9 = load i8, i8* %8, align 1, !dbg !794, !tbaa !801
  %10 = icmp ne i8 %9, 0, !dbg !802
  call void @llvm.dbg.value(metadata i1 %10, metadata !791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !792
  br label %151, !dbg !803

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !804, !tbaa !592
  %13 = load i32, i32* @pos, align 4, !dbg !804, !tbaa !750
  %14 = sext i32 %13 to i64, !dbg !804
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !804
  %16 = load i8*, i8** %15, align 8, !dbg !804, !tbaa !592
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %16, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #28, !dbg !804
  %18 = icmp eq i32 %17, 0, !dbg !804
  br i1 %18, label %19, label %27, !dbg !810

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !816
  %20 = add nsw i32 %13, 1, !dbg !819
  %21 = add nsw i32 %13, 2, !dbg !820
  store i32 %21, i32* @pos, align 4, !dbg !820, !tbaa !750
  %22 = sext i32 %20 to i64, !dbg !822
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !822
  %24 = load i8*, i8** %23, align 8, !dbg !822, !tbaa !592
  %25 = load i8, i8* %24, align 1, !dbg !822, !tbaa !801
  %26 = icmp eq i8 %25, 0, !dbg !823
  call void @llvm.dbg.value(metadata i1 %26, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !824
  br label %151, !dbg !825

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !826, !tbaa !801
  %29 = icmp eq i8 %28, 45, !dbg !828
  br i1 %29, label %30, label %40, !dbg !829

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !830
  %32 = load i8, i8* %31, align 1, !dbg !830, !tbaa !801
  %33 = icmp eq i8 %32, 0, !dbg !831
  br i1 %33, label %40, label %34, !dbg !832

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !833
  %36 = load i8, i8* %35, align 1, !dbg !833, !tbaa !801
  %37 = icmp eq i8 %36, 0, !dbg !834
  br i1 %37, label %38, label %40, !dbg !835

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !836
  call void @llvm.dbg.value(metadata i1 %39, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !824
  br label %151

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #29, !dbg !838
  unreachable, !dbg !838

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !839
  call void @llvm.dbg.value(metadata i1 %42, metadata !791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !792
  br label %151, !dbg !840

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !841, !tbaa !592
  %45 = load i32, i32* @pos, align 4, !dbg !841, !tbaa !750
  %46 = sext i32 %45 to i64, !dbg !841
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !841
  %48 = load i8*, i8** %47, align 8, !dbg !841, !tbaa !592
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #28, !dbg !841
  %50 = icmp eq i32 %49, 0, !dbg !841
  br i1 %50, label %51, label %59, !dbg !843

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !844
  %52 = add nsw i32 %45, 1, !dbg !847
  store i32 %52, i32* @pos, align 4, !dbg !847, !tbaa !750
  %53 = load i32, i32* @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !848

55:                                               ; preds = %51
  tail call fastcc void @beyond() #29, !dbg !850
  unreachable, !dbg !850

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !851
  %58 = xor i1 %57, true, !dbg !852
  call void @llvm.dbg.value(metadata i1 %58, metadata !791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !792
  br label %151, !dbg !853

59:                                               ; preds = %43
  %60 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #28, !dbg !854
  %61 = icmp eq i32 %60, 0, !dbg !854
  br i1 %61, label %62, label %107, !dbg !856

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !857
  %64 = sext i32 %63 to i64, !dbg !857
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !857
  %66 = load i8*, i8** %65, align 8, !dbg !857, !tbaa !592
  %67 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #28, !dbg !857
  %68 = icmp eq i32 %67, 0, !dbg !857
  br i1 %68, label %69, label %107, !dbg !858

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !859
  %70 = add nsw i32 %45, 1, !dbg !862
  store i32 %70, i32* @pos, align 4, !dbg !862, !tbaa !750
  %71 = sext i32 %70 to i64, !dbg !863
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !863
  %73 = load i8*, i8** %72, align 8, !dbg !863, !tbaa !592
  %74 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %73, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #28, !dbg !863
  %75 = icmp eq i32 %74, 0, !dbg !863
  br i1 %75, label %76, label %83, !dbg !865

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !866
  %77 = add nsw i32 %45, 2, !dbg !868
  %78 = sext i32 %77 to i64, !dbg !869
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !869
  %80 = load i8*, i8** %79, align 8, !dbg !869, !tbaa !592
  %81 = load i8, i8* %80, align 1, !dbg !869, !tbaa !801
  %82 = icmp eq i8 %81, 0, !dbg !871
  call void @llvm.dbg.value(metadata i1 %82, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !872
  br label %98, !dbg !873

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !874, !tbaa !801
  %85 = icmp eq i8 %84, 45, !dbg !875
  br i1 %85, label %86, label %97, !dbg !876

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !877
  %88 = load i8, i8* %87, align 1, !dbg !877, !tbaa !801
  %89 = icmp eq i8 %88, 0, !dbg !878
  br i1 %89, label %97, label %90, !dbg !879

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !880
  %92 = load i8, i8* %91, align 1, !dbg !880, !tbaa !801
  %93 = icmp eq i8 %92, 0, !dbg !881
  br i1 %93, label %94, label %97, !dbg !882

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !883
  call void @llvm.dbg.value(metadata i1 %95, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !872
  %96 = load i32, i32* @pos, align 4, !dbg !884, !tbaa !750
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #29, !dbg !886
  unreachable, !dbg !886

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !884
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !872
  call void @llvm.dbg.value(metadata i1 %100, metadata !791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !792
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !887
  %101 = add nsw i32 %99, 1, !dbg !884
  store i32 %101, i32* @pos, align 4, !dbg !884, !tbaa !750
  br label %151, !dbg !888

102:                                              ; preds = %1
  %103 = icmp slt i32 %0, 1, !dbg !889
  br i1 %103, label %106, label %104, !dbg !891

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !892, !tbaa !750
  br label %107, !dbg !891

106:                                              ; preds = %102
  tail call void @abort() #29, !dbg !896
  unreachable, !dbg !896

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !892
  %109 = load i32, i32* @argc, align 4, !dbg !897, !tbaa !750
  %110 = icmp slt i32 %108, %109, !dbg !898
  br i1 %110, label %111, label %116, !dbg !899

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 undef, metadata !900, metadata !DIExpression()) #27, !dbg !903
  call void @llvm.dbg.value(metadata i8 1, metadata !905, metadata !DIExpression()) #27, !dbg !908
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !908
  %112 = tail call fastcc zeroext i1 @term() #27, !dbg !911
  call void @llvm.dbg.value(metadata i1 %112, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !908
  %113 = load i32, i32* @pos, align 4, !dbg !913, !tbaa !750
  %114 = load i32, i32* @argc, align 4, !dbg !915, !tbaa !750
  %115 = icmp slt i32 %113, %114, !dbg !916
  br i1 %115, label %117, label %137, !dbg !917

116:                                              ; preds = %107
  tail call fastcc void @beyond() #29, !dbg !918
  unreachable, !dbg !918

117:                                              ; preds = %111, %145
  %118 = phi i32 [ %148, %145 ], [ %113, %111 ]
  %119 = phi i1 [ %147, %145 ], [ %112, %111 ]
  %120 = phi i1 [ %142, %145 ], [ false, %111 ]
  br label %121, !dbg !917

121:                                              ; preds = %117, %130
  %122 = phi i32 [ %118, %117 ], [ %134, %130 ]
  %123 = phi i1 [ %119, %117 ], [ %133, %130 ]
  %124 = load i8**, i8*** @argv, align 8, !dbg !919, !tbaa !592
  %125 = sext i32 %122 to i64, !dbg !919
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125, !dbg !919
  %127 = load i8*, i8** %126, align 8, !dbg !919, !tbaa !592
  %128 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !919
  %129 = icmp eq i32 %128, 0, !dbg !919
  br i1 %129, label %130, label %141, !dbg !920

130:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !921
  %131 = add nsw i32 %122, 1, !dbg !923
  store i32 %131, i32* @pos, align 4, !dbg !923, !tbaa !750
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !908
  %132 = tail call fastcc zeroext i1 @term() #27, !dbg !911
  %133 = and i1 %123, %132, !dbg !924
  call void @llvm.dbg.value(metadata i1 %133, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !908
  %134 = load i32, i32* @pos, align 4, !dbg !913, !tbaa !750
  %135 = load i32, i32* @argc, align 4, !dbg !915, !tbaa !750
  %136 = icmp slt i32 %134, %135, !dbg !916
  br i1 %136, label %121, label %137, !dbg !917, !llvm.loop !925

137:                                              ; preds = %145, %130, %111
  %138 = phi i1 [ false, %111 ], [ %120, %130 ], [ %142, %145 ], !dbg !903
  %139 = phi i1 [ %112, %111 ], [ %133, %130 ], [ %147, %145 ], !dbg !924
  %140 = or i1 %138, %139, !dbg !928
  call void @llvm.dbg.value(metadata i1 %140, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !903
  br label %151

141:                                              ; preds = %121
  %142 = or i1 %120, %123, !dbg !928
  call void @llvm.dbg.value(metadata i1 %140, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !903
  %143 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %127, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !929
  %144 = icmp eq i32 %143, 0, !dbg !929
  br i1 %144, label %145, label %151, !dbg !931

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !932
  %146 = add nsw i32 %122, 1, !dbg !934
  store i32 %146, i32* @pos, align 4, !dbg !934, !tbaa !750
  call void @llvm.dbg.value(metadata i8 undef, metadata !900, metadata !DIExpression()) #27, !dbg !903
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !908
  %147 = tail call fastcc zeroext i1 @term() #27, !dbg !911
  call void @llvm.dbg.value(metadata i1 %147, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !908
  %148 = load i32, i32* @pos, align 4, !dbg !913, !tbaa !750
  %149 = load i32, i32* @argc, align 4, !dbg !915, !tbaa !750
  %150 = icmp slt i32 %148, %149, !dbg !916
  br i1 %150, label %117, label %137, !dbg !917, !llvm.loop !935

151:                                              ; preds = %141, %137, %38, %19, %98, %56, %41, %2
  %152 = phi i1 [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ], [ %140, %137 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i1 %152, metadata !791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !792
  ret i1 %152, !dbg !938
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8* %0, ...) unnamed_addr #0 !dbg !939 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !943, metadata !DIExpression()), !dbg !956
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #27, !dbg !957
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !944, metadata !DIExpression()), !dbg !958
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !959
  call void @llvm.va_start(i8* nonnull %3), !dbg !959
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #27, !dbg !960
  call void @exit(i32 2) #29, !dbg !961
  unreachable, !dbg !961
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #8 !dbg !962 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #27, !dbg !1017
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !964, metadata !DIExpression()), !dbg !1018
  %3 = load i8**, i8*** @argv, align 8, !dbg !1019, !tbaa !592
  %4 = load i32, i32* @pos, align 4, !dbg !1020, !tbaa !750
  %5 = sext i32 %4 to i64, !dbg !1019
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !1019
  %7 = load i8*, i8** %6, align 8, !dbg !1019, !tbaa !592
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1019
  %9 = load i8, i8* %8, align 1, !dbg !1019, !tbaa !801
  %10 = sext i8 %9 to i32, !dbg !1019
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
  ], !dbg !1021

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1022
  %13 = load i8**, i8*** @argv, align 8, !dbg !1023, !tbaa !592
  %14 = load i32, i32* @pos, align 4, !dbg !1024, !tbaa !750
  %15 = sext i32 %14 to i64, !dbg !1023
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !1023
  %17 = load i8*, i8** %16, align 8, !dbg !1023, !tbaa !592
  %18 = tail call i8* @quote(i8* %17) #27, !dbg !1025
  tail call void (i8*, ...) @test_syntax_error(i8* %12, i8* %18) #30, !dbg !1026
  unreachable, !dbg !1026

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1027
  %20 = add nsw i32 %4, 1, !dbg !1031
  store i32 %20, i32* @pos, align 4, !dbg !1031, !tbaa !750
  %21 = load i32, i32* @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !1032

23:                                               ; preds = %19
  tail call fastcc void @beyond() #29, !dbg !1033
  unreachable, !dbg !1033

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1034
  store i32 %25, i32* @pos, align 4, !dbg !1034, !tbaa !750
  %26 = sext i32 %20 to i64, !dbg !1035
  %27 = getelementptr inbounds i8*, i8** %3, i64 %26, !dbg !1035
  %28 = load i8*, i8** %27, align 8, !dbg !1035, !tbaa !592
  %29 = call i32 @stat(i8* %28, %struct.stat* nonnull %1) #27, !dbg !1036
  %30 = icmp eq i32 %29, 0, !dbg !1037
  br label %376, !dbg !1038

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1039
  %32 = add nsw i32 %4, 1, !dbg !1042
  store i32 %32, i32* @pos, align 4, !dbg !1042, !tbaa !750
  %33 = load i32, i32* @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1043

35:                                               ; preds = %31
  tail call fastcc void @beyond() #29, !dbg !1044
  unreachable, !dbg !1044

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1045
  store i32 %37, i32* @pos, align 4, !dbg !1045, !tbaa !750
  %38 = sext i32 %32 to i64, !dbg !1046
  %39 = getelementptr inbounds i8*, i8** %3, i64 %38, !dbg !1046
  %40 = load i8*, i8** %39, align 8, !dbg !1046, !tbaa !592
  %41 = tail call i32 @euidaccess(i8* %40, i32 4) #27, !dbg !1047
  %42 = icmp eq i32 %41, 0, !dbg !1048
  br label %376, !dbg !1049

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1050
  %44 = add nsw i32 %4, 1, !dbg !1053
  store i32 %44, i32* @pos, align 4, !dbg !1053, !tbaa !750
  %45 = load i32, i32* @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !1054

47:                                               ; preds = %43
  tail call fastcc void @beyond() #29, !dbg !1055
  unreachable, !dbg !1055

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1056
  store i32 %49, i32* @pos, align 4, !dbg !1056, !tbaa !750
  %50 = sext i32 %44 to i64, !dbg !1057
  %51 = getelementptr inbounds i8*, i8** %3, i64 %50, !dbg !1057
  %52 = load i8*, i8** %51, align 8, !dbg !1057, !tbaa !592
  %53 = tail call i32 @euidaccess(i8* %52, i32 2) #27, !dbg !1058
  %54 = icmp eq i32 %53, 0, !dbg !1059
  br label %376, !dbg !1060

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1061
  %56 = add nsw i32 %4, 1, !dbg !1064
  store i32 %56, i32* @pos, align 4, !dbg !1064, !tbaa !750
  %57 = load i32, i32* @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !1065

59:                                               ; preds = %55
  tail call fastcc void @beyond() #29, !dbg !1066
  unreachable, !dbg !1066

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1067
  store i32 %61, i32* @pos, align 4, !dbg !1067, !tbaa !750
  %62 = sext i32 %56 to i64, !dbg !1068
  %63 = getelementptr inbounds i8*, i8** %3, i64 %62, !dbg !1068
  %64 = load i8*, i8** %63, align 8, !dbg !1068, !tbaa !592
  %65 = tail call i32 @euidaccess(i8* %64, i32 1) #27, !dbg !1069
  %66 = icmp eq i32 %65, 0, !dbg !1070
  br label %376, !dbg !1071

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1072
  %68 = add nsw i32 %4, 1, !dbg !1075
  store i32 %68, i32* @pos, align 4, !dbg !1075, !tbaa !750
  %69 = load i32, i32* @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !1076

71:                                               ; preds = %67
  tail call fastcc void @beyond() #29, !dbg !1077
  unreachable, !dbg !1077

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1078
  store i32 %73, i32* @pos, align 4, !dbg !1078, !tbaa !750
  %74 = sext i32 %68 to i64, !dbg !1079
  %75 = getelementptr inbounds i8*, i8** %3, i64 %74, !dbg !1079
  %76 = load i8*, i8** %75, align 8, !dbg !1079, !tbaa !592
  %77 = call i32 @stat(i8* %76, %struct.stat* nonnull %1) #27, !dbg !1081
  %78 = icmp eq i32 %77, 0, !dbg !1082
  br i1 %78, label %79, label %376, !dbg !1083

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1084, metadata !DIExpression()), !dbg !1092
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 0, !dbg !1094
  %81 = load i64, i64* %80, align 8, !dbg !1094, !tbaa.struct !1095
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 1, !dbg !1094
  %83 = load i64, i64* %82, align 8, !dbg !1094, !tbaa.struct !1098
  call void @llvm.dbg.value(metadata i64 %81, metadata !1001, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %83, metadata !1001, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1099
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !1100, metadata !DIExpression()), !dbg !1103
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 0, !dbg !1105
  %85 = load i64, i64* %84, align 8, !dbg !1105, !tbaa.struct !1095
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 1, !dbg !1105
  %87 = load i64, i64* %86, align 8, !dbg !1105, !tbaa.struct !1098
  call void @llvm.dbg.value(metadata i64 %85, metadata !1004, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %87, metadata !1004, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %85, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %87, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %81, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %83, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1112
  %88 = icmp slt i64 %85, %81, !dbg !1114
  br i1 %88, label %376, label %89, !dbg !1116

89:                                               ; preds = %79
  %90 = icmp sgt i64 %85, %81, !dbg !1117
  br i1 %90, label %376, label %91, !dbg !1119

91:                                               ; preds = %89
  %92 = icmp sgt i64 %87, -2, !dbg !1120
  tail call void @llvm.assume(i1 %92) #27, !dbg !1120
  %93 = icmp slt i64 %87, 2000000001, !dbg !1120
  tail call void @llvm.assume(i1 %93) #27, !dbg !1120
  %94 = icmp sgt i64 %83, -2, !dbg !1121
  tail call void @llvm.assume(i1 %94) #27, !dbg !1121
  %95 = icmp slt i64 %83, 2000000001, !dbg !1121
  tail call void @llvm.assume(i1 %95) #27, !dbg !1121
  %96 = sub nsw i64 %87, %83, !dbg !1122
  %97 = trunc i64 %96 to i32, !dbg !1123
  %98 = icmp sgt i32 %97, 0, !dbg !1124
  br label %376, !dbg !1124

99:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1125
  %100 = add nsw i32 %4, 1, !dbg !1128
  store i32 %100, i32* @pos, align 4, !dbg !1128, !tbaa !750
  %101 = load i32, i32* @argc, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %104, label %103, !dbg !1129

103:                                              ; preds = %99
  tail call fastcc void @beyond() #29, !dbg !1130
  unreachable, !dbg !1130

104:                                              ; preds = %99
  %105 = add nsw i32 %4, 2, !dbg !1131
  store i32 %105, i32* @pos, align 4, !dbg !1131, !tbaa !750
  %106 = sext i32 %100 to i64, !dbg !1132
  %107 = getelementptr inbounds i8*, i8** %3, i64 %106, !dbg !1132
  %108 = load i8*, i8** %107, align 8, !dbg !1132, !tbaa !592
  %109 = call i32 @stat(i8* %108, %struct.stat* nonnull %1) #27, !dbg !1134
  %110 = icmp eq i32 %109, 0, !dbg !1135
  br i1 %110, label %111, label %376, !dbg !1136

111:                                              ; preds = %104
  %112 = tail call i32* @__errno_location() #31, !dbg !1137
  store i32 0, i32* %112, align 4, !dbg !1138, !tbaa !750
  %113 = tail call i32 @geteuid() #27, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %113, metadata !1005, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 -1, metadata !1009, metadata !DIExpression()), !dbg !1140
  %114 = icmp eq i32 %113, -1, !dbg !1141
  br i1 %114, label %115, label %118, !dbg !1142

115:                                              ; preds = %111
  %116 = load i32, i32* %112, align 4, !dbg !1143, !tbaa !750
  %117 = icmp eq i32 %116, 0, !dbg !1143
  br i1 %117, label %118, label %376, !dbg !1144

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !1145
  %120 = load i32, i32* %119, align 4, !dbg !1145, !tbaa !1146
  %121 = icmp eq i32 %113, %120, !dbg !1149
  br label %376

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1150
  %123 = add nsw i32 %4, 1, !dbg !1153
  store i32 %123, i32* @pos, align 4, !dbg !1153, !tbaa !750
  %124 = load i32, i32* @argc, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %127, label %126, !dbg !1154

126:                                              ; preds = %122
  tail call fastcc void @beyond() #29, !dbg !1155
  unreachable, !dbg !1155

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1156
  store i32 %128, i32* @pos, align 4, !dbg !1156, !tbaa !750
  %129 = sext i32 %123 to i64, !dbg !1157
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !1157
  %131 = load i8*, i8** %130, align 8, !dbg !1157, !tbaa !592
  %132 = call i32 @stat(i8* %131, %struct.stat* nonnull %1) #27, !dbg !1159
  %133 = icmp eq i32 %132, 0, !dbg !1160
  br i1 %133, label %134, label %376, !dbg !1161

134:                                              ; preds = %127
  %135 = tail call i32* @__errno_location() #31, !dbg !1162
  store i32 0, i32* %135, align 4, !dbg !1163, !tbaa !750
  %136 = tail call i32 @getegid() #27, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %136, metadata !1010, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 -1, metadata !1013, metadata !DIExpression()), !dbg !1165
  %137 = icmp eq i32 %136, -1, !dbg !1166
  br i1 %137, label %138, label %141, !dbg !1167

138:                                              ; preds = %134
  %139 = load i32, i32* %135, align 4, !dbg !1168, !tbaa !750
  %140 = icmp eq i32 %139, 0, !dbg !1168
  br i1 %140, label %141, label %376, !dbg !1169

141:                                              ; preds = %138, %134
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !1170
  %143 = load i32, i32* %142, align 8, !dbg !1170, !tbaa !1171
  %144 = icmp eq i32 %136, %143, !dbg !1172
  br label %376

145:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1173
  %146 = add nsw i32 %4, 1, !dbg !1176
  store i32 %146, i32* @pos, align 4, !dbg !1176, !tbaa !750
  %147 = load i32, i32* @argc, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %150, label %149, !dbg !1177

149:                                              ; preds = %145
  tail call fastcc void @beyond() #29, !dbg !1178
  unreachable, !dbg !1178

150:                                              ; preds = %145
  %151 = add nsw i32 %4, 2, !dbg !1179
  store i32 %151, i32* @pos, align 4, !dbg !1179, !tbaa !750
  %152 = sext i32 %146 to i64, !dbg !1180
  %153 = getelementptr inbounds i8*, i8** %3, i64 %152, !dbg !1180
  %154 = load i8*, i8** %153, align 8, !dbg !1180, !tbaa !592
  %155 = call i32 @stat(i8* %154, %struct.stat* nonnull %1) #27, !dbg !1181
  %156 = icmp eq i32 %155, 0, !dbg !1182
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1183
  %158 = load i32, i32* %157, align 8, !dbg !1183
  %159 = and i32 %158, 61440, !dbg !1183
  %160 = icmp eq i32 %159, 32768, !dbg !1183
  %161 = and i1 %156, %160, !dbg !1183
  br label %376, !dbg !1184

162:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1185
  %163 = add nsw i32 %4, 1, !dbg !1188
  store i32 %163, i32* @pos, align 4, !dbg !1188, !tbaa !750
  %164 = load i32, i32* @argc, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %167, label %166, !dbg !1189

166:                                              ; preds = %162
  tail call fastcc void @beyond() #29, !dbg !1190
  unreachable, !dbg !1190

167:                                              ; preds = %162
  %168 = add nsw i32 %4, 2, !dbg !1191
  store i32 %168, i32* @pos, align 4, !dbg !1191, !tbaa !750
  %169 = sext i32 %163 to i64, !dbg !1192
  %170 = getelementptr inbounds i8*, i8** %3, i64 %169, !dbg !1192
  %171 = load i8*, i8** %170, align 8, !dbg !1192, !tbaa !592
  %172 = call i32 @stat(i8* %171, %struct.stat* nonnull %1) #27, !dbg !1193
  %173 = icmp eq i32 %172, 0, !dbg !1194
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1195
  %175 = load i32, i32* %174, align 8, !dbg !1195
  %176 = and i32 %175, 61440, !dbg !1195
  %177 = icmp eq i32 %176, 16384, !dbg !1195
  %178 = and i1 %173, %177, !dbg !1195
  br label %376, !dbg !1196

179:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1197
  %180 = add nsw i32 %4, 1, !dbg !1200
  store i32 %180, i32* @pos, align 4, !dbg !1200, !tbaa !750
  %181 = load i32, i32* @argc, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %184, label %183, !dbg !1201

183:                                              ; preds = %179
  tail call fastcc void @beyond() #29, !dbg !1202
  unreachable, !dbg !1202

184:                                              ; preds = %179
  %185 = add nsw i32 %4, 2, !dbg !1203
  store i32 %185, i32* @pos, align 4, !dbg !1203, !tbaa !750
  %186 = sext i32 %180 to i64, !dbg !1204
  %187 = getelementptr inbounds i8*, i8** %3, i64 %186, !dbg !1204
  %188 = load i8*, i8** %187, align 8, !dbg !1204, !tbaa !592
  %189 = call i32 @stat(i8* %188, %struct.stat* nonnull %1) #27, !dbg !1205
  %190 = icmp eq i32 %189, 0, !dbg !1206
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !1207
  %192 = load i64, i64* %191, align 8, !dbg !1207
  %193 = icmp sgt i64 %192, 0, !dbg !1207
  %194 = and i1 %190, %193, !dbg !1207
  br label %376, !dbg !1208

195:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1209
  %196 = add nsw i32 %4, 1, !dbg !1212
  store i32 %196, i32* @pos, align 4, !dbg !1212, !tbaa !750
  %197 = load i32, i32* @argc, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %200, label %199, !dbg !1213

199:                                              ; preds = %195
  tail call fastcc void @beyond() #29, !dbg !1214
  unreachable, !dbg !1214

200:                                              ; preds = %195
  %201 = add nsw i32 %4, 2, !dbg !1215
  store i32 %201, i32* @pos, align 4, !dbg !1215, !tbaa !750
  %202 = sext i32 %196 to i64, !dbg !1216
  %203 = getelementptr inbounds i8*, i8** %3, i64 %202, !dbg !1216
  %204 = load i8*, i8** %203, align 8, !dbg !1216, !tbaa !592
  %205 = call i32 @stat(i8* %204, %struct.stat* nonnull %1) #27, !dbg !1217
  %206 = icmp eq i32 %205, 0, !dbg !1218
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1219
  %208 = load i32, i32* %207, align 8, !dbg !1219
  %209 = and i32 %208, 61440, !dbg !1219
  %210 = icmp eq i32 %209, 49152, !dbg !1219
  %211 = and i1 %206, %210, !dbg !1219
  br label %376, !dbg !1220

212:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1221
  %213 = add nsw i32 %4, 1, !dbg !1224
  store i32 %213, i32* @pos, align 4, !dbg !1224, !tbaa !750
  %214 = load i32, i32* @argc, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %217, label %216, !dbg !1225

216:                                              ; preds = %212
  tail call fastcc void @beyond() #29, !dbg !1226
  unreachable, !dbg !1226

217:                                              ; preds = %212
  %218 = add nsw i32 %4, 2, !dbg !1227
  store i32 %218, i32* @pos, align 4, !dbg !1227, !tbaa !750
  %219 = sext i32 %213 to i64, !dbg !1228
  %220 = getelementptr inbounds i8*, i8** %3, i64 %219, !dbg !1228
  %221 = load i8*, i8** %220, align 8, !dbg !1228, !tbaa !592
  %222 = call i32 @stat(i8* %221, %struct.stat* nonnull %1) #27, !dbg !1229
  %223 = icmp eq i32 %222, 0, !dbg !1230
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1231
  %225 = load i32, i32* %224, align 8, !dbg !1231
  %226 = and i32 %225, 61440, !dbg !1231
  %227 = icmp eq i32 %226, 8192, !dbg !1231
  %228 = and i1 %223, %227, !dbg !1231
  br label %376, !dbg !1232

229:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1233
  %230 = add nsw i32 %4, 1, !dbg !1236
  store i32 %230, i32* @pos, align 4, !dbg !1236, !tbaa !750
  %231 = load i32, i32* @argc, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %234, label %233, !dbg !1237

233:                                              ; preds = %229
  tail call fastcc void @beyond() #29, !dbg !1238
  unreachable, !dbg !1238

234:                                              ; preds = %229
  %235 = add nsw i32 %4, 2, !dbg !1239
  store i32 %235, i32* @pos, align 4, !dbg !1239, !tbaa !750
  %236 = sext i32 %230 to i64, !dbg !1240
  %237 = getelementptr inbounds i8*, i8** %3, i64 %236, !dbg !1240
  %238 = load i8*, i8** %237, align 8, !dbg !1240, !tbaa !592
  %239 = call i32 @stat(i8* %238, %struct.stat* nonnull %1) #27, !dbg !1241
  %240 = icmp eq i32 %239, 0, !dbg !1242
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1243
  %242 = load i32, i32* %241, align 8, !dbg !1243
  %243 = and i32 %242, 61440, !dbg !1243
  %244 = icmp eq i32 %243, 24576, !dbg !1243
  %245 = and i1 %240, %244, !dbg !1243
  br label %376, !dbg !1244

246:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1245
  %247 = add nsw i32 %4, 1, !dbg !1248
  store i32 %247, i32* @pos, align 4, !dbg !1248, !tbaa !750
  %248 = load i32, i32* @argc, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %251, label %250, !dbg !1249

250:                                              ; preds = %246
  tail call fastcc void @beyond() #29, !dbg !1250
  unreachable, !dbg !1250

251:                                              ; preds = %246
  %252 = add nsw i32 %4, 2, !dbg !1251
  store i32 %252, i32* @pos, align 4, !dbg !1251, !tbaa !750
  %253 = sext i32 %247 to i64, !dbg !1252
  %254 = getelementptr inbounds i8*, i8** %3, i64 %253, !dbg !1252
  %255 = load i8*, i8** %254, align 8, !dbg !1252, !tbaa !592
  %256 = call i32 @stat(i8* %255, %struct.stat* nonnull %1) #27, !dbg !1253
  %257 = icmp eq i32 %256, 0, !dbg !1254
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1255
  %259 = load i32, i32* %258, align 8, !dbg !1255
  %260 = and i32 %259, 61440, !dbg !1255
  %261 = icmp eq i32 %260, 4096, !dbg !1255
  %262 = and i1 %257, %261, !dbg !1255
  br label %376, !dbg !1256

263:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1257
  %264 = add nsw i32 %4, 1, !dbg !1260
  store i32 %264, i32* @pos, align 4, !dbg !1260, !tbaa !750
  %265 = load i32, i32* @argc, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %268, label %267, !dbg !1261

267:                                              ; preds = %263
  tail call fastcc void @beyond() #29, !dbg !1262
  unreachable, !dbg !1262

268:                                              ; preds = %263
  %269 = add nsw i32 %4, 2, !dbg !1263
  store i32 %269, i32* @pos, align 4, !dbg !1263, !tbaa !750
  %270 = sext i32 %264 to i64, !dbg !1264
  %271 = getelementptr inbounds i8*, i8** %3, i64 %270, !dbg !1264
  %272 = load i8*, i8** %271, align 8, !dbg !1264, !tbaa !592
  %273 = call i32 @lstat(i8* %272, %struct.stat* nonnull %1) #27, !dbg !1265
  %274 = icmp eq i32 %273, 0, !dbg !1266
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1267
  %276 = load i32, i32* %275, align 8, !dbg !1267
  %277 = and i32 %276, 61440, !dbg !1267
  %278 = icmp eq i32 %277, 40960, !dbg !1267
  %279 = and i1 %274, %278, !dbg !1267
  br label %376, !dbg !1268

280:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1269
  %281 = add nsw i32 %4, 1, !dbg !1272
  store i32 %281, i32* @pos, align 4, !dbg !1272, !tbaa !750
  %282 = load i32, i32* @argc, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %285, label %284, !dbg !1273

284:                                              ; preds = %280
  tail call fastcc void @beyond() #29, !dbg !1274
  unreachable, !dbg !1274

285:                                              ; preds = %280
  %286 = add nsw i32 %4, 2, !dbg !1275
  store i32 %286, i32* @pos, align 4, !dbg !1275, !tbaa !750
  %287 = sext i32 %281 to i64, !dbg !1276
  %288 = getelementptr inbounds i8*, i8** %3, i64 %287, !dbg !1276
  %289 = load i8*, i8** %288, align 8, !dbg !1276, !tbaa !592
  %290 = call i32 @stat(i8* %289, %struct.stat* nonnull %1) #27, !dbg !1277
  %291 = icmp eq i32 %290, 0, !dbg !1278
  %292 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1279
  %293 = load i32, i32* %292, align 8, !dbg !1279
  %294 = and i32 %293, 2048, !dbg !1279
  %295 = icmp ne i32 %294, 0, !dbg !1279
  %296 = and i1 %291, %295, !dbg !1279
  br label %376, !dbg !1280

297:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1281
  %298 = add nsw i32 %4, 1, !dbg !1284
  store i32 %298, i32* @pos, align 4, !dbg !1284, !tbaa !750
  %299 = load i32, i32* @argc, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %302, label %301, !dbg !1285

301:                                              ; preds = %297
  tail call fastcc void @beyond() #29, !dbg !1286
  unreachable, !dbg !1286

302:                                              ; preds = %297
  %303 = add nsw i32 %4, 2, !dbg !1287
  store i32 %303, i32* @pos, align 4, !dbg !1287, !tbaa !750
  %304 = sext i32 %298 to i64, !dbg !1288
  %305 = getelementptr inbounds i8*, i8** %3, i64 %304, !dbg !1288
  %306 = load i8*, i8** %305, align 8, !dbg !1288, !tbaa !592
  %307 = call i32 @stat(i8* %306, %struct.stat* nonnull %1) #27, !dbg !1289
  %308 = icmp eq i32 %307, 0, !dbg !1290
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1291
  %310 = load i32, i32* %309, align 8, !dbg !1291
  %311 = and i32 %310, 1024, !dbg !1291
  %312 = icmp ne i32 %311, 0, !dbg !1291
  %313 = and i1 %308, %312, !dbg !1291
  br label %376, !dbg !1292

314:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1293
  %315 = add nsw i32 %4, 1, !dbg !1296
  store i32 %315, i32* @pos, align 4, !dbg !1296, !tbaa !750
  %316 = load i32, i32* @argc, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %319, label %318, !dbg !1297

318:                                              ; preds = %314
  tail call fastcc void @beyond() #29, !dbg !1298
  unreachable, !dbg !1298

319:                                              ; preds = %314
  %320 = add nsw i32 %4, 2, !dbg !1299
  store i32 %320, i32* @pos, align 4, !dbg !1299, !tbaa !750
  %321 = sext i32 %315 to i64, !dbg !1300
  %322 = getelementptr inbounds i8*, i8** %3, i64 %321, !dbg !1300
  %323 = load i8*, i8** %322, align 8, !dbg !1300, !tbaa !592
  %324 = call i32 @stat(i8* %323, %struct.stat* nonnull %1) #27, !dbg !1301
  %325 = icmp eq i32 %324, 0, !dbg !1302
  %326 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !1303
  %327 = load i32, i32* %326, align 8, !dbg !1303
  %328 = and i32 %327, 512, !dbg !1303
  %329 = icmp ne i32 %328, 0, !dbg !1303
  %330 = and i1 %325, %329, !dbg !1303
  br label %376, !dbg !1304

331:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1305
  %332 = add nsw i32 %4, 1, !dbg !1308
  store i32 %332, i32* @pos, align 4, !dbg !1308, !tbaa !750
  %333 = load i32, i32* @argc, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %336, label %335, !dbg !1309

335:                                              ; preds = %331
  tail call fastcc void @beyond() #29, !dbg !1310
  unreachable, !dbg !1310

336:                                              ; preds = %331
  %337 = add nsw i32 %4, 2, !dbg !1311
  store i32 %337, i32* @pos, align 4, !dbg !1311, !tbaa !750
  %338 = sext i32 %332 to i64, !dbg !1312
  %339 = getelementptr inbounds i8*, i8** %3, i64 %338, !dbg !1312
  %340 = load i8*, i8** %339, align 8, !dbg !1312, !tbaa !592
  %341 = tail call fastcc i8* @find_int(i8* %340), !dbg !1313
  call void @llvm.dbg.value(metadata i8* %341, metadata !1016, metadata !DIExpression()), !dbg !1314
  %342 = tail call i32* @__errno_location() #31, !dbg !1315
  store i32 0, i32* %342, align 4, !dbg !1316, !tbaa !750
  %343 = tail call i64 @strtol(i8* nocapture %341, i8** null, i32 10) #27, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %343, metadata !1014, metadata !DIExpression()), !dbg !1314
  %344 = load i32, i32* %342, align 4, !dbg !1318, !tbaa !750
  %345 = icmp ne i32 %344, 34, !dbg !1319
  %346 = icmp ult i64 %343, 2147483648, !dbg !1320
  %347 = and i1 %346, %345, !dbg !1320
  br i1 %347, label %348, label %376, !dbg !1320

348:                                              ; preds = %336
  %349 = trunc i64 %343 to i32, !dbg !1321
  %350 = tail call i32 @isatty(i32 %349) #27, !dbg !1322
  %351 = icmp ne i32 %350, 0, !dbg !1323
  br label %376

352:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1324
  %353 = add nsw i32 %4, 1, !dbg !1327
  store i32 %353, i32* @pos, align 4, !dbg !1327, !tbaa !750
  %354 = load i32, i32* @argc, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %357, label %356, !dbg !1328

356:                                              ; preds = %352
  tail call fastcc void @beyond() #29, !dbg !1329
  unreachable, !dbg !1329

357:                                              ; preds = %352
  %358 = add nsw i32 %4, 2, !dbg !1330
  store i32 %358, i32* @pos, align 4, !dbg !1330, !tbaa !750
  %359 = sext i32 %353 to i64, !dbg !1331
  %360 = getelementptr inbounds i8*, i8** %3, i64 %359, !dbg !1331
  %361 = load i8*, i8** %360, align 8, !dbg !1331, !tbaa !592
  %362 = load i8, i8* %361, align 1, !dbg !1331, !tbaa !801
  %363 = icmp ne i8 %362, 0, !dbg !1332
  br label %376, !dbg !1333

364:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1334
  %365 = add nsw i32 %4, 1, !dbg !1337
  store i32 %365, i32* @pos, align 4, !dbg !1337, !tbaa !750
  %366 = load i32, i32* @argc, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %369, label %368, !dbg !1338

368:                                              ; preds = %364
  tail call fastcc void @beyond() #29, !dbg !1339
  unreachable, !dbg !1339

369:                                              ; preds = %364
  %370 = add nsw i32 %4, 2, !dbg !1340
  store i32 %370, i32* @pos, align 4, !dbg !1340, !tbaa !750
  %371 = sext i32 %365 to i64, !dbg !1341
  %372 = getelementptr inbounds i8*, i8** %3, i64 %371, !dbg !1341
  %373 = load i8*, i8** %372, align 8, !dbg !1341, !tbaa !592
  %374 = load i8, i8* %373, align 1, !dbg !1341, !tbaa !801
  %375 = icmp eq i8 %374, 0, !dbg !1342
  br label %376, !dbg !1343

376:                                              ; preds = %91, %89, %79, %336, %348, %138, %141, %127, %115, %118, %104, %72, %369, %357, %319, %302, %285, %268, %251, %234, %217, %200, %184, %167, %150, %60, %48, %36, %24
  %377 = phi i1 [ %375, %369 ], [ %363, %357 ], [ %330, %319 ], [ %313, %302 ], [ %296, %285 ], [ %279, %268 ], [ %262, %251 ], [ %245, %234 ], [ %228, %217 ], [ %211, %200 ], [ %194, %184 ], [ %178, %167 ], [ %161, %150 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %104 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %138 ], [ %144, %141 ], [ false, %336 ], [ %351, %348 ], [ %98, %91 ], [ false, %79 ], [ true, %89 ], !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #27, !dbg !1345
  ret i1 %377, !dbg !1345
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1346 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 5) #27, !dbg !1347
  %2 = load i8**, i8*** @argv, align 8, !dbg !1348, !tbaa !592
  %3 = load i32, i32* @argc, align 4, !dbg !1349, !tbaa !750
  %4 = add nsw i32 %3, -1, !dbg !1350
  %5 = sext i32 %4 to i64, !dbg !1348
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1348
  %7 = load i8*, i8** %6, align 8, !dbg !1348, !tbaa !592
  %8 = tail call i8* @quote(i8* %7) #27, !dbg !1351
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #30, !dbg !1352
  unreachable, !dbg !1352
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #8 !dbg !1353 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1356, !tbaa !592
  %2 = load i32, i32* @pos, align 4, !dbg !1358, !tbaa !750
  %3 = add nsw i32 %2, 1, !dbg !1359
  %4 = sext i32 %3 to i64, !dbg !1356
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1356
  %6 = load i8*, i8** %5, align 8, !dbg !1356, !tbaa !592
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1360
  br i1 %7, label %8, label %10, !dbg !1361

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1362
  call void @llvm.dbg.value(metadata i1 %9, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1363
  br label %120, !dbg !1364

10:                                               ; preds = %0
  %11 = sext i32 %2 to i64, !dbg !1365
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1365
  %13 = load i8*, i8** %12, align 8, !dbg !1365, !tbaa !592
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #28, !dbg !1365
  %15 = icmp eq i32 %14, 0, !dbg !1365
  br i1 %15, label %16, label %48, !dbg !1367

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1368
  store i32 %3, i32* @pos, align 4, !dbg !1371, !tbaa !750
  %17 = load i32, i32* @argc, align 4
  %18 = icmp slt i32 %3, %17
  br i1 %18, label %20, label %19, !dbg !1372

19:                                               ; preds = %16
  tail call fastcc void @beyond() #29, !dbg !1373
  unreachable, !dbg !1373

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #28, !dbg !1374
  %22 = icmp eq i32 %21, 0, !dbg !1374
  br i1 %22, label %23, label %31, !dbg !1376

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1377
  %24 = add nsw i32 %2, 2, !dbg !1379
  %25 = add nsw i32 %2, 3, !dbg !1380
  store i32 %25, i32* @pos, align 4, !dbg !1380, !tbaa !750
  %26 = sext i32 %24 to i64, !dbg !1382
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !1382
  %28 = load i8*, i8** %27, align 8, !dbg !1382, !tbaa !592
  %29 = load i8, i8* %28, align 1, !dbg !1382, !tbaa !801
  %30 = icmp eq i8 %29, 0, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %30, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1384
  br label %45, !dbg !1385

31:                                               ; preds = %20
  %32 = load i8, i8* %6, align 1, !dbg !1386, !tbaa !801
  %33 = icmp eq i8 %32, 45, !dbg !1387
  br i1 %33, label %34, label %44, !dbg !1388

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1389
  %36 = load i8, i8* %35, align 1, !dbg !1389, !tbaa !801
  %37 = icmp eq i8 %36, 0, !dbg !1390
  br i1 %37, label %44, label %38, !dbg !1391

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1392
  %40 = load i8, i8* %39, align 1, !dbg !1392, !tbaa !801
  %41 = icmp eq i8 %40, 0, !dbg !1393
  br i1 %41, label %42, label %44, !dbg !1394

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator() #27, !dbg !1395
  call void @llvm.dbg.value(metadata i1 %43, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1384
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #29, !dbg !1396
  unreachable, !dbg !1396

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1384
  %47 = xor i1 %46, true, !dbg !1397
  call void @llvm.dbg.value(metadata i1 %47, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1363
  br label %120, !dbg !1398

48:                                               ; preds = %10
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %13, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #28, !dbg !1399
  %50 = icmp eq i32 %49, 0, !dbg !1399
  br i1 %50, label %51, label %62, !dbg !1401

51:                                               ; preds = %48
  %52 = add nsw i32 %2, 2, !dbg !1402
  %53 = sext i32 %52 to i64, !dbg !1402
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !1402
  %55 = load i8*, i8** %54, align 8, !dbg !1402, !tbaa !592
  %56 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %55, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #28, !dbg !1402
  %57 = icmp eq i32 %56, 0, !dbg !1402
  br i1 %57, label %58, label %62, !dbg !1403

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1404
  %59 = load i8, i8* %6, align 1, !dbg !1407, !tbaa !801
  %60 = icmp ne i8 %59, 0, !dbg !1409
  call void @llvm.dbg.value(metadata i1 %60, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1363
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1410
  %61 = add nsw i32 %2, 3, !dbg !1412
  store i32 %61, i32* @pos, align 4, !dbg !1412, !tbaa !750
  br label %120, !dbg !1413

62:                                               ; preds = %51, %48
  %63 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1414
  %64 = icmp eq i32 %63, 0, !dbg !1414
  br i1 %64, label %68, label %65, !dbg !1416

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %6, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !1417
  %67 = icmp eq i32 %66, 0, !dbg !1417
  br i1 %67, label %68, label %111, !dbg !1418

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @argc, align 4, !dbg !1419, !tbaa !750
  %70 = icmp slt i32 %2, %69, !dbg !1421
  br i1 %70, label %71, label %76, !dbg !1422

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 undef, metadata !900, metadata !DIExpression()) #27, !dbg !1423
  call void @llvm.dbg.value(metadata i8 1, metadata !905, metadata !DIExpression()) #27, !dbg !1425
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !1425
  %72 = tail call fastcc zeroext i1 @term() #27, !dbg !1427
  call void @llvm.dbg.value(metadata i1 %72, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1425
  %73 = load i32, i32* @pos, align 4, !dbg !1428, !tbaa !750
  %74 = load i32, i32* @argc, align 4, !dbg !1429, !tbaa !750
  %75 = icmp slt i32 %73, %74, !dbg !1430
  br i1 %75, label %77, label %97, !dbg !1431

76:                                               ; preds = %68
  tail call fastcc void @beyond() #29, !dbg !1432
  unreachable, !dbg !1432

77:                                               ; preds = %71, %105
  %78 = phi i32 [ %108, %105 ], [ %73, %71 ]
  %79 = phi i1 [ %107, %105 ], [ %72, %71 ]
  %80 = phi i1 [ %102, %105 ], [ false, %71 ]
  br label %81, !dbg !1431

81:                                               ; preds = %77, %90
  %82 = phi i32 [ %78, %77 ], [ %94, %90 ]
  %83 = phi i1 [ %79, %77 ], [ %93, %90 ]
  %84 = load i8**, i8*** @argv, align 8, !dbg !1433, !tbaa !592
  %85 = sext i32 %82 to i64, !dbg !1433
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85, !dbg !1433
  %87 = load i8*, i8** %86, align 8, !dbg !1433, !tbaa !592
  %88 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1433
  %89 = icmp eq i32 %88, 0, !dbg !1433
  br i1 %89, label %90, label %101, !dbg !1434

90:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1435
  %91 = add nsw i32 %82, 1, !dbg !1437
  store i32 %91, i32* @pos, align 4, !dbg !1437, !tbaa !750
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !1425
  %92 = tail call fastcc zeroext i1 @term() #27, !dbg !1427
  %93 = and i1 %83, %92, !dbg !1438
  call void @llvm.dbg.value(metadata i1 %93, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1425
  %94 = load i32, i32* @pos, align 4, !dbg !1428, !tbaa !750
  %95 = load i32, i32* @argc, align 4, !dbg !1429, !tbaa !750
  %96 = icmp slt i32 %94, %95, !dbg !1430
  br i1 %96, label %81, label %97, !dbg !1431, !llvm.loop !1439

97:                                               ; preds = %105, %90, %71
  %98 = phi i1 [ false, %71 ], [ %80, %90 ], [ %102, %105 ], !dbg !1423
  %99 = phi i1 [ %72, %71 ], [ %93, %90 ], [ %107, %105 ], !dbg !1438
  %100 = or i1 %98, %99, !dbg !1442
  call void @llvm.dbg.value(metadata i1 %100, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1423
  br label %120

101:                                              ; preds = %81
  %102 = or i1 %80, %83, !dbg !1442
  call void @llvm.dbg.value(metadata i1 %100, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1423
  %103 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %87, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0)) #28, !dbg !1443
  %104 = icmp eq i32 %103, 0, !dbg !1443
  br i1 %104, label %105, label %120, !dbg !1444

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1445
  %106 = add nsw i32 %82, 1, !dbg !1447
  store i32 %106, i32* @pos, align 4, !dbg !1447, !tbaa !750
  call void @llvm.dbg.value(metadata i8 undef, metadata !900, metadata !DIExpression()) #27, !dbg !1423
  call void @llvm.dbg.value(metadata i8 undef, metadata !905, metadata !DIExpression()) #27, !dbg !1425
  %107 = tail call fastcc zeroext i1 @term() #27, !dbg !1427
  call void @llvm.dbg.value(metadata i1 %107, metadata !905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1425
  %108 = load i32, i32* @pos, align 4, !dbg !1428, !tbaa !750
  %109 = load i32, i32* @argc, align 4, !dbg !1429, !tbaa !750
  %110 = icmp slt i32 %108, %109, !dbg !1430
  br i1 %110, label %77, label %97, !dbg !1431, !llvm.loop !1448

111:                                              ; preds = %65
  %112 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 5) #27, !dbg !1451
  %113 = load i8**, i8*** @argv, align 8, !dbg !1452, !tbaa !592
  %114 = load i32, i32* @pos, align 4, !dbg !1453, !tbaa !750
  %115 = add nsw i32 %114, 1, !dbg !1454
  %116 = sext i32 %115 to i64, !dbg !1452
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116, !dbg !1452
  %118 = load i8*, i8** %117, align 8, !dbg !1452, !tbaa !592
  %119 = tail call i8* @quote(i8* %118) #27, !dbg !1455
  tail call void (i8*, ...) @test_syntax_error(i8* %112, i8* %119) #30, !dbg !1456
  unreachable, !dbg !1456

120:                                              ; preds = %101, %97, %45, %58, %8
  %121 = phi i1 [ %9, %8 ], [ %47, %45 ], [ %60, %58 ], [ %100, %97 ], [ %102, %101 ]
  call void @llvm.dbg.value(metadata i1 %121, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1363
  ret i1 %121, !dbg !1457
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #8 !dbg !1458 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 undef, metadata !1461, metadata !DIExpression()), !dbg !1465
  %1 = load i32, i32* @pos, align 4, !dbg !1466, !tbaa !750
  %2 = load i32, i32* @argc, align 4, !dbg !1467, !tbaa !750
  %3 = icmp sgt i32 %2, %1, !dbg !1468
  br i1 %3, label %4, label %30, !dbg !1469

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !592
  %6 = sext i32 %1 to i64, !dbg !1470
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1470
  %8 = load i8*, i8** %7, align 8, !dbg !1470, !tbaa !592
  %9 = load i8, i8* %8, align 1, !dbg !1470, !tbaa !801
  %10 = icmp eq i8 %9, 33, !dbg !1471
  br i1 %10, label %11, label %31, !dbg !1472

11:                                               ; preds = %4, %23
  %12 = phi i8 [ %28, %23 ], [ %9, %4 ]
  %13 = phi i8* [ %27, %23 ], [ %8, %4 ]
  %14 = phi i1 [ %24, %23 ], [ false, %4 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %4 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1473
  %17 = load i8, i8* %16, align 1, !dbg !1473, !tbaa !801
  %18 = icmp eq i8 %17, 0, !dbg !1474
  br i1 %18, label %19, label %100, !dbg !1475

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1476
  %20 = add nsw i32 %15, 1, !dbg !1479
  store i32 %20, i32* @pos, align 4, !dbg !1479, !tbaa !750
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %23, label %22, !dbg !1480

22:                                               ; preds = %19
  tail call fastcc void @beyond() #29, !dbg !1481
  unreachable, !dbg !1481

23:                                               ; preds = %19
  %24 = xor i1 %14, true, !dbg !1482
  call void @llvm.dbg.value(metadata i8 undef, metadata !1461, metadata !DIExpression()), !dbg !1465
  %25 = sext i32 %20 to i64, !dbg !1470
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1470
  %27 = load i8*, i8** %26, align 8, !dbg !1470, !tbaa !592
  %28 = load i8, i8* %27, align 1, !dbg !1470, !tbaa !801
  %29 = icmp eq i8 %28, 33, !dbg !1471
  br i1 %29, label %11, label %31, !dbg !1472

30:                                               ; preds = %0
  tail call fastcc void @beyond() #30, !dbg !1483
  unreachable, !dbg !1483

31:                                               ; preds = %23, %4
  %32 = phi i32 [ %1, %4 ], [ %20, %23 ]
  %33 = phi i1 [ false, %4 ], [ %24, %23 ]
  %34 = phi i8* [ %8, %4 ], [ %27, %23 ], !dbg !1470
  %35 = phi i8 [ %9, %4 ], [ %28, %23 ], !dbg !1470
  %36 = icmp eq i8 %35, 40, !dbg !1485
  br i1 %36, label %37, label %100, !dbg !1486

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1487
  %39 = load i8, i8* %38, align 1, !dbg !1487, !tbaa !801
  %40 = icmp eq i8 %39, 0, !dbg !1488
  br i1 %40, label %41, label %100, !dbg !1489

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i1 true, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1490
  %42 = add nsw i32 %32, 1, !dbg !1492
  store i32 %42, i32* @pos, align 4, !dbg !1492, !tbaa !750
  %43 = icmp sgt i32 %2, %42
  br i1 %43, label %44, label %52, !dbg !1493

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !1494
  %45 = add nsw i32 %32, 2, !dbg !1495
  %46 = icmp slt i32 %45, %2, !dbg !1498
  br i1 %46, label %47, label %70, !dbg !1499

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64, !dbg !1500
  %49 = xor i32 %32, -1, !dbg !1500
  %50 = add i32 %2, %49, !dbg !1500
  %51 = zext i32 %50 to i64, !dbg !1498
  br label %53, !dbg !1500

52:                                               ; preds = %41
  tail call fastcc void @beyond() #29, !dbg !1501
  unreachable, !dbg !1501

53:                                               ; preds = %47, %64
  %54 = phi i64 [ 1, %47 ], [ %65, %64 ]
  %55 = phi i64 [ %48, %47 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1462, metadata !DIExpression()), !dbg !1494
  %56 = getelementptr inbounds i8*, i8** %5, i64 %55, !dbg !1502
  %57 = load i8*, i8** %56, align 8, !dbg !1502, !tbaa !592
  %58 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %57, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #28, !dbg !1502
  %59 = icmp eq i32 %58, 0, !dbg !1502
  br i1 %59, label %68, label %60, !dbg !1500

60:                                               ; preds = %53
  %61 = icmp eq i64 %54, 4, !dbg !1503
  br i1 %61, label %62, label %64, !dbg !1505

62:                                               ; preds = %60
  %63 = sub nsw i32 %2, %42, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %63, metadata !1462, metadata !DIExpression()), !dbg !1494
  br label %70, !dbg !1508

64:                                               ; preds = %60
  %65 = add nuw nsw i64 %54, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %65, metadata !1462, metadata !DIExpression()), !dbg !1494
  %66 = add nsw i64 %55, 1, !dbg !1495
  %67 = icmp eq i64 %65, %51, !dbg !1498
  br i1 %67, label %70, label %53, !dbg !1499, !llvm.loop !1510

68:                                               ; preds = %53
  %69 = trunc i64 %54 to i32, !dbg !1500
  br label %70, !dbg !1512

70:                                               ; preds = %64, %68, %44, %62
  %71 = phi i32 [ %63, %62 ], [ 1, %44 ], [ %69, %68 ], [ %50, %64 ], !dbg !1513
  call void @llvm.dbg.value(metadata i32 %71, metadata !1462, metadata !DIExpression()), !dbg !1494
  %72 = tail call fastcc zeroext i1 @posixtest(i32 %71), !dbg !1512
  call void @llvm.dbg.value(metadata i1 %72, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  %73 = load i8**, i8*** @argv, align 8, !dbg !1514, !tbaa !592
  %74 = load i32, i32* @pos, align 4, !dbg !1516, !tbaa !750
  %75 = sext i32 %74 to i64, !dbg !1514
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75, !dbg !1514
  %77 = load i8*, i8** %76, align 8, !dbg !1514, !tbaa !592
  %78 = icmp eq i8* %77, null, !dbg !1517
  br i1 %78, label %79, label %82, !dbg !1518

79:                                               ; preds = %70
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #27, !dbg !1519
  %81 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #27, !dbg !1520
  tail call void (i8*, ...) @test_syntax_error(i8* %80, i8* %81) #30, !dbg !1521
  unreachable, !dbg !1521

82:                                               ; preds = %70
  %83 = load i8, i8* %77, align 1, !dbg !1522, !tbaa !801
  %84 = icmp eq i8 %83, 41, !dbg !1524
  br i1 %84, label %85, label %89, !dbg !1525

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1526
  %87 = load i8, i8* %86, align 1, !dbg !1526, !tbaa !801
  %88 = icmp eq i8 %87, 0, !dbg !1526
  br i1 %88, label %98, label %89, !dbg !1527

89:                                               ; preds = %85, %82
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 5) #27, !dbg !1528
  %91 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #27, !dbg !1529
  %92 = load i8**, i8*** @argv, align 8, !dbg !1530, !tbaa !592
  %93 = load i32, i32* @pos, align 4, !dbg !1531, !tbaa !750
  %94 = sext i32 %93 to i64, !dbg !1530
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94, !dbg !1530
  %96 = load i8*, i8** %95, align 8, !dbg !1530, !tbaa !592
  %97 = tail call i8* @quote_n(i32 1, i8* %96) #27, !dbg !1532
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91, i8* %97) #30, !dbg !1533
  unreachable, !dbg !1533

98:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1534
  %99 = add nsw i32 %74, 1, !dbg !1536
  store i32 %99, i32* @pos, align 4, !dbg !1536, !tbaa !750
  br label %143, !dbg !1537

100:                                              ; preds = %11, %37, %31
  %101 = phi i32 [ %32, %37 ], [ %32, %31 ], [ %15, %11 ]
  %102 = phi i1 [ %33, %37 ], [ %33, %31 ], [ %14, %11 ]
  %103 = phi i8* [ %34, %37 ], [ %34, %31 ], [ %13, %11 ]
  %104 = phi i8 [ %35, %37 ], [ %35, %31 ], [ %12, %11 ]
  %105 = sub nsw i32 %2, %101, !dbg !1538
  %106 = icmp sgt i32 %105, 3, !dbg !1540
  br i1 %106, label %107, label %118, !dbg !1541

107:                                              ; preds = %100
  %108 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %103, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #28, !dbg !1542
  %109 = icmp eq i32 %108, 0, !dbg !1542
  br i1 %109, label %110, label %120, !dbg !1543

110:                                              ; preds = %107
  %111 = add nsw i32 %101, 2, !dbg !1544
  %112 = sext i32 %111 to i64, !dbg !1545
  %113 = getelementptr inbounds i8*, i8** %5, i64 %112, !dbg !1545
  %114 = load i8*, i8** %113, align 8, !dbg !1545, !tbaa !592
  %115 = tail call fastcc zeroext i1 @binop(i8* %114), !dbg !1546
  br i1 %115, label %116, label %120, !dbg !1547

116:                                              ; preds = %110
  %117 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1548
  call void @llvm.dbg.value(metadata i1 %117, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  br label %143, !dbg !1549

118:                                              ; preds = %100
  %119 = icmp eq i32 %105, 3, !dbg !1550
  br i1 %119, label %120, label %128, !dbg !1552

120:                                              ; preds = %107, %110, %118
  %121 = add nsw i32 %101, 1, !dbg !1553
  %122 = sext i32 %121 to i64, !dbg !1554
  %123 = getelementptr inbounds i8*, i8** %5, i64 %122, !dbg !1554
  %124 = load i8*, i8** %123, align 8, !dbg !1554, !tbaa !592
  %125 = tail call fastcc zeroext i1 @binop(i8* %124), !dbg !1555
  br i1 %125, label %126, label %128, !dbg !1556

126:                                              ; preds = %120
  %127 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1557
  call void @llvm.dbg.value(metadata i1 %127, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  br label %143, !dbg !1558

128:                                              ; preds = %120, %118
  %129 = icmp eq i8 %104, 45, !dbg !1559
  br i1 %129, label %130, label %140, !dbg !1561

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1562
  %132 = load i8, i8* %131, align 1, !dbg !1562, !tbaa !801
  %133 = icmp eq i8 %132, 0, !dbg !1562
  br i1 %133, label %140, label %134, !dbg !1563

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !1564
  %136 = load i8, i8* %135, align 1, !dbg !1564, !tbaa !801
  %137 = icmp eq i8 %136, 0, !dbg !1565
  br i1 %137, label %138, label %140, !dbg !1566

138:                                              ; preds = %134
  %139 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1567
  call void @llvm.dbg.value(metadata i1 %139, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  br label %143, !dbg !1568

140:                                              ; preds = %134, %130, %128
  %141 = icmp ne i8 %104, 0, !dbg !1569
  call void @llvm.dbg.value(metadata i1 %141, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1571
  %142 = add nsw i32 %101, 1, !dbg !1573
  store i32 %142, i32* @pos, align 4, !dbg !1573, !tbaa !750
  br label %143

143:                                              ; preds = %116, %138, %140, %126, %98
  %144 = phi i1 [ %33, %98 ], [ %102, %116 ], [ %102, %126 ], [ %102, %138 ], [ %102, %140 ]
  %145 = phi i1 [ %72, %98 ], [ %117, %116 ], [ %127, %126 ], [ %139, %138 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i1 %145, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  %146 = xor i1 %144, %145, !dbg !1574
  ret i1 %146, !dbg !1575
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define internal fastcc zeroext i1 @binop(i8* nocapture readonly %0) unnamed_addr #10 !dbg !1576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1580, metadata !DIExpression()), !dbg !1581
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #28, !dbg !1582
  %3 = icmp eq i32 %2, 0, !dbg !1582
  br i1 %3, label %37, label %4, !dbg !1583

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #28, !dbg !1584
  %6 = icmp eq i32 %5, 0, !dbg !1584
  br i1 %6, label %37, label %7, !dbg !1585

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #28, !dbg !1586
  %9 = icmp eq i32 %8, 0, !dbg !1586
  br i1 %9, label %37, label %10, !dbg !1587

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #28, !dbg !1588
  %12 = icmp eq i32 %11, 0, !dbg !1588
  br i1 %12, label %37, label %13, !dbg !1589

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #28, !dbg !1590
  %15 = icmp eq i32 %14, 0, !dbg !1590
  br i1 %15, label %37, label %16, !dbg !1591

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0)) #28, !dbg !1592
  %18 = icmp eq i32 %17, 0, !dbg !1592
  br i1 %18, label %37, label %19, !dbg !1593

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #28, !dbg !1594
  %21 = icmp eq i32 %20, 0, !dbg !1594
  br i1 %21, label %37, label %22, !dbg !1595

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #28, !dbg !1596
  %24 = icmp eq i32 %23, 0, !dbg !1596
  br i1 %24, label %37, label %25, !dbg !1597

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #28, !dbg !1598
  %27 = icmp eq i32 %26, 0, !dbg !1598
  br i1 %27, label %37, label %28, !dbg !1599

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #28, !dbg !1600
  %30 = icmp eq i32 %29, 0, !dbg !1600
  br i1 %30, label %37, label %31, !dbg !1601

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #28, !dbg !1602
  %33 = icmp eq i32 %32, 0, !dbg !1602
  br i1 %33, label %37, label %34, !dbg !1603

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #28, !dbg !1604
  %36 = icmp eq i32 %35, 0, !dbg !1604
  br label %37, !dbg !1603

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ true, %22 ], [ true, %19 ], [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %36, %34 ]
  ret i1 %38, !dbg !1605
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext %0) unnamed_addr #8 !dbg !1606 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1647
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1648
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #27, !dbg !1648
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1612, metadata !DIExpression()), !dbg !1649
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1648
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %11) #27, !dbg !1648
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1613, metadata !DIExpression()), !dbg !1650
  %12 = load i32, i32* @pos, align 4, !dbg !1647, !tbaa !750
  br i1 %0, label %13, label %15, !dbg !1651

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1652
  %14 = add nsw i32 %12, 1, !dbg !1655
  store i32 %14, i32* @pos, align 4, !dbg !1655, !tbaa !750
  br label %15, !dbg !1656

15:                                               ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1657
  %17 = add nsw i32 %16, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %17, metadata !1611, metadata !DIExpression()), !dbg !1647
  %18 = load i32, i32* @argc, align 4, !dbg !1659, !tbaa !750
  %19 = add nsw i32 %18, -2, !dbg !1661
  %20 = icmp slt i32 %17, %19, !dbg !1662
  %21 = load i8**, i8*** @argv, align 8, !dbg !1647, !tbaa !592
  br i1 %20, label %22, label %30, !dbg !1663

22:                                               ; preds = %15
  %23 = add nsw i32 %16, 2, !dbg !1664
  %24 = sext i32 %23 to i64, !dbg !1664
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1664
  %26 = load i8*, i8** %25, align 8, !dbg !1664, !tbaa !592
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %26, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #28, !dbg !1664
  %28 = icmp eq i32 %27, 0, !dbg !1664
  br i1 %28, label %29, label %30, !dbg !1665

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i1 false, metadata !811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1666
  store i32 %17, i32* @pos, align 4, !dbg !1669, !tbaa !750
  br label %30, !dbg !1670

30:                                               ; preds = %15, %22, %29
  %31 = phi i32 [ %17, %29 ], [ %16, %22 ], [ %16, %15 ]
  %32 = phi i1 [ true, %29 ], [ false, %22 ], [ false, %15 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1614, metadata !DIExpression()), !dbg !1647
  %33 = sext i32 %17 to i64, !dbg !1671
  %34 = getelementptr inbounds i8*, i8** %21, i64 %33, !dbg !1671
  %35 = load i8*, i8** %34, align 8, !dbg !1671, !tbaa !592
  %36 = load i8, i8* %35, align 1, !dbg !1671, !tbaa !801
  switch i8 %36, label %279 [
    i8 45, label %37
    i8 61, label %261
  ], !dbg !1672

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1673
  %39 = load i8, i8* %38, align 1, !dbg !1673, !tbaa !801
  switch i8 %39, label %106 [
    i8 108, label %40
    i8 103, label %40
    i8 101, label %43
    i8 110, label %47
  ], !dbg !1674

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1675
  %42 = load i8, i8* %41, align 1, !dbg !1675, !tbaa !801
  switch i8 %42, label %106 [
    i8 101, label %51
    i8 116, label %51
  ], !dbg !1676

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1677
  %45 = load i8, i8* %44, align 1, !dbg !1677, !tbaa !801
  %46 = icmp eq i8 %45, 113, !dbg !1678
  br i1 %46, label %51, label %165, !dbg !1679

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1680
  %49 = load i8, i8* %48, align 1, !dbg !1680, !tbaa !801
  %50 = icmp eq i8 %49, 101, !dbg !1681
  br i1 %50, label %51, label %114, !dbg !1682

51:                                               ; preds = %40, %40, %47, %43
  %52 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1683
  %53 = load i8, i8* %52, align 1, !dbg !1683, !tbaa !801
  %54 = icmp eq i8 %53, 0, !dbg !1683
  br i1 %54, label %55, label %106, !dbg !1684

55:                                               ; preds = %51
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1685
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %56) #27, !dbg !1685
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1615, metadata !DIExpression()), !dbg !1686
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1687
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %57) #27, !dbg !1687
  call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1623, metadata !DIExpression()), !dbg !1688
  %58 = sext i32 %16 to i64, !dbg !1689
  %59 = getelementptr inbounds i8*, i8** %21, i64 %58, !dbg !1689
  %60 = load i8*, i8** %59, align 8, !dbg !1689, !tbaa !592
  br i1 %0, label %61, label %64, !dbg !1690

61:                                               ; preds = %55
  %62 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %60) #28, !dbg !1691
  %63 = call i8* @umaxtostr(i64 %62, i8* nonnull %56) #27, !dbg !1692
  br label %66, !dbg !1690

64:                                               ; preds = %55
  %65 = tail call fastcc i8* @find_int(i8* %60), !dbg !1693
  br label %66, !dbg !1690

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ], !dbg !1690
  call void @llvm.dbg.value(metadata i8* %67, metadata !1624, metadata !DIExpression()), !dbg !1689
  %68 = load i8**, i8*** @argv, align 8, !dbg !1689, !tbaa !592
  br i1 %32, label %69, label %76, !dbg !1694

69:                                               ; preds = %66
  %70 = add nsw i32 %16, 3, !dbg !1695
  %71 = sext i32 %70 to i64, !dbg !1696
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71, !dbg !1696
  %73 = load i8*, i8** %72, align 8, !dbg !1696, !tbaa !592
  %74 = call i64 @strlen(i8* nonnull dereferenceable(1) %73) #28, !dbg !1697
  %75 = call i8* @umaxtostr(i64 %74, i8* nonnull %57) #27, !dbg !1698
  br label %82, !dbg !1694

76:                                               ; preds = %66
  %77 = add nsw i32 %16, 2, !dbg !1699
  %78 = sext i32 %77 to i64, !dbg !1700
  %79 = getelementptr inbounds i8*, i8** %68, i64 %78, !dbg !1700
  %80 = load i8*, i8** %79, align 8, !dbg !1700, !tbaa !592
  %81 = call fastcc i8* @find_int(i8* %80), !dbg !1701
  br label %82, !dbg !1694

82:                                               ; preds = %76, %69
  %83 = phi i8* [ %75, %69 ], [ %81, %76 ], !dbg !1694
  call void @llvm.dbg.value(metadata i8* %83, metadata !1625, metadata !DIExpression()), !dbg !1689
  %84 = call i32 @strintcmp(i8* %67, i8* %83) #28, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %84, metadata !1626, metadata !DIExpression()), !dbg !1689
  %85 = load i8**, i8*** @argv, align 8, !dbg !1703, !tbaa !592
  %86 = getelementptr inbounds i8*, i8** %85, i64 %33, !dbg !1703
  %87 = load i8*, i8** %86, align 8, !dbg !1703, !tbaa !592
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !1703
  %89 = load i8, i8* %88, align 1, !dbg !1703, !tbaa !801
  %90 = icmp eq i8 %89, 101, !dbg !1704
  call void @llvm.dbg.value(metadata i1 %90, metadata !1627, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1689
  %91 = load i32, i32* @pos, align 4, !dbg !1705, !tbaa !750
  %92 = add nsw i32 %91, 3, !dbg !1705
  store i32 %92, i32* @pos, align 4, !dbg !1705, !tbaa !750
  %93 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1706
  %94 = load i8, i8* %93, align 1, !dbg !1706, !tbaa !801
  switch i8 %94, label %101 [
    i8 108, label %95
    i8 103, label %98
  ], !dbg !1706

95:                                               ; preds = %82
  %96 = zext i1 %90 to i32, !dbg !1707
  %97 = icmp slt i32 %84, %96, !dbg !1708
  br label %104, !dbg !1706

98:                                               ; preds = %82
  %99 = sext i1 %90 to i32, !dbg !1709
  %100 = icmp sgt i32 %84, %99, !dbg !1710
  br label %104, !dbg !1711

101:                                              ; preds = %82
  %102 = icmp eq i32 %84, 0, !dbg !1712
  %103 = xor i1 %102, %90, !dbg !1713
  br label %104, !dbg !1711

104:                                              ; preds = %98, %101, %95
  %105 = phi i1 [ %97, %95 ], [ %100, %98 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %57) #27, !dbg !1714
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %56) #27, !dbg !1714
  br label %294

106:                                              ; preds = %37, %40, %51
  %107 = sext i8 %39 to i32, !dbg !1715
  switch i32 %107, label %255 [
    i32 110, label %108
    i32 101, label %111
    i32 111, label %203
  ], !dbg !1716

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, i8* %35, i64 2
  %110 = load i8, i8* %109, align 1, !dbg !1717, !tbaa !801
  br label %114, !dbg !1716

111:                                              ; preds = %106
  %112 = getelementptr inbounds i8, i8* %35, i64 2
  %113 = load i8, i8* %112, align 1, !dbg !1718, !tbaa !801
  br label %165, !dbg !1716

114:                                              ; preds = %108, %47
  %115 = phi i8 [ %110, %108 ], [ %49, %47 ], !dbg !1717
  %116 = icmp eq i8 %115, 116, !dbg !1720
  br i1 %116, label %117, label %255, !dbg !1721

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1722
  %119 = load i8, i8* %118, align 1, !dbg !1722, !tbaa !801
  %120 = icmp eq i8 %119, 0, !dbg !1722
  br i1 %120, label %121, label %255, !dbg !1723

121:                                              ; preds = %117
  %122 = add nsw i32 %31, 3, !dbg !1724
  store i32 %122, i32* @pos, align 4, !dbg !1724, !tbaa !750
  %123 = or i1 %32, %0, !dbg !1725
  br i1 %123, label %124, label %126, !dbg !1725

124:                                              ; preds = %121
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i32 5) #27, !dbg !1727
  tail call void (i8*, ...) @test_syntax_error(i8* %125, i8* null) #30, !dbg !1728
  unreachable, !dbg !1728

126:                                              ; preds = %121
  %127 = sext i32 %16 to i64, !dbg !1729
  %128 = getelementptr inbounds i8*, i8** %21, i64 %127, !dbg !1729
  %129 = load i8*, i8** %128, align 8, !dbg !1729, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %129, metadata !1730, metadata !DIExpression()) #27, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1736, metadata !DIExpression()) #27, !dbg !1739
  %130 = bitcast %struct.stat* %4 to i8*, !dbg !1741
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %130) #27, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1737, metadata !DIExpression()) #27, !dbg !1742
  %131 = call i32 @stat(i8* %129, %struct.stat* nonnull %4) #27, !dbg !1743
  %132 = icmp eq i32 %131, 0, !dbg !1744
  call void @llvm.dbg.value(metadata i1 %132, metadata !1738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1739
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !1745
  %134 = load i64, i64* %133, align 8, !dbg !1745
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !1745
  %136 = load i64, i64* %135, align 8, !dbg !1745
  %137 = select i1 %132, i64 %136, i64 undef, !dbg !1745
  %138 = select i1 %132, i64 %134, i64 undef, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %138, metadata !1628, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %137, metadata !1628, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %130) #27, !dbg !1747
  call void @llvm.dbg.value(metadata i1 %132, metadata !1633, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  %139 = load i8**, i8*** @argv, align 8, !dbg !1748, !tbaa !592
  %140 = add nsw i32 %16, 2, !dbg !1749
  %141 = sext i32 %140 to i64, !dbg !1748
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141, !dbg !1748
  %143 = load i8*, i8** %142, align 8, !dbg !1748, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %143, metadata !1730, metadata !DIExpression()) #27, !dbg !1750
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1736, metadata !DIExpression()) #27, !dbg !1750
  %144 = bitcast %struct.stat* %3 to i8*, !dbg !1752
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1752
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1737, metadata !DIExpression()) #27, !dbg !1753
  %145 = call i32 @stat(i8* %143, %struct.stat* nonnull %3) #27, !dbg !1754
  %146 = icmp eq i32 %145, 0, !dbg !1755
  call void @llvm.dbg.value(metadata i1 %146, metadata !1738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1750
  br i1 %146, label %148, label %147, !dbg !1756

147:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %150, metadata !1632, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %152, metadata !1632, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i1 %146, metadata !1634, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  br label %294, !dbg !1758

148:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1100, metadata !DIExpression()) #27, !dbg !1759
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !1762
  %150 = load i64, i64* %149, align 8, !dbg !1762, !tbaa.struct !1095
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !1762
  %152 = load i64, i64* %151, align 8, !dbg !1762, !tbaa.struct !1098
  call void @llvm.dbg.value(metadata i64 %150, metadata !1632, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %152, metadata !1632, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %144) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i1 %146, metadata !1634, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  %153 = icmp sge i64 %138, %150
  %154 = and i1 %132, %153, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %138, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %137, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %150, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %152, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1763
  br i1 %154, label %155, label %294, !dbg !1758

155:                                              ; preds = %148
  %156 = icmp sgt i64 %138, %150, !dbg !1765
  br i1 %156, label %294, label %157, !dbg !1766

157:                                              ; preds = %155
  %158 = icmp sgt i64 %137, -2, !dbg !1767
  tail call void @llvm.assume(i1 %158) #27, !dbg !1767
  %159 = icmp slt i64 %137, 2000000001, !dbg !1767
  tail call void @llvm.assume(i1 %159) #27, !dbg !1767
  %160 = icmp sgt i64 %152, -2, !dbg !1768
  tail call void @llvm.assume(i1 %160) #27, !dbg !1768
  %161 = icmp slt i64 %152, 2000000001, !dbg !1768
  tail call void @llvm.assume(i1 %161) #27, !dbg !1768
  %162 = sub nsw i64 %137, %152, !dbg !1769
  %163 = trunc i64 %162 to i32, !dbg !1770
  %164 = icmp sgt i32 %163, 0, !dbg !1771
  br label %294, !dbg !1771

165:                                              ; preds = %111, %43
  %166 = phi i8 [ %113, %111 ], [ %45, %43 ], !dbg !1718
  %167 = icmp eq i8 %166, 102, !dbg !1772
  br i1 %167, label %168, label %255, !dbg !1773

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1774
  %170 = load i8, i8* %169, align 1, !dbg !1774, !tbaa !801
  %171 = icmp eq i8 %170, 0, !dbg !1774
  br i1 %171, label %172, label %255, !dbg !1775

172:                                              ; preds = %168
  %173 = add nsw i32 %31, 3, !dbg !1776
  store i32 %173, i32* @pos, align 4, !dbg !1776, !tbaa !750
  %174 = or i1 %32, %0, !dbg !1778
  br i1 %174, label %175, label %177, !dbg !1778

175:                                              ; preds = %172
  %176 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #27, !dbg !1780
  tail call void (i8*, ...) @test_syntax_error(i8* %176, i8* null) #30, !dbg !1781
  unreachable, !dbg !1781

177:                                              ; preds = %172
  %178 = sext i32 %16 to i64, !dbg !1782
  %179 = getelementptr inbounds i8*, i8** %21, i64 %178, !dbg !1782
  %180 = load i8*, i8** %179, align 8, !dbg !1782, !tbaa !592
  %181 = call i32 @stat(i8* %180, %struct.stat* nonnull %6) #27, !dbg !1783
  %182 = icmp eq i32 %181, 0, !dbg !1784
  br i1 %182, label %183, label %294, !dbg !1785

183:                                              ; preds = %177
  %184 = load i8**, i8*** @argv, align 8, !dbg !1786, !tbaa !592
  %185 = add nsw i32 %16, 2, !dbg !1787
  %186 = sext i32 %185 to i64, !dbg !1786
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186, !dbg !1786
  %188 = load i8*, i8** %187, align 8, !dbg !1786, !tbaa !592
  %189 = call i32 @stat(i8* %188, %struct.stat* nonnull %7) #27, !dbg !1788
  %190 = icmp eq i32 %189, 0, !dbg !1789
  br i1 %190, label %191, label %294, !dbg !1790

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !1791
  %193 = load i64, i64* %192, align 8, !dbg !1791, !tbaa !1792
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !1793
  %195 = load i64, i64* %194, align 8, !dbg !1793, !tbaa !1792
  %196 = icmp eq i64 %193, %195, !dbg !1794
  br i1 %196, label %197, label %294, !dbg !1795

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !1796
  %199 = load i64, i64* %198, align 8, !dbg !1796, !tbaa !1797
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !1798
  %201 = load i64, i64* %200, align 8, !dbg !1798, !tbaa !1797
  %202 = icmp eq i64 %199, %201, !dbg !1799
  br label %294

203:                                              ; preds = %106
  %204 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1800
  %205 = load i8, i8* %204, align 1, !dbg !1800, !tbaa !801
  %206 = icmp eq i8 %205, 116, !dbg !1801
  br i1 %206, label %207, label %255, !dbg !1802

207:                                              ; preds = %203
  %208 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1803
  %209 = load i8, i8* %208, align 1, !dbg !1803, !tbaa !801
  %210 = icmp eq i8 %209, 0, !dbg !1804
  br i1 %210, label %211, label %255, !dbg !1805

211:                                              ; preds = %207
  %212 = add nsw i32 %31, 3, !dbg !1806
  store i32 %212, i32* @pos, align 4, !dbg !1806, !tbaa !750
  %213 = or i1 %32, %0, !dbg !1807
  br i1 %213, label %214, label %216, !dbg !1807

214:                                              ; preds = %211
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 5) #27, !dbg !1809
  tail call void (i8*, ...) @test_syntax_error(i8* %215, i8* null) #30, !dbg !1810
  unreachable, !dbg !1810

216:                                              ; preds = %211
  %217 = sext i32 %16 to i64, !dbg !1811
  %218 = getelementptr inbounds i8*, i8** %21, i64 %217, !dbg !1811
  %219 = load i8*, i8** %218, align 8, !dbg !1811, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %219, metadata !1730, metadata !DIExpression()) #27, !dbg !1812
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1736, metadata !DIExpression()) #27, !dbg !1812
  %220 = bitcast %struct.stat* %2 to i8*, !dbg !1814
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %220) #27, !dbg !1814
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1737, metadata !DIExpression()) #27, !dbg !1815
  %221 = call i32 @stat(i8* %219, %struct.stat* nonnull %2) #27, !dbg !1816
  %222 = icmp eq i32 %221, 0, !dbg !1817
  call void @llvm.dbg.value(metadata i1 %222, metadata !1738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1812
  %223 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1818
  %224 = load i64, i64* %223, align 8, !dbg !1818
  %225 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !1818
  %226 = load i64, i64* %225, align 8, !dbg !1818
  %227 = select i1 %222, i64 %226, i64 undef, !dbg !1818
  %228 = select i1 %222, i64 %224, i64 undef, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %228, metadata !1635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %227, metadata !1635, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1819
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %220) #27, !dbg !1820
  call void @llvm.dbg.value(metadata i1 %222, metadata !1639, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  %229 = load i8**, i8*** @argv, align 8, !dbg !1821, !tbaa !592
  %230 = add nsw i32 %16, 2, !dbg !1822
  %231 = sext i32 %230 to i64, !dbg !1821
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231, !dbg !1821
  %233 = load i8*, i8** %232, align 8, !dbg !1821, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %233, metadata !1730, metadata !DIExpression()) #27, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !1736, metadata !DIExpression()) #27, !dbg !1823
  %234 = bitcast %struct.stat* %5 to i8*, !dbg !1825
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1825
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1737, metadata !DIExpression()) #27, !dbg !1826
  %235 = call i32 @stat(i8* %233, %struct.stat* nonnull %5) #27, !dbg !1827
  %236 = icmp eq i32 %235, 0, !dbg !1828
  call void @llvm.dbg.value(metadata i1 %236, metadata !1738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1823
  br i1 %236, label %238, label %237, !dbg !1829

237:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i64 %240, metadata !1638, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %242, metadata !1638, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1819
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1830
  call void @llvm.dbg.value(metadata i1 %236, metadata !1640, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  br label %294, !dbg !1831

238:                                              ; preds = %216
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !1100, metadata !DIExpression()) #27, !dbg !1832
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !1834
  %240 = load i64, i64* %239, align 8, !dbg !1834, !tbaa.struct !1095
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !1834
  %242 = load i64, i64* %241, align 8, !dbg !1834, !tbaa.struct !1098
  call void @llvm.dbg.value(metadata i64 %240, metadata !1638, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %242, metadata !1638, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1819
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %234) #27, !dbg !1830
  call void @llvm.dbg.value(metadata i1 %236, metadata !1640, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  %243 = icmp sge i64 %228, %240
  %244 = and i1 %222, %243, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %228, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %227, metadata !1106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %240, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #27, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %242, metadata !1111, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #27, !dbg !1835
  br i1 %244, label %245, label %294, !dbg !1831

245:                                              ; preds = %238
  %246 = icmp sgt i64 %228, %240, !dbg !1837
  br i1 %246, label %294, label %247, !dbg !1838

247:                                              ; preds = %245
  %248 = icmp sgt i64 %227, -2, !dbg !1839
  tail call void @llvm.assume(i1 %248) #27, !dbg !1839
  %249 = icmp slt i64 %227, 2000000001, !dbg !1839
  tail call void @llvm.assume(i1 %249) #27, !dbg !1839
  %250 = icmp sgt i64 %242, -2, !dbg !1840
  tail call void @llvm.assume(i1 %250) #27, !dbg !1840
  %251 = icmp slt i64 %242, 2000000001, !dbg !1840
  tail call void @llvm.assume(i1 %251) #27, !dbg !1840
  %252 = sub nsw i64 %227, %242, !dbg !1841
  %253 = trunc i64 %252 to i32, !dbg !1842
  %254 = icmp slt i32 %253, 0, !dbg !1843
  br label %294, !dbg !1843

255:                                              ; preds = %203, %207, %165, %168, %114, %117, %106
  %256 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i32 5) #27, !dbg !1844
  %257 = load i8**, i8*** @argv, align 8, !dbg !1845, !tbaa !592
  %258 = getelementptr inbounds i8*, i8** %257, i64 %33, !dbg !1845
  %259 = load i8*, i8** %258, align 8, !dbg !1845, !tbaa !592
  %260 = tail call i8* @quote(i8* %259) #27, !dbg !1846
  tail call void (i8*, ...) @test_syntax_error(i8* %256, i8* %260) #30, !dbg !1847
  unreachable, !dbg !1847

261:                                              ; preds = %30
  %262 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1848
  %263 = load i8, i8* %262, align 1, !dbg !1848, !tbaa !801
  switch i8 %263, label %279 [
    i8 0, label %268
    i8 61, label %264
  ], !dbg !1849

264:                                              ; preds = %261
  %265 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1850
  %266 = load i8, i8* %265, align 1, !dbg !1850, !tbaa !801
  %267 = icmp eq i8 %266, 0, !dbg !1850
  br i1 %267, label %268, label %279, !dbg !1851

268:                                              ; preds = %261, %264
  %269 = sext i32 %31 to i64, !dbg !1852
  %270 = getelementptr inbounds i8*, i8** %21, i64 %269, !dbg !1852
  %271 = load i8*, i8** %270, align 8, !dbg !1852, !tbaa !592
  %272 = add nsw i32 %31, 2, !dbg !1852
  %273 = sext i32 %272 to i64, !dbg !1852
  %274 = getelementptr inbounds i8*, i8** %21, i64 %273, !dbg !1852
  %275 = load i8*, i8** %274, align 8, !dbg !1852, !tbaa !592
  %276 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %271, i8* nonnull dereferenceable(1) %275) #28, !dbg !1852
  %277 = icmp eq i32 %276, 0, !dbg !1852
  call void @llvm.dbg.value(metadata i1 %277, metadata !1641, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1853
  %278 = add nsw i32 %31, 3, !dbg !1854
  store i32 %278, i32* @pos, align 4, !dbg !1854, !tbaa !750
  br label %294

279:                                              ; preds = %261, %30, %264
  %280 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %35, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #28, !dbg !1855
  %281 = icmp eq i32 %280, 0, !dbg !1855
  br i1 %281, label %282, label %293, !dbg !1856

282:                                              ; preds = %279
  %283 = sext i32 %31 to i64, !dbg !1857
  %284 = getelementptr inbounds i8*, i8** %21, i64 %283, !dbg !1857
  %285 = load i8*, i8** %284, align 8, !dbg !1857, !tbaa !592
  %286 = add nsw i32 %31, 2, !dbg !1857
  %287 = sext i32 %286 to i64, !dbg !1857
  %288 = getelementptr inbounds i8*, i8** %21, i64 %287, !dbg !1857
  %289 = load i8*, i8** %288, align 8, !dbg !1857, !tbaa !592
  %290 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %285, i8* nonnull dereferenceable(1) %289) #28, !dbg !1857
  %291 = icmp ne i32 %290, 0, !dbg !1857
  call void @llvm.dbg.value(metadata i1 %291, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1858
  %292 = add nsw i32 %31, 3, !dbg !1859
  store i32 %292, i32* @pos, align 4, !dbg !1859, !tbaa !750
  br label %294

293:                                              ; preds = %279
  tail call void @abort() #29, !dbg !1860
  unreachable, !dbg !1860

294:                                              ; preds = %247, %245, %157, %155, %238, %237, %148, %147, %177, %183, %191, %197, %282, %268, %104
  %295 = phi i1 [ %105, %104 ], [ %291, %282 ], [ %277, %268 ], [ false, %191 ], [ false, %183 ], [ false, %177 ], [ %202, %197 ], [ false, %148 ], [ %132, %147 ], [ true, %238 ], [ false, %237 ], [ %164, %157 ], [ true, %155 ], [ %254, %247 ], [ false, %245 ], !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %11) #27, !dbg !1861
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #27, !dbg !1861
  ret i1 %295, !dbg !1861
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8* %0) unnamed_addr #8 !dbg !1862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1866, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %0, metadata !1867, metadata !DIExpression()), !dbg !1869
  %2 = tail call i16** @__ctype_b_loc() #31, !dbg !1869
  %3 = load i16*, i16** %2, align 8, !tbaa !592
  br label %4, !dbg !1870

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1872
  call void @llvm.dbg.value(metadata i8* %5, metadata !1867, metadata !DIExpression()), !dbg !1869
  %6 = load i8, i8* %5, align 1, !dbg !1873, !tbaa !801
  %7 = zext i8 %6 to i64, !dbg !1873
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1873
  %9 = load i16, i16* %8, align 2, !dbg !1873, !tbaa !1875
  %10 = and i16 %9, 1, !dbg !1873
  %11 = icmp eq i16 %10, 0, !dbg !1877
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %12, metadata !1867, metadata !DIExpression()), !dbg !1869
  br i1 %11, label %13, label %4, !dbg !1877, !llvm.loop !1879

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1881
  %15 = icmp eq i8 %6, 45, !dbg !1883
  %16 = zext i1 %15 to i64, !dbg !1883
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1883
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1883
  call void @llvm.dbg.value(metadata i8* undef, metadata !1868, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %18, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %18, metadata !1867, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1869
  %19 = load i8, i8* %18, align 1, !dbg !1884, !tbaa !801
  %20 = sext i8 %19 to i32, !dbg !1884
  %21 = add nsw i32 %20, -48, !dbg !1884
  %22 = icmp ult i32 %21, 10, !dbg !1884
  br i1 %22, label %23, label %50, !dbg !1886

23:                                               ; preds = %13, %23
  %24 = phi i8* [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %25, metadata !1867, metadata !DIExpression()), !dbg !1869
  %26 = load i8, i8* %25, align 1, !dbg !1888, !tbaa !801
  %27 = sext i8 %26 to i32, !dbg !1888
  %28 = add nsw i32 %27, -48, !dbg !1888
  %29 = icmp ult i32 %28, 10, !dbg !1888
  br i1 %29, label %23, label %30, !dbg !1890, !llvm.loop !1891

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %25, metadata !1867, metadata !DIExpression()), !dbg !1869
  %31 = zext i8 %26 to i64, !dbg !1893
  %32 = getelementptr inbounds i16, i16* %3, i64 %31, !dbg !1893
  %33 = load i16, i16* %32, align 2, !dbg !1893, !tbaa !1875
  %34 = and i16 %33, 1, !dbg !1893
  %35 = icmp eq i16 %34, 0, !dbg !1894
  br i1 %35, label %45, label %36, !dbg !1894

36:                                               ; preds = %30, %36
  %37 = phi i8* [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata i8* %37, metadata !1867, metadata !DIExpression()), !dbg !1869
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %38, metadata !1867, metadata !DIExpression()), !dbg !1869
  %39 = load i8, i8* %38, align 1, !dbg !1893, !tbaa !801
  %40 = zext i8 %39 to i64, !dbg !1893
  %41 = getelementptr inbounds i16, i16* %3, i64 %40, !dbg !1893
  %42 = load i16, i16* %41, align 2, !dbg !1893, !tbaa !1875
  %43 = and i16 %42, 1, !dbg !1893
  %44 = icmp eq i16 %43, 0, !dbg !1894
  br i1 %44, label %45, label %36, !dbg !1894, !llvm.loop !1896

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !1893
  %47 = icmp eq i8 %46, 0, !dbg !1897
  br i1 %47, label %48, label %50, !dbg !1899

48:                                               ; preds = %45
  %49 = select i1 %14, i8* %12, i8* %5, !dbg !1883
  call void @llvm.dbg.value(metadata i8* %49, metadata !1868, metadata !DIExpression()), !dbg !1869
  ret i8* %49, !dbg !1900

50:                                               ; preds = %45, %13
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 5) #27, !dbg !1901
  %52 = tail call i8* @quote(i8* %0) #27, !dbg !1902
  tail call void (i8*, ...) @test_syntax_error(i8* %51, i8* %52) #30, !dbg !1903
  unreachable, !dbg !1903
}

; Function Attrs: nofree nounwind
declare !dbg !1904 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1909 i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1913 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1915 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1916 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1917 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1922, metadata !DIExpression()), !dbg !1923
  store i8* %0, i8** @file_name, align 8, !dbg !1924, !tbaa !592
  ret void, !dbg !1925
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1926 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1930, !tbaa !1931
  ret void, !dbg !1933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1934 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1939, !tbaa !592
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1940
  %3 = icmp eq i32 %2, 0, !dbg !1941
  br i1 %3, label %22, label %4, !dbg !1942

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1943, !tbaa !1931, !range !1944
  %6 = icmp eq i8 %5, 0, !dbg !1943
  br i1 %6, label %11, label %7, !dbg !1945

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1946
  %9 = load i32, i32* %8, align 4, !dbg !1946, !tbaa !750
  %10 = icmp eq i32 %9, 32, !dbg !1947
  br i1 %10, label %22, label %11, !dbg !1948

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 5) #27, !dbg !1949
  call void @llvm.dbg.value(metadata i8* %12, metadata !1936, metadata !DIExpression()), !dbg !1950
  %13 = load i8*, i8** @file_name, align 8, !dbg !1951, !tbaa !592
  %14 = icmp eq i8* %13, null, !dbg !1951
  %15 = tail call i32* @__errno_location() #31, !dbg !1953
  %16 = load i32, i32* %15, align 4, !dbg !1953, !tbaa !750
  br i1 %14, label %19, label %17, !dbg !1954

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1955
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.69, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1956
  br label %20, !dbg !1956

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.70, i64 0, i64 0), i8* %12) #27, !dbg !1957
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1958, !tbaa !750
  tail call void @_exit(i32 %21) #29, !dbg !1959
  unreachable, !dbg !1959

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1960, !tbaa !592
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1962
  %25 = icmp eq i32 %24, 0, !dbg !1963
  br i1 %25, label %28, label %26, !dbg !1964

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1965, !tbaa !750
  tail call void @_exit(i32 %27) #29, !dbg !1966
  unreachable, !dbg !1966

28:                                               ; preds = %22
  ret void, !dbg !1967
}

declare !dbg !1968 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #15 !dbg !1972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1977, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %1, metadata !1978, metadata !DIExpression()), !dbg !1980
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1981
  call void @llvm.dbg.value(metadata i8* %3, metadata !1979, metadata !DIExpression()), !dbg !1980
  store i8 0, i8* %3, align 1, !dbg !1982, !tbaa !801
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8* %6, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %5, metadata !1977, metadata !DIExpression()), !dbg !1980
  %7 = urem i64 %5, 10, !dbg !1983
  %8 = trunc i64 %7 to i8, !dbg !1986
  %9 = or i8 %8, 48, !dbg !1986
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %10, metadata !1979, metadata !DIExpression()), !dbg !1980
  store i8 %9, i8* %10, align 1, !dbg !1988, !tbaa !801
  %11 = udiv i64 %5, 10, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %11, metadata !1977, metadata !DIExpression()), !dbg !1980
  %12 = icmp ult i64 %5, 10, !dbg !1990
  br i1 %12, label %13, label %4, !dbg !1991, !llvm.loop !1992

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1979, metadata !DIExpression()), !dbg !1980
  ret i8* %10, !dbg !1995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1998, metadata !DIExpression()), !dbg !2001
  %2 = icmp eq i8* %0, null, !dbg !2002
  br i1 %2, label %3, label %6, !dbg !2004

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2005, !tbaa !592
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !2007
  tail call void @abort() #29, !dbg !2008
  unreachable, !dbg !2008

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %7, metadata !1999, metadata !DIExpression()), !dbg !2001
  %8 = icmp eq i8* %7, null, !dbg !2010
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2011
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %10, metadata !2000, metadata !DIExpression()), !dbg !2001
  %11 = ptrtoint i8* %10 to i64, !dbg !2012
  %12 = ptrtoint i8* %0 to i64, !dbg !2012
  %13 = sub i64 %11, %12, !dbg !2012
  %14 = icmp sgt i64 %13, 6, !dbg !2014
  br i1 %14, label %15, label %24, !dbg !2015

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2016
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #28, !dbg !2017
  %18 = icmp eq i32 %17, 0, !dbg !2018
  br i1 %18, label %19, label %24, !dbg !2019

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1998, metadata !DIExpression()), !dbg !2001
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #28, !dbg !2020
  %21 = icmp eq i32 %20, 0, !dbg !2023
  br i1 %21, label %22, label %24, !dbg !2024

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %23, metadata !1998, metadata !DIExpression()), !dbg !2001
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2027, !tbaa !592
  br label %24, !dbg !2028

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1998, metadata !DIExpression()), !dbg !2001
  store i8* %25, i8** @program_name, align 8, !dbg !2029, !tbaa !592
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2030, !tbaa !592
  ret void, !dbg !2031
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2032 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2037, metadata !DIExpression()), !dbg !2040
  %2 = tail call i32* @__errno_location() #31, !dbg !2041
  %3 = load i32, i32* %2, align 4, !dbg !2041, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %3, metadata !2038, metadata !DIExpression()), !dbg !2040
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2042
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2042
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2042
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !2043
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2039, metadata !DIExpression()), !dbg !2040
  store i32 %3, i32* %2, align 4, !dbg !2044, !tbaa !750
  ret %struct.quoting_options* %8, !dbg !2045
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2046 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2052, metadata !DIExpression()), !dbg !2053
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2054
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2054
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2055
  %5 = load i32, i32* %4, align 8, !dbg !2055, !tbaa !2056
  ret i32 %5, !dbg !2058
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2059 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %1, metadata !2064, metadata !DIExpression()), !dbg !2065
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2066
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2066
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2067
  store i32 %1, i32* %5, align 8, !dbg !2068, !tbaa !2056
  ret void, !dbg !2069
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2070 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2074, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %1, metadata !2075, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %2, metadata !2076, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8 %1, metadata !2077, metadata !DIExpression()), !dbg !2083
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2084
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2084
  %6 = lshr i8 %1, 5, !dbg !2085
  %7 = zext i8 %6 to i64, !dbg !2085
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2086
  call void @llvm.dbg.value(metadata i32* %8, metadata !2079, metadata !DIExpression()), !dbg !2083
  %9 = and i8 %1, 31, !dbg !2087
  %10 = zext i8 %9 to i32, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %10, metadata !2081, metadata !DIExpression()), !dbg !2083
  %11 = load i32, i32* %8, align 4, !dbg !2088, !tbaa !750
  %12 = lshr i32 %11, %10, !dbg !2089
  %13 = and i32 %12, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %13, metadata !2082, metadata !DIExpression()), !dbg !2083
  %14 = and i32 %2, 1, !dbg !2091
  %15 = xor i32 %13, %14, !dbg !2092
  %16 = shl i32 %15, %10, !dbg !2093
  %17 = xor i32 %16, %11, !dbg !2094
  store i32 %17, i32* %8, align 4, !dbg !2094, !tbaa !750
  ret i32 %13, !dbg !2095
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2096 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %1, metadata !2101, metadata !DIExpression()), !dbg !2103
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2104
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2100, metadata !DIExpression()), !dbg !2103
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2107
  %6 = load i32, i32* %5, align 4, !dbg !2107, !tbaa !2108
  call void @llvm.dbg.value(metadata i32 %6, metadata !2102, metadata !DIExpression()), !dbg !2103
  store i32 %1, i32* %5, align 4, !dbg !2109, !tbaa !2108
  ret i32 %6, !dbg !2110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2111 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()), !dbg !2118
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2119
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2115, metadata !DIExpression()), !dbg !2118
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2122
  store i32 10, i32* %6, align 8, !dbg !2123, !tbaa !2056
  %7 = icmp ne i8* %1, null, !dbg !2124
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2126
  br i1 %9, label %11, label %10, !dbg !2126

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2127
  unreachable, !dbg !2127

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2128
  store i8* %1, i8** %12, align 8, !dbg !2129, !tbaa !2130
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2131
  store i8* %2, i8** %13, align 8, !dbg !2132, !tbaa !2133
  ret void, !dbg !2134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2139, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2140, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* %2, metadata !2141, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %3, metadata !2142, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression()), !dbg !2147
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2148
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2144, metadata !DIExpression()), !dbg !2147
  %8 = tail call i32* @__errno_location() #31, !dbg !2149
  %9 = load i32, i32* %8, align 4, !dbg !2149, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %9, metadata !2145, metadata !DIExpression()), !dbg !2147
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2150
  %11 = load i32, i32* %10, align 8, !dbg !2150, !tbaa !2056
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2151
  %13 = load i32, i32* %12, align 4, !dbg !2151, !tbaa !2108
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2152
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2153
  %16 = load i8*, i8** %15, align 8, !dbg !2153, !tbaa !2130
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2154
  %18 = load i8*, i8** %17, align 8, !dbg !2154, !tbaa !2133
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %19, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i32 %9, i32* %8, align 4, !dbg !2156, !tbaa !750
  ret i64 %19, !dbg !2157
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2158 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %1, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %2, metadata !2166, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %3, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %4, metadata !2168, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %5, metadata !2169, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32* %6, metadata !2170, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %7, metadata !2171, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %8, metadata !2172, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* null, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2177, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2234
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2235
  %14 = icmp eq i64 %13, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i1 %14, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2234
  %15 = lshr i32 %5, 1, !dbg !2237
  %16 = trunc i32 %15 to i8, !dbg !2237
  %17 = and i8 %16, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i8 %17, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2234
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2238

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2239
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2240
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2241
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2242
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2234
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2243
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2244
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2245
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %38, metadata !2183, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %37, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %36, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %35, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %34, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %33, metadata !2178, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %32, metadata !2177, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %31, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %30, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %29, metadata !2172, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %28, metadata !2171, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %27, metadata !2168, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2228), !dbg !2246
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
  ], !dbg !2247

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 5, metadata !2168, metadata !DIExpression()), !dbg !2234
  br label %92, !dbg !2248

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 5, metadata !2168, metadata !DIExpression()), !dbg !2234
  %42 = and i8 %35, 1, !dbg !2250
  %43 = icmp eq i8 %42, 0, !dbg !2250
  br i1 %43, label %44, label %92, !dbg !2248

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2252
  br i1 %45, label %92, label %46, !dbg !2255

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2252, !tbaa !801
  br label %92, !dbg !2252

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %27), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %48, metadata !2171, metadata !DIExpression()), !dbg !2234
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %27), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %49, metadata !2172, metadata !DIExpression()), !dbg !2234
  br label %50, !dbg !2261

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2172, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %51, metadata !2171, metadata !DIExpression()), !dbg !2234
  %53 = and i8 %35, 1, !dbg !2262
  %54 = icmp eq i8 %53, 0, !dbg !2262
  br i1 %54, label %55, label %70, !dbg !2264

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2234
  %56 = load i8, i8* %51, align 1, !dbg !2265, !tbaa !801
  %57 = icmp eq i8 %56, 0, !dbg !2268
  br i1 %57, label %70, label %58, !dbg !2268

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %61, metadata !2174, metadata !DIExpression()), !dbg !2234
  %62 = icmp ult i64 %61, %39, !dbg !2269
  br i1 %62, label %63, label %65, !dbg !2272

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2269
  store i8 %59, i8* %64, align 1, !dbg !2269, !tbaa !801
  br label %65, !dbg !2269

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %66, metadata !2174, metadata !DIExpression()), !dbg !2234
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2273
  call void @llvm.dbg.value(metadata i8* %67, metadata !2176, metadata !DIExpression()), !dbg !2234
  %68 = load i8, i8* %67, align 1, !dbg !2265, !tbaa !801
  %69 = icmp eq i8 %68, 0, !dbg !2268
  br i1 %69, label %70, label %58, !dbg !2268, !llvm.loop !2274

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2276
  call void @llvm.dbg.value(metadata i64 %71, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %52, metadata !2176, metadata !DIExpression()), !dbg !2234
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %72, metadata !2177, metadata !DIExpression()), !dbg !2234
  br label %92, !dbg !2278

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2234
  br label %74, !dbg !2279

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %75, metadata !2178, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2180, metadata !DIExpression()), !dbg !2234
  br label %76, !dbg !2280

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2242
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %78, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %77, metadata !2178, metadata !DIExpression()), !dbg !2234
  %79 = and i8 %78, 1, !dbg !2281
  %80 = icmp eq i8 %79, 0, !dbg !2281
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2283
  br label %82, !dbg !2283

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2234
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2237
  call void @llvm.dbg.value(metadata i8 %84, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %83, metadata !2178, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 2, metadata !2168, metadata !DIExpression()), !dbg !2234
  %85 = and i8 %84, 1, !dbg !2284
  %86 = icmp eq i8 %85, 0, !dbg !2284
  br i1 %86, label %87, label %92, !dbg !2286

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2287
  br i1 %88, label %92, label %89, !dbg !2290

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2287, !tbaa !801
  br label %92, !dbg !2287

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2234
  br label %92, !dbg !2291

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2292
  unreachable, !dbg !2292

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2276
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %40 ], !dbg !2234
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2234
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2234
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %100, metadata !2180, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %99, metadata !2178, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %98, metadata !2177, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %97, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %96, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %95, metadata !2172, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %94, metadata !2171, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %93, metadata !2168, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2234
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
  br label %121, !dbg !2293

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2294
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2276
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2239
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2243
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2244
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2245
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %128, metadata !2183, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %127, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %126, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %125, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %124, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %122, metadata !2173, metadata !DIExpression()), !dbg !2234
  %130 = icmp eq i64 %125, -1, !dbg !2295
  br i1 %130, label %131, label %135, !dbg !2296

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2297
  %133 = load i8, i8* %132, align 1, !dbg !2297, !tbaa !801
  %134 = icmp eq i8 %133, 0, !dbg !2298
  br i1 %134, label %587, label %137, !dbg !2299

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2300
  br i1 %136, label %587, label %137, !dbg !2299

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2301
  br i1 %106, label %138, label %153, !dbg !2302

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2304
  %140 = and i1 %107, %130, !dbg !2305
  br i1 %140, label %141, label %143, !dbg !2305

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %142, metadata !2167, metadata !DIExpression()), !dbg !2234
  br label %143, !dbg !2307

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2307
  call void @llvm.dbg.value(metadata i64 %144, metadata !2167, metadata !DIExpression()), !dbg !2234
  %145 = icmp ugt i64 %139, %144, !dbg !2308
  br i1 %145, label %153, label %146, !dbg !2309

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2310
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2311
  %149 = icmp ne i32 %148, 0, !dbg !2312
  %150 = or i1 %149, %109, !dbg !2313
  %151 = xor i1 %149, true, !dbg !2313
  %152 = zext i1 %151 to i8, !dbg !2313
  br i1 %150, label %153, label %646, !dbg !2313

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2301
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %156, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %154, metadata !2167, metadata !DIExpression()), !dbg !2234
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2314
  %158 = load i8, i8* %157, align 1, !dbg !2314, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %158, metadata !2184, metadata !DIExpression()), !dbg !2301
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
  ], !dbg !2315

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2316

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2317

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2301
  %162 = and i8 %126, 1, !dbg !2321
  %163 = icmp eq i8 %162, 0, !dbg !2321
  %164 = and i1 %110, %163, !dbg !2321
  br i1 %164, label %165, label %181, !dbg !2321

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2323
  br i1 %166, label %167, label %169, !dbg !2327

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2323
  store i8 39, i8* %168, align 1, !dbg !2323, !tbaa !801
  br label %169, !dbg !2323

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %170, metadata !2174, metadata !DIExpression()), !dbg !2234
  %171 = icmp ult i64 %170, %129, !dbg !2328
  br i1 %171, label %172, label %174, !dbg !2331

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2328
  store i8 36, i8* %173, align 1, !dbg !2328, !tbaa !801
  br label %174, !dbg !2328

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %175, metadata !2174, metadata !DIExpression()), !dbg !2234
  %176 = icmp ult i64 %175, %129, !dbg !2332
  br i1 %176, label %177, label %179, !dbg !2335

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2332
  store i8 39, i8* %178, align 1, !dbg !2332, !tbaa !801
  br label %179, !dbg !2332

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %180, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %181, !dbg !2336

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2234
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %183, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %182, metadata !2174, metadata !DIExpression()), !dbg !2234
  %184 = icmp ult i64 %182, %129, !dbg !2337
  br i1 %184, label %185, label %187, !dbg !2340

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2337
  store i8 92, i8* %186, align 1, !dbg !2337, !tbaa !801
  br label %187, !dbg !2337

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %188, metadata !2174, metadata !DIExpression()), !dbg !2234
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2341
  br i1 %191, label %192, label %473, !dbg !2341

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2343
  %194 = load i8, i8* %193, align 1, !dbg !2343, !tbaa !801
  %195 = add i8 %194, -48, !dbg !2344
  %196 = icmp ult i8 %195, 10, !dbg !2344
  br i1 %196, label %197, label %473, !dbg !2344

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2345
  br i1 %198, label %199, label %201, !dbg !2349

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2345
  store i8 48, i8* %200, align 1, !dbg !2345, !tbaa !801
  br label %201, !dbg !2345

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %202, metadata !2174, metadata !DIExpression()), !dbg !2234
  %203 = icmp ult i64 %202, %129, !dbg !2350
  br i1 %203, label %204, label %206, !dbg !2353

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2350
  store i8 48, i8* %205, align 1, !dbg !2350, !tbaa !801
  br label %206, !dbg !2350

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %207, metadata !2174, metadata !DIExpression()), !dbg !2234
  br label %473, !dbg !2354

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2355

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2356

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2357

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2359
  br i1 %214, label %215, label %473, !dbg !2359

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2361
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2362
  %218 = load i8, i8* %217, align 1, !dbg !2362, !tbaa !801
  %219 = icmp eq i8 %218, 63, !dbg !2363
  br i1 %219, label %220, label %473, !dbg !2364

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2365
  %222 = load i8, i8* %221, align 1, !dbg !2365, !tbaa !801
  %223 = sext i8 %222 to i32, !dbg !2365
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
  ], !dbg !2366

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2367

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 undef, metadata !2173, metadata !DIExpression()), !dbg !2234
  %226 = icmp ult i64 %123, %129, !dbg !2369
  br i1 %226, label %227, label %229, !dbg !2372

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2369
  store i8 63, i8* %228, align 1, !dbg !2369, !tbaa !801
  br label %229, !dbg !2369

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %230, metadata !2174, metadata !DIExpression()), !dbg !2234
  %231 = icmp ult i64 %230, %129, !dbg !2373
  br i1 %231, label %232, label %234, !dbg !2376

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2373
  store i8 34, i8* %233, align 1, !dbg !2373, !tbaa !801
  br label %234, !dbg !2373

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %235, metadata !2174, metadata !DIExpression()), !dbg !2234
  %236 = icmp ult i64 %235, %129, !dbg !2377
  br i1 %236, label %237, label %239, !dbg !2380

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2377
  store i8 34, i8* %238, align 1, !dbg !2377, !tbaa !801
  br label %239, !dbg !2377

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %240, metadata !2174, metadata !DIExpression()), !dbg !2234
  %241 = icmp ult i64 %240, %129, !dbg !2381
  br i1 %241, label %242, label %244, !dbg !2384

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2381
  store i8 63, i8* %243, align 1, !dbg !2381, !tbaa !801
  br label %244, !dbg !2381

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %245, metadata !2174, metadata !DIExpression()), !dbg !2234
  br label %473, !dbg !2385

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2188, metadata !DIExpression()), !dbg !2301
  br label %256, !dbg !2386

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2188, metadata !DIExpression()), !dbg !2301
  br label %256, !dbg !2387

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2188, metadata !DIExpression()), !dbg !2301
  br label %254, !dbg !2388

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2188, metadata !DIExpression()), !dbg !2301
  br label %254, !dbg !2389

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2188, metadata !DIExpression()), !dbg !2301
  br label %256, !dbg !2390

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2188, metadata !DIExpression()), !dbg !2301
  br i1 %110, label %252, label %253, !dbg !2391

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2392

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2395

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2397
  call void @llvm.dbg.value(metadata i8 %255, metadata !2188, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.label(metadata !2229), !dbg !2398
  br i1 %111, label %256, label %631, !dbg !2399

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2397
  call void @llvm.dbg.value(metadata i8 %257, metadata !2188, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.label(metadata !2230), !dbg !2401
  br i1 %102, label %495, label %473, !dbg !2402

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2403

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2404, !tbaa !801
  %261 = icmp eq i8 %260, 0, !dbg !2406
  br i1 %261, label %262, label %473, !dbg !2407

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2408
  br i1 %263, label %264, label %473, !dbg !2410

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2301
  br label %265, !dbg !2411

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %266, metadata !2191, metadata !DIExpression()), !dbg !2301
  br i1 %111, label %473, label %631, !dbg !2412

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2301
  br i1 %110, label %268, label %473, !dbg !2414

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2415

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2418
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2420
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2420
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %274, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %273, metadata !2175, metadata !DIExpression()), !dbg !2234
  %275 = icmp ult i64 %123, %274, !dbg !2421
  br i1 %275, label %276, label %278, !dbg !2424

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2421
  store i8 39, i8* %277, align 1, !dbg !2421, !tbaa !801
  br label %278, !dbg !2421

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %279, metadata !2174, metadata !DIExpression()), !dbg !2234
  %280 = icmp ult i64 %279, %274, !dbg !2425
  br i1 %280, label %281, label %283, !dbg !2428

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2425
  store i8 92, i8* %282, align 1, !dbg !2425, !tbaa !801
  br label %283, !dbg !2425

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %284, metadata !2174, metadata !DIExpression()), !dbg !2234
  %285 = icmp ult i64 %284, %274, !dbg !2429
  br i1 %285, label %286, label %288, !dbg !2432

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2429
  store i8 39, i8* %287, align 1, !dbg !2429, !tbaa !801
  br label %288, !dbg !2429

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %289, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %473, !dbg !2433

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2434

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2192, metadata !DIExpression()), !dbg !2435
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2436
  %293 = load i16*, i16** %292, align 8, !dbg !2436, !tbaa !592
  %294 = zext i8 %158 to i64, !dbg !2436
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2436
  %296 = load i16, i16* %295, align 2, !dbg !2436, !tbaa !1875
  %297 = lshr i16 %296, 14, !dbg !2438
  %298 = trunc i16 %297 to i8, !dbg !2438
  %299 = and i8 %298, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i8 %354, metadata !2195, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %355, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %306, metadata !2167, metadata !DIExpression()), !dbg !2234
  %300 = icmp eq i8 %299, 0, !dbg !2439
  call void @llvm.dbg.value(metadata i1 %357, metadata !2191, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  br label %359, !dbg !2440

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2441
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2196, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %23, metadata !2443, metadata !DIExpression()) #27, !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()) #27, !dbg !2451
  call void @llvm.dbg.value(metadata i64 8, metadata !2450, metadata !DIExpression()) #27, !dbg !2451
  store i64 0, i64* %10, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata i64 0, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2435
  %302 = icmp eq i64 %154, -1, !dbg !2454
  br i1 %302, label %303, label %305, !dbg !2456

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %304, metadata !2167, metadata !DIExpression()), !dbg !2234
  br label %305, !dbg !2458

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2301
  call void @llvm.dbg.value(metadata i64 %306, metadata !2167, metadata !DIExpression()), !dbg !2234
  br label %307, !dbg !2459

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2460
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2461
  call void @llvm.dbg.value(metadata i8 %309, metadata !2195, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %308, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2462
  %310 = add i64 %308, %122, !dbg !2463
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2464
  %312 = sub i64 %306, %310, !dbg !2465
  call void @llvm.dbg.value(metadata i32* %12, metadata !2214, metadata !DIExpression(DW_OP_deref)), !dbg !2466
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %313, metadata !2217, metadata !DIExpression()), !dbg !2466
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2468

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2192, metadata !DIExpression()), !dbg !2435
  %315 = icmp ugt i64 %306, %310, !dbg !2469
  br i1 %315, label %316, label %341, !dbg !2471

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2472
  br label %318, !dbg !2472

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2192, metadata !DIExpression()), !dbg !2435
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2473
  %322 = load i8, i8* %321, align 1, !dbg !2473, !tbaa !801
  %323 = icmp eq i8 %322, 0, !dbg !2471
  br i1 %323, label %341, label %324, !dbg !2472

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %325, metadata !2192, metadata !DIExpression()), !dbg !2435
  %326 = add i64 %325, %122, !dbg !2475
  %327 = icmp ult i64 %326, %306, !dbg !2469
  br i1 %327, label %318, label %341, !dbg !2471, !llvm.loop !2476

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2477
  call void @llvm.dbg.value(metadata i64 1, metadata !2218, metadata !DIExpression()), !dbg !2478
  br i1 %330, label %331, label %344, !dbg !2477

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2218, metadata !DIExpression()), !dbg !2478
  %333 = add i64 %332, %310, !dbg !2479
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2482
  %335 = load i8, i8* %334, align 1, !dbg !2482, !tbaa !801
  %336 = sext i8 %335 to i32, !dbg !2482
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2483

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %338, metadata !2218, metadata !DIExpression()), !dbg !2478
  %339 = icmp eq i64 %338, %313, !dbg !2485
  br i1 %339, label %344, label %331, !dbg !2486, !llvm.loop !2487

340:                                              ; preds = %307
  br label %341, !dbg !2489

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2195, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 undef, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2489
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2490, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %345, metadata !2214, metadata !DIExpression()), !dbg !2466
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2492
  %347 = icmp eq i32 %346, 0, !dbg !2492
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2493
  call void @llvm.dbg.value(metadata i8 %348, metadata !2195, metadata !DIExpression()), !dbg !2435
  %349 = add i64 %313, %308, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %349, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2489
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2495
  %351 = icmp eq i32 %350, 0, !dbg !2496
  br i1 %351, label %307, label %353, !dbg !2497, !llvm.loop !2498

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2195, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 undef, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2500
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2500
  call void @llvm.dbg.value(metadata i8 %354, metadata !2195, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %355, metadata !2192, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %306, metadata !2167, metadata !DIExpression()), !dbg !2234
  %356 = and i8 %354, 1, !dbg !2439
  %357 = icmp eq i8 %356, 0, !dbg !2439
  call void @llvm.dbg.value(metadata i1 %357, metadata !2191, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2301
  %358 = icmp ugt i64 %355, 1, !dbg !2501
  br i1 %358, label %367, label %359, !dbg !2440

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2502
  br i1 %364, label %367, label %365, !dbg !2502

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i8 %472, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %441, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %440, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %439, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %438, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %371, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %437, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %375, metadata !2173, metadata !DIExpression()), !dbg !2234
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %372, metadata !2225, metadata !DIExpression()), !dbg !2504
  %373 = and i1 %102, %368
  br label %374, !dbg !2505

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2294
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2234
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2243
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2301
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2301
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2506
  call void @llvm.dbg.value(metadata i8 %380, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %379, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %378, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %377, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %376, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %375, metadata !2173, metadata !DIExpression()), !dbg !2234
  br i1 %373, label %381, label %427, !dbg !2507

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2512

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2301
  %383 = and i8 %377, 1, !dbg !2515
  %384 = icmp eq i8 %383, 0, !dbg !2515
  %385 = and i1 %110, %384, !dbg !2515
  br i1 %385, label %386, label %402, !dbg !2515

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2517
  br i1 %387, label %388, label %390, !dbg !2521

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2517
  store i8 39, i8* %389, align 1, !dbg !2517, !tbaa !801
  br label %390, !dbg !2517

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %391, metadata !2174, metadata !DIExpression()), !dbg !2234
  %392 = icmp ult i64 %391, %129, !dbg !2522
  br i1 %392, label %393, label %395, !dbg !2525

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2522
  store i8 36, i8* %394, align 1, !dbg !2522, !tbaa !801
  br label %395, !dbg !2522

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %396, metadata !2174, metadata !DIExpression()), !dbg !2234
  %397 = icmp ult i64 %396, %129, !dbg !2526
  br i1 %397, label %398, label %400, !dbg !2529

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2526
  store i8 39, i8* %399, align 1, !dbg !2526, !tbaa !801
  br label %400, !dbg !2526

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %401, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %402, !dbg !2530

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2234
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %404, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %403, metadata !2174, metadata !DIExpression()), !dbg !2234
  %405 = icmp ult i64 %403, %129, !dbg !2531
  br i1 %405, label %406, label %408, !dbg !2534

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2531
  store i8 92, i8* %407, align 1, !dbg !2531, !tbaa !801
  br label %408, !dbg !2531

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %409, metadata !2174, metadata !DIExpression()), !dbg !2234
  %410 = icmp ult i64 %409, %129, !dbg !2535
  br i1 %410, label %411, label %415, !dbg !2538

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2535
  %413 = or i8 %412, 48, !dbg !2535
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2535
  store i8 %413, i8* %414, align 1, !dbg !2535, !tbaa !801
  br label %415, !dbg !2535

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %416, metadata !2174, metadata !DIExpression()), !dbg !2234
  %417 = icmp ult i64 %416, %129, !dbg !2539
  br i1 %417, label %418, label %423, !dbg !2542

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2539
  %420 = and i8 %419, 7, !dbg !2539
  %421 = or i8 %420, 48, !dbg !2539
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2539
  store i8 %421, i8* %422, align 1, !dbg !2539, !tbaa !801
  br label %423, !dbg !2539

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %424, metadata !2174, metadata !DIExpression()), !dbg !2234
  %425 = and i8 %378, 7, !dbg !2543
  %426 = or i8 %425, 48, !dbg !2544
  call void @llvm.dbg.value(metadata i8 %426, metadata !2184, metadata !DIExpression()), !dbg !2301
  br label %436, !dbg !2545

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2546
  %429 = icmp eq i8 %428, 0, !dbg !2546
  br i1 %429, label %436, label %430, !dbg !2548

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2549
  br i1 %431, label %432, label %434, !dbg !2553

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2549
  store i8 92, i8* %433, align 1, !dbg !2549, !tbaa !801
  br label %434, !dbg !2549

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %435, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2301
  br label %436, !dbg !2554

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2234
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2243
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2301
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2301
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8 %441, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %440, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %439, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %438, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %437, metadata !2174, metadata !DIExpression()), !dbg !2234
  %442 = add i64 %375, 1, !dbg !2555
  %443 = icmp ugt i64 %372, %442, !dbg !2557
  br i1 %443, label %444, label %471, !dbg !2558

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2559
  %446 = icmp ne i8 %445, 0, !dbg !2559
  %447 = and i8 %441, 1, !dbg !2559
  %448 = icmp eq i8 %447, 0, !dbg !2559
  %449 = and i1 %446, %448, !dbg !2559
  br i1 %449, label %450, label %461, !dbg !2559

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2562
  br i1 %451, label %452, label %454, !dbg !2566

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2562
  store i8 39, i8* %453, align 1, !dbg !2562, !tbaa !801
  br label %454, !dbg !2562

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %455, metadata !2174, metadata !DIExpression()), !dbg !2234
  %456 = icmp ult i64 %455, %129, !dbg !2567
  br i1 %456, label %457, label %459, !dbg !2570

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2567
  store i8 39, i8* %458, align 1, !dbg !2567, !tbaa !801
  br label %459, !dbg !2567

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %460, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %461, !dbg !2571

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2572
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %463, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %462, metadata !2174, metadata !DIExpression()), !dbg !2234
  %464 = icmp ult i64 %462, %129, !dbg !2573
  br i1 %464, label %465, label %467, !dbg !2576

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2573
  store i8 %439, i8* %466, align 1, !dbg !2573, !tbaa !801
  br label %467, !dbg !2573

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %468, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %442, metadata !2173, metadata !DIExpression()), !dbg !2234
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2577
  %470 = load i8, i8* %469, align 1, !dbg !2577, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %470, metadata !2184, metadata !DIExpression()), !dbg !2301
  br label %374, !dbg !2578, !llvm.loop !2579

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i8 %472, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %441, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %440, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %439, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %438, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %371, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %437, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %375, metadata !2173, metadata !DIExpression()), !dbg !2234
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2294
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2234
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2239
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2582
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2234
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2234
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2301
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2301
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2301
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %482, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %481, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %156, metadata !2189, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %480, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %479, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %478, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %477, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %476, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %475, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %474, metadata !2173, metadata !DIExpression()), !dbg !2234
  br i1 %116, label %494, label %484, !dbg !2583

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2585
  %486 = zext i8 %485 to i64, !dbg !2585
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2586
  %488 = load i32, i32* %487, align 4, !dbg !2586, !tbaa !750
  %489 = and i8 %480, 31, !dbg !2587
  %490 = zext i8 %489 to i32, !dbg !2587
  %491 = shl nuw i32 1, %490, !dbg !2588
  %492 = and i32 %488, %491, !dbg !2588
  %493 = icmp eq i32 %492, 0, !dbg !2588
  br i1 %493, label %494, label %495, !dbg !2589

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2590

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2591
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2234
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2239
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2582
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2243
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2244
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2301
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2301
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %503, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %502, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %501, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %500, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %499, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %498, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %497, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %496, metadata !2173, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2231), !dbg !2592
  br i1 %109, label %505, label %635, !dbg !2593

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2301
  %506 = and i8 %500, 1, !dbg !2595
  %507 = icmp eq i8 %506, 0, !dbg !2595
  %508 = and i1 %110, %507, !dbg !2595
  br i1 %508, label %509, label %525, !dbg !2595

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2597
  br i1 %510, label %511, label %513, !dbg !2601

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2597
  store i8 39, i8* %512, align 1, !dbg !2597, !tbaa !801
  br label %513, !dbg !2597

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %514, metadata !2174, metadata !DIExpression()), !dbg !2234
  %515 = icmp ult i64 %514, %504, !dbg !2602
  br i1 %515, label %516, label %518, !dbg !2605

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2602
  store i8 36, i8* %517, align 1, !dbg !2602, !tbaa !801
  br label %518, !dbg !2602

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %519, metadata !2174, metadata !DIExpression()), !dbg !2234
  %520 = icmp ult i64 %519, %504, !dbg !2606
  br i1 %520, label %521, label %523, !dbg !2609

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2606
  store i8 39, i8* %522, align 1, !dbg !2606, !tbaa !801
  br label %523, !dbg !2606

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %524, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 1, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %525, !dbg !2610

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2301
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %527, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %526, metadata !2174, metadata !DIExpression()), !dbg !2234
  %528 = icmp ult i64 %526, %504, !dbg !2611
  br i1 %528, label %529, label %531, !dbg !2614

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2611
  store i8 92, i8* %530, align 1, !dbg !2611, !tbaa !801
  br label %531, !dbg !2611

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %543, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %542, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %541, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %540, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %539, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %538, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %537, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %536, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %535, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %534, metadata !2173, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2232), !dbg !2615
  br label %560, !dbg !2616

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2591
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2234
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2239
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2582
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2243
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2244
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2619
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2301
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2301
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %542, metadata !2191, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %541, metadata !2190, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %540, metadata !2184, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %539, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %538, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %537, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %536, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %535, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %534, metadata !2173, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2232), !dbg !2615
  %544 = and i8 %538, 1, !dbg !2616
  %545 = icmp ne i8 %544, 0, !dbg !2616
  %546 = and i8 %541, 1, !dbg !2616
  %547 = icmp eq i8 %546, 0, !dbg !2616
  %548 = and i1 %545, %547, !dbg !2616
  br i1 %548, label %549, label %560, !dbg !2616

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2620
  br i1 %550, label %551, label %553, !dbg !2624

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2620
  store i8 39, i8* %552, align 1, !dbg !2620, !tbaa !801
  br label %553, !dbg !2620

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %554, metadata !2174, metadata !DIExpression()), !dbg !2234
  %555 = icmp ult i64 %554, %543, !dbg !2625
  br i1 %555, label %556, label %558, !dbg !2628

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2625
  store i8 39, i8* %557, align 1, !dbg !2625, !tbaa !801
  br label %558, !dbg !2625

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %559, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2234
  br label %560, !dbg !2629

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2301
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8 %569, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %568, metadata !2174, metadata !DIExpression()), !dbg !2234
  %570 = icmp ult i64 %568, %561, !dbg !2630
  br i1 %570, label %571, label %573, !dbg !2633

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2630
  store i8 %563, i8* %572, align 1, !dbg !2630, !tbaa !801
  br label %573, !dbg !2630

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %574, metadata !2174, metadata !DIExpression()), !dbg !2234
  %575 = icmp eq i8 %562, 0, !dbg !2634
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2636
  call void @llvm.dbg.value(metadata i8 %576, metadata !2183, metadata !DIExpression()), !dbg !2234
  br label %577, !dbg !2637

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2591
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2234
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2239
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2582
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2243
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2234
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2245
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %584, metadata !2183, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %583, metadata !2182, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 %582, metadata !2181, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %581, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %580, metadata !2175, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %579, metadata !2174, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %578, metadata !2173, metadata !DIExpression()), !dbg !2234
  %586 = add i64 %578, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %586, metadata !2173, metadata !DIExpression()), !dbg !2234
  br label %121, !dbg !2639, !llvm.loop !2640

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2642
  %590 = and i1 %110, %589, !dbg !2644
  %591 = xor i1 %590, true, !dbg !2644
  %592 = or i1 %109, %591, !dbg !2644
  br i1 %592, label %593, label %635, !dbg !2644

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2645
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2645
  br i1 %597, label %598, label %607, !dbg !2645

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2647
  %600 = icmp eq i8 %599, 0, !dbg !2647
  br i1 %600, label %603, label %601, !dbg !2650

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2651
  br label %652, !dbg !2652

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2653
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2655
  br i1 %606, label %26, label %607, !dbg !2655

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2656
  %610 = and i1 %609, %608, !dbg !2658
  br i1 %610, label %611, label %626, !dbg !2658

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %123, metadata !2174, metadata !DIExpression()), !dbg !2234
  %612 = load i8, i8* %97, align 1, !dbg !2659, !tbaa !801
  %613 = icmp eq i8 %612, 0, !dbg !2662
  br i1 %613, label %626, label %614, !dbg !2662

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2176, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %617, metadata !2174, metadata !DIExpression()), !dbg !2234
  %618 = icmp ult i64 %617, %129, !dbg !2663
  br i1 %618, label %619, label %621, !dbg !2666

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2663
  store i8 %615, i8* %620, align 1, !dbg !2663, !tbaa !801
  br label %621, !dbg !2663

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %622, metadata !2174, metadata !DIExpression()), !dbg !2234
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %623, metadata !2176, metadata !DIExpression()), !dbg !2234
  %624 = load i8, i8* %623, align 1, !dbg !2659, !tbaa !801
  %625 = icmp eq i8 %624, 0, !dbg !2662
  br i1 %625, label %626, label %614, !dbg !2662, !llvm.loop !2668

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2276
  call void @llvm.dbg.value(metadata i64 %627, metadata !2174, metadata !DIExpression()), !dbg !2234
  %628 = icmp ult i64 %627, %129, !dbg !2670
  br i1 %628, label %629, label %652, !dbg !2672

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2673
  store i8 0, i8* %630, align 1, !dbg !2674, !tbaa !801
  br label %652, !dbg !2673

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %637, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2233), !dbg !2675
  %633 = icmp eq i8 %101, 0, !dbg !2676
  %634 = select i1 %633, i32 2, i32 4, !dbg !2676
  br label %642, !dbg !2676

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2165, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %637, metadata !2167, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.label(metadata !2233), !dbg !2675
  %639 = icmp eq i32 %93, 2, !dbg !2678
  %640 = icmp eq i8 %636, 0, !dbg !2676
  %641 = select i1 %640, i32 2, i32 4, !dbg !2676
  br i1 %639, label %642, label %646, !dbg !2676

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2676

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2168, metadata !DIExpression()), !dbg !2234
  %650 = and i32 %5, -3, !dbg !2679
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2680
  br label %652, !dbg !2681

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2682
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2691
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %3, metadata !2689, metadata !DIExpression()), !dbg !2691
  %4 = icmp eq i8* %3, %0, !dbg !2693
  br i1 %4, label %5, label %72, !dbg !2695

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %6, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %6, metadata !2697, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* undef, metadata !2703, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 85, metadata !2704, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 84, metadata !2705, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 70, metadata !2706, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 45, metadata !2707, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 56, metadata !2708, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2710, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2713
  %7 = load i8, i8* %6, align 1, !dbg !2716, !tbaa !801
  %8 = and i8 %7, -33, !dbg !2716
  %9 = sext i8 %8 to i32, !dbg !2716
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2716

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2718, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* undef, metadata !2723, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 84, metadata !2724, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 70, metadata !2725, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 45, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 56, metadata !2727, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2732
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2736
  %12 = load i8, i8* %11, align 1, !dbg !2736, !tbaa !801
  %13 = and i8 %12, -33, !dbg !2736
  %14 = icmp eq i8 %13, 84, !dbg !2736
  br i1 %14, label %15, label %69, !dbg !2736

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2738, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* undef, metadata !2743, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 70, metadata !2744, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 45, metadata !2745, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 56, metadata !2746, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2747, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2751
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2755
  %17 = load i8, i8* %16, align 1, !dbg !2755, !tbaa !801
  %18 = and i8 %17, -33, !dbg !2755
  %19 = icmp eq i8 %18, 70, !dbg !2755
  br i1 %19, label %20, label %69, !dbg !2755

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2757, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* undef, metadata !2762, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 45, metadata !2763, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 56, metadata !2764, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 0, metadata !2765, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 0, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 0, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !2769
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2773
  %22 = load i8, i8* %21, align 1, !dbg !2773, !tbaa !801
  %23 = icmp eq i8 %22, 45, !dbg !2773
  br i1 %23, label %24, label %69, !dbg !2775

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2776, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* undef, metadata !2781, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 56, metadata !2782, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2783, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2784, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2786, metadata !DIExpression()), !dbg !2787
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2791
  %26 = load i8, i8* %25, align 1, !dbg !2791, !tbaa !801
  %27 = icmp eq i8 %26, 56, !dbg !2791
  br i1 %27, label %28, label %69, !dbg !2793

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2794, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* undef, metadata !2799, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 0, metadata !2800, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 0, metadata !2801, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 0, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2804
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2808
  %30 = load i8, i8* %29, align 1, !dbg !2808, !tbaa !801
  %31 = icmp eq i8 %30, 0, !dbg !2808
  br i1 %31, label %32, label %69, !dbg !2810

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2811, !tbaa !801
  %34 = icmp eq i8 %33, 96, !dbg !2812
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !2811
  br label %72, !dbg !2813

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2718, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* undef, metadata !2723, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 66, metadata !2724, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 49, metadata !2725, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 56, metadata !2726, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 48, metadata !2727, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 51, metadata !2728, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 48, metadata !2729, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2814
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2818
  %38 = load i8, i8* %37, align 1, !dbg !2818, !tbaa !801
  %39 = and i8 %38, -33, !dbg !2818
  %40 = icmp eq i8 %39, 66, !dbg !2818
  br i1 %40, label %41, label %69, !dbg !2818

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2738, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8* undef, metadata !2743, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 49, metadata !2744, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 56, metadata !2745, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 48, metadata !2746, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 51, metadata !2747, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 48, metadata !2748, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2819
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2821
  %43 = load i8, i8* %42, align 1, !dbg !2821, !tbaa !801
  %44 = icmp eq i8 %43, 49, !dbg !2821
  br i1 %44, label %45, label %69, !dbg !2822

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2757, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* undef, metadata !2762, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 56, metadata !2763, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 48, metadata !2764, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 51, metadata !2765, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 48, metadata !2766, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 0, metadata !2767, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !2823
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2825
  %47 = load i8, i8* %46, align 1, !dbg !2825, !tbaa !801
  %48 = icmp eq i8 %47, 56, !dbg !2825
  br i1 %48, label %49, label %69, !dbg !2826

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2776, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8* undef, metadata !2781, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 48, metadata !2782, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 51, metadata !2783, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 48, metadata !2784, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 0, metadata !2786, metadata !DIExpression()), !dbg !2827
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2829
  %51 = load i8, i8* %50, align 1, !dbg !2829, !tbaa !801
  %52 = icmp eq i8 %51, 48, !dbg !2829
  br i1 %52, label %53, label %69, !dbg !2830

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2794, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* undef, metadata !2799, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 51, metadata !2800, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 48, metadata !2801, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 0, metadata !2802, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2831
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2833
  %55 = load i8, i8* %54, align 1, !dbg !2833, !tbaa !801
  %56 = icmp eq i8 %55, 51, !dbg !2833
  br i1 %56, label %57, label %69, !dbg !2834

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2835, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* undef, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 48, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2844
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2848
  %59 = load i8, i8* %58, align 1, !dbg !2848, !tbaa !801
  %60 = icmp eq i8 %59, 48, !dbg !2848
  br i1 %60, label %61, label %69, !dbg !2850

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2851, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* undef, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2859
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2863
  %63 = load i8, i8* %62, align 1, !dbg !2863, !tbaa !801
  %64 = icmp eq i8 %63, 0, !dbg !2863
  br i1 %64, label %65, label %69, !dbg !2865

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2866, !tbaa !801
  %67 = icmp eq i8 %66, 96, !dbg !2867
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !2866
  br label %72, !dbg !2868

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2869
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !2870
  br label %72, !dbg !2871

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2691
  ret i8* %73, !dbg !2872
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !2873 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2877 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()) #27, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()) #27, !dbg !2904
  call void @llvm.dbg.value(metadata i64* null, metadata !2897, metadata !DIExpression()) #27, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2898, metadata !DIExpression()) #27, !dbg !2904
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2906
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2899, metadata !DIExpression()) #27, !dbg !2904
  %6 = tail call i32* @__errno_location() #31, !dbg !2907
  %7 = load i32, i32* %6, align 4, !dbg !2907, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %7, metadata !2900, metadata !DIExpression()) #27, !dbg !2904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2908
  %9 = load i32, i32* %8, align 4, !dbg !2908, !tbaa !2108
  %10 = or i32 %9, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %10, metadata !2901, metadata !DIExpression()) #27, !dbg !2904
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2910
  %12 = load i32, i32* %11, align 8, !dbg !2910, !tbaa !2056
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2911
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2912
  %15 = load i8*, i8** %14, align 8, !dbg !2912, !tbaa !2130
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2913
  %17 = load i8*, i8** %16, align 8, !dbg !2913, !tbaa !2133
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2914
  %19 = add i64 %18, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %19, metadata !2902, metadata !DIExpression()) #27, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %19, metadata !2916, metadata !DIExpression()) #27, !dbg !2921
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %20, metadata !2903, metadata !DIExpression()) #27, !dbg !2904
  %21 = load i32, i32* %11, align 8, !dbg !2924, !tbaa !2056
  %22 = load i8*, i8** %14, align 8, !dbg !2925, !tbaa !2130
  %23 = load i8*, i8** %16, align 8, !dbg !2926, !tbaa !2133
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2927
  store i32 %7, i32* %6, align 4, !dbg !2928, !tbaa !750
  ret i8* %20, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64* %2, metadata !2897, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2898, metadata !DIExpression()), !dbg !2930
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2931
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2931
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2899, metadata !DIExpression()), !dbg !2930
  %7 = tail call i32* @__errno_location() #31, !dbg !2932
  %8 = load i32, i32* %7, align 4, !dbg !2932, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %8, metadata !2900, metadata !DIExpression()), !dbg !2930
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2933
  %10 = load i32, i32* %9, align 4, !dbg !2933, !tbaa !2108
  %11 = icmp eq i64* %2, null, !dbg !2934
  %12 = zext i1 %11 to i32, !dbg !2934
  %13 = or i32 %10, %12, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %13, metadata !2901, metadata !DIExpression()), !dbg !2930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2936
  %15 = load i32, i32* %14, align 8, !dbg !2936, !tbaa !2056
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2937
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2938
  %18 = load i8*, i8** %17, align 8, !dbg !2938, !tbaa !2130
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2939
  %20 = load i8*, i8** %19, align 8, !dbg !2939, !tbaa !2133
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2940
  %22 = add i64 %21, 1, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %22, metadata !2902, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %22, metadata !2916, metadata !DIExpression()) #27, !dbg !2942
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %23, metadata !2903, metadata !DIExpression()), !dbg !2930
  %24 = load i32, i32* %14, align 8, !dbg !2945, !tbaa !2056
  %25 = load i8*, i8** %17, align 8, !dbg !2946, !tbaa !2130
  %26 = load i8*, i8** %19, align 8, !dbg !2947, !tbaa !2133
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2948
  store i32 %8, i32* %7, align 4, !dbg !2949, !tbaa !750
  br i1 %11, label %29, label %28, !dbg !2950

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2951, !tbaa !1096
  br label %29, !dbg !2953

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2955 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2959, !tbaa !592
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 1, metadata !2958, metadata !DIExpression()), !dbg !2960
  %2 = load i32, i32* @nslots, align 4, !dbg !2961, !tbaa !750
  %3 = icmp sgt i32 %2, 1, !dbg !2964
  br i1 %3, label %4, label %12, !dbg !2965

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2964
  br label %6, !dbg !2965

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2958, metadata !DIExpression()), !dbg !2960
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2966
  %9 = load i8*, i8** %8, align 8, !dbg !2966, !tbaa !2967
  tail call void @free(i8* %9) #27, !dbg !2969
  %10 = add nuw nsw i64 %7, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %10, metadata !2958, metadata !DIExpression()), !dbg !2960
  %11 = icmp eq i64 %10, %5, !dbg !2964
  br i1 %11, label %12, label %6, !dbg !2965, !llvm.loop !2971

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2973
  %14 = load i8*, i8** %13, align 8, !dbg !2973, !tbaa !2967
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2975
  br i1 %15, label %17, label %16, !dbg !2976

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2977
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2979, !tbaa !2980
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2981, !tbaa !2967
  br label %17, !dbg !2982

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2983
  br i1 %18, label %21, label %19, !dbg !2985

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2986
  tail call void @free(i8* %20) #27, !dbg !2988
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2989, !tbaa !592
  br label %21, !dbg !2990

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2991, !tbaa !750
  ret void, !dbg !2992
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2996, metadata !DIExpression()), !dbg !2997
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2998
  ret i8* %3, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %2, metadata !3006, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3007, metadata !DIExpression()), !dbg !3019
  %5 = tail call i32* @__errno_location() #31, !dbg !3020
  %6 = load i32, i32* %5, align 4, !dbg !3020, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %6, metadata !3008, metadata !DIExpression()), !dbg !3019
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3021, !tbaa !592
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3009, metadata !DIExpression()), !dbg !3019
  %8 = icmp slt i32 %0, 0, !dbg !3022
  br i1 %8, label %9, label %10, !dbg !3024

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3025
  unreachable, !dbg !3025

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3026, !tbaa !750
  %12 = icmp sgt i32 %11, %0, !dbg !3027
  br i1 %12, label %34, label %13, !dbg !3028

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3029
  call void @llvm.dbg.value(metadata i1 %14, metadata !3010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3030
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3013, metadata !DIExpression()), !dbg !3030
  %15 = icmp eq i32 %0, 2147483647, !dbg !3031
  br i1 %15, label %16, label %17, !dbg !3033

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3034
  unreachable, !dbg !3034

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3035
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3035
  %20 = add nuw nsw i32 %0, 1, !dbg !3036
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3037
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !3038
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3009, metadata !DIExpression()), !dbg !3019
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3039, !tbaa !592
  br i1 %14, label %25, label %26, !dbg !3040

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3041, !tbaa.struct !3043
  br label %26, !dbg !3044

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3045, !tbaa !750
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3046
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3047
  %31 = sub nsw i32 %20, %27, !dbg !3048
  %32 = sext i32 %31 to i64, !dbg !3049
  %33 = shl nsw i64 %32, 4, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %30, metadata !2443, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %33, metadata !2450, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !3053
  store i32 %20, i32* @nslots, align 4, !dbg !3054, !tbaa !750
  br label %34, !dbg !3055

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3019
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3009, metadata !DIExpression()), !dbg !3019
  %36 = zext i32 %0 to i64, !dbg !3056
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3057
  %38 = load i64, i64* %37, align 8, !dbg !3057, !tbaa !2980
  call void @llvm.dbg.value(metadata i64 %38, metadata !3014, metadata !DIExpression()), !dbg !3058
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3059
  %40 = load i8*, i8** %39, align 8, !dbg !3059, !tbaa !2967
  call void @llvm.dbg.value(metadata i8* %40, metadata !3016, metadata !DIExpression()), !dbg !3058
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3060
  %42 = load i32, i32* %41, align 4, !dbg !3060, !tbaa !2108
  %43 = or i32 %42, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %43, metadata !3017, metadata !DIExpression()), !dbg !3058
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3062
  %45 = load i32, i32* %44, align 8, !dbg !3062, !tbaa !2056
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3063
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3064
  %48 = load i8*, i8** %47, align 8, !dbg !3064, !tbaa !2130
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3065
  %50 = load i8*, i8** %49, align 8, !dbg !3065, !tbaa !2133
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %51, metadata !3018, metadata !DIExpression()), !dbg !3058
  %52 = icmp ugt i64 %38, %51, !dbg !3067
  br i1 %52, label %63, label %53, !dbg !3069

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %54, metadata !3014, metadata !DIExpression()), !dbg !3058
  store i64 %54, i64* %37, align 8, !dbg !3072, !tbaa !2980
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3073
  br i1 %55, label %57, label %56, !dbg !3075

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !3076
  br label %57, !dbg !3076

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2916, metadata !DIExpression()) #27, !dbg !3077
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %58, metadata !3016, metadata !DIExpression()), !dbg !3058
  store i8* %58, i8** %39, align 8, !dbg !3080, !tbaa !2967
  %59 = load i32, i32* %44, align 8, !dbg !3081, !tbaa !2056
  %60 = load i8*, i8** %47, align 8, !dbg !3082, !tbaa !2130
  %61 = load i8*, i8** %49, align 8, !dbg !3083, !tbaa !2133
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3084
  br label %63, !dbg !3085

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3058
  call void @llvm.dbg.value(metadata i8* %64, metadata !3016, metadata !DIExpression()), !dbg !3058
  store i32 %6, i32* %5, align 4, !dbg !3086, !tbaa !750
  ret i8* %64, !dbg !3087
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %1, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %2, metadata !3094, metadata !DIExpression()), !dbg !3095
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3096
  ret i8* %4, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3098 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !2995, metadata !DIExpression()) #27, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()) #27, !dbg !3102
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3104
  ret i8* %2, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 0, metadata !3092, metadata !DIExpression()) #27, !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()) #27, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()) #27, !dbg !3113
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3115
  ret i8* %3, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3117 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %1, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3123, metadata !DIExpression()), !dbg !3125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3124, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()) #27, !dbg !3138
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3137, metadata !DIExpression()) #27, !dbg !3140
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3140, !alias.scope !3128
  %6 = icmp eq i32 %1, 10, !dbg !3141
  br i1 %6, label %7, label %8, !dbg !3143

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3144, !noalias !3128
  unreachable, !dbg !3144

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3145
  store i32 %1, i32* %9, align 8, !dbg !3146, !tbaa !2056, !alias.scope !3128
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3148
  ret i8* %10, !dbg !3149
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3150 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %1, metadata !3155, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %2, metadata !3156, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %3, metadata !3157, metadata !DIExpression()), !dbg !3159
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3160
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3158, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()) #27, !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3137, metadata !DIExpression()) #27, !dbg !3168
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !3168, !alias.scope !3162
  %7 = icmp eq i32 %1, 10, !dbg !3169
  br i1 %7, label %8, label %9, !dbg !3170

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3171, !noalias !3162
  unreachable, !dbg !3171

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3172
  store i32 %1, i32* %10, align 8, !dbg !3173, !tbaa !2056, !alias.scope !3162
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3175
  ret i8* %11, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3177 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %1, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata i32 %0, metadata !3122, metadata !DIExpression()) #27, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %1, metadata !3123, metadata !DIExpression()) #27, !dbg !3184
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3186
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3186
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3124, metadata !DIExpression()) #27, !dbg !3187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188) #27, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()) #27, !dbg !3192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3137, metadata !DIExpression()) #27, !dbg !3194
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !3194, !alias.scope !3188
  %5 = icmp eq i32 %0, 10, !dbg !3195
  br i1 %5, label %6, label %7, !dbg !3196

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !3197, !noalias !3188
  unreachable, !dbg !3197

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3198
  store i32 %0, i32* %8, align 8, !dbg !3199, !tbaa !2056, !alias.scope !3188
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3201
  ret i8* %9, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3203 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3207, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* %1, metadata !3208, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %2, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3154, metadata !DIExpression()) #27, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()) #27, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3156, metadata !DIExpression()) #27, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %2, metadata !3157, metadata !DIExpression()) #27, !dbg !3211
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3158, metadata !DIExpression()) #27, !dbg !3214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3215) #27, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()) #27, !dbg !3219
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3137, metadata !DIExpression()) #27, !dbg !3221
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3221, !alias.scope !3215
  %6 = icmp eq i32 %0, 10, !dbg !3222
  br i1 %6, label %7, label %8, !dbg !3223

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3224, !noalias !3215
  unreachable, !dbg !3224

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3225
  store i32 %0, i32* %9, align 8, !dbg !3226, !tbaa !2056, !alias.scope !3215
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3228
  ret i8* %10, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3230 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 %2, metadata !3236, metadata !DIExpression()), !dbg !3238
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3239
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3239
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3237, metadata !DIExpression()), !dbg !3240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3241, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2074, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8 %2, metadata !2075, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8 %2, metadata !2077, metadata !DIExpression()), !dbg !3243
  %6 = lshr i8 %2, 5, !dbg !3245
  %7 = zext i8 %6 to i64, !dbg !3245
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3246
  call void @llvm.dbg.value(metadata i32* %8, metadata !2079, metadata !DIExpression()), !dbg !3243
  %9 = and i8 %2, 31, !dbg !3247
  %10 = zext i8 %9 to i32, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %10, metadata !2081, metadata !DIExpression()), !dbg !3243
  %11 = load i32, i32* %8, align 4, !dbg !3248, !tbaa !750
  %12 = lshr i32 %11, %10, !dbg !3249
  %13 = and i32 %12, 1, !dbg !3250
  call void @llvm.dbg.value(metadata i32 %13, metadata !2082, metadata !DIExpression()), !dbg !3243
  %14 = xor i32 %13, 1, !dbg !3251
  %15 = shl i32 %14, %10, !dbg !3252
  %16 = xor i32 %15, %11, !dbg !3253
  store i32 %16, i32* %8, align 4, !dbg !3253, !tbaa !750
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3254
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3255
  ret i8* %17, !dbg !3256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3257 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3261, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8 %1, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()) #27, !dbg !3264
  call void @llvm.dbg.value(metadata i64 -1, metadata !3235, metadata !DIExpression()) #27, !dbg !3264
  call void @llvm.dbg.value(metadata i8 %1, metadata !3236, metadata !DIExpression()) #27, !dbg !3264
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3266
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3237, metadata !DIExpression()) #27, !dbg !3267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3268, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2074, metadata !DIExpression()) #27, !dbg !3269
  call void @llvm.dbg.value(metadata i8 %1, metadata !2075, metadata !DIExpression()) #27, !dbg !3269
  call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()) #27, !dbg !3269
  call void @llvm.dbg.value(metadata i8 %1, metadata !2077, metadata !DIExpression()) #27, !dbg !3269
  %5 = lshr i8 %1, 5, !dbg !3271
  %6 = zext i8 %5 to i64, !dbg !3271
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3272
  call void @llvm.dbg.value(metadata i32* %7, metadata !2079, metadata !DIExpression()) #27, !dbg !3269
  %8 = and i8 %1, 31, !dbg !3273
  %9 = zext i8 %8 to i32, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %9, metadata !2081, metadata !DIExpression()) #27, !dbg !3269
  %10 = load i32, i32* %7, align 4, !dbg !3274, !tbaa !750
  %11 = lshr i32 %10, %9, !dbg !3275
  %12 = and i32 %11, 1, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %12, metadata !2082, metadata !DIExpression()) #27, !dbg !3269
  %13 = xor i32 %12, 1, !dbg !3277
  %14 = shl i32 %13, %9, !dbg !3278
  %15 = xor i32 %14, %10, !dbg !3279
  store i32 %15, i32* %7, align 4, !dbg !3279, !tbaa !750
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3281
  ret i8* %16, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3283 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3261, metadata !DIExpression()) #27, !dbg !3287
  call void @llvm.dbg.value(metadata i8 58, metadata !3262, metadata !DIExpression()) #27, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()) #27, !dbg !3289
  call void @llvm.dbg.value(metadata i64 -1, metadata !3235, metadata !DIExpression()) #27, !dbg !3289
  call void @llvm.dbg.value(metadata i8 58, metadata !3236, metadata !DIExpression()) #27, !dbg !3289
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3237, metadata !DIExpression()) #27, !dbg !3292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3293, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2074, metadata !DIExpression()) #27, !dbg !3294
  call void @llvm.dbg.value(metadata i8 58, metadata !2075, metadata !DIExpression()) #27, !dbg !3294
  call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()) #27, !dbg !3294
  call void @llvm.dbg.value(metadata i8 58, metadata !2077, metadata !DIExpression()) #27, !dbg !3294
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3296
  call void @llvm.dbg.value(metadata i32* %4, metadata !2079, metadata !DIExpression()) #27, !dbg !3294
  call void @llvm.dbg.value(metadata i32 26, metadata !2081, metadata !DIExpression()) #27, !dbg !3294
  %5 = load i32, i32* %4, align 4, !dbg !3297, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %5, metadata !2082, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3294
  %6 = or i32 %5, 67108864, !dbg !3298
  store i32 %6, i32* %4, align 4, !dbg !3298, !tbaa !750
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3300
  ret i8* %7, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3302 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()) #27, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()) #27, !dbg !3307
  call void @llvm.dbg.value(metadata i8 58, metadata !3236, metadata !DIExpression()) #27, !dbg !3307
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3309
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3237, metadata !DIExpression()) #27, !dbg !3310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3311, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2074, metadata !DIExpression()) #27, !dbg !3312
  call void @llvm.dbg.value(metadata i8 58, metadata !2075, metadata !DIExpression()) #27, !dbg !3312
  call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()) #27, !dbg !3312
  call void @llvm.dbg.value(metadata i8 58, metadata !2077, metadata !DIExpression()) #27, !dbg !3312
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3314
  call void @llvm.dbg.value(metadata i32* %5, metadata !2079, metadata !DIExpression()) #27, !dbg !3312
  call void @llvm.dbg.value(metadata i32 26, metadata !2081, metadata !DIExpression()) #27, !dbg !3312
  %6 = load i32, i32* %5, align 4, !dbg !3315, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %6, metadata !2082, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3312
  %7 = or i32 %6, 67108864, !dbg !3316
  store i32 %7, i32* %5, align 4, !dbg !3316, !tbaa !750
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3318
  ret i8* %8, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3320 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %1, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3328
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3329
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3329
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3325, metadata !DIExpression()), !dbg !3330
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()) #27, !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3335
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3326, !alias.scope !3332
  %8 = icmp eq i32 %1, 10, !dbg !3336
  br i1 %8, label %9, label %10, !dbg !3337

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3338, !noalias !3332
  unreachable, !dbg !3338

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3335
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3331
  store i32 %1, i32* %11, align 8, !dbg !3331, !tbaa.struct !3242
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3331
  %13 = bitcast i32* %12 to i8*, !dbg !3331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3331, !tbaa.struct !3339
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2074, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2075, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2077, metadata !DIExpression()), !dbg !3340
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3342
  call void @llvm.dbg.value(metadata i32* %14, metadata !2079, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 26, metadata !2081, metadata !DIExpression()), !dbg !3340
  %15 = load i32, i32* %14, align 4, !dbg !3343, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %15, metadata !2082, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3340
  %16 = or i32 %15, 67108864, !dbg !3344
  store i32 %16, i32* %14, align 4, !dbg !3344, !tbaa !750
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3346
  ret i8* %17, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3348 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %2, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %3, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 %0, metadata !3357, metadata !DIExpression()) #27, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %1, metadata !3362, metadata !DIExpression()) #27, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %2, metadata !3363, metadata !DIExpression()) #27, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %3, metadata !3364, metadata !DIExpression()) #27, !dbg !3367
  call void @llvm.dbg.value(metadata i64 -1, metadata !3365, metadata !DIExpression()) #27, !dbg !3367
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3369
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3366, metadata !DIExpression()) #27, !dbg !3370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3371, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2115, metadata !DIExpression()) #27, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()) #27, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()) #27, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2115, metadata !DIExpression()) #27, !dbg !3372
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3374
  store i32 10, i32* %7, align 8, !dbg !3375, !tbaa !2056
  %8 = icmp ne i8* %1, null, !dbg !3376
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3377
  br i1 %10, label %12, label %11, !dbg !3377

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3378
  unreachable, !dbg !3378

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3379
  store i8* %1, i8** %13, align 8, !dbg !3380, !tbaa !2130
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3381
  store i8* %2, i8** %14, align 8, !dbg !3382, !tbaa !2133
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3384
  ret i8* %15, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3358 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3357, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3362, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %2, metadata !3363, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %3, metadata !3364, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %4, metadata !3365, metadata !DIExpression()), !dbg !3386
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3387
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3366, metadata !DIExpression()), !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3389, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2115, metadata !DIExpression()) #27, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()) #27, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()) #27, !dbg !3390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2115, metadata !DIExpression()) #27, !dbg !3390
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3392
  store i32 10, i32* %8, align 8, !dbg !3393, !tbaa !2056
  %9 = icmp ne i8* %1, null, !dbg !3394
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3395
  br i1 %11, label %13, label %12, !dbg !3395

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3396
  unreachable, !dbg !3396

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3397
  store i8* %1, i8** %14, align 8, !dbg !3398, !tbaa !2130
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3399
  store i8* %2, i8** %15, align 8, !dbg !3400, !tbaa !2133
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3402
  ret i8* %16, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3404 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8* %2, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3353, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3354, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %2, metadata !3355, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %1, metadata !3363, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %2, metadata !3364, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i64 -1, metadata !3365, metadata !DIExpression()) #27, !dbg !3414
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3416
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3366, metadata !DIExpression()) #27, !dbg !3417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3418, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2115, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2117, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2115, metadata !DIExpression()) #27, !dbg !3419
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3421
  store i32 10, i32* %6, align 8, !dbg !3422, !tbaa !2056
  %7 = icmp ne i8* %0, null, !dbg !3423
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3424
  br i1 %9, label %11, label %10, !dbg !3424

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3425
  unreachable, !dbg !3425

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3426
  store i8* %0, i8** %12, align 8, !dbg !3427, !tbaa !2130
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3428
  store i8* %1, i8** %13, align 8, !dbg !3429, !tbaa !2133
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3431
  ret i8* %14, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3433 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %1, metadata !3438, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %2, metadata !3439, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %3, metadata !3440, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3363, metadata !DIExpression()) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3364, metadata !DIExpression()) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %3, metadata !3365, metadata !DIExpression()) #27, !dbg !3442
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3366, metadata !DIExpression()) #27, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3446, !tbaa.struct !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2115, metadata !DIExpression()) #27, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()) #27, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2117, metadata !DIExpression()) #27, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2115, metadata !DIExpression()) #27, !dbg !3447
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3449
  store i32 10, i32* %7, align 8, !dbg !3450, !tbaa !2056
  %8 = icmp ne i8* %0, null, !dbg !3451
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3452
  br i1 %10, label %12, label %11, !dbg !3452

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3453
  unreachable, !dbg !3453

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3454
  store i8* %0, i8** %13, align 8, !dbg !3455, !tbaa !2130
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3456
  store i8* %1, i8** %14, align 8, !dbg !3457, !tbaa !2133
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3459
  ret i8* %15, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %2, metadata !3467, metadata !DIExpression()), !dbg !3468
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3469
  ret i8* %4, !dbg !3470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3471 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()) #27, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #27, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3467, metadata !DIExpression()) #27, !dbg !3478
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3480
  ret i8* %3, !dbg !3481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8* %1, metadata !3487, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()) #27, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()) #27, !dbg !3489
  call void @llvm.dbg.value(metadata i64 -1, metadata !3467, metadata !DIExpression()) #27, !dbg !3489
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3491
  ret i8* %3, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3495, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3486, metadata !DIExpression()) #27, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %0, metadata !3487, metadata !DIExpression()) #27, !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()) #27, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #27, !dbg !3499
  call void @llvm.dbg.value(metadata i64 -1, metadata !3467, metadata !DIExpression()) #27, !dbg !3499
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3501
  ret i8* %2, !dbg !3502
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @strintcmp(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #17 !dbg !3503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %1, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 -1, metadata !3517, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 -1, metadata !3518, metadata !DIExpression()), !dbg !3524
  %3 = load i8, i8* %0, align 1, !dbg !3526, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %3, metadata !3519, metadata !DIExpression()), !dbg !3524
  %4 = load i8, i8* %1, align 1, !dbg !3527, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %4, metadata !3520, metadata !DIExpression()), !dbg !3524
  %5 = icmp eq i8 %3, 45, !dbg !3528
  br i1 %5, label %6, label %95, !dbg !3530

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3510, metadata !DIExpression()), !dbg !3524
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3531
  call void @llvm.dbg.value(metadata i8* %8, metadata !3510, metadata !DIExpression()), !dbg !3524
  %9 = load i8, i8* %8, align 1, !dbg !3533, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %9, metadata !3519, metadata !DIExpression()), !dbg !3524
  %10 = icmp eq i8 %9, 48, !dbg !3534
  br i1 %10, label %6, label %11, !dbg !3535, !llvm.loop !3536

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3539
  br i1 %12, label %30, label %13, !dbg !3541

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3519, metadata !DIExpression()), !dbg !3524
  %14 = zext i8 %9 to i32, !dbg !3542
  %15 = add nsw i32 %14, -48, !dbg !3542
  %16 = icmp ult i32 %15, 10, !dbg !3542
  br i1 %16, label %197, label %17, !dbg !3545

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3524
  %18 = icmp eq i8 %4, 48, !dbg !3546
  br i1 %18, label %19, label %24, !dbg !3547

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3516, metadata !DIExpression()), !dbg !3524
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %21, metadata !3516, metadata !DIExpression()), !dbg !3524
  %22 = load i8, i8* %21, align 1, !dbg !3549, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %22, metadata !3520, metadata !DIExpression()), !dbg !3524
  %23 = icmp eq i8 %22, 48, !dbg !3546
  br i1 %23, label %19, label %24, !dbg !3547, !llvm.loop !3550

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3524
  call void @llvm.dbg.value(metadata i8 %25, metadata !3520, metadata !DIExpression()), !dbg !3524
  %26 = zext i8 %25 to i32, !dbg !3552
  %27 = add nsw i32 %26, -48, !dbg !3552
  %28 = icmp ult i32 %27, 10, !dbg !3552
  %29 = sext i1 %28 to i32, !dbg !3552
  br label %197, !dbg !3553

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3516, metadata !DIExpression()), !dbg !3524
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %32, metadata !3516, metadata !DIExpression()), !dbg !3524
  %33 = load i8, i8* %32, align 1, !dbg !3555, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %33, metadata !3520, metadata !DIExpression()), !dbg !3524
  %34 = icmp eq i8 %33, 48, !dbg !3556
  br i1 %34, label %30, label %35, !dbg !3557, !llvm.loop !3558

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 %9, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %8, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %32, metadata !3516, metadata !DIExpression()), !dbg !3524
  %36 = zext i8 %9 to i32, !dbg !3561
  %37 = icmp eq i8 %33, %9, !dbg !3562
  %38 = add nsw i32 %36, -48, !dbg !3563
  %39 = icmp ult i32 %38, 10, !dbg !3563
  %40 = and i1 %39, %37, !dbg !3563
  br i1 %40, label %50, label %43, !dbg !3564

41:                                               ; preds = %50
  %42 = zext i8 %54 to i32, !dbg !3561
  br label %43, !dbg !3565

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %38, %35 ], [ %59, %41 ], !dbg !3565
  %45 = phi i8* [ %32, %35 ], [ %55, %41 ], !dbg !3568
  %46 = phi i8* [ %8, %35 ], [ %53, %41 ], !dbg !3568
  %47 = phi i8 [ %33, %35 ], [ %56, %41 ], !dbg !3568
  %48 = phi i32 [ %36, %35 ], [ %42, %41 ], !dbg !3561
  call void @llvm.dbg.value(metadata i64 0, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %46, metadata !3510, metadata !DIExpression()), !dbg !3524
  %49 = icmp ult i32 %44, 10, !dbg !3565
  br i1 %49, label %67, label %62, !dbg !3569

50:                                               ; preds = %35, %50
  %51 = phi i8* [ %53, %50 ], [ %8, %35 ]
  %52 = phi i8* [ %55, %50 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %51, metadata !3510, metadata !DIExpression()), !dbg !3524
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %53, metadata !3510, metadata !DIExpression()), !dbg !3524
  %54 = load i8, i8* %53, align 1, !dbg !3572, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %54, metadata !3519, metadata !DIExpression()), !dbg !3524
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %55, metadata !3516, metadata !DIExpression()), !dbg !3524
  %56 = load i8, i8* %55, align 1, !dbg !3574, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %56, metadata !3520, metadata !DIExpression()), !dbg !3524
  %57 = zext i8 %54 to i32, !dbg !3561
  %58 = icmp eq i8 %56, %54, !dbg !3562
  %59 = add nsw i32 %57, -48, !dbg !3563
  %60 = icmp ult i32 %59, 10, !dbg !3563
  %61 = and i1 %58, %60, !dbg !3563
  br i1 %61, label %50, label %41, !dbg !3564

62:                                               ; preds = %67, %43
  %63 = phi i64 [ 0, %43 ], [ %72, %67 ], !dbg !3575
  call void @llvm.dbg.value(metadata i64 0, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 %47, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %45, metadata !3516, metadata !DIExpression()), !dbg !3524
  %64 = zext i8 %47 to i32, !dbg !3576
  %65 = add nsw i32 %64, -48, !dbg !3576
  %66 = icmp ult i32 %65, 10, !dbg !3576
  br i1 %66, label %76, label %85, !dbg !3579

67:                                               ; preds = %43, %67
  %68 = phi i64 [ %72, %67 ], [ 0, %43 ]
  %69 = phi i8* [ %70, %67 ], [ %46, %43 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %69, metadata !3510, metadata !DIExpression()), !dbg !3524
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !3580
  call void @llvm.dbg.value(metadata i8* %70, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3519, metadata !DIExpression()), !dbg !3524
  %71 = load i8, i8* %70, align 1, !dbg !3581, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %71, metadata !3519, metadata !DIExpression()), !dbg !3524
  %72 = add i64 %68, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %72, metadata !3522, metadata !DIExpression()), !dbg !3524
  %73 = zext i8 %71 to i32, !dbg !3565
  %74 = add nsw i32 %73, -48, !dbg !3565
  %75 = icmp ult i32 %74, 10, !dbg !3565
  br i1 %75, label %67, label %62, !dbg !3569, !llvm.loop !3583

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %81, %76 ], [ 0, %62 ]
  %78 = phi i8* [ %79, %76 ], [ %45, %62 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %78, metadata !3516, metadata !DIExpression()), !dbg !3524
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !3585
  call void @llvm.dbg.value(metadata i8* %79, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3520, metadata !DIExpression()), !dbg !3524
  %80 = load i8, i8* %79, align 1, !dbg !3586, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %80, metadata !3520, metadata !DIExpression()), !dbg !3524
  %81 = add i64 %77, 1, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %81, metadata !3523, metadata !DIExpression()), !dbg !3524
  %82 = zext i8 %80 to i32, !dbg !3576
  %83 = add nsw i32 %82, -48, !dbg !3576
  %84 = icmp ult i32 %83, 10, !dbg !3576
  br i1 %84, label %76, label %85, !dbg !3579, !llvm.loop !3588

85:                                               ; preds = %76, %62
  %86 = phi i64 [ 0, %62 ], [ %81, %76 ], !dbg !3590
  %87 = icmp eq i64 %63, %86, !dbg !3591
  br i1 %87, label %91, label %88, !dbg !3593

88:                                               ; preds = %85
  %89 = icmp ult i64 %63, %86, !dbg !3594
  %90 = select i1 %89, i32 1, i32 -1, !dbg !3595
  br label %197, !dbg !3596

91:                                               ; preds = %85
  %92 = sub nsw i32 %64, %48, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %92, metadata !3521, metadata !DIExpression()), !dbg !3524
  %93 = icmp eq i64 %63, 0, !dbg !3598
  %94 = select i1 %93, i32 0, i32 %92, !dbg !3600
  br label %197, !dbg !3600

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3601
  br i1 %96, label %99, label %97, !dbg !3603

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3524
  %98 = icmp eq i8 %3, 48, !dbg !3604
  br i1 %98, label %125, label %121, !dbg !3606

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3516, metadata !DIExpression()), !dbg !3524
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %101, metadata !3516, metadata !DIExpression()), !dbg !3524
  %102 = load i8, i8* %101, align 1, !dbg !3609, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %102, metadata !3520, metadata !DIExpression()), !dbg !3524
  %103 = icmp eq i8 %102, 48, !dbg !3610
  br i1 %103, label %99, label %104, !dbg !3611, !llvm.loop !3612

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3520, metadata !DIExpression()), !dbg !3524
  %105 = zext i8 %102 to i32, !dbg !3615
  %106 = add nsw i32 %105, -48, !dbg !3615
  %107 = icmp ult i32 %106, 10, !dbg !3615
  br i1 %107, label %197, label %108, !dbg !3617

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3524
  %109 = icmp eq i8 %3, 48, !dbg !3618
  br i1 %109, label %110, label %115, !dbg !3619

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3510, metadata !DIExpression()), !dbg !3524
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %112, metadata !3510, metadata !DIExpression()), !dbg !3524
  %113 = load i8, i8* %112, align 1, !dbg !3621, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %113, metadata !3519, metadata !DIExpression()), !dbg !3524
  %114 = icmp eq i8 %113, 48, !dbg !3618
  br i1 %114, label %110, label %115, !dbg !3619, !llvm.loop !3622

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3524
  call void @llvm.dbg.value(metadata i8 %116, metadata !3519, metadata !DIExpression()), !dbg !3524
  %117 = zext i8 %116 to i32, !dbg !3624
  %118 = add nsw i32 %117, -48, !dbg !3624
  %119 = icmp ult i32 %118, 10, !dbg !3624
  %120 = zext i1 %119 to i32, !dbg !3624
  br label %197, !dbg !3625

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3524
  call void @llvm.dbg.value(metadata i8 %4, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3524
  %124 = icmp eq i8 %4, 48, !dbg !3626
  br i1 %124, label %138, label %130, !dbg !3627

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3510, metadata !DIExpression()), !dbg !3524
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %127, metadata !3510, metadata !DIExpression()), !dbg !3524
  %128 = load i8, i8* %127, align 1, !dbg !3629, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %128, metadata !3519, metadata !DIExpression()), !dbg !3524
  %129 = icmp eq i8 %128, 48, !dbg !3604
  br i1 %129, label %125, label %121, !dbg !3606, !llvm.loop !3630

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3524
  call void @llvm.dbg.value(metadata i8 %132, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 %123, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %122, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %131, metadata !3516, metadata !DIExpression()), !dbg !3524
  %133 = zext i8 %123 to i32, !dbg !3632
  %134 = icmp eq i8 %123, %132, !dbg !3633
  %135 = add nsw i32 %133, -48, !dbg !3634
  %136 = icmp ult i32 %135, 10, !dbg !3634
  %137 = and i1 %136, %134, !dbg !3634
  br i1 %137, label %143, label %157, !dbg !3635

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3516, metadata !DIExpression()), !dbg !3524
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %140, metadata !3516, metadata !DIExpression()), !dbg !3524
  %141 = load i8, i8* %140, align 1, !dbg !3637, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %141, metadata !3520, metadata !DIExpression()), !dbg !3524
  %142 = icmp eq i8 %141, 48, !dbg !3626
  br i1 %142, label %138, label %130, !dbg !3627, !llvm.loop !3638

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %144, metadata !3510, metadata !DIExpression()), !dbg !3524
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %146, metadata !3510, metadata !DIExpression()), !dbg !3524
  %147 = load i8, i8* %146, align 1, !dbg !3642, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %147, metadata !3519, metadata !DIExpression()), !dbg !3524
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %148, metadata !3516, metadata !DIExpression()), !dbg !3524
  %149 = load i8, i8* %148, align 1, !dbg !3644, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %149, metadata !3520, metadata !DIExpression()), !dbg !3524
  %150 = zext i8 %147 to i32, !dbg !3632
  %151 = icmp eq i8 %147, %149, !dbg !3633
  %152 = add nsw i32 %150, -48, !dbg !3634
  %153 = icmp ult i32 %152, 10, !dbg !3634
  %154 = and i1 %151, %153, !dbg !3634
  br i1 %154, label %143, label %155, !dbg !3635

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3632
  br label %157, !dbg !3645

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3646
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3524
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3632
  %163 = zext i8 %161 to i32, !dbg !3645
  %164 = sub nsw i32 %162, %163, !dbg !3649
  call void @llvm.dbg.value(metadata i32 %164, metadata !3521, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 0, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %160, metadata !3510, metadata !DIExpression()), !dbg !3524
  %165 = icmp ult i32 %158, 10, !dbg !3646
  br i1 %165, label %170, label %166, !dbg !3650

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3651
  call void @llvm.dbg.value(metadata i64 0, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 %161, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %159, metadata !3516, metadata !DIExpression()), !dbg !3524
  %168 = add nsw i32 %163, -48, !dbg !3652
  %169 = icmp ult i32 %168, 10, !dbg !3652
  br i1 %169, label %179, label %188, !dbg !3655

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %172, metadata !3510, metadata !DIExpression()), !dbg !3524
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3656
  call void @llvm.dbg.value(metadata i8* %173, metadata !3510, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3519, metadata !DIExpression()), !dbg !3524
  %174 = load i8, i8* %173, align 1, !dbg !3657, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %174, metadata !3519, metadata !DIExpression()), !dbg !3524
  %175 = add i64 %171, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %175, metadata !3522, metadata !DIExpression()), !dbg !3524
  %176 = zext i8 %174 to i32, !dbg !3646
  %177 = add nsw i32 %176, -48, !dbg !3646
  %178 = icmp ult i32 %177, 10, !dbg !3646
  br i1 %178, label %170, label %166, !dbg !3650, !llvm.loop !3659

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %181, metadata !3516, metadata !DIExpression()), !dbg !3524
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %182, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 undef, metadata !3520, metadata !DIExpression()), !dbg !3524
  %183 = load i8, i8* %182, align 1, !dbg !3662, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %183, metadata !3520, metadata !DIExpression()), !dbg !3524
  %184 = add i64 %180, 1, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %184, metadata !3523, metadata !DIExpression()), !dbg !3524
  %185 = zext i8 %183 to i32, !dbg !3652
  %186 = add nsw i32 %185, -48, !dbg !3652
  %187 = icmp ult i32 %186, 10, !dbg !3652
  br i1 %187, label %179, label %188, !dbg !3655, !llvm.loop !3664

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3666
  %190 = icmp eq i64 %167, %189, !dbg !3667
  br i1 %190, label %194, label %191, !dbg !3669

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3670
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3671
  br label %197, !dbg !3672

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3673
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3675
  br label %197, !dbg !3675

197:                                              ; preds = %13, %24, %88, %104, %115, %191, %194, %91
  %198 = phi i32 [ %94, %91 ], [ %29, %24 ], [ %90, %88 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ 1, %104 ], [ %196, %194 ]
  ret i32 %198, !dbg !3676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror(i32 %0, i32 %1, i8* %2, %struct.__va_list_tag* %3) local_unnamed_addr #8 !dbg !3677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3688, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 %1, metadata !3689, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, metadata !3691, metadata !DIExpression()), !dbg !3692
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !3693
  ret void, !dbg !3694
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @verror_at_line(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.__va_list_tag* %5) local_unnamed_addr #8 !dbg !3695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3699, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %1, metadata !3700, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %2, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %3, metadata !3702, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %4, metadata !3703, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !3704, metadata !DIExpression()), !dbg !3706
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #27, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %7, metadata !3705, metadata !DIExpression()), !dbg !3706
  %8 = icmp eq i8* %7, null, !dbg !3708
  br i1 %8, label %13, label %9, !dbg !3710

9:                                                ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !3711
  br i1 %10, label %12, label %11, !dbg !3714

11:                                               ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #27, !dbg !3715
  br label %17, !dbg !3715

12:                                               ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %7) #27, !dbg !3716
  br label %17

13:                                               ; preds = %6
  %14 = tail call i32* @__errno_location() #31, !dbg !3717
  %15 = load i32, i32* %14, align 4, !dbg !3717, !tbaa !750
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #27, !dbg !3719
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #27, !dbg !3720
  tail call void @abort() #29, !dbg !3721
  unreachable, !dbg !3721

17:                                               ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #27, !dbg !3722
  ret void, !dbg !3723
}

declare !dbg !3724 void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3727 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()), !dbg !3733
  %3 = udiv i64 9223372036854775807, %1, !dbg !3734
  %4 = icmp ult i64 %3, %0, !dbg !3734
  br i1 %4, label %5, label %6, !dbg !3736

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3737
  unreachable, !dbg !3737

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %7, metadata !3739, metadata !DIExpression()) #27, !dbg !3745
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %8, metadata !3744, metadata !DIExpression()) #27, !dbg !3745
  %9 = icmp eq i8* %8, null, !dbg !3748
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3750
  br i1 %11, label %12, label %13, !dbg !3750

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3751
  unreachable, !dbg !3751

13:                                               ; preds = %6
  ret i8* %8, !dbg !3752
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3740 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3739, metadata !DIExpression()), !dbg !3753
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3754
  call void @llvm.dbg.value(metadata i8* %2, metadata !3744, metadata !DIExpression()), !dbg !3753
  %3 = icmp eq i8* %2, null, !dbg !3755
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3756
  br i1 %5, label %6, label %7, !dbg !3756

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3757
  unreachable, !dbg !3757

7:                                                ; preds = %1
  ret i8* %2, !dbg !3758
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3759 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %1, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %2, metadata !3765, metadata !DIExpression()), !dbg !3766
  %4 = udiv i64 9223372036854775807, %2, !dbg !3767
  %5 = icmp ult i64 %4, %1, !dbg !3767
  br i1 %5, label %6, label %7, !dbg !3769

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3770
  unreachable, !dbg !3770

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()) #27, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %8, metadata !3777, metadata !DIExpression()) #27, !dbg !3778
  %9 = icmp eq i64 %8, 0, !dbg !3780
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3782
  br i1 %11, label %12, label %13, !dbg !3782

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3783
  br label %19, !dbg !3785

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %14, metadata !3772, metadata !DIExpression()) #27, !dbg !3778
  %15 = icmp eq i8* %14, null, !dbg !3787
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3789
  br i1 %17, label %18, label %19, !dbg !3789

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3790
  unreachable, !dbg !3790

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3778
  ret i8* %20, !dbg !3791
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3773 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %1, metadata !3777, metadata !DIExpression()), !dbg !3792
  %3 = icmp eq i64 %1, 0, !dbg !3793
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3794
  br i1 %5, label %6, label %7, !dbg !3794

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3795
  br label %13, !dbg !3796

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %8, metadata !3772, metadata !DIExpression()), !dbg !3792
  %9 = icmp eq i8* %8, null, !dbg !3798
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3799
  br i1 %11, label %12, label %13, !dbg !3799

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3800
  unreachable, !dbg !3800

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3792
  ret i8* %14, !dbg !3801
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !156, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64* %1, metadata !157, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %2, metadata !158, metadata !DIExpression()), !dbg !3802
  %4 = load i64, i64* %1, align 8, !dbg !3803, !tbaa !1096
  call void @llvm.dbg.value(metadata i64 %4, metadata !159, metadata !DIExpression()), !dbg !3802
  %5 = icmp eq i8* %0, null, !dbg !3804
  br i1 %5, label %6, label %20, !dbg !3806

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3807
  br i1 %7, label %8, label %13, !dbg !3810

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %9, metadata !159, metadata !DIExpression()), !dbg !3802
  %10 = icmp ugt i64 %2, 128, !dbg !3813
  %11 = zext i1 %10 to i64, !dbg !3813
  %12 = add nuw nsw i64 %9, %11, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %12, metadata !159, metadata !DIExpression()), !dbg !3802
  br label %13, !dbg !3815

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3802
  call void @llvm.dbg.value(metadata i64 %14, metadata !159, metadata !DIExpression()), !dbg !3802
  %15 = udiv i64 9223372036854775807, %2, !dbg !3816
  %16 = icmp ult i64 %15, %14, !dbg !3816
  br i1 %16, label %19, label %17, !dbg !3818

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !159, metadata !DIExpression()), !dbg !3802
  store i64 %14, i64* %1, align 8, !dbg !3819, !tbaa !1096
  %18 = mul i64 %14, %2, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %28, metadata !3777, metadata !DIExpression()) #27, !dbg !3821
  br label %31, !dbg !3823

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3824
  unreachable, !dbg !3824

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3825
  %22 = icmp ugt i64 %21, %4, !dbg !3828
  br i1 %22, label %24, label %23, !dbg !3829

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3830
  unreachable, !dbg !3830

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3831
  %26 = add nuw i64 %4, 1, !dbg !3832
  %27 = add i64 %26, %25, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %27, metadata !159, metadata !DIExpression()), !dbg !3802
  store i64 %27, i64* %1, align 8, !dbg !3819, !tbaa !1096
  %28 = mul i64 %27, %2, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %28, metadata !3777, metadata !DIExpression()) #27, !dbg !3821
  %29 = icmp eq i64 %28, 0, !dbg !3834
  br i1 %29, label %30, label %31, !dbg !3823

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3835
  br label %38, !dbg !3836

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %33, metadata !3772, metadata !DIExpression()) #27, !dbg !3821
  %34 = icmp eq i8* %33, null, !dbg !3838
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3839
  br i1 %36, label %37, label %38, !dbg !3839

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3840
  unreachable, !dbg !3840

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3821
  ret i8* %39, !dbg !3841
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3842 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %0, metadata !3739, metadata !DIExpression()) #27, !dbg !3846
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %2, metadata !3744, metadata !DIExpression()) #27, !dbg !3846
  %3 = icmp eq i8* %2, null, !dbg !3849
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3850
  br i1 %5, label %6, label %7, !dbg !3850

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3851
  unreachable, !dbg !3851

7:                                                ; preds = %1
  ret i8* %2, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64* %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %0, metadata !156, metadata !DIExpression()) #27, !dbg !3860
  call void @llvm.dbg.value(metadata i64* %1, metadata !157, metadata !DIExpression()) #27, !dbg !3860
  call void @llvm.dbg.value(metadata i64 1, metadata !158, metadata !DIExpression()) #27, !dbg !3860
  %3 = load i64, i64* %1, align 8, !dbg !3862, !tbaa !1096
  call void @llvm.dbg.value(metadata i64 %3, metadata !159, metadata !DIExpression()) #27, !dbg !3860
  %4 = icmp eq i8* %0, null, !dbg !3863
  br i1 %4, label %5, label %10, !dbg !3864

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3865
  br i1 %6, label %17, label %7, !dbg !3866

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !159, metadata !DIExpression()) #27, !dbg !3860
  %8 = icmp slt i64 %3, 0, !dbg !3867
  br i1 %8, label %9, label %17, !dbg !3868

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3869
  unreachable, !dbg !3869

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3870
  br i1 %11, label %13, label %12, !dbg !3871

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3872
  unreachable, !dbg !3872

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3873
  %15 = add nuw nsw i64 %3, 1, !dbg !3874
  %16 = add nuw nsw i64 %15, %14, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %16, metadata !159, metadata !DIExpression()) #27, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()) #27, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %16, metadata !3777, metadata !DIExpression()) #27, !dbg !3876
  br label %17, !dbg !3878

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3879
  store i64 %18, i64* %1, align 8, !dbg !3879, !tbaa !1096
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %19, metadata !3772, metadata !DIExpression()) #27, !dbg !3876
  %20 = icmp eq i8* %19, null, !dbg !3881
  br i1 %20, label %21, label %22, !dbg !3882

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3883
  unreachable, !dbg !3883

22:                                               ; preds = %17
  ret i8* %19, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3885 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %0, metadata !3889, metadata !DIExpression()) #27, !dbg !3894
  call void @llvm.dbg.value(metadata i64 1, metadata !3892, metadata !DIExpression()) #27, !dbg !3894
  %2 = icmp slt i64 %0, 0, !dbg !3896
  br i1 %2, label %6, label %3, !dbg !3898

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %4, metadata !3893, metadata !DIExpression()) #27, !dbg !3894
  %5 = icmp eq i8* %4, null, !dbg !3900
  br i1 %5, label %6, label %7, !dbg !3901

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3902
  unreachable, !dbg !3902

7:                                                ; preds = %3
  ret i8* %4, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3890 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3889, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3904
  %3 = udiv i64 9223372036854775807, %1, !dbg !3905
  %4 = icmp ult i64 %3, %0, !dbg !3905
  br i1 %4, label %8, label %5, !dbg !3906

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %6, metadata !3893, metadata !DIExpression()), !dbg !3904
  %7 = icmp eq i8* %6, null, !dbg !3908
  br i1 %7, label %8, label %9, !dbg !3909

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3910
  unreachable, !dbg !3910

9:                                                ; preds = %5
  ret i8* %6, !dbg !3911
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3912 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3918, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %1, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()) #27, !dbg !3921
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %3, metadata !3744, metadata !DIExpression()) #27, !dbg !3921
  %4 = icmp eq i8* %3, null, !dbg !3924
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3925
  br i1 %6, label %7, label %8, !dbg !3925

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3926
  unreachable, !dbg !3926

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3927, metadata !DIExpression()) #27, !dbg !3936
  call void @llvm.dbg.value(metadata i8* %0, metadata !3934, metadata !DIExpression()) #27, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()) #27, !dbg !3936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3938
  ret i8* %3, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3942, metadata !DIExpression()), !dbg !3943
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3944
  %3 = add i64 %2, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %0, metadata !3918, metadata !DIExpression()) #27, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %3, metadata !3919, metadata !DIExpression()) #27, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %3, metadata !3739, metadata !DIExpression()) #27, !dbg !3948
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3950
  call void @llvm.dbg.value(metadata i8* %4, metadata !3744, metadata !DIExpression()) #27, !dbg !3948
  %5 = icmp eq i8* %4, null, !dbg !3951
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3952
  br i1 %7, label %8, label %9, !dbg !3952

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3953
  unreachable, !dbg !3953

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3927, metadata !DIExpression()) #27, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %0, metadata !3934, metadata !DIExpression()) #27, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %3, metadata !3935, metadata !DIExpression()) #27, !dbg !3954
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3956
  ret i8* %4, !dbg !3957
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3958 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3959, !tbaa !750
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #27, !dbg !3960
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #27, !dbg !3961
  tail call void @abort() #29, !dbg !3962
  unreachable, !dbg !3962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xvasprintf(i8* %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !3963 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3974, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !3975, metadata !DIExpression()), !dbg !3980
  %5 = bitcast i8** %4 to i8*, !dbg !3981
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27, !dbg !3981
  call void @llvm.dbg.value(metadata i64 0, metadata !3977, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3979, metadata !DIExpression()), !dbg !3982
  %6 = load i8, i8* %0, align 1, !dbg !3983, !tbaa !801
  %7 = icmp eq i8 %6, 0, !dbg !3988
  br i1 %7, label %8, label %80, !dbg !3989

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 %91, metadata !3990, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !3995, metadata !DIExpression()) #27, !dbg !4014
  %9 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4016
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #27, !dbg !4016
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3997, metadata !DIExpression()) #27, !dbg !4017
  call void @llvm.dbg.value(metadata i64 0, metadata !4002, metadata !DIExpression()) #27, !dbg !4014
  %10 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4018
  call void @llvm.va_copy(i8* nonnull %9, i8* %10) #27, !dbg !4018
  call void @llvm.dbg.value(metadata i64 %91, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  br label %15, !dbg !4019

11:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %91, metadata !3990, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !3995, metadata !DIExpression()) #27, !dbg !4014
  %12 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4016
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #27, !dbg !4016
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3997, metadata !DIExpression()) #27, !dbg !4017
  call void @llvm.dbg.value(metadata i64 0, metadata !4002, metadata !DIExpression()) #27, !dbg !4014
  %13 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !4018
  call void @llvm.va_copy(i8* nonnull %12, i8* %13) #27, !dbg !4018
  call void @llvm.dbg.value(metadata i64 %91, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  %14 = icmp eq i64 %91, 0, !dbg !4020
  br i1 %14, label %15, label %18, !dbg !4019

15:                                               ; preds = %8, %11
  %16 = phi i8* [ %9, %8 ], [ %12, %11 ]
  call void @llvm.va_end(i8* nonnull %16) #27, !dbg !4021
  %17 = call noalias i8* @xmalloc(i64 1) #27, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %51, metadata !3996, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %51, metadata !4004, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i64 undef, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  br label %76, !dbg !4023

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = load i32, i32* %19, align 16, !dbg !4024
  br label %24, !dbg !4019

24:                                               ; preds = %36, %18
  %25 = phi i32 [ %23, %18 ], [ %37, %36 ], !dbg !4024
  %26 = phi i64 [ 0, %18 ], [ %42, %36 ]
  %27 = phi i64 [ %91, %18 ], [ %43, %36 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !4002, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %27, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  %28 = icmp ult i32 %25, 41, !dbg !4024
  br i1 %28, label %29, label %33, !dbg !4024

29:                                               ; preds = %24
  %30 = zext i32 %25 to i64, !dbg !4024
  %31 = getelementptr i8, i8* %22, i64 %30, !dbg !4024
  %32 = add nuw nsw i32 %25, 8, !dbg !4024
  store i32 %32, i32* %19, align 16, !dbg !4024
  br label %36, !dbg !4024

33:                                               ; preds = %24
  %34 = load i8*, i8** %20, align 8, !dbg !4024
  %35 = getelementptr i8, i8* %34, i64 8, !dbg !4024
  store i8* %35, i8** %20, align 8, !dbg !4024
  br label %36, !dbg !4024

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %25, %33 ]
  %38 = phi i8* [ %31, %29 ], [ %34, %33 ]
  %39 = bitcast i8* %38 to i8**, !dbg !4024
  %40 = load i8*, i8** %39, align 8, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %40, metadata !4005, metadata !DIExpression()) #27, !dbg !4025
  %41 = call i64 @strlen(i8* nonnull dereferenceable(1) %40) #28, !dbg !4026
  call void @llvm.dbg.value(metadata i64 %26, metadata !4027, metadata !DIExpression()) #27, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %41, metadata !4033, metadata !DIExpression()) #27, !dbg !4035
  call void @llvm.dbg.value(metadata i64 undef, metadata !4034, metadata !DIExpression()) #27, !dbg !4035
  %42 = call i64 @llvm.uadd.sat.i64(i64 %26, i64 %41) #27, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %42, metadata !4002, metadata !DIExpression()) #27, !dbg !4014
  %43 = add i64 %27, -1, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %43, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  %44 = icmp eq i64 %43, 0, !dbg !4020
  br i1 %44, label %45, label %24, !dbg !4019, !llvm.loop !4039

45:                                               ; preds = %36
  call void @llvm.va_end(i8* nonnull %12) #27, !dbg !4021
  %46 = icmp ugt i64 %42, 2147483647
  br i1 %46, label %47, label %49, !dbg !4041

47:                                               ; preds = %45
  %48 = tail call i32* @__errno_location() #31, !dbg !4043
  store i32 75, i32* %48, align 4, !dbg !4045, !tbaa !750
  br label %94, !dbg !4046

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %42, 1, !dbg !4022
  %51 = call noalias i8* @xmalloc(i64 %50) #27, !dbg !4022
  call void @llvm.dbg.value(metadata i8* %51, metadata !3996, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %51, metadata !4004, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %91, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  br label %55, !dbg !4023

55:                                               ; preds = %68, %49
  %56 = phi i64 [ %91, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %57, metadata !4004, metadata !DIExpression()) #27, !dbg !4014
  %58 = load i32, i32* %52, align 8, !dbg !4047
  %59 = icmp ult i32 %58, 41, !dbg !4047
  br i1 %59, label %60, label %65, !dbg !4047

60:                                               ; preds = %55
  %61 = load i8*, i8** %54, align 8, !dbg !4047
  %62 = zext i32 %58 to i64, !dbg !4047
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !4047
  %64 = add nuw nsw i32 %58, 8, !dbg !4047
  store i32 %64, i32* %52, align 8, !dbg !4047
  br label %68, !dbg !4047

65:                                               ; preds = %55
  %66 = load i8*, i8** %53, align 8, !dbg !4047
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !4047
  store i8* %67, i8** %53, align 8, !dbg !4047
  br label %68, !dbg !4047

68:                                               ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !4047
  %71 = load i8*, i8** %70, align 8, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %71, metadata !4009, metadata !DIExpression()) #27, !dbg !4048
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %71) #28, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %72, metadata !4013, metadata !DIExpression()) #27, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %57, metadata !4050, metadata !DIExpression()) #27, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %71, metadata !4053, metadata !DIExpression()) #27, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %72, metadata !4054, metadata !DIExpression()) #27, !dbg !4055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %57, i8* nonnull align 1 %71, i64 %72, i1 false) #27, !dbg !4057
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %73, metadata !4004, metadata !DIExpression()) #27, !dbg !4014
  %74 = add i64 %56, -1, !dbg !4059
  call void @llvm.dbg.value(metadata i64 %74, metadata !4003, metadata !DIExpression()) #27, !dbg !4014
  %75 = icmp eq i64 %74, 0, !dbg !4060
  br i1 %75, label %76, label %55, !dbg !4023, !llvm.loop !4061

76:                                               ; preds = %68, %15
  %77 = phi i8* [ %16, %15 ], [ %12, %68 ]
  %78 = phi i8* [ %17, %15 ], [ %51, %68 ]
  %79 = phi i8* [ %17, %15 ], [ %73, %68 ], !dbg !4014
  store i8 0, i8* %79, align 1, !dbg !4063, !tbaa !801
  br label %94, !dbg !4064

80:                                               ; preds = %2, %89
  %81 = phi i8 [ %92, %89 ], [ %6, %2 ]
  %82 = phi i8* [ %90, %89 ], [ %0, %2 ]
  %83 = phi i64 [ %91, %89 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i8* %82, metadata !3979, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %83, metadata !3977, metadata !DIExpression()), !dbg !3982
  %84 = icmp eq i8 %81, 37, !dbg !4065
  br i1 %84, label %85, label %97, !dbg !4067

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %86, metadata !3979, metadata !DIExpression()), !dbg !3982
  %87 = load i8, i8* %86, align 1, !dbg !4069, !tbaa !801
  %88 = icmp eq i8 %87, 115, !dbg !4071
  br i1 %88, label %89, label %97, !dbg !4072

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, i8* %82, i64 2, !dbg !4073
  call void @llvm.dbg.value(metadata i8* %90, metadata !3979, metadata !DIExpression()), !dbg !3982
  %91 = add i64 %83, 1, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %91, metadata !3977, metadata !DIExpression()), !dbg !3982
  %92 = load i8, i8* %90, align 1, !dbg !3983, !tbaa !801
  %93 = icmp eq i8 %92, 0, !dbg !3988
  br i1 %93, label %11, label %80, !dbg !3989, !llvm.loop !4075

94:                                               ; preds = %76, %47
  %95 = phi i8* [ %12, %47 ], [ %77, %76 ]
  %96 = phi i8* [ null, %47 ], [ %78, %76 ], !dbg !4014
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #27, !dbg !4078
  br label %107

97:                                               ; preds = %85, %80
  call void @llvm.dbg.value(metadata i8** %4, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3980
  call void @llvm.dbg.value(metadata i8** %4, metadata !4079, metadata !DIExpression()) #27, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %0, metadata !4087, metadata !DIExpression()) #27, !dbg !4089
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4088, metadata !DIExpression()) #27, !dbg !4089
  %98 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* nonnull %0, %struct.__va_list_tag* %1) #27, !dbg !4092
  %99 = icmp slt i32 %98, 0, !dbg !4093
  br i1 %99, label %100, label %105, !dbg !4094

100:                                              ; preds = %97
  %101 = tail call i32* @__errno_location() #31, !dbg !4095
  %102 = load i32, i32* %101, align 4, !dbg !4095, !tbaa !750
  %103 = icmp eq i32 %102, 12, !dbg !4098
  br i1 %103, label %104, label %107, !dbg !4099

104:                                              ; preds = %100
  call void @xalloc_die() #29, !dbg !4100
  unreachable, !dbg !4100

105:                                              ; preds = %97
  %106 = load i8*, i8** %4, align 8, !dbg !4101, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %106, metadata !3976, metadata !DIExpression()), !dbg !3980
  br label %107, !dbg !4102

107:                                              ; preds = %94, %100, %105
  %108 = phi i8* [ %106, %105 ], [ %96, %94 ], [ null, %100 ], !dbg !3980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27, !dbg !4103
  ret i8* %108, !dbg !4103
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !4104 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4106, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4112
  %3 = icmp eq i64 %0, 0, !dbg !4113
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4114
  br i1 %5, label %11, label %6, !dbg !4114

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4109, metadata !DIExpression()), !dbg !4115
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4116
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4116
  br i1 %8, label %9, label %11, !dbg !4118

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !4119
  store i32 12, i32* %10, align 4, !dbg !4121, !tbaa !750
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4106, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %12, metadata !4107, metadata !DIExpression()), !dbg !4112
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !4122
  call void @llvm.dbg.value(metadata i8* %14, metadata !4108, metadata !DIExpression()), !dbg !4112
  br label %15, !dbg !4123

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4112
  ret i8* %16, !dbg !4124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4125 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4141, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i8* %1, metadata !4142, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i64 %2, metadata !4143, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4144, metadata !DIExpression()), !dbg !4150
  %6 = bitcast i32* %5 to i8*, !dbg !4151
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4151
  %7 = icmp eq i32* %0, null, !dbg !4152
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4154
  call void @llvm.dbg.value(metadata i32* %8, metadata !4141, metadata !DIExpression()), !dbg !4150
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !4155
  call void @llvm.dbg.value(metadata i64 %9, metadata !4145, metadata !DIExpression()), !dbg !4150
  %10 = icmp ugt i64 %9, -3, !dbg !4156
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4157
  br i1 %12, label %13, label %18, !dbg !4157

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !4158
  br i1 %14, label %18, label %15, !dbg !4159

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4160, !tbaa !801
  call void @llvm.dbg.value(metadata i8 %16, metadata !4147, metadata !DIExpression()), !dbg !4161
  %17 = zext i8 %16 to i32, !dbg !4162
  store i32 %17, i32* %8, align 4, !dbg !4163, !tbaa !750
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4164
  ret i64 %19, !dbg !4164
}

; Function Attrs: nounwind
declare !dbg !4165 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4170 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4209, metadata !DIExpression()), !dbg !4214
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i1 undef, metadata !4210, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4214
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4216, metadata !DIExpression()), !dbg !4220
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4222
  %4 = load i32, i32* %3, align 8, !dbg !4222, !tbaa !4223
  %5 = and i32 %4, 32, !dbg !4225
  %6 = icmp eq i32 %5, 0, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %6, metadata !4212, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4214
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4226
  %8 = icmp eq i32 %7, 0, !dbg !4227
  call void @llvm.dbg.value(metadata i1 %8, metadata !4213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4214
  br i1 %6, label %9, label %19, !dbg !4228

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4230
  call void @llvm.dbg.value(metadata i1 %10, metadata !4210, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4214
  %11 = or i1 %10, %8, !dbg !4231
  %12 = xor i1 %8, true, !dbg !4231
  %13 = sext i1 %12 to i32, !dbg !4231
  br i1 %11, label %22, label %14, !dbg !4231

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4232
  %16 = load i32, i32* %15, align 4, !dbg !4232, !tbaa !750
  %17 = icmp ne i32 %16, 9, !dbg !4233
  %18 = sext i1 %17 to i32, !dbg !4234
  br label %22, !dbg !4234

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4235

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4237
  store i32 0, i32* %21, align 4, !dbg !4239, !tbaa !750
  br label %22, !dbg !4237

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4214
  ret i32 %23, !dbg !4240
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4241 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4243, metadata !DIExpression()), !dbg !4248
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4249
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4249
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4244, metadata !DIExpression()), !dbg !4250
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4251
  %5 = icmp eq i32 %4, 0, !dbg !4251
  br i1 %5, label %6, label %13, !dbg !4253

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4254
  %8 = load i16, i16* %7, align 16, !dbg !4254
  %9 = icmp eq i16 %8, 67, !dbg !4254
  br i1 %9, label %13, label %10, !dbg !4255

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !4256
  %12 = icmp ne i32 %11, 0, !dbg !4257
  br label %13, !dbg !4255

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4248
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4258
  ret i1 %14, !dbg !4258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4259 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %1, metadata !4263, metadata !DIExpression()), !dbg !4265
  %2 = icmp eq i8* %1, null, !dbg !4266
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %3, metadata !4263, metadata !DIExpression()), !dbg !4265
  %4 = load i8, i8* %3, align 1, !dbg !4269, !tbaa !801
  %5 = icmp eq i8 %4, 0, !dbg !4273
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !4274
  call void @llvm.dbg.value(metadata i8* %6, metadata !4263, metadata !DIExpression()), !dbg !4265
  ret i8* %6, !dbg !4275
}

; Function Attrs: nounwind
declare !dbg !4276 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4283, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i8* %1, metadata !4284, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %2, metadata !4285, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()) #27, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %1, metadata !4290, metadata !DIExpression()) #27, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %2, metadata !4291, metadata !DIExpression()) #27, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()) #27, !dbg !4304
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %4, metadata !4303, metadata !DIExpression()) #27, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %4, metadata !4292, metadata !DIExpression()) #27, !dbg !4296
  %5 = icmp eq i8* %4, null, !dbg !4307
  br i1 %5, label %6, label %9, !dbg !4308

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4309
  br i1 %7, label %19, label %8, !dbg !4312

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4313, !tbaa !801
  br label %19, !dbg !4314

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4315
  call void @llvm.dbg.value(metadata i64 %10, metadata !4293, metadata !DIExpression()) #27, !dbg !4316
  %11 = icmp ult i64 %10, %2, !dbg !4317
  br i1 %11, label %12, label %14, !dbg !4319

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %1, metadata !4322, metadata !DIExpression()) #27, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %4, metadata !4325, metadata !DIExpression()) #27, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %13, metadata !4326, metadata !DIExpression()) #27, !dbg !4327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4329
  br label %19, !dbg !4330

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4331
  br i1 %15, label %19, label %16, !dbg !4334

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %1, metadata !4322, metadata !DIExpression()) #27, !dbg !4337
  call void @llvm.dbg.value(metadata i8* %4, metadata !4325, metadata !DIExpression()) #27, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %17, metadata !4326, metadata !DIExpression()) #27, !dbg !4337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4339
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4340
  store i8 0, i8* %18, align 1, !dbg !4341, !tbaa !801
  br label %19, !dbg !4342

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4343
  ret i32 %20, !dbg !4344
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4347, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()) #27, !dbg !4349
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4351
  call void @llvm.dbg.value(metadata i8* %2, metadata !4303, metadata !DIExpression()) #27, !dbg !4349
  ret i8* %2, !dbg !4352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4353 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4391, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4392, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4394, metadata !DIExpression()), !dbg !4395
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4396
  call void @llvm.dbg.value(metadata i32 %2, metadata !4393, metadata !DIExpression()), !dbg !4395
  %3 = icmp slt i32 %2, 0, !dbg !4397
  br i1 %3, label %4, label %6, !dbg !4399

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4400
  br label %24, !dbg !4401

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4402
  %8 = icmp eq i32 %7, 0, !dbg !4402
  br i1 %8, label %13, label %9, !dbg !4404

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4405
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4406
  %12 = icmp eq i64 %11, -1, !dbg !4407
  br i1 %12, label %16, label %13, !dbg !4408

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4409
  %15 = icmp eq i32 %14, 0, !dbg !4409
  br i1 %15, label %16, label %18, !dbg !4410

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4392, metadata !DIExpression()), !dbg !4395
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4411
  call void @llvm.dbg.value(metadata i32 %21, metadata !4394, metadata !DIExpression()), !dbg !4395
  br label %24, !dbg !4412

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4413
  %20 = load i32, i32* %19, align 4, !dbg !4413, !tbaa !750
  call void @llvm.dbg.value(metadata i32 %20, metadata !4392, metadata !DIExpression()), !dbg !4395
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4411
  call void @llvm.dbg.value(metadata i32 %21, metadata !4394, metadata !DIExpression()), !dbg !4395
  %22 = icmp eq i32 %20, 0, !dbg !4414
  br i1 %22, label %24, label %23, !dbg !4412

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4416, !tbaa !750
  call void @llvm.dbg.value(metadata i32 -1, metadata !4394, metadata !DIExpression()), !dbg !4395
  br label %24, !dbg !4418

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4395
  ret i32 %25, !dbg !4419
}

; Function Attrs: nofree nounwind
declare !dbg !4420 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4423 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4424 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4427 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4465, metadata !DIExpression()), !dbg !4466
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4467
  br i1 %2, label %6, label %3, !dbg !4469

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4470
  %5 = icmp eq i32 %4, 0, !dbg !4470
  br i1 %5, label %6, label %8, !dbg !4471

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4472
  br label %17, !dbg !4473

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4474, metadata !DIExpression()) #27, !dbg !4479
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4481
  %10 = load i32, i32* %9, align 8, !dbg !4481, !tbaa !4223
  %11 = and i32 %10, 256, !dbg !4483
  %12 = icmp eq i32 %11, 0, !dbg !4483
  br i1 %12, label %15, label %13, !dbg !4484

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4485
  br label %15, !dbg !4485

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4486
  br label %17, !dbg !4487

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4466
  ret i32 %18, !dbg !4488
}

; Function Attrs: nofree nounwind
declare !dbg !4489 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4492 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4531, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %1, metadata !4532, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 %2, metadata !4533, metadata !DIExpression()), !dbg !4537
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4538
  %5 = load i8*, i8** %4, align 8, !dbg !4538, !tbaa !4539
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4540
  %7 = load i8*, i8** %6, align 8, !dbg !4540, !tbaa !4541
  %8 = icmp eq i8* %5, %7, !dbg !4542
  br i1 %8, label %9, label %28, !dbg !4543

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4544
  %11 = load i8*, i8** %10, align 8, !dbg !4544, !tbaa !4545
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4546
  %13 = load i8*, i8** %12, align 8, !dbg !4546, !tbaa !4547
  %14 = icmp eq i8* %11, %13, !dbg !4548
  br i1 %14, label %15, label %28, !dbg !4549

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4550
  %17 = load i8*, i8** %16, align 8, !dbg !4550, !tbaa !4551
  %18 = icmp eq i8* %17, null, !dbg !4552
  br i1 %18, label %19, label %28, !dbg !4553

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4554
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %21, metadata !4534, metadata !DIExpression()), !dbg !4556
  %22 = icmp eq i64 %21, -1, !dbg !4557
  br i1 %22, label %30, label %23, !dbg !4559

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4560
  %25 = load i32, i32* %24, align 8, !dbg !4561, !tbaa !4223
  %26 = and i32 %25, -17, !dbg !4561
  store i32 %26, i32* %24, align 8, !dbg !4561, !tbaa !4223
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4562
  store i64 %21, i64* %27, align 8, !dbg !4563, !tbaa !4564
  br label %30, !dbg !4565

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4566
  br label %30, !dbg !4567

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4537
  ret i32 %31, !dbg !4568
}

; Function Attrs: nofree nounwind
declare !dbg !4569 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !44, !55, !134, !61, !67, !141, !144, !146, !163, !165, !168, !171, !174, !176, !178, !567, !569, !571, !573}
!llvm.ident = !{!575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575}
!llvm.module.flags = !{!576, !577, !578, !579, !580}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 73, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/test.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 59, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 42, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!30 = !{!31, !32, !6, !33}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{!35, !37, !0}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 71, type: !31, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 72, type: !31, isLocal: true, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "file_name", scope: !44, file: !45, line: 46, type: !51, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!46 = !{}
!47 = !{!42, !48}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !44, file: !45, line: 56, type: !50, isLocal: true, isDefinition: true)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "exit_failure", scope: !55, file: !56, line: 24, type: !58, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !57, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!57 = !{!53}
!58 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "program_name", scope: !61, file: !62, line: 33, type: !51, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !63, globals: !64, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!33, !40}
!64 = !{!59}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !67, file: !68, line: 85, type: !130, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !89, globals: !93, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!69 = !{!70, !84, !15}
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !71, line: 32, baseType: !6, size: 32, elements: !72)
!71 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!73 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!78 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!79 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!80 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!81 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!82 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!83 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !71, line: 242, baseType: !6, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!89 = !{!31, !32, !90, !40}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 46, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !{!65, !94, !100, !112, !114, !119, !126, !128}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !67, file: !68, line: 101, type: !96, isLocal: false, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 320, elements: !98)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!98 = !{!99}
!99 = !DISubrange(count: 10)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !67, file: !68, line: 1052, type: !102, isLocal: false, isDefinition: true)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !68, line: 65, size: 448, elements: !103)
!103 = !{!104, !105, !106, !110, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !102, file: !68, line: 68, baseType: !70, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !68, line: 71, baseType: !31, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !102, file: !68, line: 75, baseType: !107, size: 256, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !102, file: !68, line: 78, baseType: !51, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !102, file: !68, line: 81, baseType: !51, size: 64, offset: 384)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !67, file: !68, line: 116, type: !102, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "slot0", scope: !67, file: !68, line: 842, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 256)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "slotvec", scope: !67, file: !68, line: 845, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !68, line: 834, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !122, file: !68, line: 836, baseType: !90, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !122, file: !68, line: 837, baseType: !40, size: 64, offset: 64)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "nslots", scope: !67, file: !68, line: 843, type: !31, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "slotvec0", scope: !67, file: !68, line: 844, type: !122, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 704, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!132 = !{!133}
!133 = !DISubrange(count: 11)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !136, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !138, line: 102, baseType: !139)
!138 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !140, line: 73, baseType: !92)
!140 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !143, splitDebugInlining: false, nameTableKind: None)
!142 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !{!6}
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "lib/verror.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !162, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !{!149}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !151, file: !150, line: 186, baseType: !6, size: 32, elements: !160)
!150 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = distinct !DISubprogram(name: "x2nrealloc", scope: !150, file: !150, line: 174, type: !152, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !155)
!152 = !DISubroutineType(types: !153)
!153 = !{!33, !33, !154, !90}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!155 = !{!156, !157, !158, !159}
!156 = !DILocalVariable(name: "p", arg: 1, scope: !151, file: !150, line: 174, type: !33)
!157 = !DILocalVariable(name: "pn", arg: 2, scope: !151, file: !150, line: 174, type: !154)
!158 = !DILocalVariable(name: "s", arg: 3, scope: !151, file: !150, line: 174, type: !90)
!159 = !DILocalVariable(name: "n", scope: !151, file: !150, line: 176, type: !90)
!160 = !{!161}
!161 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!162 = !{!90, !40, !33}
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !167, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !{!40}
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!33}
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!90}
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 41, baseType: !6, size: 32, elements: !183)
!182 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!184 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!185 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!186 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!187 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!188 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!189 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!191 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!192 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!193 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!194 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!195 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!200 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!201 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!212 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!213 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!222 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!223 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!224 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!225 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!226 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!227 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!228 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!229 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!230 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!231 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!232 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!233 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!292 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!297 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!298 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!379 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!452 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!453 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!454 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!455 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!456 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!457 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!458 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!459 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!460 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!461 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!462 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!463 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!464 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!465 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!466 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!468 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!469 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!470 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!471 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!499 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!500 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!501 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!502 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!503 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!508 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!509 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!510 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!511 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !170, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!"clang version 12.0.1"}
!576 = !{i32 7, !"Dwarf Version", i32 4}
!577 = !{i32 2, !"Debug Info Version", i32 3}
!578 = !{i32 1, !"wchar_size", i32 4}
!579 = !{i32 7, !"PIC Level", i32 2}
!580 = !{i32 7, !"PIE Level", i32 2}
!581 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 684, type: !582, scopeLine: 685, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !31}
!584 = !{!585}
!585 = !DILocalVariable(name: "status", arg: 1, scope: !581, file: !3, line: 684, type: !31)
!586 = !DILocation(line: 0, scope: !581)
!587 = !DILocation(line: 686, column: 14, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 686, column: 7)
!589 = !DILocation(line: 686, column: 7, scope: !581)
!590 = !DILocation(line: 687, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 687, column: 5)
!592 = !{!593, !593, i64 0}
!593 = !{!"any pointer", !594, i64 0}
!594 = !{!"omnipotent char", !595, i64 0}
!595 = !{!"Simple C/C++ TBAA"}
!596 = !DILocation(line: 690, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !588, file: !3, line: 689, column: 5)
!598 = !DILocation(line: 697, column: 7, scope: !597)
!599 = !DILocation(line: 701, column: 7, scope: !597)
!600 = !DILocation(line: 702, column: 7, scope: !597)
!601 = !DILocation(line: 703, column: 7, scope: !597)
!602 = !DILocation(line: 708, column: 7, scope: !597)
!603 = !DILocation(line: 715, column: 7, scope: !597)
!604 = !DILocation(line: 723, column: 7, scope: !597)
!605 = !DILocation(line: 732, column: 7, scope: !597)
!606 = !DILocation(line: 738, column: 7, scope: !597)
!607 = !DILocation(line: 745, column: 7, scope: !597)
!608 = !DILocation(line: 752, column: 7, scope: !597)
!609 = !DILocation(line: 760, column: 7, scope: !597)
!610 = !DILocation(line: 767, column: 7, scope: !597)
!611 = !DILocation(line: 773, column: 7, scope: !597)
!612 = !DILocation(line: 778, column: 7, scope: !597)
!613 = !DILocation(line: 783, column: 7, scope: !597)
!614 = !DILocalVariable(name: "program", arg: 1, scope: !615, file: !616, line: 634, type: !51)
!615 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !616, file: !616, line: 634, type: !617, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!616 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = !DISubroutineType(types: !618)
!618 = !{null, !51}
!619 = !{!614, !620, !629, !630, !632}
!620 = !DILocalVariable(name: "infomap", scope: !615, file: !616, line: 636, type: !621)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 896, elements: !627)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !615, file: !616, line: 636, size: 128, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !623, file: !616, line: 636, baseType: !51, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !616, line: 636, baseType: !51, size: 64, offset: 64)
!627 = !{!628}
!628 = !DISubrange(count: 7)
!629 = !DILocalVariable(name: "node", scope: !615, file: !616, line: 646, type: !51)
!630 = !DILocalVariable(name: "map_prog", scope: !615, file: !616, line: 647, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!632 = !DILocalVariable(name: "lc_messages", scope: !615, file: !616, line: 659, type: !51)
!633 = !DILocation(line: 0, scope: !615, inlinedAt: !634)
!634 = distinct !DILocation(line: 784, column: 7, scope: !597)
!635 = !DILocation(line: 636, column: 3, scope: !615, inlinedAt: !634)
!636 = !DILocation(line: 636, column: 67, scope: !615, inlinedAt: !634)
!637 = !DILocation(line: 647, column: 36, scope: !615, inlinedAt: !634)
!638 = !DILocation(line: 649, column: 3, scope: !615, inlinedAt: !634)
!639 = !DILocation(line: 649, column: 33, scope: !615, inlinedAt: !634)
!640 = !DILocation(line: 650, column: 13, scope: !615, inlinedAt: !634)
!641 = !DILocation(line: 649, column: 20, scope: !615, inlinedAt: !634)
!642 = !{!643, !593, i64 0}
!643 = !{!"infomap", !593, i64 0, !593, i64 8}
!644 = !DILocation(line: 649, column: 10, scope: !615, inlinedAt: !634)
!645 = !DILocation(line: 649, column: 28, scope: !615, inlinedAt: !634)
!646 = distinct !{!646, !638, !640, !647}
!647 = !{!"llvm.loop.mustprogress"}
!648 = !DILocation(line: 652, column: 17, scope: !649, inlinedAt: !634)
!649 = distinct !DILexicalBlock(scope: !615, file: !616, line: 652, column: 7)
!650 = !{!643, !593, i64 8}
!651 = !DILocation(line: 652, column: 7, scope: !649, inlinedAt: !634)
!652 = !DILocation(line: 652, column: 7, scope: !615, inlinedAt: !634)
!653 = !DILocation(line: 655, column: 3, scope: !615, inlinedAt: !634)
!654 = !DILocation(line: 659, column: 29, scope: !615, inlinedAt: !634)
!655 = !DILocation(line: 660, column: 7, scope: !656, inlinedAt: !634)
!656 = distinct !DILexicalBlock(scope: !615, file: !616, line: 660, column: 7)
!657 = !DILocation(line: 660, column: 19, scope: !656, inlinedAt: !634)
!658 = !DILocation(line: 660, column: 22, scope: !656, inlinedAt: !634)
!659 = !DILocation(line: 660, column: 7, scope: !615, inlinedAt: !634)
!660 = !DILocation(line: 666, column: 7, scope: !661, inlinedAt: !634)
!661 = distinct !DILexicalBlock(scope: !656, file: !616, line: 661, column: 5)
!662 = !DILocation(line: 668, column: 5, scope: !661, inlinedAt: !634)
!663 = !DILocation(line: 669, column: 3, scope: !615, inlinedAt: !634)
!664 = !DILocation(line: 671, column: 3, scope: !615, inlinedAt: !634)
!665 = !DILocation(line: 673, column: 1, scope: !615, inlinedAt: !634)
!666 = !DILocation(line: 786, column: 3, scope: !581)
!667 = !DISubprogram(name: "dcgettext", scope: !668, file: !668, line: 51, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!668 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!669 = !DISubroutineType(types: !670)
!670 = !{!40, !51, !51, !31}
!671 = !DISubprogram(name: "fputs_unlocked", scope: !672, file: !672, line: 667, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!672 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!673 = !DISubroutineType(types: !674)
!674 = !{!31, !51, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !678)
!677 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !694, !695, !696, !697, !700, !701, !703, !707, !710, !712, !715, !718, !719, !720, !721, !722}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !676, file: !677, line: 51, baseType: !31, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !676, file: !677, line: 54, baseType: !40, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !676, file: !677, line: 55, baseType: !40, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !676, file: !677, line: 56, baseType: !40, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !676, file: !677, line: 57, baseType: !40, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !676, file: !677, line: 58, baseType: !40, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !676, file: !677, line: 59, baseType: !40, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !676, file: !677, line: 60, baseType: !40, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !676, file: !677, line: 61, baseType: !40, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !676, file: !677, line: 64, baseType: !40, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !676, file: !677, line: 65, baseType: !40, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !676, file: !677, line: 66, baseType: !40, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !676, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 36, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !676, file: !677, line: 70, baseType: !675, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !676, file: !677, line: 72, baseType: !31, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !676, file: !677, line: 73, baseType: !31, size: 32, offset: 928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !676, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !140, line: 152, baseType: !699)
!699 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !676, file: !677, line: 77, baseType: !32, size: 16, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !676, file: !677, line: 78, baseType: !702, size: 8, offset: 1040)
!702 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !676, file: !677, line: 79, baseType: !704, size: 8, offset: 1048)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 1)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !676, file: !677, line: 81, baseType: !708, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !677, line: 43, baseType: null)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !676, file: !677, line: 89, baseType: !711, size: 64, offset: 1152)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !140, line: 153, baseType: !699)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !676, file: !677, line: 91, baseType: !713, size: 64, offset: 1216)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !677, line: 37, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !676, file: !677, line: 92, baseType: !716, size: 64, offset: 1280)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !677, line: 38, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !676, file: !677, line: 93, baseType: !675, size: 64, offset: 1344)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !676, file: !677, line: 94, baseType: !33, size: 64, offset: 1408)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !676, file: !677, line: 95, baseType: !90, size: 64, offset: 1472)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !676, file: !677, line: 96, baseType: !31, size: 32, offset: 1536)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !676, file: !677, line: 98, baseType: !723, size: 160, offset: 1568)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 20)
!726 = !DISubprogram(name: "setlocale", scope: !727, file: !727, line: 122, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!727 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!728 = !DISubroutineType(types: !729)
!729 = !{!40, !31, !51}
!730 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 805, type: !731, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!31, !31, !39}
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "margc", arg: 1, scope: !730, file: !3, line: 805, type: !31)
!735 = !DILocalVariable(name: "margv", arg: 2, scope: !730, file: !3, line: 805, type: !39)
!736 = !DILocalVariable(name: "value", scope: !730, file: !3, line: 807, type: !50)
!737 = !DILocation(line: 0, scope: !730)
!738 = !DILocation(line: 818, column: 21, scope: !730)
!739 = !DILocation(line: 818, column: 3, scope: !730)
!740 = !DILocation(line: 819, column: 3, scope: !730)
!741 = !DILocation(line: 820, column: 3, scope: !730)
!742 = !DILocation(line: 821, column: 3, scope: !730)
!743 = !DILocalVariable(name: "status", arg: 1, scope: !744, file: !616, line: 99, type: !31)
!744 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !616, file: !616, line: 99, type: !582, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!745 = !{!743}
!746 = !DILocation(line: 0, scope: !744, inlinedAt: !747)
!747 = distinct !DILocation(line: 823, column: 3, scope: !730)
!748 = !DILocation(line: 102, column: 18, scope: !749, inlinedAt: !747)
!749 = distinct !DILexicalBlock(scope: !744, file: !616, line: 101, column: 7)
!750 = !{!751, !751, i64 0}
!751 = !{!"int", !594, i64 0}
!752 = !DILocation(line: 824, column: 3, scope: !730)
!753 = !DILocation(line: 827, column: 8, scope: !730)
!754 = !DILocation(line: 855, column: 8, scope: !730)
!755 = !DILocation(line: 856, column: 7, scope: !730)
!756 = !DILocation(line: 858, column: 11, scope: !757)
!757 = distinct !DILexicalBlock(scope: !730, file: !3, line: 858, column: 7)
!758 = !DILocation(line: 858, column: 7, scope: !730)
!759 = !DILocation(line: 861, column: 27, scope: !730)
!760 = !DILocation(line: 861, column: 11, scope: !730)
!761 = !DILocation(line: 863, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !730, file: !3, line: 863, column: 7)
!763 = !DILocation(line: 863, column: 14, scope: !762)
!764 = !DILocation(line: 863, column: 11, scope: !762)
!765 = !DILocation(line: 863, column: 7, scope: !730)
!766 = !DILocation(line: 864, column: 24, scope: !762)
!767 = !DILocation(line: 864, column: 55, scope: !762)
!768 = !DILocation(line: 864, column: 60, scope: !762)
!769 = !DILocation(line: 864, column: 48, scope: !762)
!770 = !DILocation(line: 864, column: 5, scope: !762)
!771 = !DILocation(line: 866, column: 3, scope: !730)
!772 = !DILocation(line: 867, column: 1, scope: !730)
!773 = !DISubprogram(name: "bindtextdomain", scope: !668, file: !668, line: 86, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!774 = !DISubroutineType(types: !775)
!775 = !{!40, !51, !51}
!776 = !DISubprogram(name: "textdomain", scope: !668, file: !668, line: 82, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!777 = !DISubroutineType(types: !778)
!778 = !{!40, !51}
!779 = !DISubprogram(name: "atexit", scope: !780, file: !780, line: 595, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!780 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!781 = !DISubroutineType(types: !782)
!782 = !{!31, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null}
!786 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 638, type: !787, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!50, !31}
!789 = !{!790, !791}
!790 = !DILocalVariable(name: "nargs", arg: 1, scope: !786, file: !3, line: 638, type: !31)
!791 = !DILocalVariable(name: "value", scope: !786, file: !3, line: 640, type: !50)
!792 = !DILocation(line: 0, scope: !786)
!793 = !DILocation(line: 642, column: 3, scope: !786)
!794 = !DILocation(line: 587, column: 10, scope: !795, inlinedAt: !798)
!795 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 585, type: !796, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!796 = !DISubroutineType(types: !797)
!797 = !{!50}
!798 = distinct !DILocation(line: 645, column: 17, scope: !799)
!799 = distinct !DILexicalBlock(scope: !786, file: !3, line: 643, column: 5)
!800 = !DILocation(line: 587, column: 18, scope: !795, inlinedAt: !798)
!801 = !{!594, !594, i64 0}
!802 = !DILocation(line: 587, column: 25, scope: !795, inlinedAt: !798)
!803 = !DILocation(line: 646, column: 9, scope: !799)
!804 = !DILocation(line: 595, column: 7, scope: !805, inlinedAt: !809)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 595, column: 7)
!806 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 591, type: !796, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!807 = !{!808}
!808 = !DILocalVariable(name: "value", scope: !806, file: !3, line: 593, type: !50)
!809 = distinct !DILocation(line: 649, column: 17, scope: !799)
!810 = !DILocation(line: 595, column: 7, scope: !806, inlinedAt: !809)
!811 = !DILocalVariable(name: "f", arg: 1, scope: !812, file: !3, line: 104, type: !50)
!812 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 104, type: !813, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !50}
!815 = !{!811}
!816 = !DILocation(line: 0, scope: !812, inlinedAt: !817)
!817 = distinct !DILocation(line: 597, column: 7, scope: !818, inlinedAt: !809)
!818 = distinct !DILexicalBlock(scope: !805, file: !3, line: 596, column: 5)
!819 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !817)
!820 = !DILocation(line: 587, column: 18, scope: !795, inlinedAt: !821)
!821 = distinct !DILocation(line: 598, column: 17, scope: !818, inlinedAt: !809)
!822 = !DILocation(line: 587, column: 10, scope: !795, inlinedAt: !821)
!823 = !DILocation(line: 587, column: 25, scope: !795, inlinedAt: !821)
!824 = !DILocation(line: 0, scope: !806, inlinedAt: !809)
!825 = !DILocation(line: 599, column: 5, scope: !818, inlinedAt: !809)
!826 = !DILocation(line: 600, column: 12, scope: !827, inlinedAt: !809)
!827 = distinct !DILexicalBlock(scope: !805, file: !3, line: 600, column: 12)
!828 = !DILocation(line: 600, column: 25, scope: !827, inlinedAt: !809)
!829 = !DILocation(line: 601, column: 12, scope: !827, inlinedAt: !809)
!830 = !DILocation(line: 601, column: 15, scope: !827, inlinedAt: !809)
!831 = !DILocation(line: 601, column: 28, scope: !827, inlinedAt: !809)
!832 = !DILocation(line: 602, column: 12, scope: !827, inlinedAt: !809)
!833 = !DILocation(line: 602, column: 15, scope: !827, inlinedAt: !809)
!834 = !DILocation(line: 602, column: 28, scope: !827, inlinedAt: !809)
!835 = !DILocation(line: 600, column: 12, scope: !805, inlinedAt: !809)
!836 = !DILocation(line: 604, column: 15, scope: !837, inlinedAt: !809)
!837 = distinct !DILexicalBlock(scope: !827, file: !3, line: 603, column: 5)
!838 = !DILocation(line: 607, column: 5, scope: !827, inlinedAt: !809)
!839 = !DILocation(line: 653, column: 17, scope: !799)
!840 = !DILocation(line: 654, column: 9, scope: !799)
!841 = !DILocation(line: 657, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !799, file: !3, line: 657, column: 13)
!843 = !DILocation(line: 657, column: 13, scope: !799)
!844 = !DILocation(line: 0, scope: !812, inlinedAt: !845)
!845 = distinct !DILocation(line: 659, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 658, column: 11)
!847 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !845)
!848 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !845)
!849 = distinct !DILexicalBlock(scope: !812, file: !3, line: 108, column: 7)
!850 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !845)
!851 = !DILocation(line: 660, column: 22, scope: !846)
!852 = !DILocation(line: 660, column: 21, scope: !846)
!853 = !DILocation(line: 661, column: 13, scope: !846)
!854 = !DILocation(line: 663, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !799, file: !3, line: 663, column: 13)
!856 = !DILocation(line: 663, column: 36, scope: !855)
!857 = !DILocation(line: 663, column: 39, scope: !855)
!858 = !DILocation(line: 663, column: 13, scope: !799)
!859 = !DILocation(line: 0, scope: !812, inlinedAt: !860)
!860 = distinct !DILocation(line: 665, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !855, file: !3, line: 664, column: 11)
!862 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !860)
!863 = !DILocation(line: 595, column: 7, scope: !805, inlinedAt: !864)
!864 = distinct !DILocation(line: 666, column: 21, scope: !861)
!865 = !DILocation(line: 595, column: 7, scope: !806, inlinedAt: !864)
!866 = !DILocation(line: 0, scope: !812, inlinedAt: !867)
!867 = distinct !DILocation(line: 597, column: 7, scope: !818, inlinedAt: !864)
!868 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !867)
!869 = !DILocation(line: 587, column: 10, scope: !795, inlinedAt: !870)
!870 = distinct !DILocation(line: 598, column: 17, scope: !818, inlinedAt: !864)
!871 = !DILocation(line: 587, column: 25, scope: !795, inlinedAt: !870)
!872 = !DILocation(line: 0, scope: !806, inlinedAt: !864)
!873 = !DILocation(line: 599, column: 5, scope: !818, inlinedAt: !864)
!874 = !DILocation(line: 600, column: 12, scope: !827, inlinedAt: !864)
!875 = !DILocation(line: 600, column: 25, scope: !827, inlinedAt: !864)
!876 = !DILocation(line: 601, column: 12, scope: !827, inlinedAt: !864)
!877 = !DILocation(line: 601, column: 15, scope: !827, inlinedAt: !864)
!878 = !DILocation(line: 601, column: 28, scope: !827, inlinedAt: !864)
!879 = !DILocation(line: 602, column: 12, scope: !827, inlinedAt: !864)
!880 = !DILocation(line: 602, column: 15, scope: !827, inlinedAt: !864)
!881 = !DILocation(line: 602, column: 28, scope: !827, inlinedAt: !864)
!882 = !DILocation(line: 600, column: 12, scope: !805, inlinedAt: !864)
!883 = !DILocation(line: 604, column: 15, scope: !837, inlinedAt: !864)
!884 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !885)
!885 = distinct !DILocation(line: 667, column: 13, scope: !861)
!886 = !DILocation(line: 607, column: 5, scope: !827, inlinedAt: !864)
!887 = !DILocation(line: 0, scope: !812, inlinedAt: !885)
!888 = !DILocation(line: 668, column: 13, scope: !861)
!889 = !DILocation(line: 673, column: 19, scope: !890)
!890 = distinct !DILexicalBlock(scope: !799, file: !3, line: 673, column: 13)
!891 = !DILocation(line: 673, column: 13, scope: !799)
!892 = !DILocation(line: 578, column: 7, scope: !893, inlinedAt: !895)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 578, column: 7)
!894 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 576, type: !796, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!895 = distinct !DILocation(line: 675, column: 17, scope: !799)
!896 = !DILocation(line: 674, column: 11, scope: !890)
!897 = !DILocation(line: 578, column: 14, scope: !893, inlinedAt: !895)
!898 = !DILocation(line: 578, column: 11, scope: !893, inlinedAt: !895)
!899 = !DILocation(line: 578, column: 7, scope: !894, inlinedAt: !895)
!900 = !DILocalVariable(name: "value", scope: !901, file: !3, line: 560, type: !50)
!901 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 558, type: !796, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!902 = !{!900}
!903 = !DILocation(line: 0, scope: !901, inlinedAt: !904)
!904 = distinct !DILocation(line: 581, column: 10, scope: !894, inlinedAt: !895)
!905 = !DILocalVariable(name: "value", scope: !906, file: !3, line: 541, type: !50)
!906 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 539, type: !796, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!907 = !{!905}
!908 = !DILocation(line: 0, scope: !906, inlinedAt: !909)
!909 = distinct !DILocation(line: 564, column: 16, scope: !910, inlinedAt: !904)
!910 = distinct !DILexicalBlock(scope: !901, file: !3, line: 563, column: 5)
!911 = !DILocation(line: 545, column: 16, scope: !912, inlinedAt: !909)
!912 = distinct !DILexicalBlock(scope: !906, file: !3, line: 544, column: 5)
!913 = !DILocation(line: 546, column: 14, scope: !914, inlinedAt: !909)
!914 = distinct !DILexicalBlock(scope: !912, file: !3, line: 546, column: 11)
!915 = !DILocation(line: 546, column: 20, scope: !914, inlinedAt: !909)
!916 = !DILocation(line: 546, column: 18, scope: !914, inlinedAt: !909)
!917 = !DILocation(line: 546, column: 25, scope: !914, inlinedAt: !909)
!918 = !DILocation(line: 579, column: 5, scope: !893, inlinedAt: !895)
!919 = !DILocation(line: 546, column: 28, scope: !914, inlinedAt: !909)
!920 = !DILocation(line: 546, column: 11, scope: !912, inlinedAt: !909)
!921 = !DILocation(line: 0, scope: !812, inlinedAt: !922)
!922 = distinct !DILocation(line: 548, column: 7, scope: !912, inlinedAt: !909)
!923 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !922)
!924 = !DILocation(line: 545, column: 13, scope: !912, inlinedAt: !909)
!925 = distinct !{!925, !926, !927}
!926 = !DILocation(line: 543, column: 3, scope: !906, inlinedAt: !909)
!927 = !DILocation(line: 549, column: 5, scope: !906, inlinedAt: !909)
!928 = !DILocation(line: 564, column: 13, scope: !910, inlinedAt: !904)
!929 = !DILocation(line: 565, column: 28, scope: !930, inlinedAt: !904)
!930 = distinct !DILexicalBlock(scope: !910, file: !3, line: 565, column: 11)
!931 = !DILocation(line: 565, column: 11, scope: !910, inlinedAt: !904)
!932 = !DILocation(line: 0, scope: !812, inlinedAt: !933)
!933 = distinct !DILocation(line: 567, column: 7, scope: !910, inlinedAt: !904)
!934 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !933)
!935 = distinct !{!935, !936, !937}
!936 = !DILocation(line: 562, column: 3, scope: !901, inlinedAt: !904)
!937 = !DILocation(line: 568, column: 5, scope: !901, inlinedAt: !904)
!938 = !DILocation(line: 678, column: 3, scope: !786)
!939 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 91, type: !940, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !51, null}
!942 = !{!943, !944}
!943 = !DILocalVariable(name: "format", arg: 1, scope: !939, file: !3, line: 91, type: !51)
!944 = !DILocalVariable(name: "ap", scope: !939, file: !3, line: 93, type: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !672, line: 52, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !947, line: 32, baseType: !948)
!947 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !949)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 192, elements: !705)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !950, file: !3, line: 93, baseType: !6, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !950, file: !3, line: 93, baseType: !6, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !950, file: !3, line: 93, baseType: !33, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !950, file: !3, line: 93, baseType: !33, size: 64, offset: 128)
!956 = !DILocation(line: 0, scope: !939)
!957 = !DILocation(line: 93, column: 3, scope: !939)
!958 = !DILocation(line: 93, column: 11, scope: !939)
!959 = !DILocation(line: 94, column: 3, scope: !939)
!960 = !DILocation(line: 95, column: 3, scope: !939)
!961 = !DILocation(line: 96, column: 3, scope: !939)
!962 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 389, type: !796, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!963 = !{!964, !1001, !1004, !1005, !1009, !1010, !1013, !1014, !1016}
!964 = !DILocalVariable(name: "stat_buf", scope: !962, file: !3, line: 391, type: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !966, line: 26, size: 1152, elements: !967)
!966 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!967 = !{!968, !970, !972, !974, !976, !978, !980, !981, !982, !983, !985, !987, !995, !996, !997}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !965, file: !966, line: 28, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !140, line: 145, baseType: !92)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !965, file: !966, line: 33, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !140, line: 148, baseType: !92)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !965, file: !966, line: 41, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !140, line: 151, baseType: !92)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !965, file: !966, line: 42, baseType: !975, size: 32, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !140, line: 150, baseType: !6)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !965, file: !966, line: 44, baseType: !977, size: 32, offset: 224)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !140, line: 146, baseType: !6)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !965, file: !966, line: 45, baseType: !979, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !140, line: 147, baseType: !6)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !965, file: !966, line: 47, baseType: !31, size: 32, offset: 288)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !965, file: !966, line: 49, baseType: !969, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !965, file: !966, line: 54, baseType: !698, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !965, file: !966, line: 58, baseType: !984, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !140, line: 175, baseType: !699)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !965, file: !966, line: 60, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !140, line: 180, baseType: !699)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !965, file: !966, line: 71, baseType: !988, size: 128, offset: 576)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !989, line: 10, size: 128, elements: !990)
!989 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!990 = !{!991, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !988, file: !989, line: 12, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !140, line: 160, baseType: !699)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !988, file: !989, line: 16, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !140, line: 197, baseType: !699)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !965, file: !966, line: 72, baseType: !988, size: 128, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !965, file: !966, line: 73, baseType: !988, size: 128, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !965, file: !966, line: 86, baseType: !998, size: 192, offset: 960)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 192, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 3)
!1001 = !DILocalVariable(name: "atime", scope: !1002, file: !3, line: 425, type: !988)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 421, column: 7)
!1003 = distinct !DILexicalBlock(scope: !962, file: !3, line: 394, column: 5)
!1004 = !DILocalVariable(name: "mtime", scope: !1002, file: !3, line: 426, type: !988)
!1005 = !DILocalVariable(name: "euid", scope: !1006, file: !3, line: 436, type: !1007)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 431, column: 7)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1008, line: 79, baseType: !977)
!1008 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1009 = !DILocalVariable(name: "NO_UID", scope: !1006, file: !3, line: 437, type: !1007)
!1010 = !DILocalVariable(name: "egid", scope: !1011, file: !3, line: 447, type: !1012)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 442, column: 7)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1008, line: 64, baseType: !979)
!1013 = !DILocalVariable(name: "NO_GID", scope: !1011, file: !3, line: 448, type: !1012)
!1014 = !DILocalVariable(name: "fd", scope: !1015, file: !3, line: 514, type: !699)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 513, column: 7)
!1016 = !DILocalVariable(name: "arg", scope: !1015, file: !3, line: 515, type: !51)
!1017 = !DILocation(line: 391, column: 3, scope: !962)
!1018 = !DILocation(line: 391, column: 15, scope: !962)
!1019 = !DILocation(line: 393, column: 11, scope: !962)
!1020 = !DILocation(line: 393, column: 16, scope: !962)
!1021 = !DILocation(line: 393, column: 3, scope: !962)
!1022 = !DILocation(line: 396, column: 26, scope: !1003)
!1023 = !DILocation(line: 396, column: 67, scope: !1003)
!1024 = !DILocation(line: 396, column: 72, scope: !1003)
!1025 = !DILocation(line: 396, column: 60, scope: !1003)
!1026 = !DILocation(line: 396, column: 7, scope: !1003)
!1027 = !DILocation(line: 0, scope: !812, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1030)
!1029 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 113, type: !784, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!1030 = distinct !DILocation(line: 405, column: 7, scope: !1003)
!1031 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1028)
!1032 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1028)
!1033 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1028)
!1034 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1030)
!1035 = !DILocation(line: 406, column: 20, scope: !1003)
!1036 = !DILocation(line: 406, column: 14, scope: !1003)
!1037 = !DILocation(line: 406, column: 46, scope: !1003)
!1038 = !DILocation(line: 406, column: 7, scope: !1003)
!1039 = !DILocation(line: 0, scope: !812, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 409, column: 7, scope: !1003)
!1042 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1040)
!1043 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1040)
!1044 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1040)
!1045 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1041)
!1046 = !DILocation(line: 410, column: 26, scope: !1003)
!1047 = !DILocation(line: 410, column: 14, scope: !1003)
!1048 = !DILocation(line: 410, column: 47, scope: !1003)
!1049 = !DILocation(line: 410, column: 7, scope: !1003)
!1050 = !DILocation(line: 0, scope: !812, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 413, column: 7, scope: !1003)
!1053 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1051)
!1054 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1051)
!1055 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1051)
!1056 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1052)
!1057 = !DILocation(line: 414, column: 26, scope: !1003)
!1058 = !DILocation(line: 414, column: 14, scope: !1003)
!1059 = !DILocation(line: 414, column: 47, scope: !1003)
!1060 = !DILocation(line: 414, column: 7, scope: !1003)
!1061 = !DILocation(line: 0, scope: !812, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 417, column: 7, scope: !1003)
!1064 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1062)
!1065 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1062)
!1066 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1062)
!1067 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1063)
!1068 = !DILocation(line: 418, column: 26, scope: !1003)
!1069 = !DILocation(line: 418, column: 14, scope: !1003)
!1070 = !DILocation(line: 418, column: 47, scope: !1003)
!1071 = !DILocation(line: 418, column: 7, scope: !1003)
!1072 = !DILocation(line: 0, scope: !812, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 422, column: 9, scope: !1002)
!1075 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1073)
!1076 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1073)
!1077 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1073)
!1078 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1074)
!1079 = !DILocation(line: 423, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 423, column: 13)
!1081 = !DILocation(line: 423, column: 13, scope: !1080)
!1082 = !DILocation(line: 423, column: 45, scope: !1080)
!1083 = !DILocation(line: 423, column: 13, scope: !1002)
!1084 = !DILocalVariable(name: "st", arg: 1, scope: !1085, file: !1086, line: 118, type: !1089)
!1085 = distinct !DISubprogram(name: "get_stat_atime", scope: !1086, file: !1086, line: 118, type: !1087, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1086 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!988, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!1091 = !{!1084}
!1092 = !DILocation(line: 0, scope: !1085, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 425, column: 33, scope: !1002)
!1094 = !DILocation(line: 121, column: 10, scope: !1085, inlinedAt: !1093)
!1095 = !{i64 0, i64 8, !1096, i64 8, i64 8, !1096}
!1096 = !{!1097, !1097, i64 0}
!1097 = !{!"long", !594, i64 0}
!1098 = !{i64 0, i64 8, !1096}
!1099 = !DILocation(line: 0, scope: !1002)
!1100 = !DILocalVariable(name: "st", arg: 1, scope: !1101, file: !1086, line: 146, type: !1089)
!1101 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1086, file: !1086, line: 146, type: !1087, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1102 = !{!1100}
!1103 = !DILocation(line: 0, scope: !1101, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 426, column: 33, scope: !1002)
!1105 = !DILocation(line: 149, column: 10, scope: !1101, inlinedAt: !1104)
!1106 = !DILocalVariable(name: "a", arg: 1, scope: !1107, file: !12, line: 89, type: !988)
!1107 = distinct !DISubprogram(name: "timespec_cmp", scope: !12, file: !12, line: 89, type: !1108, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!31, !988, !988}
!1110 = !{!1106, !1111}
!1111 = !DILocalVariable(name: "b", arg: 2, scope: !1107, file: !12, line: 89, type: !988)
!1112 = !DILocation(line: 0, scope: !1107, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 427, column: 17, scope: !1002)
!1114 = !DILocation(line: 91, column: 16, scope: !1115, inlinedAt: !1113)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !12, line: 91, column: 7)
!1116 = !DILocation(line: 91, column: 7, scope: !1107, inlinedAt: !1113)
!1117 = !DILocation(line: 93, column: 16, scope: !1118, inlinedAt: !1113)
!1118 = distinct !DILexicalBlock(scope: !1107, file: !12, line: 93, column: 7)
!1119 = !DILocation(line: 93, column: 7, scope: !1107, inlinedAt: !1113)
!1120 = !DILocation(line: 98, column: 3, scope: !1107, inlinedAt: !1113)
!1121 = !DILocation(line: 99, column: 3, scope: !1107, inlinedAt: !1113)
!1122 = !DILocation(line: 101, column: 20, scope: !1107, inlinedAt: !1113)
!1123 = !DILocation(line: 101, column: 10, scope: !1107, inlinedAt: !1113)
!1124 = !DILocation(line: 101, column: 3, scope: !1107, inlinedAt: !1113)
!1125 = !DILocation(line: 0, scope: !812, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 432, column: 9, scope: !1006)
!1128 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1126)
!1129 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1126)
!1130 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1126)
!1131 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1127)
!1132 = !DILocation(line: 433, column: 19, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 433, column: 13)
!1134 = !DILocation(line: 433, column: 13, scope: !1133)
!1135 = !DILocation(line: 433, column: 45, scope: !1133)
!1136 = !DILocation(line: 433, column: 13, scope: !1006)
!1137 = !DILocation(line: 435, column: 9, scope: !1006)
!1138 = !DILocation(line: 435, column: 15, scope: !1006)
!1139 = !DILocation(line: 436, column: 22, scope: !1006)
!1140 = !DILocation(line: 0, scope: !1006)
!1141 = !DILocation(line: 438, column: 24, scope: !1006)
!1142 = !DILocation(line: 438, column: 34, scope: !1006)
!1143 = !DILocation(line: 438, column: 37, scope: !1006)
!1144 = !DILocation(line: 438, column: 44, scope: !1006)
!1145 = !DILocation(line: 438, column: 64, scope: !1006)
!1146 = !{!1147, !751, i64 28}
!1147 = !{!"stat", !1097, i64 0, !1097, i64 8, !1097, i64 16, !751, i64 24, !751, i64 28, !751, i64 32, !751, i64 36, !1097, i64 40, !1097, i64 48, !1097, i64 56, !1097, i64 64, !1148, i64 72, !1148, i64 88, !1148, i64 104, !594, i64 120}
!1148 = !{!"timespec", !1097, i64 0, !1097, i64 8}
!1149 = !DILocation(line: 438, column: 52, scope: !1006)
!1150 = !DILocation(line: 0, scope: !812, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 443, column: 9, scope: !1011)
!1153 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1151)
!1154 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1151)
!1155 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1151)
!1156 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1152)
!1157 = !DILocation(line: 444, column: 19, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 444, column: 13)
!1159 = !DILocation(line: 444, column: 13, scope: !1158)
!1160 = !DILocation(line: 444, column: 45, scope: !1158)
!1161 = !DILocation(line: 444, column: 13, scope: !1011)
!1162 = !DILocation(line: 446, column: 9, scope: !1011)
!1163 = !DILocation(line: 446, column: 15, scope: !1011)
!1164 = !DILocation(line: 447, column: 22, scope: !1011)
!1165 = !DILocation(line: 0, scope: !1011)
!1166 = !DILocation(line: 449, column: 24, scope: !1011)
!1167 = !DILocation(line: 449, column: 34, scope: !1011)
!1168 = !DILocation(line: 449, column: 37, scope: !1011)
!1169 = !DILocation(line: 449, column: 44, scope: !1011)
!1170 = !DILocation(line: 449, column: 64, scope: !1011)
!1171 = !{!1147, !751, i64 32}
!1172 = !DILocation(line: 449, column: 52, scope: !1011)
!1173 = !DILocation(line: 0, scope: !812, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 453, column: 7, scope: !1003)
!1176 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1174)
!1177 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1174)
!1178 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1174)
!1179 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1175)
!1180 = !DILocation(line: 456, column: 21, scope: !1003)
!1181 = !DILocation(line: 456, column: 15, scope: !1003)
!1182 = !DILocation(line: 456, column: 47, scope: !1003)
!1183 = !DILocation(line: 457, column: 15, scope: !1003)
!1184 = !DILocation(line: 456, column: 7, scope: !1003)
!1185 = !DILocation(line: 0, scope: !812, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 460, column: 7, scope: !1003)
!1188 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1186)
!1189 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1186)
!1190 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1186)
!1191 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1187)
!1192 = !DILocation(line: 461, column: 21, scope: !1003)
!1193 = !DILocation(line: 461, column: 15, scope: !1003)
!1194 = !DILocation(line: 461, column: 47, scope: !1003)
!1195 = !DILocation(line: 462, column: 15, scope: !1003)
!1196 = !DILocation(line: 461, column: 7, scope: !1003)
!1197 = !DILocation(line: 0, scope: !812, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 465, column: 7, scope: !1003)
!1200 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1198)
!1201 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1198)
!1202 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1198)
!1203 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1199)
!1204 = !DILocation(line: 466, column: 21, scope: !1003)
!1205 = !DILocation(line: 466, column: 15, scope: !1003)
!1206 = !DILocation(line: 466, column: 47, scope: !1003)
!1207 = !DILocation(line: 467, column: 15, scope: !1003)
!1208 = !DILocation(line: 466, column: 7, scope: !1003)
!1209 = !DILocation(line: 0, scope: !812, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 470, column: 7, scope: !1003)
!1212 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1210)
!1213 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1210)
!1214 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1210)
!1215 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1211)
!1216 = !DILocation(line: 471, column: 21, scope: !1003)
!1217 = !DILocation(line: 471, column: 15, scope: !1003)
!1218 = !DILocation(line: 471, column: 47, scope: !1003)
!1219 = !DILocation(line: 472, column: 15, scope: !1003)
!1220 = !DILocation(line: 471, column: 7, scope: !1003)
!1221 = !DILocation(line: 0, scope: !812, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 475, column: 7, scope: !1003)
!1224 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1222)
!1225 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1222)
!1226 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1222)
!1227 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1223)
!1228 = !DILocation(line: 476, column: 21, scope: !1003)
!1229 = !DILocation(line: 476, column: 15, scope: !1003)
!1230 = !DILocation(line: 476, column: 47, scope: !1003)
!1231 = !DILocation(line: 477, column: 15, scope: !1003)
!1232 = !DILocation(line: 476, column: 7, scope: !1003)
!1233 = !DILocation(line: 0, scope: !812, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 480, column: 7, scope: !1003)
!1236 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1234)
!1237 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1234)
!1238 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1234)
!1239 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1235)
!1240 = !DILocation(line: 481, column: 21, scope: !1003)
!1241 = !DILocation(line: 481, column: 15, scope: !1003)
!1242 = !DILocation(line: 481, column: 47, scope: !1003)
!1243 = !DILocation(line: 482, column: 15, scope: !1003)
!1244 = !DILocation(line: 481, column: 7, scope: !1003)
!1245 = !DILocation(line: 0, scope: !812, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 485, column: 7, scope: !1003)
!1248 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1246)
!1249 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1246)
!1250 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1246)
!1251 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1247)
!1252 = !DILocation(line: 486, column: 21, scope: !1003)
!1253 = !DILocation(line: 486, column: 15, scope: !1003)
!1254 = !DILocation(line: 486, column: 47, scope: !1003)
!1255 = !DILocation(line: 487, column: 15, scope: !1003)
!1256 = !DILocation(line: 486, column: 7, scope: !1003)
!1257 = !DILocation(line: 0, scope: !812, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 493, column: 7, scope: !1003)
!1260 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1258)
!1261 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1258)
!1262 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1258)
!1263 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1259)
!1264 = !DILocation(line: 494, column: 22, scope: !1003)
!1265 = !DILocation(line: 494, column: 15, scope: !1003)
!1266 = !DILocation(line: 494, column: 48, scope: !1003)
!1267 = !DILocation(line: 495, column: 15, scope: !1003)
!1268 = !DILocation(line: 494, column: 7, scope: !1003)
!1269 = !DILocation(line: 0, scope: !812, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 498, column: 7, scope: !1003)
!1272 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1270)
!1273 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1270)
!1274 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1270)
!1275 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1271)
!1276 = !DILocation(line: 499, column: 21, scope: !1003)
!1277 = !DILocation(line: 499, column: 15, scope: !1003)
!1278 = !DILocation(line: 499, column: 47, scope: !1003)
!1279 = !DILocation(line: 500, column: 15, scope: !1003)
!1280 = !DILocation(line: 499, column: 7, scope: !1003)
!1281 = !DILocation(line: 0, scope: !812, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 503, column: 7, scope: !1003)
!1284 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1282)
!1285 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1282)
!1286 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1282)
!1287 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1283)
!1288 = !DILocation(line: 504, column: 21, scope: !1003)
!1289 = !DILocation(line: 504, column: 15, scope: !1003)
!1290 = !DILocation(line: 504, column: 47, scope: !1003)
!1291 = !DILocation(line: 505, column: 15, scope: !1003)
!1292 = !DILocation(line: 504, column: 7, scope: !1003)
!1293 = !DILocation(line: 0, scope: !812, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 508, column: 7, scope: !1003)
!1296 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1294)
!1297 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1294)
!1298 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1294)
!1299 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1295)
!1300 = !DILocation(line: 509, column: 21, scope: !1003)
!1301 = !DILocation(line: 509, column: 15, scope: !1003)
!1302 = !DILocation(line: 509, column: 47, scope: !1003)
!1303 = !DILocation(line: 510, column: 15, scope: !1003)
!1304 = !DILocation(line: 509, column: 7, scope: !1003)
!1305 = !DILocation(line: 0, scope: !812, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 516, column: 9, scope: !1015)
!1308 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1306)
!1309 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1306)
!1310 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1306)
!1311 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1307)
!1312 = !DILocation(line: 517, column: 25, scope: !1015)
!1313 = !DILocation(line: 517, column: 15, scope: !1015)
!1314 = !DILocation(line: 0, scope: !1015)
!1315 = !DILocation(line: 518, column: 9, scope: !1015)
!1316 = !DILocation(line: 518, column: 15, scope: !1015)
!1317 = !DILocation(line: 519, column: 14, scope: !1015)
!1318 = !DILocation(line: 520, column: 17, scope: !1015)
!1319 = !DILocation(line: 520, column: 23, scope: !1015)
!1320 = !DILocation(line: 520, column: 33, scope: !1015)
!1321 = !DILocation(line: 520, column: 72, scope: !1015)
!1322 = !DILocation(line: 520, column: 64, scope: !1015)
!1323 = !DILocation(line: 520, column: 61, scope: !1015)
!1324 = !DILocation(line: 0, scope: !812, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 524, column: 7, scope: !1003)
!1327 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1325)
!1328 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1325)
!1329 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1325)
!1330 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1326)
!1331 = !DILocation(line: 525, column: 14, scope: !1003)
!1332 = !DILocation(line: 525, column: 31, scope: !1003)
!1333 = !DILocation(line: 525, column: 7, scope: !1003)
!1334 = !DILocation(line: 0, scope: !812, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 115, column: 3, scope: !1029, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 528, column: 7, scope: !1003)
!1337 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1335)
!1338 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1335)
!1339 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1335)
!1340 = !DILocation(line: 116, column: 3, scope: !1029, inlinedAt: !1336)
!1341 = !DILocation(line: 529, column: 14, scope: !1003)
!1342 = !DILocation(line: 529, column: 31, scope: !1003)
!1343 = !DILocation(line: 529, column: 7, scope: !1003)
!1344 = !DILocation(line: 0, scope: !1003)
!1345 = !DILocation(line: 531, column: 1, scope: !962)
!1346 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 124, type: !784, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!1347 = !DILocation(line: 126, column: 22, scope: !1346)
!1348 = !DILocation(line: 126, column: 61, scope: !1346)
!1349 = !DILocation(line: 126, column: 66, scope: !1346)
!1350 = !DILocation(line: 126, column: 71, scope: !1346)
!1351 = !DILocation(line: 126, column: 54, scope: !1346)
!1352 = !DILocation(line: 126, column: 3, scope: !1346)
!1353 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 612, type: !796, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1354)
!1354 = !{!1355}
!1355 = !DILocalVariable(name: "value", scope: !1353, file: !3, line: 614, type: !50)
!1356 = !DILocation(line: 616, column: 14, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 616, column: 7)
!1358 = !DILocation(line: 616, column: 19, scope: !1357)
!1359 = !DILocation(line: 616, column: 23, scope: !1357)
!1360 = !DILocation(line: 616, column: 7, scope: !1357)
!1361 = !DILocation(line: 616, column: 7, scope: !1353)
!1362 = !DILocation(line: 617, column: 13, scope: !1357)
!1363 = !DILocation(line: 0, scope: !1353)
!1364 = !DILocation(line: 617, column: 5, scope: !1357)
!1365 = !DILocation(line: 618, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 618, column: 12)
!1367 = !DILocation(line: 618, column: 12, scope: !1357)
!1368 = !DILocation(line: 0, scope: !812, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 620, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 619, column: 5)
!1371 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1369)
!1372 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1369)
!1373 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1369)
!1374 = !DILocation(line: 595, column: 7, scope: !805, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 621, column: 16, scope: !1370)
!1376 = !DILocation(line: 595, column: 7, scope: !806, inlinedAt: !1375)
!1377 = !DILocation(line: 0, scope: !812, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 597, column: 7, scope: !818, inlinedAt: !1375)
!1379 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1378)
!1380 = !DILocation(line: 587, column: 18, scope: !795, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 598, column: 17, scope: !818, inlinedAt: !1375)
!1382 = !DILocation(line: 587, column: 10, scope: !795, inlinedAt: !1381)
!1383 = !DILocation(line: 587, column: 25, scope: !795, inlinedAt: !1381)
!1384 = !DILocation(line: 0, scope: !806, inlinedAt: !1375)
!1385 = !DILocation(line: 599, column: 5, scope: !818, inlinedAt: !1375)
!1386 = !DILocation(line: 600, column: 12, scope: !827, inlinedAt: !1375)
!1387 = !DILocation(line: 600, column: 25, scope: !827, inlinedAt: !1375)
!1388 = !DILocation(line: 601, column: 12, scope: !827, inlinedAt: !1375)
!1389 = !DILocation(line: 601, column: 15, scope: !827, inlinedAt: !1375)
!1390 = !DILocation(line: 601, column: 28, scope: !827, inlinedAt: !1375)
!1391 = !DILocation(line: 602, column: 12, scope: !827, inlinedAt: !1375)
!1392 = !DILocation(line: 602, column: 15, scope: !827, inlinedAt: !1375)
!1393 = !DILocation(line: 602, column: 28, scope: !827, inlinedAt: !1375)
!1394 = !DILocation(line: 600, column: 12, scope: !805, inlinedAt: !1375)
!1395 = !DILocation(line: 604, column: 15, scope: !837, inlinedAt: !1375)
!1396 = !DILocation(line: 607, column: 5, scope: !827, inlinedAt: !1375)
!1397 = !DILocation(line: 621, column: 15, scope: !1370)
!1398 = !DILocation(line: 622, column: 5, scope: !1370)
!1399 = !DILocation(line: 623, column: 12, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 623, column: 12)
!1401 = !DILocation(line: 623, column: 35, scope: !1400)
!1402 = !DILocation(line: 623, column: 38, scope: !1400)
!1403 = !DILocation(line: 623, column: 12, scope: !1366)
!1404 = !DILocation(line: 0, scope: !812, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 625, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 624, column: 5)
!1407 = !DILocation(line: 587, column: 10, scope: !795, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 626, column: 15, scope: !1406)
!1409 = !DILocation(line: 587, column: 25, scope: !795, inlinedAt: !1408)
!1410 = !DILocation(line: 0, scope: !812, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 627, column: 7, scope: !1406)
!1412 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1411)
!1413 = !DILocation(line: 628, column: 5, scope: !1406)
!1414 = !DILocation(line: 629, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 629, column: 12)
!1416 = !DILocation(line: 629, column: 40, scope: !1415)
!1417 = !DILocation(line: 629, column: 43, scope: !1415)
!1418 = !DILocation(line: 629, column: 12, scope: !1400)
!1419 = !DILocation(line: 578, column: 14, scope: !893, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 630, column: 13, scope: !1415)
!1421 = !DILocation(line: 578, column: 11, scope: !893, inlinedAt: !1420)
!1422 = !DILocation(line: 578, column: 7, scope: !894, inlinedAt: !1420)
!1423 = !DILocation(line: 0, scope: !901, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 581, column: 10, scope: !894, inlinedAt: !1420)
!1425 = !DILocation(line: 0, scope: !906, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 564, column: 16, scope: !910, inlinedAt: !1424)
!1427 = !DILocation(line: 545, column: 16, scope: !912, inlinedAt: !1426)
!1428 = !DILocation(line: 546, column: 14, scope: !914, inlinedAt: !1426)
!1429 = !DILocation(line: 546, column: 20, scope: !914, inlinedAt: !1426)
!1430 = !DILocation(line: 546, column: 18, scope: !914, inlinedAt: !1426)
!1431 = !DILocation(line: 546, column: 25, scope: !914, inlinedAt: !1426)
!1432 = !DILocation(line: 579, column: 5, scope: !893, inlinedAt: !1420)
!1433 = !DILocation(line: 546, column: 28, scope: !914, inlinedAt: !1426)
!1434 = !DILocation(line: 546, column: 11, scope: !912, inlinedAt: !1426)
!1435 = !DILocation(line: 0, scope: !812, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 548, column: 7, scope: !912, inlinedAt: !1426)
!1437 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1436)
!1438 = !DILocation(line: 545, column: 13, scope: !912, inlinedAt: !1426)
!1439 = distinct !{!1439, !1440, !1441}
!1440 = !DILocation(line: 543, column: 3, scope: !906, inlinedAt: !1426)
!1441 = !DILocation(line: 549, column: 5, scope: !906, inlinedAt: !1426)
!1442 = !DILocation(line: 564, column: 13, scope: !910, inlinedAt: !1424)
!1443 = !DILocation(line: 565, column: 28, scope: !930, inlinedAt: !1424)
!1444 = !DILocation(line: 565, column: 11, scope: !910, inlinedAt: !1424)
!1445 = !DILocation(line: 0, scope: !812, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 567, column: 7, scope: !910, inlinedAt: !1424)
!1447 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1446)
!1448 = distinct !{!1448, !1449, !1450}
!1449 = !DILocation(line: 562, column: 3, scope: !901, inlinedAt: !1424)
!1450 = !DILocation(line: 568, column: 5, scope: !901, inlinedAt: !1424)
!1451 = !DILocation(line: 632, column: 24, scope: !1415)
!1452 = !DILocation(line: 632, column: 66, scope: !1415)
!1453 = !DILocation(line: 632, column: 71, scope: !1415)
!1454 = !DILocation(line: 632, column: 74, scope: !1415)
!1455 = !DILocation(line: 632, column: 59, scope: !1415)
!1456 = !DILocation(line: 632, column: 5, scope: !1415)
!1457 = !DILocation(line: 633, column: 3, scope: !1353)
!1458 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 211, type: !796, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DILocalVariable(name: "value", scope: !1458, file: !3, line: 213, type: !50)
!1461 = !DILocalVariable(name: "negated", scope: !1458, file: !3, line: 214, type: !50)
!1462 = !DILocalVariable(name: "nargs", scope: !1463, file: !3, line: 229, type: !31)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 228, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 227, column: 7)
!1465 = !DILocation(line: 0, scope: !1458)
!1466 = !DILocation(line: 217, column: 10, scope: !1458)
!1467 = !DILocation(line: 217, column: 16, scope: !1458)
!1468 = !DILocation(line: 217, column: 14, scope: !1458)
!1469 = !DILocation(line: 217, column: 21, scope: !1458)
!1470 = !DILocation(line: 217, column: 24, scope: !1458)
!1471 = !DILocation(line: 217, column: 37, scope: !1458)
!1472 = !DILocation(line: 217, column: 44, scope: !1458)
!1473 = !DILocation(line: 217, column: 47, scope: !1458)
!1474 = !DILocation(line: 217, column: 60, scope: !1458)
!1475 = !DILocation(line: 217, column: 3, scope: !1458)
!1476 = !DILocation(line: 0, scope: !812, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 219, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 218, column: 5)
!1479 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1477)
!1480 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1477)
!1481 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1477)
!1482 = !DILocation(line: 220, column: 17, scope: !1478)
!1483 = !DILocation(line: 224, column: 5, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 223, column: 7)
!1485 = !DILocation(line: 227, column: 20, scope: !1464)
!1486 = !DILocation(line: 227, column: 27, scope: !1464)
!1487 = !DILocation(line: 227, column: 30, scope: !1464)
!1488 = !DILocation(line: 227, column: 43, scope: !1464)
!1489 = !DILocation(line: 227, column: 7, scope: !1458)
!1490 = !DILocation(line: 0, scope: !812, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 231, column: 7, scope: !1463)
!1492 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1491)
!1493 = !DILocation(line: 108, column: 9, scope: !849, inlinedAt: !1491)
!1494 = !DILocation(line: 0, scope: !1463)
!1495 = !DILocation(line: 234, column: 16, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 233, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 233, column: 7)
!1498 = !DILocation(line: 234, column: 24, scope: !1496)
!1499 = !DILocation(line: 234, column: 31, scope: !1496)
!1500 = !DILocation(line: 233, column: 7, scope: !1497)
!1501 = !DILocation(line: 109, column: 5, scope: !849, inlinedAt: !1491)
!1502 = !DILocation(line: 234, column: 36, scope: !1496)
!1503 = !DILocation(line: 236, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 236, column: 13)
!1505 = !DILocation(line: 236, column: 13, scope: !1496)
!1506 = !DILocation(line: 238, column: 26, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 237, column: 11)
!1508 = !DILocation(line: 239, column: 13, scope: !1507)
!1509 = !DILocation(line: 235, column: 17, scope: !1496)
!1510 = distinct !{!1510, !1500, !1511, !647}
!1511 = !DILocation(line: 240, column: 11, scope: !1497)
!1512 = !DILocation(line: 242, column: 15, scope: !1463)
!1513 = !DILocation(line: 0, scope: !1497)
!1514 = !DILocation(line: 243, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 243, column: 11)
!1516 = !DILocation(line: 243, column: 16, scope: !1515)
!1517 = !DILocation(line: 243, column: 21, scope: !1515)
!1518 = !DILocation(line: 243, column: 11, scope: !1463)
!1519 = !DILocation(line: 244, column: 28, scope: !1515)
!1520 = !DILocation(line: 244, column: 46, scope: !1515)
!1521 = !DILocation(line: 244, column: 9, scope: !1515)
!1522 = !DILocation(line: 246, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 246, column: 13)
!1524 = !DILocation(line: 246, column: 26, scope: !1523)
!1525 = !DILocation(line: 246, column: 33, scope: !1523)
!1526 = !DILocation(line: 246, column: 36, scope: !1523)
!1527 = !DILocation(line: 246, column: 13, scope: !1515)
!1528 = !DILocation(line: 247, column: 30, scope: !1523)
!1529 = !DILocation(line: 248, column: 30, scope: !1523)
!1530 = !DILocation(line: 248, column: 60, scope: !1523)
!1531 = !DILocation(line: 248, column: 65, scope: !1523)
!1532 = !DILocation(line: 248, column: 48, scope: !1523)
!1533 = !DILocation(line: 247, column: 11, scope: !1523)
!1534 = !DILocation(line: 0, scope: !812, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 249, column: 7, scope: !1463)
!1536 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1535)
!1537 = !DILocation(line: 250, column: 5, scope: !1463)
!1538 = !DILocation(line: 253, column: 22, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 253, column: 12)
!1540 = !DILocation(line: 253, column: 14, scope: !1539)
!1541 = !DILocation(line: 253, column: 28, scope: !1539)
!1542 = !DILocation(line: 253, column: 31, scope: !1539)
!1543 = !DILocation(line: 253, column: 55, scope: !1539)
!1544 = !DILocation(line: 253, column: 74, scope: !1539)
!1545 = !DILocation(line: 253, column: 65, scope: !1539)
!1546 = !DILocation(line: 253, column: 58, scope: !1539)
!1547 = !DILocation(line: 253, column: 12, scope: !1464)
!1548 = !DILocation(line: 254, column: 13, scope: !1539)
!1549 = !DILocation(line: 254, column: 5, scope: !1539)
!1550 = !DILocation(line: 255, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 255, column: 12)
!1552 = !DILocation(line: 255, column: 28, scope: !1551)
!1553 = !DILocation(line: 255, column: 47, scope: !1551)
!1554 = !DILocation(line: 255, column: 38, scope: !1551)
!1555 = !DILocation(line: 255, column: 31, scope: !1551)
!1556 = !DILocation(line: 255, column: 12, scope: !1539)
!1557 = !DILocation(line: 256, column: 13, scope: !1551)
!1558 = !DILocation(line: 256, column: 5, scope: !1551)
!1559 = !DILocation(line: 259, column: 25, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 259, column: 12)
!1561 = !DILocation(line: 259, column: 32, scope: !1560)
!1562 = !DILocation(line: 259, column: 35, scope: !1560)
!1563 = !DILocation(line: 259, column: 48, scope: !1560)
!1564 = !DILocation(line: 259, column: 51, scope: !1560)
!1565 = !DILocation(line: 259, column: 64, scope: !1560)
!1566 = !DILocation(line: 259, column: 12, scope: !1551)
!1567 = !DILocation(line: 260, column: 13, scope: !1560)
!1568 = !DILocation(line: 260, column: 5, scope: !1560)
!1569 = !DILocation(line: 263, column: 29, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 262, column: 5)
!1571 = !DILocation(line: 0, scope: !812, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 264, column: 7, scope: !1570)
!1573 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1572)
!1574 = !DILocation(line: 267, column: 18, scope: !1458)
!1575 = !DILocation(line: 267, column: 3, scope: !1458)
!1576 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 183, type: !1577, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!50, !51}
!1579 = !{!1580}
!1580 = !DILocalVariable(name: "s", arg: 1, scope: !1576, file: !3, line: 183, type: !51)
!1581 = !DILocation(line: 0, scope: !1576)
!1582 = !DILocation(line: 185, column: 12, scope: !1576)
!1583 = !DILocation(line: 185, column: 30, scope: !1576)
!1584 = !DILocation(line: 185, column: 34, scope: !1576)
!1585 = !DILocation(line: 185, column: 52, scope: !1576)
!1586 = !DILocation(line: 185, column: 56, scope: !1576)
!1587 = !DILocation(line: 185, column: 73, scope: !1576)
!1588 = !DILocation(line: 186, column: 12, scope: !1576)
!1589 = !DILocation(line: 186, column: 32, scope: !1576)
!1590 = !DILocation(line: 187, column: 12, scope: !1576)
!1591 = !DILocation(line: 187, column: 30, scope: !1576)
!1592 = !DILocation(line: 187, column: 34, scope: !1576)
!1593 = !DILocation(line: 187, column: 52, scope: !1576)
!1594 = !DILocation(line: 187, column: 56, scope: !1576)
!1595 = !DILocation(line: 187, column: 74, scope: !1576)
!1596 = !DILocation(line: 188, column: 12, scope: !1576)
!1597 = !DILocation(line: 188, column: 30, scope: !1576)
!1598 = !DILocation(line: 188, column: 34, scope: !1576)
!1599 = !DILocation(line: 188, column: 52, scope: !1576)
!1600 = !DILocation(line: 188, column: 56, scope: !1576)
!1601 = !DILocation(line: 188, column: 74, scope: !1576)
!1602 = !DILocation(line: 189, column: 12, scope: !1576)
!1603 = !DILocation(line: 189, column: 30, scope: !1576)
!1604 = !DILocation(line: 189, column: 34, scope: !1576)
!1605 = !DILocation(line: 185, column: 3, scope: !1576)
!1606 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 271, type: !1607, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!50, !50}
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1623, !1624, !1625, !1626, !1627, !1628, !1632, !1633, !1634, !1635, !1638, !1639, !1640, !1641, !1644}
!1610 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1606, file: !3, line: 271, type: !50)
!1611 = !DILocalVariable(name: "op", scope: !1606, file: !3, line: 273, type: !31)
!1612 = !DILocalVariable(name: "stat_buf", scope: !1606, file: !3, line: 274, type: !965)
!1613 = !DILocalVariable(name: "stat_spare", scope: !1606, file: !3, line: 274, type: !965)
!1614 = !DILocalVariable(name: "r_is_l", scope: !1606, file: !3, line: 276, type: !50)
!1615 = !DILocalVariable(name: "lbuf", scope: !1616, file: !3, line: 299, type: !1620)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 298, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 293, column: 11)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 291, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 290, column: 7)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 168, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 21)
!1623 = !DILocalVariable(name: "rbuf", scope: !1616, file: !3, line: 300, type: !1620)
!1624 = !DILocalVariable(name: "l", scope: !1616, file: !3, line: 301, type: !51)
!1625 = !DILocalVariable(name: "r", scope: !1616, file: !3, line: 304, type: !51)
!1626 = !DILocalVariable(name: "cmp", scope: !1616, file: !3, line: 307, type: !31)
!1627 = !DILocalVariable(name: "xe_operator", scope: !1616, file: !3, line: 308, type: !50)
!1628 = !DILocalVariable(name: "lt", scope: !1629, file: !3, line: 324, type: !988)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 322, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 321, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 316, column: 9)
!1632 = !DILocalVariable(name: "rt", scope: !1629, file: !3, line: 324, type: !988)
!1633 = !DILocalVariable(name: "le", scope: !1629, file: !3, line: 325, type: !50)
!1634 = !DILocalVariable(name: "re", scope: !1629, file: !3, line: 325, type: !50)
!1635 = !DILocalVariable(name: "lt", scope: !1636, file: !3, line: 353, type: !988)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 351, column: 13)
!1637 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 350, column: 15)
!1638 = !DILocalVariable(name: "rt", scope: !1636, file: !3, line: 353, type: !988)
!1639 = !DILocalVariable(name: "le", scope: !1636, file: !3, line: 354, type: !50)
!1640 = !DILocalVariable(name: "re", scope: !1636, file: !3, line: 354, type: !50)
!1641 = !DILocalVariable(name: "value", scope: !1642, file: !3, line: 372, type: !50)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 371, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 369, column: 7)
!1644 = !DILocalVariable(name: "value", scope: !1645, file: !3, line: 379, type: !50)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 378, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 377, column: 7)
!1647 = !DILocation(line: 0, scope: !1606)
!1648 = !DILocation(line: 274, column: 3, scope: !1606)
!1649 = !DILocation(line: 274, column: 15, scope: !1606)
!1650 = !DILocation(line: 274, column: 25, scope: !1606)
!1651 = !DILocation(line: 278, column: 7, scope: !1606)
!1652 = !DILocation(line: 0, scope: !812, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 279, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 278, column: 7)
!1655 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1653)
!1656 = !DILocation(line: 279, column: 5, scope: !1654)
!1657 = !DILocation(line: 280, column: 8, scope: !1606)
!1658 = !DILocation(line: 280, column: 12, scope: !1606)
!1659 = !DILocation(line: 282, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 282, column: 7)
!1661 = !DILocation(line: 282, column: 18, scope: !1660)
!1662 = !DILocation(line: 282, column: 11, scope: !1660)
!1663 = !DILocation(line: 282, column: 23, scope: !1660)
!1664 = !DILocation(line: 282, column: 26, scope: !1660)
!1665 = !DILocation(line: 282, column: 7, scope: !1606)
!1666 = !DILocation(line: 0, scope: !812, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 285, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 283, column: 5)
!1669 = !DILocation(line: 106, column: 3, scope: !812, inlinedAt: !1667)
!1670 = !DILocation(line: 286, column: 5, scope: !1668)
!1671 = !DILocation(line: 290, column: 7, scope: !1619)
!1672 = !DILocation(line: 290, column: 7, scope: !1606)
!1673 = !DILocation(line: 293, column: 14, scope: !1617)
!1674 = !DILocation(line: 293, column: 33, scope: !1617)
!1675 = !DILocation(line: 294, column: 17, scope: !1617)
!1676 = !DILocation(line: 294, column: 36, scope: !1617)
!1677 = !DILocation(line: 295, column: 38, scope: !1617)
!1678 = !DILocation(line: 295, column: 50, scope: !1617)
!1679 = !DILocation(line: 296, column: 12, scope: !1617)
!1680 = !DILocation(line: 296, column: 38, scope: !1617)
!1681 = !DILocation(line: 296, column: 50, scope: !1617)
!1682 = !DILocation(line: 297, column: 11, scope: !1617)
!1683 = !DILocation(line: 297, column: 15, scope: !1617)
!1684 = !DILocation(line: 293, column: 11, scope: !1618)
!1685 = !DILocation(line: 299, column: 11, scope: !1616)
!1686 = !DILocation(line: 299, column: 16, scope: !1616)
!1687 = !DILocation(line: 300, column: 11, scope: !1616)
!1688 = !DILocation(line: 300, column: 16, scope: !1616)
!1689 = !DILocation(line: 0, scope: !1616)
!1690 = !DILocation(line: 301, column: 28, scope: !1616)
!1691 = !DILocation(line: 302, column: 41, scope: !1616)
!1692 = !DILocation(line: 302, column: 30, scope: !1616)
!1693 = !DILocation(line: 303, column: 30, scope: !1616)
!1694 = !DILocation(line: 304, column: 28, scope: !1616)
!1695 = !DILocation(line: 305, column: 57, scope: !1616)
!1696 = !DILocation(line: 305, column: 49, scope: !1616)
!1697 = !DILocation(line: 305, column: 41, scope: !1616)
!1698 = !DILocation(line: 305, column: 30, scope: !1616)
!1699 = !DILocation(line: 306, column: 48, scope: !1616)
!1700 = !DILocation(line: 306, column: 40, scope: !1616)
!1701 = !DILocation(line: 306, column: 30, scope: !1616)
!1702 = !DILocation(line: 307, column: 21, scope: !1616)
!1703 = !DILocation(line: 308, column: 31, scope: !1616)
!1704 = !DILocation(line: 308, column: 43, scope: !1616)
!1705 = !DILocation(line: 309, column: 15, scope: !1616)
!1706 = !DILocation(line: 310, column: 19, scope: !1616)
!1707 = !DILocation(line: 310, column: 46, scope: !1616)
!1708 = !DILocation(line: 310, column: 44, scope: !1616)
!1709 = !DILocation(line: 311, column: 50, scope: !1616)
!1710 = !DILocation(line: 311, column: 46, scope: !1616)
!1711 = !DILocation(line: 311, column: 21, scope: !1616)
!1712 = !DILocation(line: 312, column: 26, scope: !1616)
!1713 = !DILocation(line: 312, column: 32, scope: !1616)
!1714 = !DILocation(line: 313, column: 9, scope: !1617)
!1715 = !DILocation(line: 315, column: 15, scope: !1618)
!1716 = !DILocation(line: 315, column: 7, scope: !1618)
!1717 = !DILocation(line: 321, column: 15, scope: !1630)
!1718 = !DILocation(line: 336, column: 15, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 336, column: 15)
!1720 = !DILocation(line: 321, column: 27, scope: !1630)
!1721 = !DILocation(line: 321, column: 34, scope: !1630)
!1722 = !DILocation(line: 321, column: 38, scope: !1630)
!1723 = !DILocation(line: 321, column: 15, scope: !1631)
!1724 = !DILocation(line: 326, column: 19, scope: !1629)
!1725 = !DILocation(line: 327, column: 26, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 327, column: 19)
!1727 = !DILocation(line: 328, column: 36, scope: !1726)
!1728 = !DILocation(line: 328, column: 17, scope: !1726)
!1729 = !DILocation(line: 329, column: 31, scope: !1629)
!1730 = !DILocalVariable(name: "filename", arg: 1, scope: !1731, file: !3, line: 168, type: !51)
!1731 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 168, type: !1732, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1735)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!50, !51, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1735 = !{!1730, !1736, !1737, !1738}
!1736 = !DILocalVariable(name: "mtime", arg: 2, scope: !1731, file: !3, line: 168, type: !1734)
!1737 = !DILocalVariable(name: "finfo", scope: !1731, file: !3, line: 170, type: !965)
!1738 = !DILocalVariable(name: "ok", scope: !1731, file: !3, line: 171, type: !50)
!1739 = !DILocation(line: 0, scope: !1731, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 329, column: 20, scope: !1629)
!1741 = !DILocation(line: 170, column: 3, scope: !1731, inlinedAt: !1740)
!1742 = !DILocation(line: 170, column: 15, scope: !1731, inlinedAt: !1740)
!1743 = !DILocation(line: 171, column: 14, scope: !1731, inlinedAt: !1740)
!1744 = !DILocation(line: 171, column: 38, scope: !1731, inlinedAt: !1740)
!1745 = !DILocation(line: 176, column: 7, scope: !1731, inlinedAt: !1740)
!1746 = !DILocation(line: 0, scope: !1629)
!1747 = !DILocation(line: 179, column: 1, scope: !1731, inlinedAt: !1740)
!1748 = !DILocation(line: 330, column: 31, scope: !1629)
!1749 = !DILocation(line: 330, column: 39, scope: !1629)
!1750 = !DILocation(line: 0, scope: !1731, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 330, column: 20, scope: !1629)
!1752 = !DILocation(line: 170, column: 3, scope: !1731, inlinedAt: !1751)
!1753 = !DILocation(line: 170, column: 15, scope: !1731, inlinedAt: !1751)
!1754 = !DILocation(line: 171, column: 14, scope: !1731, inlinedAt: !1751)
!1755 = !DILocation(line: 171, column: 38, scope: !1731, inlinedAt: !1751)
!1756 = !DILocation(line: 176, column: 7, scope: !1731, inlinedAt: !1751)
!1757 = !DILocation(line: 179, column: 1, scope: !1731, inlinedAt: !1751)
!1758 = !DILocation(line: 331, column: 25, scope: !1629)
!1759 = !DILocation(line: 0, scope: !1101, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 177, column: 14, scope: !1761, inlinedAt: !1751)
!1761 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 176, column: 7)
!1762 = !DILocation(line: 149, column: 10, scope: !1101, inlinedAt: !1760)
!1763 = !DILocation(line: 0, scope: !1107, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 331, column: 36, scope: !1629)
!1765 = !DILocation(line: 93, column: 16, scope: !1118, inlinedAt: !1764)
!1766 = !DILocation(line: 93, column: 7, scope: !1107, inlinedAt: !1764)
!1767 = !DILocation(line: 98, column: 3, scope: !1107, inlinedAt: !1764)
!1768 = !DILocation(line: 99, column: 3, scope: !1107, inlinedAt: !1764)
!1769 = !DILocation(line: 101, column: 20, scope: !1107, inlinedAt: !1764)
!1770 = !DILocation(line: 101, column: 10, scope: !1107, inlinedAt: !1764)
!1771 = !DILocation(line: 101, column: 3, scope: !1107, inlinedAt: !1764)
!1772 = !DILocation(line: 336, column: 27, scope: !1719)
!1773 = !DILocation(line: 336, column: 34, scope: !1719)
!1774 = !DILocation(line: 336, column: 38, scope: !1719)
!1775 = !DILocation(line: 336, column: 15, scope: !1631)
!1776 = !DILocation(line: 339, column: 19, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 337, column: 13)
!1778 = !DILocation(line: 340, column: 26, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 340, column: 19)
!1780 = !DILocation(line: 341, column: 36, scope: !1779)
!1781 = !DILocation(line: 341, column: 17, scope: !1779)
!1782 = !DILocation(line: 342, column: 29, scope: !1777)
!1783 = !DILocation(line: 342, column: 23, scope: !1777)
!1784 = !DILocation(line: 342, column: 54, scope: !1777)
!1785 = !DILocation(line: 343, column: 23, scope: !1777)
!1786 = !DILocation(line: 343, column: 32, scope: !1777)
!1787 = !DILocation(line: 343, column: 40, scope: !1777)
!1788 = !DILocation(line: 343, column: 26, scope: !1777)
!1789 = !DILocation(line: 343, column: 59, scope: !1777)
!1790 = !DILocation(line: 344, column: 23, scope: !1777)
!1791 = !DILocation(line: 344, column: 35, scope: !1777)
!1792 = !{!1147, !1097, i64 0}
!1793 = !DILocation(line: 344, column: 56, scope: !1777)
!1794 = !DILocation(line: 344, column: 42, scope: !1777)
!1795 = !DILocation(line: 345, column: 23, scope: !1777)
!1796 = !DILocation(line: 345, column: 35, scope: !1777)
!1797 = !{!1147, !1097, i64 8}
!1798 = !DILocation(line: 345, column: 56, scope: !1777)
!1799 = !DILocation(line: 345, column: 42, scope: !1777)
!1800 = !DILocation(line: 350, column: 22, scope: !1637)
!1801 = !DILocation(line: 350, column: 19, scope: !1637)
!1802 = !DILocation(line: 350, column: 34, scope: !1637)
!1803 = !DILocation(line: 350, column: 47, scope: !1637)
!1804 = !DILocation(line: 350, column: 44, scope: !1637)
!1805 = !DILocation(line: 350, column: 15, scope: !1631)
!1806 = !DILocation(line: 355, column: 19, scope: !1636)
!1807 = !DILocation(line: 356, column: 26, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 356, column: 19)
!1809 = !DILocation(line: 357, column: 36, scope: !1808)
!1810 = !DILocation(line: 357, column: 17, scope: !1808)
!1811 = !DILocation(line: 358, column: 31, scope: !1636)
!1812 = !DILocation(line: 0, scope: !1731, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 358, column: 20, scope: !1636)
!1814 = !DILocation(line: 170, column: 3, scope: !1731, inlinedAt: !1813)
!1815 = !DILocation(line: 170, column: 15, scope: !1731, inlinedAt: !1813)
!1816 = !DILocation(line: 171, column: 14, scope: !1731, inlinedAt: !1813)
!1817 = !DILocation(line: 171, column: 38, scope: !1731, inlinedAt: !1813)
!1818 = !DILocation(line: 176, column: 7, scope: !1731, inlinedAt: !1813)
!1819 = !DILocation(line: 0, scope: !1636)
!1820 = !DILocation(line: 179, column: 1, scope: !1731, inlinedAt: !1813)
!1821 = !DILocation(line: 359, column: 31, scope: !1636)
!1822 = !DILocation(line: 359, column: 39, scope: !1636)
!1823 = !DILocation(line: 0, scope: !1731, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 359, column: 20, scope: !1636)
!1825 = !DILocation(line: 170, column: 3, scope: !1731, inlinedAt: !1824)
!1826 = !DILocation(line: 170, column: 15, scope: !1731, inlinedAt: !1824)
!1827 = !DILocation(line: 171, column: 14, scope: !1731, inlinedAt: !1824)
!1828 = !DILocation(line: 171, column: 38, scope: !1731, inlinedAt: !1824)
!1829 = !DILocation(line: 176, column: 7, scope: !1731, inlinedAt: !1824)
!1830 = !DILocation(line: 179, column: 1, scope: !1731, inlinedAt: !1824)
!1831 = !DILocation(line: 360, column: 25, scope: !1636)
!1832 = !DILocation(line: 0, scope: !1101, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 177, column: 14, scope: !1761, inlinedAt: !1824)
!1834 = !DILocation(line: 149, column: 10, scope: !1101, inlinedAt: !1833)
!1835 = !DILocation(line: 0, scope: !1107, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 360, column: 36, scope: !1636)
!1837 = !DILocation(line: 93, column: 16, scope: !1118, inlinedAt: !1836)
!1838 = !DILocation(line: 93, column: 7, scope: !1107, inlinedAt: !1836)
!1839 = !DILocation(line: 98, column: 3, scope: !1107, inlinedAt: !1836)
!1840 = !DILocation(line: 99, column: 3, scope: !1107, inlinedAt: !1836)
!1841 = !DILocation(line: 101, column: 20, scope: !1107, inlinedAt: !1836)
!1842 = !DILocation(line: 101, column: 10, scope: !1107, inlinedAt: !1836)
!1843 = !DILocation(line: 101, column: 3, scope: !1107, inlinedAt: !1836)
!1844 = !DILocation(line: 366, column: 26, scope: !1618)
!1845 = !DILocation(line: 366, column: 67, scope: !1618)
!1846 = !DILocation(line: 366, column: 60, scope: !1618)
!1847 = !DILocation(line: 366, column: 7, scope: !1618)
!1848 = !DILocation(line: 370, column: 12, scope: !1643)
!1849 = !DILocation(line: 370, column: 24, scope: !1643)
!1850 = !DILocation(line: 370, column: 53, scope: !1643)
!1851 = !DILocation(line: 369, column: 7, scope: !1606)
!1852 = !DILocation(line: 372, column: 20, scope: !1642)
!1853 = !DILocation(line: 0, scope: !1642)
!1854 = !DILocation(line: 373, column: 11, scope: !1642)
!1855 = !DILocation(line: 377, column: 7, scope: !1646)
!1856 = !DILocation(line: 377, column: 7, scope: !1606)
!1857 = !DILocation(line: 379, column: 21, scope: !1645)
!1858 = !DILocation(line: 0, scope: !1645)
!1859 = !DILocation(line: 380, column: 11, scope: !1645)
!1860 = !DILocation(line: 385, column: 3, scope: !1606)
!1861 = !DILocation(line: 386, column: 1, scope: !1606)
!1862 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 133, type: !1863, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!51, !51}
!1865 = !{!1866, !1867, !1868}
!1866 = !DILocalVariable(name: "string", arg: 1, scope: !1862, file: !3, line: 133, type: !51)
!1867 = !DILocalVariable(name: "p", scope: !1862, file: !3, line: 135, type: !51)
!1868 = !DILocalVariable(name: "number_start", scope: !1862, file: !3, line: 136, type: !51)
!1869 = !DILocation(line: 0, scope: !1862)
!1870 = !DILocation(line: 138, column: 8, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 138, column: 3)
!1872 = !DILocation(line: 0, scope: !1871)
!1873 = !DILocation(line: 138, column: 20, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 138, column: 3)
!1875 = !{!1876, !1876, i64 0}
!1876 = !{!"short", !594, i64 0}
!1877 = !DILocation(line: 138, column: 3, scope: !1871)
!1878 = !DILocation(line: 138, column: 46, scope: !1874)
!1879 = distinct !{!1879, !1877, !1880, !647}
!1880 = !DILocation(line: 139, column: 5, scope: !1871)
!1881 = !DILocation(line: 141, column: 10, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 141, column: 7)
!1883 = !DILocation(line: 141, column: 7, scope: !1862)
!1884 = !DILocation(line: 152, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 152, column: 7)
!1886 = !DILocation(line: 152, column: 7, scope: !1862)
!1887 = !DILocation(line: 0, scope: !1885)
!1888 = !DILocation(line: 154, column: 14, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 153, column: 5)
!1890 = !DILocation(line: 154, column: 7, scope: !1889)
!1891 = distinct !{!1891, !1890, !1892, !647}
!1892 = !DILocation(line: 155, column: 10, scope: !1889)
!1893 = !DILocation(line: 156, column: 14, scope: !1889)
!1894 = !DILocation(line: 156, column: 7, scope: !1889)
!1895 = !DILocation(line: 157, column: 10, scope: !1889)
!1896 = distinct !{!1896, !1894, !1895, !647}
!1897 = !DILocation(line: 158, column: 12, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 158, column: 11)
!1899 = !DILocation(line: 158, column: 11, scope: !1889)
!1900 = !DILocation(line: 159, column: 9, scope: !1898)
!1901 = !DILocation(line: 162, column: 22, scope: !1862)
!1902 = !DILocation(line: 162, column: 47, scope: !1862)
!1903 = !DILocation(line: 162, column: 3, scope: !1862)
!1904 = !DISubprogram(name: "stat", scope: !1905, file: !1905, line: 205, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1905 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!31, !51, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!1909 = !DISubprogram(name: "euidaccess", scope: !1910, file: !1910, line: 292, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1910 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!31, !51, !31}
!1913 = !DISubprogram(name: "geteuid", scope: !1910, file: !1910, line: 690, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1914 = !DISubroutineType(types: !143)
!1915 = !DISubprogram(name: "getegid", scope: !1910, file: !1910, line: 696, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1916 = !DISubprogram(name: "lstat", scope: !1905, file: !1905, line: 259, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1917 = !DISubprogram(name: "isatty", scope: !1910, file: !1910, line: 791, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!31, !31}
!1920 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !45, file: !45, line: 51, type: !617, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !1921)
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "file", arg: 1, scope: !1920, file: !45, line: 51, type: !51)
!1923 = !DILocation(line: 0, scope: !1920)
!1924 = !DILocation(line: 53, column: 13, scope: !1920)
!1925 = !DILocation(line: 54, column: 1, scope: !1920)
!1926 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !45, file: !45, line: 88, type: !813, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !1927)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "ignore", arg: 1, scope: !1926, file: !45, line: 88, type: !50)
!1929 = !DILocation(line: 0, scope: !1926)
!1930 = !DILocation(line: 90, column: 16, scope: !1926)
!1931 = !{!1932, !1932, i64 0}
!1932 = !{!"_Bool", !594, i64 0}
!1933 = !DILocation(line: 91, column: 1, scope: !1926)
!1934 = distinct !DISubprogram(name: "close_stdout", scope: !45, file: !45, line: 117, type: !784, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !1935)
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "write_error", scope: !1937, file: !45, line: 122, type: !51)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !45, line: 121, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !45, line: 119, column: 7)
!1939 = !DILocation(line: 119, column: 21, scope: !1938)
!1940 = !DILocation(line: 119, column: 7, scope: !1938)
!1941 = !DILocation(line: 119, column: 29, scope: !1938)
!1942 = !DILocation(line: 120, column: 7, scope: !1938)
!1943 = !DILocation(line: 120, column: 12, scope: !1938)
!1944 = !{i8 0, i8 2}
!1945 = !DILocation(line: 120, column: 25, scope: !1938)
!1946 = !DILocation(line: 120, column: 28, scope: !1938)
!1947 = !DILocation(line: 120, column: 34, scope: !1938)
!1948 = !DILocation(line: 119, column: 7, scope: !1934)
!1949 = !DILocation(line: 122, column: 33, scope: !1937)
!1950 = !DILocation(line: 0, scope: !1937)
!1951 = !DILocation(line: 123, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1937, file: !45, line: 123, column: 11)
!1953 = !DILocation(line: 0, scope: !1952)
!1954 = !DILocation(line: 123, column: 11, scope: !1937)
!1955 = !DILocation(line: 124, column: 36, scope: !1952)
!1956 = !DILocation(line: 124, column: 9, scope: !1952)
!1957 = !DILocation(line: 127, column: 9, scope: !1952)
!1958 = !DILocation(line: 129, column: 14, scope: !1937)
!1959 = !DILocation(line: 129, column: 7, scope: !1937)
!1960 = !DILocation(line: 134, column: 42, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1934, file: !45, line: 134, column: 7)
!1962 = !DILocation(line: 134, column: 28, scope: !1961)
!1963 = !DILocation(line: 134, column: 50, scope: !1961)
!1964 = !DILocation(line: 134, column: 7, scope: !1934)
!1965 = !DILocation(line: 135, column: 12, scope: !1961)
!1966 = !DILocation(line: 135, column: 5, scope: !1961)
!1967 = !DILocation(line: 136, column: 1, scope: !1934)
!1968 = !DISubprogram(name: "error", scope: !1969, file: !1969, line: 52, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1969 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !31, !31, !51, null}
!1972 = distinct !DISubprogram(name: "umaxtostr", scope: !1973, file: !1973, line: 36, type: !1974, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1976)
!1973 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!40, !137, !40}
!1976 = !{!1977, !1978, !1979}
!1977 = !DILocalVariable(name: "i", arg: 1, scope: !1972, file: !1973, line: 36, type: !137)
!1978 = !DILocalVariable(name: "buf", arg: 2, scope: !1972, file: !1973, line: 36, type: !40)
!1979 = !DILocalVariable(name: "p", scope: !1972, file: !1973, line: 38, type: !40)
!1980 = !DILocation(line: 0, scope: !1972)
!1981 = !DILocation(line: 38, column: 17, scope: !1972)
!1982 = !DILocation(line: 39, column: 6, scope: !1972)
!1983 = !DILocation(line: 52, column: 24, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1973, line: 50, column: 5)
!1985 = distinct !DILexicalBlock(scope: !1972, file: !1973, line: 41, column: 7)
!1986 = !DILocation(line: 52, column: 16, scope: !1984)
!1987 = !DILocation(line: 52, column: 10, scope: !1984)
!1988 = !DILocation(line: 52, column: 14, scope: !1984)
!1989 = !DILocation(line: 53, column: 17, scope: !1984)
!1990 = !DILocation(line: 53, column: 24, scope: !1984)
!1991 = !DILocation(line: 52, column: 9, scope: !1984)
!1992 = distinct !{!1992, !1993, !1994, !647}
!1993 = !DILocation(line: 51, column: 7, scope: !1984)
!1994 = !DILocation(line: 53, column: 28, scope: !1984)
!1995 = !DILocation(line: 56, column: 3, scope: !1972)
!1996 = distinct !DISubprogram(name: "set_program_name", scope: !62, file: !62, line: 39, type: !617, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "argv0", arg: 1, scope: !1996, file: !62, line: 39, type: !51)
!1999 = !DILocalVariable(name: "slash", scope: !1996, file: !62, line: 46, type: !51)
!2000 = !DILocalVariable(name: "base", scope: !1996, file: !62, line: 47, type: !51)
!2001 = !DILocation(line: 0, scope: !1996)
!2002 = !DILocation(line: 51, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !62, line: 51, column: 7)
!2004 = !DILocation(line: 51, column: 7, scope: !1996)
!2005 = !DILocation(line: 55, column: 14, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !62, line: 52, column: 5)
!2007 = !DILocation(line: 54, column: 7, scope: !2006)
!2008 = !DILocation(line: 56, column: 7, scope: !2006)
!2009 = !DILocation(line: 59, column: 11, scope: !1996)
!2010 = !DILocation(line: 60, column: 17, scope: !1996)
!2011 = !DILocation(line: 60, column: 11, scope: !1996)
!2012 = !DILocation(line: 61, column: 12, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1996, file: !62, line: 61, column: 7)
!2014 = !DILocation(line: 61, column: 20, scope: !2013)
!2015 = !DILocation(line: 61, column: 25, scope: !2013)
!2016 = !DILocation(line: 61, column: 42, scope: !2013)
!2017 = !DILocation(line: 61, column: 28, scope: !2013)
!2018 = !DILocation(line: 61, column: 61, scope: !2013)
!2019 = !DILocation(line: 61, column: 7, scope: !1996)
!2020 = !DILocation(line: 64, column: 11, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !62, line: 64, column: 11)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !62, line: 62, column: 5)
!2023 = !DILocation(line: 64, column: 36, scope: !2021)
!2024 = !DILocation(line: 64, column: 11, scope: !2022)
!2025 = !DILocation(line: 66, column: 24, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !62, line: 65, column: 9)
!2027 = !DILocation(line: 70, column: 41, scope: !2026)
!2028 = !DILocation(line: 72, column: 9, scope: !2026)
!2029 = !DILocation(line: 84, column: 16, scope: !1996)
!2030 = !DILocation(line: 90, column: 27, scope: !1996)
!2031 = !DILocation(line: 92, column: 1, scope: !1996)
!2032 = distinct !DISubprogram(name: "clone_quoting_options", scope: !68, file: !68, line: 122, type: !2033, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2036)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!2035, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2036 = !{!2037, !2038, !2039}
!2037 = !DILocalVariable(name: "o", arg: 1, scope: !2032, file: !68, line: 122, type: !2035)
!2038 = !DILocalVariable(name: "e", scope: !2032, file: !68, line: 124, type: !31)
!2039 = !DILocalVariable(name: "p", scope: !2032, file: !68, line: 125, type: !2035)
!2040 = !DILocation(line: 0, scope: !2032)
!2041 = !DILocation(line: 124, column: 11, scope: !2032)
!2042 = !DILocation(line: 125, column: 40, scope: !2032)
!2043 = !DILocation(line: 125, column: 31, scope: !2032)
!2044 = !DILocation(line: 127, column: 9, scope: !2032)
!2045 = !DILocation(line: 128, column: 3, scope: !2032)
!2046 = distinct !DISubprogram(name: "get_quoting_style", scope: !68, file: !68, line: 133, type: !2047, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2051)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!70, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "o", arg: 1, scope: !2046, file: !68, line: 133, type: !2049)
!2053 = !DILocation(line: 0, scope: !2046)
!2054 = !DILocation(line: 135, column: 11, scope: !2046)
!2055 = !DILocation(line: 135, column: 46, scope: !2046)
!2056 = !{!2057, !594, i64 0}
!2057 = !{!"quoting_options", !594, i64 0, !751, i64 4, !594, i64 8, !593, i64 40, !593, i64 48}
!2058 = !DILocation(line: 135, column: 3, scope: !2046)
!2059 = distinct !DISubprogram(name: "set_quoting_style", scope: !68, file: !68, line: 141, type: !2060, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2035, !70}
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "o", arg: 1, scope: !2059, file: !68, line: 141, type: !2035)
!2064 = !DILocalVariable(name: "s", arg: 2, scope: !2059, file: !68, line: 141, type: !70)
!2065 = !DILocation(line: 0, scope: !2059)
!2066 = !DILocation(line: 143, column: 4, scope: !2059)
!2067 = !DILocation(line: 143, column: 39, scope: !2059)
!2068 = !DILocation(line: 143, column: 45, scope: !2059)
!2069 = !DILocation(line: 144, column: 1, scope: !2059)
!2070 = distinct !DISubprogram(name: "set_char_quoting", scope: !68, file: !68, line: 152, type: !2071, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!31, !2035, !41, !31}
!2073 = !{!2074, !2075, !2076, !2077, !2079, !2081, !2082}
!2074 = !DILocalVariable(name: "o", arg: 1, scope: !2070, file: !68, line: 152, type: !2035)
!2075 = !DILocalVariable(name: "c", arg: 2, scope: !2070, file: !68, line: 152, type: !41)
!2076 = !DILocalVariable(name: "i", arg: 3, scope: !2070, file: !68, line: 152, type: !31)
!2077 = !DILocalVariable(name: "uc", scope: !2070, file: !68, line: 154, type: !2078)
!2078 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2079 = !DILocalVariable(name: "p", scope: !2070, file: !68, line: 155, type: !2080)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2081 = !DILocalVariable(name: "shift", scope: !2070, file: !68, line: 157, type: !31)
!2082 = !DILocalVariable(name: "r", scope: !2070, file: !68, line: 158, type: !31)
!2083 = !DILocation(line: 0, scope: !2070)
!2084 = !DILocation(line: 156, column: 6, scope: !2070)
!2085 = !DILocation(line: 156, column: 62, scope: !2070)
!2086 = !DILocation(line: 156, column: 57, scope: !2070)
!2087 = !DILocation(line: 157, column: 15, scope: !2070)
!2088 = !DILocation(line: 158, column: 12, scope: !2070)
!2089 = !DILocation(line: 158, column: 15, scope: !2070)
!2090 = !DILocation(line: 158, column: 25, scope: !2070)
!2091 = !DILocation(line: 159, column: 13, scope: !2070)
!2092 = !DILocation(line: 159, column: 18, scope: !2070)
!2093 = !DILocation(line: 159, column: 23, scope: !2070)
!2094 = !DILocation(line: 159, column: 6, scope: !2070)
!2095 = !DILocation(line: 160, column: 3, scope: !2070)
!2096 = distinct !DISubprogram(name: "set_quoting_flags", scope: !68, file: !68, line: 168, type: !2097, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!31, !2035, !31}
!2099 = !{!2100, !2101, !2102}
!2100 = !DILocalVariable(name: "o", arg: 1, scope: !2096, file: !68, line: 168, type: !2035)
!2101 = !DILocalVariable(name: "i", arg: 2, scope: !2096, file: !68, line: 168, type: !31)
!2102 = !DILocalVariable(name: "r", scope: !2096, file: !68, line: 170, type: !31)
!2103 = !DILocation(line: 0, scope: !2096)
!2104 = !DILocation(line: 171, column: 8, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2096, file: !68, line: 171, column: 7)
!2106 = !DILocation(line: 171, column: 7, scope: !2096)
!2107 = !DILocation(line: 173, column: 10, scope: !2096)
!2108 = !{!2057, !751, i64 4}
!2109 = !DILocation(line: 174, column: 12, scope: !2096)
!2110 = !DILocation(line: 175, column: 3, scope: !2096)
!2111 = distinct !DISubprogram(name: "set_custom_quoting", scope: !68, file: !68, line: 179, type: !2112, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2035, !51, !51}
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "o", arg: 1, scope: !2111, file: !68, line: 179, type: !2035)
!2116 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2111, file: !68, line: 180, type: !51)
!2117 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2111, file: !68, line: 180, type: !51)
!2118 = !DILocation(line: 0, scope: !2111)
!2119 = !DILocation(line: 182, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2111, file: !68, line: 182, column: 7)
!2121 = !DILocation(line: 182, column: 7, scope: !2111)
!2122 = !DILocation(line: 184, column: 6, scope: !2111)
!2123 = !DILocation(line: 184, column: 12, scope: !2111)
!2124 = !DILocation(line: 185, column: 8, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2111, file: !68, line: 185, column: 7)
!2126 = !DILocation(line: 185, column: 19, scope: !2125)
!2127 = !DILocation(line: 186, column: 5, scope: !2125)
!2128 = !DILocation(line: 187, column: 6, scope: !2111)
!2129 = !DILocation(line: 187, column: 17, scope: !2111)
!2130 = !{!2057, !593, i64 40}
!2131 = !DILocation(line: 188, column: 6, scope: !2111)
!2132 = !DILocation(line: 188, column: 18, scope: !2111)
!2133 = !{!2057, !593, i64 48}
!2134 = !DILocation(line: 189, column: 1, scope: !2111)
!2135 = distinct !DISubprogram(name: "quotearg_buffer", scope: !68, file: !68, line: 784, type: !2136, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!90, !40, !90, !51, !90, !2049}
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2139 = !DILocalVariable(name: "buffer", arg: 1, scope: !2135, file: !68, line: 784, type: !40)
!2140 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2135, file: !68, line: 784, type: !90)
!2141 = !DILocalVariable(name: "arg", arg: 3, scope: !2135, file: !68, line: 785, type: !51)
!2142 = !DILocalVariable(name: "argsize", arg: 4, scope: !2135, file: !68, line: 785, type: !90)
!2143 = !DILocalVariable(name: "o", arg: 5, scope: !2135, file: !68, line: 786, type: !2049)
!2144 = !DILocalVariable(name: "p", scope: !2135, file: !68, line: 788, type: !2049)
!2145 = !DILocalVariable(name: "e", scope: !2135, file: !68, line: 789, type: !31)
!2146 = !DILocalVariable(name: "r", scope: !2135, file: !68, line: 790, type: !90)
!2147 = !DILocation(line: 0, scope: !2135)
!2148 = !DILocation(line: 788, column: 37, scope: !2135)
!2149 = !DILocation(line: 789, column: 11, scope: !2135)
!2150 = !DILocation(line: 791, column: 43, scope: !2135)
!2151 = !DILocation(line: 791, column: 53, scope: !2135)
!2152 = !DILocation(line: 791, column: 60, scope: !2135)
!2153 = !DILocation(line: 792, column: 43, scope: !2135)
!2154 = !DILocation(line: 792, column: 58, scope: !2135)
!2155 = !DILocation(line: 790, column: 14, scope: !2135)
!2156 = !DILocation(line: 793, column: 9, scope: !2135)
!2157 = !DILocation(line: 794, column: 3, scope: !2135)
!2158 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !68, file: !68, line: 256, type: !2159, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2163)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!90, !40, !90, !51, !90, !70, !31, !2161, !51, !51}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2188, !2189, !2190, !2191, !2192, !2195, !2196, !2214, !2217, !2218, !2225, !2228, !2229, !2230, !2231, !2232, !2233}
!2164 = !DILocalVariable(name: "buffer", arg: 1, scope: !2158, file: !68, line: 256, type: !40)
!2165 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2158, file: !68, line: 256, type: !90)
!2166 = !DILocalVariable(name: "arg", arg: 3, scope: !2158, file: !68, line: 257, type: !51)
!2167 = !DILocalVariable(name: "argsize", arg: 4, scope: !2158, file: !68, line: 257, type: !90)
!2168 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2158, file: !68, line: 258, type: !70)
!2169 = !DILocalVariable(name: "flags", arg: 6, scope: !2158, file: !68, line: 258, type: !31)
!2170 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2158, file: !68, line: 259, type: !2161)
!2171 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2158, file: !68, line: 260, type: !51)
!2172 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2158, file: !68, line: 261, type: !51)
!2173 = !DILocalVariable(name: "i", scope: !2158, file: !68, line: 263, type: !90)
!2174 = !DILocalVariable(name: "len", scope: !2158, file: !68, line: 264, type: !90)
!2175 = !DILocalVariable(name: "orig_buffersize", scope: !2158, file: !68, line: 265, type: !90)
!2176 = !DILocalVariable(name: "quote_string", scope: !2158, file: !68, line: 266, type: !51)
!2177 = !DILocalVariable(name: "quote_string_len", scope: !2158, file: !68, line: 267, type: !90)
!2178 = !DILocalVariable(name: "backslash_escapes", scope: !2158, file: !68, line: 268, type: !50)
!2179 = !DILocalVariable(name: "unibyte_locale", scope: !2158, file: !68, line: 269, type: !50)
!2180 = !DILocalVariable(name: "elide_outer_quotes", scope: !2158, file: !68, line: 270, type: !50)
!2181 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2158, file: !68, line: 271, type: !50)
!2182 = !DILocalVariable(name: "encountered_single_quote", scope: !2158, file: !68, line: 272, type: !50)
!2183 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2158, file: !68, line: 273, type: !50)
!2184 = !DILocalVariable(name: "c", scope: !2185, file: !68, line: 402, type: !2078)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !68, line: 401, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !68, line: 400, column: 3)
!2187 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 400, column: 3)
!2188 = !DILocalVariable(name: "esc", scope: !2185, file: !68, line: 403, type: !2078)
!2189 = !DILocalVariable(name: "is_right_quote", scope: !2185, file: !68, line: 404, type: !50)
!2190 = !DILocalVariable(name: "escaping", scope: !2185, file: !68, line: 405, type: !50)
!2191 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2185, file: !68, line: 406, type: !50)
!2192 = !DILocalVariable(name: "m", scope: !2193, file: !68, line: 610, type: !90)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 608, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 426, column: 9)
!2195 = !DILocalVariable(name: "printable", scope: !2193, file: !68, line: 612, type: !50)
!2196 = !DILocalVariable(name: "mbstate", scope: !2197, file: !68, line: 621, type: !2199)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !68, line: 620, column: 15)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !68, line: 614, column: 17)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2200, line: 6, baseType: !2201)
!2200 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2202, line: 21, baseType: !2203)
!2202 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2202, line: 13, size: 64, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2203, file: !2202, line: 15, baseType: !31, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2203, file: !2202, line: 20, baseType: !2207, size: 32, offset: 32)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2203, file: !2202, line: 16, size: 32, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2207, file: !2202, line: 18, baseType: !6, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2207, file: !2202, line: 19, baseType: !2211, size: 32)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !2212)
!2212 = !{!2213}
!2213 = !DISubrange(count: 4)
!2214 = !DILocalVariable(name: "w", scope: !2215, file: !68, line: 631, type: !2216)
!2215 = distinct !DILexicalBlock(scope: !2197, file: !68, line: 630, column: 19)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !91, line: 74, baseType: !31)
!2217 = !DILocalVariable(name: "bytes", scope: !2215, file: !68, line: 632, type: !90)
!2218 = !DILocalVariable(name: "j", scope: !2219, file: !68, line: 657, type: !90)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !68, line: 656, column: 27)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !68, line: 654, column: 29)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !68, line: 649, column: 23)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !68, line: 641, column: 30)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !68, line: 636, column: 30)
!2224 = distinct !DILexicalBlock(scope: !2215, file: !68, line: 634, column: 25)
!2225 = !DILocalVariable(name: "ilim", scope: !2226, file: !68, line: 684, type: !90)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !68, line: 681, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2193, file: !68, line: 680, column: 17)
!2228 = !DILabel(scope: !2158, name: "process_input", file: !68, line: 314)
!2229 = !DILabel(scope: !2194, name: "c_and_shell_escape", file: !68, line: 512)
!2230 = !DILabel(scope: !2194, name: "c_escape", file: !68, line: 517)
!2231 = !DILabel(scope: !2185, name: "store_escape", file: !68, line: 719)
!2232 = !DILabel(scope: !2185, name: "store_c", file: !68, line: 722)
!2233 = !DILabel(scope: !2158, name: "force_outer_quoting_style", file: !68, line: 763)
!2234 = !DILocation(line: 0, scope: !2158)
!2235 = !DILocation(line: 269, column: 25, scope: !2158)
!2236 = !DILocation(line: 269, column: 36, scope: !2158)
!2237 = !DILocation(line: 270, column: 8, scope: !2158)
!2238 = !DILocation(line: 273, column: 3, scope: !2158)
!2239 = !DILocation(line: 265, column: 10, scope: !2158)
!2240 = !DILocation(line: 266, column: 15, scope: !2158)
!2241 = !DILocation(line: 267, column: 10, scope: !2158)
!2242 = !DILocation(line: 268, column: 8, scope: !2158)
!2243 = !DILocation(line: 271, column: 8, scope: !2158)
!2244 = !DILocation(line: 272, column: 8, scope: !2158)
!2245 = !DILocation(line: 273, column: 8, scope: !2158)
!2246 = !DILocation(line: 314, column: 2, scope: !2158)
!2247 = !DILocation(line: 316, column: 3, scope: !2158)
!2248 = !DILocation(line: 323, column: 11, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 317, column: 5)
!2250 = !DILocation(line: 323, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !68, line: 323, column: 11)
!2252 = !DILocation(line: 324, column: 9, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !68, line: 324, column: 9)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !68, line: 324, column: 9)
!2255 = !DILocation(line: 324, column: 9, scope: !2254)
!2256 = !DILocation(line: 362, column: 26, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !68, line: 340, column: 11)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !68, line: 339, column: 13)
!2259 = distinct !DILexicalBlock(scope: !2249, file: !68, line: 338, column: 7)
!2260 = !DILocation(line: 363, column: 27, scope: !2257)
!2261 = !DILocation(line: 364, column: 11, scope: !2257)
!2262 = !DILocation(line: 365, column: 14, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !68, line: 365, column: 13)
!2264 = !DILocation(line: 365, column: 13, scope: !2259)
!2265 = !DILocation(line: 366, column: 43, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !68, line: 366, column: 11)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !68, line: 366, column: 11)
!2268 = !DILocation(line: 366, column: 11, scope: !2267)
!2269 = !DILocation(line: 367, column: 13, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !68, line: 367, column: 13)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !68, line: 367, column: 13)
!2272 = !DILocation(line: 367, column: 13, scope: !2271)
!2273 = !DILocation(line: 366, column: 70, scope: !2266)
!2274 = distinct !{!2274, !2268, !2275, !647}
!2275 = !DILocation(line: 367, column: 13, scope: !2267)
!2276 = !DILocation(line: 264, column: 10, scope: !2158)
!2277 = !DILocation(line: 370, column: 28, scope: !2259)
!2278 = !DILocation(line: 372, column: 7, scope: !2249)
!2279 = !DILocation(line: 376, column: 7, scope: !2249)
!2280 = !DILocation(line: 379, column: 7, scope: !2249)
!2281 = !DILocation(line: 381, column: 12, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2249, file: !68, line: 381, column: 11)
!2283 = !DILocation(line: 381, column: 11, scope: !2249)
!2284 = !DILocation(line: 386, column: 12, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2249, file: !68, line: 386, column: 11)
!2286 = !DILocation(line: 386, column: 11, scope: !2249)
!2287 = !DILocation(line: 387, column: 9, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !68, line: 387, column: 9)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !68, line: 387, column: 9)
!2290 = !DILocation(line: 387, column: 9, scope: !2289)
!2291 = !DILocation(line: 394, column: 7, scope: !2249)
!2292 = !DILocation(line: 397, column: 7, scope: !2249)
!2293 = !DILocation(line: 400, column: 8, scope: !2187)
!2294 = !DILocation(line: 0, scope: !2187)
!2295 = !DILocation(line: 400, column: 27, scope: !2186)
!2296 = !DILocation(line: 400, column: 19, scope: !2186)
!2297 = !DILocation(line: 400, column: 41, scope: !2186)
!2298 = !DILocation(line: 400, column: 48, scope: !2186)
!2299 = !DILocation(line: 400, column: 3, scope: !2187)
!2300 = !DILocation(line: 400, column: 60, scope: !2186)
!2301 = !DILocation(line: 0, scope: !2185)
!2302 = !DILocation(line: 409, column: 11, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 408, column: 11)
!2304 = !DILocation(line: 411, column: 17, scope: !2303)
!2305 = !DILocation(line: 412, column: 39, scope: !2303)
!2306 = !DILocation(line: 416, column: 32, scope: !2303)
!2307 = !DILocation(line: 412, column: 19, scope: !2303)
!2308 = !DILocation(line: 412, column: 15, scope: !2303)
!2309 = !DILocation(line: 417, column: 11, scope: !2303)
!2310 = !DILocation(line: 417, column: 26, scope: !2303)
!2311 = !DILocation(line: 417, column: 14, scope: !2303)
!2312 = !DILocation(line: 417, column: 63, scope: !2303)
!2313 = !DILocation(line: 408, column: 11, scope: !2185)
!2314 = !DILocation(line: 424, column: 11, scope: !2185)
!2315 = !DILocation(line: 425, column: 7, scope: !2185)
!2316 = !DILocation(line: 428, column: 15, scope: !2194)
!2317 = !DILocation(line: 430, column: 15, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !68, line: 430, column: 15)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !68, line: 429, column: 13)
!2320 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 428, column: 15)
!2321 = !DILocation(line: 430, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !68, line: 430, column: 15)
!2323 = !DILocation(line: 430, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !68, line: 430, column: 15)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !68, line: 430, column: 15)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !68, line: 430, column: 15)
!2327 = !DILocation(line: 430, column: 15, scope: !2325)
!2328 = !DILocation(line: 430, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !68, line: 430, column: 15)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !68, line: 430, column: 15)
!2331 = !DILocation(line: 430, column: 15, scope: !2330)
!2332 = !DILocation(line: 430, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !68, line: 430, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2326, file: !68, line: 430, column: 15)
!2335 = !DILocation(line: 430, column: 15, scope: !2334)
!2336 = !DILocation(line: 430, column: 15, scope: !2326)
!2337 = !DILocation(line: 430, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !68, line: 430, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2318, file: !68, line: 430, column: 15)
!2340 = !DILocation(line: 430, column: 15, scope: !2339)
!2341 = !DILocation(line: 438, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2319, file: !68, line: 437, column: 19)
!2343 = !DILocation(line: 438, column: 48, scope: !2342)
!2344 = !DILocation(line: 438, column: 59, scope: !2342)
!2345 = !DILocation(line: 440, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !68, line: 440, column: 19)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !68, line: 440, column: 19)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !68, line: 439, column: 17)
!2349 = !DILocation(line: 440, column: 19, scope: !2347)
!2350 = !DILocation(line: 441, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !68, line: 441, column: 19)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !68, line: 441, column: 19)
!2353 = !DILocation(line: 441, column: 19, scope: !2352)
!2354 = !DILocation(line: 442, column: 17, scope: !2348)
!2355 = !DILocation(line: 449, column: 20, scope: !2320)
!2356 = !DILocation(line: 454, column: 11, scope: !2194)
!2357 = !DILocation(line: 457, column: 19, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 455, column: 13)
!2359 = !DILocation(line: 463, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2358, file: !68, line: 462, column: 19)
!2361 = !DILocation(line: 463, column: 47, scope: !2360)
!2362 = !DILocation(line: 463, column: 41, scope: !2360)
!2363 = !DILocation(line: 463, column: 52, scope: !2360)
!2364 = !DILocation(line: 462, column: 19, scope: !2358)
!2365 = !DILocation(line: 464, column: 25, scope: !2360)
!2366 = !DILocation(line: 464, column: 17, scope: !2360)
!2367 = !DILocation(line: 471, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2360, file: !68, line: 465, column: 19)
!2369 = !DILocation(line: 475, column: 21, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !68, line: 475, column: 21)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !68, line: 475, column: 21)
!2372 = !DILocation(line: 475, column: 21, scope: !2371)
!2373 = !DILocation(line: 476, column: 21, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !68, line: 476, column: 21)
!2375 = distinct !DILexicalBlock(scope: !2368, file: !68, line: 476, column: 21)
!2376 = !DILocation(line: 476, column: 21, scope: !2375)
!2377 = !DILocation(line: 477, column: 21, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !68, line: 477, column: 21)
!2379 = distinct !DILexicalBlock(scope: !2368, file: !68, line: 477, column: 21)
!2380 = !DILocation(line: 477, column: 21, scope: !2379)
!2381 = !DILocation(line: 478, column: 21, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !68, line: 478, column: 21)
!2383 = distinct !DILexicalBlock(scope: !2368, file: !68, line: 478, column: 21)
!2384 = !DILocation(line: 478, column: 21, scope: !2383)
!2385 = !DILocation(line: 479, column: 21, scope: !2368)
!2386 = !DILocation(line: 492, column: 31, scope: !2194)
!2387 = !DILocation(line: 493, column: 31, scope: !2194)
!2388 = !DILocation(line: 495, column: 31, scope: !2194)
!2389 = !DILocation(line: 496, column: 31, scope: !2194)
!2390 = !DILocation(line: 497, column: 31, scope: !2194)
!2391 = !DILocation(line: 500, column: 15, scope: !2194)
!2392 = !DILocation(line: 502, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !68, line: 501, column: 13)
!2394 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 500, column: 15)
!2395 = !DILocation(line: 509, column: 33, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 509, column: 15)
!2397 = !DILocation(line: 0, scope: !2194)
!2398 = !DILocation(line: 512, column: 9, scope: !2194)
!2399 = !DILocation(line: 514, column: 15, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 513, column: 15)
!2401 = !DILocation(line: 517, column: 9, scope: !2194)
!2402 = !DILocation(line: 518, column: 15, scope: !2194)
!2403 = !DILocation(line: 526, column: 15, scope: !2194)
!2404 = !DILocation(line: 526, column: 40, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 526, column: 15)
!2406 = !DILocation(line: 526, column: 47, scope: !2405)
!2407 = !DILocation(line: 526, column: 18, scope: !2405)
!2408 = !DILocation(line: 530, column: 17, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 530, column: 15)
!2410 = !DILocation(line: 530, column: 15, scope: !2194)
!2411 = !DILocation(line: 535, column: 11, scope: !2194)
!2412 = !DILocation(line: 549, column: 15, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 548, column: 15)
!2414 = !DILocation(line: 556, column: 15, scope: !2194)
!2415 = !DILocation(line: 558, column: 19, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !68, line: 557, column: 13)
!2417 = distinct !DILexicalBlock(scope: !2194, file: !68, line: 556, column: 15)
!2418 = !DILocation(line: 561, column: 19, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !68, line: 561, column: 19)
!2420 = !DILocation(line: 561, column: 30, scope: !2419)
!2421 = !DILocation(line: 570, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !68, line: 570, column: 15)
!2423 = distinct !DILexicalBlock(scope: !2416, file: !68, line: 570, column: 15)
!2424 = !DILocation(line: 570, column: 15, scope: !2423)
!2425 = !DILocation(line: 571, column: 15, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !68, line: 571, column: 15)
!2427 = distinct !DILexicalBlock(scope: !2416, file: !68, line: 571, column: 15)
!2428 = !DILocation(line: 571, column: 15, scope: !2427)
!2429 = !DILocation(line: 572, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !68, line: 572, column: 15)
!2431 = distinct !DILexicalBlock(scope: !2416, file: !68, line: 572, column: 15)
!2432 = !DILocation(line: 572, column: 15, scope: !2431)
!2433 = !DILocation(line: 574, column: 13, scope: !2416)
!2434 = !DILocation(line: 614, column: 17, scope: !2193)
!2435 = !DILocation(line: 0, scope: !2193)
!2436 = !DILocation(line: 617, column: 29, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2198, file: !68, line: 615, column: 15)
!2438 = !DILocation(line: 617, column: 27, scope: !2437)
!2439 = !DILocation(line: 678, column: 40, scope: !2193)
!2440 = !DILocation(line: 680, column: 23, scope: !2227)
!2441 = !DILocation(line: 621, column: 17, scope: !2197)
!2442 = !DILocation(line: 621, column: 27, scope: !2197)
!2443 = !DILocalVariable(name: "__dest", arg: 1, scope: !2444, file: !2445, line: 57, type: !33)
!2444 = distinct !DISubprogram(name: "memset", scope: !2445, file: !2445, line: 57, type: !2446, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2448)
!2445 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!33, !33, !31, !90}
!2448 = !{!2443, !2449, !2450}
!2449 = !DILocalVariable(name: "__ch", arg: 2, scope: !2444, file: !2445, line: 57, type: !31)
!2450 = !DILocalVariable(name: "__len", arg: 3, scope: !2444, file: !2445, line: 57, type: !90)
!2451 = !DILocation(line: 0, scope: !2444, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 622, column: 17, scope: !2197)
!2453 = !DILocation(line: 59, column: 10, scope: !2444, inlinedAt: !2452)
!2454 = !DILocation(line: 626, column: 29, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2197, file: !68, line: 626, column: 21)
!2456 = !DILocation(line: 626, column: 21, scope: !2197)
!2457 = !DILocation(line: 627, column: 29, scope: !2455)
!2458 = !DILocation(line: 627, column: 19, scope: !2455)
!2459 = !DILocation(line: 629, column: 17, scope: !2197)
!2460 = !DILocation(line: 624, column: 19, scope: !2197)
!2461 = !DILocation(line: 625, column: 27, scope: !2197)
!2462 = !DILocation(line: 631, column: 21, scope: !2215)
!2463 = !DILocation(line: 632, column: 56, scope: !2215)
!2464 = !DILocation(line: 632, column: 50, scope: !2215)
!2465 = !DILocation(line: 633, column: 53, scope: !2215)
!2466 = !DILocation(line: 0, scope: !2215)
!2467 = !DILocation(line: 632, column: 36, scope: !2215)
!2468 = !DILocation(line: 634, column: 25, scope: !2215)
!2469 = !DILocation(line: 644, column: 38, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2222, file: !68, line: 642, column: 23)
!2471 = !DILocation(line: 644, column: 48, scope: !2470)
!2472 = !DILocation(line: 644, column: 25, scope: !2470)
!2473 = !DILocation(line: 644, column: 51, scope: !2470)
!2474 = !DILocation(line: 645, column: 28, scope: !2470)
!2475 = !DILocation(line: 644, column: 34, scope: !2470)
!2476 = distinct !{!2476, !2472, !2474, !647}
!2477 = !DILocation(line: 655, column: 29, scope: !2220)
!2478 = !DILocation(line: 0, scope: !2219)
!2479 = !DILocation(line: 659, column: 49, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !68, line: 658, column: 29)
!2481 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 658, column: 29)
!2482 = !DILocation(line: 659, column: 39, scope: !2480)
!2483 = !DILocation(line: 659, column: 31, scope: !2480)
!2484 = !DILocation(line: 658, column: 53, scope: !2480)
!2485 = !DILocation(line: 658, column: 43, scope: !2480)
!2486 = !DILocation(line: 658, column: 29, scope: !2481)
!2487 = distinct !{!2487, !2486, !2488, !647}
!2488 = !DILocation(line: 667, column: 33, scope: !2481)
!2489 = !DILocation(line: 674, column: 19, scope: !2197)
!2490 = !DILocation(line: 670, column: 41, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2221, file: !68, line: 670, column: 29)
!2492 = !DILocation(line: 670, column: 31, scope: !2491)
!2493 = !DILocation(line: 670, column: 29, scope: !2221)
!2494 = !DILocation(line: 672, column: 27, scope: !2221)
!2495 = !DILocation(line: 675, column: 26, scope: !2197)
!2496 = !DILocation(line: 675, column: 24, scope: !2197)
!2497 = !DILocation(line: 674, column: 19, scope: !2215)
!2498 = distinct !{!2498, !2459, !2499, !647}
!2499 = !DILocation(line: 675, column: 44, scope: !2197)
!2500 = !DILocation(line: 676, column: 15, scope: !2198)
!2501 = !DILocation(line: 680, column: 19, scope: !2227)
!2502 = !DILocation(line: 680, column: 45, scope: !2227)
!2503 = !DILocation(line: 684, column: 33, scope: !2226)
!2504 = !DILocation(line: 0, scope: !2226)
!2505 = !DILocation(line: 686, column: 17, scope: !2226)
!2506 = !DILocation(line: 405, column: 12, scope: !2185)
!2507 = !DILocation(line: 688, column: 43, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !68, line: 688, column: 25)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !68, line: 687, column: 19)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !68, line: 686, column: 17)
!2511 = distinct !DILexicalBlock(scope: !2226, file: !68, line: 686, column: 17)
!2512 = !DILocation(line: 690, column: 25, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !68, line: 690, column: 25)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !68, line: 689, column: 23)
!2515 = !DILocation(line: 690, column: 25, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !68, line: 690, column: 25)
!2517 = !DILocation(line: 690, column: 25, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !68, line: 690, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !68, line: 690, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !68, line: 690, column: 25)
!2521 = !DILocation(line: 690, column: 25, scope: !2519)
!2522 = !DILocation(line: 690, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !68, line: 690, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !68, line: 690, column: 25)
!2525 = !DILocation(line: 690, column: 25, scope: !2524)
!2526 = !DILocation(line: 690, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !68, line: 690, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2520, file: !68, line: 690, column: 25)
!2529 = !DILocation(line: 690, column: 25, scope: !2528)
!2530 = !DILocation(line: 690, column: 25, scope: !2520)
!2531 = !DILocation(line: 690, column: 25, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !68, line: 690, column: 25)
!2533 = distinct !DILexicalBlock(scope: !2513, file: !68, line: 690, column: 25)
!2534 = !DILocation(line: 690, column: 25, scope: !2533)
!2535 = !DILocation(line: 691, column: 25, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !68, line: 691, column: 25)
!2537 = distinct !DILexicalBlock(scope: !2514, file: !68, line: 691, column: 25)
!2538 = !DILocation(line: 691, column: 25, scope: !2537)
!2539 = !DILocation(line: 692, column: 25, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !68, line: 692, column: 25)
!2541 = distinct !DILexicalBlock(scope: !2514, file: !68, line: 692, column: 25)
!2542 = !DILocation(line: 692, column: 25, scope: !2541)
!2543 = !DILocation(line: 693, column: 38, scope: !2514)
!2544 = !DILocation(line: 693, column: 33, scope: !2514)
!2545 = !DILocation(line: 694, column: 23, scope: !2514)
!2546 = !DILocation(line: 695, column: 30, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2508, file: !68, line: 695, column: 30)
!2548 = !DILocation(line: 695, column: 30, scope: !2508)
!2549 = !DILocation(line: 697, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !68, line: 697, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !68, line: 697, column: 25)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !68, line: 696, column: 23)
!2553 = !DILocation(line: 697, column: 25, scope: !2551)
!2554 = !DILocation(line: 699, column: 23, scope: !2552)
!2555 = !DILocation(line: 700, column: 35, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2509, file: !68, line: 700, column: 25)
!2557 = !DILocation(line: 700, column: 30, scope: !2556)
!2558 = !DILocation(line: 700, column: 25, scope: !2509)
!2559 = !DILocation(line: 702, column: 21, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !68, line: 702, column: 21)
!2561 = distinct !DILexicalBlock(scope: !2509, file: !68, line: 702, column: 21)
!2562 = !DILocation(line: 702, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !68, line: 702, column: 21)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !68, line: 702, column: 21)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !68, line: 702, column: 21)
!2566 = !DILocation(line: 702, column: 21, scope: !2564)
!2567 = !DILocation(line: 702, column: 21, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !68, line: 702, column: 21)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !68, line: 702, column: 21)
!2570 = !DILocation(line: 702, column: 21, scope: !2569)
!2571 = !DILocation(line: 702, column: 21, scope: !2565)
!2572 = !DILocation(line: 0, scope: !2509)
!2573 = !DILocation(line: 703, column: 21, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !68, line: 703, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2509, file: !68, line: 703, column: 21)
!2576 = !DILocation(line: 703, column: 21, scope: !2575)
!2577 = !DILocation(line: 704, column: 25, scope: !2509)
!2578 = !DILocation(line: 686, column: 17, scope: !2510)
!2579 = distinct !{!2579, !2580, !2581}
!2580 = !DILocation(line: 686, column: 17, scope: !2511)
!2581 = !DILocation(line: 705, column: 19, scope: !2511)
!2582 = !DILocation(line: 416, column: 30, scope: !2303)
!2583 = !DILocation(line: 712, column: 34, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 712, column: 11)
!2585 = !DILocation(line: 715, column: 35, scope: !2584)
!2586 = !DILocation(line: 715, column: 17, scope: !2584)
!2587 = !DILocation(line: 715, column: 47, scope: !2584)
!2588 = !DILocation(line: 715, column: 65, scope: !2584)
!2589 = !DILocation(line: 716, column: 11, scope: !2584)
!2590 = !DILocation(line: 712, column: 11, scope: !2185)
!2591 = !DILocation(line: 400, column: 10, scope: !2187)
!2592 = !DILocation(line: 719, column: 5, scope: !2185)
!2593 = !DILocation(line: 720, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 720, column: 7)
!2595 = !DILocation(line: 720, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2594, file: !68, line: 720, column: 7)
!2597 = !DILocation(line: 720, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !68, line: 720, column: 7)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !68, line: 720, column: 7)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !68, line: 720, column: 7)
!2601 = !DILocation(line: 720, column: 7, scope: !2599)
!2602 = !DILocation(line: 720, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !68, line: 720, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !68, line: 720, column: 7)
!2605 = !DILocation(line: 720, column: 7, scope: !2604)
!2606 = !DILocation(line: 720, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !68, line: 720, column: 7)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !68, line: 720, column: 7)
!2609 = !DILocation(line: 720, column: 7, scope: !2608)
!2610 = !DILocation(line: 720, column: 7, scope: !2600)
!2611 = !DILocation(line: 720, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !68, line: 720, column: 7)
!2613 = distinct !DILexicalBlock(scope: !2594, file: !68, line: 720, column: 7)
!2614 = !DILocation(line: 720, column: 7, scope: !2613)
!2615 = !DILocation(line: 722, column: 5, scope: !2185)
!2616 = !DILocation(line: 723, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !68, line: 723, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 723, column: 7)
!2619 = !DILocation(line: 424, column: 9, scope: !2185)
!2620 = !DILocation(line: 723, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !68, line: 723, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !68, line: 723, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !68, line: 723, column: 7)
!2624 = !DILocation(line: 723, column: 7, scope: !2622)
!2625 = !DILocation(line: 723, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !68, line: 723, column: 7)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !68, line: 723, column: 7)
!2628 = !DILocation(line: 723, column: 7, scope: !2627)
!2629 = !DILocation(line: 723, column: 7, scope: !2623)
!2630 = !DILocation(line: 724, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !68, line: 724, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 724, column: 7)
!2633 = !DILocation(line: 724, column: 7, scope: !2632)
!2634 = !DILocation(line: 726, column: 13, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2185, file: !68, line: 726, column: 11)
!2636 = !DILocation(line: 726, column: 11, scope: !2185)
!2637 = !DILocation(line: 728, column: 5, scope: !2186)
!2638 = !DILocation(line: 400, column: 75, scope: !2186)
!2639 = !DILocation(line: 400, column: 3, scope: !2186)
!2640 = distinct !{!2640, !2299, !2641, !647}
!2641 = !DILocation(line: 728, column: 5, scope: !2187)
!2642 = !DILocation(line: 730, column: 11, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 730, column: 7)
!2644 = !DILocation(line: 730, column: 16, scope: !2643)
!2645 = !DILocation(line: 738, column: 51, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 738, column: 7)
!2647 = !DILocation(line: 741, column: 11, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !68, line: 741, column: 11)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !68, line: 740, column: 5)
!2650 = !DILocation(line: 741, column: 11, scope: !2649)
!2651 = !DILocation(line: 742, column: 16, scope: !2648)
!2652 = !DILocation(line: 742, column: 9, scope: !2648)
!2653 = !DILocation(line: 746, column: 18, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2648, file: !68, line: 746, column: 16)
!2655 = !DILocation(line: 746, column: 29, scope: !2654)
!2656 = !DILocation(line: 755, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 755, column: 7)
!2658 = !DILocation(line: 755, column: 20, scope: !2657)
!2659 = !DILocation(line: 756, column: 12, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !68, line: 756, column: 5)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !68, line: 756, column: 5)
!2662 = !DILocation(line: 756, column: 5, scope: !2661)
!2663 = !DILocation(line: 757, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !68, line: 757, column: 7)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !68, line: 757, column: 7)
!2666 = !DILocation(line: 757, column: 7, scope: !2665)
!2667 = !DILocation(line: 756, column: 39, scope: !2660)
!2668 = distinct !{!2668, !2662, !2669, !647}
!2669 = !DILocation(line: 757, column: 7, scope: !2661)
!2670 = !DILocation(line: 759, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 759, column: 7)
!2672 = !DILocation(line: 759, column: 7, scope: !2158)
!2673 = !DILocation(line: 760, column: 5, scope: !2671)
!2674 = !DILocation(line: 760, column: 17, scope: !2671)
!2675 = !DILocation(line: 763, column: 2, scope: !2158)
!2676 = !DILocation(line: 766, column: 51, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2158, file: !68, line: 766, column: 7)
!2678 = !DILocation(line: 766, column: 21, scope: !2677)
!2679 = !DILocation(line: 770, column: 42, scope: !2158)
!2680 = !DILocation(line: 768, column: 10, scope: !2158)
!2681 = !DILocation(line: 768, column: 3, scope: !2158)
!2682 = !DILocation(line: 772, column: 1, scope: !2158)
!2683 = distinct !DISubprogram(name: "gettext_quote", scope: !68, file: !68, line: 207, type: !2684, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!51, !51, !70}
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "msgid", arg: 1, scope: !2683, file: !68, line: 207, type: !51)
!2688 = !DILocalVariable(name: "s", arg: 2, scope: !2683, file: !68, line: 207, type: !70)
!2689 = !DILocalVariable(name: "translation", scope: !2683, file: !68, line: 209, type: !51)
!2690 = !DILocalVariable(name: "locale_code", scope: !2683, file: !68, line: 210, type: !51)
!2691 = !DILocation(line: 0, scope: !2683)
!2692 = !DILocation(line: 209, column: 29, scope: !2683)
!2693 = !DILocation(line: 212, column: 19, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2683, file: !68, line: 212, column: 7)
!2695 = !DILocation(line: 212, column: 7, scope: !2683)
!2696 = !DILocation(line: 233, column: 17, scope: !2683)
!2697 = !DILocalVariable(name: "s1", arg: 1, scope: !2698, file: !2699, line: 160, type: !51)
!2698 = distinct !DISubprogram(name: "strcaseeq0", scope: !2699, file: !2699, line: 160, type: !2700, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2702)
!2699 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!31, !51, !51, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2702 = !{!2697, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2703 = !DILocalVariable(name: "s2", arg: 2, scope: !2698, file: !2699, line: 160, type: !51)
!2704 = !DILocalVariable(name: "s20", arg: 3, scope: !2698, file: !2699, line: 160, type: !41)
!2705 = !DILocalVariable(name: "s21", arg: 4, scope: !2698, file: !2699, line: 160, type: !41)
!2706 = !DILocalVariable(name: "s22", arg: 5, scope: !2698, file: !2699, line: 160, type: !41)
!2707 = !DILocalVariable(name: "s23", arg: 6, scope: !2698, file: !2699, line: 160, type: !41)
!2708 = !DILocalVariable(name: "s24", arg: 7, scope: !2698, file: !2699, line: 160, type: !41)
!2709 = !DILocalVariable(name: "s25", arg: 8, scope: !2698, file: !2699, line: 160, type: !41)
!2710 = !DILocalVariable(name: "s26", arg: 9, scope: !2698, file: !2699, line: 160, type: !41)
!2711 = !DILocalVariable(name: "s27", arg: 10, scope: !2698, file: !2699, line: 160, type: !41)
!2712 = !DILocalVariable(name: "s28", arg: 11, scope: !2698, file: !2699, line: 160, type: !41)
!2713 = !DILocation(line: 0, scope: !2698, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 234, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2683, file: !68, line: 234, column: 7)
!2716 = !DILocation(line: 162, column: 7, scope: !2717, inlinedAt: !2714)
!2717 = distinct !DILexicalBlock(scope: !2698, file: !2699, line: 162, column: 7)
!2718 = !DILocalVariable(name: "s1", arg: 1, scope: !2719, file: !2699, line: 146, type: !51)
!2719 = distinct !DISubprogram(name: "strcaseeq1", scope: !2699, file: !2699, line: 146, type: !2720, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!31, !51, !51, !41, !41, !41, !41, !41, !41, !41, !41}
!2722 = !{!2718, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731}
!2723 = !DILocalVariable(name: "s2", arg: 2, scope: !2719, file: !2699, line: 146, type: !51)
!2724 = !DILocalVariable(name: "s21", arg: 3, scope: !2719, file: !2699, line: 146, type: !41)
!2725 = !DILocalVariable(name: "s22", arg: 4, scope: !2719, file: !2699, line: 146, type: !41)
!2726 = !DILocalVariable(name: "s23", arg: 5, scope: !2719, file: !2699, line: 146, type: !41)
!2727 = !DILocalVariable(name: "s24", arg: 6, scope: !2719, file: !2699, line: 146, type: !41)
!2728 = !DILocalVariable(name: "s25", arg: 7, scope: !2719, file: !2699, line: 146, type: !41)
!2729 = !DILocalVariable(name: "s26", arg: 8, scope: !2719, file: !2699, line: 146, type: !41)
!2730 = !DILocalVariable(name: "s27", arg: 9, scope: !2719, file: !2699, line: 146, type: !41)
!2731 = !DILocalVariable(name: "s28", arg: 10, scope: !2719, file: !2699, line: 146, type: !41)
!2732 = !DILocation(line: 0, scope: !2719, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 167, column: 16, scope: !2734, inlinedAt: !2714)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2699, line: 164, column: 11)
!2735 = distinct !DILexicalBlock(scope: !2717, file: !2699, line: 163, column: 5)
!2736 = !DILocation(line: 148, column: 7, scope: !2737, inlinedAt: !2733)
!2737 = distinct !DILexicalBlock(scope: !2719, file: !2699, line: 148, column: 7)
!2738 = !DILocalVariable(name: "s1", arg: 1, scope: !2739, file: !2699, line: 132, type: !51)
!2739 = distinct !DISubprogram(name: "strcaseeq2", scope: !2699, file: !2699, line: 132, type: !2740, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!31, !51, !51, !41, !41, !41, !41, !41, !41, !41}
!2742 = !{!2738, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2743 = !DILocalVariable(name: "s2", arg: 2, scope: !2739, file: !2699, line: 132, type: !51)
!2744 = !DILocalVariable(name: "s22", arg: 3, scope: !2739, file: !2699, line: 132, type: !41)
!2745 = !DILocalVariable(name: "s23", arg: 4, scope: !2739, file: !2699, line: 132, type: !41)
!2746 = !DILocalVariable(name: "s24", arg: 5, scope: !2739, file: !2699, line: 132, type: !41)
!2747 = !DILocalVariable(name: "s25", arg: 6, scope: !2739, file: !2699, line: 132, type: !41)
!2748 = !DILocalVariable(name: "s26", arg: 7, scope: !2739, file: !2699, line: 132, type: !41)
!2749 = !DILocalVariable(name: "s27", arg: 8, scope: !2739, file: !2699, line: 132, type: !41)
!2750 = !DILocalVariable(name: "s28", arg: 9, scope: !2739, file: !2699, line: 132, type: !41)
!2751 = !DILocation(line: 0, scope: !2739, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 153, column: 16, scope: !2753, inlinedAt: !2733)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !2699, line: 150, column: 11)
!2754 = distinct !DILexicalBlock(scope: !2737, file: !2699, line: 149, column: 5)
!2755 = !DILocation(line: 134, column: 7, scope: !2756, inlinedAt: !2752)
!2756 = distinct !DILexicalBlock(scope: !2739, file: !2699, line: 134, column: 7)
!2757 = !DILocalVariable(name: "s1", arg: 1, scope: !2758, file: !2699, line: 118, type: !51)
!2758 = distinct !DISubprogram(name: "strcaseeq3", scope: !2699, file: !2699, line: 118, type: !2759, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!31, !51, !51, !41, !41, !41, !41, !41, !41}
!2761 = !{!2757, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2762 = !DILocalVariable(name: "s2", arg: 2, scope: !2758, file: !2699, line: 118, type: !51)
!2763 = !DILocalVariable(name: "s23", arg: 3, scope: !2758, file: !2699, line: 118, type: !41)
!2764 = !DILocalVariable(name: "s24", arg: 4, scope: !2758, file: !2699, line: 118, type: !41)
!2765 = !DILocalVariable(name: "s25", arg: 5, scope: !2758, file: !2699, line: 118, type: !41)
!2766 = !DILocalVariable(name: "s26", arg: 6, scope: !2758, file: !2699, line: 118, type: !41)
!2767 = !DILocalVariable(name: "s27", arg: 7, scope: !2758, file: !2699, line: 118, type: !41)
!2768 = !DILocalVariable(name: "s28", arg: 8, scope: !2758, file: !2699, line: 118, type: !41)
!2769 = !DILocation(line: 0, scope: !2758, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 139, column: 16, scope: !2771, inlinedAt: !2752)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !2699, line: 136, column: 11)
!2772 = distinct !DILexicalBlock(scope: !2756, file: !2699, line: 135, column: 5)
!2773 = !DILocation(line: 120, column: 7, scope: !2774, inlinedAt: !2770)
!2774 = distinct !DILexicalBlock(scope: !2758, file: !2699, line: 120, column: 7)
!2775 = !DILocation(line: 120, column: 7, scope: !2758, inlinedAt: !2770)
!2776 = !DILocalVariable(name: "s1", arg: 1, scope: !2777, file: !2699, line: 104, type: !51)
!2777 = distinct !DISubprogram(name: "strcaseeq4", scope: !2699, file: !2699, line: 104, type: !2778, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!31, !51, !51, !41, !41, !41, !41, !41}
!2780 = !{!2776, !2781, !2782, !2783, !2784, !2785, !2786}
!2781 = !DILocalVariable(name: "s2", arg: 2, scope: !2777, file: !2699, line: 104, type: !51)
!2782 = !DILocalVariable(name: "s24", arg: 3, scope: !2777, file: !2699, line: 104, type: !41)
!2783 = !DILocalVariable(name: "s25", arg: 4, scope: !2777, file: !2699, line: 104, type: !41)
!2784 = !DILocalVariable(name: "s26", arg: 5, scope: !2777, file: !2699, line: 104, type: !41)
!2785 = !DILocalVariable(name: "s27", arg: 6, scope: !2777, file: !2699, line: 104, type: !41)
!2786 = !DILocalVariable(name: "s28", arg: 7, scope: !2777, file: !2699, line: 104, type: !41)
!2787 = !DILocation(line: 0, scope: !2777, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 125, column: 16, scope: !2789, inlinedAt: !2770)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !2699, line: 122, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2774, file: !2699, line: 121, column: 5)
!2791 = !DILocation(line: 106, column: 7, scope: !2792, inlinedAt: !2788)
!2792 = distinct !DILexicalBlock(scope: !2777, file: !2699, line: 106, column: 7)
!2793 = !DILocation(line: 106, column: 7, scope: !2777, inlinedAt: !2788)
!2794 = !DILocalVariable(name: "s1", arg: 1, scope: !2795, file: !2699, line: 90, type: !51)
!2795 = distinct !DISubprogram(name: "strcaseeq5", scope: !2699, file: !2699, line: 90, type: !2796, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!31, !51, !51, !41, !41, !41, !41}
!2798 = !{!2794, !2799, !2800, !2801, !2802, !2803}
!2799 = !DILocalVariable(name: "s2", arg: 2, scope: !2795, file: !2699, line: 90, type: !51)
!2800 = !DILocalVariable(name: "s25", arg: 3, scope: !2795, file: !2699, line: 90, type: !41)
!2801 = !DILocalVariable(name: "s26", arg: 4, scope: !2795, file: !2699, line: 90, type: !41)
!2802 = !DILocalVariable(name: "s27", arg: 5, scope: !2795, file: !2699, line: 90, type: !41)
!2803 = !DILocalVariable(name: "s28", arg: 6, scope: !2795, file: !2699, line: 90, type: !41)
!2804 = !DILocation(line: 0, scope: !2795, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 111, column: 16, scope: !2806, inlinedAt: !2788)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !2699, line: 108, column: 11)
!2807 = distinct !DILexicalBlock(scope: !2792, file: !2699, line: 107, column: 5)
!2808 = !DILocation(line: 92, column: 7, scope: !2809, inlinedAt: !2805)
!2809 = distinct !DILexicalBlock(scope: !2795, file: !2699, line: 92, column: 7)
!2810 = !DILocation(line: 92, column: 7, scope: !2795, inlinedAt: !2805)
!2811 = !DILocation(line: 235, column: 12, scope: !2715)
!2812 = !DILocation(line: 235, column: 21, scope: !2715)
!2813 = !DILocation(line: 235, column: 5, scope: !2715)
!2814 = !DILocation(line: 0, scope: !2719, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 167, column: 16, scope: !2734, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 236, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2683, file: !68, line: 236, column: 7)
!2818 = !DILocation(line: 148, column: 7, scope: !2737, inlinedAt: !2815)
!2819 = !DILocation(line: 0, scope: !2739, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 153, column: 16, scope: !2753, inlinedAt: !2815)
!2821 = !DILocation(line: 134, column: 7, scope: !2756, inlinedAt: !2820)
!2822 = !DILocation(line: 134, column: 7, scope: !2739, inlinedAt: !2820)
!2823 = !DILocation(line: 0, scope: !2758, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 139, column: 16, scope: !2771, inlinedAt: !2820)
!2825 = !DILocation(line: 120, column: 7, scope: !2774, inlinedAt: !2824)
!2826 = !DILocation(line: 120, column: 7, scope: !2758, inlinedAt: !2824)
!2827 = !DILocation(line: 0, scope: !2777, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 125, column: 16, scope: !2789, inlinedAt: !2824)
!2829 = !DILocation(line: 106, column: 7, scope: !2792, inlinedAt: !2828)
!2830 = !DILocation(line: 106, column: 7, scope: !2777, inlinedAt: !2828)
!2831 = !DILocation(line: 0, scope: !2795, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 111, column: 16, scope: !2806, inlinedAt: !2828)
!2833 = !DILocation(line: 92, column: 7, scope: !2809, inlinedAt: !2832)
!2834 = !DILocation(line: 92, column: 7, scope: !2795, inlinedAt: !2832)
!2835 = !DILocalVariable(name: "s1", arg: 1, scope: !2836, file: !2699, line: 76, type: !51)
!2836 = distinct !DISubprogram(name: "strcaseeq6", scope: !2699, file: !2699, line: 76, type: !2837, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!31, !51, !51, !41, !41, !41}
!2839 = !{!2835, !2840, !2841, !2842, !2843}
!2840 = !DILocalVariable(name: "s2", arg: 2, scope: !2836, file: !2699, line: 76, type: !51)
!2841 = !DILocalVariable(name: "s26", arg: 3, scope: !2836, file: !2699, line: 76, type: !41)
!2842 = !DILocalVariable(name: "s27", arg: 4, scope: !2836, file: !2699, line: 76, type: !41)
!2843 = !DILocalVariable(name: "s28", arg: 5, scope: !2836, file: !2699, line: 76, type: !41)
!2844 = !DILocation(line: 0, scope: !2836, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 97, column: 16, scope: !2846, inlinedAt: !2832)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !2699, line: 94, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2809, file: !2699, line: 93, column: 5)
!2848 = !DILocation(line: 78, column: 7, scope: !2849, inlinedAt: !2845)
!2849 = distinct !DILexicalBlock(scope: !2836, file: !2699, line: 78, column: 7)
!2850 = !DILocation(line: 78, column: 7, scope: !2836, inlinedAt: !2845)
!2851 = !DILocalVariable(name: "s1", arg: 1, scope: !2852, file: !2699, line: 62, type: !51)
!2852 = distinct !DISubprogram(name: "strcaseeq7", scope: !2699, file: !2699, line: 62, type: !2853, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!31, !51, !51, !41, !41}
!2855 = !{!2851, !2856, !2857, !2858}
!2856 = !DILocalVariable(name: "s2", arg: 2, scope: !2852, file: !2699, line: 62, type: !51)
!2857 = !DILocalVariable(name: "s27", arg: 3, scope: !2852, file: !2699, line: 62, type: !41)
!2858 = !DILocalVariable(name: "s28", arg: 4, scope: !2852, file: !2699, line: 62, type: !41)
!2859 = !DILocation(line: 0, scope: !2852, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 83, column: 16, scope: !2861, inlinedAt: !2845)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !2699, line: 80, column: 11)
!2862 = distinct !DILexicalBlock(scope: !2849, file: !2699, line: 79, column: 5)
!2863 = !DILocation(line: 64, column: 7, scope: !2864, inlinedAt: !2860)
!2864 = distinct !DILexicalBlock(scope: !2852, file: !2699, line: 64, column: 7)
!2865 = !DILocation(line: 236, column: 7, scope: !2683)
!2866 = !DILocation(line: 237, column: 12, scope: !2817)
!2867 = !DILocation(line: 237, column: 21, scope: !2817)
!2868 = !DILocation(line: 237, column: 5, scope: !2817)
!2869 = !DILocation(line: 239, column: 13, scope: !2683)
!2870 = !DILocation(line: 239, column: 11, scope: !2683)
!2871 = !DILocation(line: 239, column: 3, scope: !2683)
!2872 = !DILocation(line: 240, column: 1, scope: !2683)
!2873 = !DISubprogram(name: "iswprint", scope: !2874, file: !2874, line: 120, type: !2875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!2874 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!31, !6}
!2877 = !DISubprogram(name: "mbsinit", scope: !2878, file: !2878, line: 292, type: !2879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!2878 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!31, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2883 = distinct !DISubprogram(name: "quotearg_alloc", scope: !68, file: !68, line: 799, type: !2884, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!40, !51, !90, !2049}
!2886 = !{!2887, !2888, !2889}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !68, line: 799, type: !51)
!2888 = !DILocalVariable(name: "argsize", arg: 2, scope: !2883, file: !68, line: 799, type: !90)
!2889 = !DILocalVariable(name: "o", arg: 3, scope: !2883, file: !68, line: 800, type: !2049)
!2890 = !DILocation(line: 0, scope: !2883)
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2892, file: !68, line: 812, type: !51)
!2892 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !68, file: !68, line: 812, type: !2893, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!40, !51, !90, !154, !2049}
!2895 = !{!2891, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2896 = !DILocalVariable(name: "argsize", arg: 2, scope: !2892, file: !68, line: 812, type: !90)
!2897 = !DILocalVariable(name: "size", arg: 3, scope: !2892, file: !68, line: 812, type: !154)
!2898 = !DILocalVariable(name: "o", arg: 4, scope: !2892, file: !68, line: 813, type: !2049)
!2899 = !DILocalVariable(name: "p", scope: !2892, file: !68, line: 815, type: !2049)
!2900 = !DILocalVariable(name: "e", scope: !2892, file: !68, line: 816, type: !31)
!2901 = !DILocalVariable(name: "flags", scope: !2892, file: !68, line: 818, type: !31)
!2902 = !DILocalVariable(name: "bufsize", scope: !2892, file: !68, line: 819, type: !90)
!2903 = !DILocalVariable(name: "buf", scope: !2892, file: !68, line: 823, type: !40)
!2904 = !DILocation(line: 0, scope: !2892, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 802, column: 10, scope: !2883)
!2906 = !DILocation(line: 815, column: 37, scope: !2892, inlinedAt: !2905)
!2907 = !DILocation(line: 816, column: 11, scope: !2892, inlinedAt: !2905)
!2908 = !DILocation(line: 818, column: 18, scope: !2892, inlinedAt: !2905)
!2909 = !DILocation(line: 818, column: 24, scope: !2892, inlinedAt: !2905)
!2910 = !DILocation(line: 819, column: 69, scope: !2892, inlinedAt: !2905)
!2911 = !DILocation(line: 820, column: 53, scope: !2892, inlinedAt: !2905)
!2912 = !DILocation(line: 821, column: 49, scope: !2892, inlinedAt: !2905)
!2913 = !DILocation(line: 822, column: 49, scope: !2892, inlinedAt: !2905)
!2914 = !DILocation(line: 819, column: 20, scope: !2892, inlinedAt: !2905)
!2915 = !DILocation(line: 822, column: 62, scope: !2892, inlinedAt: !2905)
!2916 = !DILocalVariable(name: "n", arg: 1, scope: !2917, file: !150, line: 216, type: !90)
!2917 = distinct !DISubprogram(name: "xcharalloc", scope: !150, file: !150, line: 216, type: !2918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!40, !90}
!2920 = !{!2916}
!2921 = !DILocation(line: 0, scope: !2917, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 823, column: 15, scope: !2892, inlinedAt: !2905)
!2923 = !DILocation(line: 218, column: 10, scope: !2917, inlinedAt: !2922)
!2924 = !DILocation(line: 824, column: 60, scope: !2892, inlinedAt: !2905)
!2925 = !DILocation(line: 826, column: 32, scope: !2892, inlinedAt: !2905)
!2926 = !DILocation(line: 826, column: 47, scope: !2892, inlinedAt: !2905)
!2927 = !DILocation(line: 824, column: 3, scope: !2892, inlinedAt: !2905)
!2928 = !DILocation(line: 827, column: 9, scope: !2892, inlinedAt: !2905)
!2929 = !DILocation(line: 802, column: 3, scope: !2883)
!2930 = !DILocation(line: 0, scope: !2892)
!2931 = !DILocation(line: 815, column: 37, scope: !2892)
!2932 = !DILocation(line: 816, column: 11, scope: !2892)
!2933 = !DILocation(line: 818, column: 18, scope: !2892)
!2934 = !DILocation(line: 818, column: 27, scope: !2892)
!2935 = !DILocation(line: 818, column: 24, scope: !2892)
!2936 = !DILocation(line: 819, column: 69, scope: !2892)
!2937 = !DILocation(line: 820, column: 53, scope: !2892)
!2938 = !DILocation(line: 821, column: 49, scope: !2892)
!2939 = !DILocation(line: 822, column: 49, scope: !2892)
!2940 = !DILocation(line: 819, column: 20, scope: !2892)
!2941 = !DILocation(line: 822, column: 62, scope: !2892)
!2942 = !DILocation(line: 0, scope: !2917, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 823, column: 15, scope: !2892)
!2944 = !DILocation(line: 218, column: 10, scope: !2917, inlinedAt: !2943)
!2945 = !DILocation(line: 824, column: 60, scope: !2892)
!2946 = !DILocation(line: 826, column: 32, scope: !2892)
!2947 = !DILocation(line: 826, column: 47, scope: !2892)
!2948 = !DILocation(line: 824, column: 3, scope: !2892)
!2949 = !DILocation(line: 827, column: 9, scope: !2892)
!2950 = !DILocation(line: 828, column: 7, scope: !2892)
!2951 = !DILocation(line: 829, column: 11, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2892, file: !68, line: 828, column: 7)
!2953 = !DILocation(line: 829, column: 5, scope: !2952)
!2954 = !DILocation(line: 830, column: 3, scope: !2892)
!2955 = distinct !DISubprogram(name: "quotearg_free", scope: !68, file: !68, line: 848, type: !784, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2956)
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "sv", scope: !2955, file: !68, line: 850, type: !121)
!2958 = !DILocalVariable(name: "i", scope: !2955, file: !68, line: 851, type: !31)
!2959 = !DILocation(line: 850, column: 24, scope: !2955)
!2960 = !DILocation(line: 0, scope: !2955)
!2961 = !DILocation(line: 852, column: 19, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !68, line: 852, column: 3)
!2963 = distinct !DILexicalBlock(scope: !2955, file: !68, line: 852, column: 3)
!2964 = !DILocation(line: 852, column: 17, scope: !2962)
!2965 = !DILocation(line: 852, column: 3, scope: !2963)
!2966 = !DILocation(line: 853, column: 17, scope: !2962)
!2967 = !{!2968, !593, i64 8}
!2968 = !{!"slotvec", !1097, i64 0, !593, i64 8}
!2969 = !DILocation(line: 853, column: 5, scope: !2962)
!2970 = !DILocation(line: 852, column: 28, scope: !2962)
!2971 = distinct !{!2971, !2965, !2972, !647}
!2972 = !DILocation(line: 853, column: 20, scope: !2963)
!2973 = !DILocation(line: 854, column: 13, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2955, file: !68, line: 854, column: 7)
!2975 = !DILocation(line: 854, column: 17, scope: !2974)
!2976 = !DILocation(line: 854, column: 7, scope: !2955)
!2977 = !DILocation(line: 856, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !68, line: 855, column: 5)
!2979 = !DILocation(line: 857, column: 21, scope: !2978)
!2980 = !{!2968, !1097, i64 0}
!2981 = !DILocation(line: 858, column: 20, scope: !2978)
!2982 = !DILocation(line: 859, column: 5, scope: !2978)
!2983 = !DILocation(line: 860, column: 10, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2955, file: !68, line: 860, column: 7)
!2985 = !DILocation(line: 860, column: 7, scope: !2955)
!2986 = !DILocation(line: 862, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !68, line: 861, column: 5)
!2988 = !DILocation(line: 862, column: 7, scope: !2987)
!2989 = !DILocation(line: 863, column: 15, scope: !2987)
!2990 = !DILocation(line: 864, column: 5, scope: !2987)
!2991 = !DILocation(line: 865, column: 10, scope: !2955)
!2992 = !DILocation(line: 866, column: 1, scope: !2955)
!2993 = distinct !DISubprogram(name: "quotearg_n", scope: !68, file: !68, line: 931, type: !728, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2994)
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !68, line: 931, type: !31)
!2996 = !DILocalVariable(name: "arg", arg: 2, scope: !2993, file: !68, line: 931, type: !51)
!2997 = !DILocation(line: 0, scope: !2993)
!2998 = !DILocation(line: 933, column: 10, scope: !2993)
!2999 = !DILocation(line: 933, column: 3, scope: !2993)
!3000 = distinct !DISubprogram(name: "quotearg_n_options", scope: !68, file: !68, line: 877, type: !3001, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!40, !31, !51, !90, !2049}
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3016, !3017, !3018}
!3004 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !68, line: 877, type: !31)
!3005 = !DILocalVariable(name: "arg", arg: 2, scope: !3000, file: !68, line: 877, type: !51)
!3006 = !DILocalVariable(name: "argsize", arg: 3, scope: !3000, file: !68, line: 877, type: !90)
!3007 = !DILocalVariable(name: "options", arg: 4, scope: !3000, file: !68, line: 878, type: !2049)
!3008 = !DILocalVariable(name: "e", scope: !3000, file: !68, line: 880, type: !31)
!3009 = !DILocalVariable(name: "sv", scope: !3000, file: !68, line: 882, type: !121)
!3010 = !DILocalVariable(name: "preallocated", scope: !3011, file: !68, line: 889, type: !50)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !68, line: 888, column: 5)
!3012 = distinct !DILexicalBlock(scope: !3000, file: !68, line: 887, column: 7)
!3013 = !DILocalVariable(name: "nmax", scope: !3011, file: !68, line: 890, type: !31)
!3014 = !DILocalVariable(name: "size", scope: !3015, file: !68, line: 903, type: !90)
!3015 = distinct !DILexicalBlock(scope: !3000, file: !68, line: 902, column: 3)
!3016 = !DILocalVariable(name: "val", scope: !3015, file: !68, line: 904, type: !40)
!3017 = !DILocalVariable(name: "flags", scope: !3015, file: !68, line: 906, type: !31)
!3018 = !DILocalVariable(name: "qsize", scope: !3015, file: !68, line: 907, type: !90)
!3019 = !DILocation(line: 0, scope: !3000)
!3020 = !DILocation(line: 880, column: 11, scope: !3000)
!3021 = !DILocation(line: 882, column: 24, scope: !3000)
!3022 = !DILocation(line: 884, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3000, file: !68, line: 884, column: 7)
!3024 = !DILocation(line: 884, column: 7, scope: !3000)
!3025 = !DILocation(line: 885, column: 5, scope: !3023)
!3026 = !DILocation(line: 887, column: 7, scope: !3012)
!3027 = !DILocation(line: 887, column: 14, scope: !3012)
!3028 = !DILocation(line: 887, column: 7, scope: !3000)
!3029 = !DILocation(line: 889, column: 31, scope: !3011)
!3030 = !DILocation(line: 0, scope: !3011)
!3031 = !DILocation(line: 892, column: 16, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3011, file: !68, line: 892, column: 11)
!3033 = !DILocation(line: 892, column: 11, scope: !3011)
!3034 = !DILocation(line: 893, column: 9, scope: !3032)
!3035 = !DILocation(line: 895, column: 32, scope: !3011)
!3036 = !DILocation(line: 895, column: 61, scope: !3011)
!3037 = !DILocation(line: 895, column: 66, scope: !3011)
!3038 = !DILocation(line: 895, column: 22, scope: !3011)
!3039 = !DILocation(line: 895, column: 15, scope: !3011)
!3040 = !DILocation(line: 896, column: 11, scope: !3011)
!3041 = !DILocation(line: 897, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3011, file: !68, line: 896, column: 11)
!3043 = !{i64 0, i64 8, !1096, i64 8, i64 8, !592}
!3044 = !DILocation(line: 897, column: 9, scope: !3042)
!3045 = !DILocation(line: 898, column: 20, scope: !3011)
!3046 = !DILocation(line: 898, column: 18, scope: !3011)
!3047 = !DILocation(line: 898, column: 15, scope: !3011)
!3048 = !DILocation(line: 898, column: 38, scope: !3011)
!3049 = !DILocation(line: 898, column: 31, scope: !3011)
!3050 = !DILocation(line: 898, column: 48, scope: !3011)
!3051 = !DILocation(line: 0, scope: !2444, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 898, column: 7, scope: !3011)
!3053 = !DILocation(line: 59, column: 10, scope: !2444, inlinedAt: !3052)
!3054 = !DILocation(line: 899, column: 14, scope: !3011)
!3055 = !DILocation(line: 900, column: 5, scope: !3011)
!3056 = !DILocation(line: 903, column: 19, scope: !3015)
!3057 = !DILocation(line: 903, column: 25, scope: !3015)
!3058 = !DILocation(line: 0, scope: !3015)
!3059 = !DILocation(line: 904, column: 23, scope: !3015)
!3060 = !DILocation(line: 906, column: 26, scope: !3015)
!3061 = !DILocation(line: 906, column: 32, scope: !3015)
!3062 = !DILocation(line: 908, column: 55, scope: !3015)
!3063 = !DILocation(line: 909, column: 46, scope: !3015)
!3064 = !DILocation(line: 910, column: 55, scope: !3015)
!3065 = !DILocation(line: 911, column: 55, scope: !3015)
!3066 = !DILocation(line: 907, column: 20, scope: !3015)
!3067 = !DILocation(line: 913, column: 14, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3015, file: !68, line: 913, column: 9)
!3069 = !DILocation(line: 913, column: 9, scope: !3015)
!3070 = !DILocation(line: 915, column: 35, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !68, line: 914, column: 7)
!3072 = !DILocation(line: 915, column: 20, scope: !3071)
!3073 = !DILocation(line: 916, column: 17, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !68, line: 916, column: 13)
!3075 = !DILocation(line: 916, column: 13, scope: !3071)
!3076 = !DILocation(line: 917, column: 11, scope: !3074)
!3077 = !DILocation(line: 0, scope: !2917, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 918, column: 27, scope: !3071)
!3079 = !DILocation(line: 218, column: 10, scope: !2917, inlinedAt: !3078)
!3080 = !DILocation(line: 918, column: 19, scope: !3071)
!3081 = !DILocation(line: 919, column: 69, scope: !3071)
!3082 = !DILocation(line: 921, column: 44, scope: !3071)
!3083 = !DILocation(line: 922, column: 44, scope: !3071)
!3084 = !DILocation(line: 919, column: 9, scope: !3071)
!3085 = !DILocation(line: 923, column: 7, scope: !3071)
!3086 = !DILocation(line: 925, column: 11, scope: !3015)
!3087 = !DILocation(line: 926, column: 5, scope: !3015)
!3088 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !68, file: !68, line: 937, type: !3089, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!40, !31, !51, !90}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3088, file: !68, line: 937, type: !31)
!3093 = !DILocalVariable(name: "arg", arg: 2, scope: !3088, file: !68, line: 937, type: !51)
!3094 = !DILocalVariable(name: "argsize", arg: 3, scope: !3088, file: !68, line: 937, type: !90)
!3095 = !DILocation(line: 0, scope: !3088)
!3096 = !DILocation(line: 939, column: 10, scope: !3088)
!3097 = !DILocation(line: 939, column: 3, scope: !3088)
!3098 = distinct !DISubprogram(name: "quotearg", scope: !68, file: !68, line: 943, type: !777, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3099)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "arg", arg: 1, scope: !3098, file: !68, line: 943, type: !51)
!3101 = !DILocation(line: 0, scope: !3098)
!3102 = !DILocation(line: 0, scope: !2993, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 945, column: 10, scope: !3098)
!3104 = !DILocation(line: 933, column: 10, scope: !2993, inlinedAt: !3103)
!3105 = !DILocation(line: 945, column: 3, scope: !3098)
!3106 = distinct !DISubprogram(name: "quotearg_mem", scope: !68, file: !68, line: 949, type: !3107, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!40, !51, !90}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "arg", arg: 1, scope: !3106, file: !68, line: 949, type: !51)
!3111 = !DILocalVariable(name: "argsize", arg: 2, scope: !3106, file: !68, line: 949, type: !90)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 0, scope: !3088, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 951, column: 10, scope: !3106)
!3115 = !DILocation(line: 939, column: 10, scope: !3088, inlinedAt: !3114)
!3116 = !DILocation(line: 951, column: 3, scope: !3106)
!3117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !68, file: !68, line: 955, type: !3118, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!40, !31, !70, !51}
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DILocalVariable(name: "n", arg: 1, scope: !3117, file: !68, line: 955, type: !31)
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3117, file: !68, line: 955, type: !70)
!3123 = !DILocalVariable(name: "arg", arg: 3, scope: !3117, file: !68, line: 955, type: !51)
!3124 = !DILocalVariable(name: "o", scope: !3117, file: !68, line: 957, type: !2050)
!3125 = !DILocation(line: 0, scope: !3117)
!3126 = !DILocation(line: 957, column: 3, scope: !3117)
!3127 = !DILocation(line: 957, column: 32, scope: !3117)
!3128 = !{!3129}
!3129 = distinct !{!3129, !3130, !"quoting_options_from_style: argument 0"}
!3130 = distinct !{!3130, !"quoting_options_from_style"}
!3131 = !DILocation(line: 957, column: 36, scope: !3117)
!3132 = !DILocalVariable(name: "style", arg: 1, scope: !3133, file: !68, line: 193, type: !70)
!3133 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !68, file: !68, line: 193, type: !3134, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!102, !70}
!3136 = !{!3132, !3137}
!3137 = !DILocalVariable(name: "o", scope: !3133, file: !68, line: 195, type: !102)
!3138 = !DILocation(line: 0, scope: !3133, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 957, column: 36, scope: !3117)
!3140 = !DILocation(line: 195, column: 26, scope: !3133, inlinedAt: !3139)
!3141 = !DILocation(line: 196, column: 13, scope: !3142, inlinedAt: !3139)
!3142 = distinct !DILexicalBlock(scope: !3133, file: !68, line: 196, column: 7)
!3143 = !DILocation(line: 196, column: 7, scope: !3133, inlinedAt: !3139)
!3144 = !DILocation(line: 197, column: 5, scope: !3142, inlinedAt: !3139)
!3145 = !DILocation(line: 198, column: 5, scope: !3133, inlinedAt: !3139)
!3146 = !DILocation(line: 198, column: 11, scope: !3133, inlinedAt: !3139)
!3147 = !DILocation(line: 958, column: 10, scope: !3117)
!3148 = !DILocation(line: 959, column: 1, scope: !3117)
!3149 = !DILocation(line: 958, column: 3, scope: !3117)
!3150 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !68, file: !68, line: 962, type: !3151, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!40, !31, !70, !51, !90}
!3153 = !{!3154, !3155, !3156, !3157, !3158}
!3154 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !68, line: 962, type: !31)
!3155 = !DILocalVariable(name: "s", arg: 2, scope: !3150, file: !68, line: 962, type: !70)
!3156 = !DILocalVariable(name: "arg", arg: 3, scope: !3150, file: !68, line: 963, type: !51)
!3157 = !DILocalVariable(name: "argsize", arg: 4, scope: !3150, file: !68, line: 963, type: !90)
!3158 = !DILocalVariable(name: "o", scope: !3150, file: !68, line: 965, type: !2050)
!3159 = !DILocation(line: 0, scope: !3150)
!3160 = !DILocation(line: 965, column: 3, scope: !3150)
!3161 = !DILocation(line: 965, column: 32, scope: !3150)
!3162 = !{!3163}
!3163 = distinct !{!3163, !3164, !"quoting_options_from_style: argument 0"}
!3164 = distinct !{!3164, !"quoting_options_from_style"}
!3165 = !DILocation(line: 965, column: 36, scope: !3150)
!3166 = !DILocation(line: 0, scope: !3133, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 965, column: 36, scope: !3150)
!3168 = !DILocation(line: 195, column: 26, scope: !3133, inlinedAt: !3167)
!3169 = !DILocation(line: 196, column: 13, scope: !3142, inlinedAt: !3167)
!3170 = !DILocation(line: 196, column: 7, scope: !3133, inlinedAt: !3167)
!3171 = !DILocation(line: 197, column: 5, scope: !3142, inlinedAt: !3167)
!3172 = !DILocation(line: 198, column: 5, scope: !3133, inlinedAt: !3167)
!3173 = !DILocation(line: 198, column: 11, scope: !3133, inlinedAt: !3167)
!3174 = !DILocation(line: 966, column: 10, scope: !3150)
!3175 = !DILocation(line: 967, column: 1, scope: !3150)
!3176 = !DILocation(line: 966, column: 3, scope: !3150)
!3177 = distinct !DISubprogram(name: "quotearg_style", scope: !68, file: !68, line: 970, type: !3178, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!40, !70, !51}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "s", arg: 1, scope: !3177, file: !68, line: 970, type: !70)
!3182 = !DILocalVariable(name: "arg", arg: 2, scope: !3177, file: !68, line: 970, type: !51)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 0, scope: !3117, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 972, column: 10, scope: !3177)
!3186 = !DILocation(line: 957, column: 3, scope: !3117, inlinedAt: !3185)
!3187 = !DILocation(line: 957, column: 32, scope: !3117, inlinedAt: !3185)
!3188 = !{!3189}
!3189 = distinct !{!3189, !3190, !"quoting_options_from_style: argument 0"}
!3190 = distinct !{!3190, !"quoting_options_from_style"}
!3191 = !DILocation(line: 957, column: 36, scope: !3117, inlinedAt: !3185)
!3192 = !DILocation(line: 0, scope: !3133, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 957, column: 36, scope: !3117, inlinedAt: !3185)
!3194 = !DILocation(line: 195, column: 26, scope: !3133, inlinedAt: !3193)
!3195 = !DILocation(line: 196, column: 13, scope: !3142, inlinedAt: !3193)
!3196 = !DILocation(line: 196, column: 7, scope: !3133, inlinedAt: !3193)
!3197 = !DILocation(line: 197, column: 5, scope: !3142, inlinedAt: !3193)
!3198 = !DILocation(line: 198, column: 5, scope: !3133, inlinedAt: !3193)
!3199 = !DILocation(line: 198, column: 11, scope: !3133, inlinedAt: !3193)
!3200 = !DILocation(line: 958, column: 10, scope: !3117, inlinedAt: !3185)
!3201 = !DILocation(line: 959, column: 1, scope: !3117, inlinedAt: !3185)
!3202 = !DILocation(line: 972, column: 3, scope: !3177)
!3203 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !68, file: !68, line: 976, type: !3204, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!40, !70, !51, !90}
!3206 = !{!3207, !3208, !3209}
!3207 = !DILocalVariable(name: "s", arg: 1, scope: !3203, file: !68, line: 976, type: !70)
!3208 = !DILocalVariable(name: "arg", arg: 2, scope: !3203, file: !68, line: 976, type: !51)
!3209 = !DILocalVariable(name: "argsize", arg: 3, scope: !3203, file: !68, line: 976, type: !90)
!3210 = !DILocation(line: 0, scope: !3203)
!3211 = !DILocation(line: 0, scope: !3150, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 978, column: 10, scope: !3203)
!3213 = !DILocation(line: 965, column: 3, scope: !3150, inlinedAt: !3212)
!3214 = !DILocation(line: 965, column: 32, scope: !3150, inlinedAt: !3212)
!3215 = !{!3216}
!3216 = distinct !{!3216, !3217, !"quoting_options_from_style: argument 0"}
!3217 = distinct !{!3217, !"quoting_options_from_style"}
!3218 = !DILocation(line: 965, column: 36, scope: !3150, inlinedAt: !3212)
!3219 = !DILocation(line: 0, scope: !3133, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 965, column: 36, scope: !3150, inlinedAt: !3212)
!3221 = !DILocation(line: 195, column: 26, scope: !3133, inlinedAt: !3220)
!3222 = !DILocation(line: 196, column: 13, scope: !3142, inlinedAt: !3220)
!3223 = !DILocation(line: 196, column: 7, scope: !3133, inlinedAt: !3220)
!3224 = !DILocation(line: 197, column: 5, scope: !3142, inlinedAt: !3220)
!3225 = !DILocation(line: 198, column: 5, scope: !3133, inlinedAt: !3220)
!3226 = !DILocation(line: 198, column: 11, scope: !3133, inlinedAt: !3220)
!3227 = !DILocation(line: 966, column: 10, scope: !3150, inlinedAt: !3212)
!3228 = !DILocation(line: 967, column: 1, scope: !3150, inlinedAt: !3212)
!3229 = !DILocation(line: 978, column: 3, scope: !3203)
!3230 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !68, file: !68, line: 982, type: !3231, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!40, !51, !90, !41}
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "arg", arg: 1, scope: !3230, file: !68, line: 982, type: !51)
!3235 = !DILocalVariable(name: "argsize", arg: 2, scope: !3230, file: !68, line: 982, type: !90)
!3236 = !DILocalVariable(name: "ch", arg: 3, scope: !3230, file: !68, line: 982, type: !41)
!3237 = !DILocalVariable(name: "options", scope: !3230, file: !68, line: 984, type: !102)
!3238 = !DILocation(line: 0, scope: !3230)
!3239 = !DILocation(line: 984, column: 3, scope: !3230)
!3240 = !DILocation(line: 984, column: 26, scope: !3230)
!3241 = !DILocation(line: 985, column: 13, scope: !3230)
!3242 = !{i64 0, i64 4, !801, i64 4, i64 4, !750, i64 8, i64 32, !801, i64 40, i64 8, !592, i64 48, i64 8, !592}
!3243 = !DILocation(line: 0, scope: !2070, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 986, column: 3, scope: !3230)
!3245 = !DILocation(line: 156, column: 62, scope: !2070, inlinedAt: !3244)
!3246 = !DILocation(line: 156, column: 57, scope: !2070, inlinedAt: !3244)
!3247 = !DILocation(line: 157, column: 15, scope: !2070, inlinedAt: !3244)
!3248 = !DILocation(line: 158, column: 12, scope: !2070, inlinedAt: !3244)
!3249 = !DILocation(line: 158, column: 15, scope: !2070, inlinedAt: !3244)
!3250 = !DILocation(line: 158, column: 25, scope: !2070, inlinedAt: !3244)
!3251 = !DILocation(line: 159, column: 18, scope: !2070, inlinedAt: !3244)
!3252 = !DILocation(line: 159, column: 23, scope: !2070, inlinedAt: !3244)
!3253 = !DILocation(line: 159, column: 6, scope: !2070, inlinedAt: !3244)
!3254 = !DILocation(line: 987, column: 10, scope: !3230)
!3255 = !DILocation(line: 988, column: 1, scope: !3230)
!3256 = !DILocation(line: 987, column: 3, scope: !3230)
!3257 = distinct !DISubprogram(name: "quotearg_char", scope: !68, file: !68, line: 991, type: !3258, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!40, !51, !41}
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "arg", arg: 1, scope: !3257, file: !68, line: 991, type: !51)
!3262 = !DILocalVariable(name: "ch", arg: 2, scope: !3257, file: !68, line: 991, type: !41)
!3263 = !DILocation(line: 0, scope: !3257)
!3264 = !DILocation(line: 0, scope: !3230, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 993, column: 10, scope: !3257)
!3266 = !DILocation(line: 984, column: 3, scope: !3230, inlinedAt: !3265)
!3267 = !DILocation(line: 984, column: 26, scope: !3230, inlinedAt: !3265)
!3268 = !DILocation(line: 985, column: 13, scope: !3230, inlinedAt: !3265)
!3269 = !DILocation(line: 0, scope: !2070, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 986, column: 3, scope: !3230, inlinedAt: !3265)
!3271 = !DILocation(line: 156, column: 62, scope: !2070, inlinedAt: !3270)
!3272 = !DILocation(line: 156, column: 57, scope: !2070, inlinedAt: !3270)
!3273 = !DILocation(line: 157, column: 15, scope: !2070, inlinedAt: !3270)
!3274 = !DILocation(line: 158, column: 12, scope: !2070, inlinedAt: !3270)
!3275 = !DILocation(line: 158, column: 15, scope: !2070, inlinedAt: !3270)
!3276 = !DILocation(line: 158, column: 25, scope: !2070, inlinedAt: !3270)
!3277 = !DILocation(line: 159, column: 18, scope: !2070, inlinedAt: !3270)
!3278 = !DILocation(line: 159, column: 23, scope: !2070, inlinedAt: !3270)
!3279 = !DILocation(line: 159, column: 6, scope: !2070, inlinedAt: !3270)
!3280 = !DILocation(line: 987, column: 10, scope: !3230, inlinedAt: !3265)
!3281 = !DILocation(line: 988, column: 1, scope: !3230, inlinedAt: !3265)
!3282 = !DILocation(line: 993, column: 3, scope: !3257)
!3283 = distinct !DISubprogram(name: "quotearg_colon", scope: !68, file: !68, line: 997, type: !777, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3284)
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !68, line: 997, type: !51)
!3286 = !DILocation(line: 0, scope: !3283)
!3287 = !DILocation(line: 0, scope: !3257, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 999, column: 10, scope: !3283)
!3289 = !DILocation(line: 0, scope: !3230, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 993, column: 10, scope: !3257, inlinedAt: !3288)
!3291 = !DILocation(line: 984, column: 3, scope: !3230, inlinedAt: !3290)
!3292 = !DILocation(line: 984, column: 26, scope: !3230, inlinedAt: !3290)
!3293 = !DILocation(line: 985, column: 13, scope: !3230, inlinedAt: !3290)
!3294 = !DILocation(line: 0, scope: !2070, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 986, column: 3, scope: !3230, inlinedAt: !3290)
!3296 = !DILocation(line: 156, column: 57, scope: !2070, inlinedAt: !3295)
!3297 = !DILocation(line: 158, column: 12, scope: !2070, inlinedAt: !3295)
!3298 = !DILocation(line: 159, column: 6, scope: !2070, inlinedAt: !3295)
!3299 = !DILocation(line: 987, column: 10, scope: !3230, inlinedAt: !3290)
!3300 = !DILocation(line: 988, column: 1, scope: !3230, inlinedAt: !3290)
!3301 = !DILocation(line: 999, column: 3, scope: !3283)
!3302 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !68, file: !68, line: 1003, type: !3107, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3303)
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !68, line: 1003, type: !51)
!3305 = !DILocalVariable(name: "argsize", arg: 2, scope: !3302, file: !68, line: 1003, type: !90)
!3306 = !DILocation(line: 0, scope: !3302)
!3307 = !DILocation(line: 0, scope: !3230, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 1005, column: 10, scope: !3302)
!3309 = !DILocation(line: 984, column: 3, scope: !3230, inlinedAt: !3308)
!3310 = !DILocation(line: 984, column: 26, scope: !3230, inlinedAt: !3308)
!3311 = !DILocation(line: 985, column: 13, scope: !3230, inlinedAt: !3308)
!3312 = !DILocation(line: 0, scope: !2070, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 986, column: 3, scope: !3230, inlinedAt: !3308)
!3314 = !DILocation(line: 156, column: 57, scope: !2070, inlinedAt: !3313)
!3315 = !DILocation(line: 158, column: 12, scope: !2070, inlinedAt: !3313)
!3316 = !DILocation(line: 159, column: 6, scope: !2070, inlinedAt: !3313)
!3317 = !DILocation(line: 987, column: 10, scope: !3230, inlinedAt: !3308)
!3318 = !DILocation(line: 988, column: 1, scope: !3230, inlinedAt: !3308)
!3319 = !DILocation(line: 1005, column: 3, scope: !3302)
!3320 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !68, file: !68, line: 1009, type: !3118, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3321)
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !68, line: 1009, type: !31)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !68, line: 1009, type: !70)
!3324 = !DILocalVariable(name: "arg", arg: 3, scope: !3320, file: !68, line: 1009, type: !51)
!3325 = !DILocalVariable(name: "options", scope: !3320, file: !68, line: 1011, type: !102)
!3326 = !DILocation(line: 195, column: 26, scope: !3133, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1012, column: 13, scope: !3320)
!3328 = !DILocation(line: 0, scope: !3320)
!3329 = !DILocation(line: 1011, column: 3, scope: !3320)
!3330 = !DILocation(line: 1011, column: 26, scope: !3320)
!3331 = !DILocation(line: 1012, column: 13, scope: !3320)
!3332 = !{!3333}
!3333 = distinct !{!3333, !3334, !"quoting_options_from_style: argument 0"}
!3334 = distinct !{!3334, !"quoting_options_from_style"}
!3335 = !DILocation(line: 0, scope: !3133, inlinedAt: !3327)
!3336 = !DILocation(line: 196, column: 13, scope: !3142, inlinedAt: !3327)
!3337 = !DILocation(line: 196, column: 7, scope: !3133, inlinedAt: !3327)
!3338 = !DILocation(line: 197, column: 5, scope: !3142, inlinedAt: !3327)
!3339 = !{i64 0, i64 4, !750, i64 4, i64 32, !801, i64 36, i64 8, !592, i64 44, i64 8, !592}
!3340 = !DILocation(line: 0, scope: !2070, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 1013, column: 3, scope: !3320)
!3342 = !DILocation(line: 156, column: 57, scope: !2070, inlinedAt: !3341)
!3343 = !DILocation(line: 158, column: 12, scope: !2070, inlinedAt: !3341)
!3344 = !DILocation(line: 159, column: 6, scope: !2070, inlinedAt: !3341)
!3345 = !DILocation(line: 1014, column: 10, scope: !3320)
!3346 = !DILocation(line: 1015, column: 1, scope: !3320)
!3347 = !DILocation(line: 1014, column: 3, scope: !3320)
!3348 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !68, file: !68, line: 1018, type: !3349, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!40, !31, !51, !51, !51}
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !68, line: 1018, type: !31)
!3353 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3348, file: !68, line: 1018, type: !51)
!3354 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3348, file: !68, line: 1019, type: !51)
!3355 = !DILocalVariable(name: "arg", arg: 4, scope: !3348, file: !68, line: 1019, type: !51)
!3356 = !DILocation(line: 0, scope: !3348)
!3357 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !68, line: 1026, type: !31)
!3358 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !68, file: !68, line: 1026, type: !3359, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!40, !31, !51, !51, !51, !90}
!3361 = !{!3357, !3362, !3363, !3364, !3365, !3366}
!3362 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3358, file: !68, line: 1026, type: !51)
!3363 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3358, file: !68, line: 1027, type: !51)
!3364 = !DILocalVariable(name: "arg", arg: 4, scope: !3358, file: !68, line: 1028, type: !51)
!3365 = !DILocalVariable(name: "argsize", arg: 5, scope: !3358, file: !68, line: 1028, type: !90)
!3366 = !DILocalVariable(name: "o", scope: !3358, file: !68, line: 1030, type: !102)
!3367 = !DILocation(line: 0, scope: !3358, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1021, column: 10, scope: !3348)
!3369 = !DILocation(line: 1030, column: 3, scope: !3358, inlinedAt: !3368)
!3370 = !DILocation(line: 1030, column: 26, scope: !3358, inlinedAt: !3368)
!3371 = !DILocation(line: 1030, column: 30, scope: !3358, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !2111, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1031, column: 3, scope: !3358, inlinedAt: !3368)
!3374 = !DILocation(line: 184, column: 6, scope: !2111, inlinedAt: !3373)
!3375 = !DILocation(line: 184, column: 12, scope: !2111, inlinedAt: !3373)
!3376 = !DILocation(line: 185, column: 8, scope: !2125, inlinedAt: !3373)
!3377 = !DILocation(line: 185, column: 19, scope: !2125, inlinedAt: !3373)
!3378 = !DILocation(line: 186, column: 5, scope: !2125, inlinedAt: !3373)
!3379 = !DILocation(line: 187, column: 6, scope: !2111, inlinedAt: !3373)
!3380 = !DILocation(line: 187, column: 17, scope: !2111, inlinedAt: !3373)
!3381 = !DILocation(line: 188, column: 6, scope: !2111, inlinedAt: !3373)
!3382 = !DILocation(line: 188, column: 18, scope: !2111, inlinedAt: !3373)
!3383 = !DILocation(line: 1032, column: 10, scope: !3358, inlinedAt: !3368)
!3384 = !DILocation(line: 1033, column: 1, scope: !3358, inlinedAt: !3368)
!3385 = !DILocation(line: 1021, column: 3, scope: !3348)
!3386 = !DILocation(line: 0, scope: !3358)
!3387 = !DILocation(line: 1030, column: 3, scope: !3358)
!3388 = !DILocation(line: 1030, column: 26, scope: !3358)
!3389 = !DILocation(line: 1030, column: 30, scope: !3358)
!3390 = !DILocation(line: 0, scope: !2111, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 1031, column: 3, scope: !3358)
!3392 = !DILocation(line: 184, column: 6, scope: !2111, inlinedAt: !3391)
!3393 = !DILocation(line: 184, column: 12, scope: !2111, inlinedAt: !3391)
!3394 = !DILocation(line: 185, column: 8, scope: !2125, inlinedAt: !3391)
!3395 = !DILocation(line: 185, column: 19, scope: !2125, inlinedAt: !3391)
!3396 = !DILocation(line: 186, column: 5, scope: !2125, inlinedAt: !3391)
!3397 = !DILocation(line: 187, column: 6, scope: !2111, inlinedAt: !3391)
!3398 = !DILocation(line: 187, column: 17, scope: !2111, inlinedAt: !3391)
!3399 = !DILocation(line: 188, column: 6, scope: !2111, inlinedAt: !3391)
!3400 = !DILocation(line: 188, column: 18, scope: !2111, inlinedAt: !3391)
!3401 = !DILocation(line: 1032, column: 10, scope: !3358)
!3402 = !DILocation(line: 1033, column: 1, scope: !3358)
!3403 = !DILocation(line: 1032, column: 3, scope: !3358)
!3404 = distinct !DISubprogram(name: "quotearg_custom", scope: !68, file: !68, line: 1036, type: !3405, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!40, !51, !51, !51}
!3407 = !{!3408, !3409, !3410}
!3408 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3404, file: !68, line: 1036, type: !51)
!3409 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3404, file: !68, line: 1036, type: !51)
!3410 = !DILocalVariable(name: "arg", arg: 3, scope: !3404, file: !68, line: 1037, type: !51)
!3411 = !DILocation(line: 0, scope: !3404)
!3412 = !DILocation(line: 0, scope: !3348, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 1039, column: 10, scope: !3404)
!3414 = !DILocation(line: 0, scope: !3358, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1021, column: 10, scope: !3348, inlinedAt: !3413)
!3416 = !DILocation(line: 1030, column: 3, scope: !3358, inlinedAt: !3415)
!3417 = !DILocation(line: 1030, column: 26, scope: !3358, inlinedAt: !3415)
!3418 = !DILocation(line: 1030, column: 30, scope: !3358, inlinedAt: !3415)
!3419 = !DILocation(line: 0, scope: !2111, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 1031, column: 3, scope: !3358, inlinedAt: !3415)
!3421 = !DILocation(line: 184, column: 6, scope: !2111, inlinedAt: !3420)
!3422 = !DILocation(line: 184, column: 12, scope: !2111, inlinedAt: !3420)
!3423 = !DILocation(line: 185, column: 8, scope: !2125, inlinedAt: !3420)
!3424 = !DILocation(line: 185, column: 19, scope: !2125, inlinedAt: !3420)
!3425 = !DILocation(line: 186, column: 5, scope: !2125, inlinedAt: !3420)
!3426 = !DILocation(line: 187, column: 6, scope: !2111, inlinedAt: !3420)
!3427 = !DILocation(line: 187, column: 17, scope: !2111, inlinedAt: !3420)
!3428 = !DILocation(line: 188, column: 6, scope: !2111, inlinedAt: !3420)
!3429 = !DILocation(line: 188, column: 18, scope: !2111, inlinedAt: !3420)
!3430 = !DILocation(line: 1032, column: 10, scope: !3358, inlinedAt: !3415)
!3431 = !DILocation(line: 1033, column: 1, scope: !3358, inlinedAt: !3415)
!3432 = !DILocation(line: 1039, column: 3, scope: !3404)
!3433 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !68, file: !68, line: 1043, type: !3434, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!40, !51, !51, !51, !90}
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3433, file: !68, line: 1043, type: !51)
!3438 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3433, file: !68, line: 1043, type: !51)
!3439 = !DILocalVariable(name: "arg", arg: 3, scope: !3433, file: !68, line: 1044, type: !51)
!3440 = !DILocalVariable(name: "argsize", arg: 4, scope: !3433, file: !68, line: 1044, type: !90)
!3441 = !DILocation(line: 0, scope: !3433)
!3442 = !DILocation(line: 0, scope: !3358, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 1046, column: 10, scope: !3433)
!3444 = !DILocation(line: 1030, column: 3, scope: !3358, inlinedAt: !3443)
!3445 = !DILocation(line: 1030, column: 26, scope: !3358, inlinedAt: !3443)
!3446 = !DILocation(line: 1030, column: 30, scope: !3358, inlinedAt: !3443)
!3447 = !DILocation(line: 0, scope: !2111, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 1031, column: 3, scope: !3358, inlinedAt: !3443)
!3449 = !DILocation(line: 184, column: 6, scope: !2111, inlinedAt: !3448)
!3450 = !DILocation(line: 184, column: 12, scope: !2111, inlinedAt: !3448)
!3451 = !DILocation(line: 185, column: 8, scope: !2125, inlinedAt: !3448)
!3452 = !DILocation(line: 185, column: 19, scope: !2125, inlinedAt: !3448)
!3453 = !DILocation(line: 186, column: 5, scope: !2125, inlinedAt: !3448)
!3454 = !DILocation(line: 187, column: 6, scope: !2111, inlinedAt: !3448)
!3455 = !DILocation(line: 187, column: 17, scope: !2111, inlinedAt: !3448)
!3456 = !DILocation(line: 188, column: 6, scope: !2111, inlinedAt: !3448)
!3457 = !DILocation(line: 188, column: 18, scope: !2111, inlinedAt: !3448)
!3458 = !DILocation(line: 1032, column: 10, scope: !3358, inlinedAt: !3443)
!3459 = !DILocation(line: 1033, column: 1, scope: !3358, inlinedAt: !3443)
!3460 = !DILocation(line: 1046, column: 3, scope: !3433)
!3461 = distinct !DISubprogram(name: "quote_n_mem", scope: !68, file: !68, line: 1061, type: !3462, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!51, !31, !51, !90}
!3464 = !{!3465, !3466, !3467}
!3465 = !DILocalVariable(name: "n", arg: 1, scope: !3461, file: !68, line: 1061, type: !31)
!3466 = !DILocalVariable(name: "arg", arg: 2, scope: !3461, file: !68, line: 1061, type: !51)
!3467 = !DILocalVariable(name: "argsize", arg: 3, scope: !3461, file: !68, line: 1061, type: !90)
!3468 = !DILocation(line: 0, scope: !3461)
!3469 = !DILocation(line: 1063, column: 10, scope: !3461)
!3470 = !DILocation(line: 1063, column: 3, scope: !3461)
!3471 = distinct !DISubprogram(name: "quote_mem", scope: !68, file: !68, line: 1067, type: !3472, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!51, !51, !90}
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "arg", arg: 1, scope: !3471, file: !68, line: 1067, type: !51)
!3476 = !DILocalVariable(name: "argsize", arg: 2, scope: !3471, file: !68, line: 1067, type: !90)
!3477 = !DILocation(line: 0, scope: !3471)
!3478 = !DILocation(line: 0, scope: !3461, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 1069, column: 10, scope: !3471)
!3480 = !DILocation(line: 1063, column: 10, scope: !3461, inlinedAt: !3479)
!3481 = !DILocation(line: 1069, column: 3, scope: !3471)
!3482 = distinct !DISubprogram(name: "quote_n", scope: !68, file: !68, line: 1073, type: !3483, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!51, !31, !51}
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !68, line: 1073, type: !31)
!3487 = !DILocalVariable(name: "arg", arg: 2, scope: !3482, file: !68, line: 1073, type: !51)
!3488 = !DILocation(line: 0, scope: !3482)
!3489 = !DILocation(line: 0, scope: !3461, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 1075, column: 10, scope: !3482)
!3491 = !DILocation(line: 1063, column: 10, scope: !3461, inlinedAt: !3490)
!3492 = !DILocation(line: 1075, column: 3, scope: !3482)
!3493 = distinct !DISubprogram(name: "quote", scope: !68, file: !68, line: 1079, type: !1863, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !3494)
!3494 = !{!3495}
!3495 = !DILocalVariable(name: "arg", arg: 1, scope: !3493, file: !68, line: 1079, type: !51)
!3496 = !DILocation(line: 0, scope: !3493)
!3497 = !DILocation(line: 0, scope: !3482, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1081, column: 10, scope: !3493)
!3499 = !DILocation(line: 0, scope: !3461, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 1075, column: 10, scope: !3482, inlinedAt: !3498)
!3501 = !DILocation(line: 1063, column: 10, scope: !3461, inlinedAt: !3500)
!3502 = !DILocation(line: 1081, column: 3, scope: !3493)
!3503 = distinct !DISubprogram(name: "strintcmp", scope: !142, file: !142, line: 29, type: !3504, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!31, !51, !51}
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "a", arg: 1, scope: !3503, file: !142, line: 29, type: !51)
!3508 = !DILocalVariable(name: "b", arg: 2, scope: !3503, file: !142, line: 29, type: !51)
!3509 = !DILocation(line: 0, scope: !3503)
!3510 = !DILocalVariable(name: "a", arg: 1, scope: !3511, file: !3512, line: 114, type: !51)
!3511 = distinct !DISubprogram(name: "numcompare", scope: !3512, file: !3512, line: 114, type: !3513, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3515)
!3512 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!31, !51, !51, !31, !31}
!3515 = !{!3510, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3516 = !DILocalVariable(name: "b", arg: 2, scope: !3511, file: !3512, line: 114, type: !51)
!3517 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3511, file: !3512, line: 115, type: !31)
!3518 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3511, file: !3512, line: 115, type: !31)
!3519 = !DILocalVariable(name: "tmpa", scope: !3511, file: !3512, line: 117, type: !2078)
!3520 = !DILocalVariable(name: "tmpb", scope: !3511, file: !3512, line: 118, type: !2078)
!3521 = !DILocalVariable(name: "tmp", scope: !3511, file: !3512, line: 119, type: !31)
!3522 = !DILocalVariable(name: "log_a", scope: !3511, file: !3512, line: 120, type: !90)
!3523 = !DILocalVariable(name: "log_b", scope: !3511, file: !3512, line: 121, type: !90)
!3524 = !DILocation(line: 0, scope: !3511, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 31, column: 10, scope: !3503)
!3526 = !DILocation(line: 117, column: 24, scope: !3511, inlinedAt: !3525)
!3527 = !DILocation(line: 118, column: 24, scope: !3511, inlinedAt: !3525)
!3528 = !DILocation(line: 123, column: 12, scope: !3529, inlinedAt: !3525)
!3529 = distinct !DILexicalBlock(scope: !3511, file: !3512, line: 123, column: 7)
!3530 = !DILocation(line: 123, column: 7, scope: !3511, inlinedAt: !3525)
!3531 = !DILocation(line: 126, column: 17, scope: !3532, inlinedAt: !3525)
!3532 = distinct !DILexicalBlock(scope: !3529, file: !3512, line: 124, column: 5)
!3533 = !DILocation(line: 126, column: 16, scope: !3532, inlinedAt: !3525)
!3534 = !DILocation(line: 127, column: 19, scope: !3532, inlinedAt: !3525)
!3535 = !DILocation(line: 126, column: 9, scope: !3532, inlinedAt: !3525)
!3536 = distinct !{!3536, !3537, !3538, !647}
!3537 = !DILocation(line: 125, column: 7, scope: !3532, inlinedAt: !3525)
!3538 = !DILocation(line: 127, column: 59, scope: !3532, inlinedAt: !3525)
!3539 = !DILocation(line: 128, column: 16, scope: !3540, inlinedAt: !3525)
!3540 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 128, column: 11)
!3541 = !DILocation(line: 128, column: 11, scope: !3532, inlinedAt: !3525)
!3542 = !DILocation(line: 134, column: 15, scope: !3543, inlinedAt: !3525)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3512, line: 134, column: 15)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !3512, line: 129, column: 9)
!3545 = !DILocation(line: 134, column: 15, scope: !3544, inlinedAt: !3525)
!3546 = !DILocation(line: 136, column: 23, scope: !3544, inlinedAt: !3525)
!3547 = !DILocation(line: 136, column: 11, scope: !3544, inlinedAt: !3525)
!3548 = !DILocation(line: 137, column: 21, scope: !3544, inlinedAt: !3525)
!3549 = !DILocation(line: 137, column: 20, scope: !3544, inlinedAt: !3525)
!3550 = distinct !{!3550, !3547, !3551, !647}
!3551 = !DILocation(line: 137, column: 23, scope: !3544, inlinedAt: !3525)
!3552 = !DILocation(line: 142, column: 20, scope: !3544, inlinedAt: !3525)
!3553 = !DILocation(line: 142, column: 11, scope: !3544, inlinedAt: !3525)
!3554 = !DILocation(line: 145, column: 17, scope: !3532, inlinedAt: !3525)
!3555 = !DILocation(line: 145, column: 16, scope: !3532, inlinedAt: !3525)
!3556 = !DILocation(line: 146, column: 19, scope: !3532, inlinedAt: !3525)
!3557 = !DILocation(line: 145, column: 9, scope: !3532, inlinedAt: !3525)
!3558 = distinct !{!3558, !3559, !3560, !647}
!3559 = !DILocation(line: 144, column: 7, scope: !3532, inlinedAt: !3525)
!3560 = !DILocation(line: 146, column: 59, scope: !3532, inlinedAt: !3525)
!3561 = !DILocation(line: 148, column: 14, scope: !3532, inlinedAt: !3525)
!3562 = !DILocation(line: 148, column: 19, scope: !3532, inlinedAt: !3525)
!3563 = !DILocation(line: 148, column: 27, scope: !3532, inlinedAt: !3525)
!3564 = !DILocation(line: 148, column: 7, scope: !3532, inlinedAt: !3525)
!3565 = !DILocation(line: 164, column: 23, scope: !3566, inlinedAt: !3525)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3512, line: 164, column: 7)
!3567 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 164, column: 7)
!3568 = !DILocation(line: 0, scope: !3532, inlinedAt: !3525)
!3569 = !DILocation(line: 164, column: 7, scope: !3567, inlinedAt: !3525)
!3570 = !DILocation(line: 151, column: 21, scope: !3571, inlinedAt: !3525)
!3571 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 149, column: 9)
!3572 = !DILocation(line: 151, column: 20, scope: !3571, inlinedAt: !3525)
!3573 = !DILocation(line: 154, column: 21, scope: !3571, inlinedAt: !3525)
!3574 = !DILocation(line: 154, column: 20, scope: !3571, inlinedAt: !3525)
!3575 = !DILocation(line: 0, scope: !3567, inlinedAt: !3525)
!3576 = !DILocation(line: 169, column: 23, scope: !3577, inlinedAt: !3525)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3512, line: 169, column: 7)
!3578 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 169, column: 7)
!3579 = !DILocation(line: 169, column: 7, scope: !3578, inlinedAt: !3525)
!3580 = !DILocation(line: 166, column: 19, scope: !3566, inlinedAt: !3525)
!3581 = !DILocation(line: 166, column: 18, scope: !3566, inlinedAt: !3525)
!3582 = !DILocation(line: 164, column: 39, scope: !3566, inlinedAt: !3525)
!3583 = distinct !{!3583, !3569, !3584, !647}
!3584 = !DILocation(line: 167, column: 37, scope: !3567, inlinedAt: !3525)
!3585 = !DILocation(line: 171, column: 19, scope: !3577, inlinedAt: !3525)
!3586 = !DILocation(line: 171, column: 18, scope: !3577, inlinedAt: !3525)
!3587 = !DILocation(line: 169, column: 39, scope: !3577, inlinedAt: !3525)
!3588 = distinct !{!3588, !3579, !3589, !647}
!3589 = !DILocation(line: 172, column: 37, scope: !3578, inlinedAt: !3525)
!3590 = !DILocation(line: 0, scope: !3578, inlinedAt: !3525)
!3591 = !DILocation(line: 174, column: 17, scope: !3592, inlinedAt: !3525)
!3592 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 174, column: 11)
!3593 = !DILocation(line: 174, column: 11, scope: !3532, inlinedAt: !3525)
!3594 = !DILocation(line: 175, column: 22, scope: !3592, inlinedAt: !3525)
!3595 = !DILocation(line: 175, column: 16, scope: !3592, inlinedAt: !3525)
!3596 = !DILocation(line: 175, column: 9, scope: !3592, inlinedAt: !3525)
!3597 = !DILocation(line: 162, column: 18, scope: !3532, inlinedAt: !3525)
!3598 = !DILocation(line: 177, column: 12, scope: !3599, inlinedAt: !3525)
!3599 = distinct !DILexicalBlock(scope: !3532, file: !3512, line: 177, column: 11)
!3600 = !DILocation(line: 177, column: 11, scope: !3532, inlinedAt: !3525)
!3601 = !DILocation(line: 182, column: 17, scope: !3602, inlinedAt: !3525)
!3602 = distinct !DILexicalBlock(scope: !3529, file: !3512, line: 182, column: 12)
!3603 = !DILocation(line: 182, column: 12, scope: !3529, inlinedAt: !3525)
!3604 = !DILocation(line: 203, column: 19, scope: !3605, inlinedAt: !3525)
!3605 = distinct !DILexicalBlock(scope: !3602, file: !3512, line: 202, column: 5)
!3606 = !DILocation(line: 203, column: 7, scope: !3605, inlinedAt: !3525)
!3607 = !DILocation(line: 185, column: 17, scope: !3608, inlinedAt: !3525)
!3608 = distinct !DILexicalBlock(scope: !3602, file: !3512, line: 183, column: 5)
!3609 = !DILocation(line: 185, column: 16, scope: !3608, inlinedAt: !3525)
!3610 = !DILocation(line: 186, column: 19, scope: !3608, inlinedAt: !3525)
!3611 = !DILocation(line: 185, column: 9, scope: !3608, inlinedAt: !3525)
!3612 = distinct !{!3612, !3613, !3614, !647}
!3613 = !DILocation(line: 184, column: 7, scope: !3608, inlinedAt: !3525)
!3614 = !DILocation(line: 186, column: 59, scope: !3608, inlinedAt: !3525)
!3615 = !DILocation(line: 191, column: 11, scope: !3616, inlinedAt: !3525)
!3616 = distinct !DILexicalBlock(scope: !3608, file: !3512, line: 191, column: 11)
!3617 = !DILocation(line: 191, column: 11, scope: !3608, inlinedAt: !3525)
!3618 = !DILocation(line: 193, column: 19, scope: !3608, inlinedAt: !3525)
!3619 = !DILocation(line: 193, column: 7, scope: !3608, inlinedAt: !3525)
!3620 = !DILocation(line: 194, column: 17, scope: !3608, inlinedAt: !3525)
!3621 = !DILocation(line: 194, column: 16, scope: !3608, inlinedAt: !3525)
!3622 = distinct !{!3622, !3619, !3623, !647}
!3623 = !DILocation(line: 194, column: 19, scope: !3608, inlinedAt: !3525)
!3624 = !DILocation(line: 199, column: 14, scope: !3608, inlinedAt: !3525)
!3625 = !DILocation(line: 199, column: 7, scope: !3608, inlinedAt: !3525)
!3626 = !DILocation(line: 205, column: 19, scope: !3605, inlinedAt: !3525)
!3627 = !DILocation(line: 205, column: 7, scope: !3605, inlinedAt: !3525)
!3628 = !DILocation(line: 204, column: 17, scope: !3605, inlinedAt: !3525)
!3629 = !DILocation(line: 204, column: 16, scope: !3605, inlinedAt: !3525)
!3630 = distinct !{!3630, !3606, !3631, !647}
!3631 = !DILocation(line: 204, column: 19, scope: !3605, inlinedAt: !3525)
!3632 = !DILocation(line: 208, column: 14, scope: !3605, inlinedAt: !3525)
!3633 = !DILocation(line: 208, column: 19, scope: !3605, inlinedAt: !3525)
!3634 = !DILocation(line: 208, column: 27, scope: !3605, inlinedAt: !3525)
!3635 = !DILocation(line: 208, column: 7, scope: !3605, inlinedAt: !3525)
!3636 = !DILocation(line: 206, column: 17, scope: !3605, inlinedAt: !3525)
!3637 = !DILocation(line: 206, column: 16, scope: !3605, inlinedAt: !3525)
!3638 = distinct !{!3638, !3627, !3639, !647}
!3639 = !DILocation(line: 206, column: 19, scope: !3605, inlinedAt: !3525)
!3640 = !DILocation(line: 211, column: 21, scope: !3641, inlinedAt: !3525)
!3641 = distinct !DILexicalBlock(scope: !3605, file: !3512, line: 209, column: 9)
!3642 = !DILocation(line: 211, column: 20, scope: !3641, inlinedAt: !3525)
!3643 = !DILocation(line: 214, column: 21, scope: !3641, inlinedAt: !3525)
!3644 = !DILocation(line: 214, column: 20, scope: !3641, inlinedAt: !3525)
!3645 = !DILocation(line: 208, column: 22, scope: !3605, inlinedAt: !3525)
!3646 = !DILocation(line: 224, column: 23, scope: !3647, inlinedAt: !3525)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !3512, line: 224, column: 7)
!3648 = distinct !DILexicalBlock(scope: !3605, file: !3512, line: 224, column: 7)
!3649 = !DILocation(line: 222, column: 18, scope: !3605, inlinedAt: !3525)
!3650 = !DILocation(line: 224, column: 7, scope: !3648, inlinedAt: !3525)
!3651 = !DILocation(line: 0, scope: !3648, inlinedAt: !3525)
!3652 = !DILocation(line: 229, column: 23, scope: !3653, inlinedAt: !3525)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3512, line: 229, column: 7)
!3654 = distinct !DILexicalBlock(scope: !3605, file: !3512, line: 229, column: 7)
!3655 = !DILocation(line: 229, column: 7, scope: !3654, inlinedAt: !3525)
!3656 = !DILocation(line: 226, column: 19, scope: !3647, inlinedAt: !3525)
!3657 = !DILocation(line: 226, column: 18, scope: !3647, inlinedAt: !3525)
!3658 = !DILocation(line: 224, column: 39, scope: !3647, inlinedAt: !3525)
!3659 = distinct !{!3659, !3650, !3660, !647}
!3660 = !DILocation(line: 227, column: 37, scope: !3648, inlinedAt: !3525)
!3661 = !DILocation(line: 231, column: 19, scope: !3653, inlinedAt: !3525)
!3662 = !DILocation(line: 231, column: 18, scope: !3653, inlinedAt: !3525)
!3663 = !DILocation(line: 229, column: 39, scope: !3653, inlinedAt: !3525)
!3664 = distinct !{!3664, !3655, !3665, !647}
!3665 = !DILocation(line: 232, column: 37, scope: !3654, inlinedAt: !3525)
!3666 = !DILocation(line: 0, scope: !3654, inlinedAt: !3525)
!3667 = !DILocation(line: 234, column: 17, scope: !3668, inlinedAt: !3525)
!3668 = distinct !DILexicalBlock(scope: !3605, file: !3512, line: 234, column: 11)
!3669 = !DILocation(line: 234, column: 11, scope: !3605, inlinedAt: !3525)
!3670 = !DILocation(line: 235, column: 22, scope: !3668, inlinedAt: !3525)
!3671 = !DILocation(line: 235, column: 16, scope: !3668, inlinedAt: !3525)
!3672 = !DILocation(line: 235, column: 9, scope: !3668, inlinedAt: !3525)
!3673 = !DILocation(line: 237, column: 12, scope: !3674, inlinedAt: !3525)
!3674 = distinct !DILexicalBlock(scope: !3605, file: !3512, line: 237, column: 11)
!3675 = !DILocation(line: 237, column: 11, scope: !3605, inlinedAt: !3525)
!3676 = !DILocation(line: 31, column: 3, scope: !3503)
!3677 = distinct !DISubprogram(name: "verror", scope: !145, file: !145, line: 43, type: !3678, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3687)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !31, !31, !51, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3681, file: !145, baseType: !6, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3681, file: !145, baseType: !6, size: 32, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3681, file: !145, baseType: !33, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3681, file: !145, baseType: !33, size: 64, offset: 128)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "status", arg: 1, scope: !3677, file: !145, line: 43, type: !31)
!3689 = !DILocalVariable(name: "errnum", arg: 2, scope: !3677, file: !145, line: 43, type: !31)
!3690 = !DILocalVariable(name: "format", arg: 3, scope: !3677, file: !145, line: 43, type: !51)
!3691 = !DILocalVariable(name: "args", arg: 4, scope: !3677, file: !145, line: 43, type: !3680)
!3692 = !DILocation(line: 0, scope: !3677)
!3693 = !DILocation(line: 45, column: 3, scope: !3677)
!3694 = !DILocation(line: 46, column: 1, scope: !3677)
!3695 = distinct !DISubprogram(name: "verror_at_line", scope: !145, file: !145, line: 55, type: !3696, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !31, !31, !51, !6, !51, !3680}
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3699 = !DILocalVariable(name: "status", arg: 1, scope: !3695, file: !145, line: 55, type: !31)
!3700 = !DILocalVariable(name: "errnum", arg: 2, scope: !3695, file: !145, line: 55, type: !31)
!3701 = !DILocalVariable(name: "file", arg: 3, scope: !3695, file: !145, line: 55, type: !51)
!3702 = !DILocalVariable(name: "line_number", arg: 4, scope: !3695, file: !145, line: 56, type: !6)
!3703 = !DILocalVariable(name: "format", arg: 5, scope: !3695, file: !145, line: 56, type: !51)
!3704 = !DILocalVariable(name: "args", arg: 6, scope: !3695, file: !145, line: 56, type: !3680)
!3705 = !DILocalVariable(name: "message", scope: !3695, file: !145, line: 58, type: !40)
!3706 = !DILocation(line: 0, scope: !3695)
!3707 = !DILocation(line: 58, column: 19, scope: !3695)
!3708 = !DILocation(line: 59, column: 7, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3695, file: !145, line: 59, column: 7)
!3710 = !DILocation(line: 59, column: 7, scope: !3695)
!3711 = !DILocation(line: 64, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !145, line: 64, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !145, line: 60, column: 5)
!3714 = !DILocation(line: 64, column: 11, scope: !3713)
!3715 = !DILocation(line: 65, column: 9, scope: !3712)
!3716 = !DILocation(line: 67, column: 9, scope: !3712)
!3717 = !DILocation(line: 73, column: 17, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3709, file: !145, line: 70, column: 5)
!3719 = !DILocation(line: 73, column: 24, scope: !3718)
!3720 = !DILocation(line: 73, column: 7, scope: !3718)
!3721 = !DILocation(line: 74, column: 7, scope: !3718)
!3722 = !DILocation(line: 76, column: 3, scope: !3695)
!3723 = !DILocation(line: 77, column: 1, scope: !3695)
!3724 = !DISubprogram(name: "error_at_line", scope: !1969, file: !1969, line: 55, type: !3725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !31, !31, !51, !6, !51, null}
!3727 = distinct !DISubprogram(name: "xnmalloc", scope: !150, file: !150, line: 99, type: !3728, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!33, !90, !90}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !150, line: 99, type: !90)
!3732 = !DILocalVariable(name: "s", arg: 2, scope: !3727, file: !150, line: 99, type: !90)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocation(line: 101, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !150, line: 101, column: 7)
!3736 = !DILocation(line: 101, column: 7, scope: !3727)
!3737 = !DILocation(line: 102, column: 5, scope: !3735)
!3738 = !DILocation(line: 103, column: 21, scope: !3727)
!3739 = !DILocalVariable(name: "n", arg: 1, scope: !3740, file: !147, line: 39, type: !90)
!3740 = distinct !DISubprogram(name: "xmalloc", scope: !147, file: !147, line: 39, type: !3741, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!33, !90}
!3743 = !{!3739, !3744}
!3744 = !DILocalVariable(name: "p", scope: !3740, file: !147, line: 41, type: !33)
!3745 = !DILocation(line: 0, scope: !3740, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 103, column: 10, scope: !3727)
!3747 = !DILocation(line: 41, column: 13, scope: !3740, inlinedAt: !3746)
!3748 = !DILocation(line: 42, column: 8, scope: !3749, inlinedAt: !3746)
!3749 = distinct !DILexicalBlock(scope: !3740, file: !147, line: 42, column: 7)
!3750 = !DILocation(line: 42, column: 10, scope: !3749, inlinedAt: !3746)
!3751 = !DILocation(line: 43, column: 5, scope: !3749, inlinedAt: !3746)
!3752 = !DILocation(line: 103, column: 3, scope: !3727)
!3753 = !DILocation(line: 0, scope: !3740)
!3754 = !DILocation(line: 41, column: 13, scope: !3740)
!3755 = !DILocation(line: 42, column: 8, scope: !3749)
!3756 = !DILocation(line: 42, column: 10, scope: !3749)
!3757 = !DILocation(line: 43, column: 5, scope: !3749)
!3758 = !DILocation(line: 44, column: 3, scope: !3740)
!3759 = distinct !DISubprogram(name: "xnrealloc", scope: !150, file: !150, line: 112, type: !3760, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!33, !33, !90, !90}
!3762 = !{!3763, !3764, !3765}
!3763 = !DILocalVariable(name: "p", arg: 1, scope: !3759, file: !150, line: 112, type: !33)
!3764 = !DILocalVariable(name: "n", arg: 2, scope: !3759, file: !150, line: 112, type: !90)
!3765 = !DILocalVariable(name: "s", arg: 3, scope: !3759, file: !150, line: 112, type: !90)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 114, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3759, file: !150, line: 114, column: 7)
!3769 = !DILocation(line: 114, column: 7, scope: !3759)
!3770 = !DILocation(line: 115, column: 5, scope: !3768)
!3771 = !DILocation(line: 116, column: 25, scope: !3759)
!3772 = !DILocalVariable(name: "p", arg: 1, scope: !3773, file: !147, line: 51, type: !33)
!3773 = distinct !DISubprogram(name: "xrealloc", scope: !147, file: !147, line: 51, type: !3774, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!33, !33, !90}
!3776 = !{!3772, !3777}
!3777 = !DILocalVariable(name: "n", arg: 2, scope: !3773, file: !147, line: 51, type: !90)
!3778 = !DILocation(line: 0, scope: !3773, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 116, column: 10, scope: !3759)
!3780 = !DILocation(line: 53, column: 8, scope: !3781, inlinedAt: !3779)
!3781 = distinct !DILexicalBlock(scope: !3773, file: !147, line: 53, column: 7)
!3782 = !DILocation(line: 53, column: 10, scope: !3781, inlinedAt: !3779)
!3783 = !DILocation(line: 57, column: 7, scope: !3784, inlinedAt: !3779)
!3784 = distinct !DILexicalBlock(scope: !3781, file: !147, line: 54, column: 5)
!3785 = !DILocation(line: 58, column: 7, scope: !3784, inlinedAt: !3779)
!3786 = !DILocation(line: 61, column: 7, scope: !3773, inlinedAt: !3779)
!3787 = !DILocation(line: 62, column: 8, scope: !3788, inlinedAt: !3779)
!3788 = distinct !DILexicalBlock(scope: !3773, file: !147, line: 62, column: 7)
!3789 = !DILocation(line: 62, column: 10, scope: !3788, inlinedAt: !3779)
!3790 = !DILocation(line: 63, column: 5, scope: !3788, inlinedAt: !3779)
!3791 = !DILocation(line: 116, column: 3, scope: !3759)
!3792 = !DILocation(line: 0, scope: !3773)
!3793 = !DILocation(line: 53, column: 8, scope: !3781)
!3794 = !DILocation(line: 53, column: 10, scope: !3781)
!3795 = !DILocation(line: 57, column: 7, scope: !3784)
!3796 = !DILocation(line: 58, column: 7, scope: !3784)
!3797 = !DILocation(line: 61, column: 7, scope: !3773)
!3798 = !DILocation(line: 62, column: 8, scope: !3788)
!3799 = !DILocation(line: 62, column: 10, scope: !3788)
!3800 = !DILocation(line: 63, column: 5, scope: !3788)
!3801 = !DILocation(line: 65, column: 1, scope: !3773)
!3802 = !DILocation(line: 0, scope: !151)
!3803 = !DILocation(line: 176, column: 14, scope: !151)
!3804 = !DILocation(line: 178, column: 9, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !151, file: !150, line: 178, column: 7)
!3806 = !DILocation(line: 178, column: 7, scope: !151)
!3807 = !DILocation(line: 180, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !150, line: 180, column: 11)
!3809 = distinct !DILexicalBlock(scope: !3805, file: !150, line: 179, column: 5)
!3810 = !DILocation(line: 180, column: 11, scope: !3809)
!3811 = !DILocation(line: 188, column: 30, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !150, line: 181, column: 9)
!3813 = !DILocation(line: 189, column: 16, scope: !3812)
!3814 = !DILocation(line: 189, column: 13, scope: !3812)
!3815 = !DILocation(line: 190, column: 9, scope: !3812)
!3816 = !DILocation(line: 191, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !150, line: 191, column: 11)
!3818 = !DILocation(line: 191, column: 11, scope: !3809)
!3819 = !DILocation(line: 206, column: 7, scope: !151)
!3820 = !DILocation(line: 207, column: 25, scope: !151)
!3821 = !DILocation(line: 0, scope: !3773, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 207, column: 10, scope: !151)
!3823 = !DILocation(line: 53, column: 10, scope: !3781, inlinedAt: !3822)
!3824 = !DILocation(line: 192, column: 9, scope: !3817)
!3825 = !DILocation(line: 200, column: 69, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !150, line: 200, column: 11)
!3827 = distinct !DILexicalBlock(scope: !3805, file: !150, line: 195, column: 5)
!3828 = !DILocation(line: 201, column: 11, scope: !3826)
!3829 = !DILocation(line: 200, column: 11, scope: !3827)
!3830 = !DILocation(line: 202, column: 9, scope: !3826)
!3831 = !DILocation(line: 203, column: 14, scope: !3827)
!3832 = !DILocation(line: 203, column: 18, scope: !3827)
!3833 = !DILocation(line: 203, column: 9, scope: !3827)
!3834 = !DILocation(line: 53, column: 8, scope: !3781, inlinedAt: !3822)
!3835 = !DILocation(line: 57, column: 7, scope: !3784, inlinedAt: !3822)
!3836 = !DILocation(line: 58, column: 7, scope: !3784, inlinedAt: !3822)
!3837 = !DILocation(line: 61, column: 7, scope: !3773, inlinedAt: !3822)
!3838 = !DILocation(line: 62, column: 8, scope: !3788, inlinedAt: !3822)
!3839 = !DILocation(line: 62, column: 10, scope: !3788, inlinedAt: !3822)
!3840 = !DILocation(line: 63, column: 5, scope: !3788, inlinedAt: !3822)
!3841 = !DILocation(line: 207, column: 3, scope: !151)
!3842 = distinct !DISubprogram(name: "xcharalloc", scope: !150, file: !150, line: 216, type: !2918, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3843)
!3843 = !{!3844}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3842, file: !150, line: 216, type: !90)
!3845 = !DILocation(line: 0, scope: !3842)
!3846 = !DILocation(line: 0, scope: !3740, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 218, column: 10, scope: !3842)
!3848 = !DILocation(line: 41, column: 13, scope: !3740, inlinedAt: !3847)
!3849 = !DILocation(line: 42, column: 8, scope: !3749, inlinedAt: !3847)
!3850 = !DILocation(line: 42, column: 10, scope: !3749, inlinedAt: !3847)
!3851 = !DILocation(line: 43, column: 5, scope: !3749, inlinedAt: !3847)
!3852 = !DILocation(line: 218, column: 3, scope: !3842)
!3853 = distinct !DISubprogram(name: "x2realloc", scope: !147, file: !147, line: 74, type: !3854, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!33, !33, !154}
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "p", arg: 1, scope: !3853, file: !147, line: 74, type: !33)
!3858 = !DILocalVariable(name: "pn", arg: 2, scope: !3853, file: !147, line: 74, type: !154)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 0, scope: !151, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 76, column: 10, scope: !3853)
!3862 = !DILocation(line: 176, column: 14, scope: !151, inlinedAt: !3861)
!3863 = !DILocation(line: 178, column: 9, scope: !3805, inlinedAt: !3861)
!3864 = !DILocation(line: 178, column: 7, scope: !151, inlinedAt: !3861)
!3865 = !DILocation(line: 180, column: 13, scope: !3808, inlinedAt: !3861)
!3866 = !DILocation(line: 180, column: 11, scope: !3809, inlinedAt: !3861)
!3867 = !DILocation(line: 191, column: 11, scope: !3817, inlinedAt: !3861)
!3868 = !DILocation(line: 191, column: 11, scope: !3809, inlinedAt: !3861)
!3869 = !DILocation(line: 192, column: 9, scope: !3817, inlinedAt: !3861)
!3870 = !DILocation(line: 201, column: 11, scope: !3826, inlinedAt: !3861)
!3871 = !DILocation(line: 200, column: 11, scope: !3827, inlinedAt: !3861)
!3872 = !DILocation(line: 202, column: 9, scope: !3826, inlinedAt: !3861)
!3873 = !DILocation(line: 203, column: 14, scope: !3827, inlinedAt: !3861)
!3874 = !DILocation(line: 203, column: 18, scope: !3827, inlinedAt: !3861)
!3875 = !DILocation(line: 203, column: 9, scope: !3827, inlinedAt: !3861)
!3876 = !DILocation(line: 0, scope: !3773, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 207, column: 10, scope: !151, inlinedAt: !3861)
!3878 = !DILocation(line: 53, column: 10, scope: !3781, inlinedAt: !3877)
!3879 = !DILocation(line: 206, column: 7, scope: !151, inlinedAt: !3861)
!3880 = !DILocation(line: 61, column: 7, scope: !3773, inlinedAt: !3877)
!3881 = !DILocation(line: 62, column: 8, scope: !3788, inlinedAt: !3877)
!3882 = !DILocation(line: 62, column: 10, scope: !3788, inlinedAt: !3877)
!3883 = !DILocation(line: 63, column: 5, scope: !3788, inlinedAt: !3877)
!3884 = !DILocation(line: 76, column: 3, scope: !3853)
!3885 = distinct !DISubprogram(name: "xzalloc", scope: !147, file: !147, line: 84, type: !3741, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3886)
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !147, line: 84, type: !90)
!3888 = !DILocation(line: 0, scope: !3885)
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !147, line: 93, type: !90)
!3890 = distinct !DISubprogram(name: "xcalloc", scope: !147, file: !147, line: 93, type: !3728, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3891)
!3891 = !{!3889, !3892, !3893}
!3892 = !DILocalVariable(name: "s", arg: 2, scope: !3890, file: !147, line: 93, type: !90)
!3893 = !DILocalVariable(name: "p", scope: !3890, file: !147, line: 95, type: !33)
!3894 = !DILocation(line: 0, scope: !3890, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 86, column: 10, scope: !3885)
!3896 = !DILocation(line: 100, column: 7, scope: !3897, inlinedAt: !3895)
!3897 = distinct !DILexicalBlock(scope: !3890, file: !147, line: 100, column: 7)
!3898 = !DILocation(line: 101, column: 7, scope: !3897, inlinedAt: !3895)
!3899 = !DILocation(line: 101, column: 18, scope: !3897, inlinedAt: !3895)
!3900 = !DILocation(line: 101, column: 16, scope: !3897, inlinedAt: !3895)
!3901 = !DILocation(line: 100, column: 7, scope: !3890, inlinedAt: !3895)
!3902 = !DILocation(line: 102, column: 5, scope: !3897, inlinedAt: !3895)
!3903 = !DILocation(line: 86, column: 3, scope: !3885)
!3904 = !DILocation(line: 0, scope: !3890)
!3905 = !DILocation(line: 100, column: 7, scope: !3897)
!3906 = !DILocation(line: 101, column: 7, scope: !3897)
!3907 = !DILocation(line: 101, column: 18, scope: !3897)
!3908 = !DILocation(line: 101, column: 16, scope: !3897)
!3909 = !DILocation(line: 100, column: 7, scope: !3890)
!3910 = !DILocation(line: 102, column: 5, scope: !3897)
!3911 = !DILocation(line: 103, column: 3, scope: !3890)
!3912 = distinct !DISubprogram(name: "xmemdup", scope: !147, file: !147, line: 111, type: !3913, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3917)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!33, !3915, !90}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "p", arg: 1, scope: !3912, file: !147, line: 111, type: !3915)
!3919 = !DILocalVariable(name: "s", arg: 2, scope: !3912, file: !147, line: 111, type: !90)
!3920 = !DILocation(line: 0, scope: !3912)
!3921 = !DILocation(line: 0, scope: !3740, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 113, column: 18, scope: !3912)
!3923 = !DILocation(line: 41, column: 13, scope: !3740, inlinedAt: !3922)
!3924 = !DILocation(line: 42, column: 8, scope: !3749, inlinedAt: !3922)
!3925 = !DILocation(line: 42, column: 10, scope: !3749, inlinedAt: !3922)
!3926 = !DILocation(line: 43, column: 5, scope: !3749, inlinedAt: !3922)
!3927 = !DILocalVariable(name: "__dest", arg: 1, scope: !3928, file: !2445, line: 26, type: !3931)
!3928 = distinct !DISubprogram(name: "memcpy", scope: !2445, file: !2445, line: 26, type: !3929, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3933)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!33, !3931, !3932, !90}
!3931 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!3932 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3915)
!3933 = !{!3927, !3934, !3935}
!3934 = !DILocalVariable(name: "__src", arg: 2, scope: !3928, file: !2445, line: 26, type: !3932)
!3935 = !DILocalVariable(name: "__len", arg: 3, scope: !3928, file: !2445, line: 26, type: !90)
!3936 = !DILocation(line: 0, scope: !3928, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 113, column: 10, scope: !3912)
!3938 = !DILocation(line: 29, column: 10, scope: !3928, inlinedAt: !3937)
!3939 = !DILocation(line: 113, column: 3, scope: !3912)
!3940 = distinct !DISubprogram(name: "xstrdup", scope: !147, file: !147, line: 119, type: !777, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !3941)
!3941 = !{!3942}
!3942 = !DILocalVariable(name: "string", arg: 1, scope: !3940, file: !147, line: 119, type: !51)
!3943 = !DILocation(line: 0, scope: !3940)
!3944 = !DILocation(line: 121, column: 27, scope: !3940)
!3945 = !DILocation(line: 121, column: 43, scope: !3940)
!3946 = !DILocation(line: 0, scope: !3912, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 121, column: 10, scope: !3940)
!3948 = !DILocation(line: 0, scope: !3740, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 113, column: 18, scope: !3912, inlinedAt: !3947)
!3950 = !DILocation(line: 41, column: 13, scope: !3740, inlinedAt: !3949)
!3951 = !DILocation(line: 42, column: 8, scope: !3749, inlinedAt: !3949)
!3952 = !DILocation(line: 42, column: 10, scope: !3749, inlinedAt: !3949)
!3953 = !DILocation(line: 43, column: 5, scope: !3749, inlinedAt: !3949)
!3954 = !DILocation(line: 0, scope: !3928, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 113, column: 10, scope: !3912, inlinedAt: !3947)
!3956 = !DILocation(line: 29, column: 10, scope: !3928, inlinedAt: !3955)
!3957 = !DILocation(line: 121, column: 3, scope: !3940)
!3958 = distinct !DISubprogram(name: "xalloc_die", scope: !164, file: !164, line: 32, type: !784, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !46)
!3959 = !DILocation(line: 34, column: 10, scope: !3958)
!3960 = !DILocation(line: 34, column: 33, scope: !3958)
!3961 = !DILocation(line: 34, column: 3, scope: !3958)
!3962 = !DILocation(line: 40, column: 3, scope: !3958)
!3963 = distinct !DISubprogram(name: "xvasprintf", scope: !166, file: !166, line: 76, type: !3964, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3973)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!40, !51, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3967, file: !166, baseType: !6, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3967, file: !166, baseType: !6, size: 32, offset: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3967, file: !166, baseType: !33, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3967, file: !166, baseType: !33, size: 64, offset: 128)
!3973 = !{!3974, !3975, !3976, !3977, !3979}
!3974 = !DILocalVariable(name: "format", arg: 1, scope: !3963, file: !166, line: 76, type: !51)
!3975 = !DILocalVariable(name: "args", arg: 2, scope: !3963, file: !166, line: 76, type: !3966)
!3976 = !DILocalVariable(name: "result", scope: !3963, file: !166, line: 78, type: !40)
!3977 = !DILocalVariable(name: "argcount", scope: !3978, file: !166, line: 84, type: !90)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !166, line: 83, column: 3)
!3979 = !DILocalVariable(name: "f", scope: !3978, file: !166, line: 85, type: !51)
!3980 = !DILocation(line: 0, scope: !3963)
!3981 = !DILocation(line: 78, column: 3, scope: !3963)
!3982 = !DILocation(line: 0, scope: !3978)
!3983 = !DILocation(line: 89, column: 13, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !166, line: 89, column: 13)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !166, line: 88, column: 7)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !166, line: 87, column: 5)
!3987 = distinct !DILexicalBlock(scope: !3978, file: !166, line: 87, column: 5)
!3988 = !DILocation(line: 89, column: 16, scope: !3984)
!3989 = !DILocation(line: 89, column: 13, scope: !3985)
!3990 = !DILocalVariable(name: "argcount", arg: 1, scope: !3991, file: !166, line: 33, type: !90)
!3991 = distinct !DISubprogram(name: "xstrcat", scope: !166, file: !166, line: 33, type: !3992, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!40, !90, !3966}
!3994 = !{!3990, !3995, !3996, !3997, !4002, !4003, !4004, !4005, !4009, !4013}
!3995 = !DILocalVariable(name: "args", arg: 2, scope: !3991, file: !166, line: 33, type: !3966)
!3996 = !DILocalVariable(name: "result", scope: !3991, file: !166, line: 35, type: !40)
!3997 = !DILocalVariable(name: "ap", scope: !3991, file: !166, line: 36, type: !3998)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !672, line: 52, baseType: !3999)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !947, line: 32, baseType: !4000)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, baseType: !4001)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3967, size: 192, elements: !705)
!4002 = !DILocalVariable(name: "totalsize", scope: !3991, file: !166, line: 37, type: !90)
!4003 = !DILocalVariable(name: "i", scope: !3991, file: !166, line: 38, type: !90)
!4004 = !DILocalVariable(name: "p", scope: !3991, file: !166, line: 39, type: !40)
!4005 = !DILocalVariable(name: "next", scope: !4006, file: !166, line: 46, type: !51)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !166, line: 45, column: 5)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !166, line: 44, column: 3)
!4008 = distinct !DILexicalBlock(scope: !3991, file: !166, line: 44, column: 3)
!4009 = !DILocalVariable(name: "next", scope: !4010, file: !166, line: 65, type: !51)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !166, line: 64, column: 5)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !166, line: 63, column: 3)
!4012 = distinct !DILexicalBlock(scope: !3991, file: !166, line: 63, column: 3)
!4013 = !DILocalVariable(name: "len", scope: !4010, file: !166, line: 66, type: !90)
!4014 = !DILocation(line: 0, scope: !3991, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 91, column: 18, scope: !3984)
!4016 = !DILocation(line: 36, column: 3, scope: !3991, inlinedAt: !4015)
!4017 = !DILocation(line: 36, column: 11, scope: !3991, inlinedAt: !4015)
!4018 = !DILocation(line: 43, column: 3, scope: !3991, inlinedAt: !4015)
!4019 = !DILocation(line: 44, column: 3, scope: !4008, inlinedAt: !4015)
!4020 = !DILocation(line: 44, column: 24, scope: !4007, inlinedAt: !4015)
!4021 = !DILocation(line: 49, column: 3, scope: !3991, inlinedAt: !4015)
!4022 = !DILocation(line: 61, column: 12, scope: !3991, inlinedAt: !4015)
!4023 = !DILocation(line: 63, column: 3, scope: !4012, inlinedAt: !4015)
!4024 = !DILocation(line: 46, column: 26, scope: !4006, inlinedAt: !4015)
!4025 = !DILocation(line: 0, scope: !4006, inlinedAt: !4015)
!4026 = !DILocation(line: 47, column: 36, scope: !4006, inlinedAt: !4015)
!4027 = !DILocalVariable(name: "size1", arg: 1, scope: !4028, file: !4029, line: 63, type: !90)
!4028 = distinct !DISubprogram(name: "xsum", scope: !4029, file: !4029, line: 63, type: !4030, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !4032)
!4029 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!90, !90, !90}
!4032 = !{!4027, !4033, !4034}
!4033 = !DILocalVariable(name: "size2", arg: 2, scope: !4028, file: !4029, line: 63, type: !90)
!4034 = !DILocalVariable(name: "sum", scope: !4028, file: !4029, line: 65, type: !90)
!4035 = !DILocation(line: 0, scope: !4028, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 47, column: 19, scope: !4006, inlinedAt: !4015)
!4037 = !DILocation(line: 66, column: 11, scope: !4028, inlinedAt: !4036)
!4038 = !DILocation(line: 44, column: 30, scope: !4007, inlinedAt: !4015)
!4039 = distinct !{!4039, !4019, !4040, !647}
!4040 = !DILocation(line: 48, column: 5, scope: !4008, inlinedAt: !4015)
!4041 = !DILocation(line: 54, column: 29, scope: !4042, inlinedAt: !4015)
!4042 = distinct !DILexicalBlock(scope: !3991, file: !166, line: 54, column: 7)
!4043 = !DILocation(line: 56, column: 7, scope: !4044, inlinedAt: !4015)
!4044 = distinct !DILexicalBlock(scope: !4042, file: !166, line: 55, column: 5)
!4045 = !DILocation(line: 56, column: 13, scope: !4044, inlinedAt: !4015)
!4046 = !DILocation(line: 57, column: 7, scope: !4044, inlinedAt: !4015)
!4047 = !DILocation(line: 65, column: 26, scope: !4010, inlinedAt: !4015)
!4048 = !DILocation(line: 0, scope: !4010, inlinedAt: !4015)
!4049 = !DILocation(line: 66, column: 20, scope: !4010, inlinedAt: !4015)
!4050 = !DILocalVariable(name: "__dest", arg: 1, scope: !4051, file: !2445, line: 26, type: !3931)
!4051 = distinct !DISubprogram(name: "memcpy", scope: !2445, file: !2445, line: 26, type: !3929, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !4052)
!4052 = !{!4050, !4053, !4054}
!4053 = !DILocalVariable(name: "__src", arg: 2, scope: !4051, file: !2445, line: 26, type: !3932)
!4054 = !DILocalVariable(name: "__len", arg: 3, scope: !4051, file: !2445, line: 26, type: !90)
!4055 = !DILocation(line: 0, scope: !4051, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 67, column: 7, scope: !4010, inlinedAt: !4015)
!4057 = !DILocation(line: 29, column: 10, scope: !4051, inlinedAt: !4056)
!4058 = !DILocation(line: 68, column: 9, scope: !4010, inlinedAt: !4015)
!4059 = !DILocation(line: 63, column: 30, scope: !4011, inlinedAt: !4015)
!4060 = !DILocation(line: 63, column: 24, scope: !4011, inlinedAt: !4015)
!4061 = distinct !{!4061, !4023, !4062, !647}
!4062 = !DILocation(line: 69, column: 5, scope: !4012, inlinedAt: !4015)
!4063 = !DILocation(line: 70, column: 6, scope: !3991, inlinedAt: !4015)
!4064 = !DILocation(line: 72, column: 3, scope: !3991, inlinedAt: !4015)
!4065 = !DILocation(line: 92, column: 16, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3985, file: !166, line: 92, column: 13)
!4067 = !DILocation(line: 92, column: 13, scope: !3985)
!4068 = !DILocation(line: 94, column: 10, scope: !3985)
!4069 = !DILocation(line: 95, column: 13, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !3985, file: !166, line: 95, column: 13)
!4071 = !DILocation(line: 95, column: 16, scope: !4070)
!4072 = !DILocation(line: 95, column: 13, scope: !3985)
!4073 = !DILocation(line: 97, column: 10, scope: !3985)
!4074 = !DILocation(line: 98, column: 17, scope: !3985)
!4075 = distinct !{!4075, !4076, !4077}
!4076 = !DILocation(line: 87, column: 5, scope: !3987)
!4077 = !DILocation(line: 99, column: 7, scope: !3987)
!4078 = !DILocation(line: 73, column: 1, scope: !3991, inlinedAt: !4015)
!4079 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4080, file: !4081, line: 215, type: !4084)
!4080 = distinct !DISubprogram(name: "vasprintf", scope: !4081, file: !4081, line: 215, type: !4082, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !4086)
!4081 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!31, !4084, !4085, !3966}
!4084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!4085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!4086 = !{!4079, !4087, !4088}
!4087 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4080, file: !4081, line: 215, type: !4085)
!4088 = !DILocalVariable(name: "__ap", arg: 3, scope: !4080, file: !4081, line: 215, type: !3966)
!4089 = !DILocation(line: 0, scope: !4080, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 102, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3963, file: !166, line: 102, column: 7)
!4092 = !DILocation(line: 218, column: 10, scope: !4080, inlinedAt: !4090)
!4093 = !DILocation(line: 102, column: 41, scope: !4091)
!4094 = !DILocation(line: 102, column: 7, scope: !3963)
!4095 = !DILocation(line: 104, column: 11, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !166, line: 104, column: 11)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !166, line: 103, column: 5)
!4098 = !DILocation(line: 104, column: 17, scope: !4096)
!4099 = !DILocation(line: 104, column: 11, scope: !4097)
!4100 = !DILocation(line: 105, column: 9, scope: !4096)
!4101 = !DILocation(line: 109, column: 10, scope: !3963)
!4102 = !DILocation(line: 109, column: 3, scope: !3963)
!4103 = !DILocation(line: 110, column: 1, scope: !3963)
!4104 = distinct !DISubprogram(name: "rpl_calloc", scope: !169, file: !169, line: 42, type: !3728, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !4105)
!4105 = !{!4106, !4107, !4108, !4109}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4104, file: !169, line: 42, type: !90)
!4107 = !DILocalVariable(name: "s", arg: 2, scope: !4104, file: !169, line: 42, type: !90)
!4108 = !DILocalVariable(name: "result", scope: !4104, file: !169, line: 44, type: !33)
!4109 = !DILocalVariable(name: "bytes", scope: !4110, file: !169, line: 56, type: !90)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !169, line: 53, column: 5)
!4111 = distinct !DILexicalBlock(scope: !4104, file: !169, line: 47, column: 7)
!4112 = !DILocation(line: 0, scope: !4104)
!4113 = !DILocation(line: 47, column: 9, scope: !4111)
!4114 = !DILocation(line: 47, column: 14, scope: !4111)
!4115 = !DILocation(line: 0, scope: !4110)
!4116 = !DILocation(line: 57, column: 21, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4110, file: !169, line: 57, column: 11)
!4118 = !DILocation(line: 57, column: 11, scope: !4110)
!4119 = !DILocation(line: 59, column: 11, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4117, file: !169, line: 58, column: 9)
!4121 = !DILocation(line: 59, column: 17, scope: !4120)
!4122 = !DILocation(line: 65, column: 12, scope: !4104)
!4123 = !DILocation(line: 72, column: 3, scope: !4104)
!4124 = !DILocation(line: 73, column: 1, scope: !4104)
!4125 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !172, file: !172, line: 86, type: !4126, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !4140)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!90, !4128, !51, !90, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2200, line: 6, baseType: !4131)
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2202, line: 21, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2202, line: 13, size: 64, elements: !4133)
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4132, file: !2202, line: 15, baseType: !31, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4132, file: !2202, line: 20, baseType: !4136, size: 32, offset: 32)
!4136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4132, file: !2202, line: 16, size: 32, elements: !4137)
!4137 = !{!4138, !4139}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4136, file: !2202, line: 18, baseType: !6, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4136, file: !2202, line: 19, baseType: !2211, size: 32)
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4141 = !DILocalVariable(name: "pwc", arg: 1, scope: !4125, file: !172, line: 86, type: !4128)
!4142 = !DILocalVariable(name: "s", arg: 2, scope: !4125, file: !172, line: 86, type: !51)
!4143 = !DILocalVariable(name: "n", arg: 3, scope: !4125, file: !172, line: 86, type: !90)
!4144 = !DILocalVariable(name: "ps", arg: 4, scope: !4125, file: !172, line: 86, type: !4129)
!4145 = !DILocalVariable(name: "ret", scope: !4125, file: !172, line: 88, type: !90)
!4146 = !DILocalVariable(name: "wc", scope: !4125, file: !172, line: 89, type: !2216)
!4147 = !DILocalVariable(name: "uc", scope: !4148, file: !172, line: 156, type: !2078)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !172, line: 155, column: 5)
!4149 = distinct !DILexicalBlock(scope: !4125, file: !172, line: 154, column: 7)
!4150 = !DILocation(line: 0, scope: !4125)
!4151 = !DILocation(line: 89, column: 3, scope: !4125)
!4152 = !DILocation(line: 105, column: 9, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4125, file: !172, line: 105, column: 7)
!4154 = !DILocation(line: 105, column: 7, scope: !4125)
!4155 = !DILocation(line: 145, column: 9, scope: !4125)
!4156 = !DILocation(line: 154, column: 19, scope: !4149)
!4157 = !DILocation(line: 154, column: 26, scope: !4149)
!4158 = !DILocation(line: 154, column: 41, scope: !4149)
!4159 = !DILocation(line: 154, column: 7, scope: !4125)
!4160 = !DILocation(line: 156, column: 26, scope: !4148)
!4161 = !DILocation(line: 0, scope: !4148)
!4162 = !DILocation(line: 157, column: 14, scope: !4148)
!4163 = !DILocation(line: 157, column: 12, scope: !4148)
!4164 = !DILocation(line: 163, column: 1, scope: !4125)
!4165 = !DISubprogram(name: "mbrtowc", scope: !2878, file: !2878, line: 296, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!92, !4168, !51, !92, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4170 = distinct !DISubprogram(name: "close_stream", scope: !175, file: !175, line: 56, type: !4171, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !4208)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!31, !4173}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4175, line: 7, baseType: !4176)
!4175 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4176, file: !677, line: 51, baseType: !31, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4176, file: !677, line: 54, baseType: !40, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4176, file: !677, line: 55, baseType: !40, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4176, file: !677, line: 56, baseType: !40, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4176, file: !677, line: 57, baseType: !40, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4176, file: !677, line: 58, baseType: !40, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4176, file: !677, line: 59, baseType: !40, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4176, file: !677, line: 60, baseType: !40, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4176, file: !677, line: 61, baseType: !40, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4176, file: !677, line: 64, baseType: !40, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4176, file: !677, line: 65, baseType: !40, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4176, file: !677, line: 66, baseType: !40, size: 64, offset: 704)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4176, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4176, file: !677, line: 70, baseType: !4192, size: 64, offset: 832)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4176, file: !677, line: 72, baseType: !31, size: 32, offset: 896)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4176, file: !677, line: 73, baseType: !31, size: 32, offset: 928)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4176, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4176, file: !677, line: 77, baseType: !32, size: 16, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4176, file: !677, line: 78, baseType: !702, size: 8, offset: 1040)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4176, file: !677, line: 79, baseType: !704, size: 8, offset: 1048)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4176, file: !677, line: 81, baseType: !708, size: 64, offset: 1088)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4176, file: !677, line: 89, baseType: !711, size: 64, offset: 1152)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4176, file: !677, line: 91, baseType: !713, size: 64, offset: 1216)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4176, file: !677, line: 92, baseType: !716, size: 64, offset: 1280)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4176, file: !677, line: 93, baseType: !4192, size: 64, offset: 1344)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4176, file: !677, line: 94, baseType: !33, size: 64, offset: 1408)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4176, file: !677, line: 95, baseType: !90, size: 64, offset: 1472)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4176, file: !677, line: 96, baseType: !31, size: 32, offset: 1536)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4176, file: !677, line: 98, baseType: !723, size: 160, offset: 1568)
!4208 = !{!4209, !4210, !4212, !4213}
!4209 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !175, line: 56, type: !4173)
!4210 = !DILocalVariable(name: "some_pending", scope: !4170, file: !175, line: 58, type: !4211)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!4212 = !DILocalVariable(name: "prev_fail", scope: !4170, file: !175, line: 59, type: !4211)
!4213 = !DILocalVariable(name: "fclose_fail", scope: !4170, file: !175, line: 60, type: !4211)
!4214 = !DILocation(line: 0, scope: !4170)
!4215 = !DILocation(line: 58, column: 30, scope: !4170)
!4216 = !DILocalVariable(name: "__stream", arg: 1, scope: !4217, file: !4218, line: 135, type: !4173)
!4217 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4218, file: !4218, line: 135, type: !4171, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !4219)
!4218 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4219 = !{!4216}
!4220 = !DILocation(line: 0, scope: !4217, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 59, column: 27, scope: !4170)
!4222 = !DILocation(line: 137, column: 10, scope: !4217, inlinedAt: !4221)
!4223 = !{!4224, !751, i64 0}
!4224 = !{!"_IO_FILE", !751, i64 0, !593, i64 8, !593, i64 16, !593, i64 24, !593, i64 32, !593, i64 40, !593, i64 48, !593, i64 56, !593, i64 64, !593, i64 72, !593, i64 80, !593, i64 88, !593, i64 96, !593, i64 104, !751, i64 112, !751, i64 116, !1097, i64 120, !1876, i64 128, !594, i64 130, !594, i64 131, !593, i64 136, !1097, i64 144, !593, i64 152, !593, i64 160, !593, i64 168, !593, i64 176, !1097, i64 184, !751, i64 192, !594, i64 196}
!4225 = !DILocation(line: 59, column: 43, scope: !4170)
!4226 = !DILocation(line: 60, column: 29, scope: !4170)
!4227 = !DILocation(line: 60, column: 45, scope: !4170)
!4228 = !DILocation(line: 70, column: 17, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4170, file: !175, line: 70, column: 7)
!4230 = !DILocation(line: 58, column: 50, scope: !4170)
!4231 = !DILocation(line: 70, column: 33, scope: !4229)
!4232 = !DILocation(line: 70, column: 53, scope: !4229)
!4233 = !DILocation(line: 70, column: 59, scope: !4229)
!4234 = !DILocation(line: 70, column: 7, scope: !4170)
!4235 = !DILocation(line: 72, column: 11, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4229, file: !175, line: 71, column: 5)
!4237 = !DILocation(line: 73, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4236, file: !175, line: 72, column: 11)
!4239 = !DILocation(line: 73, column: 15, scope: !4238)
!4240 = !DILocation(line: 78, column: 1, scope: !4170)
!4241 = distinct !DISubprogram(name: "hard_locale", scope: !177, file: !177, line: 27, type: !787, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !4242)
!4242 = !{!4243, !4244}
!4243 = !DILocalVariable(name: "category", arg: 1, scope: !4241, file: !177, line: 27, type: !31)
!4244 = !DILocalVariable(name: "locale", scope: !4241, file: !177, line: 29, type: !4245)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2056, elements: !4246)
!4246 = !{!4247}
!4247 = !DISubrange(count: 257)
!4248 = !DILocation(line: 0, scope: !4241)
!4249 = !DILocation(line: 29, column: 3, scope: !4241)
!4250 = !DILocation(line: 29, column: 8, scope: !4241)
!4251 = !DILocation(line: 31, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4241, file: !177, line: 31, column: 7)
!4253 = !DILocation(line: 31, column: 7, scope: !4241)
!4254 = !DILocation(line: 34, column: 12, scope: !4241)
!4255 = !DILocation(line: 34, column: 38, scope: !4241)
!4256 = !DILocation(line: 34, column: 41, scope: !4241)
!4257 = !DILocation(line: 34, column: 66, scope: !4241)
!4258 = !DILocation(line: 35, column: 1, scope: !4241)
!4259 = distinct !DISubprogram(name: "locale_charset", scope: !179, file: !179, line: 831, type: !4260, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!51}
!4262 = !{!4263}
!4263 = !DILocalVariable(name: "codeset", scope: !4259, file: !179, line: 833, type: !51)
!4264 = !DILocation(line: 847, column: 13, scope: !4259)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 911, column: 15, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4259, file: !179, line: 911, column: 7)
!4268 = !DILocation(line: 911, column: 7, scope: !4259)
!4269 = !DILocation(line: 1070, column: 13, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !179, line: 1070, column: 13)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !179, line: 1060, column: 7)
!4272 = distinct !DILexicalBlock(scope: !4259, file: !179, line: 1019, column: 3)
!4273 = !DILocation(line: 1070, column: 24, scope: !4270)
!4274 = !DILocation(line: 1070, column: 13, scope: !4271)
!4275 = !DILocation(line: 1158, column: 3, scope: !4259)
!4276 = !DISubprogram(name: "nl_langinfo", scope: !182, file: !182, line: 661, type: !4277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!40, !31}
!4279 = distinct !DISubprogram(name: "setlocale_null_r", scope: !568, file: !568, line: 269, type: !4280, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!31, !31, !40, !90}
!4282 = !{!4283, !4284, !4285}
!4283 = !DILocalVariable(name: "category", arg: 1, scope: !4279, file: !568, line: 269, type: !31)
!4284 = !DILocalVariable(name: "buf", arg: 2, scope: !4279, file: !568, line: 269, type: !40)
!4285 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4279, file: !568, line: 269, type: !90)
!4286 = !DILocation(line: 0, scope: !4279)
!4287 = !DILocalVariable(name: "category", arg: 1, scope: !4288, file: !568, line: 91, type: !31)
!4288 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !568, file: !568, line: 91, type: !4280, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4289)
!4289 = !{!4287, !4290, !4291, !4292, !4293}
!4290 = !DILocalVariable(name: "buf", arg: 2, scope: !4288, file: !568, line: 91, type: !40)
!4291 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4288, file: !568, line: 91, type: !90)
!4292 = !DILocalVariable(name: "result", scope: !4288, file: !568, line: 140, type: !51)
!4293 = !DILocalVariable(name: "length", scope: !4294, file: !568, line: 154, type: !90)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !568, line: 153, column: 5)
!4295 = distinct !DILexicalBlock(scope: !4288, file: !568, line: 142, column: 7)
!4296 = !DILocation(line: 0, scope: !4288, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 274, column: 10, scope: !4279)
!4298 = !DILocalVariable(name: "category", arg: 1, scope: !4299, file: !568, line: 60, type: !31)
!4299 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !568, file: !568, line: 60, type: !4300, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!51, !31}
!4302 = !{!4298, !4303}
!4303 = !DILocalVariable(name: "result", scope: !4299, file: !568, line: 62, type: !51)
!4304 = !DILocation(line: 0, scope: !4299, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 140, column: 24, scope: !4288, inlinedAt: !4297)
!4306 = !DILocation(line: 62, column: 24, scope: !4299, inlinedAt: !4305)
!4307 = !DILocation(line: 142, column: 14, scope: !4295, inlinedAt: !4297)
!4308 = !DILocation(line: 142, column: 7, scope: !4288, inlinedAt: !4297)
!4309 = !DILocation(line: 145, column: 19, scope: !4310, inlinedAt: !4297)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !568, line: 145, column: 11)
!4311 = distinct !DILexicalBlock(scope: !4295, file: !568, line: 143, column: 5)
!4312 = !DILocation(line: 145, column: 11, scope: !4311, inlinedAt: !4297)
!4313 = !DILocation(line: 149, column: 16, scope: !4310, inlinedAt: !4297)
!4314 = !DILocation(line: 149, column: 9, scope: !4310, inlinedAt: !4297)
!4315 = !DILocation(line: 154, column: 23, scope: !4294, inlinedAt: !4297)
!4316 = !DILocation(line: 0, scope: !4294, inlinedAt: !4297)
!4317 = !DILocation(line: 155, column: 18, scope: !4318, inlinedAt: !4297)
!4318 = distinct !DILexicalBlock(scope: !4294, file: !568, line: 155, column: 11)
!4319 = !DILocation(line: 155, column: 11, scope: !4294, inlinedAt: !4297)
!4320 = !DILocation(line: 157, column: 39, scope: !4321, inlinedAt: !4297)
!4321 = distinct !DILexicalBlock(scope: !4318, file: !568, line: 156, column: 9)
!4322 = !DILocalVariable(name: "__dest", arg: 1, scope: !4323, file: !2445, line: 26, type: !3931)
!4323 = distinct !DISubprogram(name: "memcpy", scope: !2445, file: !2445, line: 26, type: !3929, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4324)
!4324 = !{!4322, !4325, !4326}
!4325 = !DILocalVariable(name: "__src", arg: 2, scope: !4323, file: !2445, line: 26, type: !3932)
!4326 = !DILocalVariable(name: "__len", arg: 3, scope: !4323, file: !2445, line: 26, type: !90)
!4327 = !DILocation(line: 0, scope: !4323, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 157, column: 11, scope: !4321, inlinedAt: !4297)
!4329 = !DILocation(line: 29, column: 10, scope: !4323, inlinedAt: !4328)
!4330 = !DILocation(line: 158, column: 11, scope: !4321, inlinedAt: !4297)
!4331 = !DILocation(line: 162, column: 23, scope: !4332, inlinedAt: !4297)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !568, line: 162, column: 15)
!4333 = distinct !DILexicalBlock(scope: !4318, file: !568, line: 161, column: 9)
!4334 = !DILocation(line: 162, column: 15, scope: !4333, inlinedAt: !4297)
!4335 = !DILocation(line: 167, column: 44, scope: !4336, inlinedAt: !4297)
!4336 = distinct !DILexicalBlock(scope: !4332, file: !568, line: 163, column: 13)
!4337 = !DILocation(line: 0, scope: !4323, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 167, column: 15, scope: !4336, inlinedAt: !4297)
!4339 = !DILocation(line: 29, column: 10, scope: !4323, inlinedAt: !4338)
!4340 = !DILocation(line: 168, column: 15, scope: !4336, inlinedAt: !4297)
!4341 = !DILocation(line: 168, column: 32, scope: !4336, inlinedAt: !4297)
!4342 = !DILocation(line: 169, column: 13, scope: !4336, inlinedAt: !4297)
!4343 = !DILocation(line: 0, scope: !4295, inlinedAt: !4297)
!4344 = !DILocation(line: 274, column: 3, scope: !4279)
!4345 = distinct !DISubprogram(name: "setlocale_null", scope: !568, file: !568, line: 301, type: !4300, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4346)
!4346 = !{!4347}
!4347 = !DILocalVariable(name: "category", arg: 1, scope: !4345, file: !568, line: 301, type: !31)
!4348 = !DILocation(line: 0, scope: !4345)
!4349 = !DILocation(line: 0, scope: !4299, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 304, column: 10, scope: !4345)
!4351 = !DILocation(line: 62, column: 24, scope: !4299, inlinedAt: !4350)
!4352 = !DILocation(line: 304, column: 3, scope: !4345)
!4353 = distinct !DISubprogram(name: "rpl_fclose", scope: !570, file: !570, line: 58, type: !4354, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4390)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!31, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4175, line: 7, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4358, file: !677, line: 51, baseType: !31, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4358, file: !677, line: 54, baseType: !40, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4358, file: !677, line: 55, baseType: !40, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4358, file: !677, line: 56, baseType: !40, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4358, file: !677, line: 57, baseType: !40, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4358, file: !677, line: 58, baseType: !40, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4358, file: !677, line: 59, baseType: !40, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4358, file: !677, line: 60, baseType: !40, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4358, file: !677, line: 61, baseType: !40, size: 64, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4358, file: !677, line: 64, baseType: !40, size: 64, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4358, file: !677, line: 65, baseType: !40, size: 64, offset: 640)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4358, file: !677, line: 66, baseType: !40, size: 64, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4358, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4358, file: !677, line: 70, baseType: !4374, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4358, file: !677, line: 72, baseType: !31, size: 32, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4358, file: !677, line: 73, baseType: !31, size: 32, offset: 928)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4358, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4358, file: !677, line: 77, baseType: !32, size: 16, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4358, file: !677, line: 78, baseType: !702, size: 8, offset: 1040)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4358, file: !677, line: 79, baseType: !704, size: 8, offset: 1048)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4358, file: !677, line: 81, baseType: !708, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4358, file: !677, line: 89, baseType: !711, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4358, file: !677, line: 91, baseType: !713, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4358, file: !677, line: 92, baseType: !716, size: 64, offset: 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4358, file: !677, line: 93, baseType: !4374, size: 64, offset: 1344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4358, file: !677, line: 94, baseType: !33, size: 64, offset: 1408)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4358, file: !677, line: 95, baseType: !90, size: 64, offset: 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4358, file: !677, line: 96, baseType: !31, size: 32, offset: 1536)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4358, file: !677, line: 98, baseType: !723, size: 160, offset: 1568)
!4390 = !{!4391, !4392, !4393, !4394}
!4391 = !DILocalVariable(name: "fp", arg: 1, scope: !4353, file: !570, line: 58, type: !4356)
!4392 = !DILocalVariable(name: "saved_errno", scope: !4353, file: !570, line: 60, type: !31)
!4393 = !DILocalVariable(name: "fd", scope: !4353, file: !570, line: 61, type: !31)
!4394 = !DILocalVariable(name: "result", scope: !4353, file: !570, line: 62, type: !31)
!4395 = !DILocation(line: 0, scope: !4353)
!4396 = !DILocation(line: 65, column: 8, scope: !4353)
!4397 = !DILocation(line: 66, column: 10, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4353, file: !570, line: 66, column: 7)
!4399 = !DILocation(line: 66, column: 7, scope: !4353)
!4400 = !DILocation(line: 67, column: 12, scope: !4398)
!4401 = !DILocation(line: 67, column: 5, scope: !4398)
!4402 = !DILocation(line: 72, column: 9, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4353, file: !570, line: 72, column: 7)
!4404 = !DILocation(line: 72, column: 23, scope: !4403)
!4405 = !DILocation(line: 72, column: 33, scope: !4403)
!4406 = !DILocation(line: 72, column: 26, scope: !4403)
!4407 = !DILocation(line: 72, column: 59, scope: !4403)
!4408 = !DILocation(line: 73, column: 7, scope: !4403)
!4409 = !DILocation(line: 73, column: 10, scope: !4403)
!4410 = !DILocation(line: 72, column: 7, scope: !4353)
!4411 = !DILocation(line: 100, column: 12, scope: !4353)
!4412 = !DILocation(line: 105, column: 7, scope: !4353)
!4413 = !DILocation(line: 74, column: 19, scope: !4403)
!4414 = !DILocation(line: 105, column: 19, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4353, file: !570, line: 105, column: 7)
!4416 = !DILocation(line: 107, column: 13, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !570, line: 106, column: 5)
!4418 = !DILocation(line: 109, column: 5, scope: !4417)
!4419 = !DILocation(line: 112, column: 1, scope: !4353)
!4420 = !DISubprogram(name: "fileno", scope: !672, file: !672, line: 785, type: !4421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!31, !4374}
!4423 = !DISubprogram(name: "fclose", scope: !672, file: !672, line: 213, type: !4421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4424 = !DISubprogram(name: "lseek", scope: !1910, file: !1910, line: 334, type: !4425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!699, !31, !699, !31}
!4427 = distinct !DISubprogram(name: "rpl_fflush", scope: !572, file: !572, line: 129, type: !4428, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4464)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!31, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4175, line: 7, baseType: !4432)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4432, file: !677, line: 51, baseType: !31, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4432, file: !677, line: 54, baseType: !40, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4432, file: !677, line: 55, baseType: !40, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4432, file: !677, line: 56, baseType: !40, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4432, file: !677, line: 57, baseType: !40, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4432, file: !677, line: 58, baseType: !40, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4432, file: !677, line: 59, baseType: !40, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4432, file: !677, line: 60, baseType: !40, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4432, file: !677, line: 61, baseType: !40, size: 64, offset: 512)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4432, file: !677, line: 64, baseType: !40, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4432, file: !677, line: 65, baseType: !40, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4432, file: !677, line: 66, baseType: !40, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4432, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4432, file: !677, line: 70, baseType: !4448, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4432, file: !677, line: 72, baseType: !31, size: 32, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4432, file: !677, line: 73, baseType: !31, size: 32, offset: 928)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4432, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4432, file: !677, line: 77, baseType: !32, size: 16, offset: 1024)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4432, file: !677, line: 78, baseType: !702, size: 8, offset: 1040)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4432, file: !677, line: 79, baseType: !704, size: 8, offset: 1048)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4432, file: !677, line: 81, baseType: !708, size: 64, offset: 1088)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4432, file: !677, line: 89, baseType: !711, size: 64, offset: 1152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4432, file: !677, line: 91, baseType: !713, size: 64, offset: 1216)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4432, file: !677, line: 92, baseType: !716, size: 64, offset: 1280)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4432, file: !677, line: 93, baseType: !4448, size: 64, offset: 1344)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4432, file: !677, line: 94, baseType: !33, size: 64, offset: 1408)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4432, file: !677, line: 95, baseType: !90, size: 64, offset: 1472)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4432, file: !677, line: 96, baseType: !31, size: 32, offset: 1536)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4432, file: !677, line: 98, baseType: !723, size: 160, offset: 1568)
!4464 = !{!4465}
!4465 = !DILocalVariable(name: "stream", arg: 1, scope: !4427, file: !572, line: 129, type: !4430)
!4466 = !DILocation(line: 0, scope: !4427)
!4467 = !DILocation(line: 150, column: 14, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4427, file: !572, line: 150, column: 7)
!4469 = !DILocation(line: 150, column: 22, scope: !4468)
!4470 = !DILocation(line: 150, column: 27, scope: !4468)
!4471 = !DILocation(line: 150, column: 7, scope: !4427)
!4472 = !DILocation(line: 151, column: 12, scope: !4468)
!4473 = !DILocation(line: 151, column: 5, scope: !4468)
!4474 = !DILocalVariable(name: "fp", arg: 1, scope: !4475, file: !572, line: 41, type: !4430)
!4475 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !572, file: !572, line: 41, type: !4476, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4430}
!4478 = !{!4474}
!4479 = !DILocation(line: 0, scope: !4475, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 156, column: 3, scope: !4427)
!4481 = !DILocation(line: 43, column: 11, scope: !4482, inlinedAt: !4480)
!4482 = distinct !DILexicalBlock(scope: !4475, file: !572, line: 43, column: 7)
!4483 = !DILocation(line: 43, column: 18, scope: !4482, inlinedAt: !4480)
!4484 = !DILocation(line: 43, column: 7, scope: !4475, inlinedAt: !4480)
!4485 = !DILocation(line: 45, column: 5, scope: !4482, inlinedAt: !4480)
!4486 = !DILocation(line: 158, column: 10, scope: !4427)
!4487 = !DILocation(line: 158, column: 3, scope: !4427)
!4488 = !DILocation(line: 235, column: 1, scope: !4427)
!4489 = !DISubprogram(name: "fflush", scope: !672, file: !672, line: 218, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!31, !4448}
!4492 = distinct !DISubprogram(name: "rpl_fseeko", scope: !574, file: !574, line: 28, type: !4493, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !4530)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!31, !4495, !4529, !31}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !4175, line: 7, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4497, file: !677, line: 51, baseType: !31, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4497, file: !677, line: 54, baseType: !40, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4497, file: !677, line: 55, baseType: !40, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4497, file: !677, line: 56, baseType: !40, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4497, file: !677, line: 57, baseType: !40, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4497, file: !677, line: 58, baseType: !40, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4497, file: !677, line: 59, baseType: !40, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4497, file: !677, line: 60, baseType: !40, size: 64, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4497, file: !677, line: 61, baseType: !40, size: 64, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4497, file: !677, line: 64, baseType: !40, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4497, file: !677, line: 65, baseType: !40, size: 64, offset: 640)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4497, file: !677, line: 66, baseType: !40, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4497, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4497, file: !677, line: 70, baseType: !4513, size: 64, offset: 832)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4497, file: !677, line: 72, baseType: !31, size: 32, offset: 896)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4497, file: !677, line: 73, baseType: !31, size: 32, offset: 928)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4497, file: !677, line: 74, baseType: !698, size: 64, offset: 960)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4497, file: !677, line: 77, baseType: !32, size: 16, offset: 1024)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4497, file: !677, line: 78, baseType: !702, size: 8, offset: 1040)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4497, file: !677, line: 79, baseType: !704, size: 8, offset: 1048)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4497, file: !677, line: 81, baseType: !708, size: 64, offset: 1088)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4497, file: !677, line: 89, baseType: !711, size: 64, offset: 1152)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4497, file: !677, line: 91, baseType: !713, size: 64, offset: 1216)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4497, file: !677, line: 92, baseType: !716, size: 64, offset: 1280)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4497, file: !677, line: 93, baseType: !4513, size: 64, offset: 1344)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4497, file: !677, line: 94, baseType: !33, size: 64, offset: 1408)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4497, file: !677, line: 95, baseType: !90, size: 64, offset: 1472)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4497, file: !677, line: 96, baseType: !31, size: 32, offset: 1536)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4497, file: !677, line: 98, baseType: !723, size: 160, offset: 1568)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !672, line: 63, baseType: !698)
!4530 = !{!4531, !4532, !4533, !4534}
!4531 = !DILocalVariable(name: "fp", arg: 1, scope: !4492, file: !574, line: 28, type: !4495)
!4532 = !DILocalVariable(name: "offset", arg: 2, scope: !4492, file: !574, line: 28, type: !4529)
!4533 = !DILocalVariable(name: "whence", arg: 3, scope: !4492, file: !574, line: 28, type: !31)
!4534 = !DILocalVariable(name: "pos", scope: !4535, file: !574, line: 117, type: !4529)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !574, line: 113, column: 5)
!4536 = distinct !DILexicalBlock(scope: !4492, file: !574, line: 52, column: 7)
!4537 = !DILocation(line: 0, scope: !4492)
!4538 = !DILocation(line: 52, column: 11, scope: !4536)
!4539 = !{!4224, !593, i64 16}
!4540 = !DILocation(line: 52, column: 31, scope: !4536)
!4541 = !{!4224, !593, i64 8}
!4542 = !DILocation(line: 52, column: 24, scope: !4536)
!4543 = !DILocation(line: 53, column: 7, scope: !4536)
!4544 = !DILocation(line: 53, column: 14, scope: !4536)
!4545 = !{!4224, !593, i64 40}
!4546 = !DILocation(line: 53, column: 35, scope: !4536)
!4547 = !{!4224, !593, i64 32}
!4548 = !DILocation(line: 53, column: 28, scope: !4536)
!4549 = !DILocation(line: 54, column: 7, scope: !4536)
!4550 = !DILocation(line: 54, column: 14, scope: !4536)
!4551 = !{!4224, !593, i64 72}
!4552 = !DILocation(line: 54, column: 28, scope: !4536)
!4553 = !DILocation(line: 52, column: 7, scope: !4492)
!4554 = !DILocation(line: 117, column: 26, scope: !4535)
!4555 = !DILocation(line: 117, column: 19, scope: !4535)
!4556 = !DILocation(line: 0, scope: !4535)
!4557 = !DILocation(line: 118, column: 15, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4535, file: !574, line: 118, column: 11)
!4559 = !DILocation(line: 118, column: 11, scope: !4535)
!4560 = !DILocation(line: 129, column: 11, scope: !4535)
!4561 = !DILocation(line: 129, column: 18, scope: !4535)
!4562 = !DILocation(line: 130, column: 11, scope: !4535)
!4563 = !DILocation(line: 130, column: 19, scope: !4535)
!4564 = !{!4224, !1097, i64 144}
!4565 = !DILocation(line: 161, column: 7, scope: !4535)
!4566 = !DILocation(line: 163, column: 10, scope: !4492)
!4567 = !DILocation(line: 163, column: 3, scope: !4492)
!4568 = !DILocation(line: 164, column: 1, scope: !4492)
!4569 = !DISubprogram(name: "fseeko", scope: !672, file: !672, line: 712, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!31, !4513, !699, !31}
