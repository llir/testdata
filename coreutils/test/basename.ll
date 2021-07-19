; ModuleID = 'coreutils-8.32/src/basename.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"  -a, --multiple       support multiple arguments and treat each as a NAME\0A  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\0A  -z, --zero           end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !26
@.str.37 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !31
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !36
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !39
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !45
@.str.57 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.69, i32 0, i32 0), i8* null], align 16, !dbg !51
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !97
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !103
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !115
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.73 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.74 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.75 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.76 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !122
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !129
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !117
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !131
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !137
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !592 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !596, metadata !DIExpression()), !dbg !597
  %3 = icmp eq i32 %0, 0, !dbg !598
  br i1 %3, label %9, label %4, !dbg !600

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !601, !tbaa !603
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !601
  %7 = load i8*, i8** @program_name, align 8, !dbg !601, !tbaa !603
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !601
  br label %67, !dbg !601

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !607
  %11 = load i8*, i8** @program_name, align 8, !dbg !607, !tbaa !603
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #26, !dbg !607
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !609
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !603
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !609
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 5) #26, !dbg !610
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !603
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #26, !dbg !610
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !616
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !603
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !616
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !617
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !603
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !617
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !618
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !603
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !618
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !619
  %29 = load i8*, i8** @program_name, align 8, !dbg !619, !tbaa !603
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* %29, i8* %29, i8* %29, i8* %29) #26, !dbg !619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !620, metadata !DIExpression()) #26, !dbg !638
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !640
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #26, !dbg !640
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !625, metadata !DIExpression()) #26, !dbg !641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !634, metadata !DIExpression()) #26, !dbg !638
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !635, metadata !DIExpression()) #26, !dbg !638
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !642
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !635, metadata !DIExpression()) #26, !dbg !638
  br label %33, !dbg !643

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !635, metadata !DIExpression()) #26, !dbg !638
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #27, !dbg !644
  %37 = icmp eq i32 %36, 0, !dbg !644
  br i1 %37, label %43, label %38, !dbg !643

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !645
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !635, metadata !DIExpression()) #26, !dbg !638
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !646
  %41 = load i8*, i8** %40, align 8, !dbg !646, !tbaa !647
  %42 = icmp eq i8* %41, null, !dbg !649
  br i1 %42, label %43, label %33, !dbg !650, !llvm.loop !651

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !653
  %46 = load i8*, i8** %45, align 8, !dbg !653, !tbaa !655
  %47 = icmp eq i8* %46, null, !dbg !656
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !657
  call void @llvm.dbg.value(metadata i8* %48, metadata !634, metadata !DIExpression()) #26, !dbg !638
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #26, !dbg !658
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #26, !dbg !658
  %51 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !659
  call void @llvm.dbg.value(metadata i8* %51, metadata !637, metadata !DIExpression()) #26, !dbg !638
  %52 = icmp eq i8* %51, null, !dbg !660
  br i1 %52, label %60, label %53, !dbg !662

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #27, !dbg !663
  %55 = icmp eq i32 %54, 0, !dbg !663
  br i1 %55, label %60, label %56, !dbg !664

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #26, !dbg !665
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !603
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #26, !dbg !665
  br label %60, !dbg !667

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #26, !dbg !668
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !668
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #26, !dbg !669
  %64 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !669
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !669
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #26, !dbg !669
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #26, !dbg !670
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #28, !dbg !671
  unreachable, !dbg !671
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !672 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !676 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !732 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !741, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8** %1, metadata !742, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 0, metadata !743, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 0, metadata !744, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8* null, metadata !745, metadata !DIExpression()), !dbg !748
  %3 = load i8*, i8** %1, align 8, !dbg !749, !tbaa !603
  tail call void @set_program_name(i8* %3) #26, !dbg !750
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !751
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !752
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !753
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !754
  br label %16, !dbg !755

8:                                                ; preds = %11, %16
  %9 = phi i8 [ %17, %16 ], [ 1, %11 ]
  %10 = phi i8 [ %18, %16 ], [ %12, %11 ]
  br label %11, !dbg !756

11:                                               ; preds = %11, %8
  %12 = phi i8 [ %10, %8 ], [ 1, %11 ], !dbg !757
  call void @llvm.dbg.value(metadata i8* %19, metadata !745, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 %12, metadata !744, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 %9, metadata !743, metadata !DIExpression()), !dbg !748
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !758
  call void @llvm.dbg.value(metadata i32 %13, metadata !746, metadata !DIExpression()), !dbg !759
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 115, label %14
    i32 97, label %8
    i32 122, label %11
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !756

14:                                               ; preds = %11
  %15 = load i8*, i8** @optarg, align 8, !dbg !760, !tbaa !603
  call void @llvm.dbg.value(metadata i8* %15, metadata !745, metadata !DIExpression()), !dbg !748
  br label %16, !dbg !762

16:                                               ; preds = %2, %14
  %17 = phi i8 [ 0, %2 ], [ 1, %14 ]
  %18 = phi i8 [ 0, %2 ], [ %12, %14 ]
  %19 = phi i8* [ null, %2 ], [ %15, %14 ]
  br label %8, !dbg !756

20:                                               ; preds = %11
  tail call void @usage(i32 0) #29, !dbg !763
  unreachable, !dbg !763

21:                                               ; preds = %11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !603
  %23 = load i8*, i8** @Version, align 8, !dbg !764, !tbaa !603
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #26, !dbg !764
  tail call void @exit(i32 0) #28, !dbg !764
  unreachable, !dbg !764

24:                                               ; preds = %11
  tail call void @usage(i32 1) #29, !dbg !765
  unreachable, !dbg !765

25:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* undef, metadata !745, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 undef, metadata !744, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i8 undef, metadata !743, metadata !DIExpression()), !dbg !748
  %26 = load i32, i32* @optind, align 4, !dbg !766, !tbaa !768
  %27 = icmp slt i32 %26, %0, !dbg !770
  br i1 %27, label %30, label %28, !dbg !771

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #26, !dbg !772
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #26, !dbg !774
  tail call void @usage(i32 1) #29, !dbg !775
  unreachable, !dbg !775

30:                                               ; preds = %25
  %31 = icmp eq i8 %9, 0, !dbg !776
  %32 = add nsw i32 %26, 2
  %33 = icmp slt i32 %32, %0
  %34 = and i1 %31, %33, !dbg !778
  br i1 %34, label %35, label %43, !dbg !778

35:                                               ; preds = %30
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #26, !dbg !779
  %37 = load i32, i32* @optind, align 4, !dbg !781, !tbaa !768
  %38 = add nsw i32 %37, 2, !dbg !782
  %39 = sext i32 %38 to i64, !dbg !783
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !783
  %41 = load i8*, i8** %40, align 8, !dbg !783, !tbaa !603
  %42 = tail call i8* @quote(i8* %41) #26, !dbg !784
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36, i8* %42) #26, !dbg !785
  tail call void @usage(i32 1) #29, !dbg !786
  unreachable, !dbg !786

43:                                               ; preds = %30
  br i1 %31, label %54, label %44, !dbg !787

44:                                               ; preds = %43
  %45 = icmp ne i8 %12, 0
  br label %46, !dbg !788

46:                                               ; preds = %44, %46
  %47 = phi i32 [ %26, %44 ], [ %52, %46 ]
  %48 = sext i32 %47 to i64, !dbg !792
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !792
  %50 = load i8*, i8** %49, align 8, !dbg !792, !tbaa !603
  tail call fastcc void @perform_basename(i8* %50, i8* %19, i1 zeroext %45), !dbg !794
  %51 = load i32, i32* @optind, align 4, !dbg !795, !tbaa !768
  %52 = add nsw i32 %51, 1, !dbg !795
  store i32 %52, i32* @optind, align 4, !dbg !795, !tbaa !768
  %53 = icmp slt i32 %52, %0, !dbg !796
  br i1 %53, label %46, label %67, !dbg !788, !llvm.loop !797

54:                                               ; preds = %43
  %55 = sext i32 %26 to i64, !dbg !799
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !799
  %57 = load i8*, i8** %56, align 8, !dbg !799, !tbaa !603
  %58 = icmp eq i32 %32, %0, !dbg !800
  br i1 %58, label %59, label %64, !dbg !801

59:                                               ; preds = %54
  %60 = add nsw i32 %26, 1, !dbg !802
  %61 = sext i32 %60 to i64, !dbg !803
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !803
  %63 = load i8*, i8** %62, align 8, !dbg !803, !tbaa !603
  br label %64, !dbg !801

64:                                               ; preds = %54, %59
  %65 = phi i8* [ %63, %59 ], [ null, %54 ], !dbg !801
  %66 = icmp ne i8 %12, 0, !dbg !804
  tail call fastcc void @perform_basename(i8* %57, i8* %65, i1 zeroext %66), !dbg !805
  br label %67

67:                                               ; preds = %46, %64
  ret i32 0, !dbg !806
}

; Function Attrs: nounwind
declare !dbg !807 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !810 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !813 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !818 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !824 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @perform_basename(i8* %0, i8* readonly %1, i1 zeroext %2) unnamed_addr #8 !dbg !828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !832, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8* %1, metadata !833, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i1 %2, metadata !834, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !836
  %4 = tail call noalias i8* @base_name(i8* %0) #26, !dbg !837
  call void @llvm.dbg.value(metadata i8* %4, metadata !835, metadata !DIExpression()), !dbg !836
  %5 = tail call zeroext i1 @strip_trailing_slashes(i8* %4) #26, !dbg !838
  %6 = icmp eq i8* %1, null, !dbg !839
  br i1 %6, label %29, label %7, !dbg !841

7:                                                ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !842, !tbaa !843
  %9 = icmp eq i8 %8, 47, !dbg !842
  br i1 %9, label %29, label %10, !dbg !844

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %4, metadata !845, metadata !DIExpression()) #26, !dbg !853
  call void @llvm.dbg.value(metadata i8* %1, metadata !850, metadata !DIExpression()) #26, !dbg !853
  %11 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %4) #27, !dbg !855
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !856
  call void @llvm.dbg.value(metadata i8* %12, metadata !851, metadata !DIExpression()) #26, !dbg !853
  %13 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #27, !dbg !857
  %14 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !858
  call void @llvm.dbg.value(metadata i8* %14, metadata !852, metadata !DIExpression()) #26, !dbg !853
  br label %15, !dbg !859

15:                                               ; preds = %21, %10
  %16 = phi i8* [ %12, %10 ], [ %22, %21 ], !dbg !853
  %17 = phi i8* [ %14, %10 ], [ %24, %21 ], !dbg !853
  call void @llvm.dbg.value(metadata i8* %17, metadata !852, metadata !DIExpression()) #26, !dbg !853
  call void @llvm.dbg.value(metadata i8* %16, metadata !851, metadata !DIExpression()) #26, !dbg !853
  %18 = icmp ugt i8* %16, %4, !dbg !860
  %19 = icmp ugt i8* %17, %1, !dbg !861
  %20 = and i1 %18, %19, !dbg !861
  br i1 %20, label %21, label %27, !dbg !859

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !862
  call void @llvm.dbg.value(metadata i8* %22, metadata !851, metadata !DIExpression()) #26, !dbg !853
  %23 = load i8, i8* %22, align 1, !dbg !864, !tbaa !843
  %24 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !865
  call void @llvm.dbg.value(metadata i8* %24, metadata !852, metadata !DIExpression()) #26, !dbg !853
  %25 = load i8, i8* %24, align 1, !dbg !866, !tbaa !843
  %26 = icmp eq i8 %23, %25, !dbg !867
  br i1 %26, label %15, label %29, !dbg !868, !llvm.loop !869

27:                                               ; preds = %15
  br i1 %18, label %28, label %29, !dbg !871

28:                                               ; preds = %27
  store i8 0, i8* %16, align 1, !dbg !872, !tbaa !843
  br label %29, !dbg !874

29:                                               ; preds = %21, %28, %27, %7, %3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875, !tbaa !603
  %31 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %30), !dbg !875
  %32 = select i1 %2, i32 0, i32 10, !dbg !876
  call void @llvm.dbg.value(metadata i32 %32, metadata !877, metadata !DIExpression()) #26, !dbg !883
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !885, !tbaa !603
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !885
  %35 = load i8*, i8** %34, align 8, !dbg !885, !tbaa !886
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !885
  %37 = load i8*, i8** %36, align 8, !dbg !885, !tbaa !890
  %38 = icmp ult i8* %35, %37, !dbg !885
  br i1 %38, label %41, label %39, !dbg !885, !prof !891

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %33, i32 %32) #26, !dbg !885
  br label %44, !dbg !885

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !885
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !885
  store i8* %43, i8** %34, align 8, !dbg !885, !tbaa !886
  store i8 %42, i8* %35, align 1, !dbg !885, !tbaa !843
  br label %44, !dbg !885

44:                                               ; preds = %39, %41
  tail call void @free(i8* %4) #26, !dbg !892
  ret void, !dbg !893
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !896, metadata !DIExpression()), !dbg !897
  store i8* %0, i8** @file_name, align 8, !dbg !898, !tbaa !603
  ret void, !dbg !899
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !900 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !904, metadata !DIExpression()), !dbg !905
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !906, !tbaa !907
  ret void, !dbg !909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !910 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !915, !tbaa !603
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !916
  %3 = icmp eq i32 %2, 0, !dbg !917
  br i1 %3, label %22, label %4, !dbg !918

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !919, !tbaa !907, !range !920
  %6 = icmp eq i8 %5, 0, !dbg !919
  br i1 %6, label %11, label %7, !dbg !921

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !922
  %9 = load i32, i32* %8, align 4, !dbg !922, !tbaa !768
  %10 = icmp eq i32 %9, 32, !dbg !923
  br i1 %10, label %22, label %11, !dbg !924

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #26, !dbg !925
  call void @llvm.dbg.value(metadata i8* %12, metadata !912, metadata !DIExpression()), !dbg !926
  %13 = load i8*, i8** @file_name, align 8, !dbg !927, !tbaa !603
  %14 = icmp eq i8* %13, null, !dbg !927
  %15 = tail call i32* @__errno_location() #30, !dbg !929
  %16 = load i32, i32* %15, align 4, !dbg !929, !tbaa !768
  br i1 %14, label %19, label %17, !dbg !930

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !931
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !932
  br label %20, !dbg !932

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #26, !dbg !933
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !934, !tbaa !768
  tail call void @_exit(i32 %21) #28, !dbg !935
  unreachable, !dbg !935

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !936, !tbaa !603
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !938
  %25 = icmp eq i32 %24, 0, !dbg !939
  br i1 %25, label %28, label %26, !dbg !940

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !941, !tbaa !768
  tail call void @_exit(i32 %27) #28, !dbg !942
  unreachable, !dbg !942

28:                                               ; preds = %22
  ret void, !dbg !943
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @base_name(i8* %0) local_unnamed_addr #8 !dbg !944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !946, metadata !DIExpression()), !dbg !949
  %2 = tail call i8* @last_component(i8* %0) #27, !dbg !950
  call void @llvm.dbg.value(metadata i8* %2, metadata !947, metadata !DIExpression()), !dbg !949
  %3 = load i8, i8* %2, align 1, !dbg !951, !tbaa !843
  %4 = icmp eq i8 %3, 0, !dbg !951
  br i1 %4, label %5, label %8, !dbg !953

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(i8* %0) #27, !dbg !954
  %7 = tail call noalias i8* @xstrndup(i8* %0, i64 %6) #26, !dbg !955
  br label %16, !dbg !956

8:                                                ; preds = %1
  %9 = tail call i64 @base_len(i8* nonnull %2) #27, !dbg !957
  call void @llvm.dbg.value(metadata i64 %9, metadata !948, metadata !DIExpression()), !dbg !949
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !958
  %11 = load i8, i8* %10, align 1, !dbg !958, !tbaa !843
  %12 = icmp eq i8 %11, 47, !dbg !958
  %13 = zext i1 %12 to i64, !dbg !960
  %14 = add i64 %9, %13, !dbg !960
  call void @llvm.dbg.value(metadata i64 %14, metadata !948, metadata !DIExpression()), !dbg !949
  %15 = tail call noalias i8* @xstrndup(i8* nonnull %2, i64 %14) #26, !dbg !961
  br label %16, !dbg !962

16:                                               ; preds = %8, %5
  %17 = phi i8* [ %15, %8 ], [ %7, %5 ], !dbg !949
  ret i8* %17, !dbg !963
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #13 !dbg !964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !966, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %0, metadata !967, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !970
  br label %2, !dbg !971

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !970
  call void @llvm.dbg.value(metadata i8* %3, metadata !967, metadata !DIExpression()), !dbg !970
  %4 = load i8, i8* %3, align 1, !dbg !972, !tbaa !843
  %5 = icmp eq i8 %4, 47, !dbg !972
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !973
  call void @llvm.dbg.value(metadata i8* %6, metadata !967, metadata !DIExpression()), !dbg !970
  br i1 %5, label %2, label %7, !dbg !971, !llvm.loop !974

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !975
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !978
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !979
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !970
  call void @llvm.dbg.value(metadata i8 %11, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %10, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %9, metadata !967, metadata !DIExpression()), !dbg !970
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !980

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !981
  %14 = icmp eq i8 %13, 0, !dbg !981
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !985
  %16 = select i1 %14, i8 %11, i8 0, !dbg !985
  br label %17, !dbg !985

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !970
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !970
  call void @llvm.dbg.value(metadata i8 %19, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %18, metadata !967, metadata !DIExpression()), !dbg !970
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !986
  call void @llvm.dbg.value(metadata i8* %20, metadata !968, metadata !DIExpression()), !dbg !970
  %21 = load i8, i8* %20, align 1, !dbg !975, !tbaa !843
  br label %7, !dbg !987, !llvm.loop !988

22:                                               ; preds = %7
  ret i8* %9, !dbg !990
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #14 !dbg !991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !995, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 0, metadata !997, metadata !DIExpression()), !dbg !998
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !999
  call void @llvm.dbg.value(metadata i64 %2, metadata !996, metadata !DIExpression()), !dbg !998
  %3 = icmp ne i64 %2, 0, !dbg !1001
  %4 = zext i1 %3 to i64, !dbg !1001
  br label %5, !dbg !1001

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1002
  call void @llvm.dbg.value(metadata i64 %6, metadata !996, metadata !DIExpression()), !dbg !998
  %7 = icmp ugt i64 %6, 1, !dbg !1003
  br i1 %7, label %8, label %13, !dbg !1005

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1006
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1006
  %11 = load i8, i8* %10, align 1, !dbg !1006, !tbaa !843
  %12 = icmp eq i8 %11, 47, !dbg !1006
  br i1 %12, label %5, label %13, !dbg !1007, !llvm.loop !1008

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1002
  ret i64 %14, !dbg !1010
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local zeroext i1 @strip_trailing_slashes(i8* %0) local_unnamed_addr #15 !dbg !1011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1015, metadata !DIExpression()), !dbg !1019
  %2 = tail call i8* @last_component(i8* %0) #27, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %2, metadata !1016, metadata !DIExpression()), !dbg !1019
  %3 = load i8, i8* %2, align 1, !dbg !1021, !tbaa !843
  %4 = icmp eq i8 %3, 0, !dbg !1021
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %5, metadata !1016, metadata !DIExpression()), !dbg !1019
  %6 = tail call i64 @base_len(i8* %5) #27, !dbg !1024
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %7, metadata !1017, metadata !DIExpression()), !dbg !1019
  %8 = load i8, i8* %7, align 1, !dbg !1026, !tbaa !843
  %9 = icmp ne i8 %8, 0, !dbg !1027
  call void @llvm.dbg.value(metadata i1 %9, metadata !1018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1019
  store i8 0, i8* %7, align 1, !dbg !1028, !tbaa !843
  ret i1 %9, !dbg !1029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1030 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1032, metadata !DIExpression()), !dbg !1035
  %2 = icmp eq i8* %0, null, !dbg !1036
  br i1 %2, label %3, label %6, !dbg !1038

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1039, !tbaa !603
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1041
  tail call void @abort() #28, !dbg !1042
  unreachable, !dbg !1042

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %7, metadata !1033, metadata !DIExpression()), !dbg !1035
  %8 = icmp eq i8* %7, null, !dbg !1044
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1045
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %10, metadata !1034, metadata !DIExpression()), !dbg !1035
  %11 = ptrtoint i8* %10 to i64, !dbg !1046
  %12 = ptrtoint i8* %0 to i64, !dbg !1046
  %13 = sub i64 %11, %12, !dbg !1046
  %14 = icmp sgt i64 %13, 6, !dbg !1048
  br i1 %14, label %15, label %24, !dbg !1049

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1050
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.58, i64 0, i64 0), i64 7) #27, !dbg !1051
  %18 = icmp eq i32 %17, 0, !dbg !1052
  br i1 %18, label %19, label %24, !dbg !1053

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1032, metadata !DIExpression()), !dbg !1035
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.59, i64 0, i64 0), i64 3) #27, !dbg !1054
  %21 = icmp eq i32 %20, 0, !dbg !1057
  br i1 %21, label %22, label %24, !dbg !1058

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %23, metadata !1032, metadata !DIExpression()), !dbg !1035
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1061, !tbaa !603
  br label %24, !dbg !1062

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1032, metadata !DIExpression()), !dbg !1035
  store i8* %25, i8** @program_name, align 8, !dbg !1063, !tbaa !603
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1064, !tbaa !603
  ret void, !dbg !1065
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1071, metadata !DIExpression()), !dbg !1074
  %2 = tail call i32* @__errno_location() #30, !dbg !1075
  %3 = load i32, i32* %2, align 4, !dbg !1075, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %3, metadata !1072, metadata !DIExpression()), !dbg !1074
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1076
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1076
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1076
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1077
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1073, metadata !DIExpression()), !dbg !1074
  store i32 %3, i32* %2, align 4, !dbg !1078, !tbaa !768
  ret %struct.quoting_options* %8, !dbg !1079
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1080 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1086, metadata !DIExpression()), !dbg !1087
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1088
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1088
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1089
  %5 = load i32, i32* %4, align 8, !dbg !1089, !tbaa !1090
  ret i32 %5, !dbg !1092
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1093 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %1, metadata !1098, metadata !DIExpression()), !dbg !1099
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1100
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1100
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1101
  store i32 %1, i32* %5, align 8, !dbg !1102, !tbaa !1090
  ret void, !dbg !1103
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1104 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1108, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %1, metadata !1109, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i32 %2, metadata !1110, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %1, metadata !1111, metadata !DIExpression()), !dbg !1116
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1117
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1117
  %6 = lshr i8 %1, 5, !dbg !1118
  %7 = zext i8 %6 to i64, !dbg !1118
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1119
  call void @llvm.dbg.value(metadata i32* %8, metadata !1112, metadata !DIExpression()), !dbg !1116
  %9 = and i8 %1, 31, !dbg !1120
  %10 = zext i8 %9 to i32, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %10, metadata !1114, metadata !DIExpression()), !dbg !1116
  %11 = load i32, i32* %8, align 4, !dbg !1121, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !1122
  %13 = and i32 %12, 1, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %13, metadata !1115, metadata !DIExpression()), !dbg !1116
  %14 = and i32 %2, 1, !dbg !1124
  %15 = xor i32 %13, %14, !dbg !1125
  %16 = shl i32 %15, %10, !dbg !1126
  %17 = xor i32 %16, %11, !dbg !1127
  store i32 %17, i32* %8, align 4, !dbg !1127, !tbaa !768
  ret i32 %13, !dbg !1128
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1129 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1133, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %1, metadata !1134, metadata !DIExpression()), !dbg !1136
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1137
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1133, metadata !DIExpression()), !dbg !1136
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1140
  %6 = load i32, i32* %5, align 4, !dbg !1140, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %6, metadata !1135, metadata !DIExpression()), !dbg !1136
  store i32 %1, i32* %5, align 4, !dbg !1142, !tbaa !1141
  ret i32 %6, !dbg !1143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1144 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %1, metadata !1149, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %2, metadata !1150, metadata !DIExpression()), !dbg !1151
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1152
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1148, metadata !DIExpression()), !dbg !1151
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1155
  store i32 10, i32* %6, align 8, !dbg !1156, !tbaa !1090
  %7 = icmp ne i8* %1, null, !dbg !1157
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1159
  br i1 %9, label %11, label %10, !dbg !1159

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1160
  unreachable, !dbg !1160

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1161
  store i8* %1, i8** %12, align 8, !dbg !1162, !tbaa !1163
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1164
  store i8* %2, i8** %13, align 8, !dbg !1165, !tbaa !1166
  ret void, !dbg !1167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1168 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %1, metadata !1173, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %2, metadata !1174, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %3, metadata !1175, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1176, metadata !DIExpression()), !dbg !1180
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1181
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1177, metadata !DIExpression()), !dbg !1180
  %8 = tail call i32* @__errno_location() #30, !dbg !1182
  %9 = load i32, i32* %8, align 4, !dbg !1182, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %9, metadata !1178, metadata !DIExpression()), !dbg !1180
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1183
  %11 = load i32, i32* %10, align 8, !dbg !1183, !tbaa !1090
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1184
  %13 = load i32, i32* %12, align 4, !dbg !1184, !tbaa !1141
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1185
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1186
  %16 = load i8*, i8** %15, align 8, !dbg !1186, !tbaa !1163
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1187
  %18 = load i8*, i8** %17, align 8, !dbg !1187, !tbaa !1166
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %19, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i32 %9, i32* %8, align 4, !dbg !1189, !tbaa !768
  ret i64 %19, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1191 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1197, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %1, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %2, metadata !1199, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %3, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %4, metadata !1201, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %5, metadata !1202, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32* %6, metadata !1203, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %7, metadata !1204, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %8, metadata !1205, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* null, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1211, metadata !DIExpression()), !dbg !1267
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1268
  %14 = icmp eq i64 %13, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i1 %14, metadata !1212, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1267
  %15 = lshr i32 %5, 1, !dbg !1270
  %16 = trunc i32 %15 to i8, !dbg !1270
  %17 = and i8 %16, 1, !dbg !1270
  call void @llvm.dbg.value(metadata i8 %17, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1216, metadata !DIExpression()), !dbg !1267
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1271

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1272
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1273
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1274
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1275
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1267
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1276
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1277
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1278
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %38, metadata !1216, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %37, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %36, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %35, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %34, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %33, metadata !1211, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %32, metadata !1210, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %31, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %30, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %29, metadata !1205, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %28, metadata !1204, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %27, metadata !1201, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1261), !dbg !1279
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
  ], !dbg !1280

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 5, metadata !1201, metadata !DIExpression()), !dbg !1267
  br label %92, !dbg !1281

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 5, metadata !1201, metadata !DIExpression()), !dbg !1267
  %42 = and i8 %35, 1, !dbg !1283
  %43 = icmp eq i8 %42, 0, !dbg !1283
  br i1 %43, label %44, label %92, !dbg !1281

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1285
  br i1 %45, label %92, label %46, !dbg !1288

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1285, !tbaa !843
  br label %92, !dbg !1285

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.70, i64 0, i64 0), i32 %27), !dbg !1289
  call void @llvm.dbg.value(metadata i8* %48, metadata !1204, metadata !DIExpression()), !dbg !1267
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), i32 %27), !dbg !1293
  call void @llvm.dbg.value(metadata i8* %49, metadata !1205, metadata !DIExpression()), !dbg !1267
  br label %50, !dbg !1294

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1205, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %51, metadata !1204, metadata !DIExpression()), !dbg !1267
  %53 = and i8 %35, 1, !dbg !1295
  %54 = icmp eq i8 %53, 0, !dbg !1295
  br i1 %54, label %55, label %70, !dbg !1297

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1207, metadata !DIExpression()), !dbg !1267
  %56 = load i8, i8* %51, align 1, !dbg !1298, !tbaa !843
  %57 = icmp eq i8 %56, 0, !dbg !1301
  br i1 %57, label %70, label %58, !dbg !1301

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %61, metadata !1207, metadata !DIExpression()), !dbg !1267
  %62 = icmp ult i64 %61, %39, !dbg !1302
  br i1 %62, label %63, label %65, !dbg !1305

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1302
  store i8 %59, i8* %64, align 1, !dbg !1302, !tbaa !843
  br label %65, !dbg !1302

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %66, metadata !1207, metadata !DIExpression()), !dbg !1267
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %67, metadata !1209, metadata !DIExpression()), !dbg !1267
  %68 = load i8, i8* %67, align 1, !dbg !1298, !tbaa !843
  %69 = icmp eq i8 %68, 0, !dbg !1301
  br i1 %69, label %70, label %58, !dbg !1301, !llvm.loop !1307

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1309
  call void @llvm.dbg.value(metadata i64 %71, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1211, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %52, metadata !1209, metadata !DIExpression()), !dbg !1267
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %72, metadata !1210, metadata !DIExpression()), !dbg !1267
  br label %92, !dbg !1311

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1211, metadata !DIExpression()), !dbg !1267
  br label %74, !dbg !1312

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %75, metadata !1211, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1213, metadata !DIExpression()), !dbg !1267
  br label %76, !dbg !1313

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1275
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %78, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %77, metadata !1211, metadata !DIExpression()), !dbg !1267
  %79 = and i8 %78, 1, !dbg !1314
  %80 = icmp eq i8 %79, 0, !dbg !1314
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1316
  br label %82, !dbg !1316

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1267
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1270
  call void @llvm.dbg.value(metadata i8 %84, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %83, metadata !1211, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 2, metadata !1201, metadata !DIExpression()), !dbg !1267
  %85 = and i8 %84, 1, !dbg !1317
  %86 = icmp eq i8 %85, 0, !dbg !1317
  br i1 %86, label %87, label %92, !dbg !1319

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1320
  br i1 %88, label %92, label %89, !dbg !1323

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1320, !tbaa !843
  br label %92, !dbg !1320

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1213, metadata !DIExpression()), !dbg !1267
  br label %92, !dbg !1324

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1325
  unreachable, !dbg !1325

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1309
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %40 ], !dbg !1267
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1267
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1267
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %100, metadata !1213, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %99, metadata !1211, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %98, metadata !1210, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %97, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %96, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %95, metadata !1205, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %94, metadata !1204, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %93, metadata !1201, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1206, metadata !DIExpression()), !dbg !1267
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
  br label %121, !dbg !1326

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1327
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1309
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1272
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1276
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1277
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1278
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %128, metadata !1216, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %127, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %126, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %125, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %124, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %123, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %122, metadata !1206, metadata !DIExpression()), !dbg !1267
  %130 = icmp eq i64 %125, -1, !dbg !1328
  br i1 %130, label %131, label %135, !dbg !1329

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1330
  %133 = load i8, i8* %132, align 1, !dbg !1330, !tbaa !843
  %134 = icmp eq i8 %133, 0, !dbg !1331
  br i1 %134, label %587, label %137, !dbg !1332

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1333
  br i1 %136, label %587, label %137, !dbg !1332

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 0, metadata !1224, metadata !DIExpression()), !dbg !1334
  br i1 %106, label %138, label %153, !dbg !1335

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1337
  %140 = and i1 %107, %130, !dbg !1338
  br i1 %140, label %141, label %143, !dbg !1338

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %142, metadata !1200, metadata !DIExpression()), !dbg !1267
  br label %143, !dbg !1340

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1340
  call void @llvm.dbg.value(metadata i64 %144, metadata !1200, metadata !DIExpression()), !dbg !1267
  %145 = icmp ugt i64 %139, %144, !dbg !1341
  br i1 %145, label %153, label %146, !dbg !1342

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1343
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1344
  %149 = icmp ne i32 %148, 0, !dbg !1345
  %150 = or i1 %149, %109, !dbg !1346
  %151 = xor i1 %149, true, !dbg !1346
  %152 = zext i1 %151 to i8, !dbg !1346
  br i1 %150, label %153, label %646, !dbg !1346

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1334
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1334
  call void @llvm.dbg.value(metadata i8 %156, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %154, metadata !1200, metadata !DIExpression()), !dbg !1267
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1347
  %158 = load i8, i8* %157, align 1, !dbg !1347, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %158, metadata !1217, metadata !DIExpression()), !dbg !1334
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
  ], !dbg !1348

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1349

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1350

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1334
  %162 = and i8 %126, 1, !dbg !1354
  %163 = icmp eq i8 %162, 0, !dbg !1354
  %164 = and i1 %110, %163, !dbg !1354
  br i1 %164, label %165, label %181, !dbg !1354

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1356
  br i1 %166, label %167, label %169, !dbg !1360

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1356
  store i8 39, i8* %168, align 1, !dbg !1356, !tbaa !843
  br label %169, !dbg !1356

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %170, metadata !1207, metadata !DIExpression()), !dbg !1267
  %171 = icmp ult i64 %170, %129, !dbg !1361
  br i1 %171, label %172, label %174, !dbg !1364

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1361
  store i8 36, i8* %173, align 1, !dbg !1361, !tbaa !843
  br label %174, !dbg !1361

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %175, metadata !1207, metadata !DIExpression()), !dbg !1267
  %176 = icmp ult i64 %175, %129, !dbg !1365
  br i1 %176, label %177, label %179, !dbg !1368

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1365
  store i8 39, i8* %178, align 1, !dbg !1365, !tbaa !843
  br label %179, !dbg !1365

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %180, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %181, !dbg !1369

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1267
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %183, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %182, metadata !1207, metadata !DIExpression()), !dbg !1267
  %184 = icmp ult i64 %182, %129, !dbg !1370
  br i1 %184, label %185, label %187, !dbg !1373

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1370
  store i8 92, i8* %186, align 1, !dbg !1370, !tbaa !843
  br label %187, !dbg !1370

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %188, metadata !1207, metadata !DIExpression()), !dbg !1267
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1374
  br i1 %191, label %192, label %473, !dbg !1374

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1376
  %194 = load i8, i8* %193, align 1, !dbg !1376, !tbaa !843
  %195 = add i8 %194, -48, !dbg !1377
  %196 = icmp ult i8 %195, 10, !dbg !1377
  br i1 %196, label %197, label %473, !dbg !1377

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1378
  br i1 %198, label %199, label %201, !dbg !1382

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1378
  store i8 48, i8* %200, align 1, !dbg !1378, !tbaa !843
  br label %201, !dbg !1378

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %202, metadata !1207, metadata !DIExpression()), !dbg !1267
  %203 = icmp ult i64 %202, %129, !dbg !1383
  br i1 %203, label %204, label %206, !dbg !1386

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1383
  store i8 48, i8* %205, align 1, !dbg !1383, !tbaa !843
  br label %206, !dbg !1383

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %207, metadata !1207, metadata !DIExpression()), !dbg !1267
  br label %473, !dbg !1387

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1388

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1389

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1390

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1392
  br i1 %214, label %215, label %473, !dbg !1392

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1394
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1395
  %218 = load i8, i8* %217, align 1, !dbg !1395, !tbaa !843
  %219 = icmp eq i8 %218, 63, !dbg !1396
  br i1 %219, label %220, label %473, !dbg !1397

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1398
  %222 = load i8, i8* %221, align 1, !dbg !1398, !tbaa !843
  %223 = sext i8 %222 to i32, !dbg !1398
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
  ], !dbg !1399

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1400

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 undef, metadata !1206, metadata !DIExpression()), !dbg !1267
  %226 = icmp ult i64 %123, %129, !dbg !1402
  br i1 %226, label %227, label %229, !dbg !1405

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1402
  store i8 63, i8* %228, align 1, !dbg !1402, !tbaa !843
  br label %229, !dbg !1402

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %230, metadata !1207, metadata !DIExpression()), !dbg !1267
  %231 = icmp ult i64 %230, %129, !dbg !1406
  br i1 %231, label %232, label %234, !dbg !1409

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1406
  store i8 34, i8* %233, align 1, !dbg !1406, !tbaa !843
  br label %234, !dbg !1406

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %235, metadata !1207, metadata !DIExpression()), !dbg !1267
  %236 = icmp ult i64 %235, %129, !dbg !1410
  br i1 %236, label %237, label %239, !dbg !1413

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1410
  store i8 34, i8* %238, align 1, !dbg !1410, !tbaa !843
  br label %239, !dbg !1410

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %240, metadata !1207, metadata !DIExpression()), !dbg !1267
  %241 = icmp ult i64 %240, %129, !dbg !1414
  br i1 %241, label %242, label %244, !dbg !1417

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1414
  store i8 63, i8* %243, align 1, !dbg !1414, !tbaa !843
  br label %244, !dbg !1414

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %245, metadata !1207, metadata !DIExpression()), !dbg !1267
  br label %473, !dbg !1418

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1221, metadata !DIExpression()), !dbg !1334
  br label %256, !dbg !1419

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1221, metadata !DIExpression()), !dbg !1334
  br label %256, !dbg !1420

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1221, metadata !DIExpression()), !dbg !1334
  br label %254, !dbg !1421

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1221, metadata !DIExpression()), !dbg !1334
  br label %254, !dbg !1422

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1221, metadata !DIExpression()), !dbg !1334
  br label %256, !dbg !1423

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1221, metadata !DIExpression()), !dbg !1334
  br i1 %110, label %252, label %253, !dbg !1424

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1425

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1428

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1430
  call void @llvm.dbg.value(metadata i8 %255, metadata !1221, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.label(metadata !1262), !dbg !1431
  br i1 %111, label %256, label %631, !dbg !1432

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1430
  call void @llvm.dbg.value(metadata i8 %257, metadata !1221, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.label(metadata !1263), !dbg !1434
  br i1 %102, label %495, label %473, !dbg !1435

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1436

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1437, !tbaa !843
  %261 = icmp eq i8 %260, 0, !dbg !1439
  br i1 %261, label %262, label %473, !dbg !1440

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1441
  br i1 %263, label %264, label %473, !dbg !1443

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1224, metadata !DIExpression()), !dbg !1334
  br label %265, !dbg !1444

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1334
  call void @llvm.dbg.value(metadata i8 %266, metadata !1224, metadata !DIExpression()), !dbg !1334
  br i1 %111, label %473, label %631, !dbg !1445

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1224, metadata !DIExpression()), !dbg !1334
  br i1 %110, label %268, label %473, !dbg !1447

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1448

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1451
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1453
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1453
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %274, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %273, metadata !1208, metadata !DIExpression()), !dbg !1267
  %275 = icmp ult i64 %123, %274, !dbg !1454
  br i1 %275, label %276, label %278, !dbg !1457

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1454
  store i8 39, i8* %277, align 1, !dbg !1454, !tbaa !843
  br label %278, !dbg !1454

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %279, metadata !1207, metadata !DIExpression()), !dbg !1267
  %280 = icmp ult i64 %279, %274, !dbg !1458
  br i1 %280, label %281, label %283, !dbg !1461

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1458
  store i8 92, i8* %282, align 1, !dbg !1458, !tbaa !843
  br label %283, !dbg !1458

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %284, metadata !1207, metadata !DIExpression()), !dbg !1267
  %285 = icmp ult i64 %284, %274, !dbg !1462
  br i1 %285, label %286, label %288, !dbg !1465

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1462
  store i8 39, i8* %287, align 1, !dbg !1462, !tbaa !843
  br label %288, !dbg !1462

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %289, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %473, !dbg !1466

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1467

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1225, metadata !DIExpression()), !dbg !1468
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1469
  %293 = load i16*, i16** %292, align 8, !dbg !1469, !tbaa !603
  %294 = zext i8 %158 to i64, !dbg !1469
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1469
  %296 = load i16, i16* %295, align 2, !dbg !1469, !tbaa !1471
  %297 = lshr i16 %296, 14, !dbg !1472
  %298 = trunc i16 %297 to i8, !dbg !1472
  %299 = and i8 %298, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i8 %354, metadata !1228, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %355, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %306, metadata !1200, metadata !DIExpression()), !dbg !1267
  %300 = icmp eq i8 %299, 0, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %357, metadata !1224, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1334
  br label %359, !dbg !1474

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1229, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %23, metadata !1477, metadata !DIExpression()) #26, !dbg !1485
  call void @llvm.dbg.value(metadata i32 0, metadata !1483, metadata !DIExpression()) #26, !dbg !1485
  call void @llvm.dbg.value(metadata i64 8, metadata !1484, metadata !DIExpression()) #26, !dbg !1485
  store i64 0, i64* %10, align 8, !dbg !1487
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 1, metadata !1228, metadata !DIExpression()), !dbg !1468
  %302 = icmp eq i64 %154, -1, !dbg !1488
  br i1 %302, label %303, label %305, !dbg !1490

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %304, metadata !1200, metadata !DIExpression()), !dbg !1267
  br label %305, !dbg !1492

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1334
  call void @llvm.dbg.value(metadata i64 %306, metadata !1200, metadata !DIExpression()), !dbg !1267
  br label %307, !dbg !1493

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1494
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %309, metadata !1228, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %308, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1496
  %310 = add i64 %308, %122, !dbg !1497
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1498
  %312 = sub i64 %306, %310, !dbg !1499
  call void @llvm.dbg.value(metadata i32* %12, metadata !1247, metadata !DIExpression(DW_OP_deref)), !dbg !1500
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %313, metadata !1250, metadata !DIExpression()), !dbg !1500
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1502

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1225, metadata !DIExpression()), !dbg !1468
  %315 = icmp ugt i64 %306, %310, !dbg !1503
  br i1 %315, label %316, label %341, !dbg !1505

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1506
  br label %318, !dbg !1506

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1225, metadata !DIExpression()), !dbg !1468
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1507
  %322 = load i8, i8* %321, align 1, !dbg !1507, !tbaa !843
  %323 = icmp eq i8 %322, 0, !dbg !1505
  br i1 %323, label %341, label %324, !dbg !1506

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %325, metadata !1225, metadata !DIExpression()), !dbg !1468
  %326 = add i64 %325, %122, !dbg !1509
  %327 = icmp ult i64 %326, %306, !dbg !1503
  br i1 %327, label %318, label %341, !dbg !1505, !llvm.loop !1510

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1511
  call void @llvm.dbg.value(metadata i64 1, metadata !1251, metadata !DIExpression()), !dbg !1512
  br i1 %330, label %331, label %344, !dbg !1511

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1251, metadata !DIExpression()), !dbg !1512
  %333 = add i64 %332, %310, !dbg !1513
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1516
  %335 = load i8, i8* %334, align 1, !dbg !1516, !tbaa !843
  %336 = sext i8 %335 to i32, !dbg !1516
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1517

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %338, metadata !1251, metadata !DIExpression()), !dbg !1512
  %339 = icmp eq i64 %338, %313, !dbg !1519
  br i1 %339, label %344, label %331, !dbg !1520, !llvm.loop !1521

340:                                              ; preds = %307
  br label %341, !dbg !1523

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1228, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 undef, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1523
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1524, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %345, metadata !1247, metadata !DIExpression()), !dbg !1500
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1526
  %347 = icmp eq i32 %346, 0, !dbg !1526
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1527
  call void @llvm.dbg.value(metadata i8 %348, metadata !1228, metadata !DIExpression()), !dbg !1468
  %349 = add i64 %313, %308, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %349, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1523
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1529
  %351 = icmp eq i32 %350, 0, !dbg !1530
  br i1 %351, label %307, label %353, !dbg !1531, !llvm.loop !1532

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1228, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 undef, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1534
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1534
  call void @llvm.dbg.value(metadata i8 %354, metadata !1228, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %355, metadata !1225, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %306, metadata !1200, metadata !DIExpression()), !dbg !1267
  %356 = and i8 %354, 1, !dbg !1473
  %357 = icmp eq i8 %356, 0, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %357, metadata !1224, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1334
  %358 = icmp ugt i64 %355, 1, !dbg !1535
  br i1 %358, label %367, label %359, !dbg !1474

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1536
  br i1 %364, label %367, label %365, !dbg !1536

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i8 %472, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %441, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %440, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %439, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %438, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %371, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %437, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %375, metadata !1206, metadata !DIExpression()), !dbg !1267
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %372, metadata !1258, metadata !DIExpression()), !dbg !1538
  %373 = and i1 %102, %368
  br label %374, !dbg !1539

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1327
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1267
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1276
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1334
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1334
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1540
  call void @llvm.dbg.value(metadata i8 %380, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %379, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %378, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %377, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %376, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %375, metadata !1206, metadata !DIExpression()), !dbg !1267
  br i1 %373, label %381, label %427, !dbg !1541

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1546

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1334
  %383 = and i8 %377, 1, !dbg !1549
  %384 = icmp eq i8 %383, 0, !dbg !1549
  %385 = and i1 %110, %384, !dbg !1549
  br i1 %385, label %386, label %402, !dbg !1549

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1551
  br i1 %387, label %388, label %390, !dbg !1555

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1551
  store i8 39, i8* %389, align 1, !dbg !1551, !tbaa !843
  br label %390, !dbg !1551

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %391, metadata !1207, metadata !DIExpression()), !dbg !1267
  %392 = icmp ult i64 %391, %129, !dbg !1556
  br i1 %392, label %393, label %395, !dbg !1559

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1556
  store i8 36, i8* %394, align 1, !dbg !1556, !tbaa !843
  br label %395, !dbg !1556

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %396, metadata !1207, metadata !DIExpression()), !dbg !1267
  %397 = icmp ult i64 %396, %129, !dbg !1560
  br i1 %397, label %398, label %400, !dbg !1563

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1560
  store i8 39, i8* %399, align 1, !dbg !1560, !tbaa !843
  br label %400, !dbg !1560

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %401, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %402, !dbg !1564

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1267
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %404, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %403, metadata !1207, metadata !DIExpression()), !dbg !1267
  %405 = icmp ult i64 %403, %129, !dbg !1565
  br i1 %405, label %406, label %408, !dbg !1568

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1565
  store i8 92, i8* %407, align 1, !dbg !1565, !tbaa !843
  br label %408, !dbg !1565

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %409, metadata !1207, metadata !DIExpression()), !dbg !1267
  %410 = icmp ult i64 %409, %129, !dbg !1569
  br i1 %410, label %411, label %415, !dbg !1572

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1569
  %413 = or i8 %412, 48, !dbg !1569
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1569
  store i8 %413, i8* %414, align 1, !dbg !1569, !tbaa !843
  br label %415, !dbg !1569

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %416, metadata !1207, metadata !DIExpression()), !dbg !1267
  %417 = icmp ult i64 %416, %129, !dbg !1573
  br i1 %417, label %418, label %423, !dbg !1576

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1573
  %420 = and i8 %419, 7, !dbg !1573
  %421 = or i8 %420, 48, !dbg !1573
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1573
  store i8 %421, i8* %422, align 1, !dbg !1573, !tbaa !843
  br label %423, !dbg !1573

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %424, metadata !1207, metadata !DIExpression()), !dbg !1267
  %425 = and i8 %378, 7, !dbg !1577
  %426 = or i8 %425, 48, !dbg !1578
  call void @llvm.dbg.value(metadata i8 %426, metadata !1217, metadata !DIExpression()), !dbg !1334
  br label %436, !dbg !1579

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1580
  %429 = icmp eq i8 %428, 0, !dbg !1580
  br i1 %429, label %436, label %430, !dbg !1582

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1583
  br i1 %431, label %432, label %434, !dbg !1587

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1583
  store i8 92, i8* %433, align 1, !dbg !1583, !tbaa !843
  br label %434, !dbg !1583

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %435, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1222, metadata !DIExpression()), !dbg !1334
  br label %436, !dbg !1588

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1267
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1276
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1334
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1334
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1334
  call void @llvm.dbg.value(metadata i8 %441, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %440, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %439, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %438, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %437, metadata !1207, metadata !DIExpression()), !dbg !1267
  %442 = add i64 %375, 1, !dbg !1589
  %443 = icmp ugt i64 %372, %442, !dbg !1591
  br i1 %443, label %444, label %471, !dbg !1592

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1593
  %446 = icmp ne i8 %445, 0, !dbg !1593
  %447 = and i8 %441, 1, !dbg !1593
  %448 = icmp eq i8 %447, 0, !dbg !1593
  %449 = and i1 %446, %448, !dbg !1593
  br i1 %449, label %450, label %461, !dbg !1593

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1596
  br i1 %451, label %452, label %454, !dbg !1600

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1596
  store i8 39, i8* %453, align 1, !dbg !1596, !tbaa !843
  br label %454, !dbg !1596

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %455, metadata !1207, metadata !DIExpression()), !dbg !1267
  %456 = icmp ult i64 %455, %129, !dbg !1601
  br i1 %456, label %457, label %459, !dbg !1604

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1601
  store i8 39, i8* %458, align 1, !dbg !1601, !tbaa !843
  br label %459, !dbg !1601

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %460, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %461, !dbg !1605

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1606
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %463, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %462, metadata !1207, metadata !DIExpression()), !dbg !1267
  %464 = icmp ult i64 %462, %129, !dbg !1607
  br i1 %464, label %465, label %467, !dbg !1610

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1607
  store i8 %439, i8* %466, align 1, !dbg !1607, !tbaa !843
  br label %467, !dbg !1607

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %468, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %442, metadata !1206, metadata !DIExpression()), !dbg !1267
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1611
  %470 = load i8, i8* %469, align 1, !dbg !1611, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %470, metadata !1217, metadata !DIExpression()), !dbg !1334
  br label %374, !dbg !1612, !llvm.loop !1613

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i8 %472, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %441, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %440, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %439, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %438, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %371, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %437, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %375, metadata !1206, metadata !DIExpression()), !dbg !1267
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1327
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1267
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1272
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1616
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1267
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1267
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1334
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1334
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1334
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %482, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %481, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %156, metadata !1222, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %480, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %479, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %478, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %477, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %476, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %475, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %474, metadata !1206, metadata !DIExpression()), !dbg !1267
  br i1 %116, label %494, label %484, !dbg !1617

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1619
  %486 = zext i8 %485 to i64, !dbg !1619
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1620
  %488 = load i32, i32* %487, align 4, !dbg !1620, !tbaa !768
  %489 = and i8 %480, 31, !dbg !1621
  %490 = zext i8 %489 to i32, !dbg !1621
  %491 = shl nuw i32 1, %490, !dbg !1622
  %492 = and i32 %488, %491, !dbg !1622
  %493 = icmp eq i32 %492, 0, !dbg !1622
  br i1 %493, label %494, label %495, !dbg !1623

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1624

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1625
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1267
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1272
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1616
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1276
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1277
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1334
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1334
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %503, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %502, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %501, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %500, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %499, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %498, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %497, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %496, metadata !1206, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1264), !dbg !1626
  br i1 %109, label %505, label %635, !dbg !1627

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1334
  %506 = and i8 %500, 1, !dbg !1629
  %507 = icmp eq i8 %506, 0, !dbg !1629
  %508 = and i1 %110, %507, !dbg !1629
  br i1 %508, label %509, label %525, !dbg !1629

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1631
  br i1 %510, label %511, label %513, !dbg !1635

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1631
  store i8 39, i8* %512, align 1, !dbg !1631, !tbaa !843
  br label %513, !dbg !1631

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %514, metadata !1207, metadata !DIExpression()), !dbg !1267
  %515 = icmp ult i64 %514, %504, !dbg !1636
  br i1 %515, label %516, label %518, !dbg !1639

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1636
  store i8 36, i8* %517, align 1, !dbg !1636, !tbaa !843
  br label %518, !dbg !1636

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %519, metadata !1207, metadata !DIExpression()), !dbg !1267
  %520 = icmp ult i64 %519, %504, !dbg !1640
  br i1 %520, label %521, label %523, !dbg !1643

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1640
  store i8 39, i8* %522, align 1, !dbg !1640, !tbaa !843
  br label %523, !dbg !1640

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %524, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %525, !dbg !1644

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1334
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %527, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %526, metadata !1207, metadata !DIExpression()), !dbg !1267
  %528 = icmp ult i64 %526, %504, !dbg !1645
  br i1 %528, label %529, label %531, !dbg !1648

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1645
  store i8 92, i8* %530, align 1, !dbg !1645, !tbaa !843
  br label %531, !dbg !1645

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %543, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %542, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %541, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %540, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %539, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %538, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %537, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %536, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %535, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %534, metadata !1206, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1265), !dbg !1649
  br label %560, !dbg !1650

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1625
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1267
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1272
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1616
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1276
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1277
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1653
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1334
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1334
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %542, metadata !1224, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %541, metadata !1223, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %540, metadata !1217, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i8 %539, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %538, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %537, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %536, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %535, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %534, metadata !1206, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1265), !dbg !1649
  %544 = and i8 %538, 1, !dbg !1650
  %545 = icmp ne i8 %544, 0, !dbg !1650
  %546 = and i8 %541, 1, !dbg !1650
  %547 = icmp eq i8 %546, 0, !dbg !1650
  %548 = and i1 %545, %547, !dbg !1650
  br i1 %548, label %549, label %560, !dbg !1650

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1654
  br i1 %550, label %551, label %553, !dbg !1658

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1654
  store i8 39, i8* %552, align 1, !dbg !1654, !tbaa !843
  br label %553, !dbg !1654

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %554, metadata !1207, metadata !DIExpression()), !dbg !1267
  %555 = icmp ult i64 %554, %543, !dbg !1659
  br i1 %555, label %556, label %558, !dbg !1662

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1659
  store i8 39, i8* %557, align 1, !dbg !1659, !tbaa !843
  br label %558, !dbg !1659

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %559, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1214, metadata !DIExpression()), !dbg !1267
  br label %560, !dbg !1663

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1334
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1267
  call void @llvm.dbg.value(metadata i8 %569, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %568, metadata !1207, metadata !DIExpression()), !dbg !1267
  %570 = icmp ult i64 %568, %561, !dbg !1664
  br i1 %570, label %571, label %573, !dbg !1667

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1664
  store i8 %563, i8* %572, align 1, !dbg !1664, !tbaa !843
  br label %573, !dbg !1664

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %574, metadata !1207, metadata !DIExpression()), !dbg !1267
  %575 = icmp eq i8 %562, 0, !dbg !1668
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1670
  call void @llvm.dbg.value(metadata i8 %576, metadata !1216, metadata !DIExpression()), !dbg !1267
  br label %577, !dbg !1671

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1625
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1267
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1272
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1616
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1276
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1267
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1278
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %584, metadata !1216, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %583, metadata !1215, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %582, metadata !1214, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %581, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %580, metadata !1208, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %579, metadata !1207, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %578, metadata !1206, metadata !DIExpression()), !dbg !1267
  %586 = add i64 %578, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %586, metadata !1206, metadata !DIExpression()), !dbg !1267
  br label %121, !dbg !1673, !llvm.loop !1674

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1676
  %590 = and i1 %110, %589, !dbg !1678
  %591 = xor i1 %590, true, !dbg !1678
  %592 = or i1 %109, %591, !dbg !1678
  br i1 %592, label %593, label %635, !dbg !1678

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1679
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1679
  br i1 %597, label %598, label %607, !dbg !1679

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1681
  %600 = icmp eq i8 %599, 0, !dbg !1681
  br i1 %600, label %603, label %601, !dbg !1684

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1685
  br label %652, !dbg !1686

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1687
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1689
  br i1 %606, label %26, label %607, !dbg !1689

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1690
  %610 = and i1 %609, %608, !dbg !1692
  br i1 %610, label %611, label %626, !dbg !1692

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %123, metadata !1207, metadata !DIExpression()), !dbg !1267
  %612 = load i8, i8* %97, align 1, !dbg !1693, !tbaa !843
  %613 = icmp eq i8 %612, 0, !dbg !1696
  br i1 %613, label %626, label %614, !dbg !1696

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1209, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %617, metadata !1207, metadata !DIExpression()), !dbg !1267
  %618 = icmp ult i64 %617, %129, !dbg !1697
  br i1 %618, label %619, label %621, !dbg !1700

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1697
  store i8 %615, i8* %620, align 1, !dbg !1697, !tbaa !843
  br label %621, !dbg !1697

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %622, metadata !1207, metadata !DIExpression()), !dbg !1267
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %623, metadata !1209, metadata !DIExpression()), !dbg !1267
  %624 = load i8, i8* %623, align 1, !dbg !1693, !tbaa !843
  %625 = icmp eq i8 %624, 0, !dbg !1696
  br i1 %625, label %626, label %614, !dbg !1696, !llvm.loop !1702

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1309
  call void @llvm.dbg.value(metadata i64 %627, metadata !1207, metadata !DIExpression()), !dbg !1267
  %628 = icmp ult i64 %627, %129, !dbg !1704
  br i1 %628, label %629, label %652, !dbg !1706

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1707
  store i8 0, i8* %630, align 1, !dbg !1708, !tbaa !843
  br label %652, !dbg !1707

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %637, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1266), !dbg !1709
  %633 = icmp eq i8 %101, 0, !dbg !1710
  %634 = select i1 %633, i32 2, i32 4, !dbg !1710
  br label %642, !dbg !1710

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1198, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %637, metadata !1200, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.label(metadata !1266), !dbg !1709
  %639 = icmp eq i32 %93, 2, !dbg !1712
  %640 = icmp eq i8 %636, 0, !dbg !1710
  %641 = select i1 %640, i32 2, i32 4, !dbg !1710
  br i1 %639, label %642, label %646, !dbg !1710

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1710

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1201, metadata !DIExpression()), !dbg !1267
  %650 = and i32 %5, -3, !dbg !1713
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1714
  br label %652, !dbg !1715

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1716
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1717 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1721, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i32 %1, metadata !1722, metadata !DIExpression()), !dbg !1725
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %3, metadata !1723, metadata !DIExpression()), !dbg !1725
  %4 = icmp eq i8* %3, %0, !dbg !1727
  br i1 %4, label %5, label %72, !dbg !1729

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %6, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* undef, metadata !1737, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 85, metadata !1738, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 84, metadata !1739, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 70, metadata !1740, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 45, metadata !1741, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 56, metadata !1742, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1747
  %7 = load i8, i8* %6, align 1, !dbg !1750, !tbaa !843
  %8 = and i8 %7, -33, !dbg !1750
  %9 = sext i8 %8 to i32, !dbg !1750
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1750

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1752, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 84, metadata !1758, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 70, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 45, metadata !1760, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 56, metadata !1761, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1766
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1770
  %12 = load i8, i8* %11, align 1, !dbg !1770, !tbaa !843
  %13 = and i8 %12, -33, !dbg !1770
  %14 = icmp eq i8 %13, 84, !dbg !1770
  br i1 %14, label %15, label %69, !dbg !1770

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1772, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* undef, metadata !1777, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 70, metadata !1778, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 45, metadata !1779, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 56, metadata !1780, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1785
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1789
  %17 = load i8, i8* %16, align 1, !dbg !1789, !tbaa !843
  %18 = and i8 %17, -33, !dbg !1789
  %19 = icmp eq i8 %18, 70, !dbg !1789
  br i1 %19, label %20, label %69, !dbg !1789

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1791, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* undef, metadata !1796, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 45, metadata !1797, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 56, metadata !1798, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1807
  %22 = load i8, i8* %21, align 1, !dbg !1807, !tbaa !843
  %23 = icmp eq i8 %22, 45, !dbg !1807
  br i1 %23, label %24, label %69, !dbg !1809

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1810, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* undef, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 56, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1821
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1825
  %26 = load i8, i8* %25, align 1, !dbg !1825, !tbaa !843
  %27 = icmp eq i8 %26, 56, !dbg !1825
  br i1 %27, label %28, label %69, !dbg !1827

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* undef, metadata !1833, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1834, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1838
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1842
  %30 = load i8, i8* %29, align 1, !dbg !1842, !tbaa !843
  %31 = icmp eq i8 %30, 0, !dbg !1842
  br i1 %31, label %32, label %69, !dbg !1844

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1845, !tbaa !843
  %34 = icmp eq i8 %33, 96, !dbg !1846
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.73, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.74, i64 0, i64 0), !dbg !1845
  br label %72, !dbg !1847

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1752, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* undef, metadata !1757, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 66, metadata !1758, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 49, metadata !1759, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 56, metadata !1760, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 48, metadata !1761, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 51, metadata !1762, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 48, metadata !1763, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1848
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1852
  %38 = load i8, i8* %37, align 1, !dbg !1852, !tbaa !843
  %39 = and i8 %38, -33, !dbg !1852
  %40 = icmp eq i8 %39, 66, !dbg !1852
  br i1 %40, label %41, label %69, !dbg !1852

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1772, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8* undef, metadata !1777, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 49, metadata !1778, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 56, metadata !1779, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 48, metadata !1780, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 51, metadata !1781, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1853
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1855
  %43 = load i8, i8* %42, align 1, !dbg !1855, !tbaa !843
  %44 = icmp eq i8 %43, 49, !dbg !1855
  br i1 %44, label %45, label %69, !dbg !1856

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1791, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* undef, metadata !1796, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 56, metadata !1797, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 48, metadata !1798, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 51, metadata !1799, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 48, metadata !1800, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1857
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1859
  %47 = load i8, i8* %46, align 1, !dbg !1859, !tbaa !843
  %48 = icmp eq i8 %47, 56, !dbg !1859
  br i1 %48, label %49, label %69, !dbg !1860

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1810, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* undef, metadata !1815, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 48, metadata !1816, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 51, metadata !1817, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 48, metadata !1818, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1861
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1863
  %51 = load i8, i8* %50, align 1, !dbg !1863, !tbaa !843
  %52 = icmp eq i8 %51, 48, !dbg !1863
  br i1 %52, label %53, label %69, !dbg !1864

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8* undef, metadata !1833, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 51, metadata !1834, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 48, metadata !1835, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1865
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1867
  %55 = load i8, i8* %54, align 1, !dbg !1867, !tbaa !843
  %56 = icmp eq i8 %55, 51, !dbg !1867
  br i1 %56, label %57, label %69, !dbg !1868

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1869, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8* undef, metadata !1874, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 48, metadata !1875, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1878
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1882
  %59 = load i8, i8* %58, align 1, !dbg !1882, !tbaa !843
  %60 = icmp eq i8 %59, 48, !dbg !1882
  br i1 %60, label %61, label %69, !dbg !1884

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1885, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* undef, metadata !1890, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1893
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1897
  %63 = load i8, i8* %62, align 1, !dbg !1897, !tbaa !843
  %64 = icmp eq i8 %63, 0, !dbg !1897
  br i1 %64, label %65, label %69, !dbg !1899

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1900, !tbaa !843
  %67 = icmp eq i8 %66, 96, !dbg !1901
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.75, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.76, i64 0, i64 0), !dbg !1900
  br label %72, !dbg !1902

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1903
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), !dbg !1904
  br label %72, !dbg !1905

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1725
  ret i8* %73, !dbg !1906
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1907 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1911 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1921, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %1, metadata !1922, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1923, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8* %0, metadata !1925, metadata !DIExpression()) #26, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %1, metadata !1930, metadata !DIExpression()) #26, !dbg !1938
  call void @llvm.dbg.value(metadata i64* null, metadata !1931, metadata !DIExpression()) #26, !dbg !1938
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1932, metadata !DIExpression()) #26, !dbg !1938
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1940
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1933, metadata !DIExpression()) #26, !dbg !1938
  %6 = tail call i32* @__errno_location() #30, !dbg !1941
  %7 = load i32, i32* %6, align 4, !dbg !1941, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %7, metadata !1934, metadata !DIExpression()) #26, !dbg !1938
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1942
  %9 = load i32, i32* %8, align 4, !dbg !1942, !tbaa !1141
  %10 = or i32 %9, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %10, metadata !1935, metadata !DIExpression()) #26, !dbg !1938
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1944
  %12 = load i32, i32* %11, align 8, !dbg !1944, !tbaa !1090
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1945
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1946
  %15 = load i8*, i8** %14, align 8, !dbg !1946, !tbaa !1163
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1947
  %17 = load i8*, i8** %16, align 8, !dbg !1947, !tbaa !1166
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !1948
  %19 = add i64 %18, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %19, metadata !1936, metadata !DIExpression()) #26, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %19, metadata !1950, metadata !DIExpression()) #26, !dbg !1955
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !1957
  call void @llvm.dbg.value(metadata i8* %20, metadata !1937, metadata !DIExpression()) #26, !dbg !1938
  %21 = load i32, i32* %11, align 8, !dbg !1958, !tbaa !1090
  %22 = load i8*, i8** %14, align 8, !dbg !1959, !tbaa !1163
  %23 = load i8*, i8** %16, align 8, !dbg !1960, !tbaa !1166
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !1961
  store i32 %7, i32* %6, align 4, !dbg !1962, !tbaa !768
  ret i8* %20, !dbg !1963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1925, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i64 %1, metadata !1930, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i64* %2, metadata !1931, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1932, metadata !DIExpression()), !dbg !1964
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1965
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1933, metadata !DIExpression()), !dbg !1964
  %7 = tail call i32* @__errno_location() #30, !dbg !1966
  %8 = load i32, i32* %7, align 4, !dbg !1966, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %8, metadata !1934, metadata !DIExpression()), !dbg !1964
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1967
  %10 = load i32, i32* %9, align 4, !dbg !1967, !tbaa !1141
  %11 = icmp eq i64* %2, null, !dbg !1968
  %12 = zext i1 %11 to i32, !dbg !1968
  %13 = or i32 %10, %12, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %13, metadata !1935, metadata !DIExpression()), !dbg !1964
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1970
  %15 = load i32, i32* %14, align 8, !dbg !1970, !tbaa !1090
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1971
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1972
  %18 = load i8*, i8** %17, align 8, !dbg !1972, !tbaa !1163
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1973
  %20 = load i8*, i8** %19, align 8, !dbg !1973, !tbaa !1166
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1974
  %22 = add i64 %21, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %22, metadata !1936, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i64 %22, metadata !1950, metadata !DIExpression()) #26, !dbg !1976
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !1978
  call void @llvm.dbg.value(metadata i8* %23, metadata !1937, metadata !DIExpression()), !dbg !1964
  %24 = load i32, i32* %14, align 8, !dbg !1979, !tbaa !1090
  %25 = load i8*, i8** %17, align 8, !dbg !1980, !tbaa !1163
  %26 = load i8*, i8** %19, align 8, !dbg !1981, !tbaa !1166
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1982
  store i32 %8, i32* %7, align 4, !dbg !1983, !tbaa !768
  br i1 %11, label %29, label %28, !dbg !1984

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1985, !tbaa !1987
  br label %29, !dbg !1988

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1990 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1994, !tbaa !603
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1992, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 1, metadata !1993, metadata !DIExpression()), !dbg !1995
  %2 = load i32, i32* @nslots, align 4, !dbg !1996, !tbaa !768
  %3 = icmp sgt i32 %2, 1, !dbg !1999
  br i1 %3, label %4, label %12, !dbg !2000

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1999
  br label %6, !dbg !2000

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1993, metadata !DIExpression()), !dbg !1995
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2001
  %9 = load i8*, i8** %8, align 8, !dbg !2001, !tbaa !2002
  tail call void @free(i8* %9) #26, !dbg !2004
  %10 = add nuw nsw i64 %7, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %10, metadata !1993, metadata !DIExpression()), !dbg !1995
  %11 = icmp eq i64 %10, %5, !dbg !1999
  br i1 %11, label %12, label %6, !dbg !2000, !llvm.loop !2006

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2008
  %14 = load i8*, i8** %13, align 8, !dbg !2008, !tbaa !2002
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2010
  br i1 %15, label %17, label %16, !dbg !2011

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2012
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2014, !tbaa !2015
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2016, !tbaa !2002
  br label %17, !dbg !2017

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2018
  br i1 %18, label %21, label %19, !dbg !2020

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2021
  tail call void @free(i8* %20) #26, !dbg !2023
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2024, !tbaa !603
  br label %21, !dbg !2025

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2026, !tbaa !768
  ret void, !dbg !2027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* %1, metadata !2031, metadata !DIExpression()), !dbg !2032
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2033
  ret i8* %3, !dbg !2034
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %2, metadata !2041, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2042, metadata !DIExpression()), !dbg !2054
  %5 = tail call i32* @__errno_location() #30, !dbg !2055
  %6 = load i32, i32* %5, align 4, !dbg !2055, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %6, metadata !2043, metadata !DIExpression()), !dbg !2054
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2056, !tbaa !603
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2044, metadata !DIExpression()), !dbg !2054
  %8 = icmp slt i32 %0, 0, !dbg !2057
  br i1 %8, label %9, label %10, !dbg !2059

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2060
  unreachable, !dbg !2060

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2061, !tbaa !768
  %12 = icmp sgt i32 %11, %0, !dbg !2062
  br i1 %12, label %34, label %13, !dbg !2063

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2064
  call void @llvm.dbg.value(metadata i1 %14, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2048, metadata !DIExpression()), !dbg !2065
  %15 = icmp eq i32 %0, 2147483647, !dbg !2066
  br i1 %15, label %16, label %17, !dbg !2068

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2069
  unreachable, !dbg !2069

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2070
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2070
  %20 = add nuw nsw i32 %0, 1, !dbg !2071
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2072
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2073
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2073
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2044, metadata !DIExpression()), !dbg !2054
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2074, !tbaa !603
  br i1 %14, label %25, label %26, !dbg !2075

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2076, !tbaa.struct !2078
  br label %26, !dbg !2079

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2080, !tbaa !768
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2081
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2082
  %31 = sub nsw i32 %20, %27, !dbg !2083
  %32 = sext i32 %31 to i64, !dbg !2084
  %33 = shl nsw i64 %32, 4, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %30, metadata !1477, metadata !DIExpression()) #26, !dbg !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !1483, metadata !DIExpression()) #26, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %33, metadata !1484, metadata !DIExpression()) #26, !dbg !2086
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2088
  store i32 %20, i32* @nslots, align 4, !dbg !2089, !tbaa !768
  br label %34, !dbg !2090

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2054
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2044, metadata !DIExpression()), !dbg !2054
  %36 = zext i32 %0 to i64, !dbg !2091
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2092
  %38 = load i64, i64* %37, align 8, !dbg !2092, !tbaa !2015
  call void @llvm.dbg.value(metadata i64 %38, metadata !2049, metadata !DIExpression()), !dbg !2093
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2094
  %40 = load i8*, i8** %39, align 8, !dbg !2094, !tbaa !2002
  call void @llvm.dbg.value(metadata i8* %40, metadata !2051, metadata !DIExpression()), !dbg !2093
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2095
  %42 = load i32, i32* %41, align 4, !dbg !2095, !tbaa !1141
  %43 = or i32 %42, 1, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %43, metadata !2052, metadata !DIExpression()), !dbg !2093
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2097
  %45 = load i32, i32* %44, align 8, !dbg !2097, !tbaa !1090
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2098
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2099
  %48 = load i8*, i8** %47, align 8, !dbg !2099, !tbaa !1163
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2100
  %50 = load i8*, i8** %49, align 8, !dbg !2100, !tbaa !1166
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %51, metadata !2053, metadata !DIExpression()), !dbg !2093
  %52 = icmp ugt i64 %38, %51, !dbg !2102
  br i1 %52, label %63, label %53, !dbg !2104

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %54, metadata !2049, metadata !DIExpression()), !dbg !2093
  store i64 %54, i64* %37, align 8, !dbg !2107, !tbaa !2015
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2108
  br i1 %55, label %57, label %56, !dbg !2110

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2111
  br label %57, !dbg !2111

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1950, metadata !DIExpression()) #26, !dbg !2112
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %58, metadata !2051, metadata !DIExpression()), !dbg !2093
  store i8* %58, i8** %39, align 8, !dbg !2115, !tbaa !2002
  %59 = load i32, i32* %44, align 8, !dbg !2116, !tbaa !1090
  %60 = load i8*, i8** %47, align 8, !dbg !2117, !tbaa !1163
  %61 = load i8*, i8** %49, align 8, !dbg !2118, !tbaa !1166
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2119
  br label %63, !dbg !2120

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2093
  call void @llvm.dbg.value(metadata i8* %64, metadata !2051, metadata !DIExpression()), !dbg !2093
  store i32 %6, i32* %5, align 4, !dbg !2121, !tbaa !768
  ret i8* %64, !dbg !2122
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %1, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %2, metadata !2129, metadata !DIExpression()), !dbg !2130
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2131
  ret i8* %4, !dbg !2132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()) #26, !dbg !2137
  call void @llvm.dbg.value(metadata i8* %0, metadata !2031, metadata !DIExpression()) #26, !dbg !2137
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2139
  ret i8* %2, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #26, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %0, metadata !2128, metadata !DIExpression()) #26, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()) #26, !dbg !2148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2150
  ret i8* %3, !dbg !2151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2152 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %1, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %2, metadata !2158, metadata !DIExpression()), !dbg !2160
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()), !dbg !2162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #26, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()) #26, !dbg !2175
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2175, !alias.scope !2163
  %6 = icmp eq i32 %1, 10, !dbg !2176
  br i1 %6, label %7, label %8, !dbg !2178

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2179, !noalias !2163
  unreachable, !dbg !2179

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2180
  store i32 %1, i32* %9, align 8, !dbg !2181, !tbaa !1090, !alias.scope !2163
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2183
  ret i8* %10, !dbg !2184
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2185 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2189, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %1, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %2, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %3, metadata !2192, metadata !DIExpression()), !dbg !2194
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2195
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2195
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2193, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #26, !dbg !2201
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2172, metadata !DIExpression()) #26, !dbg !2203
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2203, !alias.scope !2197
  %7 = icmp eq i32 %1, 10, !dbg !2204
  br i1 %7, label %8, label %9, !dbg !2205

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2206, !noalias !2197
  unreachable, !dbg !2206

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2207
  store i32 %1, i32* %10, align 8, !dbg !2208, !tbaa !1090, !alias.scope !2197
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2210
  ret i8* %11, !dbg !2211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2212 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2156, metadata !DIExpression()) #26, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %0, metadata !2157, metadata !DIExpression()) #26, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2158, metadata !DIExpression()) #26, !dbg !2219
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2221
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #26, !dbg !2222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223) #26, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()) #26, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2172, metadata !DIExpression()) #26, !dbg !2229
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2229, !alias.scope !2223
  %5 = icmp eq i32 %0, 10, !dbg !2230
  br i1 %5, label %6, label %7, !dbg !2231

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2232, !noalias !2223
  unreachable, !dbg !2232

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2233
  store i32 %0, i32* %8, align 8, !dbg !2234, !tbaa !1090, !alias.scope !2223
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2236
  ret i8* %9, !dbg !2237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2238 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %1, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %2, metadata !2244, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()) #26, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()) #26, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !2191, metadata !DIExpression()) #26, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %2, metadata !2192, metadata !DIExpression()) #26, !dbg !2246
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2248
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2193, metadata !DIExpression()) #26, !dbg !2249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250) #26, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()) #26, !dbg !2254
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()) #26, !dbg !2256
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2256, !alias.scope !2250
  %6 = icmp eq i32 %0, 10, !dbg !2257
  br i1 %6, label %7, label %8, !dbg !2258

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2259, !noalias !2250
  unreachable, !dbg !2259

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2260
  store i32 %0, i32* %9, align 8, !dbg !2261, !tbaa !1090, !alias.scope !2250
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2263
  ret i8* %10, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2265 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %2, metadata !2271, metadata !DIExpression()), !dbg !2273
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2274
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2276, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1108, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %2, metadata !1109, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %2, metadata !1111, metadata !DIExpression()), !dbg !2278
  %6 = lshr i8 %2, 5, !dbg !2280
  %7 = zext i8 %6 to i64, !dbg !2280
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2281
  call void @llvm.dbg.value(metadata i32* %8, metadata !1112, metadata !DIExpression()), !dbg !2278
  %9 = and i8 %2, 31, !dbg !2282
  %10 = zext i8 %9 to i32, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %10, metadata !1114, metadata !DIExpression()), !dbg !2278
  %11 = load i32, i32* %8, align 4, !dbg !2283, !tbaa !768
  %12 = lshr i32 %11, %10, !dbg !2284
  %13 = and i32 %12, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %13, metadata !1115, metadata !DIExpression()), !dbg !2278
  %14 = xor i32 %13, 1, !dbg !2286
  %15 = shl i32 %14, %10, !dbg !2287
  %16 = xor i32 %15, %11, !dbg !2288
  store i32 %16, i32* %8, align 4, !dbg !2288, !tbaa !768
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2290
  ret i8* %17, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2292 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %1, metadata !2297, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #26, !dbg !2299
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #26, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %1, metadata !2271, metadata !DIExpression()) #26, !dbg !2299
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression()) #26, !dbg !2302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2303, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1108, metadata !DIExpression()) #26, !dbg !2304
  call void @llvm.dbg.value(metadata i8 %1, metadata !1109, metadata !DIExpression()) #26, !dbg !2304
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #26, !dbg !2304
  call void @llvm.dbg.value(metadata i8 %1, metadata !1111, metadata !DIExpression()) #26, !dbg !2304
  %5 = lshr i8 %1, 5, !dbg !2306
  %6 = zext i8 %5 to i64, !dbg !2306
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2307
  call void @llvm.dbg.value(metadata i32* %7, metadata !1112, metadata !DIExpression()) #26, !dbg !2304
  %8 = and i8 %1, 31, !dbg !2308
  %9 = zext i8 %8 to i32, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %9, metadata !1114, metadata !DIExpression()) #26, !dbg !2304
  %10 = load i32, i32* %7, align 4, !dbg !2309, !tbaa !768
  %11 = lshr i32 %10, %9, !dbg !2310
  %12 = and i32 %11, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %12, metadata !1115, metadata !DIExpression()) #26, !dbg !2304
  %13 = xor i32 %12, 1, !dbg !2312
  %14 = shl i32 %13, %9, !dbg !2313
  %15 = xor i32 %14, %10, !dbg !2314
  store i32 %15, i32* %7, align 4, !dbg !2314, !tbaa !768
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2316
  ret i8* %16, !dbg !2317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2318 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()) #26, !dbg !2322
  call void @llvm.dbg.value(metadata i8 58, metadata !2297, metadata !DIExpression()) #26, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #26, !dbg !2324
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #26, !dbg !2324
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #26, !dbg !2324
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2272, metadata !DIExpression()) #26, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2328, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1108, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()) #26, !dbg !2329
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32* %4, metadata !1112, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()) #26, !dbg !2329
  %5 = load i32, i32* %4, align 4, !dbg !2332, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %5, metadata !1115, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2329
  %6 = or i32 %5, 67108864, !dbg !2333
  store i32 %6, i32* %4, align 4, !dbg !2333, !tbaa !768
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2335
  ret i8* %7, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2337 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #26, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()) #26, !dbg !2342
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #26, !dbg !2342
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression()) #26, !dbg !2345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2346, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1108, metadata !DIExpression()) #26, !dbg !2347
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()) #26, !dbg !2347
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()) #26, !dbg !2347
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()) #26, !dbg !2347
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2349
  call void @llvm.dbg.value(metadata i32* %5, metadata !1112, metadata !DIExpression()) #26, !dbg !2347
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()) #26, !dbg !2347
  %6 = load i32, i32* %5, align 4, !dbg !2350, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %6, metadata !1115, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2347
  %7 = or i32 %6, 67108864, !dbg !2351
  store i32 %7, i32* %5, align 4, !dbg !2351, !tbaa !768
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2353
  ret i8* %8, !dbg !2354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2355 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2172, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %2, metadata !2359, metadata !DIExpression()), !dbg !2363
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2360, metadata !DIExpression()), !dbg !2365
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #26, !dbg !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2370
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2361, !alias.scope !2367
  %8 = icmp eq i32 %1, 10, !dbg !2371
  br i1 %8, label %9, label %10, !dbg !2372

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2373, !noalias !2367
  unreachable, !dbg !2373

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2370
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2366
  store i32 %1, i32* %11, align 8, !dbg !2366, !tbaa.struct !2277
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2366
  %13 = bitcast i32* %12 to i8*, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2366, !tbaa.struct !2374
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1108, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 58, metadata !1109, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 58, metadata !1111, metadata !DIExpression()), !dbg !2375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2377
  call void @llvm.dbg.value(metadata i32* %14, metadata !1112, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 26, metadata !1114, metadata !DIExpression()), !dbg !2375
  %15 = load i32, i32* %14, align 4, !dbg !2378, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %15, metadata !1115, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2375
  %16 = or i32 %15, 67108864, !dbg !2379
  store i32 %16, i32* %14, align 4, !dbg !2379, !tbaa !768
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2380
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2381
  ret i8* %17, !dbg !2382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2383 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %1, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %2, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %3, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()) #26, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2397, metadata !DIExpression()) #26, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %2, metadata !2398, metadata !DIExpression()) #26, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %3, metadata !2399, metadata !DIExpression()) #26, !dbg !2402
  call void @llvm.dbg.value(metadata i64 -1, metadata !2400, metadata !DIExpression()) #26, !dbg !2402
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2401, metadata !DIExpression()) #26, !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2406, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1148, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1149, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %2, metadata !1150, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1148, metadata !DIExpression()) #26, !dbg !2407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2409
  store i32 10, i32* %7, align 8, !dbg !2410, !tbaa !1090
  %8 = icmp ne i8* %1, null, !dbg !2411
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2412
  br i1 %10, label %12, label %11, !dbg !2412

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2413
  unreachable, !dbg !2413

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2414
  store i8* %1, i8** %13, align 8, !dbg !2415, !tbaa !1163
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2416
  store i8* %2, i8** %14, align 8, !dbg !2417, !tbaa !1166
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2419
  ret i8* %15, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2393 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !2397, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %2, metadata !2398, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %3, metadata !2399, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %4, metadata !2400, metadata !DIExpression()), !dbg !2421
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2422
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2401, metadata !DIExpression()), !dbg !2423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2424, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1148, metadata !DIExpression()) #26, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !1149, metadata !DIExpression()) #26, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %2, metadata !1150, metadata !DIExpression()) #26, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1148, metadata !DIExpression()) #26, !dbg !2425
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2427
  store i32 10, i32* %8, align 8, !dbg !2428, !tbaa !1090
  %9 = icmp ne i8* %1, null, !dbg !2429
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2430
  br i1 %11, label %13, label %12, !dbg !2430

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2431
  unreachable, !dbg !2431

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2432
  store i8* %1, i8** %14, align 8, !dbg !2433, !tbaa !1163
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2434
  store i8* %2, i8** %15, align 8, !dbg !2435, !tbaa !1166
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2436
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2437
  ret i8* %16, !dbg !2438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2439 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()) #26, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()) #26, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2389, metadata !DIExpression()) #26, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %2, metadata !2390, metadata !DIExpression()) #26, !dbg !2447
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()) #26, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %0, metadata !2397, metadata !DIExpression()) #26, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %1, metadata !2398, metadata !DIExpression()) #26, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %2, metadata !2399, metadata !DIExpression()) #26, !dbg !2449
  call void @llvm.dbg.value(metadata i64 -1, metadata !2400, metadata !DIExpression()) #26, !dbg !2449
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2451
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2401, metadata !DIExpression()) #26, !dbg !2452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2453, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1148, metadata !DIExpression()) #26, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %0, metadata !1149, metadata !DIExpression()) #26, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %1, metadata !1150, metadata !DIExpression()) #26, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1148, metadata !DIExpression()) #26, !dbg !2454
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2456
  store i32 10, i32* %6, align 8, !dbg !2457, !tbaa !1090
  %7 = icmp ne i8* %0, null, !dbg !2458
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2459
  br i1 %9, label %11, label %10, !dbg !2459

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2460
  unreachable, !dbg !2460

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2461
  store i8* %0, i8** %12, align 8, !dbg !2462, !tbaa !1163
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2463
  store i8* %1, i8** %13, align 8, !dbg !2464, !tbaa !1166
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2465
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2466
  ret i8* %14, !dbg !2467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2468 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %1, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %2, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %3, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %0, metadata !2397, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2398, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %2, metadata !2399, metadata !DIExpression()) #26, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %3, metadata !2400, metadata !DIExpression()) #26, !dbg !2477
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2479
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2401, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2481, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1148, metadata !DIExpression()) #26, !dbg !2482
  call void @llvm.dbg.value(metadata i8* %0, metadata !1149, metadata !DIExpression()) #26, !dbg !2482
  call void @llvm.dbg.value(metadata i8* %1, metadata !1150, metadata !DIExpression()) #26, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1148, metadata !DIExpression()) #26, !dbg !2482
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2484
  store i32 10, i32* %7, align 8, !dbg !2485, !tbaa !1090
  %8 = icmp ne i8* %0, null, !dbg !2486
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2487
  br i1 %10, label %12, label %11, !dbg !2487

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2488
  unreachable, !dbg !2488

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2489
  store i8* %0, i8** %13, align 8, !dbg !2490, !tbaa !1163
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2491
  store i8* %1, i8** %14, align 8, !dbg !2492, !tbaa !1166
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2494
  ret i8* %15, !dbg !2495
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %1, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %2, metadata !2502, metadata !DIExpression()), !dbg !2503
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2504
  ret i8* %4, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2510, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 0, metadata !2500, metadata !DIExpression()) #26, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %0, metadata !2501, metadata !DIExpression()) #26, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2502, metadata !DIExpression()) #26, !dbg !2513
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2515
  ret i8* %3, !dbg !2516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8* %1, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()) #26, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %1, metadata !2501, metadata !DIExpression()) #26, !dbg !2524
  call void @llvm.dbg.value(metadata i64 -1, metadata !2502, metadata !DIExpression()) #26, !dbg !2524
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2526
  ret i8* %3, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2500, metadata !DIExpression()) #26, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !2501, metadata !DIExpression()) #26, !dbg !2536
  call void @llvm.dbg.value(metadata i64 -1, metadata !2502, metadata !DIExpression()) #26, !dbg !2536
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2538
  ret i8* %2, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2540 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2580, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %2, metadata !2582, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %3, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8** %4, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %5, metadata !2585, metadata !DIExpression()), !dbg !2586
  %7 = icmp eq i8* %1, null, !dbg !2587
  br i1 %7, label %10, label %8, !dbg !2589

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2590
  br label %12, !dbg !2590

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2591
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #26, !dbg !2592
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2592
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2593
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #26, !dbg !2594
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.86, i64 0, i64 0)) #26, !dbg !2594
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2595
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
  ], !dbg !2596

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #26, !dbg !2597
  %21 = load i8*, i8** %4, align 8, !dbg !2597, !tbaa !603
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2597
  br label %147, !dbg !2599

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #26, !dbg !2600
  %25 = load i8*, i8** %4, align 8, !dbg !2600, !tbaa !603
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2600
  %27 = load i8*, i8** %26, align 8, !dbg !2600, !tbaa !603
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2600
  br label %147, !dbg !2601

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #26, !dbg !2602
  %31 = load i8*, i8** %4, align 8, !dbg !2602, !tbaa !603
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2602
  %33 = load i8*, i8** %32, align 8, !dbg !2602, !tbaa !603
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2602
  %35 = load i8*, i8** %34, align 8, !dbg !2602, !tbaa !603
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2602
  br label %147, !dbg !2603

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #26, !dbg !2604
  %39 = load i8*, i8** %4, align 8, !dbg !2604, !tbaa !603
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2604
  %41 = load i8*, i8** %40, align 8, !dbg !2604, !tbaa !603
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2604
  %43 = load i8*, i8** %42, align 8, !dbg !2604, !tbaa !603
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2604
  %45 = load i8*, i8** %44, align 8, !dbg !2604, !tbaa !603
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2604
  br label %147, !dbg !2605

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #26, !dbg !2606
  %49 = load i8*, i8** %4, align 8, !dbg !2606, !tbaa !603
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2606
  %51 = load i8*, i8** %50, align 8, !dbg !2606, !tbaa !603
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2606
  %53 = load i8*, i8** %52, align 8, !dbg !2606, !tbaa !603
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2606
  %55 = load i8*, i8** %54, align 8, !dbg !2606, !tbaa !603
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2606
  %57 = load i8*, i8** %56, align 8, !dbg !2606, !tbaa !603
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2606
  br label %147, !dbg !2607

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #26, !dbg !2608
  %61 = load i8*, i8** %4, align 8, !dbg !2608, !tbaa !603
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2608
  %63 = load i8*, i8** %62, align 8, !dbg !2608, !tbaa !603
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2608
  %65 = load i8*, i8** %64, align 8, !dbg !2608, !tbaa !603
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2608
  %67 = load i8*, i8** %66, align 8, !dbg !2608, !tbaa !603
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2608
  %69 = load i8*, i8** %68, align 8, !dbg !2608, !tbaa !603
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2608
  %71 = load i8*, i8** %70, align 8, !dbg !2608, !tbaa !603
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2608
  br label %147, !dbg !2609

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #26, !dbg !2610
  %75 = load i8*, i8** %4, align 8, !dbg !2610, !tbaa !603
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2610
  %77 = load i8*, i8** %76, align 8, !dbg !2610, !tbaa !603
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2610
  %79 = load i8*, i8** %78, align 8, !dbg !2610, !tbaa !603
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2610
  %81 = load i8*, i8** %80, align 8, !dbg !2610, !tbaa !603
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2610
  %83 = load i8*, i8** %82, align 8, !dbg !2610, !tbaa !603
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2610
  %85 = load i8*, i8** %84, align 8, !dbg !2610, !tbaa !603
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2610
  %87 = load i8*, i8** %86, align 8, !dbg !2610, !tbaa !603
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2610
  br label %147, !dbg !2611

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #26, !dbg !2612
  %91 = load i8*, i8** %4, align 8, !dbg !2612, !tbaa !603
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2612
  %93 = load i8*, i8** %92, align 8, !dbg !2612, !tbaa !603
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2612
  %95 = load i8*, i8** %94, align 8, !dbg !2612, !tbaa !603
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2612
  %97 = load i8*, i8** %96, align 8, !dbg !2612, !tbaa !603
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2612
  %99 = load i8*, i8** %98, align 8, !dbg !2612, !tbaa !603
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2612
  %101 = load i8*, i8** %100, align 8, !dbg !2612, !tbaa !603
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2612
  %103 = load i8*, i8** %102, align 8, !dbg !2612, !tbaa !603
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2612
  %105 = load i8*, i8** %104, align 8, !dbg !2612, !tbaa !603
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2612
  br label %147, !dbg !2613

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.95, i64 0, i64 0), i32 5) #26, !dbg !2614
  %109 = load i8*, i8** %4, align 8, !dbg !2614, !tbaa !603
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2614
  %111 = load i8*, i8** %110, align 8, !dbg !2614, !tbaa !603
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2614
  %113 = load i8*, i8** %112, align 8, !dbg !2614, !tbaa !603
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2614
  %115 = load i8*, i8** %114, align 8, !dbg !2614, !tbaa !603
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2614
  %117 = load i8*, i8** %116, align 8, !dbg !2614, !tbaa !603
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2614
  %119 = load i8*, i8** %118, align 8, !dbg !2614, !tbaa !603
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2614
  %121 = load i8*, i8** %120, align 8, !dbg !2614, !tbaa !603
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2614
  %123 = load i8*, i8** %122, align 8, !dbg !2614, !tbaa !603
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2614
  %125 = load i8*, i8** %124, align 8, !dbg !2614, !tbaa !603
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2614
  br label %147, !dbg !2615

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.96, i64 0, i64 0), i32 5) #26, !dbg !2616
  %129 = load i8*, i8** %4, align 8, !dbg !2616, !tbaa !603
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2616
  %131 = load i8*, i8** %130, align 8, !dbg !2616, !tbaa !603
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2616
  %133 = load i8*, i8** %132, align 8, !dbg !2616, !tbaa !603
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2616
  %135 = load i8*, i8** %134, align 8, !dbg !2616, !tbaa !603
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2616
  %137 = load i8*, i8** %136, align 8, !dbg !2616, !tbaa !603
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2616
  %139 = load i8*, i8** %138, align 8, !dbg !2616, !tbaa !603
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2616
  %141 = load i8*, i8** %140, align 8, !dbg !2616, !tbaa !603
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2616
  %143 = load i8*, i8** %142, align 8, !dbg !2616, !tbaa !603
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2616
  %145 = load i8*, i8** %144, align 8, !dbg !2616, !tbaa !603
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2616
  br label %147, !dbg !2617

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2619 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2623, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2624, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2625, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8** %4, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 0, metadata !2628, metadata !DIExpression()), !dbg !2629
  br label %6, !dbg !2630

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2632
  call void @llvm.dbg.value(metadata i64 %7, metadata !2628, metadata !DIExpression()), !dbg !2629
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2633
  %9 = load i8*, i8** %8, align 8, !dbg !2633, !tbaa !603
  %10 = icmp eq i8* %9, null, !dbg !2635
  %11 = add i64 %7, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %11, metadata !2628, metadata !DIExpression()), !dbg !2629
  br i1 %10, label %12, label %6, !dbg !2635, !llvm.loop !2637

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2639
  ret void, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2641 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2652, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2653, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2654, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %3, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2656, metadata !DIExpression()), !dbg !2660
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2661
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2658, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression()), !dbg !2660
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression()), !dbg !2660
  %11 = load i32, i32* %8, align 8, !dbg !2663
  %12 = icmp ult i32 %11, 41, !dbg !2663
  br i1 %12, label %13, label %18, !dbg !2663

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2663
  %15 = zext i32 %11 to i64, !dbg !2663
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2663
  %17 = add nuw nsw i32 %11, 8, !dbg !2663
  store i32 %17, i32* %8, align 8, !dbg !2663
  br label %21, !dbg !2663

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2663
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2663
  store i8* %20, i8** %9, align 8, !dbg !2663
  br label %21, !dbg !2663

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2663
  %25 = load i8*, i8** %24, align 8, !dbg !2663
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2666
  store i8* %25, i8** %26, align 16, !dbg !2667, !tbaa !603
  %27 = icmp eq i8* %25, null, !dbg !2668
  br i1 %27, label %30, label %28, !dbg !2669

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 1, metadata !2657, metadata !DIExpression()), !dbg !2660
  %29 = icmp ult i32 %22, 41, !dbg !2663
  br i1 %29, label %35, label %32, !dbg !2663

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2670
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2672
  ret void, !dbg !2672

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2663
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2663
  store i8* %34, i8** %9, align 8, !dbg !2663
  br label %40, !dbg !2663

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2663
  %37 = zext i32 %22 to i64, !dbg !2663
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2663
  %39 = add nuw nsw i32 %22, 8, !dbg !2663
  store i32 %39, i32* %8, align 8, !dbg !2663
  br label %40, !dbg !2663

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2663
  %44 = load i8*, i8** %43, align 8, !dbg !2663
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2666
  store i8* %44, i8** %45, align 8, !dbg !2667, !tbaa !603
  %46 = icmp eq i8* %44, null, !dbg !2668
  br i1 %46, label %30, label %47, !dbg !2669

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 2, metadata !2657, metadata !DIExpression()), !dbg !2660
  %48 = icmp ult i32 %41, 41, !dbg !2663
  br i1 %48, label %52, label %49, !dbg !2663

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2663
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2663
  store i8* %51, i8** %9, align 8, !dbg !2663
  br label %57, !dbg !2663

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2663
  %54 = zext i32 %41 to i64, !dbg !2663
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2663
  %56 = add nuw nsw i32 %41, 8, !dbg !2663
  store i32 %56, i32* %8, align 8, !dbg !2663
  br label %57, !dbg !2663

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2663
  %61 = load i8*, i8** %60, align 8, !dbg !2663
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2666
  store i8* %61, i8** %62, align 16, !dbg !2667, !tbaa !603
  %63 = icmp eq i8* %61, null, !dbg !2668
  br i1 %63, label %30, label %64, !dbg !2669

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 3, metadata !2657, metadata !DIExpression()), !dbg !2660
  %65 = icmp ult i32 %58, 41, !dbg !2663
  br i1 %65, label %69, label %66, !dbg !2663

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2663
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2663
  store i8* %68, i8** %9, align 8, !dbg !2663
  br label %74, !dbg !2663

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2663
  %71 = zext i32 %58 to i64, !dbg !2663
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2663
  %73 = add nuw nsw i32 %58, 8, !dbg !2663
  store i32 %73, i32* %8, align 8, !dbg !2663
  br label %74, !dbg !2663

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2663
  %78 = load i8*, i8** %77, align 8, !dbg !2663
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2666
  store i8* %78, i8** %79, align 8, !dbg !2667, !tbaa !603
  %80 = icmp eq i8* %78, null, !dbg !2668
  br i1 %80, label %30, label %81, !dbg !2669

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 4, metadata !2657, metadata !DIExpression()), !dbg !2660
  %82 = icmp ult i32 %75, 41, !dbg !2663
  br i1 %82, label %86, label %83, !dbg !2663

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2663
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2663
  store i8* %85, i8** %9, align 8, !dbg !2663
  br label %91, !dbg !2663

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2663
  %88 = zext i32 %75 to i64, !dbg !2663
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2663
  %90 = add nuw nsw i32 %75, 8, !dbg !2663
  store i32 %90, i32* %8, align 8, !dbg !2663
  br label %91, !dbg !2663

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2663
  %95 = load i8*, i8** %94, align 8, !dbg !2663
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2666
  store i8* %95, i8** %96, align 16, !dbg !2667, !tbaa !603
  %97 = icmp eq i8* %95, null, !dbg !2668
  br i1 %97, label %30, label %98, !dbg !2669

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 5, metadata !2657, metadata !DIExpression()), !dbg !2660
  %99 = icmp ult i32 %92, 41, !dbg !2663
  br i1 %99, label %103, label %100, !dbg !2663

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2663
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2663
  store i8* %102, i8** %9, align 8, !dbg !2663
  br label %108, !dbg !2663

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2663
  %105 = zext i32 %92 to i64, !dbg !2663
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2663
  %107 = add nuw nsw i32 %92, 8, !dbg !2663
  store i32 %107, i32* %8, align 8, !dbg !2663
  br label %108, !dbg !2663

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2663
  %111 = load i8*, i8** %110, align 8, !dbg !2663
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2666
  store i8* %111, i8** %112, align 8, !dbg !2667, !tbaa !603
  %113 = icmp eq i8* %111, null, !dbg !2668
  br i1 %113, label %30, label %114, !dbg !2669

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2657, metadata !DIExpression()), !dbg !2660
  %115 = load i8*, i8** %9, align 8, !dbg !2663
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2663
  store i8* %116, i8** %9, align 8, !dbg !2663
  %117 = bitcast i8* %115 to i8**, !dbg !2663
  %118 = load i8*, i8** %117, align 8, !dbg !2663
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2666
  store i8* %118, i8** %119, align 16, !dbg !2667, !tbaa !603
  %120 = icmp eq i8* %118, null, !dbg !2668
  br i1 %120, label %30, label %121, !dbg !2669

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2657, metadata !DIExpression()), !dbg !2660
  %122 = load i8*, i8** %9, align 8, !dbg !2663
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2663
  store i8* %123, i8** %9, align 8, !dbg !2663
  %124 = bitcast i8* %122 to i8**, !dbg !2663
  %125 = load i8*, i8** %124, align 8, !dbg !2663
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2666
  store i8* %125, i8** %126, align 8, !dbg !2667, !tbaa !603
  %127 = icmp eq i8* %125, null, !dbg !2668
  br i1 %127, label %30, label %128, !dbg !2669

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2657, metadata !DIExpression()), !dbg !2660
  %129 = load i8*, i8** %9, align 8, !dbg !2663
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2663
  store i8* %130, i8** %9, align 8, !dbg !2663
  %131 = bitcast i8* %129 to i8**, !dbg !2663
  %132 = load i8*, i8** %131, align 8, !dbg !2663
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2666
  store i8* %132, i8** %133, align 16, !dbg !2667, !tbaa !603
  %134 = icmp eq i8* %132, null, !dbg !2668
  br i1 %134, label %30, label %135, !dbg !2669

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2657, metadata !DIExpression()), !dbg !2660
  %136 = load i8*, i8** %9, align 8, !dbg !2663
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2663
  store i8* %137, i8** %9, align 8, !dbg !2663
  %138 = bitcast i8* %136 to i8**, !dbg !2663
  %139 = load i8*, i8** %138, align 8, !dbg !2663
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2666
  store i8* %139, i8** %140, align 8, !dbg !2667, !tbaa !603
  %141 = icmp eq i8* %139, null, !dbg !2668
  %142 = select i1 %141, i64 9, i64 10, !dbg !2669
  br label %30, !dbg !2669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2673 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2677, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %2, metadata !2679, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %3, metadata !2680, metadata !DIExpression()), !dbg !2687
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2688
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2681, metadata !DIExpression()), !dbg !2689
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2690
  call void @llvm.va_start(i8* nonnull %6), !dbg !2690
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2691
  call void @llvm.va_end(i8* nonnull %6), !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2693
  ret void, !dbg !2693
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2694 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2695, !tbaa !603
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2695
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #26, !dbg !2696
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.100, i64 0, i64 0)) #26, !dbg !2696
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.101, i64 0, i64 0), i32 5) #26, !dbg !2697
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.102, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.103, i64 0, i64 0)) #26, !dbg !2697
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.104, i64 0, i64 0), i32 5) #26, !dbg !2698
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.105, i64 0, i64 0)) #26, !dbg !2698
  ret void, !dbg !2699
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2700 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %1, metadata !2705, metadata !DIExpression()), !dbg !2706
  %3 = udiv i64 9223372036854775807, %1, !dbg !2707
  %4 = icmp ult i64 %3, %0, !dbg !2707
  br i1 %4, label %5, label %6, !dbg !2709

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2710
  unreachable, !dbg !2710

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %7, metadata !2712, metadata !DIExpression()) #26, !dbg !2718
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %8, metadata !2717, metadata !DIExpression()) #26, !dbg !2718
  %9 = icmp eq i8* %8, null, !dbg !2721
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2723
  br i1 %11, label %12, label %13, !dbg !2723

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !2724
  unreachable, !dbg !2724

13:                                               ; preds = %6
  ret i8* %8, !dbg !2725
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2713 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2712, metadata !DIExpression()), !dbg !2726
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2717, metadata !DIExpression()), !dbg !2726
  %3 = icmp eq i8* %2, null, !dbg !2728
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2729
  br i1 %5, label %6, label %7, !dbg !2729

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2730
  unreachable, !dbg !2730

7:                                                ; preds = %1
  ret i8* %2, !dbg !2731
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !2732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %2, metadata !2738, metadata !DIExpression()), !dbg !2739
  %4 = udiv i64 9223372036854775807, %2, !dbg !2740
  %5 = icmp ult i64 %4, %1, !dbg !2740
  br i1 %5, label %6, label %7, !dbg !2742

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !2743
  unreachable, !dbg !2743

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()) #26, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %8, metadata !2750, metadata !DIExpression()) #26, !dbg !2751
  %9 = icmp eq i64 %8, 0, !dbg !2753
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2755
  br i1 %11, label %12, label %13, !dbg !2755

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !2756
  br label %19, !dbg !2758

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %14, metadata !2745, metadata !DIExpression()) #26, !dbg !2751
  %15 = icmp eq i8* %14, null, !dbg !2760
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2762
  br i1 %17, label %18, label %19, !dbg !2762

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2763
  unreachable, !dbg !2763

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2751
  ret i8* %20, !dbg !2764
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2746 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %1, metadata !2750, metadata !DIExpression()), !dbg !2765
  %3 = icmp eq i64 %1, 0, !dbg !2766
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2767
  br i1 %5, label %6, label %7, !dbg !2767

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !2768
  br label %13, !dbg !2769

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %8, metadata !2745, metadata !DIExpression()), !dbg !2765
  %9 = icmp eq i8* %8, null, !dbg !2771
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2772
  br i1 %11, label %12, label %13, !dbg !2772

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2773
  unreachable, !dbg !2773

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2765
  ret i8* %14, !dbg !2774
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !164 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !169, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64* %1, metadata !170, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %2, metadata !171, metadata !DIExpression()), !dbg !2775
  %4 = load i64, i64* %1, align 8, !dbg !2776, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %4, metadata !172, metadata !DIExpression()), !dbg !2775
  %5 = icmp eq i8* %0, null, !dbg !2777
  br i1 %5, label %6, label %20, !dbg !2779

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2780
  br i1 %7, label %8, label %13, !dbg !2783

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %9, metadata !172, metadata !DIExpression()), !dbg !2775
  %10 = icmp ugt i64 %2, 128, !dbg !2786
  %11 = zext i1 %10 to i64, !dbg !2786
  %12 = add nuw nsw i64 %9, %11, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %12, metadata !172, metadata !DIExpression()), !dbg !2775
  br label %13, !dbg !2788

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2775
  call void @llvm.dbg.value(metadata i64 %14, metadata !172, metadata !DIExpression()), !dbg !2775
  %15 = udiv i64 9223372036854775807, %2, !dbg !2789
  %16 = icmp ult i64 %15, %14, !dbg !2789
  br i1 %16, label %19, label %17, !dbg !2791

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !172, metadata !DIExpression()), !dbg !2775
  store i64 %14, i64* %1, align 8, !dbg !2792, !tbaa !1987
  %18 = mul i64 %14, %2, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %28, metadata !2750, metadata !DIExpression()) #26, !dbg !2794
  br label %31, !dbg !2796

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2797
  unreachable, !dbg !2797

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2798
  %22 = icmp ugt i64 %21, %4, !dbg !2801
  br i1 %22, label %24, label %23, !dbg !2802

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !2803
  unreachable, !dbg !2803

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2804
  %26 = add nuw i64 %4, 1, !dbg !2805
  %27 = add i64 %26, %25, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %27, metadata !172, metadata !DIExpression()), !dbg !2775
  store i64 %27, i64* %1, align 8, !dbg !2792, !tbaa !1987
  %28 = mul i64 %27, %2, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %28, metadata !2750, metadata !DIExpression()) #26, !dbg !2794
  %29 = icmp eq i64 %28, 0, !dbg !2807
  br i1 %29, label %30, label %31, !dbg !2796

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !2808
  br label %38, !dbg !2809

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %33, metadata !2745, metadata !DIExpression()) #26, !dbg !2794
  %34 = icmp eq i8* %33, null, !dbg !2811
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2812
  br i1 %36, label %37, label %38, !dbg !2812

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !2813
  unreachable, !dbg !2813

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2794
  ret i8* %39, !dbg !2814
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !2815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %0, metadata !2712, metadata !DIExpression()) #26, !dbg !2819
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !2717, metadata !DIExpression()) #26, !dbg !2819
  %3 = icmp eq i8* %2, null, !dbg !2822
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2823
  br i1 %5, label %6, label %7, !dbg !2823

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2824
  unreachable, !dbg !2824

7:                                                ; preds = %1
  ret i8* %2, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64* %1, metadata !2831, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %0, metadata !169, metadata !DIExpression()) #26, !dbg !2833
  call void @llvm.dbg.value(metadata i64* %1, metadata !170, metadata !DIExpression()) #26, !dbg !2833
  call void @llvm.dbg.value(metadata i64 1, metadata !171, metadata !DIExpression()) #26, !dbg !2833
  %3 = load i64, i64* %1, align 8, !dbg !2835, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %3, metadata !172, metadata !DIExpression()) #26, !dbg !2833
  %4 = icmp eq i8* %0, null, !dbg !2836
  br i1 %4, label %5, label %10, !dbg !2837

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2838
  br i1 %6, label %17, label %7, !dbg !2839

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !172, metadata !DIExpression()) #26, !dbg !2833
  %8 = icmp slt i64 %3, 0, !dbg !2840
  br i1 %8, label %9, label %17, !dbg !2841

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !2842
  unreachable, !dbg !2842

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2843
  br i1 %11, label %13, label %12, !dbg !2844

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !2845
  unreachable, !dbg !2845

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2846
  %15 = add nuw nsw i64 %3, 1, !dbg !2847
  %16 = add nuw nsw i64 %15, %14, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %16, metadata !172, metadata !DIExpression()) #26, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()) #26, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %16, metadata !2750, metadata !DIExpression()) #26, !dbg !2849
  br label %17, !dbg !2851

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2852
  store i64 %18, i64* %1, align 8, !dbg !2852, !tbaa !1987
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %19, metadata !2745, metadata !DIExpression()) #26, !dbg !2849
  %20 = icmp eq i8* %19, null, !dbg !2854
  br i1 %20, label %21, label %22, !dbg !2855

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !2856
  unreachable, !dbg !2856

22:                                               ; preds = %17
  ret i8* %19, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2858 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %0, metadata !2862, metadata !DIExpression()) #26, !dbg !2867
  call void @llvm.dbg.value(metadata i64 1, metadata !2865, metadata !DIExpression()) #26, !dbg !2867
  %2 = icmp slt i64 %0, 0, !dbg !2869
  br i1 %2, label %6, label %3, !dbg !2871

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %4, metadata !2866, metadata !DIExpression()) #26, !dbg !2867
  %5 = icmp eq i8* %4, null, !dbg !2873
  br i1 %5, label %6, label %7, !dbg !2874

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !2875
  unreachable, !dbg !2875

7:                                                ; preds = %3
  ret i8* %4, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2863 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2862, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()), !dbg !2877
  %3 = udiv i64 9223372036854775807, %1, !dbg !2878
  %4 = icmp ult i64 %3, %0, !dbg !2878
  br i1 %4, label %8, label %5, !dbg !2879

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %6, metadata !2866, metadata !DIExpression()), !dbg !2877
  %7 = icmp eq i8* %6, null, !dbg !2881
  br i1 %7, label %8, label %9, !dbg !2882

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !2883
  unreachable, !dbg !2883

9:                                                ; preds = %5
  ret i8* %6, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2712, metadata !DIExpression()) #26, !dbg !2894
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %3, metadata !2717, metadata !DIExpression()) #26, !dbg !2894
  %4 = icmp eq i8* %3, null, !dbg !2897
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2898
  br i1 %6, label %7, label %8, !dbg !2898

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2899
  unreachable, !dbg !2899

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2900, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %1, metadata !2908, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !2911
  ret i8* %3, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !2917
  %3 = add i64 %2, 1, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %3, metadata !2892, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %3, metadata !2712, metadata !DIExpression()) #26, !dbg !2921
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %4, metadata !2717, metadata !DIExpression()) #26, !dbg !2921
  %5 = icmp eq i8* %4, null, !dbg !2924
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2925
  br i1 %7, label %8, label %9, !dbg !2925

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !2926
  unreachable, !dbg !2926

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2900, metadata !DIExpression()) #26, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()) #26, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %3, metadata !2908, metadata !DIExpression()) #26, !dbg !2927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !2929
  ret i8* %4, !dbg !2930
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2931 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2932, !tbaa !768
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #26, !dbg !2933
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #26, !dbg !2934
  tail call void @abort() #28, !dbg !2935
  unreachable, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !2936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()), !dbg !2941
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #26, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %3, metadata !2940, metadata !DIExpression()), !dbg !2941
  %4 = icmp eq i8* %3, null, !dbg !2943
  br i1 %4, label %5, label %6, !dbg !2945

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !2946
  unreachable, !dbg !2946

6:                                                ; preds = %2
  ret i8* %3, !dbg !2947
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #25

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #15 !dbg !2948 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2956
  %3 = icmp eq i64 %0, 0, !dbg !2957
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2958
  br i1 %5, label %11, label %6, !dbg !2958

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2953, metadata !DIExpression()), !dbg !2959
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2960
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2960
  br i1 %8, label %9, label %11, !dbg !2962

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !2963
  store i32 12, i32* %10, align 4, !dbg !2965, !tbaa !768
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2950, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %12, metadata !2951, metadata !DIExpression()), !dbg !2956
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %14, metadata !2952, metadata !DIExpression()), !dbg !2956
  br label %15, !dbg !2967

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2956
  ret i8* %16, !dbg !2968
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2969 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2985, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2986, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %2, metadata !2987, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2988, metadata !DIExpression()), !dbg !2994
  %6 = bitcast i32* %5 to i8*, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !2995
  %7 = icmp eq i32* %0, null, !dbg !2996
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2998
  call void @llvm.dbg.value(metadata i32* %8, metadata !2985, metadata !DIExpression()), !dbg !2994
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %9, metadata !2989, metadata !DIExpression()), !dbg !2994
  %10 = icmp ugt i64 %9, -3, !dbg !3000
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3001
  br i1 %12, label %13, label %18, !dbg !3001

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3002
  br i1 %14, label %18, label %15, !dbg !3003

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3004, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %16, metadata !2991, metadata !DIExpression()), !dbg !3005
  %17 = zext i8 %16 to i32, !dbg !3006
  store i32 %17, i32* %8, align 4, !dbg !3007, !tbaa !768
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3008
  ret i64 %19, !dbg !3008
}

; Function Attrs: nounwind
declare !dbg !3009 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3013 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3051, metadata !DIExpression()), !dbg !3056
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3057
  call void @llvm.dbg.value(metadata i1 undef, metadata !3052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3056
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3058, metadata !DIExpression()), !dbg !3061
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3063
  %4 = load i32, i32* %3, align 8, !dbg !3063, !tbaa !3064
  %5 = and i32 %4, 32, !dbg !3065
  %6 = icmp eq i32 %5, 0, !dbg !3065
  call void @llvm.dbg.value(metadata i1 %6, metadata !3054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3056
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3066
  %8 = icmp eq i32 %7, 0, !dbg !3067
  call void @llvm.dbg.value(metadata i1 %8, metadata !3055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3056
  br i1 %6, label %9, label %19, !dbg !3068

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3070
  call void @llvm.dbg.value(metadata i1 %10, metadata !3052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3056
  %11 = or i1 %10, %8, !dbg !3071
  %12 = xor i1 %8, true, !dbg !3071
  %13 = sext i1 %12 to i32, !dbg !3071
  br i1 %11, label %22, label %14, !dbg !3071

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3072
  %16 = load i32, i32* %15, align 4, !dbg !3072, !tbaa !768
  %17 = icmp ne i32 %16, 9, !dbg !3073
  %18 = sext i1 %17 to i32, !dbg !3074
  br label %22, !dbg !3074

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3075

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3077
  store i32 0, i32* %21, align 4, !dbg !3079, !tbaa !768
  br label %22, !dbg !3077

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3056
  ret i32 %23, !dbg !3080
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3081 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3090
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3091
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3091
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3086, metadata !DIExpression()), !dbg !3092
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3093
  %5 = icmp eq i32 %4, 0, !dbg !3093
  br i1 %5, label %6, label %13, !dbg !3095

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3096
  %8 = load i16, i16* %7, align 16, !dbg !3096
  %9 = icmp eq i16 %8, 67, !dbg !3096
  br i1 %9, label %13, label %10, !dbg !3097

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3098
  %12 = icmp ne i32 %11, 0, !dbg !3099
  br label %13, !dbg !3097

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3090
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3100
  ret i1 %14, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3101 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  %2 = icmp eq i8* %1, null, !dbg !3108
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %3, metadata !3105, metadata !DIExpression()), !dbg !3107
  %4 = load i8, i8* %3, align 1, !dbg !3111, !tbaa !843
  %5 = icmp eq i8 %4, 0, !dbg !3115
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %6, metadata !3105, metadata !DIExpression()), !dbg !3107
  ret i8* %6, !dbg !3117
}

; Function Attrs: nounwind
declare !dbg !3118 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %0, metadata !3129, metadata !DIExpression()) #26, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3132, metadata !DIExpression()) #26, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()) #26, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %0, metadata !3140, metadata !DIExpression()) #26, !dbg !3146
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %4, metadata !3145, metadata !DIExpression()) #26, !dbg !3146
  call void @llvm.dbg.value(metadata i8* %4, metadata !3134, metadata !DIExpression()) #26, !dbg !3138
  %5 = icmp eq i8* %4, null, !dbg !3149
  br i1 %5, label %6, label %9, !dbg !3150

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3151
  br i1 %7, label %19, label %8, !dbg !3154

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3155, !tbaa !843
  br label %19, !dbg !3156

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %10, metadata !3135, metadata !DIExpression()) #26, !dbg !3158
  %11 = icmp ult i64 %10, %2, !dbg !3159
  br i1 %11, label %12, label %14, !dbg !3161

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()) #26, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %4, metadata !3167, metadata !DIExpression()) #26, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %13, metadata !3168, metadata !DIExpression()) #26, !dbg !3169
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3171
  br label %19, !dbg !3172

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3173
  br i1 %15, label %19, label %16, !dbg !3176

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()) #26, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %4, metadata !3167, metadata !DIExpression()) #26, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %17, metadata !3168, metadata !DIExpression()) #26, !dbg !3179
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3181
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3182
  store i8 0, i8* %18, align 1, !dbg !3183, !tbaa !843
  br label %19, !dbg !3184

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3185
  ret i32 %20, !dbg !3186
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 %0, metadata !3140, metadata !DIExpression()) #26, !dbg !3191
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()) #26, !dbg !3191
  ret i8* %2, !dbg !3194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3195 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3233, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()), !dbg !3237
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %2, metadata !3235, metadata !DIExpression()), !dbg !3237
  %3 = icmp slt i32 %2, 0, !dbg !3239
  br i1 %3, label %4, label %6, !dbg !3241

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3242
  br label %24, !dbg !3243

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3244
  %8 = icmp eq i32 %7, 0, !dbg !3244
  br i1 %8, label %13, label %9, !dbg !3246

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3247
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3248
  %12 = icmp eq i64 %11, -1, !dbg !3249
  br i1 %12, label %16, label %13, !dbg !3250

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3251
  %15 = icmp eq i32 %14, 0, !dbg !3251
  br i1 %15, label %16, label %18, !dbg !3252

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3234, metadata !DIExpression()), !dbg !3237
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %21, metadata !3236, metadata !DIExpression()), !dbg !3237
  br label %24, !dbg !3254

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3255
  %20 = load i32, i32* %19, align 4, !dbg !3255, !tbaa !768
  call void @llvm.dbg.value(metadata i32 %20, metadata !3234, metadata !DIExpression()), !dbg !3237
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %21, metadata !3236, metadata !DIExpression()), !dbg !3237
  %22 = icmp eq i32 %20, 0, !dbg !3256
  br i1 %22, label %24, label %23, !dbg !3254

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3258, !tbaa !768
  call void @llvm.dbg.value(metadata i32 -1, metadata !3236, metadata !DIExpression()), !dbg !3237
  br label %24, !dbg !3260

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3237
  ret i32 %25, !dbg !3261
}

; Function Attrs: nofree nounwind
declare !dbg !3262 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3265 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3266 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3270 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3308, metadata !DIExpression()), !dbg !3309
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3310
  br i1 %2, label %6, label %3, !dbg !3312

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3313
  %5 = icmp eq i32 %4, 0, !dbg !3313
  br i1 %5, label %6, label %8, !dbg !3314

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3315
  br label %17, !dbg !3316

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3317, metadata !DIExpression()) #26, !dbg !3322
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3324
  %10 = load i32, i32* %9, align 8, !dbg !3324, !tbaa !3064
  %11 = and i32 %10, 256, !dbg !3326
  %12 = icmp eq i32 %11, 0, !dbg !3326
  br i1 %12, label %15, label %13, !dbg !3327

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3328
  br label %15, !dbg !3328

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3329
  br label %17, !dbg !3330

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3309
  ret i32 %18, !dbg !3331
}

; Function Attrs: nofree nounwind
declare !dbg !3332 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3335 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3374, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %2, metadata !3376, metadata !DIExpression()), !dbg !3380
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3381
  %5 = load i8*, i8** %4, align 8, !dbg !3381, !tbaa !3382
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3383
  %7 = load i8*, i8** %6, align 8, !dbg !3383, !tbaa !3384
  %8 = icmp eq i8* %5, %7, !dbg !3385
  br i1 %8, label %9, label %28, !dbg !3386

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3387
  %11 = load i8*, i8** %10, align 8, !dbg !3387, !tbaa !886
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3388
  %13 = load i8*, i8** %12, align 8, !dbg !3388, !tbaa !3389
  %14 = icmp eq i8* %11, %13, !dbg !3390
  br i1 %14, label %15, label %28, !dbg !3391

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3392
  %17 = load i8*, i8** %16, align 8, !dbg !3392, !tbaa !3393
  %18 = icmp eq i8* %17, null, !dbg !3394
  br i1 %18, label %19, label %28, !dbg !3395

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3396
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %21, metadata !3377, metadata !DIExpression()), !dbg !3398
  %22 = icmp eq i64 %21, -1, !dbg !3399
  br i1 %22, label %30, label %23, !dbg !3401

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3402
  %25 = load i32, i32* %24, align 8, !dbg !3403, !tbaa !3064
  %26 = and i32 %25, -17, !dbg !3403
  store i32 %26, i32* %24, align 8, !dbg !3403, !tbaa !3064
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3404
  store i64 %21, i64* %27, align 8, !dbg !3405, !tbaa !3406
  br label %30, !dbg !3407

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3408
  br label %30, !dbg !3409

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3380
  ret i32 %31, !dbg !3410
}

; Function Attrs: nofree nounwind
declare !dbg !3411 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblemem_or_argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !28, !33, !145, !147, !150, !41, !47, !53, !152, !139, !159, !176, !178, !180, !182, !185, !187, !189, !578, !580, !582, !584}
!llvm.ident = !{!586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586}
!llvm.module.flags = !{!587, !588, !589, !590, !591}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 31, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basename.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1536, elements: !24)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!15 = !{!16, !19, !21, !23}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !20, size: 32, offset: 192)
!24 = !{!25}
!25 = !DISubrange(count: 6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "Version", scope: !28, file: !29, line: 2, type: !17, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!30 = !{!26}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "file_name", scope: !33, file: !34, line: 46, type: !17, isLocal: true, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!35 = !{!31, !36}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !33, file: !34, line: 56, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "exit_failure", scope: !41, file: !42, line: 24, type: !44, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!43 = !{!39}
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "program_name", scope: !47, file: !48, line: 33, type: !17, isLocal: false, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !50, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!49 = !{!8, !6}
!50 = !{!45}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !53, file: !54, line: 85, type: !133, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !91, globals: !96, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!55 = !{!56, !71, !76}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !57, line: 32, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!60 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!65 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!66 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!68 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!69 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!70 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !57, line: 242, baseType: !58, size: 32, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 46, baseType: !58, size: 32, elements: !78)
!77 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!79 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!91 = !{!20, !92, !93, !6}
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!51, !97, !103, !115, !117, !122, !129, !131}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !53, file: !54, line: 101, type: !99, isLocal: false, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 320, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!101 = !{!102}
!102 = !DISubrange(count: 10)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !53, file: !54, line: 1052, type: !105, isLocal: false, isDefinition: true)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !54, line: 65, size: 448, elements: !106)
!106 = !{!107, !108, !109, !113, !114}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !105, file: !54, line: 68, baseType: !56, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !54, line: 71, baseType: !20, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !105, file: !54, line: 75, baseType: !110, size: 256, offset: 64)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !105, file: !54, line: 78, baseType: !17, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !105, file: !54, line: 81, baseType: !17, size: 64, offset: 384)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !53, file: !54, line: 116, type: !105, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "slot0", scope: !53, file: !54, line: 842, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 256)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "slotvec", scope: !53, file: !54, line: 845, type: !124, isLocal: true, isDefinition: true)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !54, line: 834, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !125, file: !54, line: 836, baseType: !93, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !54, line: 837, baseType: !6, size: 64, offset: 64)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "nslots", scope: !53, file: !54, line: 843, type: !20, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "slotvec0", scope: !53, file: !54, line: 844, type: !125, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 704, elements: !135)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!135 = !{!136}
!136 = !DISubrange(count: 11)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !139, file: !140, line: 26, type: !142, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !141, splitDebugInlining: false, nameTableKind: None)
!140 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!141 = !{!137}
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 47)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/basename.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !{!6}
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !154, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !{!155}
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 40, baseType: !58, size: 32, elements: !156)
!156 = !{!157}
!157 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!158 = !{!8}
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !161, retainedTypes: !175, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !{!162}
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !164, file: !163, line: 186, baseType: !58, size: 32, elements: !173)
!163 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = distinct !DISubprogram(name: "x2nrealloc", scope: !163, file: !163, line: 174, type: !165, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !168)
!165 = !DISubroutineType(types: !166)
!166 = !{!8, !8, !167, !93}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!168 = !{!169, !170, !171, !172}
!169 = !DILocalVariable(name: "p", arg: 1, scope: !164, file: !163, line: 174, type: !8)
!170 = !DILocalVariable(name: "pn", arg: 2, scope: !164, file: !163, line: 174, type: !167)
!171 = !DILocalVariable(name: "s", arg: 3, scope: !164, file: !163, line: 174, type: !93)
!172 = !DILocalVariable(name: "n", scope: !164, file: !163, line: 176, type: !93)
!173 = !{!174}
!174 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!175 = !{!93, !6, !8}
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!93}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !191, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!192}
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 41, baseType: !58, size: 32, elements: !194)
!193 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!195 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!196 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!197 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!198 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!199 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!200 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!202 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!203 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!204 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!205 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!206 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!233 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!234 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!235 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!236 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!237 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!238 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!239 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!240 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!241 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!242 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!243 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!244 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!303 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!464 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!465 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!466 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!467 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!468 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!469 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!470 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!471 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!472 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!473 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!474 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!475 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!476 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!477 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!480 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!510 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!511 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!512 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!513 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!514 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!519 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!520 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!521 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!522 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !158, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!586 = !{!"clang version 12.0.1"}
!587 = !{i32 7, !"Dwarf Version", i32 4}
!588 = !{i32 2, !"Debug Info Version", i32 3}
!589 = !{i32 1, !"wchar_size", i32 4}
!590 = !{i32 7, !"PIC Level", i32 2}
!591 = !{i32 7, !"PIE Level", i32 2}
!592 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 42, type: !593, scopeLine: 43, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !20}
!595 = !{!596}
!596 = !DILocalVariable(name: "status", arg: 1, scope: !592, file: !3, line: 42, type: !20)
!597 = !DILocation(line: 0, scope: !592)
!598 = !DILocation(line: 44, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !3, line: 44, column: 7)
!600 = !DILocation(line: 44, column: 7, scope: !592)
!601 = !DILocation(line: 45, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 45, column: 5)
!603 = !{!604, !604, i64 0}
!604 = !{!"any pointer", !605, i64 0}
!605 = !{!"omnipotent char", !606, i64 0}
!606 = !{!"Simple C/C++ TBAA"}
!607 = !DILocation(line: 48, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !599, file: !3, line: 47, column: 5)
!609 = !DILocation(line: 53, column: 7, scope: !608)
!610 = !DILocation(line: 590, column: 3, scope: !611, inlinedAt: !615)
!611 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !612, file: !612, line: 588, type: !613, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!612 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = !DISubroutineType(types: !614)
!614 = !{null}
!615 = distinct !DILocation(line: 58, column: 7, scope: !608)
!616 = !DILocation(line: 60, column: 7, scope: !608)
!617 = !DILocation(line: 65, column: 7, scope: !608)
!618 = !DILocation(line: 66, column: 7, scope: !608)
!619 = !DILocation(line: 67, column: 7, scope: !608)
!620 = !DILocalVariable(name: "program", arg: 1, scope: !621, file: !612, line: 634, type: !17)
!621 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !612, file: !612, line: 634, type: !622, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !17}
!624 = !{!620, !625, !634, !635, !637}
!625 = !DILocalVariable(name: "infomap", scope: !621, file: !612, line: 636, type: !626)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 896, elements: !632)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !621, file: !612, line: 636, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !628, file: !612, line: 636, baseType: !17, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !612, line: 636, baseType: !17, size: 64, offset: 64)
!632 = !{!633}
!633 = !DISubrange(count: 7)
!634 = !DILocalVariable(name: "node", scope: !621, file: !612, line: 646, type: !17)
!635 = !DILocalVariable(name: "map_prog", scope: !621, file: !612, line: 647, type: !636)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!637 = !DILocalVariable(name: "lc_messages", scope: !621, file: !612, line: 659, type: !17)
!638 = !DILocation(line: 0, scope: !621, inlinedAt: !639)
!639 = distinct !DILocation(line: 76, column: 7, scope: !608)
!640 = !DILocation(line: 636, column: 3, scope: !621, inlinedAt: !639)
!641 = !DILocation(line: 636, column: 67, scope: !621, inlinedAt: !639)
!642 = !DILocation(line: 647, column: 36, scope: !621, inlinedAt: !639)
!643 = !DILocation(line: 649, column: 3, scope: !621, inlinedAt: !639)
!644 = !DILocation(line: 649, column: 33, scope: !621, inlinedAt: !639)
!645 = !DILocation(line: 650, column: 13, scope: !621, inlinedAt: !639)
!646 = !DILocation(line: 649, column: 20, scope: !621, inlinedAt: !639)
!647 = !{!648, !604, i64 0}
!648 = !{!"infomap", !604, i64 0, !604, i64 8}
!649 = !DILocation(line: 649, column: 10, scope: !621, inlinedAt: !639)
!650 = !DILocation(line: 649, column: 28, scope: !621, inlinedAt: !639)
!651 = distinct !{!651, !643, !645, !652}
!652 = !{!"llvm.loop.mustprogress"}
!653 = !DILocation(line: 652, column: 17, scope: !654, inlinedAt: !639)
!654 = distinct !DILexicalBlock(scope: !621, file: !612, line: 652, column: 7)
!655 = !{!648, !604, i64 8}
!656 = !DILocation(line: 652, column: 7, scope: !654, inlinedAt: !639)
!657 = !DILocation(line: 652, column: 7, scope: !621, inlinedAt: !639)
!658 = !DILocation(line: 655, column: 3, scope: !621, inlinedAt: !639)
!659 = !DILocation(line: 659, column: 29, scope: !621, inlinedAt: !639)
!660 = !DILocation(line: 660, column: 7, scope: !661, inlinedAt: !639)
!661 = distinct !DILexicalBlock(scope: !621, file: !612, line: 660, column: 7)
!662 = !DILocation(line: 660, column: 19, scope: !661, inlinedAt: !639)
!663 = !DILocation(line: 660, column: 22, scope: !661, inlinedAt: !639)
!664 = !DILocation(line: 660, column: 7, scope: !621, inlinedAt: !639)
!665 = !DILocation(line: 666, column: 7, scope: !666, inlinedAt: !639)
!666 = distinct !DILexicalBlock(scope: !661, file: !612, line: 661, column: 5)
!667 = !DILocation(line: 668, column: 5, scope: !666, inlinedAt: !639)
!668 = !DILocation(line: 669, column: 3, scope: !621, inlinedAt: !639)
!669 = !DILocation(line: 671, column: 3, scope: !621, inlinedAt: !639)
!670 = !DILocation(line: 673, column: 1, scope: !621, inlinedAt: !639)
!671 = !DILocation(line: 78, column: 3, scope: !592)
!672 = !DISubprogram(name: "dcgettext", scope: !673, file: !673, line: 51, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!673 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!674 = !DISubroutineType(types: !675)
!675 = !{!6, !17, !17, !20}
!676 = !DISubprogram(name: "fputs_unlocked", scope: !677, file: !677, line: 667, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!677 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!678 = !DISubroutineType(types: !679)
!679 = !{!20, !17, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !683)
!682 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !699, !700, !701, !702, !706, !707, !709, !713, !716, !718, !721, !724, !725, !726, !727, !728}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !681, file: !682, line: 51, baseType: !20, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !681, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !681, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !681, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !681, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !681, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !681, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !681, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !681, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !681, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !681, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !681, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !681, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !682, line: 36, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !681, file: !682, line: 70, baseType: !680, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !681, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !681, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !681, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !704, line: 152, baseType: !705)
!704 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!705 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !681, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !681, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!708 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !681, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 1)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !681, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !682, line: 43, baseType: null)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !681, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !704, line: 153, baseType: !705)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !681, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !682, line: 37, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !681, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !682, line: 38, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !681, file: !682, line: 93, baseType: !680, size: 64, offset: 1344)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !681, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !681, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !681, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !681, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 20)
!732 = !DISubprogram(name: "setlocale", scope: !733, file: !733, line: 122, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!733 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!734 = !DISubroutineType(types: !735)
!735 = !{!6, !20, !17}
!736 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 124, type: !737, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !740)
!737 = !DISubroutineType(types: !738)
!738 = !{!20, !20, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!740 = !{!741, !742, !743, !744, !745, !746}
!741 = !DILocalVariable(name: "argc", arg: 1, scope: !736, file: !3, line: 124, type: !20)
!742 = !DILocalVariable(name: "argv", arg: 2, scope: !736, file: !3, line: 124, type: !739)
!743 = !DILocalVariable(name: "multiple_names", scope: !736, file: !3, line: 126, type: !38)
!744 = !DILocalVariable(name: "use_nuls", scope: !736, file: !3, line: 127, type: !38)
!745 = !DILocalVariable(name: "suffix", scope: !736, file: !3, line: 128, type: !17)
!746 = !DILocalVariable(name: "c", scope: !747, file: !3, line: 140, type: !20)
!747 = distinct !DILexicalBlock(scope: !736, file: !3, line: 139, column: 5)
!748 = !DILocation(line: 0, scope: !736)
!749 = !DILocation(line: 131, column: 21, scope: !736)
!750 = !DILocation(line: 131, column: 3, scope: !736)
!751 = !DILocation(line: 132, column: 3, scope: !736)
!752 = !DILocation(line: 133, column: 3, scope: !736)
!753 = !DILocation(line: 134, column: 3, scope: !736)
!754 = !DILocation(line: 136, column: 3, scope: !736)
!755 = !DILocation(line: 138, column: 3, scope: !736)
!756 = !DILocation(line: 142, column: 11, scope: !747)
!757 = !DILocation(line: 127, column: 8, scope: !736)
!758 = !DILocation(line: 140, column: 15, scope: !747)
!759 = !DILocation(line: 0, scope: !747)
!760 = !DILocation(line: 148, column: 20, scope: !761)
!761 = distinct !DILexicalBlock(scope: !747, file: !3, line: 146, column: 9)
!762 = !DILocation(line: 150, column: 11, scope: !761)
!763 = !DILocation(line: 160, column: 9, scope: !761)
!764 = !DILocation(line: 161, column: 9, scope: !761)
!765 = !DILocation(line: 164, column: 11, scope: !761)
!766 = !DILocation(line: 168, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !736, file: !3, line: 168, column: 7)
!768 = !{!769, !769, i64 0}
!769 = !{!"int", !605, i64 0}
!770 = !DILocation(line: 168, column: 12, scope: !767)
!771 = !DILocation(line: 168, column: 7, scope: !736)
!772 = !DILocation(line: 170, column: 20, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !3, line: 169, column: 5)
!774 = !DILocation(line: 170, column: 7, scope: !773)
!775 = !DILocation(line: 171, column: 7, scope: !773)
!776 = !DILocation(line: 174, column: 8, scope: !777)
!777 = distinct !DILexicalBlock(scope: !736, file: !3, line: 174, column: 7)
!778 = !DILocation(line: 174, column: 23, scope: !777)
!779 = !DILocation(line: 176, column: 20, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 175, column: 5)
!781 = !DILocation(line: 176, column: 55, scope: !780)
!782 = !DILocation(line: 176, column: 62, scope: !780)
!783 = !DILocation(line: 176, column: 50, scope: !780)
!784 = !DILocation(line: 176, column: 43, scope: !780)
!785 = !DILocation(line: 176, column: 7, scope: !780)
!786 = !DILocation(line: 177, column: 7, scope: !780)
!787 = !DILocation(line: 180, column: 7, scope: !736)
!788 = !DILocation(line: 182, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 182, column: 7)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 181, column: 5)
!791 = distinct !DILexicalBlock(scope: !736, file: !3, line: 180, column: 7)
!792 = !DILocation(line: 183, column: 27, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !3, line: 182, column: 7)
!794 = !DILocation(line: 183, column: 9, scope: !793)
!795 = !DILocation(line: 182, column: 35, scope: !793)
!796 = !DILocation(line: 182, column: 21, scope: !793)
!797 = distinct !{!797, !788, !798, !652}
!798 = !DILocation(line: 183, column: 57, scope: !789)
!799 = !DILocation(line: 186, column: 23, scope: !791)
!800 = !DILocation(line: 187, column: 34, scope: !791)
!801 = !DILocation(line: 187, column: 23, scope: !791)
!802 = !DILocation(line: 187, column: 56, scope: !791)
!803 = !DILocation(line: 187, column: 44, scope: !791)
!804 = !DILocation(line: 187, column: 69, scope: !791)
!805 = !DILocation(line: 186, column: 5, scope: !791)
!806 = !DILocation(line: 190, column: 1, scope: !736)
!807 = !DISubprogram(name: "bindtextdomain", scope: !673, file: !673, line: 86, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!808 = !DISubroutineType(types: !809)
!809 = !{!6, !17, !17}
!810 = !DISubprogram(name: "textdomain", scope: !673, file: !673, line: 82, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!811 = !DISubroutineType(types: !812)
!812 = !{!6, !17}
!813 = !DISubprogram(name: "atexit", scope: !814, file: !814, line: 595, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!814 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!815 = !DISubroutineType(types: !816)
!816 = !{!20, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!818 = !DISubprogram(name: "getopt_long", scope: !14, file: !14, line: 66, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!819 = !DISubroutineType(types: !820)
!820 = !{!20, !20, !821, !17, !823, !22}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!824 = !DISubprogram(name: "error", scope: !825, file: !825, line: 52, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!825 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!826 = !DISubroutineType(types: !827)
!827 = !{null, !20, !20, !17, null}
!828 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 104, type: !829, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !17, !17, !38}
!831 = !{!832, !833, !834, !835}
!832 = !DILocalVariable(name: "string", arg: 1, scope: !828, file: !3, line: 104, type: !17)
!833 = !DILocalVariable(name: "suffix", arg: 2, scope: !828, file: !3, line: 104, type: !17)
!834 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !828, file: !3, line: 104, type: !38)
!835 = !DILocalVariable(name: "name", scope: !828, file: !3, line: 106, type: !6)
!836 = !DILocation(line: 0, scope: !828)
!837 = !DILocation(line: 106, column: 16, scope: !828)
!838 = !DILocation(line: 107, column: 3, scope: !828)
!839 = !DILocation(line: 115, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !828, file: !3, line: 115, column: 7)
!841 = !DILocation(line: 115, column: 14, scope: !840)
!842 = !DILocation(line: 115, column: 17, scope: !840)
!843 = !{!605, !605, i64 0}
!844 = !DILocation(line: 115, column: 7, scope: !828)
!845 = !DILocalVariable(name: "name", arg: 1, scope: !846, file: !3, line: 85, type: !6)
!846 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 85, type: !847, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !6, !17}
!849 = !{!845, !850, !851, !852}
!850 = !DILocalVariable(name: "suffix", arg: 2, scope: !846, file: !3, line: 85, type: !17)
!851 = !DILocalVariable(name: "np", scope: !846, file: !3, line: 87, type: !6)
!852 = !DILocalVariable(name: "sp", scope: !846, file: !3, line: 88, type: !17)
!853 = !DILocation(line: 0, scope: !846, inlinedAt: !854)
!854 = distinct !DILocation(line: 116, column: 5, scope: !840)
!855 = !DILocation(line: 90, column: 15, scope: !846, inlinedAt: !854)
!856 = !DILocation(line: 90, column: 13, scope: !846, inlinedAt: !854)
!857 = !DILocation(line: 91, column: 17, scope: !846, inlinedAt: !854)
!858 = !DILocation(line: 91, column: 15, scope: !846, inlinedAt: !854)
!859 = !DILocation(line: 93, column: 3, scope: !846, inlinedAt: !854)
!860 = !DILocation(line: 93, column: 13, scope: !846, inlinedAt: !854)
!861 = !DILocation(line: 93, column: 20, scope: !846, inlinedAt: !854)
!862 = !DILocation(line: 94, column: 10, scope: !863, inlinedAt: !854)
!863 = distinct !DILexicalBlock(scope: !846, file: !3, line: 94, column: 9)
!864 = !DILocation(line: 94, column: 9, scope: !863, inlinedAt: !854)
!865 = !DILocation(line: 94, column: 19, scope: !863, inlinedAt: !854)
!866 = !DILocation(line: 94, column: 18, scope: !863, inlinedAt: !854)
!867 = !DILocation(line: 94, column: 15, scope: !863, inlinedAt: !854)
!868 = !DILocation(line: 94, column: 9, scope: !846, inlinedAt: !854)
!869 = distinct !{!869, !859, !870, !652}
!870 = !DILocation(line: 95, column: 7, scope: !846, inlinedAt: !854)
!871 = !DILocation(line: 96, column: 7, scope: !846, inlinedAt: !854)
!872 = !DILocation(line: 97, column: 9, scope: !873, inlinedAt: !854)
!873 = distinct !DILexicalBlock(scope: !846, file: !3, line: 96, column: 7)
!874 = !DILocation(line: 97, column: 5, scope: !873, inlinedAt: !854)
!875 = !DILocation(line: 118, column: 3, scope: !828)
!876 = !DILocation(line: 119, column: 3, scope: !828)
!877 = !DILocalVariable(name: "__c", arg: 1, scope: !878, file: !879, line: 108, type: !20)
!878 = distinct !DISubprogram(name: "putchar_unlocked", scope: !879, file: !879, line: 108, type: !880, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!879 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!880 = !DISubroutineType(types: !881)
!881 = !{!20, !20}
!882 = !{!877}
!883 = !DILocation(line: 0, scope: !878, inlinedAt: !884)
!884 = distinct !DILocation(line: 119, column: 3, scope: !828)
!885 = !DILocation(line: 110, column: 10, scope: !878, inlinedAt: !884)
!886 = !{!887, !604, i64 40}
!887 = !{!"_IO_FILE", !769, i64 0, !604, i64 8, !604, i64 16, !604, i64 24, !604, i64 32, !604, i64 40, !604, i64 48, !604, i64 56, !604, i64 64, !604, i64 72, !604, i64 80, !604, i64 88, !604, i64 96, !604, i64 104, !769, i64 112, !769, i64 116, !888, i64 120, !889, i64 128, !605, i64 130, !605, i64 131, !604, i64 136, !888, i64 144, !604, i64 152, !604, i64 160, !604, i64 168, !604, i64 176, !888, i64 184, !769, i64 192, !605, i64 196}
!888 = !{!"long", !605, i64 0}
!889 = !{!"short", !605, i64 0}
!890 = !{!887, !604, i64 48}
!891 = !{!"branch_weights", i32 2000, i32 1}
!892 = !DILocation(line: 120, column: 3, scope: !828)
!893 = !DILocation(line: 121, column: 1, scope: !828)
!894 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !34, file: !34, line: 51, type: !622, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !895)
!895 = !{!896}
!896 = !DILocalVariable(name: "file", arg: 1, scope: !894, file: !34, line: 51, type: !17)
!897 = !DILocation(line: 0, scope: !894)
!898 = !DILocation(line: 53, column: 13, scope: !894)
!899 = !DILocation(line: 54, column: 1, scope: !894)
!900 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !34, file: !34, line: 88, type: !901, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !38}
!903 = !{!904}
!904 = !DILocalVariable(name: "ignore", arg: 1, scope: !900, file: !34, line: 88, type: !38)
!905 = !DILocation(line: 0, scope: !900)
!906 = !DILocation(line: 90, column: 16, scope: !900)
!907 = !{!908, !908, i64 0}
!908 = !{!"_Bool", !605, i64 0}
!909 = !DILocation(line: 91, column: 1, scope: !900)
!910 = distinct !DISubprogram(name: "close_stdout", scope: !34, file: !34, line: 117, type: !613, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "write_error", scope: !913, file: !34, line: 122, type: !17)
!913 = distinct !DILexicalBlock(scope: !914, file: !34, line: 121, column: 5)
!914 = distinct !DILexicalBlock(scope: !910, file: !34, line: 119, column: 7)
!915 = !DILocation(line: 119, column: 21, scope: !914)
!916 = !DILocation(line: 119, column: 7, scope: !914)
!917 = !DILocation(line: 119, column: 29, scope: !914)
!918 = !DILocation(line: 120, column: 7, scope: !914)
!919 = !DILocation(line: 120, column: 12, scope: !914)
!920 = !{i8 0, i8 2}
!921 = !DILocation(line: 120, column: 25, scope: !914)
!922 = !DILocation(line: 120, column: 28, scope: !914)
!923 = !DILocation(line: 120, column: 34, scope: !914)
!924 = !DILocation(line: 119, column: 7, scope: !910)
!925 = !DILocation(line: 122, column: 33, scope: !913)
!926 = !DILocation(line: 0, scope: !913)
!927 = !DILocation(line: 123, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !913, file: !34, line: 123, column: 11)
!929 = !DILocation(line: 0, scope: !928)
!930 = !DILocation(line: 123, column: 11, scope: !913)
!931 = !DILocation(line: 124, column: 36, scope: !928)
!932 = !DILocation(line: 124, column: 9, scope: !928)
!933 = !DILocation(line: 127, column: 9, scope: !928)
!934 = !DILocation(line: 129, column: 14, scope: !913)
!935 = !DILocation(line: 129, column: 7, scope: !913)
!936 = !DILocation(line: 134, column: 42, scope: !937)
!937 = distinct !DILexicalBlock(scope: !910, file: !34, line: 134, column: 7)
!938 = !DILocation(line: 134, column: 28, scope: !937)
!939 = !DILocation(line: 134, column: 50, scope: !937)
!940 = !DILocation(line: 134, column: 7, scope: !910)
!941 = !DILocation(line: 135, column: 12, scope: !937)
!942 = !DILocation(line: 135, column: 5, scope: !937)
!943 = !DILocation(line: 136, column: 1, scope: !910)
!944 = distinct !DISubprogram(name: "base_name", scope: !146, file: !146, line: 28, type: !811, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !945)
!945 = !{!946, !947, !948}
!946 = !DILocalVariable(name: "name", arg: 1, scope: !944, file: !146, line: 28, type: !17)
!947 = !DILocalVariable(name: "base", scope: !944, file: !146, line: 30, type: !17)
!948 = !DILocalVariable(name: "length", scope: !944, file: !146, line: 31, type: !93)
!949 = !DILocation(line: 0, scope: !944)
!950 = !DILocation(line: 30, column: 22, scope: !944)
!951 = !DILocation(line: 35, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !146, line: 35, column: 7)
!953 = !DILocation(line: 35, column: 7, scope: !944)
!954 = !DILocation(line: 36, column: 28, scope: !952)
!955 = !DILocation(line: 36, column: 12, scope: !952)
!956 = !DILocation(line: 36, column: 5, scope: !952)
!957 = !DILocation(line: 39, column: 12, scope: !944)
!958 = !DILocation(line: 40, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !944, file: !146, line: 40, column: 7)
!960 = !DILocation(line: 40, column: 7, scope: !944)
!961 = !DILocation(line: 57, column: 10, scope: !944)
!962 = !DILocation(line: 57, column: 3, scope: !944)
!963 = !DILocation(line: 58, column: 1, scope: !944)
!964 = distinct !DISubprogram(name: "last_component", scope: !148, file: !148, line: 30, type: !811, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !965)
!965 = !{!966, !967, !968, !969}
!966 = !DILocalVariable(name: "name", arg: 1, scope: !964, file: !148, line: 30, type: !17)
!967 = !DILocalVariable(name: "base", scope: !964, file: !148, line: 32, type: !17)
!968 = !DILocalVariable(name: "p", scope: !964, file: !148, line: 33, type: !17)
!969 = !DILocalVariable(name: "saw_slash", scope: !964, file: !148, line: 34, type: !38)
!970 = !DILocation(line: 0, scope: !964)
!971 = !DILocation(line: 36, column: 3, scope: !964)
!972 = !DILocation(line: 36, column: 10, scope: !964)
!973 = !DILocation(line: 37, column: 9, scope: !964)
!974 = distinct !{!974, !971, !973, !652}
!975 = !DILocation(line: 39, column: 18, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !148, line: 39, column: 3)
!977 = distinct !DILexicalBlock(scope: !964, file: !148, line: 39, column: 3)
!978 = !DILocation(line: 32, column: 15, scope: !964)
!979 = !DILocation(line: 0, scope: !977)
!980 = !DILocation(line: 39, column: 3, scope: !977)
!981 = !DILocation(line: 43, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !148, line: 43, column: 16)
!983 = distinct !DILexicalBlock(scope: !984, file: !148, line: 41, column: 11)
!984 = distinct !DILexicalBlock(scope: !976, file: !148, line: 40, column: 5)
!985 = !DILocation(line: 43, column: 16, scope: !983)
!986 = !DILocation(line: 39, column: 23, scope: !976)
!987 = !DILocation(line: 39, column: 3, scope: !976)
!988 = distinct !{!988, !980, !989, !652}
!989 = !DILocation(line: 48, column: 5, scope: !977)
!990 = !DILocation(line: 50, column: 3, scope: !964)
!991 = distinct !DISubprogram(name: "base_len", scope: !148, file: !148, line: 58, type: !992, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!93, !17}
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(name: "name", arg: 1, scope: !991, file: !148, line: 58, type: !17)
!996 = !DILocalVariable(name: "len", scope: !991, file: !148, line: 60, type: !93)
!997 = !DILocalVariable(name: "prefix_len", scope: !991, file: !148, line: 61, type: !93)
!998 = !DILocation(line: 0, scope: !991)
!999 = !DILocation(line: 63, column: 14, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !148, line: 63, column: 3)
!1001 = !DILocation(line: 63, column: 8, scope: !1000)
!1002 = !DILocation(line: 0, scope: !1000)
!1003 = !DILocation(line: 63, column: 32, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !148, line: 63, column: 3)
!1005 = !DILocation(line: 63, column: 38, scope: !1004)
!1006 = !DILocation(line: 63, column: 41, scope: !1004)
!1007 = !DILocation(line: 63, column: 3, scope: !1000)
!1008 = distinct !{!1008, !1007, !1009, !652}
!1009 = !DILocation(line: 64, column: 5, scope: !1000)
!1010 = !DILocation(line: 74, column: 3, scope: !991)
!1011 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !151, file: !151, line: 31, type: !1012, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!38, !6}
!1014 = !{!1015, !1016, !1017, !1018}
!1015 = !DILocalVariable(name: "file", arg: 1, scope: !1011, file: !151, line: 31, type: !6)
!1016 = !DILocalVariable(name: "base", scope: !1011, file: !151, line: 33, type: !6)
!1017 = !DILocalVariable(name: "base_lim", scope: !1011, file: !151, line: 34, type: !6)
!1018 = !DILocalVariable(name: "had_slash", scope: !1011, file: !151, line: 35, type: !38)
!1019 = !DILocation(line: 0, scope: !1011)
!1020 = !DILocation(line: 33, column: 16, scope: !1011)
!1021 = !DILocation(line: 39, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !151, line: 39, column: 7)
!1023 = !DILocation(line: 39, column: 7, scope: !1011)
!1024 = !DILocation(line: 41, column: 21, scope: !1011)
!1025 = !DILocation(line: 41, column: 19, scope: !1011)
!1026 = !DILocation(line: 42, column: 16, scope: !1011)
!1027 = !DILocation(line: 42, column: 26, scope: !1011)
!1028 = !DILocation(line: 43, column: 13, scope: !1011)
!1029 = !DILocation(line: 44, column: 3, scope: !1011)
!1030 = distinct !DISubprogram(name: "set_program_name", scope: !48, file: !48, line: 39, type: !622, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DILocalVariable(name: "argv0", arg: 1, scope: !1030, file: !48, line: 39, type: !17)
!1033 = !DILocalVariable(name: "slash", scope: !1030, file: !48, line: 46, type: !17)
!1034 = !DILocalVariable(name: "base", scope: !1030, file: !48, line: 47, type: !17)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 51, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !48, line: 51, column: 7)
!1038 = !DILocation(line: 51, column: 7, scope: !1030)
!1039 = !DILocation(line: 55, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !48, line: 52, column: 5)
!1041 = !DILocation(line: 54, column: 7, scope: !1040)
!1042 = !DILocation(line: 56, column: 7, scope: !1040)
!1043 = !DILocation(line: 59, column: 11, scope: !1030)
!1044 = !DILocation(line: 60, column: 17, scope: !1030)
!1045 = !DILocation(line: 60, column: 11, scope: !1030)
!1046 = !DILocation(line: 61, column: 12, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1030, file: !48, line: 61, column: 7)
!1048 = !DILocation(line: 61, column: 20, scope: !1047)
!1049 = !DILocation(line: 61, column: 25, scope: !1047)
!1050 = !DILocation(line: 61, column: 42, scope: !1047)
!1051 = !DILocation(line: 61, column: 28, scope: !1047)
!1052 = !DILocation(line: 61, column: 61, scope: !1047)
!1053 = !DILocation(line: 61, column: 7, scope: !1030)
!1054 = !DILocation(line: 64, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !48, line: 64, column: 11)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !48, line: 62, column: 5)
!1057 = !DILocation(line: 64, column: 36, scope: !1055)
!1058 = !DILocation(line: 64, column: 11, scope: !1056)
!1059 = !DILocation(line: 66, column: 24, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !48, line: 65, column: 9)
!1061 = !DILocation(line: 70, column: 41, scope: !1060)
!1062 = !DILocation(line: 72, column: 9, scope: !1060)
!1063 = !DILocation(line: 84, column: 16, scope: !1030)
!1064 = !DILocation(line: 90, column: 27, scope: !1030)
!1065 = !DILocation(line: 92, column: 1, scope: !1030)
!1066 = distinct !DISubprogram(name: "clone_quoting_options", scope: !54, file: !54, line: 122, type: !1067, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1070)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1069, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1070 = !{!1071, !1072, !1073}
!1071 = !DILocalVariable(name: "o", arg: 1, scope: !1066, file: !54, line: 122, type: !1069)
!1072 = !DILocalVariable(name: "e", scope: !1066, file: !54, line: 124, type: !20)
!1073 = !DILocalVariable(name: "p", scope: !1066, file: !54, line: 125, type: !1069)
!1074 = !DILocation(line: 0, scope: !1066)
!1075 = !DILocation(line: 124, column: 11, scope: !1066)
!1076 = !DILocation(line: 125, column: 40, scope: !1066)
!1077 = !DILocation(line: 125, column: 31, scope: !1066)
!1078 = !DILocation(line: 127, column: 9, scope: !1066)
!1079 = !DILocation(line: 128, column: 3, scope: !1066)
!1080 = distinct !DISubprogram(name: "get_quoting_style", scope: !54, file: !54, line: 133, type: !1081, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1085)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!56, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "o", arg: 1, scope: !1080, file: !54, line: 133, type: !1083)
!1087 = !DILocation(line: 0, scope: !1080)
!1088 = !DILocation(line: 135, column: 11, scope: !1080)
!1089 = !DILocation(line: 135, column: 46, scope: !1080)
!1090 = !{!1091, !605, i64 0}
!1091 = !{!"quoting_options", !605, i64 0, !769, i64 4, !605, i64 8, !604, i64 40, !604, i64 48}
!1092 = !DILocation(line: 135, column: 3, scope: !1080)
!1093 = distinct !DISubprogram(name: "set_quoting_style", scope: !54, file: !54, line: 141, type: !1094, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1069, !56}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "o", arg: 1, scope: !1093, file: !54, line: 141, type: !1069)
!1098 = !DILocalVariable(name: "s", arg: 2, scope: !1093, file: !54, line: 141, type: !56)
!1099 = !DILocation(line: 0, scope: !1093)
!1100 = !DILocation(line: 143, column: 4, scope: !1093)
!1101 = !DILocation(line: 143, column: 39, scope: !1093)
!1102 = !DILocation(line: 143, column: 45, scope: !1093)
!1103 = !DILocation(line: 144, column: 1, scope: !1093)
!1104 = distinct !DISubprogram(name: "set_char_quoting", scope: !54, file: !54, line: 152, type: !1105, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!20, !1069, !7, !20}
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1114, !1115}
!1108 = !DILocalVariable(name: "o", arg: 1, scope: !1104, file: !54, line: 152, type: !1069)
!1109 = !DILocalVariable(name: "c", arg: 2, scope: !1104, file: !54, line: 152, type: !7)
!1110 = !DILocalVariable(name: "i", arg: 3, scope: !1104, file: !54, line: 152, type: !20)
!1111 = !DILocalVariable(name: "uc", scope: !1104, file: !54, line: 154, type: !9)
!1112 = !DILocalVariable(name: "p", scope: !1104, file: !54, line: 155, type: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1114 = !DILocalVariable(name: "shift", scope: !1104, file: !54, line: 157, type: !20)
!1115 = !DILocalVariable(name: "r", scope: !1104, file: !54, line: 158, type: !20)
!1116 = !DILocation(line: 0, scope: !1104)
!1117 = !DILocation(line: 156, column: 6, scope: !1104)
!1118 = !DILocation(line: 156, column: 62, scope: !1104)
!1119 = !DILocation(line: 156, column: 57, scope: !1104)
!1120 = !DILocation(line: 157, column: 15, scope: !1104)
!1121 = !DILocation(line: 158, column: 12, scope: !1104)
!1122 = !DILocation(line: 158, column: 15, scope: !1104)
!1123 = !DILocation(line: 158, column: 25, scope: !1104)
!1124 = !DILocation(line: 159, column: 13, scope: !1104)
!1125 = !DILocation(line: 159, column: 18, scope: !1104)
!1126 = !DILocation(line: 159, column: 23, scope: !1104)
!1127 = !DILocation(line: 159, column: 6, scope: !1104)
!1128 = !DILocation(line: 160, column: 3, scope: !1104)
!1129 = distinct !DISubprogram(name: "set_quoting_flags", scope: !54, file: !54, line: 168, type: !1130, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!20, !1069, !20}
!1132 = !{!1133, !1134, !1135}
!1133 = !DILocalVariable(name: "o", arg: 1, scope: !1129, file: !54, line: 168, type: !1069)
!1134 = !DILocalVariable(name: "i", arg: 2, scope: !1129, file: !54, line: 168, type: !20)
!1135 = !DILocalVariable(name: "r", scope: !1129, file: !54, line: 170, type: !20)
!1136 = !DILocation(line: 0, scope: !1129)
!1137 = !DILocation(line: 171, column: 8, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !54, line: 171, column: 7)
!1139 = !DILocation(line: 171, column: 7, scope: !1129)
!1140 = !DILocation(line: 173, column: 10, scope: !1129)
!1141 = !{!1091, !769, i64 4}
!1142 = !DILocation(line: 174, column: 12, scope: !1129)
!1143 = !DILocation(line: 175, column: 3, scope: !1129)
!1144 = distinct !DISubprogram(name: "set_custom_quoting", scope: !54, file: !54, line: 179, type: !1145, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1069, !17, !17}
!1147 = !{!1148, !1149, !1150}
!1148 = !DILocalVariable(name: "o", arg: 1, scope: !1144, file: !54, line: 179, type: !1069)
!1149 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1144, file: !54, line: 180, type: !17)
!1150 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1144, file: !54, line: 180, type: !17)
!1151 = !DILocation(line: 0, scope: !1144)
!1152 = !DILocation(line: 182, column: 8, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1144, file: !54, line: 182, column: 7)
!1154 = !DILocation(line: 182, column: 7, scope: !1144)
!1155 = !DILocation(line: 184, column: 6, scope: !1144)
!1156 = !DILocation(line: 184, column: 12, scope: !1144)
!1157 = !DILocation(line: 185, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1144, file: !54, line: 185, column: 7)
!1159 = !DILocation(line: 185, column: 19, scope: !1158)
!1160 = !DILocation(line: 186, column: 5, scope: !1158)
!1161 = !DILocation(line: 187, column: 6, scope: !1144)
!1162 = !DILocation(line: 187, column: 17, scope: !1144)
!1163 = !{!1091, !604, i64 40}
!1164 = !DILocation(line: 188, column: 6, scope: !1144)
!1165 = !DILocation(line: 188, column: 18, scope: !1144)
!1166 = !{!1091, !604, i64 48}
!1167 = !DILocation(line: 189, column: 1, scope: !1144)
!1168 = distinct !DISubprogram(name: "quotearg_buffer", scope: !54, file: !54, line: 784, type: !1169, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!93, !6, !93, !17, !93, !1083}
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1172 = !DILocalVariable(name: "buffer", arg: 1, scope: !1168, file: !54, line: 784, type: !6)
!1173 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1168, file: !54, line: 784, type: !93)
!1174 = !DILocalVariable(name: "arg", arg: 3, scope: !1168, file: !54, line: 785, type: !17)
!1175 = !DILocalVariable(name: "argsize", arg: 4, scope: !1168, file: !54, line: 785, type: !93)
!1176 = !DILocalVariable(name: "o", arg: 5, scope: !1168, file: !54, line: 786, type: !1083)
!1177 = !DILocalVariable(name: "p", scope: !1168, file: !54, line: 788, type: !1083)
!1178 = !DILocalVariable(name: "e", scope: !1168, file: !54, line: 789, type: !20)
!1179 = !DILocalVariable(name: "r", scope: !1168, file: !54, line: 790, type: !93)
!1180 = !DILocation(line: 0, scope: !1168)
!1181 = !DILocation(line: 788, column: 37, scope: !1168)
!1182 = !DILocation(line: 789, column: 11, scope: !1168)
!1183 = !DILocation(line: 791, column: 43, scope: !1168)
!1184 = !DILocation(line: 791, column: 53, scope: !1168)
!1185 = !DILocation(line: 791, column: 60, scope: !1168)
!1186 = !DILocation(line: 792, column: 43, scope: !1168)
!1187 = !DILocation(line: 792, column: 58, scope: !1168)
!1188 = !DILocation(line: 790, column: 14, scope: !1168)
!1189 = !DILocation(line: 793, column: 9, scope: !1168)
!1190 = !DILocation(line: 794, column: 3, scope: !1168)
!1191 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !54, file: !54, line: 256, type: !1192, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1196)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!93, !6, !93, !17, !93, !56, !20, !1194, !17, !17}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1228, !1229, !1247, !1250, !1251, !1258, !1261, !1262, !1263, !1264, !1265, !1266}
!1197 = !DILocalVariable(name: "buffer", arg: 1, scope: !1191, file: !54, line: 256, type: !6)
!1198 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1191, file: !54, line: 256, type: !93)
!1199 = !DILocalVariable(name: "arg", arg: 3, scope: !1191, file: !54, line: 257, type: !17)
!1200 = !DILocalVariable(name: "argsize", arg: 4, scope: !1191, file: !54, line: 257, type: !93)
!1201 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1191, file: !54, line: 258, type: !56)
!1202 = !DILocalVariable(name: "flags", arg: 6, scope: !1191, file: !54, line: 258, type: !20)
!1203 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1191, file: !54, line: 259, type: !1194)
!1204 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1191, file: !54, line: 260, type: !17)
!1205 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1191, file: !54, line: 261, type: !17)
!1206 = !DILocalVariable(name: "i", scope: !1191, file: !54, line: 263, type: !93)
!1207 = !DILocalVariable(name: "len", scope: !1191, file: !54, line: 264, type: !93)
!1208 = !DILocalVariable(name: "orig_buffersize", scope: !1191, file: !54, line: 265, type: !93)
!1209 = !DILocalVariable(name: "quote_string", scope: !1191, file: !54, line: 266, type: !17)
!1210 = !DILocalVariable(name: "quote_string_len", scope: !1191, file: !54, line: 267, type: !93)
!1211 = !DILocalVariable(name: "backslash_escapes", scope: !1191, file: !54, line: 268, type: !38)
!1212 = !DILocalVariable(name: "unibyte_locale", scope: !1191, file: !54, line: 269, type: !38)
!1213 = !DILocalVariable(name: "elide_outer_quotes", scope: !1191, file: !54, line: 270, type: !38)
!1214 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1191, file: !54, line: 271, type: !38)
!1215 = !DILocalVariable(name: "encountered_single_quote", scope: !1191, file: !54, line: 272, type: !38)
!1216 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1191, file: !54, line: 273, type: !38)
!1217 = !DILocalVariable(name: "c", scope: !1218, file: !54, line: 402, type: !9)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !54, line: 401, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !54, line: 400, column: 3)
!1220 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 400, column: 3)
!1221 = !DILocalVariable(name: "esc", scope: !1218, file: !54, line: 403, type: !9)
!1222 = !DILocalVariable(name: "is_right_quote", scope: !1218, file: !54, line: 404, type: !38)
!1223 = !DILocalVariable(name: "escaping", scope: !1218, file: !54, line: 405, type: !38)
!1224 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1218, file: !54, line: 406, type: !38)
!1225 = !DILocalVariable(name: "m", scope: !1226, file: !54, line: 610, type: !93)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 608, column: 11)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 426, column: 9)
!1228 = !DILocalVariable(name: "printable", scope: !1226, file: !54, line: 612, type: !38)
!1229 = !DILocalVariable(name: "mbstate", scope: !1230, file: !54, line: 621, type: !1232)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !54, line: 620, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !54, line: 614, column: 17)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1233, line: 6, baseType: !1234)
!1233 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1235, line: 21, baseType: !1236)
!1235 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 13, size: 64, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1236, file: !1235, line: 15, baseType: !20, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1236, file: !1235, line: 20, baseType: !1240, size: 32, offset: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !1235, line: 16, size: 32, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1240, file: !1235, line: 18, baseType: !58, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1240, file: !1235, line: 19, baseType: !1244, size: 32)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 4)
!1247 = !DILocalVariable(name: "w", scope: !1248, file: !54, line: 631, type: !1249)
!1248 = distinct !DILexicalBlock(scope: !1230, file: !54, line: 630, column: 19)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !20)
!1250 = !DILocalVariable(name: "bytes", scope: !1248, file: !54, line: 632, type: !93)
!1251 = !DILocalVariable(name: "j", scope: !1252, file: !54, line: 657, type: !93)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !54, line: 656, column: 27)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !54, line: 654, column: 29)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !54, line: 649, column: 23)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !54, line: 641, column: 30)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !54, line: 636, column: 30)
!1257 = distinct !DILexicalBlock(scope: !1248, file: !54, line: 634, column: 25)
!1258 = !DILocalVariable(name: "ilim", scope: !1259, file: !54, line: 684, type: !93)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !54, line: 681, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1226, file: !54, line: 680, column: 17)
!1261 = !DILabel(scope: !1191, name: "process_input", file: !54, line: 314)
!1262 = !DILabel(scope: !1227, name: "c_and_shell_escape", file: !54, line: 512)
!1263 = !DILabel(scope: !1227, name: "c_escape", file: !54, line: 517)
!1264 = !DILabel(scope: !1218, name: "store_escape", file: !54, line: 719)
!1265 = !DILabel(scope: !1218, name: "store_c", file: !54, line: 722)
!1266 = !DILabel(scope: !1191, name: "force_outer_quoting_style", file: !54, line: 763)
!1267 = !DILocation(line: 0, scope: !1191)
!1268 = !DILocation(line: 269, column: 25, scope: !1191)
!1269 = !DILocation(line: 269, column: 36, scope: !1191)
!1270 = !DILocation(line: 270, column: 8, scope: !1191)
!1271 = !DILocation(line: 273, column: 3, scope: !1191)
!1272 = !DILocation(line: 265, column: 10, scope: !1191)
!1273 = !DILocation(line: 266, column: 15, scope: !1191)
!1274 = !DILocation(line: 267, column: 10, scope: !1191)
!1275 = !DILocation(line: 268, column: 8, scope: !1191)
!1276 = !DILocation(line: 271, column: 8, scope: !1191)
!1277 = !DILocation(line: 272, column: 8, scope: !1191)
!1278 = !DILocation(line: 273, column: 8, scope: !1191)
!1279 = !DILocation(line: 314, column: 2, scope: !1191)
!1280 = !DILocation(line: 316, column: 3, scope: !1191)
!1281 = !DILocation(line: 323, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 317, column: 5)
!1283 = !DILocation(line: 323, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !54, line: 323, column: 11)
!1285 = !DILocation(line: 324, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !54, line: 324, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !54, line: 324, column: 9)
!1288 = !DILocation(line: 324, column: 9, scope: !1287)
!1289 = !DILocation(line: 362, column: 26, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !54, line: 340, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !54, line: 339, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1282, file: !54, line: 338, column: 7)
!1293 = !DILocation(line: 363, column: 27, scope: !1290)
!1294 = !DILocation(line: 364, column: 11, scope: !1290)
!1295 = !DILocation(line: 365, column: 14, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !54, line: 365, column: 13)
!1297 = !DILocation(line: 365, column: 13, scope: !1292)
!1298 = !DILocation(line: 366, column: 43, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !54, line: 366, column: 11)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !54, line: 366, column: 11)
!1301 = !DILocation(line: 366, column: 11, scope: !1300)
!1302 = !DILocation(line: 367, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !54, line: 367, column: 13)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !54, line: 367, column: 13)
!1305 = !DILocation(line: 367, column: 13, scope: !1304)
!1306 = !DILocation(line: 366, column: 70, scope: !1299)
!1307 = distinct !{!1307, !1301, !1308, !652}
!1308 = !DILocation(line: 367, column: 13, scope: !1300)
!1309 = !DILocation(line: 264, column: 10, scope: !1191)
!1310 = !DILocation(line: 370, column: 28, scope: !1292)
!1311 = !DILocation(line: 372, column: 7, scope: !1282)
!1312 = !DILocation(line: 376, column: 7, scope: !1282)
!1313 = !DILocation(line: 379, column: 7, scope: !1282)
!1314 = !DILocation(line: 381, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1282, file: !54, line: 381, column: 11)
!1316 = !DILocation(line: 381, column: 11, scope: !1282)
!1317 = !DILocation(line: 386, column: 12, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1282, file: !54, line: 386, column: 11)
!1319 = !DILocation(line: 386, column: 11, scope: !1282)
!1320 = !DILocation(line: 387, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !54, line: 387, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !54, line: 387, column: 9)
!1323 = !DILocation(line: 387, column: 9, scope: !1322)
!1324 = !DILocation(line: 394, column: 7, scope: !1282)
!1325 = !DILocation(line: 397, column: 7, scope: !1282)
!1326 = !DILocation(line: 400, column: 8, scope: !1220)
!1327 = !DILocation(line: 0, scope: !1220)
!1328 = !DILocation(line: 400, column: 27, scope: !1219)
!1329 = !DILocation(line: 400, column: 19, scope: !1219)
!1330 = !DILocation(line: 400, column: 41, scope: !1219)
!1331 = !DILocation(line: 400, column: 48, scope: !1219)
!1332 = !DILocation(line: 400, column: 3, scope: !1220)
!1333 = !DILocation(line: 400, column: 60, scope: !1219)
!1334 = !DILocation(line: 0, scope: !1218)
!1335 = !DILocation(line: 409, column: 11, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 408, column: 11)
!1337 = !DILocation(line: 411, column: 17, scope: !1336)
!1338 = !DILocation(line: 412, column: 39, scope: !1336)
!1339 = !DILocation(line: 416, column: 32, scope: !1336)
!1340 = !DILocation(line: 412, column: 19, scope: !1336)
!1341 = !DILocation(line: 412, column: 15, scope: !1336)
!1342 = !DILocation(line: 417, column: 11, scope: !1336)
!1343 = !DILocation(line: 417, column: 26, scope: !1336)
!1344 = !DILocation(line: 417, column: 14, scope: !1336)
!1345 = !DILocation(line: 417, column: 63, scope: !1336)
!1346 = !DILocation(line: 408, column: 11, scope: !1218)
!1347 = !DILocation(line: 424, column: 11, scope: !1218)
!1348 = !DILocation(line: 425, column: 7, scope: !1218)
!1349 = !DILocation(line: 428, column: 15, scope: !1227)
!1350 = !DILocation(line: 430, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !54, line: 430, column: 15)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !54, line: 429, column: 13)
!1353 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 428, column: 15)
!1354 = !DILocation(line: 430, column: 15, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !54, line: 430, column: 15)
!1356 = !DILocation(line: 430, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !54, line: 430, column: 15)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !54, line: 430, column: 15)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !54, line: 430, column: 15)
!1360 = !DILocation(line: 430, column: 15, scope: !1358)
!1361 = !DILocation(line: 430, column: 15, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !54, line: 430, column: 15)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !54, line: 430, column: 15)
!1364 = !DILocation(line: 430, column: 15, scope: !1363)
!1365 = !DILocation(line: 430, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !54, line: 430, column: 15)
!1367 = distinct !DILexicalBlock(scope: !1359, file: !54, line: 430, column: 15)
!1368 = !DILocation(line: 430, column: 15, scope: !1367)
!1369 = !DILocation(line: 430, column: 15, scope: !1359)
!1370 = !DILocation(line: 430, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !54, line: 430, column: 15)
!1372 = distinct !DILexicalBlock(scope: !1351, file: !54, line: 430, column: 15)
!1373 = !DILocation(line: 430, column: 15, scope: !1372)
!1374 = !DILocation(line: 438, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1352, file: !54, line: 437, column: 19)
!1376 = !DILocation(line: 438, column: 48, scope: !1375)
!1377 = !DILocation(line: 438, column: 59, scope: !1375)
!1378 = !DILocation(line: 440, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !54, line: 440, column: 19)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !54, line: 440, column: 19)
!1381 = distinct !DILexicalBlock(scope: !1375, file: !54, line: 439, column: 17)
!1382 = !DILocation(line: 440, column: 19, scope: !1380)
!1383 = !DILocation(line: 441, column: 19, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !54, line: 441, column: 19)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !54, line: 441, column: 19)
!1386 = !DILocation(line: 441, column: 19, scope: !1385)
!1387 = !DILocation(line: 442, column: 17, scope: !1381)
!1388 = !DILocation(line: 449, column: 20, scope: !1353)
!1389 = !DILocation(line: 454, column: 11, scope: !1227)
!1390 = !DILocation(line: 457, column: 19, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 455, column: 13)
!1392 = !DILocation(line: 463, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !54, line: 462, column: 19)
!1394 = !DILocation(line: 463, column: 47, scope: !1393)
!1395 = !DILocation(line: 463, column: 41, scope: !1393)
!1396 = !DILocation(line: 463, column: 52, scope: !1393)
!1397 = !DILocation(line: 462, column: 19, scope: !1391)
!1398 = !DILocation(line: 464, column: 25, scope: !1393)
!1399 = !DILocation(line: 464, column: 17, scope: !1393)
!1400 = !DILocation(line: 471, column: 25, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1393, file: !54, line: 465, column: 19)
!1402 = !DILocation(line: 475, column: 21, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !54, line: 475, column: 21)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !54, line: 475, column: 21)
!1405 = !DILocation(line: 475, column: 21, scope: !1404)
!1406 = !DILocation(line: 476, column: 21, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !54, line: 476, column: 21)
!1408 = distinct !DILexicalBlock(scope: !1401, file: !54, line: 476, column: 21)
!1409 = !DILocation(line: 476, column: 21, scope: !1408)
!1410 = !DILocation(line: 477, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !54, line: 477, column: 21)
!1412 = distinct !DILexicalBlock(scope: !1401, file: !54, line: 477, column: 21)
!1413 = !DILocation(line: 477, column: 21, scope: !1412)
!1414 = !DILocation(line: 478, column: 21, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !54, line: 478, column: 21)
!1416 = distinct !DILexicalBlock(scope: !1401, file: !54, line: 478, column: 21)
!1417 = !DILocation(line: 478, column: 21, scope: !1416)
!1418 = !DILocation(line: 479, column: 21, scope: !1401)
!1419 = !DILocation(line: 492, column: 31, scope: !1227)
!1420 = !DILocation(line: 493, column: 31, scope: !1227)
!1421 = !DILocation(line: 495, column: 31, scope: !1227)
!1422 = !DILocation(line: 496, column: 31, scope: !1227)
!1423 = !DILocation(line: 497, column: 31, scope: !1227)
!1424 = !DILocation(line: 500, column: 15, scope: !1227)
!1425 = !DILocation(line: 502, column: 19, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !54, line: 501, column: 13)
!1427 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 500, column: 15)
!1428 = !DILocation(line: 509, column: 33, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 509, column: 15)
!1430 = !DILocation(line: 0, scope: !1227)
!1431 = !DILocation(line: 512, column: 9, scope: !1227)
!1432 = !DILocation(line: 514, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 513, column: 15)
!1434 = !DILocation(line: 517, column: 9, scope: !1227)
!1435 = !DILocation(line: 518, column: 15, scope: !1227)
!1436 = !DILocation(line: 526, column: 15, scope: !1227)
!1437 = !DILocation(line: 526, column: 40, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 526, column: 15)
!1439 = !DILocation(line: 526, column: 47, scope: !1438)
!1440 = !DILocation(line: 526, column: 18, scope: !1438)
!1441 = !DILocation(line: 530, column: 17, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 530, column: 15)
!1443 = !DILocation(line: 530, column: 15, scope: !1227)
!1444 = !DILocation(line: 535, column: 11, scope: !1227)
!1445 = !DILocation(line: 549, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 548, column: 15)
!1447 = !DILocation(line: 556, column: 15, scope: !1227)
!1448 = !DILocation(line: 558, column: 19, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !54, line: 557, column: 13)
!1450 = distinct !DILexicalBlock(scope: !1227, file: !54, line: 556, column: 15)
!1451 = !DILocation(line: 561, column: 19, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !54, line: 561, column: 19)
!1453 = !DILocation(line: 561, column: 30, scope: !1452)
!1454 = !DILocation(line: 570, column: 15, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !54, line: 570, column: 15)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !54, line: 570, column: 15)
!1457 = !DILocation(line: 570, column: 15, scope: !1456)
!1458 = !DILocation(line: 571, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !54, line: 571, column: 15)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !54, line: 571, column: 15)
!1461 = !DILocation(line: 571, column: 15, scope: !1460)
!1462 = !DILocation(line: 572, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !54, line: 572, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1449, file: !54, line: 572, column: 15)
!1465 = !DILocation(line: 572, column: 15, scope: !1464)
!1466 = !DILocation(line: 574, column: 13, scope: !1449)
!1467 = !DILocation(line: 614, column: 17, scope: !1226)
!1468 = !DILocation(line: 0, scope: !1226)
!1469 = !DILocation(line: 617, column: 29, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1231, file: !54, line: 615, column: 15)
!1471 = !{!889, !889, i64 0}
!1472 = !DILocation(line: 617, column: 27, scope: !1470)
!1473 = !DILocation(line: 678, column: 40, scope: !1226)
!1474 = !DILocation(line: 680, column: 23, scope: !1260)
!1475 = !DILocation(line: 621, column: 17, scope: !1230)
!1476 = !DILocation(line: 621, column: 27, scope: !1230)
!1477 = !DILocalVariable(name: "__dest", arg: 1, scope: !1478, file: !1479, line: 57, type: !8)
!1478 = distinct !DISubprogram(name: "memset", scope: !1479, file: !1479, line: 57, type: !1480, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1482)
!1479 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!8, !8, !20, !93}
!1482 = !{!1477, !1483, !1484}
!1483 = !DILocalVariable(name: "__ch", arg: 2, scope: !1478, file: !1479, line: 57, type: !20)
!1484 = !DILocalVariable(name: "__len", arg: 3, scope: !1478, file: !1479, line: 57, type: !93)
!1485 = !DILocation(line: 0, scope: !1478, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 622, column: 17, scope: !1230)
!1487 = !DILocation(line: 59, column: 10, scope: !1478, inlinedAt: !1486)
!1488 = !DILocation(line: 626, column: 29, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1230, file: !54, line: 626, column: 21)
!1490 = !DILocation(line: 626, column: 21, scope: !1230)
!1491 = !DILocation(line: 627, column: 29, scope: !1489)
!1492 = !DILocation(line: 627, column: 19, scope: !1489)
!1493 = !DILocation(line: 629, column: 17, scope: !1230)
!1494 = !DILocation(line: 624, column: 19, scope: !1230)
!1495 = !DILocation(line: 625, column: 27, scope: !1230)
!1496 = !DILocation(line: 631, column: 21, scope: !1248)
!1497 = !DILocation(line: 632, column: 56, scope: !1248)
!1498 = !DILocation(line: 632, column: 50, scope: !1248)
!1499 = !DILocation(line: 633, column: 53, scope: !1248)
!1500 = !DILocation(line: 0, scope: !1248)
!1501 = !DILocation(line: 632, column: 36, scope: !1248)
!1502 = !DILocation(line: 634, column: 25, scope: !1248)
!1503 = !DILocation(line: 644, column: 38, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1255, file: !54, line: 642, column: 23)
!1505 = !DILocation(line: 644, column: 48, scope: !1504)
!1506 = !DILocation(line: 644, column: 25, scope: !1504)
!1507 = !DILocation(line: 644, column: 51, scope: !1504)
!1508 = !DILocation(line: 645, column: 28, scope: !1504)
!1509 = !DILocation(line: 644, column: 34, scope: !1504)
!1510 = distinct !{!1510, !1506, !1508, !652}
!1511 = !DILocation(line: 655, column: 29, scope: !1253)
!1512 = !DILocation(line: 0, scope: !1252)
!1513 = !DILocation(line: 659, column: 49, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !54, line: 658, column: 29)
!1515 = distinct !DILexicalBlock(scope: !1252, file: !54, line: 658, column: 29)
!1516 = !DILocation(line: 659, column: 39, scope: !1514)
!1517 = !DILocation(line: 659, column: 31, scope: !1514)
!1518 = !DILocation(line: 658, column: 53, scope: !1514)
!1519 = !DILocation(line: 658, column: 43, scope: !1514)
!1520 = !DILocation(line: 658, column: 29, scope: !1515)
!1521 = distinct !{!1521, !1520, !1522, !652}
!1522 = !DILocation(line: 667, column: 33, scope: !1515)
!1523 = !DILocation(line: 674, column: 19, scope: !1230)
!1524 = !DILocation(line: 670, column: 41, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1254, file: !54, line: 670, column: 29)
!1526 = !DILocation(line: 670, column: 31, scope: !1525)
!1527 = !DILocation(line: 670, column: 29, scope: !1254)
!1528 = !DILocation(line: 672, column: 27, scope: !1254)
!1529 = !DILocation(line: 675, column: 26, scope: !1230)
!1530 = !DILocation(line: 675, column: 24, scope: !1230)
!1531 = !DILocation(line: 674, column: 19, scope: !1248)
!1532 = distinct !{!1532, !1493, !1533, !652}
!1533 = !DILocation(line: 675, column: 44, scope: !1230)
!1534 = !DILocation(line: 676, column: 15, scope: !1231)
!1535 = !DILocation(line: 680, column: 19, scope: !1260)
!1536 = !DILocation(line: 680, column: 45, scope: !1260)
!1537 = !DILocation(line: 684, column: 33, scope: !1259)
!1538 = !DILocation(line: 0, scope: !1259)
!1539 = !DILocation(line: 686, column: 17, scope: !1259)
!1540 = !DILocation(line: 405, column: 12, scope: !1218)
!1541 = !DILocation(line: 688, column: 43, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !54, line: 688, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !54, line: 687, column: 19)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !54, line: 686, column: 17)
!1545 = distinct !DILexicalBlock(scope: !1259, file: !54, line: 686, column: 17)
!1546 = !DILocation(line: 690, column: 25, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !54, line: 690, column: 25)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !54, line: 689, column: 23)
!1549 = !DILocation(line: 690, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !54, line: 690, column: 25)
!1551 = !DILocation(line: 690, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !54, line: 690, column: 25)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !54, line: 690, column: 25)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !54, line: 690, column: 25)
!1555 = !DILocation(line: 690, column: 25, scope: !1553)
!1556 = !DILocation(line: 690, column: 25, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !54, line: 690, column: 25)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !54, line: 690, column: 25)
!1559 = !DILocation(line: 690, column: 25, scope: !1558)
!1560 = !DILocation(line: 690, column: 25, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !54, line: 690, column: 25)
!1562 = distinct !DILexicalBlock(scope: !1554, file: !54, line: 690, column: 25)
!1563 = !DILocation(line: 690, column: 25, scope: !1562)
!1564 = !DILocation(line: 690, column: 25, scope: !1554)
!1565 = !DILocation(line: 690, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !54, line: 690, column: 25)
!1567 = distinct !DILexicalBlock(scope: !1547, file: !54, line: 690, column: 25)
!1568 = !DILocation(line: 690, column: 25, scope: !1567)
!1569 = !DILocation(line: 691, column: 25, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !54, line: 691, column: 25)
!1571 = distinct !DILexicalBlock(scope: !1548, file: !54, line: 691, column: 25)
!1572 = !DILocation(line: 691, column: 25, scope: !1571)
!1573 = !DILocation(line: 692, column: 25, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !54, line: 692, column: 25)
!1575 = distinct !DILexicalBlock(scope: !1548, file: !54, line: 692, column: 25)
!1576 = !DILocation(line: 692, column: 25, scope: !1575)
!1577 = !DILocation(line: 693, column: 38, scope: !1548)
!1578 = !DILocation(line: 693, column: 33, scope: !1548)
!1579 = !DILocation(line: 694, column: 23, scope: !1548)
!1580 = !DILocation(line: 695, column: 30, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1542, file: !54, line: 695, column: 30)
!1582 = !DILocation(line: 695, column: 30, scope: !1542)
!1583 = !DILocation(line: 697, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !54, line: 697, column: 25)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !54, line: 697, column: 25)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !54, line: 696, column: 23)
!1587 = !DILocation(line: 697, column: 25, scope: !1585)
!1588 = !DILocation(line: 699, column: 23, scope: !1586)
!1589 = !DILocation(line: 700, column: 35, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1543, file: !54, line: 700, column: 25)
!1591 = !DILocation(line: 700, column: 30, scope: !1590)
!1592 = !DILocation(line: 700, column: 25, scope: !1543)
!1593 = !DILocation(line: 702, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !54, line: 702, column: 21)
!1595 = distinct !DILexicalBlock(scope: !1543, file: !54, line: 702, column: 21)
!1596 = !DILocation(line: 702, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !54, line: 702, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !54, line: 702, column: 21)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !54, line: 702, column: 21)
!1600 = !DILocation(line: 702, column: 21, scope: !1598)
!1601 = !DILocation(line: 702, column: 21, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !54, line: 702, column: 21)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !54, line: 702, column: 21)
!1604 = !DILocation(line: 702, column: 21, scope: !1603)
!1605 = !DILocation(line: 702, column: 21, scope: !1599)
!1606 = !DILocation(line: 0, scope: !1543)
!1607 = !DILocation(line: 703, column: 21, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !54, line: 703, column: 21)
!1609 = distinct !DILexicalBlock(scope: !1543, file: !54, line: 703, column: 21)
!1610 = !DILocation(line: 703, column: 21, scope: !1609)
!1611 = !DILocation(line: 704, column: 25, scope: !1543)
!1612 = !DILocation(line: 686, column: 17, scope: !1544)
!1613 = distinct !{!1613, !1614, !1615}
!1614 = !DILocation(line: 686, column: 17, scope: !1545)
!1615 = !DILocation(line: 705, column: 19, scope: !1545)
!1616 = !DILocation(line: 416, column: 30, scope: !1336)
!1617 = !DILocation(line: 712, column: 34, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 712, column: 11)
!1619 = !DILocation(line: 715, column: 35, scope: !1618)
!1620 = !DILocation(line: 715, column: 17, scope: !1618)
!1621 = !DILocation(line: 715, column: 47, scope: !1618)
!1622 = !DILocation(line: 715, column: 65, scope: !1618)
!1623 = !DILocation(line: 716, column: 11, scope: !1618)
!1624 = !DILocation(line: 712, column: 11, scope: !1218)
!1625 = !DILocation(line: 400, column: 10, scope: !1220)
!1626 = !DILocation(line: 719, column: 5, scope: !1218)
!1627 = !DILocation(line: 720, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 720, column: 7)
!1629 = !DILocation(line: 720, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1628, file: !54, line: 720, column: 7)
!1631 = !DILocation(line: 720, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !54, line: 720, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !54, line: 720, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !54, line: 720, column: 7)
!1635 = !DILocation(line: 720, column: 7, scope: !1633)
!1636 = !DILocation(line: 720, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !54, line: 720, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !54, line: 720, column: 7)
!1639 = !DILocation(line: 720, column: 7, scope: !1638)
!1640 = !DILocation(line: 720, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !54, line: 720, column: 7)
!1642 = distinct !DILexicalBlock(scope: !1634, file: !54, line: 720, column: 7)
!1643 = !DILocation(line: 720, column: 7, scope: !1642)
!1644 = !DILocation(line: 720, column: 7, scope: !1634)
!1645 = !DILocation(line: 720, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !54, line: 720, column: 7)
!1647 = distinct !DILexicalBlock(scope: !1628, file: !54, line: 720, column: 7)
!1648 = !DILocation(line: 720, column: 7, scope: !1647)
!1649 = !DILocation(line: 722, column: 5, scope: !1218)
!1650 = !DILocation(line: 723, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !54, line: 723, column: 7)
!1652 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 723, column: 7)
!1653 = !DILocation(line: 424, column: 9, scope: !1218)
!1654 = !DILocation(line: 723, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !54, line: 723, column: 7)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !54, line: 723, column: 7)
!1657 = distinct !DILexicalBlock(scope: !1651, file: !54, line: 723, column: 7)
!1658 = !DILocation(line: 723, column: 7, scope: !1656)
!1659 = !DILocation(line: 723, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !54, line: 723, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !54, line: 723, column: 7)
!1662 = !DILocation(line: 723, column: 7, scope: !1661)
!1663 = !DILocation(line: 723, column: 7, scope: !1657)
!1664 = !DILocation(line: 724, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !54, line: 724, column: 7)
!1666 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 724, column: 7)
!1667 = !DILocation(line: 724, column: 7, scope: !1666)
!1668 = !DILocation(line: 726, column: 13, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1218, file: !54, line: 726, column: 11)
!1670 = !DILocation(line: 726, column: 11, scope: !1218)
!1671 = !DILocation(line: 728, column: 5, scope: !1219)
!1672 = !DILocation(line: 400, column: 75, scope: !1219)
!1673 = !DILocation(line: 400, column: 3, scope: !1219)
!1674 = distinct !{!1674, !1332, !1675, !652}
!1675 = !DILocation(line: 728, column: 5, scope: !1220)
!1676 = !DILocation(line: 730, column: 11, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 730, column: 7)
!1678 = !DILocation(line: 730, column: 16, scope: !1677)
!1679 = !DILocation(line: 738, column: 51, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 738, column: 7)
!1681 = !DILocation(line: 741, column: 11, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !54, line: 741, column: 11)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !54, line: 740, column: 5)
!1684 = !DILocation(line: 741, column: 11, scope: !1683)
!1685 = !DILocation(line: 742, column: 16, scope: !1682)
!1686 = !DILocation(line: 742, column: 9, scope: !1682)
!1687 = !DILocation(line: 746, column: 18, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !54, line: 746, column: 16)
!1689 = !DILocation(line: 746, column: 29, scope: !1688)
!1690 = !DILocation(line: 755, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 755, column: 7)
!1692 = !DILocation(line: 755, column: 20, scope: !1691)
!1693 = !DILocation(line: 756, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !54, line: 756, column: 5)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !54, line: 756, column: 5)
!1696 = !DILocation(line: 756, column: 5, scope: !1695)
!1697 = !DILocation(line: 757, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !54, line: 757, column: 7)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !54, line: 757, column: 7)
!1700 = !DILocation(line: 757, column: 7, scope: !1699)
!1701 = !DILocation(line: 756, column: 39, scope: !1694)
!1702 = distinct !{!1702, !1696, !1703, !652}
!1703 = !DILocation(line: 757, column: 7, scope: !1695)
!1704 = !DILocation(line: 759, column: 11, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 759, column: 7)
!1706 = !DILocation(line: 759, column: 7, scope: !1191)
!1707 = !DILocation(line: 760, column: 5, scope: !1705)
!1708 = !DILocation(line: 760, column: 17, scope: !1705)
!1709 = !DILocation(line: 763, column: 2, scope: !1191)
!1710 = !DILocation(line: 766, column: 51, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1191, file: !54, line: 766, column: 7)
!1712 = !DILocation(line: 766, column: 21, scope: !1711)
!1713 = !DILocation(line: 770, column: 42, scope: !1191)
!1714 = !DILocation(line: 768, column: 10, scope: !1191)
!1715 = !DILocation(line: 768, column: 3, scope: !1191)
!1716 = !DILocation(line: 772, column: 1, scope: !1191)
!1717 = distinct !DISubprogram(name: "gettext_quote", scope: !54, file: !54, line: 207, type: !1718, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!17, !17, !56}
!1720 = !{!1721, !1722, !1723, !1724}
!1721 = !DILocalVariable(name: "msgid", arg: 1, scope: !1717, file: !54, line: 207, type: !17)
!1722 = !DILocalVariable(name: "s", arg: 2, scope: !1717, file: !54, line: 207, type: !56)
!1723 = !DILocalVariable(name: "translation", scope: !1717, file: !54, line: 209, type: !17)
!1724 = !DILocalVariable(name: "locale_code", scope: !1717, file: !54, line: 210, type: !17)
!1725 = !DILocation(line: 0, scope: !1717)
!1726 = !DILocation(line: 209, column: 29, scope: !1717)
!1727 = !DILocation(line: 212, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1717, file: !54, line: 212, column: 7)
!1729 = !DILocation(line: 212, column: 7, scope: !1717)
!1730 = !DILocation(line: 233, column: 17, scope: !1717)
!1731 = !DILocalVariable(name: "s1", arg: 1, scope: !1732, file: !1733, line: 160, type: !17)
!1732 = distinct !DISubprogram(name: "strcaseeq0", scope: !1733, file: !1733, line: 160, type: !1734, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1736)
!1733 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1736 = !{!1731, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1737 = !DILocalVariable(name: "s2", arg: 2, scope: !1732, file: !1733, line: 160, type: !17)
!1738 = !DILocalVariable(name: "s20", arg: 3, scope: !1732, file: !1733, line: 160, type: !7)
!1739 = !DILocalVariable(name: "s21", arg: 4, scope: !1732, file: !1733, line: 160, type: !7)
!1740 = !DILocalVariable(name: "s22", arg: 5, scope: !1732, file: !1733, line: 160, type: !7)
!1741 = !DILocalVariable(name: "s23", arg: 6, scope: !1732, file: !1733, line: 160, type: !7)
!1742 = !DILocalVariable(name: "s24", arg: 7, scope: !1732, file: !1733, line: 160, type: !7)
!1743 = !DILocalVariable(name: "s25", arg: 8, scope: !1732, file: !1733, line: 160, type: !7)
!1744 = !DILocalVariable(name: "s26", arg: 9, scope: !1732, file: !1733, line: 160, type: !7)
!1745 = !DILocalVariable(name: "s27", arg: 10, scope: !1732, file: !1733, line: 160, type: !7)
!1746 = !DILocalVariable(name: "s28", arg: 11, scope: !1732, file: !1733, line: 160, type: !7)
!1747 = !DILocation(line: 0, scope: !1732, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 234, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1717, file: !54, line: 234, column: 7)
!1750 = !DILocation(line: 162, column: 7, scope: !1751, inlinedAt: !1748)
!1751 = distinct !DILexicalBlock(scope: !1732, file: !1733, line: 162, column: 7)
!1752 = !DILocalVariable(name: "s1", arg: 1, scope: !1753, file: !1733, line: 146, type: !17)
!1753 = distinct !DISubprogram(name: "strcaseeq1", scope: !1733, file: !1733, line: 146, type: !1754, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1756 = !{!1752, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1757 = !DILocalVariable(name: "s2", arg: 2, scope: !1753, file: !1733, line: 146, type: !17)
!1758 = !DILocalVariable(name: "s21", arg: 3, scope: !1753, file: !1733, line: 146, type: !7)
!1759 = !DILocalVariable(name: "s22", arg: 4, scope: !1753, file: !1733, line: 146, type: !7)
!1760 = !DILocalVariable(name: "s23", arg: 5, scope: !1753, file: !1733, line: 146, type: !7)
!1761 = !DILocalVariable(name: "s24", arg: 6, scope: !1753, file: !1733, line: 146, type: !7)
!1762 = !DILocalVariable(name: "s25", arg: 7, scope: !1753, file: !1733, line: 146, type: !7)
!1763 = !DILocalVariable(name: "s26", arg: 8, scope: !1753, file: !1733, line: 146, type: !7)
!1764 = !DILocalVariable(name: "s27", arg: 9, scope: !1753, file: !1733, line: 146, type: !7)
!1765 = !DILocalVariable(name: "s28", arg: 10, scope: !1753, file: !1733, line: 146, type: !7)
!1766 = !DILocation(line: 0, scope: !1753, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 167, column: 16, scope: !1768, inlinedAt: !1748)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !1733, line: 164, column: 11)
!1769 = distinct !DILexicalBlock(scope: !1751, file: !1733, line: 163, column: 5)
!1770 = !DILocation(line: 148, column: 7, scope: !1771, inlinedAt: !1767)
!1771 = distinct !DILexicalBlock(scope: !1753, file: !1733, line: 148, column: 7)
!1772 = !DILocalVariable(name: "s1", arg: 1, scope: !1773, file: !1733, line: 132, type: !17)
!1773 = distinct !DISubprogram(name: "strcaseeq2", scope: !1733, file: !1733, line: 132, type: !1774, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1776 = !{!1772, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1777 = !DILocalVariable(name: "s2", arg: 2, scope: !1773, file: !1733, line: 132, type: !17)
!1778 = !DILocalVariable(name: "s22", arg: 3, scope: !1773, file: !1733, line: 132, type: !7)
!1779 = !DILocalVariable(name: "s23", arg: 4, scope: !1773, file: !1733, line: 132, type: !7)
!1780 = !DILocalVariable(name: "s24", arg: 5, scope: !1773, file: !1733, line: 132, type: !7)
!1781 = !DILocalVariable(name: "s25", arg: 6, scope: !1773, file: !1733, line: 132, type: !7)
!1782 = !DILocalVariable(name: "s26", arg: 7, scope: !1773, file: !1733, line: 132, type: !7)
!1783 = !DILocalVariable(name: "s27", arg: 8, scope: !1773, file: !1733, line: 132, type: !7)
!1784 = !DILocalVariable(name: "s28", arg: 9, scope: !1773, file: !1733, line: 132, type: !7)
!1785 = !DILocation(line: 0, scope: !1773, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 153, column: 16, scope: !1787, inlinedAt: !1767)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1733, line: 150, column: 11)
!1788 = distinct !DILexicalBlock(scope: !1771, file: !1733, line: 149, column: 5)
!1789 = !DILocation(line: 134, column: 7, scope: !1790, inlinedAt: !1786)
!1790 = distinct !DILexicalBlock(scope: !1773, file: !1733, line: 134, column: 7)
!1791 = !DILocalVariable(name: "s1", arg: 1, scope: !1792, file: !1733, line: 118, type: !17)
!1792 = distinct !DISubprogram(name: "strcaseeq3", scope: !1733, file: !1733, line: 118, type: !1793, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1795 = !{!1791, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1796 = !DILocalVariable(name: "s2", arg: 2, scope: !1792, file: !1733, line: 118, type: !17)
!1797 = !DILocalVariable(name: "s23", arg: 3, scope: !1792, file: !1733, line: 118, type: !7)
!1798 = !DILocalVariable(name: "s24", arg: 4, scope: !1792, file: !1733, line: 118, type: !7)
!1799 = !DILocalVariable(name: "s25", arg: 5, scope: !1792, file: !1733, line: 118, type: !7)
!1800 = !DILocalVariable(name: "s26", arg: 6, scope: !1792, file: !1733, line: 118, type: !7)
!1801 = !DILocalVariable(name: "s27", arg: 7, scope: !1792, file: !1733, line: 118, type: !7)
!1802 = !DILocalVariable(name: "s28", arg: 8, scope: !1792, file: !1733, line: 118, type: !7)
!1803 = !DILocation(line: 0, scope: !1792, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 139, column: 16, scope: !1805, inlinedAt: !1786)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1733, line: 136, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !1733, line: 135, column: 5)
!1807 = !DILocation(line: 120, column: 7, scope: !1808, inlinedAt: !1804)
!1808 = distinct !DILexicalBlock(scope: !1792, file: !1733, line: 120, column: 7)
!1809 = !DILocation(line: 120, column: 7, scope: !1792, inlinedAt: !1804)
!1810 = !DILocalVariable(name: "s1", arg: 1, scope: !1811, file: !1733, line: 104, type: !17)
!1811 = distinct !DISubprogram(name: "strcaseeq4", scope: !1733, file: !1733, line: 104, type: !1812, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!1814 = !{!1810, !1815, !1816, !1817, !1818, !1819, !1820}
!1815 = !DILocalVariable(name: "s2", arg: 2, scope: !1811, file: !1733, line: 104, type: !17)
!1816 = !DILocalVariable(name: "s24", arg: 3, scope: !1811, file: !1733, line: 104, type: !7)
!1817 = !DILocalVariable(name: "s25", arg: 4, scope: !1811, file: !1733, line: 104, type: !7)
!1818 = !DILocalVariable(name: "s26", arg: 5, scope: !1811, file: !1733, line: 104, type: !7)
!1819 = !DILocalVariable(name: "s27", arg: 6, scope: !1811, file: !1733, line: 104, type: !7)
!1820 = !DILocalVariable(name: "s28", arg: 7, scope: !1811, file: !1733, line: 104, type: !7)
!1821 = !DILocation(line: 0, scope: !1811, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 125, column: 16, scope: !1823, inlinedAt: !1804)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !1733, line: 122, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1808, file: !1733, line: 121, column: 5)
!1825 = !DILocation(line: 106, column: 7, scope: !1826, inlinedAt: !1822)
!1826 = distinct !DILexicalBlock(scope: !1811, file: !1733, line: 106, column: 7)
!1827 = !DILocation(line: 106, column: 7, scope: !1811, inlinedAt: !1822)
!1828 = !DILocalVariable(name: "s1", arg: 1, scope: !1829, file: !1733, line: 90, type: !17)
!1829 = distinct !DISubprogram(name: "strcaseeq5", scope: !1733, file: !1733, line: 90, type: !1830, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!20, !17, !17, !7, !7, !7, !7}
!1832 = !{!1828, !1833, !1834, !1835, !1836, !1837}
!1833 = !DILocalVariable(name: "s2", arg: 2, scope: !1829, file: !1733, line: 90, type: !17)
!1834 = !DILocalVariable(name: "s25", arg: 3, scope: !1829, file: !1733, line: 90, type: !7)
!1835 = !DILocalVariable(name: "s26", arg: 4, scope: !1829, file: !1733, line: 90, type: !7)
!1836 = !DILocalVariable(name: "s27", arg: 5, scope: !1829, file: !1733, line: 90, type: !7)
!1837 = !DILocalVariable(name: "s28", arg: 6, scope: !1829, file: !1733, line: 90, type: !7)
!1838 = !DILocation(line: 0, scope: !1829, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 111, column: 16, scope: !1840, inlinedAt: !1822)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !1733, line: 108, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1826, file: !1733, line: 107, column: 5)
!1842 = !DILocation(line: 92, column: 7, scope: !1843, inlinedAt: !1839)
!1843 = distinct !DILexicalBlock(scope: !1829, file: !1733, line: 92, column: 7)
!1844 = !DILocation(line: 92, column: 7, scope: !1829, inlinedAt: !1839)
!1845 = !DILocation(line: 235, column: 12, scope: !1749)
!1846 = !DILocation(line: 235, column: 21, scope: !1749)
!1847 = !DILocation(line: 235, column: 5, scope: !1749)
!1848 = !DILocation(line: 0, scope: !1753, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 167, column: 16, scope: !1768, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 236, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1717, file: !54, line: 236, column: 7)
!1852 = !DILocation(line: 148, column: 7, scope: !1771, inlinedAt: !1849)
!1853 = !DILocation(line: 0, scope: !1773, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 153, column: 16, scope: !1787, inlinedAt: !1849)
!1855 = !DILocation(line: 134, column: 7, scope: !1790, inlinedAt: !1854)
!1856 = !DILocation(line: 134, column: 7, scope: !1773, inlinedAt: !1854)
!1857 = !DILocation(line: 0, scope: !1792, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 139, column: 16, scope: !1805, inlinedAt: !1854)
!1859 = !DILocation(line: 120, column: 7, scope: !1808, inlinedAt: !1858)
!1860 = !DILocation(line: 120, column: 7, scope: !1792, inlinedAt: !1858)
!1861 = !DILocation(line: 0, scope: !1811, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 125, column: 16, scope: !1823, inlinedAt: !1858)
!1863 = !DILocation(line: 106, column: 7, scope: !1826, inlinedAt: !1862)
!1864 = !DILocation(line: 106, column: 7, scope: !1811, inlinedAt: !1862)
!1865 = !DILocation(line: 0, scope: !1829, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 111, column: 16, scope: !1840, inlinedAt: !1862)
!1867 = !DILocation(line: 92, column: 7, scope: !1843, inlinedAt: !1866)
!1868 = !DILocation(line: 92, column: 7, scope: !1829, inlinedAt: !1866)
!1869 = !DILocalVariable(name: "s1", arg: 1, scope: !1870, file: !1733, line: 76, type: !17)
!1870 = distinct !DISubprogram(name: "strcaseeq6", scope: !1733, file: !1733, line: 76, type: !1871, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!20, !17, !17, !7, !7, !7}
!1873 = !{!1869, !1874, !1875, !1876, !1877}
!1874 = !DILocalVariable(name: "s2", arg: 2, scope: !1870, file: !1733, line: 76, type: !17)
!1875 = !DILocalVariable(name: "s26", arg: 3, scope: !1870, file: !1733, line: 76, type: !7)
!1876 = !DILocalVariable(name: "s27", arg: 4, scope: !1870, file: !1733, line: 76, type: !7)
!1877 = !DILocalVariable(name: "s28", arg: 5, scope: !1870, file: !1733, line: 76, type: !7)
!1878 = !DILocation(line: 0, scope: !1870, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 97, column: 16, scope: !1880, inlinedAt: !1866)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1733, line: 94, column: 11)
!1881 = distinct !DILexicalBlock(scope: !1843, file: !1733, line: 93, column: 5)
!1882 = !DILocation(line: 78, column: 7, scope: !1883, inlinedAt: !1879)
!1883 = distinct !DILexicalBlock(scope: !1870, file: !1733, line: 78, column: 7)
!1884 = !DILocation(line: 78, column: 7, scope: !1870, inlinedAt: !1879)
!1885 = !DILocalVariable(name: "s1", arg: 1, scope: !1886, file: !1733, line: 62, type: !17)
!1886 = distinct !DISubprogram(name: "strcaseeq7", scope: !1733, file: !1733, line: 62, type: !1887, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!20, !17, !17, !7, !7}
!1889 = !{!1885, !1890, !1891, !1892}
!1890 = !DILocalVariable(name: "s2", arg: 2, scope: !1886, file: !1733, line: 62, type: !17)
!1891 = !DILocalVariable(name: "s27", arg: 3, scope: !1886, file: !1733, line: 62, type: !7)
!1892 = !DILocalVariable(name: "s28", arg: 4, scope: !1886, file: !1733, line: 62, type: !7)
!1893 = !DILocation(line: 0, scope: !1886, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 83, column: 16, scope: !1895, inlinedAt: !1879)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !1733, line: 80, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1883, file: !1733, line: 79, column: 5)
!1897 = !DILocation(line: 64, column: 7, scope: !1898, inlinedAt: !1894)
!1898 = distinct !DILexicalBlock(scope: !1886, file: !1733, line: 64, column: 7)
!1899 = !DILocation(line: 236, column: 7, scope: !1717)
!1900 = !DILocation(line: 237, column: 12, scope: !1851)
!1901 = !DILocation(line: 237, column: 21, scope: !1851)
!1902 = !DILocation(line: 237, column: 5, scope: !1851)
!1903 = !DILocation(line: 239, column: 13, scope: !1717)
!1904 = !DILocation(line: 239, column: 11, scope: !1717)
!1905 = !DILocation(line: 239, column: 3, scope: !1717)
!1906 = !DILocation(line: 240, column: 1, scope: !1717)
!1907 = !DISubprogram(name: "iswprint", scope: !1908, file: !1908, line: 120, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1908 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!20, !58}
!1911 = !DISubprogram(name: "mbsinit", scope: !1912, file: !1912, line: 292, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1912 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!20, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1917 = distinct !DISubprogram(name: "quotearg_alloc", scope: !54, file: !54, line: 799, type: !1918, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!6, !17, !93, !1083}
!1920 = !{!1921, !1922, !1923}
!1921 = !DILocalVariable(name: "arg", arg: 1, scope: !1917, file: !54, line: 799, type: !17)
!1922 = !DILocalVariable(name: "argsize", arg: 2, scope: !1917, file: !54, line: 799, type: !93)
!1923 = !DILocalVariable(name: "o", arg: 3, scope: !1917, file: !54, line: 800, type: !1083)
!1924 = !DILocation(line: 0, scope: !1917)
!1925 = !DILocalVariable(name: "arg", arg: 1, scope: !1926, file: !54, line: 812, type: !17)
!1926 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !54, file: !54, line: 812, type: !1927, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!6, !17, !93, !167, !1083}
!1929 = !{!1925, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1930 = !DILocalVariable(name: "argsize", arg: 2, scope: !1926, file: !54, line: 812, type: !93)
!1931 = !DILocalVariable(name: "size", arg: 3, scope: !1926, file: !54, line: 812, type: !167)
!1932 = !DILocalVariable(name: "o", arg: 4, scope: !1926, file: !54, line: 813, type: !1083)
!1933 = !DILocalVariable(name: "p", scope: !1926, file: !54, line: 815, type: !1083)
!1934 = !DILocalVariable(name: "e", scope: !1926, file: !54, line: 816, type: !20)
!1935 = !DILocalVariable(name: "flags", scope: !1926, file: !54, line: 818, type: !20)
!1936 = !DILocalVariable(name: "bufsize", scope: !1926, file: !54, line: 819, type: !93)
!1937 = !DILocalVariable(name: "buf", scope: !1926, file: !54, line: 823, type: !6)
!1938 = !DILocation(line: 0, scope: !1926, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 802, column: 10, scope: !1917)
!1940 = !DILocation(line: 815, column: 37, scope: !1926, inlinedAt: !1939)
!1941 = !DILocation(line: 816, column: 11, scope: !1926, inlinedAt: !1939)
!1942 = !DILocation(line: 818, column: 18, scope: !1926, inlinedAt: !1939)
!1943 = !DILocation(line: 818, column: 24, scope: !1926, inlinedAt: !1939)
!1944 = !DILocation(line: 819, column: 69, scope: !1926, inlinedAt: !1939)
!1945 = !DILocation(line: 820, column: 53, scope: !1926, inlinedAt: !1939)
!1946 = !DILocation(line: 821, column: 49, scope: !1926, inlinedAt: !1939)
!1947 = !DILocation(line: 822, column: 49, scope: !1926, inlinedAt: !1939)
!1948 = !DILocation(line: 819, column: 20, scope: !1926, inlinedAt: !1939)
!1949 = !DILocation(line: 822, column: 62, scope: !1926, inlinedAt: !1939)
!1950 = !DILocalVariable(name: "n", arg: 1, scope: !1951, file: !163, line: 216, type: !93)
!1951 = distinct !DISubprogram(name: "xcharalloc", scope: !163, file: !163, line: 216, type: !1952, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!6, !93}
!1954 = !{!1950}
!1955 = !DILocation(line: 0, scope: !1951, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 823, column: 15, scope: !1926, inlinedAt: !1939)
!1957 = !DILocation(line: 218, column: 10, scope: !1951, inlinedAt: !1956)
!1958 = !DILocation(line: 824, column: 60, scope: !1926, inlinedAt: !1939)
!1959 = !DILocation(line: 826, column: 32, scope: !1926, inlinedAt: !1939)
!1960 = !DILocation(line: 826, column: 47, scope: !1926, inlinedAt: !1939)
!1961 = !DILocation(line: 824, column: 3, scope: !1926, inlinedAt: !1939)
!1962 = !DILocation(line: 827, column: 9, scope: !1926, inlinedAt: !1939)
!1963 = !DILocation(line: 802, column: 3, scope: !1917)
!1964 = !DILocation(line: 0, scope: !1926)
!1965 = !DILocation(line: 815, column: 37, scope: !1926)
!1966 = !DILocation(line: 816, column: 11, scope: !1926)
!1967 = !DILocation(line: 818, column: 18, scope: !1926)
!1968 = !DILocation(line: 818, column: 27, scope: !1926)
!1969 = !DILocation(line: 818, column: 24, scope: !1926)
!1970 = !DILocation(line: 819, column: 69, scope: !1926)
!1971 = !DILocation(line: 820, column: 53, scope: !1926)
!1972 = !DILocation(line: 821, column: 49, scope: !1926)
!1973 = !DILocation(line: 822, column: 49, scope: !1926)
!1974 = !DILocation(line: 819, column: 20, scope: !1926)
!1975 = !DILocation(line: 822, column: 62, scope: !1926)
!1976 = !DILocation(line: 0, scope: !1951, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 823, column: 15, scope: !1926)
!1978 = !DILocation(line: 218, column: 10, scope: !1951, inlinedAt: !1977)
!1979 = !DILocation(line: 824, column: 60, scope: !1926)
!1980 = !DILocation(line: 826, column: 32, scope: !1926)
!1981 = !DILocation(line: 826, column: 47, scope: !1926)
!1982 = !DILocation(line: 824, column: 3, scope: !1926)
!1983 = !DILocation(line: 827, column: 9, scope: !1926)
!1984 = !DILocation(line: 828, column: 7, scope: !1926)
!1985 = !DILocation(line: 829, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1926, file: !54, line: 828, column: 7)
!1987 = !{!888, !888, i64 0}
!1988 = !DILocation(line: 829, column: 5, scope: !1986)
!1989 = !DILocation(line: 830, column: 3, scope: !1926)
!1990 = distinct !DISubprogram(name: "quotearg_free", scope: !54, file: !54, line: 848, type: !613, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1991)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "sv", scope: !1990, file: !54, line: 850, type: !124)
!1993 = !DILocalVariable(name: "i", scope: !1990, file: !54, line: 851, type: !20)
!1994 = !DILocation(line: 850, column: 24, scope: !1990)
!1995 = !DILocation(line: 0, scope: !1990)
!1996 = !DILocation(line: 852, column: 19, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !54, line: 852, column: 3)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !54, line: 852, column: 3)
!1999 = !DILocation(line: 852, column: 17, scope: !1997)
!2000 = !DILocation(line: 852, column: 3, scope: !1998)
!2001 = !DILocation(line: 853, column: 17, scope: !1997)
!2002 = !{!2003, !604, i64 8}
!2003 = !{!"slotvec", !888, i64 0, !604, i64 8}
!2004 = !DILocation(line: 853, column: 5, scope: !1997)
!2005 = !DILocation(line: 852, column: 28, scope: !1997)
!2006 = distinct !{!2006, !2000, !2007, !652}
!2007 = !DILocation(line: 853, column: 20, scope: !1998)
!2008 = !DILocation(line: 854, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1990, file: !54, line: 854, column: 7)
!2010 = !DILocation(line: 854, column: 17, scope: !2009)
!2011 = !DILocation(line: 854, column: 7, scope: !1990)
!2012 = !DILocation(line: 856, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !54, line: 855, column: 5)
!2014 = !DILocation(line: 857, column: 21, scope: !2013)
!2015 = !{!2003, !888, i64 0}
!2016 = !DILocation(line: 858, column: 20, scope: !2013)
!2017 = !DILocation(line: 859, column: 5, scope: !2013)
!2018 = !DILocation(line: 860, column: 10, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1990, file: !54, line: 860, column: 7)
!2020 = !DILocation(line: 860, column: 7, scope: !1990)
!2021 = !DILocation(line: 862, column: 13, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !54, line: 861, column: 5)
!2023 = !DILocation(line: 862, column: 7, scope: !2022)
!2024 = !DILocation(line: 863, column: 15, scope: !2022)
!2025 = !DILocation(line: 864, column: 5, scope: !2022)
!2026 = !DILocation(line: 865, column: 10, scope: !1990)
!2027 = !DILocation(line: 866, column: 1, scope: !1990)
!2028 = distinct !DISubprogram(name: "quotearg_n", scope: !54, file: !54, line: 931, type: !734, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2029)
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "n", arg: 1, scope: !2028, file: !54, line: 931, type: !20)
!2031 = !DILocalVariable(name: "arg", arg: 2, scope: !2028, file: !54, line: 931, type: !17)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocation(line: 933, column: 10, scope: !2028)
!2034 = !DILocation(line: 933, column: 3, scope: !2028)
!2035 = distinct !DISubprogram(name: "quotearg_n_options", scope: !54, file: !54, line: 877, type: !2036, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!6, !20, !17, !93, !1083}
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2048, !2049, !2051, !2052, !2053}
!2039 = !DILocalVariable(name: "n", arg: 1, scope: !2035, file: !54, line: 877, type: !20)
!2040 = !DILocalVariable(name: "arg", arg: 2, scope: !2035, file: !54, line: 877, type: !17)
!2041 = !DILocalVariable(name: "argsize", arg: 3, scope: !2035, file: !54, line: 877, type: !93)
!2042 = !DILocalVariable(name: "options", arg: 4, scope: !2035, file: !54, line: 878, type: !1083)
!2043 = !DILocalVariable(name: "e", scope: !2035, file: !54, line: 880, type: !20)
!2044 = !DILocalVariable(name: "sv", scope: !2035, file: !54, line: 882, type: !124)
!2045 = !DILocalVariable(name: "preallocated", scope: !2046, file: !54, line: 889, type: !38)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !54, line: 888, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2035, file: !54, line: 887, column: 7)
!2048 = !DILocalVariable(name: "nmax", scope: !2046, file: !54, line: 890, type: !20)
!2049 = !DILocalVariable(name: "size", scope: !2050, file: !54, line: 903, type: !93)
!2050 = distinct !DILexicalBlock(scope: !2035, file: !54, line: 902, column: 3)
!2051 = !DILocalVariable(name: "val", scope: !2050, file: !54, line: 904, type: !6)
!2052 = !DILocalVariable(name: "flags", scope: !2050, file: !54, line: 906, type: !20)
!2053 = !DILocalVariable(name: "qsize", scope: !2050, file: !54, line: 907, type: !93)
!2054 = !DILocation(line: 0, scope: !2035)
!2055 = !DILocation(line: 880, column: 11, scope: !2035)
!2056 = !DILocation(line: 882, column: 24, scope: !2035)
!2057 = !DILocation(line: 884, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2035, file: !54, line: 884, column: 7)
!2059 = !DILocation(line: 884, column: 7, scope: !2035)
!2060 = !DILocation(line: 885, column: 5, scope: !2058)
!2061 = !DILocation(line: 887, column: 7, scope: !2047)
!2062 = !DILocation(line: 887, column: 14, scope: !2047)
!2063 = !DILocation(line: 887, column: 7, scope: !2035)
!2064 = !DILocation(line: 889, column: 31, scope: !2046)
!2065 = !DILocation(line: 0, scope: !2046)
!2066 = !DILocation(line: 892, column: 16, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2046, file: !54, line: 892, column: 11)
!2068 = !DILocation(line: 892, column: 11, scope: !2046)
!2069 = !DILocation(line: 893, column: 9, scope: !2067)
!2070 = !DILocation(line: 895, column: 32, scope: !2046)
!2071 = !DILocation(line: 895, column: 61, scope: !2046)
!2072 = !DILocation(line: 895, column: 66, scope: !2046)
!2073 = !DILocation(line: 895, column: 22, scope: !2046)
!2074 = !DILocation(line: 895, column: 15, scope: !2046)
!2075 = !DILocation(line: 896, column: 11, scope: !2046)
!2076 = !DILocation(line: 897, column: 15, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2046, file: !54, line: 896, column: 11)
!2078 = !{i64 0, i64 8, !1987, i64 8, i64 8, !603}
!2079 = !DILocation(line: 897, column: 9, scope: !2077)
!2080 = !DILocation(line: 898, column: 20, scope: !2046)
!2081 = !DILocation(line: 898, column: 18, scope: !2046)
!2082 = !DILocation(line: 898, column: 15, scope: !2046)
!2083 = !DILocation(line: 898, column: 38, scope: !2046)
!2084 = !DILocation(line: 898, column: 31, scope: !2046)
!2085 = !DILocation(line: 898, column: 48, scope: !2046)
!2086 = !DILocation(line: 0, scope: !1478, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 898, column: 7, scope: !2046)
!2088 = !DILocation(line: 59, column: 10, scope: !1478, inlinedAt: !2087)
!2089 = !DILocation(line: 899, column: 14, scope: !2046)
!2090 = !DILocation(line: 900, column: 5, scope: !2046)
!2091 = !DILocation(line: 903, column: 19, scope: !2050)
!2092 = !DILocation(line: 903, column: 25, scope: !2050)
!2093 = !DILocation(line: 0, scope: !2050)
!2094 = !DILocation(line: 904, column: 23, scope: !2050)
!2095 = !DILocation(line: 906, column: 26, scope: !2050)
!2096 = !DILocation(line: 906, column: 32, scope: !2050)
!2097 = !DILocation(line: 908, column: 55, scope: !2050)
!2098 = !DILocation(line: 909, column: 46, scope: !2050)
!2099 = !DILocation(line: 910, column: 55, scope: !2050)
!2100 = !DILocation(line: 911, column: 55, scope: !2050)
!2101 = !DILocation(line: 907, column: 20, scope: !2050)
!2102 = !DILocation(line: 913, column: 14, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2050, file: !54, line: 913, column: 9)
!2104 = !DILocation(line: 913, column: 9, scope: !2050)
!2105 = !DILocation(line: 915, column: 35, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !54, line: 914, column: 7)
!2107 = !DILocation(line: 915, column: 20, scope: !2106)
!2108 = !DILocation(line: 916, column: 17, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !54, line: 916, column: 13)
!2110 = !DILocation(line: 916, column: 13, scope: !2106)
!2111 = !DILocation(line: 917, column: 11, scope: !2109)
!2112 = !DILocation(line: 0, scope: !1951, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 918, column: 27, scope: !2106)
!2114 = !DILocation(line: 218, column: 10, scope: !1951, inlinedAt: !2113)
!2115 = !DILocation(line: 918, column: 19, scope: !2106)
!2116 = !DILocation(line: 919, column: 69, scope: !2106)
!2117 = !DILocation(line: 921, column: 44, scope: !2106)
!2118 = !DILocation(line: 922, column: 44, scope: !2106)
!2119 = !DILocation(line: 919, column: 9, scope: !2106)
!2120 = !DILocation(line: 923, column: 7, scope: !2106)
!2121 = !DILocation(line: 925, column: 11, scope: !2050)
!2122 = !DILocation(line: 926, column: 5, scope: !2050)
!2123 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !54, file: !54, line: 937, type: !2124, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!6, !20, !17, !93}
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "n", arg: 1, scope: !2123, file: !54, line: 937, type: !20)
!2128 = !DILocalVariable(name: "arg", arg: 2, scope: !2123, file: !54, line: 937, type: !17)
!2129 = !DILocalVariable(name: "argsize", arg: 3, scope: !2123, file: !54, line: 937, type: !93)
!2130 = !DILocation(line: 0, scope: !2123)
!2131 = !DILocation(line: 939, column: 10, scope: !2123)
!2132 = !DILocation(line: 939, column: 3, scope: !2123)
!2133 = distinct !DISubprogram(name: "quotearg", scope: !54, file: !54, line: 943, type: !811, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "arg", arg: 1, scope: !2133, file: !54, line: 943, type: !17)
!2136 = !DILocation(line: 0, scope: !2133)
!2137 = !DILocation(line: 0, scope: !2028, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 945, column: 10, scope: !2133)
!2139 = !DILocation(line: 933, column: 10, scope: !2028, inlinedAt: !2138)
!2140 = !DILocation(line: 945, column: 3, scope: !2133)
!2141 = distinct !DISubprogram(name: "quotearg_mem", scope: !54, file: !54, line: 949, type: !2142, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!6, !17, !93}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !54, line: 949, type: !17)
!2146 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !54, line: 949, type: !93)
!2147 = !DILocation(line: 0, scope: !2141)
!2148 = !DILocation(line: 0, scope: !2123, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 951, column: 10, scope: !2141)
!2150 = !DILocation(line: 939, column: 10, scope: !2123, inlinedAt: !2149)
!2151 = !DILocation(line: 951, column: 3, scope: !2141)
!2152 = distinct !DISubprogram(name: "quotearg_n_style", scope: !54, file: !54, line: 955, type: !2153, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!6, !20, !56, !17}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "n", arg: 1, scope: !2152, file: !54, line: 955, type: !20)
!2157 = !DILocalVariable(name: "s", arg: 2, scope: !2152, file: !54, line: 955, type: !56)
!2158 = !DILocalVariable(name: "arg", arg: 3, scope: !2152, file: !54, line: 955, type: !17)
!2159 = !DILocalVariable(name: "o", scope: !2152, file: !54, line: 957, type: !1084)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 957, column: 3, scope: !2152)
!2162 = !DILocation(line: 957, column: 32, scope: !2152)
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"quoting_options_from_style: argument 0"}
!2165 = distinct !{!2165, !"quoting_options_from_style"}
!2166 = !DILocation(line: 957, column: 36, scope: !2152)
!2167 = !DILocalVariable(name: "style", arg: 1, scope: !2168, file: !54, line: 193, type: !56)
!2168 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !54, file: !54, line: 193, type: !2169, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!105, !56}
!2171 = !{!2167, !2172}
!2172 = !DILocalVariable(name: "o", scope: !2168, file: !54, line: 195, type: !105)
!2173 = !DILocation(line: 0, scope: !2168, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 957, column: 36, scope: !2152)
!2175 = !DILocation(line: 195, column: 26, scope: !2168, inlinedAt: !2174)
!2176 = !DILocation(line: 196, column: 13, scope: !2177, inlinedAt: !2174)
!2177 = distinct !DILexicalBlock(scope: !2168, file: !54, line: 196, column: 7)
!2178 = !DILocation(line: 196, column: 7, scope: !2168, inlinedAt: !2174)
!2179 = !DILocation(line: 197, column: 5, scope: !2177, inlinedAt: !2174)
!2180 = !DILocation(line: 198, column: 5, scope: !2168, inlinedAt: !2174)
!2181 = !DILocation(line: 198, column: 11, scope: !2168, inlinedAt: !2174)
!2182 = !DILocation(line: 958, column: 10, scope: !2152)
!2183 = !DILocation(line: 959, column: 1, scope: !2152)
!2184 = !DILocation(line: 958, column: 3, scope: !2152)
!2185 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !54, file: !54, line: 962, type: !2186, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!6, !20, !56, !17, !93}
!2188 = !{!2189, !2190, !2191, !2192, !2193}
!2189 = !DILocalVariable(name: "n", arg: 1, scope: !2185, file: !54, line: 962, type: !20)
!2190 = !DILocalVariable(name: "s", arg: 2, scope: !2185, file: !54, line: 962, type: !56)
!2191 = !DILocalVariable(name: "arg", arg: 3, scope: !2185, file: !54, line: 963, type: !17)
!2192 = !DILocalVariable(name: "argsize", arg: 4, scope: !2185, file: !54, line: 963, type: !93)
!2193 = !DILocalVariable(name: "o", scope: !2185, file: !54, line: 965, type: !1084)
!2194 = !DILocation(line: 0, scope: !2185)
!2195 = !DILocation(line: 965, column: 3, scope: !2185)
!2196 = !DILocation(line: 965, column: 32, scope: !2185)
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"quoting_options_from_style: argument 0"}
!2199 = distinct !{!2199, !"quoting_options_from_style"}
!2200 = !DILocation(line: 965, column: 36, scope: !2185)
!2201 = !DILocation(line: 0, scope: !2168, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 965, column: 36, scope: !2185)
!2203 = !DILocation(line: 195, column: 26, scope: !2168, inlinedAt: !2202)
!2204 = !DILocation(line: 196, column: 13, scope: !2177, inlinedAt: !2202)
!2205 = !DILocation(line: 196, column: 7, scope: !2168, inlinedAt: !2202)
!2206 = !DILocation(line: 197, column: 5, scope: !2177, inlinedAt: !2202)
!2207 = !DILocation(line: 198, column: 5, scope: !2168, inlinedAt: !2202)
!2208 = !DILocation(line: 198, column: 11, scope: !2168, inlinedAt: !2202)
!2209 = !DILocation(line: 966, column: 10, scope: !2185)
!2210 = !DILocation(line: 967, column: 1, scope: !2185)
!2211 = !DILocation(line: 966, column: 3, scope: !2185)
!2212 = distinct !DISubprogram(name: "quotearg_style", scope: !54, file: !54, line: 970, type: !2213, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!6, !56, !17}
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "s", arg: 1, scope: !2212, file: !54, line: 970, type: !56)
!2217 = !DILocalVariable(name: "arg", arg: 2, scope: !2212, file: !54, line: 970, type: !17)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 0, scope: !2152, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 972, column: 10, scope: !2212)
!2221 = !DILocation(line: 957, column: 3, scope: !2152, inlinedAt: !2220)
!2222 = !DILocation(line: 957, column: 32, scope: !2152, inlinedAt: !2220)
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"quoting_options_from_style: argument 0"}
!2225 = distinct !{!2225, !"quoting_options_from_style"}
!2226 = !DILocation(line: 957, column: 36, scope: !2152, inlinedAt: !2220)
!2227 = !DILocation(line: 0, scope: !2168, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 957, column: 36, scope: !2152, inlinedAt: !2220)
!2229 = !DILocation(line: 195, column: 26, scope: !2168, inlinedAt: !2228)
!2230 = !DILocation(line: 196, column: 13, scope: !2177, inlinedAt: !2228)
!2231 = !DILocation(line: 196, column: 7, scope: !2168, inlinedAt: !2228)
!2232 = !DILocation(line: 197, column: 5, scope: !2177, inlinedAt: !2228)
!2233 = !DILocation(line: 198, column: 5, scope: !2168, inlinedAt: !2228)
!2234 = !DILocation(line: 198, column: 11, scope: !2168, inlinedAt: !2228)
!2235 = !DILocation(line: 958, column: 10, scope: !2152, inlinedAt: !2220)
!2236 = !DILocation(line: 959, column: 1, scope: !2152, inlinedAt: !2220)
!2237 = !DILocation(line: 972, column: 3, scope: !2212)
!2238 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !54, file: !54, line: 976, type: !2239, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!6, !56, !17, !93}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "s", arg: 1, scope: !2238, file: !54, line: 976, type: !56)
!2243 = !DILocalVariable(name: "arg", arg: 2, scope: !2238, file: !54, line: 976, type: !17)
!2244 = !DILocalVariable(name: "argsize", arg: 3, scope: !2238, file: !54, line: 976, type: !93)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 0, scope: !2185, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 978, column: 10, scope: !2238)
!2248 = !DILocation(line: 965, column: 3, scope: !2185, inlinedAt: !2247)
!2249 = !DILocation(line: 965, column: 32, scope: !2185, inlinedAt: !2247)
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"quoting_options_from_style: argument 0"}
!2252 = distinct !{!2252, !"quoting_options_from_style"}
!2253 = !DILocation(line: 965, column: 36, scope: !2185, inlinedAt: !2247)
!2254 = !DILocation(line: 0, scope: !2168, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 965, column: 36, scope: !2185, inlinedAt: !2247)
!2256 = !DILocation(line: 195, column: 26, scope: !2168, inlinedAt: !2255)
!2257 = !DILocation(line: 196, column: 13, scope: !2177, inlinedAt: !2255)
!2258 = !DILocation(line: 196, column: 7, scope: !2168, inlinedAt: !2255)
!2259 = !DILocation(line: 197, column: 5, scope: !2177, inlinedAt: !2255)
!2260 = !DILocation(line: 198, column: 5, scope: !2168, inlinedAt: !2255)
!2261 = !DILocation(line: 198, column: 11, scope: !2168, inlinedAt: !2255)
!2262 = !DILocation(line: 966, column: 10, scope: !2185, inlinedAt: !2247)
!2263 = !DILocation(line: 967, column: 1, scope: !2185, inlinedAt: !2247)
!2264 = !DILocation(line: 978, column: 3, scope: !2238)
!2265 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !54, file: !54, line: 982, type: !2266, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!6, !17, !93, !7}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "arg", arg: 1, scope: !2265, file: !54, line: 982, type: !17)
!2270 = !DILocalVariable(name: "argsize", arg: 2, scope: !2265, file: !54, line: 982, type: !93)
!2271 = !DILocalVariable(name: "ch", arg: 3, scope: !2265, file: !54, line: 982, type: !7)
!2272 = !DILocalVariable(name: "options", scope: !2265, file: !54, line: 984, type: !105)
!2273 = !DILocation(line: 0, scope: !2265)
!2274 = !DILocation(line: 984, column: 3, scope: !2265)
!2275 = !DILocation(line: 984, column: 26, scope: !2265)
!2276 = !DILocation(line: 985, column: 13, scope: !2265)
!2277 = !{i64 0, i64 4, !843, i64 4, i64 4, !768, i64 8, i64 32, !843, i64 40, i64 8, !603, i64 48, i64 8, !603}
!2278 = !DILocation(line: 0, scope: !1104, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 986, column: 3, scope: !2265)
!2280 = !DILocation(line: 156, column: 62, scope: !1104, inlinedAt: !2279)
!2281 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2279)
!2282 = !DILocation(line: 157, column: 15, scope: !1104, inlinedAt: !2279)
!2283 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2279)
!2284 = !DILocation(line: 158, column: 15, scope: !1104, inlinedAt: !2279)
!2285 = !DILocation(line: 158, column: 25, scope: !1104, inlinedAt: !2279)
!2286 = !DILocation(line: 159, column: 18, scope: !1104, inlinedAt: !2279)
!2287 = !DILocation(line: 159, column: 23, scope: !1104, inlinedAt: !2279)
!2288 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2279)
!2289 = !DILocation(line: 987, column: 10, scope: !2265)
!2290 = !DILocation(line: 988, column: 1, scope: !2265)
!2291 = !DILocation(line: 987, column: 3, scope: !2265)
!2292 = distinct !DISubprogram(name: "quotearg_char", scope: !54, file: !54, line: 991, type: !2293, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!6, !17, !7}
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2292, file: !54, line: 991, type: !17)
!2297 = !DILocalVariable(name: "ch", arg: 2, scope: !2292, file: !54, line: 991, type: !7)
!2298 = !DILocation(line: 0, scope: !2292)
!2299 = !DILocation(line: 0, scope: !2265, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 993, column: 10, scope: !2292)
!2301 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2300)
!2302 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2300)
!2303 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2300)
!2304 = !DILocation(line: 0, scope: !1104, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2300)
!2306 = !DILocation(line: 156, column: 62, scope: !1104, inlinedAt: !2305)
!2307 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2305)
!2308 = !DILocation(line: 157, column: 15, scope: !1104, inlinedAt: !2305)
!2309 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2305)
!2310 = !DILocation(line: 158, column: 15, scope: !1104, inlinedAt: !2305)
!2311 = !DILocation(line: 158, column: 25, scope: !1104, inlinedAt: !2305)
!2312 = !DILocation(line: 159, column: 18, scope: !1104, inlinedAt: !2305)
!2313 = !DILocation(line: 159, column: 23, scope: !1104, inlinedAt: !2305)
!2314 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2305)
!2315 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2300)
!2316 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2300)
!2317 = !DILocation(line: 993, column: 3, scope: !2292)
!2318 = distinct !DISubprogram(name: "quotearg_colon", scope: !54, file: !54, line: 997, type: !811, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "arg", arg: 1, scope: !2318, file: !54, line: 997, type: !17)
!2321 = !DILocation(line: 0, scope: !2318)
!2322 = !DILocation(line: 0, scope: !2292, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 999, column: 10, scope: !2318)
!2324 = !DILocation(line: 0, scope: !2265, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 993, column: 10, scope: !2292, inlinedAt: !2323)
!2326 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2325)
!2327 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2325)
!2328 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2325)
!2329 = !DILocation(line: 0, scope: !1104, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2325)
!2331 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2330)
!2332 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2330)
!2333 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2330)
!2334 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2325)
!2335 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2325)
!2336 = !DILocation(line: 999, column: 3, scope: !2318)
!2337 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !54, file: !54, line: 1003, type: !2142, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2338)
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2337, file: !54, line: 1003, type: !17)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2337, file: !54, line: 1003, type: !93)
!2341 = !DILocation(line: 0, scope: !2337)
!2342 = !DILocation(line: 0, scope: !2265, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 1005, column: 10, scope: !2337)
!2344 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2343)
!2345 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2343)
!2346 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2343)
!2347 = !DILocation(line: 0, scope: !1104, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2343)
!2349 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2348)
!2350 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2348)
!2351 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2348)
!2352 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2343)
!2353 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2343)
!2354 = !DILocation(line: 1005, column: 3, scope: !2337)
!2355 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !54, file: !54, line: 1009, type: !2153, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !54, line: 1009, type: !20)
!2358 = !DILocalVariable(name: "s", arg: 2, scope: !2355, file: !54, line: 1009, type: !56)
!2359 = !DILocalVariable(name: "arg", arg: 3, scope: !2355, file: !54, line: 1009, type: !17)
!2360 = !DILocalVariable(name: "options", scope: !2355, file: !54, line: 1011, type: !105)
!2361 = !DILocation(line: 195, column: 26, scope: !2168, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1012, column: 13, scope: !2355)
!2363 = !DILocation(line: 0, scope: !2355)
!2364 = !DILocation(line: 1011, column: 3, scope: !2355)
!2365 = !DILocation(line: 1011, column: 26, scope: !2355)
!2366 = !DILocation(line: 1012, column: 13, scope: !2355)
!2367 = !{!2368}
!2368 = distinct !{!2368, !2369, !"quoting_options_from_style: argument 0"}
!2369 = distinct !{!2369, !"quoting_options_from_style"}
!2370 = !DILocation(line: 0, scope: !2168, inlinedAt: !2362)
!2371 = !DILocation(line: 196, column: 13, scope: !2177, inlinedAt: !2362)
!2372 = !DILocation(line: 196, column: 7, scope: !2168, inlinedAt: !2362)
!2373 = !DILocation(line: 197, column: 5, scope: !2177, inlinedAt: !2362)
!2374 = !{i64 0, i64 4, !768, i64 4, i64 32, !843, i64 36, i64 8, !603, i64 44, i64 8, !603}
!2375 = !DILocation(line: 0, scope: !1104, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 1013, column: 3, scope: !2355)
!2377 = !DILocation(line: 156, column: 57, scope: !1104, inlinedAt: !2376)
!2378 = !DILocation(line: 158, column: 12, scope: !1104, inlinedAt: !2376)
!2379 = !DILocation(line: 159, column: 6, scope: !1104, inlinedAt: !2376)
!2380 = !DILocation(line: 1014, column: 10, scope: !2355)
!2381 = !DILocation(line: 1015, column: 1, scope: !2355)
!2382 = !DILocation(line: 1014, column: 3, scope: !2355)
!2383 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !54, file: !54, line: 1018, type: !2384, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!6, !20, !17, !17, !17}
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DILocalVariable(name: "n", arg: 1, scope: !2383, file: !54, line: 1018, type: !20)
!2388 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2383, file: !54, line: 1018, type: !17)
!2389 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2383, file: !54, line: 1019, type: !17)
!2390 = !DILocalVariable(name: "arg", arg: 4, scope: !2383, file: !54, line: 1019, type: !17)
!2391 = !DILocation(line: 0, scope: !2383)
!2392 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !54, line: 1026, type: !20)
!2393 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !54, file: !54, line: 1026, type: !2394, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!6, !20, !17, !17, !17, !93}
!2396 = !{!2392, !2397, !2398, !2399, !2400, !2401}
!2397 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2393, file: !54, line: 1026, type: !17)
!2398 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2393, file: !54, line: 1027, type: !17)
!2399 = !DILocalVariable(name: "arg", arg: 4, scope: !2393, file: !54, line: 1028, type: !17)
!2400 = !DILocalVariable(name: "argsize", arg: 5, scope: !2393, file: !54, line: 1028, type: !93)
!2401 = !DILocalVariable(name: "o", scope: !2393, file: !54, line: 1030, type: !105)
!2402 = !DILocation(line: 0, scope: !2393, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 1021, column: 10, scope: !2383)
!2404 = !DILocation(line: 1030, column: 3, scope: !2393, inlinedAt: !2403)
!2405 = !DILocation(line: 1030, column: 26, scope: !2393, inlinedAt: !2403)
!2406 = !DILocation(line: 1030, column: 30, scope: !2393, inlinedAt: !2403)
!2407 = !DILocation(line: 0, scope: !1144, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1031, column: 3, scope: !2393, inlinedAt: !2403)
!2409 = !DILocation(line: 184, column: 6, scope: !1144, inlinedAt: !2408)
!2410 = !DILocation(line: 184, column: 12, scope: !1144, inlinedAt: !2408)
!2411 = !DILocation(line: 185, column: 8, scope: !1158, inlinedAt: !2408)
!2412 = !DILocation(line: 185, column: 19, scope: !1158, inlinedAt: !2408)
!2413 = !DILocation(line: 186, column: 5, scope: !1158, inlinedAt: !2408)
!2414 = !DILocation(line: 187, column: 6, scope: !1144, inlinedAt: !2408)
!2415 = !DILocation(line: 187, column: 17, scope: !1144, inlinedAt: !2408)
!2416 = !DILocation(line: 188, column: 6, scope: !1144, inlinedAt: !2408)
!2417 = !DILocation(line: 188, column: 18, scope: !1144, inlinedAt: !2408)
!2418 = !DILocation(line: 1032, column: 10, scope: !2393, inlinedAt: !2403)
!2419 = !DILocation(line: 1033, column: 1, scope: !2393, inlinedAt: !2403)
!2420 = !DILocation(line: 1021, column: 3, scope: !2383)
!2421 = !DILocation(line: 0, scope: !2393)
!2422 = !DILocation(line: 1030, column: 3, scope: !2393)
!2423 = !DILocation(line: 1030, column: 26, scope: !2393)
!2424 = !DILocation(line: 1030, column: 30, scope: !2393)
!2425 = !DILocation(line: 0, scope: !1144, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1031, column: 3, scope: !2393)
!2427 = !DILocation(line: 184, column: 6, scope: !1144, inlinedAt: !2426)
!2428 = !DILocation(line: 184, column: 12, scope: !1144, inlinedAt: !2426)
!2429 = !DILocation(line: 185, column: 8, scope: !1158, inlinedAt: !2426)
!2430 = !DILocation(line: 185, column: 19, scope: !1158, inlinedAt: !2426)
!2431 = !DILocation(line: 186, column: 5, scope: !1158, inlinedAt: !2426)
!2432 = !DILocation(line: 187, column: 6, scope: !1144, inlinedAt: !2426)
!2433 = !DILocation(line: 187, column: 17, scope: !1144, inlinedAt: !2426)
!2434 = !DILocation(line: 188, column: 6, scope: !1144, inlinedAt: !2426)
!2435 = !DILocation(line: 188, column: 18, scope: !1144, inlinedAt: !2426)
!2436 = !DILocation(line: 1032, column: 10, scope: !2393)
!2437 = !DILocation(line: 1033, column: 1, scope: !2393)
!2438 = !DILocation(line: 1032, column: 3, scope: !2393)
!2439 = distinct !DISubprogram(name: "quotearg_custom", scope: !54, file: !54, line: 1036, type: !2440, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!6, !17, !17, !17}
!2442 = !{!2443, !2444, !2445}
!2443 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2439, file: !54, line: 1036, type: !17)
!2444 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2439, file: !54, line: 1036, type: !17)
!2445 = !DILocalVariable(name: "arg", arg: 3, scope: !2439, file: !54, line: 1037, type: !17)
!2446 = !DILocation(line: 0, scope: !2439)
!2447 = !DILocation(line: 0, scope: !2383, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 1039, column: 10, scope: !2439)
!2449 = !DILocation(line: 0, scope: !2393, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 1021, column: 10, scope: !2383, inlinedAt: !2448)
!2451 = !DILocation(line: 1030, column: 3, scope: !2393, inlinedAt: !2450)
!2452 = !DILocation(line: 1030, column: 26, scope: !2393, inlinedAt: !2450)
!2453 = !DILocation(line: 1030, column: 30, scope: !2393, inlinedAt: !2450)
!2454 = !DILocation(line: 0, scope: !1144, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 1031, column: 3, scope: !2393, inlinedAt: !2450)
!2456 = !DILocation(line: 184, column: 6, scope: !1144, inlinedAt: !2455)
!2457 = !DILocation(line: 184, column: 12, scope: !1144, inlinedAt: !2455)
!2458 = !DILocation(line: 185, column: 8, scope: !1158, inlinedAt: !2455)
!2459 = !DILocation(line: 185, column: 19, scope: !1158, inlinedAt: !2455)
!2460 = !DILocation(line: 186, column: 5, scope: !1158, inlinedAt: !2455)
!2461 = !DILocation(line: 187, column: 6, scope: !1144, inlinedAt: !2455)
!2462 = !DILocation(line: 187, column: 17, scope: !1144, inlinedAt: !2455)
!2463 = !DILocation(line: 188, column: 6, scope: !1144, inlinedAt: !2455)
!2464 = !DILocation(line: 188, column: 18, scope: !1144, inlinedAt: !2455)
!2465 = !DILocation(line: 1032, column: 10, scope: !2393, inlinedAt: !2450)
!2466 = !DILocation(line: 1033, column: 1, scope: !2393, inlinedAt: !2450)
!2467 = !DILocation(line: 1039, column: 3, scope: !2439)
!2468 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !54, file: !54, line: 1043, type: !2469, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!6, !17, !17, !17, !93}
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2468, file: !54, line: 1043, type: !17)
!2473 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2468, file: !54, line: 1043, type: !17)
!2474 = !DILocalVariable(name: "arg", arg: 3, scope: !2468, file: !54, line: 1044, type: !17)
!2475 = !DILocalVariable(name: "argsize", arg: 4, scope: !2468, file: !54, line: 1044, type: !93)
!2476 = !DILocation(line: 0, scope: !2468)
!2477 = !DILocation(line: 0, scope: !2393, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1046, column: 10, scope: !2468)
!2479 = !DILocation(line: 1030, column: 3, scope: !2393, inlinedAt: !2478)
!2480 = !DILocation(line: 1030, column: 26, scope: !2393, inlinedAt: !2478)
!2481 = !DILocation(line: 1030, column: 30, scope: !2393, inlinedAt: !2478)
!2482 = !DILocation(line: 0, scope: !1144, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 1031, column: 3, scope: !2393, inlinedAt: !2478)
!2484 = !DILocation(line: 184, column: 6, scope: !1144, inlinedAt: !2483)
!2485 = !DILocation(line: 184, column: 12, scope: !1144, inlinedAt: !2483)
!2486 = !DILocation(line: 185, column: 8, scope: !1158, inlinedAt: !2483)
!2487 = !DILocation(line: 185, column: 19, scope: !1158, inlinedAt: !2483)
!2488 = !DILocation(line: 186, column: 5, scope: !1158, inlinedAt: !2483)
!2489 = !DILocation(line: 187, column: 6, scope: !1144, inlinedAt: !2483)
!2490 = !DILocation(line: 187, column: 17, scope: !1144, inlinedAt: !2483)
!2491 = !DILocation(line: 188, column: 6, scope: !1144, inlinedAt: !2483)
!2492 = !DILocation(line: 188, column: 18, scope: !1144, inlinedAt: !2483)
!2493 = !DILocation(line: 1032, column: 10, scope: !2393, inlinedAt: !2478)
!2494 = !DILocation(line: 1033, column: 1, scope: !2393, inlinedAt: !2478)
!2495 = !DILocation(line: 1046, column: 3, scope: !2468)
!2496 = distinct !DISubprogram(name: "quote_n_mem", scope: !54, file: !54, line: 1061, type: !2497, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!17, !20, !17, !93}
!2499 = !{!2500, !2501, !2502}
!2500 = !DILocalVariable(name: "n", arg: 1, scope: !2496, file: !54, line: 1061, type: !20)
!2501 = !DILocalVariable(name: "arg", arg: 2, scope: !2496, file: !54, line: 1061, type: !17)
!2502 = !DILocalVariable(name: "argsize", arg: 3, scope: !2496, file: !54, line: 1061, type: !93)
!2503 = !DILocation(line: 0, scope: !2496)
!2504 = !DILocation(line: 1063, column: 10, scope: !2496)
!2505 = !DILocation(line: 1063, column: 3, scope: !2496)
!2506 = distinct !DISubprogram(name: "quote_mem", scope: !54, file: !54, line: 1067, type: !2507, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!17, !17, !93}
!2509 = !{!2510, !2511}
!2510 = !DILocalVariable(name: "arg", arg: 1, scope: !2506, file: !54, line: 1067, type: !17)
!2511 = !DILocalVariable(name: "argsize", arg: 2, scope: !2506, file: !54, line: 1067, type: !93)
!2512 = !DILocation(line: 0, scope: !2506)
!2513 = !DILocation(line: 0, scope: !2496, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 1069, column: 10, scope: !2506)
!2515 = !DILocation(line: 1063, column: 10, scope: !2496, inlinedAt: !2514)
!2516 = !DILocation(line: 1069, column: 3, scope: !2506)
!2517 = distinct !DISubprogram(name: "quote_n", scope: !54, file: !54, line: 1073, type: !2518, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!17, !20, !17}
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !54, line: 1073, type: !20)
!2522 = !DILocalVariable(name: "arg", arg: 2, scope: !2517, file: !54, line: 1073, type: !17)
!2523 = !DILocation(line: 0, scope: !2517)
!2524 = !DILocation(line: 0, scope: !2496, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 1075, column: 10, scope: !2517)
!2526 = !DILocation(line: 1063, column: 10, scope: !2496, inlinedAt: !2525)
!2527 = !DILocation(line: 1075, column: 3, scope: !2517)
!2528 = distinct !DISubprogram(name: "quote", scope: !54, file: !54, line: 1079, type: !2529, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!17, !17}
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !54, line: 1079, type: !17)
!2533 = !DILocation(line: 0, scope: !2528)
!2534 = !DILocation(line: 0, scope: !2517, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 1081, column: 10, scope: !2528)
!2536 = !DILocation(line: 0, scope: !2496, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1075, column: 10, scope: !2517, inlinedAt: !2535)
!2538 = !DILocation(line: 1063, column: 10, scope: !2496, inlinedAt: !2537)
!2539 = !DILocation(line: 1081, column: 3, scope: !2528)
!2540 = distinct !DISubprogram(name: "version_etc_arn", scope: !153, file: !153, line: 61, type: !2541, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2579)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2543, !17, !17, !17, !2578, !93}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2545, line: 7, baseType: !2546)
!2545 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2546, file: !682, line: 51, baseType: !20, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2546, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2546, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2546, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2546, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2546, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2546, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2546, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2546, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2546, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2546, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2546, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2546, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2546, file: !682, line: 70, baseType: !2562, size: 64, offset: 832)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2546, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2546, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2546, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2546, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2546, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2546, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2546, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2546, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2546, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2546, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2546, file: !682, line: 93, baseType: !2562, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2546, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2546, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2546, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2546, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585}
!2580 = !DILocalVariable(name: "stream", arg: 1, scope: !2540, file: !153, line: 61, type: !2543)
!2581 = !DILocalVariable(name: "command_name", arg: 2, scope: !2540, file: !153, line: 62, type: !17)
!2582 = !DILocalVariable(name: "package", arg: 3, scope: !2540, file: !153, line: 62, type: !17)
!2583 = !DILocalVariable(name: "version", arg: 4, scope: !2540, file: !153, line: 63, type: !17)
!2584 = !DILocalVariable(name: "authors", arg: 5, scope: !2540, file: !153, line: 64, type: !2578)
!2585 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2540, file: !153, line: 64, type: !93)
!2586 = !DILocation(line: 0, scope: !2540)
!2587 = !DILocation(line: 66, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2540, file: !153, line: 66, column: 7)
!2589 = !DILocation(line: 66, column: 7, scope: !2540)
!2590 = !DILocation(line: 67, column: 5, scope: !2588)
!2591 = !DILocation(line: 69, column: 5, scope: !2588)
!2592 = !DILocation(line: 83, column: 3, scope: !2540)
!2593 = !DILocation(line: 85, column: 3, scope: !2540)
!2594 = !DILocation(line: 88, column: 3, scope: !2540)
!2595 = !DILocation(line: 95, column: 3, scope: !2540)
!2596 = !DILocation(line: 97, column: 3, scope: !2540)
!2597 = !DILocation(line: 105, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2540, file: !153, line: 98, column: 5)
!2599 = !DILocation(line: 106, column: 7, scope: !2598)
!2600 = !DILocation(line: 109, column: 7, scope: !2598)
!2601 = !DILocation(line: 110, column: 7, scope: !2598)
!2602 = !DILocation(line: 113, column: 7, scope: !2598)
!2603 = !DILocation(line: 115, column: 7, scope: !2598)
!2604 = !DILocation(line: 120, column: 7, scope: !2598)
!2605 = !DILocation(line: 122, column: 7, scope: !2598)
!2606 = !DILocation(line: 127, column: 7, scope: !2598)
!2607 = !DILocation(line: 129, column: 7, scope: !2598)
!2608 = !DILocation(line: 134, column: 7, scope: !2598)
!2609 = !DILocation(line: 137, column: 7, scope: !2598)
!2610 = !DILocation(line: 142, column: 7, scope: !2598)
!2611 = !DILocation(line: 145, column: 7, scope: !2598)
!2612 = !DILocation(line: 150, column: 7, scope: !2598)
!2613 = !DILocation(line: 154, column: 7, scope: !2598)
!2614 = !DILocation(line: 159, column: 7, scope: !2598)
!2615 = !DILocation(line: 163, column: 7, scope: !2598)
!2616 = !DILocation(line: 170, column: 7, scope: !2598)
!2617 = !DILocation(line: 174, column: 7, scope: !2598)
!2618 = !DILocation(line: 176, column: 1, scope: !2540)
!2619 = distinct !DISubprogram(name: "version_etc_ar", scope: !153, file: !153, line: 183, type: !2620, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2543, !17, !17, !17, !2578}
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628}
!2623 = !DILocalVariable(name: "stream", arg: 1, scope: !2619, file: !153, line: 183, type: !2543)
!2624 = !DILocalVariable(name: "command_name", arg: 2, scope: !2619, file: !153, line: 184, type: !17)
!2625 = !DILocalVariable(name: "package", arg: 3, scope: !2619, file: !153, line: 184, type: !17)
!2626 = !DILocalVariable(name: "version", arg: 4, scope: !2619, file: !153, line: 185, type: !17)
!2627 = !DILocalVariable(name: "authors", arg: 5, scope: !2619, file: !153, line: 185, type: !2578)
!2628 = !DILocalVariable(name: "n_authors", scope: !2619, file: !153, line: 187, type: !93)
!2629 = !DILocation(line: 0, scope: !2619)
!2630 = !DILocation(line: 189, column: 8, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2619, file: !153, line: 189, column: 3)
!2632 = !DILocation(line: 0, scope: !2631)
!2633 = !DILocation(line: 189, column: 23, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !153, line: 189, column: 3)
!2635 = !DILocation(line: 189, column: 3, scope: !2631)
!2636 = !DILocation(line: 189, column: 52, scope: !2634)
!2637 = distinct !{!2637, !2635, !2638, !652}
!2638 = !DILocation(line: 190, column: 5, scope: !2631)
!2639 = !DILocation(line: 191, column: 3, scope: !2619)
!2640 = !DILocation(line: 192, column: 1, scope: !2619)
!2641 = distinct !DISubprogram(name: "version_etc_va", scope: !153, file: !153, line: 199, type: !2642, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2651)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{null, !2543, !17, !17, !17, !2644}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2650}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2645, file: !153, line: 192, baseType: !58, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2645, file: !153, line: 192, baseType: !58, size: 32, offset: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2645, file: !153, line: 192, baseType: !8, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2645, file: !153, line: 192, baseType: !8, size: 64, offset: 128)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2652 = !DILocalVariable(name: "stream", arg: 1, scope: !2641, file: !153, line: 199, type: !2543)
!2653 = !DILocalVariable(name: "command_name", arg: 2, scope: !2641, file: !153, line: 200, type: !17)
!2654 = !DILocalVariable(name: "package", arg: 3, scope: !2641, file: !153, line: 200, type: !17)
!2655 = !DILocalVariable(name: "version", arg: 4, scope: !2641, file: !153, line: 201, type: !17)
!2656 = !DILocalVariable(name: "authors", arg: 5, scope: !2641, file: !153, line: 201, type: !2644)
!2657 = !DILocalVariable(name: "n_authors", scope: !2641, file: !153, line: 203, type: !93)
!2658 = !DILocalVariable(name: "authtab", scope: !2641, file: !153, line: 204, type: !2659)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !101)
!2660 = !DILocation(line: 0, scope: !2641)
!2661 = !DILocation(line: 204, column: 3, scope: !2641)
!2662 = !DILocation(line: 204, column: 15, scope: !2641)
!2663 = !DILocation(line: 208, column: 35, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !153, line: 206, column: 3)
!2665 = distinct !DILexicalBlock(scope: !2641, file: !153, line: 206, column: 3)
!2666 = !DILocation(line: 208, column: 14, scope: !2664)
!2667 = !DILocation(line: 208, column: 33, scope: !2664)
!2668 = !DILocation(line: 208, column: 67, scope: !2664)
!2669 = !DILocation(line: 206, column: 3, scope: !2665)
!2670 = !DILocation(line: 0, scope: !2665)
!2671 = !DILocation(line: 211, column: 3, scope: !2641)
!2672 = !DILocation(line: 213, column: 1, scope: !2641)
!2673 = distinct !DISubprogram(name: "version_etc", scope: !153, file: !153, line: 230, type: !2674, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2543, !17, !17, !17, null}
!2676 = !{!2677, !2678, !2679, !2680, !2681}
!2677 = !DILocalVariable(name: "stream", arg: 1, scope: !2673, file: !153, line: 230, type: !2543)
!2678 = !DILocalVariable(name: "command_name", arg: 2, scope: !2673, file: !153, line: 231, type: !17)
!2679 = !DILocalVariable(name: "package", arg: 3, scope: !2673, file: !153, line: 231, type: !17)
!2680 = !DILocalVariable(name: "version", arg: 4, scope: !2673, file: !153, line: 232, type: !17)
!2681 = !DILocalVariable(name: "authors", scope: !2673, file: !153, line: 234, type: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !677, line: 52, baseType: !2683)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2684, line: 32, baseType: !2685)
!2684 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !153, baseType: !2686)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 192, elements: !711)
!2687 = !DILocation(line: 0, scope: !2673)
!2688 = !DILocation(line: 234, column: 3, scope: !2673)
!2689 = !DILocation(line: 234, column: 11, scope: !2673)
!2690 = !DILocation(line: 236, column: 3, scope: !2673)
!2691 = !DILocation(line: 237, column: 3, scope: !2673)
!2692 = !DILocation(line: 238, column: 3, scope: !2673)
!2693 = !DILocation(line: 239, column: 1, scope: !2673)
!2694 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !153, file: !153, line: 242, type: !613, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !4)
!2695 = !DILocation(line: 244, column: 3, scope: !2694)
!2696 = !DILocation(line: 249, column: 3, scope: !2694)
!2697 = !DILocation(line: 255, column: 3, scope: !2694)
!2698 = !DILocation(line: 260, column: 3, scope: !2694)
!2699 = !DILocation(line: 262, column: 1, scope: !2694)
!2700 = distinct !DISubprogram(name: "xnmalloc", scope: !163, file: !163, line: 99, type: !2701, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!8, !93, !93}
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !163, line: 99, type: !93)
!2705 = !DILocalVariable(name: "s", arg: 2, scope: !2700, file: !163, line: 99, type: !93)
!2706 = !DILocation(line: 0, scope: !2700)
!2707 = !DILocation(line: 101, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2700, file: !163, line: 101, column: 7)
!2709 = !DILocation(line: 101, column: 7, scope: !2700)
!2710 = !DILocation(line: 102, column: 5, scope: !2708)
!2711 = !DILocation(line: 103, column: 21, scope: !2700)
!2712 = !DILocalVariable(name: "n", arg: 1, scope: !2713, file: !160, line: 39, type: !93)
!2713 = distinct !DISubprogram(name: "xmalloc", scope: !160, file: !160, line: 39, type: !2714, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!8, !93}
!2716 = !{!2712, !2717}
!2717 = !DILocalVariable(name: "p", scope: !2713, file: !160, line: 41, type: !8)
!2718 = !DILocation(line: 0, scope: !2713, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 103, column: 10, scope: !2700)
!2720 = !DILocation(line: 41, column: 13, scope: !2713, inlinedAt: !2719)
!2721 = !DILocation(line: 42, column: 8, scope: !2722, inlinedAt: !2719)
!2722 = distinct !DILexicalBlock(scope: !2713, file: !160, line: 42, column: 7)
!2723 = !DILocation(line: 42, column: 10, scope: !2722, inlinedAt: !2719)
!2724 = !DILocation(line: 43, column: 5, scope: !2722, inlinedAt: !2719)
!2725 = !DILocation(line: 103, column: 3, scope: !2700)
!2726 = !DILocation(line: 0, scope: !2713)
!2727 = !DILocation(line: 41, column: 13, scope: !2713)
!2728 = !DILocation(line: 42, column: 8, scope: !2722)
!2729 = !DILocation(line: 42, column: 10, scope: !2722)
!2730 = !DILocation(line: 43, column: 5, scope: !2722)
!2731 = !DILocation(line: 44, column: 3, scope: !2713)
!2732 = distinct !DISubprogram(name: "xnrealloc", scope: !163, file: !163, line: 112, type: !2733, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!8, !8, !93, !93}
!2735 = !{!2736, !2737, !2738}
!2736 = !DILocalVariable(name: "p", arg: 1, scope: !2732, file: !163, line: 112, type: !8)
!2737 = !DILocalVariable(name: "n", arg: 2, scope: !2732, file: !163, line: 112, type: !93)
!2738 = !DILocalVariable(name: "s", arg: 3, scope: !2732, file: !163, line: 112, type: !93)
!2739 = !DILocation(line: 0, scope: !2732)
!2740 = !DILocation(line: 114, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2732, file: !163, line: 114, column: 7)
!2742 = !DILocation(line: 114, column: 7, scope: !2732)
!2743 = !DILocation(line: 115, column: 5, scope: !2741)
!2744 = !DILocation(line: 116, column: 25, scope: !2732)
!2745 = !DILocalVariable(name: "p", arg: 1, scope: !2746, file: !160, line: 51, type: !8)
!2746 = distinct !DISubprogram(name: "xrealloc", scope: !160, file: !160, line: 51, type: !2747, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!8, !8, !93}
!2749 = !{!2745, !2750}
!2750 = !DILocalVariable(name: "n", arg: 2, scope: !2746, file: !160, line: 51, type: !93)
!2751 = !DILocation(line: 0, scope: !2746, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 116, column: 10, scope: !2732)
!2753 = !DILocation(line: 53, column: 8, scope: !2754, inlinedAt: !2752)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !160, line: 53, column: 7)
!2755 = !DILocation(line: 53, column: 10, scope: !2754, inlinedAt: !2752)
!2756 = !DILocation(line: 57, column: 7, scope: !2757, inlinedAt: !2752)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !160, line: 54, column: 5)
!2758 = !DILocation(line: 58, column: 7, scope: !2757, inlinedAt: !2752)
!2759 = !DILocation(line: 61, column: 7, scope: !2746, inlinedAt: !2752)
!2760 = !DILocation(line: 62, column: 8, scope: !2761, inlinedAt: !2752)
!2761 = distinct !DILexicalBlock(scope: !2746, file: !160, line: 62, column: 7)
!2762 = !DILocation(line: 62, column: 10, scope: !2761, inlinedAt: !2752)
!2763 = !DILocation(line: 63, column: 5, scope: !2761, inlinedAt: !2752)
!2764 = !DILocation(line: 116, column: 3, scope: !2732)
!2765 = !DILocation(line: 0, scope: !2746)
!2766 = !DILocation(line: 53, column: 8, scope: !2754)
!2767 = !DILocation(line: 53, column: 10, scope: !2754)
!2768 = !DILocation(line: 57, column: 7, scope: !2757)
!2769 = !DILocation(line: 58, column: 7, scope: !2757)
!2770 = !DILocation(line: 61, column: 7, scope: !2746)
!2771 = !DILocation(line: 62, column: 8, scope: !2761)
!2772 = !DILocation(line: 62, column: 10, scope: !2761)
!2773 = !DILocation(line: 63, column: 5, scope: !2761)
!2774 = !DILocation(line: 65, column: 1, scope: !2746)
!2775 = !DILocation(line: 0, scope: !164)
!2776 = !DILocation(line: 176, column: 14, scope: !164)
!2777 = !DILocation(line: 178, column: 9, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !164, file: !163, line: 178, column: 7)
!2779 = !DILocation(line: 178, column: 7, scope: !164)
!2780 = !DILocation(line: 180, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !163, line: 180, column: 11)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !163, line: 179, column: 5)
!2783 = !DILocation(line: 180, column: 11, scope: !2782)
!2784 = !DILocation(line: 188, column: 30, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !163, line: 181, column: 9)
!2786 = !DILocation(line: 189, column: 16, scope: !2785)
!2787 = !DILocation(line: 189, column: 13, scope: !2785)
!2788 = !DILocation(line: 190, column: 9, scope: !2785)
!2789 = !DILocation(line: 191, column: 11, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !163, line: 191, column: 11)
!2791 = !DILocation(line: 191, column: 11, scope: !2782)
!2792 = !DILocation(line: 206, column: 7, scope: !164)
!2793 = !DILocation(line: 207, column: 25, scope: !164)
!2794 = !DILocation(line: 0, scope: !2746, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 207, column: 10, scope: !164)
!2796 = !DILocation(line: 53, column: 10, scope: !2754, inlinedAt: !2795)
!2797 = !DILocation(line: 192, column: 9, scope: !2790)
!2798 = !DILocation(line: 200, column: 69, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !163, line: 200, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2778, file: !163, line: 195, column: 5)
!2801 = !DILocation(line: 201, column: 11, scope: !2799)
!2802 = !DILocation(line: 200, column: 11, scope: !2800)
!2803 = !DILocation(line: 202, column: 9, scope: !2799)
!2804 = !DILocation(line: 203, column: 14, scope: !2800)
!2805 = !DILocation(line: 203, column: 18, scope: !2800)
!2806 = !DILocation(line: 203, column: 9, scope: !2800)
!2807 = !DILocation(line: 53, column: 8, scope: !2754, inlinedAt: !2795)
!2808 = !DILocation(line: 57, column: 7, scope: !2757, inlinedAt: !2795)
!2809 = !DILocation(line: 58, column: 7, scope: !2757, inlinedAt: !2795)
!2810 = !DILocation(line: 61, column: 7, scope: !2746, inlinedAt: !2795)
!2811 = !DILocation(line: 62, column: 8, scope: !2761, inlinedAt: !2795)
!2812 = !DILocation(line: 62, column: 10, scope: !2761, inlinedAt: !2795)
!2813 = !DILocation(line: 63, column: 5, scope: !2761, inlinedAt: !2795)
!2814 = !DILocation(line: 207, column: 3, scope: !164)
!2815 = distinct !DISubprogram(name: "xcharalloc", scope: !163, file: !163, line: 216, type: !1952, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2816)
!2816 = !{!2817}
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !163, line: 216, type: !93)
!2818 = !DILocation(line: 0, scope: !2815)
!2819 = !DILocation(line: 0, scope: !2713, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 218, column: 10, scope: !2815)
!2821 = !DILocation(line: 41, column: 13, scope: !2713, inlinedAt: !2820)
!2822 = !DILocation(line: 42, column: 8, scope: !2722, inlinedAt: !2820)
!2823 = !DILocation(line: 42, column: 10, scope: !2722, inlinedAt: !2820)
!2824 = !DILocation(line: 43, column: 5, scope: !2722, inlinedAt: !2820)
!2825 = !DILocation(line: 218, column: 3, scope: !2815)
!2826 = distinct !DISubprogram(name: "x2realloc", scope: !160, file: !160, line: 74, type: !2827, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!8, !8, !167}
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "p", arg: 1, scope: !2826, file: !160, line: 74, type: !8)
!2831 = !DILocalVariable(name: "pn", arg: 2, scope: !2826, file: !160, line: 74, type: !167)
!2832 = !DILocation(line: 0, scope: !2826)
!2833 = !DILocation(line: 0, scope: !164, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 76, column: 10, scope: !2826)
!2835 = !DILocation(line: 176, column: 14, scope: !164, inlinedAt: !2834)
!2836 = !DILocation(line: 178, column: 9, scope: !2778, inlinedAt: !2834)
!2837 = !DILocation(line: 178, column: 7, scope: !164, inlinedAt: !2834)
!2838 = !DILocation(line: 180, column: 13, scope: !2781, inlinedAt: !2834)
!2839 = !DILocation(line: 180, column: 11, scope: !2782, inlinedAt: !2834)
!2840 = !DILocation(line: 191, column: 11, scope: !2790, inlinedAt: !2834)
!2841 = !DILocation(line: 191, column: 11, scope: !2782, inlinedAt: !2834)
!2842 = !DILocation(line: 192, column: 9, scope: !2790, inlinedAt: !2834)
!2843 = !DILocation(line: 201, column: 11, scope: !2799, inlinedAt: !2834)
!2844 = !DILocation(line: 200, column: 11, scope: !2800, inlinedAt: !2834)
!2845 = !DILocation(line: 202, column: 9, scope: !2799, inlinedAt: !2834)
!2846 = !DILocation(line: 203, column: 14, scope: !2800, inlinedAt: !2834)
!2847 = !DILocation(line: 203, column: 18, scope: !2800, inlinedAt: !2834)
!2848 = !DILocation(line: 203, column: 9, scope: !2800, inlinedAt: !2834)
!2849 = !DILocation(line: 0, scope: !2746, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 207, column: 10, scope: !164, inlinedAt: !2834)
!2851 = !DILocation(line: 53, column: 10, scope: !2754, inlinedAt: !2850)
!2852 = !DILocation(line: 206, column: 7, scope: !164, inlinedAt: !2834)
!2853 = !DILocation(line: 61, column: 7, scope: !2746, inlinedAt: !2850)
!2854 = !DILocation(line: 62, column: 8, scope: !2761, inlinedAt: !2850)
!2855 = !DILocation(line: 62, column: 10, scope: !2761, inlinedAt: !2850)
!2856 = !DILocation(line: 63, column: 5, scope: !2761, inlinedAt: !2850)
!2857 = !DILocation(line: 76, column: 3, scope: !2826)
!2858 = distinct !DISubprogram(name: "xzalloc", scope: !160, file: !160, line: 84, type: !2714, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2859)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2858, file: !160, line: 84, type: !93)
!2861 = !DILocation(line: 0, scope: !2858)
!2862 = !DILocalVariable(name: "n", arg: 1, scope: !2863, file: !160, line: 93, type: !93)
!2863 = distinct !DISubprogram(name: "xcalloc", scope: !160, file: !160, line: 93, type: !2701, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2864)
!2864 = !{!2862, !2865, !2866}
!2865 = !DILocalVariable(name: "s", arg: 2, scope: !2863, file: !160, line: 93, type: !93)
!2866 = !DILocalVariable(name: "p", scope: !2863, file: !160, line: 95, type: !8)
!2867 = !DILocation(line: 0, scope: !2863, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 86, column: 10, scope: !2858)
!2869 = !DILocation(line: 100, column: 7, scope: !2870, inlinedAt: !2868)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !160, line: 100, column: 7)
!2871 = !DILocation(line: 101, column: 7, scope: !2870, inlinedAt: !2868)
!2872 = !DILocation(line: 101, column: 18, scope: !2870, inlinedAt: !2868)
!2873 = !DILocation(line: 101, column: 16, scope: !2870, inlinedAt: !2868)
!2874 = !DILocation(line: 100, column: 7, scope: !2863, inlinedAt: !2868)
!2875 = !DILocation(line: 102, column: 5, scope: !2870, inlinedAt: !2868)
!2876 = !DILocation(line: 86, column: 3, scope: !2858)
!2877 = !DILocation(line: 0, scope: !2863)
!2878 = !DILocation(line: 100, column: 7, scope: !2870)
!2879 = !DILocation(line: 101, column: 7, scope: !2870)
!2880 = !DILocation(line: 101, column: 18, scope: !2870)
!2881 = !DILocation(line: 101, column: 16, scope: !2870)
!2882 = !DILocation(line: 100, column: 7, scope: !2863)
!2883 = !DILocation(line: 102, column: 5, scope: !2870)
!2884 = !DILocation(line: 103, column: 3, scope: !2863)
!2885 = distinct !DISubprogram(name: "xmemdup", scope: !160, file: !160, line: 111, type: !2886, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2890)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!8, !2888, !93}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "p", arg: 1, scope: !2885, file: !160, line: 111, type: !2888)
!2892 = !DILocalVariable(name: "s", arg: 2, scope: !2885, file: !160, line: 111, type: !93)
!2893 = !DILocation(line: 0, scope: !2885)
!2894 = !DILocation(line: 0, scope: !2713, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 113, column: 18, scope: !2885)
!2896 = !DILocation(line: 41, column: 13, scope: !2713, inlinedAt: !2895)
!2897 = !DILocation(line: 42, column: 8, scope: !2722, inlinedAt: !2895)
!2898 = !DILocation(line: 42, column: 10, scope: !2722, inlinedAt: !2895)
!2899 = !DILocation(line: 43, column: 5, scope: !2722, inlinedAt: !2895)
!2900 = !DILocalVariable(name: "__dest", arg: 1, scope: !2901, file: !1479, line: 26, type: !2904)
!2901 = distinct !DISubprogram(name: "memcpy", scope: !1479, file: !1479, line: 26, type: !2902, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2906)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!8, !2904, !2905, !93}
!2904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!2905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2888)
!2906 = !{!2900, !2907, !2908}
!2907 = !DILocalVariable(name: "__src", arg: 2, scope: !2901, file: !1479, line: 26, type: !2905)
!2908 = !DILocalVariable(name: "__len", arg: 3, scope: !2901, file: !1479, line: 26, type: !93)
!2909 = !DILocation(line: 0, scope: !2901, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 113, column: 10, scope: !2885)
!2911 = !DILocation(line: 29, column: 10, scope: !2901, inlinedAt: !2910)
!2912 = !DILocation(line: 113, column: 3, scope: !2885)
!2913 = distinct !DISubprogram(name: "xstrdup", scope: !160, file: !160, line: 119, type: !811, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !2914)
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "string", arg: 1, scope: !2913, file: !160, line: 119, type: !17)
!2916 = !DILocation(line: 0, scope: !2913)
!2917 = !DILocation(line: 121, column: 27, scope: !2913)
!2918 = !DILocation(line: 121, column: 43, scope: !2913)
!2919 = !DILocation(line: 0, scope: !2885, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 121, column: 10, scope: !2913)
!2921 = !DILocation(line: 0, scope: !2713, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 113, column: 18, scope: !2885, inlinedAt: !2920)
!2923 = !DILocation(line: 41, column: 13, scope: !2713, inlinedAt: !2922)
!2924 = !DILocation(line: 42, column: 8, scope: !2722, inlinedAt: !2922)
!2925 = !DILocation(line: 42, column: 10, scope: !2722, inlinedAt: !2922)
!2926 = !DILocation(line: 43, column: 5, scope: !2722, inlinedAt: !2922)
!2927 = !DILocation(line: 0, scope: !2901, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 113, column: 10, scope: !2885, inlinedAt: !2920)
!2929 = !DILocation(line: 29, column: 10, scope: !2901, inlinedAt: !2928)
!2930 = !DILocation(line: 121, column: 3, scope: !2913)
!2931 = distinct !DISubprogram(name: "xalloc_die", scope: !177, file: !177, line: 32, type: !613, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !4)
!2932 = !DILocation(line: 34, column: 10, scope: !2931)
!2933 = !DILocation(line: 34, column: 33, scope: !2931)
!2934 = !DILocation(line: 34, column: 3, scope: !2931)
!2935 = !DILocation(line: 40, column: 3, scope: !2931)
!2936 = distinct !DISubprogram(name: "xstrndup", scope: !179, file: !179, line: 30, type: !2142, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DILocalVariable(name: "string", arg: 1, scope: !2936, file: !179, line: 30, type: !17)
!2939 = !DILocalVariable(name: "n", arg: 2, scope: !2936, file: !179, line: 30, type: !93)
!2940 = !DILocalVariable(name: "s", scope: !2936, file: !179, line: 32, type: !6)
!2941 = !DILocation(line: 0, scope: !2936)
!2942 = !DILocation(line: 32, column: 13, scope: !2936)
!2943 = !DILocation(line: 33, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2936, file: !179, line: 33, column: 7)
!2945 = !DILocation(line: 33, column: 7, scope: !2936)
!2946 = !DILocation(line: 34, column: 5, scope: !2944)
!2947 = !DILocation(line: 35, column: 3, scope: !2936)
!2948 = distinct !DISubprogram(name: "rpl_calloc", scope: !181, file: !181, line: 42, type: !2701, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !2949)
!2949 = !{!2950, !2951, !2952, !2953}
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !181, line: 42, type: !93)
!2951 = !DILocalVariable(name: "s", arg: 2, scope: !2948, file: !181, line: 42, type: !93)
!2952 = !DILocalVariable(name: "result", scope: !2948, file: !181, line: 44, type: !8)
!2953 = !DILocalVariable(name: "bytes", scope: !2954, file: !181, line: 56, type: !93)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !181, line: 53, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2948, file: !181, line: 47, column: 7)
!2956 = !DILocation(line: 0, scope: !2948)
!2957 = !DILocation(line: 47, column: 9, scope: !2955)
!2958 = !DILocation(line: 47, column: 14, scope: !2955)
!2959 = !DILocation(line: 0, scope: !2954)
!2960 = !DILocation(line: 57, column: 21, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2954, file: !181, line: 57, column: 11)
!2962 = !DILocation(line: 57, column: 11, scope: !2954)
!2963 = !DILocation(line: 59, column: 11, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !181, line: 58, column: 9)
!2965 = !DILocation(line: 59, column: 17, scope: !2964)
!2966 = !DILocation(line: 65, column: 12, scope: !2948)
!2967 = !DILocation(line: 72, column: 3, scope: !2948)
!2968 = !DILocation(line: 73, column: 1, scope: !2948)
!2969 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !183, file: !183, line: 86, type: !2970, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2984)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!93, !2972, !17, !93, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1233, line: 6, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1235, line: 21, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1235, line: 13, size: 64, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2976, file: !1235, line: 15, baseType: !20, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2976, file: !1235, line: 20, baseType: !2980, size: 32, offset: 32)
!2980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !1235, line: 16, size: 32, elements: !2981)
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2980, file: !1235, line: 18, baseType: !58, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2980, file: !1235, line: 19, baseType: !1244, size: 32)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990, !2991}
!2985 = !DILocalVariable(name: "pwc", arg: 1, scope: !2969, file: !183, line: 86, type: !2972)
!2986 = !DILocalVariable(name: "s", arg: 2, scope: !2969, file: !183, line: 86, type: !17)
!2987 = !DILocalVariable(name: "n", arg: 3, scope: !2969, file: !183, line: 86, type: !93)
!2988 = !DILocalVariable(name: "ps", arg: 4, scope: !2969, file: !183, line: 86, type: !2973)
!2989 = !DILocalVariable(name: "ret", scope: !2969, file: !183, line: 88, type: !93)
!2990 = !DILocalVariable(name: "wc", scope: !2969, file: !183, line: 89, type: !1249)
!2991 = !DILocalVariable(name: "uc", scope: !2992, file: !183, line: 156, type: !9)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !183, line: 155, column: 5)
!2993 = distinct !DILexicalBlock(scope: !2969, file: !183, line: 154, column: 7)
!2994 = !DILocation(line: 0, scope: !2969)
!2995 = !DILocation(line: 89, column: 3, scope: !2969)
!2996 = !DILocation(line: 105, column: 9, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2969, file: !183, line: 105, column: 7)
!2998 = !DILocation(line: 105, column: 7, scope: !2969)
!2999 = !DILocation(line: 145, column: 9, scope: !2969)
!3000 = !DILocation(line: 154, column: 19, scope: !2993)
!3001 = !DILocation(line: 154, column: 26, scope: !2993)
!3002 = !DILocation(line: 154, column: 41, scope: !2993)
!3003 = !DILocation(line: 154, column: 7, scope: !2969)
!3004 = !DILocation(line: 156, column: 26, scope: !2992)
!3005 = !DILocation(line: 0, scope: !2992)
!3006 = !DILocation(line: 157, column: 14, scope: !2992)
!3007 = !DILocation(line: 157, column: 12, scope: !2992)
!3008 = !DILocation(line: 163, column: 1, scope: !2969)
!3009 = !DISubprogram(name: "mbrtowc", scope: !1912, file: !1912, line: 296, type: !3010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!95, !22, !17, !95, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!3013 = distinct !DISubprogram(name: "close_stream", scope: !186, file: !186, line: 56, type: !3014, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3050)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!20, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2545, line: 7, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3018, file: !682, line: 51, baseType: !20, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3018, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3018, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3018, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3018, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3018, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3018, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3018, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3018, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3018, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3018, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3018, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3018, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3018, file: !682, line: 70, baseType: !3034, size: 64, offset: 832)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3018, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3018, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3018, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3018, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3018, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3018, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3018, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3018, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3018, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3018, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3018, file: !682, line: 93, baseType: !3034, size: 64, offset: 1344)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3018, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3018, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3018, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3018, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!3050 = !{!3051, !3052, !3054, !3055}
!3051 = !DILocalVariable(name: "stream", arg: 1, scope: !3013, file: !186, line: 56, type: !3016)
!3052 = !DILocalVariable(name: "some_pending", scope: !3013, file: !186, line: 58, type: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3054 = !DILocalVariable(name: "prev_fail", scope: !3013, file: !186, line: 59, type: !3053)
!3055 = !DILocalVariable(name: "fclose_fail", scope: !3013, file: !186, line: 60, type: !3053)
!3056 = !DILocation(line: 0, scope: !3013)
!3057 = !DILocation(line: 58, column: 30, scope: !3013)
!3058 = !DILocalVariable(name: "__stream", arg: 1, scope: !3059, file: !879, line: 135, type: !3016)
!3059 = distinct !DISubprogram(name: "ferror_unlocked", scope: !879, file: !879, line: 135, type: !3014, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3060)
!3060 = !{!3058}
!3061 = !DILocation(line: 0, scope: !3059, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 59, column: 27, scope: !3013)
!3063 = !DILocation(line: 137, column: 10, scope: !3059, inlinedAt: !3062)
!3064 = !{!887, !769, i64 0}
!3065 = !DILocation(line: 59, column: 43, scope: !3013)
!3066 = !DILocation(line: 60, column: 29, scope: !3013)
!3067 = !DILocation(line: 60, column: 45, scope: !3013)
!3068 = !DILocation(line: 70, column: 17, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3013, file: !186, line: 70, column: 7)
!3070 = !DILocation(line: 58, column: 50, scope: !3013)
!3071 = !DILocation(line: 70, column: 33, scope: !3069)
!3072 = !DILocation(line: 70, column: 53, scope: !3069)
!3073 = !DILocation(line: 70, column: 59, scope: !3069)
!3074 = !DILocation(line: 70, column: 7, scope: !3013)
!3075 = !DILocation(line: 72, column: 11, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !186, line: 71, column: 5)
!3077 = !DILocation(line: 73, column: 9, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3076, file: !186, line: 72, column: 11)
!3079 = !DILocation(line: 73, column: 15, scope: !3078)
!3080 = !DILocation(line: 78, column: 1, scope: !3013)
!3081 = distinct !DISubprogram(name: "hard_locale", scope: !188, file: !188, line: 27, type: !3082, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!38, !20}
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "category", arg: 1, scope: !3081, file: !188, line: 27, type: !20)
!3086 = !DILocalVariable(name: "locale", scope: !3081, file: !188, line: 29, type: !3087)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3088)
!3088 = !{!3089}
!3089 = !DISubrange(count: 257)
!3090 = !DILocation(line: 0, scope: !3081)
!3091 = !DILocation(line: 29, column: 3, scope: !3081)
!3092 = !DILocation(line: 29, column: 8, scope: !3081)
!3093 = !DILocation(line: 31, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3081, file: !188, line: 31, column: 7)
!3095 = !DILocation(line: 31, column: 7, scope: !3081)
!3096 = !DILocation(line: 34, column: 12, scope: !3081)
!3097 = !DILocation(line: 34, column: 38, scope: !3081)
!3098 = !DILocation(line: 34, column: 41, scope: !3081)
!3099 = !DILocation(line: 34, column: 66, scope: !3081)
!3100 = !DILocation(line: 35, column: 1, scope: !3081)
!3101 = distinct !DISubprogram(name: "locale_charset", scope: !190, file: !190, line: 831, type: !3102, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!17}
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "codeset", scope: !3101, file: !190, line: 833, type: !17)
!3106 = !DILocation(line: 847, column: 13, scope: !3101)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 911, column: 15, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !190, line: 911, column: 7)
!3110 = !DILocation(line: 911, column: 7, scope: !3101)
!3111 = !DILocation(line: 1070, column: 13, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !190, line: 1070, column: 13)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !190, line: 1060, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3101, file: !190, line: 1019, column: 3)
!3115 = !DILocation(line: 1070, column: 24, scope: !3112)
!3116 = !DILocation(line: 1070, column: 13, scope: !3113)
!3117 = !DILocation(line: 1158, column: 3, scope: !3101)
!3118 = !DISubprogram(name: "nl_langinfo", scope: !193, file: !193, line: 661, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!6, !20}
!3121 = distinct !DISubprogram(name: "setlocale_null_r", scope: !579, file: !579, line: 269, type: !3122, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!20, !20, !6, !93}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "category", arg: 1, scope: !3121, file: !579, line: 269, type: !20)
!3126 = !DILocalVariable(name: "buf", arg: 2, scope: !3121, file: !579, line: 269, type: !6)
!3127 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3121, file: !579, line: 269, type: !93)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocalVariable(name: "category", arg: 1, scope: !3130, file: !579, line: 91, type: !20)
!3130 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !579, file: !579, line: 91, type: !3122, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3131)
!3131 = !{!3129, !3132, !3133, !3134, !3135}
!3132 = !DILocalVariable(name: "buf", arg: 2, scope: !3130, file: !579, line: 91, type: !6)
!3133 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3130, file: !579, line: 91, type: !93)
!3134 = !DILocalVariable(name: "result", scope: !3130, file: !579, line: 140, type: !17)
!3135 = !DILocalVariable(name: "length", scope: !3136, file: !579, line: 154, type: !93)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !579, line: 153, column: 5)
!3137 = distinct !DILexicalBlock(scope: !3130, file: !579, line: 142, column: 7)
!3138 = !DILocation(line: 0, scope: !3130, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 274, column: 10, scope: !3121)
!3140 = !DILocalVariable(name: "category", arg: 1, scope: !3141, file: !579, line: 60, type: !20)
!3141 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !579, file: !579, line: 60, type: !3142, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!17, !20}
!3144 = !{!3140, !3145}
!3145 = !DILocalVariable(name: "result", scope: !3141, file: !579, line: 62, type: !17)
!3146 = !DILocation(line: 0, scope: !3141, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 140, column: 24, scope: !3130, inlinedAt: !3139)
!3148 = !DILocation(line: 62, column: 24, scope: !3141, inlinedAt: !3147)
!3149 = !DILocation(line: 142, column: 14, scope: !3137, inlinedAt: !3139)
!3150 = !DILocation(line: 142, column: 7, scope: !3130, inlinedAt: !3139)
!3151 = !DILocation(line: 145, column: 19, scope: !3152, inlinedAt: !3139)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !579, line: 145, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3137, file: !579, line: 143, column: 5)
!3154 = !DILocation(line: 145, column: 11, scope: !3153, inlinedAt: !3139)
!3155 = !DILocation(line: 149, column: 16, scope: !3152, inlinedAt: !3139)
!3156 = !DILocation(line: 149, column: 9, scope: !3152, inlinedAt: !3139)
!3157 = !DILocation(line: 154, column: 23, scope: !3136, inlinedAt: !3139)
!3158 = !DILocation(line: 0, scope: !3136, inlinedAt: !3139)
!3159 = !DILocation(line: 155, column: 18, scope: !3160, inlinedAt: !3139)
!3160 = distinct !DILexicalBlock(scope: !3136, file: !579, line: 155, column: 11)
!3161 = !DILocation(line: 155, column: 11, scope: !3136, inlinedAt: !3139)
!3162 = !DILocation(line: 157, column: 39, scope: !3163, inlinedAt: !3139)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !579, line: 156, column: 9)
!3164 = !DILocalVariable(name: "__dest", arg: 1, scope: !3165, file: !1479, line: 26, type: !2904)
!3165 = distinct !DISubprogram(name: "memcpy", scope: !1479, file: !1479, line: 26, type: !2902, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3166)
!3166 = !{!3164, !3167, !3168}
!3167 = !DILocalVariable(name: "__src", arg: 2, scope: !3165, file: !1479, line: 26, type: !2905)
!3168 = !DILocalVariable(name: "__len", arg: 3, scope: !3165, file: !1479, line: 26, type: !93)
!3169 = !DILocation(line: 0, scope: !3165, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 157, column: 11, scope: !3163, inlinedAt: !3139)
!3171 = !DILocation(line: 29, column: 10, scope: !3165, inlinedAt: !3170)
!3172 = !DILocation(line: 158, column: 11, scope: !3163, inlinedAt: !3139)
!3173 = !DILocation(line: 162, column: 23, scope: !3174, inlinedAt: !3139)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !579, line: 162, column: 15)
!3175 = distinct !DILexicalBlock(scope: !3160, file: !579, line: 161, column: 9)
!3176 = !DILocation(line: 162, column: 15, scope: !3175, inlinedAt: !3139)
!3177 = !DILocation(line: 167, column: 44, scope: !3178, inlinedAt: !3139)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !579, line: 163, column: 13)
!3179 = !DILocation(line: 0, scope: !3165, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 167, column: 15, scope: !3178, inlinedAt: !3139)
!3181 = !DILocation(line: 29, column: 10, scope: !3165, inlinedAt: !3180)
!3182 = !DILocation(line: 168, column: 15, scope: !3178, inlinedAt: !3139)
!3183 = !DILocation(line: 168, column: 32, scope: !3178, inlinedAt: !3139)
!3184 = !DILocation(line: 169, column: 13, scope: !3178, inlinedAt: !3139)
!3185 = !DILocation(line: 0, scope: !3137, inlinedAt: !3139)
!3186 = !DILocation(line: 274, column: 3, scope: !3121)
!3187 = distinct !DISubprogram(name: "setlocale_null", scope: !579, file: !579, line: 301, type: !3142, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3188)
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "category", arg: 1, scope: !3187, file: !579, line: 301, type: !20)
!3190 = !DILocation(line: 0, scope: !3187)
!3191 = !DILocation(line: 0, scope: !3141, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 304, column: 10, scope: !3187)
!3193 = !DILocation(line: 62, column: 24, scope: !3141, inlinedAt: !3192)
!3194 = !DILocation(line: 304, column: 3, scope: !3187)
!3195 = distinct !DISubprogram(name: "rpl_fclose", scope: !581, file: !581, line: 58, type: !3196, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3232)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!20, !3198}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2545, line: 7, baseType: !3200)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3200, file: !682, line: 51, baseType: !20, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3200, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3200, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3200, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3200, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3200, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3200, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3200, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3200, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3200, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3200, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3200, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3200, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3200, file: !682, line: 70, baseType: !3216, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3200, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3200, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3200, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3200, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3200, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3200, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3200, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3200, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3200, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3200, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3200, file: !682, line: 93, baseType: !3216, size: 64, offset: 1344)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3200, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3200, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3200, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3200, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!3232 = !{!3233, !3234, !3235, !3236}
!3233 = !DILocalVariable(name: "fp", arg: 1, scope: !3195, file: !581, line: 58, type: !3198)
!3234 = !DILocalVariable(name: "saved_errno", scope: !3195, file: !581, line: 60, type: !20)
!3235 = !DILocalVariable(name: "fd", scope: !3195, file: !581, line: 61, type: !20)
!3236 = !DILocalVariable(name: "result", scope: !3195, file: !581, line: 62, type: !20)
!3237 = !DILocation(line: 0, scope: !3195)
!3238 = !DILocation(line: 65, column: 8, scope: !3195)
!3239 = !DILocation(line: 66, column: 10, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3195, file: !581, line: 66, column: 7)
!3241 = !DILocation(line: 66, column: 7, scope: !3195)
!3242 = !DILocation(line: 67, column: 12, scope: !3240)
!3243 = !DILocation(line: 67, column: 5, scope: !3240)
!3244 = !DILocation(line: 72, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3195, file: !581, line: 72, column: 7)
!3246 = !DILocation(line: 72, column: 23, scope: !3245)
!3247 = !DILocation(line: 72, column: 33, scope: !3245)
!3248 = !DILocation(line: 72, column: 26, scope: !3245)
!3249 = !DILocation(line: 72, column: 59, scope: !3245)
!3250 = !DILocation(line: 73, column: 7, scope: !3245)
!3251 = !DILocation(line: 73, column: 10, scope: !3245)
!3252 = !DILocation(line: 72, column: 7, scope: !3195)
!3253 = !DILocation(line: 100, column: 12, scope: !3195)
!3254 = !DILocation(line: 105, column: 7, scope: !3195)
!3255 = !DILocation(line: 74, column: 19, scope: !3245)
!3256 = !DILocation(line: 105, column: 19, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3195, file: !581, line: 105, column: 7)
!3258 = !DILocation(line: 107, column: 13, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3257, file: !581, line: 106, column: 5)
!3260 = !DILocation(line: 109, column: 5, scope: !3259)
!3261 = !DILocation(line: 112, column: 1, scope: !3195)
!3262 = !DISubprogram(name: "fileno", scope: !677, file: !677, line: 785, type: !3263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!20, !3216}
!3265 = !DISubprogram(name: "fclose", scope: !677, file: !677, line: 213, type: !3263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3266 = !DISubprogram(name: "lseek", scope: !3267, file: !3267, line: 334, type: !3268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3267 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!705, !20, !705, !20}
!3270 = distinct !DISubprogram(name: "rpl_fflush", scope: !583, file: !583, line: 129, type: !3271, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3307)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!20, !3273}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2545, line: 7, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3275, file: !682, line: 51, baseType: !20, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3275, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3275, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3275, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3275, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3275, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3275, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3275, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3275, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3275, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3275, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3275, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3275, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3275, file: !682, line: 70, baseType: !3291, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3275, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3275, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3275, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3275, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3275, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3275, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3275, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3275, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3275, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3275, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3275, file: !682, line: 93, baseType: !3291, size: 64, offset: 1344)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3275, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3275, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3275, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3275, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!3307 = !{!3308}
!3308 = !DILocalVariable(name: "stream", arg: 1, scope: !3270, file: !583, line: 129, type: !3273)
!3309 = !DILocation(line: 0, scope: !3270)
!3310 = !DILocation(line: 150, column: 14, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3270, file: !583, line: 150, column: 7)
!3312 = !DILocation(line: 150, column: 22, scope: !3311)
!3313 = !DILocation(line: 150, column: 27, scope: !3311)
!3314 = !DILocation(line: 150, column: 7, scope: !3270)
!3315 = !DILocation(line: 151, column: 12, scope: !3311)
!3316 = !DILocation(line: 151, column: 5, scope: !3311)
!3317 = !DILocalVariable(name: "fp", arg: 1, scope: !3318, file: !583, line: 41, type: !3273)
!3318 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !583, file: !583, line: 41, type: !3319, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3273}
!3321 = !{!3317}
!3322 = !DILocation(line: 0, scope: !3318, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 156, column: 3, scope: !3270)
!3324 = !DILocation(line: 43, column: 11, scope: !3325, inlinedAt: !3323)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !583, line: 43, column: 7)
!3326 = !DILocation(line: 43, column: 18, scope: !3325, inlinedAt: !3323)
!3327 = !DILocation(line: 43, column: 7, scope: !3318, inlinedAt: !3323)
!3328 = !DILocation(line: 45, column: 5, scope: !3325, inlinedAt: !3323)
!3329 = !DILocation(line: 158, column: 10, scope: !3270)
!3330 = !DILocation(line: 158, column: 3, scope: !3270)
!3331 = !DILocation(line: 235, column: 1, scope: !3270)
!3332 = !DISubprogram(name: "fflush", scope: !677, file: !677, line: 218, type: !3333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!20, !3291}
!3335 = distinct !DISubprogram(name: "rpl_fseeko", scope: !585, file: !585, line: 28, type: !3336, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3373)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!20, !3338, !3372, !20}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2545, line: 7, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !682, line: 49, size: 1728, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3340, file: !682, line: 51, baseType: !20, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3340, file: !682, line: 54, baseType: !6, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3340, file: !682, line: 55, baseType: !6, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3340, file: !682, line: 56, baseType: !6, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3340, file: !682, line: 57, baseType: !6, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3340, file: !682, line: 58, baseType: !6, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3340, file: !682, line: 59, baseType: !6, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3340, file: !682, line: 60, baseType: !6, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3340, file: !682, line: 61, baseType: !6, size: 64, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3340, file: !682, line: 64, baseType: !6, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3340, file: !682, line: 65, baseType: !6, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3340, file: !682, line: 66, baseType: !6, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3340, file: !682, line: 68, baseType: !697, size: 64, offset: 768)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3340, file: !682, line: 70, baseType: !3356, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3340, file: !682, line: 72, baseType: !20, size: 32, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3340, file: !682, line: 73, baseType: !20, size: 32, offset: 928)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3340, file: !682, line: 74, baseType: !703, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3340, file: !682, line: 77, baseType: !92, size: 16, offset: 1024)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3340, file: !682, line: 78, baseType: !708, size: 8, offset: 1040)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3340, file: !682, line: 79, baseType: !710, size: 8, offset: 1048)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3340, file: !682, line: 81, baseType: !714, size: 64, offset: 1088)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3340, file: !682, line: 89, baseType: !717, size: 64, offset: 1152)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3340, file: !682, line: 91, baseType: !719, size: 64, offset: 1216)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3340, file: !682, line: 92, baseType: !722, size: 64, offset: 1280)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3340, file: !682, line: 93, baseType: !3356, size: 64, offset: 1344)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3340, file: !682, line: 94, baseType: !8, size: 64, offset: 1408)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3340, file: !682, line: 95, baseType: !93, size: 64, offset: 1472)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3340, file: !682, line: 96, baseType: !20, size: 32, offset: 1536)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3340, file: !682, line: 98, baseType: !729, size: 160, offset: 1568)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !677, line: 63, baseType: !703)
!3373 = !{!3374, !3375, !3376, !3377}
!3374 = !DILocalVariable(name: "fp", arg: 1, scope: !3335, file: !585, line: 28, type: !3338)
!3375 = !DILocalVariable(name: "offset", arg: 2, scope: !3335, file: !585, line: 28, type: !3372)
!3376 = !DILocalVariable(name: "whence", arg: 3, scope: !3335, file: !585, line: 28, type: !20)
!3377 = !DILocalVariable(name: "pos", scope: !3378, file: !585, line: 117, type: !3372)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !585, line: 113, column: 5)
!3379 = distinct !DILexicalBlock(scope: !3335, file: !585, line: 52, column: 7)
!3380 = !DILocation(line: 0, scope: !3335)
!3381 = !DILocation(line: 52, column: 11, scope: !3379)
!3382 = !{!887, !604, i64 16}
!3383 = !DILocation(line: 52, column: 31, scope: !3379)
!3384 = !{!887, !604, i64 8}
!3385 = !DILocation(line: 52, column: 24, scope: !3379)
!3386 = !DILocation(line: 53, column: 7, scope: !3379)
!3387 = !DILocation(line: 53, column: 14, scope: !3379)
!3388 = !DILocation(line: 53, column: 35, scope: !3379)
!3389 = !{!887, !604, i64 32}
!3390 = !DILocation(line: 53, column: 28, scope: !3379)
!3391 = !DILocation(line: 54, column: 7, scope: !3379)
!3392 = !DILocation(line: 54, column: 14, scope: !3379)
!3393 = !{!887, !604, i64 72}
!3394 = !DILocation(line: 54, column: 28, scope: !3379)
!3395 = !DILocation(line: 52, column: 7, scope: !3335)
!3396 = !DILocation(line: 117, column: 26, scope: !3378)
!3397 = !DILocation(line: 117, column: 19, scope: !3378)
!3398 = !DILocation(line: 0, scope: !3378)
!3399 = !DILocation(line: 118, column: 15, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3378, file: !585, line: 118, column: 11)
!3401 = !DILocation(line: 118, column: 11, scope: !3378)
!3402 = !DILocation(line: 129, column: 11, scope: !3378)
!3403 = !DILocation(line: 129, column: 18, scope: !3378)
!3404 = !DILocation(line: 130, column: 11, scope: !3378)
!3405 = !DILocation(line: 130, column: 19, scope: !3378)
!3406 = !{!887, !888, i64 144}
!3407 = !DILocation(line: 161, column: 7, scope: !3378)
!3408 = !DILocation(line: 163, column: 10, scope: !3335)
!3409 = !DILocation(line: 163, column: 3, scope: !3335)
!3410 = !DILocation(line: 164, column: 1, scope: !3335)
!3411 = !DISubprogram(name: "fseeko", scope: !677, file: !677, line: 712, type: !3412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!20, !3356, !705, !20}
